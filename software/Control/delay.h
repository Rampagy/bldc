#ifndef DelayLoop_H
#define DelayLoop_H

void TimingDelay_Decrement(void);
void SysTick_Init(void);
void SysTick_Handler(void);
void Delay(__IO uint32_t nTime);


/*****************************************************************************
 * Example:  Delay 56.7ms                                                    *
 * delay(567);                                                               *
 *****************************************************************************/
#endif


