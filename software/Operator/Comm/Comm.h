#ifndef COMM_H
#define COMM_H

// includes
#include <Arduino.h>

// defines
#define RX_BYTES    12   // 4 for throttle echo, 4 for motor speed, 4 for current consumption (must be even)
#define TX_BYTES    5   // 1 for start, 4 char data bytes

class Comm
{
    public:
        Comm(void);
        void ConfigureComm(void);
        void SendData(uint16_t packet);
        uint8_t CheckWatchdog(void);
        uint8_t rxTempBuffer[RX_BYTES] = {0};
        uint8_t rxBuffer[RX_BYTES] = {0};
        uint8_t timeout_threshold = 4;
        uint8_t timed_out = 0;
        uint8_t rxTimer = 0;
        uint8_t txPacket[TX_BYTES] = {0};
        uint8_t txPacketCounter = 0;
        uint8_t neverReceived = 1;
};

#endif
