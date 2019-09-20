ENTRY(_start)
SECTIONS
{
    . = 0x400000 + SIZEOF_HEADERS;
    .all : { *(.text)  *(.data) *(.rodata) }
    /DISCARD/ : { *(.comment) }
}
