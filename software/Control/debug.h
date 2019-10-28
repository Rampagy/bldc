#ifndef DEBUG_H
#define DEBUG_H

// includes
#include <stm32f4xx_gpio.h>
#include "user_types.h"
#include "uart.h"

// function declarations
void Debug_Init(void);

// globals
extern int16_t directAxisAngle;
extern uint16_t motorSpeedCount;

#endif