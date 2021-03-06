#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

// includes
#include "hall_effect.h"
#include "pwm_output.h"

// defines
#define PHASE_PREDICTION

// function declarations
void CalculatePhases(uint16_t, int16_t, int16_t);

// externs
extern int16_t  directAxisAngle;
extern uint16_t motorSpeedCount[];
extern int16_t desiredThrottleX10;
extern uint8_t  motorSpeedTimerOverrun;

#endif