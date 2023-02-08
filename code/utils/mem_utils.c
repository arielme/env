#include "utils/mem_utils.h"

int MemcpyFromFlashToRam(uint8_t *src, uint8_t *dst, uint32_t cnt)
{
    if ( (src < FLASH_START) || (FLASH_END < src+cnt) )
    {
        return -1;
    }

    if ( (dst < RAM_START) || (RAM_END <  dst+cnt) )
    {
        return -1;
    }

    while (cnt >= 4)
    {
        *((unsigned long*)dst) = *((unsigned long*)src);
        dst += 4;
        src += 4;
        cnt -= 4;
    }

    while (cnt >= 1)
    {
        *((unsigned char*)dst) = *((unsigned char*)src);
        dst += 1;
        src += 1;
        cnt -= 1;
    }

    return 0;
}