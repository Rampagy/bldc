#ifndef TASK_H
#define TASK_H


// includes
#include <stm32f4xx.h>
#include <stm32f4xx_tim.h>


// defines
#define TASK_RATE 10 // in milliseconds
#define MAX_STEP 10 // 1.0% / 10msec -> 100% / 1 second


// declarations
void InitTask(void);
void TenMsTask(void);
void TIM8_BRK_TIM12_IRQHandler(void);


// externs
extern int16_t      desiredThrottleX10;


#endif