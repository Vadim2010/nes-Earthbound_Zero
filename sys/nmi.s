.include "macros.inc"
.include "nes.inc"
.include "mmc3/mmc3.inc"
.include "mmc3/bank.inc"

.segment "NMI"

; F79F
.proc nmi
    .export nmi, get_function
    .importzp JmpInstr, Gamepad0Buttons, Gamepad0Status, Gamepad1Buttons, Gamepad1Status, BankMode, BankTable, BankRegister, CHRBank
    .importzp MaskPPU, CntrlPPU, CameraX, CameraY, IRQCount, IRQLatch, NMIFlags, NMIReady, OffsetNMI_Data, OtherNMIFlags, InterruptOffset
    .importzp byte_E7, byte_E1, FlagClearOAM300
    .import handle_game_logic, gamepad_input, draw_sprite, sub_FC96, bank_8000_1D_A000, mmc3_bank_set, NMI_Data

    bit PPU_STATUS
    bit NMIReady
    bpl @NMIGo
    rti

@NMIGo:
    save_registers              ; save registers on the stack

    ; initialize sprite RAM and transfer data
    ldx #0
    lda #2                      ; OAM >> 8
    stx OAM_ADDR                ; 8-bit address in SPR-RAM to access via OAM_DMA ($2004).
    sta OAM_DMA                 ; Transfers 256 bytes of memory into SPR-RAM. The address
                                ; read from is $100*N, where N is the value written.
    ldy OffsetNMI_Data
    lda OtherNMIFlags           ; get raw flags
    beq @no_other_flags
    lda NMIFlags                ; get NMI flags
    bne get_function            ; have flags set
    beq no_flags

@no_other_flags:
    lda NMIFlags                ; get NMI flags
    beq no_flags
    and #$7F
    sta OtherNMIFlags           ; keep flags except bit 7

get_function:
    lda NMI_Data,Y                ; get NMI function ID (order number in the NMITable)? get next
    beq @end_of_record
    bmi @no_functions
    asl A                       ; get offset for NMITable
    tax
    lda NMITable + 1,X          ; store the high address of the subprogram on the stack
    pha
    lda NMITable,X              ; store the low address - 1 of the subprogram on the stack
    pha
    rts                         ; execute the subprogram

@no_functions:
    and #$7F
    sta NMI_Data,Y
    bne no_flags

@end_of_record:
    sta NMIFlags

no_flags:
    ldx IRQCount
    beq @no_irq
    lda #$FF
    sta IRQ_LATCH
    sta IRQ_RELOAD
    lda #0
    sta PPU_ADDR
    sta PPU_ADDR
    lda #$10
    sta PPU_ADDR
    sta PPU_ADDR
    lda #0
    sta PPU_ADDR
    sta PPU_ADDR
    lda #$10
    sta PPU_ADDR
    sta PPU_ADDR
    lda #0
    sta PPU_ADDR
    sta PPU_ADDR
    stx IRQ_LATCH
    stx IRQ_RELOAD
    stx IRQ_ENABLE              ; enable MMC3 interrupts
    stx IRQLatch
    sta InterruptOffset
    cli

@no_irq:
    lda CameraX
    ldx CameraY
    sta PPU_SCROLL              ; set horizontal scroll
    stx PPU_SCROLL              ; set vertical scroll

    lda CntrlPPU
    ldx MaskPPU
    sta PPU_CTRL
    stx PPU_MASK

    sty OffsetNMI_Data            ; set offset of next record
    lda #$80
    sta NMIReady
    lda BankRegister
    pha                         ; save BankRegister into stack
    lda BankTable + BANK_TABLE::CPU_8K_8000
    pha                         ; save number of memory bank into stack $8000
    lda BankTable + BANK_TABLE::CPU_8K_A000
    pha                         ; save number of memory bank into stack $A000
    lda CHRBank
    beq @no_chr_bank
    lsr A
    and #3
    ora #$44
    ldx #2
    jsr mmc3_bank_set           ; set memory bank A - bank number X - mode
    ldx #3
    jsr mmc3_bank_set           ; set memory bank A - bank number X - mode
    dec CHRBank

@no_chr_bank:
    jsr bank_8000_1D_A000       ; set banks: BankNum to $8000, 1D to $A000
    jsr $8000                   ; Bank 0x1C
    lda FlagClearOAM300
    bmi restore_bank
    lda byte_E7
    and #$3F
    sta byte_E1
    lda OtherNMIFlags
    bne @other_flags
    jsr sub_FC96
    jmp restore_bank

@other_flags:
    clc
    sbc byte_E1
    bcs loc_F885
    ldx OtherNMIFlags
    dex
    stx byte_E1
    lda #0

loc_F885:
    sta OtherNMIFlags
    jsr draw_sprite

restore_bank:
    pla                         ; restore bank number from the stack 13
    ldx #7                      ; A000
    jsr mmc3_bank_set           ; Set memory bank A - bank number X - mode
    pla                         ; restore bank number from the stack 14
    ldx #6                      ; 8000
    jsr mmc3_bank_set           ; Set memory bank A - bank number X - mode
    pla                         ; restore bank register from the stack 7
    sta BankRegister
    ora BankMode
    sta BANK_SELECT             ; restore mode ?

    jsr gamepad_input
    lda Gamepad0Status
    ora Gamepad0Buttons
    sta Gamepad0Buttons
    lda Gamepad1Status
    ora Gamepad1Buttons
    sta Gamepad1Buttons
    jsr handle_game_logic
    lda JmpInstr
    beq @end_nmi
    jsr JmpInstr

@end_nmi:
    set NMIReady, #0
    restore_registers           ;restore registers from the stack

    rti
.endproc

; F8C1
NMITable:
    .import get_function, load_palettes
    .import write_horizontal, write_vertical, write_ppu_chars, fill_ppu, read_ppu, chr_text2stack

    .addr get_function - 1, next_func - 1, next_func_by_offset - 1, next_func_by_absolute - 1
    .addr load_palettes - 1
    .addr write_horizontal-1, write_vertical-1, write_ppu_chars-1, fill_ppu-1, read_ppu-1
    .addr chr_text2stack-1

; F8D7
.proc next_func
    iny
    jmp get_function
.endproc

; F8DB
.proc next_func_by_offset
    .import NMI_Data

    iny
    tya
    sec
    adc NMI_Data,Y
    tay
    jmp get_function
.endproc

; F8E5
.proc next_func_by_absolute
    .import NMI_Data

    iny
    lda NMI_Data,Y
    tay
    jmp get_function
.endproc
