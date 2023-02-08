/* Entry Point */
ENTRY(_start)

/* define heap and stack size */
__HEAP_SIZE            = 0 ;
__STACK_SIZE           = 4096 ;

SRAM_SIZE =  384K;    
/* Define SRAM Base Address */
SRAM_BASE_ADDR = 0x40000000;
    
MEMORY
{  
    m_text :	org = 0x1000000, len = 1856K  
    m_data :	org = 0x40000000,   len = 384K
}


SECTIONS
{
   
  .text : 
  {
    KEEP(*(.text))
	KEEP(*(.text.*))
    . = ALIGN(16);
  } > m_text
      
  .rodata :
  {
    KEEP(*(.rodata))
    KEEP(*(.rodata.*))
  } > m_text
     
	.data   : 
	{
	  KEEP(*(.data))
      KEEP(*(.data.*))
	  . = ALIGN(4);
	}  > m_data AT>m_text
    
  .sdata2  :
	{  
	  *(.sdata2)
	  *(.sdata2.*)
	} > m_data AT>m_text

	.sbss2    (NOLOAD)   :
	{
      /* _SDA2_BASE_ = .; */ 
	  *(.sbss2)
	  *(.sbss2.*)
	} > m_data
    
    .sdata  :
	{
	  *(.sdata)
	  *(.sdata.*)
	} > m_data AT>m_text
    
	.bss   (NOLOAD)  :
	{
	  __BSS_START = .;
	  *(.sbss)
	  *(.sbss.*)	
      *(.bss)
      *(.bss.*)
      *(COMMON)
      __BSS_END = .;
    } > m_data
    
    
 
/*-------- LABELS USED IN CODE -------------------------------*/
        
/* Labels for Copying Initialised Data from Flash to RAM */
__DATA_SRAM_ADDR  = ADDR(.data);
__SDATA_SRAM_ADDR = ADDR(.sdata);

__DATA_SIZE   = SIZEOF(.data);
__SDATA_SIZE  = SIZEOF(.sdata);

__DATA_ROM_ADDR  = LOADADDR(.data);
__SDATA_ROM_ADDR = LOADADDR(.sdata);
   
/* Labels Used for Initialising SRAM ECC */
__SRAM_SIZE = SRAM_SIZE;
__SRAM_BASE_ADDR = SRAM_BASE_ADDR;

__BSS_SIZE    = __BSS_END - __BSS_START;      
      
}

