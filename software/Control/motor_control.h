#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

// includes
#include "hall_effect.h"
#include "pwm_output.h"

// defines
#define PHASE_PREDICTION

// function declarations
void CalculatePhases(void);

// externs
extern int16_t  directAxisAngle;
extern uint16_t motorSpeedCount;
extern uint8_t  desiredThrottle;
extern uint8_t  motorSpeedTimerOverrun;

#endif