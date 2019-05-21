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
uint8_t rxTimer = 0;
volatile uint8_t Run10msTask = 0;


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
    // disable TX and TX complete interrupt
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
    rxTimer = 0;
    digitalWrite(LED_BUILTIN, LOW);

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
}


//**************************************
//  10 ms Task Rate
//  Creates a periodic Task
//  Vector Address 14
//**************************************
ISR(TIMER0_COMPA_vect)
{
    Run10msTask = 1;
}


//*********************************************
//  Logic called every 10ms
//*********************************************
void TenMsTask()
{
    ComputeThrottle();
    RS485Watchdog();
}

//*********************************************
//  RS485 Watchdog
//*********************************************
void RS485Watchdog()
{
    rxTimer++;
    if (rxTimer > 5)
    {
        // debug timeout - RS485 not connected
        digitalWrite(LED_BUILTIN, HIGH);
    }
}


//*********************************************
//  Compute Throttle
//*********************************************
void ComputeThrottle()
{
    static uint8_t throttle = 0;
    static uint8_t throttleCounter = 0;

    //send data
    UARTSendData(throttle);

    if (throttle < 25)
    {
        // increment every 10 task cycles up to 25% throttle
        if (throttleCounter >= 9)
        {
            throttle++;
            throttleCounter = 0;
        }
        else
        {
            throttleCounter++;
        }
    }
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
   UBRR0 = 8; // for configuring baud rate of 115200bps - pg 182
   UCSR0C |= (1 << UCSZ01) | (1 << UCSZ00); // Use 8-bit character sizes 
   UCSR0B |= (1 << RXEN0) | (1 << RXCIE0); // Turn on the reception, and Receive interrupt
}


//*********************************************
//  Send UART data
//*********************************************
void UARTSendData(uint8_t packet)
{
    // enable TX and TX complete interrupt
    UCSR0B |= (1 << TXEN0) | (1 << TXCIE0);

    // write data to data register
    UDR0 = packet;
}


void loop()
{
    uint16_t startupTimer = 0;
    
    while (1)
    {
        if (Run10msTask)
        {
            Run10msTask = 0;
            if (startupTimer >= 299)
            {
                TenMsTask();
            }
            else
            {
                startupTimer++;    
            }
        }
    }
}
