#include "hall_effect.h"

int16_t motorAngPosition = 0;
uint16_t motorSpeedCount = 0;

/* Handle PB4 interrupt */
void EXTI4_IRQHandler(void)
{
    /* Do your stuff when PB4 is changed */

    /* Clear interrupt flag */
    EXTI_ClearITPendingBit(EXTI_Line4);

    // Hall effect A (U - orange wire) - PB4
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
    // capture motor speed, start counter for next hall effect interrupt
    motorSpeedCount = TIM13->CNT;
    TIM13->CNT = 0x0000;
    GPIO_ResetBits(GPIOD, LED_RED);

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
        break; // 0 degrees
      case 4: //0b100:
        motorAngPosition = 60;
        break; // 60 degrees
      case 6: //0b110:
        motorAngPosition = 120;
        break; // 120 degrees
      case 2: //0b010:
        motorAngPosition = 180;
        break; // 180 degrees
      case 3: //0b011:
        motorAngPosition = 240;
        break; // 240 degrees
      case 1: //0b001:
        motorAngPosition = 300;
        break; // 300 degrees
      default: // Error State
        // Use last good known value if none are active
        break;
    }

    return;
}

// motor speed count timeout, sets speed to zero if not hall effect has been detected
void TIM8_UP_TIM13_IRQHandler(void)
{
    if (TIM_GetITStatus(TIM13, TIM_IT_Update) != RESET)
    {
        GPIO_SetBits(GPIOD, LED_RED);
        motorSpeedCount = 0;
        TIM_ClearITPendingBit(TIM13, TIM_IT_Update);  //reset flag
    }
    return;
}

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

    SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource4); // Hall A
    SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource5); // Hall B
    SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource0); // Hall C

    /* PB4 is connected to EXTI_Line4 */
    EXTI_InitStruct.EXTI_Line = EXTI_Line4;
    EXTI_InitStruct.EXTI_LineCmd = ENABLE;
    EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
    EXTI_Init(&EXTI_InitStruct);

    /* PB5 is connected to EXTI_Line5 */
    EXTI_InitStruct.EXTI_Line = EXTI_Line5;
    EXTI_InitStruct.EXTI_LineCmd = ENABLE;
    EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
    EXTI_Init(&EXTI_InitStruct);

    /* PB0 is connected to EXTI_Line0 */
    EXTI_InitStruct.EXTI_Line = EXTI_Line0;
    EXTI_InitStruct.EXTI_LineCmd = ENABLE;
    EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
    EXTI_Init(&EXTI_InitStruct);

    /* Add IRQ vector to NVIC */
    //PB4 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = EXTI4_IRQn;
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x02;
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStruct);

    /* Add IRQ vector to NVIC */
    //PB5 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = EXTI9_5_IRQn;
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x02;
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStruct);

    /* Add IRQ vector to NVIC */
    //PB0 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = EXTI0_IRQn;
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x02;
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStruct);

    //timer initialization for speed calculation
    TIM_TimeBaseInitTypeDef  TIM_InitStructure1;

    //INITIALIZE TIM13
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM13, ENABLE);

    TIM_InitStructure1.TIM_Prescaler = 42; // TIM13 base clock is 42MHz
    TIM_InitStructure1.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_InitStructure1.TIM_Period = 50000; // Each tick is 1 us
    TIM_InitStructure1.TIM_ClockDivision = TIM_CKD_DIV1;

    TIM_TimeBaseInit(TIM13, &TIM_InitStructure1);
    TIM_Cmd(TIM13, ENABLE);

    /* Timer Interrupt Config */
    //TIM13 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = TIM8_UP_TIM13_IRQn;
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x04;
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStruct);

    // Enable interrupt
    TIM_ITConfig(TIM13, TIM_IT_Update, ENABLE);

    return;
}
