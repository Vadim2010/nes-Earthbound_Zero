.include "ram.inc"
.include "..\res\sram.inc"
.include "palette.inc"

; ===========================================================================

; Segment type: Pure code
                ;.segment BANK13
                ;* =  $A000

; =============== S U B R O U T I N E =======================================

.segment "PRG_BANK_3"

.proc sub_13A000
    .export sub_13A000, loc_13A005
    .import sub_D9F1, get_sram_pointer, state, cursor_update, loc_EF7C, sub_C3F4
    .importzp Pointer, byte_29, pCursor, Buttons, CurrentFieldPosition, Column, Row

    LDA #5
    STA $7F1            ; byte_7F1

loc_13A005:
    LDA $761E
    STA Pointer
    LDY #$F0

loc_13A00C:
    LDA #$A5
    LSR Pointer
    BCC loc_13A014
    LDA #$96

loc_13A014:
    STA $600,Y          ; byte_600,Y
    INY
    CPY #$F8
    BCC loc_13A00C
    LDA #0
    STA $600,Y          ; byte_600,Y

loc_13A021:
    LDX #0

loc_13A023:
    JSR sub_D9F1
    BCS loc_13A084
    JSR get_sram_pointer ; Input: A -
                        ; Output: Pointer (word) = High $74 Low $40 * A
    TXA 
    PHA 
    LDY #$3F

loc_13A02F:
    LDA (Pointer),Y
    STA $600,Y          ; byte_600,Y
    DEY
    BPL loc_13A02F
    LDX #$80
    LDY #$28

loc_13A03B:
    LDA $600,Y          ; byte_600,Y
    STA byte_29
    JSR sub_13A08F
    INY
    CPY #$2C
    BCC loc_13A03B
    JSR state
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
    STX Column
    STY Row
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
.endproc            ; End of function sub_13A000


; =============== S U B R O U T I N E =======================================


.proc sub_13A08F
    .importzp Pointer, pTileID

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
    STA $600,X          ; byte_600,X
    INX
    INY
    CPY #$10
    BCC loc_13A0A5
    PLA
    TAY
    RTS
.endproc            ; End of function sub_13A08F


; =============== S U B R O U T I N E =======================================


.proc sub_13A0B3
    .import sub_DCCD, loc_C6DB
    .importzp pDist, byte_29, PointerTilePack

    LDX #$40

loc_13A0B5:
    STX pDist
    JSR sub_DCCD
    LDX pDist
    AND $600,Y          ; byte_600,Y
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
    STA $600,X          ; byte_600,X
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
.endproc            ; End of function sub_13A0B3

; ---------------------------------------------------------------------------
    .byte $20, $B, 3, $23, $38, 6, 0, 7, 0, $20, $13, 5, $23
    .byte $40, 6, 0, $B, 1, $23, $50, 6, 0, $B, 1, $23, $60
    .byte 6, 0, $B, 1, $23, $70, 6, 0, $B, 0, 2, 1, 9, 0, $C5
    .byte $3A, $A, 3, $D1, $F0

; =============== S U B R O U T I N E =======================================


.proc sub_13A123
    .export sub_13A123
    .import sub_CDE4, sub_C3F4, loc_13A445, loc_13ADC1
    .importzp byte_D1, byte_D2, byte_D3, byte_2C, Buttons, CurrentFieldPosition

    LDA #$80
    BIT byte_D3+1
    BNE locret_13A167
    LDX byte_D2
    LDY byte_D1
    CPX #6
    BCC locret_13A167
    CPY #$90
    BCC locret_13A167
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

locret_13A167:
    RTS
; ---------------------------------------------------------------------------

loc_13A168:
    LDX #$82
    JSR loc_13A445
    LDX #$84
    JSR loc_13A445
    JSR loc_13AB30
    JMP sub_C3F4
.endproc            ; End of function sub_13A123


; =============== S U B R O U T I N E =======================================


.proc sub_13A178
    .export sub_13A178
    .import sub_C26C, cursor_update, sub_C3F4, get_cursor_pos
    .importzp pCursor, Buttons, CurrentFieldPosition

    LDA #5
    STA $7F1            ; byte_7F1
    JSR sub_C26C
    LDA #$B0
    LDX #$A1            ; A1B0
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
.endproc            ; End of function sub_13A178

; ---------------------------------------------------------------------------
off_13A1A4:
    .import loc_13A005
    .word sub_13A1EA-1, sub_13A20F-1, sub_13A262-1, loc_13A005-1
    .word sub_13A238-1, sub_13A1BA-1
    .byte 2, 3, 6, 2, $C0, $3A, 2, 3
    .word $F0D1

; =============== S U B R O U T I N E =======================================


.proc sub_13A1BA
    .import bank_A000_a, sub_C3F4

    LDA #$19
    LDX #$6D
    LDY #$A3            ; BANK19:A36E
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    JMP sub_C3F4
.endproc            ; End of function sub_13A1BA


; =============== S U B R O U T I N E =======================================


.proc sub_13A1C6
    .export sub_13A1C6
    .import sub_E266, sub_C3F4
    .importzp byte_34

    JSR sub_E266
    BCS loc_13A1E4
    JSR sub_13A9C7
    BEQ locret_13A1E9
    ASL A
    ASL A
    BCC locret_13A1E9
    AND #$3C
    BEQ locret_13A1E9
    LDA #$35
    STA byte_34
    JSR sub_13AB0F
    BCS locret_13A1E9

loc_13A1E1:
    JMP sub_C3F4
; ---------------------------------------------------------------------------

loc_13A1E4:
    JSR sub_13AB48
    BCC loc_13A1E1

locret_13A1E9:
    RTS
.endproc            ; End of function sub_13A1C6


; =============== S U B R O U T I N E =======================================


.proc sub_13A1EA
    .import sub_E20F, sub_E2A2, loc_13A445, sub_C3F4
    .importzp byte_34

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
.endproc            ; End of function sub_13A1EA


; =============== S U B R O U T I N E =======================================


.proc sub_13A20F
    .import sub_E20F, sub_C3F4, loc_13A445
    .importzp byte_34

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
.endproc            ; End of function sub_13A20F


; =============== S U B R O U T I N E =======================================


.proc sub_13A238
    .import sub_C3F4, loc_13A90C
    .importzp Pointer, BankPPU_XC00, BankPPU_X000

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
.endproc            ; End of function sub_13A238


; =============== S U B R O U T I N E =======================================


.proc sub_13A262
    .export sub_13A262, loc_13A26A
    .import sub_C3F4, sub_C3C7, short_cursor_update, get_cursor_pos
    .importzp byte_29, pStr, pCursor, Buttons, CurrentFieldPosition

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
    LDX #$F0            ; ROM:F0D1

loc_13A285:
    STA pStr
    STX pStr+1
    LDA #$9A
    LDX #$A2            ; A29A
    STA pCursor
    STX pCursor+1
    JSR short_cursor_update
    BIT Buttons
    BMI loc_13A2A7
    BPL sub_13A262
; ---------------------------------------------------------------------------
    .byte 1, 5, 0, 2, $C0, $3A, $18, 7, 0, 0 ;CURSOR <1, 5, 0, 2, $C0, $3A, $18, 7, 0>
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
.endproc            ; End of function sub_13A262

; ---------------------------------------------------------------------------
off_13A2BC:
    .word sub_13A2C6-1, sub_13A37D-1, sub_13A315-1, sub_13A390-1, sub_13A3A9-1

; =============== S U B R O U T I N E =======================================


.proc sub_13A2C6
    .import loc_13A90C, loc_13A445
    .importzp Pointer, AddrForJmp, byte_28

    LDY #3
    LDA (Pointer),Y
    BNE loc_13A2F1
    LDY #2
    LDA (Pointer),Y
    AND #$3F
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
    STA $7F3            ; byte_7F3
    JMP loc_13A90C
; ---------------------------------------------------------------------------

loc_13A310:
    LDX #$1E
    JMP sub_13A909
.endproc            ; End of function sub_13A2C6


; =============== S U B R O U T I N E =======================================


.proc sub_13A315
    .import loc_13A26A
    .importzp byte_28, byte_29, BankPPU_X800

    LDX $6707            ; byte_6707
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
.endproc            ; End of function sub_13A315


; =============== S U B R O U T I N E =======================================


.proc sub_13A37D
    .import loc_13A90C
    .importzp Pointer

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
.endproc
; End of function sub_13A37D


; =============== S U B R O U T I N E =======================================


.proc sub_13A390
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
.endproc            ; End of function sub_13A390


; =============== S U B R O U T I N E =======================================


.proc sub_13A3A9
    .import loc_13AD1A, loc_13A90C
    .importzp PointerTilePack, byte_29, byte_73

    CLC
    LDA byte_29
    ADC #$E8
    STA PointerTilePack
    LDA #0
    ADC #3
    STA byte_73
    JSR loc_13AD1A
    JMP loc_13A90C
.endproc            ; End of function sub_13A3A9


; =============== S U B R O U T I N E =======================================


.proc sub_13A3BC
    .importzp Pointer

    LDY #4
    LDA (Pointer),Y
    ASL A
    TAX
    LDA off_13A3CB+1,X
    PHA
    LDA off_13A3CB,X
    PHA
    RTS
.endproc
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


.proc sub_13A427
    .import sub_E20F
    .importzp byte_34

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
.endproc            ; End of function sub_13A427


; =============== S U B R O U T I N E =======================================


.proc sub_13A43E
    .import loc_13A445

    LDX #$E
    JSR loc_13A445
.endproc            ; End of function sub_13A43E


; =============== S U B R O U T I N E =======================================


.proc sub_13A443
    .export sub_13A443, loc_13A445
    .import loc_13AD1A

    LDX #$2A

loc_13A445:
    JSR sub_13AA7C
    JMP loc_13AD1A
.endproc            ; End of function sub_13A443


; =============== S U B R O U T I N E =======================================


.proc sub_13A44B
    .import loc_13AD29

    JSR sub_13AA7C
    JMP loc_13AD29
.endproc            ; End of function sub_13A44B


; =============== S U B R O U T I N E =======================================


.proc sub_13A451
    .import sub_E20F
    .importzp byte_34

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
.endproc            ; End of function sub_13A451


; =============== S U B R O U T I N E =======================================


.proc sub_13A465
    .import sram_write_enable, sram_read_enable, loc_13A445

    JSR sub_13A990
    JSR sram_write_enable
    LDA #$A
    STA $7419       ;CurrentGame + GAME_SAVE::PureSave.field_19
    JSR sram_read_enable
    LDX #$16
    JMP loc_13A445
.endproc            ; End of function sub_13A465


; =============== S U B R O U T I N E =======================================


.proc sub_13A478
    .import sram_write_enable, sram_read_enable, loc_13A445
    .importzp FuncID, byte_20, BankPPU_X000

    JSR sub_13A990
    JSR sram_write_enable
    LDY #$2C

loc_13A480:
    LDA (BankPPU_X000),Y
    STA $73D8,Y
    INY 
    CPY #$30
    BCC loc_13A480
    JSR sram_read_enable
    LDA #$40
    STA byte_20
    LDA #1              ; sub_13BD0D
    STA FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    LDX #$48
    JMP loc_13A445
.endproc         ; End of function sub_13A478


; =============== S U B R O U T I N E =======================================


.proc sub_13A49A
    .import sram_write_enable, sram_read_enable, loc_13A445, loc_13A542
    .importzp Pointer, CurrentFieldPosition, byte_29, BankPPU_X000

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
    LDA $73D8,Y
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
.endproc
; End of function sub_13A49A


; =============== S U B R O U T I N E =======================================


.proc sub_13A4CF
    .import loc_13A542
    .importzp CurrentFieldPosition

    LDA CurrentFieldPosition
    BNE loc_13A4D6
    JMP sub_13A451
; ---------------------------------------------------------------------------

loc_13A4D6:
    LDA #$F
    JMP loc_13A542
.endproc            ; End of function sub_13A4CF


; =============== S U B R O U T I N E =======================================


.proc sub_13A4DB
    LDA #$1E
    JMP sub_13A63B
.endproc            ; End of function sub_13A4DB


; =============== S U B R O U T I N E =======================================


.proc sub_13A4E0
    LDA #$50
    JMP sub_13A63B
.endproc            ; End of function sub_13A4E0


; =============== S U B R O U T I N E =======================================


.proc sub_13A4E5
    .import loc_13A63E

    JSR sub_13A924
    JMP loc_13A63E
.endproc            ; End of function sub_13A4E5


; =============== S U B R O U T I N E =======================================


.proc sub_13A4EB
    LDA #$A
    JMP sub_13A53E
.endproc            ; End of function sub_13A4EB


; =============== S U B R O U T I N E =======================================


.proc sub_13A4F0
    .import loc_13A542

    LDA #$14
    JMP loc_13A542
.endproc            ; End of function sub_13A4F0


; =============== S U B R O U T I N E =======================================


.proc sub_13A4F5
    .import loc_13A542

    LDA #$1E
    JMP loc_13A542
.endproc            ; End of function sub_13A4F5


; =============== S U B R O U T I N E =======================================


.proc sub_13A4FA
    .import loc_13A542

    LDA #$3C
    JMP loc_13A542
.endproc            ; End of function sub_13A4FA


; =============== S U B R O U T I N E =======================================


.proc sub_13A4FF
    LDA #$64
    JMP sub_13A53E
.endproc            ; End of function sub_13A4FF


; =============== S U B R O U T I N E =======================================


.proc sub_13A504
    .import loc_13A54B

    JSR sub_13A924
    LDX #$16
    JMP loc_13A54B
.endproc            ; End of function sub_13A504


; =============== S U B R O U T I N E =======================================


sub_13A50C:
    .import loc_13A445, sram_write_enable, sram_read_enable

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
    DEC $741F   ; CurrentGame + GAME_SAVE::PureSave.field_1F
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
    .export sub_13A53E, loc_13A542, loc_13A54B
    .import loc_13A26A, loc_13A445
    .importzp PointerTilePack

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
    .import sram_write_enable, sram_read_enable, loc_13A445
    .importzp word_2A, BankPPU_X000

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
    STA $7F1            ; byte_7F1
    LDX word_2A+1
    JSR loc_13A445
    JMP sub_13BC04
; End of function sub_13A57A


; =============== S U B R O U T I N E =======================================


sub_13A5C5:
    .export sub_13A5C5, loc_13A5E2
    .import sram_write_enable, sram_read_enable, loc_13A445
    .importzp word_2A, BankPPU_X000, pTileID

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
    .import loc_13A445, sub_CCD8

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
    JMP sub_CCD8
; End of function sub_13A612


; =============== S U B R O U T I N E =======================================


sub_13A62C:
    .import loc_13A445

    LDA $761F   ; CurrentGame + GAME_SAVE::field_21F
    AND #2
    BEQ locret_13A63A
    PLA
    PLA
    LDX #$12
    JMP loc_13A445
; ---------------------------------------------------------------------------

locret_13A63A:
    RTS
; End of function sub_13A62C


; =============== S U B R O U T I N E =======================================


sub_13A63B:
    .export sub_13A63B, loc_13A63E
    .import loc_13A445

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
    .import loc_13A445
    .importzp word_2A

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


.proc sub_13A681
    .import sram_write_enable, sram_read_enable, loc_13A445

    LDY #$14
    JSR sub_13A6A5
    LDY #3
    JSR sub_13A6B4
    JSR sram_write_enable
    LDY #$14
    JSR sub_13A6D1
    JSR sram_read_enable
    LDA #7
    STA $7F1            ; byte_7F1
    LDX #$34
    JSR loc_13A445
    LDX #$30
    JMP sub_13A44B
.endproc            ; End of function sub_13A681


; =============== S U B R O U T I N E =======================================


.proc sub_13A6A5
    .importzp BankPPU_X000, word_2A, pTileID

    CLC
    LDA (BankPPU_X000),Y
    ADC word_2A
    STA pTileID
    INY
    LDA (BankPPU_X000),Y
    ADC word_2A+1
    STA pTileID+1
    RTS
.endproc            ; End of function sub_13A6A5


; =============== S U B R O U T I N E =======================================


.proc sub_13A6B4
    .importzp BankPPU_X000, pTileID, pDist, word_2A

    SEC
    LDA     (BankPPU_X000),Y
    SBC     pTileID
    STA     pDist
    INY
    LDA     (BankPPU_X000),Y
    SBC     pTileID+1
    STA     pDist+1
    BCS     locret_13A6D0
    LDA     word_2A
    ADC     pDist
    STA     word_2A
    LDA     word_2A+1
    ADC     pDist+1
    STA     word_2A+1

locret_13A6D0:
    RTS
.endproc            ; End of function sub_13A6B4


; =============== S U B R O U T I N E =======================================


.proc sub_13A6D1
    .importzp BankPPU_X000, word_2A

    CLC
    LDA (BankPPU_X000),Y
    ADC word_2A
    STA (BankPPU_X000),Y
    INY
    LDA (BankPPU_X000),Y
    ADC word_2A+1
    STA (BankPPU_X000),Y
    RTS
.endproc            ; End of function sub_13A6D1


; =============== S U B R O U T I N E =======================================


.proc sub_13A6E0
    .export sub_13A6E0, loc_13A6F0
    .import sub_D8D3, sub_D86C, loc_E2BF, mmc3_bank_set, sub_CDE4, sub_D977, sram_write_enable
    .importzp BankPPU_X000, Dist

    LDY #3
    LDA (BankPPU_X000),Y
    LDY #$14
    STA (BankPPU_X000),Y
    LDY #4
    LDA (BankPPU_X000),Y
    LDY #$15
    STA (BankPPU_X000),Y

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
    LDA $F6             ; BankTable + BANK_TABLE::CPU_8K_8000
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
.endproc            ; End of function sub_13A6E0


; =============== S U B R O U T I N E =======================================


.proc sub_13A728
    .importzp byte_28

    LDA byte_28
    LDX #0

loc_13A72C:
    CMP $7408,X   ; CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
    CLC
    BEQ locret_13A737
    INX
    CPX #4
    BCC loc_13A72C

locret_13A737:
    RTS
.endproc            ; End of function sub_13A728


; =============== S U B R O U T I N E =======================================


.proc sub_13A738
    LDA #2
    LDY #$5A
    JMP sub_13A661
.endproc            ; End of function sub_13A738


; =============== S U B R O U T I N E =======================================


.proc sub_13A73F
    LDA #$40
    LDY #$6C
    JMP sub_13A661
.endproc            ; End of function sub_13A73F


; =============== S U B R O U T I N E =======================================


.proc sub_13A746
    LDA #$80
    LDY #$14
    JMP sub_13A661
.endproc            ; End of function sub_13A746


; =============== S U B R O U T I N E =======================================


.proc sub_13A74D
    LDA #2
    LDX #$2E
    LDY #$5A
    JMP sub_13A57A
.endproc            ; End of function sub_13A74D


; =============== S U B R O U T I N E =======================================


.proc sub_13A756
    LDA #1
    LDX #$16
    LDY #$5C
    JMP sub_13A57A
.endproc            ; End of function sub_13A756


; =============== S U B R O U T I N E =======================================


.proc sub_13A75F
    .import loc_13A445, sram_write_enable, sram_read_enable, sub_F1ED

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
.endproc            ; End of function sub_13A75F


; =============== S U B R O U T I N E =======================================


.proc sub_13A79A
    .import loc_13A445, loc_13A5E2

    LDX #$4A
    JSR loc_13A445
    JSR sub_13A990
    LDY #$F
    JMP loc_13A5E2
.endproc            ; End of function sub_13A79A


; =============== S U B R O U T I N E =======================================


.proc sub_13A7A7
    .import loc_13A445, loc_13A5E2

    LDX #$2C
    JSR loc_13A445
    JSR sub_13A990
    LDY #$B
    JMP loc_13A5E2
.endproc            ; End of function sub_13A7A7


; =============== S U B R O U T I N E =======================================


.proc sub_13A7B4
    LDX #$2E
    LDY #$C
    JMP sub_13A5C5
.endproc            ; End of function sub_13A7B4


; =============== S U B R O U T I N E =======================================


.proc sub_13A7BB
    LDX #$2E
    LDY #$D
    JMP sub_13A5C5
.endproc            ; End of function sub_13A7BB


; =============== S U B R O U T I N E =======================================


.proc sub_13A7C2
    LDX #$2E
    LDY #$E
    JMP sub_13A5C5
.endproc            ; End of function sub_13A7C2


; =============== S U B R O U T I N E =======================================


.proc sub_13A7C9
    LDX #$2E
    LDY #$F
    JMP sub_13A5C5
.endproc            ; End of function sub_13A7C9


; =============== S U B R O U T I N E =======================================


.proc sub_13A7D0
    LDX #$2E
    LDY #$B
    JMP sub_13A5C5
.endproc            ; End of function sub_13A7D0


; =============== S U B R O U T I N E =======================================


.proc sub_13A7D7
    .import sram_write_enable, sub_D9FA, loc_D8CE, loc_13A445
    .importzp FuncID, byte_20

    JSR sub_13A62C
    LDA $761C   ; CurrentGame + GAME_SAVE::field_21C
    BPL loc_13A7E2
    JMP sub_13A443
; ---------------------------------------------------------------------------

loc_13A7E2:
    JSR sram_write_enable
    LDX #3

loc_13A7E7:
    LDA byte_13A803,X
    STA $7404, X   ; CurrentGame + GAME_SAVE::PureSave.GlobalX,X
    DEX
    BPL loc_13A7E7
    JSR sub_D9FA
    JSR loc_D8CE
    LDA #2              ; check_copyright
    STA FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    LDA #$40
    STA byte_20
    LDX #$16
    JMP loc_13A445
.endproc            ; End of function sub_13A7D7

; ---------------------------------------------------------------------------
byte_13A803:
   .byte $49, $9E, $44, $A8

; =============== S U B R O U T I N E =======================================


.proc sub_13A807
    .import loc_13A445

    LDX #$62
    JMP loc_13A445
.endproc            ; End of function sub_13A807


; =============== S U B R O U T I N E =======================================


.proc sub_13A80C
    .import loc_13A445

    LDX #$64
    JMP loc_13A445
.endproc            ; End of function sub_13A80C


; =============== S U B R O U T I N E =======================================


.proc sub_13A811
    .import loc_13A445

    LDX #$74
    JMP loc_13A445
.endproc            ; End of function sub_13A811


; =============== S U B R O U T I N E =======================================


.proc sub_13A816
    .import loc_13A445, sub_CDE4

    LDX #$70
    JSR loc_13A445
    LDA #1
    JSR sub_CDE4
    LDX #$72
    JMP loc_13A445
.endproc            ; End of function sub_13A816


; =============== S U B R O U T I N E =======================================


.proc sub_13A825
    .import loc_13A445, loc_13A834

    PLA
    PLA
    LDX #$78
    JSR loc_13A445
    JMP loc_13A834
.endproc            ; End of function sub_13A825


; =============== S U B R O U T I N E =======================================


.proc sub_13A82F
    .export sub_13A82F, loc_13A834
    .import clear_oam_sprite, set_camera, mmc3_bank_set, sub_CE6D, set_ppu_banks, copy_palettes
    .import wait_frames, wait_nmi_processed, darken_color, restore_palettes, draw_screen
    .importzp MapSectorID, MaskPPU, Gamepad0Buttons

    LDA #5
    STA $7F1            ; byte_7F1

loc_13A834:
    LDA MapSectorID
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
    LDX #$A8            ; A8E3
    JSR set_ppu_banks   ; set 6 memory banks for PPU
                        ; pPPUTable = XA address (X - high and A - low byte)
                        ;
                        ; |PPU address | PPUTable offset | Size |
                        ; |-------------------------------------|
                        ; |   $1000    |        0        |  2K  |
                        ; |-------------------------------------|
                        ; |   $1800    |        1        |  2K  |
                        ; |-------------------------------------|
                        ; |   $0000    |        2        |  1K  |
                        ; |-------------------------------------|
                        ; |   $0400    |        3        |  1K  |
                        ; |-------------------------------------|
                        ; |   $0800    |        4        |  1K  |
                        ; |-------------------------------------|
                        ; |   $0C00    |        5        |  1K  |
                        ; ---------------------------------------
    LDA #$DF
    STA $201        ; OAM + OAM_TILE::TileID
    LDA #0
    STA $202        ; OAM + OAM_TILE::Attr
    LDX #$40
    LDA $6785       ; byte_6785
    JSR sub_13A8D4
    SBC #8
    STA $203        ; OAM + OAM_TILE::PosX
    LDX #$80
    LDA $6787       ; byte_6787
    JSR sub_13A8D4
    SBC #$21
    STA $200        ; OAM + OAM_TILE::PosY
    LDA #$E9
    LDX #$A8            ; A8E9
    JSR copy_palettes
    LDA #0
    STA Gamepad0Buttons

loc_13A899:
    LDX #8
    JSR wait_frames     ; wait for a few frames
                        ; input: X - number of frames
    LDA #$DF
    EOR $201        ; OAM + OAM_TILE::TileID
    STA $201        ; OAM + OAM_TILE::TileID
    BIT Gamepad0Buttons
    BVC loc_13A899
    LDA #0
    STA Gamepad0Buttons
    LDA #$F0
    STA $200        ; OAM + OAM_TILE::PosY
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
    STA DMCflag
    JSR clear_oam_sprite
    JMP draw_screen
.endproc            ; End of function sub_13A82F


; =============== S U B R O U T I N E =======================================


.proc sub_13A8D4
    SEC
    BPL @exit
    TAY
    TXA
    ORA $202        ; OAM + OAM_TILE::Attr
    STA $202        ; OAM + OAM_TILE::Attr
    TYA
    SBC #7

@exit:
    RTS
.endproc            ; End of function sub_13A8D4

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


.proc sub_13A909
    .export sub_13A909, loc_13A90C
    .import loc_13A445, sub_C3F4

    JSR loc_13A445

loc_13A90C:
    JSR loc_13AB30
    JMP sub_C3F4
.endproc            ; End of function sub_13A909


; =============== S U B R O U T I N E =======================================


.proc sub_13A912
    .import sub_F2ED
    .importzp Pointer, word_2A

    STA Pointer
    LDA #0
    STA Pointer+1
    JSR sub_F2ED
    LDA Pointer
    STA word_2A
    LDA Pointer+1
    STA word_2A+1
    RTS
.endproc
; End of function sub_13A912


; =============== S U B R O U T I N E =======================================


.proc sub_13A924
    .importzp word_2A

    LDA #$E8
    LDX #3
    STA word_2A
    STX word_2A+1
    RTS
.endproc            ; End of function sub_13A924


; =============== S U B R O U T I N E =======================================


.proc sub_13A92D
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, pTileID, BankPPU_X000, BankPPU_X400

    JSR sram_write_enable
    JSR sub_13A964
    LDA #4
    STA $6D20               ; byte_6D20
    CLC
    LDA BankPPU_X000
    ADC #$38
    STA $6D21               ; byte_6D21
    LDA BankPPU_X400
    ADC #0
    STA $6D22               ; byte_6D22
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
    STA $6D24,Y             ; unk_6D24,Y
    INY
    CMP #0
    BNE loc_13A957
    JMP sram_read_enable
.endproc
; End of function sub_13A92D


; =============== S U B R O U T I N E =======================================


.proc sub_13A964
    .import get_sram_pointer
    .importzp Pointer, byte_28, BankPPU_X000, BankPPU_X400

    LDA byte_28
    JSR get_sram_pointer ; Input: A -
                        ; Output: Pointer (word) = High $74 Low $40 * A
    LDA Pointer
    STA BankPPU_X000
    LDA Pointer+1
    STA BankPPU_X400
    RTS
.endproc
; End of function sub_13A964


; =============== S U B R O U T I N E =======================================


.proc sub_13A972
    .importzp BankPPU_X000

    LDY #1
    LDA (BankPPU_X000),Y
    AND #$F0
    RTS
.endproc            ; End of function sub_13A972


; =============== S U B R O U T I N E =======================================


sub_13A979:
    .export sub_13A979
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, byte_29

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
    .import sram_write_enable, sram_read_enable
    .importzp byte_29

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


.proc sub_13A9A3
    .importzp byte_28, BankPPU_X800

    LDA byte_28
    PHA
    LDA BankPPU_X800
    STA byte_28
    JSR sub_13A990
    PLA
    STA byte_28
    RTS
.endproc            ; End of function sub_13A9A3


; =============== S U B R O U T I N E =======================================


.proc sub_13A9B1
    .import sram_write_enable, sram_read_enable
    .importzp BankPPU_X000, BankPPU_XC00

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
.endproc            ; End of function sub_13A9B1


; =============== S U B R O U T I N E =======================================


.proc sub_13A9C7
    .importzp Dist

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
.endproc            ; End of function sub_13A9C7


; =============== S U B R O U T I N E =======================================


.proc sub_13A9D6
    .import sub_E772, byte_EC5D, loc_E2C2, loc_13A445, sub_D9F1
    .importzp Source, byte_28, byte_29

    JSR sub_13AB3E
    JSR sub_E772
    AND byte_EC5D,X
    BNE loc_13A9FD
    LDA #4
    JSR loc_E2C2
    LDX #$66
    JSR loc_13A445
    LDA #$A
    STA $7F1            ; byte_7F1
    LDY #6
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
    STA $7F1            ; byte_7F1
    JMP loc_13AB30
.endproc            ; End of function sub_13A9D6


; =============== S U B R O U T I N E =======================================


.proc sub_13AA3F
    .import sram_write_enable, sub_E772, byte_EC5D, sram_read_enable

    JSR sram_write_enable
    JSR sub_E772
    ORA byte_EC5D,X
    STA $7620,Y       ; CurrentGame + GAME_SAVE::field_220,Y
    JMP sram_read_enable
.endproc            ; End of function sub_13AA3F


; =============== S U B R O U T I N E =======================================


.proc sub_13AA4E
    .importzp byte_28, byte_73, BankPPU_X800, PointerTilePack

    LDA byte_28
    STA BankPPU_X800
    LDA $6707            ; byte_6707
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
.endproc            ; End of function sub_13AA4E

; ---------------------------------------------------------------------------
byte_13AA74:
    .byte 0, 1, 2, 4, 8, $10, $20, $20

; =============== S U B R O U T I N E =======================================


.proc sub_13AA7C
    .importzp PointerTilePack, byte_73

    LDA word_13AA87,X
    STA PointerTilePack
    LDA word_13AA87+1,X
    STA byte_73
    RTS
.endproc            ; End of function sub_13AA7C

; ---------------------------------------------------------------------------
word_13AA87:
    .word 0, $385, $386, $387, 0, $3D7, $3DB, $6C7, $6C8, $6D0
    .word $6C9, $38E, $38F, $390, $391, $392, $393, $394, $395
    .word $396, $397, $398, $6AF, $6B0, $6B1, $6B2, $6B3, $6B4
    .word $6B5, $6B6, $6B7, $6B8, $6B9, $6BA, $6BB, $6BC, $6BD
    .word $6BE, $6A7, $6A8, $6A5, $6AA, $6A9, $6C1, $6A6, $6C3
    .word $6C4, $6C5, $6C6, $6BF, $6C0, $399, $39A, $39B, $6CB
    .word $39D, $6CC, $6CD, $6CA, $3A1, $6CF, $6CE, $14, $16
    .word $338, $18, $21, $1B

; =============== S U B R O U T I N E =======================================


.proc sub_13AB0F
    .export sub_13AB0F, loc_13AB19, loc_13AB23, loc_13AB30
    .import sub_E266, wait_press_button
    .importzp Dist, Source, byte_21, byte_2C, byte_34

    JSR sub_13AB3E
    LDY #$14
    LDA (Dist),Y
    AND #$F
    TAY

loc_13AB19:
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
    JMP wait_press_button
; ---------------------------------------------------------------------------

loc_13AB3C:
    SEC
    RTS
.endproc            ; End of function sub_13AB0F


; =============== S U B R O U T I N E =======================================


.proc sub_13AB3E
    .export sub_13AB3E, load_msg_bank
    .import sub_E655, set_msg_bank
    .importzp Dist

    JSR sub_E655

load_msg_bank:
    LDY #1
    LDA (Dist),Y        ; get msg number
    JMP set_msg_bank
.endproc        ; End of function sub_13AB3E


; =============== S U B R O U T I N E =======================================


.proc sub_13AB48
    .import loc_13AB19
    .importzp Dist

    JSR sub_13AB3E
    LDY #$1C
    LDA (Dist),Y
    TAY
    JMP loc_13AB19
.endproc            ; End of function sub_13AB48


; =============== S U B R O U T I N E =======================================


.proc sub_13AB53
    .export sub_13AB53
    .import sub_E266, loc_13AB19
    .importzp byte_35

    JSR sub_E266
    JSR sub_13AB3E
    LDY byte_35
    JMP loc_13AB19
.endproc            ; End of function sub_13AB53


; =============== S U B R O U T I N E =======================================


.proc sub_13AB5E
    ASL A
    TAX
    LDA off_13AB69+1,X
    PHA
    LDA off_13AB69,X
    PHA
    RTS
.endproc            ; End of function sub_13AB5E

; ---------------------------------------------------------------------------
off_13AB69:
    .import loc_13AB30, loc_13AFB8
    .import loc_13AFDC, loc_13AFEA, loc_13AFF5, loc_13B00C
    .import loc_13B64A

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


.proc infinite_loop
    JMP infinite_loop
.endproc; End of function infinite_loop


; =============== S U B R O U T I N E =======================================


.proc sub_13AC44
    .import sub_C6D2
    .importzp PointerTilePack

    STA PointerTilePack
    STX PointerTilePack+1
    JMP sub_C6D2
.endproc            ; End of function sub_13AC44


; =============== S U B R O U T I N E =======================================


.proc sub_13AC4B
    .import loc_13AB30, darken_palette, reset

    JSR loc_13AB30
    JSR darken_palette
    JMP reset
.endproc            ; End of function sub_13AC4B


; =============== S U B R O U T I N E =======================================


.proc sub_13AC54
    INY
    INY
    RTS
.endproc            ; End of function sub_13AC54


; =============== S U B R O U T I N E =======================================


.proc sub_13AC57
    .importzp Source, byte_21

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    CLC
    ADC #4
    STA byte_21
    INY
    RTS
.endproc            ; End of function sub_13AC57


; =============== S U B R O U T I N E =======================================


.proc sub_13AC61
    .import loc_13AC6D
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    CLC
    ADC #$C0
    JMP loc_13AC6D
.endproc            ; End of function sub_13AC61


; =============== S U B R O U T I N E =======================================


sub_13AC6A:
    .export sub_13AC6A, loc_13AC6D
    .importzp Source, byte_29, byte_34

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3

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
    .export sub_13AC7A, loc_13AC7E, loc_13AC82

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
    .importzp Source

    BEQ loc_13AC77

loc_13AC88:
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    TAY
    RTS
; End of function sub_13AC86


; =============== S U B R O U T I N E =======================================


.proc sub_13AC8D
    .import loc_13AB19
    .importzp Source, byte_35

    LDA Source          ; byte_109EAB, byte_109EB3
    PHA
    LDA Source+1        ; byte_109EAB, byte_109EB3
    PHA
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    PHA
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    PHA
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA byte_35
    INY
    PLA
    STA Source+1        ; byte_109EAB, byte_109EB3
    PLA
    STA Source          ; byte_109EAB, byte_109EB3
    TYA
    PHA
    LDY byte_35
    JSR loc_13AB19
    PLA
    TAY
    PLA
    STA Source+1        ; byte_109EAB, byte_109EB3
    PLA
    STA Source          ; byte_109EAB, byte_109EB3
    RTS
.endproc            ; End of function sub_13AC8D


; =============== S U B R O U T I N E =======================================


.proc return
    PLA
    PLA
    RTS
.endproc            ; End of function return


; =============== S U B R O U T I N E =======================================


.proc sub_13ACBA
    .import store_palettes, one_frame, mmc3_bank_set, back_palettes, wait_frames
    .importzp Source, CHRBank, BankNum0, BankNum1

    LDA $7404       ; CurrentGame + GAME_SAVE::PureSave.GlobalX
    AND #$3F
    CMP #$24
    BCC loc_13AD05
    CMP #$2C
    BCS loc_13AD05
    JSR store_palettes
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    TAX
    INY
    JMP wait_frames     ; wait for a few frames
.endproc            ; End of function sub_13ACBA            ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13AD0D:
    .export sub_13AD0D, loc_13AD1A
    .importzp Source, PointerTilePack, byte_2C, byte_35, byte_73

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA PointerTilePack
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
    .export sub_13AD27, loc_13AD29
    .import text2stack, print_string, move_chars, load_msg_bank, loc_13ADC5
    .importzp Row, PointerTilePack, byte_2C, byte_2D, byte_35, byte_70, byte_71, byte_73

    STA byte_2C

loc_13AD29:
    LDY Row
    CPY #$1B
    BCC loc_13AD36
    JSR sub_13AD98
    DEC byte_2D
    BMI loc_13AD84

loc_13AD36:
    LDA byte_2D
    BNE loc_13AD40
    LDY Row
    CPY #$19
    BCS loc_13AD84

loc_13AD40:
    JSR text2stack
    LDA #$16
    STA byte_70
    LDA #0
    STA byte_71
    JSR print_string
    JSR move_chars      ; Move $A4 chars from $432-4D6 to $45B-4FF
    CMP #0
    BEQ loc_13AD61
    LDY #0
    LDA (PointerTilePack),Y
    CMP #3
    BEQ loc_13AD75
    CMP #0
    BNE loc_13AD29

loc_13AD61:
    JSR load_msg_bank
    LDA #0
    STA byte_70
    STA byte_71
    LDY byte_35

loc_13AD6C:
    SEC
    LDA Row
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
    LDY Row
    CPY #$1B
    BCC loc_13AD84
    JSR sub_13AD98

loc_13AD84:
    JSR loc_13AD6C
    LDA #$91
    LDX #$AD            ; AD91
    JSR loc_13ADC5
    JMP loc_13AD40
; End of function sub_13AD27

; ---------------------------------------------------------------------------
    .byte 1, 1, 0, 0, $C0, $3B, $12

; =============== S U B R O U T I N E =======================================


.proc sub_13AD98
    .import sub_C7C1
    .importzp Row

    LDX #4
    JSR sub_C7C1
    DEC Row
    DEC Row
    RTS
.endproc            ; End of function sub_13AD98


; =============== S U B R O U T I N E =======================================


.proc sub_13ADA2
    .importzp CurrentFieldPosition, byte_35

    STY byte_35
    JSR sub_13ADAE
    LDY byte_35
    LDA CurrentFieldPosition
    JMP sub_13AC86
.endproc            ; End of function sub_13ADA2


; =============== S U B R O U T I N E =======================================


.proc sub_13ADAE
    .export sub_13ADAE, loc_13ADC1, loc_13ADC5
    .import loc_EF4B
    .importzp PointerTilePack, pCursor, pStr, Column, byte_73

    LDA #$DF
    LDX #$AD            ; ADDF
    STA PointerTilePack
    STX byte_73
    LDA #9
    JSR sub_13AD27
    LDA #$EC            ; ADEC
    LDX #$AD
    BNE loc_13ADC5

loc_13ADC1:
    LDA #$F3
    LDX #$AD            ; ADF3

loc_13ADC5:
    STA pCursor
    STX pCursor+1
    LDY #6
    LDA (pCursor),Y
    STA Column
    LDA #$D1
    LDX #$F0            ; ROM:F0D1
    STA pStr
    STX pStr+1
    JSR loc_EF4B
    LDA #8
    STA Column
    RTS
.endproc            ; End of function sub_13ADAE

; ---------------------------------------------------------------------------
    .byte $A0, $A0, $A0, $A0, $D9, $E5, $F3, $A0, $A0, $CE
    .byte $EF, $A0, 0
    .byte 2, 1, 5, 0, $80, $3A, $B
    .byte 2, 1, 9, 0, $C0, $3A, 9

; =============== S U B R O U T I N E =======================================


.proc sub_13ADFA
    .import loc_13ADC1
    .importzp Source, Buttons, CurrentFieldPosition, PointerTilePack, byte_35, byte_73

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA PointerTilePack
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    TAY
    RTS
; ---------------------------------------------------------------------------

loc_13AE20:
    JMP loc_13AC88
.endproc            ; End of function sub_13ADFA


; =============== S U B R O U T I N E =======================================


.proc sub_13AE23
    .import sram_write_enable, byte_EC5D, sram_read_enable
    .importzp byte_35

    JSR sram_write_enable
    JSR sub_13AE58
    ORA byte_EC5D,X
    STA $7600,Y       ; CurrentGame + GAME_SAVE::field_200,Y
    LDY byte_35
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13AE23


; =============== S U B R O U T I N E =======================================


.proc sub_13AE35
    .import sram_write_enable, byte_EC5D, sram_read_enable
    .importzp byte_35

    JSR sram_write_enable
    JSR sub_13AE58
    ORA byte_EC5D,X
    EOR byte_EC5D,X
    STA $7600,Y       ; CurrentGame + GAME_SAVE::field_200,Y
    LDY byte_35
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13AE35


; =============== S U B R O U T I N E =======================================


.proc sub_13AE4A
    .import byte_EC5D
    .importzp byte_35

    JSR sub_13AE58
    LDY byte_35
    AND byte_EC5D,X
    EOR byte_EC5D,X
    JMP sub_13AC86
.endproc            ; End of function sub_13AE4A


; =============== S U B R O U T I N E =======================================


.proc sub_13AE58
    .import loc_E646
    .importzp byte_35

    INY
    STY byte_35
    JMP loc_E646
.endproc            ; End of function sub_13AE58


; =============== S U B R O U T I N E =======================================


.proc sub_13AE5E
    .import sram_write_enable, sram_read_enable
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    TAX
    INY
    JSR sram_write_enable
    INC $7660,X     ; CurrentGame + GAME_SAVE::field_260,X
    JMP sram_read_enable
.endproc            ; End of function sub_13AE5E


; =============== S U B R O U T I N E =======================================


.proc sub_13AE6C
    .import sram_write_enable, sram_read_enable
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    TAX
    INY
    JSR sram_write_enable
    DEC $7660,X     ; CurrentGame + GAME_SAVE::field_260,X
    JMP sram_read_enable
.endproc            ; End of function sub_13AE6C


; =============== S U B R O U T I N E =======================================


.proc sub_13AE7A
    .import sram_write_enable, sram_read_enable
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    TAX
    INY
    JSR sram_write_enable
    LDA #0
    STA $7660,X     ; CurrentGame + GAME_SAVE::field_260,X
    JMP sram_read_enable
.endproc            ; End of function sub_13AE7A


; =============== S U B R O U T I N E =======================================


.proc sub_13AE8A
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    TAX
    INY
    LDA $7660,X         ;CurrentGame + GAME_SAVE::field_260,X
    CMP (Source),Y      ; byte_109EAB, byte_109EB3
    JMP sub_13AC7A
.endproc            ; End of function sub_13AE8A


; =============== S U B R O U T I N E =======================================


.proc sub_13AE97
    .importzp byte_35

    JSR sub_13B032
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13AE97


; =============== S U B R O U T I N E =======================================


.proc sub_13AE9E
    .importzp Source, word_2A

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA word_2A
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA word_2A+1
    INY
    RTS
.endproc            ; End of function sub_13AE9E


; =============== S U B R O U T I N E =======================================


.proc sub_13AEAA
    .importzp word_2A

    LDA $7410           ; CurrentGame + GAME_SAVE::PureSave.cash
    STA word_2A
    LDA $7411           ; CurrentGame + GAME_SAVE::PureSave.cash+1
    STA word_2A+1
    INY
    RTS
.endproc            ; End of function sub_13AEAA


; =============== S U B R O U T I N E =======================================


.proc sub_13AEB6
    .importzp byte_35

    JSR sub_13AFC4
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13AEB6


; =============== S U B R O U T I N E =======================================


.proc sub_13AEBD
    .importzp Source, byte_28

    INY
    LDA byte_28
    CMP (Source),Y      ; byte_109EAB, byte_109EB3
    JMP sub_13AC86
.endproc            ; End of function sub_13AEBD


; =============== S U B R O U T I N E =======================================


.proc sub_13AEC5
    .importzp Source, word_2A

    SEC
    INY
    LDA word_2A
    SBC (Source),Y      ; byte_109EAB, byte_109EB3
    INY
    LDA word_2A+1
    SBC (Source),Y      ; byte_109EAB, byte_109EB3
    JMP sub_13AC7A
.endproc            ; End of function sub_13AEC5


; =============== S U B R O U T I N E =======================================


.proc sub_13AED3
    .importzp Source, byte_29

    INY
    LDA byte_29
    CMP (Source),Y      ; byte_109EAB, byte_109EB3
    JMP sub_13AC86
.endproc            ; End of function sub_13AED3


; =============== S U B R O U T I N E =======================================


sub_13AEDB:
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, word_2A

    CLC
    LDA $7410       ; CurrentGame + GAME_SAVE::PureSave.cash
    ADC word_2A
    STA Pointer
    LDA $7411       ; CurrentGame + GAME_SAVE::PureSave.cash+1
    ADC word_2A+1
    STA Pointer+1
    BCS loc_13AF12
    BCC loc_13AEFF

loc_13AEEE:
    SEC
    LDA $7410       ; CurrentGame + GAME_SAVE::PureSave.cash
    SBC word_2A
    STA Pointer
    LDA $7411       ; CurrentGame + GAME_SAVE::PureSave.cash+1
    SBC word_2A+1
    STA Pointer+1
    BCC loc_13AF12

loc_13AEFF:
    JSR sram_write_enable
    LDA Pointer
    STA $7410       ; CurrentGame + GAME_SAVE::PureSave.cash
    LDA Pointer+1
    STA $7411       ; CurrentGame + GAME_SAVE::PureSave.cash+1
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
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, AddrForJmp, word_2A

    CLC
    LDA $7412           ; CurrentGame + GAME_SAVE::PureSave.field_12
    ADC word_2A
    STA Pointer
    LDA $7413           ; CurrentGame + GAME_SAVE::PureSave.field_12+1
    ADC word_2A+1
    STA Pointer+1
    LDA $7414           ; CurrentGame + GAME_SAVE::PureSave.field_14
    ADC #0
    STA AddrForJmp
    BCS loc_13AF12
    BCC loc_13AF47

loc_13AF2F:
    SEC
    LDA $7412           ; CurrentGame + GAME_SAVE::PureSave.field_12
    SBC word_2A
    STA Pointer
    LDA $7413           ; CurrentGame + GAME_SAVE::PureSave.field_12+1
    SBC word_2A+1
    STA Pointer+1
    LDA $7414           ; CurrentGame + GAME_SAVE::PureSave.field_14
    SBC #0
    STA AddrForJmp
    BCC loc_13AF12

loc_13AF47:
    JSR sram_write_enable
    LDA Pointer
    STA $7412           ; CurrentGame + GAME_SAVE::PureSave.field_12
    LDA Pointer+1
    STA $7413           ; CurrentGame + GAME_SAVE::PureSave.field_12+1
    LDA AddrForJmp
    STA $7414           ; CurrentGame + GAME_SAVE::PureSave.field_14
    INY
    INY
    JMP sram_read_enable
; End of function sub_13AF15


; =============== S U B R O U T I N E =======================================


.proc sub_13AF5E
    .import get_offset, sub_F13D
    .importzp Source, pTileID, Pointer, AddrForJmp, byte_35, word_2A

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA pTileID
    STY byte_35
    LDA word_2A
    STA Pointer
    LDA word_2A+1
    STA Pointer+1
    JSR get_offset      ; Input: Pointer - first multiplier
                        ;        pTileID - second multiplier
                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
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
.endproc ; End of function sub_13AF5E


; =============== S U B R O U T I N E =======================================


.proc sub_13AF87
    .importzp word_2A

    LDA #$FF
    STA word_2A
    STA word_2A+1
    RTS
.endproc            ; End of function sub_13AF87


; =============== S U B R O U T I N E =======================================


.proc sub_13AF8E
    .import sub_D9F1
    .importzp byte_28, byte_29

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
.endproc            ; End of function sub_13AF8E


; =============== S U B R O U T I N E =======================================


.proc sub_13AFAC
    .export sub_13AFAC, loc_13AFB8
    .importzp byte_29

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
.endproc            ; End of function sub_13AFAC


; =============== S U B R O U T I N E =======================================


.proc sub_13AFC4
    .importzp Source, byte_29, byte_35


    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA byte_29
    STY byte_35
    JSR sub_13BBC3
    JMP sub_13BB8C
.endproc            ; End of function sub_13AFC4


; =============== S U B R O U T I N E =======================================


.proc sub_13AFD1
    .export sub_13AFD1, loc_13AFDC, loc_13AFEA, loc_13AFF5, loc_13B00C
    .import load_msg_bank, sram_write_enable, sram_read_enable, loc_13B07E
    .importzp Pointer, byte_35, byte_29

    STY byte_35
    LDA #0
    JSR sub_13B058
    BCS sub_13B023
    BCC loc_13AFFE

loc_13AFDC:
    STY byte_35
    JSR sub_13B0A3
    PHP
    JSR load_msg_bank
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
    STY     byte_35
    LDA     byte_29
    JSR     sub_13B063
    BCS     sub_13B023

loc_13B015:
    JSR     sram_write_enable
    JSR     loc_13B07E
    JSR     sram_read_enable
.endproc            ; End of function sub_13AFD1


; =============== S U B R O U T I N E =======================================


.proc sub_13B01E
    .importzp byte_35

    LDY byte_35
    INY
    INY
    RTS
.endproc            ; End of function sub_13B01E


; =============== S U B R O U T I N E =======================================


.proc sub_13B023
    .importzp byte_35

    LDY byte_35
    JMP loc_13AC88
.endproc            ; End of function sub_13B023


; =============== S U B R O U T I N E =======================================


.proc sub_13B028
    JSR sub_13B032
    JSR sub_13A728
    BCC sub_13B01E
    BCS sub_13B023
.endproc            ; End of function sub_13B028


; =============== S U B R O U T I N E =======================================


.proc sub_13B032
    .importzp Source, byte_28, byte_35

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA byte_28
    STY byte_35
    JMP sub_13BB6F
.endproc            ; End of function sub_13B032


; =============== S U B R O U T I N E =======================================


.proc sub_13B03C
    .importzp Source, byte_35, byte_28, byte_29, Pointer

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
.endproc            ; End of function sub_13B03C


; =============== S U B R O U T I N E =======================================


sub_13B058:
    .importzp byte_28

    PHA
    LDA byte_28
    JSR sub_13B089
    PLA
    LDY #8
    BNE loc_13B068
; End of function sub_13B058


; =============== S U B R O U T I N E =======================================


sub_13B063:
    .export sub_13B063, loc_13B07E
    .importzp Pointer, pTileID

    JSR sub_13B09A
    LDY #$50

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


.proc sub_13B089
    .import get_sram_pointer
    .importzp Pointer

    JSR get_sram_pointer ; Input: A -
                        ; Output: Pointer (word) = High $74 Low $40 * A
    CLC
    LDA Pointer
    ADC #$20
    STA Pointer
    LDA Pointer+1
    ADC #0
    STA Pointer+1
    RTS
.endproc            ; End of function sub_13B089


; =============== S U B R O U T I N E =======================================


.proc sub_13B09A
    .importzp Pointer

    LDX #$B0
    STX Pointer         ; ROM:76B0
    LDX #$76
    STX Pointer+1
    RTS
.endproc            ; End of function sub_13B09A


; =============== S U B R O U T I N E =======================================


.proc sub_13B0A3
    .importzp Pointer

    JSR sub_13BBDF
    LDY #2
    LDA (Pointer),Y
    AND #$80
    RTS
.endproc            ; End of function sub_13B0A3


; =============== S U B R O U T I N E =======================================


sub_13B0AD:
    .importzp Column, Row, byte_2C, byte_35

    LDA #$18
    STA byte_2C
    LDA Column
    PHA
    LDA Row
    PHA
    STY byte_35
    JSR sub_13B763
    PLA
    STA Row
    PLA
    STA Column
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
    .importzp Source, byte_28, byte_35

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STY byte_35
    TAX
    CPX #4
    BCS loc_13B0CC
    LDA $7408,X         ; CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
    BEQ loc_13B0CC
    STA byte_28
    BNE loc_13B0C4
; End of function sub_13B0D1


; =============== S U B R O U T I N E =======================================


.proc sub_13B0E4
    .import loc_EF7C, get_cursor_pos, sub_F1A4, loc_13B1A5
    .importzp Pointer, PointerTilePack, byte_35, pDist, pStr, CurrentX, CurrentY, CurrentFieldPosition
    .importzp Column, Buttons, pCursor, byte_6C, word_2A, byte_73

    STY byte_35
    JSR sub_13BC28
    LDX #7

loc_13B0EB:
    LDA byte_13B15E,X
    STA pDist,X
    DEX
    BPL loc_13B0EB
    LDA #$66
    LDX #$B1            ; B166
    STA PointerTilePack
    STX byte_73
    LDA #$1C
    JSR sub_13AD27
    LDA #$6C
    LDX #$B1            ; B16C
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
    STX Column
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
    STX Column
    LDY byte_35
    LDA #$40
    BIT Buttons
    JMP sub_13AC86
.endproc            ; End of function sub_13B0E4

; ---------------------------------------------------------------------------
byte_13B15E:
    .byte $A0, $A0, $A4, $A0, $B0, $B0, $B0, $B0
    .byte $23, $68, 0, 0, 8, 0
    .byte 4, 1, 1, 0, $CC, 1

; =============== S U B R O U T I N E =======================================


.proc sub_13B172
    .import loc_13B1A5
    .importzp Column, Row, byte_2C, byte_35

    LDA #$21
    STA byte_2C
    STY byte_35
    LDA Column
    PHA
    LDA Row
    PHA
    JSR sub_13B87F
    JMP loc_13B1A5
.endproc            ; End of function sub_13B172


; =============== S U B R O U T I N E =======================================


.proc sub_13B184
    .import loc_13B1A5
    .importzp Column, Row, byte_2C, byte_35

    LDA #$22
    STA byte_2C
    STY byte_35
    LDA Column
    PHA
    LDA Row
    PHA
    JSR sub_13B814
    JMP loc_13B1A5
.endproc            ; End of function sub_13B184


; =============== S U B R O U T I N E =======================================


sub_13B196:
    .export sub_13B196, loc_13B1A5
    .importzp Column, Row, byte_2C, byte_35

    LDA #$20
    STA byte_2C
    STY byte_35
    LDA Column
    PHA
    LDA Row
    PHA
    JSR sub_13B7B6

loc_13B1A5:
    PLA
    STA Row
    PLA
    STA Column
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
    .import sub_D9F1
    .importzp byte_35

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
    .importzp Pointer, pTileID

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
    .import loc_13B5C4, sram_write_enable, load_msg_bank, sram_read_enable
    .importzp Pointer, byte_35, AddrForJmp

    STY byte_35
    JSR loc_13B5C4
    JSR sram_write_enable
    LDY #$28
    LDA (Pointer),Y
    BEQ loc_13B21B
    STA $7680           ; CurrentGame + GAME_SAVE::field_280
    STY AddrForJmp
    JSR sub_13BC5A
    JSR load_msg_bank

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
    .importzp byte_29, byte_35

    LDA $7680           ; CurrentGame + GAME_SAVE::field_280
    BEQ loc_13B220
    STA byte_29
    STY byte_35
    JSR sub_13BBC3
    JSR sub_13BB8C
    JMP loc_13B216
; End of function sub_13B223


; =============== S U B R O U T I N E =======================================


.proc sub_13B235
    .import sram_write_enable, sram_read_enable, sub_DE13
    .importzp Source, byte_35

    JSR sram_write_enable
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STY byte_35
    JSR sub_DE13
    LDY byte_35
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B235


; =============== S U B R O U T I N E =======================================


.proc sub_13B246
    .import sram_write_enable, sram_read_enable, byte_EBF1, loc_13AB23
    .importzp Source, Dist, byte_35

    JSR sram_write_enable
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    PHA
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
    LDA $6795           ; byte_6795
    ASL A
    ASL A
    ASL A
    TAX 
    LDA byte_EBF1,X
    LSR A
    LSR A
    STA $6799           ; byte_6799
    JSR sram_read_enable
    PLA
    PLA
    JMP loc_13AB23
.endproc            ; End of function sub_13B246


; =============== S U B R O U T I N E =======================================


.proc sub_13B290
    .export sub_13B290, loc_13B295
    .import sram_read_enable
    .importzp byte_35

    LDA $F1         ; BankTable + BANK_TABLE::PPU_2K_1800
    JSR sub_13B29C

loc_13B295:
    LDY byte_35
    INY
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B290


; =============== S U B R O U T I N E =======================================


.proc sub_13B29C
    .import sram_write_enable, sram_read_enable
    .importzp Dist, byte_21, byte_23, byte_35

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
.endproc            ; End of function sub_13B29C


; =============== S U B R O U T I N E =======================================


.proc sub_13B2C3
    .importzp Pointer, Dist

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
.endproc            ; End of function sub_13B2C3


; =============== S U B R O U T I N E =======================================


.proc sub_13B2D8
    .export sub_13B2D8, loc_13B2DE
    .importzp Source, byte_35

    STX $6796           ; byte_6796
    STY $6797           ; byte_6797

loc_13B2DE:
    STA $6780           ; byte_6780
    ASL A
    ASL A
    TAX
    LDA $E107,X         ; stru_E105.value,X
    STA $6788           ; byte_6788
    LDA $E108,X         ; stru_E105.value+1,X
    STA $6794           ; byte_6794
    LDY byte_35
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA $6795           ; byte_6795
    STA $6799           ; byte_6799
    RTS
.endproc            ; End of function sub_13B2D8


; =============== S U B R O U T I N E =======================================


.proc sub_13B2FC
    .import sub_CDAF, loc_13B295

    LDA #$74
    JSR sub_13B29C
    LDA #9
    LDX #$FC
    LDY #$8A            ; 8AFC
    JSR sub_13B2D8
    LDA #$F
    STA $679A           ; byte_679A
    LDX #$10
    JSR sub_CDAF
    JMP loc_13B295
.endproc            ; End of function sub_13B2FC


; =============== S U B R O U T I N E =======================================


.proc sub_13B317
    .import sram_write_enable, sram_read_enable

    JSR sram_write_enable
    LDA #$F8
    STA $679A           ; byte_679A
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B317


; =============== S U B R O U T I N E =======================================


.proc sub_13B323
    .import sub_CDAF, loc_13B295

    LDA #$74
    JSR sub_13B29C
    LDA #$A
    LDX #$1C
    LDY #$8B            ; 8B1C
    JSR sub_13B2D8
    LDX #8
    JSR sub_CDAF
    JMP loc_13B295
.endproc            ; End of function sub_13B323


; =============== S U B R O U T I N E =======================================


.proc sub_13B339
    .import loc_13B295

    LDA #$74
    JSR sub_13B29C
    LDA #$B
    LDX #$3C
    LDY #$8B            ; 8B3C
    JSR sub_13B2D8
    JMP loc_13B295
.endproc            ; End of function sub_13B339


; =============== S U B R O U T I N E =======================================


.proc sub_13B34A
    .import sram_write_enable, sram_read_enable, sub_CDAF
    .importzp MsgNumber, byte_23, byte_29, byte_35

    STY byte_35
    LDA #$F0
    STA byte_23
    LDA #$3F
    STA MsgNumber
    JSR sram_write_enable
    LDA #0
    STA $67C0           ; byte_67C0
    STA $67E0           ; byte_67E0
    LDA #$D
    LDY #0
    JSR sub_13B38B
    LDA #$E
    LDY #$20
    JSR sub_13B38B
    SEC
    LDA byte_29
    SBC #$8F
    STA $679E           ; byte_679E
    LDA #0
    STA $679F           ; byte_679F
    STA $679A           ; byte_679A
    JSR sub_13BBD4
    LDX #$10
    JSR sub_CDAF
    LDY byte_35
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B34A


; =============== S U B R O U T I N E =======================================


.proc sub_13B38B
    STA $6780,Y         ; byte_6780,Y
    ASL A
    ASL A
    TAX
    LDA #$28
    STA $6796,Y         ; byte_6796,Y
    LDA #$8A
    STA $6797,Y         ; byte_6797,Y
    LDA $E107,X         ; stru_E105.value,X
    STA $6788,Y         ; byte_6788,Y
    LDA $E108,X         ; stru_E105.value+1,X
    STA $6794,Y         ; byte_6794,Y
    RTS
.endproc            ; End of function sub_13B38B


; =============== S U B R O U T I N E =======================================


.proc sub_13B3A8
    .import loc_13B2DE, loc_13B295

    LDA #$F2
    JSR sub_13B29C
    LDA #$F
    JSR loc_13B2DE
    JMP loc_13B295
.endproc            ; End of function sub_13B3A8


; =============== S U B R O U T I N E =======================================


.proc sub_13B3B5
    .import sub_CDAF, sub_D674
    .importzp Source, Dist, byte_20, byte_23, byte_35

    INY
    STY byte_35
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
.endproc            ; End of function sub_13B3B5


; =============== S U B R O U T I N E =======================================


.proc sub_13B3D8
    .importzp Source, byte_35

    STY     byte_35
    LDY     #2
    LDA     (Source),Y      ; byte_109EAB, byte_109EB3
    AND     #$3F
    LDY     byte_35
    CMP     $6795           ; byte_6795
    JMP     sub_13AC86
.endproc            ; End of function sub_13B3D8


; =============== S U B R O U T I N E =======================================


.proc sub_13B3E8
    .importzp Source, Dist, byte_35

    STY byte_35
    LDY #0
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    AND #$C0
    LDY #4
    CMP (Dist),Y
    BNE loc_13B41B
    LDY #1
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    LDY #5
    CMP (Dist),Y
    BNE loc_13B41B
    LDY #2
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    AND #$C0
    LDY #6
    CMP (Dist),Y
    BNE loc_13B41B
    LDY #3
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
.endproc            ; End of function sub_13B3E8


; =============== S U B R O U T I N E =======================================


.proc sub_13B420
    .import sram_write_enable, sram_read_enable, sub_E6A1

    JSR sram_write_enable
    INY
    JSR sub_E6A1
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B420


; =============== S U B R O U T I N E =======================================


.proc sub_13B42B
    .importzp Source, FuncID

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    INY
    RTS
.endproc            ; End of function sub_13B42B


; =============== S U B R O U T I N E =======================================


.proc sub_13B432
    .import sram_write_enable, sram_read_enable, sub_D9FA
    .importzp byte_35

    STY byte_35
    JSR sram_write_enable
    JSR sub_D9FA
    LDY byte_35
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B432


; =============== S U B R O U T I N E =======================================


.proc sub_13B440
    .import sub_D759, loc_13AC7E
    .importzp Dist, byte_28, byte_35

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
.endproc            ; End of function sub_13B440


; =============== S U B R O U T I N E =======================================


.proc sub_13B459
    .import sub_D78D, loc_13AC7E
    .importzp Dist, byte_28, byte_35

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
.endproc            ; End of function sub_13B459


; =============== S U B R O U T I N E =======================================


.proc sub_13B472
    .importzp Source, byte_21, byte_35, EnemyGroup

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA EnemyGroup
    JSR sub_13B2C3
    STA byte_21
    INY
    STY byte_35
    PLA
    PLA
    JMP loc_13AB30
.endproc            ; End of function sub_13B472


; =============== S U B R O U T I N E =======================================


.proc sub_13B484
    .importzp byte_35

    STY     byte_35
    JSR     sub_13BC28
    LDY     byte_35
    INY
    RTS
.endproc            ; End of function sub_13B484


; =============== S U B R O U T I N E =======================================


.proc sub_13B48D
    .import sram_write_enable, sram_read_enable
    .importzp Source

    JSR sram_write_enable
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    AND #$3F ; '?'
    TAX
    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA CurrentGame,X
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B48D


; =============== S U B R O U T I N E =======================================


.proc sub_13B4A0
    .importzp byte_35

    STY byte_35
    JSR make_save
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13B4A0


; =============== S U B R O U T I N E =======================================


.proc sub_13B4A9
    .import loc_13B5C4, sub_DB40, load_msg_bank, sram_write_enable, sram_read_enable
    .importzp Pointer, byte_35, word_2A, pTileID

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
    JSR load_msg_bank
    JSR sram_write_enable
    LDX #3

loc_13B4D0:
    LDA $7404,X             ; CurrentGame + GAME_SAVE::PureSave.GlobalX,X
    STA $740C,X             ; CurrentGame + GAME_SAVE::PureSave.field_C,X
    DEX
    BPL loc_13B4D0
    LDA #0
    STA $7415               ; CurrentGame + GAME_SAVE::PureSave.field_15
    STA $7416               ; CurrentGame + GAME_SAVE::PureSave.field_16
    STA $7417               ; CurrentGame + GAME_SAVE::PureSave.field_17
    JSR sram_read_enable
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13B4A9


; =============== S U B R O U T I N E =======================================


.proc sub_13B4EB
    .import sram_write_enable, sram_read_enable
    .importzp byte_20, byte_22

    JSR sram_write_enable
    LDX #3

loc_13B4F0:
    LDA $740C,X             ; CurrentGame + GAME_SAVE::PureSave.field_C,X
    STA $7404,X             ; CurrentGame + GAME_SAVE::PureSave.GlobalX,X
    DEX
    BPL loc_13B4F0
    LDA #$20
    STA byte_20
    LDA #0
    STA byte_22
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B4EB


; =============== S U B R O U T I N E =======================================


.proc sub_13B505
    .import loc_13AC82

    LDA $7415           ; CurrentGame + GAME_SAVE::PureSave.field_15
    ORA $7416           ; CurrentGame + GAME_SAVE::PureSave.field_16
    ORA $7417           ; CurrentGame + GAME_SAVE::PureSave.field_17
    JMP loc_13AC82
.endproc            ; End of function sub_13B505


; =============== S U B R O U T I N E =======================================


.proc sub_13B511
    .import sub_D9F1, get_sram_pointer
    .importzp byte_35, word_2A, pTileID, Pointer

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
.endproc            ; End of function sub_13B511


; =============== S U B R O U T I N E =======================================


.proc sub_13B546
    .import wait_frames, lighten_palette
    .importzp byte_2C, byte_35

    STY byte_35
    LDX #$3C
    JSR wait_frames     ; wait for a few frames
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
.endproc            ; End of function sub_13B546


; =============== S U B R O U T I N E =======================================


.proc sub_13B561
    .import sram_write_enable, sram_read_enable, get_sram_pointer, sub_CDE4
    .importzp Pointer

    JSR sram_write_enable
    LDX #0

loc_13B566:
    LDA $7408,X             ; CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
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
    LDA #$20
    JMP sub_CDE4
.endproc            ; End of function sub_13B561


; =============== S U B R O U T I N E =======================================


.proc sub_13B587
    .importzp Pointer

    LDY #3
    LDA (Pointer),Y
    LDY #$14
    STA (Pointer),Y
    LDY #4
    LDA (Pointer),Y
    LDY #$15
    STA (Pointer),Y
    RTS
.endproc            ; End of function sub_13B587


; =============== S U B R O U T I N E =======================================


.proc sub_13B598
    .importzp Pointer

    LDY #5
    LDA (Pointer),Y
    LDY #$16
    STA (Pointer),Y
    LDY #6
    LDA (Pointer),Y
    LDY #$17
    STA (Pointer),Y
    RTS
.endproc            ; End of function sub_13B598


; =============== S U B R O U T I N E =======================================


.proc sub_13B5A9
    .importzp Pointer, byte_35

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
.endproc            ; End of function sub_13B5A9


; =============== S U B R O U T I N E =======================================


.proc sub_13B5C2
    .export sub_13B5C2, loc_13B5C4
    .import get_sram_pointer
    .importzp byte_28, byte_35

    STY byte_35

loc_13B5C4:
    LDA byte_28
    JMP get_sram_pointer ; Input: A -
.endproc            ; End of function sub_13B5C2            ; Output: Pointer (word) = High $74 Low $40 * A


; =============== S U B R O U T I N E =======================================


.proc sub_13B5C9
    .importzp Pointer, byte_35

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
.endproc            ; End of function sub_13B5C9


; =============== S U B R O U T I N E =======================================


.proc sub_13B5E2
    .importzp Source, Pointer, byte_35

    INY
    JSR sub_13B5C2
    LDY #1
    LDA (Pointer),Y
    LDY byte_35
    AND (Source),Y      ; byte_109EAB, byte_109EB3
    JMP sub_13AC86
.endproc            ; End of function sub_13B5E2


; =============== S U B R O U T I N E =======================================


.proc sub_13B5F1
    .importzp Source, Pointer, byte_35

    INY
    JSR sub_13B5C2
    LDY #$10
    LDA (Pointer),Y
    LDY byte_35
    CMP (Source),Y      ; byte_109EAB, byte_109EB3
    JMP sub_13AC7A
.endproc            ; End of function sub_13B5F1


; =============== S U B R O U T I N E =======================================


.proc sub_13B600
    .import sram_write_enable, sram_read_enable, loc_13A6F0
    .importzp Source, Pointer, byte_35

    INY
    JSR sub_13B5C2
    JSR sram_write_enable
    LDY byte_35
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
.endproc            ; End of function sub_13B600


; =============== S U B R O U T I N E =======================================


.proc sub_13B629
    .import sram_write_enable, sram_read_enable
    .importzp Source, Pointer, byte_35

    INY
    JSR sub_13B5C2
    JSR sram_write_enable
    LDY byte_35
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    LDY #1
    ORA (Pointer),Y
    STA (Pointer),Y
    LDY byte_35
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B629


; =============== S U B R O U T I N E =======================================


.proc sub_13B640
    .export sub_13B640, loc_13B64A
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, byte_35, AddrForJmp, Source, pTileID

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
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
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
.endproc            ; End of function sub_13B640


; =============== S U B R O U T I N E =======================================


.proc sub_13B695
    .import sram_write_enable, sram_read_enable, wait_change_music
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    JSR wait_change_music
    JSR sram_write_enable
    LDA $7404           ; CurrentGame + GAME_SAVE::PureSave.GlobalX
    AND #$C0
    ORA (Source),Y      ; byte_109EAB, byte_109EB3
    STA $7404           ; CurrentGame + GAME_SAVE::PureSave.GlobalX
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B695


; =============== S U B R O U T I N E =======================================


.proc sub_13B6AC
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA $7F0            ; apu_7F0
    INY
    RTS
.endproc            ; End of function sub_13B6AC


; =============== S U B R O U T I N E =======================================


.proc sub_13B6B4
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA $7F1            ; byte_7F1
    INY
    RTS
.endproc            ; End of function sub_13B6B4


; =============== S U B R O U T I N E =======================================


.proc sub_13B6BC
    .importzp Source

    INY
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA $7F3            ; byte_7F3
    INY
    RTS
.endproc            ; End of function sub_13B6BC


; =============== S U B R O U T I N E =======================================


.proc sub_13B6C4
    .import sram_write_enable, sram_read_enable

    JSR sram_write_enable
    LDA #$20
    ORA $7470           ; CurrentGame + GAME_SAVE::PureSave.Characters.field_30
    STA $7470           ; CurrentGame + GAME_SAVE::PureSave.Characters.field_30
    LDA #$20
    ORA $74B0           ; CurrentGame + GAME_SAVE::PureSave.Characters.field_30+$40
    STA $74B0           ; CurrentGame + GAME_SAVE::PureSave.Characters.field_30+$40
    INY
    JMP sram_read_enable
.endproc            ; End of function sub_13B6C4


; =============== S U B R O U T I N E =======================================


.proc sub_13B6DB
    .import bank_A000_a
    .importzp byte_35

    STY byte_35
    LDA #$19
    LDX #$C1
    LDY #$A6            ; BANK19:A6C2
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13B6DB


; =============== S U B R O U T I N E =======================================


.proc sub_13B6EA
    .import sram_write_enable, sram_read_enable

    LDA $761E           ; CurrentGame + GAME_SAVE::field_21E
    CMP #$FF
    BEQ loc_13B6F4
    JMP loc_13AC88
; ---------------------------------------------------------------------------

loc_13B6F4:
    JSR sram_write_enable
    LDX #3

loc_13B6F9:
    LDA byte_13B708,X
    STA $740C,X           ; CurrentGame + GAME_SAVE::PureSave.field_C,X
    DEX
    BPL loc_13B6F9
    JSR sram_read_enable
    INY
    INY
    RTS
.endproc            ; End of function sub_13B6EA

; ---------------------------------------------------------------------------
byte_13B708:
    .byte $D2, 0, $80, $47

; =============== S U B R O U T I N E =======================================


.proc sub_13B70C
    .importzp Column, Row, byte_2C, byte_35

    LDA #$66
    STA byte_2C
    STY byte_35
    LDA Column
    PHA
    LDA Row
    PHA
    JSR sub_13B9E4
    PLA
    STA Row
    PLA
    STA Column
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13B70C


; =============== S U B R O U T I N E =======================================


.proc sub_13B725
    .import wait_nmi_processed, bg_blackout

    JSR wait_nmi_processed
    JSR bg_blackout
    INY
    RTS
.endproc            ; End of function sub_13B725


; =============== S U B R O U T I N E =======================================


.proc sub_13B72D
    .import back_palettes

    JSR sub_13BD3B
    JSR back_palettes
    INY
    RTS
.endproc            ; End of function sub_13B72D


; =============== S U B R O U T I N E =======================================


.proc sub_13B735
    .import sub_EEE4

    LDX #$10

loc_13B737:
    JSR sub_EEE4
    DEX
    BNE loc_13B737
    INY
    RTS
.endproc            ; End of function sub_13B735


; =============== S U B R O U T I N E =======================================


.proc sub_13B73F
    .import bank_A000_a, load_msg_bank
    .importzp byte_35

    STY byte_35
    LDA #$19
    LDX #$CB
    LDY #$A5            ; BANK19:A5CC
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    JSR load_msg_bank
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13B73F


; =============== S U B R O U T I N E =======================================


.proc sub_13B751
    .import bank_A000_a, load_msg_bank
    .importzp byte_35

    STY byte_35
    LDA #$19
    LDX #$C0
    LDY #$A6            ; BANK19:A6C1
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    JSR load_msg_bank
    LDY byte_35
    INY
    RTS
.endproc            ; End of function sub_13B751


; =============== S U B R O U T I N E =======================================


.proc sub_13B763
    .import sub_C68B, sub_C3C0, load_msg_bank, cursor_update, get_cursor_pos
    .importzp Column, Row, pCursor, Buttons, CurrentFieldPosition, byte_28

    LDX #2
    LDY #$19
    STX Column
    STY Row
    LDX #2

loc_13B76D:
    LDA $6704,X             ; byte_6704,X
    BEQ loc_13B77E
    LDA #$A0
    JSR sub_C68B
    DEC Row
    DEC Row
    DEX
    BPL loc_13B76D

loc_13B77E:
    DEC Column
    SEC
    LDA Row
    SBC #4
    STA Row
    JSR sub_C3C0
    JSR load_msg_bank
    LDA #$AC
    LDX #$B7            ; B7AC
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
    LDA $6704,X             ; byte_6704,X
    STA byte_28
    CLC
    RTS
.endproc            ; End of function sub_13B763

; ---------------------------------------------------------------------------
    .byte 1, 3, 0, 2, $C0, $3A, 2, $15  ; CURSOR <1, 3, 0, 2, $C0, $3A, 2, $15, byte_196704>
    .word $6704 ; byte_196704

; =============== S U B R O U T I N E =======================================


.proc sub_13B7B6
    .import goods_psi, sub_D9F1
    .importzp ItemCount, Buttons, byte_28

    JSR goods_psi
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
.endproc            ; End of function sub_13B7B6


; =============== S U B R O U T I N E =======================================


.proc sub_13B7F6
    .import get_cursor_pos
    .importzp pStr, CurrentFieldPosition, byte_29

    LDA #$FF
    JSR get_cursor_pos  ; get position of cursor and set cursor tile
                        ; Input: A - tile ID
                        ; Output: PosX, PosY
    LDY CurrentFieldPosition
    LDA (pStr),Y
    STA byte_29
    CLC
    RTS
.endproc            ; End of function sub_13B7F6


; =============== S U B R O U T I N E =======================================


.proc sub_13B803
    .import loc_13B5C4
    .importzp Pointer, pStr

    JSR loc_13B5C4
    CLC
    LDA Pointer
    ADC #$20
    STA pStr
    LDA Pointer+1
    ADC #0
    STA pStr+1
    RTS
.endproc            ; End of function sub_13B803


; =============== S U B R O U T I N E =======================================


.proc sub_13B814
    .import sub_C3B9, load_msg_bank, short_cursor_update
    .importzp Source, pStr, Row, Column, pCursor, Buttons, byte_29, byte_35, byte_70

    JSR sub_C3B9
    JSR load_msg_bank
    SEC
    LDA byte_35
    ADC Source          ; byte_109EAB, byte_109EB3
    STA pStr
    LDA #0
    ADC Source+1        ; byte_109EAB, byte_109EB3
    STA pStr+1
    LDY #3

loc_13B829:
    STY Row
    LDY byte_35
    INY
    STY byte_35
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA byte_29
    BEQ loc_13B853
    LDA #$C
    STA byte_70
    LDX #3
    STX Column
    JSR sub_13BBAF
    JSR sub_13BBC3
    LDA #0
    STA byte_70
    LDX #$F
    STX Column
    LDA #$6F
    LDX #$B8            ; B86F
    JSR sub_13AC44

loc_13B853:
    LDY Row
    INY
    INY
    CPY #$B
    BCC loc_13B829
    LDA #$77
    LDX #$B8            ; B877
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
.endproc            ; End of function sub_13B814

; ---------------------------------------------------------------------------
    .byte $A4, $23, $2A, 0, 2, 4, $BA, 0
    .byte 1, 4, 0, 2, $C0, $3A, 2, 3    ;CURSOR_SHORT <1, 4, 0, 2, $C0, $3A, 2, 3>

; =============== S U B R O U T I N E =======================================


.proc sub_13B87F
    .import goods_psi
    .importzp ItemCount, Buttons

    JSR goods_psi
    LDA #$D8
    LDX #$B8            ; B8D8
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
    LDA $76B0,X             ; CurrentGame + GAME_SAVE::field_2B0,X
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
.endproc            ; End of function sub_13B87F


; =============== S U B R O U T I N E =======================================


.proc sub_13B8CA
    .importzp ItemCount, pStr

    CLC
    LDA ItemCount
    ADC #$B0
    STA pStr
    LDA #0
    ADC #$76          ; ROM:76B0
    STA pStr+1
    RTS
.endproc            ; End of function sub_13B8CA

; ---------------------------------------------------------------------------
    .byte $20, 9, 3, $D4, $E8, $E5, $A0, $C3, $EC, $EF, $F3
    .byte $E5, $F4, 0

; =============== S U B R O U T I N E =======================================


.proc sub_13B8E6
    .import goods_psi
    .importzp Pointer, byte_28, ItemCount, Buttons

    JSR goods_psi
    LDX #$FF

loc_13B8EB:
    INX
    CPX #3
    BCC loc_13B8F2
    LDX #0

loc_13B8F2:
    LDA $7408,X        ; CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
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
.endproc            ; End of function sub_13B8E6


; =============== S U B R O U T I N E =======================================


.proc sub_13B935
    .import loc_13B5C4, byte_EC5D
    .importzp Pointer, pStr, pTileID

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
    STA $580,X              ; byte_580,X
    INX
    CPX #8
    BCS loc_13B982

loc_13B971:
    LDY pTileID+1
    INY
    CPY #$20
    BCC loc_13B949
    LDA #0

loc_13B97A:
    STA $580,X              ; byte_580,X
    INX
    CPX #8
    BCC loc_13B97A

loc_13B982:
    LDA #$80
    LDX #5
    STA pStr
    STX pStr+1
    RTS
.endproc            ; End of function sub_13B935

; ---------------------------------------------------------------------------
byte_13B98B:
    .byte $60, $E0, $A8, 0

; =============== S U B R O U T I N E =======================================


.proc sub_13B98F
    .import goods_psi, loc_13BB12
    .importzp Buttons

    JSR goods_psi
    LDA #$D1
    LDX #$B9            ; B9D1
    JSR sub_13AC44
    JSR sub_13B9AF
    JSR sub_13BB40
    LDA #$DC
    LDX #$B9            ; B9DC
    JSR loc_13BB12
    BIT Buttons
    BMI loc_13B9AC
    SEC
    RTS
; ---------------------------------------------------------------------------

loc_13B9AC:
    JMP sub_13B7F6
.endproc            ; End of function sub_13B98F


; =============== S U B R O U T I N E =======================================


.proc sub_13B9AF
    .importzp pTileID, pStr

    LDA $761D           ; CurrentGame + GAME_SAVE::field_21D
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
    STA $580,X              ; byte_580,X
    INX
    CPX #8
    BCC loc_13B9B6
    LDA #$80
    LDX #5
    STA pStr
    STX pStr+1
    RTS
.endproc            ; End of function sub_13B9AF

; ---------------------------------------------------------------------------
    .byte $20, 7, 3, $FE, $D7, $E8, $E5, $F2, $E5, $A2, 0 ; Where?
    .byte 2, 4, $C, 2, $C0, $3A, 6, 5   ; CURSOR_SHORT <2, 4, $C, 2, $C0, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


.proc sub_13B9E4
    .import sub_C3CE,sub_C6D2, cursor_update, loc_EF7C, sram_write_enable, sram_read_enable, load_msg_bank
    .importzp ItemCount, Buttons, CurrentFieldPosition, byte_D6

    JSR sub_C3CE
    LDA #$B6
    LDX #$BA            ; BAB6
    JSR sub_13AC44
    JSR sub_C6D2
    LDX #0
    JSR sub_13BA72
    JSR sub_13BA72
    JSR sram_write_enable
    LDA #0
    STA $7431           ; CurrentGame + GAME_SAVE::PureSave.field_31
    STA ItemCount
    LDY #$10
    LDA #$A2

loc_13BA07:
    STA $7420,Y         ; CurrentGame + GAME_SAVE::PureSave.field_20,Y
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
    LDA $7420,Y             ; CurrentGame + GAME_SAVE::PureSave.field_20,Y
    CMP #$A2
    BNE loc_13BA30
    DEY

loc_13BA30:
    LDA #$A2
    STY ItemCount
    STA $7420,Y             ; CurrentGame + GAME_SAVE::PureSave.field_20,Y
    BNE loc_13BA18

loc_13BA39:
    LDY CurrentFieldPosition
    CPY #$10
    BEQ loc_13BA24
    CPY #$26
    BEQ loc_13BA54
    LDA $580,Y              ; byte_580,Y
    LDY ItemCount
    STA $7420,Y             ; CurrentGame + GAME_SAVE::PureSave.field_20,Y
    CPY #$10
    BCS loc_13BA18
    INY
    STY ItemCount
    BNE loc_13BA18

loc_13BA54:
    LDY ItemCount
    BEQ loc_13BA18
    LDA $7420,Y             ; CurrentGame + GAME_SAVE::PureSave.field_20,Y
    CMP #$A2
    BEQ loc_13BA60
    INY

loc_13BA60:
    LDA #0
    STA $7420,Y             ; CurrentGame + GAME_SAVE::PureSave.field_20,Y
    STA byte_D6
    LDA #$F0
    STA $204                ; OAM + OAM_TILE::PosY+4
    JSR sram_read_enable
    JMP load_msg_bank
.endproc            ; End of function sub_13B9E4


; =============== S U B R O U T I N E =======================================


.proc sub_13BA72
    LDY #$11

loc_13BA74:
    LDA byte_13BAB9,X
    STA $580,X              ; byte_580,X
    INX
    DEY
    BNE loc_13BA74
    LDA #0
    STA $57E,X              ; unk_57E,X
    LDY #5

loc_13BA85:
    STA $580,X              ; byte_580,X
    INX
    DEY
    BNE loc_13BA85
    RTS
.endproc            ; End of function sub_13BA72


; =============== S U B R O U T I N E =======================================


.proc sub_13BA8D
    .importzp ItemCount, pCursor

    LDA #$E5
    LDX #$BA            ; BAE5
    JSR sub_13AC44
    LDA #$32
    STA $204            ; OAM + OAM_TILE::PosY+4
    LDA #1
    STA $205            ; OAM + OAM_TILE::TileID+4
    LDA #0
    STA $206            ; OAM + OAM_TILE::Attr+4
    LDA ItemCount
    ASL A
    ASL A
    ASL A
    ADC #$48
    STA $207            ; OAM + OAM_TILE::PosX+4
    LDA #$EF
    LDX #$BA            ; BAEF
    STA pCursor
    STX pCursor+1
    RTS
.endproc            ; End of function sub_13BA8D

; ---------------------------------------------------------------------------
    .byte $20, 8, 9
byte_13BAB9:
    .byte $C1, $C2, $C3, $C4, $C5, $C6, $C7, $A0, $C8, $C9
    .byte $CA, $CB, $CC, $CD, $CE, $A0, $C0, $C2, $E1, $E3
    .byte $EB, 1, $CF, $D0, $D1, $D2, $D3, $D4, $D5, $A0, $D6
    .byte $D7, $D8, $D9, $DA, $AE, $A7, $A0, $C0, $C5, $EE
    .byte $E4, $A0, 0
    .byte $20, 9, 5, $21, $20, $74, $20, 8, 9, 0
    .byte $16, 2, 1, 2, $D0, 1, 8, 9    ; CURSOR <$16, 2, 1, 2, $D0, 1, 8, 9, $580>
    .word $580

; =============== S U B R O U T I N E =======================================


.proc sub_13BAF9
    .import cursor_update
    .importzp pCursor

    LDA #4
    LDX #$BB            ; BB04
    STA pCursor
    STX pCursor+1
    JMP cursor_update
.endproc            ; End of function sub_13BAF9

; ---------------------------------------------------------------------------
    .byte 1, 1, 0, 0, $C5, $3A, 7, 3        ; CURSOR <1, 1, 0, 0, $C5, $3A, 7, 3, $F0D1> ; ROM:F0D1
    .word $F0D1

; =============== S U B R O U T I N E =======================================


.proc sub_13BB0E
    .export sub_13BB0E, loc_13BB12
    .import short_cursor_update
    .importzp pCursor

    LDA #$19
    LDX #$BB            ; BB19

loc_13BB12:
    STA pCursor
    STX pCursor+1
    JMP short_cursor_update
.endproc            ; End of function sub_13BB0E

; ---------------------------------------------------------------------------
    .byte 2, 4, $C, 2, $C8, $3A, 6, 5       ; CURSOR_SHORT <2, 4, $C, 2, $C8, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


.proc sub_13BB21
    .import get_sram_pointer, sub_C6D2
    .importzp Pointer, PointerTilePack, byte_70, Column, Row

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
    STX Column
    STY Row
    JMP sub_C6D2
.endproc            ; End of function sub_13BB21


; =============== S U B R O U T I N E =======================================


.proc sub_13BB40
    .importzp Row, Column, CurrentFieldPosition, pStr, byte_29, byte_70

    LDA #$B
    LDX #7
    LDY #5
    STA byte_70
    STY Row
    LDY #0

loc_13BB4C:
    STX Column
    STY CurrentFieldPosition
    LDA (pStr),Y
    STA byte_29
    JSR sub_13BBAF
    LDX #$13
    CPX Column
    BNE loc_13BB63
    INC Row
    INC Row
    LDX #7

loc_13BB63:
    LDY CurrentFieldPosition
    INY
    CPY #8
    BCC loc_13BB4C
    LDA #0
    STA byte_70
    RTS
.endproc            ; End of function sub_13BB40


; =============== S U B R O U T I N E =======================================


.proc sub_13BB6F
    .import loc_13B5C4, sram_write_enable, sram_read_enable
    .importzp Pointer

    JSR loc_13B5C4
    JSR sram_write_enable
    LDA #4
    STA $6D00               ;byte_6D00
    CLC
    LDA Pointer
    ADC #$38
    STA $6D01               ;byte_6D01
    LDA Pointer+1
    ADC #0
    STA $6D02               ;byte_6D02
    JMP sram_read_enable
.endproc            ; End of function sub_13BB6F


; =============== S U B R O U T I N E =======================================


.proc sub_13BB8C
    .export sub_13BB8C
    .import sram_write_enable, sram_read_enable, load_msg_bank
    .importzp Pointer, pTileID

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
    STA $6D04,Y             ;unk_6D04,Y
    INY
    CMP #0
    BNE loc_13BB9F
    JSR sram_read_enable
    JMP load_msg_bank
.endproc            ; End of function sub_13BB8C


; =============== S U B R O U T I N E =======================================


.proc sub_13BBAF
    .import sub_C6D2, load_msg_bank
    .importzp Pointer, PointerTilePack

    JSR sub_13BBDF
    LDY #0
    LDA (Pointer),Y
    STA PointerTilePack
    INY
    LDA (Pointer),Y
    STA PointerTilePack+1
    JSR sub_C6D2
    JMP load_msg_bank
.endproc            ; End of function sub_13BBAF


; =============== S U B R O U T I N E =======================================


.proc sub_13BBC3
    .export sub_13BBC3
    .import load_msg_bank
    .importzp Pointer, word_2A

    JSR sub_13BBDF
    LDY #6
    LDA (Pointer),Y
    STA word_2A
    INY
    LDA (Pointer),Y
    STA word_2A+1
    JMP load_msg_bank
.endproc            ; End of function sub_13BBC3


; =============== S U B R O U T I N E =======================================


.proc sub_13BBD4
    .export sub_13BBD4
    .import loc_E6A9, load_msg_bank

    JSR sub_13BBDF
    LDY #2
    JSR loc_E6A9
    JMP load_msg_bank
.endproc            ; End of function sub_13BBD4


; =============== S U B R O U T I N E =======================================


.proc sub_13BBDF
    .export sub_13BBDF, loc_13BBE2
    .importzp Pointer

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
.endproc            ; End of function sub_13BBDF


; =============== S U B R O U T I N E =======================================


.proc sub_13BBF0
    .export sub_13BBF0, loc_13BBF2
    .import sub_DE8B
    .importzp Pointer, byte_29

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
.endproc            ; End of function sub_13BBF0


; =============== S U B R O U T I N E =======================================


.proc sub_13BC04
    .import wait_press_button, sub_C3D5

    JSR wait_press_button
    JMP sub_C3D5
.endproc            ; End of function sub_13BC04


; =============== S U B R O U T I N E =======================================


.proc sub_13BC0A
    .import out_msg_frame, load_msg_bank
    .importzp PointerTilePack, Column, Row, byte_2D, byte_73

    LDA PointerTilePack
    PHA
    LDA byte_73
    PHA
    JSR out_msg_frame
    PLA
    STA byte_73
    PLA
    STA PointerTilePack
    LDA #0
    STA byte_2D
    LDX #8
    LDY #$13
    STX Column
    STY Row
    JMP load_msg_bank
.endproc            ; End of function sub_13BC0A


; =============== S U B R O U T I N E =======================================


.proc sub_13BC28
    .import sub_C3DF, load_msg_bank
    .importzp Column, Row

    LDA Column
    PHA
    LDA Row
    PHA
    JSR sub_C3DF
    PLA
    STA Row
    PLA
    STA Column
    JMP load_msg_bank
.endproc            ; End of function sub_13BC28


; =============== S U B R O U T I N E =======================================


sub_13BC3A:
    .importzp AddrForJmp, CursorMode, FieldPosition, byte_29

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
    BCS locret_13BC59
    TYA
    ADC #$20
    STA FieldPosition
    BCC loc_13BC5E

locret_13BC59:
    RTS

; ---------------------------------------------------------------------------

sub_13BC5A:
    .import loc_13B5C4, loc_13BBF2, loc_13BBE2, sram_write_enable, sram_read_enable
    .importzp CursorMode, Pointer, pDist, AddrForJmp, FieldPosition

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
    CPY #$28
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

; ---------------------------------------------------------------------------
    .byte 7, 9, 9, $FF

; =============== S U B R O U T I N E =======================================

; Executes a subroutine from RoutineTable at the offset stored in FuncID, whose value is reset.

.proc routine_selector
    .export routine_selector
    .import RoutineTable
    .importzp FuncID

    LDA FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    ASL A
    TAX
    LDA #0
    STA FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    LDA RoutineTable+1,X
    PHA
    LDA RoutineTable,X
    PHA
    RTS
.endproc            ; End of function routine_selector

; ---------------------------------------------------------------------------
RoutineTable:
    .export RoutineTable
    .import darken_palette, loc_13BD34

    .word darken_palette-1, sub_13BD0D-1, check_copyright-1, sub_13BD31-1
    .word sub_13BD5C-1, sub_13BDD9-1, loc_13BD34-1, sub_13BE0F-1

; =============== S U B R O U T I N E =======================================


.proc sub_13BD0D
    LDA #8
    STA $7F0             ; apu_7F0
    JMP darken_palette
.endproc            ; End of function sub_13BD0D


; =============== S U B R O U T I N E =======================================


.proc check_copyright
    .import one_color_lighten_palette, bank_A000_a, wait_frames
    .importzp CopyrightViolation

    LDA #$10
    STA $7F1            ; byte_7F1
    LDA #LIGHTEST_PURPLE
    JSR one_color_lighten_palette
    LDA CopyrightViolation
    BEQ @no_violation
    LDA #$19
    LDX #$F7
    LDY #$A1            ; BANK19:A1F8
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte

@no_violation:
    LDX #$3C
    JMP wait_frames     ; wait for a few frames
.endproc            ; End of function check_copyright       ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


.proc sub_13BD31
    .export sub_13BD31, loc_13BD34
    .importzp byte_20

    JSR sub_13BD3B

loc_13BD34:
    LDA #$20
    STA byte_20
    JMP darken_palette
.endproc            ; End of function sub_13BD31


; =============== S U B R O U T I N E =======================================


.proc sub_13BD3B
    .import store_palettes, one_color_palettes

    JSR store_palettes
    LDA #2
    STA $7F0             ; apu_7F0
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
.endproc            ; End of function sub_13BD3B


; =============== S U B R O U T I N E =======================================


.proc sub_13BD5C
    .import one_color_lighten_palette, clear_oam_sprite, home_camera, mmc3_bank_set,sub_CE6D, sub_E087
    .import copy_palettes, wait_nmi_processed, wait_frames
    .importzp Pointer, NMIFlags

    LDA #9
    STA $7F0             ; apu_7F0
    LDA #MEDIUM_BLUE
    JSR one_color_lighten_palette
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
    LDX #$BE            ; BE1F
    STA Pointer
    STX Pointer+1
    JSR sub_E087
    LDA #$2F
    LDX #$BE            ; BE2F
    JSR copy_palettes
    LDY #$16

loc_13BD91:
    TYA
    PHA
    LDX #8

loc_13BD95:
    JSR wait_nmi_processed
    LDA #1
    STA $305,X          ; SpriteTable + ANIM_SPRITE::field_5,X
    LDA $303,X          ; SpriteTable + ANIM_SPRITE::PosY,X
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
    ADC $306,X
    STA $306,X          ; SpriteTable + ANIM_SPRITE::pFrame,X
    TYA
    ADC $307,X          ; SpriteTable + ANIM_SPRITE::pFrame+1,X
    STA $307,X          ; SpriteTable + ANIM_SPRITE::pFrame+1,X
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
    JMP wait_frames     ; wait for a few frames
.endproc            ; End of function sub_13BD5C            ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


.proc sub_13BDD9
    .import sub_EE0E,update_animation, bank14_8000, loc_149641, one_color_palettes_save, wait_frames

    LDA #$11
    JSR sub_EE0E
    LDA #3
    STA $7F0             ; apu_7F0
    JSR update_animation
    LDX #8
    LDY #7

loc_13BDEA:
    LDA byte_13BE4F,Y
    STA $305,X          ; SpriteTable + ANIM_SPRITE::field_5,X
    DEY
    LDA byte_13BE4F,Y
    STA $304,X          ; SpriteTable + ANIM_SPRITE::field_4,X
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
    LDX #$5A
    JMP wait_frames     ; wait for a few frames
.endproc            ; End of function sub_13BDD9            ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


.proc sub_13BE0F
    .import wait_change_music, wait_frames

    JSR loc_13BD34
    LDA #$FF
    JSR wait_change_music
    LDX #$5A
    JSR wait_frames     ; wait for a few frames
                        ; input: X - number of frames
    JMP sub_13B561
.endproc            ; End of function sub_13BE0F

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


.proc make_save
    .export make_save
    .import sram_write_enable, sram_read_enable
    .importzp pTileID, pDist, Pointer

    LDA $7402           ; CurrentGame + GAME_SAVE::PureSave.GameNumber
    JSR get_dist_save_addr ; Input: A - destination block number
                        ; Output: returns the destination address to pDist
                        ;         returns $7400 - source address to pTileID
    JSR check_sum       ; Output: return check sum to Pointer
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
.endproc            ; End of function make_save


; =============== S U B R O U T I N E =======================================


.proc get_save_block
    .export get_save_block
    .import sram_write_enable, sram_read_enable
    .importzp pDist, pTileID, Pointer

    JSR get_dist_save_addr ; Input: A - destination block number
                        ; Output: returns the destination address to pDist
                        ;         returns $7400 - source address to pTileID
    JSR sram_write_enable
    LDX #3

@next_block:
    LDY #0

@next_byte:
    LDA (pDist),Y       ; copy SRAM $7700-$79FF (game 1), $7A00-$7CFF (game 2), $7D00-$7FFF (game 3) to $7400-$76FF
    STA (pTileID),Y
    INY
    BNE @next_byte
    INC pDist+1
    INC pTileID+1
    DEX
    BNE @next_block
    JSR sram_read_enable
    JSR check_sum       ; Output: return check sum to Pointer
    LDA $7402           ; CurrentPlayer.PureSave.GameNumber
    AND #$F0
    CMP #$B0
    BNE @exit
    LDA $7403           ; CurrentGame + GAME_SAVE::PureSave.Active
    CMP #$E9
    BNE @exit
    LDA Pointer
    ORA Pointer+1

@exit:
    RTS
.endproc            ; End of function get_save_block


; =============== S U B R O U T I N E =======================================

; Input: A - destination block number
; Output: returns the destination address to pDist
;         returns $7400 - source address to pTileID

.proc get_dist_save_addr
    .export get_dist_save_addr, get_active_save
    .importzp pDist, pTileID

    AND #7
    STA pDist+1
    ASL A
    ADC pDist+1
    ADC #$77
    STA pDist+1
    LDA #0
    STA pDist

get_active_save:
    LDA #0              ; returns the address $7400 in pTileID
    LDX #$74
    STA pTileID
    STX pTileID+1
    RTS
.endproc            ; End of function get_dist_save_addr


; =============== S U B R O U T I N E =======================================

; Output: return check sum to Pointer

.proc check_sum
    .import get_active_save
    .importzp Pointer, pTileID

    JSR get_active_save ; returns the address $7400 in pTileID
    LDA #0
    STA Pointer
    STA Pointer+1
    LDX #3

@next_block:
    LDY #0              ; APU program ???

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
.endproc            ; End of function check_sum

