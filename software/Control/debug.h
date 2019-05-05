#ifndef DEBUG_H
#define DEBUG_H

// includes
#include <stm32f4xx_gpio.h>
#include "uart.h"


// defines
#define LED_GREEN   GPIO_Pin_12     // None
#define LED_ORANGE  GPIO_Pin_13     // None
#define LED_RED     GPIO_Pin_14     // Zero Motor Speed
#define LED_BLUE    GPIO_Pin_15     // RS485 Rx Timed out


// function declarations
void Debug_Init(void);
void TIM8_BRK_TIM12_IRQHandler(void);

// globals
extern int16_t motorAngPosition;
extern uint16_t motorSpeedCount;

#endif