#include "uart.h"

char buffer[BUFFER_LENGTH];
char* bufferLoc = &buffer[0];

volatile uint8_t desiredThrottle = 0;

/*UARTSendLine
 *Populates a buffer which gets shifted out UART3 at the baud rate specified by UARTInit.
 *Note, this function is non-blocking and repeated calls will stop the current transfer and start
 *a new transfer
*/
void UARTSendLine(char data[])
{
    uint8_t length = strlen(&data[0]);//Get Length of Null Terminated String
    for(int i = 0; i< length; i++)
    {
        buffer[i] = data[i];//Copy String into Buffer
    }
    buffer[length] = 0x0A; //set to the next line
    buffer[length+1] = 0x0D; //reset to left side
    buffer[length+2] = 0x00; //Add Terminating 0x00;
    bufferLoc= &buffer[0]; //Reset the Pointer to the beginning of the buffer
}


void UARTSendString(char data[])
{
    uint8_t length = strlen(&data[0]);//Get Length of Null Terminated String
    for(int i = 0; i< length; i++)
    {
        buffer[i] = data[i];//Copy String into Buffer
    }
    buffer[length] = 0x00; //Add Terminating 0x00;
    bufferLoc= &buffer[0]; //Reset the Pointer to the beginning of the buffer
}


//USART3_IRQHandler
//Handles the USART Interrupt. On a transfer empty interrupt, populates the data register with the next character to send.
void USART3_IRQHandler (void)
{
    if(USART_GetITStatus(USART3, USART_IT_TXE) == SET)
    {
        //Clear Transmit Buffer Empty Flag by Writing to USART3->DR;
        if(*bufferLoc == 0x00 || bufferLoc == &buffer[BUFFER_LENGTH])
        {
            //If we have reached the end of the null-terminated string,
            USART_SendData(USART3, 0x00); //Places a null character into the data register to clear the interrupt
        }
        else
        {
            USART_SendData(USART3, *bufferLoc); //Put the next character in the Data Register
            bufferLoc++; // Increment the buffer pointer
        }
    }
    else if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
    {
        //Save the data, reading from USART3->DR clears interrupt
        desiredThrottle = USART_ReceiveData(USART3);// USART3->DR;
        //reset timer to avoid hitting the timeout
        TIM14->CNT = 0x00;
        GPIO_ResetBits(GPIOD, LED_BLUE);
    }
}


// this interrupt should only get hit if RS485 misses transmits
void TIM8_TRG_COM_TIM14_IRQHandler (void)
{
    if (TIM_GetITStatus(TIM14, TIM_IT_Update) != RESET)
    {
        GPIO_SetBits(GPIOD, LED_BLUE);
        TIM_ClearITPendingBit(TIM14, TIM_IT_Update);  //reset flag
    }
}


//UARTInit
//Initializes Pins 8 and 9 on GPIO D to UART3.
//Inputs: baudRate: Desired Baud Rate for Serial Communication
void UARTInit(uint32_t baudRate)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    TIM_TimeBaseInitTypeDef  TIM_InitStructure1;
    USART_InitTypeDef USART_InitStructure;
    NVIC_InitTypeDef NVIC_InitStructure;

    //Enable GPIOD Clock Power
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
    //Enable USART3 Clock Power
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
    //Enable TIM14 power
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM14, ENABLE);

    // pin 8 and 9 for UART
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
    GPIO_Init(GPIOD, &GPIO_InitStructure);

    /* Connect USART Pins to GPIO */
    GPIO_PinAFConfig(GPIOD, GPIO_PinSource8, GPIO_AF_USART3);
    GPIO_PinAFConfig(GPIOD, GPIO_PinSource9, GPIO_AF_USART3);

    USART_InitStructure.USART_BaudRate = baudRate;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_Init(USART3,&USART_InitStructure);

    //Enable UART interrupt
    NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x00;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0F;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    /* timer 14 initialization for UART Rx timeout */
    TIM_InitStructure1.TIM_Prescaler = 42; // TIM14 base clock is 42MHz
    TIM_InitStructure1.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_InitStructure1.TIM_Period = 50000; // Each tick is 1 us
    TIM_InitStructure1.TIM_ClockDivision = TIM_CKD_DIV1;

    TIM_TimeBaseInit(TIM14, &TIM_InitStructure1);
    TIM_Cmd(TIM14, ENABLE);

    /* Timer 14 Interrupt Config */
    NVIC_InitStructure.NVIC_IRQChannel = TIM8_TRG_COM_TIM14_IRQn;
    /* Set priority */
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    /* Set sub priority */
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
    /* Enable interrupt */
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    /* Add to NVIC */
    NVIC_Init(&NVIC_InitStructure);

    // Enable interrupt
    TIM_ITConfig(TIM14, TIM_IT_Update, ENABLE);
    TIM14->CNT = 0x00;

    USART3->SR = 0x00;
    USART3->DR = 0x00;
    USART_ITConfig(USART3, USART_IT_TXE, ENABLE);
    USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);

    USART_Cmd(USART3, ENABLE); //Enable UART3


    return;
}
