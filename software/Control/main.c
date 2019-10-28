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
    Hall_Decoder();

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
            desiredThrottleX10 = (int16_t)(((uint16_t)(rxBuffer.u8_data[0] << 8) | rxBuffer.u8_data[1]) - 1000);

            if (speedCnt)
            {
                uint16_t motorSpeed = ((uint32_t)250000) / speedCnt;
                debugData.u8_data[0] = (uint8_t)((motorSpeed & 0xFF00) >> 8);
                debugData.u8_data[1] = (uint8_t)(motorSpeed & 0x00FF);
            }
            else
            {
                debugData.u16_data[0] = 0;
            }
            debugData.u16_data[1] = 0; // set to zero until current consumption is calculated
            UARTSendData(debugData.u8_data);

            if (desiredThrottleX10 == 200 || desiredThrottleX10 == -200)
            {
                GPIO_SetBits(GPIOD, LED_ORANGE);
            }
            else
            {
                GPIO_ResetBits(GPIOD, LED_ORANGE);
            }
        }

        speedCnt = 0;
        for (uint8_t i = 0 ; i < SPEED_BUFFER_LENGTH; i++)
        {
            speedCnt += motorSpeedCount[i];
        }
        speedCnt /= SPEED_BUFFER_LENGTH;

        CalculatePhases((uint16_t)speedCnt);
    }
}