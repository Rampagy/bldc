#include "pwm_output.h"

// private global variable
uint16_t timerPeriod = 0;


void SetPhaseDutyCycles(uint16_t phaseAPercX10, uint16_t phaseBPercX10, uint16_t phaseCPercX10)
{
    TIM1->CCR1 = (uint16_t)(((uint32_t)phaseAPercX10 * timerPeriod) / 1000);
    TIM1->CCR2 = (uint16_t)(((uint32_t)phaseBPercX10 * timerPeriod) / 1000);
    TIM1->CCR3 = (uint16_t)(((uint32_t)phaseCPercX10 * timerPeriod) / 1000);
}


void TIM_Config(void)
{
    GPIO_InitTypeDef GPIO_InitStructure;

    /* GPIOE clock enable */
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOE, ENABLE);

    /* TIM1 clock enable */
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);

    /* GPIOE Configuration: Channel 1, 2, 3, 1N, 2N and 3N as alternate function pull-down */
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10 |
            GPIO_Pin_11 | GPIO_Pin_12 | GPIO_Pin_13;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
    GPIO_Init(GPIOE, &GPIO_InitStructure);

    /* Connect TIM pins to AF1 */
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource8, GPIO_AF_TIM1);
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource9, GPIO_AF_TIM1);
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource10, GPIO_AF_TIM1);
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource11, GPIO_AF_TIM1);
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource12, GPIO_AF_TIM1);
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource13, GPIO_AF_TIM1);

        /* -----------------------------------------------------------------------
    1/ Generate 3 complementary PWM signals with 3 different duty cycles:

        In this example TIM1 input clock (TIM1CLK) is set to 2 * APB2 clock (PCLK2),
        since APB2 prescaler is different from 1 (APB2 Prescaler = 2, see system_stm32f4xx.c file).
        TIM1CLK = 2 * PCLK2
        PCLK2 = HCLK / 2
        => TIM1CLK = 2*(HCLK / 2) = HCLK = SystemCoreClock

        To get TIM1 counter clock at 168 MHz, the prescaler is computed as follows:
        Prescaler = (TIM1CLK / TIM1 counter clock) - 1
        Prescaler = (SystemCoreClock / 168 MHz) - 1 = 0

        The objective is to generate PWM signal at 17.57 KHz:
        - TIM1_Period = (SystemCoreClock / 17570) - 1

        To get TIM1 output clock at 17.57 KHz, the period (ARR) is computed as follows:
        ARR = (TIM1 counter clock / TIM1 output clock) - 1
            = 9561

    The Three Duty cycles are computed as the following description:

        TIM1 Channel1 duty cycle = (TIM1_CCR1/ TIM1_ARR)* 100 = 50%
        TIM1 Channel2 duty cycle = (TIM1_CCR2/ TIM1_ARR)* 100 = 25%
        TIM1 Channel3 duty cycle = (TIM1_CCR3/ TIM1_ARR)* 100 = 12.5%

        The Timer pulse is calculated as follows:
        - TIM1_CCRx = (DutyCycle * TIM1_ARR)/ 100

    2/ Insert a dead time equal to (11/SystemCoreClock) ns

    3/ Configure the break feature, active at High level, and using the automatic
        output enable feature

    4/ Use the Locking parameters level1.

        Note:
        SystemCoreClock variable holds HCLK frequency and is defined in system_stm32f4xx.c file.
        Each time the core clock (HCLK) changes, user had to call SystemCoreClockUpdate()
        function to update SystemCoreClock variable value. Otherwise, any configuration
        based on this variable will be incorrect.
    ----------------------------------------------------------------------- */

    /* Divide by two because up/down count mode (8399) */
    timerPeriod = (uint16_t)(((uint32_t)SystemCoreClock / 2 / PWM_FREQ_HZ) - 1);

    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
    TIM_OCInitTypeDef  TIM_OCInitStructure;
    TIM_BDTRInitTypeDef TIM_BDTRInitStructure;

    /* Time Base configuration */
    TIM_TimeBaseStructure.TIM_Prescaler = 0;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_CenterAligned3;
    /* Compute the value to be set in ARR register to generate signal frequency at PWM_FREQ_HZ */
    TIM_TimeBaseStructure.TIM_Period = timerPeriod;
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;

    TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);

    /* Channel 1, 2 and 3 Configuration in PWM mode */
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
    /* Duty Cycle - Active low drives usage of timerPeriod instead of 0 */
    TIM_OCInitStructure.TIM_Pulse = 0;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;
    /* Set Idle state to Reset for all FETs, so break can be used for neutral */
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Reset;
    TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;
    TIM_OC1Init(TIM1, &TIM_OCInitStructure);
    TIM_OC2Init(TIM1, &TIM_OCInitStructure);
    TIM_OC3Init(TIM1, &TIM_OCInitStructure);

    /* Automatic Output enable, Break, dead time and lock configuration*/
    TIM_BDTRInitStructure.TIM_OSSRState = TIM_OSSRState_Enable;
    TIM_BDTRInitStructure.TIM_OSSIState = TIM_OSSIState_Enable;
    TIM_BDTRInitStructure.TIM_LOCKLevel = TIM_LOCKLevel_OFF;
    TIM_BDTRInitStructure.TIM_DeadTime = (uint16_t)((((uint64_t)DEAD_TIME_NS * SystemCoreClock) / 1000000000) - 1); // (84)
    TIM_BDTRInitStructure.TIM_Break = TIM_Break_Disable;
    TIM_BDTRInitStructure.TIM_BreakPolarity = TIM_BreakPolarity_Low;
    TIM_BDTRInitStructure.TIM_AutomaticOutput = TIM_AutomaticOutput_Disable;

    TIM_BDTRConfig(TIM1, &TIM_BDTRInitStructure);

    /* Custom TIM setup that isn't provided in default structures */

    // enable CCR preloading for channels 1, 2, and 3 (preload duty cycle changes)
    TIM1->CCMR1 |= TIM_OCPreload_Enable | (TIM_OCPreload_Enable << 8);
    TIM1->CCMR2 |= TIM_OCPreload_Enable;

    // enable fast output compare events for channels 1, 2, and 3
    // 5 clock cycles to 3 clock cycles
    TIM1->CCMR1 |= TIM_OCFast_Enable | (TIM_OCFast_Enable << 8);
    TIM1->CCMR2 |= TIM_OCFast_Enable;

    /* TIM1 counter enable */
    TIM_Cmd(TIM1, ENABLE);

    /* Main Output Enable */
    TIM_CtrlPWMOutputs(TIM1, ENABLE);
}