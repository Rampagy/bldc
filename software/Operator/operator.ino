// includes
#include <avr/interrupt.h>
#include <avr/io.h>
#include "Comm.h"
#include "AccelerationControl.h"
#include "types.h"

//defines
#define TRANS_ENABLE        2   // Transmission enable is on pin 3

// globals
Comm comm;
volatile uint8_t Run10msTask = 0;

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
    uint16_t throttleEcho = 0;
    uint16_t motorSpeed = 0;
    uint16_t motorCurrent = 0;

    ComputeThrottle();
    SetTransEnable(1);

    // comm received
    if (!comm.neverReceived)
    {
        (void)comm.CheckWatchdog();

        // decipher data
        uint16_t multiplier = 1000;
        for (uint8_t i = 0; i < 4; i++)
        {
            // each packet is 4 bytes long
            throttleEcho += multiplier * (comm.rxBuffer[i] - 48);
            motorSpeed += multiplier * (comm.rxBuffer[i+4] - 48);
            motorCurrent += multiplier * (comm.rxBuffer[i+8] - 48);
            multiplier /= 10;
        }

        if (throttleEcho == 1200 || throttleEcho == 800)
        {
            //digitalWrite(LED_BUILTIN, LOW);
        }
        else
        {
            //digitalWrite(LED_BUILTIN, HIGH);
        }
    }
}

//*********************************************
//  Set Transmission Enable
//*********************************************
void SetTransEnable(const uint8_t pin_state)
{
    digitalWrite(TRANS_ENABLE, pin_state);
}


//*********************************************
//  Compute Throttle
//*********************************************
void ComputeThrottle()
{
    static int16_t throttleX100 = 0;
    static drive_mode_t drive_mode = DECELERATE;
    static uint16_t count = 0;

    switch(drive_mode)
    {
        // accelerate to 20% at 40%/sec
        case ACCELERATE:
            if (linear_accel_to_target(&throttleX100, 40, 2000))
            {
                drive_mode = HOLD_POSITIVE;
            }
            break;

        // sit at 20% for 5 seconds
        case HOLD_POSITIVE:
            if (count >= 499)
            {
                count = 0;
                drive_mode = DECELERATE;
            }
            else
            {
                count++;
            }
            break;

        // accelerate to -20% at 40%/sec
        case DECELERATE:
            if (linear_accel_to_target(&throttleX100, 40, -2000))
            {
                drive_mode = HOLD_NEGATIVE;
            }
            break;

        // sit at -20% for 5 seconds
        case HOLD_NEGATIVE:
            if (count >= 499)
            {
                count = 0;
                drive_mode = ACCELERATE;
            }
            else
            {
                count++;
            }
            break;

        // accelerate to stop
        default:
            (void)linear_accel_to_target(&throttleX100, 50, 0);
            break;
    }

    // 0.1 slope, 1000 bias
    comm.SendData((throttleX100 + 10000) / 10);
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
    while (1)
    {
        if (Run10msTask)
        {
            Run10msTask = 0;
            TenMsTask();
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
    // clear transmission complete flag
    UCSR0A &= ~(1 << TXC0);
    
    if (comm.txPacketCounter >= TX_BYTES)
    {
        // disable TX and TX complete interrupt
        UCSR0B &= ~(1 << TXEN0) & ~(1 << TXCIE0);
    }
    else
    {
        // write data to data register
        UDR0 = comm.txPacket[comm.txPacketCounter];
        comm.txPacketCounter++;
    }
}

//**************************************
//  UART Interrupt
//  Called when Rx is complete
//  Vector Address 18
//**************************************
ISR(USART_RX_vect)
{
    static uint8_t rxByteCount = RX_BYTES+1; // prevents reading partial data

    // Save the data
    uint8_t tempData = UDR0;
    digitalWrite(LED_BUILTIN, HIGH);
    // clear the rx complete flag
    UCSR0A &= ~(1 << RXC0);

    if (tempData == 10)
    {
        // Every packet starts with a '\n'
        rxByteCount = 0;
    }
    else if (rxByteCount < RX_BYTES && tempData >= '0' && tempData <= '9')
    {
        // only capture data in valid range
        comm.rxTempBuffer[rxByteCount] = tempData;
        rxByteCount++;
    }

    if (rxByteCount == RX_BYTES)
    {
        // prevents reading partial data
        rxByteCount = RX_BYTES+1;

        // copy temp buffer to permanent buffer
        for (uint8_t i = 0; i < RX_BYTES; i++)
        {
            comm.rxBuffer[i] = comm.rxTempBuffer[i];
        }

        // reset timer and flag
        comm.neverReceived = 0;
        comm.rxTimer = 0;
    }
}
