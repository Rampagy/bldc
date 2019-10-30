#ifndef COMM_H
#define COMM_H

// includes
#include <Arduino.h>

// defines
#define RX_BYTES    4   // 2 for motor speed, 2 for current consumption (must be even)
#define TX_BYTES    5   // 1 for start, 4 char data bytes

//typedefs
typedef union
{
    uint8_t u8_data[RX_BYTES];
    uint16_t u16_data[RX_BYTES>>1];
} packet_T;


class Comm
{
    public:
        Comm(void);
        void SetupComm(void);
        void SendData(uint16_t packet);
        uint8_t CheckWatchdog(void);
        packet_T rxBuffer;
        uint8_t timeout_threshold;
        uint8_t timed_out;
        uint8_t rxTimer;
        uint8_t txPacket[TX_BYTES];
        uint8_t txPacketCounter;
};

#endif
