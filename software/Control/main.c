/**********************************
    * Alex Simon
    * Hex Bridge Power Inverter
    * 4/23/2019
    ********************************/

#include <misc.h>
#include <stm32f4xx.h>
#include <system_stm32f4xx.h>

#include "main.h"
#include "uart.h"
#include "delay.h"
#include "hall_effect.h"
#include "debug.h"

void main()
{
    (void) SysTick_Init();
    (void) Debug_Init();
    (void) UARTInit(256000);
    (void) Hall_Init();

    while(1)
    {

    }
}