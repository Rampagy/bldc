#include "Comm.h"

//*********************************************
//  Initialize
//*********************************************
Comm::Comm()
{

}

//*********************************************
//  Configure UART
//*********************************************
void Comm::ConfigureComm()
{
    UCSR0A = 0; // set entire UCSR0A register to 0
    UCSR0B = 0; // same for UCSR0B
    UCSR0C = 0; // same for UCSR0C

    UBRR0 = 8; // for configuring baud rate of 115200bps - pg 163
    UCSR0C |= (1 << UCSZ01) | (1 << UCSZ00); // Use 8-bit character sizes
    UCSR0B |= (1 << RXEN0) | (1 << RXCIE0); // Turn on reception, and Receive interrupt
}


//*********************************************
//  Send UART data
//*********************************************
void Comm::SendData(uint16_t packet)
{
    this->txPacketCounter = 0;
    this->txPacket[0] = 10; // '\n'

    uint16_t divisor = 1000;
    for (uint8_t i = 1; i < TX_BYTES; i++)
    {
        uint8_t asciiDec = (packet / divisor);
        this->txPacket[i] = asciiDec + 48;
        packet -= asciiDec * divisor;
        divisor /= 10;
    }

    // enable TX and TX complete interrupt
    UCSR0B |= (1 << TXEN0) | (1 << TXCIE0);

    // write data to data register
    UDR0 = this->txPacket[this->txPacketCounter];
    this->txPacketCounter++;
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
        this->timed_out = 1;
    }
    else
    {
        this->timed_out = 0;
    }
    return this->timed_out;
}