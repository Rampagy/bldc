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


//**************************************
//  UART Interrupt
//  Called when Tx is complete
//  Vector Address 20
//**************************************
ISR(USART_TX_vect)
{
    static uint8_t txByteCount = 0;

    txByteCount++;

    switch (txByteCount)
    {
        case 1:
            // write data to data register
            UDR0 = comm.txPacket && 0x00FF;
            break;
        default:
            // disable TX and TX complete interrupt
            UCSR0B &= ~(1 << TXEN0) & ~(1 << TXCIE0);
            txByteCount = 0;
            break;
    }
}

//**************************************
//  UART Interrupt
//  Called when Rx is complete
//  Vector Address 18
//**************************************
ISR(USART_RX_vect)
{
    // transfer the data to the rxBuffer
    comm.rxBuffer.u8_data[comm.bufferLoc] = UDR0;
    comm.rxTimer = 0;
    digitalWrite(LED_BUILTIN, LOW);

    // if the terminating bytes have been received
    if ((comm.bufferLoc >= TERMINATING_BYTES) &&
        ((comm.rxBuffer.u8_data[comm.bufferLoc-TERMINATING_BYTES+1] == 0xFF) &&
        (comm.rxBuffer.u8_data[comm.bufferLoc-TERMINATING_BYTES] == 0xFF)))
    {
        // reset buffer loc
        comm.bufferLoc = 0;
    }
    else
    {
        // increment the buffer location
        comm.bufferLoc++;
    }

    // clear the rx complete flag
    UCSR0A &= ~(1 << RXC0);
}