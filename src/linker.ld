ENTRY(_start)
OUTPUT_FORMAT(binary)
SECTIONS
{
    . = 1M;

    .test:{
        *(.text)
    }

    .rodata:{
        *(.rodata)
    }

    .data: {
        *(.data)
    }

    .bss: {
        *(COMMON)
        *(.bss)
    }
}