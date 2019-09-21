// includes
#include <avr/interrupt.h>
#include <avr/io.h>
#include "Comm.h"

//defines
#define TRANS_ENABLE        2   // Transmission enable is on pin 3

volatile uint8_t Run10msTask = 0;

// Setup communication
Comm comm;

void setup()
{
    // Setup Timers
    SetupTimer0();

    // Enable global interrupt
    sei();

    // Set built in LED as an output
    pinMode(LED_BUILTIN, OUTPUT);

    // Set transmission enable (D2) as an output
    pinMode(TRANS_ENABLE, OUTPUT);
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
    (void)(comm.CheckWatchdog());
    ToggleTransEnable();
}

//*********************************************
//  Toggle Transmission Enable
//*********************************************
void ToggleTransEnable()
{
    static uint8_t toggle_timer = 0;
    static uint8_t pin_state = LOW;

    if (toggle_timer >= 199)
    {
        toggle_timer = 0;
        pin_state ^= HIGH;
        digitalWrite(TRANS_ENABLE, pin_state);
    }
    else
    {
        toggle_timer++;
    }
}


//*********************************************
//  Compute Throttle
//*********************************************
void ComputeThrottle()
{
    static int16_t throttle = 0;
    static uint8_t throttleCounter = 0;
    static uint8_t throttle_dir = 0;

    // count up
    if (!throttle_dir)
    {
        if (throttle >= 10)
        {
            throttleCounter++;
            // stay at max for set amount before decrementing
            if (throttleCounter >= 199)
            {
                throttle_dir ^= 1;
                throttleCounter = 0;
            }
        }
        else
        {
            // increment every 10 task cycles
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
    // count down
    else
    {
        if (throttle <= -10)
        {
            throttleCounter++;
            // stay at min for set amount before incrementing
            if (throttleCounter >= 199)
            {
                throttle_dir ^= 1;
            }
        }
        else
        {
            // decrement every 10 task cycles
            if (throttleCounter >= 9)
            {
                throttle--;
                throttleCounter = 0;
            }
            else
            {
                throttleCounter++;
            }
        }
    }
    
    // use scaling of ten
    comm.SendData(throttle * 10);
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


void loop()
{
    uint16_t startupTimer = 0;

    while (1)
    {
        if (Run10msTask)
        {
            Run10msTask = 0;
            if (startupTimer >= 99)
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
