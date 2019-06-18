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
        // (void) Delay(1000);  Delay 1 second

        if (desiredThrottle <= 49)
        {
            GPIO_SetBits(GPIOD, LED_ORANGE);
        }
        else
        {
            GPIO_ResetBits(GPIOD, LED_ORANGE);
        }

        SetPhaseDutyCycles(desiredThrottle*10, desiredThrottle*10, desiredThrottle*10);
    }
}