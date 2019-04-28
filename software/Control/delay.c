#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include <system_stm32f4xx.h>
#include <stm32f4xx_syscfg.h>
#include <misc.h>

//private variables
static __IO uint32_t TimingDelay;



/**
  * @brief  Decrements the TimingDelay variable.
  * @param  None
  * @retval None
  */
void TimingDelay_Decrement(void) {

  if (TimingDelay != 0x00) {
    TimingDelay--;
  }
  return;
}



/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void) {

  TimingDelay_Decrement();
  return;
}

/**
  * @brief  This function initializes the SysTick timer
  * @param  None
  * @retval None
  */
void SysTick_Init(void) {

    /****************************************
     *SystemFrequency/1000     1ms        *
     *SystemFrequency/16800      0.1ms      *
     *SystemFrequency/1680       0.01ms     *
     ****************************************/
    while (SysTick_Config(SystemCoreClock / 3360) != 0) {
    } // One SysTick interrupt now equals 0.1ms

    return;
}

/**
  * @brief  This function sets up a timer delay
  * @param  nTime is the delay time in 0.1 of a millisecond (based on SysTick)
  * @retval None
  */
void Delay(__IO uint32_t nTime) {

  TimingDelay = nTime;

  while(TimingDelay != 0);
  return;
}