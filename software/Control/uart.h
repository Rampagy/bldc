#ifndef UART_H
#define UART_H

#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_usart.h>
#include <system_stm32f4xx.h>
#include <misc.h>
#include <string.h>
#include "user_types.h"

//Example Use:
//  char tempBuf[] = "Hello World...";
//  UARTInit(9600);
//  UARTSendLine(tempBuf);

void UARTSendData(uint8_t[]);

void USART3_IRQHandler (void);
void TIM8_TRG_COM_TIM14_IRQHandler (void);
void UARTInit(uint32_t);

#endif