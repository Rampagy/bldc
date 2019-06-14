#ifndef PWM_OUTPUT_H
#define PWM_OUTPUT_H

// includes
#include <stm32f4xx.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_tim.h>
#include <stm32f4xx_rcc.h>
#include <system_stm32f4xx.h>

// defines
#define PWM_FREQ_HZ 10000
#define DEAD_TIME_NS 500 // nanoseconds

// function declarations
void TIM_Config(void);
void SetPhaseDutyCycles(uint16_t phaseAPercX10, uint16_t phaseBPercX10, uint16_t phaseCPercX10);


#endif