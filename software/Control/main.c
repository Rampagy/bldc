/************************************
 * Alex Simon                       *
 * Hex Bridge Power Inverter        *
 * 4/23/2019                        *
 ************************************/

#include <misc.h>
#include <stm32f4xx.h>
#include <system_stm32f4xx.h>

#include "main.h"
#include "uart.h"
#include "hall_effect.h"
#include "debug.h"

void main()
{
    SystemCoreClockUpdate();
    Debug_Init();
    UARTInit(115200);
    Hall_Init();

    while(1)
    {
        // (void) Delay(1000);  Delay 1 second
    }
}