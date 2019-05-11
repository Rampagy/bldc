// includes 
#include <avr/interrupt.h>
#include <avr/io.h>
//#include <avr/iom328p.h>

//defines
#define BUFFER_LENGTH 10 // must be even
#define TERMINATING_BYTES 2

//typedefs
typedef union
{
    uint8_t u8_data[BUFFER_LENGTH];
    uint16_t u16_data[BUFFER_LENGTH>>1];
} packet_T;

//globals
packet_T rxBuffer;
uint8_t bufferLoc = 0;

void setup()
{
    //Setup Timers
    SetupTimer0();

    //Setup UART
    SetupUART0();

    // enable global interrupt
    sei();

    // sets the built in LED as output
    pinMode(LED_BUILTIN, OUTPUT);
}

//**************************************
//  UART Interrupt
//  Called when Tx is complete
//  Vector Address 20
//**************************************
ISR(USART_TX_vect)
{
    // TEMPORARY: disable TX and TX complete interrupt
    UCSR0B &= ~(1 << TXEN0) & ~(1 << TXCIE0);
}

//**************************************
//  UART Interrupt
//  Called when Rx is complete
//  Vector Address 18
//**************************************
ISR(USART_RX_vect)
{
    // transfer the data to the rxBuffer
    rxBuffer.u8_data[bufferLoc] = UDR0;

    // if the terminating bytes have been received
    if ((bufferLoc >= TERMINATING_BYTES) && 
        ((rxBuffer.u8_data[bufferLoc-TERMINATING_BYTES+1] == 0xFF) && 
        (rxBuffer.u8_data[bufferLoc-TERMINATING_BYTES] == 0xFF)))
    {
        // reset buffer loc
        bufferLoc = 0;
    }
    else
    {
        // increment the buffer location
        bufferLoc++;
    }
    
    // clear the rx complete flag
    UCSR0A &= ~(1 << RXC0);

    // TEMPORARY: enable TX and TX complete interrupt
    UCSR0B |= (1 << TXEN0) | (1 << TXCIE0);
    //write data to be transferred
    UDR0 = rxBuffer.u8_data[1];
}


//**************************************
//  10 ms Task Rate
//  Creates a periodic Task
//  Vector Address 14
//**************************************
ISR(TIMER0_COMPA_vect)
{
    //Serial.write(100);
    //digitalWrite(LED_BUILTIN, digitalRead(LED_BUILTIN)^1);
}

//*********************************************
//  Configure Timer 0
//*********************************************
void SetupTimer0()
{
    TCCR0A = 0; // set entire TCCR0A register to 0
    TCCR0B = 0; // same for TCCR0B
    TCNT0  = 0; //initialize counter value to 0
    // set compare match register for 2khz increments
    OCR0A = 155;// = (16*10^6) / (100*1024) - 1 = 155(must be <256)
    // turn on CTC mode
    TCCR0A |= (1 << WGM01);
    // 1024 prescaler - page 142 of datasheet
    TCCR0B |= (1 << CS00);
    TCCR0B |= (1 << CS02);
    // enable timer compare interrupt
    TIMSK0 |= (1 << OCIE0A);
}


//*********************************************
//  Configure UART
//*********************************************
void SetupUART0()
{
    UCSR0A = 0; // set entire UCSR0A register to 0
    UCSR0B = 0; // same for UCSR0B
    UCSR0C = 0; // same for UCSR0C

   pinMode(13, OUTPUT);  // configuring pin 13 as output
   UBRR0 = 103; // for configuring baud rate of 9600bps
   UCSR0C |= (1 << UCSZ01) | (1 << UCSZ00); // Use 8-bit character sizes 
   UCSR0B |= (1 << RXEN0) | (1 << RXCIE0); // Turn on the reception, and Receive interrupt
}

void loop()
{
    while (1)
    {
        //nop
    }
}
