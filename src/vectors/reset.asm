.segment "ZEROPAGE"
;.org $FF                           ; in the original game $FF
CntrlPPU .res 1

.segment "CODE"
; FF40
; Initialize NES hardware and set up PPU
reset:
    ; LDA #%00001000
    ; STA PPU_CTRL
    set PPU_CTRL, PPU_CTRL_SPRITE   ; disable NMI, set sprite size = 8x8
                                    ; Screen Pattern Table Address 0 = $0000
                                    ; Sprite Pattern Table Address 1 = $1000
                                    ; PPU Horizontal Write (INC = 1)
                                    ; Name Table Address 0 = $2000

    SEI                             ; mask interrupts
    CLD                             ; disable decimal mode

    LDA #0
    STA PPU_MASK                    ; disable rendering
    STA pAPU_SV_CSR                 ; silence channels and halt its' length counters
    STA pAPU_DM_CR

    STA IRQ_DISABLE                 ; disable MMC3 interrupts and acknowledge any pending interrupts

    LDA #$40
    STA pAPU_F_CNTR                 ; disable frame counter interrupts
    STA SRAM                        ; disable SRAM

    LDX #2
@wait_vblank:
    BIT PPU_STATUS
    BPL @wait_vblank
    DEX 
    BNE @wait_vblank
    BIT PPU_STATUS
; write image palette address $3F00 (see PPU memory map)
    LDY #$3F
    LDX #0
    STY PPU_ADDR                    ; write the high byte of $3F00 address
    STX PPU_ADDR                    ; write the low byte of $3F00 address

    LDX #$20                        ; the number of bytes written (Image + Sprite Palette Size)
    LDA #(BLACK)                      ; #$F
@next_color:
    STA PPU_DATA
    DEX 
    BNE @next_color

    STY PPU_ADDR                    ; write the high byte of $3F00 address
    STX PPU_ADDR                    ; write the low byte of $3F00 address

    STX PPU_ADDR                    ; write the high byte of $0000 address
    STX PPU_ADDR                    ; write the low byte of $0000 address

    LDA #(PPU_MASK_SHOW_BACKGROUND_L8|PPU_MASK_SHOW_SPRITES_L8|PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES)
    STA PPU_MASK
    BIT PPU_STATUS
    LDA #$10
    TAX
@loop:
    STA PPU_ADDR
    STA PPU_ADDR
    EOR #0
    DEX
    BNE @loop

    LDX #$FF
    TXS                             ; set SP = $FF
    LDA #0
    STA BANK_SELECT
    JSR set_ppu
    JSR set_apu

    LDX #7
    LDA #$13
    JSR mmc3_bank_set               ; set memory bank $13 to $A000

    BIT PPU_STATUS
    LDA CntrlPPU
    ORA #$80                        ; enable NMI
    STA CntrlPPU
    STA PPU_CTRL
    CLI
    JMP main
