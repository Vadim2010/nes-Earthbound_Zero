.struct BANK_TABLE
    PPU_2K_1000     .byte
    PPU_2K_1800     .byte
    PPU_1K_0000     .byte
    PPU_1K_0400     .byte
    PPU_1K_0800     .byte
    PPU_1K_0C00     .byte
    CPU_8K_8000     .byte
    CPU_8K_A000     .byte
.endstruct

.struct CHR_TXT_OFFSET
    PPU_LOW         .byte
    BANK_PPU_HIGH   .word
.endstruct
