#include "debug.h"

debug_T debugData;


void Debug_Init(void)
{
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);

    GPIO_InitTypeDef GPIO_InitStructure;

    /* Configure PD12, PD13, PD14 and PD15 in output pushpull mode (LEDs)*/
    GPIO_InitStructure.GPIO_Pin = LED_GREEN | LED_ORANGE | LED_RED | LED_BLUE;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
    GPIO_Init(GPIOD, &GPIO_InitStructure);
}