#ifndef UART_H
#define UART_H

#include <stm32f4xx_rcc.h>
#include <stm32f4xx_gpio.h>
#include <stm32f4xx_usart.h>
#include <misc.h>
#include <system_stm32f4xx.h>

//This controls the maximum amount of characters that can be sent across in one transaction.
#define BUFFER_LENGTH 100

//Example Use:

//  char tempBuf[] = "Hello World...";
//  UARTInit(9600);
//  UARTSendLine(tempBuf);



void UARTSendLine(char[]);
void UARTSendString();

void USART3_IRQHandler (void);
void UARTInit(uint32_t);

#endif