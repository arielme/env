#ifndef _MEM_UTILS_H_
#define _MEM_UTILS_H_

#include "typedefs.h"

#define FLASH_START (uint8_t*)0x00FA0000
#define FLASH_END   (uint8_t*)0x014F0000

#define RAM_START   (uint8_t*)0x40000000
#define RAM_END     (uint8_t*)0x400BFFFF

int MemcpyFromFlashToRam(uint8_t *src, uint8_t *dst, uint32_t cnt)
    __attribute__ ((section (".data")))
    __attribute__ ((longcall));

#endif // _MEM_UTILS_H_