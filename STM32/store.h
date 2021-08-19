#include "stdint.h"

typedef struct
{
    uint8_t data[20];
}structure;

extern structure Struct;
extern uint8_t data[20];
extern uint8_t storeIt(int index, uint8_t input);
