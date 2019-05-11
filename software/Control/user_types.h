#ifndef USER_TYPES_H
#define USER_TYPES_H

// defines
#define LED_GREEN   GPIO_Pin_12     // None
#define LED_ORANGE  GPIO_Pin_13     // None
#define LED_RED     GPIO_Pin_14     // Zero Motor Speed
#define LED_BLUE    GPIO_Pin_15     // RS485 Rx Timed out

#define DEBUG_BYTE_LENGTH 10

// typedefs
typedef union
{
    char        char_data   [DEBUG_BYTE_LENGTH];
    uint8_t     u8_data     [DEBUG_BYTE_LENGTH];
    uint16_t    u16_data    [DEBUG_BYTE_LENGTH >> 1];
} debug_T;


#endif