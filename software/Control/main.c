/**********************************
    * Alex Simon
    * Hex Bridge Power Inverter
    * 4/23/2019
    ********************************/

#include <misc.h>
#include <stm32f4xx.h>
#include <system_stm32f4xx.h>

#include "uart.h"
#include "delay.h"

void main()
{
    SysTick_Init();
    UARTInit(9600);

    char message[5] = "Hola!";
    while(1)
    {
        UARTSendLine(message);
        Delay(20000);
    }
}