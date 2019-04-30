//includes
#include <stm32f4xx.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_tim.h>
#include <stm32f4xx_rcc.h>
#include <system_stm32f4xx.h>
#include <stm32f4xx_exti.h>
#include <stm32f4xx_syscfg.h>
#include <misc.h>

#include "hall_effect.h"
#include "uart.h"

int16_t motorAngPosition = 0;
uint16_t motorSpeedCount = 0;

//initializes all of the hall effect input pins, and sets up the hall update interrupt
void Hall_Init(void)
{
    /* Set variables used */
    GPIO_InitTypeDef GPIO_InitStruct;
    EXTI_InitTypeDef EXTI_InitStruct;
    NVIC_InitTypeDef NVIC_InitStruct;

    /* Enable clock for GPIOB */
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);

    /* Enable clock for SYSCFG */
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);

    /* Set pin as input */
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
    GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_0;
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_DOWN;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_100MHz;
    GPIO_Init(GPIOB, &GPIO_InitStruct);

    /* Tell system that you will use PD0 for EXTI_Line0 */
    SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource4); // Hall A
    SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource5); // Hall B
    SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource0); // Hall C

    /* PB4 is connected to EXTI_Line4 */
    EXTI_InitStruct.EXTI_Line = EXTI_Line4;
    /* Enable interrupt */
    EXTI_InitStruct.EXTI_LineCmd = ENABLE;
    /* Interrupt mode */
    EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
    /* Triggers on rising and falling edge */
    EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
    /* Add to EXTI */
    EXTI_Init(&EXTI_InitStruct);

    /* PB5 is connected to EXTI_Line5 */
    EXTI_InitStruct.EXTI_Line = EXTI_Line5;
    /* Enable interrupt */
    EXTI_InitStruct.EXTI_LineCmd = ENABLE;
    /* Interrupt mode */
    EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
    /* Triggers on rising and falling edge */
    EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
    /* Add to EXTI */
    EXTI_Init(&EXTI_InitStruct);

    /* PB0 is connected to EXTI_Line0 */
    EXTI_InitStruct.EXTI_Line = EXTI_Line0;
    /* Enable interrupt */
    EXTI_InitStruct.EXTI_LineCmd = ENABLE;
    /* Interrupt mode */
    EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
    /* Triggers on rising and falling edge */
    EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
    /* Add to EXTI */
    EXTI_Init(&EXTI_InitStruct);

    /* Add IRQ vector to NVIC */
    //PB4 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = EXTI4_IRQn;
    /* Set priority */
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x00;
    /* Set sub priority */
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    /* Enable interrupt */
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    /* Add to NVIC */
    NVIC_Init(&NVIC_InitStruct);

    /* Add IRQ vector to NVIC */
    //PB5 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = EXTI9_5_IRQn;
    /* Set priority */
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x00;
    /* Set sub priority */
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    /* Enable interrupt */
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    /* Add to NVIC */
    NVIC_Init(&NVIC_InitStruct);

    /* Add IRQ vector to NVIC */
    //PB0 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = EXTI0_IRQn;
    /* Set priority */
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x00;
    /* Set sub priority */
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    /* Enable interrupt */
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    /* Add to NVIC */
    NVIC_Init(&NVIC_InitStruct);

    //timer initialization for speed calculation
    TIM_TimeBaseInitTypeDef  TIM_InitStructure1;

    //INITIALIZE TIM9
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM9, ENABLE);

    TIM_InitStructure1.TIM_Prescaler = 840; // TIM9 base clock is 84MHz
    TIM_InitStructure1.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_InitStructure1.TIM_Period = 50000; // Each tick is 10 us
    TIM_InitStructure1.TIM_ClockDivision = TIM_CKD_DIV1;

    TIM_TimeBaseInit(TIM9, &TIM_InitStructure1);
    TIM_Cmd(TIM9, ENABLE);

    /* Timer Interrupt Config */
    //TIM9 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = TIM1_BRK_TIM9_IRQn;
    /* Set priority */
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0;
    /* Set sub priority */
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 1;
    /* Enable interrupt */
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    /* Add to NVIC */
    NVIC_Init(&NVIC_InitStruct);

    // Enable interrupt
    TIM_ITConfig(TIM9, TIM_IT_Update, ENABLE);

    return;
}

/* Handle PB4 interrupt */
void EXTI4_IRQHandler(void)
{
    /* Do your stuff when PB4 is changed */

    /* Clear interrupt flag */
    EXTI_ClearITPendingBit(EXTI_Line4);

    //GPIO_ToggleBits(GPIOD, GPIO_Pin_13); // orange LED
    // Hall effact A (U - orange wire) - PB4
    // Read value from GPIO to determine if rising or falling edge
    // if 1 = rising edge, if 0 = falling edge

    Hall_Decoder();

    return;
}

/* Handle PB5 interrupt */
void EXTI9_5_IRQHandler(void)
{
    /* Do your stuff when PB5 is changed (HALL EFFECT)*/

    /* Clear interrupt flag */
    EXTI_ClearITPendingBit(EXTI_Line5);

    //GPIO_ToggleBits(GPIOD, GPIO_Pin_14); // red LED

    // Hall effect B (V - yellow wire) - PB5
    // Read value from GPIO to determine if rising or falling edge
    // if 1 = rising edge, if 0 = falling edge

    Hall_Decoder();

    return;
}


/* Handle PB0 interrupt */
void EXTI0_IRQHandler(void)
{
    /* Do your stuff when PB0 is changed */

    //GPIO_ToggleBits(GPIOD, GPIO_Pin_15); // blue LED

    // Hall effect C (W - blue wire) - PB0
    // Read value from GPIO to determine if rising or falling edge
    // if 1 = rising edge, if 0 = falling edge


    /* Clear interrupt flag */
    EXTI_ClearITPendingBit(EXTI_Line0);


    Hall_Decoder();

    return;
}

//this interrupt re-calculates the motor position based off of the hall state
void Hall_Decoder (void)
{
    /* Make motorPosition var with hallAState as MSB,
       hallBState as middle bit, hallCState as LSB */
    uint8_t gpioB = GPIOB->IDR;
    uint8_t motorPosition =
        ((gpioB & 0x10) >> 2) |       // hall A (PB4)
        ((gpioB & 0x20) >> 4) |       // hall B (PB5)
         (gpioB & 0x1);              // hall C (PB0)

    switch (motorPosition){
      case 5: //0b101:
        motorAngPosition = 0;
        (void) UARTSendLine("0");
        break; // 0 degrees
      case 4: //0b100:
        motorAngPosition = 60;
        (void) UARTSendLine("60");
        break; // 60 degrees
      case 6: //0b110:
        motorAngPosition = 120;
        (void) UARTSendLine("120");
        break; // 120 degrees
      case 2: //0b010:
        motorAngPosition = 180;
        (void) UARTSendLine("180");
        break; // 180 degrees
      case 3: //0b011:
        motorAngPosition = 240;
        (void) UARTSendLine("240");
        break; // 240 degrees
      case 1: //0b001:
        motorAngPosition = 300;
        (void) UARTSendLine("300");
        break; // 300 degrees
      default: // Error State
        // Use last good known value if none are active
        // Toggle LED state as indicator
        GPIO_ToggleBits(GPIOD, GPIO_Pin_13);    // orange LED
        break;
    }

    // Capture time since last interrupt, measure motor speed using value
    // If the timer rolls over, assume the motor is not spinning
    if(TIM9->SR & 0x0001 == 1)
    {
      motorSpeedCount = 0;
      TIM_ClearITPendingBit(TIM9, TIM_IT_Update);  //reset flag
    }
    else
    {
      motorSpeedCount = TIM9->CNT;
      TIM9->CNT = 0x0000;
    }
    return;
}

void TIM1_BRK_TIM9_IRQHandler(void)
{
    if (TIM_GetITStatus(TIM9, TIM_IT_Update) != RESET)
    {
        GPIO_ToggleBits(GPIOD, GPIO_Pin_12);    // blue LED
        motorSpeedCount = 0;
        TIM_ClearITPendingBit(TIM9, TIM_IT_Update);  //reset flag
    }
    return;
}


