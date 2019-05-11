#ifndef DEBUG_H
#define DEBUG_H

// includes
#include <stm32f4xx_gpio.h>
#include "user_types.h"
#include "uart.h"

// function declarations
void Debug_Init(void);
void TIM8_BRK_TIM12_IRQHandler(void);

// globals
extern int16_t motorAngPosition;
extern uint16_t motorSpeedCount;

#endif