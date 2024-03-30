.include "macros.inc"

.segment "INIT_APU"

; FD14
.proc set_apu
    .export set_apu
    .importzp BankNum
    .import bank_8000_1D_A000

    ;LDA #$1C
    ;STA BankNum
    set BankNum, #$1C
    lda #0
    ldx #0

 @clear:
    sta $700,X                  ; Clear $700-7FF
    inx
    bne  @clear

    jsr bank_8000_1D_A000
    jmp $8006                   ; bank 1C
.endproc
