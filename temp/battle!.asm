; F202
start_battle:
    JSR bank17_A000
    JSR bank16
    JSR sub_F479
    LDX #$2C ; ','
    LDY #9
    LDA ($5C),Y
    AND #$F0
    CMP #$50 ; 'P'
    BEQ loc_F21C
    LSR A
    LSR A
    LSR A
    LSR A
    TAX

loc_F21C:
    TXA
    JSR sub_F255
    JSR $8000                   ; bank 14
    JSR $9630                   ; bank 14
    JSR bank16
    JSR clear_oam_sprite
    JSR clear_nametables
    JSR sub_EC65
    JSR $A000                   ; bank 17
    JSR sub_ECA3
    RTS

; F479
.proc sub_F479:
    LDA byte_48
    STA Pointer
    LDA #0
    STA Pointer+1
    LDA #$A
    STA pTileID
    JSR sub_F0F1
    CLC 
    LDA #$98
    ADC Pointer
    STA byte_5C
    LDA #$8F
    ADC Pointer+1
    STA byte_5D
    RTS
.endproc
