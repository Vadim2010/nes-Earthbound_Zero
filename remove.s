; ===========================================================================

; Segment type:
Pure code
    ;.segment BANK13
    * =  $A000

; =============== S U B R O U T I N E =======================================


sub_13A000:
    LDA #5
    STA byte_7F1

loc_13A005:
    LDA CurrentGame.field_21E
    STA Pointer
    LDY #$F0

loc_13A00C:
    LDA #$A5
    LSR Pointer
    BCC loc_13A014
    LDA #$96

loc_13A014:
    STA byte_600,Y
    INY
    CPY #$F8
    BCC loc_13A00C
    LDA #0
    STA byte_600,Y

loc_13A021:
    LDX #0

loc_13A023:
    JSR sub_D9F1
    BCS loc_13A084
    JSR get_sram_pointer ; Input:
    ; Output: Pointer (word) = High $74 Low $40 * A
    TXA
    PHA
    LDY #$3F

loc_13A02F:
    LDA (Pointer),Y
    STA byte_600,Y
    DEY
    BPL loc_13A02F
    LDX #$80
    LDY #$28

loc_13A03B:
    LDA byte_600,Y
    STA byte_29
    JSR sub_13A08F
    INY
    CPY #$2C
    BCC loc_13A03B
    JSR sub_C3E6
    LDA #$F5
    LDX #$A0
    JSR sub_13AC44
    LDA #$C0
    STA byte_29
    JSR sub_13A0B3
    LDA #$19
    LDX #$A1
    STA pCursor
    STX pCursor+1
    JSR cursor_update

loc_13A064:
    BIT Buttons
    BVS loc_13A08B
    LDA CurrentFieldPosition
    BEQ loc_13A082
    JSR sub_13A0B3
    BCS loc_13A074
    JSR sub_13A0B3

loc_13A074:
    LDX #$A
    LDY #3
    STX PosX
    STY PosY
    JSR loc_EF7C
    JMP loc_13A064
; ---------------------------------------------------------------------------

loc_13A082:
    PLA
    TAX

loc_13A084:
    INX
    CPX #4
    BCC loc_13A023
    BCS loc_13A021

loc_13A08B:
    PLA
    JMP sub_C3F4
; End of function sub_13A000


; =============== S U B R O U T I N E =======================================


sub_13A08F:
    TYA
    PHA
    TXA
    PHA
    JSR sub_13BBDF
    LDY #0
    LDA (Pointer),Y
    STA pTileID
    INY
    LDA (Pointer),Y
    STA pTileID+1
    PLA
    TAX
    LDY #0

loc_13A0A5:
    LDA (pTileID),Y
    STA byte_600,X
    INX
    INY
    CPY #$10
    BCC loc_13A0A5
    PLA
    TAY
    RTS
; End of function sub_13A08F


; =============== S U B R O U T I N E =======================================


sub_13A0B3:
    LDX #$40

loc_13A0B5:
    STX pDist
    JSR sub_DCCD
    LDX pDist
    AND byte_600,Y
    BEQ loc_13A0C4
    JSR sub_13A08F

loc_13A0C4:
    INC byte_29
    BNE loc_13A0E1
    LDA #$C0
    STA byte_29
    CPX #$41
    BCS loc_13A0DB
    RTS
; ---------------------------------------------------------------------------

loc_13A0D1:
    LDA #0
    STA byte_600,X
    CLC
    TXA
    ADC #$10
    TAX

loc_13A0DB:
    CPX #$80
    BCC loc_13A0D1
    BCS loc_13A0E5

loc_13A0E1:
    CPX #$80
    BCC loc_13A0B5

loc_13A0E5:
    LDA #$FE
    LDX #$A0
    STA PointerTilePack
    STX PointerTilePack+1

loc_13A0ED:
    JSR loc_C6DB
    CMP #0
    BNE loc_13A0ED
    RTS
; End of function sub_13A0B3

; ---------------------------------------------------------------------------
    .byte $20, $B, 3, $23, $38, 6, 0, 7, 0, $20, $13, 5, $23
    .byte $40, 6, 0, $B, 1, $23, $50, 6, 0, $B, 1, $23, $60
    .byte 6, 0, $B, 1, $23, $70, 6, 0, $B, 0, 2, 1, 9, 0, $C5
    .byte $3A, $A, 3, $D1, $F0

; =============== S U B R O U T I N E =======================================


sub_13A123:
    LDA #$80
    BIT byte_D3+1
    BNE @exit
    LDX byte_D2
    LDY byte_D1
    CPX #6
    BCC @exit
    CPY #$90
    BCC @exit
    ORA byte_D3+1
    STA byte_D3+1
    LDA #$2F
    JSR sub_CDE4
    LDX #$7C
    JSR loc_13A445
    LDX #$7E
    JSR loc_13A445
    LDX #$80
    JSR loc_13A445
    LDA #$37
    STA byte_2C
    JSR loc_13ADC1
    BIT Buttons
    BVS loc_13A168
    LDA CurrentFieldPosition
    BEQ loc_13A168
    JSR make_save
    LDX #$86
    JSR loc_13A445
    JMP sub_13AC4B
; ---------------------------------------------------------------------------

@exit:

    RTS
; ---------------------------------------------------------------------------

loc_13A168:
    LDX #$82
    JSR loc_13A445
    LDX #$84
    JSR loc_13A445
    JSR loc_13AB30
    JMP sub_C3F4
; End of function sub_13A123


; =============== S U B R O U T I N E =======================================


sub_13A178:
    LDA #5
    STA byte_7F1
    JSR sub_C26C
    LDA #$B0
    LDX #$A1    ; A1B0
    STA pCursor
    STX pCursor+1
    JSR cursor_update
    BIT Buttons
    BMI loc_13A192
    JMP sub_C3F4
; ---------------------------------------------------------------------------

loc_13A192:
    LDA #$FF
    JSR get_cursor_pos  ; get position of cursor and set cursor tile
    ; Input: A - tile ID
    ; Output: PosX, PosY
    LDA CurrentFieldPosition
    ASL A
    TAX
    LDA off_13A1A4+1,X
    PHA
    LDA off_13A1A4,X
    PHA
    RTS
; End of function sub_13A178

; ---------------------------------------------------------------------------
off_13A1A4:
.word sub_13A1EA-1, sub_13A20F-1, sub_13A262-1, loc_13A005-1
    .word sub_13A238-1, sub_13A1BA-1
    CURSOR <2, 3, 6, 2, $C0, $3A, 2, 3, $F0D1>

; =============== S U B R O U T I N E =======================================


sub_13A1BA:
    LDA #$19
    LDX #$6D ; 'm'
    LDY #$A3    ; BANK19:A36E
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte
    JMP sub_C3F4
; End of function sub_13A1BA


; =============== S U B R O U T I N E =======================================


sub_13A1C6:
    JSR sub_E266
    BCS loc_13A1E4
    JSR sub_13A9C7
    BEQ @exit
    ASL A
    ASL A
    BCC @exit
    AND #$3C
    BEQ @exit
    LDA #$35
    STA byte_34
    JSR sub_13AB0F
    BCS @exit

loc_13A1E1:
    JMP sub_C3F4
; ---------------------------------------------------------------------------

loc_13A1E4:
    JSR sub_13AB48
    BCC loc_13A1E1

@exit:

    RTS
; End of function sub_13A1C6


; =============== S U B R O U T I N E =======================================


sub_13A1EA:
    JSR sub_E20F
    ASL A
    BPL loc_13A200
    AND #$1E
    BEQ loc_13A204
    JSR sub_E2A2
    LDA #$A
    STA byte_34
    JSR sub_13AB0F
    BCC loc_13A20C

loc_13A200:
    LDX #2
    BNE loc_13A206

loc_13A204:
    LDX #4

loc_13A206:
    JSR loc_13A445
    JSR loc_13AB30

loc_13A20C:
    JMP sub_C3F4
; End of function sub_13A1EA


; =============== S U B R O U T I N E =======================================


sub_13A20F:
    JSR sub_E20F
    JSR sub_13A9C7
    BNE loc_13A21D
    JSR sub_13A9D6
    JMP sub_C3F4
; ---------------------------------------------------------------------------

loc_13A21D:
    ASL A
    BPL loc_13A22D
    AND #$1E
    BEQ loc_13A22D
    LDA #$B
    STA byte_34
    JSR sub_13AB0F
    BCC loc_13A235

loc_13A22D:
    LDX #6
    JSR loc_13A445
    JSR loc_13AB30

loc_13A235:
    JMP sub_C3F4
; End of function sub_13A20F


; =============== S U B R O U T I N E =======================================


sub_13A238:
    JSR sub_13B8E6
    BCC loc_13A240
    JMP sub_C3F4
; ---------------------------------------------------------------------------

loc_13A240:
    JSR sub_13A92D
    LDY #7
    LDA (Pointer),Y
    STA BankPPU_XC00
    SEC
    LDY #$16
    LDA (BankPPU_X000),Y
    SBC BankPPU_XC00
    INY
    LDA (BankPPU_X000),Y
    SBC #0
    BCC loc_13A25D
    JSR sub_13A3BC
    JMP loc_13A90C
; ---------------------------------------------------------------------------

loc_13A25D:
    LDX #$10
    JMP sub_13A909
; End of function sub_13A238


; =============== S U B R O U T I N E =======================================


sub_13A262:
    JSR sub_13B7B6
    BCC loc_13A26A
    JMP sub_C3F4
; ---------------------------------------------------------------------------

loc_13A26A:
    JSR sub_C3C7
    JSR sub_13A964
    JSR sub_13A972
    BEQ loc_13A281
    LDA byte_29
    CMP #3
    BEQ loc_13A281
    LDA #$A2
    LDX #$A2
    BNE loc_13A285

loc_13A281:
    LDA #$D1
    LDX #$F0

loc_13A285:
    STA pStr
    STX pStr+1
    LDA #$9A
    LDX #$A2    ; A29A
    STA pCursor
    STX pCursor+1
    JSR short_cursor_update
    BIT Buttons
    BMI loc_13A2A7
    BPL sub_13A262
; ---------------------------------------------------------------------------
    CURSOR <1, 5, 0, 2, $C0, $3A, $18, 7, 0>
    .byte 3, 4, 0
; ---------------------------------------------------------------------------

loc_13A2A7:
    LDA #$FF
    JSR get_cursor_pos  ; get position of cursor and set cursor tile
    ; Input: A - tile ID
    ; Output: PosX, PosY
    JSR sub_13A92D
    LDA CurrentFieldPosition
    ASL A
    TAX
    LDA off_13A2BC+1,X
    PHA
    LDA off_13A2BC,X
    PHA
    RTS
; End of function sub_13A262

; ---------------------------------------------------------------------------
off_13A2BC:
.word sub_13A2C6-1, sub_13A37D-1, sub_13A315-1, sub_13A390-1
    .word sub_13A3A9-1

; =============== S U B R O U T I N E =======================================


sub_13A2C6:
    LDY #3
    LDA (Pointer),Y
    BNE loc_13A2F1
    LDY #2
    LDA (Pointer),Y
    AND #$3F ; '?'
    BEQ loc_13A2E1
    LDX byte_28
    AND byte_13AA74,X
    BEQ loc_13A2EC
    JSR sub_13A3BC
    JMP loc_13A90C
; ---------------------------------------------------------------------------

loc_13A2E1:
    LDX #$16
    JSR loc_13A445
    JSR sub_13A443
    JMP loc_13A90C
; ---------------------------------------------------------------------------

loc_13A2EC:
    LDX #$18
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A2F1:
    STA AddrForJmp
    LDY #2
    LDA (Pointer),Y
    LDX byte_28
    AND byte_13AA74,X
    BEQ loc_13A310
    JSR sub_13BC3A
    BCS loc_13A310
    LDX #$1C
    JSR loc_13A445
    LDA #4
    STA byte_7F3
    JMP loc_13A90C
; ---------------------------------------------------------------------------

loc_13A310:
    LDX #$1E
    JMP sub_13A909
; End of function sub_13A2C6


; =============== S U B R O U T I N E =======================================


sub_13A315:
    LDX byte_6707
    DEX
    BEQ loc_13A375
    LDA byte_29
    CMP #3
    BEQ loc_13A365
    JSR sub_13AA4E
    BCS loc_13A37A
    JSR sub_13A979
    BCS loc_13A36A
    JSR sub_13A9A3
    CMP BankPPU_X800
    BEQ loc_13A356
    JSR sub_13A972
    BNE loc_13A349
    JSR sub_13A964
    JSR sub_13A972
    BNE loc_13A344
    LDX #$24
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A344:
    LDX #$4C
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A349:
    JSR sub_13A964
    JSR sub_13A972
    BNE loc_13A360
    LDX #$4E
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A356:
    JSR sub_13A972
    BNE loc_13A360
    LDX #$50
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A360:
    LDX #$52
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A365:
    LDX #$26
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A36A:
    LDA byte_28
    CMP BankPPU_X800
    BEQ loc_13A356
    LDX #$28
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A375:
    LDX #$C
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A37A:
    JMP loc_13A26A
; End of function sub_13A315


; =============== S U B R O U T I N E =======================================


sub_13A37D:
    LDY #2
    LDA (Pointer),Y
    AND #$40
    BEQ loc_13A38B
    JSR sub_13A3BC
    JMP loc_13A90C
; ---------------------------------------------------------------------------

loc_13A38B:
    LDX #$1A
    JMP sub_13A909
; End of function sub_13A37D


; =============== S U B R O U T I N E =======================================


sub_13A390:
    JSR sub_13A98B
    BCS loc_13A3A4
    JSR sub_13A972
    BNE loc_13A39F
    LDX #$20
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A39F:
    LDX #$54
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A3A4:
    LDX #$22
    JMP sub_13A909
; End of function sub_13A390


; =============== S U B R O U T I N E =======================================


sub_13A3A9:
    CLC
    LDA byte_29
    ADC #$E8
    STA PointerTilePack
    LDA #0
    ADC #3
    STA byte_73
    JSR loc_13AD1A
    JMP loc_13A90C
; End of function sub_13A3A9


; =============== S U B R O U T I N E =======================================


sub_13A3BC:
    LDY #4
    LDA (Pointer),Y
    ASL A
    TAX
    LDA off_13A3CB+1,X
    PHA
    LDA off_13A3CB,X
    PHA
    RTS
; End of function sub_13A3BC

; ---------------------------------------------------------------------------
off_13A3CB:
.word sub_13A443-1, sub_13A451-1, sub_13A443-1, sub_13A443-1
    .word sub_13A443-1, sub_13A49A-1, sub_13A4CF-1, sub_13A451-1
    .word sub_13A465-1, sub_13A443-1, sub_13A4EB-1, sub_13A4F0-1
    .word sub_13A4F5-1, sub_13A4FA-1, sub_13A4FF-1, sub_13A504-1
    .word sub_13A50C-1, sub_13A74D-1, sub_13A756-1, sub_13A75F-1
    .word sub_13A79A-1, sub_13A7A7-1, sub_13A7B4-1, sub_13A7BB-1
    .word sub_13A7C2-1, sub_13A7C9-1, sub_13A7D0-1, sub_13A811-1
    .word sub_13A443-1, sub_13A443-1, sub_13A7D7-1, sub_13A478-1
    .word sub_13A807-1, sub_13A80C-1, sub_13A825-1, sub_13A816-1
    .word sub_13A43E-1, sub_13A427-1, sub_13A612-1, sub_13A4DB-1
    .word sub_13A4E0-1, sub_13A4E5-1, sub_13A73F-1, sub_13A43E-1
    .word sub_13A738-1, sub_13A746-1

; =============== S U B R O U T I N E =======================================


sub_13A427:
    JSR sub_13A9B1
    JSR sub_E20F
    ASL A
    BPL sub_13A43E
    AND #$1E
    BEQ sub_13A43E
    LDA #$C
    STA byte_34
    JSR sub_13AB0F
    BCS sub_13A43E
    RTS
; End of function sub_13A427


; =============== S U B R O U T I N E =======================================


sub_13A43E:
    LDX #$E
    JSR loc_13A445
; End of function sub_13A43E


; =============== S U B R O U T I N E =======================================


sub_13A443:
    LDX #$2A ; '*'

loc_13A445:
    JSR sub_13AA7C
    JMP loc_13AD1A
; End of function sub_13A443


; =============== S U B R O U T I N E =======================================


sub_13A44B:
    JSR sub_13AA7C
    JMP loc_13AD29
; End of function sub_13A44B


; =============== S U B R O U T I N E =======================================


sub_13A451:
    JSR sub_E20F
    ASL A
    BPL sub_13A443
    AND #$1E
    BEQ sub_13A443
    LDA #$D
    STA byte_34
    JSR sub_13AB0F
    BCS sub_13A443
    RTS
; End of function sub_13A451


; =============== S U B R O U T I N E =======================================


sub_13A465:
     JSR sub_13A990
    JSR sram_write_enable
    LDA #$A
    STA CurrentGame.PureSave.field_19
    JSR sram_read_enable
    LDX #$16
    JMP loc_13A445
; End of function sub_13A465


; =============== S U B R O U T I N E =======================================


sub_13A478:
     JSR sub_13A990
    JSR sram_write_enable
    LDY #$2C

loc_13A480:
    LDA (BankPPU_X000),Y
    STA byte_73D8,Y
    INY
    CPY #$30
    BCC loc_13A480
    JSR sram_read_enable
    LDA #$40
    STA byte_20
    LDA #1
    STA FuncID  ; ID from table BANK13:BCFD (RoutineTable)
    LDX #$48
    JMP loc_13A445
; End of function sub_13A478


; =============== S U B R O U T I N E =======================================


sub_13A49A:
    LDA CurrentFieldPosition
    BNE loc_13A4CA
    LDA #3
    JSR sub_13B058
    BCC loc_13A4C5
    LDA byte_29
    JSR sub_13B058
    JSR sram_write_enable
    LDA #3
    STA (Pointer),Y
    LDY #$2C

loc_13A4B3:
    LDA byte_73D8,Y
    STA (BankPPU_X000),Y
    INY
    CPY #$30
    BCC loc_13A4B3
    JSR sram_read_enable
    LDX #$44
    JMP loc_13A445
; ---------------------------------------------------------------------------

loc_13A4C5:
    LDX #$46
    JMP loc_13A445
; ---------------------------------------------------------------------------

loc_13A4CA:
    LDA #$14
    JMP loc_13A542
; End of function sub_13A49A


; =============== S U B R O U T I N E =======================================


sub_13A4CF:
    LDA CurrentFieldPosition
    BNE loc_13A4D6
    JMP sub_13A451
; ---------------------------------------------------------------------------

loc_13A4D6:
    LDA #$F
    JMP loc_13A542
; End of function sub_13A4CF


; =============== S U B R O U T I N E =======================================


sub_13A4DB:
    LDA #$1E
    JMP sub_13A63B
; End of function sub_13A4DB


; =============== S U B R O U T I N E =======================================


sub_13A4E0:
    LDA #$50
    JMP sub_13A63B
; End of function sub_13A4E0


; =============== S U B R O U T I N E =======================================


sub_13A4E5:
    JSR sub_13A924
    JMP loc_13A63E
; End of function sub_13A4E5


; =============== S U B R O U T I N E =======================================


sub_13A4EB:
    LDA #$A
    JMP sub_13A53E
; End of function sub_13A4EB


; =============== S U B R O U T I N E =======================================


sub_13A4F0:
    LDA #$14
    JMP loc_13A542
; End of function sub_13A4F0


; =============== S U B R O U T I N E =======================================


sub_13A4F5:
    LDA #$1E
    JMP loc_13A542
; End of function sub_13A4F5


; =============== S U B R O U T I N E =======================================


sub_13A4FA:
    LDA #$3C
    JMP loc_13A542
; End of function sub_13A4FA


; =============== S U B R O U T I N E =======================================


sub_13A4FF:
    LDA #$64
    JMP sub_13A53E
; End of function sub_13A4FF


; =============== S U B R O U T I N E =======================================


sub_13A504:
    JSR sub_13A924
    LDX #$16
    JMP loc_13A54B
; End of function sub_13A504


; =============== S U B R O U T I N E =======================================


sub_13A50C:
    LDA #$1E
    JSR sub_13A912
    JSR sub_13AA4E
    BCS loc_13A56A
    JSR sub_13A964
    JSR sub_13A972
    BMI loc_13A56F
    JSR sub_13A92D
    LDX #$42
    JSR loc_13A445
    JSR sram_write_enable
    DEC CurrentGame.PureSave.field_1F
    PHP
    JSR sram_read_enable
    PLP
    BNE loc_13A53B
    JSR sub_13A9A3
    LDX #$56
    JSR loc_13A445

loc_13A53B:
    JMP loc_13A564
; End of function sub_13A50C


; =============== S U B R O U T I N E =======================================


sub_13A53E:
    LDX #$2E
    BNE loc_13A544

loc_13A542:
    LDX #$2C

loc_13A544:
    STX PointerTilePack
    JSR sub_13A912
    LDX PointerTilePack

loc_13A54B:
    JSR sub_13AA7C
    JSR sub_13AA4E
    BCS loc_13A56A
    JSR sub_13A964
    JSR sub_13A972
    BMI loc_13A56F
    JSR sub_13A92D
    JSR loc_13AD1A
    JSR sub_13A9A3

loc_13A564:
    JSR sub_13A681
    JMP sub_13BC04
; ---------------------------------------------------------------------------

loc_13A56A:
    PLA
    PLA
    JMP loc_13A26A
; ---------------------------------------------------------------------------

loc_13A56F:
    JSR sub_13A9A3
    LDX #$58
    JSR loc_13A445

loc_13A577:
    JMP sub_13A443
; End of function sub_13A53E


; =============== S U B R O U T I N E =======================================


sub_13A57A:
    STA word_2A
    STY word_2A+1
    JSR sub_13AA7C
    JSR sub_13AA4E
    BCS loc_13A56A
    LDA word_2A
    BMI loc_13A592
    JSR sub_13A964
    JSR sub_13A972
    BMI loc_13A56F

loc_13A592:
    JSR sub_13A92D
    JSR loc_13AD1A
    JSR sub_13A9A3

loc_13A59B:
    LDY #1
    LDA (BankPPU_X000),Y
    AND word_2A
    BEQ loc_13A577
    JSR sram_write_enable
    LDA word_2A
    PHP
    EOR #$FF
    AND (BankPPU_X000),Y
    STA (BankPPU_X000),Y
    PLP
    BPL loc_13A5B5
    JSR sub_13A6E0

loc_13A5B5:
    JSR sram_read_enable
    LDA #7
    STA byte_7F1
    LDX word_2A+1
    JSR loc_13A445
    JMP sub_13BC04
; End of function sub_13A57A


; =============== S U B R O U T I N E =======================================


sub_13A5C5:
    STY word_2A
    JSR sub_13AA7C
    JSR sub_13AA4E
    BCS loc_13A56A
    JSR sub_13A964
    JSR sub_13A972
    BMI loc_13A56F
    JSR sub_13A92D
    JSR loc_13AD1A
    JSR sub_13A9A3
    LDY word_2A

loc_13A5E2:
    LDA #5
    JSR sub_13A912
    CLC
    LDA (BankPPU_X000),Y
    ADC word_2A
    STA pTileID
    BCC loc_13A5F7
    CLC
    LDA word_2A
    SBC pTileID
    STA word_2A

loc_13A5F7:
    JSR sram_write_enable
    CLC
    LDA (BankPPU_X000),Y
    ADC word_2A
    STA (BankPPU_X000),Y
    JSR sram_read_enable
    CLC
    TYA
    ADC #$11
    ASL A
    TAX
    JSR loc_13A445
    LDX #$32
    JMP sub_13A44B
; End of function sub_13A5C5


; =============== S U B R O U T I N E =======================================


sub_13A612:
    JSR sub_13A62C
    JSR sub_13B98F
    BCS loc_13A659
    JSR sub_13A9B1
    LDX #$E
    JSR loc_13A445
    PLA
    PLA
    PLA
    PLA
    JSR loc_13AB30
    JMP loc_CCD8
; End of function sub_13A612


; =============== S U B R O U T I N E =======================================


sub_13A62C:
    LDA CurrentGame.field_21F
    AND #2
    BEQ @exit
    PLA
    PLA
    LDX #$12
    JMP loc_13A445
; ---------------------------------------------------------------------------

@exit:

    RTS
; End of function sub_13A62C


; =============== S U B R O U T I N E =======================================


sub_13A63B:
    JSR sub_13A912

loc_13A63E:
    JSR sub_13AA4E
    BCS loc_13A659
    JSR sub_13A9B1
    LDX #$E
    JSR loc_13A445
    JSR sub_13A92D
    JSR sub_13A972
    BMI loc_13A65E
    JSR sub_13A681
    JMP sub_13BC04
; ---------------------------------------------------------------------------

loc_13A659:
    PLA
    PLA
    JMP sub_13A238
; ---------------------------------------------------------------------------

loc_13A65E:
    JMP sub_13A443
; End of function sub_13A63B


; =============== S U B R O U T I N E =======================================


sub_13A661:
    STA word_2A
    STY word_2A+1
    JSR sub_13AA4E
    BCS loc_13A659
    JSR sub_13A9B1
    LDX #$E
    JSR loc_13A445
    JSR sub_13A92D
    LDA word_2A
    BMI loc_13A67E
    JSR sub_13A972
    BMI loc_13A65E

loc_13A67E:
    JMP loc_13A59B
; End of function sub_13A661


; =============== S U B R O U T I N E =======================================


sub_13A681:
    LDY #$14
    JSR sub_13A6A5
    LDY #3
    JSR sub_13A6B4
    JSR sram_write_enable
    LDY #$14
    JSR sub_13A6D1
    JSR sram_read_enable
    LDA #7
    STA byte_7F1
    LDX #$34
    JSR loc_13A445
    LDX #$30
    JMP sub_13A44B
; End of function sub_13A681


; =============== S U B R O U T I N E =======================================


sub_13A6A5:
    CLC
    LDA (BankPPU_X000),Y
    ADC word_2A
    STA pTileID
    INY
    LDA (BankPPU_X000),Y
    ADC word_2A+1
    STA pTileID+1
    RTS
; End of function sub_13A6A5


; =============== S U B R O U T I N E =======================================


sub_13A6B4:
    SEC
    LDA (BankPPU_X000),Y
    SBC pTileID
    STA pDist
    INY
    LDA (BankPPU_X000),Y
    SBC pTileID+1
    STA pDist+1
    BCS @exit
    LDA word_2A
    ADC pDist
    STA word_2A
    LDA word_2A+1
    ADC pDist+1
    STA word_2A+1

@exit:

    RTS
; End of function sub_13A6B4


; =============== S U B R O U T I N E =======================================


sub_13A6D1:
    CLC
    LDA (BankPPU_X000),Y
    ADC word_2A
    STA (BankPPU_X000),Y
    INY
    LDA (BankPPU_X000),Y
    ADC word_2A+1
    STA (BankPPU_X000),Y
    RTS
; End of function sub_13A6D1


; =============== S U B R O U T I N E =======================================


sub_13A6E0:
    LDY #3
    LDA ($40),Y
    LDY #$14
    STA ($40),Y
    LDY #4
    LDA ($40),Y
    LDY #$15
    STA ($40),Y

loc_13A6F0:
    LDA Dist
    PHA
    LDA Dist+1
    PHA
    JSR sub_D8D3
    JSR sub_13A728
    BCS loc_13A71E
    TXA
    JSR sub_D86C
    LDA BankTable.CPU_8K_8000
    PHA
    LDY #$15
    LDA (Dist),Y
    ASL A
    ASL A
    ASL A
    TAX
    JSR loc_E2BF
    PLA
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA #$1D
    JSR sub_CDE4
    JSR sub_D977

loc_13A71E:
    JSR sram_write_enable
    PLA
    STA Dist+1
    PLA
    STA Dist
    RTS
; End of function sub_13A6E0


; =============== S U B R O U T I N E =======================================


sub_13A728:
    LDA byte_28
    LDX #0

loc_13A72C:
    CMP CurrentGame.PureSave.CharactersNum,X
    CLC
    BEQ @exit
    INX
    CPX #4
    BCC loc_13A72C

@exit:

    RTS
; End of function sub_13A728


; =============== S U B R O U T I N E =======================================


sub_13A738:
    LDA #2
    LDY #$5A
    JMP sub_13A661
; End of function sub_13A738


; =============== S U B R O U T I N E =======================================


sub_13A73F:
    LDA #$40
    LDY #$6C
    JMP sub_13A661
; End of function sub_13A73F


; =============== S U B R O U T I N E =======================================


sub_13A746:
    LDA #$80
    LDY #$14
    JMP sub_13A661
; End of function sub_13A746


; =============== S U B R O U T I N E =======================================


sub_13A74D:
    LDA #2
    LDX #$2E
    LDY #$5A
    JMP sub_13A57A
; End of function sub_13A74D


; =============== S U B R O U T I N E =======================================


sub_13A756:
    LDA #1
    LDX #$16
    LDY #$5C
    JMP sub_13A57A
; End of function sub_13A756


; =============== S U B R O U T I N E =======================================


sub_13A75F:
    LDA #$14
    JSR sub_13A912
    LDX #$5E
    JSR loc_13A445
    LDY #$16
    JSR sub_13A6A5
    LDY #5
    JSR sub_13A6B4
    JSR sram_write_enable
    LDY #$16
    JSR sub_13A6D1
    JSR sram_read_enable
    LDX #$36
    JSR loc_13A445
    LDX #$30
    JSR sub_13A44B
    JSR sub_F1ED
    CMP #$19
    BCS loc_13A797
    JSR sub_13A990
    LDX #$60
    JSR loc_13A445

loc_13A797:
    JMP sub_13BC04
; End of function sub_13A75F


; =============== S U B R O U T I N E =======================================


sub_13A79A:
    LDX #$4A
    JSR loc_13A445
    JSR sub_13A990
    LDY #$F
    JMP loc_13A5E2
; End of function sub_13A79A


; =============== S U B R O U T I N E =======================================


sub_13A7A7:
    LDX #$2C
    JSR loc_13A445
    JSR sub_13A990
    LDY #$B
    JMP loc_13A5E2
; End of function sub_13A7A7


; =============== S U B R O U T I N E =======================================


sub_13A7B4:
    LDX #$2E
    LDY #$C
    JMP sub_13A5C5
; End of function sub_13A7B4


; =============== S U B R O U T I N E =======================================


sub_13A7BB:
    LDX #$2E
    LDY #$D
    JMP sub_13A5C5
; End of function sub_13A7BB


; =============== S U B R O U T I N E =======================================


sub_13A7C2:
    LDX #$2E
    LDY #$E
    JMP sub_13A5C5
; End of function sub_13A7C2


; =============== S U B R O U T I N E =======================================


sub_13A7C9:
    LDX #$2E
    LDY #$F
    JMP sub_13A5C5
; End of function sub_13A7C9


; =============== S U B R O U T I N E =======================================


sub_13A7D0:
    LDX #$2E
    LDY #$B
    JMP sub_13A5C5
; End of function sub_13A7D0


; =============== S U B R O U T I N E =======================================


sub_13A7D7:
    JSR sub_13A62C
    LDA CurrentGame.field_21C
    BPL loc_13A7E2
    JMP sub_13A443
; ---------------------------------------------------------------------------

loc_13A7E2:
    JSR sram_write_enable
    LDX #3

loc_13A7E7:
    LDA byte_13A803,X
    STA CurrentGame.PureSave.field_4,X
    DEX
    BPL loc_13A7E7
    JSR sub_D9FA
    JSR loc_D8CE
    LDA #2
    STA FuncID  ; ID from table BANK13:BCFD (RoutineTable)
    LDA #$40
    STA byte_20
    LDX #$16
    JMP loc_13A445
; End of function sub_13A7D7

; ---------------------------------------------------------------------------
byte_13A803:
   .byte $49, $9E, $44, $A8

; =============== S U B R O U T I N E =======================================


sub_13A807:
    LDX #$62
    JMP loc_13A445
; End of function sub_13A807


; =============== S U B R O U T I N E =======================================


sub_13A80C:
    LDX #$64
    JMP loc_13A445
; End of function sub_13A80C


; =============== S U B R O U T I N E =======================================


sub_13A811:
    LDX #$74
    JMP loc_13A445
; End of function sub_13A811


; =============== S U B R O U T I N E =======================================


sub_13A816:
    LDX #$70
    JSR loc_13A445
    LDA #1
    JSR sub_CDE4
    LDX #$72
    JMP loc_13A445
; End of function sub_13A816


; =============== S U B R O U T I N E =======================================


sub_13A825:
    PLA
    PLA
    LDX #$78
    JSR loc_13A445
    JMP loc_13A834
; End of function sub_13A825


; =============== S U B R O U T I N E =======================================


sub_13A82F:
    LDA #5
    STA byte_7F1

loc_13A834:
    LDA byte_14
    CMP #1
    BEQ loc_13A843
    CMP #2
    BEQ loc_13A843
    LDX #$7A
    JMP sub_13A909
; ---------------------------------------------------------------------------

loc_13A843:
    JSR loc_13AB30
    JSR darken_palette
    JSR clear_oam_sprite
    LDX #0
    LDY #8
    JSR set_camera
    LDA #6
    ORA MaskPPU
    STA MaskPPU
    LDA #$5B
    LDX #2
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    JSR sub_CE6D
    LDA #$E3
    LDX #$A8    ; A8E3
    JSR set_ppu_banks   ; set 6 memory banks for PPU
    ; pPPUTable = XA address (X - high and A - low byte)
    ;
    ; |PPU address | PPUTable offset | Size |
    ; |-------------------------------------|
    ; |   $1000    |    0    |  2K  |
    ; |-------------------------------------|
    ; |   $1800    |    1    |  2K  |
    ; |-------------------------------------|
    ; |   $0000    |    2    |  1K  |
    ; |-------------------------------------|
    ; |   $0400    |    3    |  1K  |
    ; |-------------------------------------|
    ; |   $0800    |    4    |  1K  |
    ; |-------------------------------------|
    ; |   $0C00    |    5    |  1K  |
    ; ---------------------------------------
    LDA #$DF
    STA OAM.TileID
    LDA #0
    STA OAM.Attr
    LDX #$40
    LDA byte_6785
    JSR sub_13A8D4
    SBC #8
    STA OAM.PosX
    LDX #$80
    LDA byte_6787
    JSR sub_13A8D4
    SBC #$21 ; '!'
    STA OAM.PosY
    LDA #$E9
    LDX #$A8    ; A8E9
    JSR copy_palettes
    LDA #0
    STA Gamepad0Buttons

loc_13A899:
    LDX #8
    JSR wait_frames ; wait for a few frames
    ; input: X - number of frames
    LDA #$DF
    EOR OAM.TileID
    STA OAM.TileID
    BIT Gamepad0Buttons
    BVC loc_13A899
    LDA #0
    STA Gamepad0Buttons
    LDA #$F0
    STA OAM.PosY
    JSR wait_nmi_processed
    JSR darken_color
    JSR restore_palettes
    LDA #$F9
    AND MaskPPU
    STA MaskPPU
    LDA #$7E
    LDX #4
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA #0
    STA byte_7F7
    JSR clear_oam_sprite
    JMP load_location
; End of function sub_13A82F


; =============== S U B R O U T I N E =======================================


sub_13A8D4:
    SEC
    BPL @exit
    TAY
    TXA
    ORA OAM.Attr
    STA OAM.Attr
    TYA
    SBC #7

@exit:
    RTS
; End of function sub_13A8D4

; ---------------------------------------------------------------------------
    .byte 0, $78, $58, $59, $5A, 0
    .byte BLACK, LIGHTEST_RED, WHITE, LIGHT_GREEN; PALETTE0
    .byte BLACK, LIGHTEST_RED, WHITE, LIGHT_GREEN; PALETTE1
    .byte BLACK, LIGHTEST_RED, WHITE, MEDIUM_RED; PALETTE2
    .byte BLACK, LIGHTEST_RED, WHITE, MEDIUM_RED; PALETTE3
    .byte BLACK, LIGHT_BLUE, DARK_INDIGO, DARK_GREEN; PALETTE0
    .byte BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE; PALETTE1
    .byte BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE; PALETTE2
    .byte BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE; PALETTE3

; =============== S U B R O U T I N E =======================================


sub_13A909:
    JSR loc_13A445

loc_13A90C:
    JSR loc_13AB30
    JMP sub_C3F4
; End of function sub_13A909


; =============== S U B R O U T I N E =======================================


sub_13A912:
    STA Pointer
    LDA #0
    STA Pointer+1
    JSR sub_F2ED
    LDA Pointer
    STA word_2A
    LDA Pointer+1
    STA word_2A+1
    RTS
; End of function sub_13A912


; =============== S U B R O U T I N E =======================================


sub_13A924:
    LDA #$E8
    LDX #3
    STA word_2A
    STX word_2A+1
    RTS
; End of function sub_13A924


; =============== S U B R O U T I N E =======================================


sub_13A92D:
    JSR sram_write_enable
    JSR sub_13A964
    LDA #4
    STA byte_6D20
    CLC
    LDA BankPPU_X000
    ADC #$38 ; '8'
    STA byte_6D21
    LDA BankPPU_X400
    ADC #0
    STA byte_6D22
    JSR sub_13BBDF
    LDY #0
    LDA (Pointer),Y
    STA pTileID
    INY
    LDA (Pointer),Y
    STA pTileID+1
    LDY #0

loc_13A957:
    LDA (pTileID),Y
    STA unk_6D24,Y
    INY
    CMP #0
    BNE loc_13A957
    JMP sram_read_enable
; End of function sub_13A92D


; =============== S U B R O U T I N E =======================================


sub_13A964:
    LDA byte_28
    JSR get_sram_pointer ; Input: A -
    ; Output: Pointer (word) = High $74 Low $40 * A
    LDA Pointer
    STA BankPPU_X000
    LDA Pointer+1
    STA BankPPU_X400
    RTS
; End of function sub_13A964


; =============== S U B R O U T I N E =======================================


sub_13A972:
    LDY #1
    LDA (BankPPU_X000),Y
    AND #$F0
    RTS
; End of function sub_13A972


; =============== S U B R O U T I N E =======================================


sub_13A979:
    LDA #0
    JSR sub_13B058
    BCS loc_13A9A1
    JSR sram_write_enable
    LDA byte_29
    STA (Pointer),Y
    CLC
    JMP sram_read_enable
; End of function sub_13A979


; =============== S U B R O U T I N E =======================================


sub_13A98B:
    JSR sub_13B0A3
    BNE loc_13A9A1
; End of function sub_13A98B


; =============== S U B R O U T I N E =======================================


sub_13A990:
    LDA byte_29
    JSR sub_13B058
    BCS loc_13A9A1
    JSR sram_write_enable
    JSR loc_13B07E
    CLC
    JMP sram_read_enable
; ---------------------------------------------------------------------------

loc_13A9A1:
    SEC
    RTS
; End of function sub_13A990


; =============== S U B R O U T I N E =======================================


sub_13A9A3:
    LDA byte_28
    PHA
    LDA BankPPU_X800
    STA byte_28
    JSR sub_13A990
    PLA
    STA byte_28
    RTS
; End of function sub_13A9A3


; =============== S U B R O U T I N E =======================================


sub_13A9B1:
    JSR sram_write_enable
    SEC
    LDY #$16
    LDA (BankPPU_X000),Y
    SBC BankPPU_XC00
    STA (BankPPU_X000),Y
    INY
    LDA (BankPPU_X000),Y
    SBC #0
    STA (BankPPU_X000),Y
    JMP sram_read_enable
; End of function sub_13A9B1


; =============== S U B R O U T I N E =======================================


sub_13A9C7:
    TAY
    BEQ loc_13A9D3
    TAX
    LDY #0
    LDA (Dist),Y
    AND #$3F
    TAY
    TXA

loc_13A9D3:
    CPY #$20
    RTS
; End of function sub_13A9C7


; =============== S U B R O U T I N E =======================================


sub_13A9D6:
    JSR sub_13AB3E
    JSR sub_E772
    AND byte_EC5D,X
    BNE loc_13A9FD
    LDA #4
    JSR loc_E2C2
    LDX #$66
    JSR loc_13A445
    LDA #$A
    STA byte_7F1
    LDY #6
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    AND #$7F
    STA byte_29
    BNE loc_13AA05
    JSR sub_13AA3F

loc_13A9FD:
    LDX #$76
    JSR loc_13A445
    JMP loc_13AB30
; ---------------------------------------------------------------------------

loc_13AA05:
    JSR sub_13BB8C
    LDX #$68
    JSR loc_13A445
    LDX #0

loc_13AA0F:
    JSR sub_D9F1
    BCS loc_13AA1F
    STA byte_28
    TXA
    PHA
    JSR sub_13A979
    PLA
    TAX
    BCC loc_13AA2C

loc_13AA1F:
    INX
    CPX #4
    BCC loc_13AA0F
    LDX #$6E
    JSR loc_13A445
    JMP loc_13AB30
; ---------------------------------------------------------------------------

loc_13AA2C:
    JSR sub_13AA3F
    JSR sub_13BB6F
    LDX #$6A
    JSR loc_13A445
    LDA #6
    STA byte_7F1
    JMP loc_13AB30
; End of function sub_13A9D6


; =============== S U B R O U T I N E =======================================


sub_13AA3F:
    JSR sram_write_enable
    JSR sub_E772
    ORA byte_EC5D,X
    STA CurrentGame.field_220,Y
    JMP sram_read_enable
; End of function sub_13AA3F


; =============== S U B R O U T I N E =======================================


sub_13AA4E:
    LDA byte_28
    STA BankPPU_X800
    LDA byte_6707
    CMP #2
    BCC loc_13AA6A
    LDA PointerTilePack
    PHA
    LDA byte_73
    PHA
    JSR sub_13B763
    PLA
    STA byte_73
    PLA
    STA PointerTilePack
    BCS loc_13AA6F

loc_13AA6A:
    JSR sub_13BB6F
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_13AA6F:
    LDA BankPPU_X800
    STA byte_28
    RTS
; End of function sub_13AA4E

; ---------------------------------------------------------------------------
byte_13AA74:
    .byte 0, 1, 2, 4, 8, $10, $20, $20

; =============== S U B R O U T I N E =======================================


sub_13AA7C:
    LDA byte_13AA87,X
    STA PointerTilePack
    LDA byte_13AA87+1,X
    STA byte_73
    RTS
; End of function sub_13AA7C

; ---------------------------------------------------------------------------
byte_13AA87:
    .byte 0, 0, $85, 3, $86, 3, $87, 3, 0, 0, $D7, 3, $DB
    .byte 3, $C7, 6, $C8, 6, $D0, 6, $C9, 6, $8E, 3, $8F, 3
    .byte $90, 3, $91, 3, $92, 3, $93, 3, $94, 3, $95, 3, $96
    .byte 3, $97, 3, $98, 3, $AF, 6, $B0, 6, $B1, 6, $B2, 6
    .byte $B3, 6, $B4, 6, $B5, 6, $B6, 6, $B7, 6, $B8, 6, $B9
    .byte 6, $BA, 6, $BB, 6, $BC, 6, $BD, 6, $BE, 6, $A7, 6
    .byte $A8, 6, $A5, 6, $AA, 6, $A9, 6, $C1, 6, $A6, 6, $C3
    .byte 6, $C4, 6, $C5, 6, $C6, 6, $BF, 6, $C0, 6, $99, 3
    .byte $9A, 3, $9B, 3, $CB, 6, $9D, 3, $CC, 6, $CD, 6, $CA
    .byte 6, $A1, 3, $CF, 6, $CE, 6, $14, 0, $16, 0, $38, 3
    .byte $18, 0, $21, 0, $1B, 0

; =============== S U B R O U T I N E =======================================


sub_13AB0F:
    JSR sub_13AB3E
    LDY #$14
    LDA (Dist),Y
    AND #$F
    TAY

loc_13AB19:
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    BEQ loc_13AB23
    JSR sub_13AB5E
    JMP loc_13AB19
; ---------------------------------------------------------------------------

loc_13AB23:
    LDA byte_21
    BEQ loc_13AB30
    JSR sub_E266
    LDA #$40
    STA byte_34
    BNE sub_13AB0F

loc_13AB30:
    LDA byte_2C
    BEQ loc_13AB3C
    LDA #0
    STA byte_2C
    CLC
    JMP sub_FD4F
; ---------------------------------------------------------------------------

loc_13AB3C:
    SEC
    RTS
; End of function sub_13AB0F


; =============== S U B R O U T I N E =======================================


sub_13AB3E:
    JSR sub_E655

loc_13AB41:
    LDY #1
    LDA (Dist),Y
    JMP sub_DE6C
; End of function sub_13AB3E


; =============== S U B R O U T I N E =======================================


sub_13AB48:
    JSR sub_13AB3E
    LDY #$1C
    LDA (Dist),Y
    TAY
    JMP loc_13AB19
; End of function sub_13AB48


; =============== S U B R O U T I N E =======================================


sub_13AB53:
    JSR sub_E266
    JSR sub_13AB3E
    LDY byte_35
    JMP loc_13AB19
; End of function sub_13AB53


; =============== S U B R O U T I N E =======================================


sub_13AB5E:
    ASL A
    TAX
    LDA off_13AB69+1,X
    PHA
    LDA off_13AB69,X
    PHA
    RTS
; End of function sub_13AB5E

; ---------------------------------------------------------------------------
off_13AB69:
    .word loc_13AB30-1, loc_13AC88-1, sub_13AC8D-1, return-1
    .word sub_13ACBA-1, sub_13AC54-1, sub_13AC54-1, infinite_loop-1
    .word sub_13AD0D-1, sub_13ADA2-1, loc_13AC71-1, loc_13AC71-1
    .word sub_13AC61-1, sub_13AC6A-1, infinite_loop-1, sub_13AC4B-1
    .word sub_13AE23-1, sub_13AE35-1, sub_13AE4A-1, sub_13AE6C-1
    .word sub_13AE5E-1, sub_13AE7A-1, sub_13AE8A-1, sub_13B48D-1
    .word sub_13B0AD-1, sub_13AE97-1, sub_13AEBD-1, sub_13B505-1
    .word sub_13B0E4-1, sub_13AE9E-1, sub_13AEC5-1, sub_13B484-1
    .word sub_13B196-1, sub_13B172-1, sub_13B184-1, sub_13AFAC-1
    .word loc_13AFB8-1, sub_13AEB6-1, sub_13AED3-1, sub_13AF8E-1
    .word sub_13AEDB-1, loc_13AEEE-1, sub_13AF15-1, loc_13AF2F-1
    .word loc_13AFDC-1, sub_13AFD1-1, loc_13AFEA-1, loc_13AFF5-1
    .word loc_13B00C-1, sub_13B03C-1, sub_13AF5E-1, sub_13B028-1
    .word loc_13AC71-1, loc_13AC71-1, sub_13B3D8-1, sub_13ADFA-1
    .word sub_13B1BD-1, loc_13B1D8-1, sub_13B0D1-1, sub_13B235-1
    .word sub_13B42B-1, sub_13B420-1, sub_13B246-1, sub_13AC57-1
    .word loc_13AC71-1, sub_13B4EB-1, sub_13B440-1, sub_13B459-1
    .word sub_13B472-1, sub_13B511-1, sub_13B290-1, sub_13B2FC-1
    .word sub_13B323-1, sub_13B339-1, sub_13B34A-1, sub_13B3A8-1
    .word sub_13B3B5-1, sub_13B317-1, sub_13B432-1, sub_13B3E8-1
    .word sub_13B5A9-1, loc_13B64A-1, sub_13B5E2-1, sub_13B600-1
    .word sub_13B5F1-1, sub_13B546-1, sub_13B4A0-1, sub_13B4A9-1
    .word sub_13AEAA-1, sub_13B629-1, sub_13B695-1, sub_13B6AC-1
    .word sub_13B6B4-1, sub_13B6BC-1, infinite_loop-1, sub_13B6C4-1
    .word sub_13B5C9-1, sub_13B640-1, sub_13B1FD-1, sub_13B223-1
    .word sub_13B6DB-1, sub_13B6EA-1, sub_13B70C-1, sub_13B725-1
    .word sub_13B72D-1, sub_13B735-1, sub_13B73F-1, sub_13B751-1

; =============== S U B R O U T I N E =======================================


infinite_loop:

    JMP infinite_loop
; End of function infinite_loop


; =============== S U B R O U T I N E =======================================


sub_13AC44:
    STA PointerTilePack
    STX PointerTilePack+1
    JMP sub_C6D2
; End of function sub_13AC44


; =============== S U B R O U T I N E =======================================


sub_13AC4B:
    JSR loc_13AB30
    JSR darken_palette
    JMP reset
; End of function sub_13AC4B


; =============== S U B R O U T I N E =======================================


sub_13AC54:
    INY
    INY
    RTS
; End of function sub_13AC54


; =============== S U B R O U T I N E =======================================


sub_13AC57:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    CLC
    ADC #4
    STA byte_21
    INY
    RTS
; End of function sub_13AC57


; =============== S U B R O U T I N E =======================================


sub_13AC61:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    CLC
    ADC #$C0
    JMP loc_13AC6D
; End of function sub_13AC61


; =============== S U B R O U T I N E =======================================


sub_13AC6A:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3

loc_13AC6D:
    CMP byte_29
    BNE loc_13AC88

loc_13AC71:
    TXA
    LSR A
    CMP byte_34
    BNE loc_13AC88

loc_13AC77:
    INY
    INY
    RTS
; End of function sub_13AC6A


; =============== S U B R O U T I N E =======================================


sub_13AC7A:
    BCS loc_13AC77
    BCC loc_13AC88

loc_13AC7E:
    BCC loc_13AC77
    BCS loc_13AC88

loc_13AC82:
    BNE loc_13AC77
    BEQ loc_13AC88
; End of function sub_13AC7A


; =============== S U B R O U T I N E =======================================


sub_13AC86:
    BEQ loc_13AC77

loc_13AC88:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    TAY
    RTS
; End of function sub_13AC86


; =============== S U B R O U T I N E =======================================


sub_13AC8D:
    LDA Source  ; byte_109EAB, byte_109EB3
    PHA
    LDA Source+1    ; byte_109EAB, byte_109EB3
    PHA
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    PHA
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    PHA
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_35
    INY
    PLA
    STA Source+1    ; byte_109EAB, byte_109EB3
    PLA
    STA Source  ; byte_109EAB, byte_109EB3
    TYA
    PHA
    LDY byte_35
    JSR loc_13AB19
    PLA
    TAY
    PLA
    STA Source+1    ; byte_109EAB, byte_109EB3
    PLA
    STA Source  ; byte_109EAB, byte_109EB3
    RTS
; End of function sub_13AC8D


; =============== S U B R O U T I N E =======================================


return:
    PLA
    PLA
    RTS
; End of function return


; =============== S U B R O U T I N E =======================================


sub_13ACBA:
    LDA CurrentGame.PureSave.field_4
    AND #$3F
    CMP #$24
    BCC loc_13AD05
    CMP #$2C
    BCS loc_13AD05
    JSR store_palettes
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA CHRBank
    INY

loc_13ACD0:
    LSR A
    LSR A
    LSR A
    AND #7
    TAX
    LDA Colors,X
    STA PalNMIBG+1
    STA PalNMIBG+5
    STA PalNMIBG+9
    STA PalNMIBG+$D
    JSR one_frame
    LDA CHRBank
    BNE loc_13ACD0
    LDA BankNum0
    LDX #2
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA BankNum1
    LDX #3
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    JMP back_palettes
; ---------------------------------------------------------------------------
Colors:
    .byte LIGHT_BLUE, LIGHT_INDIGO, LIGHT_VIOLET, LIGHT_PURPLE
    .byte LIGHT_REDVIOLET, LIGHT_PURPLE, LIGHT_VIOLET, LIGHT_INDIGO
; ---------------------------------------------------------------------------

loc_13AD05:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    TAX
    INY
    JMP wait_frames ; wait for a few frames
; End of function sub_13ACBA    ; input:
X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13AD0D:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA PointerTilePack
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_73
    INY
    STY byte_35

loc_13AD1A:
    LDA byte_2C
    BNE loc_13AD21
    JSR sub_13BC0A

loc_13AD21:
    LDA #8
    CMP byte_2C
    BEQ loc_13AD7B
; End of function sub_13AD0D


; =============== S U B R O U T I N E =======================================


sub_13AD27:
    STA byte_2C

loc_13AD29:
    LDY PosY
    CPY #$1B
    BCC loc_13AD36
    JSR sub_13AD98
    DEC byte_2D
    BMI loc_13AD84

loc_13AD36:
    LDA byte_2D
    BNE loc_13AD40
    LDY PosY
    CPY #$19
    BCS loc_13AD84

loc_13AD40:
    JSR sub_CAA2
    LDA #$16
    STA byte_70
    LDA #0
    STA byte_71
    JSR print_string
    JSR sub_C7AF
    CMP #0
    BEQ loc_13AD61
    LDY #0
    LDA (PointerTilePack),Y
    CMP #3
    BEQ loc_13AD75
    CMP #0
    BNE loc_13AD29

loc_13AD61:
    JSR loc_13AB41
    LDA #0
    STA byte_70
    STA byte_71
    LDY byte_35

loc_13AD6C:
    SEC
    LDA PosY
    SBC #$13
    LSR A
    STA byte_2D
    RTS
; ---------------------------------------------------------------------------

loc_13AD75:
    INC PointerTilePack
    BNE loc_13AD7B
    INC byte_73

loc_13AD7B:
    LDY PosY
    CPY #$1B
    BCC loc_13AD84
    JSR sub_13AD98

loc_13AD84:
    JSR loc_13AD6C
    LDA #$91
    LDX #$AD    ; AD91
    JSR loc_13ADC5
    JMP loc_13AD40
; End of function sub_13AD27

; ---------------------------------------------------------------------------
    .byte 1, 1, 0, 0, $C0, $3B, $12

; =============== S U B R O U T I N E =======================================


sub_13AD98:
    LDX #4
    JSR sub_C7C1
    DEC PosY
    DEC PosY
    RTS
; End of function sub_13AD98


; =============== S U B R O U T I N E =======================================


sub_13ADA2:
    STY byte_35
    JSR sub_13ADAE
    LDY byte_35
    LDA CurrentFieldPosition
    JMP sub_13AC86
; End of function sub_13ADA2


; =============== S U B R O U T I N E =======================================


sub_13ADAE:
    LDA #$DF
    LDX #$AD    ; ADDF
    STA PointerTilePack
    STX byte_73
    LDA #9
    JSR sub_13AD27
    LDA #$EC    ; ADEC
    LDX #$AD
    BNE loc_13ADC5

loc_13ADC1:
    LDA #$F3
    LDX #$AD    ; ADF3

loc_13ADC5:
    STA pCursor
    STX pCursor+1
    LDY #6
    LDA (pCursor),Y
    STA PosX
    LDA #$D1
    LDX #$F0
    STA pStr
    STX pStr+1
    JSR loc_EF4B
    LDA #8
    STA PosX
    RTS
; End of function sub_13ADAE

; ---------------------------------------------------------------------------
    .byte $A0, $A0, $A0, $A0, $D9, $E5, $F3, $A0, $A0, $CE
    .byte $EF, $A0, 0
    .byte 2, 1, 5, 0, $80, $3A, $B
    .byte 2, 1, 9, 0, $C0, $3A, 9

; =============== S U B R O U T I N E =======================================


sub_13ADFA:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA PointerTilePack
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_73
    INY
    STY byte_35
    LDA #$37 ; '7'
    JSR sub_13AD27
    JSR loc_13ADC1
    LDY byte_35
    BIT Buttons
    BVS loc_13AE20
    LDA CurrentFieldPosition
    BNE loc_13AE1C
    INY
    INY
    RTS
; ---------------------------------------------------------------------------

loc_13AE1C:
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    TAY
    RTS
; ---------------------------------------------------------------------------

loc_13AE20:
    JMP loc_13AC88
; End of function sub_13ADFA


; =============== S U B R O U T I N E =======================================


sub_13AE23:
    JSR sram_write_enable
    JSR sub_13AE58
    ORA byte_EC5D,X
    STA CurrentGame.field_200,Y
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13AE23


; =============== S U B R O U T I N E =======================================


sub_13AE35:
    JSR sram_write_enable
    JSR sub_13AE58
    ORA byte_EC5D,X
    EOR byte_EC5D,X
    STA CurrentGame.field_200,Y
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13AE35


; =============== S U B R O U T I N E =======================================


sub_13AE4A:
    JSR sub_13AE58
    LDY byte_35
    AND byte_EC5D,X
    EOR byte_EC5D,X
    JMP sub_13AC86
; End of function sub_13AE4A


; =============== S U B R O U T I N E =======================================


sub_13AE58:
    INY
    STY byte_35
    JMP loc_E646
; End of function sub_13AE58


; =============== S U B R O U T I N E =======================================


sub_13AE5E:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    TAX
    INY
    JSR sram_write_enable
    INC CurrentGame.field_260,X
    JMP sram_read_enable
; End of function sub_13AE5E


; =============== S U B R O U T I N E =======================================


sub_13AE6C:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    TAX
    INY
    JSR sram_write_enable
    DEC CurrentGame.field_260,X
    JMP sram_read_enable
; End of function sub_13AE6C


; =============== S U B R O U T I N E =======================================


sub_13AE7A:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    TAX
    INY
    JSR sram_write_enable
    LDA #0
    STA CurrentGame.field_260,X
    JMP sram_read_enable
; End of function sub_13AE7A


; =============== S U B R O U T I N E =======================================


sub_13AE8A:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    TAX
    INY
    LDA CurrentGame.field_260,X
    CMP (Source),Y  ; byte_109EAB, byte_109EB3
    JMP sub_13AC7A
; End of function sub_13AE8A


; =============== S U B R O U T I N E =======================================


sub_13AE97:
    JSR sub_13B032
    LDY byte_35
    INY
    RTS
; End of function sub_13AE97


; =============== S U B R O U T I N E =======================================


sub_13AE9E:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA word_2A
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA word_2A+1
    INY
    RTS
; End of function sub_13AE9E


; =============== S U B R O U T I N E =======================================


sub_13AEAA:
    LDA CurrentGame.PureSave.field_10
    STA word_2A
    LDA CurrentGame.PureSave.field_10+1
    STA word_2A+1
    INY
    RTS
; End of function sub_13AEAA


; =============== S U B R O U T I N E =======================================


sub_13AEB6:
    JSR sub_13AFC4
    LDY byte_35
    INY
    RTS
; End of function sub_13AEB6


; =============== S U B R O U T I N E =======================================


sub_13AEBD:
    INY
    LDA byte_28
    CMP (Source),Y  ; byte_109EAB, byte_109EB3
    JMP sub_13AC86
; End of function sub_13AEBD


; =============== S U B R O U T I N E =======================================


sub_13AEC5:
    SEC
    INY
    LDA word_2A
    SBC (Source),Y  ; byte_109EAB, byte_109EB3
    INY
    LDA word_2A+1
    SBC (Source),Y  ; byte_109EAB, byte_109EB3
    JMP sub_13AC7A
; End of function sub_13AEC5


; =============== S U B R O U T I N E =======================================


sub_13AED3:
    INY
    LDA byte_29
    CMP (Source),Y  ; byte_109EAB, byte_109EB3
    JMP sub_13AC86
; End of function sub_13AED3


; =============== S U B R O U T I N E =======================================


sub_13AEDB:
    CLC
    LDA CurrentGame.PureSave.field_10
    ADC word_2A
    STA Pointer
    LDA CurrentGame.PureSave.field_10+1
    ADC word_2A+1
    STA Pointer+1
    BCS loc_13AF12
    BCC loc_13AEFF

loc_13AEEE:
    SEC
    LDA CurrentGame.PureSave.field_10
    SBC word_2A
    STA Pointer
    LDA CurrentGame.PureSave.field_10+1
    SBC word_2A+1
    STA Pointer+1
    BCC loc_13AF12

loc_13AEFF:
    JSR sram_write_enable
    LDA Pointer
    STA CurrentGame.PureSave.field_10
    LDA Pointer+1
    STA CurrentGame.PureSave.field_10+1
    JSR sram_read_enable
    INY
    INY
    RTS
; ---------------------------------------------------------------------------

loc_13AF12:
    JMP loc_13AC88
; End of function sub_13AEDB


; =============== S U B R O U T I N E =======================================


sub_13AF15:
    CLC
    LDA CurrentGame.PureSave.field_12
    ADC word_2A
    STA Pointer
    LDA CurrentGame.PureSave.field_12+1
    ADC word_2A+1
    STA Pointer+1
    LDA CurrentGame.PureSave.field_14
    ADC #0
    STA AddrForJmp
    BCS loc_13AF12
    BCC loc_13AF47

loc_13AF2F:
    SEC
    LDA CurrentGame.PureSave.field_12
    SBC word_2A
    STA Pointer
    LDA CurrentGame.PureSave.field_12+1
    SBC word_2A+1
    STA Pointer+1
    LDA CurrentGame.PureSave.field_14
    SBC #0
    STA AddrForJmp
    BCC loc_13AF12

loc_13AF47:
    JSR sram_write_enable
    LDA Pointer
    STA CurrentGame.PureSave.field_12
    LDA Pointer+1
    STA CurrentGame.PureSave.field_12+1
    LDA AddrForJmp
    STA CurrentGame.PureSave.field_14
    INY
    INY
    JMP sram_read_enable
; End of function sub_13AF15


; =============== S U B R O U T I N E =======================================


sub_13AF5E:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA pTileID
    STY byte_35
    LDA word_2A
    STA Pointer
    LDA word_2A+1
    STA Pointer+1
    JSR sub_F0F1
    LDA #$64 ; 'd'
    STA pTileID
    JSR sub_F13D
    LDY byte_35
    INY
    LDA AddrForJmp
    BNE sub_13AF87
    LDA Pointer
    STA word_2A
    LDA Pointer+1
    STA word_2A+1
    RTS
; End of function sub_13AF5E


; =============== S U B R O U T I N E =======================================


sub_13AF87:
    LDA #$FF
    STA word_2A
    STA word_2A+1
    RTS
; End of function sub_13AF87


; =============== S U B R O U T I N E =======================================


sub_13AF8E:
    JSR sub_13AFC4
    LDX #0

loc_13AF93:
    JSR sub_D9F1
    BCS loc_13AFA5
    STA byte_28
    TXA
    PHA
    LDA byte_29
    JSR sub_13B058
    PLA
    TAX
    BCC sub_13B01E

loc_13AFA5:
    INX
    CPX #4
    BCC loc_13AF93
    BCS sub_13B023
; End of function sub_13AF8E


; =============== S U B R O U T I N E =======================================


sub_13AFAC:
    JSR sub_13AFC4
    LDA byte_29
    JSR sub_13B058
    BCC sub_13B01E
    BCS sub_13B023

loc_13AFB8:
    JSR sub_13AFC4
    LDA byte_29
    JSR sub_13B063
    BCS sub_13B023
    BCC sub_13B01E
; End of function sub_13AFAC


; =============== S U B R O U T I N E =======================================


sub_13AFC4:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_29
    STY byte_35
    JSR sub_13BBC3
    JMP sub_13BB8C
; End of function sub_13AFC4


; =============== S U B R O U T I N E =======================================


sub_13AFD1:
    STY byte_35
    LDA #0
    JSR sub_13B058
    BCS sub_13B023
    BCC loc_13AFFE

loc_13AFDC:
    STY byte_35
    JSR sub_13B0A3
    PHP
    JSR loc_13AB41
    PLP
    BNE sub_13B023
    BEQ loc_13AFEC

loc_13AFEA:
    STY byte_35

loc_13AFEC:
    LDA byte_29
    JSR sub_13B058
    BCS sub_13B023
    BCC loc_13B015

loc_13AFF5:
    STY byte_35
    LDA #0
    JSR sub_13B063
    BCS sub_13B023

loc_13AFFE:
    JSR sram_write_enable
    LDA byte_29
    STA (Pointer),Y
    LDY byte_35
    INY
    INY
    JMP sram_read_enable
; ---------------------------------------------------------------------------

loc_13B00C:
    STY byte_35
    LDA byte_29
    JSR sub_13B063
    BCS sub_13B023

loc_13B015:
    JSR sram_write_enable
    JSR loc_13B07E
    JSR sram_read_enable
; End of function sub_13AFD1


; =============== S U B R O U T I N E =======================================


sub_13B01E:
    LDY byte_35
    INY
    INY
    RTS
; End of function sub_13B01E


; =============== S U B R O U T I N E =======================================


sub_13B023:
    LDY byte_35
    JMP loc_13AC88
; End of function sub_13B023


; =============== S U B R O U T I N E =======================================


sub_13B028:
    JSR sub_13B032
    JSR sub_13A728
    BCC sub_13B01E
    BCS sub_13B023
; End of function sub_13B028


; =============== S U B R O U T I N E =======================================


sub_13B032:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_28
    STY byte_35
    JMP sub_13BB6F
; End of function sub_13B032


; =============== S U B R O U T I N E =======================================


sub_13B03C:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STY byte_35
    PHA
    LDA byte_28
    JSR sub_13B089
    PLA
    TAY
    LDA (Pointer),Y
    BEQ sub_13B023
    STA byte_29
    JSR sub_13BBC3
    JSR sub_13BB8C
    JMP sub_13B01E
; End of function sub_13B03C


; =============== S U B R O U T I N E =======================================


sub_13B058:
    PHA
    LDA byte_28
    JSR sub_13B089
    PLA
    LDY #8
    BNE loc_13B068
; End of function sub_13B058


; =============== S U B R O U T I N E =======================================


sub_13B063:
    JSR sub_13B09A
    LDY #$50 ; 'P'

loc_13B068:
    STY pTileID
    LDY #0

loc_13B06C:
    CMP (Pointer),Y
    BEQ loc_13B076
    INY
    CPY pTileID
    BCC loc_13B06C
    RTS
; ---------------------------------------------------------------------------

loc_13B076:
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_13B078:
    LDA (Pointer),Y
    DEY
    STA (Pointer),Y
    INY

loc_13B07E:
    INY
    CPY pTileID
    BCC loc_13B078
    LDA #0
    DEY
    STA (Pointer),Y
    RTS
; End of function sub_13B063


; =============== S U B R O U T I N E =======================================


sub_13B089:
    JSR get_sram_pointer ; Input: A -
    ; Output: Pointer (word) = High $74 Low $40 * A
    CLC
    LDA Pointer
    ADC #$20 ; ' '
    STA Pointer
    LDA Pointer+1
    ADC #0
    STA Pointer+1
    RTS
; End of function sub_13B089


; =============== S U B R O U T I N E =======================================


sub_13B09A:
    LDX #$B0
    STX Pointer
    LDX #$76 ; 'v'
    STX Pointer+1
    RTS
; End of function sub_13B09A


; =============== S U B R O U T I N E =======================================


sub_13B0A3:
    JSR sub_13BBDF
    LDY #2
    LDA (Pointer),Y
    AND #$80
    RTS
; End of function sub_13B0A3


; =============== S U B R O U T I N E =======================================


sub_13B0AD:
    LDA #$18
    STA byte_2C
    LDA PosX
    PHA
    LDA PosY
    PHA
    STY byte_35
    JSR sub_13B763
    PLA
    STA PosY
    PLA
    STA PosX
    BCS loc_13B0CC

loc_13B0C4:
    JSR sub_13BB6F
    LDY byte_35
    INY
    INY
    RTS
; ---------------------------------------------------------------------------

loc_13B0CC:
    LDY byte_35
    JMP loc_13AC88
; End of function sub_13B0AD


; =============== S U B R O U T I N E =======================================


sub_13B0D1:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STY byte_35
    TAX
    CPX #4
    BCS loc_13B0CC
    LDA CurrentGame.PureSave.CharactersNum,X
    BEQ loc_13B0CC
    STA byte_28
    BNE loc_13B0C4
; End of function sub_13B0D1


; =============== S U B R O U T I N E =======================================


sub_13B0E4:
    STY byte_35
    JSR sub_13BC28
    LDX #7

loc_13B0EB:
    LDA byte_13B15E,X
    STA pDist,X
    DEX
    BPL loc_13B0EB
    LDA #$66
    LDX #$B1
    STA PointerTilePack
    STX byte_73
    LDA #$1C
    JSR sub_13AD27
    LDA #$6C
    LDX #$B1
    STA pCursor
    STX pCursor+1
    LDA #$6C
    LDX #0
    STA pStr
    STX pStr+1
    LDA #0
    STA CurrentX
    STA CurrentY
    STA CurrentFieldPosition

loc_13B118:
    LDX #$C
    STX PosX
    JSR loc_EF7C
    LDA Buttons
    AND #$C
    BEQ loc_13B146
    LDX CurrentFieldPosition
    LDY byte_6C,X
    AND #8
    BEQ loc_13B136
    INY
    CPY #$BA
    BNE loc_13B13D
    LDY #$B0
    BNE loc_13B13D

loc_13B136:
    DEY
    CPY #$AF
    BNE loc_13B13D
    LDY #$B9

loc_13B13D:
    TYA
    STA byte_6C,X
    JSR get_cursor_pos  ; get position of cursor and set cursor tile
    ; Input: A - tile ID
    ; Output: PosX, PosY
    JMP loc_13B118
; ---------------------------------------------------------------------------

loc_13B146:
    JSR sub_F1A4
    LDA Pointer
    STA word_2A
    LDA Pointer+1
    STA word_2A+1
    LDX #8
    STX PosX
    LDY byte_35
    LDA #$40
    BIT Buttons
    JMP sub_13AC86
; End of function sub_13B0E4

; ---------------------------------------------------------------------------
byte_13B15E:
   .byte $A0, $A0, $A4, $A0, $B0, $B0, $B0, $B0
    .byte $23, $68, 0, 0, 8, 0
    .byte 4, 1, 1, 0, $CC, 1

; =============== S U B R O U T I N E =======================================


sub_13B172:
    LDA #$21
    STA byte_2C
    STY byte_35
    LDA PosX
    PHA
    LDA PosY
    PHA
    JSR sub_13B87F
    JMP loc_13B1A5
; End of function sub_13B172


; =============== S U B R O U T I N E =======================================


sub_13B184:
    LDA #$22
    STA byte_2C
    STY byte_35
    LDA PosX
    PHA
    LDA PosY
    PHA
    JSR sub_13B814
    JMP loc_13B1A5
; End of function sub_13B184


; =============== S U B R O U T I N E =======================================


sub_13B196:
    LDA #$20
    STA byte_2C
    STY byte_35
    LDA PosX
    PHA
    LDA PosY
    PHA
    JSR sub_13B7B6

loc_13B1A5:
    PLA
    STA PosY
    PLA
    STA PosX
    BCS loc_13B1B8
    JSR sub_13BBC3
    JSR sub_13BB8C

loc_13B1B3:
    LDY byte_35
    INY
    INY
    RTS
; ---------------------------------------------------------------------------

loc_13B1B8:
    LDY byte_35
    JMP loc_13AC88
; End of function sub_13B196


; =============== S U B R O U T I N E =======================================


sub_13B1BD:
    STY byte_35
    LDX #0

loc_13B1C1:
    JSR sub_D9F1
    BCS loc_13B1D1
    TAY
    TXA
    PHA
    TYA
    JSR sub_13B1E1
    PLA
    TAX
    BCC loc_13B1B3

loc_13B1D1:
    INX
    CPX #4
    BCC loc_13B1C1
    BCS loc_13B1B8

loc_13B1D8:
    STY byte_35
    JSR loc_13B1E8
    BCS loc_13B1B8
    BCC loc_13B1B3
; End of function sub_13B1BD


; =============== S U B R O U T I N E =======================================


sub_13B1E1:
    JSR sub_13B089
    LDY #8
    BNE loc_13B1ED

loc_13B1E8:
    JSR sub_13B09A
    LDY #$50

loc_13B1ED:
    STY pTileID
    LDY #0

loc_13B1F1:
    LDA (Pointer),Y
    BNE loc_13B1FB
    INY
    CPY pTileID
    BCC loc_13B1F1
    RTS
; ---------------------------------------------------------------------------

loc_13B1FB:
    CLC
    RTS
; End of function sub_13B1E1


; =============== S U B R O U T I N E =======================================


sub_13B1FD:
    STY byte_35
    JSR loc_13B5C4
    JSR sram_write_enable
    LDY #$28
    LDA (Pointer),Y
    BEQ loc_13B21B
    STA CurrentGame.field_280
    STY AddrForJmp
    JSR loc_13BC5A
    JSR loc_13AB41

loc_13B216:
    LDY byte_35
    INY
    INY
    RTS
; ---------------------------------------------------------------------------

loc_13B21B:
    LDY byte_35
    JSR sram_read_enable

loc_13B220:
    JMP loc_13AC88
; End of function sub_13B1FD


; =============== S U B R O U T I N E =======================================


sub_13B223:
    LDA CurrentGame.field_280
    BEQ loc_13B220
    STA byte_29
    STY byte_35
    JSR sub_13BBC3
    JSR sub_13BB8C
    JMP loc_13B216
; End of function sub_13B223


; =============== S U B R O U T I N E =======================================


sub_13B235:
    JSR sram_write_enable
    INY
    LDA (Source),Y
    STY byte_35
    JSR sub_DE13
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13B235


; =============== S U B R O U T I N E =======================================


sub_13B246:
    JSR sram_write_enable
    INY
    LDA (Source),Y
    PHA
    INY
    LDA (Source),Y
    INY
    STY byte_35
    LDY #$1F
    STA (Dist),Y
    DEY
    PLA
    STA (Dist),Y
    LDY #0
    LDA #7
    STA (Dist),Y
    LDY #0
    LDA (Source),Y
    AND #$3F
    LDY #$1D
    STA (Dist),Y
    LDY #$14
    LDA (Dist),Y
    AND #$BF
    STA (Dist),Y
    LDY #$1C
    LDA byte_35
    STA (Dist),Y
    LDA byte_6795
    ASL A
    ASL A
    ASL A
    TAX
    LDA byte_EBF1,X
    LSR A
    LSR A
    STA byte_6799
    JSR sram_read_enable
    PLA
    PLA
    JMP loc_13AB23
; End of function sub_13B246


; =============== S U B R O U T I N E =======================================


sub_13B290:
    LDA BankTable.PPU_2K_1800
    JSR sub_13B29C

loc_13B295:
    LDY byte_35
    INY
    INY
    JMP sram_read_enable
; End of function sub_13B290


; =============== S U B R O U T I N E =======================================


sub_13B29C:
    TAX
    STY byte_35
    JSR sram_write_enable
    TXA
    EOR byte_23
    AND #$7F
    BNE loc_13B2AA
    RTS
; ---------------------------------------------------------------------------

loc_13B2AA:
    STX byte_23
    LDY #$1C
    LDA byte_35
    STA (Dist),Y
    JSR sub_13B2C3
    ORA #$80
    STA byte_21
    JSR sram_read_enable
    PLA
    PLA
    PLA
    PLA
    JMP loc_13AB30
; End of function sub_13B29C


; =============== S U B R O U T I N E =======================================


sub_13B2C3:
    SEC
    LDA Dist
    SBC #$80
    STA Pointer
    LDA Dist+1
    SBC #$67
    ASL Pointer
    ROL A
    ASL Pointer
    ROL A
    ASL Pointer
    ROL A
    RTS
; End of function sub_13B2C3


; =============== S U B R O U T I N E =======================================


sub_13B2D8:
    STX byte_6796
    STY byte_6797

loc_13B2DE:
    STA byte_6780
    ASL A
    ASL A
    TAX
    LDA stru_E105.value,X
    STA byte_6788
    LDA stru_E105.value+1,X
    STA byte_6794
    LDY byte_35
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_6795
    STA byte_6799
    RTS
; End of function sub_13B2D8


; =============== S U B R O U T I N E =======================================


sub_13B2FC:
    LDA #$74
    JSR sub_13B29C
    LDA #9
    LDX #$FC
    LDY #$8A
    JSR sub_13B2D8
    LDA #$F
    STA byte_679A
    LDX #$10
    JSR sub_CDAF
    JMP loc_13B295
; End of function sub_13B2FC


; =============== S U B R O U T I N E =======================================


sub_13B317:
    JSR sram_write_enable
    LDA #$F8
    STA byte_679A
    INY
    JMP sram_read_enable
; End of function sub_13B317


; =============== S U B R O U T I N E =======================================


sub_13B323:
    LDA #$74
    JSR sub_13B29C
    LDA #$A
    LDX #$1C
    LDY #$8B
    JSR sub_13B2D8
    LDX #8
    JSR sub_CDAF
    JMP loc_13B295
; End of function sub_13B323


; =============== S U B R O U T I N E =======================================


sub_13B339:
    LDA #$74
    JSR sub_13B29C
    LDA #$B
    LDX #$3C
    LDY #$8B    ; 8B3C
    JSR sub_13B2D8
    JMP loc_13B295
; End of function sub_13B339


; =============== S U B R O U T I N E =======================================


sub_13B34A:
    STY byte_35
    LDA #$F0
    STA byte_23
    LDA #$3F
    STA byte_15
    JSR sram_write_enable
    LDA #0
    STA byte_67C0
    STA byte_67E0
    LDA #$D
    LDY #0
    JSR sub_13B38B
    LDA #$E
    LDY #$20
    JSR sub_13B38B
    SEC
    LDA byte_29
    SBC #$8F
    STA byte_679E
    LDA #0
    STA byte_679F
    STA byte_679A
    JSR sub_13BBD4
    LDX #$10
    JSR sub_CDAF
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13B34A


; =============== S U B R O U T I N E =======================================


sub_13B38B:
    STA byte_6780,Y
    ASL A
    ASL A
    TAX
    LDA #$28
    STA byte_6796,Y
    LDA #$8A
    STA byte_6797,Y
    LDA stru_E105.value,X
    STA byte_6788,Y
    LDA stru_E105.value+1,X
    STA byte_6794,Y
    RTS
; End of function sub_13B38B


; =============== S U B R O U T I N E =======================================


sub_13B3A8:
    LDA #$F2
    JSR sub_13B29C
    LDA #$F
    JSR loc_13B2DE
    JMP loc_13B295
; End of function sub_13B3A8


; =============== S U B R O U T I N E =======================================


sub_13B3B5:
    INY
    STY byte_35
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    ORA #$80
    STA byte_20
    LDX #0
    STX byte_23
    JSR sub_CDAF
    LDA Dist
    PHA
    LDA Dist+1
    PHA
    JSR sub_D674
    PLA
    STA Dist+1
    PLA
    STA Dist
    LDY byte_35
    INY
    RTS
; End of function sub_13B3B5


; =============== S U B R O U T I N E =======================================


sub_13B3D8:
    STY byte_35
    LDY #2
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    AND #$3F
    LDY byte_35
    CMP byte_6795
    JMP sub_13AC86
; End of function sub_13B3D8


; =============== S U B R O U T I N E =======================================


sub_13B3E8:
    STY byte_35
    LDY #0
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    AND #$C0
    LDY #4
    CMP (Dist),Y
    BNE loc_13B41B
    LDY #1
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    LDY #5
    CMP (Dist),Y
    BNE loc_13B41B
    LDY #2
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    AND #$C0
    LDY #6
    CMP (Dist),Y
    BNE loc_13B41B
    LDY #3
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    LDY #7
    CMP (Dist),Y
    BNE loc_13B41B
    LDY byte_35
    INY
    INY
    RTS
; ---------------------------------------------------------------------------

loc_13B41B:
    LDY byte_35
    JMP loc_13AC88
; End of function sub_13B3E8


; =============== S U B R O U T I N E =======================================


sub_13B420:
    JSR sram_write_enable
    INY
    JSR sub_E6A1
    INY
    JMP sram_read_enable
; End of function sub_13B420


; =============== S U B R O U T I N E =======================================


sub_13B42B:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA FuncID  ; ID from table BANK13:BCFD (RoutineTable)
    INY
    RTS
; End of function sub_13B42B


; =============== S U B R O U T I N E =======================================


sub_13B432:
    STY byte_35
    JSR sram_write_enable
    JSR sub_D9FA
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13B432


; =============== S U B R O U T I N E =======================================


sub_13B440:
    JSR sub_13B032
    LDA Dist
    PHA
    LDA Dist+1
    PHA
    LDA byte_28
    JSR sub_D759
    PLA
    STA Dist+1
    PLA
    STA Dist
    LDY byte_35
    JMP loc_13AC7E
; End of function sub_13B440


; =============== S U B R O U T I N E =======================================


sub_13B459:
    JSR sub_13B032
    LDA Dist
    PHA
    LDA Dist+1
    PHA
    LDA byte_28
    JSR sub_D78D
    PLA
    STA Dist+1
    PLA
    STA Dist
    LDY byte_35
    JMP loc_13AC7E
; End of function sub_13B459


; =============== S U B R O U T I N E =======================================


sub_13B472:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_48
    JSR sub_13B2C3
    STA byte_21
    INY
    STY byte_35
    PLA
    PLA
    JMP loc_13AB30
; End of function sub_13B472


; =============== S U B R O U T I N E =======================================


sub_13B484:
    STY byte_35
    JSR sub_13BC28
    LDY byte_35
    INY
    RTS
; End of function sub_13B484


; =============== S U B R O U T I N E =======================================


sub_13B48D:
    JSR sram_write_enable
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    AND #$3F
    TAX
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA CurrentGame,X
    INY
    JMP sram_read_enable
; End of function sub_13B48D


; =============== S U B R O U T I N E =======================================


sub_13B4A0:
    STY byte_35
    JSR make_save
    LDY byte_35
    INY
    RTS
; End of function sub_13B4A0


; =============== S U B R O U T I N E =======================================


sub_13B4A9:
    STY byte_35
    JSR loc_13B5C4
    LDY #$10
    LDA (Pointer),Y
    JSR sub_DB40
    JSR loc_13B5C4
    LDY #$11
    SEC
    LDA pTileID
    SBC (Pointer),Y
    STA word_2A
    INY
    LDA pTileID+1
    SBC (Pointer),Y
    STA word_2A+1
    JSR loc_13AB41
    JSR sram_write_enable
    LDX #3

loc_13B4D0:
    LDA CurrentGame.PureSave.field_4,X
    STA CurrentGame.PureSave.field_C,X
    DEX
    BPL loc_13B4D0
    LDA #0
    STA CurrentGame.PureSave.field_15
    STA CurrentGame.PureSave.field_16
    STA CurrentGame.PureSave.field_17
    JSR sram_read_enable
    LDY byte_35
    INY
    RTS
; End of function sub_13B4A9


; =============== S U B R O U T I N E =======================================


sub_13B4EB:
    JSR sram_write_enable
    LDX #3

loc_13B4F0:
    LDA CurrentGame.PureSave.field_C,X
    STA CurrentGame.PureSave.field_4,X
    DEX
    BPL loc_13B4F0
    LDA #$20 ; ' '
    STA byte_20
    LDA #0
    STA byte_22
    INY
    JMP sram_read_enable
; End of function sub_13B4EB


; =============== S U B R O U T I N E =======================================


sub_13B505:
    LDA CurrentGame.PureSave.field_15
    ORA CurrentGame.PureSave.field_16
    ORA CurrentGame.PureSave.field_17
    JMP loc_13AC82
; End of function sub_13B505


; =============== S U B R O U T I N E =======================================


sub_13B511:
    STY byte_35
    LDA word_2A
    STA pTileID
    LDA word_2A+1
    STA pTileID+1
    LDX #1

loc_13B51D:
    JSR sub_D9F1
    BCS loc_13B53D
    JSR get_sram_pointer ; Input: A -
    ; Output: Pointer (word) = High $74 Low $40 * A
    LDY #1
    LDA (Pointer),Y
    BMI loc_13B53D
    CLC
    LDA pTileID
    ADC word_2A
    STA word_2A
    LDA pTileID+1
    ADC word_2A+1
    STA word_2A+1
    BCC loc_13B53D
    JSR sub_13AF87

loc_13B53D:
    INX
    CPX #4
    BCC loc_13B51D
    LDY byte_35
    INY
    RTS
; End of function sub_13B511


; =============== S U B R O U T I N E =======================================


sub_13B546:
    STY byte_35
    LDX #$3C
    JSR wait_frames ; wait for a few frames
    ; input: X - number of frames
    JSR darken_palette
    JSR sub_13B561
    JSR sub_13BC0A
    LDA #$55
    STA byte_2C
    JSR lighten_palette ; increase the brightness of colors in the palette
    LDY byte_35
    INY
    RTS
; End of function sub_13B546


; =============== S U B R O U T I N E =======================================


sub_13B561:
    JSR sram_write_enable
    LDX #0

loc_13B566:
    LDA CurrentGame.PureSave.CharactersNum,X
    BEQ loc_13B57A
    JSR get_sram_pointer ; Input: A -
    ; Output: Pointer (word) = High $74 Low $40 * A
    LDY #1
    LDA (Pointer),Y
    BMI loc_13B57A
    JSR sub_13B587
    JSR sub_13B598

loc_13B57A:
    INX
    CPX #4
    BCC loc_13B566
    JSR sram_read_enable
    LDA #$20 ; ' '
    JMP sub_CDE4
; End of function sub_13B561


; =============== S U B R O U T I N E =======================================


sub_13B587:
    LDY #3
    LDA (Pointer),Y
    LDY #$14
    STA (Pointer),Y
    LDY #4
    LDA (Pointer),Y
    LDY #$15
    STA (Pointer),Y
    RTS
; End of function sub_13B587


; =============== S U B R O U T I N E =======================================


sub_13B598:
    LDY #5
    LDA (Pointer),Y
    LDY #$16
    STA (Pointer),Y
    LDY #6
    LDA (Pointer),Y
    LDY #$17
    STA (Pointer),Y
    RTS
; End of function sub_13B598


; =============== S U B R O U T I N E =======================================


sub_13B5A9:
    JSR sub_13B5C2
    SEC
    LDY #$14
    LDA (Pointer),Y
    LDY #3
    SBC (Pointer),Y
    LDY #$15
    LDA (Pointer),Y
    LDY #4
    SBC (Pointer),Y
    LDY byte_35
    JMP sub_13AC7A
; End of function sub_13B5A9


; =============== S U B R O U T I N E =======================================


sub_13B5C2:
    STY byte_35

loc_13B5C4:
    LDA byte_28
    JMP get_sram_pointer ; Input: A -
; Output: Pointer (word) = High $74 Low $40 * A


; =============== S U B R O U T I N E =======================================


sub_13B5C9:
    JSR sub_13B5C2
    SEC
    LDY #$16
    LDA (Pointer),Y
    LDY #5
    SBC (Pointer),Y
    LDY #$17
    LDA (Pointer),Y
    LDY #6
    SBC (Pointer),Y
    LDY byte_35
    JMP sub_13AC7A
; End of function sub_13B5C9


; =============== S U B R O U T I N E =======================================


sub_13B5E2:
    INY
    JSR sub_13B5C2
    LDY #1
    LDA (Pointer),Y
    LDY byte_35
    AND (Source),Y  ; byte_109EAB, byte_109EB3
    JMP sub_13AC86
; End of function sub_13B5E2


; =============== S U B R O U T I N E =======================================


sub_13B5F1:
    INY
    JSR sub_13B5C2
    LDY #$10
    LDA (Pointer),Y
    LDY byte_35
    CMP (Source),Y  ; byte_109EAB, byte_109EB3
    JMP sub_13AC7A
; End of function sub_13B5F1


; =============== S U B R O U T I N E =======================================


sub_13B600:
    INY
    JSR sub_13B5C2
    JSR sram_write_enable
    LDY byte_35
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    PHP
    LDY #1
    PHA
    LDA (Pointer),Y
    TAX
    PLA
    AND (Pointer),Y
    STA (Pointer),Y
    PLP
    BMI loc_13B623
    JSR sub_13B587
    TXA
    BPL loc_13B623
    JSR loc_13A6F0

loc_13B623:
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13B600


; =============== S U B R O U T I N E =======================================


sub_13B629:
    INY
    JSR sub_13B5C2
    JSR sram_write_enable
    LDY byte_35
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    LDY #1
    ORA (Pointer),Y
    STA (Pointer),Y
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13B629


; =============== S U B R O U T I N E =======================================


sub_13B640:
    INY
    JSR sub_13B5C2
    LDX #$16
    LDY #5
    BNE loc_13B652

loc_13B64A:
    INY
    JSR sub_13B5C2
    LDX #$14
    LDY #3

loc_13B652:
    STX AddrForJmp
    STY AddrForJmp+1
    CLC
    LDY byte_35
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    LDY AddrForJmp
    ADC (Pointer),Y
    STA pTileID
    INY
    LDA #0
    ADC (Pointer),Y
    STA pTileID+1
    SEC
    LDY AddrForJmp+1
    LDA (Pointer),Y
    SBC pTileID
    INY
    LDA (Pointer),Y
    SBC pTileID+1
    BCS loc_13B681
    LDY AddrForJmp+1
    LDA (Pointer),Y
    STA pTileID
    INY
    LDA (Pointer),Y
    STA pTileID+1

loc_13B681:
    JSR sram_write_enable
    LDY AddrForJmp
    LDA pTileID
    STA (Pointer),Y
    INY
    LDA pTileID+1
    STA (Pointer),Y
    LDY byte_35
    INY
    JMP sram_read_enable
; End of function sub_13B640


; =============== S U B R O U T I N E =======================================


sub_13B695:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    JSR sub_FD28
    JSR sram_write_enable
    LDA CurrentGame.PureSave.field_4
    AND #$C0
    ORA (Source),Y  ; byte_109EAB, byte_109EB3
    STA CurrentGame.PureSave.field_4
    INY
    JMP sram_read_enable
; End of function sub_13B695


; =============== S U B R O U T I N E =======================================


sub_13B6AC:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA apu_7F0
    INY
    RTS
; End of function sub_13B6AC


; =============== S U B R O U T I N E =======================================


sub_13B6B4:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_7F1
    INY
    RTS
; End of function sub_13B6B4


; =============== S U B R O U T I N E =======================================


sub_13B6BC:
    INY
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_7F3
    INY
    RTS
; End of function sub_13B6BC


; =============== S U B R O U T I N E =======================================


sub_13B6C4:
    JSR sram_write_enable
    LDA #$20
    ORA CurrentGame.PureSave.Characters.field_30
    STA CurrentGame.PureSave.Characters.field_30
    LDA #$20
    ORA CurrentGame.PureSave.Characters.field_30+$40
    STA CurrentGame.PureSave.Characters.field_30+$40
    INY
    JMP sram_read_enable
; End of function sub_13B6C4


; =============== S U B R O U T I N E =======================================


sub_13B6DB:
    STY byte_35
    LDA #$19
    LDX #$C1
    LDY #$A6    ; BANK19:A6C2
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte
    LDY byte_35
    INY
    RTS
; End of function sub_13B6DB


; =============== S U B R O U T I N E =======================================


sub_13B6EA:
    LDA CurrentGame.field_21E
    CMP #$FF
    BEQ loc_13B6F4
    JMP loc_13AC88
; ---------------------------------------------------------------------------

loc_13B6F4:
    JSR sram_write_enable
    LDX #3

loc_13B6F9:
    LDA byte_13B708,X
    STA CurrentGame.PureSave.field_C,X
    DEX
    BPL loc_13B6F9
    JSR sram_read_enable
    INY
    INY
    RTS
; End of function sub_13B6EA

; ---------------------------------------------------------------------------
byte_13B708:
   .byte $D2, 0, $80, $47 

; =============== S U B R O U T I N E =======================================


sub_13B70C:
    LDA #$66 ; 'f'
    STA byte_2C
    STY byte_35
    LDA PosX
    PHA
    LDA PosY
    PHA
    JSR sub_13B9E4
    PLA
    STA PosY
    PLA
    STA PosX
    LDY byte_35
    INY
    RTS
; End of function sub_13B70C


; =============== S U B R O U T I N E =======================================


sub_13B725:
    JSR wait_nmi_processed
    JSR reduce_bg
    INY
    RTS
; End of function sub_13B725


; =============== S U B R O U T I N E =======================================


sub_13B72D:
    JSR sub_13BD3B
    JSR back_palettes
    INY
    RTS
; End of function sub_13B72D


; =============== S U B R O U T I N E =======================================


sub_13B735:
    LDX #$10

loc_13B737:
    JSR sub_EEE4
    DEX
    BNE loc_13B737
    INY
    RTS
; End of function sub_13B735


; =============== S U B R O U T I N E =======================================


sub_13B73F:
    STY byte_35
    LDA #$19
    LDX #$CB
    LDY #$A5    ; BANK19:A5CC
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte
    JSR loc_13AB41
    LDY byte_35
    INY
    RTS
; End of function sub_13B73F


; =============== S U B R O U T I N E =======================================


sub_13B751:
    STY byte_35
    LDA #$19
    LDX #$C0
    LDY #$A6    ; BANK19:A6C1
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte
    JSR loc_13AB41
    LDY byte_35
    INY
    RTS
; End of function sub_13B751


; =============== S U B R O U T I N E =======================================


sub_13B763:
    LDX #2
    LDY #$19
    STX PosX
    STY PosY
    LDX #2

loc_13B76D:
    LDA byte_6704,X
    BEQ loc_13B77E
    LDA #$A0
    JSR sub_C68B
    DEC PosY
    DEC PosY
    DEX
    BPL loc_13B76D

loc_13B77E:
    DEC PosX
    SEC
    LDA PosY
    SBC #4
    STA PosY
    JSR sub_C3C0
    JSR loc_13AB41
    LDA #$AC
    LDX #$B7    ; B7AC
    STA pCursor
    STX pCursor+1
    JSR cursor_update
    BIT Buttons
    BMI loc_13B79E
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_13B79E:
    LDA #$FF
    JSR get_cursor_pos  ; get position of cursor and set cursor tile
    ; Input: A - tile ID
    ; Output: PosX, PosY
    LDX CurrentFieldPosition
    LDA byte_6704,X
    STA byte_28
    CLC
    RTS
; End of function sub_13B763

; ---------------------------------------------------------------------------
    CURSOR <1, 3, 0, 2, $C0, $3A, 2, $15, byte_196704>

; =============== S U B R O U T I N E =======================================


sub_13B7B6:
    JSR sub_C3B2
    LDX #$FF

loc_13B7BB:
    INX
    CPX #3
    BCC loc_13B7C2
    LDX #0

loc_13B7C2:
    JSR sub_D9F1
    BCS loc_13B7BB
    STA byte_28
    STX ItemCount
    JSR sub_13BB21
    JSR sub_13B803
    JSR sub_13BB40
    JSR sub_13BAF9
    LDX ItemCount
    LDA #6
    BIT Buttons
    BVS loc_13B7F4
    BMI loc_13B7BB
    BEQ loc_13B7BB
    JSR sub_13B803
    JSR sub_13BB0E
    BIT Buttons
    BVS loc_13B7F4
    BMI sub_13B7F6
    LDX ItemCount
    JMP loc_13B7C2
; ---------------------------------------------------------------------------

loc_13B7F4:
    SEC
    RTS
; End of function sub_13B7B6


; =============== S U B R O U T I N E =======================================


sub_13B7F6:
    LDA #$FF
    JSR get_cursor_pos  ; get position of cursor and set cursor tile
    ; Input: A - tile ID
    ; Output: PosX, PosY
    LDY CurrentFieldPosition
    LDA (pStr),Y
    STA byte_29
    CLC
    RTS
; End of function sub_13B7F6


; =============== S U B R O U T I N E =======================================


sub_13B803:
    JSR loc_13B5C4
    CLC
    LDA Pointer
    ADC #$20
    STA pStr
    LDA Pointer+1
    ADC #0
    STA pStr+1
    RTS
; End of function sub_13B803


; =============== S U B R O U T I N E =======================================


sub_13B814:
    JSR sub_C3B9
    JSR loc_13AB41
    SEC
    LDA byte_35
    ADC Source  ; byte_109EAB, byte_109EB3
    STA pStr
    LDA #0
    ADC Source+1    ; byte_109EAB, byte_109EB3
    STA pStr+1
    LDY #3

loc_13B829:
    STY PosY
    LDY byte_35
    INY
    STY byte_35
    LDA (Source),Y  ; byte_109EAB, byte_109EB3
    STA byte_29
    BEQ loc_13B853
    LDA #$C
    STA byte_70
    LDX #3
    STX PosX
    JSR sub_13BBAF
    JSR sub_13BBC3
    LDA #0
    STA byte_70
    LDX #$F
    STX PosX
    LDA #$6F
    LDX #$B8    ; B86F
    JSR sub_13AC44

loc_13B853:
    LDY PosY
    INY
    INY
    CPY #$B
    BCC loc_13B829
    LDA #$77
    LDX #$B8    ; B877
    STA pCursor
    STX pCursor+1
    JSR short_cursor_update
    BIT Buttons
    BMI loc_13B86C
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_13B86C:
    JMP sub_13B7F6
; End of function sub_13B814

; ---------------------------------------------------------------------------
    .byte $A4, $23, $2A, 0, 2, 4, $BA, 0
    CURSOR_SHORT <1, 4, 0, 2, $C0, $3A, 2, 3>

; =============== S U B R O U T I N E =======================================


sub_13B87F:
    JSR sub_C3B2
    LDA #$D8
    LDX #$B8    ; B8D8
    JSR sub_13AC44
    LDX #$F8

loc_13B88B:
    CLC
    TXA
    ADC #8
    TAX
    CPX #$50
    BCC loc_13B896
    LDX #0

loc_13B896:
    LDA CurrentGame.field_2B0,X
    BNE loc_13B89D
    LDX #0

loc_13B89D:
    STX ItemCount
    JSR sub_13B8CA
    JSR sub_13BB40
    JSR sub_13BAF9
    LDX ItemCount
    LDA #6
    BIT Buttons
    BVS loc_13B8C5
    BMI loc_13B88B
    BEQ loc_13B88B
    JSR sub_13B8CA
    JSR sub_13BB0E
    BIT Buttons
    BVS loc_13B8C5
    BMI loc_13B8C7
    LDX ItemCount
    JMP loc_13B896
; ---------------------------------------------------------------------------

loc_13B8C5:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_13B8C7:
    JMP sub_13B7F6
; End of function sub_13B87F


; =============== S U B R O U T I N E =======================================


sub_13B8CA:
    CLC
    LDA ItemCount
    ADC #$B0
    STA pStr
    LDA #0
    ADC #$76
    STA pStr+1
    RTS
; End of function sub_13B8CA

; ---------------------------------------------------------------------------
    .byte $20, 9, 3, $D4, $E8, $E5, $A0, $C3, $EC, $EF, $F3
    .byte $E5, $F4, 0

; =============== S U B R O U T I N E =======================================


sub_13B8E6:
    JSR sub_C3B2
    LDX #$FF

loc_13B8EB:
    INX
    CPX #3
    BCC loc_13B8F2
    LDX #0

loc_13B8F2:
    LDA CurrentGame.PureSave.CharactersNum,X
    BEQ loc_13B8EB
    CMP #3
    BCS loc_13B8EB
    STA byte_28
    STX ItemCount
    JSR sub_13BB21
    JSR sub_13B935
    JSR sub_13BB40
    JSR sub_13BAF9
    LDX ItemCount
    LDA #6
    BIT Buttons
    BVS loc_13B930
    BMI loc_13B8EB
    BEQ loc_13B8EB
    JSR sub_13B935
    LDY #1
    LDA (Pointer),Y
    AND #$F0
    BNE loc_13B92B
    JSR sub_13BB0E
    BIT Buttons
    BVS loc_13B930
    BMI loc_13B932

loc_13B92B:
    LDX ItemCount
    JMP loc_13B8F2
; ---------------------------------------------------------------------------

loc_13B930:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_13B932:
    JMP sub_13B7F6
; End of function sub_13B8E6


; =============== S U B R O U T I N E =======================================


sub_13B935:
    JSR loc_13B5C4
    CLC
    LDA Pointer
    ADC #$30
    STA pStr
    LDA Pointer+1
    ADC #0
    STA pStr+1
    LDX #0
    LDY #0

loc_13B949:
    STX pTileID
    STY pTileID+1
    LDA pTileID+1
    AND #7
    TAX
    LDA pTileID+1
    LSR A
    LSR A
    LSR A
    TAY
    LDA (pStr),Y
    AND byte_EC5D,X
    LDX pTileID
    AND byte_13B98B,Y
    BEQ loc_13B971
    CLC
    LDA pTileID+1
    ADC #$C0
    STA byte_580,X
    INX
    CPX #8
    BCS loc_13B982

loc_13B971:
    LDY pTileID+1
    INY
    CPY #$20 ; ' '
    BCC loc_13B949
    LDA #0

loc_13B97A:
    STA byte_580,X
    INX
    CPX #8
    BCC loc_13B97A

loc_13B982:
    LDA #$80
    LDX #5
    STA pStr
    STX pStr+1
    RTS
; End of function sub_13B935

; ---------------------------------------------------------------------------
byte_13B98B:
   .byte $60, $E0, $A8, 0 

; =============== S U B R O U T I N E =======================================


sub_13B98F:
    JSR sub_C3B2
    LDA #$D1
    LDX #$B9    ; B9D1
    JSR sub_13AC44
    JSR sub_13B9AF
    JSR sub_13BB40
    LDA #$DC
    LDX #$B9    ; B9DC
    JSR loc_13BB12
    BIT Buttons
    BMI @exit
    SEC
    RTS
; ---------------------------------------------------------------------------

@exit:
    JMP sub_13B7F6
; End of function sub_13B98F


; =============== S U B R O U T I N E =======================================


sub_13B9AF:
    LDA CurrentGame.field_21D
    STA pTileID+1
    LDX #0

loc_13B9B6:
    LDA #0
    ASL pTileID+1
    BCC loc_13B9C0
    CLC
    TXA
    ADC #$80

loc_13B9C0:
    STA byte_580,X
    INX
    CPX #8
    BCC loc_13B9B6
    LDA #$80
    LDX #5
    STA pStr
    STX pStr+1
    RTS
; End of function sub_13B9AF

; ---------------------------------------------------------------------------
    .byte $20, 7, 3, $FE, $D7, $E8, $E5, $F2, $E5, $A2, 0 ; Where?
    CURSOR_SHORT <2, 4, $C, 2, $C0, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


sub_13B9E4:
    JSR sub_C3CE
    LDA #$B6
    LDX #$BA    ; BAB6
    JSR sub_13AC44
    JSR sub_C6D2
    LDX #0
    JSR sub_13BA72
    JSR sub_13BA72
    JSR sram_write_enable
    LDA #0
    STA CurrentGame.PureSave.field_31
    STA ItemCount
    LDY #$10
    LDA #$A2

loc_13BA07:
    STA CurrentGame.PureSave.field_20,Y
    DEY
    BPL loc_13BA07
    STA byte_D6
    JSR sub_13BA8D
    JSR cursor_update
    JMP loc_13BA1E
; ---------------------------------------------------------------------------

loc_13BA18:
    JSR sub_13BA8D
    JSR loc_EF7C

loc_13BA1E:
    BIT Buttons
    BMI loc_13BA39
    BVC loc_13BA54

loc_13BA24:
    LDY ItemCount
    BEQ loc_13BA18
    LDA CurrentGame.PureSave.field_20,Y
    CMP #$A2
    BNE loc_13BA30
    DEY

loc_13BA30:
    LDA #$A2
    STY ItemCount
    STA CurrentGame.PureSave.field_20,Y
    BNE loc_13BA18

loc_13BA39:
    LDY CurrentFieldPosition
    CPY #$10
    BEQ loc_13BA24
    CPY #$26
    BEQ loc_13BA54
    LDA byte_580,Y
    LDY ItemCount
    STA CurrentGame.PureSave.field_20,Y
    CPY #$10
    BCS loc_13BA18
    INY
    STY ItemCount
    BNE loc_13BA18

loc_13BA54:
    LDY ItemCount
    BEQ loc_13BA18
    LDA CurrentGame.PureSave.field_20,Y
    CMP #$A2
    BEQ loc_13BA60
    INY

loc_13BA60:
    LDA #0
    STA CurrentGame.PureSave.field_20,Y
    STA byte_D6
    LDA #$F0
    STA OAM.PosY+4
    JSR sram_read_enable
    JMP loc_13AB41
; End of function sub_13B9E4


; =============== S U B R O U T I N E =======================================


sub_13BA72:
    LDY #$11

loc_13BA74:
    LDA byte_13BAB9,X
    STA byte_580,X
    INX
    DEY
    BNE loc_13BA74
    LDA #0
    STA unk_57E,X
    LDY #5

loc_13BA85:
    STA byte_580,X
    INX
    DEY
    BNE loc_13BA85
    RTS
; End of function sub_13BA72


; =============== S U B R O U T I N E =======================================


sub_13BA8D:
    LDA #$E5
    LDX #$BA    ; BAE5
    JSR sub_13AC44
    LDA #$32
    STA OAM.PosY+4
    LDA #1
    STA OAM.TileID+4
    LDA #0
    STA OAM.Attr+4
    LDA ItemCount
    ASL A
    ASL A
    ASL A
    ADC #$48
    STA OAM.PosX+4
    LDA #$EF
    LDX #$BA    ; BAEF
    STA pCursor
    STX pCursor+1
    RTS
; End of function sub_13BA8D

; ---------------------------------------------------------------------------
    .byte $20, 8, 9
byte_13BAB9:
   .byte $C1, $C2, $C3, $C4, $C5, $C6, $C7, $A0, $C8, $C9
    .byte $CA, $CB, $CC, $CD, $CE, $A0, $C0, $C2, $E1, $E3
    .byte $EB, 1, $CF, $D0, $D1, $D2, $D3, $D4, $D5, $A0, $D6
    .byte $D7, $D8, $D9, $DA, $AE, $A7, $A0, $C0, $C5, $EE
    .byte $E4, $A0, 0
    .byte $20, 9, 5, $21, $20, $74, $20, 8, 9, 0
    CURSOR <$16, 2, 1, 2, $D0, 1, 8, 9, $580>

; =============== S U B R O U T I N E =======================================


sub_13BAF9:
    LDA #4
    LDX #$BB    ; BB04
    STA pCursor
    STX pCursor+1
    JMP cursor_update
; End of function sub_13BAF9

; ---------------------------------------------------------------------------
    CURSOR <1, 1, 0, 0, $C5, $3A, 7, 3, $F0D1>

; =============== S U B R O U T I N E =======================================


sub_13BB0E:
    LDA #$19
    LDX #$BB    ; BB19

loc_13BB12:
    STA pCursor
    STX pCursor+1
    JMP short_cursor_update
; End of function sub_13BB0E

; ---------------------------------------------------------------------------
    CURSOR_SHORT <2, 4, $C, 2, $C8, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


sub_13BB21:
    JSR get_sram_pointer ; Input: A -
    ; Output: Pointer (word) = High $74 Low $40 * A
    CLC
    LDA Pointer
    ADC #$38
    STA PointerTilePack
    LDA Pointer+1
    ADC #0
    STA PointerTilePack+1
    LDA #7
    LDX #9
    LDY #3
    STA byte_70
    STX PosX
    STY PosY
    JMP sub_C6D2
; End of function sub_13BB21


; =============== S U B R O U T I N E =======================================


sub_13BB40:
    LDA #$B
    LDX #7
    LDY #5
    STA byte_70
    STY PosY
    LDY #0

loc_13BB4C:
    STX PosX
    STY CurrentFieldPosition
    LDA (pStr),Y
    STA byte_29
    JSR sub_13BBAF
    LDX #$13
    CPX PosX
    BNE loc_13BB63
    INC PosY
    INC PosY
    LDX #7

loc_13BB63:
    LDY CurrentFieldPosition
    INY
    CPY #8
    BCC loc_13BB4C
    LDA #0
    STA byte_70
    RTS
; End of function sub_13BB40


; =============== S U B R O U T I N E =======================================


sub_13BB6F:
    JSR loc_13B5C4
    JSR sram_write_enable
    LDA #4
    STA byte_6D00
    CLC
    LDA Pointer
    ADC #$38
    STA byte_6D01
    LDA Pointer+1
    ADC #0
    STA byte_6D02
    JMP sram_read_enable
; End of function sub_13BB6F


; =============== S U B R O U T I N E =======================================


sub_13BB8C:
    JSR sub_13BBDF
    LDY #0
    LDA (Pointer),Y
    STA pTileID
    INY
    LDA (Pointer),Y
    STA pTileID+1
    JSR sram_write_enable
    LDY #0

loc_13BB9F:
    LDA (pTileID),Y
    STA unk_6D04,Y
    INY
    CMP #0
    BNE loc_13BB9F
    JSR sram_read_enable
    JMP loc_13AB41
; End of function sub_13BB8C


; =============== S U B R O U T I N E =======================================


sub_13BBAF:
    JSR sub_13BBDF
    LDY #0
    LDA (Pointer),Y
    STA PointerTilePack
    INY
    LDA (Pointer),Y
    STA PointerTilePack+1
    JSR sub_C6D2
    JMP loc_13AB41
; End of function sub_13BBAF


; =============== S U B R O U T I N E =======================================


sub_13BBC3:
    JSR sub_13BBDF
    LDY #6
    LDA (Pointer),Y
    STA word_2A
    INY
    LDA (Pointer),Y
    STA word_2A+1
    JMP loc_13AB41
; End of function sub_13BBC3


; =============== S U B R O U T I N E =======================================


sub_13BBD4:
    JSR sub_13BBDF
    LDY #2
    JSR loc_E6A9
    JMP loc_13AB41
; End of function sub_13BBD4


; =============== S U B R O U T I N E =======================================


sub_13BBDF:
    JSR sub_13BBF0

loc_13BBE2:
    CLC
    LDA Pointer
    ADC #0
    STA Pointer
    LDA Pointer+1
    ADC #$98
    STA Pointer+1
    RTS
; End of function sub_13BBDF


; =============== S U B R O U T I N E =======================================


sub_13BBF0:
    LDA byte_29

loc_13BBF2:
    STA Pointer
    LDA #0
    ASL Pointer
    ROL A
    ASL Pointer
    ROL A
    ASL Pointer
    ROL A
    STA Pointer+1
    JMP sub_DE8B
; End of function sub_13BBF0


; =============== S U B R O U T I N E =======================================


sub_13BC04:
    JSR sub_FD4F
    JMP sub_C3D5
; End of function sub_13BC04


; =============== S U B R O U T I N E =======================================


sub_13BC0A:
    LDA PointerTilePack
    PHA
    LDA byte_73
    PHA
    JSR sub_C3A0
    PLA
    STA byte_73
    PLA
    STA PointerTilePack
    LDA #0
    STA byte_2D
    LDX #8
    LDY #$13
    STX PosX
    STY PosY
    JMP loc_13AB41
; End of function sub_13BC0A


; =============== S U B R O U T I N E =======================================


sub_13BC28:
    LDA PosX
    PHA
    LDA PosY
    PHA
    JSR sub_C3DF
    PLA
    STA PosY
    PLA
    STA PosX
    JMP loc_13AB41
; End of function sub_13BC28


; =============== S U B R O U T I N E =======================================


sub_13BC3A:
    LDA AddrForJmp
    AND #$3F
    STA CursorMode
    LDA AddrForJmp
    AND #$C0
    ASL A
    ROL A
    ROL A
    ADC #$28
    STA AddrForJmp
    LDA byte_29
    JSR sub_13B058
    BCS @exit
    TYA
    ADC #$20
    STA FieldPosition
    BCC loc_13BC5E

@exit:

    RTS
; ---------------------------------------------------------------------------

loc_13BC5A:
    LDA #0
    STA CursorMode

loc_13BC5E:
    JSR loc_13B5C4
    LDA Pointer
    LDX Pointer+1
    STA pDist
    STX pDist+1
    LDY AddrForJmp
    LDA (pDist),Y
    JSR loc_13BBF2
    JSR loc_13BBE2
    LDY #3
    LDA (Pointer),Y
    AND #$3F
    STA AddrForJmp+1
    JSR sram_write_enable
    LDX AddrForJmp
    LDA loc_13BCC0,X
    BMI loc_13BCA6
    TAY
    SEC
    LDA (pDist),Y
    SBC AddrForJmp+1
    STA (pDist),Y
    INY
    LDA (pDist),Y
    SBC #0
    STA (pDist),Y
    DEY
    CLC
    LDA (pDist),Y
    ADC CursorMode
    STA (pDist),Y
    INY
    LDA (pDist),Y
    ADC #0
    STA (pDist),Y
    JMP loc_13BCB8
; ---------------------------------------------------------------------------

loc_13BCA6:
    LDY #2
    LDA AddrForJmp+1
    ASL A
    EOR #$FF
    AND (pDist),Y
    STA (pDist),Y
    LDA CursorMode
    ASL A
    ORA (pDist),Y
    STA (pDist),Y

loc_13BCB8:
    LDA CursorMode
    BEQ loc_13BCE0
    LDY FieldPosition
    LDA (pDist),Y

loc_13BCC0:
    TAX
    LDY AddrForJmp
    LDA (pDist),Y
    BNE loc_13BCDB
    LDY FieldPosition
    BNE loc_13BCD1

loc_13BCCB:
    LDA (pDist),Y
    DEY
    STA (pDist),Y
    INY

loc_13BCD1:
    INY
    CPY #$28 ; '('
    BCC loc_13BCCB
    DEY
    LDA #0
    BEQ loc_13BCDD

loc_13BCDB:
    LDY FieldPosition

loc_13BCDD:
    STA (pDist),Y
    TXA

loc_13BCE0:
    LDY AddrForJmp
    STA (pDist),Y
    CLC
    JMP sram_read_enable
; End of function sub_13BC3A

; ---------------------------------------------------------------------------
    .byte 7, 9, 9, $FF

; =============== S U B R O U T I N E =======================================

; Executes a subroutine from RoutineTable at the offset stored in FuncID, whose value is reset.

routine_selector:
    LDA FuncID  ; ID from table BANK13:BCFD (RoutineTable)
    ASL A
    TAX
    LDA #0
    STA FuncID  ; ID from table BANK13:BCFD (RoutineTable)
    LDA RoutineTable+1,X
    PHA
    LDA RoutineTable,X
    PHA
    RTS
; End of function routine_selector

; ---------------------------------------------------------------------------
RoutineTable:
  .word darken_palette-1     ; routine_selector+8↑r
    .word sub_13BD0D-1, check_copyright-1, sub_13BD31-1, sub_13BD5C-1
    .word sub_13BDD9-1, loc_13BD34-1, sub_13BE0F-1

; =============== S U B R O U T I N E =======================================


sub_13BD0D:
    LDA #8
    STA apu_7F0
    JMP darken_palette
; End of function sub_13BD0D


; =============== S U B R O U T I N E =======================================


check_copyright:
   LDA #$10
    STA byte_7F1
    LDA #$34 ; '4'
    JSR sub_EE21
    LDA CopyrightViolation
    BEQ @no_violation
    LDA #$19
    LDX #$F7
    LDY #$A1    ; BANK19:A1F8
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte

@no_violation:

    LDX #$3C ; '<'
    JMP wait_frames ; wait for a few frames
; End of function check_copyright
   ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13BD31:
    JSR sub_13BD3B

loc_13BD34:
    LDA #$20
    STA byte_20
    JMP darken_palette
; End of function sub_13BD31


; =============== S U B R O U T I N E =======================================


sub_13BD3B:
    JSR store_palettes
    LDA #2
    STA apu_7F0
    LDA #$14

loc_13BD45:
    PHA
    LDA #LIGHTEST_PURPLE
    JSR one_color_palettes
    LDA #LIGHTEST_YELLOW
    JSR one_color_palettes
    LDA #WHITE
    JSR one_color_palettes
    PLA
    SEC
    SBC #1
    BNE loc_13BD45
    RTS
; End of function sub_13BD3B


; =============== S U B R O U T I N E =======================================


sub_13BD5C:
    LDA #9
    STA apu_7F0
    LDA #$11
    JSR sub_EE21
    JSR clear_oam_sprite
    JSR home_camera
    LDA #$5D
    LDX #2
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    JSR sub_CE6D
    LDA #$5C
    LDX #2
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA #$1F
    LDX #$BE    ; BE1F
    STA Pointer
    STX Pointer+1
    JSR sub_E087
    LDA #$2F
    LDX #$BE    ; BE2F
    JSR copy_palettes
    LDY #$16

loc_13BD91:
    TYA
    PHA
    LDX #8

loc_13BD95:
    JSR wait_nmi_processed
    LDA #1
    STA SpriteTable.field_5,X
    LDA SpriteTable.PosY,X
    AND #$1F
    BNE loc_13BDAA
    LDA #$E8
    LDY #$FF
    BNE loc_13BDAE

loc_13BDAA:
    LDA #8
    LDY #0

loc_13BDAE:
    CLC
    ADC SpriteTable.pFrame,X
    STA SpriteTable.pFrame,X
    TYA
    ADC SpriteTable.pFrame+1,X
    STA SpriteTable.pFrame+1,X
    CLC
    TXA
    ADC #8
    TAX
    CPX #$28
    BCC loc_13BD95
    LDA #8
    STA NMIFlags
    PLA
    TAY
    DEY
    BNE loc_13BD91
    JSR clear_oam_sprite
    JSR darken_palette
    LDX #$5A
    JMP wait_frames ; wait for a few frames
; End of function sub_13BD5C    ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13BDD9:
    LDA #$11
    JSR sub_EE0E
    LDA #3
    STA apu_7F0
    JSR sub_FDC0
    LDX #8
    LDY #7

loc_13BDEA:
    LDA byte_13BE4F,Y
    STA SpriteTable.field_5,X
    DEY
    LDA byte_13BE4F,Y
    STA SpriteTable.field_4,X
    CLC
    TXA
    ADC #8
    TAX
    DEY
    BPL loc_13BDEA
    JSR bank14_8000
    JSR loc_149641
    LDA #$11
    JSR one_color_palettes_save
    LDX #$5A ; 'Z'
    JMP wait_frames ; wait for a few frames
; End of function sub_13BDD9    ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13BE0F:
    JSR loc_13BD34
    LDA #$FF
    JSR sub_FD28
    LDX #$5A
    JSR wait_frames ; wait for a few frames
    ; input: X - number of frames
    JMP sub_13B561
; End of function sub_13BE0F

; ---------------------------------------------------------------------------
    .byte $60, $E0, $40, $18, $68, $C8, $40, 0, $58, $B0, $40
    .byte 8, $60, $98, $40, $10
    .byte BLACK, LIGHT_INDIGO, LIGHTEST_GRAY, MEDIUM_BLUE; PALETTE0
    .byte BLACK, MEDIUM_GRAY, MEDIUM_GREEN, MEDIUM_BLUE; PALETTE1
    .byte BLACK, WHITE, DARK_GRAY, MEDIUM_BLUE; PALETTE2
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE3
    .byte BLACK, BLACK, DARK_BLUE, LIGHTEST_BLUE; PALETTE0
    .byte BLACK, BLACK, MEDIUM_VIOLET, LIGHTEST_INDIGO; PALETTE1
    .byte BLACK, BLACK, LIGHT_INDIGO, LIGHTEST_INDIGO; PALETTE2
    .byte BLACK, BLACK, MEDIUM_BLUE, LIGHTEST_INDIGO; PALETTE3
byte_13BE4F:
   .byte $FE, $FF, 2, $FF, $FF, $FE, 1, $FE

; =============== S U B R O U T I N E =======================================


make_save:

    LDA CurrentPlayer.PureSave.GameNumber
    JSR get_dist_save_addr ; Input: A - destination block number
    ; Output: returns the destination address to pDist
    ;     returns $7400 - source address to pTileID
    JSR check_sum   ; Output: return check sum to Pointer
    JSR sram_write_enable
    SEC
    LDY #0
    LDA (pTileID),Y
    SBC Pointer
    STA (pTileID),Y
    INY
    LDA (pTileID),Y
    SBC Pointer+1
    STA (pTileID),Y
    LDX #3

@next_block:
    LDY #0

@next_byte:
    LDA (pTileID),Y
    STA (pDist),Y
    INY
    BNE @next_byte
    INC pTileID+1
    INC pDist+1
    DEX
    BNE @next_block
    JMP sram_read_enable
; End of function make_save


; =============== S U B R O U T I N E =======================================


get_save_block:
    ; erase_dialog↓P ...
    JSR get_dist_save_addr ; Input: A - destination block number
    ; Output: returns the destination address to pDist
    ;     returns $7400 - source address to pTileID
    JSR sram_write_enable
    LDX #3

@next_block:
    LDY #0

@next_byte:
    LDA (pDist),Y   ; copy SRAM $7700-$79FF (game 1), $7A00-$7CFF (game 2), $7D00-$7FFF (game 3) to $7400-$76FF
    STA (pTileID),Y
    INY
    BNE @next_byte
    INC pDist+1
    INC pTileID+1
    DEX
    BNE @next_block
    JSR sram_read_enable
    JSR check_sum   ; Output: return check sum to Pointer
    LDA CurrentPlayer.PureSave.GameNumber
    AND #$F0
    CMP #$B0
    BNE @exit
    LDA CurrentPlayer.PureSave.Active
    CMP #$E9
    BNE @exit
    LDA Pointer
    ORA Pointer+1

@exit:
    RTS
; End of function get_save_block


; =============== S U B R O U T I N E =======================================

; Input: A - destination block number
; Output: returns the destination address to pDist
;     returns $7400 - source address to pTileID

get_dist_save_addr:
    AND #7
    STA pDist+1
    ASL A
    ADC pDist+1
    ADC #$77
    STA pDist+1
    LDA #0
    STA pDist

get_active_save:
    LDA #0      ; returns the address $7400 in pTileID
    LDX #$74
    STA pTileID
    STX pTileID+1
    RTS
; End of function get_dist_save_addr


; =============== S U B R O U T I N E =======================================

; Output: return check sum to Pointer

check_sum:
    JSR get_active_save ; returns the address $7400 in pTileID
    LDA #0
    STA Pointer
    STA Pointer+1
    LDX #3

@next_block:
    LDY #0      ; APU program ???

@next_word:
    CLC
    LDA (pTileID),Y
    ADC Pointer
    STA Pointer
    INY
    LDA (pTileID),Y
    ADC Pointer+1
    STA Pointer+1
    INY
    BNE @next_word
    INC pTileID+1
    DEX
    BNE @next_block
    JMP get_active_save ; returns the address $7400 in pTileID
; End of function check_sum

; ---------------------------------------------------------------------------
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF
; end of 'BANK13'

; ===========================================================================

; Segment type:
Pure code
    ;.segment BANK14
    * =  $8000
    .byte $1F, 0, 0, 0, 0, 0, 0
    .byte 2, $16, 2, $17, $1F, $1C, $17, $1F, $1F, $1F, $1C
    .byte $1B, $1F, $1F, $1D, 8, $1F, 6, $13, 4, 6, 2, 0, $10
    .byte 6, 6, $15, $17, $1D, 4, 8, 1, 2, $1F, 0, $17, 6
    .byte $15, 4, $19, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6, $17
    .byte 6, $15, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, $1F, 2, $16, 2, $17, $1F, $1C, $17, $1F
    .byte $1F, $1C, $1B, $1F, $1F, $1D, 8, 2, 4, $13, $1E
    .byte $17, $1F, $16, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6
    .byte $1B, $1C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6, 9, 6, $24
    .byte $22, $1D, $1B, $1E, $17, $28, $21, $24, $22, $22
    .byte $24, $21, $28, 9, 9, 6, 6, $17, $1E, $1B, $1D, $17
    .byte $1E, $1B, $1D, $1F, $17, $1F, $1F, $1F, $1F, $15
    .byte 2, $15, $1F, $C, $17, 6, 6, 4, 0, 1, 9, 9, $13, $1F
    .byte $1C, 0, 0, 0, 0, 0, $1F, $1C, $1D, $1F, $1B, $1F
    .byte $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $17
    .byte $1F, $1F, $1C, $13, $1F, $1F, $1F, $13, $1F, $1C
    .byte $13, $1F, $1F, $1D, $1C, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $13, $1F
    .byte $1F, $1F, 0, $1F, 6, 4, $1F, $13, $17, $13, $1F
    .byte $1F, $1F, $1F, $1F, 6, $1F, $1F, $1F, 6, $15, 4
    .byte 8, 1, 2, 0, $10, $1F, 0, 0, $1F, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, $1F, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, $17, $1F, $1F, $1C, $13, $1F
    .byte $1F, $1F, $13, $1F, $1C, $13, $1F, $1F, $1D, $1C
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $19, 0, 0, $1F
    .byte $1D, 8, 1, $19, $19, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $19, $13, $1F, $1F, $1F, $19, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $19, $19, $11, $13, $1F
    .byte $1F, $17, $1F, $1F, $1F, $1F, $13, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, 6, $1F, 6, 4, $19, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1D, $13, $1F, 6, $1F, 0, 0, 0, 0, $1F, 0, $10
    .byte 0, 0, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte $17, $1F, $1F, $1C, $13, $1F, $1F, $1F, $13, $1F
    .byte $1C, $13, $1F, $1F, $1D, $1C, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, $1F
    .byte 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
    .byte $1F, $16, $17, $1F, $13, $1F, $1F, $1F, $1F, $13
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $16, $16, $1B, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $16
    .byte $19, 6, $17, 2, $15, $17, 0, 2, $17, 2, $15, $17
    .byte 0, 2, $15, $1F, 2, $17, $13, 0, $1C, $1F, $1F, $17
    .byte $15, 6, 4, 2, 8, $1E, $1F, $17, $1D, 6, 4, $15, $1F
    .byte $1F, $1F, $1F, $1F, 6, $1E, 6, $22, $28, $17, $1E
    .byte $28, $1E, $1F, $28, $28, 9, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, $1F, $17, $1D, $1F, $1F, $1F, $1F, $16, $1F
    .byte 0, $1F, 0, $16, $1F, $16, $16, $16, $16, $16, $16
    .byte $16, 0, 0, 9, $13, $1C, $13, $1C, $13, $1C, $1D
    .byte 0, 0, $1F, 6, $1F, 0, 0, 0, 0, 0, 0, $16, $19, 6
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F
    .byte 0, 0, $1F, $1E, 0, 0
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B, $1F
    .byte $1D, $19, 8, $1C, $1F, $1F, $1F, $17, $1F, $1F, $1F
    .byte $1F, $11, $1B, $1F, $19, $1F, $1F, $1F, $1F, $1F
    .byte 2, 6, 6, $13, $1F, $17, $1F, $1F, $1F, $1B, $1D
    .byte $1F, 0, $16, $19, 6, $1F, $1F, $1F, $1F, $1F, 0
    .byte $1F, $17, 3, $1F, 0, 0, $1F, $1F, 0, 0, $17, $1F
    .byte $1F, $17, 7, 4, 6, 2, $17, $1E, $1F, 9, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, 9, $1F, 9, $1F
    .byte $1F, $15, $1A, $24, $22, 2, 4, $1E, $17, $1F, 6
    .byte $1F, $1F, 6, $10, $18, $11, 2, 4, 1, 8, $22, $24
    .byte $21, $28, $1A, $15, 6, 6, $18, $11, $14, $12, $24
    .byte $22, $17, $1E, $1A, $15, $1D, $1B, $19, $19, $1F
    .byte $19, 1, 8, 9, 9, $1D, $1B, $1B, $1D, 1, 8, $1A, $15
    .byte $12, $1F, $1F, $1F, $1F, $1D, $1B, $1D, $1B, $13
    .byte $1C, $1D, $1B, 9, 9, $1B, $1D, $1F, $1B, $1F, $1D
    .byte $1C, $1B, 0, 0, 0, 0, 0, $1F, $1F, $1F, $1C, 0, $B
    .byte $1F, 9, 8, $1A, $16, $17, 0, 0, 0, 2, 6, 6, 6, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $17, 0, 0, 0, $16
    .byte 6, $19, $1F, $15, $1A, $24, $22, 2, 4, $1E, $17
    .byte $1F, 6, $1F, $1F, 6, $10, $1E, $17, 2, 4, 1, 8, $22
    .byte $24, $21, $28, $1E, $17, 6, 6, $18, $11, $14, $12
    .byte $24, $22, $17, $1E, $1A, $15, $1D, $1B, $1D, $1B
    .byte $1F, 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D, $1E, $17
    .byte 6, 0, 9, 0, $C0, $C0, $C0, 0, $C6, $10, $16, 0, $17
    .byte $1E, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 6, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $C0, 6, $1F, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
    .byte $1F, $1F, $1F, $1D, $1B, $24, $22, $1D, $1B, $1E
    .byte $17, $1F, $1F, $1F, $1F, 6, 9, 2, 4, 1, 8, $22, $24
    .byte $21, $28, 6, 6, 9, 9, $1D, $1B, $24, $22, $17, $1E
    .byte $1B, $1D, $1D, $1B, $1F, 9, 1, 8, 9, 9, $1D, $1B
    .byte $1B, $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $24, $22, $1E, $17, $1F, $1F, $1F
    .byte 6, $24, $22, $17, $1E, $1D, 0, 0, 0, 0, 0, $1F, $1F
    .byte $1F, $1F, $1F, $1D, $1D, 0, 0, 0, 0, 0, 4, 0, 0
    .byte 0, 0, 0, 0, 0, 0, $1F, $1F, 2, $17, $1F, $1C, $17
    .byte $1F, $1F, $1E, $1F, $1D, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, $1F
    .byte $1F, $1F, $17, $1F
    .byte $1F, $1F, 2, $1F, $1D, 8, $1F, $1F, $1F, $1F, $13
    .byte $1F, $1F, $1D, $1F, 8, $1F, $1F, $1F, $1F, $1F, $1F
    .byte 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40, $40, 0, 0, 0
    .byte 0, $40, $40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40, 0
    .byte 0, 0, 0, 0, 0, 0, 0, $40, 0, 0, 0, 0, 0, 0, $10
    .byte $10, $40, $40, $40, $40, $40, $40, $40, $40, $40
    .byte $40, $40, $40, $40, $17, $42, $1F, $44, 6, $14, $1E
    .byte $1D, $48, $40, $40, $40, $40, $40, $40, $40, $40
    .byte $44, $55, $42, $40, $40, $40, 6, $1F, 2, 4, 2, $17
    .byte $1C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, $1F, $17, $1F, $1D, $1D, $1D, $1D, $1D
    .byte $1D, $1D, $1F, $1E, $1E, $17, $1E, $1B, $1F, $1D
    .byte $1B, $1F, $1D, $19, $1B, $1D, $17, $1E, 0, 0, 0
    .byte 0, 0, 0, $40, $40, $40, $40, $40, $40, $1F, 0, $17
    .byte 6, 0, 0, 0, $17, $1D, $1D, $17, $1F, $1E, $16, $17
    .byte $1E, $1B, $1D, $1B, $1F, $1D, $19, $1B, $1D, $17
    .byte $1E, 0, 0, 0, 6, $40, $1F, $1F, $1F, $1F, $1F, 0
    .byte $1F, 0, $1D, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0, $16, $19, 0, 0, 0
    .byte 0, 0, $1F, $1F, $19, 0, $1F, $1F, $17, $21, $1D
    .byte $1F, 0, 0, 0, 0, 0, 0, 0, $13, 0, $17, 0, $1D, $1C
    .byte 0, 0, 9, 0, 6, 0, $1F, $1F, $1F, $19, $19, $1B, 0
    .byte 0, $1C, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 4, 0, 1, 9
    .byte 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 1, $13, $1D, 0, $1C, 0, $16, $1D, $1F
    .byte $19, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 6
    .byte 9, 0, $1F, 0, $16, 0, $13, $1F, $1C
    .byte $13, $1C, $1F, $1F, $17, $1E, $16, $1F, $1F, $19
    .byte $16, $19, $1F, $13, $1F, $1F, $1F, 8, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $17, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1E, 6, $1F, $1F, $1F, $1E, $17, 6, $1F
    .byte 6, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte $1F, $16, $12, $1F, $13, $1F, $1C, 0, 0, 6, 9, 1
    .byte 9, $1F, $1F, $F, $F, $16, $19, 6, 9, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, $1F, 4, $1E, $1E, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1B, $1F, 1, $1B, 0, 2, $17, $17, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1D
    .byte 8, $1B, $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, 6, 6, 6, 6, 0, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1B
    .byte 1, $1D, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, $1F, $C0, 0
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $17, $1E, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1B, $1F, 1, $1B, 1, $1B, $1D, 8, $1D, $1B
    .byte $1F, $1F, 0, $1F, $1F, $1F, $1F, 8, $1F, $1F, $1F
    .byte $1F, $1F, $1D, $1F, $1F, $1F, $1F, $1F, $1F, 0, 1
    .byte 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1B, $1D, $28, $21
    .byte $1D, $1B, $1D, $1B, $24, $22, $1D, $1B, $1E, $17
    .byte $1F, $1F, $1F, $1F, 6, 9, $18, $11, 2, 4, 1, 8, $22
    .byte $24, $21, $28, $1E, $17, 6, 6, 9, 9, $1D, $1B, $24
    .byte $22, $17, $1E, $1B, $1D, $1D, $1B, $1D, $1B, $1F
    .byte 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D, $1F, $1F, $1E
    .byte $17, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, 9, 9, 9, 9, $1F, $1B
    .byte $1F, $1F, $1D, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, $24, $22, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, 9, 9, $1D, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, $1F, $16, $19, $1F, $1F, $1F, $1F, $1F, 0
    .byte $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1D, 8
    .byte 1, $1B, $1F, $1F, $1F, $1D, $1B, 9, 9, $1F, $1F
    .byte $1F, 6, 9, 2, 6, 1, 9, 6, 9, $1F, $1F, $1B, $1F
    .byte 1, $1B, $1F, $1F, $1F, $1D, $1D, 8, $F, $1F, $1F
    .byte $F, 2, $87, $8D, 2, $F, $1F, $1F, $1E, $F, $F, $B
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1B, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F
    .byte $1F, $1D, 8, 1, $1B, $1F
    .byte $1F, $1F, $1F, 0, $1F, 0, $1F, $1F, $1F, $1B, $1F
    .byte 1, $1B, 0, 1, 0, $1D, $1B, $1F, $1F, 0, 0, 8, 1
    .byte 0, 0, $1F, $1F, $1F, $1F, $1B, $1F, 1, $1B, $1F
    .byte $1F, 0, $1D, 6, 6, $1F, 9, 9, 9, $1F, $28, $1F, 0
    .byte 0, 0, $23, 0, 0, 8, 1, $1B, $1F, 1, $1B, $1F, $2C
    .byte $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1D, $1B, 8
    .byte 1, $1F, $17, $1D, 2, $17, $1D, 4, $1F, $1F, $1D
    .byte 8, $1F, $1D, $1B, $1D, 1, $1B, $1B, $1F, 1, $1B
    .byte $1D, 8, $1F, $1F, 0, $1F, 6, 6, $22, $28, 0, 0, $1F
    .byte $1D, $1F, $1D, 8, $1F, $1D, $1F, $1D, $1F, $1F, $E
    .byte 9, 9, $1D, $1B, $1F, $1F, $10, $1D, $1F, $1D, $1D
    .byte $1D, $1F, 6, 7, 9, 9, $17, $1F, $1B, $1D, $1F, $1F
    .byte $1E, $E, $E, 6, $1F, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, $1F, $1B, 1, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, 1, 9, $1F, 9, $1F, 9, 6, 9, 6, 6, 9, 9
    .byte 6, 9, $28, $10, $21, $24, 0, 1, $1B, $1B, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1B, $1B, 8, $1D, $1D, $1B
    .byte $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 7, 2, 7
    .byte $1F, 1, 9, 9, $1F, 9, $1F, $1F, $1F, $1F, $1F, $1B
    .byte $1D, $1B, $1D, $1D, 9, $1B, 0, $1F, $1F, $1F, $1F
    .byte 6, $1F, 9, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, $1F, $1D, 8, 1, $1B, $1F, $1F
    .byte $1F, 1, $1B, $1B, $1F, $1F, $1D, 8, $1F, $1D, $1D
    .byte 8, $1F, $1F, $1F, $1F, 9, 9, 9, 6, 6, $1F, $16, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B, $1F
    .byte $1F, 0, $2C, $23, $1D, 7, $1F, $1D, $E, 9, 8, $1F
    .byte $1F, $17, $1E, $1F, $1F, 4, 8, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, $1F, $1F, $19, $1F, $1F, $15, $1A
    .byte $24, $22, 2, 4, $1E, $17, $1F, 6, $1F, $1F, 6, $10
    .byte $11, 2, 4, 1, 8, $22, $24, $28, $1A, $15, 6, 6, $18
    .byte $11, $14, $12, $24, $22, $17, $1F, $1A, $15, $1D
    .byte $19, $1F, 8, $1D, 1, 8, $1A, $15, $12, $1F, $1F
    .byte $1F, $1F, $1D, $1B, $1D, $1B, $13, $1C, $1D, 9, 9
    .byte $1B, $1D, $1B, $1D, $1A, 6, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
    .byte $1F, $1F, $1F, $1F, 9, $1B, $1B, $17, 9, $13, $1E
    .byte 6, 0, 6, $1B, 9, 0, 0, $1B, $1D, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, $1F, $1F
    .byte $1F, $1D, $1B, $24, $22, $5D, $5B, $1E, $17, $1F
    .byte $5F, $1F, $1F, 6, 9, 2, 4, 1, 8, $22, $24, $21, $28
    .byte 2, 4, 9, 9, $5D, $5B, $24, $22, $17, $1E, $5B, $5D
    .byte $1D, $1B, $1F, 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D
    .byte $1E, $17, $24, $22, $17, $1E, $1D, $1B, $28, $21
    .byte $1D, $1B, 0, $1F, $1F, $5F, $5F, $5F, $5F, $1D, $1B
    .byte $1D, $1B, $1D, $1B, $1F, $1F, 0, $1F, $5D, $49, 8
    .byte 6, 6, 0, 4, 0, $1B, $24, $22, $1F, 6, 6, $24, $22
    .byte $17, $1E, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B
    .byte $1D, $1B, $19, $19, $1F, 0, $5F, $5F, $5F, $5F, $5F
    .byte $5F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 3, 1, $1F
    .byte 9, $1F, $1F, $17, $1B, 9, 9, $1F, $1B, $1F, 1, $1B
    .byte 1, $1B, $1F, 0, 0, 8, $1F, $1F, 9, 0, 0, 6, 9, 6
    .byte 9, $1D, $1D, $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, $1F, 0, 1, $1B, $1B, $1F, $1F, $1B
    .byte $1F, 2, $1F, $19, $1F, $1F, 4, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
    .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte $F, 0, $10, $30, $F, 0, $10
    .byte $30, $F, 0, $10, $30, 0, 0, $40, $30, $F, $3A, $18
    .byte $38, $F, $3A, $10, $20, $F, $3A, $25, $1A, 2, $3A
    .byte $4B, $12, $F, $20, $20, $10, $F, $20, $20, $10, $F
    .byte $20, $20, $28, 9, $20, $40, $3B, $F, $38, $18, $1C
    .byte $F, $38, $10, $3B, $F, $38, $25, $1A, $1A, $38, $40
    .byte 0, $F, $38, $18, $16, $F, $10, $30, $21, $F, $3A
    .byte $28, $21, $17, $38, $40, $3C, $F, $39, 0, 0, $F
    .byte $39, $20, $10, $F, $39, $30, $2B, $1B, $39, $40
    .byte $3B, $F, $38, $18, $1C, $F, $38, $10, $3B, $F, $38
    .byte $25, $1A, $1A, $38, $40, 0, $F, $38, $18, $21, $F
    .byte $10, $30, $2A, $F, 0, $10, $30, $14, $10, $40, $21
    .byte $F, $38, $18, 0, $F, $38, $24, $2B, $F, $12, $31
    .byte 2, $1A, $21, $40, 0, $F, $38, $18, $1C, $F, $38
    .byte $10, $3B, $F, $38, $25, $1A, $1A, $38, $40, 0, $F
    .byte $10, 0, 8, $F, $10, 0, $16, $F, $10, 0, $12, $13
    .byte 0, $66, $30, $F, $10, 0, 8, $F, $10, 0, $16, $F
    .byte $10, 0, $12, $13, 0, $41, $30, $F, $10, 0, 8, $F
    .byte $10, 0, $16, $F, $10, 0, $12, $13, 0, $40, $30, $F
    .byte $10, 0, 8, $F, $10, 0, $16, $F, $10, 0, $12, $13
    .byte 0, $40, $30, $F, $10, 0, 8, $F, $10, 0, $16, $F
    .byte $10, 0, $12, $13, 0, $40, $30, $F, $10, 0, 8, $F
    .byte $10, 0, $16, $F, $10, 0, $12, $13, 0, $40, $30, $F
    .byte $10, 0, 8, $F, $10, 0, $16, $F, $10, 0, $12, $13
    .byte 0, $40, $30, $F, 0, $10, $30, $F, 0, $10, $30, $F
    .byte 0, $10, $30, 0, 0, $40, $30, $F, $38, $18, $17, $F
    .byte $38, $18, $28, $F, $38, 0, $27, $A, $38, $76, $22
    .byte $F, $3B, $18, $38, $F, $28, $18, $38, $F, $33, $25
    .byte $38, $16, $26, $40, 0, $F, $F, $17, $27, $F, $F
    .byte $17, $27, $F, $F, $17, $27, $E, $18, $6E, $28, $F
    .byte 4, $15, $25, $F, $38, $18, $21, $F, $38, $18, $28
    .byte $1D, 4, $4C, $34, $F, $34, $30, $24, $F, $34, $30
    .byte $35, $F, $2B, $35, $15, $F, $34, 0, $3B, $F, $37
    .byte $35, $17, $F, $37, $28, $17, $F, $37, $3A, $17, $18
    .byte $37, $40, $17, $F, $3B, $34, $2B, $F, $3B, $28, $2B
    .byte $F, $3B, $29, $2B, $18, $3B, $40, $2B, $F, $3B, $15
    .byte $1B, $F, $38, $15, $1B, $F, $3B, $B, $1B, $18, $3B
    .byte $40, $1B, $F, $3A, $18, $38, $F, $3A, 0, $20, $F
    .byte $3A, $25, $1A, $B, $3A, $42, $12, $F, 4, 3, $23
    .byte $F, 4, $27, $30, $F, 4, 5, $30, $1A, 4, $40, $34
    .byte $F, $F, $21, $30, $F, $12, $12, $21, $F, $12, $21
    .byte $30, $E, $17, $6E, $30, $F, $10, $33, $22, $F, $10
    .byte 3, $22, $F, 0, $10, $30, 0, 0, $40, $30, $F, $37
    .byte $18, $31, $F, $37, $10, $3B, $F, $37, $30, $24, $1A
    .byte $37, $40, $27, $F, 0, $10, $30, $F, 0, $10, $30
    .byte $F, 0, $10, $30, 0, 0, $40, $30, 1, 1, 1, 1, 1, 1
    .byte 1
    .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 5, 7, 8, 9, $B, 0
    .byte 0, 3, 5, 7, 8, 9, $B, 0, 0, $C, $D, $E, $F, $10
    .byte $11, $48, 0, $C, $D, $E, $F, $10, $11, $48, 0, $12
    .byte $13, $14, $15, $16, $17, $18, $19, $12, $13, $14
    .byte $15, $16, $17, $18, $19, 4, 5, 6, 7, $B, $1B, $1C
    .byte 0, 4, 5, 6, 7, $B, $1B, $1C, 0, $1C, $1D, $1E, $1F
    .byte $30, $31, $32, $34, $35, $36, $38, $3A, $3B, 0, 0
    .byte 0, $A, $1C, $1D, $31, $32, $3C, $3D, $3E, $3F, $40
    .byte $9C, 0, 0, 0, 0, 0, $1C, $1E, $20, $21, $30, $32
    .byte $33, $36, $37, $47, 0, 0, 0, 0, 0, 0, $55, $56, $57
    .byte $58, $59, 0, 0, 0, $55, $56, $57, $58, $59, 0, 0
    .byte 0, $47, $5A, $5B, $5C, $5D, $61, $62, $63, $64, $66
    .byte $69, 0, 0, 0, 0, 0, $5C, $5E, $61, $64, $65, $67
    .byte $68, $69, $6A, $6B, $6C, $6D, $6E, 0, 0, 0, $5A
    .byte $5B, $70, $71, $72, $73, $75, $76, $77, $78, $79
    .byte 0, 0, 0, 0, 0, $5F, $60, $61, $66, $69, $73, $74
    .byte $7A, $7B, $7C, $7D, 0, 0, 0, 0, 0, $49, $4A, $4B
    .byte $4C, $4D, $4E, $4F, $50, $51, $52, $53, $54, $A3
    .byte 0, 0, 0, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
    .byte $51, $52, $53, $54, $A3, 0, 0, 0, $49, $4A, $4B
    .byte $4C, $4D, $4E, $4F, $50, $51, $A3, 0, 0, 0, 0, 0
    .byte 0, 1, 2, 6, $1A, 1, 2, 6, $1A, 1, 2, 6, $1A, 1, 2
    .byte 6, $1A, $41, $42, $43, $44, $45, $46, 0, 0, $41
    .byte $42, $43, $44, $45, $46, 0, 0, $41, $42, $43, $44
    .byte $45, $46, 0, 0, $41, $42, $43, $44, $45, $46, 0
    .byte 0, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50, $51, $52
    .byte $53, $54, $A3, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1
    .byte 1, 1, 1, 1, 1, 1, 1, 2, $1E, 2, $1E, 2, $1E, 2, $1E
    .byte 2, $1E, 2, $1E, 2, $1E, 2, $1E, $81, $82, $83, $84
    .byte $85, $86, $87, $88, $89, $8A, $8B, 0, 0, 0, 0, 0
    .byte $92, $93, $94, $95, $96, $97, $98, $99, $9A, 0, 0
    .byte 0, 0, 0, 0, 0, $7E, $7F, $80, $82, $7E, $7F, $80
    .byte $82, $7E, $7F, $80, $82, $7E, $7F, $80, $82, $8C
    .byte $8D, $8E, 0, $8C, $8D, $8E, 0, $8C, $8D, $8E, 0
    .byte $8C, $8D, $8E, 0, $22, $23, $24, $25, $26, $27, $28
    .byte $29, $2B, $2C, $2D, 0, 0, 0, 0, 0, $2A, $2B, $2C
    .byte $2D, $A1, 0, 0, 0, $2A, $2B, $2C, $2D, $A1, 0, 0
    .byte 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

; =============== S U B R O U T I N E =======================================


sub_149516:
    LDA byte_48
    ORA byte_20
    ORA byte_21
    ORA byte_22
    ORA byte_23
    ORA byte_25
    BNE locret_149538
    BIT byte_A0
    BMI locret_149538
    JSR loc_1495D3
    LDX byte_15
    LDA byte_149593,X

loc_149530:
    BNE loc_149539
    STA byte_24

loc_149534:
    LDA #0
    STA byte_48

locret_149538:

    RTS
; ---------------------------------------------------------------------------

loc_149539:
    TAY
    AND #7
    BNE loc_149548
    TYA
    LSR A
    LSR A
    LSR A
    JSR sub_E0F2
    JMP loc_149530
; ---------------------------------------------------------------------------

loc_149548:
    CLC
    ADC $24
    CMP #9
    BCC loc_149551
    LDA #8

loc_149551:
    TAX
    JSR sub_F1ED
    CMP locret_14958A,X
    BCS loc_149534
    LDX byte_24
    INX
    CPX #3
    BCC loc_149563
    LDX #2

loc_149563:
    STX byte_24
    TYA
    AND #$F8
    STA pDist
    LDA #0
    ASL pDist
    ROL A
    ADC #$92
    STA pDist+1

loc_149573:
    JSR sub_F1ED
    LSR A
    LSR A
    LSR A
    LSR A
    TAY
    LDA (pDist),Y
    BEQ loc_149573
    STA byte_48
    LDA #$19
    LDX #$A6
    LDY #$A4
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte

locret_14958A:
     RTS
; End of function sub_149516

; ---------------------------------------------------------------------------
    .byte $20
    .byte $15
    .byte $10
    .byte  $D
    .byte  $A
    .byte   8
    .byte   6
    .byte   5
byte_149593:
   .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $C, $11, $E8, $26
    .byte $2D, $34, $3D, $43, $4D, $55, $5D, $65, 0, 0, 0
    .byte 0, 0, $6C, $74, $7C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte $E0, 0, 0, $8D, $95, $9C, $A7, 0, $AD, 0, 0, $B5
    .byte $BD, $C5, $CD, 0, 0, $D6, 0, 0, 0, $DC, 0
; ---------------------------------------------------------------------------

loc_1495D3:
    LDX #0
    LDA $7408,X
    BEQ unk_14962A
    JSR $C665
    LDY #1
    LDA ($60),Y
    LSR A
    BCC loc_1495E8
    LDA #7
    BNE loc_1495ED

loc_1495E8:
    LSR A
    BCC unk_14962A
    LDA #7

loc_1495ED:
    STA $64
    CLC
    TXA
    ADC $D5
    AND $64
    BNE unk_14962A
    JSR $FDE7
    SEC
    LDY #$14
    LDA ($60),Y
    SBC #1
    STA $64
    INY
    LDA ($60),Y
; ---------------------------------------------------------------------------
    .byte $E9
    .byte   0
    .byte $85
    .byte $65 ; e
    .byte $90
    .byte  $F
    .byte $A5
    .byte $64 ; d
    .byte   5
    .byte $65 ; e
    .byte $F0
    .byte   9
    .byte $A5
    .byte $65 ; e
    .byte $91
    .byte $60 ; `
    .byte $88
    .byte $A5
    .byte $64 ; d
    .byte $91
    .byte $60 ; `
    .byte $20
    .byte $ED
    .byte $FD
    .byte $8A
    .byte $48 ; H
    .byte $A9
    .byte $16
    .byte $20
    .byte $FE
    .byte $ED
    .byte $20
    .byte $B0
    .byte $EE
    .byte $68 ; h
    .byte $AA
unk_14962A:
.byte $E8   ; CODE XREF:
BANK14:95D8↑j
    ; BANK14:95E9↑j ...
    .byte $E0
    .byte   4
    .byte $90
    .byte $A6
    .byte $60 ; `

; =============== S U B R O U T I N E =======================================


sub_149630:
    LDA byte_48
    CMP #$A2
    BEQ locret_149684
    LDA #$30
    JSR sub_EDFE
    JSR back_palettes
    JSR sub_FDC0
    LDA #7
    STA NMI_ID
    LDA #0
    STA num_of_chr
    STA Pointer

loc_14964D:
    LDX Pointer
    LDA byte_1496F1,X
    CMP #$FF
    BEQ loc_149675
    LSR A
    LSR A
    LSR A
    LSR A
    STA Pointer+1
    LDA byte_1496F1,X
    AND #$F
    STA AddrForJmp
    JSR sub_149685
    LDX Pointer+1
    LDY AddrForJmp
    STY Pointer+1
    STX AddrForJmp
    JSR sub_149685
    INC Pointer
    BNE loc_14964D

loc_149675:
    LDA num_of_chr
    CMP #0
    BEQ locret_149684
    LDA #0
    STA OffsetNMI_ID
    LDA #1
    STA NMIFlags

locret_149684:

    RTS
; End of function sub_149630


; =============== S U B R O U T I N E =======================================


sub_149685:
    LDA #$E
    SEC
    SBC AddrForJmp
    BCS loc_14968E
    LDA #0

loc_14968E:
    STA PosY
    PHA
    LDA #$F
    SEC
    SBC Pointer+1
    STA PosX
    JSR loc_1496B8
    LDA #$F
    CLC
    ADC AddrForJmp
    CMP #$1E
    BCC loc_1496A6
    LDA #$1D

loc_1496A6:
    STA PosY
    JSR loc_1496B8
    LDA #$10
    CLC
    ADC Pointer+1
    STA PosX
    JSR loc_1496B8
    PLA
    STA PosY

loc_1496B8:
    LDA num_of_chr
    CMP #$14
    BCC loc_1496CF
    LDA #0
    STA OffsetNMI_ID
    LDA #1
    STA NMIFlags
    JSR wait_nmi_processed
    LDA #0
    STA num_of_chr

loc_1496CF:
    JSR nt_calc
    LDA num_of_chr
    ASL A
    CLC
    ADC num_of_chr
    TAX
    LDA NTAddr
    STA PPU_addr,X
    LDA NTAddr+1
    STA PPU_addr+1,X
    LDA #0
    STA chr,X
    STA next,X
    INC num_of_chr
    RTS
; End of function sub_149685

; ---------------------------------------------------------------------------
byte_1496F1:
   .byte 0, $FE, $10, $FD, $EE, $11, $FB, $FC, $ED, $20, $21
    .byte $EC, $DD, $30, $31, $22, $F9, $FA, $EB, $DC, $40
    .byte $41, $32, $33, $F7, $F8, $E9, $EA, $DB, $CC, $42
    .byte $DA, $50, $51, $52, $43, $F4, $F5, $F6, $E7, $E8
    .byte $D9, $CA, $CB, $60, $61, $62, $53, $44, $BB, $F0
    .byte $F1, $F2, $F3, $54, $E4, $E5, $E6, $D7, $D8, $C9
    .byte $BA, $70, $71, $72, $63, $64, $55, $C8, $80, $E0
    .byte $81, $E1, $82, $E2, $73, $E3, $74, $D4, $65, $D5
    .byte $D6, $C7, $B8, $A9, $B9, $AA, $D0, $D1, $D2, $D3
    .byte $C4, $C5, $66, $C6, $B7, $A8, $99, $90, $91, $92
    .byte $83, $84, $75, $76, $B6, $C0, $C1, $C2, $93, $C3
    .byte $B4, $85, $B5, $A6, $A7, $88, $98, $A0, $A1, $A2
    .byte $A3, $94, $95, $86, $77, $97, $B0, $B1, $B2, $B3
    .byte $A4, $A5, $96, $87, $FF

; =============== S U B R O U T I N E =======================================


sub_149779:
    LDA #$38
    JSR $EE21
    LDA #5
    JSR sub_149920
    LDA #$C2
    LDX #$99
    JSR sub_1497D6
    LDA #$FF
    JSR $FD28
    LDX #$B4
    JSR $FD3A
    LDA #$F
    JSR $EDFE
    LDA #0
    STA $EC
    JSR $CE02
    JMP $D674
; End of function sub_149779


; =============== S U B R O U T I N E =======================================


sub_1497A3:
    LDA #$E
    JSR sub_149920
    LDA #$D5
    LDX #$99
    JSR sub_1497D6
    LDA #$FF
    JSR $FD28
    LDA #$E0
    LDX #$99
    JSR sub_1497D6
    LDA #9
    STA $7F0
    LDA #1
    STA $7F4
    LDA #$E9
    LDX #$99
    JSR sub_1497D6
    LDA #$1A
    LDX #7
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    JMP $A000
; End of function sub_1497A3


; =============== S U B R O U T I N E =======================================


sub_1497D6:
    STA $68
    STX $69
    LDY #0
    STY $6B

loc_1497DE:
    LDA ($68),Y
    BEQ locret_14983C
    STA $6C
    INY
    LDA ($68),Y
    STA $6D
    INY
    AND #$20
    BEQ loc_1497F1
    SEC
    ROL $6B

loc_1497F1:
    TYA
    PHA
    LDA $6D
    AND #3
    BEQ loc_149808
    TAX
    LDA $9A05,X
    JSR sub_EE0E
    JSR $FD41
    LDA #$F
    JSR $EE0E

loc_149808:
    JSR $FD41
    LDA $6B
    BNE loc_149815
    LDA $6C
    AND #3
    BNE loc_149820

loc_149815:
    LSR A

loc_149816:
    PHA
    JSR sub_14983D
    PLA
    SEC
    SBC #1
    BPL loc_149816

loc_149820:
    LDA $6C
    ASL A
    ASL A
    AND $6D
    AND #4
    BEQ loc_149834
    LSR A
    EOR $FD
    STA $FD
    LDA #$A
    STA $7F0

loc_149834:
    DEC $6C
    BNE loc_149808
    PLA
    TAY
    BNE loc_1497DE

locret_14983C:

    RTS
; End of function sub_1497D6


; =============== S U B R O U T I N E =======================================


sub_14983D:
    BIT $6D
    BPL locret_149877
    BVC loc_149859
    JSR sub_149878
    BNE loc_149851
    DEX
    CPX #5
    BCC locret_149877
    TXA
    JSR sub_149883

loc_149851:
    SEC
    LDA $FC
    SBC #1
    JMP loc_149871
; ---------------------------------------------------------------------------

loc_149859:
    JSR sub_149878
    EOR #$F
    BNE loc_14986C
    INX
    CPX #$3C
    BCS locret_149877
    TXA
    CLC
    ADC #$A
    JSR sub_149883

loc_14986C:
    CLC
    LDA $FC
    ADC #$11

loc_149871:
    BCS loc_149875
    SBC #$F

loc_149875:
    STA $FC

locret_149877:

    RTS
; End of function sub_14983D


; =============== S U B R O U T I N E =======================================


sub_149878:
    JSR $FD33
    LDX $6A
    CLC
    LDA $FC
    AND #$F
    RTS
; End of function sub_149878


; =============== S U B R O U T I N E =======================================


sub_149883:
    STX $6A
    JSR sub_14988D
    LDA #$80
    STA $E5
    RTS
; End of function sub_149883


; =============== S U B R O U T I N E =======================================


sub_14988D:
    LDX #$24
; End of function sub_14988D


; =============== S U B R O U T I N E =======================================


sub_14988F:
    STX $62
    LDX #0

loc_149893:
    CMP #$F
    BCC loc_14989C
    SBC #$F
    INX
    BCS loc_149893

loc_14989C:
    ASL A
    ASL A
    STA $6E
    TXA
    LSR A
    ROR A
    ROR A
    AND #$C0
    ORA $6E
    STA $60
    LDA #6
    ASL $60
    ROL A
    ASL $60
    ROL A
    ASL $60
    ROL A
    ASL $60
    ROL A
    STA $61
    ORA #3
    STA $65
    LDA $6E
    AND #$38
    ORA #$C0
    STA $64
    JSR $FD33
    LDA #5
    LDY #$40
    STA $400
    STY $401
    LDY #8
    STA $444
    STY $445
    LDA $61
    LDY $60
    AND #3
    ORA $62
    STA $402
    STY $403
    LDA $65
    LDY $64
    AND #3
    ORA $62
    STA $446
    STY $447
    LDY #$3F

loc_1498F9:
    LDA ($60),Y
    JSR sub_149919
    STA $404,Y
    DEY
    BPL loc_1498F9
    LDY #7

loc_149906:
    LDA ($64),Y
    JSR sub_149919
    STA $448,Y
    DEY
    BPL loc_149906
    LDA #0
    STA $450
    STA $E6
    RTS
; End of function sub_14988F


; =============== S U B R O U T I N E =======================================


sub_149919:
    CPX #4
    BCC locret_14991F
    LDA #0

locret_14991F:

    RTS
; End of function sub_149919


; =============== S U B R O U T I N E =======================================


sub_149920:
    STA $6A
    LDA #$B
    JSR $FD28
    JSR sub_1499A3
    JSR $EECC
    JSR $FD5E
    JSR $FD33
    LDX #$F

loc_149935:
    LDA $9A3D,X
    STA $340,X
    DEX
    BPL loc_149935
    LDA #$2D
    LDX #$9A
    STA $60
    STX $61
    JSR $E087
    LDA #$54
    JSR sub_1499AD
    LDA #$F9
    LDX #$99
    JSR $CEE8
    LDA #1
    STA $E5
    LDY #4

loc_14995B:
    TYA
    PHA
    LDX #$20
    JSR sub_14988F
    LDA #$80
    STA $E5
    PLA
    TAY
    DEY
    BPL loc_14995B
    JSR sub_14998B
    LDX #3

loc_149970:
    LDA $9A09,X
    STA $540,X
    DEX
    BPL loc_149970
    LDA #$9F
    STA $EC
    LDX #$1F

loc_14997F:
    LDA $9A0D,X
    STA $520,X
    DEX
    BPL loc_14997F
    JMP $EE30
; End of function sub_149920


; =============== S U B R O U T I N E =======================================


sub_14998B:
    CLC
    LDA $6A
    ADC #$B

loc_149990:
    PHA
    JSR sub_14988D
    LDA #$80
    STA $E5
    PLA
    SEC
    SBC #1
    BCC locret_1499A2
    CMP $6A
    BCS loc_149990

locret_1499A2:

    RTS
; End of function sub_14998B


; =============== S U B R O U T I N E =======================================


sub_1499A3:
    LDA $6A
    ASL A
    ASL A
    ASL A
    ASL A
    TAY
    LDX #$FC
    RTS
; End of function sub_1499A3


; =============== S U B R O U T I N E =======================================


sub_1499AD:
    PHA
    TAY
    LDA #0
    LDX #$60
    JSR $CE08
    PLA
    CLC
    ADC #2
    TAY
    LDA #0
    LDX #$68
    JMP $CE08
; End of function sub_1499AD

; ---------------------------------------------------------------------------
    .byte $80
    .byte   0
    .byte $80
    .byte $80
    .byte $80
    .byte $82
    .byte $20
    .byte $83
    .byte $20
    .byte $82
    .byte $C0
    .byte $81
    .byte $80
    .byte $82
    .byte $20
    .byte $83
    .byte $20
    .byte $82
    .byte   0
    .byte $80
    .byte $C0
    .byte $20
    .byte $C3
    .byte $20
    .byte $C2
    .byte $80
    .byte $C1
    .byte $80
    .byte $C3
    .byte   0
    .byte $40 ; @
    .byte   2
    .byte $10
    .byte   7
    .byte $20
    .byte   6
    .byte $50 ; P
    .byte   5
    .byte   0
    .byte   8
    .byte $23 ; #
    .byte   8
    .byte $22 ; "
    .byte $F0
    .byte $A1
    .byte $F0
    .byte   0
    .byte   0
    .byte   4
    .byte $80
    .byte   0
    .byte $A9
    .byte $A9
    .byte $AB
    .byte $AA
    .byte $76 ; v
    .byte $70 ; p
    .byte $50 ; P
    .byte $51 ; Q
    .byte $52 ; R
    .byte $53 ; S
    .byte $76 ; v
    .byte $70 ; p
    .byte $48 ; H
    .byte $49 ; I
    .byte $4A ; J
    .byte $4B ; K
    .byte  $F
    .byte $38 ; 8
    .byte $21 ; !
    .byte $34 ; 4
    .byte $CA
    .byte $ED
    .byte   0
    .byte   0
    .byte  $F
    .byte $12
    .byte $30 ; 0
    .byte   0
    .byte  $F
    .byte $10
    .byte $30 ; 0
    .byte   0
    .byte  $F
    .byte $17
    .byte $37 ; 7
    .byte $16
    .byte  $F
    .byte $38 ; 8
    .byte $30 ; 0
    .byte   0
    .byte  $F
    .byte  $F
    .byte   0
    .byte $30 ; 0
    .byte  $F
    .byte  $F
    .byte $16
    .byte $37 ; 7
    .byte  $F
    .byte  $F
    .byte $24 ; $
    .byte $37 ; 7
    .byte  $F
    .byte  $F
    .byte $12
    .byte $37 ; 7
    .byte $68 ; h
    .byte $78 ; x
    .byte   0
    .byte   0
    .byte $58 ; X
    .byte $88
    .byte   0
    .byte   0
    .byte $78 ; x
    .byte $88
    .byte   0
    .byte   0
    .byte $68 ; h
    .byte $98
    .byte   0
    .byte   0
    .byte $86
    .byte   0
    .byte $F4
    .byte $76 ; v
    .byte   0
    .byte   0
    .byte $C0
    .byte $99
    .byte   6
    .byte   0
    .byte $E4
    .byte $76 ; v
    .byte   0
    .byte   0
    .byte $C4
    .byte $99

; =============== S U B R O U T I N E =======================================

; 149A4D
.proc new_game
    JSR draw_new_game

@character1:
    LDA #6
    STA byte_56
    LDA #$CA
    LDX #$62
    JSR enter_name
    BCS @exit

@character2:
    LDA #6
    STA byte_56
    LDA #$D0
    LDX #$62
    JSR enter_name
    BCS @character1

@character3:
    LDA #6
    STA byte_56
    LDA #$D6
    LDX #$62
    JSR enter_name
    BCS @character2

@character4:
    LDA #6
    STA byte_56
    LDA #$DC
    LDX #$62
    JSR enter_name
    BCS @character3
    LDA #$A
    STA byte_56
    LDA #$E2
    LDX #$62
    JSR enter_name
    BCS @character4
    JSR sub_149D50
    JSR sub_149AD5
    JSR lighten_palette ; increase the brightness of colors in the palette
    JSR sub_149B00
    BCC loc_149AA2
    JMP new_game
; ---------------------------------------------------------------------------

loc_149AA2:
    JSR sub_149D50
    LDX #$3C
    JSR delay
    JSR lighten_palette ; increase the brightness of colors in the palette
    LDA #2
    STA PosX
    LDA #3
    STA PosY
    LDX #$D0
    LDY #$64
    JSR sub_149B13
    LDA #$FF
    STA apu_7F5
    JSR lighten_palette ; increase the brightness of colors in the palette
    LDA #6
    STA PosX
    LDA #$A
    STA PosY
    LDX #$7D
    LDY #$66
    JSR sub_149B13
    CLC

@exit:
    RTS
.endproc


; =============== S U B R O U T I N E =======================================


sub_149AD5:
    LDA #$8B
    LDX #$6C
    JSR sub_149AF9
    LDA #$C0
    LDX #$6C
    JSR sub_149AF9
    JSR $6286
    LDY #0

loc_149AE8:
    JSR sub_149AF3
    JSR $629B
    CMP #$20
    BNE loc_149AE8
    RTS
; End of function sub_149AD5


; =============== S U B R O U T I N E =======================================


sub_149AF3:
    JSR wait_nmi_processed
    JMP $625B
; End of function sub_149AF3


; =============== S U B R O U T I N E =======================================


sub_149AF9:
    STA PointerTilePack
    STX PointerTilePack+1
    JMP write_tiles
; End of function sub_149AF9


; =============== S U B R O U T I N E =======================================


sub_149B00:
    LDA #$F0
    LDX #$62
    STA $80
    STX $81
    JSR $EF34
    LDA $82
    BEQ loc_149B11
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_149B11:
    CLC
    RTS
; End of function sub_149B00


; =============== S U B R O U T I N E =======================================


sub_149B13:
    LDA #0
    STA byte_70
    STX PointerTilePack
    STY PointerTilePack+1

loc_149B1B:
    JSR sub_C707
    DEC PosY
    CMP #0
    BNE loc_149B1B
    JSR sub_F29E
    JMP sub_149D50
; End of function sub_149B13


; =============== S U B R O U T I N E =======================================


draw_new_game:
    JSR sub_149D50
    JSR home_camera
    LDA #$2D
    LDX #$6C
    JSR sub_149AF9
    JSR sub_149B40
    JSR sub_149B76
    JMP lighten_palette ; increase the brightness of colors in the palette
; End of function draw_new_game


; =============== S U B R O U T I N E =======================================


sub_149B40:
    LDA #$70
    STA pTileID
    LDA #$64
    STA pTileID+1
    LDA #$E
    STA AddrForJmp+1
    LDX #4

loc_149B4E:
    TXA
    PHA
    LDA #8
    STA AddrForJmp
    LDA AddrForJmp
    STA PosX
    LDA AddrForJmp+1
    STA PosY
    LDA pTileID
    STA PointerTilePack
    LDA pTileID+1
    STA PointerTilePack+1
    JSR loc_C6DB
    JSR $62B5
    PLA
    TAX
    DEX
    BNE loc_149B4E
    LDA #$66
    LDX #$6C
    JMP sub_149AF9
; End of function sub_149B40


; =============== S U B R O U T I N E =======================================


sub_149B76:
    LDA #0
    LDX #$6C
    JMP sub_149AF9
; End of function sub_149B76


; =============== S U B R O U T I N E =======================================


enter_name:
    STA word_5C
    STX word_5C+1
    LDY #0
    JSR sub_149BED
    ORA Pointer
    BEQ loc_149B9B
    LDA #$22 ; '"'
    STA AddrForJmp
    LDA #$FF
    STA AddrForJmp+1
    LDA #$80
    STA pTileID
    LDY #0
    JSR sub_149AF3

loc_149B9B:
    JSR sub_149BF7
    LDA #$24 ; '$'
    LDX #$6C ; 'l'
    JSR sub_149AF9
    LDY #4
    JSR sub_149BED
    LDY byte_56
    LDA #0
    STA byte_70
    STA byte_581,Y
    STY byte_55

loc_149BB5:
    LDA (Pointer),Y
    BNE loc_149BBD
    STY byte_55
    LDA #$A2

loc_149BBD:
    STA byte_580,Y
    DEY
    BPL loc_149BB5
    JSR sub_149C1C
    BCS loc_149BE8
    LDY #4
    JSR sub_149BED
    JSR sram_write_enable
    LDY byte_56

loc_149BD2:
    LDA byte_580,Y
    CMP #$A2
    BNE loc_149BDB
    LDA #0

loc_149BDB:
    STA (Pointer),Y
    DEY
    BPL loc_149BD2
    JSR sram_read_enable
    JSR clear_oam_sprite
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_149BE8:
    JSR clear_oam_sprite
    SEC
    RTS
; End of function enter_name


; =============== S U B R O U T I N E =======================================


sub_149BED:
    LDA (word_5C),Y
    STA Pointer
    INY
    LDA (word_5C),Y
    STA Pointer+1
    RTS
; End of function sub_149BED


; =============== S U B R O U T I N E =======================================


sub_149BF7:
    JSR sub_149B76
    LDX #8
    JSR delay
    LDY #2
    JSR sub_149BED

loc_149C04:
    LDA Pointer
    STA PointerTilePack
    LDA Pointer+1
    STA PointerTilePack+1
    LDA #9
    STA PosX
    LDA #3
    STA PosY

loc_149C14:
    JSR loc_C6DB
    CMP #0
    BNE loc_149C14
    RTS
; End of function sub_149BF7


; =============== S U B R O U T I N E =======================================


sub_149C1C:
    JSR sub_149D0A
    LDA #$E8
    LDX #$62
    STA CHRBank0
    STX CHRBank1
    LDA #$70
    LDX #$64
    STA CHRBank4
    STX CHRBank5
    LDA #1
    STA byte_D6

loc_149C33:
    JSR loc_EF3F
    JMP loc_149C3F
; ---------------------------------------------------------------------------

loc_149C39:
    JSR sub_149D0A
    JSR loc_EF7C

loc_149C3F:
    BIT Buttons
    BVS loc_149C70
    BMI loc_149C4E
    LDA Buttons
    AND #$10
    BNE loc_149C8B
    JMP loc_149C33
; ---------------------------------------------------------------------------

loc_149C4E:
    LDX CurrentFieldPosition
    LDA $6470,X
    CMP #$A1
    BEQ loc_149C70
    CMP #$A2
    BEQ loc_149C8B
    CMP #$A3
    BEQ loc_149C6E
    LDX byte_55
    STA byte_580,X
    CPX byte_56
    BEQ loc_149C6B
    INX
    STX byte_55

loc_149C6B:
    JMP loc_149C39
; ---------------------------------------------------------------------------

loc_149C6E:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_149C70:
    LDA #$A2
    LDX byte_55
    CPX byte_56
    BNE loc_149C7D
    CMP byte_580,X
    BNE loc_149C85

loc_149C7D:
    STA byte_580,X
    DEX
    BMI loc_149C88
    STX byte_55

loc_149C85:
    STA byte_580,X

loc_149C88:
    JMP loc_149C39
; ---------------------------------------------------------------------------

loc_149C8B:
    LDY byte_55

loc_149C8D:
    LDA byte_580,Y
    CMP #$A2
    BEQ loc_149C9D
    CMP #$A0
    BNE loc_149CA0
    LDA #$A2
    STA byte_580,Y

loc_149C9D:
    DEY
    BPL loc_149C8D

loc_149CA0:
    CPY byte_56
    BEQ loc_149CA5
    INY

loc_149CA5:
    STY byte_55
    CPY #0
    BEQ loc_149D07
    LDX #0

loc_149CAD:
    LDY #0

loc_149CAF:
    LDA $63F8,X
    BEQ loc_149CC9
    CMP #1
    BEQ loc_149CCF
    INX
    INY
    CMP byte_57F,Y
    BEQ loc_149CAF

loc_149CBF:
    LDA $63F8,X
    INX
    CMP #1
    BNE loc_149CBF
    BEQ loc_149CAD

loc_149CC9:
    LDA #0
    STA byte_D6
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_149CCF:
    JSR sub_F465
    JSR sub_149B76
    LDA #$7F
    LDX #$63
    STA Pointer
    STX Pointer+1
    JSR loc_149C04
    LDA byte_580
    CMP #$A0
    BEQ loc_149CFE
    LDA #$98
    LDX #$63
    STA PointerTilePack
    STX PointerTilePack+1
    LDX #8
    LDY #$E
    STX PosX
    STY PosY

loc_149CF7:
    JSR loc_C6DB
    CMP #0
    BNE loc_149CF7

loc_149CFE:
    JSR sub_F29E
    JSR sub_149B40
    JSR sub_149BF7

loc_149D07:
    JMP sub_149C1C
; End of function sub_149C1C


; =============== S U B R O U T I N E =======================================


sub_149D0A:
    LDA PosX
    PHA
    LDA PosY
    PHA
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    SEC
    LDA #0
    SBC byte_56
    SEC
    ROR A
    CLC
    ADC #$F
    TAY
    LDA #$59
    STA OAM.PosY+4
    CLC
    TYA
    ADC byte_55
    ASL A
    ASL A
    ASL A
    STA OAM.PosX+4
    LDA #1
    STA OAM.TileID+4
    LDA #0
    STA OAM.Attr+4
    TYA
    STA PosX
    LDA #$A
    STA PosY
    LDA #$80
    STA PointerTilePack
    LDA #5
    STA PointerTilePack+1
    JSR loc_C6DB
    PLA
    STA PosY
    PLA
    STA PosX
    RTS
; End of function sub_149D0A


; =============== S U B R O U T I N E =======================================


sub_149D50:
    JSR $EDDC
    JSR $FD5E
    JSR $FD80
    LDX #$FD
    LDY #$62
    JMP $F732
; End of function sub_149D50

; ---------------------------------------------------------------------------

; 9FAF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF
; end of 'BANK14'


; ===========================================================================

; Segment type:
Pure code
    ;.segment BANK17
    * =  $A000

; =============== S U B R O U T I N E =======================================


sub_17A000:
    LDA #0
    STA Gamepad0Buttons
    STA Gamepad1Buttons
    STA byte_52
    STA byte_59
    STA byte_49
    STA byte_4A
    STA byte_4B
    STA byte_4C
    STA byte_4D
    TAX

@clear1:
    STA byte_600,X
    INX
    BNE @clear1
    LDX #$1F

@clear2:
    STA byte_580,X
    DEX
    BPL @clear2
    LDA #0
    STA byte_53
    LDX #0

loc_17A029:
    TXA
    PHA
    LDA CurrentGame.PureSave.CharactersNum,X
    BEQ loc_17A03A
    JSR sub_17A1DD
    CLC
    LDA byte_53
    ADC #$20
    STA byte_53

loc_17A03A:
    PLA
    TAX
    INX
    CPX #4
    BNE loc_17A029
    JSR sub_F479
    LDA #$80
    STA byte_53
    LDY #0

loc_17A04A:
    LDA (pCharacter),Y  ; BANK16:95D8
    STA Pointer
    INY
    LDA (pCharacter),Y
    STA Pointer+1
    INY
    TYA
    PHA
    LDA Pointer
    CMP #$FF
    BEQ loc_17A05F
    JSR sub_17A22D

loc_17A05F:
    CLC
    LDA byte_53
    ADC #$20
    STA byte_53
    PLA
    TAY
    CPY #8
    BNE loc_17A04A
    LDA (pCharacter),Y
    AND #$E0
    LDX #5

loc_17A072:
    LSR A
    DEX
    BNE loc_17A072
    STA byte_56
    LDA (pCharacter),Y  ; BANK16:95E0
    AND #$1F
    STA byte_5A
    INY
    LDA (pCharacter),Y
    AND #$F
    STA Pointer
    LDA #0
    LDX #5

loc_17A089:
    ASL Pointer
    ROL A
    DEX
    BNE loc_17A089
    STA Pointer+1
    CLC
    LDA #$81
    ADC Pointer
    STA Pointer
    LDA #$8E
    ADC Pointer+1
    STA Pointer+1
    JSR bank0   ; set memory bank 0 at $8000
    JSR preload_palettes
    JSR bank16  ; set memory bank $16 at $8000
    LDX #$23 ; '#'  ; 23C0 - attribute address
    LDY #$C0
    JSR fill_attribute
    LDX #$2B ; '+'  ; 2BC0 - attribute address
    LDY #$C0
    JSR fill_attribute
    JSR statistical_frame
    LDA #0
    STA byte_5B
    LDA #$80
    STA byte_53

loc_17A0C0:
    LDX byte_53
    LDA byte_600,X
    BEQ loc_17A0CA
    JSR sub_17A28A

loc_17A0CA:
    INC byte_5B
    CLC
    LDA byte_53
    ADC #$20
    STA byte_53
    BCC loc_17A0C0
    LDY #0
    LDX #0

loc_17A0D9:
    LDA byte_580,Y
    INY
    ORA byte_580,Y
    STA Pointer
    INY
    LDA byte_580,Y
    INY
    ORA byte_580,Y
    ASL A
    ASL A
    ORA Pointer
    STA Pointer
    ASL A
    ASL A
    ASL A
    ASL A
    ORA Pointer
    STA byte_580,X
    INY
    INX
    CPX #8
    BNE loc_17A0D9
    JSR wait_nmi_processed
    LDA #5
    STA NMI_ID.NMI_ID
    LDA #$10
    STA NMI_ID.num_of_chr
    LDY #0
    LDX #4

loc_17A110:
    LDA byte_580,Y
    STA NMI_ID,X
    STA NMI_ID.PPU_addr+6,X
    INY
    INX
    CPY #8
    BNE loc_17A110
    LDA #0
    STA NMI_ID.PPU_addr+6,X
    LDA #$80
    STA NMIFlags
    LDA #$23
    STA NMI_ID.PPU_addr
    LDA #$D8
    STA NMI_ID.PPU_addr+1
    LDA #0
    STA OffsetNMI_ID
    LDA #0
    STA byte_47
    STA byte_48
    LDX #$80

loc_17A13E:
    TXA
    PHA
    LDY #4

loc_17A142:
    LDA byte_604,X
    AND #3
    STA byte_604,X
    INX
    INX
    DEY
    BNE loc_17A142
    PLA
    CLC
    ADC #$20 ; ' '
    TAX
    BNE loc_17A13E
    LDX #0
    LDA byte_56
    CMP #1
    BNE loc_17A173
    LDX #4
    LDA #$FF
    STA byte_683
    STA byte_684
    LDA #0
    STA byte_620
    STA byte_640
    STA byte_660

loc_17A173:
    STX byte_5B
    LDA byte_23
    BEQ loc_17A18C
    LDY #0
    STY byte_56

loc_17A17D:
    LDA byte_61E,Y
    ORA #4
    STA byte_61E,Y
    TYA
    CLC
    ADC #$20
    TAY
    BPL loc_17A17D

loc_17A18C:
    LDA byte_56
    CMP #5
    BNE loc_17A19C
    LDA #$96
    STA NamePos
    LDA byte_60C
    STA byte_68C

loc_17A19C:
    LDX #$14
    JSR delay
    JSR save_jmp_instr  ; save JMP $F76A to $D7

    LDA #0
    JSR sub_F4CE    ; start draw window
    JSR sub_17AC6A  ; draw battle window without menu
    ; print messages
    ; damage animation
    BCS @end_battle
    LDX #$14
    JSR delay
    LDA #7
    JSR sub_F4CE    ; start draw window
    LDA #0
    STA byte_52
    JSR shift_up_window ; shift up window
    ; jump instruction LDX #$04
    JSR sub_F765
    JSR sub_17A50A  ; battle menu, wait command
    JSR sub_F760    ; return if select action, set value $5A = 1
    LDA #3
    JSR sub_F4CE
    JSR shift_down_window
    JMP @battle_loop
; ---------------------------------------------------------------------------

@end_battle:
    JSR clear_jmp_instr
    LDA #0
    STA Gamepad0Buttons
    STA Gamepad1Buttons
    RTS
; End of function sub_17A000


; =============== S U B R O U T I N E =======================================


sub_17A1DD:
    STA AddrForJmp
    TAX
    LDA #0
    STA Pointer
    LDA #$74
    STA Pointer+1

loc_17A1E8:
    CLC
    LDA Pointer
    ADC #$40
    STA Pointer
    LDA Pointer+1
    ADC #0
    STA Pointer+1
    DEX
    BNE loc_17A1E8
    LDY #1
    LDX byte_53

loc_17A1FC:
    LDA (Pointer),Y
    STA byte_601,X
    INY
    INX
    CPY #$10
    BNE loc_17A1FC
    LDY #$14
    LDX byte_53

loc_17A20B:
    LDA (Pointer),Y
    STA byte_603,X
    INX
    INY
    CPY #$18
    BNE loc_17A20B
    LDX byte_53
    LDA #$FF
    STA byte_600,X
    LDA AddrForJmp
    STA byte_611,X
    LDA Pointer
    STA pPPUTab,X
    LDA Pointer+1
    STA pPPUTab+1,X
    RTS
; End of function sub_17A1DD


; =============== S U B R O U T I N E =======================================


sub_17A22D:
    LDX byte_53
    LDA Pointer+1
    ASL A
    ASL A
    STA byte_61A,X
    LDA Pointer
    STA AddrForJmp
    LDA #0
    LDX #5

loc_17A23E:
    ASL AddrForJmp
    ROL A
    DEX
    BNE loc_17A23E
    STA AddrForJmp+1
    CLC
    LDA #0
    ADC AddrForJmp
    STA AddrForJmp
    LDA #$80
    ADC AddrForJmp+1
    STA AddrForJmp+1
    LDY #1
    LDX byte_53

loc_17A257:
    LDA (AddrForJmp),Y  ; BANK16:8860
    STA byte_601,X
    INY
    INX
    CPY #$18
    BNE loc_17A257
    LDX byte_53
    LDY byte_48
    INY
    TYA
    STA byte_600,X
    LDA AddrForJmp
    STA pPPUTab,X
    LDA AddrForJmp+1
    STA pPPUTab+1,X
    LDY #$5E ; '^'
    LDA Pointer+1
    BPL loc_17A285
    LDA byte_61E,X
    ORA #1
    STA byte_61E,X
    LDY #0

loc_17A285:
    TYA
    STA byte_61D,X
    RTS
; End of function sub_17A22D


; =============== S U B R O U T I N E =======================================


sub_17A28A:
    LDA byte_61E,X
    AND #1
    BEQ loc_17A296
    LDA #0
    STA byte_600,X

loc_17A296:
    LDA byte_61A,X
    ORA byte_5B
    STA byte_61A,X
    LDA byte_604,X
    AND #$F0
    LSR A
    LSR A
    LSR A
    TAY
    LDA off_16960A,Y
    STA Pointer
    LDA off_16960A+1,Y
    STA Pointer+1
    LDA byte_608,X
    AND #$E0
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    STA byte_66
    LDY #0
    LDA (Pointer),Y
    STA AddrForJmp
    INY
    LDA (Pointer),Y
    STA AddrForJmp+1
    INY
    SEC
    LDA (Pointer),Y
    SBC byte_66
    TAY
    INY
    LDA #$E0

loc_17A2D2:
    CLC
    ADC #$20
    DEY
    BNE loc_17A2D2
    STA pTileID
    LDA byte_5A
    ASL A
    ASL A
    ADC byte_5B
    TAY
    LDA byte_168F40,Y
    STA pTileID+1
    LDA byte_604,X
    AND #$C
    LSR A
    LSR A
    LDY pTileID+1
    LDX #0

loc_17A2F1:
    STA byte_580,Y
    INY
    INX
    CPX AddrForJmp+1
    BNE loc_17A2F1
    CLC
    LDA pTileID+1
    ADC pTileID
    ADC #$80
    STA pTileID
    LDA #0
    ADC #$21
    STA pTileID+1
    LDA pTileID
    AND #$E0
    STA pDist
    LDA pTileID+1
    AND #3
    LSR A
    ROR pDist
    LSR A
    ROR pDist
    SEC
    LDA pDist
    SBC #$19
    STA pDist
    LDA pTileID
    ASL A
    ASL A
    ASL A
    SEC
    SBC #$10
    STA pDist+1
    LDX byte_5B
    INX
    LDA #$C0

loc_17A32F:
    CLC
    ADC #$40
    DEX
    BNE loc_17A32F
    STA byte_66
    LDY #2

loc_17A339:
    JSR wait_nmi_processed
    LDX #0
    LDA #5
    STA NMI_ID,X
    INX
    LDA AddrForJmp+1
    STA NMI_ID,X
    STA TilesCount
    INX
    LDA pTileID+1
    STA NMI_ID,X
    INX
    LDA pTileID
    STA NMI_ID,X

loc_17A357:
    INY
    LDA (Pointer),Y
    CLC
    ADC byte_66
    INX
    STA NMI_ID,X
    DEC TilesCount
    BNE loc_17A357
    LDA #0
    INX
    STA NMI_ID,X
    CLC
    LDA pTileID
    ADC #$20 ; ' '
    STA pTileID
    LDA pTileID+1
    ADC #0
    STA pTileID+1
    LDA #0
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    DEC AddrForJmp
    BNE loc_17A339
    LDX byte_53
    LDA unk_606,X
    AND #$FC
    BEQ locret_17A3D1
    LSR A
    LSR A
    STA Pointer
    ASL A
    ADC Pointer
    CLC
    ADC #$C8
    STA Pointer
    LDA #0
    ADC #$97
    STA Pointer+1
    LDY #0
    LDA (Pointer),Y
    STA byte_61C,X
    LDA byte_5B
    ASL A
    ASL A
    ASL A
    TAX
    LDA #0
    STA SpriteTable,X
    STA SpriteTable.TileID,X
    STA SpriteTable.field_4,X
    STA SpriteTable.field_5,X
    LDA pDist+1
    STA SpriteTable.PosX,X
    LDA pDist
    STA SpriteTable.PosY,X
    LDY #1
    LDA (Pointer),Y
    STA SpriteTable.pFrame,X
    INY
    LDA (Pointer),Y
    STA SpriteTable.pFrame+1,X

locret_17A3D1:

    RTS
; End of function sub_17A28A


; =============== S U B R O U T I N E =======================================


fill_attribute:
    JSR wait_nmi_processed
    STX NMI_ID.PPU_addr
    STY NMI_ID.PPU_addr+1
    LDA #8
    STA NMI_ID.NMI_ID
    LDA #$40
    STA NMI_ID.num_of_chr
    LDA #$FF
    STA NMI_ID.chr
    LDA #0
    STA NMI_ID.next
    LDA #$80
    STA NMIFlags
    LDA #0
    STA OffsetNMI_ID
    RTS
; End of function fill_attribute


; =============== S U B R O U T I N E =======================================


sub_17A3F8:
    CMP #0
    BEQ locret_17A478
    PHA
    JSR sub_17A4BB
    JSR bank0   ; set memory bank 0 at $8000
    PLA
    CMP #$FF
    BNE loc_17A42D
    SEC
    LDY byte_54
    LDA pPPUTab,Y
    SBC #0
    STA PointerTilePack
    LDA pPPUTab+1,Y
    SBC #$80
    ASL PointerTilePack
    ROL A
    ASL PointerTilePack
    ROL A
    ASL PointerTilePack
    ROL A
    CLC
    ADC #$14
    STA PointerTilePack
    LDA #0
    ADC #5
    STA byte_73
    BCC loc_17A44A

loc_17A42D:
    LDY #0
    STY Pointer+1
    ASL A
    ROL Pointer+1
    CLC
    ADC #$81
    STA Pointer
    LDA Pointer+1
    ADC #$90
    STA Pointer+1
    LDY #0
    LDA (Pointer),Y
    STA PointerTilePack
    INY
    LDA (Pointer),Y
    STA byte_73

loc_17A44A:
    JSR sub_CAA2
    LDA PointerTilePack
    STA byte_50
    LDA PointerTilePack+1
    STA byte_51
    LDA byte_52
    CMP #3
    BNE loc_17A462
    LDX #3
    JSR sub_C7C1
    DEC byte_52

loc_17A462:
    JSR sub_17A479
    CMP #2
    BEQ loc_17A46F
    INC byte_52
    CMP #0
    BNE loc_17A44A

loc_17A46F:
    JSR bank16  ; set memory bank $16 at $8000
    LDX CurrentGame.PureSave.field_18
    JSR delay

locret_17A478:

    RTS
; End of function sub_17A3F8


; =============== S U B R O U T I N E =======================================


sub_17A479:
    LDA byte_52
    ASL A
    ADC #3
    STA PosY
    LDY #0
    LDA (byte_50),Y
    CMP #3
    BNE loc_17A49D
    LDA #$F
    STA PosX
    JSR sub_F5C2
    INC byte_50
    BNE loc_17A495
    INC byte_51

loc_17A495:
    LDY #0
    LDA (byte_50),Y
    CMP #2
    BEQ locret_17A4BA

loc_17A49D:
    LDA #$16
    STA byte_70
    LDA #5
    STA PosX
    JSR wait_nmi_processed
    LDA byte_50
    STA PointerTilePack
    LDA byte_51
    STA PointerTilePack+1
    JSR print_string
    LDA #1
    JSR sub_C7AF
    LDA UnpackID

locret_17A4BA:

    RTS
; End of function sub_17A479


; =============== S U B R O U T I N E =======================================


sub_17A4BB:
    LDA #$21
    STA byte_580
    STA unk_588
    LDA #$80
    STA AddrForJmp
    LDA #5
    STA AddrForJmp+1
    LDX byte_53
    JSR loc_17A4DA
    LDA #$88
    STA AddrForJmp
    LDA #5
    STA AddrForJmp+1
    LDX byte_54

loc_17A4DA:
    LDA pPPUTab,X
    STA Pointer
    LDA pPPUTab+1,X
    STA Pointer+1
    LDY #$18
    LDA (Pointer),Y
    PHA
    INY
    LDA (Pointer),Y
    LDY #2
    STA (AddrForJmp),Y
    PLA
    DEY
    STA (AddrForJmp),Y
    INY
    INY
    LDA byte_61A,X
    AND #$1C
    BEQ loc_17A505
    LSR A
    LSR A
    CLC
    ADC #$40
    STA (AddrForJmp),Y
    INY

loc_17A505:
    LDA #0
    STA (AddrForJmp),Y
    RTS
; End of function sub_17A4BB


; =============== S U B R O U T I N E =======================================


sub_17A50A:
    LDA #0
    STA byte_53

loc_17A50E:
    LDY byte_53
    LDA #0
    STA byte_61D,Y
    LDA byte_61E,Y
    AND #$F7
    STA byte_61E,Y
    LDA byte_600,Y
    BEQ loc_17A535
    LDA byte_601,Y
    AND #$F4
    BNE loc_17A535
    LDA byte_61E,Y
    AND #$20
    BNE loc_17A535
    JSR sub_17A53F
    BCS loc_17A50E

loc_17A535:
    CLC
    LDA byte_53
    ADC #$20
    STA byte_53
    BNE loc_17A50E
    RTS
; End of function sub_17A50A


; =============== S U B R O U T I N E =======================================


sub_17A53F:
    LDA byte_59
    BNE loc_17A559
    LDY byte_53
    BMI loc_17A559
    LDA byte_611,Y
    AND #6
    EOR #6
    BEQ loc_17A559
    JSR sub_17A7DA
    BCS locret_17A572
    LDA byte_59
    BEQ loc_17A55C

loc_17A559:
    JSR sub_17A573

loc_17A55C:
    LDY byte_53
    LDA byte_61D,Y
    CMP #$53 ; 'S'
    BEQ loc_17A569
    CMP #$59 ; 'Y'
    BNE loc_17A571

loc_17A569:
    LDA byte_61E,Y
    ORA #8
    STA byte_61E,Y

loc_17A571:
    CLC

locret_17A572:

    RTS
; End of function sub_17A53F


; =============== S U B R O U T I N E =======================================


sub_17A573:
    LDA byte_53
    BMI loc_17A57A
    JMP loc_17A57D
; ---------------------------------------------------------------------------

loc_17A57A:
    JMP loc_17A723
; ---------------------------------------------------------------------------

loc_17A57D:
    LDY #0

loc_17A57F:
    STY byte_54
    LDA byte_600,Y
    BEQ loc_17A594
    LDA byte_611,Y
    AND #6
    EOR #6
    BEQ loc_17A594
    LDA byte_601,Y
    BMI loc_17A59D

loc_17A594:
    TYA
    CLC
    ADC #$20
    TAY
    BPL loc_17A57F
    BMI loc_17A5A0

loc_17A59D:
    JMP loc_17A6B0
; ---------------------------------------------------------------------------

loc_17A5A0:
    LDY #0

loc_17A5A2:
    STY byte_54
    LDA byte_600,Y
    BEQ loc_17A5BC
    LDA byte_601,Y
    BMI loc_17A5BC
    LDA byte_611,Y
    AND #6
    EOR #6
    BEQ loc_17A5BC
    JSR sub_F673
    BCC loc_17A5C5

loc_17A5BC:
    TYA
    CLC
    ADC #$20
    TAY
    BPL loc_17A5A2
    BMI loc_17A5E9

loc_17A5C5:
    LDX #0
    LDY #0

loc_17A5C9:
    LDA byte_600,Y
    BEQ loc_17A5DB
    LDA byte_601,Y
    BMI loc_17A5DB
    JSR sub_F673
    BCS loc_17A5DB
    INX
    STY byte_54

loc_17A5DB:
    TYA
    CLC
    ADC #$20
    TAY
    BPL loc_17A5C9
    CPX #1
    BCC loc_17A611
    JMP loc_17A623
; ---------------------------------------------------------------------------

loc_17A5E9:
    LDY #0

loc_17A5EB:
    STY byte_54
    LDA byte_600,Y
    BEQ loc_17A604
    LDA byte_611,Y
    AND #6
    EOR #6
    BEQ loc_17A604
    LDA byte_601,Y
    BMI loc_17A604
    AND #$70
    BNE loc_17A60E

loc_17A604:
    TYA
    CLC
    ADC #$20
    TAY
    BPL loc_17A5EB
    JMP loc_17A690
; ---------------------------------------------------------------------------

loc_17A60E:
    JMP loc_17A659
; ---------------------------------------------------------------------------

loc_17A611:
    LDA #$C
    JSR loc_17A6C2
    BCC locret_17A622
    LDA #$B
    JSR loc_17A6C2
    BCC locret_17A622
    JMP loc_17A623
; ---------------------------------------------------------------------------

locret_17A622:

    RTS
; ---------------------------------------------------------------------------

loc_17A623:
    LDA #$A
    JSR loc_17A6C2
    BCC loc_17A651
    LDA #9
    JSR loc_17A6C2
    BCC loc_17A651
    LDA #8
    JSR loc_17A6C2
    BCC loc_17A651
    LDY byte_53
    JSR sub_17BFAA
    BCS loc_17A5E9
    CPX #$7C
    BEQ loc_17A5E9
    CPX #$84
    BEQ loc_17A5E9
    TYA
    LDY byte_53
    STA unk_610,Y
    TXA
    STA byte_61D,Y

loc_17A651:
    LDA byte_54
    LDY byte_53
    STA byte_61C,Y
    RTS
; ---------------------------------------------------------------------------

loc_17A659:
    LDY byte_54
    LDA byte_601,Y
    TAX
    AND #$20
    BNE loc_17A670
    TXA
    AND #$10
    BNE loc_17A677
    TXA
    AND #$40
    BNE loc_17A67E
    JMP loc_17A685
; ---------------------------------------------------------------------------

loc_17A670:
    LDA #$11
    JSR loc_17A6C2
    BCC loc_17A688

loc_17A677:
    LDA #$13
    JSR loc_17A6C2
    BCC loc_17A688

loc_17A67E:
    LDA #$12
    JSR loc_17A6C2
    BCC loc_17A688

loc_17A685:
    JMP loc_17A690
; ---------------------------------------------------------------------------

loc_17A688:
    LDA byte_54
    LDY byte_53
    STA byte_61C,Y
    RTS
; ---------------------------------------------------------------------------

loc_17A690:
    LDY byte_53
    LDA #1
    STA byte_61D,Y

loc_17A697:
    JSR sub_F1ED
    AND #$E0
    ORA #$80
    TAY
    LDA byte_600,Y
    BEQ loc_17A697
    LDA byte_601,Y
    BMI loc_17A697
    TYA
    LDY byte_53
    STA byte_61C,Y
    RTS
; ---------------------------------------------------------------------------

loc_17A6B0:
    LDA #$14
    JSR loc_17A6C2
    BCC loc_17A6BA
    JMP loc_17A5A0
; ---------------------------------------------------------------------------

loc_17A6BA:
    LDY byte_53
    LDA byte_54
    STA byte_61C,Y
    RTS
; ---------------------------------------------------------------------------

loc_17A6C2:
    STA Pointer
    JSR sub_17A86B
    LDA Pointer
    LSR A
    LSR A
    LSR A
    TAY
    LDA Pointer
    AND #7
    TAX
    INX
    SEC
    LDA #0

loc_17A6D6:
    ROR A
    DEX
    BNE loc_17A6D6
    STA Pointer+1
    LDA (pCharacter),Y
    AND Pointer+1
    BEQ loc_17A721
    LDA #0
    ASL Pointer
    ROL A
    ASL Pointer
    ROL A
    ASL Pointer
    ROL A
    STA Pointer+1
    CLC
    LDA Pointer
    ADC #0
    STA Pointer
    LDA Pointer+1
    ADC #$9E
    STA Pointer+1
    JSR bank0   ; set memory bank 0 at $8000
    LDY #5
    LDA (Pointer),Y
    LDY byte_53
    STA byte_61D,Y
    LDY #7
    LDA (Pointer),Y
    STA byte_4E
    LDA #0
    STA byte_4F
    JSR bank16  ; set memory bank $16 at $8000
    JSR sub_17B1D1
    BCC loc_17A721
    JSR sub_17B1C5
    BCC loc_17A721
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17A721:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17A723:
    JSR sub_F1ED
    AND #7
    CLC
    ADC byte_53
    TAY
    LDA unk_610,Y
    LDY byte_53
    STA byte_61D,Y
    JSR sub_17AC23
    JSR sub_F2D5    ; trap function with no return
; End of function sub_17A573    ; transfers control to a function whose address is selected from the table located after the call of this function
    ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
    .word sub_17A7A3, sub_17A740, sub_17A74A

; =============== S U B R O U T I N E =======================================


sub_17A740:
    JSR sub_17A7AB
    LDA byte_54
    BPL sub_17A740
    JMP sub_17A7A3
; End of function sub_17A740


; =============== S U B R O U T I N E =======================================


sub_17A74A:
    LDA byte_53
    BPL loc_17A796
    LDA byte_56
    CMP #3
    BNE loc_17A760
    LDX #3

loc_17A756:
    LDA #6
    JSR sub_17A7BE
    BCS loc_17A7A0
    DEX
    BPL loc_17A756

loc_17A760:
    LDA byte_56
    CMP #4
    BNE loc_17A78A
    LDX #3

loc_17A768:
    LDA #1
    JSR sub_17A7BE
    BCS loc_17A7A0
    DEX
    BPL loc_17A768
    LDX #3

loc_17A774:
    LDA #2
    JSR sub_17A7BE
    BCS loc_17A7A0
    DEX
    BPL loc_17A774
    LDX #3

loc_17A780:
    LDA #4
    JSR sub_17A7BE
    BCS loc_17A7A0
    DEX
    BPL loc_17A780

loc_17A78A:
    LDX #3

loc_17A78C:
    LDA #7
    JSR sub_17A7BE
    BCS loc_17A7A0
    DEX
    BPL loc_17A78C

loc_17A796:
    JSR sub_17A7AB
    LDA byte_54
    BMI loc_17A796
    JMP sub_17A7A3
; ---------------------------------------------------------------------------

loc_17A7A0:
    JMP sub_17A7A3
; End of function sub_17A74A


; =============== S U B R O U T I N E =======================================


sub_17A7A3:
    LDA byte_54
    LDY byte_53
    STA byte_61C,Y
    RTS
; End of function sub_17A7A3


; =============== S U B R O U T I N E =======================================


sub_17A7AB:
    JSR sub_F1ED
    AND #OtherNMIFlags
    TAY
    LDA byte_600,Y
    BEQ sub_17A7AB
    LDA byte_601,Y
    BMI sub_17A7AB
    STY byte_54
    RTS
; End of function sub_17A7AB


; =============== S U B R O U T I N E =======================================


sub_17A7BE:
    CMP CurrentPlayer.PureSave.CharactersNum,X
    BNE loc_17A7D8
    TXA
    ASL A
    ASL A
    ASL A
    ASL A
    ASL A
    TAY
    LDA byte_600,Y
    BEQ loc_17A7D8
    LDA byte_601,Y
    BMI loc_17A7D8
    STY byte_54
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17A7D8:
    CLC
    RTS
; End of function sub_17A7BE


; =============== S U B R O U T I N E =======================================


sub_17A7DA:
    JSR sub_17AC06

loc_17A7DD:
    LDA #2
    LDX CurrentGame.field_21C
    BPL loc_17A7E6
    LDA #$13

loc_17A7E6:
    JSR sub_F4CE
    JSR sub_17A90D
    JSR sub_F2D5    ; trap function with no return
; End of function sub_17A7DA    ; transfers control to a function whose address is selected from the table located after the call of this function
    ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
    .word sub_17A802, sub_17A814, sub_17A847, sub_17A87D, sub_17A888
    .word sub_17A8BA, sub_17A8BF, sub_17A8E2, sub_17A8E7
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_6. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17A802:
    LDA #1
    LDY byte_53
    STA byte_61D,Y
    JSR sub_17A962
    BCC loc_17A811
    JMP loc_17A7DD
; ---------------------------------------------------------------------------

loc_17A811:
    JMP nullsub_6
; End of function sub_17A802


; =============== S U B R O U T I N E =======================================


sub_17A814:
    JSR wait_nmi_processed
    LDA #1
    STA byte_59
    LDA #$14
    STA SpriteTable.pFrame+$E0
    LDA #$97
    STA SpriteTable.pFrame+$E1
    LDA #4
    STA SpriteTable.Tiles+$E0
    LDA #0
    STA SpriteTable.TileID+$E0
    STA SpriteTable.field_4+$E0
    STA SpriteTable.field_5+$E0
    LDA #$D0
    STA SpriteTable.PosX+$E0
    LDA #$47
    STA SpriteTable.PosY+$E0
    LDA #1
    STA NMIFlags
    CLC
    JMP nullsub_6
; End of function sub_17A814


; =============== S U B R O U T I N E =======================================


sub_17A847:
    JSR sub_17A86B
    LDA #0
    STA Pointer
    LDY #7

loc_17A850:
    LDA (pCharacter),Y
    ORA Pointer
    STA Pointer
    DEY
    BNE loc_17A850
    LDA Pointer
    BEQ loc_17A868
    JSR sub_17AB10
    BCS loc_17A865
    JMP nullsub_6
; ---------------------------------------------------------------------------

loc_17A865:
    JMP sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A868:
    JMP loc_17A7DD
; End of function sub_17A847


; =============== S U B R O U T I N E =======================================


sub_17A86B:
    LDY byte_53
    CLC
    LDA pPPUTab,Y
    ADC #$30
    STA pCharacter
    LDA pPPUTab+1,Y
    ADC #0
    STA pCharacter+1
    RTS
; End of function sub_17A86B


; =============== S U B R O U T I N E =======================================


sub_17A87D:
    LDA #$59

loc_17A87F:
    LDY byte_53
    STA byte_61D,Y
    CLC
    JMP nullsub_6
; End of function sub_17A87D


; =============== S U B R O U T I N E =======================================


sub_17A888:
    LDY byte_53
    CLC
    LDA pPPUTab,Y
    ADC #$20
    STA pCharacter
    LDA pPPUTab+1,Y
    ADC #0
    STA pCharacter+1
    LDA #0
    STA Pointer
    LDY #7

loc_17A89F:
    LDA (pCharacter),Y
    ORA Pointer
    STA Pointer
    DEY
    BPL loc_17A89F
    LDA Pointer
    BEQ loc_17A8B7
    JSR sub_17AA08
    BCS loc_17A8B4
    JMP nullsub_6
; ---------------------------------------------------------------------------

loc_17A8B4:
    JMP sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A8B7:
    JMP loc_17A7DD
; End of function sub_17A888


; =============== S U B R O U T I N E =======================================


sub_17A8BA:
    LDA #$48
    JMP loc_17A87F
; End of function sub_17A8BA


; =============== S U B R O U T I N E =======================================


sub_17A8BF:
    LDA #$80
    STA byte_54
    JSR sub_17A991
    BCS loc_17A8DF
    LDX CurrentFieldPosition
    LDA byte_591,X
    TAX
    DEX
    TXA
    STA byte_54
    LDY byte_53
    STA byte_61C,Y
    LDA #$6F
    STA byte_61D,Y
    JMP nullsub_6
; ---------------------------------------------------------------------------

loc_17A8DF:
    JMP loc_17A7DD
; End of function sub_17A8BF


; =============== S U B R O U T I N E =======================================


sub_17A8E2:
    LDA #$1C
    JMP loc_17A87F
; End of function sub_17A8E2


; =============== S U B R O U T I N E =======================================


sub_17A8E7:
    SEC
    LDA byte_53
    BEQ loc_17A909
    SBC #$20
    STA byte_53
    TAY
    LDA byte_600,Y
    BEQ sub_17A8E7
    LDA byte_601,Y
    BMI sub_17A8E7
    LDA byte_601,Y
    AND #$F4
    BNE sub_17A8E7
    LDA byte_61E,Y
    AND #$20
    BNE sub_17A8E7

loc_17A909:
    SEC
    JMP nullsub_6
; End of function sub_17A8E7


; =============== S U B R O U T I N E =======================================


sub_17A90D:
    LDX #$73
    LDY #$9F
    LDA byte_56
    CMP #1
    BNE loc_17A91E
    LDX #$83
    LDY #$9F
    JMP loc_17A927
; ---------------------------------------------------------------------------

loc_17A91E:
    LDA CurrentGame.field_21C
    BPL loc_17A927
    LDX #$7B
    LDY #$9F

loc_17A927:
    STX pStr
    STY pStr+1
    LDX #$6B
    LDY #$9F
    STX pCursor
    STY pCursor+1
    JSR short_cursor_update
    BIT Buttons
    BVS loc_17A942
    LDA #9
    JSR sub_17A945
    LDA CurrentFieldPosition
    RTS
; ---------------------------------------------------------------------------

loc_17A942:
    LDA #8
    RTS
; End of function sub_17A90D


; =============== S U B R O U T I N E =======================================


sub_17A945:
    STA Pointer
    LDA CurrentFieldPosition
    LSR A
    ASL A
    CLC
    ADC PosY
    STA PosY
    LDA CurrentFieldPosition
    AND #1
    BEQ loc_17A95D
    CLC
    LDA PosX
    ADC Pointer
    STA PosX

loc_17A95D:
    LDA #$D
    JMP sub_F4CE
; End of function sub_17A945


; =============== S U B R O U T I N E =======================================


sub_17A962:
    JSR sub_17AC23
    BEQ loc_17A98D
    LDX #$80
    CMP #2
    BEQ loc_17A96F
    LDX #0

loc_17A96F:
    STX Pointer
    LDA byte_53
    AND #$80
    EOR Pointer
    STA byte_54
    JSR sub_17A991
    BCS loc_17A98F
    LDX CurrentFieldPosition
    LDA byte_591,X
    TAX
    DEX
    TXA
    STA byte_54
    LDY byte_53
    STA byte_61C,Y

loc_17A98D:
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17A98F:
    SEC
    RTS
; End of function sub_17A962


; =============== S U B R O U T I N E =======================================


sub_17A991:
    LDA #$B
    JSR sub_F4CE
    JSR sub_17A9B3
    LDA #$8B
    STA pCursor
    LDA #$9F
    STA pCursor+1
    JSR cursor_update
    BIT Buttons
    BVS loc_17A9B1
    BMI loc_17A9AD
    JMP sub_17A991
; ---------------------------------------------------------------------------

loc_17A9AD:
    LDA CurrentFieldPosition
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17A9B1:
    SEC
    RTS
; End of function sub_17A991


; =============== S U B R O U T I N E =======================================


sub_17A9B3:
    LDA #$12
    STA PosY
    LDX #0
    STX byte_591
    STX byte_592
    STX byte_593
    STX unk_594
    INX
    STX byte_590
    LDA byte_54
    PHA
    LDY #4

loc_17A9CE:
    TYA
    PHA
    LDY byte_54
    LDA byte_600,Y
    BEQ loc_17A9F8
    LDY byte_54
    BMI loc_17A9E4
    LDA byte_611,Y
    AND #6
    EOR #6
    BEQ loc_17A9F8

loc_17A9E4:
    INY
    TYA
    STA byte_590,X
    INX
    TXA
    PHA
    JSR sub_17A4BB
    LDA #$C
    JSR sub_F4CE
    INC PosY
    PLA
    TAX

loc_17A9F8:
    CLC
    LDA byte_54
    ADC #$20
    STA byte_54
    PLA
    TAY
    DEY
    BNE loc_17A9CE
    PLA
    STA byte_54
    RTS
; End of function sub_17A9B3


; =============== S U B R O U T I N E =======================================


sub_17AA08:
    LDA #$E
    JSR sub_F4CE
    JSR sub_17AA67
    JSR sub_17AAE9
    BCS loc_17AA65
    LDY byte_53
    LDA CurrentFieldPosition
    STA unk_610,Y
    LDY CurrentFieldPosition
    LDA (pCharacter),Y
    JSR sub_17AAA4
    LDY byte_53
    JSR sub_17AC49
    BCS loc_17AA43
    JSR bank0   ; set memory bank 0 at $8000
    LDY #5
    LDA (AddrForJmp),Y
    JSR bank16  ; set memory bank $16 at $8000
    CMP #0
    BEQ loc_17AA4C
    LDY byte_53
    STA byte_61D,Y
    JSR sub_17A962
    BCS loc_17AA65
    RTS
; ---------------------------------------------------------------------------

loc_17AA43:
    LDX byte_53
    JSR sub_17A4BB
    LDX #$14
    BNE loc_17AA5E

loc_17AA4C:
    LDX #$10
    JSR bank0   ; set memory bank 0 at $8000
    LDY #3
    LDA (AddrForJmp),Y
    JSR bank16  ; set memory bank $16 at $8000
    CMP #0
    BEQ loc_17AA5E
    LDX #$11

loc_17AA5E:
    TXA
    JSR sub_F4CE
    JSR wait_A_B

loc_17AA65:
    SEC
    RTS
; End of function sub_17AA08


; =============== S U B R O U T I N E =======================================


sub_17AA67:
    LDY #0

loc_17AA69:
    TYA
    PHA
    AND #1
    TAX
    LDA unk_169FB2,X
    STA PosX
    TYA
    LSR A
    TAX
    LDA unk_169FB4,X
    STA PosY
    LDA (pCharacter),Y
    BEQ loc_17AA9C
    JSR sub_17AAA4
    JSR bank0   ; set memory bank 0 at $8000
    LDA #4
    STA unk_588
    LDY #0
    LDA (AddrForJmp),Y
    STA unk_589
    INY
    LDA (AddrForJmp),Y
    STA unk_58A
    LDA #$F
    JSR sub_F4CE

loc_17AA9C:
    PLA
    TAY
    INY
    CPY #8
    BNE loc_17AA69
    RTS
; End of function sub_17AA67


; =============== S U B R O U T I N E =======================================


sub_17AAA4:
    LDX #0
    STX AddrForJmp+1
    LDX #3

loc_17AAAA:
    ASL A
    ROL AddrForJmp+1
    DEX
    BNE loc_17AAAA
    CLC
    ADC #0
    STA AddrForJmp
    LDA AddrForJmp+1
    ADC #$98
    STA AddrForJmp+1
    RTS
; End of function sub_17AAA4


; =============== S U B R O U T I N E =======================================


sub_17AABC:
    CLC
    LDA pPPUTab,Y
    ADC #$20
    STA Pointer
    LDA pPPUTab+1,Y
    ADC #0
    STA Pointer+1
    RTS
; End of function sub_17AABC


; =============== S U B R O U T I N E =======================================


sub_17AACC:
    JSR bank0   ; set memory bank 0 at $8000
    LDA #$21
    STA byte_590
    LDY #0
    LDA (AddrForJmp),Y
    STA byte_591
    INY
    LDA (AddrForJmp),Y
    STA byte_592
    LDA #0
    STA byte_593
    JMP bank16  ; set memory bank $16 at $8000
; End of function sub_17AACC


; =============== S U B R O U T I N E =======================================


sub_17AAE9:
    LDA #$95
    STA pCursor
    LDA #$9F
    STA pCursor+1
    LDA pCharacter
    STA pStr
    LDA pCharacter+1
    STA pStr+1
    JSR short_cursor_update
    BIT Buttons
    BVS loc_17AB0E
    BMI loc_17AB05
    JMP sub_17AAE9
; ---------------------------------------------------------------------------

loc_17AB05:
    LDA #$C
    JSR sub_17A945
    LDA CurrentFieldPosition
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17AB0E:
    SEC
    RTS
; End of function sub_17AAE9


; =============== S U B R O U T I N E =======================================


sub_17AB10:
    LDY #1

loc_17AB12:
    LDA (pCharacter),Y
    BEQ loc_17AB32
    TYA
    PHA
    LDA #$E
    JSR sub_F4CE
    LDA #$12
    JSR sub_F4CE
    JSR sub_17AB61
    JSR sub_17ABC2
    PLA
    TAY
    CPX #1
    BEQ loc_17AB39
    CPX #2
    BEQ loc_17AB5F

loc_17AB32:
    INY
    CPY #8
    BEQ sub_17AB10
    BNE loc_17AB12

loc_17AB39:
    LDY CurrentFieldPosition
    LDA byte_580,Y
    JSR set_jmp_addr
    JSR bank0   ; set memory bank 0 at $8000
    LDY #5
    LDA (AddrForJmp),Y
    BEQ loc_17AB57
    LDY byte_53
    STA byte_61D,Y
    PHA
    JSR bank16  ; set memory bank $16 at $8000
    PLA
    JMP sub_17A962
; ---------------------------------------------------------------------------

loc_17AB57:
    LDA #$10
    JSR sub_F4CE
    JSR wait_A_B

loc_17AB5F:
    SEC
    RTS
; End of function sub_17AB10


; =============== S U B R O U T I N E =======================================


sub_17AB61:
    TYA
    ASL A
    ASL A
    ASL A
    STA Pointer
    LDA #$80
    STA Pointer+1
    LDX #0

loc_17AB6D:
    LDA #0
    STA byte_580,X
    LDA (pCharacter),Y
    AND Pointer+1
    BEQ loc_17AB7D
    LDA Pointer
    STA byte_580,X

loc_17AB7D:
    INC Pointer
    INX
    LSR Pointer+1
    BCC loc_17AB6D
    LDY #0

loc_17AB86:
    TYA
    PHA
    AND #1
    TAX
    LDA unk_169FB2,X
    STA PosX
    TYA
    LSR A
    TAX
    LDA unk_169FB4,X
    STA PosY
    LDA byte_580,Y
    BEQ loc_17ABBA
    JSR set_jmp_addr
    JSR bank0   ; set memory bank 0 at $8000
    LDA #4
    STA unk_588
    LDY #0
    LDA (AddrForJmp),Y
    STA unk_589
    INY
    LDA (AddrForJmp),Y
    STA unk_58A
    LDA #$F
    JSR sub_F4CE

loc_17ABBA:
    PLA
    TAY
    INY
    CPY #8
    BNE loc_17AB86
    RTS
; End of function sub_17AB61


; =============== S U B R O U T I N E =======================================


sub_17ABC2:
    LDA #$A7
    STA pCursor
    LDA #$9F
    STA pCursor+1
    JSR cursor_update
    LDA Buttons
    AND #6
    BNE loc_17ABE6
    LDA Buttons
    AND #$81
    BNE loc_17ABE0
    BIT Buttons
    BVS loc_17ABE3
    JMP sub_17ABC2
; ---------------------------------------------------------------------------

loc_17ABE0:
    LDX #0
    RTS
; ---------------------------------------------------------------------------

loc_17ABE3:
    LDX #2
    RTS
; ---------------------------------------------------------------------------

loc_17ABE6:
    LDA #$9D
    STA pCursor
    LDA #$9F
    STA pCursor+1
    JSR cursor_update
    LDA Buttons
    AND #8
    BNE sub_17ABC2
    BIT Buttons
    BVS loc_17AC03
    BMI loc_17AC00
    JMP sub_17ABC2
; ---------------------------------------------------------------------------

loc_17AC00:
    LDX #1
    RTS
; ---------------------------------------------------------------------------

loc_17AC03:
    LDX #2
    RTS
; End of function sub_17ABC2


; =============== S U B R O U T I N E =======================================


sub_17AC06:
    LDA #$A
    JSR sub_F4CE
    JSR sub_17A4BB
    JSR bank0   ; set memory bank 0 at $8000
    LDA #0
    STA byte_70
    LDA #$7A
    STA PointerTilePack
    LDA #$8E
    STA PointerTilePack+1
    JSR loc_C6DB
    JMP bank16  ; set memory bank $16 at $8000
; End of function sub_17AC06


; =============== S U B R O U T I N E =======================================


sub_17AC23:
    PHA
    AND #3
    TAX
    INX
    LDA #1
    SEC

loc_17AC2B:
    ROR A
    ROR A
    DEX
    BNE loc_17AC2B
    STA Pointer
    PLA
    LSR A
    LSR A
    TAY
    LDA unk_169EC7,Y
    AND Pointer
    STA Pointer+1

loc_17AC3D:
    LSR Pointer
    BCS loc_17AC46
    LSR Pointer+1
    JMP loc_17AC3D
; ---------------------------------------------------------------------------

loc_17AC46:
    LDA Pointer+1
    RTS
; End of function sub_17AC23


; =============== S U B R O U T I N E =======================================


sub_17AC49:
    JSR bank0   ; set memory bank 0 at $8000
    LDA byte_611,Y
    STA pTileID
    TAX
    SEC
    LDA #0

loc_17AC55:
    ROL A
    DEX
    BNE loc_17AC55
    STA TilesCount
    LDY #2
    LDA (AddrForJmp),Y
    JSR bank16  ; set memory bank $16 at $8000
    AND TilesCount
    BEQ loc_17AC68
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17AC68:
    SEC
    RTS
; End of function sub_17AC49


; =============== S U B R O U T I N E =======================================


sub_17AC6A:
    JSR sub_17B75A
    BCS loc_17AC91
    LDX #8

loc_17AC71:
    TXA
    PHA
    JSR sub_17ACA5
    JSR sub_17ACD6  ; out message, animation
    LDA #$FF
    LDY byte_53
    STA byte_61D,Y
    JSR sub_17B75A  ; check win, lose, out message
    BCS loc_17AC90
    PLA
    TAX
    DEX
    BNE loc_17AC71
    DEC byte_5B
    BEQ loc_17AC93
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17AC90:
    PLA

loc_17AC91:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17AC93:
    LDA byte_56
    CMP #1
    BEQ loc_17ACA3
    LDX #$64
    JSR delay
    LDA #$92
    JSR sub_17A3F8

loc_17ACA3:
    SEC
    RTS
; End of function sub_17AC6A


; =============== S U B R O U T I N E =======================================


sub_17ACA5:
    LDA #0
    STA Pointer
    STA Pointer+1

loc_17ACAB:
    LDY Pointer
    LDA byte_61D,Y
    CMP #$FF
    BEQ loc_17ACC8
    CMP #$5E
    BEQ loc_17ACD3
    LDA byte_60C,Y
    JSR sub_F3FD
    CMP Pointer+1
    BCC loc_17ACC8
    STA Pointer+1
    LDA Pointer
    STA AddrForJmp

loc_17ACC8:
    CLC
    LDA Pointer
    ADC #$20
    STA Pointer
    BNE loc_17ACAB
    LDY AddrForJmp

loc_17ACD3:
    STY byte_53
    RTS
; End of function sub_17ACA5


; =============== S U B R O U T I N E =======================================


sub_17ACD6:
    LDY byte_53
    LDA byte_600,Y
    BNE loc_17ACE2
    LDA #0
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACE2:
    LDA byte_601,Y
    AND #$80
    BEQ loc_17ACEE
    LDA #0
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACEE:
    LDA byte_601,Y
    AND #$40
    BEQ loc_17ACFA
    LDA #$47
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACFA:
    LDA byte_601,Y
    AND #$20
    BEQ loc_17AD06
    LDA #$46
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD06:
    LDA byte_601,Y
    AND #$10
    BEQ loc_17AD2B
    JSR sub_F1ED
    AND #$E0
    BNE loc_17AD26
    LDA byte_601,Y
    AND #$EF
    STA byte_601,Y
    STY byte_54
    JSR statistical_frame
    LDA #$8E
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD26:
    LDA #$3C
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD2B:
    LDA byte_601,Y
    AND #4
    BEQ loc_17AD37
    LDA #$68
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD37:
    LDA byte_61E,Y
    AND #2
    BEQ loc_17AD4A
    LDA byte_61D,Y
    CMP #$76
    BEQ loc_17AD4A
    LDA #$56
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD4A:
    LDA byte_61E,Y
    AND #$20
    BEQ loc_17AD6A
    JSR sub_F1ED
    AND #$C0
    BNE loc_17AD65
    LDA byte_61E,Y
    AND #$DF
    STA byte_61E,Y
    LDA #$8B
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD65:
    LDA #$1C
    JMP loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD6A:
    LDA byte_601,Y
    AND #8
    BEQ loc_17AD76
    LDA #$3A
    JSR sub_17A3F8

loc_17AD76:
    LDY byte_53
    LDA byte_61D,Y

loc_17AD7B:
    LDY #0
    STY Pointer+1
    ASL A
    ROL Pointer+1
    STA Pointer
    CLC
    LDA #$FB
    ADC Pointer
    STA Pointer
    LDA #$97
    ADC Pointer+1
    STA Pointer+1
    LDY #0
    LDA (Pointer),Y
    STA word_5E
    INY
    LDA (Pointer),Y
    STA word_5E+1

loc_17AD9C:
    LDY #0
    LDA (word_5E),Y
    LSR A
    LSR A
    LSR A
    LSR A
    JSR sub_F2D5    ; trap no return
; ---------------------------------------------------------------------------
    .word sub_17ADC4, sub_17ADC9, sub_17ADF1, sub_17AE5D, sub_17B804
    .word sub_17AEEA, sub_17AF08, sub_17AF31, sub_17AF39, sub_17AF7B
    .word sub_17AF92, sub_17AF98, sub_17AE8E
; ---------------------------------------------------------------------------

loc_17ADC1:
    JMP sub_17A3F8
; End of function sub_17ACD6


; =============== S U B R O U T I N E =======================================


sub_17ADC4:
    LDA #1
    JMP sub_17AFE1
; End of function sub_17ADC4


; =============== S U B R O U T I N E =======================================


sub_17ADC9:
    LDY #0
    LDA (word_5E),Y
    AND #$F
    JSR sub_F2AE    ; trap function without return
; End of function sub_17ADC9    ; transfers control to a function whose address is selected from the table located after the call of this function;
    ; after the function execution is completed, the first function from the table is executed.
    ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
    .word sub_17ADEC, sub_17AFED, sub_17AFF2, sub_17AFFE, sub_17B008
    .word sub_17B012, sub_17B022, sub_17B032, sub_17B037, sub_17B041
    .word sub_17B04B, sub_17B055, sub_17B05F

; =============== S U B R O U T I N E =======================================


sub_17ADEC:
    LDA #1
    JMP sub_17AFCD
; End of function sub_17ADEC


; =============== S U B R O U T I N E =======================================


sub_17ADF1:
    LDY #1
    LDA (word_5E),Y
    LDX #0
    STX Pointer+1
    LDX #3

loc_17ADFB:
    ASL A
    ROL Pointer+1
    DEX
    BNE loc_17ADFB
    CLC
    ADC #0
    STA Pointer
    LDA Pointer+1
    ADC #$9E
    STA Pointer+1
    JSR bank0   ; set memory bank 0 at $8000
    LDY #7
    LDA (Pointer),Y
    STA byte_4E
    LDA #0
    STA byte_4F
    LDA #$21
    STA byte_590
    LDY #0
    LDA (Pointer),Y
    STA byte_591
    INY
    LDA (Pointer),Y
    STA byte_592
    LDA #0
    STA byte_593
    JSR bank16  ; set memory bank $16 at $8000
    LDA #$64
    JSR sub_17A3F8
    JSR sub_17B1C5
    BCC loc_17AE53
    JSR sub_17B1D1
    BCC loc_17AE58
    JSR sub_17B0A4
    LDA byte_58
    JSR sub_F41F
    LDA #0
    STA byte_58
    LDA #2
    JMP sub_17AFCD
; ---------------------------------------------------------------------------

loc_17AE53:
    LDA #$51
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17AE58:
    LDA #$54
    JMP sub_17A3F8
; End of function sub_17ADF1


; =============== S U B R O U T I N E =======================================


sub_17AE5D:
    LDY #1
    LDA (word_5E),Y
    JSR sub_17AAA4
    JSR sub_17AACC
    LDY byte_53
    BMI loc_17AE7B
    JSR sram_write_enable
    LDY #0
    LDA (word_5E),Y
    AND #$F
    CMP #1
    BNE loc_17AE7B
    JSR sub_17B4E5

loc_17AE7B:
    LDA #$63
    JSR sub_17A3F8
    LDA byte_58
    JSR sub_F41F
    LDA #0
    STA byte_58
    LDA #2
    JMP sub_17AFCD
; End of function sub_17AE5D


; =============== S U B R O U T I N E =======================================


sub_17AE8E:
    LDY #1
    LDA (word_5E),Y
    JSR sub_17AAA4
    JSR sub_17AACC
    LDY byte_53
    BMI loc_17AEE5
    LDY #0
    LDA (word_5E),Y
    AND #$F
    JSR sub_F2D5    ; trap function with no return
; End of function sub_17AE8E    ; transfers control to a function whose address is selected from the table located after the call of this function
    ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
    .word sub_17AEAB, sub_17AEBD, sub_17AECF

; =============== S U B R O U T I N E =======================================


sub_17AEAB:
    JSR sub_F1ED
    AND #$E0
    BNE loc_17AEE5
    JSR sub_17B4E5
    LDA #$75
    JSR sub_17A3F8
    JMP loc_17AEE5
; End of function sub_17AEAB


; =============== S U B R O U T I N E =======================================


sub_17AEBD:
    JSR sub_F1ED
    AND #$E0
    BNE loc_17AEE5
    JSR sub_17B4E5
    LDA #$78
    JSR sub_17A3F8
    JMP loc_17AEE5
; End of function sub_17AEBD


; =============== S U B R O U T I N E =======================================


sub_17AECF:
    JSR sram_write_enable
    DEC CurrentGame.PureSave.field_1F
    JSR sram_read_enable
    LDA CurrentGame.PureSave.field_1F
    BNE loc_17AEE5
    JSR sub_17B4E5
    LDA #$91
    JSR sub_17A3F8

loc_17AEE5:
    LDA #2
    JMP sub_17AFCD
; End of function sub_17AECF


; =============== S U B R O U T I N E =======================================


sub_17AEEA:
    LDY #0
    LDA (word_5E),Y
    AND #$F
    JSR sub_F2AE    ; trap no return
; End of function sub_17AEEA

; ---------------------------------------------------------------------------
    .word sub_17AF03, nullsub_4, sub_17B1E0, sub_17B202, sub_17B21D
    .word sub_17B238, sub_17B23D, sub_17B248

; =============== S U B R O U T I N E =======================================


sub_17AF03:
    LDA #1
    JMP sub_17AFCD
; End of function sub_17AF03


; =============== S U B R O U T I N E =======================================


sub_17AF08:
    LDY #1
    LDA (word_5E),Y
    STA pTileID
    DEY
    LDA (word_5E),Y
    AND #$F
    JSR sub_F2AE    ; trap function without return
; End of function sub_17AF08    ; transfers control to a function whose address is selected from the table located after the call of this function;
    ; after the function execution is completed, the first function from the table is executed.
    ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
    .word sub_17AF2C, sub_17B250, sub_17B2D9, sub_17B2F9, sub_17B302
    .word sub_17B319, sub_17B320, sub_17B3C2, sub_17B3CE, sub_17B3D3
    .word sub_17B3D8

; =============== S U B R O U T I N E =======================================


sub_17AF2C:
    LDA #2
    JMP sub_17AFCD
; End of function sub_17AF2C


; =============== S U B R O U T I N E =======================================


sub_17AF31:
    JSR sub_17AF53
    BCC sub_17AF3E
    JMP sub_17AF4E
; End of function sub_17AF31


; =============== S U B R O U T I N E =======================================


sub_17AF39:
    JSR sub_17AF53
    BCC sub_17AF4E
; End of function sub_17AF39


; =============== S U B R O U T I N E =======================================


sub_17AF3E:
    LDY #1
    LDA (word_5E),Y
    PHA
    INY
    LDA (word_5E),Y
    STA word_5E+1
    PLA
    STA word_5E
    JMP loc_17AD9C
; End of function sub_17AF3E


; =============== S U B R O U T I N E =======================================


sub_17AF4E:
    LDA #3
    JMP sub_17AFCD
; End of function sub_17AF4E


; =============== S U B R O U T I N E =======================================


sub_17AF53:
    LDY #0
    LDA (word_5E),Y
    AND #$F
    JSR sub_F2AE    ; trap function without return
; End of function sub_17AF53    ; transfers control to a function whose address is selected from the table located after the call of this function;
    ; after the function execution is completed, the first function from the table is executed.
    ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
    .word nullsub_5, sub_17B0B0, sub_17B0CC, sub_17B0F7, sub_17B112
    .word sub_17B125, sub_17B131, loc_17B0BC, sub_17B150, sub_17B164
    .word sub_17B169, sub_17B174, sub_17B180, sub_17B188, sub_17B194
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_5. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17AF7B:
    LDA word_5E+1
    PHA
    LDA word_5E
    PHA
    JSR sub_17AFD3
    JSR loc_17AD9C
    PLA
    STA word_5E
    PLA
    STA word_5E+1
    LDA #3
    JMP sub_17AFCD
; End of function sub_17AF7B


; =============== S U B R O U T I N E =======================================


sub_17AF92:
    JSR sub_17AFD3
    JMP loc_17AD9C
; End of function sub_17AF92


; =============== S U B R O U T I N E =======================================


sub_17AF98:
    LDY #0
    LDA (word_5E),Y
    AND #$F
    TAX
    LDA #1
    JSR sub_17AFE1

loc_17AFA4:
    TXA
    PHA
    LDA word_5E+1
    PHA
    LDA word_5E
    PHA
    JSR loc_17AD9C
    LDA word_5E
    STA Pointer
    LDA word_5E+1
    STA Pointer+1
    PLA
    STA word_5E
    PLA
    STA word_5E+1
    PLA
    TAX
    DEX
    BNE loc_17AFA4
    LDA Pointer
    STA word_5E
    LDA Pointer+1
    STA word_5E+1
    JMP loc_17AD9C
; End of function sub_17AF98


; =============== S U B R O U T I N E =======================================


sub_17AFCD:
    JSR sub_17AFE1
    JMP loc_17AD9C
; End of function sub_17AFCD


; =============== S U B R O U T I N E =======================================


sub_17AFD3:
    LDY #1
    LDA (word_5E),Y
    PHA
    INY
    LDA (word_5E),Y
    STA word_5E+1
    PLA
    STA word_5E
    RTS
; End of function sub_17AFD3


; =============== S U B R O U T I N E =======================================


sub_17AFE1:
    CLC
    ADC word_5E
    STA word_5E
    LDA #0
    ADC word_5E+1
    STA word_5E+1
    RTS
; End of function sub_17AFE1


; =============== S U B R O U T I N E =======================================


sub_17AFED:
    LDY byte_53
    JMP sub_17B513
; End of function sub_17AFED


; =============== S U B R O U T I N E =======================================


sub_17AFF2:
    LDY byte_54
    BPL loc_17AFF9
    JMP sub_17B555
; ---------------------------------------------------------------------------

loc_17AFF9:
    LDA #1
    STA byte_47
    RTS
; End of function sub_17AFF2


; =============== S U B R O U T I N E =======================================


sub_17AFFE:
    LDY byte_54
    BPL loc_17B005
    JMP sub_17B5D3
; ---------------------------------------------------------------------------

loc_17B005:
    JMP sub_17B6B2
; End of function sub_17AFFE


; =============== S U B R O U T I N E =======================================


sub_17B008:
    LDY byte_54
    BPL loc_17B00F
    JMP sub_17B67C
; ---------------------------------------------------------------------------

loc_17B00F:
    JMP sub_17B6F1
; End of function sub_17B008


; =============== S U B R O U T I N E =======================================


sub_17B012:
    LDA #$2D
    JSR sub_17A3F8
    JSR sub_17B069
    BCS locret_17B021
    LDA #$40
    JSR sub_17A3F8

locret_17B021:

    RTS
; End of function sub_17B012


; =============== S U B R O U T I N E =======================================


sub_17B022:
    LDA #$2E
    JSR sub_17A3F8
    JSR sub_17B069
    BCS locret_17B031
    LDA #$41
    JSR sub_17A3F8

locret_17B031:

    RTS
; End of function sub_17B022


; =============== S U B R O U T I N E =======================================


sub_17B032:
    LDA #2
    STA byte_47
    RTS
; End of function sub_17B032


; =============== S U B R O U T I N E =======================================


sub_17B037:
    LDY byte_54
    BPL loc_17B03E
    JMP sub_17B5DA
; ---------------------------------------------------------------------------

loc_17B03E:
    JMP sub_17B6BB
; End of function sub_17B037


; =============== S U B R O U T I N E =======================================


sub_17B041:
    LDY byte_54
    BPL loc_17B048
    JMP sub_17B5E1
; ---------------------------------------------------------------------------

loc_17B048:
    JMP sub_17B6C4
; End of function sub_17B041


; =============== S U B R O U T I N E =======================================


sub_17B04B:
    LDY byte_54
    BPL loc_17B052
    JMP sub_17B5E8
; ---------------------------------------------------------------------------

loc_17B052:
    JMP sub_17B6CD
; End of function sub_17B04B


; =============== S U B R O U T I N E =======================================


sub_17B055:
    LDY byte_54
    BPL loc_17B05C
    JMP sub_17B5EF
; ---------------------------------------------------------------------------

loc_17B05C:
    JMP sub_17B6D6
; End of function sub_17B055


; =============== S U B R O U T I N E =======================================


sub_17B05F:
    LDY byte_54
    BPL loc_17B066
    JMP sub_17B5F6
; ---------------------------------------------------------------------------

loc_17B066:
    JMP sub_17B6DF
; End of function sub_17B05F


; =============== S U B R O U T I N E =======================================


sub_17B069:
    LDY #$80

loc_17B06B:
    CPY byte_53
    BEQ loc_17B076
    LDA byte_61E,Y
    AND #1
    BNE loc_17B07F

loc_17B076:
    TYA
    CLC
    ADC #$20
    TAY
    BNE loc_17B06B
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17B07F:
    STY byte_54
    JSR sub_17B513
    LDY byte_54
    LDA byte_61E,Y
    AND #$FE
    STA byte_61E,Y
    LDA #0
    STA byte_61D,Y
    LDY byte_53
    LDA byte_600,Y
    LDY byte_54
    STA byte_600,Y
    LDA #$42
    JSR sub_17A3F8
    SEC
    RTS
; End of function sub_17B069


; =============== S U B R O U T I N E =======================================


sub_17B0A4:
    LDA #$19
    LDX #$FB
    LDY #$A7    ; BANK19:A7FC
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte
    JMP statistical_frame
; End of function sub_17B0A4


; =============== S U B R O U T I N E =======================================


sub_17B0B0:
    LDY byte_53
    LDA byte_600,Y
    BEQ loc_17B0CA
    LDA byte_601,Y
    BMI loc_17B0CA

loc_17B0BC:
    LDY byte_54
    LDA byte_600,Y
    BEQ loc_17B0CA
    LDA byte_601,Y
    BMI loc_17B0CA
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17B0CA:
    SEC
    RTS
; End of function sub_17B0B0


; =============== S U B R O U T I N E =======================================


sub_17B0CC:
    LDA byte_23
    BNE loc_17B0F3
    LDY byte_54
    LDA byte_601,Y
    AND #$70
    BNE loc_17B0F3
    LDA byte_61E,Y
    BMI loc_17B0F3
    LDA unk_60B,Y
    STA Pointer
    LDY byte_53
    LDA unk_60B,Y
    STA AddrForJmp
    JSR sub_17B1A2
    LDA Pointer
    CMP AddrForJmp
    BCS loc_17B0F5

loc_17B0F3:
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17B0F5:
    SEC
    RTS
; End of function sub_17B0CC


; =============== S U B R O U T I N E =======================================


sub_17B0F7:
    JSR sub_17BFE2
    BCS locret_17B111
    LDY byte_53
    LDA unk_60B,Y
    STA Pointer
    LDY byte_54
    LDA unk_60B,Y
    STA AddrForJmp
    JSR sub_17B1A2
    LDA AddrForJmp
    CMP Pointer

locret_17B111:

    RTS
; End of function sub_17B0F7


; =============== S U B R O U T I N E =======================================


sub_17B112:
    LDY byte_53
    LDA byte_61E,Y
    AND #$80
    EOR #$80
    ROL A
    BCS locret_17B124
    JSR sub_F1ED
    AND #$80
    ROL A

locret_17B124:

    RTS
; End of function sub_17B112


; =============== S U B R O U T I N E =======================================


sub_17B125:
    LDA byte_53
    BMI loc_17B12F
    LDA byte_23
    BEQ loc_17B12F
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17B12F:
    SEC
    RTS
; End of function sub_17B125


; =============== S U B R O U T I N E =======================================


sub_17B131:
    LDY byte_54
    BMI loc_17B14C
    LDA pPPUTab,Y
    STA Pointer
    LDA pPPUTab+1,Y
    STA Pointer+1
    LDY #$20 ; ' '

loc_17B141:
    LDA (Pointer),Y
    CMP #$68
    BEQ loc_17B14E
    INY
    CPY #$28
    BNE loc_17B141

loc_17B14C:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17B14E:
    CLC
    RTS
; End of function sub_17B131


; =============== S U B R O U T I N E =======================================


sub_17B150:
    LDY byte_54
    LDA unk_602,Y
    AND #$80
    BNE loc_17B160
    LDA unk_602,Y
    AND #1
    BNE loc_17B162

loc_17B160:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17B162:
    CLC
    RTS
; End of function sub_17B150


; =============== S U B R O U T I N E =======================================


sub_17B164:
    JSR sub_F1ED
    ASL A
    RTS
; End of function sub_17B164


; =============== S U B R O U T I N E =======================================


sub_17B169:
    LDY byte_54
    LDA unk_602,Y
    AND #$80
    EOR #$80
    ROL A
    RTS
; End of function sub_17B169


; =============== S U B R O U T I N E =======================================


sub_17B174:
    LDY byte_54
    LDA unk_602,Y
    AND #4
    EOR #4
    CMP #1
    RTS
; End of function sub_17B174


; =============== S U B R O U T I N E =======================================


sub_17B180:
    LDA byte_21
    BNE loc_17B186
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17B186:
    CLC
    RTS
; End of function sub_17B180


; =============== S U B R O U T I N E =======================================


sub_17B188:
    LDY byte_54
    LDA byte_611,Y
    AND #6
    EOR #6
    CMP #1
    RTS
; End of function sub_17B188


; =============== S U B R O U T I N E =======================================


sub_17B194:
    LDA byte_56
    CMP #5
    BEQ loc_17B1A0
    CMP #6
    BEQ loc_17B1A0
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17B1A0:
    CLC
    RTS
; End of function sub_17B194


; =============== S U B R O U T I N E =======================================


sub_17B1A2:
    LDA #1
    STA Pointer+1
    SEC
    LDA Pointer
    SBC AddrForJmp
    STA Pointer
    LDA Pointer+1
    SBC #0
    LSR A
    ROR Pointer
    SEC
    LDA Pointer
    SBC #$66
    BCS loc_17B1BD
    LDA #0

loc_17B1BD:
    STA Pointer
    JSR sub_F1ED
    STA AddrForJmp
    RTS
; End of function sub_17B1A2


; =============== S U B R O U T I N E =======================================


sub_17B1C5:
    LDY byte_53
    LDA byte_61E,Y
    AND #$40
    EOR #$40
    CMP #1
    RTS
; End of function sub_17B1C5


; =============== S U B R O U T I N E =======================================


sub_17B1D1:
    LDY byte_53
    SEC
    LDA unk_605,Y
    SBC byte_4E
    LDA unk_606,Y
    SBC byte_4F
    RTS
; End of function sub_17B1D1

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_4. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17B1E0:
    LDY byte_53
    LDA byte_601,Y
    AND #8
    BNE loc_17B1EF
    LDA byte_61C,Y
    STA byte_54
    RTS
; ---------------------------------------------------------------------------

loc_17B1EF:
    JSR sub_F1ED
    AND #$E0
    TAY
    LDA byte_600,Y
    BEQ loc_17B1EF
    LDA byte_601,Y
    BMI loc_17B1EF
    STY byte_54
    RTS
; End of function sub_17B1E0


; =============== S U B R O U T I N E =======================================


sub_17B202:
    LDY byte_53
    LDA byte_601,Y
    AND #8
    BEQ loc_17B212
    JSR sub_F1ED
    AND #$80
    BNE loc_17B22D

loc_17B212:
    LDX #$80
    LDA byte_53
    BPL loc_17B21A
    LDX #0

loc_17B21A:
    STX byte_54
    RTS
; End of function sub_17B202


; =============== S U B R O U T I N E =======================================


sub_17B21D:
    LDY byte_53
    LDA byte_601,Y
    AND #8
    BEQ loc_17B22D
    JSR sub_F1ED
    AND #$80
    BNE loc_17B212

loc_17B22D:
    LDX #0
    LDY byte_53
    BPL loc_17B235
    LDX #$80

loc_17B235:
    STX byte_54
    RTS
; End of function sub_17B21D


; =============== S U B R O U T I N E =======================================


sub_17B238:
    LDA byte_53
    STA byte_54
    RTS
; End of function sub_17B238


; =============== S U B R O U T I N E =======================================


sub_17B23D:
    LDX #0
    LDY byte_53
    BPL loc_17B245
    LDX #$80

loc_17B245:
    STX byte_54
    RTS
; End of function sub_17B23D


; =============== S U B R O U T I N E =======================================


sub_17B248:
    CLC
    LDA byte_54
    ADC #$20
    STA byte_54
    RTS
; End of function sub_17B248


; =============== S U B R O U T I N E =======================================


sub_17B250:
    LDY byte_54
    LDA unk_609,Y
    STA pTileID
    LDA unk_60A,Y
    STA pTileID+1
    SEC
    LDY byte_53
    LDA unk_607,Y
    STA byte_66
    STA pDist
    SBC pTileID
    LDA byte_608,Y
    STA TilesCount
    STA pDist+1
    SBC pTileID+1
    BCC loc_17B2A8
    LSR pTileID+1
    ROR pTileID
    SEC
    LDA byte_66
    SBC pTileID
    STA Pointer
    LDA TilesCount
    SBC pTileID+1
    STA Pointer+1

loc_17B284:
    LDA byte_56
    CMP #1
    BNE loc_17B297
    JSR sub_F1ED
    AND #7
    ORA #4
    STA Pointer
    LDA #0
    STA Pointer+1

loc_17B297:
    LDA Pointer
    ORA Pointer+1
    BNE loc_17B29F
    INC Pointer

loc_17B29F:
    LDA Pointer
    STA byte_4E
    LDA Pointer+1
    STA byte_4F
    RTS
; ---------------------------------------------------------------------------

loc_17B2A8:
    ASL byte_66
    ROL TilesCount
    CLC
    LDA byte_66
    ADC pDist
    STA byte_66
    LDA TilesCount
    ADC pDist+1
    STA TilesCount
    SEC
    LDA byte_66
    SBC pTileID
    STA Pointer
    LDA TilesCount
    SBC pTileID+1
    STA Pointer+1
    BCS loc_17B2CE
    LDA #0
    STA Pointer
    STA Pointer+1

loc_17B2CE:
    LSR Pointer+1
    ROR Pointer
    LSR Pointer+1
    ROR Pointer
    JMP loc_17B284
; End of function sub_17B250


; =============== S U B R O U T I N E =======================================


sub_17B2D9:
    LDY byte_53
    LDA unk_607,Y
    STA byte_4E
    LDA byte_608,Y
    STA byte_4F
    LDA byte_56
    CMP #1
    BNE locret_17B2F8
    JSR sub_F1ED
    AND #$F
    ORA #8
    STA byte_4E
    LDA #0
    STA byte_4F

locret_17B2F8:

    RTS
; End of function sub_17B2D9


; =============== S U B R O U T I N E =======================================


sub_17B2F9:
    LDA pTileID
    STA byte_4E
    LDA #0
    STA byte_4F
    RTS
; End of function sub_17B2F9


; =============== S U B R O U T I N E =======================================


sub_17B302:
    LDA byte_56
    CMP #5
    BNE locret_17B318
    LDA NamePos
    JSR sub_17A3F8
    LDX NamePos
    INX
    CPX #$9E
    BNE loc_17B316
    INC byte_56

loc_17B316:
    STX NamePos

locret_17B318:

    RTS
; End of function sub_17B302


; =============== S U B R O U T I N E =======================================


sub_17B319:
    LDA byte_57
    ORA pTileID
    STA byte_57
    RTS
; End of function sub_17B319


; =============== S U B R O U T I N E =======================================


sub_17B320:
    LDA #$6A
    JSR sub_17A3F8
    LDA byte_56
    CMP #2
    BNE loc_17B330
    LDA #$95
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B330:
    CMP #3
    BNE loc_17B339
    LDA #$94
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B339:
    CMP #4
    BNE loc_17B342
    LDA #$93
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B342:
    CMP #5
    BNE loc_17B34B
    LDA #1
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B34B:
    CMP #6
    BNE loc_17B354
    LDA #1
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B354:
    LDY byte_54
    BMI loc_17B35D
    LDA #$90
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B35D:
    LDY byte_54
    LDA unk_607,Y
    STA byte_590
    LDA byte_608,Y
    STA byte_591
    LDA unk_609,Y
    STA byte_592
    LDA unk_60A,Y
    STA byte_593
    LDA #$24
    JSR sub_17A3F8
    LDA #$25
    JSR sub_17A3F8
    LDY byte_54
    LDA unk_602,Y
    PHA
    AND #$40
    BEQ loc_17B390
    LDA #$6B
    JSR sub_17A3F8

loc_17B390:
    PLA
    PHA
    AND #$20
    BEQ loc_17B39B
    LDA #$6C
    JSR sub_17A3F8

loc_17B39B:
    PLA
    PHA
    AND #$10
    BEQ loc_17B3A6
    LDA #$6D
    JSR sub_17A3F8

loc_17B3A6:
    PLA
    PHA
    AND #$80
    BNE loc_17B3B7
    PLA
    PHA
    AND #1
    BEQ loc_17B3B7
    LDA #$6F
    JSR sub_17A3F8

loc_17B3B7:
    PLA
    LDA #$FF
    JMP sub_17A3F8
; End of function sub_17B320


; =============== S U B R O U T I N E =======================================


sub_17B3BD:
    LDA #$90
    JMP sub_17A3F8
; End of function sub_17B3BD


; =============== S U B R O U T I N E =======================================


sub_17B3C2:
    LDX #$F
    LDA byte_53
    BMI loc_17B3CA
    LDX #1

loc_17B3CA:
    TXA
    JMP sub_F41F
; End of function sub_17B3C2


; =============== S U B R O U T I N E =======================================


sub_17B3CE:
    LDA pTileID
    STA byte_58
    RTS
; End of function sub_17B3CE


; =============== S U B R O U T I N E =======================================


sub_17B3D3:
    LDA pTileID
    JMP sub_17A3F8
; End of function sub_17B3D3


; =============== S U B R O U T I N E =======================================


sub_17B3D8:
    LDA pTileID
    JMP sub_F41F
; End of function sub_17B3D8


; =============== S U B R O U T I N E =======================================


sub_17B3DD:
    TYA
    BMI loc_17B3F0
    LDA byte_611,Y
    CMP #6
    BNE loc_17B3F0
    LDA #0
    STA byte_56
    LDX #$88
    JMP loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3F0:
    JSR sub_17B4CA
    CMP #1
    BNE loc_17B3FC
    LDX #$19
    JMP loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3FC:
    CMP #2
    BNE loc_17B405
    LDX #$1A
    JMP loc_17B40B
; ---------------------------------------------------------------------------

loc_17B405:
    JSR sub_17B42D
    JMP sub_17B496
; ---------------------------------------------------------------------------

loc_17B40B:
    LDA byte_54
    PHA
    LDA byte_53
    PHA
    LDA word_5E+1
    PHA
    LDA word_5E
    PHA
    STY byte_53
    TXA
    JSR loc_17AD7B
    PLA
    STA word_5E
    PLA
    STA word_5E+1
    PLA
    STA byte_53
    PLA
    STA byte_54
    TAY
    JMP sub_17B496
; End of function sub_17B3DD


; =============== S U B R O U T I N E =======================================


sub_17B42D:
    TYA
    PHA
    LDA #0
    STA byte_603,Y
    STA byte_604,Y
    LDA #$80
    STA byte_601,Y
    TYA
    BPL loc_17B48B
    LDA #0
    STA byte_600,Y
    LDA pPPUTab,Y
    STA Pointer
    LDA pPPUTab+1,Y
    STA Pointer+1
    TYA
    PHA
    CLC
    LDY #$1A
    LDA (Pointer),Y
    ADC byte_49
    STA byte_49
    INY
    LDA (Pointer),Y
    ADC byte_4A
    STA byte_4A
    LDA #0
    ADC byte_4B
    STA byte_4B
    CLC
    LDY #$1C
    LDA (Pointer),Y
    ADC byte_4C
    STA byte_4C
    INY
    LDA (Pointer),Y
    ADC byte_4D
    STA byte_4D
    LDY #$1E
    LDA (Pointer),Y
    BEQ loc_17B47E
    STA byte_48

loc_17B47E:
    LDA #6
    STA apu_7F0
    PLA
    TAY
    JSR sub_17B555
    JMP loc_17B490
; ---------------------------------------------------------------------------

loc_17B48B:
    LDA #$15
    JSR sub_F41F

loc_17B490:
    JSR statistical_frame
    PLA
    TAY
    RTS
; End of function sub_17B42D


; =============== S U B R O U T I N E =======================================


sub_17B496:
    TYA
    PHA
    BMI loc_17B4A9
    LDA byte_611,Y
    CMP #6
    BEQ loc_17B4C7
    LDA #$10
    JSR sub_17A3F8
    JMP loc_17B4C7
; ---------------------------------------------------------------------------

loc_17B4A9:
    LDA byte_56
    CMP #6
    BEQ loc_17B4C7
    LDA pPPUTab,Y
    STA Pointer
    LDA pPPUTab+1,Y
    STA Pointer+1
    LDY #$A
    LDA (Pointer),Y
    AND #$1C
    LSR A
    LSR A
    CLC
    ADC #$79
    JSR sub_17A3F8

loc_17B4C7:
    PLA
    TAY
    RTS
; End of function sub_17B496


; =============== S U B R O U T I N E =======================================


sub_17B4CA:
    TYA
    PHA
    LDA pPPUTab,Y
    STA Pointer
    LDA pPPUTab+1,Y
    STA Pointer+1
    LDY #8
    LDA (Pointer),Y
    AND #$1C
    LSR A
    LSR A
    STA Pointer
    PLA
    TAY
    LDA Pointer
    RTS
; End of function sub_17B4CA


; =============== S U B R O U T I N E =======================================


sub_17B4E5:
    LDY byte_53
    CLC
    LDA pPPUTab,Y
    ADC #$20
    STA Pointer
    LDA pPPUTab+1,Y
    ADC #0
    STA Pointer+1
    LDY byte_53
    LDA unk_610,Y
    TAY

loc_17B4FC:
    JSR sram_write_enable

loc_17B4FF:
    CPY #7
    BEQ loc_17B50C
    INY
    LDA (Pointer),Y
    DEY
    STA (Pointer),Y
    INY
    BNE loc_17B4FF

loc_17B50C:
    LDA #0
    STA (Pointer),Y
    JMP sram_read_enable
; End of function sub_17B4E5


; =============== S U B R O U T I N E =======================================


sub_17B513:
    JSR sub_17B5BC
    LDA byte_601,Y
    AND #$7F
    STA byte_601,Y
    LDA #$22
    STA Pointer
    LDA #$FF
    STA Pointer+1
    LDA #$FF
    STA AddrForJmp
    JSR sub_17B589
    LDA #0
    STA byte_45
    TYA
    PHA
    LDA byte_61A,Y
    AND #3
    TAX
    LDY #$1F
    LDA (pCharacter),Y
    STA BankPPU_X000,X
    PLA
    TAY
    LDA byte_61C,Y
    LDX pTileID+1
    STA SpriteTable,X
    LDA #1
    STA NMIFlags
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    LDA #$80
    STA NMIFlags
    RTS
; End of function sub_17B513


; =============== S U B R O U T I N E =======================================


sub_17B555:
    JSR sub_17B5BC
    LDA #0
    LDX pTileID+1
    STA SpriteTable,X
    LDA #1
    STA NMIFlags
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    LDA #$80
    STA NMIFlags
    LDA #0
    STA byte_600,Y
    LDA #0
    STA Pointer
    LDA #$23
    STA Pointer+1
    LDA #1
    STA AddrForJmp
    JSR sub_17B589
    LDA byte_61A,Y
    AND #3
    TAX
    LDA #$7C
    STA BankPPU_X000,X
    RTS
; End of function sub_17B555


; =============== S U B R O U T I N E =======================================


sub_17B589:
    TYA
    PHA
    LDA byte_61A,Y
    AND #3
    TAX
    LDY #$1F
    LDA (pCharacter),Y
    ORA #$80
    STA BankPPU_X000,X
    PLA
    TAY
    LDA #$80
    STA byte_45

loc_17B59F:
    LDA Pointer
    STA byte_44
    AND #1
    BNE loc_17B5AD
    LDA byte_45
    EOR #$40
    STA byte_45

loc_17B5AD:
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    CLC
    LDA Pointer
    ADC AddrForJmp
    STA Pointer
    CMP Pointer+1
    BNE loc_17B59F
    RTS
; End of function sub_17B589


; =============== S U B R O U T I N E =======================================


sub_17B5BC:
    LDA pPPUTab,Y
    STA pCharacter
    LDA pPPUTab+1,Y
    STA pCharacter+1
    LDA byte_61A,Y
    AND #3
    STA pTileID
    ASL A
    ASL A
    ASL A
    STA pTileID+1
    RTS
; End of function sub_17B5BC


; =============== S U B R O U T I N E =======================================


sub_17B5D3:
    LDA #$F
    LDX #3
    JMP sub_17B626
; End of function sub_17B5D3


; =============== S U B R O U T I N E =======================================


sub_17B5DA:
    LDA #$16
    LDX #3
    JMP sub_17B626
; End of function sub_17B5DA


; =============== S U B R O U T I N E =======================================


sub_17B5E1:
    LDA #$12
    LDX #3
    JMP sub_17B626
; End of function sub_17B5E1


; =============== S U B R O U T I N E =======================================


sub_17B5E8:
    LDA #$31
    LDX #3
    JMP sub_17B626
; End of function sub_17B5E8


; =============== S U B R O U T I N E =======================================


sub_17B5EF:
    LDA #$28
    LDX #3
    JMP sub_17B626
; End of function sub_17B5EF


; =============== S U B R O U T I N E =======================================


sub_17B5F6:
    LDA #$2A
    LDX #3
    JMP sub_17B626
; End of function sub_17B5F6


; =============== S U B R O U T I N E =======================================


sub_17B5FD:
    LDX #3

loc_17B5FF:
    TXA
    PHA
    LDA #5
    STA apu_7F0
    JSR sub_F1ED
    AND #3
    TAX
    INX

loc_17B60D:
    TXA
    PHA
    LDA #1
    STA apu_7F0
    PLA
    PHA
    LDX #3
    JSR sub_17B626
    PLA
    TAX
    DEX
    BNE loc_17B60D
    PLA
    TAX
    DEX
    BNE loc_17B5FF
    RTS
; End of function sub_17B5FD


; =============== S U B R O U T I N E =======================================


sub_17B626:
    STA Pointer+1
    STX Pointer
    LDA #2
    JSR sub_F41F
    LDY byte_54
    JSR sub_17B5BC
    JSR wait_nmi_processed
    LDX Pointer

loc_17B639:
    TXA
    PHA
    LDX pTileID+1
    LDA SpriteTable,X
    PHA
    LDA #0
    STA SpriteTable,X
    LDA #1
    STA NMIFlags
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    LDA #$7C
    LDX pTileID
    STA BankPPU_X000,X
    LDA Pointer+1
    JSR loc_F4B8
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    PLA
    LDX pTileID+1
    STA SpriteTable,X
    LDA #1
    STA NMIFlags
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    LDY #$1F
    LDA (pCharacter),Y
    LDX pTileID
    STA BankPPU_X000,X
    JSR sub_F4B6
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    PLA
    TAX
    DEX
    BNE loc_17B639
    RTS
; End of function sub_17B626


; =============== S U B R O U T I N E =======================================


sub_17B67C:
    LDA #2
    JSR sub_F41F
    JSR sub_17B5BC
    LDY byte_54
    LDA byte_61C,Y
    PHA
    LDX pTileID+1
    LDA SpriteTable,X
    LDY byte_54
    STA byte_61C,Y
    LDA #0
    LDX pTileID+1
    STA SpriteTable,X
    LDA #1
    STA NMIFlags
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    LDA #$80
    STA NMIFlags
    LDY byte_54
    JSR sub_17B513
    PLA
    LDY byte_54
    STA byte_61C,Y
    RTS
; End of function sub_17B67C


; =============== S U B R O U T I N E =======================================


sub_17B6B2:
    LDX #$41
    LDY #$9F
    LDA #$F
    JMP sub_17B6FA
; End of function sub_17B6B2


; =============== S U B R O U T I N E =======================================


sub_17B6BB:
    LDX #$41
    LDY #$9F
    LDA #$16
    JMP sub_17B6FA
; End of function sub_17B6BB


; =============== S U B R O U T I N E =======================================


sub_17B6C4:
    LDX #$41
    LDY #$9F
    LDA #$12
    JMP sub_17B6FA
; End of function sub_17B6C4


; =============== S U B R O U T I N E =======================================


sub_17B6CD:
    LDX #$41
    LDY #$9F
    LDA #$31
    JMP sub_17B6FA
; End of function sub_17B6CD


; =============== S U B R O U T I N E =======================================


sub_17B6D6:
    LDX #$41
    LDY #$9F
    LDA #$28
    JMP sub_17B6FA
; End of function sub_17B6D6


; =============== S U B R O U T I N E =======================================


sub_17B6DF:
    LDX #$61
    LDY #$9F
    LDA #$2A
    JMP sub_17B6FA
; End of function sub_17B6DF


; =============== S U B R O U T I N E =======================================


sub_17B6E8:
    LDX #$61
    LDY #$9F
    LDA #$F
    JMP sub_17B6FA
; End of function sub_17B6E8


; =============== S U B R O U T I N E =======================================


sub_17B6F1:
    LDX #$4B
    LDY #$9F
    LDA #$F
    JMP sub_17B6FA
; End of function sub_17B6F1


; =============== S U B R O U T I N E =======================================


sub_17B6FA:
    STA pTileID
    STX Pointer
    STY Pointer+1
    LDA #$10
    JSR sub_F41F
    JSR wait_nmi_processed
    LDY #0
    LDA (Pointer),Y
    STA AddrForJmp
    INY
    LDA (Pointer),Y
    STA AddrForJmp+1
    CLC
    LDA Pointer
    ADC #2
    STA Pointer
    LDA Pointer+1
    ADC #0
    STA Pointer+1

loc_17B720:
    LDY #0

loc_17B722:
    TYA
    PHA
    AND #2
    BEQ loc_17B730
    LDA pTileID
    JSR loc_F4B8
    JMP loc_17B733
; ---------------------------------------------------------------------------

loc_17B730:
    JSR sub_F4B6

loc_17B733:
    PLA
    TAY
    LDA (Pointer),Y
    STA ShiftY
    INY
    LDA (Pointer),Y
    STA ShiftX
    INY
    LDA #1
    STA NMIFlags
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    CPY AddrForJmp+1
    BNE loc_17B722
    DEC AddrForJmp
    BNE loc_17B720
    LDA #0
    STA ShiftX
    STA ShiftY
    JSR wait_nmi    ; wait for NMI interrupt processing to complete
    JMP sub_F4B6
; End of function sub_17B6FA


; =============== S U B R O U T I N E =======================================


sub_17B75A:
    LDA byte_47
    CMP #1
    BEQ loc_17B7B0
    CMP #2
    BEQ loc_17B7B0
    LDY #0

loc_17B766:
    LDA byte_600,Y
    BEQ loc_17B77B
    LDA byte_611,Y
    AND #6
    EOR #6
    BEQ loc_17B77B
    LDA byte_601,Y
    AND #$E0
    BEQ loc_17B7B2

loc_17B77B:
    TYA
    CLC
    ADC #$20
    TAY
    BPL loc_17B766
    LDA #$80
    STA byte_601
    STA byte_621
    STA byte_641
    STA byte_661
    LDA byte_56
    CMP #4
    BNE loc_17B7A7
    LDA #3
    STA byte_47
    LDA #4
    JSR sub_F41F
    LDA #$8F
    JSR sub_17A3F8
    JMP loc_17B7B0
; ---------------------------------------------------------------------------

loc_17B7A7:
    LDA #0
    STA byte_53
    LDA #$E
    JSR sub_17A3F8

loc_17B7B0:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17B7B2:
    LDA byte_680
    ORA byte_6A0
    ORA byte_6C0
    ORA byte_6E0
    BNE loc_17B7F3
    LDA byte_23
    BEQ loc_17B7C9
    LDA #$31
    JSR sub_17A3F8

loc_17B7C9:
    LDA byte_56
    CMP #6
    BNE loc_17B7E7
    LDA #0
    STA byte_54
    JSR sub_17B8D4
    LDA #$20
    STA byte_54
    JSR sub_17B8D4
    LDA #$40
    STA byte_54
    JSR sub_17B8D4
    JMP loc_17B7F1
; ---------------------------------------------------------------------------

loc_17B7E7:
    LDA #5
    JSR sub_F255
    LDA #$D
    JSR sub_17A3F8

loc_17B7F1:
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17B7F3:
    LDA byte_56
    CMP #1
    BNE loc_17B802
    LDY #0
    JSR sub_F673
    BCS loc_17B802
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17B802:
    CLC
    RTS
; End of function sub_17B75A


; =============== S U B R O U T I N E =======================================


sub_17B804:
    LDY #1
    LDA (word_5E),Y
    JSR sub_F2AE    ; trap function without return
; End of function sub_17B804    ; transfers control to a function whose address is selected from the table located after the call of this function;
    ; after the function execution is completed, the first function from the table is executed.
    ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
    .word sub_17B863, sub_17B868, sub_17B879, sub_17B899, sub_17B8AF
    .word sub_17B8BD, sub_17B8CB, sub_17B915, sub_17BA07, sub_17BA1B
    .word sub_17BA2A, sub_17BA3C, sub_17BA6E, sub_17BA7A, sub_17BA95
    .word sub_17B8AA, sub_17B8F2, sub_17BA86, sub_17B88A, sub_17BAE4
    .word sub_17BAFA, sub_17BB0D, sub_17BB25, sub_17BB3D, sub_17BB55
    .word sub_17BB78, sub_17BB83, sub_17BB8C, sub_17BB9D, sub_17BBB0
    .word sub_17BBCD, sub_17BBEB, sub_17BBF9, sub_17BC02, sub_17BC0B
    .word sub_17BC14, sub_17BC1D, sub_17BC26, sub_17BC38, sub_17BC2F
    .word sub_17BCD0, sub_17BD2B, sub_17BC5D, sub_17BD44

; =============== S U B R O U T I N E =======================================


sub_17B863:
    LDA #2
    JMP sub_17AFCD
; End of function sub_17B863


; =============== S U B R O U T I N E =======================================


sub_17B868:
    JSR sub_17BDDD

loc_17B86B:
    LDX byte_54
    LDY #3
    JSR sub_17BEF2
    LDX #$A
    LDA #$3E
    JMP sub_17BD5B
; End of function sub_17B868


; =============== S U B R O U T I N E =======================================


sub_17B879:
    JSR sub_17BDDD
    LDX byte_54
    LDY #5
    JSR sub_17BEF2
    LDX #$A
    LDA #$3D
    JMP sub_17BD5B
; End of function sub_17B879


; =============== S U B R O U T I N E =======================================


sub_17B88A:
    JSR sub_17BDDD
    LDX byte_54
    LDY #7
    JSR sub_17BDE8
    LDA #$20
    JMP sub_17A3F8
; End of function sub_17B88A


; =============== S U B R O U T I N E =======================================


sub_17B899:
    JSR sub_17BDDD
    LDX byte_54
    LDY #$C
    JSR sub_17BE3B
    LDX #9
    LDA #$23
    JMP sub_17BD5B
; End of function sub_17B899


; =============== S U B R O U T I N E =======================================


sub_17B8AA:
    LDY byte_53
    JMP sub_17B42D
; End of function sub_17B8AA


; =============== S U B R O U T I N E =======================================


sub_17B8AF:
    LDX byte_54
    LDY #7
    JSR sub_17BF00
    LDX #9
    LDA #$20
    JMP sub_17BD5B
; End of function sub_17B8AF


; =============== S U B R O U T I N E =======================================


sub_17B8BD:
    LDX byte_54
    LDY #9
    JSR sub_17BF00
    LDX #9
    LDA #$22
    JMP sub_17BD5B
; End of function sub_17B8BD


; =============== S U B R O U T I N E =======================================


sub_17B8CB:
    LDA #$FF
    STA byte_4E
    STA byte_4F
    JMP loc_17B86B
; End of function sub_17B8CB


; =============== S U B R O U T I N E =======================================


sub_17B8D4:
    LDA #$FF
    STA byte_4E
    STA byte_4F
    LDA #0
    LDX byte_54
    STA byte_601,X
    LDY #3
    JSR sub_17BEF2
    LDX #$A
    LDA #0
    JSR sub_17BD5B
    LDX #$14
    JMP delay
; End of function sub_17B8D4


; =============== S U B R O U T I N E =======================================


sub_17B8F2:
    JSR sub_17BDDD
    LDY byte_53
    SEC
    LDA byte_603,Y
    SBC Pointer
    STA byte_603,Y
    LDA byte_604,Y
    SBC Pointer+1
    STA byte_604,Y
    BCC loc_17B912
    ORA byte_603,Y
    BEQ loc_17B912
    JMP statistical_frame
; ---------------------------------------------------------------------------

loc_17B912:
    JMP sub_17B3DD
; End of function sub_17B8F2


; =============== S U B R O U T I N E =======================================


sub_17B915:
    LDA byte_56
    CMP #5
    BEQ loc_17B93E
    CMP #6
    BEQ loc_17B93E
    JSR sub_17BFE2
    BCC loc_17B93E

loc_17B924:
    LDX #3
    LDY byte_53
    LDA byte_611,Y
    CMP #6
    BNE loc_17B931
    LDX #$3F

loc_17B931:
    STX Pointer
    JSR sub_F1ED
    AND Pointer
    STA byte_4E
    LDA #0
    STA byte_4F

loc_17B93E:
    LDA byte_54
    PHA
    JSR sub_17BDDD
    LDY byte_54
    LDA byte_61E,Y
    AND #4
    BEQ loc_17B962
    LDA Pointer+1
    PHA
    LDA Pointer
    PHA
    LDA #$53
    JSR sub_17A3F8
    PLA
    STA Pointer
    PLA
    STA Pointer+1
    LDY byte_53
    STY byte_54

loc_17B962:
    LDA byte_61E,Y
    AND #$10
    BEQ loc_17B96D
    LSR Pointer+1
    ROR Pointer

loc_17B96D:
    LDA byte_61E,Y
    AND #8
    BEQ loc_17B978
    LSR Pointer+1
    ROR Pointer

loc_17B978:
    JSR sub_17BF74
    LDA Pointer
    ORA Pointer+1
    BNE loc_17B983
    INC Pointer

loc_17B983:
    LDA Pointer
    STA byte_590
    PHA
    LDA Pointer+1
    STA byte_591
    PHA
    LDA #$C
    JSR sub_17A3F8
    PLA
    STA Pointer+1
    PLA
    STA Pointer
    LDA byte_56
    CMP #3
    BEQ loc_17B9A5
    JSR sub_17BFEF
    BCS loc_17B9C4

loc_17B9A5:
    JSR sub_17BFE2
    BCS loc_17B9C4
    LDY byte_54
    SEC
    LDA byte_603,Y
    SBC Pointer
    STA byte_603,Y
    LDA byte_604,Y
    SBC Pointer+1
    STA byte_604,Y
    BCC loc_17BA00
    ORA byte_603,Y
    BEQ loc_17BA00

loc_17B9C4:
    LDA byte_601,Y
    AND #$C
    BEQ loc_17B9DF
    JSR sub_F1ED
    AND #$C0
    BNE loc_17B9DF
    LDA byte_601,Y
    AND #$F3
    STA byte_601,Y
    LDA #$8D
    JSR sub_17A3F8

loc_17B9DF:
    LDA byte_601,Y
    AND #$10
    BEQ loc_17B9FA
    JSR sub_F1ED
    AND #$C0
    BNE loc_17B9FA
    LDA byte_601,Y
    AND #$EF
    STA byte_601,Y
    LDA #$61
    JSR sub_17A3F8

loc_17B9FA:
    PLA
    STA byte_54
    JMP statistical_frame
; ---------------------------------------------------------------------------

loc_17BA00:
    JSR sub_17B3DD
    PLA
    STA byte_54
    RTS
; End of function sub_17B915


; =============== S U B R O U T I N E =======================================


sub_17BA07:
    JSR sub_17BDDD
    LDY byte_54
    JSR sub_17BF74
    LDX byte_54
    LDY #9
    JSR sub_17BE72
    LDA #$27
    JMP sub_17A3F8
; End of function sub_17BA07


; =============== S U B R O U T I N E =======================================


sub_17BA1B:
    JSR sub_17BDDD
    LDX byte_54
    LDY #$B
    JSR sub_17BEC4
    LDA #$26
    JMP sub_17A3F8
; End of function sub_17BA1B


; =============== S U B R O U T I N E =======================================


sub_17BA2A:
    JSR sub_17BFE2
    BCS loc_17BA39
    JSR sub_17BFEF
    BCS loc_17BA39
    LDY byte_54
    JMP sub_17B3DD
; ---------------------------------------------------------------------------

loc_17BA39:
    JMP loc_17B924
; End of function sub_17BA2A


; =============== S U B R O U T I N E =======================================


sub_17BA3C:
    JSR sub_17BFE2
    BCS loc_17BA6B
    JSR sub_17BFEF
    BCS loc_17BA6B
    LDY byte_54
    JSR sub_F1ED
    AND #3
    TAX
    INX
    TXA
    SEC
    SBC byte_603,Y
    LDA #0
    SBC byte_604,Y
    BCS loc_17BA6B
    TXA
    STA byte_603,Y
    LDA #0
    STA byte_604,Y
    LDX #0
    LDA #$38
    JMP sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BA6B:
    JMP sub_17BDD8
; End of function sub_17BA3C


; =============== S U B R O U T I N E =======================================


sub_17BA6E:
    LDX byte_54
    LDY #7
    JSR sub_17BF15
    LDA #$21
    JMP sub_17A3F8
; End of function sub_17BA6E


; =============== S U B R O U T I N E =======================================


sub_17BA7A:
    LDX byte_54
    LDY #9
    JSR sub_17BF15
    LDA #$27
    JMP sub_17A3F8
; End of function sub_17BA7A


; =============== S U B R O U T I N E =======================================


sub_17BA86:
    JSR sub_17BDDD
    LDX byte_53
    LDY #7
    JSR sub_17BDE8
    LDA #$5C
    JMP sub_17A3F8
; End of function sub_17BA86


; =============== S U B R O U T I N E =======================================


sub_17BA95:
    JSR sub_17BDDD
    LDY byte_54
    BMI loc_17BADD
    LDA pPPUTab,Y
    STA AddrForJmp
    LDA pPPUTab+1,Y
    STA AddrForJmp+1
    LDY #$11
    CLC
    LDA (AddrForJmp),Y
    ADC Pointer
    STA pTileID
    INY
    LDA (AddrForJmp),Y
    ADC Pointer+1
    STA pTileID+1
    INY
    LDA (AddrForJmp),Y
    ADC #0
    STA byte_66
    BCC loc_17BAC7
    LDA #$FF
    STA pTileID
    STA pTileID+1
    STA byte_66

loc_17BAC7:
    JSR sram_write_enable
    LDY #$11
    LDA pTileID
    STA (AddrForJmp),Y
    INY
    LDA pTileID+1
    STA (AddrForJmp),Y
    INY
    LDA byte_66
    STA (AddrForJmp),Y
    JSR sram_read_enable

loc_17BADD:
    LDX #$A
    LDA #$2F
    JMP sub_17BD5B
; End of function sub_17BA95


; =============== S U B R O U T I N E =======================================


sub_17BAE4:
    JSR sub_17BFE2
    BCS loc_17BAF7
    JSR sub_17BF58
    BCS loc_17BAF7
    LDA #$1B
    LDY #0
    LDX #$80
    JMP loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BAF7:
    JMP sub_17BDD8
; End of function sub_17BAE4


; =============== S U B R O U T I N E =======================================


sub_17BAFA:
    JSR sub_17BFE2
    BCS loc_17BAF7
    JSR sub_17BF58
    BCS loc_17BAF7
    LDA #$4B
    LDY #0
    LDX #2
    JMP sub_17BD69
; End of function sub_17BAFA


; =============== S U B R O U T I N E =======================================


sub_17BB0D:
    JSR sub_17BFE2
    BCS loc_17BAF7
    JSR sub_17BFEF
    BCS loc_17BAF7
    JSR sub_17BF66
    BCS loc_17BAF7
    LDA #$39
    LDY #0
    LDX #8
    JMP sub_17BD69
; End of function sub_17BB0D


; =============== S U B R O U T I N E =======================================


sub_17BB25:
    JSR sub_17BFE2
    BCS loc_17BAF7
    JSR sub_17BFEF
    BCS loc_17BAF7
    JSR sub_17BF66
    BCS loc_17BAF7
    LDA #$3B
    LDY #0
    LDX #$10
    JMP sub_17BD69
; End of function sub_17BB25


; =============== S U B R O U T I N E =======================================


sub_17BB3D:
    JSR sub_17BFE2
    BCS loc_17BAF7
    JSR sub_17BFEF
    BCS loc_17BAF7
    JSR sub_17BF58
    BCS loc_17BAF7
    LDA #$49
    LDY #0
    LDX #$20
    JMP sub_17BD69
; End of function sub_17BB3D


; =============== S U B R O U T I N E =======================================


sub_17BB55:
    JSR sub_17BFE2
    BCS loc_17BAF7
    LDY byte_54
    LDA pPPUTab,Y
    STA Pointer
    LDA pPPUTab+1,Y
    STA Pointer+1
    LDY #5
    LDA (Pointer),Y
    INY
    ORA (Pointer),Y
    BEQ loc_17BAF7
    LDA #$4D
    LDY #0
    LDX #$40
    JMP loc_17BD7F
; End of function sub_17BB55


; =============== S U B R O U T I N E =======================================


sub_17BB78:
    LDY byte_54
    LDA byte_61E,Y
    ORA #8
    STA byte_61E,Y
    RTS
; End of function sub_17BB78


; =============== S U B R O U T I N E =======================================


sub_17BB83:
    LDA #$4F
    LDY #$A
    LDX #$10
    JMP loc_17BD7F
; End of function sub_17BB83


; =============== S U B R O U T I N E =======================================


sub_17BB8C:
    JSR loc_17BFE6
    BCS loc_17BB9A
    LDA #$17
    LDY #$A
    LDX #4
    JMP loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BB9A:
    JMP sub_17BDD8
; End of function sub_17BB8C


; =============== S U B R O U T I N E =======================================


sub_17BB9D:
    JSR sub_17BFE2
    BCS loc_17BB9A
    JSR sub_17BFEF
    BCS loc_17BB9A
    LDA #$4E
    LDY #0
    LDX #$20
    JMP loc_17BD7F
; End of function sub_17BB9D


; =============== S U B R O U T I N E =======================================


sub_17BBB0:
    JSR sub_17BFE2
    BCS loc_17BB9A
    JSR sub_17BFEF
    BCS loc_17BB9A
    LDA #$19
    LDY #0
    LDX #$40
    JSR sub_17BD69
    BCS locret_17BBCC
    LDX byte_54
    LDY #9
    JSR sub_17BF00

locret_17BBCC:

    RTS
; End of function sub_17BBB0


; =============== S U B R O U T I N E =======================================


sub_17BBCD:
    LDY byte_54
    LDA byte_611,Y
    CMP #1
    BNE locret_17BBEA
    LDA byte_61E,Y
    AND #2
    BNE locret_17BBEA
    LDA byte_61E,Y
    ORA #2
    STA byte_61E,Y
    LDA #$74
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

locret_17BBEA:

    RTS
; End of function sub_17BBCD


; =============== S U B R O U T I N E =======================================


sub_17BBEB:
    JSR sub_17BF66
    BCS loc_17BB9A
    LDA #$67
    LDY #0
    LDX #4
    JMP sub_17BD69
; End of function sub_17BBEB


; =============== S U B R O U T I N E =======================================


sub_17BBF9:
    LDA #$5D
    LDY #$A
    LDX #2
    JMP loc_17BD95
; End of function sub_17BBF9


; =============== S U B R O U T I N E =======================================


sub_17BC02:
    LDA #$61
    LDY #$A
    LDX #$10
    JMP loc_17BD95
; End of function sub_17BC02


; =============== S U B R O U T I N E =======================================


sub_17BC0B:
    LDA #$60
    LDY #$A
    LDX #$20
    JMP loc_17BD95
; End of function sub_17BC0B


; =============== S U B R O U T I N E =======================================


sub_17BC14:
    LDA #$70
    LDY #$A
    LDX #2
    JMP loc_17BDAB
; End of function sub_17BC14


; =============== S U B R O U T I N E =======================================


sub_17BC1D:
    LDA #$5E
    LDY #$A
    LDX #$C
    JMP loc_17BD95
; End of function sub_17BC1D


; =============== S U B R O U T I N E =======================================


sub_17BC26:
    LDA #$69
    LDY #2
    LDX #$10
    JMP loc_17BDAB
; End of function sub_17BC26


; =============== S U B R O U T I N E =======================================


sub_17BC2F:
    LDA #$71
    LDY #$A
    LDX #$40
    JMP loc_17BD95
; End of function sub_17BC2F


; =============== S U B R O U T I N E =======================================


sub_17BC38:
    LDY byte_54
    LDA byte_601,Y
    AND #$80
    BEQ loc_17BC5A
    LDA #0
    STA byte_601,Y
    LDA #$FF
    STA byte_4E
    STA byte_4F
    LDX byte_54
    LDY #3
    JSR sub_17BEF2
    LDX #$A
    LDA #$62
    JMP sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BC5A:
    JMP sub_17BDD8
; End of function sub_17BC38


; =============== S U B R O U T I N E =======================================


sub_17BC5D:
    LDX byte_56
    CPX #6
    BEQ loc_17BC85
    LDA #$19
    JSR sub_F255
    LDA apu_78C
    PHA
    LDX #0
    JSR sub_F26B
    LDA #3
    STA apu_7F0
    LDX #$38
    JSR delay
    PLA
    CMP apu_78C
    BEQ locret_17BC84
    STA apu_7F5

locret_17BC84:

    RTS
; ---------------------------------------------------------------------------

loc_17BC85:
    LDA #$19
    JSR sub_F255
    SEC
    LDA NamePos
    SBC #$9E
    TAX
    JSR sub_F26B
    LDA #3
    STA apu_7F0
    JSR sub_17B6E8
    LDA NamePos
    JSR sub_17A3F8
    LDA #$2C
    JSR sub_F255
    LDX NamePos
    INX
    CPX #$A9
    BEQ loc_17BCAF
    STX NamePos
    RTS
; ---------------------------------------------------------------------------

loc_17BCAF:
    JSR sub_17B5FD
    LDA #$FF
    JSR sub_F255
    LDX #$C8
    JSR delay
    LDX #$A9

loc_17BCBE:
    STX NamePos
    TXA
    JSR sub_17A3F8
    LDX NamePos
    INX
    CPX #$AC
    BNE loc_17BCBE
    LDY #$80
    JMP sub_17B3DD
; End of function sub_17BC5D


; =============== S U B R O U T I N E =======================================


sub_17BCD0:
    LDX #$A
    LDY byte_54
    LDA unk_605,Y
    ORA unk_606,Y
    BEQ loc_17BD28
    SEC
    LDA unk_605,Y
    TAX
    SBC #$A
    LDA unk_606,Y
    SBC #0
    BCC loc_17BCEC
    LDX #$A

loc_17BCEC:
    STX byte_590
    LDX #0
    STX byte_591
    SEC
    LDA unk_605,Y
    SBC byte_590
    STA unk_605,Y
    LDA unk_606,Y
    SBC byte_591
    STA unk_606,Y
    LDA #$48
    JSR sub_17A3F8
    LDA byte_590
    STA Pointer
    LDA byte_591
    STA Pointer+1
    LDX byte_53
    LDY #5
    JSR sub_17BEF2
    LDA byte_53
    STA byte_54
    LDX #$A
    LDA #$3D
    JMP sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BD28:
    JMP sub_17BDD8
; End of function sub_17BCD0


; =============== S U B R O U T I N E =======================================


sub_17BD2B:
    LDY byte_54
    BMI loc_17BD3F
    JSR sub_17BFAA
    BCS loc_17BD3F
    JSR loc_17B4FC
    JSR sub_17AACC
    LDA #$81
    JMP sub_17A3F8
; ---------------------------------------------------------------------------

loc_17BD3F:
    LDA #$59
    JMP sub_17A3F8
; End of function sub_17BD2B


; =============== S U B R O U T I N E =======================================


sub_17BD44:
    LDY byte_54
    LDA byte_601,Y
    AND #8
    BNE locret_17BD5A
    LDA byte_601,Y
    ORA #8
    STA byte_601,Y
    LDA #$39
    JSR sub_17A3F8

locret_17BD5A:

    RTS
; End of function sub_17BD44


; =============== S U B R O U T I N E =======================================


sub_17BD5B:
    PHA
    TXA
    BEQ loc_17BD62
    JSR sub_F41F

loc_17BD62:
    JSR statistical_frame
    PLA
    JMP sub_17A3F8
; End of function sub_17BD5B


; =============== S U B R O U T I N E =======================================


sub_17BD69:
    PHA
    JSR sub_17BDCC
    LDA byte_601,Y
    AND Pointer
    BNE loc_17BDC6
    LDA byte_601,Y
    ORA Pointer
    STA byte_601,Y
    JMP loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD7F:
    PHA
    JSR sub_17BDCC
    LDA byte_61E,Y
    AND Pointer
    BNE loc_17BDC6
    LDA byte_61E,Y
    ORA Pointer
    STA byte_61E,Y
    JMP loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD95:
    PHA
    JSR sub_17BDCC
    LDA byte_601,Y
    AND Pointer
    BEQ loc_17BDC6
    LDA byte_601,Y
    AND Pointer+1
    STA byte_601,Y
    JMP loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BDAB:
    PHA
    JSR sub_17BDCC
    LDA byte_61E,Y
    AND Pointer
    BEQ loc_17BDC6
    LDA byte_61E,Y
    AND Pointer+1
    STA byte_61E,Y

loc_17BDBE:
    LDX byte_58
    PLA
    JSR sub_17BD5B
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17BDC6:
    PLA
    JSR sub_17BDD8
    SEC
    RTS
; End of function sub_17BD69


; =============== S U B R O U T I N E =======================================


sub_17BDCC:
    STX Pointer
    TXA
    EOR #$FF
    STA Pointer+1
    STY byte_58
    LDY byte_54
    RTS
; End of function sub_17BDCC


; =============== S U B R O U T I N E =======================================


sub_17BDD8:
    LDA #$55
    JMP sub_17A3F8
; End of function sub_17BDD8


; =============== S U B R O U T I N E =======================================


sub_17BDDD:
    LDA byte_4E
    STA Pointer
    LDA byte_4F
    STA Pointer+1
    JMP sub_F2ED
; End of function sub_17BDDD


; =============== S U B R O U T I N E =======================================


sub_17BDE8:
    JSR sub_17BF2C
; End of function sub_17BDE8


; =============== S U B R O U T I N E =======================================


sub_17BDEB:
    CLC
    LDA byte_600,X
    ADC Pointer
    STA byte_66
    LDA byte_601,X
    ADC Pointer+1
    STA TilesCount
    BCC loc_17BE02
    LDA #$FF
    STA byte_66
    STA TilesCount

loc_17BE02:
    SEC
    LDA pTileID
    SBC byte_66
    LDA pTileID+1
    SBC TilesCount
    BCS loc_17BE15
    LDA pTileID
    STA byte_66
    LDA pTileID+1
    STA TilesCount

loc_17BE15:
    SEC
    LDA byte_66
    SBC byte_600,X
    STA byte_590
    LDA TilesCount
    SBC byte_601,X
    STA byte_591
    BCC loc_17BE38
    ORA byte_590
    BEQ loc_17BE38
    LDA byte_66
    STA byte_600,X
    LDA TilesCount
    STA byte_601,X
    RTS
; ---------------------------------------------------------------------------

loc_17BE38:
    JMP sub_17BFD8
; End of function sub_17BDEB


; =============== S U B R O U T I N E =======================================


sub_17BE3B:
    JSR sub_17BF2C
    CLC
    LDA byte_600,X
    ADC Pointer
    STA byte_66
    BCC loc_17BE4C
    LDA #$FF
    STA byte_66

loc_17BE4C:
    SEC
    LDA pTileID
    SBC byte_66
    BCS loc_17BE57
    LDA pTileID
    STA byte_66

loc_17BE57:
    LDA #0
    STA byte_591
    SEC
    LDA byte_66
    SBC byte_600,X
    STA byte_590
    BCC loc_17BE6F
    BEQ loc_17BE6F
    LDA byte_66
    STA byte_600,X
    RTS
; ---------------------------------------------------------------------------

loc_17BE6F:
    JMP sub_17BFD8
; End of function sub_17BE3B


; =============== S U B R O U T I N E =======================================


sub_17BE72:
    JSR sub_17BF2C
    SEC
    LDA byte_600,X
    SBC Pointer
    STA byte_66
    LDA byte_601,X
    SBC Pointer+1
    STA TilesCount
    BCS loc_17BE8C
    LDA #0
    STA byte_66
    STA TilesCount

loc_17BE8C:
    CPY #3
    BEQ loc_17BE9E
    CPY #5
    BEQ loc_17BE9E
    LDA byte_66
    ORA TilesCount
    BNE loc_17BE9E
    LDA #1
    STA byte_66

loc_17BE9E:
    SEC
    LDA byte_600,X
    SBC byte_66
    STA byte_590
    LDA byte_601,X
    SBC TilesCount
    STA byte_591
    BCC loc_17BEC1
    ORA byte_590
    BEQ loc_17BEC1
    LDA byte_66
    STA byte_600,X
    LDA TilesCount
    STA byte_601,X
    RTS
; ---------------------------------------------------------------------------

loc_17BEC1:
    JMP sub_17BFD8
; End of function sub_17BE72


; =============== S U B R O U T I N E =======================================


sub_17BEC4:
    JSR sub_17BF2C
    SEC
    LDA byte_600,X
    SBC Pointer
    STA byte_66
    BEQ loc_17BED3
    BCS loc_17BED7

loc_17BED3:
    LDA #1
    STA byte_66

loc_17BED7:
    LDA #0
    STA byte_591
    SEC
    LDA byte_600,X
    SBC byte_66
    STA byte_590
    BEQ loc_17BEEF
    BCC loc_17BEEF
    LDA byte_66
    STA byte_600,X
    RTS
; ---------------------------------------------------------------------------

loc_17BEEF:
    JMP sub_17BFD8
; End of function sub_17BEC4


; =============== S U B R O U T I N E =======================================


sub_17BEF2:
    JSR sub_17BF2C
    LDA AddrForJmp
    STA pTileID
    LDA AddrForJmp+1
    STA pTileID+1
    JMP sub_17BDEB
; End of function sub_17BEF2


; =============== S U B R O U T I N E =======================================


sub_17BF00:
    TXA
    PHA
    JSR sub_17BF2C
    PLA
    TAX
    LDA AddrForJmp
    STA Pointer
    LDA AddrForJmp+1
    STA Pointer+1
    JSR sub_F2ED
    JMP sub_17BDE8
; End of function sub_17BF00


; =============== S U B R O U T I N E =======================================


sub_17BF15:
    TXA
    PHA
    JSR sub_17BF2C
    PLA
    TAX
    LDA AddrForJmp+1
    LSR A
    STA Pointer+1
    LDA AddrForJmp
    ROR A
    STA Pointer
    JSR sub_F2ED
    JMP sub_17BE72
; End of function sub_17BF15


; =============== S U B R O U T I N E =======================================


sub_17BF2C:
    LDA pPPUTab,X
    STA byte_66
    LDA pPPUTab+1,X
    STA TilesCount
    LDA (byte_66),Y
    STA AddrForJmp
    ASL A
    STA pTileID
    INY
    LDA (byte_66),Y
    AND #3
    STA AddrForJmp+1
    ROL A
    STA pTileID+1
    BCC loc_17BF4F
    LDA #$FF
    STA pTileID
    STA pTileID+1

loc_17BF4F:
    DEY
    STX pDist
    TYA
    CLC
    ADC pDist
    TAX
    RTS
; End of function sub_17BF2C


; =============== S U B R O U T I N E =======================================


sub_17BF58:
    LDY byte_53
    LDA unk_60D,Y
    TAX
    LDY byte_54
    LDA unk_60E,Y
    JMP sub_17BF8C
; End of function sub_17BF58


; =============== S U B R O U T I N E =======================================


sub_17BF66:
    LDY byte_53
    LDA unk_60D,Y
    TAX
    LDY byte_54
    LDA unk_60F,Y
    JMP sub_17BF8C
; End of function sub_17BF66


; =============== S U B R O U T I N E =======================================


sub_17BF74:
    LDA unk_602,Y
    AND byte_57
    BEQ loc_17BF87
    LSR Pointer+1
    ROR Pointer
    LDA Pointer
    ORA Pointer+1
    BNE loc_17BF87
    INC Pointer

loc_17BF87:
    LDA #0
    STA byte_57
    RTS
; End of function sub_17BF74


; =============== S U B R O U T I N E =======================================


sub_17BF8C:
    LSR A
    STA Pointer
    STX pTileID
    TXA
    SEC
    SBC Pointer
    BCS loc_17BF99
    LDA #0

loc_17BF99:
    STA Pointer+1
    LDA #0
    STA Pointer
    STA AddrForJmp
    JSR sub_F13D
    JSR sub_F1ED
    CMP Pointer
    RTS
; End of function sub_17BF8C


; =============== S U B R O U T I N E =======================================


sub_17BFAA:
    JSR sub_17AABC
    LDY #0

loc_17BFAF:
    TYA
    PHA
    LDA (Pointer),Y
    BEQ loc_17BFCB
    JSR sub_17AAA4
    JSR bank0   ; set memory bank 0 at $8000
    LDY #5
    LDA (AddrForJmp),Y
    TAX
    LDY #2
    LDA (AddrForJmp),Y
    JSR bank16  ; set memory bank $16 at $8000
    AND #$40
    BNE loc_17BFD4

loc_17BFCB:
    PLA
    TAY
    INY
    CPY #8
    BNE loc_17BFAF
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17BFD4:
    PLA
    TAY
    CLC
    RTS
; End of function sub_17BFAA


; =============== S U B R O U T I N E =======================================


sub_17BFD8:
    LDA #0
    STA byte_590
    STA byte_591
    CLC
    RTS
; End of function sub_17BFD8


; =============== S U B R O U T I N E =======================================


sub_17BFE2:
    LDA byte_54
    BPL loc_17BFEB

loc_17BFE6:
    LDA byte_56
    LSR A
    BNE loc_17BFED

loc_17BFEB:
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_17BFED:
    SEC
    RTS
; End of function sub_17BFE2


; =============== S U B R O U T I N E =======================================


sub_17BFEF:
    LDY byte_54
    BMI loc_17BFFC
    LDA byte_611,Y
    CMP #6
    BNE loc_17BFFC
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_17BFFC:
    CLC
    RTS
; End of function sub_17BFEF

; ---------------------------------------------------------------------------
    .byte $FF, $FF
; end of 'BANK17'

; for bank 1E

; ---------------------------------------------------------------------------

byte_C000:
 .byte $FF  
byte_C001:
 .byte $FF  
    .byte $FF, $FF, $FF, $FF, $FF, $B6, $42, 4, 0, 0, 0, 0
    .byte 0, $20, $49, $B5, $AA, $AA, $4A, $24, 1, $51, $DA
    .byte $B6, $AA, $6D, $F7, $FF, $FF, $FF, $FF, $FF, $F6
    .byte $76, $DB, $AB, $55, $A5, $44, $10, $20, 0, 0, 4
    .byte 8, $90, $28, $51, $AA, $5A, $B5, $6D, $7B, $F7, $EE
    .byte $DD, $B7, $77, $5B, $5B, $B5, $52, $49, $12, $12
    .byte 9, $12, $22, $49, $48, $A5, $2A, $55, $65, $B5, $B5
    .byte $AD, $B6, $6D, $DB, $B6, $6D, $DB, $B6, $B5, $AD
    .byte $D6, $AA, $2A, $55, $4A, $A5, $24, $49, $2A, 9, $95
    .byte $A2, $54, $49, $53, $B5, $44, $6A, $D5, $6A, $AD
    .byte $D6, $44, 0, $AB, $6A, $D5, $44, $44, $AD, $44, $44
    .byte $44, $54, $44, $95, $44, $52, 0, 0, $FF, $B7, $20
    .byte $B, 0, 0, 0, 0, $C0, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, 0, 0, 0, 0, 0, 0, $C0, $B, 0, 0, $80, $FD
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $17, 0, 0
    .byte 0, 0, 0, 0, 0, $F0, $FF, $FF, $FF, $FF, $FF, $7E
    .byte $51, $ED, $44, $81, $10, 1, $82, $18, $2B, $42, $53
    .byte $81, $6F, $D8, $DB, $EB, $E7, $BF, $EB, $1F, $FB
    .byte $95, $24, $48, 0, 2, 0, $E0, $C5, $C0, $BF, $F8
    .byte $FF, $FF, $BA, $E, $7E, $C4, $50, $68, $2A, $56
    .byte 2, $6F, $77, $4E, $F8, $45, $95, $20, $56, $50, $63
    .byte $3F, $F4, $FF, $F0, $9D, $F8, $21, $B2, $20, $8E
    .byte $D, $18, $CF, $82, $AF, $8A, $E3, $3F, $78, $FD
    .byte $18, $CE, 2, $87, $58, $E0, $C4, $47, $E9, $DF, $F1
    .byte $53, $3B, $8A, $97, $38, 8, $A9, 3, $DE, $E2, $F8
    .byte $F, $9E, $EC, $89, $B2, 7, $38, $E2, $63, $F1, $E3
    .byte $C3, $7B, $42, $AF, $28, $8E, $2A, $8E, $42, $83
    .byte $5A, $1D, $FA, $B1, $EB, $AB, $D6, $62, $DA, $A1
    .byte $E2, $D0, $34, $9C, $85, $8E, $AE, $C4, $7A, $72
    .byte $1D, $A6, $55, $1C, $B9, $52, $3D, $8B, $9E, $9D
    .byte $4E, $96, $2A, $B, $E2, $A8, $A4, $95, $2D, $BB
    .byte $72, $AD, $F4, $91, $5A, $8B, $52, $25, $4E, $9C
    .byte $5A, $79, $6A, $D7, $A4, $8E, $9C, $74, $B0, $A2
    .byte $B4, $89, $67, $35, $6D, $2B, $37, $B6, $45, $A5
    .byte $A9, $C5, $A4, $42, $34, $26, $54, $44, $44, 4, $44
    .byte 0, $4A, $44, 0, 0, 0, 0, 0, $ED, $BA, $98, $76, $78
    .byte $97, $AB, $CD, $A7, $47, $76, $48, $45, $66, $77
    .byte $89, $FC, $97, $64, $FC, $97, $65, $FC, $86, 1, $23
    .byte $45, $67, $89, $AB, $CD, $EF, $FE, $A9, $ED, $FD
    .byte $79, $BD, $FE, $D9, $45, $78, $99, $AA, $BB, $CC
    .byte $DD, $EF, $7A, $DE, $FF, $EF, $FD, $DF, $FE, $EF
    .byte $EF, $FD, $EF, $FE, $DF, $FF, $EE, $EE, $FF, $EF
    .byte $FF, $FF, $FF, $EF, $EF, $FF, $FF, $EF, $FF, $FF
    .byte $FF, $EF, $EF, $FF, $BF, $FF, $EE, $EE, $ED, $ED
    .byte $DD, $BB, $BB, $AA, $AA, $99, $98, $87, $76, $65
    .byte $54, $44, $33, $22, $22, $22, $22, $22, $22, $22
    .byte $11, $11, $11, $11, $11, $11, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $A9, $F
; ---------------------------------------------------------------------------
    STA Stack
    LDA #3
    ORA BankMode
    STA CHRBank000
    LDX #9
    LDY #2

loc_C210:
  
    DEY
    BNE loc_C210
    BIT byte_0
    JMP loc_C220

; =============== S U B R O U T I N E =======================================


sub_C226:
    LDA #$F
    STA Stack
    RTS
; End of function sub_C226

; ---------------------------------------------------------------------------

    .byte $A9
    .byte $D9
    .byte $A2
    .byte $91
    .byte $85
    .byte $74 ; t
    .byte $86
    .byte $75 ; u
    .byte $20
    .byte $42 ; B
    .byte $C5
    .byte $20
    .byte $33 ; 3
    .byte $FD
    .byte $A9
    .byte $19
    .byte $A2
    .byte $B2
    .byte $A0
    .byte $A2
    .byte $20
    .byte $F3
    .byte $FD
    .byte $A9
    .byte   0
    .byte $85
    .byte $EC
    .byte $A9
    .byte $FF
    .byte $8D
    .byte $F7
    .byte   7
    .byte $A9
    .byte  $F
    .byte $8D
    .byte $15
    .byte $40 ; @
    .byte $20
    .byte $41 ; A
    .byte $FD
    .byte $A2
    .byte   0

; =============== S U B R O U T I N E =======================================


sub_C296:
  
    LDA #$25
    STA $540,X
    INX
    LDA #$C2
    STA $540,X
    INX
    CPX #$1A
    BNE sub_C296
    LDA #0
    STA $540,X
    INX
    STA $540,X
    LDA #$F
    STA IRQCount

loc_C2B3:
  
    JSR bank0_0

loc_C2B6:
  
    JSR wait_nmi_processed
    LDX #0
    STX OffsetNMI_ID
    JSR tiled_area
    STY OffsetNMI_ID
    INC PosY
    LDY #0
    LDA (PointerTilePack),Y
    PHA
    INY
    LDA (PointerTilePack),Y
    PHA
    INY
    TYA
    JSR get_tile_pointer
    LDA UnpackID
    CMP #0
    BNE loc_C2F0
    JSR tiled_area
    JSR sub_C306
    PLA
    TAX
    PLA
    CMP $540,X
    BCC loc_C2E9
    STA $540,X

loc_C2E9:
  
    LDA UnpackID
    CMP #0
    BNE loc_C2B6
    RTS
; ---------------------------------------------------------------------------

loc_C2F0:
  
    INC PosY
    JSR clear_area
    JSR sub_C306
    PLA
    TAX
    PLA
    CMP $540,X
    BCC loc_C303
    STA $540,X

loc_C303:
  
    JMP loc_C2B3
; End of function sub_C296


; =============== S U B R O U T I N E =======================================


sub_C306:
  
    STY OffsetNMI_ID
    JSR sub_C46E
    LDA #0
    STA NMI_ID,X
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    LDA #$19
    LDX #$1D
    LDY #$A3
    JSR bank_A000_a ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
    ; input: A - bank number, YX - (subroutine address - 1)
    ; Y - high byte, X - low byte
    JMP wait_nmi_flags_reset
; End of function sub_C306


; ---------------------------------------------------------------------------
    .byte $20, 1, $17, $21, $4B, $92, 1, $25, $16, $21, $10
    .byte $67, 0, $25, $18, $FB, $22, $FC, $1C, $FD, 0, $20
    .byte 1, $15, $21, $4B, $92, 1, $25, $14, $21, $10, $67
    .byte 1, $25, $16, $21, $2E, $67, 0, $25, $18, $FB, $22
    .byte $FC, $1C, $FD, 0, $20, 1, $13, $21, $4B, $92, 1
    .byte $25, $12, $21, $10, $67, 1, $25, $14, $21, $2E, $67
    .byte 1, $25, $16, $21, $4C, $67, 0, $25, $18, $FB, $22
    .byte $FC, $1C, $FD, 0
    .byte $24, $A0, $23, $38, 0, 0, 7, $23, $10, 0, 1, 3, $23
    .byte $14, 0, 2, 4, $23, $16, 0, 2, 4, $23, $11, 0, 3
    .byte 8, $A0, $25, 0, 1, 4, $A0, $A0, $21, $A0, $A1, 0
    .byte $A9, $6A, $A2, $92, $85, $74, $86, $75, $A5, $EC
    .byte $F0, 3, $4C, $B3, $C2, $4C, $74, $C2, $A9, $9B, $A2
    .byte $92, $4C, $A4, $C3, $A9, $CF, $A2, $92, $4C, $A4
    .byte $C3, $A9, 0, $A2, $93, $4C, $A4, $C3, $A9, $17, $A2
    .byte $93, $4C, $A4, $C3, $A9, $5F, $A2, $93, $4C, $A4
    .byte $C3, $20, $42, $C5, $A9, $48, $A2, $92, $4C, $A4
    .byte $C3, $A9, $6A, $A2, $93, $4C, $A4, $C3, $A9, $8D
    .byte $A2, $93, $4C, $A4, $C3, $A9, $1E, $A2, $95, $4C
    .byte $A4, $C3

; =============== S U B R O U T I N E =======================================


sub_C3F4:
  
    PHP
    JSR sub_CFAC
    JSR sub_FDC0
    LDA #1
    STA NMIFlags
    LDA #0
    STA byte_7F7
    PLP
    RTS
; End of function sub_C3F4


; =============== S U B R O U T I N E =======================================


sub_C406:
  
    LDA #$FF

loc_C408:
  
    STA Pointer
    JSR sram_write_enable
    LDA #0

loc_C40F:
  
    PHA
    TAX
    LDA $600,X
    BEQ loc_C436
    LDA $618,X
    STA PointerTilePack
    LDA $619,X
    STA PointerTilePack+1
    LDY #1
    LDA $601,X
    AND Pointer
    STA (PointerTilePack),Y
    LDY #$14

loc_C42B:
  
    LDA $603,X
    STA (PointerTilePack),Y
    INX
    INY
    CPY #$18
    BCC loc_C42B

loc_C436:
  
    PLA
    CLC
    ADC #$20
    BPL loc_C40F
    JSR sram_read_enable
; End of function sub_C406


; =============== S U B R O U T I N E =======================================


sub_C43F:
  
    JSR load_character_data
    LDA BankTable.CPU_8K_8000
    PHA
    JSR bank0_0
    LDA #$48
    LDX #$92
    STA PointerTilePack
    STX PointerTilePack+1
    JSR sub_C6D2
    BNE loc_C458

loc_C455:
  
    JSR sub_C6DB

loc_C458:
  
    LDA #2
    JSR get_tile_pointer
    LDA UnpackID
    CMP #0
    BNE loc_C455
    INC PosY
    JSR sub_C6D2
    PLA
    LDX #6
    JMP mmc3_bank_set   ; Set memory bank
; A - bank number
    ; X - mode

; =============== S U B R O U T I N E =======================================


sub_C46E:
  
    LDA ChrCount
    LSR A
    ADC #0
    TAX
    LDA PosY
    AND #$1E
    ASL A
    ASL A
    ASL A
    STA BlockIndex
    LDA PosX
    ADC #1
    LSR A
    ORA BlockIndex
    STA BlockIndex
    TAY
    JSR sram_write_enable
    LDA #$FF

loc_C48C:
  
    STA $6600,Y
    INY
    DEX
    BNE loc_C48C
    JSR sram_read_enable
    LDX PPU_addr
    LDY PPU_addr+1
    TYA
    CLC
    AND #3
    ADC #3
    ADC ChrCount
    LSR A
    LSR A
    STA LoopAddr
    TYA
    AND #$80
    STA NTAddr+1
    TXA
    LSR A
    ROR NTAddr+1
    LSR A
    ROR NTAddr+1
    TYA
    AND #$1C
    ORA NTAddr+1
    LSR A
    LSR A
    ORA #$C0
    STA NTAddr+1
    ORA #$F8
    STA SpriteTabOff
    TXA
    ORA #3
    STA NTAddr
    TYA
    AND #$42
    LSR A
    LSR A
    ADC #0
    EOR #$FF
    ADC #1
    CLC
    ADC BlockIndex
    TAY
    LDX OffsetNMI_ID
    LDA #7
    STA NMI_ID,X
    INX
    LDA LoopAddr
    STA NMI_ID,X
    INX

loc_C4E5:
  
    LDA NTAddr
    STA NMI_ID,X
    INX
    LDA NTAddr+1
    STA NMI_ID,X
    INX
    LDA $6600,Y
    AND #3
    STA BlockIndex
    INY
    LDA $6600,Y
    AND #$C
    ORA BlockIndex
    STA BlockIndex
    TYA
    CLC
    ADC #$F
    TAY
    LDA $6600,Y
    AND #$30
    ORA BlockIndex
    STA BlockIndex
    INY
    LDA $6600,Y
    AND #$C0
    ORA BlockIndex
    STA NMI_ID,X
    INX
    TYA
    SEC
    SBC #$F
    TAY
    DEC LoopAddr
    BNE loc_C528
    STX OffsetNMI_ID
    RTS
; ---------------------------------------------------------------------------

loc_C528:
  
    INC SpriteTabOff
    BEQ loc_C531
    INC NTAddr+1
    JMP loc_C4E5
; ---------------------------------------------------------------------------

loc_C531:
  
    LDA #4
    EOR NTAddr
    STA NTAddr
    LDA #$F8
    STA SpriteTabOff
    AND NTAddr+1
    STA NTAddr+1
    JMP loc_C4E5
; End of function sub_C46E


; =============== S U B R O U T I N E =======================================


load_character_data:
    JSR sram_write_enable
    LDX #$10
    LDY #0
    STY byte_6707

@next_character:
    JSR get_characters_num
    BCS @no_character
    INC byte_6707
    JSR get_sram_pointer
    TYA
    PHA
    LDY #0

@next_tilepack:
    JSR copy_tilepack
    CPY #$14
    BNE @next_tilepack
    TYA
    PHA
    LDY #1
    LDA (Pointer),Y
    LDY #$E

loc_C56A:
  
    ASL A
    BCC loc_C592
    PLA
    TYA
    PHA
    LDY #0

loc_C572:
  
    LDA $C398,Y
    STA $6700,X
    INX
    INY
    CPY #5
    BNE loc_C572
    PLA
    TAY
    LDA $C61E,Y
    STA $6700,X
    INX
    LDA $C61F,Y
    STA $6700,X
    INX
    LDY #$1B
    BNE @next_byte

loc_C592:
  
    DEY
    DEY
    BPL loc_C56A
    PLA
    TAY
    JSR copy_tilepack

@next_byte:
    LDA $C37A,Y
    STA $6700,X
    INX
    INY
    CPY #$1E
    BNE @next_byte
    PLA
    TAY
    LDA byte_6707
    CMP #3
    BCS loc_C5B5

@no_character:
  
    INY
    CPY #4
    BCC @next_character

loc_C5B5:
  
    LDA #0
    STA byte_6704
    STA byte_6705
    STA byte_6706
    SEC
    LDA #3
    SBC byte_6707
    TAX
    LDY #0

loc_C5C9:
  
    JSR get_characters_num
    BCS loc_C5D6
    STA $6704,X
    INX
    CPX #3
    BCS loc_C5DB

loc_C5D6:
  
    INY
    CPY #4
    BCC loc_C5C9

loc_C5DB:
  
    LDA byte_6707
    ASL A
    TAX
    LDA #4
    STA byte_6700
    STA byte_670A
    CPX #4
    BCS loc_C5EE
    LDA #0

loc_C5EE:
  
    STA byte_670D
    LDA $C616,X
    STA byte_6701
    LDA $C617,X
    STA byte_6702
    LDA byte_6713
    STA byte_670B
    LDA byte_6714
    STA byte_670C
    LDA #$9D
    STA byte_670E
    LDA #$C3
    STA byte_670F
    JMP sram_read_enable
; End of function load_character_data

; ---------------------------------------------------------------------------
    .word $C33D, $C329, $C33E, $C359
    .word $8629, $8622, $861B, $8614, $860D, $8606, $85FF
    .word $85F8

; =============== S U B R O U T I N E =======================================


get_characters_num:
    SEC
    LDA $7408,Y
    BEQ locret_C636
    CMP #6

locret_C636:
    RTS
; End of function get_characters_num


; =============== S U B R O U T I N E =======================================


copy_tilepack:
    LDA $C37A,Y
    STA $6700,X
    INX
    INY
    LDA $C37A,Y
    STA $6700,X
    INX
    INY
    LDA $C37A,Y
    STA $6700,X
    INX
    INY
    CLC
    LDA $C37A,Y
    ADC Pointer
    STA $6700,X
    INX
    INY
    LDA $C37A,Y
    ADC Pointer+1
    STA $6700,X
    INX
    INY
    RTS
; End of function copy_tilepack


; =============== S U B R O U T I N E =======================================

; C665
.proc get_sram_pointer
    STA Pointer+1
    LDA #0
    LSR Pointer+1
    ROR A
    LSR Pointer+1
    ROR A
    ADC #0
    STA Pointer
    LDA Pointer+1
    ADC #$74
    STA Pointer+1
    RTS
.endproc


; =============== S U B R O U T I N E =======================================


sub_C67A:
    JSR sub_C6D2
    BNE loc_C682

loc_C67F:
  
    JSR sub_C6DB

loc_C682:
  
    CMP #0
    BNE loc_C67F
    INC PosY
    JMP sub_C6D2
; ---------------------------------------------------------------------------

sub_C68B:
  
    PHA
    JSR wait_nmi_processed
    JSR nt_calc
    LDA #5
    STA NMI_ID
    LDA #1
    STA num_of_chr
    LDA NTAddr
    STA PPU_addr
    LDA NTAddr+1
    STA PPU_addr+1
    PLA
    STA chr
    LDA #0
    STA next
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    RTS
; End of function sub_C67A


; =============== S U B R O U T I N E =======================================


sub_C6B6:
  
    LDA byte_70
    CLC
    SBC ChrCount
    BCC loc_C6CF
    TAY

loc_C6BE:
  
    LDA #$A0
    JSR add_tile
    DEY
    BPL loc_C6BE
    LDY OffsetNMI_ID
    LDA $401,Y
    BEQ loc_C6CF
    TXA
    TAY

loc_C6CF:
  
    STY OffsetNMI_ID
    RTS
; End of function sub_C6B6

; =============== S U B R O U T I N E =======================================


sub_C707:
  
    JSR wait_nmi_processed
    LDA #$33
    STA OffsetNMI_ID
    PHA
    JSR tiled_area
    JSR sub_C6B6
    STY SpriteTabOff
    PLA
    TAX
    LDA #5
    STA NMI_ID
    LDA #1
    STA num_of_chr

loc_C723:
  
    LDA #0
    STA NMI_ID,Y
    CPX SpriteTabOff
    BCS loc_C6F9
    LDA #8
    STA NMI_ID,Y
    LDA $401,X
    STA ChrCount
    STA $401,Y
    LDA #$A0
    STA $404,Y
    CLC
    LDA $403,X
    STA PPU_addr+1
    ADC #$20
    STA $403,Y
    LDA $402,X
    STA PPU_addr
    ADC #0
    STA $402,Y
    TXA
    CLC
    ADC #4
    TAX
    TYA
    CLC
    ADC #5
    TAY

loc_C75F:
  
    LDA NMI_ID,X
    STA chr
    CMP #$A0
    BEQ loc_C77B
    LDA ModeSRAM
    BMI loc_C77B
    EOR #1
    STA ModeSRAM
    LSR A
    BCC loc_C77B
    LDA #$E
    STA byte_7F1

loc_C77B:
  
    LDA #0
    STA next
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    JSR wait_nmi_processed
    BIT ModeSRAM
    BVC loc_C7A4
    TXA
    PHA
    LDA chr
    LDX #$28
    CMP #$AE
    BEQ loc_C79F
    CMP #$AC
    BEQ loc_C79F
    LDX #3

loc_C79F:
  
    JSR wait_frames  ; wait for the whole frame to be output
    PLA
    TAX

loc_C7A4:
  
    INC PPU_addr+1
    INX
    DEC ChrCount
    BNE loc_C75F
    JMP loc_C723
; End of function sub_C707


; =============== S U B R O U T I N E =======================================


sub_C7AF:
    CMP #1
    BNE locret_C7C0
    PHA
    LDX #$A4

loc_C7B6:
  
    LDA $432,X
    STA $45B,X
    DEX
    BNE loc_C7B6
    PLA

locret_C7C0:
    RTS
; End of function sub_C7AF


; =============== S U B R O U T I N E =======================================


sub_C7C1:
    LDA #$33

loc_C7C3:
  
    CLC
    ADC #$29
    DEX
    BNE loc_C7C3
    STX byte_7F
    TAX
    PHA
    JSR sub_C7D4
    STA byte_7F
    PLA
    TAX
; End of function sub_C7C1


; =============== S U B R O U T I N E =======================================


sub_C7D4:
  
    JSR wait_nmi_processed
    STX OffsetNMI_ID

loc_C7D9:
  
    LDA NMI_ID,X
    BEQ loc_C7FD
    EOR #5
    BNE loc_C7F3
    ORA byte_7F
    BNE loc_C7E9
    JSR sub_C80E

loc_C7E9:
  
    TXA
    CLC
    ADC #4
    ADC $401,X
    TAX
    BCC loc_C7D9

loc_C7F3:
  
    JSR sub_C80E
    TXA
    CLC
    ADC #5
    TAX
    BCC loc_C7D9

loc_C7FD:
  
    STA byte_7F
    SEC
    LDA OffsetNMI_ID
    SBC #$29
    TAX
    LDA #$80
    STA NMIFlags
    CPX #$5C
    BCS sub_C7D4
    RTS
; End of function sub_C7D4


; =============== S U B R O U T I N E =======================================


sub_C80E:
  
    SEC
    LDA $403,X
    SBC #$20
    STA $403,X
    LDA $402,X
    STA SpriteTabOff
    SBC #0
    STA $402,X
    EOR SpriteTabOff
    AND #4
    BEQ locret_C83C
    SEC
    LDA $403,X
    SBC #$40
    STA $403,X
    LDA $402,X
    SBC #4
    AND #$F
    ORA #$20
    STA $402,X

locret_C83C:
    RTS
; End of function sub_C80E


; =============== S U B R O U T I N E =======================================


sub_CC2B:
  
    LDA byte_1F
    CMP #7
    BCS loc_CC5D
    LDA #$10
    STA NMIFlags
    JSR sub_D05E
    JSR sub_D0B1

loc_CC3B:
  
    LDA NMIFlags
    BNE loc_CC3B

loc_CC3F:
  
    LDA OtherNMIFlags
    CMP #9
    BCS loc_CC3F
    SEC
    ROR FlagClearOAM300
    JSR sub_E065
    ASL FlagClearOAM300
    JSR sub_D232
    LDA #0
    STA NMI_ID,X
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    BNE loc_CC83

loc_CC5D:
  
    JSR sub_D05E
    JSR sub_D0B1
    JSR sub_D232
    LDA #0
    STA NMI_ID,X
    STA OffsetNMI_ID
    LDA #$10
    STA NMIFlags
    LDA byte_1F
    CMP #$F
    BCS loc_CC83

loc_CC77:
  
    LDA NMIFlags
    BNE loc_CC77
    SEC
    ROR FlagClearOAM300
    JSR sub_E065
    ASL FlagClearOAM300

loc_CC83:
  
    LDA byte_A0
    LSR A
    BCC loc_CC96
    JSR sub_D21C
    LDA #0
    STA NMI_ID,X
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags

loc_CC96:
  
    BIT byte_A0
    BMI locret_CC9C
    INC byte_D5

locret_CC9C:
    RTS
; End of function sub_CC2B


; =============== S U B R O U T I N E =======================================


sub_CC9D:
  
    LSR A
    LSR A
    LSR A
    LSR A
    TAX
    LDY $CCA9,X
    LDA $743C,Y
    RTS
; End of function sub_CC9D

; ---------------------------------------------------------------------------
    .byte 0, 1, 2, 1, 0, 0, 0, 0

; =============== S U B R O U T I N E =======================================


sub_CCB1:
  
    LDA #$FF
    JSR sub_FD28
    JSR sub_DA16
    LDA #2
    STA byte_7F0
    LDA #1
    ORA MaskPPU
    STA MaskPPU
    LDX #8

loc_CCC6:
  
    JSR sub_EEE4
    DEX
    BNE loc_CCC6
    LDA #$1E
    AND MaskPPU
    STA MaskPPU
    JSR sub_FD4F
    JMP loc_CD79
; ---------------------------------------------------------------------------
    LDA NTAddrC
    PHA
    LDA #$FF
    STA byte_F
    JSR sub_FD28
    JSR sub_C3F4
    LDA #1
    STA byte_7F4
    JSR sub_CD9D
    LDX #5

loc_CCF0:
  
    JSR sub_CD8B
    LDA byte_A0
    BMI sub_CCB1
    LDA ButtonPressed
    AND #$F
    TAX
    LDA $EBDD,X
    BMI loc_CD0C
    ORA #$40
    TAX
    EOR byte_22
    CMP #4
    BEQ loc_CD0C
    STX byte_22

loc_CD0C:
  
    LDX byte_25
    INX
    CPX #$2D
    BCC loc_CCF0
    JSR wait_nmi_processed
    LDA #$20

loc_CD18:
  
    TAX
    ASL $304,X
    ASL $305,X
    SEC
    SBC #8
    BNE loc_CD18
    LDA #$A

loc_CD26:
  
    PHA
    JSR sub_CC2B
    JSR wait_nmi_processed
    PLA
    SEC
    SBC #1
    BNE loc_CD26
    LDA #1
    STA byte_7F3
    LDA #$22
    JSR sub_EDFE
    JSR bank13_A000
    JSR sram_write_enable
    JSR byte_BBD4
    JSR sub_D9FA
    PLA
    LDA PointerTilePack04
    TAX
    AND #$3F
    PHA
    TXA
    AND #$C0
    STA PointerTilePack04
    JSR sub_D8C9
    LDX #$14
    JSR wait_frames  ; wait for the whole frame to be output
    JSR load_character_data
    JSR sub_CEFC
    JSR clear_oam_sprite
    JSR sub_CFAC
    JSR sub_CD9D
    LDX #$2C

loc_CD70:
  
    JSR sub_CD8B
    LDX byte_25
    DEX
    DEX
    BPL loc_CD70

loc_CD79:
  
    LDX #0
    STX byte_22
    STX Gamepad0Buttons
    STX byte_F
    JSR sub_CDAF
    PLA
    JSR sub_FD28
    JMP loc_CB76
; End of function sub_CCB1


; =============== S U B R O U T I N E =======================================


sub_CD8B:
  
    JSR sub_CDAF
    JSR sub_DE99
    JSR wait_nmi_processed
    JSR sub_DD01
    JSR sub_DFDA
    JMP sub_CC2B
; End of function sub_CD8B


; =============== S U B R O U T I N E =======================================


sub_CD9D:
  
    JSR sram_write_enable
    LDA PointerTilePack06
    AND #$F
    STA byte_6799
    ORA #$40
    STA byte_22
    JMP sram_read_enable
; End of function sub_CD9D


; =============== S U B R O U T I N E =======================================


sub_CDAF:
  
    STX byte_25
    LDA $CDB7,X
    STA byte_1F
    RTS
; End of function sub_CDAF

; ---------------------------------------------------------------------------
    .byte 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3
    .byte 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7
    .byte 7, 7, 7, 7, 7, 7, $F, $F, $F, $F, $F, $48, $AD, $8C
    .byte 7, $AA, $68, $20, $28, $FD, $A9, 0, $85, $DA, $24
    .byte $DA, $70, 5, $AD, $8C, 7, $D0, $F7, $A9, 0, $85
    .byte $DA, $8A, $4C, $28, $FD

; =============== S U B R O U T I N E =======================================


sub_CE02:
    LDY #$5E
    LDA #0
    LDX #$6C
    STA Pointer
    STX Pointer+1
    JSR wait_nmi_processed
    TYA
    LDX #1
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA #9
    LDX #$40
    STA NMI_ID
    STX num_of_chr
    LDA #0
    LDX #$18
    STX PPU_addr
    STA PPU_addr+1
    LDA #0
    STA byte_444
    LDX #$20

loc_CE30:
    LDA #0
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    JSR wait_nmi_processed
    JSR sram_write_enable
    LDY #0

loc_CE40:
  
    LDA $404,Y
    STA (Pointer),Y
    INY
    CPY #$40
    BCC loc_CE40
    JSR sram_read_enable
    CLC
    TYA
    ADC Pointer
    STA Pointer
    LDA #0
    ADC Pointer+1
    STA Pointer+1
    CLC
    TYA
    ADC PPU_addr+1
    STA PPU_addr+1
    LDA #0
    ADC PPU_addr
    STA PPU_addr
    DEX
    BNE loc_CE30
    RTS
; End of function sub_CE02


; =============== S U B R O U T I N E =======================================


sub_CE6D:
    LDA #0
    LDX #0
    STA Pointer
    STX Pointer+1
    LDA #0
    LDX #$20
    STA pTileID
    STX pTileID+1
    LDA #$10
    STA pDist

loc_CE81:
  
    LDA Pointer
    LDX Pointer+1
    LDY #9
    JSR sub_CEB2
    LDA pTileID
    LDX pTileID+1
    LDY #5
    JSR sub_CEB2
    CLC
    LDA #$40
    ADC Pointer
    STA Pointer
    LDA #0
    ADC Pointer+1
    STA Pointer+1
    CLC
    LDA #$40
    ADC pTileID
    STA pTileID
    LDA #0
    ADC pTileID+1
    STA pTileID+1
    DEC pDist
    BNE loc_CE81
    RTS
; End of function sub_CE6D


; =============== S U B R O U T I N E =======================================


sub_CEB2:
    PHA
    JSR wait_nmi_processed
    PLA
    STA PPU_addr+1
    STX PPU_addr
    STY NMI_ID
    LDA #$40
    STA num_of_chr
    LDA #0
    STA byte_444
    LDA #0
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    RTS
; End of function sub_CEB2

; =============== S U B R O U T I N E =======================================


sub_CEFC:
  
    JSR sub_D674
    LDA #$14
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA #0
    STA CHRBank9
    LDA byte_14
    ASL A
    ASL A
    ASL A
    ROL CHRBank9
    ASL A
    ROL CHRBank9
    ADC #0
    STA CHRBank8
    LDA CHRBank9
    ADC #$90
    STA CHRBank9
    JSR wait_nmi_processed
    LDY #$F

loc_CF23:
  
    LDA ($88),Y
    BPL loc_CF2A
    JSR sub_E0F2

loc_CF2A:
  
    STA PalNMIBG,Y
    DEY
    BPL loc_CF23
    LDY #$F

loc_CF32:
  
    LDA $CF9C,Y
    STA $510,Y
    DEY
    BPL loc_CF32
    LDX PalNMIBG+$C
    LDY PalNMIBG+$E
    STX byte_17
    STY byte_16
    LDX #$F
    LDY #$30
    STX PalNMIBG+$C
    STY PalNMIBG+$E
    JSR load_map_tile
    LDA byte_1A
    AND #$C0
    STA MaskORA
    LDA byte_1B
    STA byte_AD
    LDA #$40
    STA byte_AE
    LDA #0
    STA byte_AF
    LDA #$10
    STA BlockCount

loc_CF68:
  
    SEC
    LDA byte_18
    AND #$C0
    SBC #$40
    STA byte_AA
    LDA byte_19
    SBC #0
    STA byte_AB
    LDA #$13
    STA byte_A8
    JSR loc_D11D
    DEC BlockCount
    BEQ loc_CF92
    CLC
    LDA MaskORA
    ADC #$40
    STA MaskORA
    LDA byte_AD
    ADC #0
    STA byte_AD
    JMP loc_CF68
; ---------------------------------------------------------------------------

loc_CF92:
  
    JSR sub_D09E
    LDY #0
    STY ShiftCameraY
    JMP sub_DD72
; End of function sub_CEFC

; ---------------------------------------------------------------------------
    .byte $F, $F, 0, $30, $F, $F, $16, $37, $F, $F, $24, $37
    .byte $F, $F, $12, $37

; =============== S U B R O U T I N E =======================================


sub_CFAC:
  
    JSR wait_nmi_processed
    CLC
    LDA ShiftCameraX
    ORA #8
    TAX
    LDY ShiftCameraY
    LDA CntrlPPU
    AND #$FC
    ORA MaskCntrlPPU
    STA CntrlPPU
    STX CameraX
    STY CameraY
    STY ScreenY
    CLC
    LDA byte_1A
    AND #$C0
    ADC #$80
    STA MaskORA
    LDA byte_1B
    ADC #3
    STA byte_AD
    LDA #$F
    STA BlockCount

loc_CFD8:
  
    CLC
    LDA ScreenY
    ADC #$F0
    BCS loc_CFE1
    ADC #$F0

loc_CFE1:
  
    STA ScreenY
    LDA byte_18
    AND #$C0
    STA byte_AA
    LDA byte_19
    STA byte_AB
    LDX BlockCount
    LDA $D04E,X
    EOR ScreenY
    AND #$10
    BNE loc_CFFB
    LDA $D04E,X

loc_CFFB:
  
    STA byte_93
    JSR wait_nmi_processed
    JSR write_tile_attr
    LDA #0
    STA NMI_ID,X
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    DEC BlockCount
    BEQ @last_block
    LDA BlockCount
    ASL A
    TAX
    JSR wait_nmi_flags_reset
    LDA #LIGHT_REDVIOLET
    STA $53E,X                  ; PalSpr+$E
    SEC
    LDA MaskORA
    SBC #$40
    STA MaskORA
    LDA byte_AD
    SBC #0
    STA byte_AD
    JMP loc_CFD8
; ---------------------------------------------------------------------------

@last_block:
  
    JSR wait_nmi_processed
    JSR load_map_tile
    LDA #4                      ; load_palettes ID
    STA NMI_ID
    LDA #0
    STA num_of_chr
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    LDA #$88
    STA byte_A0
    LDA #0
    STA IRQCount
    STA Gamepad0Buttons
    RTS
; End of function sub_CFAC

; ---------------------------------------------------------------------------
    .byte $F0, $10, $10, $10, $10, $10, $10, $10, $10, $10
    .byte $10, $10, $10, $10, $20

; =============== S U B R O U T I N E =======================================


sub_D05E:
    LDA byte_A0
    BMI locret_D0B0
    ASL A
    ASL A
    ASL A
    TAX
    CLC
    LDA $EBED,X
    ADC byte_18
    STA byte_18
    LDA $EBEE,X
    ADC byte_19
    STA byte_19
    CLC
    LDA $EBEF,X
    ADC byte_1A
    STA byte_1A
    LDA $EBF0,X
    ADC byte_1B
    STA byte_1B
    CLC
    LDA $EBEF,X
    BEQ sub_D09E
    BMI loc_D094
    LDA ShiftCameraY
    ADC #$20 ; ' '
    BCC loc_D09A
    BCS loc_D09C

loc_D094:
    LDA ShiftCameraY
    ADC #$F0
    BCS loc_D09C

loc_D09A:
    ADC #$F0

loc_D09C:
    STA ShiftCameraY
; End of function sub_D05E


; =============== S U B R O U T I N E =======================================


sub_D09E:
    LDA byte_19
    AND #7
    STA MaskCntrlPPU
    LDA byte_18
    AND #$C0
    LSR MaskCntrlPPU
    ROR A
    LSR MaskCntrlPPU
    ROR A
    STA ShiftCameraX

locret_D0B0:
    RTS
; End of function sub_D09E


; =============== S U B R O U T I N E =======================================


sub_D0B1:
    JSR load_map_tile
    LDA byte_A0
    BMI locret_D0C0
    JSR sub_D0C4
    LDA byte_A0
    LSR A
    BCS loc_D0C1

locret_D0C0:
    RTS
; ---------------------------------------------------------------------------

loc_D0C1:
    ADC #0
    ASL A
; End of function sub_D0B1


; =============== S U B R O U T I N E =======================================


sub_D0C4:
    AND #6
    ASL A
    ASL A
    TAX
    CLC
    LDA byte_18
    AND #$C0
    ADC $D0FD,X
    STA byte_AA
    LDA byte_19
    ADC $D0FE,X
    STA byte_AB
    CLC
    LDA byte_1A
    AND #$C0
    ADC $D0FF,X
    STA MaskORA
    LDA byte_1B
    ADC $D100,X
    STA byte_AD
    LDA $D101,X
    STA byte_AE
    LDA $D102,X
    STA byte_AF
    LDA $D103,X
    STA byte_A8
    JMP loc_D11D
; End of function sub_D0C4

; ---------------------------------------------------------------------------
    .byte $C0, $FF, 0, 0, $40, 0, $13, 0, $40, 4, 0, 0, 0
    .byte $40, $10, 0, $C0, $FF, $C0, 3, $40, 0, $13, 0, $C0
    .byte $FF, 0, 0, 0, $40, $10, 0
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_D0C4

loc_D11D:
  
    JSR sub_D55D

loc_D120:
  
    JSR sub_D59D
    LDY #0
    LDA ($88),Y
    AND #$3F ; '?'
    CMP byte_14
    BEQ loc_D132
    LDA byte_16
    JMP loc_D14F
; ---------------------------------------------------------------------------

loc_D132:
  
    LDA byte_94
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    CLC
    LDA byte_AB
    STA CHRBank8
    LDA byte_AD
    AND #$1F
    ADC #$80
    STA CHRBank9
    LDY #0
    LDA ($88),Y
    BPL loc_D14F
    JSR sub_E0F2

loc_D14F:
  
    TAX
    AND #$40
    ASL A
    STA byte_97
    LSR A
    LSR A
    STA byte_96
    BEQ loc_D15D+1
    LDA byte_13

loc_D15D:
  
    BIT CHRBank00+$9A5
    STA CHRBank9
    TXA
    ASL A
    ASL A
    ASL A
    ROL CHRBank9
    ASL A
    ROL CHRBank9
    STA CHRBank8
    STA CHRBankA
    LDA CHRBank9
    ADC #$80
    ADC byte_96
    STA CHRBank9
    ADC #$10
    STA CHRBankB
    LDA byte_10
    LSR A
    ORA #1
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA byte_12
    LSR A
    ORA #1
    LDX #7
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode

loc_D18F:
    LDA byte_AA
    LSR A
    LSR A
    ORA MaskORA
    LSR A
    LSR A
    LSR A
    LSR A
    TAX
    TAY
    JSR sram_write_enable
    LDA ($88),Y
    EOR byte_97
    LDY byte_A1
    STA ($A2),Y
    TXA
    TAY
    LDA ($8A),Y
    AND #$C0
    STA byte_90
    LSR A
    LSR A
    ORA byte_90
    LSR A
    LSR A
    ORA byte_90
    LSR A
    LSR A
    ORA byte_90
    LDY byte_A1
    STA ($A4),Y
    LDA #0
    STA ($A6),Y
    JSR sram_read_enable
    DEC byte_A8
    BEQ locret_D21B
    LDA byte_AE
    BEQ loc_D1F9
    INC byte_A1
    CLC
    ADC byte_AA
    STA byte_AA
    BCC loc_D215
    LDA #0
    ADC byte_AB
    STA byte_AB
    AND #3
    BNE loc_D218
    LDA byte_A1
    SEC
    SBC #$10
    STA byte_A1
    LDA byte_A3
    EOR #1
    STA byte_A3
    CLC
    ADC #2
    STA byte_A5
    ADC #2
    STA byte_A7
    JMP loc_D120
; ---------------------------------------------------------------------------

loc_D1F9:
    LDX byte_AF
    BEQ locret_D21B
    CLC
    LDA byte_A1
    ADC #$10
    STA byte_A1
    CLC
    TXA
    ADC MaskORA
    STA MaskORA
    BCC loc_D215
    LDA #0
    ADC byte_AD
    STA byte_AD
    JMP loc_D120
; ---------------------------------------------------------------------------

loc_D215:
    JMP loc_D18F
; ---------------------------------------------------------------------------

loc_D218:
    JMP loc_D120
; ---------------------------------------------------------------------------

locret_D21B:
    RTS
; END OF FUNCTION CHUNK FOR sub_D0C4

; =============== S U B R O U T I N E =======================================


sub_D21C:
    LDA NMIFlags
    BNE sub_D21C
    LDA byte_A0
    BMI loc_D22F
    AND #7
    ASL A
    ASL A
    ASL A
    TAX
    LDA $D28B,X
    BPL loc_D23F

loc_D22F:
    LDX #0
    RTS
; End of function sub_D21C


; =============== S U B R O U T I N E =======================================


sub_D232:
    LDA NMIFlags
    BNE sub_D232
    LDA byte_A0
    BMI loc_D22F
    AND #7
    ASL A
    ASL A
    ASL A

loc_D23F:
    TAX
    CLC
    LDA byte_18
    AND #$C0
    ADC $D284,X
    STA byte_AA
    LDA byte_19
    ADC $D285,X
    STA byte_AB
    CLC
    LDA byte_1A
    AND #$C0
    ADC $D286,X
    STA MaskORA
    LDA byte_1B
    ADC $D287,X
    STA byte_AD
    CLC
    LDA $D288,X
    ADC ShiftCameraY
    BCS loc_D26C
    ADC #$F0

loc_D26C:
    STA ScreenY
    LDA $D28A,X
    BMI loc_D281
    EOR ScreenY
    AND #$10
    BNE loc_D27C
    LDA $D289,X

loc_D27C:
    STA byte_93
    JMP write_tile_attr
; ---------------------------------------------------------------------------

loc_D281:
    JMP sub_D398
; End of function sub_D232

; ---------------------------------------------------------------------------
    .byte 0, 0, 0, 0, $10, $F0, $10, $88, 0, 0, 0, 0, $10
    .byte $F0, $10, $10, 0, 4, 0, 0, $10, 0, $FF, $88, 0, 0
    .byte $80, 3, $F0, $20, 0, $10, 0, 0, $80, 3, $F0, $20
    .byte 0, $88, 0, 0, $80, 3, $F0, $20, 0, $30, 0, 0, 0
    .byte 0, $10, 0, $FF, $88, 0, 0, 0, 0, $10, $F0, $10, $30

; =============== S U B R O U T I N E =======================================


write_tile_attr:
    JSR sub_D4B7
    LDA #$11
    STA byte_91
    LDX #0

loc_D2CD:
    LDA #5
    STA NMI_ID,X
    STA $42A,X
    INX
    LDA byte_91
    ASL A
    STA NMI_ID,X
    STA $42A,X
    INX
    LDA CHRBankD
    STA NMI_ID,X
    STA $42A,X
    INX
    LDA CHRBankC
    STA NMI_ID,X
    ORA #$20 ; ' '
    STA $42A,X
    INX

loc_D2F4:
    JSR sub_D537
    LDY #0
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA NMI_ID,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA $401,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA $42A,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA $42B,X
    INX
    INX
    DEC byte_91
    BEQ loc_D355
    INC byte_A1
    LDA byte_A1
    BIT byte_D47F
    BNE loc_D2F4
    SEC
    SBC #$10
    STA byte_A1
    LDA byte_A3
    EOR #1
    STA byte_A3
    LDA CHRBankC
    AND #$E0
    STA CHRBankC
    LDA CHRBankD
    EOR #4
    STA CHRBankD
    SEC
    LDA #$11
    SBC byte_91
    ASL A
    STA num_of_chr
    STA BankPPU_X800B
    JMP loc_D2CD
; ---------------------------------------------------------------------------

loc_D355:
    LDA #9
    STA byte_91
    LDX #$54
    LDA #7
    STA NMI_ID,X
    INX
    LDA byte_91
    STA NMI_ID,X
    INX

loc_D367:
    JSR sub_D480
    DEC byte_91
    BEQ locret_D397
    INC CHRBankE
    CLC
    LDA byte_92
    ADC #2
    STA byte_92
    BIT byte_D47F
    BNE loc_D367
    SEC
    SBC #$10
    STA byte_92
    LDA byte_A5
    EOR #1
    STA byte_A5
    SEC
    LDA CHRBankE
    SBC #8
    STA CHRBankE
    LDA CHRBankF
    EOR #4
    STA CHRBankF
    JMP loc_D367
; ---------------------------------------------------------------------------

locret_D397:
    RTS
; End of function write_tile_attr


; =============== S U B R O U T I N E =======================================


sub_D398:
    JSR sub_D4B7
    SEC
    LDA #$F0
    SBC ScreenY
    CLC
    ADC byte_A1
    STA byte_A1
    LDA #$F
    STA byte_91
    LDX #0
    LDA #6
    STA NMI_ID,X
    STA $422,X
    INX
    LDA byte_91
    ASL A
    STA NMI_ID,X
    STA $422,X
    INX
    LDA CHRBankD
    AND #$FC
    STA NMI_ID,X
    STA $422,X
    INX
    LDA CHRBankC
    AND #$1E
    STA NMI_ID,X
    ORA #1
    STA $422,X
    INX
    LDA ScreenY
    STA CHRBankC

loc_D3DA:
    LDA CHRBankC
    SEC
    SBC #$10
    STA CHRBankC
    BCS loc_D3E9
    LDA byte_A1
    ADC #$10
    STA byte_A1

loc_D3E9:
    JSR sub_D537
    LDY #0
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA NMI_ID,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA $422,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA $401,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR byte_97
    STA $423,X
    INX
    INX
    DEC byte_91
    BEQ loc_D425
    CLC
    LDA byte_A1
    ADC #$10
    STA byte_A1
    JMP loc_D3DA
; ---------------------------------------------------------------------------

loc_D425:
    LDA #8
    STA byte_91
    LDX #$44
    LDA #7
    STA NMI_ID,X
    INX
    LDA byte_91
    STA NMI_ID,X
    INX
    LDA ScreenY
    AND #$10
    BEQ loc_D455
    SEC
    LDA byte_92
    PHA
    SBC #$10
    STA byte_92
    LDA #$20
    STA byte_93
    JSR sub_D480
    PLA
    STA byte_92
    LDA #$10
    STA byte_93
    BNE loc_D45C

loc_D455:
    LDA #$10
    STA byte_93

loc_D459:
    JSR sub_D480

loc_D45C:
    DEC byte_91
    BEQ locret_D47E
    CLC
    LDA byte_92
    ADC #$20
    STA byte_92
    CLC
    LDA CHRBankE
    ADC #8
    STA CHRBankE
    BCC loc_D459
    SBC #$40
    STA CHRBankE
    SEC
    LDA byte_92
    SBC #$10
    STA byte_92
    JMP loc_D459
; ---------------------------------------------------------------------------

locret_D47E:
    RTS
; End of function sub_D398

; ---------------------------------------------------------------------------
byte_D47F:
 .byte $F    ; write_tile_attr+B3↑r

; =============== S U B R O U T I N E =======================================


sub_D480:
    LDA CHRBankF
    STA NMI_ID,X
    INX
    LDA CHRBankE
    STA NMI_ID,X
    INX
    LDY byte_92
    LDA ($A4),Y
    AND #3
    STA byte_90
    INY
    LDA ($A4),Y
    AND #$C
    ORA byte_90
    STA byte_90
    CLC
    LDA byte_92
    ADC byte_93
    TAY
    LDA ($A4),Y
    AND #$30
    ORA byte_90
    STA byte_90
    INY
    LDA ($A4),Y
    AND #$C0
    ORA byte_90
    STA NMI_ID,X
    INX
    RTS
; End of function sub_D480


; =============== S U B R O U T I N E =======================================


sub_D4B7:
    LDA byte_10
    LSR A
    ORA #1
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA byte_12
    LSR A
    ORA #1
    LDX #7
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    JSR sub_D55D
    LDA byte_AB
    AND #7
    STA byte_9A
    LDA byte_AA
    LSR byte_9A
    ROR A
    LSR byte_9A
    ROR A
    STA byte_98
    LDA ScreenY
    EOR byte_A1
    AND #$10
    BNE loc_D4ED
    LDA byte_A1
    AND #$EE
    JMP loc_D4F6
; ---------------------------------------------------------------------------

loc_D4ED:
    SEC
    LDA byte_A1
    SBC #$10
    ORA #$10
    AND #$FE

loc_D4F6:
    BIT byte_93
    BPL loc_D501
    LDX #$20 ; ' '
    STX byte_93
    SEC
    SBC #$10

loc_D501:
    STA byte_92
    LDA ScreenY
    AND #$F0
    STA CHRBankC
    LDA byte_9A
    ASL CHRBankC
    ROL A
    ASL CHRBankC
    ROL A
    ORA #$20
    STA CHRBankD
    ORA #3
    STA CHRBankF
    LDA byte_98
    AND #$F0
    LSR A
    LSR A
    LSR A
    ORA CHRBankC
    STA CHRBankC
    LSR A
    LSR A
    AND #7
    STA CHRBankE
    LDA ScreenY
    LSR A
    LSR A
    AND #$38
    ORA #$C0
    ORA CHRBankE
    STA CHRBankE
    RTS
; End of function sub_D4B7


; =============== S U B R O U T I N E =======================================


sub_D537:
    LDY byte_A1
    LDA ($A2),Y
    AND #$80
    LSR A
    STA byte_97
    LSR A
    STA byte_96
    BEQ loc_D547+1
    LDA byte_13

loc_D547:
  
    BIT CHRBank00+$9A5
    STA CHRBank9
    LDA ($A2),Y
    ASL A
    ASL A
    ROL CHRBank9
    STA CHRBank8
    LDA CHRBank9
    ADC #$90
    ADC byte_96
    STA CHRBank9
    RTS
; End of function sub_D537


; =============== S U B R O U T I N E =======================================


sub_D55D:
    LDA byte_AB
    AND #7
    STA byte_A3
    LDA byte_AA
    LSR byte_A3
    ROR A
    LSR byte_A3
    ROR A
    LSR A
    LSR A
    ORA MaskORA
    STA byte_A1
    LDA byte_AD
    LSR A
    ROR byte_A1
    LSR A
    ROR byte_A1
    LDA #0
    STA byte_A2
    STA byte_A4
    STA byte_A6
    LDA byte_A3
    CLC
    ADC #$60
    STA byte_A3
    ADC #2
    STA byte_A5
    ADC #2
    STA byte_A7
    RTS
; End of function sub_D55D


; =============== S U B R O U T I N E =======================================


sub_D591:
    JSR sub_D59D
    LDY #0
    LDA ($88),Y
    AND #$3F
    STA byte_14
    RTS
; End of function sub_D591


; =============== S U B R O U T I N E =======================================


sub_D59D:
  
    LDA byte_AD
    LSR A
    LSR A
    LSR A
    LSR A
    AND #$E
    STA byte_94
    ORA #1
    LDX #7
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA byte_AD
    LSR A
    LSR A
    AND #7
    STA CHRBank9
    LDA byte_AB
    AND #$FC
    CLC
    STA CHRBank8
    LDA CHRBank9
    ADC #$B8
    STA CHRBank9
    RTS
; End of function sub_D59D


; =============== S U B R O U T I N E =======================================


load_map_tile:
    CLC
    LDA byte_19
    ADC #2
    STA byte_AB
    CLC
    LDA byte_1A
    ADC #$C0
    STA MaskORA
    LDA byte_1B
    ADC #1
    STA byte_AD
    JSR sub_D59D
    LDY #0
    LDA ($88),Y
    AND #$3F
    CMP byte_14
    BEQ loc_D5F3
    LDA byte_17
    LDX #3
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    STA byte_12
    AND #3
    STA byte_13
    RTS
; ---------------------------------------------------------------------------

loc_D5F3:
    LDA byte_23
    BEQ loc_D5FF
    BPL loc_D60D
    AND #$7F
    STA byte_23
    BPL loc_D612

loc_D5FF:
    LDY #1
    LDA ($88),Y
    AND #$3F
    STA byte_15
    TAX
    LDA $D634,X
    BEQ loc_D612

loc_D60D:
    LDX #1
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode

loc_D612:
    LDY #2
    LDA ($88),Y
    AND #$3F
    LDX #2
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    STA byte_10
    AND #3
    STA byte_11
    INY
    LDA ($88),Y
    AND #$3F
    LDX #3
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    STA byte_12
    AND #3
    STA byte_13
    RTS
; End of function load_map_tile

; ---------------------------------------------------------------------------
    .byte 0, $68, $62, $62, $62, $62, $64, $62, $74, $64, $6A
    .byte $62, $66, $6C, $62, 0, 0, 0, 0, 0, $66, 0, $6A, $66
    .byte $62, $68, $64, $68, $6E, $66, $66, $66, $62, $62
    .byte $62, $66, $64, $6E, $62, $64, $66, $74, $6C, $66
    .byte 0, 0, $68, $6C, $72, 0, $66, 0, 0, 0, $6A, 0, $6C
    .byte $6E, $6C, $6E, $6C, $6E, $6E, 0

; =============== S U B R O U T I N E =======================================


sub_D674:
    LDA byte_20
    BPL loc_D697
    AND #$F
    STA byte_3E
    LDA byte_6784
    AND #$C0
    STA byte_AA
    LDA byte_6785
    STA byte_AB
    LDA byte_6786
    AND #$C0
    STA MaskORA
    LDA byte_6787
    STA byte_AD
    JMP loc_D6CB
; ---------------------------------------------------------------------------

loc_D697:
    LDA PointerTilePack06
    AND #$3F ; '?'
    STA byte_3E
    CLC
    LDA PointerTilePack04
    AND #$C0
    STA byte_18
    ADC #0
    STA byte_AA
    LDA PointerTilePack05
    STA byte_19
    ADC #2
    STA byte_AB
    CLC
    LDA PointerTilePack06
    AND #$C0
    STA byte_1A
    ADC #$C0
    STA MaskORA
    LDA PointerTilePack07
    STA byte_1B
    ADC #1
    STA byte_AD
    JSR sub_D591

loc_D6CB:
    JSR sub_D55D
    JSR sub_DD57
    JSR sram_write_enable
    LDA byte_23
    BNE loc_D71B
    LDX #0

loc_D6DA:
    LDA $7408,X
    BEQ loc_D6F2
    JSR sub_D7DF
    LDY #$19
    LDA #$88
    STA ($30),Y
    LDA #$C
    CPX #0
    BNE loc_D6F2
    LDY #$1C
    LDA ($38),Y

loc_D6F2:
    LDY #0
    STA ($30),Y
    LDA byte_20
    AND #$C0
    BEQ loc_D73B
    JSR sub_DD64
    INX
    CPX #4
    BCC loc_D6DA

loc_D704:
    LDA PointerTilePack04
    AND #$3F ; '?'
    BEQ loc_D70E
    JSR sub_FD28

loc_D70E:
    LDA #0
    STA byte_20
    LDA byte_22
    AND #$CF
    STA byte_22
    JMP sram_read_enable
; ---------------------------------------------------------------------------

loc_D71B:
    JSR sub_D7E2
    LDY #0
    LDA ($30),Y
    AND #$3F
    CMP #$D
    BNE loc_D738
    JSR sub_D884
    LDY #$19
    LDA byte_3E
    STA ($30),Y
    EOR #4
    STA byte_3E
    JSR sub_D7E2

loc_D738:
    JMP loc_D704
; ---------------------------------------------------------------------------

loc_D73B:
    LDA $7409,X
    BEQ loc_D745
    JSR sub_D768
    BCC loc_D751

loc_D745:
    JSR sub_DD64
    JSR sram_write_enable
    LDY #0
    LDA #0
    STA ($30),Y

loc_D751:
    INX
    CPX #3
    BCC loc_D73B
    JMP loc_D704
; End of function sub_D674


; =============== S U B R O U T I N E =======================================


sub_D759:
    PHA
    LDX #0

loc_D75C:
    LDA $7409,X
    BEQ loc_D769
    INX
    CPX #3
    BCC loc_D75C
    PLA
    RTS
; End of function sub_D759


; =============== S U B R O U T I N E =======================================


sub_D768:
    PHA

loc_D769:
    TXA
    PHA
    JSR sub_D86C
    JSR sub_D884
    JSR sram_write_enable
    PLA
    TAX
    PLA
    STA $7409,X
    JSR sub_D7DF
    LDY #$19
    LDA byte_3E
    STA ($30),Y
    LDY #0
    LDA #$C
    STA ($30),Y
    CLC
    JMP sram_read_enable
; End of function sub_D768


; =============== S U B R O U T I N E =======================================


sub_D78D:
    LDX #0

loc_D78F:
    CMP $7408,X
    BEQ loc_D79A
    INX
    CPX #4
    BCC loc_D78F
    RTS
; ---------------------------------------------------------------------------

loc_D79A:
    JSR sram_write_enable

loc_D79D:
    CPX #3
    BCS loc_D7AC
    LDA $7409,X
    BEQ loc_D7AE
    STA $7408,X
    INX
    BCC loc_D79D

loc_D7AC:
    LDA #0

loc_D7AE:
    STA $7408,X
    TXA
    JSR sub_D86C
    JSR sub_DFBF
    JSR sub_DD57
    LDX #0

loc_D7BD:
    LDA $7408,X
    BEQ loc_D7CF
    JSR sub_D813
    LDA #$C
    CPX #0
    BNE loc_D7CF
    LDY #$1C
    LDA ($38),Y

loc_D7CF:
    LDY #0
    STA ($30),Y
    JSR sub_DD64
    INX
    CPX #4
    BCC loc_D7BD
    CLC
    JMP sram_read_enable
; End of function sub_D78D


; =============== S U B R O U T I N E =======================================


sub_D7DF:
    JSR sub_D813
; End of function sub_D7DF


; =============== S U B R O U T I N E =======================================


sub_D7E2:
    LDY #4
    LDA byte_AA
    STA ($30),Y
    INY
    LDA byte_AB
    STA ($30),Y
    LDY #6
    LDA MaskORA
    STA ($30),Y
    INY
    LDA byte_AD
    STA ($30),Y
    LDY #$11
    LDA byte_A1
    STA ($30),Y
    INY
    LDA byte_A6
    STA ($30),Y
    INY
    LDA byte_A7
    STA ($30),Y
    LDA byte_3E
    LDY #$15
    STA ($30),Y
    LDY #$1D
    STA ($30),Y
    RTS
; End of function sub_D7E2


; =============== S U B R O U T I N E =======================================


sub_D813:
    LDY #2
    AND #7
    STA byte_39
    LDA #0
    LSR byte_39
    ROR A
    LSR byte_39
    ROR A
    STA byte_38
    STA ($30),Y
    INY
    LDA byte_39
    ADC #$74
    STA byte_39
    STA ($30),Y
    LDY #$1D
    LDA ($38),Y
    LDY #$14
    PHA
    AND #$F0
    STA ($30),Y
    LDY #8
    PLA
    AND #$F
    STA ($30),Y
; End of function sub_D813


; =============== S U B R O U T I N E =======================================


sub_D840:
    LDY #$1E
    LDA ($38),Y
    LDY #$16
    STA ($30),Y
    LDY #$1F
    LDA ($38),Y
    LDY #$17
    STA ($30),Y
    CLC
    LDY #1
    LDA ($38),Y
    BPL locret_D86B
    AND #$80
    STA ($38),Y
    LDY #$16
    LDA ($30),Y
    ADC #$A0
    STA ($30),Y
    INY
    LDA ($30),Y
    ADC #0
    STA ($30),Y
    SEC

locret_D86B:
    RTS
; End of function sub_D840


; =============== S U B R O U T I N E =======================================


sub_D86C:
    STA byte_31
    LDA #0
    LSR byte_31
    ROR A
    LSR byte_31
    ROR A
    LSR byte_31
    ROR A
    ADC #$80
    STA byte_30
    LDA byte_31
    ADC #$67
    STA byte_31
    RTS
; End of function sub_D86C


; =============== S U B R O U T I N E =======================================


sub_D884:
    LDY #$15
    LDA ($30),Y
    STA byte_3E
    EOR #4
    ASL A
    ASL A
    ASL A
    TAX
    LDY #4
    CLC
    LDA $EBED,X
    ADC ($30),Y
    STA byte_AA
    INY
    LDA $EBEE,X
    ADC ($30),Y
    STA byte_AB
    LDY #6
    CLC
    LDA $EBEF,X
    ADC ($30),Y
    STA MaskORA
    INY
    LDA $EBF0,X
    ADC ($30),Y
    STA byte_AD
    JSR sub_D55D
    JMP sub_DD64
; End of function sub_D884


; =============== S U B R O U T I N E =======================================


sub_D8BA:
    JSR sub_D86C
    LDY #2
    LDA ($30),Y
    STA byte_38
    INY
    LDA ($30),Y
    STA byte_39
    RTS
; End of function sub_D8BA


; =============== S U B R O U T I N E =======================================


sub_D8C9:
    LDA #7
    JSR sub_D78D
    LDA #6
    JMP sub_D78D
; End of function sub_D8C9


; =============== S U B R O U T I N E =======================================


sub_D8D3:
    LDA PointerTilePack+181
    BPL loc_D8DD
    LDA #6
    JSR sub_D78D

loc_D8DD:
    LDA PointerTilePack+1C1
    BPL loc_D8E7
    LDA #7
    JSR sub_D78D

loc_D8E7:
    LDX #0
    STX ItemCount

loc_D8EB:
    JSR sub_D9F1
    BCS loc_D906
    TXA
    JSR sub_D8BA
    JSR sram_write_enable
    JSR sub_D840
    BCS loc_D8FE
    INC ItemCount

loc_D8FE:
    JSR sram_read_enable
    INX
    CPX #4
    BCC loc_D8EB

loc_D906:
    STX SaveNum
    LDA ItemCount
    BEQ loc_D90E
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_D90E:
    JSR sub_D8C9
    JSR sram_write_enable
    LDA #0
    STA PointerTilePack41
    STA PointerTilePack56
    STA PointerTilePack57
    LDA PointerTilePack43
    STA PointerTilePack54
    LDA PointerTilePack44
    STA PointerTilePack55
    LDA PointerTilePack10
    LSR PointerTilePack11
    ROR A
    ADC #0
    STA PointerTilePack10
    LDA PointerTilePack11
    ADC #0
    STA PointerTilePack11
    LDA #1
    STA ItemCount
    LDA #0
    STA byte_21
    STA byte_23
    LDX byte_47
    LDY $D96B,X
    LDX #3

loc_D950:
    LDA $D96F,Y
    STA $7404,X
    DEY
    DEX
    BPL loc_D950
    LDA PointerTilePack06
    AND #$F
    ORA #$20
    STA byte_20
    EOR #$60
    STA byte_22
    SEC
    JMP sram_read_enable
; End of function sub_D8D3

; ---------------------------------------------------------------------------
    .byte 3, 3, 3, 7
    .byte $5C, $DF, 0, $24, $8B, $DF, $40, $DB

; =============== S U B R O U T I N E =======================================


sub_D977:
    DEC SaveNum
    BMI locret_D997
    BEQ locret_D997

loc_D97D:
    LDA PointerTilePack08
    CMP #1
    BEQ loc_D98C
    JSR sub_D998
    BCS loc_D97D

loc_D989:
    JSR sub_D998

loc_D98C:
    LDA #0
    JSR sub_D8BA
    LDY #1
    LDA ($38),Y
    BMI loc_D989

locret_D997:
    RTS
; End of function sub_D977


; =============== S U B R O U T I N E =======================================


sub_D998:
    JSR sram_write_enable
    LDX #0
    STX ItemCount

loc_D99F:
    LDA $7408,X
    PHA
    LDA $7409,X
    STA $7408,X
    PLA
    STA $7409,X
    LDA #2
    JSR sub_D9DE
    LDA #3
    JSR sub_D9DE
    LDA #8

loc_D9B9:
    PHA
    JSR sub_D9DE
    PLA
    CLC
    ADC #1
    CMP #$11
    BCC loc_D9B9
    LDA #$16
    JSR sub_D9DE
    LDA #$17
    JSR sub_D9DE
    CLC
    LDA ItemCount
    ADC #$20
    STA ItemCount
    INX
    CPX SaveNum
    BCC loc_D99F
    JMP sram_read_enable
; End of function sub_D998


; =============== S U B R O U T I N E =======================================


sub_D9DE:
    CLC
    ADC ItemCount
    TAY
    LDA $6780,Y
    PHA
    LDA $67A0,Y
    STA $6780,Y
    PLA
    STA $67A0,Y
    RTS
; End of function sub_D9DE


; =============== S U B R O U T I N E =======================================


sub_D9F1:
    SEC
    LDA $7408,X
    BEQ locret_D9F9
    CMP #6

locret_D9F9:
    RTS
; End of function sub_D9F1


; =============== S U B R O U T I N E =======================================


sub_D9FA:
    LDX #0

loc_D9FC:
    LDA $7408,X
    BEQ loc_DA10
    JSR get_sram_pointer
    LDY #$2C

loc_DA06:
    LDA $73D8,Y
    STA (Pointer),Y
    INY
    CPY #$30
    BCC loc_DA06

loc_DA10:
    INX
    CPX #4
    BCC loc_D9FC
    RTS
; End of function sub_D9FA


; =============== S U B R O U T I N E =======================================


sub_DA16:
    JSR wait_nmi_processed
    JSR sub_FDC0
    LDX #0

loc_DA1E:
    JSR sub_D9F1
    BCS loc_DA3C
    TXA
    JSR sub_D8BA
    LDY #1
    LDA ($38),Y
    BMI loc_DA3C
    LDY #$10
    LDA ($30),Y
    TAY
    LDA #$80
    STA $306,Y
    LDA #$81
    STA $307,Y

loc_DA3C:
    INX
    CPX #4
    BCC loc_DA1E
    LDA #1
    STA NMIFlags
    JMP wait_nmi_processed
; End of function sub_DA16


; =============== S U B R O U T I N E =======================================


sub_DA48:
    LDA ItemCount
    STA pTileID
    LDA byte_49
    STA Pointer
    LDA byte_4A
    STA Pointer+1
    LDA byte_4B
    STA AddrForJmp
    JSR sub_F13D
    LDA pDist
    BEQ loc_DA61
    LDA #1

loc_DA61:
    CLC
    ADC Pointer
    STA byte_49
    LDA #0
    ADC Pointer+1
    STA byte_4A
    LDA #0
    ADC AddrForJmp
    STA byte_4B
    JSR sram_write_enable
    LDX #0

loc_DA77:
    JSR sub_D9F1
    BCS loc_DADD
    STA byte_28
    TXA
    LSR A
    ROR A
    ROR A
    ROR A
    STA byte_53
    TXA
    PHA
    JSR sub_D8BA
    LDY #1
    LDA ($38),Y
    BMI loc_DADB
    LDA byte_47
    BNE loc_DAD8
    LDY #$11
    CLC
    LDA byte_49
    ADC ($38),Y
    STA ($38),Y
    INY
    LDA byte_4A
    ADC ($38),Y
    STA ($38),Y
    INY
    LDA byte_4B
    ADC ($38),Y
    STA ($38),Y
    BCC loc_DAB9
    LDY #$11
    LDA #$FF
    STA ($38),Y
    INY
    STA ($38),Y
    INY
    STA ($38),Y

loc_DAB9:
    LDY #$10
    LDA ($38),Y
    JSR sub_DB40
    LDY #$11
    SEC
    LDA ($38),Y
    SBC pTileID
    INY
    LDA ($38),Y
    SBC pTileID+1
    INY
    LDA ($38),Y
    SBC byte_66
    BCC loc_DAD8
    JSR sub_DB6C
    BCC loc_DAB9

loc_DAD8:
    JSR sub_DC87

loc_DADB:
    PLA
    TAX

loc_DADD:
    INX
    CPX #4
    BCC loc_DA77
    JSR sub_C43F
    LDA byte_47
    BNE loc_DB30
    JSR sram_write_enable
    LDX #$12
    JSR sub_DC11
    LDX #$15
    JSR sub_DC11
    LDA byte_48
    BEQ loc_DB30
    STA byte_29
    JSR bank13_A000
    JSR byte_BBC3
    LDA #$FF
    STA byte_2A
    LDA byte_2B
    ORA #$1F

loc_DB0A:
    ASL byte_2A
    ASL A
    BCC loc_DB0A
    JSR sub_F1ED
    AND byte_2A
    BNE loc_DB30
    JSR byte_BB8C
    LDX #0

loc_DB1B:
    JSR sub_D9F1
    BCS loc_DB2B
    STA byte_28
    TXA
    PHA
    JSR byte_A979
    PLA
    TAX
    BCC loc_DB33

loc_DB2B:
    INX
    CPX #4
    BCC loc_DB1B

loc_DB30:
    JMP sram_read_enable
; ---------------------------------------------------------------------------

loc_DB33:
    JSR bank17_A000
    LDA #6
    STA byte_7F1
    LDA #$8C
    JMP byte_A3F8
; End of function sub_DA48


; =============== S U B R O U T I N E =======================================


sub_DB40:
    TAX
    INX
    STX pTileID
    INX
    STX Pointer
    LDA #0
    STA Pointer+1
    STA AddrForJmp
    JSR sub_F109
    JSR sub_F109
    JSR sub_DCDF
    LDY #0
    LDA ($68),Y
    STA pTileID
    JSR sub_F109
    LDA Pointer+1
    STA pTileID
    LDA AddrForJmp
    STA pTileID+1
    LDA AddrForJmp+1
    STA byte_66
    RTS
; End of function sub_DB40


; =============== S U B R O U T I N E =======================================


sub_DB6C:
    LDY #$10
    LDA ($38),Y
    CMP #$63
    BCC loc_DB75
    RTS
; ---------------------------------------------------------------------------

loc_DB75:
    ADC #1
    STA ($38),Y
    JSR sub_C43F
    JSR sram_write_enable
    LDA #$FF
    JSR sub_FD28
    LDA #$1F
    JSR sub_FD28
    LDA #$82
    JSR byte_A3F8
    JSR sub_DCDF
    LDY #3

loc_DB93:
    JSR sub_F1ED
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    CLC
    ADC ($68),Y
    LSR A
    STA $55,Y
    INY
    CPY #8
    BCC loc_DB93
    LDY #$B

loc_DBAA:
    CLC
    LDA ($38),Y
    ADC $4D,Y
    BCC loc_DBBC
    SBC $4D,Y
    EOR #$FF
    STA $4D,Y
    LDA #$FF

loc_DBBC:
    STA ($38),Y
    LDA $4D,Y
    BEQ loc_DBCD
    TYA
    PHA
    CLC
    ADC #$7B
    JSR byte_A3F8
    PLA
    TAY

loc_DBCD:
    INY
    CPY #$10
    BCC loc_DBAA
    LDY #7
    LDA byte_58
    JSR sub_DC64
    LDY #9
    LDA byte_59
    JSR sub_DC64
    LDY #$E
    LDA ($38),Y
    STA Pointer
    CLC
    ADC #$14
    BCC loc_DBED
    LDA #$FF

loc_DBED:
    LDY #3
    JSR sub_DC3F
    LDA #$84
    JSR sub_DC38
    LDA byte_28
    CMP #3
    BCS loc_DC0F
    LDY #$F
    LDA ($38),Y
    STA Pointer
    LSR A
    CLC
    LDY #5
    JSR sub_DC3F
    LDA #$85
    JSR sub_DC38

loc_DC0F:
    CLC
    RTS
; End of function sub_DB6C


; =============== S U B R O U T I N E =======================================


sub_DC11:
    CLC
    LDA byte_4C
    ADC $7400,X
    STA $7400,X
    LDA byte_4D
    ADC $7401,X
    STA $7401,X
    LDA #0
    ADC $7402,X
    STA $7402,X
    BCC locret_DC37
    LDA #$FF
    STA $7400,X
    STA $7401,X
    STA $7402,X

locret_DC37:
    RTS
; End of function sub_DC11


; =============== S U B R O U T I N E =======================================


sub_DC38:
    LDX byte_5D
    BEQ locret_DC70
    JMP byte_A3F8
; End of function sub_DC38


; =============== S U B R O U T I N E =======================================


sub_DC3F:
    CLC
    ADC Pointer
    STA Pointer
    LDA #0
    ROL A
    STA Pointer+1
    SEC
    LDA Pointer
    SBC ($38),Y
    TAX
    INY
    LDA Pointer+1
    SBC ($38),Y
    BEQ loc_DC5C
    LDX #8
    BCS loc_DC5C
    LDX #1

loc_DC5C:
    DEY
    TXA
    ASL A
    JSR sub_DC71
    STA byte_5D
; End of function sub_DC3F


; =============== S U B R O U T I N E =======================================


sub_DC64:
    CLC
    ADC ($38),Y
    STA ($38),Y
    INY
    LDA #0
    ADC ($38),Y
    STA ($38),Y

locret_DC70:
    RTS
; End of function sub_DC64


; =============== S U B R O U T I N E =======================================


sub_DC71:
    CMP #$10
    BCC loc_DC77
    LDA #$10

loc_DC77:
    TAX
    JSR sub_F1ED
    LSR A
    LSR A
    LSR A
    LSR A
    JSR multiply
    LSR A
    LSR A
    LSR A
    LSR A
    RTS
; End of function sub_DC71


; =============== S U B R O U T I N E =======================================


sub_DC87:
    LDA byte_21
    BNE locret_DCCC
    JSR sub_DCDF
    LDY #2
    LDA ($68),Y
    BEQ locret_DCCC
    PHA
    LDX #$C0

loc_DC97:
    STX byte_29
    JSR sub_DCE6
    PLA
    PHA
    TAY
    LDA ($68),Y
    LDY #$10
    CMP ($38),Y
    BCS loc_DCC6
    JSR sub_DCCD
    AND ($38),Y
    BNE loc_DCC6
    JSR sub_F1ED
    AND #$C0
    BNE loc_DCC6
    LDA ($38),Y
    ORA $EC5D,X
    STA ($38),Y
    LDA #9
    STA byte_7F1
    LDA #$83
    JSR byte_A3F8

loc_DCC6:
    LDX byte_29
    INX
    BNE loc_DC97
    PLA

locret_DCCC:
    RTS
; End of function sub_DC87


; =============== S U B R O U T I N E =======================================


sub_DCCD:
    LDA byte_29
    CLC
    ADC #$C0
    ROR A
    LSR A
    LSR A
    TAY
    LDA byte_29
    AND #7
    TAX
    LDA $EC5D,X
    RTS
; End of function sub_DCCD


; =============== S U B R O U T I N E =======================================


sub_DCDF:
    CLC
    LDA byte_28
    ADC #$B8
    BCC loc_DCE8
; End of function sub_DCDF


; =============== S U B R O U T I N E =======================================


sub_DCE6:
    LDA byte_29

loc_DCE8:
    ASL A
    ROL byte_69
    ASL A
    ROL byte_69
    ASL A
    ROL byte_69
    CLC
    ADC #0
    STA pDist
    LDA byte_69
    AND #7
    ADC #$98
    STA byte_69
    JMP sub_DE8B
; End of function sub_DCE6


; =============== S U B R O U T I N E =======================================


sub_DD01:
    JSR sub_DD57
    JSR sram_write_enable

loc_DD07:
    LDY #0
    LDA ($30),Y
    ASL A
    BEQ loc_DD2B
    JSR sub_E1BE
    BCS loc_DD1D
    LDY #0
    LDA ($30),Y
    ORA #$80
    STA ($30),Y
    BMI loc_DD2B

loc_DD1D:
    LDY #0
    LDA ($30),Y
    AND #$3F
    STA ($30),Y
    JSR sub_E0F9
    JSR sub_DEF9

loc_DD2B:
    JSR sub_DD64
    INC SaveNum
    BNE loc_DD07
    LDA byte_20
    BNE loc_DD54
    LDA byte_18
    AND #$C0
    ORA NTAddrC
    LDX byte_19
    STA PointerTilePack04
    STX PointerTilePack05
    LDA byte_1A
    AND #$C0
    ORA byte_6795
    LDX byte_1B
    STA PointerTilePack06
    STX PointerTilePack07

loc_DD54:
    JMP sram_read_enable
; End of function sub_DD01


; =============== S U B R O U T I N E =======================================


sub_DD57:
    LDA #$80
    LDX #$67
    STA byte_30
    STX byte_31
    LDX #$FC
    STX SaveNum
    RTS
; End of function sub_DD57


; =============== S U B R O U T I N E =======================================


sub_DD64:
    CLC
    LDA byte_30
    ADC #$20
    STA byte_30
    LDA byte_31
    ADC #0
    STA byte_31
    RTS
; End of function sub_DD64


; =============== S U B R O U T I N E =======================================


sub_DD72:
    JSR sub_DE29
    JSR sram_write_enable

loc_DD78:
    JSR sub_DE4B
    JSR sub_DD88
    JSR sub_DE5C
    DEC SaveNum
    BNE loc_DD78
    JMP sram_read_enable
; End of function sub_DD72


; =============== S U B R O U T I N E =======================================


sub_DD88:
    LDY #1
    LDA byte_15
    STA ($30),Y
    LDA ItemCount
    BNE loc_DD97

loc_DD92:
    LDY #0
    STA ($30),Y
    RTS
; ---------------------------------------------------------------------------

loc_DD97:
    LDY #0
    LDA ($32),Y
    AND #$3F
    BEQ loc_DD92
    JSR sub_DE13
    LDY #2
    LDA ($32),Y
    AND #$3F
    LDY #$15
    STA ($30),Y
    LDY #4
    LDA ($32),Y
    LDY #$16
    STA ($30),Y
    LDY #5
    LDA ($32),Y
    LDY #$17
    STA ($30),Y
    LDY #0
    LDA ($32),Y
    AND #$C0
    LDY #4
    STA ($30),Y
    STA byte_AA
    LDY #1
    LDA ($32),Y
    LDY #5
    STA ($30),Y
    STA byte_AB
    LDY #2
    LDA ($32),Y
    AND #$C0
    LDY #6
    STA ($30),Y
    STA MaskORA
    LDY #3
    LDA ($32),Y
    LDY #7
    STA ($30),Y
    STA byte_AD
    LDY #2
    LDA byte_32
    STA ($30),Y
    INY
    LDA byte_33
    STA ($30),Y
    JSR sub_D55D
    LDY #$11
    LDA byte_A1
    STA ($30),Y
    INY
    LDA byte_A6
    STA ($30),Y
    INY
    LDA byte_A7
    STA ($30),Y
    LDY #$18
    LDX #8
    LDA #0

loc_DE0C:
    STA ($30),Y
    INY
    DEX
    BNE loc_DE0C
    RTS
; End of function sub_DD88


; =============== S U B R O U T I N E =======================================


sub_DE13:
    LDY #0
    STA ($30),Y
    ASL A
    ASL A
    TAX
    LDY #8
    LDA $E107,X
    STA ($30),Y
    LDY #$14
    LDA $E108,X
    STA ($30),Y
    RTS
; End of function sub_DE13


; =============== S U B R O U T I N E =======================================


sub_DE29:
    LDA byte_15
    JSR sub_DE6C
    ASL A
    TAX
    LDA BANK_SELECT,X
    STA byte_38
    LDA BANK_DATA,X
    STA byte_39
    LDA #2
    STA ItemCount
; End of function sub_DE29


; =============== S U B R O U T I N E =======================================


sub_DE3E:
    LDA #0
    LDX #$68
    STA byte_30
    STX byte_31
    LDX #$28
    STX SaveNum
    RTS
; End of function sub_DE3E


; =============== S U B R O U T I N E =======================================


sub_DE4B:
    LDY #1
    LDA ($38),Y
    BEQ loc_DE59
    STA byte_33
    DEY
    LDA ($38),Y
    STA byte_32
    RTS
; ---------------------------------------------------------------------------

loc_DE59:
    STA ItemCount
    RTS
; End of function sub_DE4B


; =============== S U B R O U T I N E =======================================


sub_DE5C:
    CLC
    LDA byte_38
    ADC ItemCount
    STA byte_38
    LDA byte_39
    ADC #0
    STA byte_39
    JMP sub_DD64
; End of function sub_DE5C


; =============== S U B R O U T I N E =======================================


sub_DE6C:
    CMP #$2B
    BCC loc_DE76
    LDX #$12
    SBC #$2B
    BCS loc_DE82

loc_DE76:
    CMP #$1A
    BCC loc_DE80
    LDX #$11
    SBC #$1A
    BCS loc_DE82

loc_DE80:
    LDX #$10

loc_DE82:
    PHA
    TXA
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    PLA
    RTS
; End of function sub_DE6C


; =============== S U B R O U T I N E =======================================


sub_DE8B:
    LDX #6
    LDA #0
    JMP mmc3_bank_set   ; Set memory bank
; End of function sub_DE8B      ; A - bank number
    ; X - mode

; =============== S U B R O U T I N E =======================================


sub_DE92:
    LDX #6
    LDA #0
    JMP mmc3_bank_set   ; Set memory bank
; End of function sub_DE92      ; A - bank number
    ; X - mode

; =============== S U B R O U T I N E =======================================


sub_DE99:
    JSR sub_DE29
    JSR sram_write_enable

loc_DE9F:
    JSR sub_DE4B
    LDY #1
    LDA ($30),Y
    CMP byte_15
    BEQ loc_DEB9
    LDY #0
    LDA ($30),Y
    ASL A
    BEQ loc_DEB6
    JSR sub_E1BE
    BCS loc_DECF

loc_DEB6:
    JSR sub_DD88

loc_DEB9:
    LDY #0
    LDA ($30),Y
    ASL A
    BEQ loc_DED7
    JSR sub_E1BE
    BCS loc_DECF
    LDY #0
    LDA ($30),Y
    ORA #$80
    STA ($30),Y
    BMI loc_DED7

loc_DECF:
    LDY #0
    LDA ($30),Y
    AND #$3F
    STA ($30),Y

loc_DED7:
    JSR sub_DE5C
    DEC SaveNum
    BNE loc_DE9F
    JSR sub_DE3E

loc_DEE1:
    LDY #0
    LDA ($30),Y
    BEQ loc_DEEF
    BMI loc_DEEF
    JSR sub_E0F9
    JSR sub_DEF9

loc_DEEF:
    JSR sub_DD64
    DEC SaveNum
    BNE loc_DEE1
    JMP sram_read_enable
; End of function sub_DE99


; =============== S U B R O U T I N E =======================================


sub_DEF9:
    LDY #$11
    LDA ($30),Y
    STA byte_69
    INY
    LDA ($30),Y
    STA byte_6A
    INY
    LDA ($30),Y
    STA byte_6B
    LDY #0
    LDA ($30),Y
    BPL loc_DF12
    JMP loc_DFAF
; ---------------------------------------------------------------------------

loc_DF12:
    CLC
    LDA byte_18
    ADC #$60
    STA Pointer
    LDA byte_19
    ADC #0
    STA Pointer+1
    SEC
    LDY #4
    LDA ($30),Y
    SBC Pointer
    STA Pointer
    INY
    LDA ($30),Y
    SBC Pointer+1
    STA Pointer+1
    CLC
    LDA byte_1A
    ADC #$A4
    STA pTileID
    LDA byte_1B
    ADC #0
    STA pTileID+1
    SEC
    LDY #6
    LDA ($30),Y
    SBC pTileID
    STA pTileID
    INY
    LDA ($30),Y
    SBC pTileID+1
    STA pTileID+1
    LDY #8
    LDA Pointer+1
    AND #4
    ASL A
    ASL A
    ASL A
    ASL A
    ASL A
    ORA ($30),Y
    STA ($30),Y
    INY
    LDA pTileID+1
    AND #4
    ASL A
    ASL A
    ASL A
    ASL A
    ASL A
    ORA ($30),Y
    STA ($30),Y
    INY
    LDA Pointer
    LSR Pointer+1
    ROR A
    LSR Pointer+1
    ROR A
    STA ($30),Y
    INY
    LDA pTileID
    LSR pTileID+1
    ROR A
    LSR pTileID+1
    ROR A
    STA ($30),Y
    LDA byte_3E
    BMI loc_DFB8
    LDY #4
    LDA byte_3A
    STA ($30),Y
    INY
    LDA byte_3B
    STA ($30),Y
    LDY #6
    LDA byte_3C
    STA ($30),Y
    INY
    LDA byte_3D
    STA ($30),Y
    LDY #$11
    LDA byte_A1
    STA ($30),Y
    INY
    LDA byte_A6
    STA ($30),Y
    INY
    LDA byte_A7
    STA ($30),Y
    LDY byte_A1
    LDA SaveNum
    STA ($A6),Y

loc_DFAF:
    LDY byte_69
    LDA SaveNum
    EOR ($6A),Y
    BEQ loc_DFBC
    RTS
; ---------------------------------------------------------------------------

loc_DFB8:
    LDY byte_69
    LDA SaveNum

loc_DFBC:
    STA ($6A),Y
    RTS
; End of function sub_DEF9


; =============== S U B R O U T I N E =======================================


sub_DFBF:
    LDY #$11
    LDA ($30),Y
    STA byte_A1
    INY
    LDA ($30),Y
    STA byte_A6
    INY
    LDA ($30),Y
    STA byte_A7
    LDA #0
    LDY byte_A1
    STA ($A6),Y
    LDY #0
    STA ($30),Y
    RTS
; End of function sub_DFBF


; =============== S U B R O U T I N E =======================================


sub_DFDA:
    LDA PosX1F
    LSR A
    LDA #$80
    LDX #$67
    LDY #$2C
    BCC loc_DFEC
    LDA #0
    LDX #$68
    LDY #$28

loc_DFEC:
    STA byte_30
    STX byte_31
    STY SaveNum
    LDA #$18
    STA byte_E3
    LDA #0
    STA byte_300
    LDX #8
    JSR sram_write_enable
; End of function sub_DFDA


; for bank 1F

; =============== S U B R O U T I N E =======================================


sub_E000:
    LDY #0
    LDA ($30),Y
    BEQ loc_E04F
    BMI loc_E04F
    LDY #8
    LDA ($30),Y
    AND #$3F
    BEQ loc_E04F
    LDY #$14
    LDA ($30),Y
    AND #$10
    BEQ loc_E01B
    TXA
    LDX #0

loc_E01B:
    STA ItemCount
    LDY #$10
    TXA
    STA ($30),Y
    LDY #8

loc_E024:
    LDA ($30),Y
    STA $300,X
    INX
    INY
    CPY #$E
    BCC loc_E024
    CLC
    LDA $2FA,X
    AND #$40 ; '@'
    BEQ loc_E039
    LDA #4

loc_E039:
    ADC ($30),Y
    STA $300,X
    INX
    INY
    LDA #0
    ADC ($30),Y
    STA $300,X
    INX
    BEQ loc_E062
    LDA ItemCount
    BEQ loc_E04F
    TAX

loc_E04F:
    JSR sub_DD64
    DEC SaveNum
    BNE sub_E000

loc_E056:
    LDA #0
    STA $300,X
    CLC
    TXA
    ADC #8
    TAX
    BCC loc_E056

loc_E062:
    JMP SRAMEnableRead
; End of function sub_E000


; =============== S U B R O U T I N E =======================================


sub_E065:
    LDX #0

loc_E067:
    LDA $300,X
    AND #$40 ; '@'
    BEQ loc_E07F
    SEC
    LDA $306,X
    SBC #4
    STA $306,X
    LDA $307,X
    SBC #0
    STA $307,X

loc_E07F:
    CLC
    TXA
    ADC #8
    TAX
    BCC loc_E067
    RTS
; End of function sub_E065

; ---------------------------------------------------------------------------
    JSR sub_DD57
    LDX #4
    STX SaveNum
    LDA #0
    STA AddrForJmp
    LDX #8

loc_E094:
    LDY #0
    LDA ($30),Y
    BEQ loc_E0E3
    BMI loc_E0E3
    LDY AddrForJmp
    LDA (Pointer),Y
    STA $302,X
    INY
    LDA (Pointer),Y
    STA $303,X
    INY
    LDA (Pointer),Y
    STA AddrForJmp+1
    INY
    CLC
    LDA (Pointer),Y
    LDY #$16
    ADC ($30),Y
    STA $306,X
    INY
    LDA #0
    ADC ($30),Y
    STA $307,X
    LDY #8
    LDA ($30),Y
    AND #$3F
    ASL A
    ASL AddrForJmp+1
    ROR A
    STA $300,X
    LDA #$70
    ASL AddrForJmp+1
    ROR A
    STA $301,X
    LDA #0
    STA $304,X
    STA $305,X
    CLC
    TXA
    ADC #8
    TAX

loc_E0E3:
    CLC
    LDA #4
    ADC AddrForJmp
    STA AddrForJmp
    JSR sub_DD64
    DEC SaveNum
    BNE loc_E094
    RTS

; =============== S U B R O U T I N E =======================================


sub_E0F2:
    AND #$3F
    TAX
    LDA $7400,X
    RTS
; End of function sub_E0F2


; =============== S U B R O U T I N E =======================================


sub_E0F9:
    ASL A
    ASL A
    TAX
    LDA $E106,X
    PHA
    LDA $E105,X
    PHA
    RTS
; End of function sub_E0F9

; ---------------------------------------------------------------------------
    LDY $E1,X
    BRK
; ---------------------------------------------------------------------------
    NOP
    BRK
; ---------------------------------------------------------------------------
    DEY
    NOP
    BRK
; ---------------------------------------------------------------------------
    DEY
    DEC OffsetNMI_ID
    DEY
    RRA $E6,X
    BRK
; ---------------------------------------------------------------------------
    PHP
    LDY $E1,X
    BRK
; ---------------------------------------------------------------------------
    LDY $E1,X
    BRK
; ---------------------------------------------------------------------------
    ROL $4E8,X
    LDX byte_6B
    SBC #4
    RTS
; ---------------------------------------------------------------------------
    .byte $39, $EB, 9, $20, $91, $EB, 9, $20, $DD, $E8, 9
    .byte $20, 4, $E9, 4, $60, $37, $EA, 9, $20, $C4, $EA
    .byte 9, $20, $C9, $EB, 4, $20, $F4, $E7, 4, $E6, $CC
    .byte $E7, 4, $E6, $BD, $E7, 4, $E6, $13, $E8, 4, $E6
    .byte 7, $E8, 4, $E6, $C6, $E7, 4, $E6, $B7, $E7, 4, $E6
    .byte $D, $E8, 4, $E6, $1F, $E7, 0, $C4, $1F, $E7, 4, $C6
    .byte $1F, $E7, 9, $46, $1F, $E7, 0, $44, $19, $E7, 0
    .byte $C4, $19, $E7, 4, $C6, $19, $E7, 9, $46, $19, $E7
    .byte 0, $44, $55, $E7, 4, $88, $F0, $E6, 4, $C6, $BD
    .byte $E7, 2, $E6, $1F, $E7, $A, $56, $1F, $E7, 4, $56
    .byte $1F, $E7, 8, $C6, $87, $E7, 4, $A6, $D8, $E6, 4
    .byte $C6, $D1, $E8, 9, $46, $60, $E6, 0, $45, $68, $E6
    .byte 0, $45, $F4, $E8, $A, $C6, $E7, $E8, 9, $46, $19
    .byte $E7, 4, $46, $60

; =============== S U B R O U T I N E =======================================


sub_E1BE:
    LDY #4
    LDA ($30),Y
    STA byte_3A
    INY
    LDA ($30),Y
    STA byte_3B
    LDY #6
    LDA ($30),Y
    STA byte_3C
    INY
    LDA ($30),Y
    STA byte_3D

loc_E1D4:
    SEC
    LDA byte_3C
    SBC byte_1A
    STA pTileID
    LDA byte_3D
    SBC byte_1B
    STA pTileID+1
    SEC
    LDA #$C0
    SBC pTileID
    LDA #3
    SBC pTileID+1
    BCC locret_E20E
    LDA byte_18
    SBC #$40
    STA Pointer
    LDA byte_19
    SBC #0
    STA Pointer+1
    SEC
    LDA byte_3A
    SBC Pointer
    STA Pointer
    LDA byte_3B
    SBC Pointer+1
    STA Pointer+1
    SEC
    LDA #$80
    SBC Pointer
    LDA #4
    SBC Pointer+1

locret_E20E:
    RTS
; End of function sub_E1BE

; ---------------------------------------------------------------------------
    JSR sub_DD57
    LDY #$15
    LDA ($30),Y
    ASL A
    ASL A
    ASL A
    TAX
    LDA $EBF1,X
    ASL A
    TAX
    STA byte_3F
    LDY #$11
    LDA $EBF4,X
    ASL A
    ASL A
    ASL A
    ASL A
    CLC
    ADC ($30),Y
    STA byte_A1
    INY
    LDA ($30),Y
    STA byte_A6
    INY
    LDA ($30),Y
    STA byte_A7
    CLC
    LDA byte_A1
    ADC $EBF3,X
    TAX
    EOR byte_A1
    AND #$F0
    BEQ loc_E258
    LDA byte_A1
    AND #$F0
    STA byte_A1
    TXA
    AND #$F
    ORA byte_A1
    TAX
    LDA byte_A7
    EOR #1
    STA byte_A7

loc_E258:
    STX byte_A1
    JSR sub_E275
; START OF FUNCTION CHUNK FOR sub_E266

loc_E25D:
    LDX byte_32
    LDY byte_33
    STX byte_30
    STY byte_31
    RTS
; END OF FUNCTION CHUNK FOR sub_E266

; =============== S U B R O U T I N E =======================================


sub_E266:
    LDA byte_21
    AND #$7F
    JSR loc_E286
    ASL byte_21
    LDX #0
    STX byte_21
    BEQ loc_E25D
; End of function sub_E266


; =============== S U B R O U T I N E =======================================


sub_E275:
    LDY byte_A1
    LDA ($A6),Y
    BEQ locret_E2A1
    BMI loc_E282
    SEC
    LDA #$28 ; '('
    SBC ($A6),Y

loc_E282:
    CLC
    ADC #4
    TAX

loc_E286:
    STA byte_33
    LDA #0
    LSR byte_33
    ROR A
    LSR byte_33
    ROR A
    LSR byte_33
    ROR A
    ADC #$80
    STA byte_32
    LDA byte_33
    ADC #$67 ; 'g'
    STA byte_33
    LDY #$14
    LDA ($32),Y

locret_E2A1:
    RTS
; End of function sub_E275


; =============== S U B R O U T I N E =======================================


sub_E2A2:
    LDY #$14
    LDA ($30),Y
    AND #$20
    BEQ locret_E2A1
    JSR SRAMEnableWrite
    CLC
    LDA byte_3F
    ADC #$20
    AND #$38
    TAX
    LDY #$15
    LSR A
    LSR A
    LSR A
    STA ($30),Y
    JSR SRAMEnableRead
    LDA $EBF1,X
    CLC
    LDY #$16
    ADC ($30),Y
    STA Pointer
    LDA #0
    INY
    ADC ($30),Y
    STA Pointer+1
    LDA #$15
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDY #$10
    LDA ($30),Y
    TAY
    LDA $300,Y
    AND #$3F
    STA byte_3F
    BEQ locret_E2A1
    LDA Pointer
    STA $306,Y
    LDA Pointer+1
    STA $307,Y
    LDA $302,Y
    STA pDist
    LDA $303,Y
    STA byte_69
    LDA $301,Y
    ASL A
    ASL A
    TAX
    LDY #0
    LDA (Pointer),Y
    STA pTileID
    INY
    LDA (Pointer),Y
    STA pTileID+1
    INY
    LDA (Pointer),Y
    STA byte_6A
    INY
    LDA (Pointer),Y
    STA byte_6B
    SEC

loc_E315:
    BIT FlagClearOAM300
    BVS loc_E315
    ROR FlagClearOAM300
    LDY #0

loc_E31D:
    LDA $200,X
    CMP #$F0
    BEQ loc_E365
    CLC
    LDA ($64),Y
    ADC pDist
    STA $203,X
    INY
    CLC
    LDA ($64),Y
    ADC byte_69
    STA $200,X
    INY
    LDA ($64),Y
    STA Pointer
    LDA byte_6B
    LSR Pointer
    BCC loc_E342
    LSR A
    LSR A

loc_E342:
    LSR Pointer
    BCC loc_E34A
    LSR A
    LSR A
    LSR A
    LSR A

loc_E34A:
    AND #3
    ASL Pointer
    ASL Pointer
    ORA Pointer
    STA $202,X
    INY
    CLC
    AND #$10
    BEQ loc_E35D
    LDA byte_6A

loc_E35D:
    ADC ($64),Y
    STA $201,X
    INY
    BNE loc_E369

loc_E365:
    INY
    INY
    INY
    INY

loc_E369:
    INX
    INX
    INX
    INX
    BEQ loc_E373
    DEC byte_3F
    BNE loc_E31D

loc_E373:
    ASL FlagClearOAM300
    RTS
; End of function sub_E2A2


; =============== S U B R O U T I N E =======================================


sub_E376:
    LDA byte_AD
    LSR A
    LSR A
    LSR A
    LSR A
    AND #$E
    ORA #1
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA byte_AD
    LSR A
    LSR A
    AND #7
    STA byte_69
    LDA byte_AB
    AND #$FC
    CLC
    STA pDist
    LDA byte_69
    ADC #$98
    STA byte_69
    LDY #1
    LDA ($68),Y
    AND #$3F
    LDY #1
    CMP ($30),Y
    BNE loc_E3AD
    LDA byte_15
    JSR sub_DE6C
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_E3AD:
    LDA byte_15
    JSR sub_DE6C
    SEC
    RTS
; End of function sub_E376


; =============== S U B R O U T I N E =======================================

    RLA byte_E4
    RLA $DDE4,Y
    ISB ($B1,X)
    CPX byte_9D
    CPX Gamepad1Buttons
    CPX byte_2
    CPX pTileID+1
    CPX CHRBankF
    CPX byte_20
    ASL NMIFlags
    TAX
    AND #$30 ; '0'
    BEQ loc_E3EF
    AND #$20 ; ' '
    BEQ loc_E400
    TXA
    AND #$1C
    BNE loc_E400

loc_E3EF:
    LDX #$FF
    LDY #0
    JSR sub_E510
    TAX
    AND #$20 ; ' '
    BEQ loc_E425
    TXA
    AND #3
    BEQ loc_E425

loc_E400:
    JMP loc_E490
; ---------------------------------------------------------------------------
    JSR sub_E506
    TAX
    AND #$30
    BEQ loc_E414
    AND #$20
    BEQ loc_E400
    TXA
    AND #$13
    BNE loc_E400

loc_E414:
    LDX #1
    LDY #0
    JSR sub_E510
    TAX
    AND #$20
    BEQ loc_E425
    TXA
    AND #$C
    BNE loc_E400

loc_E425:
    JMP loc_E497
; ---------------------------------------------------------------------------
    JSR sub_E506
    AND #$16
    BNE loc_E490
    LDX #0
    LDY #$10
    JSR sub_E510
    AND #9
    BNE loc_E490
    BEQ loc_E497
    JSR sub_E506
    AND #$14
    BNE loc_E490
    LDX #0
    LDY #$10
    JSR sub_E510
    AND #8
    BNE loc_E490
    LDX #$FF
    LDY #0
    JSR sub_E510
    AND #2
    BNE loc_E490
    LDX #$FF
    LDY #$10
    JSR sub_E510
    AND #1
    BNE loc_E490
    BEQ loc_E497
    JSR sub_E506
    AND #$12
    BNE loc_E490
    LDX #0
    LDY #$10
    JSR sub_E510
    AND #1
    BNE loc_E490
    LDX #1
    LDY #0
    JSR sub_E510
    AND #4
    BNE loc_E490
    LDX #1
    LDY #$10
    JSR sub_E510
    AND #8
    BNE loc_E490
    BEQ loc_E497

loc_E490:
    LDA byte_15
    JSR sub_DE6C
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_E497:
    LDA byte_15
    JSR sub_DE6C
    CLC
    RTS
; ---------------------------------------------------------------------------
    JSR sub_E506
    AND #$19
    BNE loc_E490
    LDX #0
    LDY #$F0
    JSR sub_E510
    AND #6
    BNE loc_E490
    BEQ loc_E497
    JSR sub_E506
    AND #$18
    BNE loc_E490
    LDX #0
    LDY #$F0
    JSR sub_E510
    AND #4
    BNE loc_E490
    LDX #$FF
    LDY #0
    JSR sub_E510
    AND #1
    BNE loc_E490
    LDX #$FF
    LDY #$F0
    JSR sub_E510
    AND #2
    BNE loc_E490
    BEQ loc_E497
    JSR sub_E506
    AND #$11
    BNE loc_E490
    LDX #0
    LDY #$F0
    JSR sub_E510
    AND #2
    BNE loc_E490
    LDX #1
    LDY #0
    JSR sub_E510
    AND #8
    BNE loc_E490
    LDX #1
    LDY #$F0
    JSR sub_E510
    AND #4
    BNE loc_E490
    BEQ loc_E497

; =============== S U B R O U T I N E =======================================


sub_E506:
    LDX #0
    LDY #0
    JSR sub_E510
    STA byte_3F
    RTS
; End of function sub_E506

; ---------------------------------------------------------------------------
sub_E510:
    CLC
    TYA
    ADC OffScreen
    STA Screen+1
    CLC
    TXA
    ADC Screen+1
    TAY
    EOR Screen+1
    AND #$F0
    BEQ loc_E52F
    LDA Screen+1
    AND #$F0
    STA Screen+1
    TYA
    AND #$F
    ORA Screen+1
    TAY
    LDA #1

loc_E52F:
    EOR AttributeScr1+1
    CLC
    ADC #$FC
    STA Screen+1
    LDA #0
    STA AttributeScr0
    LDA (Screen),Y
    BMI loc_E541
    LDA BankNum0
; ---------------------------------------------------------------------------
    .byte $2C
; ---------------------------------------------------------------------------

loc_E541:
    LDA BankNum1
    LSR A
    ROR AttributeScr0
    ADC #$80
    STA AttributeScr0+1
    LDA (Screen),Y
    AND #$7F
    TAY
    LDA (AttributeScr0),Y
    RTS
; End of function sub_E510
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_E788

loc_E552:
    JSR sub_E607
    LDY #$C
    LDA $EBF3,X
    ASL A
    STA ($30),Y
    INY
    LDA $EBF4,X
    ASL A
    STA ($30),Y
    JMP loc_E577
; END OF FUNCTION CHUNK FOR sub_E788

; =============== S U B R O U T I N E =======================================


sub_E567:
    JSR sub_E607
    LDY #$C
    LDA $EBF3,X
    STA ($30),Y
    INY
    LDA $EBF4,X
    STA ($30),Y

loc_E577:
    LDY #8
    LDA ($30),Y
    AND #$3F
    ORA #$40
    STA Pointer
    LDA byte_3E
    LSR A
    AND #$40
    EOR Pointer
    STA ($30),Y
    LDY #9
    LDA #$38
    STA ($30),Y
    LDY #$15
    LDA ($30),Y
    ASL A
    ASL A
    ASL A
    TAX
    LDA $EBF1,X

loc_E59B:
    CLC
    LDY #$16
    ADC ($30),Y
    LDY #$E
    STA ($30),Y
    LDA #0
    LDY #$17
    ADC ($30),Y
    LDY #$F
    STA ($30),Y
    RTS
; End of function sub_E567


; =============== S U B R O U T I N E =======================================


sub_E5AF:
    JSR sub_E5EF
    ASL byte_3A
    ROL byte_3B
    ASL byte_3C
    ROL byte_3D
    JMP loc_E5C0
; End of function sub_E5AF


; =============== S U B R O U T I N E =======================================


sub_E5BD:
    JSR sub_E5EF

loc_E5C0:
    CLC
    LDY #4
    LDA ($30),Y
    ADC byte_3A
    STA byte_3A
    AND #$C0
    STA byte_AA
    INY
    LDA ($30),Y
    ADC byte_3B
    STA byte_3B
    STA byte_AB
    CLC
    LDY #6
    LDA ($30),Y
    ADC byte_3C
    STA byte_3C
    AND #$C0
    STA MaskORA
    INY
    LDA ($30),Y
    ADC byte_3D
    STA byte_3D
    STA byte_AD

loc_E5EC:
      JMP sub_D55D
; End of function sub_E5BD


; =============== S U B R O U T I N E =======================================


sub_E5EF:
    JSR sub_E607
    LDA $EBED,X
    STA byte_3A
    LDA $EBEE,X
    STA byte_3B
    LDA $EBEF,X
    STA byte_3C
    LDA $EBF0,X
    STA byte_3D
    RTS
; End of function sub_E5EF


; =============== S U B R O U T I N E =======================================


sub_E607:
    LDA byte_3E
    ASL A
    ASL A
    ASL A
    TAX
    RTS
; End of function sub_E607


; =============== S U B R O U T I N E =======================================


sub_E60E:
    JSR sub_E655
    LDY #$14
    LDA ($30),Y
    AND #$F
    TAY
    LDA ($32),Y
    INY
    CMP #5
    BEQ loc_E625
    CMP #6
    BEQ loc_E62F
    BNE loc_E62D

loc_E625:
    JSR sub_E646
    AND $EC5D,X
    BNE loc_E637

loc_E62D:
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_E62F:
    JSR sub_E646
    AND $EC5D,X
    BNE loc_E62D

loc_E637:
    LDY #0
    LDA ($30),Y
    ORA #$80
    STA ($30),Y
    SEC
    RTS
; End of function sub_E60E


; =============== S U B R O U T I N E =======================================


sub_E641:
    JSR sub_E655
    LDY #4
; End of function sub_E641


; =============== S U B R O U T I N E =======================================


sub_E646:
    LDA ($32),Y
    AND #7
    TAX
    LDA ($32),Y
    LSR A
    LSR A
    LSR A
    TAY
    LDA $7600,Y
    RTS
; End of function sub_E646


; =============== S U B R O U T I N E =======================================


sub_E655:
    LDY #2
    LDA ($30),Y
    STA byte_32
    INY
    LDA ($30),Y
    STA byte_33
    RTS
; End of function sub_E655


; =============== S U B R O U T I N E =======================================


sub_E661:
    JSR sub_E641
    ORA $EC5D,X
    BNE loc_E672
    JSR sub_E641
    ORA $EC5D,X
    EOR $EC5D,X

loc_E672:
    STA $7600,Y
    JMP loc_E720
; End of function sub_E661


; =============== S U B R O U T I N E =======================================


sub_E678:
    LDY #$1B
    LDA ($30),Y
    BNE loc_E694
    JMP sub_E72E
; End of function sub_E678


; =============== S U B R O U T I N E =======================================


sub_E681:
    LDY #$15
    LDA ($30),Y
    ORA #$40 ; '@'
    LDY #$1B
    EOR ($30),Y
    AND #$4F ; 'O'
    BEQ loc_E694
    JSR sub_E72E
    CLC
    RTS
; ---------------------------------------------------------------------------

loc_E694:
    JSR sub_E655
    LDY #4
    JSR sub_E6A1
    JSR sub_E72E
    SEC
    RTS
; End of function sub_E681


; =============== S U B R O U T I N E =======================================


sub_E6A1:
    LDA byte_32
    STA Pointer
    LDA byte_33
    STA Pointer+1
    SEC
    LDA (Pointer),Y
    SBC #0
    STA PointerTilePack04
    INY
    LDA (Pointer),Y
    SBC #2
    STA PointerTilePack05
    INY
    SEC
    LDA (Pointer),Y
    SBC #$C0
    STA PointerTilePack06
    INY
    LDA (Pointer),Y
    SBC #1
    STA PointerTilePack07
    LDA #$40 ; '@'
    STA byte_20
    RTS
; End of function sub_E6A1


; =============== S U B R O U T I N E =======================================


sub_E6CF:
    JSR sub_E681
    BCC locret_E6D8
    LDA #1
    STA byte_E

locret_E6D8:
    RTS
; End of function sub_E6CF

; ---------------------------------------------------------------------------
    .byte $20, $E, $E6, $90, 1, $60, $20, $FC, $E7, $29, $F0
    .byte $4A, $4A
    .byte $4A

; =============== S U B R O U T I N E =======================================


sub_E6E7:
    CMP #8
    BCS loc_E6FE
    JSR sub_E7DC
    JMP sub_E73D
; ---------------------------------------------------------------------------
    JSR sub_E60E
    BCC loc_E6F7
    RTS
; ---------------------------------------------------------------------------

loc_E6F7:
    JSR sub_E7FC
    AND #$F0
    BNE loc_E720

loc_E6FE:
    LDY #$C
    LDA #$3D ; '='
    STA ($30),Y
    INY
    LDA #$EC
    STA ($30),Y
    JSR sub_E73D
    LDY #9
    LDA #$78 ; 'x'
    STA ($30),Y
    LDA #0
    JSR loc_E59B
    JMP sub_E72E
; End of function sub_E6E7


; =============== S U B R O U T I N E =======================================


sub_E71A:
    JSR sub_E60E
    BCC loc_E720
    RTS
; End of function sub_E71A

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_E6E7
;   ADDITIONAL PARENT FUNCTION sub_E661
;   ADDITIONAL PARENT FUNCTION sub_E71A

loc_E720:
    JSR sub_E733
    JSR sub_E73D
    JSR sub_E746
    LDA #0
    JSR loc_E59B
; END OF FUNCTION CHUNK FOR sub_E6E7

; =============== S U B R O U T I N E =======================================


sub_E72E:
    LDA #$88
    STA byte_3E
    RTS
; End of function sub_E72E


; =============== S U B R O U T I N E =======================================


sub_E733:
    LDA #0
    LDY #$C
    STA ($30),Y
    INY
    STA ($30),Y
    RTS
; End of function sub_E733


; =============== S U B R O U T I N E =======================================


sub_E73D:
    LDY #8
    LDA ($30),Y
    AND #$3F
    STA ($30),Y
    RTS
; End of function sub_E73D


; =============== S U B R O U T I N E =======================================


sub_E746:
  
    LDY #9
    LDA #$38 ; '8'
    STA ($30),Y
    RTS
; End of function sub_E746


; =============== S U B R O U T I N E =======================================


sub_E74D:
    LDY #8
    LDA ($30),Y
    ORA #$40
    STA ($30),Y
    RTS
; End of function sub_E74D


; =============== S U B R O U T I N E =======================================


sub_E756:
    JSR sub_E733
    JSR sub_E73D
    JSR sub_E746
    JSR sub_E655
    JSR sub_E772
    AND $EC5D,X
    BEQ loc_E76C
    LDA #4

loc_E76C:
    JSR loc_E59B
    JMP sub_E72E
; End of function sub_E756


; =============== S U B R O U T I N E =======================================


sub_E772:
    LDY #6
    LDA ($32),Y
    ASL A
    LDY #7
    LDA ($32),Y
    AND #7
    TAX
    LDA ($32),Y
    ROR A
    LSR A
    LSR A
    TAY
    LDA $7620,Y
    RTS
; End of function sub_E772


; =============== S U B R O U T I N E =======================================


sub_E788:
    LDY #$1A
    LDA ($30),Y
    BNE loc_E79C
    LDA #1
    STA ($30),Y
    LDY #$15
    LDA ($30),Y
    EOR #4
    AND #$F
    STA ($30),Y

loc_E79C:
    LDY #$15
    LDA ($30),Y
    STA byte_3E
    JSR sub_E5AF
    JSR loc_E1D4
    BCC loc_E7B1
    LDA #$F8
    STA byte_22
    JMP loc_E552
; ---------------------------------------------------------------------------

loc_E7B1:
    LDA #0
    STA byte_22
    JMP loc_E965
; End of function sub_E788


; =============== S U B R O U T I N E =======================================


sub_E7B8:
    JSR sub_E60E
    BCC loc_E7BE
    RTS
; ---------------------------------------------------------------------------

loc_E7BE:
    JSR sub_E7FC
    AND #$E0
    LSR A
    LSR A
    BCC loc_E7D2
    JSR sub_E60E
    BCC loc_E7CD
    RTS
; ---------------------------------------------------------------------------

loc_E7CD:
    JSR sub_E7FC
    AND #$F8

loc_E7D2:
    LSR A
    LSR A
    CMP #8
    BCS sub_E7F5
    LDY #$15
    STA ($30),Y
; End of function sub_E7B8


; =============== S U B R O U T I N E =======================================


sub_E7DC:
    STA byte_3E
    JSR sub_E5BD
    JSR sub_E376
    BCS sub_E7F5
    JSR loc_E1D4
    BCC sub_E7F5
    JSR sub_E275
    BNE sub_E7F5
    JSR bank14_8000_ex
    BCC loc_E7F9
; End of function sub_E7DC


; =============== S U B R O U T I N E =======================================


sub_E7F5:
    LDA #$88
    STA byte_3E

loc_E7F9:
    JMP sub_E567
; End of function sub_E7F5


; =============== S U B R O U T I N E =======================================


sub_E7FC:
    LDA byte_25
    BNE loc_E803
    JMP sub_F1ED
; ---------------------------------------------------------------------------

loc_E803:
    PLA
    PLA
    JMP sub_E7F5
; End of function sub_E7FC


; =============== S U B R O U T I N E =======================================


sub_E808:
    JSR sub_E60E
    BCC sub_E7F5
    RTS
; End of function sub_E808


; =============== S U B R O U T I N E =======================================


sub_E80E:
    JSR sub_E60E
    BCC loc_E814
    RTS
; ---------------------------------------------------------------------------

loc_E814:
    JSR sub_E7FC
    AND #$E0
    LSR A
    LSR A
    LSR A
    LSR A
    CMP #8
    BCS sub_E7F5
    LDY #$15
    STA ($30),Y
    JSR sub_E7F5
    JMP sub_E74D
; End of function sub_E80E


; =============== S U B R O U T I N E =======================================


sub_E82B:
    CMP #0
    BNE sub_E7F5
    STA byte_22
    LDY #$1D
    LDA ($30),Y
    AND #$7F
    PHA
    JSR sub_DE13
    PLA
    JMP sub_E0F9
; End of function sub_E82B


; =============== S U B R O U T I N E =======================================


sub_E83F:
    LDY #$1A
    LDA ($30),Y
    BNE loc_E86B
    LDY #$1E
    CLC
    LDA ($30),Y
    STA byte_32
    ADC #2
    STA ($30),Y
    INY
    LDA ($30),Y
    STA byte_33
    ADC #0
    STA ($30),Y
    LDY #0
    LDA ($32),Y
    CMP #$10
    BCC sub_E82B
    LDY #$19
    STA ($30),Y
    LDY #1
    LDA ($32),Y
    LDY #$1A

loc_E86B:
    SEC
    SBC #1
    STA ($30),Y
    BNE loc_E88F
    LDY #$1E
    LDA ($30),Y
    STA byte_32
    INY
    LDA ($30),Y
    STA byte_33
    LDY #0
    LDA ($32),Y
    CMP #$10
    BCS loc_E88F
    SEC
    LDA #$28
    SBC SaveNum
    CLC
    ADC #$84
    STA byte_21

loc_E88F:
    LDY #$19
    LDA ($30),Y
    TAX
    AND #$20 ; ' '
    BEQ loc_E8A2
    LDY #$1D
    LDA ($30),Y
    ASL A
    ASL A
    TAY
    LDA $E107,Y

loc_E8A2:
    LDY #8
    STA ($30),Y
    TXA
    AND #8
    BNE loc_E8B2
    LDY #$15
    TXA
    AND #7
    STA ($30),Y

loc_E8B2:
    TXA
    BMI loc_E8C1
    PHA
    AND #7
    STA byte_3E
    JSR sub_E5BD
    PLA
    TAX
    BPL loc_E8C5

loc_E8C1:
    LDA #$88
    STA byte_3E

loc_E8C5:
    TXA
    AND #$40
    ASL A
    ORA #$70
    ORA byte_3E
    STA byte_22
    JMP sub_E567
; End of function sub_E83F

; ---------------------------------------------------------------------------
    .byte $20, $E, $E6, $90, 1, $60, $20, $F5, $E7, $4C, $E1
    .byte $E8, $20, $92, $EB, $20, $4D, $E7, $A9, $74, $D0
    .byte $18, $20, $E, $E6, $90, 1, $60, $20, $F5, $E7, $A9
    .byte $74, $D0, $B, $20, $E, $E6, $90, 1, $60, $20, $F5
    .byte $E7, $A9, $72, $A2, 1, $4C, $D0

; =============== S U B R O U T I N E =======================================


sub_E904:
    ISB $23A5,X
    CLC
    BNE loc_E95B
    LDA byte_3E
    BMI loc_E92F
    LDY #$1D
    LDA ($30),Y
    TAX
    LDA byte_C
    STA ($30),Y
    TXA
    LDY #$15
    STA ($30),Y
    STA byte_C
    LDY #$19
    LDA ($30),Y
    TAX
    LDA byte_3E
    STA ($30),Y
    TXA
    STA byte_3E
    BMI loc_E92F
    JSR sub_E5BD

loc_E92F:
    JSR sub_E567
    JSR sub_EA24
    LDY #8
    LDA ($30),Y
    AND #$F
    CMP #$A
    BEQ loc_E940
    RTS
; ---------------------------------------------------------------------------

loc_E940:
    LDA byte_D5
    ASL A
    AND #2
    ORA #$70
    LDX #1
    JMP mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
; ---------------------------------------------------------------------------

loc_E94C:
    LDA #$88
    STA byte_A0
    LDA #0
    STA byte_E7
    STA ShiftX
    STA ShiftY
    JSR sub_E733

loc_E95B:
    LDA #0
    STA byte_3E
    STA byte_23
    LDA #$10
    BCS loc_E967

loc_E965:
    LDA #$80

loc_E967:
    LDY #0
    STA ($30),Y
    RTS
; End of function sub_E904


; =============== S U B R O U T I N E =======================================


sub_E96C:
    LDA byte_23
    ASL A
    BNE loc_E94C
    JSR sub_E9CD
    BMI loc_E9A9
    LDY #$15
    STA ($30),Y
    STA byte_C

loc_E97C:
    STA byte_3E
    JSR sub_E5BD
    LDA byte_25
    CMP #$28
    BCS loc_E9AD
    JSR sub_E9FA
    BCS loc_E9A9
    JSR bank14_8000_ex
    BCS loc_E9A9
    BIT byte_3F
    BPL loc_E9AD
    BVS loc_E99F
    LDA byte_3E
    SBC #0
    AND #$F
    BPL loc_E97C

loc_E99F:
    LDY #$15
    LDA #0
    STA ($30),Y
    STA byte_C
    BCC loc_E9AD

loc_E9A9:
    LDA #$88
    STA byte_3E

loc_E9AD:
    JSR sub_E567
    JSR sub_EA24
; End of function sub_E96C

; START OF FUNCTION CHUNK FOR sub_EB92
;   ADDITIONAL PARENT FUNCTION sub_EA38

loc_E9B3:
    LDA byte_3E
    STA byte_A0
    LDY #9
    LDA ($30),Y
    AND #$40 ; '@'
    ORA byte_1F
    STA byte_E7
    LDY #$C
    LDA ($30),Y
    STA ShiftX
    INY
    LDA ($30),Y
    STA ShiftY
    RTS
; END OF FUNCTION CHUNK FOR sub_EB92

; =============== S U B R O U T I N E =======================================


sub_E9CD:
    LDA byte_22
    BEQ loc_E9E1
    BPL loc_E9D4
    RTS
; ---------------------------------------------------------------------------

loc_E9D4:
    LDY #$19
    LDA ($30),Y
    TAX
    LDA byte_22
    STA ($30),Y
    TXA
    AND #$8F
    RTS
; ---------------------------------------------------------------------------

loc_E9E1:
    LDA ButtonPressed
    AND #$F
    TAX
    LDA byte_D
    BPL loc_E9F3
    AND #$F
    CMP $EBDD,X
    BEQ loc_E9F7
    STA byte_D

loc_E9F3:
    LDA $EBDD,X
    RTS
; ---------------------------------------------------------------------------

loc_E9F7:
    LDA #$88
    RTS
; End of function sub_E9CD


; =============== S U B R O U T I N E =======================================


sub_E9FA:
    JSR sub_E275
    BEQ loc_EA22
    ASL A
    LDA byte_3E
    AND #1
    BEQ loc_EA08
    BCS loc_EA1C

loc_EA08:
    LDA byte_F
    BNE loc_EA1A
    LDY #$1B
    LDA byte_3E
    ORA #$40 ; '@'
    STA ($32),Y
    BIT byte_21
    BMI loc_EA1A
    STX byte_21

loc_EA1A:
    BCC locret_EA23

loc_EA1C:
    LDA byte_22
    AND #$10
    BEQ locret_EA23

loc_EA22:
    CLC

locret_EA23:
    RTS
; End of function sub_E9FA


; =============== S U B R O U T I N E =======================================


sub_EA24:
    JSR sub_E655
    LDY #1
    LDA ($32),Y
    AND #$40 ; '@'
    BEQ @exit
    LDY #8
    LDA ($30),Y
    AND #$3F ; '?'
    STA ($30),Y

@exit:
    RTS
; End of function sub_EA24


; =============== S U B R O U T I N E =======================================


sub_EA38:
    LDY #$1A
    LDA ($30),Y
    BNE loc_EA7C
    LDA byte_15
    JSR sub_DE6C
    ASL A
    TAX
    LDA BANK_SELECT,X
    STA Pointer
    LDA BANK_DATA,X
    STA Pointer+1
    LDY #$1E
    LDA ($30),Y
    ASL A
    TAY
    LDA (Pointer),Y
    STA byte_32
    INY
    LDA (Pointer),Y
    STA byte_33
    LDY #$1F
    LDA ($30),Y
    TAY
    LDA ($32),Y
    CMP #$10
    BCC loc_EA9B
    PHA
    INY
    LDA ($32),Y
    TAX

loc_EA6E:
    INY
    TYA
    LDY #$1F
    STA ($30),Y
    LDY #$19
    PLA
    STA ($30),Y
    TXA
    LDY #$1A

loc_EA7C:
    SEC
    SBC #1
    STA ($30),Y
    LDY #$19
    LDA ($30),Y
    BMI loc_EABB
    AND #$F
    STA byte_3E
    LDY #$15
    STA ($30),Y
    JSR sub_E5BD
    JSR sub_EB0B
    JSR loc_E59B
    JMP loc_E9B3
; ---------------------------------------------------------------------------

loc_EA9B:
    CMP #0
    BNE loc_EAA1
    STA byte_23

loc_EAA1:
    INY
    JSR sub_E6A1
    INY
    TYA
    LDY #$1F
    STA ($30),Y
    LDA byte_23
    BNE loc_EABB
    LDA #$80
    STA byte_23
    JSR sub_D9FA
    LDX #0
    JSR sub_CDAF

loc_EABB:
    LDA #$88
    STA byte_3E
    JSR sub_EB0B
    JMP loc_E9B3
; End of function sub_EA38

; ---------------------------------------------------------------------------
    .byte $A5, $3E, $30, $3E, $A0, $19, $B1, $30, $AA, $A5
    .byte $3E, $91, $30, $8A, $30, $32, $85, $3E, $A0, $15
    .byte $49, 4, $91, $30, $A0, 6, $38, $AD, $86, $67, $F1
    .byte $30, $C8, $AD, $87, $67, $F1, $30, $A0, $14, $B1
    .byte $30, $B0, 3, 9, $10, $2C, $29, $EF, $91, $30, $20
    .byte $BD, $E5, $20, $B, $EB, $E0, $40, $90, 2, $E9, 4
    .byte $4C, $9B, $E5, $A9, $88, $85, $3E

; =============== S U B R O U T I N E =======================================


sub_EB0B:
    JSR sub_E607
    LDY #$C
    LDA $EBF3,X
    STA ($30),Y
    INY
    LDA $EBF4,X
    STA ($30),Y
    JSR sub_E73D
    JSR sub_E746
    LDA byte_3E
    BMI locret_EB39
    LDY #$15
    LDA ($30),Y
    TAX
    LDA $EC35,X
    TAX
    LDY #8
    AND #$40
    ORA ($30),Y
    STA ($30),Y
    TXA
    AND #$1F

locret_EB39:
    RTS
; End of function sub_EB0B


; =============== S U B R O U T I N E =======================================


sub_EB3A:
    JSR sub_E9CD
    BMI loc_EB70
    LDY #$15
    STA ($30),Y
    STA byte_A0
    TAX
    LDY #$1A
    LDA ($30),Y
    BEQ loc_EB68
    BMI loc_EB5B
    SEC
    SBC #1
    STA ($30),Y
    CMP #5
    BCS loc_EB68
    LDX #7
    BCC loc_EB68

loc_EB5B:
    PHA
    CLC
    ADC #1
    STA ($30),Y
    PLA
    CMP #$FD
    BCS loc_EB68
    LDX #5

loc_EB68:
    STX byte_3E
    JSR sub_E5BD
    JMP loc_EB76
; ---------------------------------------------------------------------------

loc_EB70:
    LDA #$88
    STA byte_A0
    STA byte_3E

loc_EB76:
    JSR sub_E567
    JSR sub_E74D
    LDA byte_A0
    STA byte_3E
    JSR sub_E607
    LDA byte_1F
    STA byte_E7
    LDA $EBF3,X
    STA ShiftX
    LDA $EBF4,X
    STA ShiftY
; End of function sub_EB3A

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_2. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_EB92:
    JSR sub_E9CD
    BMI loc_EBC0
    LDY #$15
    STA ($30),Y
    STA byte_3E
    JSR sub_E5BD
    JSR sub_E9FA
    BCS loc_EBC0
    LDA byte_22
    BNE loc_EBC4
    LDA #$14
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA byte_A6
    STA byte_A2
    JSR sub_E506
    LDA byte_15
    JSR sub_DE6C
    BIT byte_3F
    BVS loc_EBC4

loc_EBC0:
    LDA #$88
    STA byte_3E

loc_EBC4:
    JSR sub_E567
    JMP loc_E9B3
; End of function sub_EB92

; ---------------------------------------------------------------------------
    JSR sub_E9CD
    STA byte_3E
    BMI loc_EBD4
    JSR sub_E5BD

loc_EBD4:
  
    JSR sub_E567
    JSR sub_E73D
    JMP loc_E9B3
; ---------------------------------------------------------------------------
    .byte $88, 2, 6, $88, 4, 3, 5, $88, 0, 1, 7, $88, $88
    .byte $88, $88, $88, 0, 0, $C0, $FF, 0, 0, 0, $FF, $40
    .byte 0, $C0, $FF, 0, 0, 1, $FF, $40, 0, 0, 0, 8, 0, 1
    .byte 0, $40, 0, $40, 0, $10, 0, 1, 1, 0, 0, $40, 0, $10
    .byte 0, 0, 1, $C0, $FF, $40, 0, $10, 0, $FF, 1, $C0, $FF
    .byte 0, 0, $18, 0, $FF, 0, $C0, $FF, $C0, $FF, 0, 0, $FF
    .byte $FF, 0, 0, 0, 0, $10, 0, 0, 0, $54, $14, $1C, 4
    .byte $44, 0, $C, $10, 0, $FF, 0, 1, $FF, 0, 1, 0, 0, $FF
    .byte 0, 1, 0, $FF, 0, 1, $FF, 0, 1, 0, 0, $FF, 0, 1, 0
    .byte 1, 0, $FF, 0, $FF, 0, 1, $80, $40, $20, $10, 8, 4
    .byte 2, 1

; =============== S U B R O U T I N E =======================================


sub_EC65:
    JSR darken_palette
    LDX #0
    LDY #8
    JSR set_camera
    LDA #$EC
    LDX #$EC
    JSR set_ppu_banks
    LDA #1
    STA byte_A000
    LDA #$80
    STA ModeSRAM
    LDA #$7C ; '|'
    STA BankPPU_X000
    STA BankPPU_X400
    STA BankPPU_X800
    STA BankPPU_XC00
    LDA #0
    STA byte_46
    LDA #0
    STA byte_45
    LDX #9

loc_EC94:
    LDA $ECF2,X
    STA $540,X
    DEX
    BPL loc_EC94
    JSR sub_ED1A
    JMP wait_nmi
; End of function sub_EC65


; =============== S U B R O U T I N E =======================================


sub_ECA3:
    LDA #$C3
    JSR sub_C408
    LDX #$1E
    JSR wait_frames
    JSR sub_D8D3
    BCS loc_ECB6
    JSR sub_DA48
    CLC

loc_ECB6:
    PHP
    JSR sub_D977
    LDX #$3C

loc_ECBC:
  
    JSR wait_nmi
    LDA ButtonPressed
    BNE loc_ECC6
    DEX
    BNE loc_ECBC

loc_ECC6:
  
    JSR wait_nmi_processed
    JSR darken_color
    JSR restore_palettes
    LDA #$60 ; '`'
    LDX #0
    JSR mmc3_bank_set   ; Set memory bank
    ; A - bank number
    ; X - mode
    LDA #0
    STA byte_A000
    STA IRQCount
    STA byte_70
    STA byte_71
    STA byte_48
    STA ModeSRAM
    STA JmpInstr
    PLP
    JMP wait_nmi
; End of function sub_ECA3

; ---------------------------------------------------------------------------
    SEI
    BRK
; ---------------------------------------------------------------------------
    NOP

; =============== S U B R O U T I N E =======================================


sub_ED1A:
    SEC
    LDA #$59
    SBC CameraY
    STA IRQCount
    RTS
; End of function sub_ED1A

; =============== S U B R O U T I N E =======================================


sub_EDCB:
    JSR loc_C220
    LDX #$24
    LDA #$1F
    BIT PPU_STATUS  ; PPU Status Register (R)
    ;
    ;    D7: VBlank Occurance
    ;    D6: Sprite #0 Occurance
    ;    D5: Scanline Sprite Count
    ;    D4: VRAM Write Flag
    ;
    ; NOTE: D7 is set to 0 after read occurs.
    ; NOTE: After a read occurs, $2005 is reset, hence the
    ;   next write to $2005 will be Horizontal.
    ; NOTE: After a read occurs, $2006 is reset, hence the
    ;   next write to $2006 will be the high byte portion.
    STX PPU_ADDR    ; VRAM Address Register #2 (W2)
    ;
    ; Commonly used to specify the 16-bit address in VRAM to
    ; access via $2007. However, this register controls VRAM
    ; addressing bits, and therefore should be used with
    ; knowledge of how it works, and when it works.
    STA PPU_ADDR    ; VRAM Address Register #2 (W2)
    ;
    ; Commonly used to specify the 16-bit address in VRAM to
    ; access via $2007. However, this register controls VRAM
    ; addressing bits, and therefore should be used with
    ; knowledge of how it works, and when it works.
    RTS
; End of function sub_EDCB


; =============== S U B R O U T I N E =======================================


sub_EDFE:
    PHA
    JSR store_palettes
    PLA
    LDX #$1F

loc_EE05:
    STA PalNMIBG,X
    DEX
    BPL loc_EE05
    JMP loc_EEB3
; End of function sub_EDFE


; =============== S U B R O U T I N E =======================================


sub_EE0E:
    PHA
    JSR wait_nmi_processed
    PLA
    LDX #$1F

loc_EE15:
    DEX
    DEX
    DEX
    STA PalNMIBG,X
    DEX
    BPL loc_EE15
    JMP loc_EEB3
; End of function sub_EE0E


; =============== S U B R O U T I N E =======================================


sub_EE21:
    PHA
    JSR wait_nmi_processed
    PLA
    LDX #$1F

loc_EE28:
    STA PalBG,X
    DEX
    BPL loc_EE28
    BMI lighten_color
; End of function sub_EE21

; =============== S U B R O U T I N E =======================================


sub_EEE4:
    JSR wait_nmi_processed
    LDA #4
    EOR CameraX
    STA CameraX
    JMP wait_nmi
; End of function sub_EEE4


; =============== S U B R O U T I N E =======================================


sub_EEF0:
    LDA PosX1F
    AND #$F0
    BEQ locret_EF1A
    STA Pointer
    ASL Pointer
    BCC locret_EF1A
    JSR sub_F1ED
    AND #$C0
    BNE locret_EF1A
    JSR store_palettes
    JSR sub_EF1B
    LDX #$A

loc_EF0C:
    LDA #7
    STA byte_7F0
    JSR sub_EEE4
    DEX
    BNE loc_EF0C
    JSR back_palettes

locret_EF1A:
    RTS
; End of function sub_EEF0


; =============== S U B R O U T I N E =======================================


sub_EF1B:
    LDX #$F

loc_EF1D:
    CPX #$E
    BEQ loc_EF2E
    SEC
    LDA PalNMIBG,X
    SBC #$10
    BCS loc_EF2B
    LDA #$F

loc_EF2B:
    STA PalNMIBG,X

loc_EF2E:
    DEX
    BPL loc_EF1D
    JMP loc_EEB3
; End of function sub_EF1B


; =============== S U B R O U T I N E =======================================


cursor_update:
    LDY #8
    LDA ($80),Y
    STA CHRBank4
    INY
    LDA ($80),Y
    STA CHRBank5
    LDY #6
    LDA ($80),Y
    STA PosX
    LDY #7
    LDA ($80),Y
    STA PosY
; End of function cursor_update


; =============== S U B R O U T I N E =======================================


sub_EF4B:
    LDY #0
    LDA ($80),Y
    STA CHRBank6
    TAX
    LDY #1
    LDA ($80),Y
    JSR multiply
    STA CurrentFieldPosition
    LDY #0
    STY CHRBank7

loc_EF5F:
    LDA ($84),Y
    BNE loc_EF6D
    INY
    CPY CurrentFieldPosition
    BCC loc_EF5F
    STA CurrentFieldPosition
    STA Buttons
    RTS
; ---------------------------------------------------------------------------

loc_EF6D:
    STY CurrentFieldPosition
    TYA

loc_EF70:
    CMP CHRBank6
    BCC loc_EF7A
    SBC CHRBank6
    INC CHRBank7
    BCS loc_EF70

loc_EF7A:
    STA CHRBank6
    JSR wait_nmi_processed
    LDY #$18
    STY pTileID+1
    LDA #0
    STA OAM+2

loc_EF88:
    LDY #5
    LDA ($80),Y
    STA OAM+1
    LDY #2
    LDA ($80),Y
    LDX CHRBank6
    JSR multiply
    CLC
    ADC PosX
    ASL A
    ASL A
    ASL A
    STA OAM+3
    LDY #3
    LDA ($80),Y
    LDX CHRBank7
    JSR multiply
    CLC
    ADC PosY
    ASL A
    ASL A
    ASL A
    CLC
    ADC #7
    STA OAM
    LDY pTileID+1

loc_EFB8:
    LDX #0
    STX Gamepad0Buttons

loc_EFBC:
    JSR sub_F1ED
    JSR wait_nmi
    LDA Gamepad0Buttons
    BNE loc_EFE1
    DEY
    BNE loc_EFBC
    LDY #5
    LDA ($80),Y
    EOR OAM+1
    STA OAM+1
    LDA ButtonPressed
    BNE loc_EFDD
    LDY #$18
    STY pTileID+1
    BNE loc_EFB8

loc_EFDD:
    LDY #6
    STY pTileID+1

loc_EFE1:
    LDX #0
    STX Gamepad0Buttons
    TAX
    LDY #4
    AND #$F0
    AND ($80),Y
    BEQ loc_EFFB
    STA Buttons
    LDA #5
    STA byte_7F1

loc_EFF5:
    LDA #$F0
    STA OAM
    RTS
; ---------------------------------------------------------------------------

loc_EFFB:
    TXA
    AND #$F
    STA Buttons
    TAY
    LDX $F0D9,Y
    BMI loc_EF88
    LDA CHRBank6
    STA pDist
    LDA CHRBank7
    STA byte_69
    STX byte_6B

loc_F010:
    CLC
    LDA $F0EA,X
    ADC byte_69
    LDY #1
    CMP ($80),Y
    BCS loc_F055
    STA byte_69
    STA Pointer
    CLC
    LDA $F0E9,X
    ADC pDist
    LDY #0
    CMP ($80),Y
    BCS loc_F055
    STA pDist
    STA byte_6A
    LDA ($80),Y
    LDX Pointer
    JSR multiply
    CLC
    ADC byte_6A
    STA byte_6A
    TAY
    LDA ($84),Y
    BEQ loc_F067
    LDA pDist
    STA CHRBank6
    LDA byte_69
    STA CHRBank7
    LDA byte_6A
    STA CurrentFieldPosition
    LDA #$D
    STA byte_7F1

loc_F052:
    JMP loc_EF88
; ---------------------------------------------------------------------------

loc_F055:
    LDY #4
    LDA Buttons
    AND ($80),Y
    BEQ loc_F052
    STA Buttons
    LDA #$D
    STA byte_7F1
    JMP loc_EFF5
; ---------------------------------------------------------------------------

loc_F067:
    LDX byte_6B
    LDY #1
    LDA byte_D6
    BEQ loc_F071
    INX
    DEY

loc_F071:
    LDA $F0E9,X
    BEQ loc_F0AB

loc_F076:
    STA byte_6A
    SEC
    LDA $68,Y
    SBC $86,Y
    EOR #$FF
    BPL loc_F08E
    CLC
    ADC $86,Y
    STA $68,Y
    BPL loc_F0A1
    BMI loc_F099

loc_F08E:
    SEC
    ADC $86,Y
    STA $68,Y
    CMP ($80),Y
    BCC loc_F0A1

loc_F099:
    LDA #0
    CMP byte_6A
    BNE loc_F076
    BEQ loc_F055

loc_F0A1:
    TYA
    EOR #1
    TAY
    LDA $86,Y
    STA $68,Y

loc_F0AB:
    LDX byte_6B
    JMP loc_F010
; End of function sub_EF4B


; =============== S U B R O U T I N E =======================================


get_cursor_pos:
    PHA
    LDY #2
    LDA ($80),Y
    LDX CHRBank6
    JSR multiply
    CLC
    ADC PosX
    STA PosX
    LDY #3
    LDA ($80),Y
    LDX CHRBank7
    JSR multiply
    CLC
    ADC PosY
    STA PosY
    PLA
    JMP sub_C68B
; End of function get_cursor_pos

; ---------------------------------------------------------------------------
    .byte 1, 2, 3, 4, 5, 6, 7, 8, $88, 2, 6, $88, 4, $88, $88
    .byte $88, 0, $88, $88, $88, $88, $88, $88, $88, 0, $FF
    .byte 1, 0, 0, 1, $FF, 0

; =============== S U B R O U T I N E =======================================


sub_F0F1:
    LDA #0
    LDX #$10

loc_F0F5:
    ROR Pointer+1
    ROR Pointer
    BCC loc_F0FE
    CLC
    ADC pTileID

loc_F0FE:
    ROR A
    DEX
    BNE loc_F0F5
    STA AddrForJmp
    ROR Pointer+1
    ROR Pointer
    RTS
; End of function sub_F0F1


; =============== S U B R O U T I N E =======================================


sub_F109:
    LDA #0
    LDX #$18

loc_F10D:
    ROR AddrForJmp
    ROR Pointer+1
    ROR Pointer
    BCC loc_F118
    CLC
    ADC pTileID

loc_F118:
    ROR A
    DEX
    BNE loc_F10D
    STA AddrForJmp+1
    ROR AddrForJmp
    ROR Pointer+1
    ROR Pointer
    RTS
; End of function sub_F109


; =============== S U B R O U T I N E =======================================


sub_F13D:
    LDA pTileID

loc_F13F:
    BEQ loc_F13F
    LDA #0
    LDX #$18
    ROL Pointer
    ROL Pointer+1
    ROL AddrForJmp

loc_F14B:
    ROL A
    BCS loc_F152
    CMP pTileID
    BCC loc_F155

loc_F152:
    SBC pTileID
    SEC

loc_F155:
    ROL Pointer
    ROL Pointer+1
    ROL AddrForJmp
    DEX
    BNE loc_F14B
    STA pDist
    RTS
; End of function sub_F13D


; =============== S U B R O U T I N E =======================================


sub_F161:
    LDY #8

loc_F163:
    DEY
    LDA #0
    LDX #$18
    ROL Pointer
    ROL Pointer+1
    ROL AddrForJmp

loc_F16E:
    ROL A
    CMP #$A
    BCC loc_F175
    SBC #$A

loc_F175:
    ROL Pointer
    ROL Pointer+1
    ROL AddrForJmp
    DEX
    BNE loc_F16E
    TAX
    LDA $F19A,X
    STA $68,Y
    LDA Pointer
    ORA Pointer+1
    ORA AddrForJmp
    BNE loc_F163
    STY AddrForJmp+1
    LDA #$A0
    BNE loc_F196

loc_F193:
    STA $68,Y

loc_F196:
    DEY
    BPL loc_F193
    RTS
; End of function sub_F161

; ---------------------------------------------------------------------------
    .byte $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9
    .byte $A0, 0, $84, $60, $84, $61, $84, $62, $F0, $18, $A9
    .byte 0, $A2, $18, $66, $62, $66, $61, $66, $60, $90, 2
    .byte $69, 9, $6A, $CA, $D0, $F2, $66, $62, $66, $61, $66
    .byte $60, $B9, $68, 0, $C9, $BA, $B0, 7, $C9, $B0, $90
    .byte 3, $E9, $B0, $2C, $A9, 0, $18, $65, $60, $85, $60
    .byte $A9, 0, $65, $61, $85, $61, $A9, 0, $65, $62, $85
    .byte $62, $C8, $C0, 8, $90, $C2, $60

; =============== S U B R O U T I N E =======================================


sub_F1ED:
    CLC
    LDA byte_26
    ADC byte_27
    STA byte_27
    CLC
    LDA byte_26
    ADC #$75 ; 'u'
    STA byte_26
    LDA byte_27
    ADC #$63 ; 'c'
    STA byte_27
    RTS
; End of function sub_F1ED


; =============== S U B R O U T I N E =======================================


sub_F255:
    CMP NTAddrC
    BEQ locret_F25D
    STA byte_7F5

locret_F25D:
    RTS
; End of function sub_F255

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F724

delay:
    TXA
    BEQ locret_F26A
    PHA
    JSR wait_nmi
    PLA
    TAX
    DEX
    BNE delay

locret_F26A:
    RTS
; END OF FUNCTION CHUNK FOR sub_F724

; =============== S U B R O U T I N E =======================================


sub_F26B:
    INX

loc_F26C:
    TXA
    PHA
    JSR sub_F27C
    PLA
    TAX
    DEX
    BNE loc_F26C
    JSR sub_F27C
    JMP sub_F4B6
; End of function sub_F26B


; =============== S U B R O U T I N E =======================================


sub_F27C:
    LDX #$2F

loc_F27E:
    TXA
    PHA
    AND #$F
    LSR A
    TAX
    LDA $F296,X
    JSR sub_F4B8
    JSR wait_nmi
    JSR wait_nmi
    PLA
    TAX
    DEX
    BNE loc_F27E
    RTS
; End of function sub_F27C


; =============== S U B R O U T I N E =======================================


sub_F296:
    AND ($22,X)
    RLA ($24,X)
    AND byte_24
    RLA ($22,X)
    LDX #0
    STX Gamepad0Buttons

loc_F2A2:
    JSR wait_nmi
    LDA Gamepad0Buttons
    STX Gamepad0Buttons
    AND #$C0
    BEQ loc_F2A2
    RTS
; End of function sub_F296


; =============== S U B R O U T I N E =======================================


sub_F2AE:
    ASL A
    TAY
    INY
    INY
    INY
    PLA
    STA Pointer
    PLA
    STA Pointer+1
    LDA (Pointer),Y
    STA AddrForJmp
    INY
    LDA (Pointer),Y
    STA AddrForJmp+1
    LDY #1
    SEC
    LDA (Pointer),Y
    SBC #1
    TAX
    INY
    LDA (Pointer),Y
    SBC #0
    PHA
    TXA
    PHA
    JMP (AddrForJmp)
; End of function sub_F2AE


; =============== S U B R O U T I N E =======================================


sub_F2D5:
    ASL A
    TAY
    INY
    PLA
    STA Pointer
    PLA
    STA Pointer+1
    SEC
    LDA (Pointer),Y
    SBC #1
    TAX
    INY
    LDA (Pointer),Y
    SBC #0
    PHA
    TXA
    PHA
    RTS
; End of function sub_F2D5


; =============== S U B R O U T I N E =======================================


sub_F2ED:
    PHA
    TXA
    PHA
    TYA
    PHA
    LDA AddrForJmp+1
    PHA
    LDA AddrForJmp
    PHA
    LDA pTileID+1
    PHA
    LDA pTileID
    PHA
    LDA byte_69
    PHA
    LDA pDist
    PHA
    LDA Pointer+1
    AND #$FC
    PHA
    LDX #6

loc_F30B:
    ASL Pointer
    ROL Pointer+1
    DEX
    BNE loc_F30B
    STX AddrForJmp
    TXA
    PHA
    LDA Pointer+1
    PHA
    LDA Pointer
    PHA
    LDA #$64
    STA pTileID
    JSR sub_F13D
    JSR sub_F1ED
    LSR A
    PHP
    TAX
    LDA $F37D,X
    STA pTileID
    JSR sub_F0F1
    PLP
    BCS loc_F346
    PLA
    ADC Pointer
    STA Pointer
    PLA
    ADC Pointer+1
    STA Pointer+1
    PLA
    ADC AddrForJmp
    STA AddrForJmp
    JMP loc_F355
; ---------------------------------------------------------------------------

loc_F346:
    PLA
    SBC Pointer
    STA Pointer
    PLA
    SBC Pointer+1
    STA Pointer+1
    PLA
    SBC AddrForJmp
    STA AddrForJmp

loc_F355:
    LDX #6

loc_F357:
    LSR AddrForJmp
    ROR Pointer+1
    ROR Pointer
    DEX
    BNE loc_F357
    PLA
    ORA Pointer+1
    STA Pointer+1
    PLA
    STA pDist
    PLA
    STA byte_69
    PLA
    STA pTileID
    PLA
    STA pTileID+1
    PLA
    STA AddrForJmp
    PLA
    STA AddrForJmp+1
    PLA
    TAY
    PLA
    TAX
    PLA
    RTS
; End of function sub_F2ED

; ---------------------------------------------------------------------------
    .byte 0, 0, 0, 0, 0, $C, $C, $C, $C, $C, 1, 1, 1, 1, 1
    .byte 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3
    .byte 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4
    .byte 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, $14, 6, 6, 6, 6, 6
    .byte 6, 6, 6, 6, $15, 7, 7, 7, 7, 7, 7, 7, 7, $11, $11
    .byte 8, 8, 8, 8, 8, 8, 8, 8, $12, $12, 9, 9, 9, 9, 9
    .byte 9, 9, $F, $F, $F, $A, $A, $A, $A, $A, $A, $D, $D
    .byte $D, $D, $B, $B, $B, $B, $B, $B, $E, $E, $E, $E, $10
    .byte $10, $10, $13, $13, $16, $17, $18, $AA, $A5, $61
    .byte $48, $A5, $60, $48, $86, $60, $A9, 0, $85, $61, $20
    .byte $ED, $F2, $A5, $61, $F0, 4, $A9, $FF, $85, $60, $A6
    .byte $60, $68, $85, $60, $68, $85, $61, $8A, $60, $48
    .byte $A, $A, $F0, $3F, $AA, $BD, $EA, $9E, $85, $65, $BD
    .byte $EB, $9E, $85, $67, $BD, $E9, $9E, $C9, 0, $D0, 8
    .byte $A5, $65, $8D, $F0, 7, $4C, $5B, $F4, $C9, 1, $D0
    .byte 8, $A5, $65, $8D, $F1, 7, $4C, $5B, $F4, $C9, 2
    .byte $D0, 8, $A5, $65, $8D, $F3, 7, $4C, $5B, $F4, $A5
    .byte $65, $8D, $F4, 7, $A6, $67, $20, $5E, $F2, $20, $39
    .byte $F2, $68, $60, $A2, $F, $8A, $48, $A9, 5, $8D, $F1
    .byte 7, $A2, 2, $20, $5E, $F2, $68, $AA, $CA, $D0, $EF
    .byte $60


; =============== S U B R O U T I N E =======================================


sub_F4B6:
    LDA #$F
; End of function sub_F4B6


; =============== S U B R O U T I N E =======================================


sub_F4B8:
    PHA
    JSR wait_nmi_processed
    PLA
    LDY #$1C

loc_F4BF:
    STA PalNMIBG,Y
    DEY
    DEY
    DEY
    DEY
    BPL loc_F4BF
    JSR set_nmi_id4
    JMP wait_nmi
; End of function sub_F4B8


; =============== S U B R O U T I N E =======================================


sub_F4CE:
    ASL A
    STA Pointer
    TXA
    PHA
    TYA
    PHA
    JSR bank0
    LDY Pointer
    LDA $8C00,Y
    STA Pointer
    LDA $8C01,Y
    STA Pointer+1
    LDY #0
    LDA (Pointer),Y
    STA byte_66
    INY
    LDX PosX
    LDA (Pointer),Y
    CMP #$FF
    BEQ loc_F4F4
    TAX

loc_F4F4:
    STX AddrForJmp
    INY
    LDX PosY
    LDA (Pointer),Y
    CMP #$FF
    BEQ loc_F500
    TAX

loc_F500:
    STX AddrForJmp+1

loc_F502:
  
    INY
    LDA (Pointer),Y
    LDX #0
    CMP #$FC
    BEQ loc_F521
    LDX #1
    CMP #$FD
    BEQ loc_F521
    LDX #2
    CMP #$FE
    BEQ loc_F521
    CMP #$FF
    BEQ loc_F526
    JSR sub_F52E
    JMP loc_F502
; ---------------------------------------------------------------------------

loc_F521:
    STX byte_67
    JMP loc_F502
; ---------------------------------------------------------------------------

loc_F526:
    JSR bank16
    PLA
    TAY
    PLA
    TAX
    RTS
; End of function sub_F4CE


; =============== S U B R O U T I N E =======================================


sub_F52E:
    TAX
    INY
    LDA (Pointer),Y
    STA pTileID
    INY
    LDA (Pointer),Y
    STA pTileID+1

loc_F539:
    TXA
    PHA
    TYA
    PHA
    JSR wait_nmi_processed
    LDA #0
    STA byte_70
    LDA AddrForJmp
    STA PosX
    LDA pTileID
    STA PointerTilePack
    LDA pTileID+1
    STA PointerTilePack+1
    JSR sub_F562
    CLC
    LDA AddrForJmp+1
    ADC byte_66
    STA AddrForJmp+1
    PLA
    TAY
    PLA
    TAX
    DEX
    BNE loc_F539
    RTS
; End of function sub_F52E


; =============== S U B R O U T I N E =======================================


sub_F562:
    LDA Pointer+1
    PHA
    LDA Pointer
    PHA
    LDA AddrForJmp
    PHA
    LDA pTileID+1
    PHA
    LDA pTileID
    PHA
    LDA byte_67
    PHA
    LDA byte_66
    PHA
    LDA byte_67
    BEQ loc_F58D
    CMP #1
    BEQ loc_F59E
    LDA AddrForJmp+1
    STA PosY
    PHA
    JSR sub_C6D2
    PLA
    STA AddrForJmp+1
    JMP loc_F5AC
; ---------------------------------------------------------------------------

loc_F58D:
    CLC
    LDA AddrForJmp+1
    ADC byte_66
    STA PosY
    PHA
    JSR sub_C707
    PLA
    STA AddrForJmp+1
    JMP loc_F5AC
; ---------------------------------------------------------------------------

loc_F59E:
    CLC
    LDA AddrForJmp+1
    ADC byte_66
    STA PosY
    PHA
    JSR sub_C6DB
    PLA
    STA AddrForJmp+1

loc_F5AC:
    PLA
    STA byte_66
    PLA
    STA byte_67
    PLA
    STA pTileID
    PLA
    STA pTileID+1
    PLA
    STA AddrForJmp
    PLA
    STA Pointer
    PLA
    STA Pointer+1
    RTS
; End of function sub_F562


; =============== S U B R O U T I N E =======================================


sub_F5C2:
    LDA byte_5A
    PHA
    JSR sub_F765
    LDA #$DF
    STA CHRBank4
    LDA #$F5
    STA CHRBank5
    LDA #$DF
    STA CHRBank0
    LDA #$F5
    STA CHRBank1
    JSR sub_EF4B
    PLA
    STA byte_5A
    RTS
; End of function sub_F5C2

; ---------------------------------------------------------------------------
    .byte 1, 1, 0, 0

; =============== S U B R O U T I N E =======================================


sub_F5E3:
    CPY #$5D
    PHA
    TXA
    PHA
    TYA
    PHA
    JSR sub_C406
    JSR sub_F614
    PLA
    TAY
    PLA
    TAX
    PLA
    SEC
    RTS
; End of function sub_F5E3


; =============== S U B R O U T I N E =======================================


sub_F614:
    JSR wait_nmi_processed
    LDY #$E8
    STY pDist
    LDA #$DF
    STA byte_69
    LDY byte_6707

loc_F622:
    SEC
    LDA byte_69
    SBC #$10
    STA byte_69
    DEY
    BNE loc_F622
    LDA #0
    STA byte_66

loc_F630:
    JSR wait_nmi_processed
    LDY byte_66
    LDA $600,Y
    BEQ loc_F660
    LDA $611,Y
    AND #6
    EOR #6
    BEQ loc_F660
    LDX #2
    LDA $601,Y
    AND #$80
    BNE loc_F655
    LDX #1
    JSR sub_F673
    BCC loc_F655
    LDX #0

loc_F655:
    TXA
    JSR sub_F6AA
    CLC
    LDA pDist
    ADC #8
    STA pDist

loc_F660:
    CLC
    LDA byte_69
    ADC #$10
    STA byte_69
    CLC
    LDA byte_66
    ADC #$20
    STA byte_66
    CMP #$60
    BNE loc_F630
    RTS
; End of function sub_F614


; =============== S U B R O U T I N E =======================================


sub_F673:
    TYA
    PHA
    LDA $618,Y
    STA Pointer
    LDA $619,Y
    STA Pointer+1
    LDA $603,Y
    STA pTileID
    LDA $604,Y
    STA pTileID+1
    LDY #3
    LDA (Pointer),Y
    STA AddrForJmp
    INY
    LDA (Pointer),Y
    AND #3
    STA AddrForJmp+1
    LSR AddrForJmp+1
    ROR AddrForJmp
    LSR AddrForJmp+1
    ROR AddrForJmp
    PLA
    TAY
    SEC
    LDA pTileID
    SBC AddrForJmp
    LDA pTileID+1
    SBC AddrForJmp+1
    RTS
; End of function sub_F673


; =============== S U B R O U T I N E =======================================


sub_F6AA:
    PHA
    JSR wait_nmi_processed
    PLA
    JSR sub_F2AE
    TSX
    INC $BF,X
    INC $C8,X
    INC $F0,X
    INC $A9,X
    ORA ($85,X)
    SBC Pointer
    LDA #0
    LDX #$C
    LDY #$97
    JMP loc_F6F9
; ---------------------------------------------------------------------------
    LDX pDist
    LDA $300,X
    PHA
    LDA #3
    LDX #$C
    LDY #$97
    JSR loc_F6F9
    PLA
    CMP #3
    BEQ @exit
    LDX #4

loc_F6DE:
    TXA
    PHA
    LDA #0
    JSR sub_F724
    LDA #3
    JSR sub_F724
    PLA
    TAX
    DEX
    BNE loc_F6DE

@exit:
    RTS
; ---------------------------------------------------------------------------
    LDA #3
    LDX #$10
    LDY #$97
    JMP loc_F6F9
; ---------------------------------------------------------------------------

loc_F6F9:
    STX Pointer
    STY Pointer+1
    LDX pDist
    STA $300,X
    LDA #8
    STA $301,X
    LDA #$70
    STA $302,X
    LDA byte_69
    STA $303,X
    LDA #0
    STA $304,X
    STA $305,X
    LDA Pointer
    STA $306,X
    LDA Pointer+1
    STA $307,X
    RTS
; End of function sub_F6AA


; =============== S U B R O U T I N E =======================================


sub_F724:
    LDX pDist
    STA $300,X
    LDA #1
    STA NMIFlags
    LDX #8
    JMP delay
; End of function sub_F724

; =============== S U B R O U T I N E =======================================


sub_F760:
    LDA #1
    STA byte_5A
    RTS
; End of function sub_F760


; =============== S U B R O U T I N E =======================================


sub_F765:
    LDA #0
    STA byte_5A
    RTS
; End of function sub_F765


; =============== S U B R O U T I N E =======================================


sub_F76A:
    LDA byte_5A
    BEQ @exit
    JSR sub_F772

@exit:
    RTS
; End of function sub_F76A


; =============== S U B R O U T I N E =======================================


sub_F772:
    LDA byte_59
    BEQ @exit
    BIT FlagClearOAM300
    BVS @exit
    LDX #0
    LDA Gamepad0Buttons
    STX Gamepad0Buttons
    AND #$40
    BEQ @exit
    TXA
    STA byte_59
    STA byte_3E0
    LDA byte_3E1
    ASL A
    ASL A
    TAY
    LDA #$F0
    STA $200,Y
    STA $204,Y
    STA $208,Y
    STA $20C,Y

@exit:
    RTS
