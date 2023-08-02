.segment "CODE"

; FD14
.proc set_apu
    ;lda #$1C
    ;sta BankNum
    set BankNum, #$1C
    ; Clear 700-7FF
    LDA #0
    LDX #0

loc_FD1C:
    STA $700,X
    INX
    BNE loc_FD1C

    JSR bank_8000_1D_A000
    JMP $8006                   ; bank 1C
.endproc
