#include "uart.h"

char buffer[BUFFER_LENGTH];
char * bufferLoc = &buffer[0];

/*UARTSendLine
 *Populates a buffer which gets shifted out UART3 at the baud rate specified by UARTInit.
 *Note, this function is non-blocking and repeated calls will stop the current transfer and start
 *a new transfer
*/
void UARTSendLine(char data[]){
  uint8_t length = strlen(&data[0]);//Get Length of Null Terminated String
  for(int i = 0; i< length; i++){
      buffer[i] = data[i];//Copy String into Buffer
  }
  buffer[length] = 0x0A; //set to the next line
  buffer[length+1] = 0x0D; //reset to left side
  buffer[length+2] = 0x00; //Add Terminating 0x00;
  bufferLoc= &buffer[0]; //Reset the Pointer to the beginning of the buffer
  USART_Cmd(USART3, ENABLE); //Enable UART3
}
void UARTSendString(char data[]){
  uint8_t length = strlen(&data[0]);//Get Length of Null Terminated String
  for(int i = 0; i< length; i++){
      buffer[i] = data[i];//Copy String into Buffer
  }
  buffer[length] = 0x00; //Add Terminating 0x00;
  bufferLoc= &buffer[0]; //Reset the Pointer to the beginning of the buffer
  USART_Cmd(USART3, ENABLE); //Enable UART3
}

//UARTInit
//Initializes Pins 8 and 9 on GPIO D to UART3.
//Inputs: baudRate: Desired Baud Rate for Serial Communication
void UARTInit(uint32_t baudRate){

  //Enable GPIOD Clock Power
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);

  GPIO_InitTypeDef GPIO_InitStructure;

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8|GPIO_Pin_9;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
  GPIO_Init(GPIOD, &GPIO_InitStructure);

  /* Connect USART Pins to GPIO */
  GPIO_PinAFConfig(GPIOD, GPIO_PinSource8, GPIO_AF_USART3);
  GPIO_PinAFConfig(GPIOD, GPIO_PinSource9, GPIO_AF_USART3);

  //Enable USART3 Clock Power
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);

  USART_InitTypeDef USART_InitStructure;

  USART_InitStructure.USART_BaudRate = baudRate;
  USART_InitStructure.USART_WordLength = USART_WordLength_8b;
  USART_InitStructure.USART_StopBits = USART_StopBits_1;
  USART_InitStructure.USART_Parity = USART_Parity_No;
  USART_InitStructure.USART_Mode = USART_Mode_Tx;
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;

  USART_Init(USART3,&USART_InitStructure);

  NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable and set User Button and IDD_WakeUP EXTI Interrupt to the lowest priority */
  NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn ;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0F;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0F;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

  NVIC_Init(&NVIC_InitStructure);

  USART3->SR=0x00;
  USART_ITConfig(USART3, USART_IT_TXE, ENABLE);

}


//USART3_IRQHandler
//Handles the USART Interrupt. On a transfer empty interrupt, populates the data register with the next character to send.
void USART3_IRQHandler (void){
  if( USART_GetITStatus(USART3, USART_IT_TXE)==SET){
    //Clear Transmit Buffer Empty Flag by Writing to USART3->DR;
    if(*bufferLoc == 0x00 || bufferLoc == &buffer[BUFFER_LENGTH]){ //If we have reached the end of the null-terminated string,
      USART3->DR =0x00; //Places a null character into the data register to clear the interrupt
      USART_Cmd(USART3, DISABLE); //Disable UART3
    }else{
      USART3->DR = *bufferLoc; //Put the next character in the Data Register
      bufferLoc++; // Increment the buffer pointer
    }

  }
}
