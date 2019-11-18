#include "task.h"

uint8_t Run10msTask = 0;
int16_t slewedThrottleX10 = 0;


void TenMsTask()
{
    int16_t intermediateThrottleX10 = 0;

    /* check to make sure desiredThrottleX10 is in range */
    if (desiredThrottleX10 > 1000 || desiredThrottleX10 < -1000)
    {
        intermediateThrottleX10 = 0;
    }
    else
    {
        intermediateThrottleX10 = desiredThrottleX10;
    }

    /* add a max slew between what is requested and what you actually get */
    if (intermediateThrottleX10 > slewedThrottleX10)
    {
        int16_t step = intermediateThrottleX10 - slewedThrottleX10;
        if (step > MAX_STEP)
        {
            slewedThrottleX10 += MAX_STEP;
        }
        else
        {
            slewedThrottleX10 += step;
        }
    }
    else if (intermediateThrottleX10 < slewedThrottleX10)
    {
        int16_t step = intermediateThrottleX10 - slewedThrottleX10;
        if (step < -MAX_STEP)
        {
            slewedThrottleX10 -= MAX_STEP;
        }
        else
        {
            // step is negative so += works in this case
            slewedThrottleX10 += step;
        }
    }
}


void InitTask()
{
    // Set up tim12 to create the 10ms task
    //timer initialization for speed calculation
    TIM_TimeBaseInitTypeDef  TIM_InitStructure;
    NVIC_InitTypeDef NVIC_InitStruct;

    //INITIALIZE TIM12
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM12, ENABLE);

    TIM_InitStructure.TIM_Prescaler = 42; // TIM13 base clock is 42MHz
    TIM_InitStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_InitStructure.TIM_Period = TASK_RATE*1000; // Each tick is 1 us
    TIM_InitStructure.TIM_ClockDivision = TIM_CKD_DIV1;

    TIM_TimeBaseInit(TIM12, &TIM_InitStructure);
    TIM_Cmd(TIM12, ENABLE);

    /* Timer Interrupt Config */
    //TIM13 interrupt
    NVIC_InitStruct.NVIC_IRQChannel = TIM8_BRK_TIM12_IRQn;
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x05;
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x00;
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStruct);

    // Enable interrupt
    TIM_ITConfig(TIM12, TIM_IT_Update, ENABLE);
}


void TIM8_BRK_TIM12_IRQHandler(void)
{
     if (TIM_GetITStatus(TIM12, TIM_IT_Update) != RESET)
    {
        // set flag to run the 10ms task
        Run10msTask = 1;

        // reset flag
        TIM_ClearITPendingBit(TIM12, TIM_IT_Update);
    }
    return;
}