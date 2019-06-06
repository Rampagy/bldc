#ifndef MAIN_H
#define MAIN_H


#include <misc.h>
#include <stm32f4xx.h>
#include <system_stm32f4xx.h>

#include "uart.h"
#include "hall_effect.h"
#include "debug.h"


extern int16_t  motorAngPosition;
extern uint16_t motorSpeedCount;
extern uint8_t  desiredThrottle;
extern uint8_t  RS485RxCompleted;
extern debug_T  debugData;

#endif