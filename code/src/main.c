/*
 * main implementation: use this 'C' sample to create your own application
 *
 */

#include "derivative.h" /* include peripheral declarations */

#include "utils/mem_utils.h"

extern void xcptn_xmpl(void);

int x = 0;

int main(void)
{
	volatile int counter = 0;
	
	x = 5;

	xcptn_xmpl ();              /* Configure and Enable Interrupts */

	MemcpyFromFlashToRam((uint8_t*)0xfa0000, (uint8_t*)0x40000000, 1024);

	/* Loop forever */
	for(;;) {	   
	   	counter++;
	}
}
