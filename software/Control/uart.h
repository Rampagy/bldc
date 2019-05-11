#ifndef UART_H
#define UART_H

#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_usart.h>
#include <system_stm32f4xx.h>
#include <misc.h>
#include <string.h>
#include "user_types.h"

//This controls the maximum amount of characters that can be sent across in one transaction.
#define BUFFER_LENGTH DEBUG_BYTE_LENGTH

//Example Use:

//  char tempBuf[] = "Hello World...";
//  UARTInit(9600);
//  UARTSendLine(tempBuf);

void UARTSendLine(char[]);
void UARTSendString(char[]);
void UARTSendData(char[]);

void USART3_IRQHandler (void);
void TIM8_TRG_COM_TIM14_IRQHandler (void);
void UARTInit(uint32_t);

#endif