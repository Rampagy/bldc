#ifndef USER_TYPES_H
#define USER_TYPES_H

// defines
#define LED_GREEN   GPIO_Pin_12     // Unused
#define LED_ORANGE  GPIO_Pin_13     // hold command (-20% or 20%)
#define LED_RED     GPIO_Pin_14     // Zero Motor Speed
#define LED_BLUE    GPIO_Pin_15     // RS485 Rx Timed out

#define TX_BYTES 12             // 4 bytes for echoing command, 4 bytes for motor speed, 4 bytes for current consumption
#define RX_BYTES 4              // 4 data bytes
#define SPEED_BUFFER_LENGTH 5   // length of speed (moving average) filter

// typedefs
typedef union
{
    uint8_t     u8_data     [TX_BYTES];
} debug_T;

// typedefs
typedef union
{
    uint8_t     u8_data     [RX_BYTES];
} rxBuffer_T;

#endif