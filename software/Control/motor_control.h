#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H


#include "hall_effect.h"
#include "pwm_output.h"

#define PHASE_ADVANCE


void CalculatePhases(void);

extern int16_t  directAxisAngle;
extern uint16_t motorSpeedCount;
extern uint8_t  desiredThrottle;
extern uint8_t  motorSpeedTimerOverrun;

#endif