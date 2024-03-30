.segment "CODE"

; FD14
.proc set_apu
    ;LDA #$1C
    ;STA BankNum
    set BankNum, #$1C
    LDA #0
    LDX #0

 @clear:
    STA $700,X                  ; Clear $700-7FF
    INX
    BNE  @clear

    JSR bank_8000_1D_A000
    JMP $8006                   ; bank 1C
.endproc
