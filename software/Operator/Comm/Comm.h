#ifndef COMM_H
#define COMM_H

// includes
#include <Arduino.h>

// defines
#define BUFFER_LENGTH       10  // Must be even
#define TERMINATING_BYTES   2

//typedefs
typedef union
{
    uint8_t u8_data[BUFFER_LENGTH];
    uint16_t u16_data[BUFFER_LENGTH>>1];
} packet_T;


class Comm
{
    public:
        Comm(void);
        void SetupComm(void);
        void SendData(int16_t packet);
        uint8_t CheckWatchdog(void);
        packet_T rxBuffer;
        uint8_t timeout_threshold;
        uint8_t timed_out;
        uint8_t bufferLoc;
        uint8_t rxTimer;
        int16_t txPacket;
};

#endif
