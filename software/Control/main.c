/************************************
 * Alex Simon                       *
 * Hex Bridge Power Inverter        *
 * 4/23/2019                        *
 ************************************/

#include "main.h"

void main()
{
    SystemCoreClockUpdate();
    Debug_Init();
    UARTInit(115200);
    Hall_Init();
    TIM_Config();

    // figure out what the initial motor position is
    Hall_Decoder();

    while(1)
    {
        if (RS485RxCompleted)
        {
            RS485RxCompleted = 0;
            if (motorSpeedCount)
            {
                // STM uses little endian so it will pack LSB then MSB
                debugData.u16_data[0] = (uint16_t)((uint32_t)250000 / motorSpeedCount);
            }
            else
            {
                // STM uses little endian so it will pack LSB then MSB
                debugData.u16_data[0] = (uint16_t)(0);
            }
            UARTSendData(debugData.char_data);
        }

        if (desiredThrottle == 0)
        {
            GPIO_SetBits(GPIOD, LED_ORANGE);
        }
        else
        {
            GPIO_ResetBits(GPIOD, LED_ORANGE);
        }

        CalculatePhases();
    }
}