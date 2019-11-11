/************************************
 * Alex Simon                       *
 * Hex Bridge Power Inverter        *
 * 4/23/2019                        *
 ************************************/

#include "main.h"

void main()
{
    SystemCoreClockUpdate();
    UARTInit(115200);
    Debug_Init();
    Hall_Init();
    TIM_Config();

    // figure out what the initial motor position is
    CalcInitialPosition();

    // variable initializations
    uint32_t speedCnt = 0;

    while(1)
    {
        if (RS485RxCompleted)
        {
            RS485RxCompleted = 0;
            //reset timer to avoid hitting the timeout
            TIM14->CNT = 0x00;
            GPIO_ResetBits(GPIOD, LED_BLUE);

            desiredThrottleX10 = 0;
            uint16_t multiplier = 1000;
            for (uint8_t i = 0; i < RX_BYTES; i++)
            {
                desiredThrottleX10 += (uint16_t)(multiplier * (rxBuffer.u8_data[i] - 48));
                multiplier /= 10;
            }
            desiredThrottleX10 = (int16_t)(desiredThrottleX10 - 1000);

            uint16_t motorSpeed = 0;
            if (speedCnt)
            {
                // 60,000,000 counts/min * (1 rev/360 deg) * (1 mech rotation / 4 elec rotation)
                motorSpeed = ((uint32_t)41667 * deltaSpeedAngle) / speedCnt;
            }

            // set to zero until current consumption is calculated
            uint16_t currentConsumption = 0;
            UARTSendData((uint16_t)(desiredThrottleX10 + 1000), motorSpeed, currentConsumption);
        }

        // set LED indicator
        if (desiredThrottleX10 == 200 || desiredThrottleX10 == -200)
        {
            GPIO_SetBits(GPIOD, LED_ORANGE);
        }
        else
        {
            GPIO_ResetBits(GPIOD, LED_ORANGE);
        }

        // apply moving average
        speedCnt = 0;
        for (uint8_t i = 0 ; i < SPEED_BUFFER_LENGTH; i++)
        {
            speedCnt += motorSpeedCount[i];
        }
        speedCnt /= SPEED_BUFFER_LENGTH;

        CalculatePhases((uint16_t)speedCnt, deltaSpeedAngle, desiredThrottleX10);
    }
}