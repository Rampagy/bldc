#include "AccelerationControl.h"

//*********************************************
//  Linear acceleration logic
//      acceleration units are %/second
//      throttleX100 units are %*100
//      targetX100 units are %*100
//*********************************************
uint8_t linear_accel_to_target(int16_t *throttleX100, const uint16_t acceleration, const int16_t targetX100)
{
    int16_t step = 0;
    uint8_t done = 0;

    // accelerating
    if (*throttleX100 < targetX100)
    {
        step = acceleration;
        if (*throttleX100 + step > targetX100)
        {
            step = targetX100 - *throttleX100;
        }
    }
    // decelerating
    else if (*throttleX100 > targetX100)
    {
        step = -1*acceleration;
        if (*throttleX100 + step < targetX100)
        {
            step = targetX100 - *throttleX100;
        }
    }
    *throttleX100 += step;

    if (*throttleX100 == targetX100)
    {
        done = 1;
    }
    else
    {
        done = 0;
    }
    return done;
}