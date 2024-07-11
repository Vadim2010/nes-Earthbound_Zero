.include "macros.inc"
.include "nes.inc"
.include "palette.inc"
.include "mmc3/mmc3.inc"

; .segment "ZEROPAGE"
; .org $FF                           ; in the original game $FF
; CntrlPPU: .res 1

.segment "RESET"
; FF40
; Initialize NES hardware and set up PPU
.proc reset
    .export reset
    .import mmc3_bank_set, set_ppu, set_apu, main
    .importzp CntrlPPU
    ; disable NMI, set sprite size = 8x8
    ; Screen Pattern Table Address 0 = $0000
    ; Sprite Pattern Table Address 1 = $1000
    ; PPU Horizontal Write (INC = 1)
    ; Name Table Address 0 = $2000
    .if .definedmacro(set)
        set PPU_CTRL, #CTRL_SPRITE_1000
    .else
        lda #CTRL_SPRITE_1000
        sta PPU_CTRL
    .endif

    sei                             ; mask interrupts
    cld                             ; disable decimal mode

    lda #0
    sta PPU_MASK                    ; disable rendering
    sta SND_CHN                     ; silence channels and halt its' length counters
    sta DMC_FREQ

    sta IRQ_DISABLE                 ; disable MMC3 interrupts and acknowledge any pending interrupts

    lda #$40
    sta IO_JOY2                     ; disable frame counter interrupts
    sta SRAM_MODE                   ; disable SRAM

    ldx #2
@wait_vblank:
    bit PPU_STATUS
    bpl @wait_vblank
    dex 
    bne @wait_vblank
    bit PPU_STATUS
; write image palette address $3F00 (see PPU memory map)
    ldy #$3F
    ldx #0
    sty PPU_ADDR                    ; write the high byte of $3F00 address
    stx PPU_ADDR                    ; write the low byte of $3F00 address

    ldx #$20                        ; the number of bytes written (Image + Sprite Palette Size)
    lda #(BLACK)                    ; #$F
@next_color:
    sta PPU_DATA
    dex 
    bne @next_color

    sty PPU_ADDR                    ; write the high byte of $3F00 address
    stx PPU_ADDR                    ; write the low byte of $3F00 address

    stx PPU_ADDR                    ; write the high byte of $0000 address
    stx PPU_ADDR                    ; write the low byte of $0000 address

    lda #(MASK_SHOW_LEFT_BG|MASK_SHOW_LEFT_SPRITE|MASK_SHOW_BG|MASK_SHOW_SPRITE)
    sta PPU_MASK
    bit PPU_STATUS
    lda #$10
    tax
@loop:
    sta PPU_ADDR
    sta PPU_ADDR
    eor #0
    dex
    bne @loop

    ldx #$FF
    txs                             ; set SP = $FF
    lda #0
    sta BANK_SELECT
    jsr set_ppu
    jsr set_apu

    ldx #7
    lda #$13
    jsr mmc3_bank_set               ; set memory bank $13 to $A000

    bit PPU_STATUS
    lda CntrlPPU
    ora #$80                        ; enable NMI
    sta CntrlPPU
    sta PPU_CTRL
    cli
    jmp main
.endproc
