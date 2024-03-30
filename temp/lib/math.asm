; F125
; Input: A, X - multipliers
; Output: A - result
.proc multiply:
    STA Pointer
    STX pTileID
    LDA #0
    LDX #8

@loop:
    ROR Pointer
    BCC @even
    CLC
    ADC pTileID

@even:
    ROR A
    DEX
    BNE @loop
    TAX
    LDA Pointer
    ROR A
    RTS
.endproc
