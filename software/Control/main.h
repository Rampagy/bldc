#ifndef MAIN_H
#define MAIN_H

// includes
#include <misc.h>
#include <stm32f4xx.h>
#include <system_stm32f4xx.h>

#include "uart.h"
#include "hall_effect.h"
#include "debug.h"
#include "pwm_output.h"
#include "motor_control.h"
#include "task.h"


// externs
extern int16_t      directAxisAngle;
extern uint16_t     motorSpeedCount[];
extern int16_t      deltaSpeedAngle;
extern int16_t      desiredThrottleX10;
extern uint8_t      RS485RxCompleted;
extern debug_T      debugData;
extern rxBuffer_T   rxBuffer;
extern uint8_t      Run10msTask;
extern int16_t      slewedThrottleX10;

#endif