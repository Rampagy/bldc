#include "Comm.h"


//*********************************************
//  Configure UART
//*********************************************
Comm::Comm()
{
    UCSR0A = 0; // set entire UCSR0A register to 0
    UCSR0B = 0; // same for UCSR0B
    UCSR0C = 0; // same for UCSR0C

    UBRR0 = 8; // for configuring baud rate of 115200bps - pg 182
    UCSR0C |= (1 << UCSZ01) | (1 << UCSZ00); // Use 8-bit character sizes
    UCSR0B |= (1 << RXEN0) | (1 << RXCIE0); // Turn on the reception, and Receive interrupt

    this->timeout_threshold = 4;
    this->timed_out = 0;
    this->bufferLoc = 0;
    this->rxTimer = 0;
    this->txPacket = 0;
}


//*********************************************
//  Send UART data
//*********************************************
void Comm::SendData(int16_t packet)
{
    this->txPacket = packet;

    // enable TX and TX complete interrupt
    UCSR0B |= (1 << TXEN0) | (1 << TXCIE0);

    // write data to data register
    UDR0 = (this->txPacket && 0xFF00) >> 8;
}


//*********************************************
//  UART Watchdog
//*********************************************
uint8_t Comm::CheckWatchdog()
{
    this->rxTimer++;
    if (this->rxTimer >= this->timeout_threshold)
    {
        // debug timeout - RS485 not connected
        digitalWrite(LED_BUILTIN, HIGH);
        this->timed_out = 1;
    }
    return this->timed_out;
}