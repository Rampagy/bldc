#include "motor_control.h"


const uint8_t SineLookupTable[360] = {
    50, 50, 51, 52, 53, 54, 55, 56, 56, 57, 58, 59, 60, 61, 62, 62, 63, 64, 65, 66,
    67, 67, 68, 69, 70, 71, 71, 72, 73, 74, 75, 75, 76, 77, 78, 78, 79, 80, 80, 81,
    82, 82, 83, 84, 84, 85, 86, 86, 87, 87, 88, 88, 89, 90, 90, 91, 91, 92, 92, 92,
    93, 93, 94, 94, 95, 95, 95, 96, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 99,
    99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99,
    99, 99, 98, 98, 98, 98, 97, 97, 97, 97, 96, 96, 96, 95, 95, 95, 94, 94, 94, 93,
    93, 92, 92, 91, 91, 90, 90, 89, 89, 88, 88, 87, 86, 86, 85, 85, 84, 83, 83, 82,
    81, 81, 80, 79, 79, 78, 77, 76, 76, 75, 74, 73, 73, 72, 71, 70, 69, 69, 68, 67,
    66, 65, 65, 64, 63, 62, 61, 60, 59, 59, 58, 57, 56, 55, 54, 53, 53, 52, 51, 50,
    49, 48, 47, 46, 46, 45, 44, 43, 42, 41, 40, 40, 39, 38, 37, 36, 35, 34, 34, 33,
    32, 31, 30, 30, 29, 28, 27, 26, 26, 25, 24, 23, 23, 22, 21, 20, 20, 19, 18, 18,
    17, 16, 16, 15, 14, 14, 13, 13, 12, 11, 11, 10, 10, 9 , 9 , 8 , 8 , 7 , 7 , 6 ,
    6 , 5 , 5 , 5 , 4 , 4 , 4 , 3 , 3 , 3 , 2 , 2 , 2 , 2 , 1 , 1 , 1 , 1 , 0 , 0 ,
    0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,
    0 , 1 , 1 , 1 , 1 , 1 , 2 , 2 , 2 , 2 , 3 , 3 , 3 , 4 , 4 , 4 , 5 , 5 , 6 , 6 ,
    7 , 7 , 7 , 8 , 8 , 9 , 9 , 10, 11, 11, 12, 12, 13, 13, 14, 15, 15, 16, 17, 17,
    18, 19, 19, 20, 21, 21, 22, 23, 24, 24, 25, 26, 27, 28, 28, 29, 30, 31, 32, 32,
    33, 34, 35, 36, 37, 37, 38, 39, 40, 41, 42, 43, 43, 44, 45, 46, 47, 48, 49, 49
};


uint16_t checkAngleOverflow(int16_t angle)
{
    angle = (angle + 360) % 360;

    return (uint16_t)angle;
}

void CalculatePhases(uint16_t speedCnt, int16_t deltaAngle, int16_t desiredThrotX10)
{
    /*------------------- Calculate Quadrature Axis Angle -------------------*/
    // half of the hall effect resolution, so that active torque region is centered around max torque point
    int16_t predictedPhaseAngle = 30;

#ifdef PHASE_PREDICTION
    if (!motorSpeedTimerOverrun)
    {
        // estimate the current angle based on previous completion times
        uint16_t currentTimerCount = TIM13->CNT > speedCnt ? speedCnt : TIM13->CNT;

        // 100's are here for extra resolution
        predictedPhaseAngle = (((int32_t)currentTimerCount * 100 * deltaAngle) / speedCnt) / 100;
    }
#endif

    if ((deltaAngle < 0 && predictedPhaseAngle > 0) ||
        (deltaAngle > 0 && predictedPhaseAngle < 0))
    {
        // make sure deltaAngle and predictedPhaseAngle have the same sign
        predictedPhaseAngle *= -1;
    }
    else if (deltaAngle == 0)
    {
        // in the event that deltaAngle is zero use same sign as desiredThrotX10
        if (desiredThrotX10 < 0)
        {
            predictedPhaseAngle *= -1;
        }
    }


    // control angle is -91 or 91 to compensate for calculation and
    // preloading delay of the dutycycle
    int16_t controlAngle = 91;
    uint16_t absDesiredThrottleX10 = desiredThrotX10;
    if (desiredThrotX10 < 0)
    {
        controlAngle = -91;
        absDesiredThrottleX10 = desiredThrotX10 * -1;
    }

    uint16_t quadratureAxisAngle = checkAngleOverflow(directAxisAngle + controlAngle + predictedPhaseAngle);

    /*--------------------- Calculate Phase Duty Cycles ---------------------*/
    // Set phase multipliers to adjust voltages
    uint16_t aMultiplier = SineLookupTable[quadratureAxisAngle];
    uint16_t bMultiplier = SineLookupTable[checkAngleOverflow(quadratureAxisAngle + 120)];
    uint16_t cMultiplier = SineLookupTable[checkAngleOverflow(quadratureAxisAngle + 240)];

    uint16_t aDutyCycleX10 = (uint32_t)absDesiredThrottleX10 * aMultiplier / 100;
    uint16_t bDutyCycleX10 = (uint32_t)absDesiredThrottleX10 * bMultiplier / 100;
    uint16_t cDutyCycleX10 = (uint32_t)absDesiredThrottleX10 * cMultiplier / 100;

    SetPhaseDutyCycles(aDutyCycleX10, bDutyCycleX10, cDutyCycleX10);

    return;
}