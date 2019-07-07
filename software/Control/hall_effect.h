#ifndef HALL_EFFECT_H
#define HALL_EFFECT_H

// includes
#include <stm32f4xx.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_tim.h>
#include <stm32f4xx_rcc.h>
#include <system_stm32f4xx.h>
#include <stm32f4xx_exti.h>
#include <stm32f4xx_syscfg.h>
#include <misc.h>

#include "uart.h"
#include "debug.h"

#define TIM13_PERIOD    50000

// function declarations
void Hall_Init(void);
void Hall_Decoder(void);

void EXTI4_IRQHandler(void);
void EXTI9_5_IRQHandler(void);
void EXTI0_IRQHandler(void);
void TIM8_UP_TIM13_IRQHandler(void);

#endif