#ifndef ACCELERATION_CONTROL_H
#define ACCELERATION_CONTROL_H

// includes
#include <Arduino.h>

// acceleration units are %/second
uint8_t linear_accel_to_target(int16_t *throttleX10, const uint16_t accelerationX10, const int16_t targetX10);

#endif