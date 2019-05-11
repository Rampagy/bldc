#include "debug.h"

debug_T debugData;


void TIM8_BRK_TIM12_IRQHandler(void)
{
    if (TIM_GetITStatus(TIM12, TIM_IT_Update) != RESET)
    {
        /*if (motorSpeedCount)
        {
            debugData.u16_data[0] = (uint16_t)((uint32_t)250000 / motorSpeedCount);
        }
        else
        {
            debugData.u16_data[0] = (uint16_t)(0);
        }*/
        debugData.u16_data[0]++;

        UARTSendData(debugData.char_data);
        TIM_ClearITPendingBit(TIM12, TIM_IT_Update);  //reset flag
    }
    return;
}


void Debug_Init(void)
{
    for (uint8_t i = 0; i < DEBUG_BYTE_LENGTH; i++)
    {
        debugData.u8_data[i] = 0xFF;
    }

    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);

    GPIO_InitTypeDef GPIO_InitStructure;

    /* Configure PD12, PD13, PD14 and PD15 in output pushpull mode (LEDs)*/
    GPIO_InitStructure.GPIO_Pin = LED_GREEN | LED_ORANGE | LED_RED | LED_BLUE;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
    GPIO_Init(GPIOD, &GPIO_InitStructure);



    //timer initialization for debug output
    TIM_TimeBaseInitTypeDef TIM_InitStructure1;
    NVIC_InitTypeDef NVIC_InitStruct;

    //INITIALIZE TIM12
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM12, ENABLE);

    TIM_InitStructure1.TIM_Prescaler = 420; // TIM12 base clock is 42MHz
    TIM_InitStructure1.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_InitStructure1.TIM_Period = 1000; // Each tick is 10 us
    TIM_InitStructure1.TIM_ClockDivision = TIM_CKD_DIV1;

    TIM_TimeBaseInit(TIM12, &TIM_InitStructure1);
    TIM_Cmd(TIM12, ENABLE);

    /* Timer Interrupt Config */
    //TIM9 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = TIM8_BRK_TIM12_IRQn;
    /* Set priority */
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 1;
    /* Set sub priority */
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0;
    /* Enable interrupt */
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    /* Add to NVIC */
    NVIC_Init(&NVIC_InitStruct);

    // Enable interrupt
    TIM_ITConfig(TIM12, TIM_IT_Update, ENABLE);
}