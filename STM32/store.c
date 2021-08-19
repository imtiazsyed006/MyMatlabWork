#include "store.h"
#include "stdint.h"

// structure Struct;
uint8_t data[20];

uint8_t storeIt(int index, uint8_t input)
{
    data[index] = input;
//     Struct.data[index] = input;
    return data;
}