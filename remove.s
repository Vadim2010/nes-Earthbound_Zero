; ===========================================================================

; Segment type: Pure code
                ;.segment BANK13
                * =  $A000

; =============== S U B R O U T I N E =======================================


sub_13A000:                             ; CODE XREF: main:loc_CBDC↑P
                LDA     #5
                STA     byte_7F1

loc_13A005:                             ; DATA XREF: BANK13:off_13A1A4↓o
                LDA     CurrentGame.field_21E
                STA     Pointer
                LDY     #$F0

loc_13A00C:                             ; CODE XREF: sub_13A000+1A↓j
                LDA     #$A5
                LSR     Pointer
                BCC     loc_13A014
                LDA     #$96

loc_13A014:                             ; CODE XREF: sub_13A000+10↑j
                STA     byte_600,Y
                INY
                CPY     #$F8
                BCC     loc_13A00C
                LDA     #0
                STA     byte_600,Y

loc_13A021:                             ; CODE XREF: sub_13A000+89↓j
                LDX     #0

loc_13A023:                             ; CODE XREF: sub_13A000+87↓j
                JSR     sub_D9F1
                BCS     loc_13A084
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                TXA
                PHA
                LDY     #$3F ; '?'

loc_13A02F:                             ; CODE XREF: sub_13A000+35↓j
                LDA     (Pointer),Y
                STA     byte_600,Y
                DEY
                BPL     loc_13A02F
                LDX     #$80
                LDY     #$28 ; '('

loc_13A03B:                             ; CODE XREF: sub_13A000+46↓j
                LDA     byte_600,Y
                STA     byte_29
                JSR     sub_13A08F
                INY
                CPY     #$2C ; ','
                BCC     loc_13A03B
                JSR     sub_C3E6
                LDA     #$F5
                LDX     #$A0
                JSR     sub_13AC44
                LDA     #$C0
                STA     byte_29
                JSR     sub_13A0B3
                LDA     #$19
                LDX     #$A1
                STA     pCursor
                STX     pCursor+1
                JSR     cursor_update

loc_13A064:                             ; CODE XREF: sub_13A000+7F↓j
                BIT     Buttons
                BVS     loc_13A08B
                LDA     CurrentFieldPosition
                BEQ     loc_13A082
                JSR     sub_13A0B3
                BCS     loc_13A074
                JSR     sub_13A0B3

loc_13A074:                             ; CODE XREF: sub_13A000+6F↑j
                LDX     #$A
                LDY     #3
                STX     PosX
                STY     PosY
                JSR     loc_EF7C
                JMP     loc_13A064
; ---------------------------------------------------------------------------

loc_13A082:                             ; CODE XREF: sub_13A000+6A↑j
                PLA
                TAX

loc_13A084:                             ; CODE XREF: sub_13A000+26↑j
                INX
                CPX     #4
                BCC     loc_13A023
                BCS     loc_13A021

loc_13A08B:                             ; CODE XREF: sub_13A000+66↑j
                PLA
                JMP     sub_C3F4
; End of function sub_13A000


; =============== S U B R O U T I N E =======================================


sub_13A08F:                             ; CODE XREF: sub_13A000+40↑p
                                        ; sub_13A0B3+E↓p
                TYA
                PHA
                TXA
                PHA
                JSR     sub_13BBDF
                LDY     #0
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1
                PLA
                TAX
                LDY     #0

loc_13A0A5:                             ; CODE XREF: sub_13A08F+1F↓j
                LDA     (pTileID),Y
                STA     byte_600,X
                INX
                INY
                CPY     #$10
                BCC     loc_13A0A5
                PLA
                TAY
                RTS
; End of function sub_13A08F


; =============== S U B R O U T I N E =======================================


sub_13A0B3:                             ; CODE XREF: sub_13A000+56↑p
                                        ; sub_13A000+6C↑p ...
                LDX     #$40 ; '@'

loc_13A0B5:                             ; CODE XREF: sub_13A0B3+30↓j
                STX     pDist
                JSR     sub_DCCD
                LDX     pDist
                AND     byte_600,Y
                BEQ     loc_13A0C4
                JSR     sub_13A08F

loc_13A0C4:                             ; CODE XREF: sub_13A0B3+C↑j
                INC     byte_29
                BNE     loc_13A0E1
                LDA     #$C0
                STA     byte_29
                CPX     #$41 ; 'A'
                BCS     loc_13A0DB
                RTS
; ---------------------------------------------------------------------------

loc_13A0D1:                             ; CODE XREF: sub_13A0B3+2A↓j
                LDA     #0
                STA     byte_600,X
                CLC
                TXA
                ADC     #$10
                TAX

loc_13A0DB:                             ; CODE XREF: sub_13A0B3+1B↑j
                CPX     #$80
                BCC     loc_13A0D1
                BCS     loc_13A0E5

loc_13A0E1:                             ; CODE XREF: sub_13A0B3+13↑j
                CPX     #$80
                BCC     loc_13A0B5

loc_13A0E5:                             ; CODE XREF: sub_13A0B3+2C↑j
                LDA     #$FE
                LDX     #$A0
                STA     PointerTilePack
                STX     PointerTilePack+1

loc_13A0ED:                             ; CODE XREF: sub_13A0B3+3F↓j
                JSR     loc_C6DB
                CMP     #0
                BNE     loc_13A0ED
                RTS
; End of function sub_13A0B3

; ---------------------------------------------------------------------------
                .BYTE $20, $B, 3, $23, $38, 6, 0, 7, 0, $20, $13, 5, $23
                .BYTE $40, 6, 0, $B, 1, $23, $50, 6, 0, $B, 1, $23, $60
                .BYTE 6, 0, $B, 1, $23, $70, 6, 0, $B, 0, 2, 1, 9, 0, $C5
                .BYTE $3A, $A, 3, $D1, $F0

; =============== S U B R O U T I N E =======================================


sub_13A123:                             ; CODE XREF: main+83↑P
                LDA     #$80
                BIT     byte_D3+1
                BNE     locret_13A167
                LDX     byte_D2
                LDY     byte_D1
                CPX     #6
                BCC     locret_13A167
                CPY     #$90
                BCC     locret_13A167
                ORA     byte_D3+1
                STA     byte_D3+1
                LDA     #$2F ; '/'
                JSR     sub_CDE4
                LDX     #$7C ; '|'
                JSR     loc_13A445
                LDX     #$7E ; '~'
                JSR     loc_13A445
                LDX     #$80
                JSR     loc_13A445
                LDA     #$37 ; '7'
                STA     byte_2C
                JSR     loc_13ADC1
                BIT     Buttons
                BVS     loc_13A168
                LDA     CurrentFieldPosition
                BEQ     loc_13A168
                JSR     make_save
                LDX     #$86
                JSR     loc_13A445
                JMP     sub_13AC4B
; ---------------------------------------------------------------------------

locret_13A167:                          ; CODE XREF: sub_13A123+4↑j
                                        ; sub_13A123+C↑j ...
                RTS
; ---------------------------------------------------------------------------

loc_13A168:                             ; CODE XREF: sub_13A123+33↑j
                                        ; sub_13A123+37↑j
                LDX     #$82
                JSR     loc_13A445
                LDX     #$84
                JSR     loc_13A445
                JSR     loc_13AB30
                JMP     sub_C3F4
; End of function sub_13A123


; =============== S U B R O U T I N E =======================================


sub_13A178:                             ; CODE XREF: main:loc_CBE2↑P
                LDA     #5
                STA     byte_7F1
                JSR     sub_C26C
                LDA     #$B0
                LDX     #$A1            ; A1B0
                STA     pCursor
                STX     pCursor+1
                JSR     cursor_update
                BIT     Buttons
                BMI     loc_13A192
                JMP     sub_C3F4
; ---------------------------------------------------------------------------

loc_13A192:                             ; CODE XREF: sub_13A178+15↑j
                LDA     #$FF
                JSR     get_cursor_pos  ; get position of cursor and set cursor tile
                                        ; Input: A - tile ID
                                        ; Output: PosX, PosY
                LDA     CurrentFieldPosition
                ASL     A
                TAX
                LDA     off_13A1A4+1,X
                PHA
                LDA     off_13A1A4,X
                PHA
                RTS
; End of function sub_13A178

; ---------------------------------------------------------------------------
off_13A1A4:     .WORD sub_13A1EA-1, sub_13A20F-1, sub_13A262-1, loc_13A005-1
                                        ; DATA XREF: sub_13A178+27↑r
                                        ; sub_13A178+23↑r
                .WORD sub_13A238-1, sub_13A1BA-1
                CURSOR <2, 3, 6, 2, $C0, $3A, 2, 3, $F0D1>

; =============== S U B R O U T I N E =======================================


sub_13A1BA:                             ; DATA XREF: BANK13:off_13A1A4↑o
                LDA     #$19
                LDX     #$6D ; 'm'
                LDY     #$A3            ; BANK19:A36E
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JMP     sub_C3F4
; End of function sub_13A1BA


; =============== S U B R O U T I N E =======================================


sub_13A1C6:                             ; CODE XREF: main+64↑P
                JSR     sub_E266
                BCS     loc_13A1E4
                JSR     sub_13A9C7
                BEQ     locret_13A1E9
                ASL     A
                ASL     A
                BCC     locret_13A1E9
                AND     #$3C ; '<'
                BEQ     locret_13A1E9
                LDA     #$35 ; '5'
                STA     byte_34
                JSR     sub_13AB0F
                BCS     locret_13A1E9

loc_13A1E1:                             ; CODE XREF: sub_13A1C6+21↓j
                JMP     sub_C3F4
; ---------------------------------------------------------------------------

loc_13A1E4:                             ; CODE XREF: sub_13A1C6+3↑j
                JSR     sub_13AB48
                BCC     loc_13A1E1

locret_13A1E9:                          ; CODE XREF: sub_13A1C6+8↑j
                                        ; sub_13A1C6+C↑j ...
                RTS
; End of function sub_13A1C6


; =============== S U B R O U T I N E =======================================


sub_13A1EA:                             ; DATA XREF: BANK13:off_13A1A4↑o
                JSR     sub_E20F
                ASL     A
                BPL     loc_13A200
                AND     #$1E
                BEQ     loc_13A204
                JSR     sub_E2A2
                LDA     #$A
                STA     byte_34
                JSR     sub_13AB0F
                BCC     loc_13A20C

loc_13A200:                             ; CODE XREF: sub_13A1EA+4↑j
                LDX     #2
                BNE     loc_13A206

loc_13A204:                             ; CODE XREF: sub_13A1EA+8↑j
                LDX     #4

loc_13A206:                             ; CODE XREF: sub_13A1EA+18↑j
                JSR     loc_13A445
                JSR     loc_13AB30

loc_13A20C:                             ; CODE XREF: sub_13A1EA+14↑j
                JMP     sub_C3F4
; End of function sub_13A1EA


; =============== S U B R O U T I N E =======================================


sub_13A20F:                             ; DATA XREF: BANK13:off_13A1A4↑o
                JSR     sub_E20F
                JSR     sub_13A9C7
                BNE     loc_13A21D
                JSR     sub_13A9D6
                JMP     sub_C3F4
; ---------------------------------------------------------------------------

loc_13A21D:                             ; CODE XREF: sub_13A20F+6↑j
                ASL     A
                BPL     loc_13A22D
                AND     #$1E
                BEQ     loc_13A22D
                LDA     #$B
                STA     byte_34
                JSR     sub_13AB0F
                BCC     loc_13A235

loc_13A22D:                             ; CODE XREF: sub_13A20F+F↑j
                                        ; sub_13A20F+13↑j
                LDX     #6
                JSR     loc_13A445
                JSR     loc_13AB30

loc_13A235:                             ; CODE XREF: sub_13A20F+1C↑j
                JMP     sub_C3F4
; End of function sub_13A20F


; =============== S U B R O U T I N E =======================================


sub_13A238:                             ; CODE XREF: sub_13A63B+20↓j
                                        ; DATA XREF: BANK13:off_13A1A4↑o
                JSR     sub_13B8E6
                BCC     loc_13A240
                JMP     sub_C3F4
; ---------------------------------------------------------------------------

loc_13A240:                             ; CODE XREF: sub_13A238+3↑j
                JSR     sub_13A92D
                LDY     #7
                LDA     (Pointer),Y
                STA     BankPPU_XC00
                SEC
                LDY     #$16
                LDA     (BankPPU_X000),Y
                SBC     BankPPU_XC00
                INY
                LDA     (BankPPU_X000),Y
                SBC     #0
                BCC     loc_13A25D
                JSR     sub_13A3BC
                JMP     loc_13A90C
; ---------------------------------------------------------------------------

loc_13A25D:                             ; CODE XREF: sub_13A238+1D↑j
                LDX     #$10
                JMP     sub_13A909
; End of function sub_13A238


; =============== S U B R O U T I N E =======================================


sub_13A262:                             ; CODE XREF: sub_13A262+36↓j
                                        ; DATA XREF: BANK13:off_13A1A4↑o
                JSR     sub_13B7B6
                BCC     loc_13A26A
                JMP     sub_C3F4
; ---------------------------------------------------------------------------

loc_13A26A:                             ; CODE XREF: sub_13A262+3↑j
                                        ; sub_13A315:loc_13A37A↓j ...
                JSR     sub_C3C7
                JSR     sub_13A964
                JSR     sub_13A972
                BEQ     loc_13A281
                LDA     byte_29
                CMP     #3
                BEQ     loc_13A281
                LDA     #$A2
                LDX     #$A2
                BNE     loc_13A285

loc_13A281:                             ; CODE XREF: sub_13A262+11↑j
                                        ; sub_13A262+17↑j
                LDA     #$D1
                LDX     #$F0            ; ROM:F0D1

loc_13A285:                             ; CODE XREF: sub_13A262+1D↑j
                STA     pStr
                STX     pStr+1
                LDA     #$9A
                LDX     #$A2            ; A29A
                STA     pCursor
                STX     pCursor+1
                JSR     short_cursor_update
                BIT     Buttons
                BMI     loc_13A2A7
                BPL     sub_13A262
; ---------------------------------------------------------------------------
                CURSOR <1, 5, 0, 2, $C0, $3A, $18, 7, 0>
                .BYTE 3, 4, 0
; ---------------------------------------------------------------------------

loc_13A2A7:                             ; CODE XREF: sub_13A262+34↑j
                LDA     #$FF
                JSR     get_cursor_pos  ; get position of cursor and set cursor tile
                                        ; Input: A - tile ID
                                        ; Output: PosX, PosY
                JSR     sub_13A92D
                LDA     CurrentFieldPosition
                ASL     A
                TAX
                LDA     off_13A2BC+1,X
                PHA
                LDA     off_13A2BC,X
                PHA
                RTS
; End of function sub_13A262

; ---------------------------------------------------------------------------
off_13A2BC:     .WORD sub_13A2C6-1, sub_13A37D-1, sub_13A315-1, sub_13A390-1
                                        ; DATA XREF: sub_13A262+55↑r
                                        ; sub_13A262+51↑r
                .WORD sub_13A3A9-1

; =============== S U B R O U T I N E =======================================


sub_13A2C6:                             ; DATA XREF: BANK13:off_13A2BC↑o
                LDY     #3
                LDA     (Pointer),Y
                BNE     loc_13A2F1
                LDY     #2
                LDA     (Pointer),Y
                AND     #$3F ; '?'
                BEQ     loc_13A2E1
                LDX     byte_28
                AND     byte_13AA74,X
                BEQ     loc_13A2EC
                JSR     sub_13A3BC
                JMP     loc_13A90C
; ---------------------------------------------------------------------------

loc_13A2E1:                             ; CODE XREF: sub_13A2C6+C↑j
                LDX     #$16
                JSR     loc_13A445
                JSR     sub_13A443
                JMP     loc_13A90C
; ---------------------------------------------------------------------------

loc_13A2EC:                             ; CODE XREF: sub_13A2C6+13↑j
                LDX     #$18
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A2F1:                             ; CODE XREF: sub_13A2C6+4↑j
                STA     AddrForJmp
                LDY     #2
                LDA     (Pointer),Y
                LDX     byte_28
                AND     byte_13AA74,X
                BEQ     loc_13A310
                JSR     sub_13BC3A
                BCS     loc_13A310
                LDX     #$1C
                JSR     loc_13A445
                LDA     #4
                STA     byte_7F3
                JMP     loc_13A90C
; ---------------------------------------------------------------------------

loc_13A310:                             ; CODE XREF: sub_13A2C6+36↑j
                                        ; sub_13A2C6+3B↑j
                LDX     #$1E
                JMP     sub_13A909
; End of function sub_13A2C6


; =============== S U B R O U T I N E =======================================


sub_13A315:                             ; DATA XREF: BANK13:off_13A2BC↑o
                LDX     byte_6707
                DEX
                BEQ     loc_13A375
                LDA     byte_29
                CMP     #3
                BEQ     loc_13A365
                JSR     sub_13AA4E
                BCS     loc_13A37A
                JSR     sub_13A979
                BCS     loc_13A36A
                JSR     sub_13A9A3
                CMP     BankPPU_X800
                BEQ     loc_13A356
                JSR     sub_13A972
                BNE     loc_13A349
                JSR     sub_13A964
                JSR     sub_13A972
                BNE     loc_13A344
                LDX     #$24 ; '$'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A344:                             ; CODE XREF: sub_13A315+28↑j
                LDX     #$4C ; 'L'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A349:                             ; CODE XREF: sub_13A315+20↑j
                JSR     sub_13A964
                JSR     sub_13A972
                BNE     loc_13A360
                LDX     #$4E ; 'N'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A356:                             ; CODE XREF: sub_13A315+1B↑j
                                        ; sub_13A315+59↓j
                JSR     sub_13A972
                BNE     loc_13A360
                LDX     #$50 ; 'P'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A360:                             ; CODE XREF: sub_13A315+3A↑j
                                        ; sub_13A315+44↑j
                LDX     #$52 ; 'R'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A365:                             ; CODE XREF: sub_13A315+A↑j
                LDX     #$26 ; '&'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A36A:                             ; CODE XREF: sub_13A315+14↑j
                LDA     byte_28
                CMP     BankPPU_X800
                BEQ     loc_13A356
                LDX     #$28 ; '('
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A375:                             ; CODE XREF: sub_13A315+4↑j
                LDX     #$C
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A37A:                             ; CODE XREF: sub_13A315+F↑j
                JMP     loc_13A26A
; End of function sub_13A315


; =============== S U B R O U T I N E =======================================


sub_13A37D:                             ; DATA XREF: BANK13:off_13A2BC↑o
                LDY     #2
                LDA     (Pointer),Y
                AND     #$40 ; '@'
                BEQ     loc_13A38B
                JSR     sub_13A3BC
                JMP     loc_13A90C
; ---------------------------------------------------------------------------

loc_13A38B:                             ; CODE XREF: sub_13A37D+6↑j
                LDX     #$1A
                JMP     sub_13A909
; End of function sub_13A37D


; =============== S U B R O U T I N E =======================================


sub_13A390:                             ; DATA XREF: BANK13:off_13A2BC↑o
                JSR     sub_13A98B
                BCS     loc_13A3A4
                JSR     sub_13A972
                BNE     loc_13A39F
                LDX     #$20 ; ' '
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A39F:                             ; CODE XREF: sub_13A390+8↑j
                LDX     #$54 ; 'T'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A3A4:                             ; CODE XREF: sub_13A390+3↑j
                LDX     #$22 ; '"'
                JMP     sub_13A909
; End of function sub_13A390


; =============== S U B R O U T I N E =======================================


sub_13A3A9:                             ; DATA XREF: BANK13:off_13A2BC↑o
                CLC
                LDA     byte_29
                ADC     #$E8
                STA     PointerTilePack
                LDA     #0
                ADC     #3
                STA     byte_73
                JSR     loc_13AD1A
                JMP     loc_13A90C
; End of function sub_13A3A9


; =============== S U B R O U T I N E =======================================


sub_13A3BC:                             ; CODE XREF: sub_13A238+1F↑p
                                        ; sub_13A2C6+15↑p ...
                LDY     #4
                LDA     (Pointer),Y
                ASL     A
                TAX
                LDA     off_13A3CB+1,X
                PHA
                LDA     off_13A3CB,X
                PHA
                RTS
; End of function sub_13A3BC

; ---------------------------------------------------------------------------
off_13A3CB:     .WORD sub_13A443-1, sub_13A451-1, sub_13A443-1, sub_13A443-1
                                        ; DATA XREF: sub_13A3BC+A↑r
                                        ; sub_13A3BC+6↑r
                .WORD sub_13A443-1, sub_13A49A-1, sub_13A4CF-1, sub_13A451-1
                .WORD sub_13A465-1, sub_13A443-1, sub_13A4EB-1, sub_13A4F0-1
                .WORD sub_13A4F5-1, sub_13A4FA-1, sub_13A4FF-1, sub_13A504-1
                .WORD sub_13A50C-1, sub_13A74D-1, sub_13A756-1, sub_13A75F-1
                .WORD sub_13A79A-1, sub_13A7A7-1, sub_13A7B4-1, sub_13A7BB-1
                .WORD sub_13A7C2-1, sub_13A7C9-1, sub_13A7D0-1, sub_13A811-1
                .WORD sub_13A443-1, sub_13A443-1, sub_13A7D7-1, sub_13A478-1
                .WORD sub_13A807-1, sub_13A80C-1, sub_13A825-1, sub_13A816-1
                .WORD sub_13A43E-1, sub_13A427-1, sub_13A612-1, sub_13A4DB-1
                .WORD sub_13A4E0-1, sub_13A4E5-1, sub_13A73F-1, sub_13A43E-1
                .WORD sub_13A738-1, sub_13A746-1

; =============== S U B R O U T I N E =======================================


sub_13A427:                             ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_13A9B1
                JSR     sub_E20F
                ASL     A
                BPL     sub_13A43E
                AND     #$1E
                BEQ     sub_13A43E
                LDA     #$C
                STA     byte_34
                JSR     sub_13AB0F
                BCS     sub_13A43E
                RTS
; End of function sub_13A427


; =============== S U B R O U T I N E =======================================


sub_13A43E:                             ; CODE XREF: sub_13A427+7↑j
                                        ; sub_13A427+B↑j ...
                LDX     #$E
                JSR     loc_13A445
; End of function sub_13A43E


; =============== S U B R O U T I N E =======================================


sub_13A443:                             ; CODE XREF: sub_13A2C6+20↑p
                                        ; sub_13A451+4↓j ...
                LDX     #$2A ; '*'

loc_13A445:                             ; CODE XREF: sub_13A123+1D↑p
                                        ; sub_13A123+22↑p ...
                JSR     sub_13AA7C
                JMP     loc_13AD1A
; End of function sub_13A443


; =============== S U B R O U T I N E =======================================


sub_13A44B:                             ; CODE XREF: sub_13A5C5+4A↓j
                                        ; sub_13A681+21↓j ...
                JSR     sub_13AA7C
                JMP     loc_13AD29
; End of function sub_13A44B


; =============== S U B R O U T I N E =======================================


sub_13A451:                             ; CODE XREF: sub_13A4CF+4↓j
                                        ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_E20F
                ASL     A
                BPL     sub_13A443
                AND     #$1E
                BEQ     sub_13A443
                LDA     #$D
                STA     byte_34
                JSR     sub_13AB0F
                BCS     sub_13A443
                RTS
; End of function sub_13A451


; =============== S U B R O U T I N E =======================================


sub_13A465:                             ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_13A990
                JSR     sram_write_enable
                LDA     #$A
                STA     CurrentGame.PureSave.field_19
                JSR     sram_read_enable
                LDX     #$16
                JMP     loc_13A445
; End of function sub_13A465


; =============== S U B R O U T I N E =======================================


sub_13A478:                             ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_13A990
                JSR     sram_write_enable
                LDY     #$2C ; ','

loc_13A480:                             ; CODE XREF: sub_13A478+10↓j
                LDA     (BankPPU_X000),Y
                STA     byte_73D8,Y
                INY
                CPY     #$30 ; '0'
                BCC     loc_13A480
                JSR     sram_read_enable
                LDA     #$40 ; '@'
                STA     byte_20
                LDA     #1
                STA     FuncID          ; ID from table BANK13:BCFD (RoutineTable)
                LDX     #$48 ; 'H'
                JMP     loc_13A445
; End of function sub_13A478


; =============== S U B R O U T I N E =======================================


sub_13A49A:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     CurrentFieldPosition
                BNE     loc_13A4CA
                LDA     #3
                JSR     sub_13B058
                BCC     loc_13A4C5
                LDA     byte_29
                JSR     sub_13B058
                JSR     sram_write_enable
                LDA     #3
                STA     (Pointer),Y
                LDY     #$2C ; ','

loc_13A4B3:                             ; CODE XREF: sub_13A49A+21↓j
                LDA     byte_73D8,Y
                STA     (BankPPU_X000),Y
                INY
                CPY     #$30 ; '0'
                BCC     loc_13A4B3
                JSR     sram_read_enable
                LDX     #$44 ; 'D'
                JMP     loc_13A445
; ---------------------------------------------------------------------------

loc_13A4C5:                             ; CODE XREF: sub_13A49A+9↑j
                LDX     #$46 ; 'F'
                JMP     loc_13A445
; ---------------------------------------------------------------------------

loc_13A4CA:                             ; CODE XREF: sub_13A49A+2↑j
                LDA     #$14
                JMP     loc_13A542
; End of function sub_13A49A


; =============== S U B R O U T I N E =======================================


sub_13A4CF:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     CurrentFieldPosition
                BNE     loc_13A4D6
                JMP     sub_13A451
; ---------------------------------------------------------------------------

loc_13A4D6:                             ; CODE XREF: sub_13A4CF+2↑j
                LDA     #$F
                JMP     loc_13A542
; End of function sub_13A4CF


; =============== S U B R O U T I N E =======================================


sub_13A4DB:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$1E
                JMP     sub_13A63B
; End of function sub_13A4DB


; =============== S U B R O U T I N E =======================================


sub_13A4E0:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$50 ; 'P'
                JMP     sub_13A63B
; End of function sub_13A4E0


; =============== S U B R O U T I N E =======================================


sub_13A4E5:                             ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_13A924
                JMP     loc_13A63E
; End of function sub_13A4E5


; =============== S U B R O U T I N E =======================================


sub_13A4EB:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$A
                JMP     sub_13A53E
; End of function sub_13A4EB


; =============== S U B R O U T I N E =======================================


sub_13A4F0:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$14
                JMP     loc_13A542
; End of function sub_13A4F0


; =============== S U B R O U T I N E =======================================


sub_13A4F5:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$1E
                JMP     loc_13A542
; End of function sub_13A4F5


; =============== S U B R O U T I N E =======================================


sub_13A4FA:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$3C ; '<'
                JMP     loc_13A542
; End of function sub_13A4FA


; =============== S U B R O U T I N E =======================================


sub_13A4FF:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$64 ; 'd'
                JMP     sub_13A53E
; End of function sub_13A4FF


; =============== S U B R O U T I N E =======================================


sub_13A504:                             ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_13A924
                LDX     #$16
                JMP     loc_13A54B
; End of function sub_13A504


; =============== S U B R O U T I N E =======================================


sub_13A50C:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$1E
                JSR     sub_13A912
                JSR     sub_13AA4E
                BCS     loc_13A56A
                JSR     sub_13A964
                JSR     sub_13A972
                BMI     loc_13A56F
                JSR     sub_13A92D
                LDX     #$42 ; 'B'
                JSR     loc_13A445
                JSR     sram_write_enable
                DEC     CurrentGame.PureSave.field_1F
                PHP
                JSR     sram_read_enable
                PLP
                BNE     loc_13A53B
                JSR     sub_13A9A3
                LDX     #$56 ; 'V'
                JSR     loc_13A445

loc_13A53B:                             ; CODE XREF: sub_13A50C+25↑j
                JMP     loc_13A564
; End of function sub_13A50C


; =============== S U B R O U T I N E =======================================


sub_13A53E:                             ; CODE XREF: sub_13A4EB+2↑j
                                        ; sub_13A4FF+2↑j
                LDX     #$2E ; '.'
                BNE     loc_13A544

loc_13A542:                             ; CODE XREF: sub_13A49A+32↑j
                                        ; sub_13A4CF+9↑j ...
                LDX     #$2C ; ','

loc_13A544:                             ; CODE XREF: sub_13A53E+2↑j
                STX     PointerTilePack
                JSR     sub_13A912
                LDX     PointerTilePack

loc_13A54B:                             ; CODE XREF: sub_13A504+5↑j
                JSR     sub_13AA7C
                JSR     sub_13AA4E
                BCS     loc_13A56A
                JSR     sub_13A964
                JSR     sub_13A972
                BMI     loc_13A56F
                JSR     sub_13A92D
                JSR     loc_13AD1A
                JSR     sub_13A9A3

loc_13A564:                             ; CODE XREF: sub_13A50C:loc_13A53B↑j
                JSR     sub_13A681
                JMP     sub_13BC04
; ---------------------------------------------------------------------------

loc_13A56A:                             ; CODE XREF: sub_13A50C+8↑j
                                        ; sub_13A53E+13↑j ...
                PLA
                PLA
                JMP     loc_13A26A
; ---------------------------------------------------------------------------

loc_13A56F:                             ; CODE XREF: sub_13A50C+10↑j
                                        ; sub_13A53E+1B↑j ...
                JSR     sub_13A9A3
                LDX     #$58 ; 'X'
                JSR     loc_13A445

loc_13A577:                             ; CODE XREF: sub_13A57A+27↓j
                JMP     sub_13A443
; End of function sub_13A53E


; =============== S U B R O U T I N E =======================================


sub_13A57A:                             ; CODE XREF: sub_13A74D+6↓j
                                        ; sub_13A756+6↓j
                STA     word_2A
                STY     word_2A+1
                JSR     sub_13AA7C
                JSR     sub_13AA4E
                BCS     loc_13A56A
                LDA     word_2A
                BMI     loc_13A592
                JSR     sub_13A964
                JSR     sub_13A972
                BMI     loc_13A56F

loc_13A592:                             ; CODE XREF: sub_13A57A+E↑j
                JSR     sub_13A92D
                JSR     loc_13AD1A
                JSR     sub_13A9A3

loc_13A59B:                             ; CODE XREF: sub_13A661:loc_13A67E↓j
                LDY     #1
                LDA     (BankPPU_X000),Y
                AND     word_2A
                BEQ     loc_13A577
                JSR     sram_write_enable
                LDA     word_2A
                PHP
                EOR     #$FF
                AND     (BankPPU_X000),Y
                STA     (BankPPU_X000),Y
                PLP
                BPL     loc_13A5B5
                JSR     sub_13A6E0

loc_13A5B5:                             ; CODE XREF: sub_13A57A+36↑j
                JSR     sram_read_enable
                LDA     #7
                STA     byte_7F1
                LDX     word_2A+1
                JSR     loc_13A445
                JMP     sub_13BC04
; End of function sub_13A57A


; =============== S U B R O U T I N E =======================================


sub_13A5C5:                             ; CODE XREF: sub_13A7B4+4↓j
                                        ; sub_13A7BB+4↓j ...
                STY     word_2A
                JSR     sub_13AA7C
                JSR     sub_13AA4E
                BCS     loc_13A56A
                JSR     sub_13A964
                JSR     sub_13A972
                BMI     loc_13A56F
                JSR     sub_13A92D
                JSR     loc_13AD1A
                JSR     sub_13A9A3
                LDY     word_2A

loc_13A5E2:                             ; CODE XREF: sub_13A79A+A↓j
                                        ; sub_13A7A7+A↓j
                LDA     #5
                JSR     sub_13A912
                CLC
                LDA     (BankPPU_X000),Y
                ADC     word_2A
                STA     pTileID
                BCC     loc_13A5F7
                CLC
                LDA     word_2A
                SBC     pTileID
                STA     word_2A

loc_13A5F7:                             ; CODE XREF: sub_13A5C5+29↑j
                JSR     sram_write_enable
                CLC
                LDA     (BankPPU_X000),Y
                ADC     word_2A
                STA     (BankPPU_X000),Y
                JSR     sram_read_enable
                CLC
                TYA
                ADC     #$11
                ASL     A
                TAX
                JSR     loc_13A445
                LDX     #$32 ; '2'
                JMP     sub_13A44B
; End of function sub_13A5C5


; =============== S U B R O U T I N E =======================================


sub_13A612:                             ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_13A62C
                JSR     sub_13B98F
                BCS     loc_13A659
                JSR     sub_13A9B1
                LDX     #$E
                JSR     loc_13A445
                PLA
                PLA
                PLA
                PLA
                JSR     loc_13AB30
                JMP     loc_CCD8
; End of function sub_13A612


; =============== S U B R O U T I N E =======================================


sub_13A62C:                             ; CODE XREF: sub_13A612↑p
                                        ; sub_13A7D7↓p
                LDA     CurrentGame.field_21F
                AND     #2
                BEQ     locret_13A63A
                PLA
                PLA
                LDX     #$12
                JMP     loc_13A445
; ---------------------------------------------------------------------------

locret_13A63A:                          ; CODE XREF: sub_13A62C+5↑j
                RTS
; End of function sub_13A62C


; =============== S U B R O U T I N E =======================================


sub_13A63B:                             ; CODE XREF: sub_13A4DB+2↑j
                                        ; sub_13A4E0+2↑j
                JSR     sub_13A912

loc_13A63E:                             ; CODE XREF: sub_13A4E5+3↑j
                JSR     sub_13AA4E
                BCS     loc_13A659
                JSR     sub_13A9B1
                LDX     #$E
                JSR     loc_13A445
                JSR     sub_13A92D
                JSR     sub_13A972
                BMI     loc_13A65E
                JSR     sub_13A681
                JMP     sub_13BC04
; ---------------------------------------------------------------------------

loc_13A659:                             ; CODE XREF: sub_13A612+6↑j
                                        ; sub_13A63B+6↑j ...
                PLA
                PLA
                JMP     sub_13A238
; ---------------------------------------------------------------------------

loc_13A65E:                             ; CODE XREF: sub_13A63B+16↑j
                                        ; sub_13A661+1B↓j
                JMP     sub_13A443
; End of function sub_13A63B


; =============== S U B R O U T I N E =======================================


sub_13A661:                             ; CODE XREF: sub_13A738+4↓j
                                        ; sub_13A73F+4↓j ...
                STA     word_2A
                STY     word_2A+1
                JSR     sub_13AA4E
                BCS     loc_13A659
                JSR     sub_13A9B1
                LDX     #$E
                JSR     loc_13A445
                JSR     sub_13A92D
                LDA     word_2A
                BMI     loc_13A67E
                JSR     sub_13A972
                BMI     loc_13A65E

loc_13A67E:                             ; CODE XREF: sub_13A661+16↑j
                JMP     loc_13A59B
; End of function sub_13A661


; =============== S U B R O U T I N E =======================================


sub_13A681:                             ; CODE XREF: sub_13A53E:loc_13A564↑p
                                        ; sub_13A63B+18↑p
                LDY     #$14
                JSR     sub_13A6A5
                LDY     #3
                JSR     sub_13A6B4
                JSR     sram_write_enable
                LDY     #$14
                JSR     sub_13A6D1
                JSR     sram_read_enable
                LDA     #7
                STA     byte_7F1
                LDX     #$34 ; '4'
                JSR     loc_13A445
                LDX     #$30 ; '0'
                JMP     sub_13A44B
; End of function sub_13A681


; =============== S U B R O U T I N E =======================================


sub_13A6A5:                             ; CODE XREF: sub_13A681+2↑p
                                        ; sub_13A75F+C↓p
                CLC
                LDA     (BankPPU_X000),Y
                ADC     word_2A
                STA     pTileID
                INY
                LDA     (BankPPU_X000),Y
                ADC     word_2A+1
                STA     pTileID+1
                RTS
; End of function sub_13A6A5


; =============== S U B R O U T I N E =======================================


sub_13A6B4:                             ; CODE XREF: sub_13A681+7↑p
                                        ; sub_13A75F+11↓p
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

locret_13A6D0:                          ; CODE XREF: sub_13A6B4+E↑j
                RTS
; End of function sub_13A6B4


; =============== S U B R O U T I N E =======================================


sub_13A6D1:                             ; CODE XREF: sub_13A681+F↑p
                                        ; sub_13A75F+19↓p
                CLC
                LDA     (BankPPU_X000),Y
                ADC     word_2A
                STA     (BankPPU_X000),Y
                INY
                LDA     (BankPPU_X000),Y
                ADC     word_2A+1
                STA     (BankPPU_X000),Y
                RTS
; End of function sub_13A6D1


; =============== S U B R O U T I N E =======================================


sub_13A6E0:                             ; CODE XREF: sub_13A57A+38↑p
                LDY     #3
                LDA     ($40),Y
                LDY     #$14
                STA     ($40),Y
                LDY     #4
                LDA     ($40),Y
                LDY     #$15
                STA     ($40),Y

loc_13A6F0:                             ; CODE XREF: sub_13B600+20↓p
                LDA     Dist
                PHA
                LDA     Dist+1
                PHA
                JSR     sub_D8D3
                JSR     sub_13A728
                BCS     loc_13A71E
                TXA
                JSR     sub_D86C
                LDA     BankTable.CPU_8K_8000
                PHA
                LDY     #$15
                LDA     (Dist),Y
                ASL     A
                ASL     A
                ASL     A
                TAX
                JSR     loc_E2BF
                PLA
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #$1D
                JSR     sub_CDE4
                JSR     sub_D977

loc_13A71E:                             ; CODE XREF: sub_13A6E0+1C↑j
                JSR     sram_write_enable
                PLA
                STA     Dist+1
                PLA
                STA     Dist
                RTS
; End of function sub_13A6E0


; =============== S U B R O U T I N E =======================================


sub_13A728:                             ; CODE XREF: sub_13A6E0+19↑p
                                        ; sub_13B028+3↓p
                LDA     byte_28
                LDX     #0

loc_13A72C:                             ; CODE XREF: sub_13A728+D↓j
                CMP     CurrentGame.PureSave.CharactersNum,X
                CLC
                BEQ     locret_13A737
                INX
                CPX     #4
                BCC     loc_13A72C

locret_13A737:                          ; CODE XREF: sub_13A728+8↑j
                RTS
; End of function sub_13A728


; =============== S U B R O U T I N E =======================================


sub_13A738:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #2
                LDY     #$5A ; 'Z'
                JMP     sub_13A661
; End of function sub_13A738


; =============== S U B R O U T I N E =======================================


sub_13A73F:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$40 ; '@'
                LDY     #$6C ; 'l'
                JMP     sub_13A661
; End of function sub_13A73F


; =============== S U B R O U T I N E =======================================


sub_13A746:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$80
                LDY     #$14
                JMP     sub_13A661
; End of function sub_13A746


; =============== S U B R O U T I N E =======================================


sub_13A74D:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #2
                LDX     #$2E ; '.'
                LDY     #$5A ; 'Z'
                JMP     sub_13A57A
; End of function sub_13A74D


; =============== S U B R O U T I N E =======================================


sub_13A756:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #1
                LDX     #$16
                LDY     #$5C ; '\'
                JMP     sub_13A57A
; End of function sub_13A756


; =============== S U B R O U T I N E =======================================


sub_13A75F:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDA     #$14
                JSR     sub_13A912
                LDX     #$5E ; '^'
                JSR     loc_13A445
                LDY     #$16
                JSR     sub_13A6A5
                LDY     #5
                JSR     sub_13A6B4
                JSR     sram_write_enable
                LDY     #$16
                JSR     sub_13A6D1
                JSR     sram_read_enable
                LDX     #$36 ; '6'
                JSR     loc_13A445
                LDX     #$30 ; '0'
                JSR     sub_13A44B
                JSR     sub_F1ED
                CMP     #$19
                BCS     loc_13A797
                JSR     sub_13A990
                LDX     #$60 ; '`'
                JSR     loc_13A445

loc_13A797:                             ; CODE XREF: sub_13A75F+2E↑j
                JMP     sub_13BC04
; End of function sub_13A75F


; =============== S U B R O U T I N E =======================================


sub_13A79A:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$4A ; 'J'
                JSR     loc_13A445
                JSR     sub_13A990
                LDY     #$F
                JMP     loc_13A5E2
; End of function sub_13A79A


; =============== S U B R O U T I N E =======================================


sub_13A7A7:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$2C ; ','
                JSR     loc_13A445
                JSR     sub_13A990
                LDY     #$B
                JMP     loc_13A5E2
; End of function sub_13A7A7


; =============== S U B R O U T I N E =======================================


sub_13A7B4:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$2E ; '.'
                LDY     #$C
                JMP     sub_13A5C5
; End of function sub_13A7B4


; =============== S U B R O U T I N E =======================================


sub_13A7BB:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$2E ; '.'
                LDY     #$D
                JMP     sub_13A5C5
; End of function sub_13A7BB


; =============== S U B R O U T I N E =======================================


sub_13A7C2:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$2E ; '.'
                LDY     #$E
                JMP     sub_13A5C5
; End of function sub_13A7C2


; =============== S U B R O U T I N E =======================================


sub_13A7C9:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$2E ; '.'
                LDY     #$F
                JMP     sub_13A5C5
; End of function sub_13A7C9


; =============== S U B R O U T I N E =======================================


sub_13A7D0:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$2E ; '.'
                LDY     #$B
                JMP     sub_13A5C5
; End of function sub_13A7D0


; =============== S U B R O U T I N E =======================================


sub_13A7D7:                             ; DATA XREF: BANK13:off_13A3CB↑o
                JSR     sub_13A62C
                LDA     CurrentGame.field_21C
                BPL     loc_13A7E2
                JMP     sub_13A443
; ---------------------------------------------------------------------------

loc_13A7E2:                             ; CODE XREF: sub_13A7D7+6↑j
                JSR     sram_write_enable
                LDX     #3

loc_13A7E7:                             ; CODE XREF: sub_13A7D7+17↓j
                LDA     byte_13A803,X
                STA     CurrentGame.PureSave.field_4,X
                DEX
                BPL     loc_13A7E7
                JSR     sub_D9FA
                JSR     loc_D8CE
                LDA     #2
                STA     FuncID          ; ID from table BANK13:BCFD (RoutineTable)
                LDA     #$40 ; '@'
                STA     byte_20
                LDX     #$16
                JMP     loc_13A445
; End of function sub_13A7D7

; ---------------------------------------------------------------------------
byte_13A803:    .BYTE $49, $9E, $44, $A8
                                        ; DATA XREF: sub_13A7D7:loc_13A7E7↑r

; =============== S U B R O U T I N E =======================================


sub_13A807:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$62 ; 'b'
                JMP     loc_13A445
; End of function sub_13A807


; =============== S U B R O U T I N E =======================================


sub_13A80C:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$64 ; 'd'
                JMP     loc_13A445
; End of function sub_13A80C


; =============== S U B R O U T I N E =======================================


sub_13A811:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$74 ; 't'
                JMP     loc_13A445
; End of function sub_13A811


; =============== S U B R O U T I N E =======================================


sub_13A816:                             ; DATA XREF: BANK13:off_13A3CB↑o
                LDX     #$70 ; 'p'
                JSR     loc_13A445
                LDA     #1
                JSR     sub_CDE4
                LDX     #$72 ; 'r'
                JMP     loc_13A445
; End of function sub_13A816


; =============== S U B R O U T I N E =======================================


sub_13A825:                             ; DATA XREF: BANK13:off_13A3CB↑o
                PLA
                PLA
                LDX     #$78 ; 'x'
                JSR     loc_13A445
                JMP     loc_13A834
; End of function sub_13A825


; =============== S U B R O U T I N E =======================================


sub_13A82F:                             ; CODE XREF: main+92↑P
                LDA     #5
                STA     byte_7F1

loc_13A834:                             ; CODE XREF: sub_13A825+7↑j
                LDA     byte_14
                CMP     #1
                BEQ     loc_13A843
                CMP     #2
                BEQ     loc_13A843
                LDX     #$7A ; 'z'
                JMP     sub_13A909
; ---------------------------------------------------------------------------

loc_13A843:                             ; CODE XREF: sub_13A82F+9↑j
                                        ; sub_13A82F+D↑j
                JSR     loc_13AB30
                JSR     darken_palette
                JSR     clear_oam_sprite
                LDX     #0
                LDY     #8
                JSR     set_camera
                LDA     #6
                ORA     MaskPPU
                STA     MaskPPU
                LDA     #$5B ; '['
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JSR     sub_CE6D
                LDA     #$E3
                LDX     #$A8            ; A8E3
                JSR     set_ppu_banks   ; set 6 memory banks for PPU
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
                LDA     #$DF
                STA     OAM.TileID
                LDA     #0
                STA     OAM.Attr
                LDX     #$40 ; '@'
                LDA     byte_6785
                JSR     sub_13A8D4
                SBC     #8
                STA     OAM.PosX
                LDX     #$80
                LDA     byte_6787
                JSR     sub_13A8D4
                SBC     #$21 ; '!'
                STA     OAM.PosY
                LDA     #$E9
                LDX     #$A8            ; A8E9
                JSR     copy_palettes
                LDA     #0
                STA     Gamepad0Buttons

loc_13A899:                             ; CODE XREF: sub_13A82F+79↓j
                LDX     #8
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                LDA     #$DF
                EOR     OAM.TileID
                STA     OAM.TileID
                BIT     Gamepad0Buttons
                BVC     loc_13A899
                LDA     #0
                STA     Gamepad0Buttons
                LDA     #$F0
                STA     OAM.PosY
                JSR     wait_nmi_processed
                JSR     darken_color
                JSR     restore_palettes
                LDA     #$F9
                AND     MaskPPU
                STA     MaskPPU
                LDA     #$7E ; '~'
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     byte_7F7
                JSR     clear_oam_sprite
                JMP     load_location
; End of function sub_13A82F


; =============== S U B R O U T I N E =======================================


sub_13A8D4:                             ; CODE XREF: sub_13A82F+4A↑p
                                        ; sub_13A82F+57↑p
                SEC
                BPL     @exit
                TAY
                TXA
                ORA     OAM.Attr
                STA     OAM.Attr
                TYA
                SBC     #7

@exit:                                  ; CODE XREF: sub_13A8D4+1↑j
                RTS
; End of function sub_13A8D4

; ---------------------------------------------------------------------------
                .BYTE 0, $78, $58, $59, $5A, 0
                .BYTE BLACK, LIGHTEST_RED, WHITE, LIGHT_GREEN; PALETTE0
                .BYTE BLACK, LIGHTEST_RED, WHITE, LIGHT_GREEN; PALETTE1
                .BYTE BLACK, LIGHTEST_RED, WHITE, MEDIUM_RED; PALETTE2
                .BYTE BLACK, LIGHTEST_RED, WHITE, MEDIUM_RED; PALETTE3
                .BYTE BLACK, LIGHT_BLUE, DARK_INDIGO, DARK_GREEN; PALETTE0
                .BYTE BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE; PALETTE1
                .BYTE BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE; PALETTE2
                .BYTE BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE; PALETTE3

; =============== S U B R O U T I N E =======================================


sub_13A909:                             ; CODE XREF: sub_13A238+27↑j
                                        ; sub_13A2C6+28↑j ...
                JSR     loc_13A445

loc_13A90C:                             ; CODE XREF: sub_13A238+22↑j
                                        ; sub_13A2C6+18↑j ...
                JSR     loc_13AB30
                JMP     sub_C3F4
; End of function sub_13A909


; =============== S U B R O U T I N E =======================================


sub_13A912:                             ; CODE XREF: sub_13A50C+2↑p
                                        ; sub_13A53E+8↑p ...
                STA     Pointer
                LDA     #0
                STA     Pointer+1
                JSR     sub_F2ED
                LDA     Pointer
                STA     word_2A
                LDA     Pointer+1
                STA     word_2A+1
                RTS
; End of function sub_13A912


; =============== S U B R O U T I N E =======================================


sub_13A924:                             ; CODE XREF: sub_13A4E5↑p
                                        ; sub_13A504↑p
                LDA     #$E8
                LDX     #3
                STA     word_2A
                STX     word_2A+1
                RTS
; End of function sub_13A924


; =============== S U B R O U T I N E =======================================


sub_13A92D:                             ; CODE XREF: sub_13A238:loc_13A240↑p
                                        ; sub_13A262+4A↑p ...
                JSR     sram_write_enable
                JSR     sub_13A964
                LDA     #4
                STA     byte_6D20
                CLC
                LDA     BankPPU_X000
                ADC     #$38 ; '8'
                STA     byte_6D21
                LDA     BankPPU_X400
                ADC     #0
                STA     byte_6D22
                JSR     sub_13BBDF
                LDY     #0
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1
                LDY     #0

loc_13A957:                             ; CODE XREF: sub_13A92D+32↓j
                LDA     (pTileID),Y
                STA     unk_6D24,Y
                INY
                CMP     #0
                BNE     loc_13A957
                JMP     sram_read_enable
; End of function sub_13A92D


; =============== S U B R O U T I N E =======================================


sub_13A964:                             ; CODE XREF: sub_13A262+B↑p
                                        ; sub_13A315+22↑p ...
                LDA     byte_28
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                LDA     Pointer
                STA     BankPPU_X000
                LDA     Pointer+1
                STA     BankPPU_X400
                RTS
; End of function sub_13A964


; =============== S U B R O U T I N E =======================================


sub_13A972:                             ; CODE XREF: sub_13A262+E↑p
                                        ; sub_13A315+1D↑p ...
                LDY     #1
                LDA     (BankPPU_X000),Y
                AND     #$F0
                RTS
; End of function sub_13A972


; =============== S U B R O U T I N E =======================================


sub_13A979:                             ; CODE XREF: sub_13A315+11↑p
                                        ; sub_13A9D6+42↓p
                LDA     #0
                JSR     sub_13B058
                BCS     loc_13A9A1
                JSR     sram_write_enable
                LDA     byte_29
                STA     (Pointer),Y
                CLC
                JMP     sram_read_enable
; End of function sub_13A979


; =============== S U B R O U T I N E =======================================


sub_13A98B:                             ; CODE XREF: sub_13A390↑p
                JSR     sub_13B0A3
                BNE     loc_13A9A1
; End of function sub_13A98B


; =============== S U B R O U T I N E =======================================


sub_13A990:                             ; CODE XREF: sub_13A465↑p
                                        ; sub_13A478↑p ...
                LDA     byte_29
                JSR     sub_13B058
                BCS     loc_13A9A1
                JSR     sram_write_enable
                JSR     loc_13B07E
                CLC
                JMP     sram_read_enable
; ---------------------------------------------------------------------------

loc_13A9A1:                             ; CODE XREF: sub_13A979+5↑j
                                        ; sub_13A98B+3↑j ...
                SEC
                RTS
; End of function sub_13A990


; =============== S U B R O U T I N E =======================================


sub_13A9A3:                             ; CODE XREF: sub_13A315+16↑p
                                        ; sub_13A50C+27↑p ...
                LDA     byte_28
                PHA
                LDA     BankPPU_X800
                STA     byte_28
                JSR     sub_13A990
                PLA
                STA     byte_28
                RTS
; End of function sub_13A9A3


; =============== S U B R O U T I N E =======================================


sub_13A9B1:                             ; CODE XREF: sub_13A427↑p
                                        ; sub_13A612+8↑p ...
                JSR     sram_write_enable
                SEC
                LDY     #$16
                LDA     (BankPPU_X000),Y
                SBC     BankPPU_XC00
                STA     (BankPPU_X000),Y
                INY
                LDA     (BankPPU_X000),Y
                SBC     #0
                STA     (BankPPU_X000),Y
                JMP     sram_read_enable
; End of function sub_13A9B1


; =============== S U B R O U T I N E =======================================


sub_13A9C7:                             ; CODE XREF: sub_13A1C6+5↑p
                                        ; sub_13A20F+3↑p
                TAY
                BEQ     loc_13A9D3
                TAX
                LDY     #0
                LDA     (Dist),Y
                AND     #$3F ; '?'
                TAY
                TXA

loc_13A9D3:                             ; CODE XREF: sub_13A9C7+1↑j
                CPY     #$20 ; ' '
                RTS
; End of function sub_13A9C7


; =============== S U B R O U T I N E =======================================


sub_13A9D6:                             ; CODE XREF: sub_13A20F+8↑p
                JSR     sub_13AB3E
                JSR     sub_E772
                AND     byte_EC5D,X
                BNE     loc_13A9FD
                LDA     #4
                JSR     loc_E2C2
                LDX     #$66 ; 'f'
                JSR     loc_13A445
                LDA     #$A
                STA     byte_7F1
                LDY     #6
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$7F
                STA     byte_29
                BNE     loc_13AA05
                JSR     sub_13AA3F

loc_13A9FD:                             ; CODE XREF: sub_13A9D6+9↑j
                LDX     #$76 ; 'v'
                JSR     loc_13A445
                JMP     loc_13AB30
; ---------------------------------------------------------------------------

loc_13AA05:                             ; CODE XREF: sub_13A9D6+22↑j
                JSR     sub_13BB8C
                LDX     #$68 ; 'h'
                JSR     loc_13A445
                LDX     #0

loc_13AA0F:                             ; CODE XREF: sub_13A9D6+4C↓j
                JSR     sub_D9F1
                BCS     loc_13AA1F
                STA     byte_28
                TXA
                PHA
                JSR     sub_13A979
                PLA
                TAX
                BCC     loc_13AA2C

loc_13AA1F:                             ; CODE XREF: sub_13A9D6+3C↑j
                INX
                CPX     #4
                BCC     loc_13AA0F
                LDX     #$6E ; 'n'
                JSR     loc_13A445
                JMP     loc_13AB30
; ---------------------------------------------------------------------------

loc_13AA2C:                             ; CODE XREF: sub_13A9D6+47↑j
                JSR     sub_13AA3F
                JSR     sub_13BB6F
                LDX     #$6A ; 'j'
                JSR     loc_13A445
                LDA     #6
                STA     byte_7F1
                JMP     loc_13AB30
; End of function sub_13A9D6


; =============== S U B R O U T I N E =======================================


sub_13AA3F:                             ; CODE XREF: sub_13A9D6+24↑p
                                        ; sub_13A9D6:loc_13AA2C↑p
                JSR     sram_write_enable
                JSR     sub_E772
                ORA     byte_EC5D,X
                STA     CurrentGame.field_220,Y
                JMP     sram_read_enable
; End of function sub_13AA3F


; =============== S U B R O U T I N E =======================================


sub_13AA4E:                             ; CODE XREF: sub_13A315+C↑p
                                        ; sub_13A50C+5↑p ...
                LDA     byte_28
                STA     BankPPU_X800
                LDA     byte_6707
                CMP     #2
                BCC     loc_13AA6A
                LDA     PointerTilePack
                PHA
                LDA     byte_73
                PHA
                JSR     sub_13B763
                PLA
                STA     byte_73
                PLA
                STA     PointerTilePack
                BCS     loc_13AA6F

loc_13AA6A:                             ; CODE XREF: sub_13AA4E+9↑j
                JSR     sub_13BB6F
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_13AA6F:                             ; CODE XREF: sub_13AA4E+1A↑j
                LDA     BankPPU_X800
                STA     byte_28
                RTS
; End of function sub_13AA4E

; ---------------------------------------------------------------------------
byte_13AA74:    .BYTE 0, 1, 2, 4, 8, $10, $20, $20
                                        ; DATA XREF: sub_13A2C6+10↑r
                                        ; sub_13A2C6+33↑r

; =============== S U B R O U T I N E =======================================


sub_13AA7C:                             ; CODE XREF: sub_13A443:loc_13A445↑p
                                        ; sub_13A44B↑p ...
                LDA     byte_13AA87,X
                STA     PointerTilePack
                LDA     byte_13AA87+1,X
                STA     byte_73
                RTS
; End of function sub_13AA7C

; ---------------------------------------------------------------------------
byte_13AA87:    .BYTE 0, 0, $85, 3, $86, 3, $87, 3, 0, 0, $D7, 3, $DB
                                        ; DATA XREF: sub_13AA7C↑r
                                        ; sub_13AA7C+5↑r
                .BYTE 3, $C7, 6, $C8, 6, $D0, 6, $C9, 6, $8E, 3, $8F, 3
                .BYTE $90, 3, $91, 3, $92, 3, $93, 3, $94, 3, $95, 3, $96
                .BYTE 3, $97, 3, $98, 3, $AF, 6, $B0, 6, $B1, 6, $B2, 6
                .BYTE $B3, 6, $B4, 6, $B5, 6, $B6, 6, $B7, 6, $B8, 6, $B9
                .BYTE 6, $BA, 6, $BB, 6, $BC, 6, $BD, 6, $BE, 6, $A7, 6
                .BYTE $A8, 6, $A5, 6, $AA, 6, $A9, 6, $C1, 6, $A6, 6, $C3
                .BYTE 6, $C4, 6, $C5, 6, $C6, 6, $BF, 6, $C0, 6, $99, 3
                .BYTE $9A, 3, $9B, 3, $CB, 6, $9D, 3, $CC, 6, $CD, 6, $CA
                .BYTE 6, $A1, 3, $CF, 6, $CE, 6, $14, 0, $16, 0, $38, 3
                .BYTE $18, 0, $21, 0, $1B, 0

; =============== S U B R O U T I N E =======================================


sub_13AB0F:                             ; CODE XREF: sub_13A1C6+16↑p
                                        ; sub_13A1EA+11↑p ...
                JSR     sub_13AB3E
                LDY     #$14
                LDA     (Dist),Y
                AND     #$F
                TAY

loc_13AB19:                             ; CODE XREF: sub_13AB0F+11↓j
                                        ; sub_13AB48+8↓j ...
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                BEQ     loc_13AB23
                JSR     sub_13AB5E
                JMP     loc_13AB19
; ---------------------------------------------------------------------------

loc_13AB23:                             ; CODE XREF: sub_13AB0F+C↑j
                                        ; sub_13B246+47↓j
                LDA     byte_21
                BEQ     loc_13AB30
                JSR     sub_E266
                LDA     #$40 ; '@'
                STA     byte_34
                BNE     sub_13AB0F

loc_13AB30:                             ; CODE XREF: sub_13A123+4F↑p
                                        ; sub_13A1EA+1F↑p ...
                LDA     byte_2C
                BEQ     loc_13AB3C
                LDA     #0
                STA     byte_2C
                CLC
                JMP     sub_FD4F
; ---------------------------------------------------------------------------

loc_13AB3C:                             ; CODE XREF: sub_13AB0F+23↑j
                SEC
                RTS
; End of function sub_13AB0F


; =============== S U B R O U T I N E =======================================


sub_13AB3E:                             ; CODE XREF: sub_13A9D6↑p
                                        ; sub_13AB0F↑p ...
                JSR     sub_E655

loc_13AB41:                             ; CODE XREF: sub_13AD27:loc_13AD61↓p
                                        ; sub_13AFD1+11↓p ...
                LDY     #1
                LDA     (Dist),Y
                JMP     sub_DE6C
; End of function sub_13AB3E


; =============== S U B R O U T I N E =======================================


sub_13AB48:                             ; CODE XREF: sub_13A1C6:loc_13A1E4↑p
                JSR     sub_13AB3E
                LDY     #$1C
                LDA     (Dist),Y
                TAY
                JMP     loc_13AB19
; End of function sub_13AB48


; =============== S U B R O U T I N E =======================================


sub_13AB53:                             ; CODE XREF: main+C6↑P
                JSR     sub_E266
                JSR     sub_13AB3E
                LDY     byte_35
                JMP     loc_13AB19
; End of function sub_13AB53


; =============== S U B R O U T I N E =======================================


sub_13AB5E:                             ; CODE XREF: sub_13AB0F+E↑p
                ASL     A
                TAX
                LDA     off_13AB69+1,X
                PHA
                LDA     off_13AB69,X
                PHA
                RTS
; End of function sub_13AB5E

; ---------------------------------------------------------------------------
off_13AB69:     .WORD loc_13AB30-1, loc_13AC88-1, sub_13AC8D-1, return-1
                                        ; DATA XREF: sub_13AB5E+6↑r
                                        ; sub_13AB5E+2↑r
                .WORD sub_13ACBA-1, sub_13AC54-1, sub_13AC54-1, infinite_loop-1
                .WORD sub_13AD0D-1, sub_13ADA2-1, loc_13AC71-1, loc_13AC71-1
                .WORD sub_13AC61-1, sub_13AC6A-1, infinite_loop-1, sub_13AC4B-1
                .WORD sub_13AE23-1, sub_13AE35-1, sub_13AE4A-1, sub_13AE6C-1
                .WORD sub_13AE5E-1, sub_13AE7A-1, sub_13AE8A-1, sub_13B48D-1
                .WORD sub_13B0AD-1, sub_13AE97-1, sub_13AEBD-1, sub_13B505-1
                .WORD sub_13B0E4-1, sub_13AE9E-1, sub_13AEC5-1, sub_13B484-1
                .WORD sub_13B196-1, sub_13B172-1, sub_13B184-1, sub_13AFAC-1
                .WORD loc_13AFB8-1, sub_13AEB6-1, sub_13AED3-1, sub_13AF8E-1
                .WORD sub_13AEDB-1, loc_13AEEE-1, sub_13AF15-1, loc_13AF2F-1
                .WORD loc_13AFDC-1, sub_13AFD1-1, loc_13AFEA-1, loc_13AFF5-1
                .WORD loc_13B00C-1, sub_13B03C-1, sub_13AF5E-1, sub_13B028-1
                .WORD loc_13AC71-1, loc_13AC71-1, sub_13B3D8-1, sub_13ADFA-1
                .WORD sub_13B1BD-1, loc_13B1D8-1, sub_13B0D1-1, sub_13B235-1
                .WORD sub_13B42B-1, sub_13B420-1, sub_13B246-1, sub_13AC57-1
                .WORD loc_13AC71-1, sub_13B4EB-1, sub_13B440-1, sub_13B459-1
                .WORD sub_13B472-1, sub_13B511-1, sub_13B290-1, sub_13B2FC-1
                .WORD sub_13B323-1, sub_13B339-1, sub_13B34A-1, sub_13B3A8-1
                .WORD sub_13B3B5-1, sub_13B317-1, sub_13B432-1, sub_13B3E8-1
                .WORD sub_13B5A9-1, loc_13B64A-1, sub_13B5E2-1, sub_13B600-1
                .WORD sub_13B5F1-1, sub_13B546-1, sub_13B4A0-1, sub_13B4A9-1
                .WORD sub_13AEAA-1, sub_13B629-1, sub_13B695-1, sub_13B6AC-1
                .WORD sub_13B6B4-1, sub_13B6BC-1, infinite_loop-1, sub_13B6C4-1
                .WORD sub_13B5C9-1, sub_13B640-1, sub_13B1FD-1, sub_13B223-1
                .WORD sub_13B6DB-1, sub_13B6EA-1, sub_13B70C-1, sub_13B725-1
                .WORD sub_13B72D-1, sub_13B735-1, sub_13B73F-1, sub_13B751-1

; =============== S U B R O U T I N E =======================================


infinite_loop:                          ; CODE XREF: infinite_loop↓j
                                        ; DATA XREF: BANK13:off_13AB69↑o
                JMP     infinite_loop
; End of function infinite_loop


; =============== S U B R O U T I N E =======================================


sub_13AC44:                             ; CODE XREF: sub_13A000+4F↑p
                                        ; sub_13B814+3C↓p ...
                STA     PointerTilePack
                STX     PointerTilePack+1
                JMP     sub_C6D2
; End of function sub_13AC44


; =============== S U B R O U T I N E =======================================


sub_13AC4B:                             ; CODE XREF: sub_13A123+41↑j
                                        ; DATA XREF: BANK13:off_13AB69↑o
                JSR     loc_13AB30
                JSR     darken_palette
                JMP     reset
; End of function sub_13AC4B


; =============== S U B R O U T I N E =======================================


sub_13AC54:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                INY
                RTS
; End of function sub_13AC54


; =============== S U B R O U T I N E =======================================


sub_13AC57:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CLC
                ADC     #4
                STA     byte_21
                INY
                RTS
; End of function sub_13AC57


; =============== S U B R O U T I N E =======================================


sub_13AC61:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CLC
                ADC     #$C0
                JMP     loc_13AC6D
; End of function sub_13AC61


; =============== S U B R O U T I N E =======================================


sub_13AC6A:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3

loc_13AC6D:                             ; CODE XREF: sub_13AC61+6↑j
                CMP     byte_29
                BNE     loc_13AC88

loc_13AC71:                             ; DATA XREF: BANK13:off_13AB69↑o
                TXA
                LSR     A
                CMP     byte_34
                BNE     loc_13AC88

loc_13AC77:                             ; CODE XREF: sub_13AC7A↓j
                                        ; sub_13AC7A:loc_13AC7E↓j ...
                INY
                INY
                RTS
; End of function sub_13AC6A


; =============== S U B R O U T I N E =======================================


sub_13AC7A:                             ; CODE XREF: sub_13AE8A+A↓j
                                        ; sub_13AEC5+B↓j ...
                BCS     loc_13AC77
                BCC     loc_13AC88

loc_13AC7E:                             ; CODE XREF: sub_13B440+16↓j
                                        ; sub_13B459+16↓j
                BCC     loc_13AC77
                BCS     loc_13AC88

loc_13AC82:                             ; CODE XREF: sub_13B505+9↓j
                BNE     loc_13AC77
                BEQ     loc_13AC88
; End of function sub_13AC7A


; =============== S U B R O U T I N E =======================================


sub_13AC86:                             ; CODE XREF: sub_13ADA2+9↓j
                                        ; sub_13AE4A+B↓j ...
                BEQ     loc_13AC77

loc_13AC88:                             ; CODE XREF: sub_13AC6A+5↑j
                                        ; sub_13AC6A+B↑j ...
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAY
                RTS
; End of function sub_13AC86


; =============== S U B R O U T I N E =======================================


sub_13AC8D:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     Source          ; byte_109EAB, byte_109EB3
                PHA
                LDA     Source+1        ; byte_109EAB, byte_109EB3
                PHA
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                PHA
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                PHA
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_35
                INY
                PLA
                STA     Source+1        ; byte_109EAB, byte_109EB3
                PLA
                STA     Source          ; byte_109EAB, byte_109EB3
                TYA
                PHA
                LDY     byte_35
                JSR     loc_13AB19
                PLA
                TAY
                PLA
                STA     Source+1        ; byte_109EAB, byte_109EB3
                PLA
                STA     Source          ; byte_109EAB, byte_109EB3
                RTS
; End of function sub_13AC8D


; =============== S U B R O U T I N E =======================================


return:                                 ; DATA XREF: BANK13:off_13AB69↑o
                PLA
                PLA
                RTS
; End of function return


; =============== S U B R O U T I N E =======================================


sub_13ACBA:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     CurrentGame.PureSave.field_4
                AND     #$3F ; '?'
                CMP     #$24 ; '$'
                BCC     loc_13AD05
                CMP     #$2C ; ','
                BCS     loc_13AD05
                JSR     store_palettes
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     CHRBank
                INY

loc_13ACD0:                             ; CODE XREF: sub_13ACBA+30↓j
                LSR     A
                LSR     A
                LSR     A
                AND     #7
                TAX
                LDA     Colors,X
                STA     PalNMIBG+1
                STA     PalNMIBG+5
                STA     PalNMIBG+9
                STA     PalNMIBG+$D
                JSR     one_frame
                LDA     CHRBank
                BNE     loc_13ACD0
                LDA     BankNum0
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     BankNum1
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JMP     back_palettes
; ---------------------------------------------------------------------------
Colors:                                 ; DATA XREF: sub_13ACBA+1C↑r
                .BYTE LIGHT_BLUE, LIGHT_INDIGO, LIGHT_VIOLET, LIGHT_PURPLE
                .BYTE LIGHT_REDVIOLET, LIGHT_PURPLE, LIGHT_VIOLET, LIGHT_INDIGO
; ---------------------------------------------------------------------------

loc_13AD05:                             ; CODE XREF: sub_13ACBA+7↑j
                                        ; sub_13ACBA+B↑j
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                JMP     wait_frames     ; wait for a few frames
; End of function sub_13ACBA            ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13AD0D:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     PointerTilePack
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_73
                INY
                STY     byte_35

loc_13AD1A:                             ; CODE XREF: sub_13A3A9+D↑p
                                        ; sub_13A443+5↑j ...
                LDA     byte_2C
                BNE     loc_13AD21
                JSR     sub_13BC0A

loc_13AD21:                             ; CODE XREF: sub_13AD0D+F↑j
                LDA     #8
                CMP     byte_2C
                BEQ     loc_13AD7B
; End of function sub_13AD0D


; =============== S U B R O U T I N E =======================================


sub_13AD27:                             ; CODE XREF: sub_13ADAE+A↓p
                                        ; sub_13ADFA+F↓p ...
                STA     byte_2C

loc_13AD29:                             ; CODE XREF: sub_13A44B+3↑j
                                        ; sub_13AD27+38↓j
                LDY     PosY
                CPY     #$1B
                BCC     loc_13AD36
                JSR     sub_13AD98
                DEC     byte_2D
                BMI     loc_13AD84

loc_13AD36:                             ; CODE XREF: sub_13AD27+6↑j
                LDA     byte_2D
                BNE     loc_13AD40
                LDY     PosY
                CPY     #$19
                BCS     loc_13AD84

loc_13AD40:                             ; CODE XREF: sub_13AD27+11↑j
                                        ; sub_13AD27+67↓j
                JSR     sub_CAA2
                LDA     #$16
                STA     byte_70
                LDA     #0
                STA     byte_71
                JSR     print_string
                JSR     sub_C7AF
                CMP     #0
                BEQ     loc_13AD61
                LDY     #0
                LDA     (PointerTilePack),Y
                CMP     #3
                BEQ     loc_13AD75
                CMP     #0
                BNE     loc_13AD29

loc_13AD61:                             ; CODE XREF: sub_13AD27+2C↑j
                JSR     loc_13AB41
                LDA     #0
                STA     byte_70
                STA     byte_71
                LDY     byte_35

loc_13AD6C:                             ; CODE XREF: sub_13AD27:loc_13AD84↓p
                SEC
                LDA     PosY
                SBC     #$13
                LSR     A
                STA     byte_2D
                RTS
; ---------------------------------------------------------------------------

loc_13AD75:                             ; CODE XREF: sub_13AD27+34↑j
                INC     PointerTilePack
                BNE     loc_13AD7B
                INC     byte_73

loc_13AD7B:                             ; CODE XREF: sub_13AD0D+18↑j
                                        ; sub_13AD27+50↑j
                LDY     PosY
                CPY     #$1B
                BCC     loc_13AD84
                JSR     sub_13AD98

loc_13AD84:                             ; CODE XREF: sub_13AD27+D↑j
                                        ; sub_13AD27+17↑j ...
                JSR     loc_13AD6C
                LDA     #$91
                LDX     #$AD            ; AD91
                JSR     loc_13ADC5
                JMP     loc_13AD40
; End of function sub_13AD27

; ---------------------------------------------------------------------------
                .BYTE 1, 1, 0, 0, $C0, $3B, $12

; =============== S U B R O U T I N E =======================================


sub_13AD98:                             ; CODE XREF: sub_13AD27+8↑p
                                        ; sub_13AD27+5A↑p
                LDX     #4
                JSR     sub_C7C1
                DEC     PosY
                DEC     PosY
                RTS
; End of function sub_13AD98


; =============== S U B R O U T I N E =======================================


sub_13ADA2:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     sub_13ADAE
                LDY     byte_35
                LDA     CurrentFieldPosition
                JMP     sub_13AC86
; End of function sub_13ADA2


; =============== S U B R O U T I N E =======================================


sub_13ADAE:                             ; CODE XREF: sub_13ADA2+2↑p
                LDA     #$DF
                LDX     #$AD            ; ADDF
                STA     PointerTilePack
                STX     byte_73
                LDA     #9
                JSR     sub_13AD27
                LDA     #$EC            ; ADEC
                LDX     #$AD
                BNE     loc_13ADC5

loc_13ADC1:                             ; CODE XREF: sub_13A123+2E↑p
                                        ; sub_13ADFA+12↓p
                LDA     #$F3
                LDX     #$AD            ; ADF3

loc_13ADC5:                             ; CODE XREF: sub_13AD27+64↑p
                                        ; sub_13ADAE+11↑j
                STA     pCursor
                STX     pCursor+1
                LDY     #6
                LDA     (pCursor),Y
                STA     PosX
                LDA     #$D1
                LDX     #$F0            ; ROM:F0D1
                STA     pStr
                STX     pStr+1
                JSR     loc_EF4B
                LDA     #8
                STA     PosX
                RTS
; End of function sub_13ADAE

; ---------------------------------------------------------------------------
                .BYTE $A0, $A0, $A0, $A0, $D9, $E5, $F3, $A0, $A0, $CE
                .BYTE $EF, $A0, 0
                .BYTE 2, 1, 5, 0, $80, $3A, $B
                .BYTE 2, 1, 9, 0, $C0, $3A, 9

; =============== S U B R O U T I N E =======================================


sub_13ADFA:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     PointerTilePack
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_73
                INY
                STY     byte_35
                LDA     #$37 ; '7'
                JSR     sub_13AD27
                JSR     loc_13ADC1
                LDY     byte_35
                BIT     Buttons
                BVS     loc_13AE20
                LDA     CurrentFieldPosition
                BNE     loc_13AE1C
                INY
                INY
                RTS
; ---------------------------------------------------------------------------

loc_13AE1C:                             ; CODE XREF: sub_13ADFA+1D↑j
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAY
                RTS
; ---------------------------------------------------------------------------

loc_13AE20:                             ; CODE XREF: sub_13ADFA+19↑j
                JMP     loc_13AC88
; End of function sub_13ADFA


; =============== S U B R O U T I N E =======================================


sub_13AE23:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                JSR     sub_13AE58
                ORA     byte_EC5D,X
                STA     CurrentGame.field_200,Y
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13AE23


; =============== S U B R O U T I N E =======================================


sub_13AE35:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                JSR     sub_13AE58
                ORA     byte_EC5D,X
                EOR     byte_EC5D,X
                STA     CurrentGame.field_200,Y
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13AE35


; =============== S U B R O U T I N E =======================================


sub_13AE4A:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13AE58
                LDY     byte_35
                AND     byte_EC5D,X
                EOR     byte_EC5D,X
                JMP     sub_13AC86
; End of function sub_13AE4A


; =============== S U B R O U T I N E =======================================


sub_13AE58:                             ; CODE XREF: sub_13AE23+3↑p
                                        ; sub_13AE35+3↑p ...
                INY
                STY     byte_35
                JMP     loc_E646
; End of function sub_13AE58


; =============== S U B R O U T I N E =======================================


sub_13AE5E:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                JSR     sram_write_enable
                INC     CurrentGame.field_260,X
                JMP     sram_read_enable
; End of function sub_13AE5E


; =============== S U B R O U T I N E =======================================


sub_13AE6C:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                JSR     sram_write_enable
                DEC     CurrentGame.field_260,X
                JMP     sram_read_enable
; End of function sub_13AE6C


; =============== S U B R O U T I N E =======================================


sub_13AE7A:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                JSR     sram_write_enable
                LDA     #0
                STA     CurrentGame.field_260,X
                JMP     sram_read_enable
; End of function sub_13AE7A


; =============== S U B R O U T I N E =======================================


sub_13AE8A:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                LDA     CurrentGame.field_260,X
                CMP     (Source),Y      ; byte_109EAB, byte_109EB3
                JMP     sub_13AC7A
; End of function sub_13AE8A


; =============== S U B R O U T I N E =======================================


sub_13AE97:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13B032
                LDY     byte_35
                INY
                RTS
; End of function sub_13AE97


; =============== S U B R O U T I N E =======================================


sub_13AE9E:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     word_2A
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     word_2A+1
                INY
                RTS
; End of function sub_13AE9E


; =============== S U B R O U T I N E =======================================


sub_13AEAA:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     CurrentGame.PureSave.field_10
                STA     word_2A
                LDA     CurrentGame.PureSave.field_10+1
                STA     word_2A+1
                INY
                RTS
; End of function sub_13AEAA


; =============== S U B R O U T I N E =======================================


sub_13AEB6:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13AFC4
                LDY     byte_35
                INY
                RTS
; End of function sub_13AEB6


; =============== S U B R O U T I N E =======================================


sub_13AEBD:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     byte_28
                CMP     (Source),Y      ; byte_109EAB, byte_109EB3
                JMP     sub_13AC86
; End of function sub_13AEBD


; =============== S U B R O U T I N E =======================================


sub_13AEC5:                             ; DATA XREF: BANK13:off_13AB69↑o
                SEC
                INY
                LDA     word_2A
                SBC     (Source),Y      ; byte_109EAB, byte_109EB3
                INY
                LDA     word_2A+1
                SBC     (Source),Y      ; byte_109EAB, byte_109EB3
                JMP     sub_13AC7A
; End of function sub_13AEC5


; =============== S U B R O U T I N E =======================================


sub_13AED3:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     byte_29
                CMP     (Source),Y      ; byte_109EAB, byte_109EB3
                JMP     sub_13AC86
; End of function sub_13AED3


; =============== S U B R O U T I N E =======================================


sub_13AEDB:                             ; DATA XREF: BANK13:off_13AB69↑o
                CLC
                LDA     CurrentGame.PureSave.field_10
                ADC     word_2A
                STA     Pointer
                LDA     CurrentGame.PureSave.field_10+1
                ADC     word_2A+1
                STA     Pointer+1
                BCS     loc_13AF12
                BCC     loc_13AEFF

loc_13AEEE:                             ; DATA XREF: BANK13:off_13AB69↑o
                SEC
                LDA     CurrentGame.PureSave.field_10
                SBC     word_2A
                STA     Pointer
                LDA     CurrentGame.PureSave.field_10+1
                SBC     word_2A+1
                STA     Pointer+1
                BCC     loc_13AF12

loc_13AEFF:                             ; CODE XREF: sub_13AEDB+11↑j
                JSR     sram_write_enable
                LDA     Pointer
                STA     CurrentGame.PureSave.field_10
                LDA     Pointer+1
                STA     CurrentGame.PureSave.field_10+1
                JSR     sram_read_enable
                INY
                INY
                RTS
; ---------------------------------------------------------------------------

loc_13AF12:                             ; CODE XREF: sub_13AEDB+F↑j
                                        ; sub_13AEDB+22↑j ...
                JMP     loc_13AC88
; End of function sub_13AEDB


; =============== S U B R O U T I N E =======================================


sub_13AF15:                             ; DATA XREF: BANK13:off_13AB69↑o
                CLC
                LDA     CurrentGame.PureSave.field_12
                ADC     word_2A
                STA     Pointer
                LDA     CurrentGame.PureSave.field_12+1
                ADC     word_2A+1
                STA     Pointer+1
                LDA     CurrentGame.PureSave.field_14
                ADC     #0
                STA     AddrForJmp
                BCS     loc_13AF12
                BCC     loc_13AF47

loc_13AF2F:                             ; DATA XREF: BANK13:off_13AB69↑o
                SEC
                LDA     CurrentGame.PureSave.field_12
                SBC     word_2A
                STA     Pointer
                LDA     CurrentGame.PureSave.field_12+1
                SBC     word_2A+1
                STA     Pointer+1
                LDA     CurrentGame.PureSave.field_14
                SBC     #0
                STA     AddrForJmp
                BCC     loc_13AF12

loc_13AF47:                             ; CODE XREF: sub_13AF15+18↑j
                JSR     sram_write_enable
                LDA     Pointer
                STA     CurrentGame.PureSave.field_12
                LDA     Pointer+1
                STA     CurrentGame.PureSave.field_12+1
                LDA     AddrForJmp
                STA     CurrentGame.PureSave.field_14
                INY
                INY
                JMP     sram_read_enable
; End of function sub_13AF15


; =============== S U B R O U T I N E =======================================


sub_13AF5E:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     pTileID
                STY     byte_35
                LDA     word_2A
                STA     Pointer
                LDA     word_2A+1
                STA     Pointer+1
                JSR     sub_F0F1
                LDA     #$64 ; 'd'
                STA     pTileID
                JSR     sub_F13D
                LDY     byte_35
                INY
                LDA     AddrForJmp
                BNE     sub_13AF87
                LDA     Pointer
                STA     word_2A
                LDA     Pointer+1
                STA     word_2A+1
                RTS
; End of function sub_13AF5E


; =============== S U B R O U T I N E =======================================


sub_13AF87:                             ; CODE XREF: sub_13AF5E+1E↑j
                                        ; sub_13B511+29↓p
                LDA     #$FF
                STA     word_2A
                STA     word_2A+1
                RTS
; End of function sub_13AF87


; =============== S U B R O U T I N E =======================================


sub_13AF8E:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13AFC4
                LDX     #0

loc_13AF93:                             ; CODE XREF: sub_13AF8E+1A↓j
                JSR     sub_D9F1
                BCS     loc_13AFA5
                STA     byte_28
                TXA
                PHA
                LDA     byte_29
                JSR     sub_13B058
                PLA
                TAX
                BCC     sub_13B01E

loc_13AFA5:                             ; CODE XREF: sub_13AF8E+8↑j
                INX
                CPX     #4
                BCC     loc_13AF93
                BCS     sub_13B023
; End of function sub_13AF8E


; =============== S U B R O U T I N E =======================================


sub_13AFAC:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13AFC4
                LDA     byte_29
                JSR     sub_13B058
                BCC     sub_13B01E
                BCS     sub_13B023

loc_13AFB8:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13AFC4
                LDA     byte_29
                JSR     sub_13B063
                BCS     sub_13B023
                BCC     sub_13B01E
; End of function sub_13AFAC


; =============== S U B R O U T I N E =======================================


sub_13AFC4:                             ; CODE XREF: sub_13AEB6↑p
                                        ; sub_13AF8E↑p ...
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_29
                STY     byte_35
                JSR     sub_13BBC3
                JMP     sub_13BB8C
; End of function sub_13AFC4


; =============== S U B R O U T I N E =======================================


sub_13AFD1:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     #0
                JSR     sub_13B058
                BCS     sub_13B023
                BCC     loc_13AFFE

loc_13AFDC:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     sub_13B0A3
                PHP
                JSR     loc_13AB41
                PLP
                BNE     sub_13B023
                BEQ     loc_13AFEC

loc_13AFEA:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35

loc_13AFEC:                             ; CODE XREF: sub_13AFD1+17↑j
                LDA     byte_29
                JSR     sub_13B058
                BCS     sub_13B023
                BCC     loc_13B015

loc_13AFF5:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     #0
                JSR     sub_13B063
                BCS     sub_13B023

loc_13AFFE:                             ; CODE XREF: sub_13AFD1+9↑j
                JSR     sram_write_enable
                LDA     byte_29
                STA     (Pointer),Y
                LDY     byte_35
                INY
                INY
                JMP     sram_read_enable
; ---------------------------------------------------------------------------

loc_13B00C:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     byte_29
                JSR     sub_13B063
                BCS     sub_13B023

loc_13B015:                             ; CODE XREF: sub_13AFD1+22↑j
                JSR     sram_write_enable
                JSR     loc_13B07E
                JSR     sram_read_enable
; End of function sub_13AFD1


; =============== S U B R O U T I N E =======================================


sub_13B01E:                             ; CODE XREF: sub_13AF8E+15↑j
                                        ; sub_13AFAC+8↑j ...
                LDY     byte_35
                INY
                INY
                RTS
; End of function sub_13B01E


; =============== S U B R O U T I N E =======================================


sub_13B023:                             ; CODE XREF: sub_13AF8E+1C↑j
                                        ; sub_13AFAC+A↑j ...
                LDY     byte_35
                JMP     loc_13AC88
; End of function sub_13B023


; =============== S U B R O U T I N E =======================================


sub_13B028:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13B032
                JSR     sub_13A728
                BCC     sub_13B01E
                BCS     sub_13B023
; End of function sub_13B028


; =============== S U B R O U T I N E =======================================


sub_13B032:                             ; CODE XREF: sub_13AE97↑p
                                        ; sub_13B028↑p ...
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_28
                STY     byte_35
                JMP     sub_13BB6F
; End of function sub_13B032


; =============== S U B R O U T I N E =======================================


sub_13B03C:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STY     byte_35
                PHA
                LDA     byte_28
                JSR     sub_13B089
                PLA
                TAY
                LDA     (Pointer),Y
                BEQ     sub_13B023
                STA     byte_29
                JSR     sub_13BBC3
                JSR     sub_13BB8C
                JMP     sub_13B01E
; End of function sub_13B03C


; =============== S U B R O U T I N E =======================================


sub_13B058:                             ; CODE XREF: sub_13A49A+6↑p
                                        ; sub_13A49A+D↑p ...
                PHA
                LDA     byte_28
                JSR     sub_13B089
                PLA
                LDY     #8
                BNE     loc_13B068
; End of function sub_13B058


; =============== S U B R O U T I N E =======================================


sub_13B063:                             ; CODE XREF: sub_13AFAC+11↑p
                                        ; sub_13AFD1+28↑p ...
                JSR     sub_13B09A
                LDY     #$50 ; 'P'

loc_13B068:                             ; CODE XREF: sub_13B058+9↑j
                STY     pTileID
                LDY     #0

loc_13B06C:                             ; CODE XREF: sub_13B063+10↓j
                CMP     (Pointer),Y
                BEQ     loc_13B076
                INY
                CPY     pTileID
                BCC     loc_13B06C
                RTS
; ---------------------------------------------------------------------------

loc_13B076:                             ; CODE XREF: sub_13B063+B↑j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_13B078:                             ; CODE XREF: sub_13B063+1E↓j
                LDA     (Pointer),Y
                DEY
                STA     (Pointer),Y
                INY

loc_13B07E:                             ; CODE XREF: sub_13A990+A↑p
                                        ; sub_13AFD1+47↑p
                INY
                CPY     pTileID
                BCC     loc_13B078
                LDA     #0
                DEY
                STA     (Pointer),Y
                RTS
; End of function sub_13B063


; =============== S U B R O U T I N E =======================================


sub_13B089:                             ; CODE XREF: sub_13B03C+8↑p
                                        ; sub_13B058+3↑p ...
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                CLC
                LDA     Pointer
                ADC     #$20 ; ' '
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1
                RTS
; End of function sub_13B089


; =============== S U B R O U T I N E =======================================


sub_13B09A:                             ; CODE XREF: sub_13B063↑p
                                        ; sub_13B1E1:loc_13B1E8↓p
                LDX     #$B0
                STX     Pointer         ; ROM:76B0
                LDX     #$76 ; 'v'
                STX     Pointer+1
                RTS
; End of function sub_13B09A


; =============== S U B R O U T I N E =======================================


sub_13B0A3:                             ; CODE XREF: sub_13A98B↑p
                                        ; sub_13AFD1+D↑p
                JSR     sub_13BBDF
                LDY     #2
                LDA     (Pointer),Y
                AND     #$80
                RTS
; End of function sub_13B0A3


; =============== S U B R O U T I N E =======================================


sub_13B0AD:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$18
                STA     byte_2C
                LDA     PosX
                PHA
                LDA     PosY
                PHA
                STY     byte_35
                JSR     sub_13B763
                PLA
                STA     PosY
                PLA
                STA     PosX
                BCS     loc_13B0CC

loc_13B0C4:                             ; CODE XREF: sub_13B0D1+11↓j
                JSR     sub_13BB6F
                LDY     byte_35
                INY
                INY
                RTS
; ---------------------------------------------------------------------------

loc_13B0CC:                             ; CODE XREF: sub_13B0AD+15↑j
                                        ; sub_13B0D1+8↓j ...
                LDY     byte_35
                JMP     loc_13AC88
; End of function sub_13B0AD


; =============== S U B R O U T I N E =======================================


sub_13B0D1:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STY     byte_35
                TAX
                CPX     #4
                BCS     loc_13B0CC
                LDA     CurrentGame.PureSave.CharactersNum,X
                BEQ     loc_13B0CC
                STA     byte_28
                BNE     loc_13B0C4
; End of function sub_13B0D1


; =============== S U B R O U T I N E =======================================


sub_13B0E4:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     sub_13BC28
                LDX     #7

loc_13B0EB:                             ; CODE XREF: sub_13B0E4+D↓j
                LDA     byte_13B15E,X
                STA     pDist,X
                DEX
                BPL     loc_13B0EB
                LDA     #$66 ; 'f'
                LDX     #$B1            ; B166
                STA     PointerTilePack
                STX     byte_73
                LDA     #$1C
                JSR     sub_13AD27
                LDA     #$6C ; 'l'
                LDX     #$B1            ; B16C
                STA     pCursor
                STX     pCursor+1
                LDA     #$6C ; 'l'
                LDX     #0
                STA     pStr
                STX     pStr+1
                LDA     #0
                STA     CurrentX
                STA     CurrentY
                STA     CurrentFieldPosition

loc_13B118:                             ; CODE XREF: sub_13B0E4+5F↓j
                LDX     #$C
                STX     PosX
                JSR     loc_EF7C
                LDA     Buttons
                AND     #$C
                BEQ     loc_13B146
                LDX     CurrentFieldPosition
                LDY     byte_6C,X
                AND     #8
                BEQ     loc_13B136
                INY
                CPY     #$BA
                BNE     loc_13B13D
                LDY     #$B0
                BNE     loc_13B13D

loc_13B136:                             ; CODE XREF: sub_13B0E4+47↑j
                DEY
                CPY     #$AF
                BNE     loc_13B13D
                LDY     #$B9

loc_13B13D:                             ; CODE XREF: sub_13B0E4+4C↑j
                                        ; sub_13B0E4+50↑j ...
                TYA
                STA     byte_6C,X
                JSR     get_cursor_pos  ; get position of cursor and set cursor tile
                                        ; Input: A - tile ID
                                        ; Output: PosX, PosY
                JMP     loc_13B118
; ---------------------------------------------------------------------------

loc_13B146:                             ; CODE XREF: sub_13B0E4+3F↑j
                JSR     sub_F1A4
                LDA     Pointer
                STA     word_2A
                LDA     Pointer+1
                STA     word_2A+1
                LDX     #8
                STX     PosX
                LDY     byte_35
                LDA     #$40 ; '@'
                BIT     Buttons
                JMP     sub_13AC86
; End of function sub_13B0E4

; ---------------------------------------------------------------------------
byte_13B15E:    .BYTE $A0, $A0, $A4, $A0, $B0, $B0, $B0, $B0
                                        ; DATA XREF: sub_13B0E4:loc_13B0EB↑r
                .BYTE $23, $68, 0, 0, 8, 0
                .BYTE 4, 1, 1, 0, $CC, 1

; =============== S U B R O U T I N E =======================================


sub_13B172:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$21 ; '!'
                STA     byte_2C
                STY     byte_35
                LDA     PosX
                PHA
                LDA     PosY
                PHA
                JSR     sub_13B87F
                JMP     loc_13B1A5
; End of function sub_13B172


; =============== S U B R O U T I N E =======================================


sub_13B184:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$22 ; '"'
                STA     byte_2C
                STY     byte_35
                LDA     PosX
                PHA
                LDA     PosY
                PHA
                JSR     sub_13B814
                JMP     loc_13B1A5
; End of function sub_13B184


; =============== S U B R O U T I N E =======================================


sub_13B196:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$20 ; ' '
                STA     byte_2C
                STY     byte_35
                LDA     PosX
                PHA
                LDA     PosY
                PHA
                JSR     sub_13B7B6

loc_13B1A5:                             ; CODE XREF: sub_13B172+F↑j
                                        ; sub_13B184+F↑j
                PLA
                STA     PosY
                PLA
                STA     PosX
                BCS     loc_13B1B8
                JSR     sub_13BBC3
                JSR     sub_13BB8C

loc_13B1B3:                             ; CODE XREF: sub_13B1BD+12↓j
                                        ; sub_13B1BD+22↓j
                LDY     byte_35
                INY
                INY
                RTS
; ---------------------------------------------------------------------------

loc_13B1B8:                             ; CODE XREF: sub_13B196+15↑j
                                        ; sub_13B1BD+19↓j ...
                LDY     byte_35
                JMP     loc_13AC88
; End of function sub_13B196


; =============== S U B R O U T I N E =======================================


sub_13B1BD:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDX     #0

loc_13B1C1:                             ; CODE XREF: sub_13B1BD+17↓j
                JSR     sub_D9F1
                BCS     loc_13B1D1
                TAY
                TXA
                PHA
                TYA
                JSR     sub_13B1E1
                PLA
                TAX
                BCC     loc_13B1B3

loc_13B1D1:                             ; CODE XREF: sub_13B1BD+7↑j
                INX
                CPX     #4
                BCC     loc_13B1C1
                BCS     loc_13B1B8

loc_13B1D8:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     loc_13B1E8
                BCS     loc_13B1B8
                BCC     loc_13B1B3
; End of function sub_13B1BD


; =============== S U B R O U T I N E =======================================


sub_13B1E1:                             ; CODE XREF: sub_13B1BD+D↑p
                JSR     sub_13B089
                LDY     #8
                BNE     loc_13B1ED

loc_13B1E8:                             ; CODE XREF: sub_13B1BD+1D↑p
                JSR     sub_13B09A
                LDY     #$50 ; 'P'

loc_13B1ED:                             ; CODE XREF: sub_13B1E1+5↑j
                STY     pTileID
                LDY     #0

loc_13B1F1:                             ; CODE XREF: sub_13B1E1+17↓j
                LDA     (Pointer),Y
                BNE     loc_13B1FB
                INY
                CPY     pTileID
                BCC     loc_13B1F1
                RTS
; ---------------------------------------------------------------------------

loc_13B1FB:                             ; CODE XREF: sub_13B1E1+12↑j
                CLC
                RTS
; End of function sub_13B1E1


; =============== S U B R O U T I N E =======================================


sub_13B1FD:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     loc_13B5C4
                JSR     sram_write_enable
                LDY     #$28 ; '('
                LDA     (Pointer),Y
                BEQ     loc_13B21B
                STA     CurrentGame.field_280
                STY     AddrForJmp
                JSR     loc_13BC5A
                JSR     loc_13AB41

loc_13B216:                             ; CODE XREF: sub_13B223+F↓j
                LDY     byte_35
                INY
                INY
                RTS
; ---------------------------------------------------------------------------

loc_13B21B:                             ; CODE XREF: sub_13B1FD+C↑j
                LDY     byte_35
                JSR     sram_read_enable

loc_13B220:                             ; CODE XREF: sub_13B223+3↓j
                JMP     loc_13AC88
; End of function sub_13B1FD


; =============== S U B R O U T I N E =======================================


sub_13B223:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     CurrentGame.field_280
                BEQ     loc_13B220
                STA     byte_29
                STY     byte_35
                JSR     sub_13BBC3
                JSR     sub_13BB8C
                JMP     loc_13B216
; End of function sub_13B223


; =============== S U B R O U T I N E =======================================


sub_13B235:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STY     byte_35
                JSR     sub_DE13
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13B235


; =============== S U B R O U T I N E =======================================


sub_13B246:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                PHA
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                INY
                STY     byte_35
                LDY     #$1F
                STA     (Dist),Y
                DEY
                PLA
                STA     (Dist),Y
                LDY     #0
                LDA     #7
                STA     (Dist),Y
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$3F ; '?'
                LDY     #$1D
                STA     (Dist),Y
                LDY     #$14
                LDA     (Dist),Y
                AND     #$BF
                STA     (Dist),Y
                LDY     #$1C
                LDA     byte_35
                STA     (Dist),Y
                LDA     byte_6795
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     byte_EBF1,X
                LSR     A
                LSR     A
                STA     byte_6799
                JSR     sram_read_enable
                PLA
                PLA
                JMP     loc_13AB23
; End of function sub_13B246


; =============== S U B R O U T I N E =======================================


sub_13B290:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     BankTable.PPU_2K_1800
                JSR     sub_13B29C

loc_13B295:                             ; CODE XREF: sub_13B2FC+18↓j
                                        ; sub_13B323+13↓j ...
                LDY     byte_35
                INY
                INY
                JMP     sram_read_enable
; End of function sub_13B290


; =============== S U B R O U T I N E =======================================


sub_13B29C:                             ; CODE XREF: sub_13B290+2↑p
                                        ; sub_13B2FC+2↓p ...
                TAX
                STY     byte_35
                JSR     sram_write_enable
                TXA
                EOR     byte_23
                AND     #$7F
                BNE     loc_13B2AA
                RTS
; ---------------------------------------------------------------------------

loc_13B2AA:                             ; CODE XREF: sub_13B29C+B↑j
                STX     byte_23
                LDY     #$1C
                LDA     byte_35
                STA     (Dist),Y
                JSR     sub_13B2C3
                ORA     #$80
                STA     byte_21
                JSR     sram_read_enable
                PLA
                PLA
                PLA
                PLA
                JMP     loc_13AB30
; End of function sub_13B29C


; =============== S U B R O U T I N E =======================================


sub_13B2C3:                             ; CODE XREF: sub_13B29C+16↑p
                                        ; sub_13B472+5↓p
                SEC
                LDA     Dist
                SBC     #$80
                STA     Pointer
                LDA     Dist+1
                SBC     #$67 ; 'g'
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                RTS
; End of function sub_13B2C3


; =============== S U B R O U T I N E =======================================


sub_13B2D8:                             ; CODE XREF: sub_13B2FC+B↓p
                                        ; sub_13B323+B↓p ...
                STX     byte_6796
                STY     byte_6797

loc_13B2DE:                             ; CODE XREF: sub_13B3A8+7↓p
                STA     byte_6780
                ASL     A
                ASL     A
                TAX
                LDA     stru_E105.value,X
                STA     byte_6788
                LDA     stru_E105.value+1,X
                STA     byte_6794
                LDY     byte_35
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_6795
                STA     byte_6799
                RTS
; End of function sub_13B2D8


; =============== S U B R O U T I N E =======================================


sub_13B2FC:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$74 ; 't'
                JSR     sub_13B29C
                LDA     #9
                LDX     #$FC
                LDY     #$8A            ; 8AFC
                JSR     sub_13B2D8
                LDA     #$F
                STA     byte_679A
                LDX     #$10
                JSR     sub_CDAF
                JMP     loc_13B295
; End of function sub_13B2FC


; =============== S U B R O U T I N E =======================================


sub_13B317:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                LDA     #$F8
                STA     byte_679A
                INY
                JMP     sram_read_enable
; End of function sub_13B317


; =============== S U B R O U T I N E =======================================


sub_13B323:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$74 ; 't'
                JSR     sub_13B29C
                LDA     #$A
                LDX     #$1C
                LDY     #$8B            ; 8B1C
                JSR     sub_13B2D8
                LDX     #8
                JSR     sub_CDAF
                JMP     loc_13B295
; End of function sub_13B323


; =============== S U B R O U T I N E =======================================


sub_13B339:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$74 ; 't'
                JSR     sub_13B29C
                LDA     #$B
                LDX     #$3C ; '<'
                LDY     #$8B            ; 8B3C
                JSR     sub_13B2D8
                JMP     loc_13B295
; End of function sub_13B339


; =============== S U B R O U T I N E =======================================


sub_13B34A:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     #$F0
                STA     byte_23
                LDA     #$3F ; '?'
                STA     byte_15
                JSR     sram_write_enable
                LDA     #0
                STA     byte_67C0
                STA     byte_67E0
                LDA     #$D
                LDY     #0
                JSR     sub_13B38B
                LDA     #$E
                LDY     #$20 ; ' '
                JSR     sub_13B38B
                SEC
                LDA     byte_29
                SBC     #$8F
                STA     byte_679E
                LDA     #0
                STA     byte_679F
                STA     byte_679A
                JSR     sub_13BBD4
                LDX     #$10
                JSR     sub_CDAF
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13B34A


; =============== S U B R O U T I N E =======================================


sub_13B38B:                             ; CODE XREF: sub_13B34A+19↑p
                                        ; sub_13B34A+20↑p
                STA     byte_6780,Y
                ASL     A
                ASL     A
                TAX
                LDA     #$28 ; '('
                STA     byte_6796,Y
                LDA     #$8A
                STA     byte_6797,Y
                LDA     stru_E105.value,X
                STA     byte_6788,Y
                LDA     stru_E105.value+1,X
                STA     byte_6794,Y
                RTS
; End of function sub_13B38B


; =============== S U B R O U T I N E =======================================


sub_13B3A8:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$F2
                JSR     sub_13B29C
                LDA     #$F
                JSR     loc_13B2DE
                JMP     loc_13B295
; End of function sub_13B3A8


; =============== S U B R O U T I N E =======================================


sub_13B3B5:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                STY     byte_35
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                ORA     #$80
                STA     byte_20
                LDX     #0
                STX     byte_23
                JSR     sub_CDAF
                LDA     Dist
                PHA
                LDA     Dist+1
                PHA
                JSR     sub_D674
                PLA
                STA     Dist+1
                PLA
                STA     Dist
                LDY     byte_35
                INY
                RTS
; End of function sub_13B3B5


; =============== S U B R O U T I N E =======================================


sub_13B3D8:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDY     #2
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$3F ; '?'
                LDY     byte_35
                CMP     byte_6795
                JMP     sub_13AC86
; End of function sub_13B3D8


; =============== S U B R O U T I N E =======================================


sub_13B3E8:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$C0
                LDY     #4
                CMP     (Dist),Y
                BNE     loc_13B41B
                LDY     #1
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #5
                CMP     (Dist),Y
                BNE     loc_13B41B
                LDY     #2
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$C0
                LDY     #6
                CMP     (Dist),Y
                BNE     loc_13B41B
                LDY     #3
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #7
                CMP     (Dist),Y
                BNE     loc_13B41B
                LDY     byte_35
                INY
                INY
                RTS
; ---------------------------------------------------------------------------

loc_13B41B:                             ; CODE XREF: sub_13B3E8+C↑j
                                        ; sub_13B3E8+16↑j ...
                LDY     byte_35
                JMP     loc_13AC88
; End of function sub_13B3E8


; =============== S U B R O U T I N E =======================================


sub_13B420:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                INY
                JSR     sub_E6A1
                INY
                JMP     sram_read_enable
; End of function sub_13B420


; =============== S U B R O U T I N E =======================================


sub_13B42B:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     FuncID          ; ID from table BANK13:BCFD (RoutineTable)
                INY
                RTS
; End of function sub_13B42B


; =============== S U B R O U T I N E =======================================


sub_13B432:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     sram_write_enable
                JSR     sub_D9FA
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13B432


; =============== S U B R O U T I N E =======================================


sub_13B440:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13B032
                LDA     Dist
                PHA
                LDA     Dist+1
                PHA
                LDA     byte_28
                JSR     sub_D759
                PLA
                STA     Dist+1
                PLA
                STA     Dist
                LDY     byte_35
                JMP     loc_13AC7E
; End of function sub_13B440


; =============== S U B R O U T I N E =======================================


sub_13B459:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13B032
                LDA     Dist
                PHA
                LDA     Dist+1
                PHA
                LDA     byte_28
                JSR     sub_D78D
                PLA
                STA     Dist+1
                PLA
                STA     Dist
                LDY     byte_35
                JMP     loc_13AC7E
; End of function sub_13B459


; =============== S U B R O U T I N E =======================================


sub_13B472:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_48
                JSR     sub_13B2C3
                STA     byte_21
                INY
                STY     byte_35
                PLA
                PLA
                JMP     loc_13AB30
; End of function sub_13B472


; =============== S U B R O U T I N E =======================================


sub_13B484:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     sub_13BC28
                LDY     byte_35
                INY
                RTS
; End of function sub_13B484


; =============== S U B R O U T I N E =======================================


sub_13B48D:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$3F ; '?'
                TAX
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     CurrentGame,X
                INY
                JMP     sram_read_enable
; End of function sub_13B48D


; =============== S U B R O U T I N E =======================================


sub_13B4A0:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     make_save
                LDY     byte_35
                INY
                RTS
; End of function sub_13B4A0


; =============== S U B R O U T I N E =======================================


sub_13B4A9:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                JSR     loc_13B5C4
                LDY     #$10
                LDA     (Pointer),Y
                JSR     sub_DB40
                JSR     loc_13B5C4
                LDY     #$11
                SEC
                LDA     pTileID
                SBC     (Pointer),Y
                STA     word_2A
                INY
                LDA     pTileID+1
                SBC     (Pointer),Y
                STA     word_2A+1
                JSR     loc_13AB41
                JSR     sram_write_enable
                LDX     #3

loc_13B4D0:                             ; CODE XREF: sub_13B4A9+2E↓j
                LDA     CurrentGame.PureSave.field_4,X
                STA     CurrentGame.PureSave.field_C,X
                DEX
                BPL     loc_13B4D0
                LDA     #0
                STA     CurrentGame.PureSave.field_15
                STA     CurrentGame.PureSave.field_16
                STA     CurrentGame.PureSave.field_17
                JSR     sram_read_enable
                LDY     byte_35
                INY
                RTS
; End of function sub_13B4A9


; =============== S U B R O U T I N E =======================================


sub_13B4EB:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                LDX     #3

loc_13B4F0:                             ; CODE XREF: sub_13B4EB+C↓j
                LDA     CurrentGame.PureSave.field_C,X
                STA     CurrentGame.PureSave.field_4,X
                DEX
                BPL     loc_13B4F0
                LDA     #$20 ; ' '
                STA     byte_20
                LDA     #0
                STA     byte_22
                INY
                JMP     sram_read_enable
; End of function sub_13B4EB


; =============== S U B R O U T I N E =======================================


sub_13B505:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     CurrentGame.PureSave.field_15
                ORA     CurrentGame.PureSave.field_16
                ORA     CurrentGame.PureSave.field_17
                JMP     loc_13AC82
; End of function sub_13B505


; =============== S U B R O U T I N E =======================================


sub_13B511:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     word_2A
                STA     pTileID
                LDA     word_2A+1
                STA     pTileID+1
                LDX     #1

loc_13B51D:                             ; CODE XREF: sub_13B511+2F↓j
                JSR     sub_D9F1
                BCS     loc_13B53D
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                LDY     #1
                LDA     (Pointer),Y
                BMI     loc_13B53D
                CLC
                LDA     pTileID
                ADC     word_2A
                STA     word_2A
                LDA     pTileID+1
                ADC     word_2A+1
                STA     word_2A+1
                BCC     loc_13B53D
                JSR     sub_13AF87

loc_13B53D:                             ; CODE XREF: sub_13B511+F↑j
                                        ; sub_13B511+18↑j ...
                INX
                CPX     #4
                BCC     loc_13B51D
                LDY     byte_35
                INY
                RTS
; End of function sub_13B511


; =============== S U B R O U T I N E =======================================


sub_13B546:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDX     #$3C ; '<'
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                JSR     darken_palette
                JSR     sub_13B561
                JSR     sub_13BC0A
                LDA     #$55 ; 'U'
                STA     byte_2C
                JSR     lighten_palette ; increase the brightness of colors in the palette
                LDY     byte_35
                INY
                RTS
; End of function sub_13B546


; =============== S U B R O U T I N E =======================================


sub_13B561:                             ; CODE XREF: sub_13B546+A↑p
                                        ; sub_13BE0F+D↓j
                JSR     sram_write_enable
                LDX     #0

loc_13B566:                             ; CODE XREF: sub_13B561+1C↓j
                LDA     CurrentGame.PureSave.CharactersNum,X
                BEQ     loc_13B57A
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                LDY     #1
                LDA     (Pointer),Y
                BMI     loc_13B57A
                JSR     sub_13B587
                JSR     sub_13B598

loc_13B57A:                             ; CODE XREF: sub_13B561+8↑j
                                        ; sub_13B561+11↑j
                INX
                CPX     #4
                BCC     loc_13B566
                JSR     sram_read_enable
                LDA     #$20 ; ' '
                JMP     sub_CDE4
; End of function sub_13B561


; =============== S U B R O U T I N E =======================================


sub_13B587:                             ; CODE XREF: sub_13B561+13↑p
                                        ; sub_13B600+1A↓p
                LDY     #3
                LDA     (Pointer),Y
                LDY     #$14
                STA     (Pointer),Y
                LDY     #4
                LDA     (Pointer),Y
                LDY     #$15
                STA     (Pointer),Y
                RTS
; End of function sub_13B587


; =============== S U B R O U T I N E =======================================


sub_13B598:                             ; CODE XREF: sub_13B561+16↑p
                LDY     #5
                LDA     (Pointer),Y
                LDY     #$16
                STA     (Pointer),Y
                LDY     #6
                LDA     (Pointer),Y
                LDY     #$17
                STA     (Pointer),Y
                RTS
; End of function sub_13B598


; =============== S U B R O U T I N E =======================================


sub_13B5A9:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13B5C2
                SEC
                LDY     #$14
                LDA     (Pointer),Y
                LDY     #3
                SBC     (Pointer),Y
                LDY     #$15
                LDA     (Pointer),Y
                LDY     #4
                SBC     (Pointer),Y
                LDY     byte_35
                JMP     sub_13AC7A
; End of function sub_13B5A9


; =============== S U B R O U T I N E =======================================


sub_13B5C2:                             ; CODE XREF: sub_13B5A9↑p
                                        ; sub_13B5C9↓p ...
                STY     byte_35

loc_13B5C4:                             ; CODE XREF: sub_13B1FD+2↑p
                                        ; sub_13B4A9+2↑p ...
                LDA     byte_28
                JMP     get_sram_pointer ; Input: A -
; End of function sub_13B5C2            ; Output: Pointer (word) = High $74 Low $40 * A


; =============== S U B R O U T I N E =======================================


sub_13B5C9:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13B5C2
                SEC
                LDY     #$16
                LDA     (Pointer),Y
                LDY     #5
                SBC     (Pointer),Y
                LDY     #$17
                LDA     (Pointer),Y
                LDY     #6
                SBC     (Pointer),Y
                LDY     byte_35
                JMP     sub_13AC7A
; End of function sub_13B5C9


; =============== S U B R O U T I N E =======================================


sub_13B5E2:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                JSR     sub_13B5C2
                LDY     #1
                LDA     (Pointer),Y
                LDY     byte_35
                AND     (Source),Y      ; byte_109EAB, byte_109EB3
                JMP     sub_13AC86
; End of function sub_13B5E2


; =============== S U B R O U T I N E =======================================


sub_13B5F1:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                JSR     sub_13B5C2
                LDY     #$10
                LDA     (Pointer),Y
                LDY     byte_35
                CMP     (Source),Y      ; byte_109EAB, byte_109EB3
                JMP     sub_13AC7A
; End of function sub_13B5F1


; =============== S U B R O U T I N E =======================================


sub_13B600:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                JSR     sub_13B5C2
                JSR     sram_write_enable
                LDY     byte_35
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                PHP
                LDY     #1
                PHA
                LDA     (Pointer),Y
                TAX
                PLA
                AND     (Pointer),Y
                STA     (Pointer),Y
                PLP
                BMI     loc_13B623
                JSR     sub_13B587
                TXA
                BPL     loc_13B623
                JSR     loc_13A6F0

loc_13B623:                             ; CODE XREF: sub_13B600+18↑j
                                        ; sub_13B600+1E↑j
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13B600


; =============== S U B R O U T I N E =======================================


sub_13B629:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                JSR     sub_13B5C2
                JSR     sram_write_enable
                LDY     byte_35
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #1
                ORA     (Pointer),Y
                STA     (Pointer),Y
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13B629


; =============== S U B R O U T I N E =======================================


sub_13B640:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                JSR     sub_13B5C2
                LDX     #$16
                LDY     #5
                BNE     loc_13B652

loc_13B64A:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                JSR     sub_13B5C2
                LDX     #$14
                LDY     #3

loc_13B652:                             ; CODE XREF: sub_13B640+8↑j
                STX     AddrForJmp
                STY     AddrForJmp+1
                CLC
                LDY     byte_35
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     AddrForJmp
                ADC     (Pointer),Y
                STA     pTileID
                INY
                LDA     #0
                ADC     (Pointer),Y
                STA     pTileID+1
                SEC
                LDY     AddrForJmp+1
                LDA     (Pointer),Y
                SBC     pTileID
                INY
                LDA     (Pointer),Y
                SBC     pTileID+1
                BCS     loc_13B681
                LDY     AddrForJmp+1
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1

loc_13B681:                             ; CODE XREF: sub_13B640+34↑j
                JSR     sram_write_enable
                LDY     AddrForJmp
                LDA     pTileID
                STA     (Pointer),Y
                INY
                LDA     pTileID+1
                STA     (Pointer),Y
                LDY     byte_35
                INY
                JMP     sram_read_enable
; End of function sub_13B640


; =============== S U B R O U T I N E =======================================


sub_13B695:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                JSR     sub_FD28
                JSR     sram_write_enable
                LDA     CurrentGame.PureSave.field_4
                AND     #$C0
                ORA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     CurrentGame.PureSave.field_4
                INY
                JMP     sram_read_enable
; End of function sub_13B695


; =============== S U B R O U T I N E =======================================


sub_13B6AC:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     apu_7F0
                INY
                RTS
; End of function sub_13B6AC


; =============== S U B R O U T I N E =======================================


sub_13B6B4:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_7F1
                INY
                RTS
; End of function sub_13B6B4


; =============== S U B R O U T I N E =======================================


sub_13B6BC:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_7F3
                INY
                RTS
; End of function sub_13B6BC


; =============== S U B R O U T I N E =======================================


sub_13B6C4:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sram_write_enable
                LDA     #$20 ; ' '
                ORA     CurrentGame.PureSave.Characters.field_30
                STA     CurrentGame.PureSave.Characters.field_30
                LDA     #$20 ; ' '
                ORA     CurrentGame.PureSave.Characters.field_30+$40
                STA     CurrentGame.PureSave.Characters.field_30+$40
                INY
                JMP     sram_read_enable
; End of function sub_13B6C4


; =============== S U B R O U T I N E =======================================


sub_13B6DB:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     #$19
                LDX     #$C1
                LDY     #$A6            ; BANK19:A6C2
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                LDY     byte_35
                INY
                RTS
; End of function sub_13B6DB


; =============== S U B R O U T I N E =======================================


sub_13B6EA:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     CurrentGame.field_21E
                CMP     #$FF
                BEQ     loc_13B6F4
                JMP     loc_13AC88
; ---------------------------------------------------------------------------

loc_13B6F4:                             ; CODE XREF: sub_13B6EA+5↑j
                JSR     sram_write_enable
                LDX     #3

loc_13B6F9:                             ; CODE XREF: sub_13B6EA+16↓j
                LDA     byte_13B708,X
                STA     CurrentGame.PureSave.field_C,X
                DEX
                BPL     loc_13B6F9
                JSR     sram_read_enable
                INY
                INY
                RTS
; End of function sub_13B6EA

; ---------------------------------------------------------------------------
byte_13B708:    .BYTE $D2, 0, $80, $47  ; DATA XREF: sub_13B6EA:loc_13B6F9↑r

; =============== S U B R O U T I N E =======================================


sub_13B70C:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$66 ; 'f'
                STA     byte_2C
                STY     byte_35
                LDA     PosX
                PHA
                LDA     PosY
                PHA
                JSR     sub_13B9E4
                PLA
                STA     PosY
                PLA
                STA     PosX
                LDY     byte_35
                INY
                RTS
; End of function sub_13B70C


; =============== S U B R O U T I N E =======================================


sub_13B725:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     wait_nmi_processed
                JSR     reduce_bg
                INY
                RTS
; End of function sub_13B725


; =============== S U B R O U T I N E =======================================


sub_13B72D:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     sub_13BD3B
                JSR     back_palettes
                INY
                RTS
; End of function sub_13B72D


; =============== S U B R O U T I N E =======================================


sub_13B735:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDX     #$10

loc_13B737:                             ; CODE XREF: sub_13B735+6↓j
                JSR     sub_EEE4
                DEX
                BNE     loc_13B737
                INY
                RTS
; End of function sub_13B735


; =============== S U B R O U T I N E =======================================


sub_13B73F:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     #$19
                LDX     #$CB
                LDY     #$A5            ; BANK19:A5CC
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JSR     loc_13AB41
                LDY     byte_35
                INY
                RTS
; End of function sub_13B73F


; =============== S U B R O U T I N E =======================================


sub_13B751:                             ; DATA XREF: BANK13:off_13AB69↑o
                STY     byte_35
                LDA     #$19
                LDX     #$C0
                LDY     #$A6            ; BANK19:A6C1
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JSR     loc_13AB41
                LDY     byte_35
                INY
                RTS
; End of function sub_13B751


; =============== S U B R O U T I N E =======================================


sub_13B763:                             ; CODE XREF: sub_13AA4E+11↑p
                                        ; sub_13B0AD+C↑p
                LDX     #2
                LDY     #$19
                STX     PosX
                STY     PosY
                LDX     #2

loc_13B76D:                             ; CODE XREF: sub_13B763+19↓j
                LDA     byte_6704,X
                BEQ     loc_13B77E
                LDA     #$A0
                JSR     sub_C68B
                DEC     PosY
                DEC     PosY
                DEX
                BPL     loc_13B76D

loc_13B77E:                             ; CODE XREF: sub_13B763+D↑j
                DEC     PosX
                SEC
                LDA     PosY
                SBC     #4
                STA     PosY
                JSR     sub_C3C0
                JSR     loc_13AB41
                LDA     #$AC
                LDX     #$B7            ; B7AC
                STA     pCursor
                STX     pCursor+1
                JSR     cursor_update
                BIT     Buttons
                BMI     loc_13B79E
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_13B79E:                             ; CODE XREF: sub_13B763+37↑j
                LDA     #$FF
                JSR     get_cursor_pos  ; get position of cursor and set cursor tile
                                        ; Input: A - tile ID
                                        ; Output: PosX, PosY
                LDX     CurrentFieldPosition
                LDA     byte_6704,X
                STA     byte_28
                CLC
                RTS
; End of function sub_13B763

; ---------------------------------------------------------------------------
                CURSOR <1, 3, 0, 2, $C0, $3A, 2, $15, byte_196704>

; =============== S U B R O U T I N E =======================================


sub_13B7B6:                             ; CODE XREF: sub_13A262↑p
                                        ; sub_13B196+C↑p
                JSR     sub_C3B2
                LDX     #$FF

loc_13B7BB:                             ; CODE XREF: sub_13B7B6+F↓j
                                        ; sub_13B7B6+29↓j ...
                INX
                CPX     #3
                BCC     loc_13B7C2
                LDX     #0

loc_13B7C2:                             ; CODE XREF: sub_13B7B6+8↑j
                                        ; sub_13B7B6+3B↓j
                JSR     sub_D9F1
                BCS     loc_13B7BB
                STA     byte_28
                STX     ItemCount
                JSR     sub_13BB21
                JSR     sub_13B803
                JSR     sub_13BB40
                JSR     sub_13BAF9
                LDX     ItemCount
                LDA     #6
                BIT     Buttons
                BVS     loc_13B7F4
                BMI     loc_13B7BB
                BEQ     loc_13B7BB
                JSR     sub_13B803
                JSR     sub_13BB0E
                BIT     Buttons
                BVS     loc_13B7F4
                BMI     sub_13B7F6
                LDX     ItemCount
                JMP     loc_13B7C2
; ---------------------------------------------------------------------------

loc_13B7F4:                             ; CODE XREF: sub_13B7B6+27↑j
                                        ; sub_13B7B6+35↑j
                SEC
                RTS
; End of function sub_13B7B6


; =============== S U B R O U T I N E =======================================


sub_13B7F6:                             ; CODE XREF: sub_13B7B6+37↑j
                                        ; sub_13B814:loc_13B86C↓j ...
                LDA     #$FF
                JSR     get_cursor_pos  ; get position of cursor and set cursor tile
                                        ; Input: A - tile ID
                                        ; Output: PosX, PosY
                LDY     CurrentFieldPosition
                LDA     (pStr),Y
                STA     byte_29
                CLC
                RTS
; End of function sub_13B7F6


; =============== S U B R O U T I N E =======================================


sub_13B803:                             ; CODE XREF: sub_13B7B6+18↑p
                                        ; sub_13B7B6+2D↑p
                JSR     loc_13B5C4
                CLC
                LDA     Pointer
                ADC     #$20 ; ' '
                STA     pStr
                LDA     Pointer+1
                ADC     #0
                STA     pStr+1
                RTS
; End of function sub_13B803


; =============== S U B R O U T I N E =======================================


sub_13B814:                             ; CODE XREF: sub_13B184+C↑p
                JSR     sub_C3B9
                JSR     loc_13AB41
                SEC
                LDA     byte_35
                ADC     Source          ; byte_109EAB, byte_109EB3
                STA     pStr
                LDA     #0
                ADC     Source+1        ; byte_109EAB, byte_109EB3
                STA     pStr+1
                LDY     #3

loc_13B829:                             ; CODE XREF: sub_13B814+45↓j
                STY     PosY
                LDY     byte_35
                INY
                STY     byte_35
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_29
                BEQ     loc_13B853
                LDA     #$C
                STA     byte_70
                LDX     #3
                STX     PosX
                JSR     sub_13BBAF
                JSR     sub_13BBC3
                LDA     #0
                STA     byte_70
                LDX     #$F
                STX     PosX
                LDA     #$6F ; 'o'
                LDX     #$B8            ; B86F
                JSR     sub_13AC44

loc_13B853:                             ; CODE XREF: sub_13B814+20↑j
                LDY     PosY
                INY
                INY
                CPY     #$B
                BCC     loc_13B829
                LDA     #$77 ; 'w'
                LDX     #$B8            ; B877
                STA     pCursor
                STX     pCursor+1
                JSR     short_cursor_update
                BIT     Buttons
                BMI     loc_13B86C
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_13B86C:                             ; CODE XREF: sub_13B814+54↑j
                JMP     sub_13B7F6
; End of function sub_13B814

; ---------------------------------------------------------------------------
                .BYTE $A4, $23, $2A, 0, 2, 4, $BA, 0
                CURSOR_SHORT <1, 4, 0, 2, $C0, $3A, 2, 3>

; =============== S U B R O U T I N E =======================================


sub_13B87F:                             ; CODE XREF: sub_13B172+C↑p
                JSR     sub_C3B2
                LDA     #$D8
                LDX     #$B8            ; B8D8
                JSR     sub_13AC44
                LDX     #$F8

loc_13B88B:                             ; CODE XREF: sub_13B87F+31↓j
                                        ; sub_13B87F+33↓j
                CLC
                TXA
                ADC     #8
                TAX
                CPX     #$50 ; 'P'
                BCC     loc_13B896
                LDX     #0

loc_13B896:                             ; CODE XREF: sub_13B87F+13↑j
                                        ; sub_13B87F+43↓j
                LDA     CurrentGame.field_2B0,X
                BNE     loc_13B89D
                LDX     #0

loc_13B89D:                             ; CODE XREF: sub_13B87F+1A↑j
                STX     ItemCount
                JSR     sub_13B8CA
                JSR     sub_13BB40
                JSR     sub_13BAF9
                LDX     ItemCount
                LDA     #6
                BIT     Buttons
                BVS     loc_13B8C5
                BMI     loc_13B88B
                BEQ     loc_13B88B
                JSR     sub_13B8CA
                JSR     sub_13BB0E
                BIT     Buttons
                BVS     loc_13B8C5
                BMI     loc_13B8C7
                LDX     ItemCount
                JMP     loc_13B896
; ---------------------------------------------------------------------------

loc_13B8C5:                             ; CODE XREF: sub_13B87F+2F↑j
                                        ; sub_13B87F+3D↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_13B8C7:                             ; CODE XREF: sub_13B87F+3F↑j
                JMP     sub_13B7F6
; End of function sub_13B87F


; =============== S U B R O U T I N E =======================================


sub_13B8CA:                             ; CODE XREF: sub_13B87F+20↑p
                                        ; sub_13B87F+35↑p
                CLC
                LDA     ItemCount
                ADC     #$B0
                STA     pStr
                LDA     #0
                ADC     #$76 ; 'v'      ; ROM:76B0
                STA     pStr+1
                RTS
; End of function sub_13B8CA

; ---------------------------------------------------------------------------
                .BYTE $20, 9, 3, $D4, $E8, $E5, $A0, $C3, $EC, $EF, $F3
                .BYTE $E5, $F4, 0

; =============== S U B R O U T I N E =======================================


sub_13B8E6:                             ; CODE XREF: sub_13A238↑p
                JSR     sub_C3B2
                LDX     #$FF

loc_13B8EB:                             ; CODE XREF: sub_13B8E6+F↓j
                                        ; sub_13B8E6+13↓j ...
                INX
                CPX     #3
                BCC     loc_13B8F2
                LDX     #0

loc_13B8F2:                             ; CODE XREF: sub_13B8E6+8↑j
                                        ; sub_13B8E6+47↓j
                LDA     CurrentGame.PureSave.CharactersNum,X
                BEQ     loc_13B8EB
                CMP     #3
                BCS     loc_13B8EB
                STA     byte_28
                STX     ItemCount
                JSR     sub_13BB21
                JSR     sub_13B935
                JSR     sub_13BB40
                JSR     sub_13BAF9
                LDX     ItemCount
                LDA     #6
                BIT     Buttons
                BVS     loc_13B930
                BMI     loc_13B8EB
                BEQ     loc_13B8EB
                JSR     sub_13B935
                LDY     #1
                LDA     (Pointer),Y
                AND     #$F0
                BNE     loc_13B92B
                JSR     sub_13BB0E
                BIT     Buttons
                BVS     loc_13B930
                BMI     loc_13B932

loc_13B92B:                             ; CODE XREF: sub_13B8E6+3A↑j
                LDX     ItemCount
                JMP     loc_13B8F2
; ---------------------------------------------------------------------------

loc_13B930:                             ; CODE XREF: sub_13B8E6+2B↑j
                                        ; sub_13B8E6+41↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_13B932:                             ; CODE XREF: sub_13B8E6+43↑j
                JMP     sub_13B7F6
; End of function sub_13B8E6


; =============== S U B R O U T I N E =======================================


sub_13B935:                             ; CODE XREF: sub_13B8E6+1C↑p
                                        ; sub_13B8E6+31↑p
                JSR     loc_13B5C4
                CLC
                LDA     Pointer
                ADC     #$30 ; '0'
                STA     pStr
                LDA     Pointer+1
                ADC     #0
                STA     pStr+1
                LDX     #0
                LDY     #0

loc_13B949:                             ; CODE XREF: sub_13B935+41↓j
                STX     pTileID
                STY     pTileID+1
                LDA     pTileID+1
                AND     #7
                TAX
                LDA     pTileID+1
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     (pStr),Y
                AND     byte_EC5D,X
                LDX     pTileID
                AND     byte_13B98B,Y
                BEQ     loc_13B971
                CLC
                LDA     pTileID+1
                ADC     #$C0
                STA     byte_580,X
                INX
                CPX     #8
                BCS     loc_13B982

loc_13B971:                             ; CODE XREF: sub_13B935+2D↑j
                LDY     pTileID+1
                INY
                CPY     #$20 ; ' '
                BCC     loc_13B949
                LDA     #0

loc_13B97A:                             ; CODE XREF: sub_13B935+4B↓j
                STA     byte_580,X
                INX
                CPX     #8
                BCC     loc_13B97A

loc_13B982:                             ; CODE XREF: sub_13B935+3A↑j
                LDA     #$80
                LDX     #5
                STA     pStr
                STX     pStr+1
                RTS
; End of function sub_13B935

; ---------------------------------------------------------------------------
byte_13B98B:    .BYTE $60, $E0, $A8, 0  ; DATA XREF: sub_13B935+2A↑r

; =============== S U B R O U T I N E =======================================


sub_13B98F:                             ; CODE XREF: sub_13A612+3↑p
                JSR     sub_C3B2
                LDA     #$D1
                LDX     #$B9            ; B9D1
                JSR     sub_13AC44
                JSR     sub_13B9AF
                JSR     sub_13BB40
                LDA     #$DC
                LDX     #$B9            ; B9DC
                JSR     loc_13BB12
                BIT     Buttons
                BMI     loc_13B9AC
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_13B9AC:                             ; CODE XREF: sub_13B98F+19↑j
                JMP     sub_13B7F6
; End of function sub_13B98F


; =============== S U B R O U T I N E =======================================


sub_13B9AF:                             ; CODE XREF: sub_13B98F+A↑p
                LDA     CurrentGame.field_21D
                STA     pTileID+1
                LDX     #0

loc_13B9B6:                             ; CODE XREF: sub_13B9AF+17↓j
                LDA     #0
                ASL     pTileID+1
                BCC     loc_13B9C0
                CLC
                TXA
                ADC     #$80

loc_13B9C0:                             ; CODE XREF: sub_13B9AF+B↑j
                STA     byte_580,X
                INX
                CPX     #8
                BCC     loc_13B9B6
                LDA     #$80
                LDX     #5
                STA     pStr
                STX     pStr+1
                RTS
; End of function sub_13B9AF

; ---------------------------------------------------------------------------
                .BYTE $20, 7, 3, $FE, $D7, $E8, $E5, $F2, $E5, $A2, 0 ; Where?
                CURSOR_SHORT <2, 4, $C, 2, $C0, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


sub_13B9E4:                             ; CODE XREF: sub_13B70C+C↑p
                JSR     sub_C3CE
                LDA     #$B6
                LDX     #$BA            ; BAB6
                JSR     sub_13AC44
                JSR     sub_C6D2
                LDX     #0
                JSR     sub_13BA72
                JSR     sub_13BA72
                JSR     sram_write_enable
                LDA     #0
                STA     CurrentGame.PureSave.field_31
                STA     ItemCount
                LDY     #$10
                LDA     #$A2

loc_13BA07:                             ; CODE XREF: sub_13B9E4+27↓j
                STA     CurrentGame.PureSave.field_20,Y
                DEY
                BPL     loc_13BA07
                STA     byte_D6
                JSR     sub_13BA8D
                JSR     cursor_update
                JMP     loc_13BA1E
; ---------------------------------------------------------------------------

loc_13BA18:                             ; CODE XREF: sub_13B9E4+42↓j
                                        ; sub_13B9E4+53↓j ...
                JSR     sub_13BA8D
                JSR     loc_EF7C

loc_13BA1E:                             ; CODE XREF: sub_13B9E4+31↑j
                BIT     Buttons
                BMI     loc_13BA39
                BVC     loc_13BA54

loc_13BA24:                             ; CODE XREF: sub_13B9E4+59↓j
                LDY     ItemCount
                BEQ     loc_13BA18
                LDA     CurrentGame.PureSave.field_20,Y
                CMP     #$A2
                BNE     loc_13BA30
                DEY

loc_13BA30:                             ; CODE XREF: sub_13B9E4+49↑j
                LDA     #$A2
                STY     ItemCount
                STA     CurrentGame.PureSave.field_20,Y
                BNE     loc_13BA18

loc_13BA39:                             ; CODE XREF: sub_13B9E4+3C↑j
                LDY     CurrentFieldPosition
                CPY     #$10
                BEQ     loc_13BA24
                CPY     #$26 ; '&'
                BEQ     loc_13BA54
                LDA     byte_580,Y
                LDY     ItemCount
                STA     CurrentGame.PureSave.field_20,Y
                CPY     #$10
                BCS     loc_13BA18
                INY
                STY     ItemCount
                BNE     loc_13BA18

loc_13BA54:                             ; CODE XREF: sub_13B9E4+3E↑j
                                        ; sub_13B9E4+5D↑j
                LDY     ItemCount
                BEQ     loc_13BA18
                LDA     CurrentGame.PureSave.field_20,Y
                CMP     #$A2
                BEQ     loc_13BA60
                INY

loc_13BA60:                             ; CODE XREF: sub_13B9E4+79↑j
                LDA     #0
                STA     CurrentGame.PureSave.field_20,Y
                STA     byte_D6
                LDA     #$F0
                STA     OAM.PosY+4
                JSR     sram_read_enable
                JMP     loc_13AB41
; End of function sub_13B9E4


; =============== S U B R O U T I N E =======================================


sub_13BA72:                             ; CODE XREF: sub_13B9E4+F↑p
                                        ; sub_13B9E4+12↑p
                LDY     #$11

loc_13BA74:                             ; CODE XREF: sub_13BA72+A↓j
                LDA     byte_13BAB9,X
                STA     byte_580,X
                INX
                DEY
                BNE     loc_13BA74
                LDA     #0
                STA     unk_57E,X
                LDY     #5

loc_13BA85:                             ; CODE XREF: sub_13BA72+18↓j
                STA     byte_580,X
                INX
                DEY
                BNE     loc_13BA85
                RTS
; End of function sub_13BA72


; =============== S U B R O U T I N E =======================================


sub_13BA8D:                             ; CODE XREF: sub_13B9E4+2B↑p
                                        ; sub_13B9E4:loc_13BA18↑p
                LDA     #$E5
                LDX     #$BA            ; BAE5
                JSR     sub_13AC44
                LDA     #$32 ; '2'
                STA     OAM.PosY+4
                LDA     #1
                STA     OAM.TileID+4
                LDA     #0
                STA     OAM.Attr+4
                LDA     ItemCount
                ASL     A
                ASL     A
                ASL     A
                ADC     #$48 ; 'H'
                STA     OAM.PosX+4
                LDA     #$EF
                LDX     #$BA            ; BAEF
                STA     pCursor
                STX     pCursor+1
                RTS
; End of function sub_13BA8D

; ---------------------------------------------------------------------------
                .BYTE $20, 8, 9
byte_13BAB9:    .BYTE $C1, $C2, $C3, $C4, $C5, $C6, $C7, $A0, $C8, $C9
                                        ; DATA XREF: sub_13BA72:loc_13BA74↑r
                .BYTE $CA, $CB, $CC, $CD, $CE, $A0, $C0, $C2, $E1, $E3
                .BYTE $EB, 1, $CF, $D0, $D1, $D2, $D3, $D4, $D5, $A0, $D6
                .BYTE $D7, $D8, $D9, $DA, $AE, $A7, $A0, $C0, $C5, $EE
                .BYTE $E4, $A0, 0
                .BYTE $20, 9, 5, $21, $20, $74, $20, 8, 9, 0
                CURSOR <$16, 2, 1, 2, $D0, 1, 8, 9, $580>

; =============== S U B R O U T I N E =======================================


sub_13BAF9:                             ; CODE XREF: sub_13B7B6+1E↑p
                                        ; sub_13B87F+26↑p ...
                LDA     #4
                LDX     #$BB            ; BB04
                STA     pCursor
                STX     pCursor+1
                JMP     cursor_update
; End of function sub_13BAF9

; ---------------------------------------------------------------------------
                CURSOR <1, 1, 0, 0, $C5, $3A, 7, 3, $F0D1> ; ROM:F0D1

; =============== S U B R O U T I N E =======================================


sub_13BB0E:                             ; CODE XREF: sub_13B7B6+30↑p
                                        ; sub_13B87F+38↑p ...
                LDA     #$19
                LDX     #$BB            ; BB19

loc_13BB12:                             ; CODE XREF: sub_13B98F+14↑p
                STA     pCursor
                STX     pCursor+1
                JMP     short_cursor_update
; End of function sub_13BB0E

; ---------------------------------------------------------------------------
                CURSOR_SHORT <2, 4, $C, 2, $C8, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


sub_13BB21:                             ; CODE XREF: sub_13B7B6+15↑p
                                        ; sub_13B8E6+19↑p
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                CLC
                LDA     Pointer
                ADC     #$38 ; '8'
                STA     PointerTilePack
                LDA     Pointer+1
                ADC     #0
                STA     PointerTilePack+1
                LDA     #7
                LDX     #9
                LDY     #3
                STA     byte_70
                STX     PosX
                STY     PosY
                JMP     sub_C6D2
; End of function sub_13BB21


; =============== S U B R O U T I N E =======================================


sub_13BB40:                             ; CODE XREF: sub_13B7B6+1B↑p
                                        ; sub_13B87F+23↑p ...
                LDA     #$B
                LDX     #7
                LDY     #5
                STA     byte_70
                STY     PosY
                LDY     #0

loc_13BB4C:                             ; CODE XREF: sub_13BB40+28↓j
                STX     PosX
                STY     CurrentFieldPosition
                LDA     (pStr),Y
                STA     byte_29
                JSR     sub_13BBAF
                LDX     #$13
                CPX     PosX
                BNE     loc_13BB63
                INC     PosY
                INC     PosY
                LDX     #7

loc_13BB63:                             ; CODE XREF: sub_13BB40+1B↑j
                LDY     CurrentFieldPosition
                INY
                CPY     #8
                BCC     loc_13BB4C
                LDA     #0
                STA     byte_70
                RTS
; End of function sub_13BB40


; =============== S U B R O U T I N E =======================================


sub_13BB6F:                             ; CODE XREF: sub_13A9D6+59↑p
                                        ; sub_13AA4E:loc_13AA6A↑p ...
                JSR     loc_13B5C4
                JSR     sram_write_enable
                LDA     #4
                STA     byte_6D00
                CLC
                LDA     Pointer
                ADC     #$38 ; '8'
                STA     byte_6D01
                LDA     Pointer+1
                ADC     #0
                STA     byte_6D02
                JMP     sram_read_enable
; End of function sub_13BB6F


; =============== S U B R O U T I N E =======================================


sub_13BB8C:                             ; CODE XREF: sub_13A9D6:loc_13AA05↑p
                                        ; sub_13AFC4+A↑j ...
                JSR     sub_13BBDF
                LDY     #0
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1
                JSR     sram_write_enable
                LDY     #0

loc_13BB9F:                             ; CODE XREF: sub_13BB8C+1B↓j
                LDA     (pTileID),Y
                STA     unk_6D04,Y
                INY
                CMP     #0
                BNE     loc_13BB9F
                JSR     sram_read_enable
                JMP     loc_13AB41
; End of function sub_13BB8C


; =============== S U B R O U T I N E =======================================


sub_13BBAF:                             ; CODE XREF: sub_13B814+2A↑p
                                        ; sub_13BB40+14↑p
                JSR     sub_13BBDF
                LDY     #0
                LDA     (Pointer),Y
                STA     PointerTilePack
                INY
                LDA     (Pointer),Y
                STA     PointerTilePack+1
                JSR     sub_C6D2
                JMP     loc_13AB41
; End of function sub_13BBAF


; =============== S U B R O U T I N E =======================================


sub_13BBC3:                             ; CODE XREF: sub_13AFC4+7↑p
                                        ; sub_13B03C+13↑p ...
                JSR     sub_13BBDF
                LDY     #6
                LDA     (Pointer),Y
                STA     word_2A
                INY
                LDA     (Pointer),Y
                STA     word_2A+1
                JMP     loc_13AB41
; End of function sub_13BBC3


; =============== S U B R O U T I N E =======================================


sub_13BBD4:                             ; CODE XREF: sub_13B34A+33↑p
                JSR     sub_13BBDF
                LDY     #2
                JSR     loc_E6A9
                JMP     loc_13AB41
; End of function sub_13BBD4


; =============== S U B R O U T I N E =======================================


sub_13BBDF:                             ; CODE XREF: sub_13A08F+4↑p
                                        ; sub_13A92D+1A↑p ...
                JSR     sub_13BBF0

loc_13BBE2:                             ; CODE XREF: sub_13BC3A+36↓p
                CLC
                LDA     Pointer
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$98
                STA     Pointer+1
                RTS
; End of function sub_13BBDF


; =============== S U B R O U T I N E =======================================


sub_13BBF0:                             ; CODE XREF: sub_13BBDF↑p
                LDA     byte_29

loc_13BBF2:                             ; CODE XREF: sub_13BC3A+33↓p
                STA     Pointer
                LDA     #0
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                STA     Pointer+1
                JMP     sub_DE8B
; End of function sub_13BBF0


; =============== S U B R O U T I N E =======================================


sub_13BC04:                             ; CODE XREF: sub_13A53E+29↑j
                                        ; sub_13A57A+48↑j ...
                JSR     sub_FD4F
                JMP     sub_C3D5
; End of function sub_13BC04


; =============== S U B R O U T I N E =======================================


sub_13BC0A:                             ; CODE XREF: sub_13AD0D+11↑p
                                        ; sub_13B546+D↑p
                LDA     PointerTilePack
                PHA
                LDA     byte_73
                PHA
                JSR     sub_C3A0
                PLA
                STA     byte_73
                PLA
                STA     PointerTilePack
                LDA     #0
                STA     byte_2D
                LDX     #8
                LDY     #$13
                STX     PosX
                STY     PosY
                JMP     loc_13AB41
; End of function sub_13BC0A


; =============== S U B R O U T I N E =======================================


sub_13BC28:                             ; CODE XREF: sub_13B0E4+2↑p
                                        ; sub_13B484+2↑p
                LDA     PosX
                PHA
                LDA     PosY
                PHA
                JSR     sub_C3DF
                PLA
                STA     PosY
                PLA
                STA     PosX
                JMP     loc_13AB41
; End of function sub_13BC28


; =============== S U B R O U T I N E =======================================


sub_13BC3A:                             ; CODE XREF: sub_13A2C6+38↑p
                LDA     AddrForJmp
                AND     #$3F ; '?'
                STA     CursorMode
                LDA     AddrForJmp
                AND     #$C0
                ASL     A
                ROL     A
                ROL     A
                ADC     #$28 ; '('
                STA     AddrForJmp
                LDA     byte_29
                JSR     sub_13B058
                BCS     locret_13BC59
                TYA
                ADC     #$20 ; ' '
                STA     FieldPosition
                BCC     loc_13BC5E

locret_13BC59:                          ; CODE XREF: sub_13BC3A+16↑j
                RTS
; ---------------------------------------------------------------------------

loc_13BC5A:                             ; CODE XREF: sub_13B1FD+13↑p
                LDA     #0
                STA     CursorMode

loc_13BC5E:                             ; CODE XREF: sub_13BC3A+1D↑j
                JSR     loc_13B5C4
                LDA     Pointer
                LDX     Pointer+1
                STA     pDist
                STX     pDist+1
                LDY     AddrForJmp
                LDA     (pDist),Y
                JSR     loc_13BBF2
                JSR     loc_13BBE2
                LDY     #3
                LDA     (Pointer),Y
                AND     #$3F ; '?'
                STA     AddrForJmp+1
                JSR     sram_write_enable
                LDX     AddrForJmp
                LDA     loc_13BCC0,X
                BMI     loc_13BCA6
                TAY
                SEC
                LDA     (pDist),Y
                SBC     AddrForJmp+1
                STA     (pDist),Y
                INY
                LDA     (pDist),Y
                SBC     #0
                STA     (pDist),Y
                DEY
                CLC
                LDA     (pDist),Y
                ADC     CursorMode
                STA     (pDist),Y
                INY
                LDA     (pDist),Y
                ADC     #0
                STA     (pDist),Y
                JMP     loc_13BCB8
; ---------------------------------------------------------------------------

loc_13BCA6:                             ; CODE XREF: sub_13BC3A+49↑j
                LDY     #2
                LDA     AddrForJmp+1
                ASL     A
                EOR     #$FF
                AND     (pDist),Y
                STA     (pDist),Y
                LDA     CursorMode
                ASL     A
                ORA     (pDist),Y
                STA     (pDist),Y

loc_13BCB8:                             ; CODE XREF: sub_13BC3A+69↑j
                LDA     CursorMode
                BEQ     loc_13BCE0
                LDY     FieldPosition
                LDA     (pDist),Y

loc_13BCC0:                             ; DATA XREF: sub_13BC3A+46↑r
                TAX
                LDY     AddrForJmp
                LDA     (pDist),Y
                BNE     loc_13BCDB
                LDY     FieldPosition
                BNE     loc_13BCD1

loc_13BCCB:                             ; CODE XREF: sub_13BC3A+9A↓j
                LDA     (pDist),Y
                DEY
                STA     (pDist),Y
                INY

loc_13BCD1:                             ; CODE XREF: sub_13BC3A+8F↑j
                INY
                CPY     #$28 ; '('
                BCC     loc_13BCCB
                DEY
                LDA     #0
                BEQ     loc_13BCDD

loc_13BCDB:                             ; CODE XREF: sub_13BC3A+8B↑j
                LDY     FieldPosition

loc_13BCDD:                             ; CODE XREF: sub_13BC3A+9F↑j
                STA     (pDist),Y
                TXA

loc_13BCE0:                             ; CODE XREF: sub_13BC3A+80↑j
                LDY     AddrForJmp
                STA     (pDist),Y
                CLC
                JMP     sram_read_enable
; End of function sub_13BC3A

; ---------------------------------------------------------------------------
                .BYTE 7, 9, 9, $FF

; =============== S U B R O U T I N E =======================================

; Executes a subroutine from RoutineTable at the offset stored in FuncID, whose value is reset.

routine_selector:                       ; CODE XREF: main+16↑P
                LDA     FuncID          ; ID from table BANK13:BCFD (RoutineTable)
                ASL     A
                TAX
                LDA     #0
                STA     FuncID          ; ID from table BANK13:BCFD (RoutineTable)
                LDA     RoutineTable+1,X
                PHA
                LDA     RoutineTable,X
                PHA
                RTS
; End of function routine_selector

; ---------------------------------------------------------------------------
RoutineTable:   .WORD darken_palette-1  ; DATA XREF: routine_selector+C↑r
                                        ; routine_selector+8↑r
                .WORD sub_13BD0D-1, check_copyright-1, sub_13BD31-1, sub_13BD5C-1
                .WORD sub_13BDD9-1, loc_13BD34-1, sub_13BE0F-1

; =============== S U B R O U T I N E =======================================


sub_13BD0D:                             ; DATA XREF: BANK13:BCFF↑o
                LDA     #8
                STA     apu_7F0
                JMP     darken_palette
; End of function sub_13BD0D


; =============== S U B R O U T I N E =======================================


check_copyright:                        ; DATA XREF: BANK13:BCFF↑o
                LDA     #$10
                STA     byte_7F1
                LDA     #$34 ; '4'
                JSR     sub_EE21
                LDA     CopyrightViolation
                BEQ     @no_violation
                LDA     #$19
                LDX     #$F7
                LDY     #$A1            ; BANK19:A1F8
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte

@no_violation:                          ; CODE XREF: check_copyright+C↑j
                LDX     #$3C ; '<'
                JMP     wait_frames     ; wait for a few frames
; End of function check_copyright       ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13BD31:                             ; DATA XREF: BANK13:BCFF↑o
                JSR     sub_13BD3B

loc_13BD34:                             ; CODE XREF: sub_13BE0F↓p
                                        ; DATA XREF: BANK13:BCFF↑o
                LDA     #$20 ; ' '
                STA     byte_20
                JMP     darken_palette
; End of function sub_13BD31


; =============== S U B R O U T I N E =======================================


sub_13BD3B:                             ; CODE XREF: sub_13B72D↑p
                                        ; sub_13BD31↑p
                JSR     store_palettes
                LDA     #2
                STA     apu_7F0
                LDA     #$14

loc_13BD45:                             ; CODE XREF: sub_13BD3B+1E↓j
                PHA
                LDA     #LIGHTEST_PURPLE
                JSR     one_color_palettes
                LDA     #LIGHTEST_YELLOW
                JSR     one_color_palettes
                LDA     #WHITE
                JSR     one_color_palettes
                PLA
                SEC
                SBC     #1
                BNE     loc_13BD45
                RTS
; End of function sub_13BD3B


; =============== S U B R O U T I N E =======================================


sub_13BD5C:                             ; DATA XREF: BANK13:BCFF↑o
                LDA     #9
                STA     apu_7F0
                LDA     #$11
                JSR     sub_EE21
                JSR     clear_oam_sprite
                JSR     home_camera
                LDA     #$5D ; ']'
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JSR     sub_CE6D
                LDA     #$5C ; '\'
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #$1F
                LDX     #$BE            ; BE1F
                STA     Pointer
                STX     Pointer+1
                JSR     sub_E087
                LDA     #$2F ; '/'
                LDX     #$BE            ; BE2F
                JSR     copy_palettes
                LDY     #$16

loc_13BD91:                             ; CODE XREF: sub_13BD5C+70↓j
                TYA
                PHA
                LDX     #8

loc_13BD95:                             ; CODE XREF: sub_13BD5C+67↓j
                JSR     wait_nmi_processed
                LDA     #1
                STA     SpriteTable.field_5,X
                LDA     SpriteTable.PosY,X
                AND     #$1F
                BNE     loc_13BDAA
                LDA     #$E8
                LDY     #$FF
                BNE     loc_13BDAE

loc_13BDAA:                             ; CODE XREF: sub_13BD5C+46↑j
                LDA     #8
                LDY     #0

loc_13BDAE:                             ; CODE XREF: sub_13BD5C+4C↑j
                CLC
                ADC     SpriteTable.pFrame,X
                STA     SpriteTable.pFrame,X
                TYA
                ADC     SpriteTable.pFrame+1,X
                STA     SpriteTable.pFrame+1,X
                CLC
                TXA
                ADC     #8
                TAX
                CPX     #$28 ; '('
                BCC     loc_13BD95
                LDA     #8
                STA     NMIFlags
                PLA
                TAY
                DEY
                BNE     loc_13BD91
                JSR     clear_oam_sprite
                JSR     darken_palette
                LDX     #$5A ; 'Z'
                JMP     wait_frames     ; wait for a few frames
; End of function sub_13BD5C            ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13BDD9:                             ; DATA XREF: BANK13:BCFF↑o
                LDA     #$11
                JSR     sub_EE0E
                LDA     #3
                STA     apu_7F0
                JSR     sub_FDC0
                LDX     #8
                LDY     #7

loc_13BDEA:                             ; CODE XREF: sub_13BDD9+24↓j
                LDA     byte_13BE4F,Y
                STA     SpriteTable.field_5,X
                DEY
                LDA     byte_13BE4F,Y
                STA     SpriteTable.field_4,X
                CLC
                TXA
                ADC     #8
                TAX
                DEY
                BPL     loc_13BDEA
                JSR     bank14_8000
                JSR     loc_149641
                LDA     #$11
                JSR     one_color_palettes_save
                LDX     #$5A ; 'Z'
                JMP     wait_frames     ; wait for a few frames
; End of function sub_13BDD9            ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_13BE0F:                             ; DATA XREF: BANK13:BCFF↑o
                JSR     loc_13BD34
                LDA     #$FF
                JSR     sub_FD28
                LDX     #$5A ; 'Z'
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                JMP     sub_13B561
; End of function sub_13BE0F

; ---------------------------------------------------------------------------
                .BYTE $60, $E0, $40, $18, $68, $C8, $40, 0, $58, $B0, $40
                .BYTE 8, $60, $98, $40, $10
                .BYTE BLACK, LIGHT_INDIGO, LIGHTEST_GRAY, MEDIUM_BLUE; PALETTE0
                .BYTE BLACK, MEDIUM_GRAY, MEDIUM_GREEN, MEDIUM_BLUE; PALETTE1
                .BYTE BLACK, WHITE, DARK_GRAY, MEDIUM_BLUE; PALETTE2
                .BYTE BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE3
                .BYTE BLACK, BLACK, DARK_BLUE, LIGHTEST_BLUE; PALETTE0
                .BYTE BLACK, BLACK, MEDIUM_VIOLET, LIGHTEST_INDIGO; PALETTE1
                .BYTE BLACK, BLACK, LIGHT_INDIGO, LIGHTEST_INDIGO; PALETTE2
                .BYTE BLACK, BLACK, MEDIUM_BLUE, LIGHTEST_INDIGO; PALETTE3
byte_13BE4F:    .BYTE $FE, $FF, 2, $FF, $FF, $FE, 1, $FE
                                        ; DATA XREF: sub_13BDD9:loc_13BDEA↑r
                                        ; sub_13BDD9+18↑r

; =============== S U B R O U T I N E =======================================


make_save:                              ; CODE XREF: sub_13A123+39↑p
                                        ; sub_13B4A0+2↑p ...
                LDA     CurrentPlayer.PureSave.GameNumber
                JSR     get_dist_save_addr ; Input: A - destination block number
                                        ; Output: returns the destination address to pDist
                                        ;         returns $7400 - source address to pTileID
                JSR     check_sum       ; Output: return check sum to Pointer
                JSR     sram_write_enable
                SEC
                LDY     #0
                LDA     (pTileID),Y
                SBC     Pointer
                STA     (pTileID),Y
                INY
                LDA     (pTileID),Y
                SBC     Pointer+1
                STA     (pTileID),Y
                LDX     #3

@next_block:                            ; CODE XREF: make_save+2C↓j
                LDY     #0

@next_byte:                             ; CODE XREF: make_save+25↓j
                LDA     (pTileID),Y
                STA     (pDist),Y
                INY
                BNE     @next_byte
                INC     pTileID+1
                INC     pDist+1
                DEX
                BNE     @next_block
                JMP     sram_read_enable
; End of function make_save


; =============== S U B R O U T I N E =======================================


get_save_block:                         ; CODE XREF: copy_save+21↓P
                                        ; erase_dialog↓P ...
                JSR     get_dist_save_addr ; Input: A - destination block number
                                        ; Output: returns the destination address to pDist
                                        ;         returns $7400 - source address to pTileID
                JSR     sram_write_enable
                LDX     #3

@next_block:                            ; CODE XREF: get_save_block+16↓j
                LDY     #0

@next_byte:                             ; CODE XREF: get_save_block+F↓j
                LDA     (pDist),Y       ; copy SRAM $7700-$79FF (game 1), $7A00-$7CFF (game 2), $7D00-$7FFF (game 3) to $7400-$76FF
                STA     (pTileID),Y
                INY
                BNE     @next_byte
                INC     pDist+1
                INC     pTileID+1
                DEX
                BNE     @next_block
                JSR     sram_read_enable
                JSR     check_sum       ; Output: return check sum to Pointer
                LDA     CurrentPlayer.PureSave.GameNumber
                AND     #$F0
                CMP     #$B0
                BNE     @exit
                LDA     CurrentPlayer.PureSave.Active
                CMP     #$E9
                BNE     @exit
                LDA     Pointer
                ORA     Pointer+1

@exit:                                  ; CODE XREF: get_save_block+25↑j
                                        ; get_save_block+2C↑j
                RTS
; End of function get_save_block


; =============== S U B R O U T I N E =======================================

; Input: A - destination block number
; Output: returns the destination address to pDist
;         returns $7400 - source address to pTileID

get_dist_save_addr:                     ; CODE XREF: make_save+3↑p
                                        ; get_save_block↑p ...
                AND     #7
                STA     pDist+1
                ASL     A
                ADC     pDist+1
                ADC     #$77 ; 'w'
                STA     pDist+1
                LDA     #0
                STA     pDist

get_active_save:                        ; CODE XREF: check_sum↓p
                                        ; check_sum+23↓j
                LDA     #0              ; returns the address $7400 in pTileID
                LDX     #$74 ; 't'
                STA     pTileID
                STX     pTileID+1
                RTS
; End of function get_dist_save_addr


; =============== S U B R O U T I N E =======================================

; Output: return check sum to Pointer

check_sum:                              ; CODE XREF: make_save+6↑p
                                        ; get_save_block+1B↑p
                JSR     get_active_save ; returns the address $7400 in pTileID
                LDA     #0
                STA     Pointer
                STA     Pointer+1
                LDX     #3

@next_block:                            ; CODE XREF: check_sum+21↓j
                LDY     #0              ; APU program ???

@next_word:                             ; CODE XREF: check_sum+1C↓j
                CLC
                LDA     (pTileID),Y
                ADC     Pointer
                STA     Pointer
                INY
                LDA     (pTileID),Y
                ADC     Pointer+1
                STA     Pointer+1
                INY
                BNE     @next_word
                INC     pTileID+1
                DEX
                BNE     @next_block
                JMP     get_active_save ; returns the address $7400 in pTileID
; End of function check_sum

; ---------------------------------------------------------------------------
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF
; end of 'BANK13'

; ===========================================================================

; Segment type: Pure code
                ;.segment BANK14
                * =  $8000
                .BYTE $1F, 0, 0, 0, 0, 0, 0
                .BYTE 2, $16, 2, $17, $1F, $1C, $17, $1F, $1F, $1F, $1C
                .BYTE $1B, $1F, $1F, $1D, 8, $1F, 6, $13, 4, 6, 2, 0, $10
                .BYTE 6, 6, $15, $17, $1D, 4, 8, 1, 2, $1F, 0, $17, 6
                .BYTE $15, 4, $19, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6, $17
                .BYTE 6, $15, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, $1F, 2, $16, 2, $17, $1F, $1C, $17, $1F
                .BYTE $1F, $1C, $1B, $1F, $1F, $1D, 8, 2, 4, $13, $1E
                .BYTE $17, $1F, $16, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6
                .BYTE $1B, $1C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6, 9, 6, $24
                .BYTE $22, $1D, $1B, $1E, $17, $28, $21, $24, $22, $22
                .BYTE $24, $21, $28, 9, 9, 6, 6, $17, $1E, $1B, $1D, $17
                .BYTE $1E, $1B, $1D, $1F, $17, $1F, $1F, $1F, $1F, $15
                .BYTE 2, $15, $1F, $C, $17, 6, 6, 4, 0, 1, 9, 9, $13, $1F
                .BYTE $1C, 0, 0, 0, 0, 0, $1F, $1C, $1D, $1F, $1B, $1F
                .BYTE $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $17
                .BYTE $1F, $1F, $1C, $13, $1F, $1F, $1F, $13, $1F, $1C
                .BYTE $13, $1F, $1F, $1D, $1C, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $13, $1F
                .BYTE $1F, $1F, 0, $1F, 6, 4, $1F, $13, $17, $13, $1F
                .BYTE $1F, $1F, $1F, $1F, 6, $1F, $1F, $1F, 6, $15, 4
                .BYTE 8, 1, 2, 0, $10, $1F, 0, 0, $1F, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, $1F, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, $17, $1F, $1F, $1C, $13, $1F
                .BYTE $1F, $1F, $13, $1F, $1C, $13, $1F, $1F, $1D, $1C
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $19, 0, 0, $1F
                .BYTE $1D, 8, 1, $19, $19, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $19, $13, $1F, $1F, $1F, $19, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $19, $19, $11, $13, $1F
                .BYTE $1F, $17, $1F, $1F, $1F, $1F, $13, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, 6, $1F, 6, 4, $19, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1D, $13, $1F, 6, $1F, 0, 0, 0, 0, $1F, 0, $10
                .BYTE 0, 0, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE $17, $1F, $1F, $1C, $13, $1F, $1F, $1F, $13, $1F
                .BYTE $1C, $13, $1F, $1F, $1D, $1C, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, $1F
                .BYTE 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .BYTE $1F, $16, $17, $1F, $13, $1F, $1F, $1F, $1F, $13
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $16, $16, $1B, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $16
                .BYTE $19, 6, $17, 2, $15, $17, 0, 2, $17, 2, $15, $17
                .BYTE 0, 2, $15, $1F, 2, $17, $13, 0, $1C, $1F, $1F, $17
                .BYTE $15, 6, 4, 2, 8, $1E, $1F, $17, $1D, 6, 4, $15, $1F
                .BYTE $1F, $1F, $1F, $1F, 6, $1E, 6, $22, $28, $17, $1E
                .BYTE $28, $1E, $1F, $28, $28, 9, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, $1F, $17, $1D, $1F, $1F, $1F, $1F, $16, $1F
                .BYTE 0, $1F, 0, $16, $1F, $16, $16, $16, $16, $16, $16
                .BYTE $16, 0, 0, 9, $13, $1C, $13, $1C, $13, $1C, $1D
                .BYTE 0, 0, $1F, 6, $1F, 0, 0, 0, 0, 0, 0, $16, $19, 6
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F
                .BYTE 0, 0, $1F, $1E, 0, 0
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B, $1F
                .BYTE $1D, $19, 8, $1C, $1F, $1F, $1F, $17, $1F, $1F, $1F
                .BYTE $1F, $11, $1B, $1F, $19, $1F, $1F, $1F, $1F, $1F
                .BYTE 2, 6, 6, $13, $1F, $17, $1F, $1F, $1F, $1B, $1D
                .BYTE $1F, 0, $16, $19, 6, $1F, $1F, $1F, $1F, $1F, 0
                .BYTE $1F, $17, 3, $1F, 0, 0, $1F, $1F, 0, 0, $17, $1F
                .BYTE $1F, $17, 7, 4, 6, 2, $17, $1E, $1F, 9, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, 9, $1F, 9, $1F
                .BYTE $1F, $15, $1A, $24, $22, 2, 4, $1E, $17, $1F, 6
                .BYTE $1F, $1F, 6, $10, $18, $11, 2, 4, 1, 8, $22, $24
                .BYTE $21, $28, $1A, $15, 6, 6, $18, $11, $14, $12, $24
                .BYTE $22, $17, $1E, $1A, $15, $1D, $1B, $19, $19, $1F
                .BYTE $19, 1, 8, 9, 9, $1D, $1B, $1B, $1D, 1, 8, $1A, $15
                .BYTE $12, $1F, $1F, $1F, $1F, $1D, $1B, $1D, $1B, $13
                .BYTE $1C, $1D, $1B, 9, 9, $1B, $1D, $1F, $1B, $1F, $1D
                .BYTE $1C, $1B, 0, 0, 0, 0, 0, $1F, $1F, $1F, $1C, 0, $B
                .BYTE $1F, 9, 8, $1A, $16, $17, 0, 0, 0, 2, 6, 6, 6, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $17, 0, 0, 0, $16
                .BYTE 6, $19, $1F, $15, $1A, $24, $22, 2, 4, $1E, $17
                .BYTE $1F, 6, $1F, $1F, 6, $10, $1E, $17, 2, 4, 1, 8, $22
                .BYTE $24, $21, $28, $1E, $17, 6, 6, $18, $11, $14, $12
                .BYTE $24, $22, $17, $1E, $1A, $15, $1D, $1B, $1D, $1B
                .BYTE $1F, 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D, $1E, $17
                .BYTE 6, 0, 9, 0, $C0, $C0, $C0, 0, $C6, $10, $16, 0, $17
                .BYTE $1E, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 6, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $C0, 6, $1F, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .BYTE $1F, $1F, $1F, $1D, $1B, $24, $22, $1D, $1B, $1E
                .BYTE $17, $1F, $1F, $1F, $1F, 6, 9, 2, 4, 1, 8, $22, $24
                .BYTE $21, $28, 6, 6, 9, 9, $1D, $1B, $24, $22, $17, $1E
                .BYTE $1B, $1D, $1D, $1B, $1F, 9, 1, 8, 9, 9, $1D, $1B
                .BYTE $1B, $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $24, $22, $1E, $17, $1F, $1F, $1F
                .BYTE 6, $24, $22, $17, $1E, $1D, 0, 0, 0, 0, 0, $1F, $1F
                .BYTE $1F, $1F, $1F, $1D, $1D, 0, 0, 0, 0, 0, 4, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, $1F, $1F, 2, $17, $1F, $1C, $17
                .BYTE $1F, $1F, $1E, $1F, $1D, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, $1F
                .BYTE $1F, $1F, $17, $1F
                .BYTE $1F, $1F, 2, $1F, $1D, 8, $1F, $1F, $1F, $1F, $13
                .BYTE $1F, $1F, $1D, $1F, 8, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40, $40, 0, 0, 0
                .BYTE 0, $40, $40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, $40, 0, 0, 0, 0, 0, 0, $10
                .BYTE $10, $40, $40, $40, $40, $40, $40, $40, $40, $40
                .BYTE $40, $40, $40, $40, $17, $42, $1F, $44, 6, $14, $1E
                .BYTE $1D, $48, $40, $40, $40, $40, $40, $40, $40, $40
                .BYTE $44, $55, $42, $40, $40, $40, 6, $1F, 2, 4, 2, $17
                .BYTE $1C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, $1F, $17, $1F, $1D, $1D, $1D, $1D, $1D
                .BYTE $1D, $1D, $1F, $1E, $1E, $17, $1E, $1B, $1F, $1D
                .BYTE $1B, $1F, $1D, $19, $1B, $1D, $17, $1E, 0, 0, 0
                .BYTE 0, 0, 0, $40, $40, $40, $40, $40, $40, $1F, 0, $17
                .BYTE 6, 0, 0, 0, $17, $1D, $1D, $17, $1F, $1E, $16, $17
                .BYTE $1E, $1B, $1D, $1B, $1F, $1D, $19, $1B, $1D, $17
                .BYTE $1E, 0, 0, 0, 6, $40, $1F, $1F, $1F, $1F, $1F, 0
                .BYTE $1F, 0, $1D, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0, $16, $19, 0, 0, 0
                .BYTE 0, 0, $1F, $1F, $19, 0, $1F, $1F, $17, $21, $1D
                .BYTE $1F, 0, 0, 0, 0, 0, 0, 0, $13, 0, $17, 0, $1D, $1C
                .BYTE 0, 0, 9, 0, 6, 0, $1F, $1F, $1F, $19, $19, $1B, 0
                .BYTE 0, $1C, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 4, 0, 1, 9
                .BYTE 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 1, $13, $1D, 0, $1C, 0, $16, $1D, $1F
                .BYTE $19, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 6
                .BYTE 9, 0, $1F, 0, $16, 0, $13, $1F, $1C
                .BYTE $13, $1C, $1F, $1F, $17, $1E, $16, $1F, $1F, $19
                .BYTE $16, $19, $1F, $13, $1F, $1F, $1F, 8, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $17, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1E, 6, $1F, $1F, $1F, $1E, $17, 6, $1F
                .BYTE 6, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE $1F, $16, $12, $1F, $13, $1F, $1C, 0, 0, 6, 9, 1
                .BYTE 9, $1F, $1F, $F, $F, $16, $19, 6, 9, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, $1F, 4, $1E, $1E, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1B, $1F, 1, $1B, 0, 2, $17, $17, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1D
                .BYTE 8, $1B, $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, 6, 6, 6, 6, 0, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1B
                .BYTE 1, $1D, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, $1F, $C0, 0
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $17, $1E, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1B, $1F, 1, $1B, 1, $1B, $1D, 8, $1D, $1B
                .BYTE $1F, $1F, 0, $1F, $1F, $1F, $1F, 8, $1F, $1F, $1F
                .BYTE $1F, $1F, $1D, $1F, $1F, $1F, $1F, $1F, $1F, 0, 1
                .BYTE 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1B, $1D, $28, $21
                .BYTE $1D, $1B, $1D, $1B, $24, $22, $1D, $1B, $1E, $17
                .BYTE $1F, $1F, $1F, $1F, 6, 9, $18, $11, 2, 4, 1, 8, $22
                .BYTE $24, $21, $28, $1E, $17, 6, 6, 9, 9, $1D, $1B, $24
                .BYTE $22, $17, $1E, $1B, $1D, $1D, $1B, $1D, $1B, $1F
                .BYTE 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D, $1F, $1F, $1E
                .BYTE $17, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, 9, 9, 9, 9, $1F, $1B
                .BYTE $1F, $1F, $1D, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, $24, $22, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, 9, 9, $1D, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, $1F, $16, $19, $1F, $1F, $1F, $1F, $1F, 0
                .BYTE $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1D, 8
                .BYTE 1, $1B, $1F, $1F, $1F, $1D, $1B, 9, 9, $1F, $1F
                .BYTE $1F, 6, 9, 2, 6, 1, 9, 6, 9, $1F, $1F, $1B, $1F
                .BYTE 1, $1B, $1F, $1F, $1F, $1D, $1D, 8, $F, $1F, $1F
                .BYTE $F, 2, $87, $8D, 2, $F, $1F, $1F, $1E, $F, $F, $B
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1B, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F
                .BYTE $1F, $1D, 8, 1, $1B, $1F
                .BYTE $1F, $1F, $1F, 0, $1F, 0, $1F, $1F, $1F, $1B, $1F
                .BYTE 1, $1B, 0, 1, 0, $1D, $1B, $1F, $1F, 0, 0, 8, 1
                .BYTE 0, 0, $1F, $1F, $1F, $1F, $1B, $1F, 1, $1B, $1F
                .BYTE $1F, 0, $1D, 6, 6, $1F, 9, 9, 9, $1F, $28, $1F, 0
                .BYTE 0, 0, $23, 0, 0, 8, 1, $1B, $1F, 1, $1B, $1F, $2C
                .BYTE $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1D, $1B, 8
                .BYTE 1, $1F, $17, $1D, 2, $17, $1D, 4, $1F, $1F, $1D
                .BYTE 8, $1F, $1D, $1B, $1D, 1, $1B, $1B, $1F, 1, $1B
                .BYTE $1D, 8, $1F, $1F, 0, $1F, 6, 6, $22, $28, 0, 0, $1F
                .BYTE $1D, $1F, $1D, 8, $1F, $1D, $1F, $1D, $1F, $1F, $E
                .BYTE 9, 9, $1D, $1B, $1F, $1F, $10, $1D, $1F, $1D, $1D
                .BYTE $1D, $1F, 6, 7, 9, 9, $17, $1F, $1B, $1D, $1F, $1F
                .BYTE $1E, $E, $E, 6, $1F, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, $1F, $1B, 1, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, 1, 9, $1F, 9, $1F, 9, 6, 9, 6, 6, 9, 9
                .BYTE 6, 9, $28, $10, $21, $24, 0, 1, $1B, $1B, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1B, $1B, 8, $1D, $1D, $1B
                .BYTE $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 7, 2, 7
                .BYTE $1F, 1, 9, 9, $1F, 9, $1F, $1F, $1F, $1F, $1F, $1B
                .BYTE $1D, $1B, $1D, $1D, 9, $1B, 0, $1F, $1F, $1F, $1F
                .BYTE 6, $1F, 9, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, $1F, $1D, 8, 1, $1B, $1F, $1F
                .BYTE $1F, 1, $1B, $1B, $1F, $1F, $1D, 8, $1F, $1D, $1D
                .BYTE 8, $1F, $1F, $1F, $1F, 9, 9, 9, 6, 6, $1F, $16, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B, $1F
                .BYTE $1F, 0, $2C, $23, $1D, 7, $1F, $1D, $E, 9, 8, $1F
                .BYTE $1F, $17, $1E, $1F, $1F, 4, 8, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, $1F, $1F, $19, $1F, $1F, $15, $1A
                .BYTE $24, $22, 2, 4, $1E, $17, $1F, 6, $1F, $1F, 6, $10
                .BYTE $11, 2, 4, 1, 8, $22, $24, $28, $1A, $15, 6, 6, $18
                .BYTE $11, $14, $12, $24, $22, $17, $1F, $1A, $15, $1D
                .BYTE $19, $1F, 8, $1D, 1, 8, $1A, $15, $12, $1F, $1F
                .BYTE $1F, $1F, $1D, $1B, $1D, $1B, $13, $1C, $1D, 9, 9
                .BYTE $1B, $1D, $1B, $1D, $1A, 6, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, 9, $1B, $1B, $17, 9, $13, $1E
                .BYTE 6, 0, 6, $1B, 9, 0, 0, $1B, $1D, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, $1F, $1F
                .BYTE $1F, $1D, $1B, $24, $22, $5D, $5B, $1E, $17, $1F
                .BYTE $5F, $1F, $1F, 6, 9, 2, 4, 1, 8, $22, $24, $21, $28
                .BYTE 2, 4, 9, 9, $5D, $5B, $24, $22, $17, $1E, $5B, $5D
                .BYTE $1D, $1B, $1F, 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D
                .BYTE $1E, $17, $24, $22, $17, $1E, $1D, $1B, $28, $21
                .BYTE $1D, $1B, 0, $1F, $1F, $5F, $5F, $5F, $5F, $1D, $1B
                .BYTE $1D, $1B, $1D, $1B, $1F, $1F, 0, $1F, $5D, $49, 8
                .BYTE 6, 6, 0, 4, 0, $1B, $24, $22, $1F, 6, 6, $24, $22
                .BYTE $17, $1E, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B
                .BYTE $1D, $1B, $19, $19, $1F, 0, $5F, $5F, $5F, $5F, $5F
                .BYTE $5F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 3, 1, $1F
                .BYTE 9, $1F, $1F, $17, $1B, 9, 9, $1F, $1B, $1F, 1, $1B
                .BYTE 1, $1B, $1F, 0, 0, 8, $1F, $1F, 9, 0, 0, 6, 9, 6
                .BYTE 9, $1D, $1D, $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, $1F, 0, 1, $1B, $1B, $1F, $1F, $1B
                .BYTE $1F, 2, $1F, $19, $1F, $1F, 4, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .BYTE $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE $F, 0, $10, $30, $F, 0, $10
                .BYTE $30, $F, 0, $10, $30, 0, 0, $40, $30, $F, $3A, $18
                .BYTE $38, $F, $3A, $10, $20, $F, $3A, $25, $1A, 2, $3A
                .BYTE $4B, $12, $F, $20, $20, $10, $F, $20, $20, $10, $F
                .BYTE $20, $20, $28, 9, $20, $40, $3B, $F, $38, $18, $1C
                .BYTE $F, $38, $10, $3B, $F, $38, $25, $1A, $1A, $38, $40
                .BYTE 0, $F, $38, $18, $16, $F, $10, $30, $21, $F, $3A
                .BYTE $28, $21, $17, $38, $40, $3C, $F, $39, 0, 0, $F
                .BYTE $39, $20, $10, $F, $39, $30, $2B, $1B, $39, $40
                .BYTE $3B, $F, $38, $18, $1C, $F, $38, $10, $3B, $F, $38
                .BYTE $25, $1A, $1A, $38, $40, 0, $F, $38, $18, $21, $F
                .BYTE $10, $30, $2A, $F, 0, $10, $30, $14, $10, $40, $21
                .BYTE $F, $38, $18, 0, $F, $38, $24, $2B, $F, $12, $31
                .BYTE 2, $1A, $21, $40, 0, $F, $38, $18, $1C, $F, $38
                .BYTE $10, $3B, $F, $38, $25, $1A, $1A, $38, $40, 0, $F
                .BYTE $10, 0, 8, $F, $10, 0, $16, $F, $10, 0, $12, $13
                .BYTE 0, $66, $30, $F, $10, 0, 8, $F, $10, 0, $16, $F
                .BYTE $10, 0, $12, $13, 0, $41, $30, $F, $10, 0, 8, $F
                .BYTE $10, 0, $16, $F, $10, 0, $12, $13, 0, $40, $30, $F
                .BYTE $10, 0, 8, $F, $10, 0, $16, $F, $10, 0, $12, $13
                .BYTE 0, $40, $30, $F, $10, 0, 8, $F, $10, 0, $16, $F
                .BYTE $10, 0, $12, $13, 0, $40, $30, $F, $10, 0, 8, $F
                .BYTE $10, 0, $16, $F, $10, 0, $12, $13, 0, $40, $30, $F
                .BYTE $10, 0, 8, $F, $10, 0, $16, $F, $10, 0, $12, $13
                .BYTE 0, $40, $30, $F, 0, $10, $30, $F, 0, $10, $30, $F
                .BYTE 0, $10, $30, 0, 0, $40, $30, $F, $38, $18, $17, $F
                .BYTE $38, $18, $28, $F, $38, 0, $27, $A, $38, $76, $22
                .BYTE $F, $3B, $18, $38, $F, $28, $18, $38, $F, $33, $25
                .BYTE $38, $16, $26, $40, 0, $F, $F, $17, $27, $F, $F
                .BYTE $17, $27, $F, $F, $17, $27, $E, $18, $6E, $28, $F
                .BYTE 4, $15, $25, $F, $38, $18, $21, $F, $38, $18, $28
                .BYTE $1D, 4, $4C, $34, $F, $34, $30, $24, $F, $34, $30
                .BYTE $35, $F, $2B, $35, $15, $F, $34, 0, $3B, $F, $37
                .BYTE $35, $17, $F, $37, $28, $17, $F, $37, $3A, $17, $18
                .BYTE $37, $40, $17, $F, $3B, $34, $2B, $F, $3B, $28, $2B
                .BYTE $F, $3B, $29, $2B, $18, $3B, $40, $2B, $F, $3B, $15
                .BYTE $1B, $F, $38, $15, $1B, $F, $3B, $B, $1B, $18, $3B
                .BYTE $40, $1B, $F, $3A, $18, $38, $F, $3A, 0, $20, $F
                .BYTE $3A, $25, $1A, $B, $3A, $42, $12, $F, 4, 3, $23
                .BYTE $F, 4, $27, $30, $F, 4, 5, $30, $1A, 4, $40, $34
                .BYTE $F, $F, $21, $30, $F, $12, $12, $21, $F, $12, $21
                .BYTE $30, $E, $17, $6E, $30, $F, $10, $33, $22, $F, $10
                .BYTE 3, $22, $F, 0, $10, $30, 0, 0, $40, $30, $F, $37
                .BYTE $18, $31, $F, $37, $10, $3B, $F, $37, $30, $24, $1A
                .BYTE $37, $40, $27, $F, 0, $10, $30, $F, 0, $10, $30
                .BYTE $F, 0, $10, $30, 0, 0, $40, $30, 1, 1, 1, 1, 1, 1
                .BYTE 1
                .BYTE 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 5, 7, 8, 9, $B, 0
                .BYTE 0, 3, 5, 7, 8, 9, $B, 0, 0, $C, $D, $E, $F, $10
                .BYTE $11, $48, 0, $C, $D, $E, $F, $10, $11, $48, 0, $12
                .BYTE $13, $14, $15, $16, $17, $18, $19, $12, $13, $14
                .BYTE $15, $16, $17, $18, $19, 4, 5, 6, 7, $B, $1B, $1C
                .BYTE 0, 4, 5, 6, 7, $B, $1B, $1C, 0, $1C, $1D, $1E, $1F
                .BYTE $30, $31, $32, $34, $35, $36, $38, $3A, $3B, 0, 0
                .BYTE 0, $A, $1C, $1D, $31, $32, $3C, $3D, $3E, $3F, $40
                .BYTE $9C, 0, 0, 0, 0, 0, $1C, $1E, $20, $21, $30, $32
                .BYTE $33, $36, $37, $47, 0, 0, 0, 0, 0, 0, $55, $56, $57
                .BYTE $58, $59, 0, 0, 0, $55, $56, $57, $58, $59, 0, 0
                .BYTE 0, $47, $5A, $5B, $5C, $5D, $61, $62, $63, $64, $66
                .BYTE $69, 0, 0, 0, 0, 0, $5C, $5E, $61, $64, $65, $67
                .BYTE $68, $69, $6A, $6B, $6C, $6D, $6E, 0, 0, 0, $5A
                .BYTE $5B, $70, $71, $72, $73, $75, $76, $77, $78, $79
                .BYTE 0, 0, 0, 0, 0, $5F, $60, $61, $66, $69, $73, $74
                .BYTE $7A, $7B, $7C, $7D, 0, 0, 0, 0, 0, $49, $4A, $4B
                .BYTE $4C, $4D, $4E, $4F, $50, $51, $52, $53, $54, $A3
                .BYTE 0, 0, 0, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
                .BYTE $51, $52, $53, $54, $A3, 0, 0, 0, $49, $4A, $4B
                .BYTE $4C, $4D, $4E, $4F, $50, $51, $A3, 0, 0, 0, 0, 0
                .BYTE 0, 1, 2, 6, $1A, 1, 2, 6, $1A, 1, 2, 6, $1A, 1, 2
                .BYTE 6, $1A, $41, $42, $43, $44, $45, $46, 0, 0, $41
                .BYTE $42, $43, $44, $45, $46, 0, 0, $41, $42, $43, $44
                .BYTE $45, $46, 0, 0, $41, $42, $43, $44, $45, $46, 0
                .BYTE 0, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50, $51, $52
                .BYTE $53, $54, $A3, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .BYTE 1, 1, 1, 1, 1, 1, 1, 2, $1E, 2, $1E, 2, $1E, 2, $1E
                .BYTE 2, $1E, 2, $1E, 2, $1E, 2, $1E, $81, $82, $83, $84
                .BYTE $85, $86, $87, $88, $89, $8A, $8B, 0, 0, 0, 0, 0
                .BYTE $92, $93, $94, $95, $96, $97, $98, $99, $9A, 0, 0
                .BYTE 0, 0, 0, 0, 0, $7E, $7F, $80, $82, $7E, $7F, $80
                .BYTE $82, $7E, $7F, $80, $82, $7E, $7F, $80, $82, $8C
                .BYTE $8D, $8E, 0, $8C, $8D, $8E, 0, $8C, $8D, $8E, 0
                .BYTE $8C, $8D, $8E, 0, $22, $23, $24, $25, $26, $27, $28
                .BYTE $29, $2B, $2C, $2D, 0, 0, 0, 0, 0, $2A, $2B, $2C
                .BYTE $2D, $A1, 0, 0, 0, $2A, $2B, $2C, $2D, $A1, 0, 0
                .BYTE 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .BYTE 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .BYTE 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .BYTE 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

; =============== S U B R O U T I N E =======================================




; =============== S U B R O U T I N E =======================================


sub_149516:                             ; CODE XREF: main+A4↑P
                LDA     byte_48
                ORA     byte_20
                ORA     byte_21
                ORA     byte_22
                ORA     byte_23
                ORA     byte_25
                BNE     locret_149538
                BIT     byte_A0
                BMI     locret_149538
                JSR     loc_1495D3
                LDX     byte_15
                LDA     byte_149593,X

loc_149530:                             ; CODE XREF: sub_149516+2F↓j
                BNE     loc_149539
                STA     byte_24

loc_149534:                             ; CODE XREF: sub_149516+42↓j
                LDA     #0
                STA     byte_48

locret_149538:                          ; CODE XREF: sub_149516+C↑j
                                        ; sub_149516+10↑j
                RTS
; ---------------------------------------------------------------------------

loc_149539:                             ; CODE XREF: sub_149516:loc_149530↑j
                TAY
                AND     #7
                BNE     loc_149548
                TYA
                LSR     A
                LSR     A
                LSR     A
                JSR     sub_E0F2
                JMP     loc_149530
; ---------------------------------------------------------------------------

loc_149548:                             ; CODE XREF: sub_149516+26↑j
                CLC
                ADC     $24
                CMP     #9
                BCC     loc_149551
                LDA     #8

loc_149551:                             ; CODE XREF: sub_149516+37↑j
                TAX
                JSR     sub_F1ED
                CMP     locret_14958A,X
                BCS     loc_149534
                LDX     byte_24
                INX
                CPX     #3
                BCC     loc_149563
                LDX     #2

loc_149563:                             ; CODE XREF: sub_149516+49↑j
                STX     byte_24
                TYA
                AND     #$F8
                STA     pDist
                LDA     #0
                ASL     pDist
                ROL     A
                ADC     #$92
                STA     pDist+1

loc_149573:                             ; CODE XREF: sub_149516+67↓j
                JSR     sub_F1ED
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     (pDist),Y
                BEQ     loc_149573
                STA     byte_48
                LDA     #$19
                LDX     #$A6
                LDY     #$A4
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte

locret_14958A:                          ; DATA XREF: sub_149516+3F↑r
                RTS
; End of function sub_149516

; ---------------------------------------------------------------------------
                .BYTE $20
                .BYTE $15
                .BYTE $10
                .BYTE  $D
                .BYTE  $A
                .BYTE   8
                .BYTE   6
                .BYTE   5
byte_149593:    .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $C, $11, $E8, $26
                                        ; DATA XREF: sub_149516+17↑r
                .BYTE $2D, $34, $3D, $43, $4D, $55, $5D, $65, 0, 0, 0
                .BYTE 0, 0, $6C, $74, $7C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE $E0, 0, 0, $8D, $95, $9C, $A7, 0, $AD, 0, 0, $B5
                .BYTE $BD, $C5, $CD, 0, 0, $D6, 0, 0, 0, $DC, 0
; ---------------------------------------------------------------------------

loc_1495D3:                             ; CODE XREF: sub_149516+12↑p
                LDX     #0
                LDA     $7408,X
                BEQ     unk_14962A
                JSR     $C665
                LDY     #1
                LDA     ($60),Y
                LSR     A
                BCC     loc_1495E8
                LDA     #7
                BNE     loc_1495ED

loc_1495E8:                             ; CODE XREF: BANK14:95E2↑j
                LSR     A
                BCC     unk_14962A
                LDA     #7

loc_1495ED:                             ; CODE XREF: BANK14:95E6↑j
                STA     $64
                CLC
                TXA
                ADC     $D5
                AND     $64
                BNE     unk_14962A
                JSR     $FDE7
                SEC
                LDY     #$14
                LDA     ($60),Y
                SBC     #1
                STA     $64
                INY
                LDA     ($60),Y
; ---------------------------------------------------------------------------
                .BYTE $E9
                .BYTE   0
                .BYTE $85
                .BYTE $65 ; e
                .BYTE $90
                .BYTE  $F
                .BYTE $A5
                .BYTE $64 ; d
                .BYTE   5
                .BYTE $65 ; e
                .BYTE $F0
                .BYTE   9
                .BYTE $A5
                .BYTE $65 ; e
                .BYTE $91
                .BYTE $60 ; `
                .BYTE $88
                .BYTE $A5
                .BYTE $64 ; d
                .BYTE $91
                .BYTE $60 ; `
                .BYTE $20
                .BYTE $ED
                .BYTE $FD
                .BYTE $8A
                .BYTE $48 ; H
                .BYTE $A9
                .BYTE $16
                .BYTE $20
                .BYTE $FE
                .BYTE $ED
                .BYTE $20
                .BYTE $B0
                .BYTE $EE
                .BYTE $68 ; h
                .BYTE $AA
unk_14962A:     .BYTE $E8               ; CODE XREF: BANK14:95D8↑j
                                        ; BANK14:95E9↑j ...
                .BYTE $E0
                .BYTE   4
                .BYTE $90
                .BYTE $A6
                .BYTE $60 ; `

; =============== S U B R O U T I N E =======================================


sub_149630:                             ; CODE XREF: start_battle+21↑P
                LDA     byte_48
                CMP     #$A2
                BEQ     locret_149684
                LDA     #$30 ; '0'
                JSR     sub_EDFE
                JSR     back_palettes
                JSR     sub_FDC0
                LDA     #7
                STA     NMI_ID
                LDA     #0
                STA     num_of_chr
                STA     Pointer

loc_14964D:                             ; CODE XREF: sub_149630+43↓j
                LDX     Pointer
                LDA     byte_1496F1,X
                CMP     #$FF
                BEQ     loc_149675
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                STA     Pointer+1
                LDA     byte_1496F1,X
                AND     #$F
                STA     AddrForJmp
                JSR     sub_149685
                LDX     Pointer+1
                LDY     AddrForJmp
                STY     Pointer+1
                STX     AddrForJmp
                JSR     sub_149685
                INC     Pointer
                BNE     loc_14964D

loc_149675:                             ; CODE XREF: sub_149630+24↑j
                LDA     num_of_chr
                CMP     #0
                BEQ     locret_149684
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #1
                STA     NMIFlags

locret_149684:                          ; CODE XREF: sub_149630+4↑j
                                        ; sub_149630+4A↑j
                RTS
; End of function sub_149630


; =============== S U B R O U T I N E =======================================


sub_149685:                             ; CODE XREF: sub_149630+33↑p
                                        ; sub_149630+3E↑p
                LDA     #$E
                SEC
                SBC     AddrForJmp
                BCS     loc_14968E
                LDA     #0

loc_14968E:                             ; CODE XREF: sub_149685+5↑j
                STA     PosY
                PHA
                LDA     #$F
                SEC
                SBC     Pointer+1
                STA     PosX
                JSR     loc_1496B8
                LDA     #$F
                CLC
                ADC     AddrForJmp
                CMP     #$1E
                BCC     loc_1496A6
                LDA     #$1D

loc_1496A6:                             ; CODE XREF: sub_149685+1D↑j
                STA     PosY
                JSR     loc_1496B8
                LDA     #$10
                CLC
                ADC     Pointer+1
                STA     PosX
                JSR     loc_1496B8
                PLA
                STA     PosY

loc_1496B8:                             ; CODE XREF: sub_149685+13↑p
                                        ; sub_149685+23↑p ...
                LDA     num_of_chr
                CMP     #$14
                BCC     loc_1496CF
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi_processed
                LDA     #0
                STA     num_of_chr

loc_1496CF:                             ; CODE XREF: sub_149685+38↑j
                JSR     nt_calc
                LDA     num_of_chr
                ASL     A
                CLC
                ADC     num_of_chr
                TAX
                LDA     NTAddr
                STA     PPU_addr,X
                LDA     NTAddr+1
                STA     PPU_addr+1,X
                LDA     #0
                STA     chr,X
                STA     next,X
                INC     num_of_chr
                RTS
; End of function sub_149685

; ---------------------------------------------------------------------------
byte_1496F1:    .BYTE 0, $FE, $10, $FD, $EE, $11, $FB, $FC, $ED, $20, $21
                .BYTE $EC, $DD, $30, $31, $22, $F9, $FA, $EB, $DC, $40
                .BYTE $41, $32, $33, $F7, $F8, $E9, $EA, $DB, $CC, $42
                .BYTE $DA, $50, $51, $52, $43, $F4, $F5, $F6, $E7, $E8
                .BYTE $D9, $CA, $CB, $60, $61, $62, $53, $44, $BB, $F0
                .BYTE $F1, $F2, $F3, $54, $E4, $E5, $E6, $D7, $D8, $C9
                .BYTE $BA, $70, $71, $72, $63, $64, $55, $C8, $80, $E0
                .BYTE $81, $E1, $82, $E2, $73, $E3, $74, $D4, $65, $D5
                .BYTE $D6, $C7, $B8, $A9, $B9, $AA, $D0, $D1, $D2, $D3
                .BYTE $C4, $C5, $66, $C6, $B7, $A8, $99, $90, $91, $92
                .BYTE $83, $84, $75, $76, $B6, $C0, $C1, $C2, $93, $C3
                .BYTE $B4, $85, $B5, $A6, $A7, $88, $98, $A0, $A1, $A2
                .BYTE $A3, $94, $95, $86, $77, $97, $B0, $B1, $B2, $B3
                .BYTE $A4, $A5, $96, $87, $FF

; =============== S U B R O U T I N E =======================================


sub_149779:                             ; CODE XREF: main+D9↑P
                LDA     #$38 ; '8'
                JSR     $EE21
                LDA     #5
                JSR     sub_149920
                LDA     #$C2
                LDX     #$99
                JSR     sub_1497D6
                LDA     #$FF
                JSR     $FD28
                LDX     #$B4
                JSR     $FD3A
                LDA     #$F
                JSR     $EDFE
                LDA     #0
                STA     $EC
                JSR     $CE02
                JMP     $D674
; End of function sub_149779


; =============== S U B R O U T I N E =======================================


sub_1497A3:                             ; CODE XREF: main+E4↑J
                LDA     #$E
                JSR     sub_149920
                LDA     #$D5
                LDX     #$99
                JSR     sub_1497D6
                LDA     #$FF
                JSR     $FD28
                LDA     #$E0
                LDX     #$99
                JSR     sub_1497D6
                LDA     #9
                STA     $7F0
                LDA     #1
                STA     $7F4
                LDA     #$E9
                LDX     #$99
                JSR     sub_1497D6
                LDA     #$1A
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JMP     $A000
; End of function sub_1497A3


; =============== S U B R O U T I N E =======================================


sub_1497D6:                             ; CODE XREF: sub_149779+E↑p
                                        ; sub_1497A3+9↑p ...
                STA     $68
                STX     $69
                LDY     #0
                STY     $6B

loc_1497DE:                             ; CODE XREF: sub_1497D6+64↓j
                LDA     ($68),Y
                BEQ     locret_14983C
                STA     $6C
                INY
                LDA     ($68),Y
                STA     $6D
                INY
                AND     #$20 ; ' '
                BEQ     loc_1497F1
                SEC
                ROL     $6B

loc_1497F1:                             ; CODE XREF: sub_1497D6+16↑j
                TYA
                PHA
                LDA     $6D
                AND     #3
                BEQ     loc_149808
                TAX
                LDA     $9A05,X
                JSR     sub_EE0E
                JSR     $FD41
                LDA     #$F
                JSR     $EE0E

loc_149808:                             ; CODE XREF: sub_1497D6+21↑j
                                        ; sub_1497D6+60↓j
                JSR     $FD41
                LDA     $6B
                BNE     loc_149815
                LDA     $6C
                AND     #3
                BNE     loc_149820

loc_149815:                             ; CODE XREF: sub_1497D6+37↑j
                LSR     A

loc_149816:                             ; CODE XREF: sub_1497D6+48↓j
                PHA
                JSR     sub_14983D
                PLA
                SEC
                SBC     #1
                BPL     loc_149816

loc_149820:                             ; CODE XREF: sub_1497D6+3D↑j
                LDA     $6C
                ASL     A
                ASL     A
                AND     $6D
                AND     #4
                BEQ     loc_149834
                LSR     A
                EOR     $FD
                STA     $FD
                LDA     #$A
                STA     $7F0

loc_149834:                             ; CODE XREF: sub_1497D6+52↑j
                DEC     $6C
                BNE     loc_149808
                PLA
                TAY
                BNE     loc_1497DE

locret_14983C:                          ; CODE XREF: sub_1497D6+A↑j
                RTS
; End of function sub_1497D6


; =============== S U B R O U T I N E =======================================


sub_14983D:                             ; CODE XREF: sub_1497D6+41↑p
                BIT     $6D
                BPL     locret_149877
                BVC     loc_149859
                JSR     sub_149878
                BNE     loc_149851
                DEX
                CPX     #5
                BCC     locret_149877
                TXA
                JSR     sub_149883

loc_149851:                             ; CODE XREF: sub_14983D+9↑j
                SEC
                LDA     $FC
                SBC     #1
                JMP     loc_149871
; ---------------------------------------------------------------------------

loc_149859:                             ; CODE XREF: sub_14983D+4↑j
                JSR     sub_149878
                EOR     #$F
                BNE     loc_14986C
                INX
                CPX     #$3C ; '<'
                BCS     locret_149877
                TXA
                CLC
                ADC     #$A
                JSR     sub_149883

loc_14986C:                             ; CODE XREF: sub_14983D+21↑j
                CLC
                LDA     $FC
                ADC     #$11

loc_149871:                             ; CODE XREF: sub_14983D+19↑j
                BCS     loc_149875
                SBC     #$F

loc_149875:                             ; CODE XREF: sub_14983D:loc_149871↑j
                STA     $FC

locret_149877:                          ; CODE XREF: sub_14983D+2↑j
                                        ; sub_14983D+E↑j ...
                RTS
; End of function sub_14983D


; =============== S U B R O U T I N E =======================================


sub_149878:                             ; CODE XREF: sub_14983D+6↑p
                                        ; sub_14983D:loc_149859↑p
                JSR     $FD33
                LDX     $6A
                CLC
                LDA     $FC
                AND     #$F
                RTS
; End of function sub_149878


; =============== S U B R O U T I N E =======================================


sub_149883:                             ; CODE XREF: sub_14983D+11↑p
                                        ; sub_14983D+2C↑p
                STX     $6A
                JSR     sub_14988D
                LDA     #$80
                STA     $E5
                RTS
; End of function sub_149883


; =============== S U B R O U T I N E =======================================


sub_14988D:                             ; CODE XREF: sub_149883+2↑p
                                        ; sub_14998B+6↓p
                LDX     #$24 ; '$'
; End of function sub_14988D


; =============== S U B R O U T I N E =======================================


sub_14988F:                             ; CODE XREF: sub_149920+3F↓p
                STX     $62
                LDX     #0

loc_149893:                             ; CODE XREF: sub_14988F+B↓j
                CMP     #$F
                BCC     loc_14989C
                SBC     #$F
                INX
                BCS     loc_149893

loc_14989C:                             ; CODE XREF: sub_14988F+6↑j
                ASL     A
                ASL     A
                STA     $6E
                TXA
                LSR     A
                ROR     A
                ROR     A
                AND     #$C0
                ORA     $6E
                STA     $60
                LDA     #6
                ASL     $60
                ROL     A
                ASL     $60
                ROL     A
                ASL     $60
                ROL     A
                ASL     $60
                ROL     A
                STA     $61
                ORA     #3
                STA     $65
                LDA     $6E
                AND     #$38 ; '8'
                ORA     #$C0
                STA     $64
                JSR     $FD33
                LDA     #5
                LDY     #$40 ; '@'
                STA     $400
                STY     $401
                LDY     #8
                STA     $444
                STY     $445
                LDA     $61
                LDY     $60
                AND     #3
                ORA     $62
                STA     $402
                STY     $403
                LDA     $65
                LDY     $64
                AND     #3
                ORA     $62
                STA     $446
                STY     $447
                LDY     #$3F ; '?'

loc_1498F9:                             ; CODE XREF: sub_14988F+73↓j
                LDA     ($60),Y
                JSR     sub_149919
                STA     $404,Y
                DEY
                BPL     loc_1498F9
                LDY     #7

loc_149906:                             ; CODE XREF: sub_14988F+80↓j
                LDA     ($64),Y
                JSR     sub_149919
                STA     $448,Y
                DEY
                BPL     loc_149906
                LDA     #0
                STA     $450
                STA     $E6
                RTS
; End of function sub_14988F


; =============== S U B R O U T I N E =======================================


sub_149919:                             ; CODE XREF: sub_14988F+6C↑p
                                        ; sub_14988F+79↑p
                CPX     #4
                BCC     locret_14991F
                LDA     #0

locret_14991F:                          ; CODE XREF: sub_149919+2↑j
                RTS
; End of function sub_149919


; =============== S U B R O U T I N E =======================================


sub_149920:                             ; CODE XREF: sub_149779+7↑p
                                        ; sub_1497A3+2↑p
                STA     $6A
                LDA     #$B
                JSR     $FD28
                JSR     sub_1499A3
                JSR     $EECC
                JSR     $FD5E
                JSR     $FD33
                LDX     #$F

loc_149935:                             ; CODE XREF: sub_149920+1C↓j
                LDA     $9A3D,X
                STA     $340,X
                DEX
                BPL     loc_149935
                LDA     #$2D ; '-'
                LDX     #$9A
                STA     $60
                STX     $61
                JSR     $E087
                LDA     #$54 ; 'T'
                JSR     sub_1499AD
                LDA     #$F9
                LDX     #$99
                JSR     $CEE8
                LDA     #1
                STA     $E5
                LDY     #4

loc_14995B:                             ; CODE XREF: sub_149920+49↓j
                TYA
                PHA
                LDX     #$20 ; ' '
                JSR     sub_14988F
                LDA     #$80
                STA     $E5
                PLA
                TAY
                DEY
                BPL     loc_14995B
                JSR     sub_14998B
                LDX     #3

loc_149970:                             ; CODE XREF: sub_149920+57↓j
                LDA     $9A09,X
                STA     $540,X
                DEX
                BPL     loc_149970
                LDA     #$9F
                STA     $EC
                LDX     #$1F

loc_14997F:                             ; CODE XREF: sub_149920+66↓j
                LDA     $9A0D,X
                STA     $520,X
                DEX
                BPL     loc_14997F
                JMP     $EE30
; End of function sub_149920


; =============== S U B R O U T I N E =======================================


sub_14998B:                             ; CODE XREF: sub_149920+4B↑p
                CLC
                LDA     $6A
                ADC     #$B

loc_149990:                             ; CODE XREF: sub_14998B+15↓j
                PHA
                JSR     sub_14988D
                LDA     #$80
                STA     $E5
                PLA
                SEC
                SBC     #1
                BCC     locret_1499A2
                CMP     $6A
                BCS     loc_149990

locret_1499A2:                          ; CODE XREF: sub_14998B+11↑j
                RTS
; End of function sub_14998B


; =============== S U B R O U T I N E =======================================


sub_1499A3:                             ; CODE XREF: sub_149920+7↑p
                LDA     $6A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                TAY
                LDX     #$FC
                RTS
; End of function sub_1499A3


; =============== S U B R O U T I N E =======================================


sub_1499AD:                             ; CODE XREF: sub_149920+2B↑p
                PHA
                TAY
                LDA     #0
                LDX     #$60 ; '`'
                JSR     $CE08
                PLA
                CLC
                ADC     #2
                TAY
                LDA     #0
                LDX     #$68 ; 'h'
                JMP     $CE08
; End of function sub_1499AD

; ---------------------------------------------------------------------------
                .BYTE $80
                .BYTE   0
                .BYTE $80
                .BYTE $80
                .BYTE $80
                .BYTE $82
                .BYTE $20
                .BYTE $83
                .BYTE $20
                .BYTE $82
                .BYTE $C0
                .BYTE $81
                .BYTE $80
                .BYTE $82
                .BYTE $20
                .BYTE $83
                .BYTE $20
                .BYTE $82
                .BYTE   0
                .BYTE $80
                .BYTE $C0
                .BYTE $20
                .BYTE $C3
                .BYTE $20
                .BYTE $C2
                .BYTE $80
                .BYTE $C1
                .BYTE $80
                .BYTE $C3
                .BYTE   0
                .BYTE $40 ; @
                .BYTE   2
                .BYTE $10
                .BYTE   7
                .BYTE $20
                .BYTE   6
                .BYTE $50 ; P
                .BYTE   5
                .BYTE   0
                .BYTE   8
                .BYTE $23 ; #
                .BYTE   8
                .BYTE $22 ; "
                .BYTE $F0
                .BYTE $A1
                .BYTE $F0
                .BYTE   0
                .BYTE   0
                .BYTE   4
                .BYTE $80
                .BYTE   0
                .BYTE $A9
                .BYTE $A9
                .BYTE $AB
                .BYTE $AA
                .BYTE $76 ; v
                .BYTE $70 ; p
                .BYTE $50 ; P
                .BYTE $51 ; Q
                .BYTE $52 ; R
                .BYTE $53 ; S
                .BYTE $76 ; v
                .BYTE $70 ; p
                .BYTE $48 ; H
                .BYTE $49 ; I
                .BYTE $4A ; J
                .BYTE $4B ; K
                .BYTE  $F
                .BYTE $38 ; 8
                .BYTE $21 ; !
                .BYTE $34 ; 4
                .BYTE $CA
                .BYTE $ED
                .BYTE   0
                .BYTE   0
                .BYTE  $F
                .BYTE $12
                .BYTE $30 ; 0
                .BYTE   0
                .BYTE  $F
                .BYTE $10
                .BYTE $30 ; 0
                .BYTE   0
                .BYTE  $F
                .BYTE $17
                .BYTE $37 ; 7
                .BYTE $16
                .BYTE  $F
                .BYTE $38 ; 8
                .BYTE $30 ; 0
                .BYTE   0
                .BYTE  $F
                .BYTE  $F
                .BYTE   0
                .BYTE $30 ; 0
                .BYTE  $F
                .BYTE  $F
                .BYTE $16
                .BYTE $37 ; 7
                .BYTE  $F
                .BYTE  $F
                .BYTE $24 ; $
                .BYTE $37 ; 7
                .BYTE  $F
                .BYTE  $F
                .BYTE $12
                .BYTE $37 ; 7
                .BYTE $68 ; h
                .BYTE $78 ; x
                .BYTE   0
                .BYTE   0
                .BYTE $58 ; X
                .BYTE $88
                .BYTE   0
                .BYTE   0
                .BYTE $78 ; x
                .BYTE $88
                .BYTE   0
                .BYTE   0
                .BYTE $68 ; h
                .BYTE $98
                .BYTE   0
                .BYTE   0
                .BYTE $86
                .BYTE   0
                .BYTE $F4
                .BYTE $76 ; v
                .BYTE   0
                .BYTE   0
                .BYTE $C0
                .BYTE $99
                .BYTE   6
                .BYTE   0
                .BYTE $E4
                .BYTE $76 ; v
                .BYTE   0
                .BYTE   0
                .BYTE $C4
                .BYTE $99

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
    JSR loc_F25E
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


sub_149AD5:                             ; CODE XREF: new_game+47↑p
                LDA     #$8B
                LDX     #$6C ; 'l'
                JSR     sub_149AF9
                LDA     #$C0
                LDX     #$6C ; 'l'
                JSR     sub_149AF9
                JSR     $6286
                LDY     #0

loc_149AE8:                             ; CODE XREF: sub_149AD5+1B↓j
                JSR     sub_149AF3
                JSR     $629B
                CMP     #$20 ; ' '
                BNE     loc_149AE8
                RTS
; End of function sub_149AD5


; =============== S U B R O U T I N E =======================================


sub_149AF3:                             ; CODE XREF: sub_149AD5:loc_149AE8↑p
                                        ; enter_name+1B↓p
                JSR     wait_nmi_processed
                JMP     $625B
; End of function sub_149AF3


; =============== S U B R O U T I N E =======================================


sub_149AF9:                             ; CODE XREF: sub_149AD5+4↑p
                                        ; sub_149AD5+B↑p ...
                STA     PointerTilePack
                STX     PointerTilePack+1
                JMP     write_tiles
; End of function sub_149AF9


; =============== S U B R O U T I N E =======================================


sub_149B00:                             ; CODE XREF: new_game+4D↑p
                LDA     #$F0
                LDX     #$62 ; 'b'
                STA     $80
                STX     $81
                JSR     $EF34
                LDA     $82
                BEQ     loc_149B11
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_149B11:                             ; CODE XREF: sub_149B00+D↑j
                CLC
                RTS
; End of function sub_149B00


; =============== S U B R O U T I N E =======================================


sub_149B13:                             ; CODE XREF: new_game+6C↑p
                                        ; new_game+83↑p
                LDA     #0
                STA     byte_70
                STX     PointerTilePack
                STY     PointerTilePack+1

loc_149B1B:                             ; CODE XREF: sub_149B13+F↓j
                JSR     sub_C707
                DEC     PosY
                CMP     #0
                BNE     loc_149B1B
                JSR     sub_F29E
                JMP     sub_149D50
; End of function sub_149B13


; =============== S U B R O U T I N E =======================================


draw_new_game:                             ; CODE XREF: new_game↑p
                JSR     sub_149D50
                JSR     home_camera
                LDA     #$2D ; '-'
                LDX     #$6C ; 'l'
                JSR     sub_149AF9
                JSR     sub_149B40
                JSR     sub_149B76
                JMP     lighten_palette ; increase the brightness of colors in the palette
; End of function draw_new_game


; =============== S U B R O U T I N E =======================================


sub_149B40:                             ; CODE XREF: draw_new_game+D↑p
                                        ; sub_149C1C+E5↓p
                LDA     #$70 ; 'p'
                STA     pTileID
                LDA     #$64 ; 'd'
                STA     pTileID+1
                LDA     #$E
                STA     AddrForJmp+1
                LDX     #4

loc_149B4E:                             ; CODE XREF: sub_149B40+2D↓j
                TXA
                PHA
                LDA     #8
                STA     AddrForJmp
                LDA     AddrForJmp
                STA     PosX
                LDA     AddrForJmp+1
                STA     PosY
                LDA     pTileID
                STA     PointerTilePack
                LDA     pTileID+1
                STA     PointerTilePack+1
                JSR     loc_C6DB
                JSR     $62B5
                PLA
                TAX
                DEX
                BNE     loc_149B4E
                LDA     #$66 ; 'f'
                LDX     #$6C ; 'l'
                JMP     sub_149AF9
; End of function sub_149B40


; =============== S U B R O U T I N E =======================================


sub_149B76:                             ; CODE XREF: draw_new_game+10↑p
                                        ; sub_149BF7↓p ...
                LDA     #0
                LDX     #$6C ; 'l'
                JMP     sub_149AF9
; End of function sub_149B76


; =============== S U B R O U T I N E =======================================


enter_name:                             ; CODE XREF: new_game+B↑p
                                        ; new_game+18↑p ...
                STA     word_5C
                STX     word_5C+1
                LDY     #0
                JSR     sub_149BED
                ORA     Pointer
                BEQ     loc_149B9B
                LDA     #$22 ; '"'
                STA     AddrForJmp
                LDA     #$FF
                STA     AddrForJmp+1
                LDA     #$80
                STA     pTileID
                LDY     #0
                JSR     sub_149AF3

loc_149B9B:                             ; CODE XREF: enter_name+B↑j
                JSR     sub_149BF7
                LDA     #$24 ; '$'
                LDX     #$6C ; 'l'
                JSR     sub_149AF9
                LDY     #4
                JSR     sub_149BED
                LDY     byte_56
                LDA     #0
                STA     byte_70
                STA     byte_581,Y
                STY     byte_55

loc_149BB5:                             ; CODE XREF: enter_name+44↓j
                LDA     (Pointer),Y
                BNE     loc_149BBD
                STY     byte_55
                LDA     #$A2

loc_149BBD:                             ; CODE XREF: enter_name+3A↑j
                STA     byte_580,Y
                DEY
                BPL     loc_149BB5
                JSR     sub_149C1C
                BCS     loc_149BE8
                LDY     #4
                JSR     sub_149BED
                JSR     sram_write_enable
                LDY     byte_56

loc_149BD2:                             ; CODE XREF: enter_name+61↓j
                LDA     byte_580,Y
                CMP     #$A2
                BNE     loc_149BDB
                LDA     #0

loc_149BDB:                             ; CODE XREF: enter_name+5A↑j
                STA     (Pointer),Y
                DEY
                BPL     loc_149BD2
                JSR     sram_read_enable
                JSR     clear_oam_sprite
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_149BE8:                             ; CODE XREF: enter_name+49↑j
                JSR     clear_oam_sprite
                SEC
                RTS
; End of function enter_name


; =============== S U B R O U T I N E =======================================


sub_149BED:                             ; CODE XREF: enter_name+6↑p
                                        ; enter_name+2A↑p ...
                LDA     (word_5C),Y
                STA     Pointer
                INY
                LDA     (word_5C),Y
                STA     Pointer+1
                RTS
; End of function sub_149BED


; =============== S U B R O U T I N E =======================================


sub_149BF7:                             ; CODE XREF: enter_name:loc_149B9B↑p
                                        ; sub_149C1C+E8↓p
                JSR     sub_149B76
                LDX     #8
                JSR     loc_F25E
                LDY     #2
                JSR     sub_149BED

loc_149C04:                             ; CODE XREF: sub_149C1C+C1↓p
                LDA     Pointer
                STA     PointerTilePack
                LDA     Pointer+1
                STA     PointerTilePack+1
                LDA     #9
                STA     PosX
                LDA     #3
                STA     PosY

loc_149C14:                             ; CODE XREF: sub_149BF7+22↓j
                JSR     loc_C6DB
                CMP     #0
                BNE     loc_149C14
                RTS
; End of function sub_149BF7


; =============== S U B R O U T I N E =======================================


sub_149C1C:                             ; CODE XREF: enter_name+46↑p
                                        ; sub_149C1C:loc_149D07↓j
                JSR     sub_149D0A
                LDA     #$E8
                LDX     #$62 ; 'b'
                STA     CHRBank0
                STX     CHRBank1
                LDA     #$70 ; 'p'
                LDX     #$64 ; 'd'
                STA     CHRBank4
                STX     CHRBank5
                LDA     #1
                STA     byte_D6

loc_149C33:                             ; CODE XREF: sub_149C1C+2F↓j
                JSR     loc_EF3F
                JMP     loc_149C3F
; ---------------------------------------------------------------------------

loc_149C39:                             ; CODE XREF: sub_149C1C:loc_149C6B↓j
                                        ; sub_149C1C:loc_149C88↓j
                JSR     sub_149D0A
                JSR     loc_EF7C

loc_149C3F:                             ; CODE XREF: sub_149C1C+1A↑j
                BIT     Buttons
                BVS     loc_149C70
                BMI     loc_149C4E
                LDA     Buttons
                AND     #$10
                BNE     loc_149C8B
                JMP     loc_149C33
; ---------------------------------------------------------------------------

loc_149C4E:                             ; CODE XREF: sub_149C1C+27↑j
                LDX     CurrentFieldPosition
                LDA     $6470,X
                CMP     #$A1
                BEQ     loc_149C70
                CMP     #$A2
                BEQ     loc_149C8B
                CMP     #$A3
                BEQ     loc_149C6E
                LDX     byte_55
                STA     byte_580,X
                CPX     byte_56
                BEQ     loc_149C6B
                INX
                STX     byte_55

loc_149C6B:                             ; CODE XREF: sub_149C1C+4A↑j
                JMP     loc_149C39
; ---------------------------------------------------------------------------

loc_149C6E:                             ; CODE XREF: sub_149C1C+41↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_149C70:                             ; CODE XREF: sub_149C1C+25↑j
                                        ; sub_149C1C+39↑j
                LDA     #$A2
                LDX     byte_55
                CPX     byte_56
                BNE     loc_149C7D
                CMP     byte_580,X
                BNE     loc_149C85

loc_149C7D:                             ; CODE XREF: sub_149C1C+5A↑j
                STA     byte_580,X
                DEX
                BMI     loc_149C88
                STX     byte_55

loc_149C85:                             ; CODE XREF: sub_149C1C+5F↑j
                STA     byte_580,X

loc_149C88:                             ; CODE XREF: sub_149C1C+65↑j
                JMP     loc_149C39
; ---------------------------------------------------------------------------

loc_149C8B:                             ; CODE XREF: sub_149C1C+2D↑j
                                        ; sub_149C1C+3D↑j
                LDY     byte_55

loc_149C8D:                             ; CODE XREF: sub_149C1C+82↓j
                LDA     byte_580,Y
                CMP     #$A2
                BEQ     loc_149C9D
                CMP     #$A0
                BNE     loc_149CA0
                LDA     #$A2
                STA     byte_580,Y

loc_149C9D:                             ; CODE XREF: sub_149C1C+76↑j
                DEY
                BPL     loc_149C8D

loc_149CA0:                             ; CODE XREF: sub_149C1C+7A↑j
                CPY     byte_56
                BEQ     loc_149CA5
                INY

loc_149CA5:                             ; CODE XREF: sub_149C1C+86↑j
                STY     byte_55
                CPY     #0
                BEQ     loc_149D07
                LDX     #0

loc_149CAD:                             ; CODE XREF: sub_149C1C+AB↓j
                LDY     #0

loc_149CAF:                             ; CODE XREF: sub_149C1C+A1↓j
                LDA     $63F8,X
                BEQ     loc_149CC9
                CMP     #1
                BEQ     loc_149CCF
                INX
                INY
                CMP     byte_57F,Y
                BEQ     loc_149CAF

loc_149CBF:                             ; CODE XREF: sub_149C1C+A9↓j
                LDA     $63F8,X
                INX
                CMP     #1
                BNE     loc_149CBF
                BEQ     loc_149CAD

loc_149CC9:                             ; CODE XREF: sub_149C1C+96↑j
                LDA     #0
                STA     byte_D6
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_149CCF:                             ; CODE XREF: sub_149C1C+9A↑j
                JSR     sub_F465
                JSR     sub_149B76
                LDA     #$7F
                LDX     #$63 ; 'c'
                STA     Pointer
                STX     Pointer+1
                JSR     loc_149C04
                LDA     byte_580
                CMP     #$A0
                BEQ     loc_149CFE
                LDA     #$98
                LDX     #$63 ; 'c'
                STA     PointerTilePack
                STX     PointerTilePack+1
                LDX     #8
                LDY     #$E
                STX     PosX
                STY     PosY

loc_149CF7:                             ; CODE XREF: sub_149C1C+E0↓j
                JSR     loc_C6DB
                CMP     #0
                BNE     loc_149CF7

loc_149CFE:                             ; CODE XREF: sub_149C1C+C9↑j
                JSR     sub_F29E
                JSR     sub_149B40
                JSR     sub_149BF7

loc_149D07:                             ; CODE XREF: sub_149C1C+8D↑j
                JMP     sub_149C1C
; End of function sub_149C1C


; =============== S U B R O U T I N E =======================================


sub_149D0A:                             ; CODE XREF: sub_149C1C↑p
                                        ; sub_149C1C:loc_149C39↑p
                LDA     PosX
                PHA
                LDA     PosY
                PHA
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                SEC
                LDA     #0
                SBC     byte_56
                SEC
                ROR     A
                CLC
                ADC     #$F
                TAY
                LDA     #$59 ; 'Y'
                STA     OAM.PosY+4
                CLC
                TYA
                ADC     byte_55
                ASL     A
                ASL     A
                ASL     A
                STA     OAM.PosX+4
                LDA     #1
                STA     OAM.TileID+4
                LDA     #0
                STA     OAM.Attr+4
                TYA
                STA     PosX
                LDA     #$A
                STA     PosY
                LDA     #$80
                STA     PointerTilePack
                LDA     #5
                STA     PointerTilePack+1
                JSR     loc_C6DB
                PLA
                STA     PosY
                PLA
                STA     PosX
                RTS
; End of function sub_149D0A


; =============== S U B R O U T I N E =======================================


sub_149D50:                             ; CODE XREF: new_game+44↑p
                                        ; new_game:loc_149AA2↑p ...
                JSR     $EDDC
                JSR     $FD5E
                JSR     $FD80
                LDX     #$FD
                LDY     #$62 ; 'b'
                JMP     $F732
; End of function sub_149D50

; ---------------------------------------------------------------------------

; 9FAF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF
; end of 'BANK14'


; ===========================================================================

; Segment type: Pure code
                ;.segment BANK17
                * =  $A000

; =============== S U B R O U T I N E =======================================


sub_17A000:                             ; CODE XREF: start_battle+30↑P
                LDA     #0
                STA     Gamepad0Buttons
                STA     Gamepad1Buttons
                STA     byte_52
                STA     byte_59
                STA     byte_49
                STA     byte_4A
                STA     byte_4B
                STA     byte_4C
                STA     byte_4D
                TAX

@clear1:                                ; CODE XREF: sub_17A000+19↓j
                STA     byte_600,X
                INX
                BNE     @clear1
                LDX     #$1F

@clear2:                                ; CODE XREF: sub_17A000+21↓j
                STA     byte_580,X
                DEX
                BPL     @clear2
                LDA     #0
                STA     byte_53
                LDX     #0

loc_17A029:                             ; CODE XREF: sub_17A000+3F↓j
                TXA
                PHA
                LDA     CurrentGame.PureSave.CharactersNum,X
                BEQ     loc_17A03A
                JSR     sub_17A1DD
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53

loc_17A03A:                             ; CODE XREF: sub_17A000+2E↑j
                PLA
                TAX
                INX
                CPX     #4
                BNE     loc_17A029
                JSR     sub_F479
                LDA     #$80
                STA     byte_53
                LDY     #0

loc_17A04A:                             ; CODE XREF: sub_17A000+6A↓j
                LDA     (pCharacter),Y  ; BANK16:95D8
                STA     Pointer
                INY
                LDA     (pCharacter),Y
                STA     Pointer+1
                INY
                TYA
                PHA
                LDA     Pointer
                CMP     #$FF
                BEQ     loc_17A05F
                JSR     sub_17A22D

loc_17A05F:                             ; CODE XREF: sub_17A000+5A↑j
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53
                PLA
                TAY
                CPY     #8
                BNE     loc_17A04A
                LDA     (pCharacter),Y
                AND     #$E0
                LDX     #5

loc_17A072:                             ; CODE XREF: sub_17A000+74↓j
                LSR     A
                DEX
                BNE     loc_17A072
                STA     byte_56
                LDA     (pCharacter),Y  ; BANK16:95E0
                AND     #$1F
                STA     byte_5A
                INY
                LDA     (pCharacter),Y
                AND     #$F
                STA     Pointer
                LDA     #0
                LDX     #5

loc_17A089:                             ; CODE XREF: sub_17A000+8D↓j
                ASL     Pointer
                ROL     A
                DEX
                BNE     loc_17A089
                STA     Pointer+1
                CLC
                LDA     #$81
                ADC     Pointer
                STA     Pointer
                LDA     #$8E
                ADC     Pointer+1
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                JSR     preload_palettes
                JSR     bank16          ; set memory bank $16 at $8000
                LDX     #$23 ; '#'      ; 23C0 - attribute address
                LDY     #$C0
                JSR     fill_attribute
                LDX     #$2B ; '+'      ; 2BC0 - attribute address
                LDY     #$C0
                JSR     fill_attribute
                JSR     statistical_frame
                LDA     #0
                STA     byte_5B
                LDA     #$80
                STA     byte_53

loc_17A0C0:                             ; CODE XREF: sub_17A000+D3↓j
                LDX     byte_53
                LDA     byte_600,X
                BEQ     loc_17A0CA
                JSR     sub_17A28A

loc_17A0CA:                             ; CODE XREF: sub_17A000+C5↑j
                INC     byte_5B
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53
                BCC     loc_17A0C0
                LDY     #0
                LDX     #0

loc_17A0D9:                             ; CODE XREF: sub_17A000+FD↓j
                LDA     byte_580,Y
                INY
                ORA     byte_580,Y
                STA     Pointer
                INY
                LDA     byte_580,Y
                INY
                ORA     byte_580,Y
                ASL     A
                ASL     A
                ORA     Pointer
                STA     Pointer
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     Pointer
                STA     byte_580,X
                INY
                INX
                CPX     #8
                BNE     loc_17A0D9
                JSR     wait_nmi_processed
                LDA     #5
                STA     NMI_ID.NMI_ID
                LDA     #$10
                STA     NMI_ID.num_of_chr
                LDY     #0
                LDX     #4

loc_17A110:                             ; CODE XREF: sub_17A000+11D↓j
                LDA     byte_580,Y
                STA     NMI_ID,X
                STA     NMI_ID.PPU_addr+6,X
                INY
                INX
                CPY     #8
                BNE     loc_17A110
                LDA     #0
                STA     NMI_ID.PPU_addr+6,X
                LDA     #$80
                STA     NMIFlags
                LDA     #$23 ; '#'
                STA     NMI_ID.PPU_addr
                LDA     #$D8
                STA     NMI_ID.PPU_addr+1
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #0
                STA     byte_47
                STA     byte_48
                LDX     #$80

loc_17A13E:                             ; CODE XREF: sub_17A000+154↓j
                TXA
                PHA
                LDY     #4

loc_17A142:                             ; CODE XREF: sub_17A000+14D↓j
                LDA     byte_604,X
                AND     #3
                STA     byte_604,X
                INX
                INX
                DEY
                BNE     loc_17A142
                PLA
                CLC
                ADC     #$20 ; ' '
                TAX
                BNE     loc_17A13E
                LDX     #0
                LDA     byte_56
                CMP     #1
                BNE     loc_17A173
                LDX     #4
                LDA     #$FF
                STA     byte_683
                STA     byte_684
                LDA     #0
                STA     byte_620
                STA     byte_640
                STA     byte_660

loc_17A173:                             ; CODE XREF: sub_17A000+15C↑j
                STX     byte_5B
                LDA     byte_23
                BEQ     loc_17A18C
                LDY     #0
                STY     byte_56

loc_17A17D:                             ; CODE XREF: sub_17A000+18A↓j
                LDA     byte_61E,Y
                ORA     #4
                STA     byte_61E,Y
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A17D

loc_17A18C:                             ; CODE XREF: sub_17A000+177↑j
                LDA     byte_56
                CMP     #5
                BNE     loc_17A19C
                LDA     #$96
                STA     NamePos
                LDA     byte_60C
                STA     byte_68C

loc_17A19C:                             ; CODE XREF: sub_17A000+190↑j
                LDX     #$14
                JSR     delay
                JSR     save_jmp_instr  ; save JMP $F76A to $D7

@battle_loop:                           ; CODE XREF: sub_17A000+1D0↓j
                LDA     #0
                JSR     sub_F4CE        ; start draw window
                JSR     sub_17AC6A      ; draw battle window without menu
                                        ; print messages
                                        ; damage animation
                BCS     @end_battle
                LDX     #$14
                JSR     delay
                LDA     #7
                JSR     sub_F4CE        ; start draw window
                LDA     #0
                STA     byte_52
                JSR     shift_up_window ; shift up window
                                        ; jump instruction LDX #$04
                JSR     sub_F765
                JSR     sub_17A50A      ; battle menu, wait command
                JSR     sub_F760        ; return if select action, set value $5A = 1
                LDA     #3
                JSR     sub_F4CE
                JSR     shift_down_window
                JMP     @battle_loop
; ---------------------------------------------------------------------------

@end_battle:                            ; CODE XREF: sub_17A000+1AC↑j
                JSR     clear_jmp_instr
                LDA     #0
                STA     Gamepad0Buttons
                STA     Gamepad1Buttons
                RTS
; End of function sub_17A000


; =============== S U B R O U T I N E =======================================


sub_17A1DD:                             ; CODE XREF: sub_17A000+30↑p
                STA     AddrForJmp
                TAX
                LDA     #0
                STA     Pointer
                LDA     #$74 ; 't'
                STA     Pointer+1

loc_17A1E8:                             ; CODE XREF: sub_17A1DD+19↓j
                CLC
                LDA     Pointer
                ADC     #$40 ; '@'
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1
                DEX
                BNE     loc_17A1E8
                LDY     #1
                LDX     byte_53

loc_17A1FC:                             ; CODE XREF: sub_17A1DD+28↓j
                LDA     (Pointer),Y
                STA     byte_601,X
                INY
                INX
                CPY     #$10
                BNE     loc_17A1FC
                LDY     #$14
                LDX     byte_53

loc_17A20B:                             ; CODE XREF: sub_17A1DD+37↓j
                LDA     (Pointer),Y
                STA     byte_603,X
                INX
                INY
                CPY     #$18
                BNE     loc_17A20B
                LDX     byte_53
                LDA     #$FF
                STA     byte_600,X
                LDA     AddrForJmp
                STA     byte_611,X
                LDA     Pointer
                STA     pPPUTab,X
                LDA     Pointer+1
                STA     pPPUTab+1,X
                RTS
; End of function sub_17A1DD


; =============== S U B R O U T I N E =======================================


sub_17A22D:                             ; CODE XREF: sub_17A000+5C↑p
                LDX     byte_53
                LDA     Pointer+1
                ASL     A
                ASL     A
                STA     byte_61A,X
                LDA     Pointer
                STA     AddrForJmp
                LDA     #0
                LDX     #5

loc_17A23E:                             ; CODE XREF: sub_17A22D+15↓j
                ASL     AddrForJmp
                ROL     A
                DEX
                BNE     loc_17A23E
                STA     AddrForJmp+1
                CLC
                LDA     #0
                ADC     AddrForJmp
                STA     AddrForJmp
                LDA     #$80
                ADC     AddrForJmp+1
                STA     AddrForJmp+1
                LDY     #1
                LDX     byte_53

loc_17A257:                             ; CODE XREF: sub_17A22D+33↓j
                LDA     (AddrForJmp),Y  ; BANK16:8860
                STA     byte_601,X
                INY
                INX
                CPY     #$18
                BNE     loc_17A257
                LDX     byte_53
                LDY     byte_48
                INY
                TYA
                STA     byte_600,X
                LDA     AddrForJmp
                STA     pPPUTab,X
                LDA     AddrForJmp+1
                STA     pPPUTab+1,X
                LDY     #$5E ; '^'
                LDA     Pointer+1
                BPL     loc_17A285
                LDA     byte_61E,X
                ORA     #1
                STA     byte_61E,X
                LDY     #0

loc_17A285:                             ; CODE XREF: sub_17A22D+4C↑j
                TYA
                STA     byte_61D,X
                RTS
; End of function sub_17A22D


; =============== S U B R O U T I N E =======================================


sub_17A28A:                             ; CODE XREF: sub_17A000+C7↑p
                LDA     byte_61E,X
                AND     #1
                BEQ     loc_17A296
                LDA     #0
                STA     byte_600,X

loc_17A296:                             ; CODE XREF: sub_17A28A+5↑j
                LDA     byte_61A,X
                ORA     byte_5B
                STA     byte_61A,X
                LDA     byte_604,X
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     off_16960A,Y
                STA     Pointer
                LDA     off_16960A+1,Y
                STA     Pointer+1
                LDA     byte_608,X
                AND     #$E0
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                STA     byte_66
                LDY     #0
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                INY
                SEC
                LDA     (Pointer),Y
                SBC     byte_66
                TAY
                INY
                LDA     #$E0

loc_17A2D2:                             ; CODE XREF: sub_17A28A+4C↓j
                CLC
                ADC     #$20 ; ' '
                DEY
                BNE     loc_17A2D2
                STA     pTileID
                LDA     byte_5A
                ASL     A
                ASL     A
                ADC     byte_5B
                TAY
                LDA     byte_168F40,Y
                STA     pTileID+1
                LDA     byte_604,X
                AND     #$C
                LSR     A
                LSR     A
                LDY     pTileID+1
                LDX     #0

loc_17A2F1:                             ; CODE XREF: sub_17A28A+6E↓j
                STA     byte_580,Y
                INY
                INX
                CPX     AddrForJmp+1
                BNE     loc_17A2F1
                CLC
                LDA     pTileID+1
                ADC     pTileID
                ADC     #$80
                STA     pTileID
                LDA     #0
                ADC     #$21 ; '!'
                STA     pTileID+1
                LDA     pTileID
                AND     #$E0
                STA     pDist
                LDA     pTileID+1
                AND     #3
                LSR     A
                ROR     pDist
                LSR     A
                ROR     pDist
                SEC
                LDA     pDist
                SBC     #$19
                STA     pDist
                LDA     pTileID
                ASL     A
                ASL     A
                ASL     A
                SEC
                SBC     #$10
                STA     pDist+1
                LDX     byte_5B
                INX
                LDA     #$C0

loc_17A32F:                             ; CODE XREF: sub_17A28A+A9↓j
                CLC
                ADC     #$40 ; '@'
                DEX
                BNE     loc_17A32F
                STA     byte_66
                LDY     #2

loc_17A339:                             ; CODE XREF: sub_17A28A+F8↓j
                JSR     wait_nmi_processed
                LDX     #0
                LDA     #5
                STA     NMI_ID,X
                INX
                LDA     AddrForJmp+1
                STA     NMI_ID,X
                STA     TilesCount
                INX
                LDA     pTileID+1
                STA     NMI_ID,X
                INX
                LDA     pTileID
                STA     NMI_ID,X

loc_17A357:                             ; CODE XREF: sub_17A28A+D9↓j
                INY
                LDA     (Pointer),Y
                CLC
                ADC     byte_66
                INX
                STA     NMI_ID,X
                DEC     TilesCount
                BNE     loc_17A357
                LDA     #0
                INX
                STA     NMI_ID,X
                CLC
                LDA     pTileID
                ADC     #$20 ; ' '
                STA     pTileID
                LDA     pTileID+1
                ADC     #0
                STA     pTileID+1
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                DEC     AddrForJmp
                BNE     loc_17A339
                LDX     byte_53
                LDA     unk_606,X
                AND     #$FC
                BEQ     locret_17A3D1
                LSR     A
                LSR     A
                STA     Pointer
                ASL     A
                ADC     Pointer
                CLC
                ADC     #$C8
                STA     Pointer
                LDA     #0
                ADC     #$97
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     byte_61C,X
                LDA     byte_5B
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     #0
                STA     SpriteTable,X
                STA     SpriteTable.TileID,X
                STA     SpriteTable.field_4,X
                STA     SpriteTable.field_5,X
                LDA     pDist+1
                STA     SpriteTable.PosX,X
                LDA     pDist
                STA     SpriteTable.PosY,X
                LDY     #1
                LDA     (Pointer),Y
                STA     SpriteTable.pFrame,X
                INY
                LDA     (Pointer),Y
                STA     SpriteTable.pFrame+1,X

locret_17A3D1:                          ; CODE XREF: sub_17A28A+101↑j
                RTS
; End of function sub_17A28A


; =============== S U B R O U T I N E =======================================


fill_attribute:                         ; CODE XREF: sub_17A000+AB↑p
                                        ; sub_17A000+B2↑p
                JSR     wait_nmi_processed
                STX     NMI_ID.PPU_addr
                STY     NMI_ID.PPU_addr+1
                LDA     #8
                STA     NMI_ID.NMI_ID
                LDA     #$40 ; '@'
                STA     NMI_ID.num_of_chr
                LDA     #$FF
                STA     NMI_ID.chr
                LDA     #0
                STA     NMI_ID.next
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     OffsetNMI_ID
                RTS
; End of function fill_attribute


; =============== S U B R O U T I N E =======================================


sub_17A3F8:                             ; CODE XREF: sub_17AC6A+36↓p
                                        ; sub_17ACD6+9D↓p ...
                CMP     #0
                BEQ     locret_17A478
                PHA
                JSR     sub_17A4BB
                JSR     bank0           ; set memory bank 0 at $8000
                PLA
                CMP     #$FF
                BNE     loc_17A42D
                SEC
                LDY     byte_54
                LDA     pPPUTab,Y
                SBC     #0
                STA     PointerTilePack
                LDA     pPPUTab+1,Y
                SBC     #$80
                ASL     PointerTilePack
                ROL     A
                ASL     PointerTilePack
                ROL     A
                ASL     PointerTilePack
                ROL     A
                CLC
                ADC     #$14
                STA     PointerTilePack
                LDA     #0
                ADC     #5
                STA     byte_73
                BCC     loc_17A44A

loc_17A42D:                             ; CODE XREF: sub_17A3F8+E↑j
                LDY     #0
                STY     Pointer+1
                ASL     A
                ROL     Pointer+1
                CLC
                ADC     #$81
                STA     Pointer
                LDA     Pointer+1
                ADC     #$90
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     PointerTilePack
                INY
                LDA     (Pointer),Y
                STA     byte_73

loc_17A44A:                             ; CODE XREF: sub_17A3F8+33↑j
                                        ; sub_17A3F8+75↓j
                JSR     sub_CAA2
                LDA     PointerTilePack
                STA     byte_50
                LDA     PointerTilePack+1
                STA     byte_51
                LDA     byte_52
                CMP     #3
                BNE     loc_17A462
                LDX     #3
                JSR     sub_C7C1
                DEC     byte_52

loc_17A462:                             ; CODE XREF: sub_17A3F8+61↑j
                JSR     sub_17A479
                CMP     #2
                BEQ     loc_17A46F
                INC     byte_52
                CMP     #0
                BNE     loc_17A44A

loc_17A46F:                             ; CODE XREF: sub_17A3F8+6F↑j
                JSR     bank16          ; set memory bank $16 at $8000
                LDX     CurrentGame.PureSave.field_18
                JSR     delay

locret_17A478:                          ; CODE XREF: sub_17A3F8+2↑j
                RTS
; End of function sub_17A3F8


; =============== S U B R O U T I N E =======================================


sub_17A479:                             ; CODE XREF: sub_17A3F8:loc_17A462↑p
                LDA     byte_52
                ASL     A
                ADC     #3
                STA     PosY
                LDY     #0
                LDA     (byte_50),Y
                CMP     #3
                BNE     loc_17A49D
                LDA     #$F
                STA     PosX
                JSR     sub_F5C2
                INC     byte_50
                BNE     loc_17A495
                INC     byte_51

loc_17A495:                             ; CODE XREF: sub_17A479+18↑j
                LDY     #0
                LDA     (byte_50),Y
                CMP     #2
                BEQ     locret_17A4BA

loc_17A49D:                             ; CODE XREF: sub_17A479+D↑j
                LDA     #$16
                STA     byte_70
                LDA     #5
                STA     PosX
                JSR     wait_nmi_processed
                LDA     byte_50
                STA     PointerTilePack
                LDA     byte_51
                STA     PointerTilePack+1
                JSR     print_string
                LDA     #1
                JSR     sub_C7AF
                LDA     UnpackID

locret_17A4BA:                          ; CODE XREF: sub_17A479+22↑j
                RTS
; End of function sub_17A479


; =============== S U B R O U T I N E =======================================


sub_17A4BB:                             ; CODE XREF: sub_17A3F8+5↑p
                                        ; sub_17A9B3+39↓p ...
                LDA     #$21 ; '!'
                STA     byte_580
                STA     unk_588
                LDA     #$80
                STA     AddrForJmp
                LDA     #5
                STA     AddrForJmp+1
                LDX     byte_53
                JSR     loc_17A4DA
                LDA     #$88
                STA     AddrForJmp
                LDA     #5
                STA     AddrForJmp+1
                LDX     byte_54

loc_17A4DA:                             ; CODE XREF: sub_17A4BB+12↑p
                LDA     pPPUTab,X
                STA     Pointer
                LDA     pPPUTab+1,X
                STA     Pointer+1
                LDY     #$18
                LDA     (Pointer),Y
                PHA
                INY
                LDA     (Pointer),Y
                LDY     #2
                STA     (AddrForJmp),Y
                PLA
                DEY
                STA     (AddrForJmp),Y
                INY
                INY
                LDA     byte_61A,X
                AND     #$1C
                BEQ     loc_17A505
                LSR     A
                LSR     A
                CLC
                ADC     #$40 ; '@'
                STA     (AddrForJmp),Y
                INY

loc_17A505:                             ; CODE XREF: sub_17A4BB+40↑j
                LDA     #0
                STA     (AddrForJmp),Y
                RTS
; End of function sub_17A4BB


; =============== S U B R O U T I N E =======================================


sub_17A50A:                             ; CODE XREF: sub_17A000+1C2↑p
                LDA     #0
                STA     byte_53

loc_17A50E:                             ; CODE XREF: sub_17A50A+29↓j
                                        ; sub_17A50A+32↓j
                LDY     byte_53
                LDA     #0
                STA     byte_61D,Y
                LDA     byte_61E,Y
                AND     #$F7
                STA     byte_61E,Y
                LDA     byte_600,Y
                BEQ     loc_17A535
                LDA     byte_601,Y
                AND     #$F4
                BNE     loc_17A535
                LDA     byte_61E,Y
                AND     #$20 ; ' '
                BNE     loc_17A535
                JSR     sub_17A53F
                BCS     loc_17A50E

loc_17A535:                             ; CODE XREF: sub_17A50A+16↑j
                                        ; sub_17A50A+1D↑j ...
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53
                BNE     loc_17A50E
                RTS
; End of function sub_17A50A


; =============== S U B R O U T I N E =======================================


sub_17A53F:                             ; CODE XREF: sub_17A50A+26↑p
                LDA     byte_59
                BNE     loc_17A559
                LDY     byte_53
                BMI     loc_17A559
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A559
                JSR     sub_17A7DA
                BCS     locret_17A572
                LDA     byte_59
                BEQ     loc_17A55C

loc_17A559:                             ; CODE XREF: sub_17A53F+2↑j
                                        ; sub_17A53F+6↑j ...
                JSR     sub_17A573

loc_17A55C:                             ; CODE XREF: sub_17A53F+18↑j
                LDY     byte_53
                LDA     byte_61D,Y
                CMP     #$53 ; 'S'
                BEQ     loc_17A569
                CMP     #$59 ; 'Y'
                BNE     loc_17A571

loc_17A569:                             ; CODE XREF: sub_17A53F+24↑j
                LDA     byte_61E,Y
                ORA     #8
                STA     byte_61E,Y

loc_17A571:                             ; CODE XREF: sub_17A53F+28↑j
                CLC

locret_17A572:                          ; CODE XREF: sub_17A53F+14↑j
                RTS
; End of function sub_17A53F


; =============== S U B R O U T I N E =======================================


sub_17A573:                             ; CODE XREF: sub_17A53F:loc_17A559↑p
                LDA     byte_53
                BMI     loc_17A57A
                JMP     loc_17A57D
; ---------------------------------------------------------------------------

loc_17A57A:                             ; CODE XREF: sub_17A573+2↑j
                JMP     loc_17A723
; ---------------------------------------------------------------------------

loc_17A57D:                             ; CODE XREF: sub_17A573+4↑j
                LDY     #0

loc_17A57F:                             ; CODE XREF: sub_17A573+26↓j
                STY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A594
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A594
                LDA     byte_601,Y
                BMI     loc_17A59D

loc_17A594:                             ; CODE XREF: sub_17A573+11↑j
                                        ; sub_17A573+1A↑j
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A57F
                BMI     loc_17A5A0

loc_17A59D:                             ; CODE XREF: sub_17A573+1F↑j
                JMP     loc_17A6B0
; ---------------------------------------------------------------------------

loc_17A5A0:                             ; CODE XREF: sub_17A573+28↑j
                                        ; sub_17A573+144↓j
                LDY     #0

loc_17A5A2:                             ; CODE XREF: sub_17A573+4E↓j
                STY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A5BC
                LDA     byte_601,Y
                BMI     loc_17A5BC
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A5BC
                JSR     sub_F673
                BCC     loc_17A5C5

loc_17A5BC:                             ; CODE XREF: sub_17A573+34↑j
                                        ; sub_17A573+39↑j ...
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A5A2
                BMI     loc_17A5E9

loc_17A5C5:                             ; CODE XREF: sub_17A573+47↑j
                LDX     #0
                LDY     #0

loc_17A5C9:                             ; CODE XREF: sub_17A573+6D↓j
                LDA     byte_600,Y
                BEQ     loc_17A5DB
                LDA     byte_601,Y
                BMI     loc_17A5DB
                JSR     sub_F673
                BCS     loc_17A5DB
                INX
                STY     byte_54

loc_17A5DB:                             ; CODE XREF: sub_17A573+59↑j
                                        ; sub_17A573+5E↑j ...
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A5C9
                CPX     #1
                BCC     loc_17A611
                JMP     loc_17A623
; ---------------------------------------------------------------------------

loc_17A5E9:                             ; CODE XREF: sub_17A573+50↑j
                                        ; sub_17A573+CA↓j ...
                LDY     #0

loc_17A5EB:                             ; CODE XREF: sub_17A573+96↓j
                STY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A604
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A604
                LDA     byte_601,Y
                BMI     loc_17A604
                AND     #$70 ; 'p'
                BNE     loc_17A60E

loc_17A604:                             ; CODE XREF: sub_17A573+7D↑j
                                        ; sub_17A573+86↑j ...
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A5EB
                JMP     loc_17A690
; ---------------------------------------------------------------------------

loc_17A60E:                             ; CODE XREF: sub_17A573+8F↑j
                JMP     loc_17A659
; ---------------------------------------------------------------------------

loc_17A611:                             ; CODE XREF: sub_17A573+71↑j
                LDA     #$C
                JSR     loc_17A6C2
                BCC     locret_17A622
                LDA     #$B
                JSR     loc_17A6C2
                BCC     locret_17A622
                JMP     loc_17A623
; ---------------------------------------------------------------------------

locret_17A622:                          ; CODE XREF: sub_17A573+A3↑j
                                        ; sub_17A573+AA↑j
                RTS
; ---------------------------------------------------------------------------

loc_17A623:                             ; CODE XREF: sub_17A573+73↑j
                                        ; sub_17A573+AC↑j
                LDA     #$A
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDA     #9
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDA     #8
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDY     byte_53
                JSR     sub_17BFAA
                BCS     loc_17A5E9
                CPX     #$7C ; '|'
                BEQ     loc_17A5E9
                CPX     #$84
                BEQ     loc_17A5E9
                TYA
                LDY     byte_53
                STA     unk_610,Y
                TXA
                STA     byte_61D,Y

loc_17A651:                             ; CODE XREF: sub_17A573+B5↑j
                                        ; sub_17A573+BC↑j ...
                LDA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A659:                             ; CODE XREF: sub_17A573:loc_17A60E↑j
                LDY     byte_54
                LDA     byte_601,Y
                TAX
                AND     #$20 ; ' '
                BNE     loc_17A670
                TXA
                AND     #$10
                BNE     loc_17A677
                TXA
                AND     #$40 ; '@'
                BNE     loc_17A67E
                JMP     loc_17A685
; ---------------------------------------------------------------------------

loc_17A670:                             ; CODE XREF: sub_17A573+EE↑j
                LDA     #$11
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A677:                             ; CODE XREF: sub_17A573+F3↑j
                LDA     #$13
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A67E:                             ; CODE XREF: sub_17A573+F8↑j
                LDA     #$12
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A685:                             ; CODE XREF: sub_17A573+FA↑j
                JMP     loc_17A690
; ---------------------------------------------------------------------------

loc_17A688:                             ; CODE XREF: sub_17A573+102↑j
                                        ; sub_17A573+109↑j ...
                LDA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A690:                             ; CODE XREF: sub_17A573+98↑j
                                        ; sub_17A573:loc_17A685↑j
                LDY     byte_53
                LDA     #1
                STA     byte_61D,Y

loc_17A697:                             ; CODE XREF: sub_17A573+12F↓j
                                        ; sub_17A573+134↓j
                JSR     sub_F1ED
                AND     #$E0
                ORA     #$80
                TAY
                LDA     byte_600,Y
                BEQ     loc_17A697
                LDA     byte_601,Y
                BMI     loc_17A697
                TYA
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A6B0:                             ; CODE XREF: sub_17A573:loc_17A59D↑j
                LDA     #$14
                JSR     loc_17A6C2
                BCC     loc_17A6BA
                JMP     loc_17A5A0
; ---------------------------------------------------------------------------

loc_17A6BA:                             ; CODE XREF: sub_17A573+142↑j
                LDY     byte_53
                LDA     byte_54
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A6C2:                             ; CODE XREF: sub_17A573+A0↑p
                                        ; sub_17A573+A7↑p ...
                STA     Pointer
                JSR     sub_17A86B
                LDA     Pointer
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     Pointer
                AND     #7
                TAX
                INX
                SEC
                LDA     #0

loc_17A6D6:                             ; CODE XREF: sub_17A573+165↓j
                ROR     A
                DEX
                BNE     loc_17A6D6
                STA     Pointer+1
                LDA     (pCharacter),Y
                AND     Pointer+1
                BEQ     loc_17A721
                LDA     #0
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                STA     Pointer+1
                CLC
                LDA     Pointer
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$9E
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (Pointer),Y
                LDY     byte_53
                STA     byte_61D,Y
                LDY     #7
                LDA     (Pointer),Y
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     sub_17B1D1
                BCC     loc_17A721
                JSR     sub_17B1C5
                BCC     loc_17A721
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A721:                             ; CODE XREF: sub_17A573+16D↑j
                                        ; sub_17A573+1A5↑j ...
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17A723:                             ; CODE XREF: sub_17A573:loc_17A57A↑j
                JSR     sub_F1ED
                AND     #7
                CLC
                ADC     byte_53
                TAY
                LDA     unk_610,Y
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17AC23
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17A573            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17A7A3, sub_17A740, sub_17A74A

; =============== S U B R O U T I N E =======================================


sub_17A740:                             ; CODE XREF: sub_17A740+5↓j
                                        ; DATA XREF: BANK17:A73A↑o
                JSR     sub_17A7AB
                LDA     byte_54
                BPL     sub_17A740
                JMP     sub_17A7A3
; End of function sub_17A740


; =============== S U B R O U T I N E =======================================


sub_17A74A:                             ; DATA XREF: BANK17:A73A↑o
                LDA     byte_53
                BPL     loc_17A796
                LDA     byte_56
                CMP     #3
                BNE     loc_17A760
                LDX     #3

loc_17A756:                             ; CODE XREF: sub_17A74A+14↓j
                LDA     #6
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A756

loc_17A760:                             ; CODE XREF: sub_17A74A+8↑j
                LDA     byte_56
                CMP     #4
                BNE     loc_17A78A
                LDX     #3

loc_17A768:                             ; CODE XREF: sub_17A74A+26↓j
                LDA     #1
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A768
                LDX     #3

loc_17A774:                             ; CODE XREF: sub_17A74A+32↓j
                LDA     #2
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A774
                LDX     #3

loc_17A780:                             ; CODE XREF: sub_17A74A+3E↓j
                LDA     #4
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A780

loc_17A78A:                             ; CODE XREF: sub_17A74A+1A↑j
                LDX     #3

loc_17A78C:                             ; CODE XREF: sub_17A74A+4A↓j
                LDA     #7
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A78C

loc_17A796:                             ; CODE XREF: sub_17A74A+2↑j
                                        ; sub_17A74A+51↓j
                JSR     sub_17A7AB
                LDA     byte_54
                BMI     loc_17A796
                JMP     sub_17A7A3
; ---------------------------------------------------------------------------

loc_17A7A0:                             ; CODE XREF: sub_17A74A+11↑j
                                        ; sub_17A74A+23↑j ...
                JMP     sub_17A7A3
; End of function sub_17A74A


; =============== S U B R O U T I N E =======================================


sub_17A7A3:                             ; CODE XREF: sub_17A740+7↑j
                                        ; sub_17A74A+53↑j ...
                LDA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; End of function sub_17A7A3


; =============== S U B R O U T I N E =======================================


sub_17A7AB:                             ; CODE XREF: sub_17A740↑p
                                        ; sub_17A74A:loc_17A796↑p ...
                JSR     sub_F1ED
                AND     #OtherNMIFlags
                TAY
                LDA     byte_600,Y
                BEQ     sub_17A7AB
                LDA     byte_601,Y
                BMI     sub_17A7AB
                STY     byte_54
                RTS
; End of function sub_17A7AB


; =============== S U B R O U T I N E =======================================


sub_17A7BE:                             ; CODE XREF: sub_17A74A+E↑p
                                        ; sub_17A74A+20↑p ...
                CMP     CurrentPlayer.PureSave.CharactersNum,X
                BNE     loc_17A7D8
                TXA
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                TAY
                LDA     byte_600,Y
                BEQ     loc_17A7D8
                LDA     byte_601,Y
                BMI     loc_17A7D8
                STY     byte_54
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17A7D8:                             ; CODE XREF: sub_17A7BE+3↑j
                                        ; sub_17A7BE+F↑j ...
                CLC
                RTS
; End of function sub_17A7BE


; =============== S U B R O U T I N E =======================================


sub_17A7DA:                             ; CODE XREF: sub_17A53F+11↑p
                                        ; sub_17A847:loc_17A865↓j ...
                JSR     sub_17AC06

loc_17A7DD:                             ; CODE XREF: sub_17A802+C↓j
                                        ; sub_17A847:loc_17A868↓j ...
                LDA     #2
                LDX     CurrentGame.field_21C
                BPL     loc_17A7E6
                LDA     #$13

loc_17A7E6:                             ; CODE XREF: sub_17A7DA+8↑j
                JSR     sub_F4CE
                JSR     sub_17A90D
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17A7DA            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17A802, sub_17A814, sub_17A847, sub_17A87D, sub_17A888
                .WORD sub_17A8BA, sub_17A8BF, sub_17A8E2, sub_17A8E7
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_6. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17A802:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #1
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17A962
                BCC     loc_17A811
                JMP     loc_17A7DD
; ---------------------------------------------------------------------------

loc_17A811:                             ; CODE XREF: sub_17A802+A↑j
                JMP     nullsub_6
; End of function sub_17A802


; =============== S U B R O U T I N E =======================================


sub_17A814:                             ; DATA XREF: BANK17:A7EF↑o
                JSR     wait_nmi_processed
                LDA     #1
                STA     byte_59
                LDA     #$14
                STA     SpriteTable.pFrame+$E0
                LDA     #$97
                STA     SpriteTable.pFrame+$E1
                LDA     #4
                STA     SpriteTable.Tiles+$E0
                LDA     #0
                STA     SpriteTable.TileID+$E0
                STA     SpriteTable.field_4+$E0
                STA     SpriteTable.field_5+$E0
                LDA     #$D0
                STA     SpriteTable.PosX+$E0
                LDA     #$47 ; 'G'
                STA     SpriteTable.PosY+$E0
                LDA     #1
                STA     NMIFlags
                CLC
                JMP     nullsub_6
; End of function sub_17A814


; =============== S U B R O U T I N E =======================================


sub_17A847:                             ; DATA XREF: BANK17:A7EF↑o
                JSR     sub_17A86B
                LDA     #0
                STA     Pointer
                LDY     #7

loc_17A850:                             ; CODE XREF: sub_17A847+10↓j
                LDA     (pCharacter),Y
                ORA     Pointer
                STA     Pointer
                DEY
                BNE     loc_17A850
                LDA     Pointer
                BEQ     loc_17A868
                JSR     sub_17AB10
                BCS     loc_17A865
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A865:                             ; CODE XREF: sub_17A847+19↑j
                JMP     sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A868:                             ; CODE XREF: sub_17A847+14↑j
                JMP     loc_17A7DD
; End of function sub_17A847


; =============== S U B R O U T I N E =======================================


sub_17A86B:                             ; CODE XREF: sub_17A573+151↑p
                                        ; sub_17A847↑p
                LDY     byte_53
                CLC
                LDA     pPPUTab,Y
                ADC     #$30 ; '0'
                STA     pCharacter
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     pCharacter+1
                RTS
; End of function sub_17A86B


; =============== S U B R O U T I N E =======================================


sub_17A87D:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$59 ; 'Y'

loc_17A87F:                             ; CODE XREF: sub_17A8BA+2↓j
                                        ; sub_17A8E2+2↓j
                LDY     byte_53
                STA     byte_61D,Y
                CLC
                JMP     nullsub_6
; End of function sub_17A87D


; =============== S U B R O U T I N E =======================================


sub_17A888:                             ; DATA XREF: BANK17:A7EF↑o
                LDY     byte_53
                CLC
                LDA     pPPUTab,Y
                ADC     #$20 ; ' '
                STA     pCharacter
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     pCharacter+1
                LDA     #0
                STA     Pointer
                LDY     #7

loc_17A89F:                             ; CODE XREF: sub_17A888+1E↓j
                LDA     (pCharacter),Y
                ORA     Pointer
                STA     Pointer
                DEY
                BPL     loc_17A89F
                LDA     Pointer
                BEQ     loc_17A8B7
                JSR     sub_17AA08
                BCS     loc_17A8B4
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A8B4:                             ; CODE XREF: sub_17A888+27↑j
                JMP     sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A8B7:                             ; CODE XREF: sub_17A888+22↑j
                JMP     loc_17A7DD
; End of function sub_17A888


; =============== S U B R O U T I N E =======================================


sub_17A8BA:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$48 ; 'H'
                JMP     loc_17A87F
; End of function sub_17A8BA


; =============== S U B R O U T I N E =======================================


sub_17A8BF:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$80
                STA     byte_54
                JSR     sub_17A991
                BCS     loc_17A8DF
                LDX     CurrentFieldPosition
                LDA     byte_591,X
                TAX
                DEX
                TXA
                STA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                LDA     #$6F ; 'o'
                STA     byte_61D,Y
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A8DF:                             ; CODE XREF: sub_17A8BF+7↑j
                JMP     loc_17A7DD
; End of function sub_17A8BF


; =============== S U B R O U T I N E =======================================


sub_17A8E2:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$1C
                JMP     loc_17A87F
; End of function sub_17A8E2


; =============== S U B R O U T I N E =======================================


sub_17A8E7:                             ; CODE XREF: sub_17A8E7+D↓j
                                        ; sub_17A8E7+12↓j ...
                SEC
                LDA     byte_53
                BEQ     loc_17A909
                SBC     #$20 ; ' '
                STA     byte_53
                TAY
                LDA     byte_600,Y
                BEQ     sub_17A8E7
                LDA     byte_601,Y
                BMI     sub_17A8E7
                LDA     byte_601,Y
                AND     #$F4
                BNE     sub_17A8E7
                LDA     byte_61E,Y
                AND     #$20 ; ' '
                BNE     sub_17A8E7

loc_17A909:                             ; CODE XREF: sub_17A8E7+3↑j
                SEC
                JMP     nullsub_6
; End of function sub_17A8E7


; =============== S U B R O U T I N E =======================================


sub_17A90D:                             ; CODE XREF: sub_17A7DA+F↑p
                LDX     #$73 ; 's'
                LDY     #$9F
                LDA     byte_56
                CMP     #1
                BNE     loc_17A91E
                LDX     #$83
                LDY     #$9F
                JMP     loc_17A927
; ---------------------------------------------------------------------------

loc_17A91E:                             ; CODE XREF: sub_17A90D+8↑j
                LDA     CurrentGame.field_21C
                BPL     loc_17A927
                LDX     #$7B ; '{'
                LDY     #$9F

loc_17A927:                             ; CODE XREF: sub_17A90D+E↑j
                                        ; sub_17A90D+14↑j
                STX     pStr
                STY     pStr+1
                LDX     #$6B ; 'k'
                LDY     #$9F
                STX     pCursor
                STY     pCursor+1
                JSR     short_cursor_update
                BIT     Buttons
                BVS     loc_17A942
                LDA     #9
                JSR     sub_17A945
                LDA     CurrentFieldPosition
                RTS
; ---------------------------------------------------------------------------

loc_17A942:                             ; CODE XREF: sub_17A90D+2B↑j
                LDA     #8
                RTS
; End of function sub_17A90D


; =============== S U B R O U T I N E =======================================


sub_17A945:                             ; CODE XREF: sub_17A90D+2F↑p
                                        ; sub_17AAE9+1E↓p
                STA     Pointer
                LDA     CurrentFieldPosition
                LSR     A
                ASL     A
                CLC
                ADC     PosY
                STA     PosY
                LDA     CurrentFieldPosition
                AND     #1
                BEQ     loc_17A95D
                CLC
                LDA     PosX
                ADC     Pointer
                STA     PosX

loc_17A95D:                             ; CODE XREF: sub_17A945+F↑j
                LDA     #$D
                JMP     sub_F4CE
; End of function sub_17A945


; =============== S U B R O U T I N E =======================================


sub_17A962:                             ; CODE XREF: sub_17A802+7↑p
                                        ; sub_17AA08+35↓p ...
                JSR     sub_17AC23
                BEQ     loc_17A98D
                LDX     #$80
                CMP     #2
                BEQ     loc_17A96F
                LDX     #0

loc_17A96F:                             ; CODE XREF: sub_17A962+9↑j
                STX     Pointer
                LDA     byte_53
                AND     #$80
                EOR     Pointer
                STA     byte_54
                JSR     sub_17A991
                BCS     loc_17A98F
                LDX     CurrentFieldPosition
                LDA     byte_591,X
                TAX
                DEX
                TXA
                STA     byte_54
                LDY     byte_53
                STA     byte_61C,Y

loc_17A98D:                             ; CODE XREF: sub_17A962+3↑j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A98F:                             ; CODE XREF: sub_17A962+1A↑j
                SEC
                RTS
; End of function sub_17A962


; =============== S U B R O U T I N E =======================================


sub_17A991:                             ; CODE XREF: sub_17A8BF+4↑p
                                        ; sub_17A962+17↑p ...
                LDA     #$B
                JSR     sub_F4CE
                JSR     sub_17A9B3
                LDA     #$8B
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                BIT     Buttons
                BVS     loc_17A9B1
                BMI     loc_17A9AD
                JMP     sub_17A991
; ---------------------------------------------------------------------------

loc_17A9AD:                             ; CODE XREF: sub_17A991+17↑j
                LDA     CurrentFieldPosition
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A9B1:                             ; CODE XREF: sub_17A991+15↑j
                SEC
                RTS
; End of function sub_17A991


; =============== S U B R O U T I N E =======================================


sub_17A9B3:                             ; CODE XREF: sub_17A991+5↑p
                LDA     #$12
                STA     PosY
                LDX     #0
                STX     byte_591
                STX     byte_592
                STX     byte_593
                STX     unk_594
                INX
                STX     byte_590
                LDA     byte_54
                PHA
                LDY     #4

loc_17A9CE:                             ; CODE XREF: sub_17A9B3+4F↓j
                TYA
                PHA
                LDY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A9F8
                LDY     byte_54
                BMI     loc_17A9E4
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A9F8

loc_17A9E4:                             ; CODE XREF: sub_17A9B3+26↑j
                INY
                TYA
                STA     byte_590,X
                INX
                TXA
                PHA
                JSR     sub_17A4BB
                LDA     #$C
                JSR     sub_F4CE
                INC     PosY
                PLA
                TAX

loc_17A9F8:                             ; CODE XREF: sub_17A9B3+22↑j
                                        ; sub_17A9B3+2F↑j
                CLC
                LDA     byte_54
                ADC     #$20 ; ' '
                STA     byte_54
                PLA
                TAY
                DEY
                BNE     loc_17A9CE
                PLA
                STA     byte_54
                RTS
; End of function sub_17A9B3


; =============== S U B R O U T I N E =======================================


sub_17AA08:                             ; CODE XREF: sub_17A888+24↑p
                LDA     #$E
                JSR     sub_F4CE
                JSR     sub_17AA67
                JSR     sub_17AAE9
                BCS     loc_17AA65
                LDY     byte_53
                LDA     CurrentFieldPosition
                STA     unk_610,Y
                LDY     CurrentFieldPosition
                LDA     (pCharacter),Y
                JSR     sub_17AAA4
                LDY     byte_53
                JSR     sub_17AC49
                BCS     loc_17AA43
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                CMP     #0
                BEQ     loc_17AA4C
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17A962
                BCS     loc_17AA65
                RTS
; ---------------------------------------------------------------------------

loc_17AA43:                             ; CODE XREF: sub_17AA08+20↑j
                LDX     byte_53
                JSR     sub_17A4BB
                LDX     #$14
                BNE     loc_17AA5E

loc_17AA4C:                             ; CODE XREF: sub_17AA08+2E↑j
                LDX     #$10
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #3
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                CMP     #0
                BEQ     loc_17AA5E
                LDX     #$11

loc_17AA5E:                             ; CODE XREF: sub_17AA08+42↑j
                                        ; sub_17AA08+52↑j
                TXA
                JSR     sub_F4CE
                JSR     wait_A_B

loc_17AA65:                             ; CODE XREF: sub_17AA08+B↑j
                                        ; sub_17AA08+38↑j
                SEC
                RTS
; End of function sub_17AA08


; =============== S U B R O U T I N E =======================================


sub_17AA67:                             ; CODE XREF: sub_17AA08+5↑p
                LDY     #0

loc_17AA69:                             ; CODE XREF: sub_17AA67+3A↓j
                TYA
                PHA
                AND     #1
                TAX
                LDA     unk_169FB2,X
                STA     PosX
                TYA
                LSR     A
                TAX
                LDA     unk_169FB4,X
                STA     PosY
                LDA     (pCharacter),Y
                BEQ     loc_17AA9C
                JSR     sub_17AAA4
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #4
                STA     unk_588
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     unk_589
                INY
                LDA     (AddrForJmp),Y
                STA     unk_58A
                LDA     #$F
                JSR     sub_F4CE

loc_17AA9C:                             ; CODE XREF: sub_17AA67+16↑j
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17AA69
                RTS
; End of function sub_17AA67


; =============== S U B R O U T I N E =======================================


sub_17AAA4:                             ; CODE XREF: sub_17AA08+18↑p
                                        ; sub_17AA67+18↑p ...
                LDX     #0
                STX     AddrForJmp+1
                LDX     #3

loc_17AAAA:                             ; CODE XREF: sub_17AAA4+A↓j
                ASL     A
                ROL     AddrForJmp+1
                DEX
                BNE     loc_17AAAA
                CLC
                ADC     #0
                STA     AddrForJmp
                LDA     AddrForJmp+1
                ADC     #$98
                STA     AddrForJmp+1
                RTS
; End of function sub_17AAA4


; =============== S U B R O U T I N E =======================================


sub_17AABC:                             ; CODE XREF: sub_17BFAA↓p
                CLC
                LDA     pPPUTab,Y
                ADC     #$20 ; ' '
                STA     Pointer
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     Pointer+1
                RTS
; End of function sub_17AABC


; =============== S U B R O U T I N E =======================================


sub_17AACC:                             ; CODE XREF: sub_17AE5D+7↓p
                                        ; sub_17AE8E+7↓p ...
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #$21 ; '!'
                STA     byte_590
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     byte_591
                INY
                LDA     (AddrForJmp),Y
                STA     byte_592
                LDA     #0
                STA     byte_593
                JMP     bank16          ; set memory bank $16 at $8000
; End of function sub_17AACC


; =============== S U B R O U T I N E =======================================


sub_17AAE9:                             ; CODE XREF: sub_17AA08+8↑p
                                        ; sub_17AAE9+19↓j
                LDA     #$95
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                LDA     pCharacter
                STA     pStr
                LDA     pCharacter+1
                STA     pStr+1
                JSR     short_cursor_update
                BIT     Buttons
                BVS     loc_17AB0E
                BMI     loc_17AB05
                JMP     sub_17AAE9
; ---------------------------------------------------------------------------

loc_17AB05:                             ; CODE XREF: sub_17AAE9+17↑j
                LDA     #$C
                JSR     sub_17A945
                LDA     CurrentFieldPosition
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AB0E:                             ; CODE XREF: sub_17AAE9+15↑j
                SEC
                RTS
; End of function sub_17AAE9


; =============== S U B R O U T I N E =======================================


sub_17AB10:                             ; CODE XREF: sub_17A847+16↑p
                                        ; sub_17AB10+25↓j
                LDY     #1

loc_17AB12:                             ; CODE XREF: sub_17AB10+27↓j
                LDA     (pCharacter),Y
                BEQ     loc_17AB32
                TYA
                PHA
                LDA     #$E
                JSR     sub_F4CE
                LDA     #$12
                JSR     sub_F4CE
                JSR     sub_17AB61
                JSR     sub_17ABC2
                PLA
                TAY
                CPX     #1
                BEQ     loc_17AB39
                CPX     #2
                BEQ     loc_17AB5F

loc_17AB32:                             ; CODE XREF: sub_17AB10+4↑j
                INY
                CPY     #8
                BEQ     sub_17AB10
                BNE     loc_17AB12

loc_17AB39:                             ; CODE XREF: sub_17AB10+1C↑j
                LDY     CurrentFieldPosition
                LDA     byte_580,Y
                JSR     set_jmp_addr
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                BEQ     loc_17AB57
                LDY     byte_53
                STA     byte_61D,Y
                PHA
                JSR     bank16          ; set memory bank $16 at $8000
                PLA
                JMP     sub_17A962
; ---------------------------------------------------------------------------

loc_17AB57:                             ; CODE XREF: sub_17AB10+38↑j
                LDA     #$10
                JSR     sub_F4CE
                JSR     wait_A_B

loc_17AB5F:                             ; CODE XREF: sub_17AB10+20↑j
                SEC
                RTS
; End of function sub_17AB10


; =============== S U B R O U T I N E =======================================


sub_17AB61:                             ; CODE XREF: sub_17AB10+12↑p
                TYA
                ASL     A
                ASL     A
                ASL     A
                STA     Pointer
                LDA     #$80
                STA     Pointer+1
                LDX     #0

loc_17AB6D:                             ; CODE XREF: sub_17AB61+21↓j
                LDA     #0
                STA     byte_580,X
                LDA     (pCharacter),Y
                AND     Pointer+1
                BEQ     loc_17AB7D
                LDA     Pointer
                STA     byte_580,X

loc_17AB7D:                             ; CODE XREF: sub_17AB61+15↑j
                INC     Pointer
                INX
                LSR     Pointer+1
                BCC     loc_17AB6D
                LDY     #0

loc_17AB86:                             ; CODE XREF: sub_17AB61+5E↓j
                TYA
                PHA
                AND     #1
                TAX
                LDA     unk_169FB2,X
                STA     PosX
                TYA
                LSR     A
                TAX
                LDA     unk_169FB4,X
                STA     PosY
                LDA     byte_580,Y
                BEQ     loc_17ABBA
                JSR     set_jmp_addr
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #4
                STA     unk_588
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     unk_589
                INY
                LDA     (AddrForJmp),Y
                STA     unk_58A
                LDA     #$F
                JSR     sub_F4CE

loc_17ABBA:                             ; CODE XREF: sub_17AB61+3A↑j
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17AB86
                RTS
; End of function sub_17AB61


; =============== S U B R O U T I N E =======================================


sub_17ABC2:                             ; CODE XREF: sub_17AB10+15↑p
                                        ; sub_17ABC2+1B↓j ...
                LDA     #$A7
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                LDA     Buttons
                AND     #6
                BNE     loc_17ABE6
                LDA     Buttons
                AND     #$81
                BNE     loc_17ABE0
                BIT     Buttons
                BVS     loc_17ABE3
                JMP     sub_17ABC2
; ---------------------------------------------------------------------------

loc_17ABE0:                             ; CODE XREF: sub_17ABC2+15↑j
                LDX     #0
                RTS
; ---------------------------------------------------------------------------

loc_17ABE3:                             ; CODE XREF: sub_17ABC2+19↑j
                LDX     #2
                RTS
; ---------------------------------------------------------------------------

loc_17ABE6:                             ; CODE XREF: sub_17ABC2+F↑j
                LDA     #$9D
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                LDA     Buttons
                AND     #8
                BNE     sub_17ABC2
                BIT     Buttons
                BVS     loc_17AC03
                BMI     loc_17AC00
                JMP     sub_17ABC2
; ---------------------------------------------------------------------------

loc_17AC00:                             ; CODE XREF: sub_17ABC2+39↑j
                LDX     #1
                RTS
; ---------------------------------------------------------------------------

loc_17AC03:                             ; CODE XREF: sub_17ABC2+37↑j
                LDX     #2
                RTS
; End of function sub_17ABC2


; =============== S U B R O U T I N E =======================================


sub_17AC06:                             ; CODE XREF: sub_17A7DA↑p
                LDA     #$A
                JSR     sub_F4CE
                JSR     sub_17A4BB
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #0
                STA     byte_70
                LDA     #$7A ; 'z'
                STA     PointerTilePack
                LDA     #$8E
                STA     PointerTilePack+1
                JSR     loc_C6DB
                JMP     bank16          ; set memory bank $16 at $8000
; End of function sub_17AC06


; =============== S U B R O U T I N E =======================================


sub_17AC23:                             ; CODE XREF: sub_17A573+1C1↑p
                                        ; sub_17A962↑p
                PHA
                AND     #3
                TAX
                INX
                LDA     #1
                SEC

loc_17AC2B:                             ; CODE XREF: sub_17AC23+B↓j
                ROR     A
                ROR     A
                DEX
                BNE     loc_17AC2B
                STA     Pointer
                PLA
                LSR     A
                LSR     A
                TAY
                LDA     unk_169EC7,Y
                AND     Pointer
                STA     Pointer+1

loc_17AC3D:                             ; CODE XREF: sub_17AC23+20↓j
                LSR     Pointer
                BCS     loc_17AC46
                LSR     Pointer+1
                JMP     loc_17AC3D
; ---------------------------------------------------------------------------

loc_17AC46:                             ; CODE XREF: sub_17AC23+1C↑j
                LDA     Pointer+1
                RTS
; End of function sub_17AC23


; =============== S U B R O U T I N E =======================================


sub_17AC49:                             ; CODE XREF: sub_17AA08+1D↑p
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     byte_611,Y
                STA     pTileID
                TAX
                SEC
                LDA     #0

loc_17AC55:                             ; CODE XREF: sub_17AC49+E↓j
                ROL     A
                DEX
                BNE     loc_17AC55
                STA     TilesCount
                LDY     #2
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                AND     TilesCount
                BEQ     loc_17AC68
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AC68:                             ; CODE XREF: sub_17AC49+1B↑j
                SEC
                RTS
; End of function sub_17AC49


; =============== S U B R O U T I N E =======================================


sub_17AC6A:                             ; CODE XREF: sub_17A000+1A9↑p
                JSR     sub_17B75A
                BCS     loc_17AC91
                LDX     #8

loc_17AC71:                             ; CODE XREF: sub_17AC6A+1E↓j
                TXA
                PHA
                JSR     sub_17ACA5
                JSR     sub_17ACD6      ; out message, animation
                LDA     #$FF
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17B75A      ; check win, lose, out message
                BCS     loc_17AC90
                PLA
                TAX
                DEX
                BNE     loc_17AC71
                DEC     byte_5B
                BEQ     loc_17AC93
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AC90:                             ; CODE XREF: sub_17AC6A+19↑j
                PLA

loc_17AC91:                             ; CODE XREF: sub_17AC6A+3↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17AC93:                             ; CODE XREF: sub_17AC6A+22↑j
                LDA     byte_56
                CMP     #1
                BEQ     loc_17ACA3
                LDX     #$64 ; 'd'
                JSR     delay
                LDA     #$92
                JSR     sub_17A3F8

loc_17ACA3:                             ; CODE XREF: sub_17AC6A+2D↑j
                SEC
                RTS
; End of function sub_17AC6A


; =============== S U B R O U T I N E =======================================


sub_17ACA5:                             ; CODE XREF: sub_17AC6A+9↑p
                LDA     #0
                STA     Pointer
                STA     Pointer+1

loc_17ACAB:                             ; CODE XREF: sub_17ACA5+2A↓j
                LDY     Pointer
                LDA     byte_61D,Y
                CMP     #$FF
                BEQ     loc_17ACC8
                CMP     #$5E ; '^'
                BEQ     loc_17ACD3
                LDA     byte_60C,Y
                JSR     sub_F3FD
                CMP     Pointer+1
                BCC     loc_17ACC8
                STA     Pointer+1
                LDA     Pointer
                STA     AddrForJmp

loc_17ACC8:                             ; CODE XREF: sub_17ACA5+D↑j
                                        ; sub_17ACA5+1B↑j
                CLC
                LDA     Pointer
                ADC     #$20 ; ' '
                STA     Pointer
                BNE     loc_17ACAB
                LDY     AddrForJmp

loc_17ACD3:                             ; CODE XREF: sub_17ACA5+11↑j
                STY     byte_53
                RTS
; End of function sub_17ACA5


; =============== S U B R O U T I N E =======================================


sub_17ACD6:                             ; CODE XREF: sub_17AC6A+C↑p
                LDY     byte_53
                LDA     byte_600,Y
                BNE     loc_17ACE2
                LDA     #0
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACE2:                             ; CODE XREF: sub_17ACD6+5↑j
                LDA     byte_601,Y
                AND     #$80
                BEQ     loc_17ACEE
                LDA     #0
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACEE:                             ; CODE XREF: sub_17ACD6+11↑j
                LDA     byte_601,Y
                AND     #$40 ; '@'
                BEQ     loc_17ACFA
                LDA     #$47 ; 'G'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACFA:                             ; CODE XREF: sub_17ACD6+1D↑j
                LDA     byte_601,Y
                AND     #$20 ; ' '
                BEQ     loc_17AD06
                LDA     #$46 ; 'F'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD06:                             ; CODE XREF: sub_17ACD6+29↑j
                LDA     byte_601,Y
                AND     #$10
                BEQ     loc_17AD2B
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AD26
                LDA     byte_601,Y
                AND     #$EF
                STA     byte_601,Y
                STY     byte_54
                JSR     statistical_frame
                LDA     #$8E
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD26:                             ; CODE XREF: sub_17ACD6+3C↑j
                LDA     #$3C ; '<'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD2B:                             ; CODE XREF: sub_17ACD6+35↑j
                LDA     byte_601,Y
                AND     #4
                BEQ     loc_17AD37
                LDA     #$68 ; 'h'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD37:                             ; CODE XREF: sub_17ACD6+5A↑j
                LDA     byte_61E,Y
                AND     #2
                BEQ     loc_17AD4A
                LDA     byte_61D,Y
                CMP     #$76 ; 'v'
                BEQ     loc_17AD4A
                LDA     #$56 ; 'V'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD4A:                             ; CODE XREF: sub_17ACD6+66↑j
                                        ; sub_17ACD6+6D↑j
                LDA     byte_61E,Y
                AND     #$20 ; ' '
                BEQ     loc_17AD6A
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17AD65
                LDA     byte_61E,Y
                AND     #$DF
                STA     byte_61E,Y
                LDA     #$8B
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD65:                             ; CODE XREF: sub_17ACD6+80↑j
                LDA     #$1C
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD6A:                             ; CODE XREF: sub_17ACD6+79↑j
                LDA     byte_601,Y
                AND     #8
                BEQ     loc_17AD76
                LDA     #$3A ; ':'
                JSR     sub_17A3F8

loc_17AD76:                             ; CODE XREF: sub_17ACD6+99↑j
                LDY     byte_53
                LDA     byte_61D,Y

loc_17AD7B:                             ; CODE XREF: sub_17B3DD+3D↓p
                LDY     #0
                STY     Pointer+1
                ASL     A
                ROL     Pointer+1
                STA     Pointer
                CLC
                LDA     #$FB
                ADC     Pointer
                STA     Pointer
                LDA     #$97
                ADC     Pointer+1
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     word_5E
                INY
                LDA     (Pointer),Y
                STA     word_5E+1

loc_17AD9C:                             ; CODE XREF: sub_17AF3E+D↓j
                                        ; sub_17AF7B+9↓p ...
                LDY     #0
                LDA     (word_5E),Y
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                JSR     sub_F2D5        ; trap no return
; ---------------------------------------------------------------------------
                .WORD sub_17ADC4, sub_17ADC9, sub_17ADF1, sub_17AE5D, sub_17B804
                .WORD sub_17AEEA, sub_17AF08, sub_17AF31, sub_17AF39, sub_17AF7B
                .WORD sub_17AF92, sub_17AF98, sub_17AE8E
; ---------------------------------------------------------------------------

loc_17ADC1:                             ; CODE XREF: sub_17ACD6+9↑j
                                        ; sub_17ACD6+15↑j ...
                JMP     sub_17A3F8
; End of function sub_17ACD6


; =============== S U B R O U T I N E =======================================


sub_17ADC4:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDA     #1
                JMP     sub_17AFE1
; End of function sub_17ADC4


; =============== S U B R O U T I N E =======================================


sub_17ADC9:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17ADC9            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17ADEC, sub_17AFED, sub_17AFF2, sub_17AFFE, sub_17B008
                .WORD sub_17B012, sub_17B022, sub_17B032, sub_17B037, sub_17B041
                .WORD sub_17B04B, sub_17B055, sub_17B05F

; =============== S U B R O U T I N E =======================================


sub_17ADEC:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #1
                JMP     sub_17AFCD
; End of function sub_17ADEC


; =============== S U B R O U T I N E =======================================


sub_17ADF1:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                LDX     #0
                STX     Pointer+1
                LDX     #3

loc_17ADFB:                             ; CODE XREF: sub_17ADF1+E↓j
                ASL     A
                ROL     Pointer+1
                DEX
                BNE     loc_17ADFB
                CLC
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$9E
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #7
                LDA     (Pointer),Y
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                LDA     #$21 ; '!'
                STA     byte_590
                LDY     #0
                LDA     (Pointer),Y
                STA     byte_591
                INY
                LDA     (Pointer),Y
                STA     byte_592
                LDA     #0
                STA     byte_593
                JSR     bank16          ; set memory bank $16 at $8000
                LDA     #$64 ; 'd'
                JSR     sub_17A3F8
                JSR     sub_17B1C5
                BCC     loc_17AE53
                JSR     sub_17B1D1
                BCC     loc_17AE58
                JSR     sub_17B0A4
                LDA     byte_58
                JSR     sub_F41F
                LDA     #0
                STA     byte_58
                LDA     #2
                JMP     sub_17AFCD
; ---------------------------------------------------------------------------

loc_17AE53:                             ; CODE XREF: sub_17ADF1+4A↑j
                LDA     #$51 ; 'Q'
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17AE58:                             ; CODE XREF: sub_17ADF1+4F↑j
                LDA     #$54 ; 'T'
                JMP     sub_17A3F8
; End of function sub_17ADF1


; =============== S U B R O U T I N E =======================================


sub_17AE5D:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_17AAA4
                JSR     sub_17AACC
                LDY     byte_53
                BMI     loc_17AE7B
                JSR     sram_write_enable
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                CMP     #1
                BNE     loc_17AE7B
                JSR     sub_17B4E5

loc_17AE7B:                             ; CODE XREF: sub_17AE5D+C↑j
                                        ; sub_17AE5D+19↑j
                LDA     #$63 ; 'c'
                JSR     sub_17A3F8
                LDA     byte_58
                JSR     sub_F41F
                LDA     #0
                STA     byte_58
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AE5D


; =============== S U B R O U T I N E =======================================


sub_17AE8E:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_17AAA4
                JSR     sub_17AACC
                LDY     byte_53
                BMI     loc_17AEE5
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17AE8E            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17AEAB, sub_17AEBD, sub_17AECF

; =============== S U B R O U T I N E =======================================


sub_17AEAB:                             ; DATA XREF: BANK17:AEA5↑o
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$75 ; 'u'
                JSR     sub_17A3F8
                JMP     loc_17AEE5
; End of function sub_17AEAB


; =============== S U B R O U T I N E =======================================


sub_17AEBD:                             ; DATA XREF: BANK17:AEA5↑o
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$78 ; 'x'
                JSR     sub_17A3F8
                JMP     loc_17AEE5
; End of function sub_17AEBD


; =============== S U B R O U T I N E =======================================


sub_17AECF:                             ; DATA XREF: BANK17:AEA5↑o
                JSR     sram_write_enable
                DEC     CurrentGame.PureSave.field_1F
                JSR     sram_read_enable
                LDA     CurrentGame.PureSave.field_1F
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$91
                JSR     sub_17A3F8

loc_17AEE5:                             ; CODE XREF: sub_17AE8E+C↑j
                                        ; sub_17AEAB+5↑j ...
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AECF


; =============== S U B R O U T I N E =======================================


sub_17AEEA:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap no return
; End of function sub_17AEEA

; ---------------------------------------------------------------------------
                .WORD sub_17AF03, nullsub_4, sub_17B1E0, sub_17B202, sub_17B21D
                .WORD sub_17B238, sub_17B23D, sub_17B248

; =============== S U B R O U T I N E =======================================


sub_17AF03:                             ; DATA XREF: BANK17:AEF3↑o
                LDA     #1
                JMP     sub_17AFCD
; End of function sub_17AF03


; =============== S U B R O U T I N E =======================================


sub_17AF08:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                STA     pTileID
                DEY
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17AF08            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17AF2C, sub_17B250, sub_17B2D9, sub_17B2F9, sub_17B302
                .WORD sub_17B319, sub_17B320, sub_17B3C2, sub_17B3CE, sub_17B3D3
                .WORD sub_17B3D8

; =============== S U B R O U T I N E =======================================


sub_17AF2C:                             ; DATA XREF: BANK17:AF16↑o
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AF2C


; =============== S U B R O U T I N E =======================================


sub_17AF31:                             ; DATA XREF: sub_17ACD6+D1↑o
                JSR     sub_17AF53
                BCC     sub_17AF3E
                JMP     sub_17AF4E
; End of function sub_17AF31


; =============== S U B R O U T I N E =======================================


sub_17AF39:                             ; DATA XREF: sub_17ACD6+D1↑o
                JSR     sub_17AF53
                BCC     sub_17AF4E
; End of function sub_17AF39


; =============== S U B R O U T I N E =======================================


sub_17AF3E:                             ; CODE XREF: sub_17AF31+3↑j
                LDY     #1
                LDA     (word_5E),Y
                PHA
                INY
                LDA     (word_5E),Y
                STA     word_5E+1
                PLA
                STA     word_5E
                JMP     loc_17AD9C
; End of function sub_17AF3E


; =============== S U B R O U T I N E =======================================


sub_17AF4E:                             ; CODE XREF: sub_17AF31+5↑j
                                        ; sub_17AF39+3↑j
                LDA     #3
                JMP     sub_17AFCD
; End of function sub_17AF4E


; =============== S U B R O U T I N E =======================================


sub_17AF53:                             ; CODE XREF: sub_17AF31↑p
                                        ; sub_17AF39↑p
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17AF53            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD nullsub_5, sub_17B0B0, sub_17B0CC, sub_17B0F7, sub_17B112
                .WORD sub_17B125, sub_17B131, loc_17B0BC, sub_17B150, sub_17B164
                .WORD sub_17B169, sub_17B174, sub_17B180, sub_17B188, sub_17B194
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_5. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17AF7B:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                JSR     sub_17AFD3
                JSR     loc_17AD9C
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                LDA     #3
                JMP     sub_17AFCD
; End of function sub_17AF7B


; =============== S U B R O U T I N E =======================================


sub_17AF92:                             ; DATA XREF: sub_17ACD6+D1↑o
                JSR     sub_17AFD3
                JMP     loc_17AD9C
; End of function sub_17AF92


; =============== S U B R O U T I N E =======================================


sub_17AF98:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                TAX
                LDA     #1
                JSR     sub_17AFE1

loc_17AFA4:                             ; CODE XREF: sub_17AF98+28↓j
                TXA
                PHA
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                JSR     loc_17AD9C
                LDA     word_5E
                STA     Pointer
                LDA     word_5E+1
                STA     Pointer+1
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                PLA
                TAX
                DEX
                BNE     loc_17AFA4
                LDA     Pointer
                STA     word_5E
                LDA     Pointer+1
                STA     word_5E+1
                JMP     loc_17AD9C
; End of function sub_17AF98


; =============== S U B R O U T I N E =======================================


sub_17AFCD:                             ; CODE XREF: sub_17ADEC+2↑j
                                        ; sub_17ADF1+5F↑j ...
                JSR     sub_17AFE1
                JMP     loc_17AD9C
; End of function sub_17AFCD


; =============== S U B R O U T I N E =======================================


sub_17AFD3:                             ; CODE XREF: sub_17AF7B+6↑p
                                        ; sub_17AF92↑p
                LDY     #1
                LDA     (word_5E),Y
                PHA
                INY
                LDA     (word_5E),Y
                STA     word_5E+1
                PLA
                STA     word_5E
                RTS
; End of function sub_17AFD3


; =============== S U B R O U T I N E =======================================


sub_17AFE1:                             ; CODE XREF: sub_17ADC4+2↑j
                                        ; sub_17AF98+9↑p ...
                CLC
                ADC     word_5E
                STA     word_5E
                LDA     #0
                ADC     word_5E+1
                STA     word_5E+1
                RTS
; End of function sub_17AFE1


; =============== S U B R O U T I N E =======================================


sub_17AFED:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_53
                JMP     sub_17B513
; End of function sub_17AFED


; =============== S U B R O U T I N E =======================================


sub_17AFF2:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17AFF9
                JMP     sub_17B555
; ---------------------------------------------------------------------------

loc_17AFF9:                             ; CODE XREF: sub_17AFF2+2↑j
                LDA     #1
                STA     byte_47
                RTS
; End of function sub_17AFF2


; =============== S U B R O U T I N E =======================================


sub_17AFFE:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B005
                JMP     sub_17B5D3
; ---------------------------------------------------------------------------

loc_17B005:                             ; CODE XREF: sub_17AFFE+2↑j
                JMP     sub_17B6B2
; End of function sub_17AFFE


; =============== S U B R O U T I N E =======================================


sub_17B008:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B00F
                JMP     sub_17B67C
; ---------------------------------------------------------------------------

loc_17B00F:                             ; CODE XREF: sub_17B008+2↑j
                JMP     sub_17B6F1
; End of function sub_17B008


; =============== S U B R O U T I N E =======================================


sub_17B012:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #$2D ; '-'
                JSR     sub_17A3F8
                JSR     sub_17B069
                BCS     locret_17B021
                LDA     #$40 ; '@'
                JSR     sub_17A3F8

locret_17B021:                          ; CODE XREF: sub_17B012+8↑j
                RTS
; End of function sub_17B012


; =============== S U B R O U T I N E =======================================


sub_17B022:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #$2E ; '.'
                JSR     sub_17A3F8
                JSR     sub_17B069
                BCS     locret_17B031
                LDA     #$41 ; 'A'
                JSR     sub_17A3F8

locret_17B031:                          ; CODE XREF: sub_17B022+8↑j
                RTS
; End of function sub_17B022


; =============== S U B R O U T I N E =======================================


sub_17B032:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #2
                STA     byte_47
                RTS
; End of function sub_17B032


; =============== S U B R O U T I N E =======================================


sub_17B037:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B03E
                JMP     sub_17B5DA
; ---------------------------------------------------------------------------

loc_17B03E:                             ; CODE XREF: sub_17B037+2↑j
                JMP     sub_17B6BB
; End of function sub_17B037


; =============== S U B R O U T I N E =======================================


sub_17B041:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B048
                JMP     sub_17B5E1
; ---------------------------------------------------------------------------

loc_17B048:                             ; CODE XREF: sub_17B041+2↑j
                JMP     sub_17B6C4
; End of function sub_17B041


; =============== S U B R O U T I N E =======================================


sub_17B04B:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B052
                JMP     sub_17B5E8
; ---------------------------------------------------------------------------

loc_17B052:                             ; CODE XREF: sub_17B04B+2↑j
                JMP     sub_17B6CD
; End of function sub_17B04B


; =============== S U B R O U T I N E =======================================


sub_17B055:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B05C
                JMP     sub_17B5EF
; ---------------------------------------------------------------------------

loc_17B05C:                             ; CODE XREF: sub_17B055+2↑j
                JMP     sub_17B6D6
; End of function sub_17B055


; =============== S U B R O U T I N E =======================================


sub_17B05F:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B066
                JMP     sub_17B5F6
; ---------------------------------------------------------------------------

loc_17B066:                             ; CODE XREF: sub_17B05F+2↑j
                JMP     sub_17B6DF
; End of function sub_17B05F


; =============== S U B R O U T I N E =======================================


sub_17B069:                             ; CODE XREF: sub_17B012+5↑p
                                        ; sub_17B022+5↑p
                LDY     #$80

loc_17B06B:                             ; CODE XREF: sub_17B069+12↓j
                CPY     byte_53
                BEQ     loc_17B076
                LDA     byte_61E,Y
                AND     #1
                BNE     loc_17B07F

loc_17B076:                             ; CODE XREF: sub_17B069+4↑j
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BNE     loc_17B06B
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B07F:                             ; CODE XREF: sub_17B069+B↑j
                STY     byte_54
                JSR     sub_17B513
                LDY     byte_54
                LDA     byte_61E,Y
                AND     #$FE
                STA     byte_61E,Y
                LDA     #0
                STA     byte_61D,Y
                LDY     byte_53
                LDA     byte_600,Y
                LDY     byte_54
                STA     byte_600,Y
                LDA     #$42 ; 'B'
                JSR     sub_17A3F8
                SEC
                RTS
; End of function sub_17B069


; =============== S U B R O U T I N E =======================================


sub_17B0A4:                             ; CODE XREF: sub_17ADF1+51↑p
                LDA     #$19
                LDX     #$FB
                LDY     #$A7            ; BANK19:A7FC
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JMP     statistical_frame
; End of function sub_17B0A4


; =============== S U B R O U T I N E =======================================


sub_17B0B0:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_53
                LDA     byte_600,Y
                BEQ     loc_17B0CA
                LDA     byte_601,Y
                BMI     loc_17B0CA

loc_17B0BC:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17B0CA
                LDA     byte_601,Y
                BMI     loc_17B0CA
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B0CA:                             ; CODE XREF: sub_17B0B0+5↑j
                                        ; sub_17B0B0+A↑j ...
                SEC
                RTS
; End of function sub_17B0B0


; =============== S U B R O U T I N E =======================================


sub_17B0CC:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_23
                BNE     loc_17B0F3
                LDY     byte_54
                LDA     byte_601,Y
                AND     #$70 ; 'p'
                BNE     loc_17B0F3
                LDA     byte_61E,Y
                BMI     loc_17B0F3
                LDA     unk_60B,Y
                STA     Pointer
                LDY     byte_53
                LDA     unk_60B,Y
                STA     AddrForJmp
                JSR     sub_17B1A2
                LDA     Pointer
                CMP     AddrForJmp
                BCS     loc_17B0F5

loc_17B0F3:                             ; CODE XREF: sub_17B0CC+2↑j
                                        ; sub_17B0CC+B↑j ...
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B0F5:                             ; CODE XREF: sub_17B0CC+25↑j
                SEC
                RTS
; End of function sub_17B0CC


; =============== S U B R O U T I N E =======================================


sub_17B0F7:                             ; DATA XREF: BANK17:AF5C↑o
                JSR     sub_17BFE2
                BCS     locret_17B111
                LDY     byte_53
                LDA     unk_60B,Y
                STA     Pointer
                LDY     byte_54
                LDA     unk_60B,Y
                STA     AddrForJmp
                JSR     sub_17B1A2
                LDA     AddrForJmp
                CMP     Pointer

locret_17B111:                          ; CODE XREF: sub_17B0F7+3↑j
                RTS
; End of function sub_17B0F7


; =============== S U B R O U T I N E =======================================


sub_17B112:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_53
                LDA     byte_61E,Y
                AND     #$80
                EOR     #$80
                ROL     A
                BCS     locret_17B124
                JSR     sub_F1ED
                AND     #$80
                ROL     A

locret_17B124:                          ; CODE XREF: sub_17B112+A↑j
                RTS
; End of function sub_17B112


; =============== S U B R O U T I N E =======================================


sub_17B125:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_53
                BMI     loc_17B12F
                LDA     byte_23
                BEQ     loc_17B12F
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B12F:                             ; CODE XREF: sub_17B125+2↑j
                                        ; sub_17B125+6↑j
                SEC
                RTS
; End of function sub_17B125


; =============== S U B R O U T I N E =======================================


sub_17B131:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                BMI     loc_17B14C
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #$20 ; ' '

loc_17B141:                             ; CODE XREF: sub_17B131+19↓j
                LDA     (Pointer),Y
                CMP     #$68 ; 'h'
                BEQ     loc_17B14E
                INY
                CPY     #$28 ; '('
                BNE     loc_17B141

loc_17B14C:                             ; CODE XREF: sub_17B131+2↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B14E:                             ; CODE XREF: sub_17B131+14↑j
                CLC
                RTS
; End of function sub_17B131


; =============== S U B R O U T I N E =======================================


sub_17B150:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     unk_602,Y
                AND     #$80
                BNE     loc_17B160
                LDA     unk_602,Y
                AND     #1
                BNE     loc_17B162

loc_17B160:                             ; CODE XREF: sub_17B150+7↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B162:                             ; CODE XREF: sub_17B150+E↑j
                CLC
                RTS
; End of function sub_17B150


; =============== S U B R O U T I N E =======================================


sub_17B164:                             ; DATA XREF: BANK17:AF5C↑o
                JSR     sub_F1ED
                ASL     A
                RTS
; End of function sub_17B164


; =============== S U B R O U T I N E =======================================


sub_17B169:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     unk_602,Y
                AND     #$80
                EOR     #$80
                ROL     A
                RTS
; End of function sub_17B169


; =============== S U B R O U T I N E =======================================


sub_17B174:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     unk_602,Y
                AND     #4
                EOR     #4
                CMP     #1
                RTS
; End of function sub_17B174


; =============== S U B R O U T I N E =======================================


sub_17B180:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_21
                BNE     loc_17B186
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B186:                             ; CODE XREF: sub_17B180+2↑j
                CLC
                RTS
; End of function sub_17B180


; =============== S U B R O U T I N E =======================================


sub_17B188:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                CMP     #1
                RTS
; End of function sub_17B188


; =============== S U B R O U T I N E =======================================


sub_17B194:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_56
                CMP     #5
                BEQ     loc_17B1A0
                CMP     #6
                BEQ     loc_17B1A0
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B1A0:                             ; CODE XREF: sub_17B194+4↑j
                                        ; sub_17B194+8↑j
                CLC
                RTS
; End of function sub_17B194


; =============== S U B R O U T I N E =======================================


sub_17B1A2:                             ; CODE XREF: sub_17B0CC+1E↑p
                                        ; sub_17B0F7+13↑p
                LDA     #1
                STA     Pointer+1
                SEC
                LDA     Pointer
                SBC     AddrForJmp
                STA     Pointer
                LDA     Pointer+1
                SBC     #0
                LSR     A
                ROR     Pointer
                SEC
                LDA     Pointer
                SBC     #$66 ; 'f'
                BCS     loc_17B1BD
                LDA     #0

loc_17B1BD:                             ; CODE XREF: sub_17B1A2+17↑j
                STA     Pointer
                JSR     sub_F1ED
                STA     AddrForJmp
                RTS
; End of function sub_17B1A2


; =============== S U B R O U T I N E =======================================


sub_17B1C5:                             ; CODE XREF: sub_17A573+1A7↑p
                                        ; sub_17ADF1+47↑p
                LDY     byte_53
                LDA     byte_61E,Y
                AND     #$40 ; '@'
                EOR     #$40 ; '@'
                CMP     #1
                RTS
; End of function sub_17B1C5


; =============== S U B R O U T I N E =======================================


sub_17B1D1:                             ; CODE XREF: sub_17A573+1A2↑p
                                        ; sub_17ADF1+4C↑p
                LDY     byte_53
                SEC
                LDA     unk_605,Y
                SBC     byte_4E
                LDA     unk_606,Y
                SBC     byte_4F
                RTS
; End of function sub_17B1D1

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_4. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17B1E0:                             ; DATA XREF: BANK17:AEF3↑o
                LDY     byte_53
                LDA     byte_601,Y
                AND     #8
                BNE     loc_17B1EF
                LDA     byte_61C,Y
                STA     byte_54
                RTS
; ---------------------------------------------------------------------------

loc_17B1EF:                             ; CODE XREF: sub_17B1E0+7↑j
                                        ; sub_17B1E0+18↓j ...
                JSR     sub_F1ED
                AND     #$E0
                TAY
                LDA     byte_600,Y
                BEQ     loc_17B1EF
                LDA     byte_601,Y
                BMI     loc_17B1EF
                STY     byte_54
                RTS
; End of function sub_17B1E0


; =============== S U B R O U T I N E =======================================


sub_17B202:                             ; DATA XREF: BANK17:AEF3↑o
                LDY     byte_53
                LDA     byte_601,Y
                AND     #8
                BEQ     loc_17B212
                JSR     sub_F1ED
                AND     #$80
                BNE     loc_17B22D

loc_17B212:                             ; CODE XREF: sub_17B202+7↑j
                                        ; sub_17B21D+E↓j
                LDX     #$80
                LDA     byte_53
                BPL     loc_17B21A
                LDX     #0

loc_17B21A:                             ; CODE XREF: sub_17B202+14↑j
                STX     byte_54
                RTS
; End of function sub_17B202


; =============== S U B R O U T I N E =======================================


sub_17B21D:                             ; DATA XREF: BANK17:AEF3↑o
                LDY     byte_53
                LDA     byte_601,Y
                AND     #8
                BEQ     loc_17B22D
                JSR     sub_F1ED
                AND     #$80
                BNE     loc_17B212

loc_17B22D:                             ; CODE XREF: sub_17B202+E↑j
                                        ; sub_17B21D+7↑j
                LDX     #0
                LDY     byte_53
                BPL     loc_17B235
                LDX     #$80

loc_17B235:                             ; CODE XREF: sub_17B21D+14↑j
                STX     byte_54
                RTS
; End of function sub_17B21D


; =============== S U B R O U T I N E =======================================


sub_17B238:                             ; DATA XREF: BANK17:AEF3↑o
                LDA     byte_53
                STA     byte_54
                RTS
; End of function sub_17B238


; =============== S U B R O U T I N E =======================================


sub_17B23D:                             ; DATA XREF: BANK17:AEF3↑o
                LDX     #0
                LDY     byte_53
                BPL     loc_17B245
                LDX     #$80

loc_17B245:                             ; CODE XREF: sub_17B23D+4↑j
                STX     byte_54
                RTS
; End of function sub_17B23D


; =============== S U B R O U T I N E =======================================


sub_17B248:                             ; DATA XREF: BANK17:AEF3↑o
                CLC
                LDA     byte_54
                ADC     #$20 ; ' '
                STA     byte_54
                RTS
; End of function sub_17B248


; =============== S U B R O U T I N E =======================================


sub_17B250:                             ; DATA XREF: BANK17:AF16↑o
                LDY     byte_54
                LDA     unk_609,Y
                STA     pTileID
                LDA     unk_60A,Y
                STA     pTileID+1
                SEC
                LDY     byte_53
                LDA     unk_607,Y
                STA     byte_66
                STA     pDist
                SBC     pTileID
                LDA     byte_608,Y
                STA     TilesCount
                STA     pDist+1
                SBC     pTileID+1
                BCC     loc_17B2A8
                LSR     pTileID+1
                ROR     pTileID
                SEC
                LDA     byte_66
                SBC     pTileID
                STA     Pointer
                LDA     TilesCount
                SBC     pTileID+1
                STA     Pointer+1

loc_17B284:                             ; CODE XREF: sub_17B250+86↓j
                LDA     byte_56
                CMP     #1
                BNE     loc_17B297
                JSR     sub_F1ED
                AND     #7
                ORA     #4
                STA     Pointer
                LDA     #0
                STA     Pointer+1

loc_17B297:                             ; CODE XREF: sub_17B250+38↑j
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17B29F
                INC     Pointer

loc_17B29F:                             ; CODE XREF: sub_17B250+4B↑j
                LDA     Pointer
                STA     byte_4E
                LDA     Pointer+1
                STA     byte_4F
                RTS
; ---------------------------------------------------------------------------

loc_17B2A8:                             ; CODE XREF: sub_17B250+21↑j
                ASL     byte_66
                ROL     TilesCount
                CLC
                LDA     byte_66
                ADC     pDist
                STA     byte_66
                LDA     TilesCount
                ADC     pDist+1
                STA     TilesCount
                SEC
                LDA     byte_66
                SBC     pTileID
                STA     Pointer
                LDA     TilesCount
                SBC     pTileID+1
                STA     Pointer+1
                BCS     loc_17B2CE
                LDA     #0
                STA     Pointer
                STA     Pointer+1

loc_17B2CE:                             ; CODE XREF: sub_17B250+76↑j
                LSR     Pointer+1
                ROR     Pointer
                LSR     Pointer+1
                ROR     Pointer
                JMP     loc_17B284
; End of function sub_17B250


; =============== S U B R O U T I N E =======================================


sub_17B2D9:                             ; DATA XREF: BANK17:AF16↑o
                LDY     byte_53
                LDA     unk_607,Y
                STA     byte_4E
                LDA     byte_608,Y
                STA     byte_4F
                LDA     byte_56
                CMP     #1
                BNE     locret_17B2F8
                JSR     sub_F1ED
                AND     #$F
                ORA     #8
                STA     byte_4E
                LDA     #0
                STA     byte_4F

locret_17B2F8:                          ; CODE XREF: sub_17B2D9+10↑j
                RTS
; End of function sub_17B2D9


; =============== S U B R O U T I N E =======================================


sub_17B2F9:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                RTS
; End of function sub_17B2F9


; =============== S U B R O U T I N E =======================================


sub_17B302:                             ; DATA XREF: BANK17:AF16↑o
                LDA     byte_56
                CMP     #5
                BNE     locret_17B318
                LDA     NamePos
                JSR     sub_17A3F8
                LDX     NamePos
                INX
                CPX     #$9E
                BNE     loc_17B316
                INC     byte_56

loc_17B316:                             ; CODE XREF: sub_17B302+10↑j
                STX     NamePos

locret_17B318:                          ; CODE XREF: sub_17B302+4↑j
                RTS
; End of function sub_17B302


; =============== S U B R O U T I N E =======================================


sub_17B319:                             ; DATA XREF: BANK17:AF16↑o
                LDA     byte_57
                ORA     pTileID
                STA     byte_57
                RTS
; End of function sub_17B319


; =============== S U B R O U T I N E =======================================


sub_17B320:                             ; DATA XREF: BANK17:AF16↑o
                LDA     #$6A ; 'j'
                JSR     sub_17A3F8
                LDA     byte_56
                CMP     #2
                BNE     loc_17B330
                LDA     #$95
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B330:                             ; CODE XREF: sub_17B320+9↑j
                CMP     #3
                BNE     loc_17B339
                LDA     #$94
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B339:                             ; CODE XREF: sub_17B320+12↑j
                CMP     #4
                BNE     loc_17B342
                LDA     #$93
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B342:                             ; CODE XREF: sub_17B320+1B↑j
                CMP     #5
                BNE     loc_17B34B
                LDA     #1
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B34B:                             ; CODE XREF: sub_17B320+24↑j
                CMP     #6
                BNE     loc_17B354
                LDA     #1
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B354:                             ; CODE XREF: sub_17B320+2D↑j
                LDY     byte_54
                BMI     loc_17B35D
                LDA     #$90
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B35D:                             ; CODE XREF: sub_17B320+36↑j
                LDY     byte_54
                LDA     unk_607,Y
                STA     byte_590
                LDA     byte_608,Y
                STA     byte_591
                LDA     unk_609,Y
                STA     byte_592
                LDA     unk_60A,Y
                STA     byte_593
                LDA     #$24 ; '$'
                JSR     sub_17A3F8
                LDA     #$25 ; '%'
                JSR     sub_17A3F8
                LDY     byte_54
                LDA     unk_602,Y
                PHA
                AND     #$40 ; '@'
                BEQ     loc_17B390
                LDA     #$6B ; 'k'
                JSR     sub_17A3F8

loc_17B390:                             ; CODE XREF: sub_17B320+69↑j
                PLA
                PHA
                AND     #$20 ; ' '
                BEQ     loc_17B39B
                LDA     #$6C ; 'l'
                JSR     sub_17A3F8

loc_17B39B:                             ; CODE XREF: sub_17B320+74↑j
                PLA
                PHA
                AND     #$10
                BEQ     loc_17B3A6
                LDA     #$6D ; 'm'
                JSR     sub_17A3F8

loc_17B3A6:                             ; CODE XREF: sub_17B320+7F↑j
                PLA
                PHA
                AND     #$80
                BNE     loc_17B3B7
                PLA
                PHA
                AND     #1
                BEQ     loc_17B3B7
                LDA     #$6F ; 'o'
                JSR     sub_17A3F8

loc_17B3B7:                             ; CODE XREF: sub_17B320+8A↑j
                                        ; sub_17B320+90↑j
                PLA
                LDA     #$FF
                JMP     sub_17A3F8
; End of function sub_17B320


; =============== S U B R O U T I N E =======================================


sub_17B3BD:
                LDA     #$90
                JMP     sub_17A3F8
; End of function sub_17B3BD


; =============== S U B R O U T I N E =======================================


sub_17B3C2:                             ; DATA XREF: BANK17:AF16↑o
                LDX     #$F
                LDA     byte_53
                BMI     loc_17B3CA
                LDX     #1

loc_17B3CA:                             ; CODE XREF: sub_17B3C2+4↑j
                TXA
                JMP     sub_F41F
; End of function sub_17B3C2


; =============== S U B R O U T I N E =======================================


sub_17B3CE:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                STA     byte_58
                RTS
; End of function sub_17B3CE


; =============== S U B R O U T I N E =======================================


sub_17B3D3:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                JMP     sub_17A3F8
; End of function sub_17B3D3


; =============== S U B R O U T I N E =======================================


sub_17B3D8:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                JMP     sub_F41F
; End of function sub_17B3D8


; =============== S U B R O U T I N E =======================================


sub_17B3DD:                             ; CODE XREF: sub_17B8F2:loc_17B912↓j
                                        ; sub_17B915:loc_17BA00↓p ...
                TYA
                BMI     loc_17B3F0
                LDA     byte_611,Y
                CMP     #6
                BNE     loc_17B3F0
                LDA     #0
                STA     byte_56
                LDX     #$88
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3F0:                             ; CODE XREF: sub_17B3DD+1↑j
                                        ; sub_17B3DD+8↑j
                JSR     sub_17B4CA
                CMP     #1
                BNE     loc_17B3FC
                LDX     #$19
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3FC:                             ; CODE XREF: sub_17B3DD+18↑j
                CMP     #2
                BNE     loc_17B405
                LDX     #$1A
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B405:                             ; CODE XREF: sub_17B3DD+21↑j
                JSR     sub_17B42D
                JMP     sub_17B496
; ---------------------------------------------------------------------------

loc_17B40B:                             ; CODE XREF: sub_17B3DD+10↑j
                                        ; sub_17B3DD+1C↑j ...
                LDA     byte_54
                PHA
                LDA     byte_53
                PHA
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                STY     byte_53
                TXA
                JSR     loc_17AD7B
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                PLA
                STA     byte_53
                PLA
                STA     byte_54
                TAY
                JMP     sub_17B496
; End of function sub_17B3DD


; =============== S U B R O U T I N E =======================================


sub_17B42D:                             ; CODE XREF: sub_17B3DD:loc_17B405↑p
                                        ; sub_17B8AA+2↓j
                TYA
                PHA
                LDA     #0
                STA     byte_603,Y
                STA     byte_604,Y
                LDA     #$80
                STA     byte_601,Y
                TYA
                BPL     loc_17B48B
                LDA     #0
                STA     byte_600,Y
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                TYA
                PHA
                CLC
                LDY     #$1A
                LDA     (Pointer),Y
                ADC     byte_49
                STA     byte_49
                INY
                LDA     (Pointer),Y
                ADC     byte_4A
                STA     byte_4A
                LDA     #0
                ADC     byte_4B
                STA     byte_4B
                CLC
                LDY     #$1C
                LDA     (Pointer),Y
                ADC     byte_4C
                STA     byte_4C
                INY
                LDA     (Pointer),Y
                ADC     byte_4D
                STA     byte_4D
                LDY     #$1E
                LDA     (Pointer),Y
                BEQ     loc_17B47E
                STA     byte_48

loc_17B47E:                             ; CODE XREF: sub_17B42D+4D↑j
                LDA     #6
                STA     apu_7F0
                PLA
                TAY
                JSR     sub_17B555
                JMP     loc_17B490
; ---------------------------------------------------------------------------

loc_17B48B:                             ; CODE XREF: sub_17B42D+10↑j
                LDA     #$15
                JSR     sub_F41F

loc_17B490:                             ; CODE XREF: sub_17B42D+5B↑j
                JSR     statistical_frame
                PLA
                TAY
                RTS
; End of function sub_17B42D


; =============== S U B R O U T I N E =======================================


sub_17B496:                             ; CODE XREF: sub_17B3DD+2B↑j
                                        ; sub_17B3DD+4D↑j
                TYA
                PHA
                BMI     loc_17B4A9
                LDA     byte_611,Y
                CMP     #6
                BEQ     loc_17B4C7
                LDA     #$10
                JSR     sub_17A3F8
                JMP     loc_17B4C7
; ---------------------------------------------------------------------------

loc_17B4A9:                             ; CODE XREF: sub_17B496+2↑j
                LDA     byte_56
                CMP     #6
                BEQ     loc_17B4C7
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #$A
                LDA     (Pointer),Y
                AND     #$1C
                LSR     A
                LSR     A
                CLC
                ADC     #$79 ; 'y'
                JSR     sub_17A3F8

loc_17B4C7:                             ; CODE XREF: sub_17B496+9↑j
                                        ; sub_17B496+10↑j ...
                PLA
                TAY
                RTS
; End of function sub_17B496


; =============== S U B R O U T I N E =======================================


sub_17B4CA:                             ; CODE XREF: sub_17B3DD:loc_17B3F0↑p
                TYA
                PHA
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #8
                LDA     (Pointer),Y
                AND     #$1C
                LSR     A
                LSR     A
                STA     Pointer
                PLA
                TAY
                LDA     Pointer
                RTS
; End of function sub_17B4CA


; =============== S U B R O U T I N E =======================================


sub_17B4E5:                             ; CODE XREF: sub_17AE5D+1B↑p
                                        ; sub_17AEAB+7↑p ...
                LDY     byte_53
                CLC
                LDA     pPPUTab,Y
                ADC     #$20 ; ' '
                STA     Pointer
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     Pointer+1
                LDY     byte_53
                LDA     unk_610,Y
                TAY

loc_17B4FC:                             ; CODE XREF: sub_17BD2B+9↓p
                JSR     sram_write_enable

loc_17B4FF:                             ; CODE XREF: sub_17B4E5+25↓j
                CPY     #7
                BEQ     loc_17B50C
                INY
                LDA     (Pointer),Y
                DEY
                STA     (Pointer),Y
                INY
                BNE     loc_17B4FF

loc_17B50C:                             ; CODE XREF: sub_17B4E5+1C↑j
                LDA     #0
                STA     (Pointer),Y
                JMP     sram_read_enable
; End of function sub_17B4E5


; =============== S U B R O U T I N E =======================================


sub_17B513:                             ; CODE XREF: sub_17AFED+2↑j
                                        ; sub_17B069+18↑p ...
                JSR     sub_17B5BC
                LDA     byte_601,Y
                AND     #$7F
                STA     byte_601,Y
                LDA     #$22 ; '"'
                STA     Pointer
                LDA     #$FF
                STA     Pointer+1
                LDA     #$FF
                STA     AddrForJmp
                JSR     sub_17B589
                LDA     #0
                STA     byte_45
                TYA
                PHA
                LDA     byte_61A,Y
                AND     #3
                TAX
                LDY     #$1F
                LDA     (pCharacter),Y
                STA     BankPPU_X000,X
                PLA
                TAY
                LDA     byte_61C,Y
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_17B513


; =============== S U B R O U T I N E =======================================


sub_17B555:                             ; CODE XREF: sub_17AFF2+4↑j
                                        ; sub_17B42D+58↑p
                JSR     sub_17B5BC
                LDA     #0
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     byte_600,Y
                LDA     #0
                STA     Pointer
                LDA     #$23 ; '#'
                STA     Pointer+1
                LDA     #1
                STA     AddrForJmp
                JSR     sub_17B589
                LDA     byte_61A,Y
                AND     #3
                TAX
                LDA     #$7C ; '|'
                STA     BankPPU_X000,X
                RTS
; End of function sub_17B555


; =============== S U B R O U T I N E =======================================


sub_17B589:                             ; CODE XREF: sub_17B513+17↑p
                                        ; sub_17B555+26↑p
                TYA
                PHA
                LDA     byte_61A,Y
                AND     #3
                TAX
                LDY     #$1F
                LDA     (pCharacter),Y
                ORA     #$80
                STA     BankPPU_X000,X
                PLA
                TAY
                LDA     #$80
                STA     byte_45

loc_17B59F:                             ; CODE XREF: sub_17B589+30↓j
                LDA     Pointer
                STA     byte_44
                AND     #1
                BNE     loc_17B5AD
                LDA     byte_45
                EOR     #$40 ; '@'
                STA     byte_45

loc_17B5AD:                             ; CODE XREF: sub_17B589+1C↑j
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                CLC
                LDA     Pointer
                ADC     AddrForJmp
                STA     Pointer
                CMP     Pointer+1
                BNE     loc_17B59F
                RTS
; End of function sub_17B589


; =============== S U B R O U T I N E =======================================


sub_17B5BC:                             ; CODE XREF: sub_17B513↑p
                                        ; sub_17B555↑p ...
                LDA     pPPUTab,Y
                STA     pCharacter
                LDA     pPPUTab+1,Y
                STA     pCharacter+1
                LDA     byte_61A,Y
                AND     #3
                STA     pTileID
                ASL     A
                ASL     A
                ASL     A
                STA     pTileID+1
                RTS
; End of function sub_17B5BC


; =============== S U B R O U T I N E =======================================


sub_17B5D3:                             ; CODE XREF: sub_17AFFE+4↑j
                LDA     #$F
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5D3


; =============== S U B R O U T I N E =======================================


sub_17B5DA:                             ; CODE XREF: sub_17B037+4↑j
                LDA     #$16
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5DA


; =============== S U B R O U T I N E =======================================


sub_17B5E1:                             ; CODE XREF: sub_17B041+4↑j
                LDA     #$12
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5E1


; =============== S U B R O U T I N E =======================================


sub_17B5E8:                             ; CODE XREF: sub_17B04B+4↑j
                LDA     #$31 ; '1'
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5E8


; =============== S U B R O U T I N E =======================================


sub_17B5EF:                             ; CODE XREF: sub_17B055+4↑j
                LDA     #$28 ; '('
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5EF


; =============== S U B R O U T I N E =======================================


sub_17B5F6:                             ; CODE XREF: sub_17B05F+4↑j
                LDA     #$2A ; '*'
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5F6


; =============== S U B R O U T I N E =======================================


sub_17B5FD:                             ; CODE XREF: sub_17BC5D:loc_17BCAF↓p
                LDX     #3

loc_17B5FF:                             ; CODE XREF: sub_17B5FD+26↓j
                TXA
                PHA
                LDA     #5
                STA     apu_7F0
                JSR     sub_F1ED
                AND     #3
                TAX
                INX

loc_17B60D:                             ; CODE XREF: sub_17B5FD+21↓j
                TXA
                PHA
                LDA     #1
                STA     apu_7F0
                PLA
                PHA
                LDX     #3
                JSR     sub_17B626
                PLA
                TAX
                DEX
                BNE     loc_17B60D
                PLA
                TAX
                DEX
                BNE     loc_17B5FF
                RTS
; End of function sub_17B5FD


; =============== S U B R O U T I N E =======================================


sub_17B626:                             ; CODE XREF: sub_17B5D3+4↑j
                                        ; sub_17B5DA+4↑j ...
                STA     Pointer+1
                STX     Pointer
                LDA     #2
                JSR     sub_F41F
                LDY     byte_54
                JSR     sub_17B5BC
                JSR     wait_nmi_processed
                LDX     Pointer

loc_17B639:                             ; CODE XREF: sub_17B626+53↓j
                TXA
                PHA
                LDX     pTileID+1
                LDA     SpriteTable,X
                PHA
                LDA     #0
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$7C ; '|'
                LDX     pTileID
                STA     BankPPU_X000,X
                LDA     Pointer+1
                JSR     loc_F4B8
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDY     #$1F
                LDA     (pCharacter),Y
                LDX     pTileID
                STA     BankPPU_X000,X
                JSR     sub_F4B6
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     loc_17B639
                RTS
; End of function sub_17B626


; =============== S U B R O U T I N E =======================================


sub_17B67C:                             ; CODE XREF: sub_17B008+4↑j
                LDA     #2
                JSR     sub_F41F
                JSR     sub_17B5BC
                LDY     byte_54
                LDA     byte_61C,Y
                PHA
                LDX     pTileID+1
                LDA     SpriteTable,X
                LDY     byte_54
                STA     byte_61C,Y
                LDA     #0
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                LDY     byte_54
                JSR     sub_17B513
                PLA
                LDY     byte_54
                STA     byte_61C,Y
                RTS
; End of function sub_17B67C


; =============== S U B R O U T I N E =======================================


sub_17B6B2:                             ; CODE XREF: sub_17AFFE:loc_17B005↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6B2


; =============== S U B R O U T I N E =======================================


sub_17B6BB:                             ; CODE XREF: sub_17B037:loc_17B03E↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$16
                JMP     sub_17B6FA
; End of function sub_17B6BB


; =============== S U B R O U T I N E =======================================


sub_17B6C4:                             ; CODE XREF: sub_17B041:loc_17B048↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$12
                JMP     sub_17B6FA
; End of function sub_17B6C4


; =============== S U B R O U T I N E =======================================


sub_17B6CD:                             ; CODE XREF: sub_17B04B:loc_17B052↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$31 ; '1'
                JMP     sub_17B6FA
; End of function sub_17B6CD


; =============== S U B R O U T I N E =======================================


sub_17B6D6:                             ; CODE XREF: sub_17B055:loc_17B05C↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$28 ; '('
                JMP     sub_17B6FA
; End of function sub_17B6D6


; =============== S U B R O U T I N E =======================================


sub_17B6DF:                             ; CODE XREF: sub_17B05F:loc_17B066↑j
                LDX     #$61 ; 'a'
                LDY     #$9F
                LDA     #$2A ; '*'
                JMP     sub_17B6FA
; End of function sub_17B6DF


; =============== S U B R O U T I N E =======================================


sub_17B6E8:                             ; CODE XREF: sub_17BC5D+3B↓p
                LDX     #$61 ; 'a'
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6E8


; =============== S U B R O U T I N E =======================================


sub_17B6F1:                             ; CODE XREF: sub_17B008:loc_17B00F↑j
                LDX     #$4B ; 'K'
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6F1


; =============== S U B R O U T I N E =======================================


sub_17B6FA:                             ; CODE XREF: sub_17B6B2+6↑j
                                        ; sub_17B6BB+6↑j ...
                STA     pTileID
                STX     Pointer
                STY     Pointer+1
                LDA     #$10
                JSR     sub_F41F
                JSR     wait_nmi_processed
                LDY     #0
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                CLC
                LDA     Pointer
                ADC     #2
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1

loc_17B720:                             ; CODE XREF: sub_17B6FA+52↓j
                LDY     #0

loc_17B722:                             ; CODE XREF: sub_17B6FA+4E↓j
                TYA
                PHA
                AND     #2
                BEQ     loc_17B730
                LDA     pTileID
                JSR     loc_F4B8
                JMP     loc_17B733
; ---------------------------------------------------------------------------

loc_17B730:                             ; CODE XREF: sub_17B6FA+2C↑j
                JSR     sub_F4B6

loc_17B733:                             ; CODE XREF: sub_17B6FA+33↑j
                PLA
                TAY
                LDA     (Pointer),Y
                STA     ShiftY
                INY
                LDA     (Pointer),Y
                STA     ShiftX
                INY
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                CPY     AddrForJmp+1
                BNE     loc_17B722
                DEC     AddrForJmp
                BNE     loc_17B720
                LDA     #0
                STA     ShiftX
                STA     ShiftY
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                JMP     sub_F4B6
; End of function sub_17B6FA


; =============== S U B R O U T I N E =======================================


sub_17B75A:                             ; CODE XREF: sub_17AC6A↑p
                                        ; sub_17AC6A+16↑p
                LDA     byte_47
                CMP     #1
                BEQ     loc_17B7B0
                CMP     #2
                BEQ     loc_17B7B0
                LDY     #0

loc_17B766:                             ; CODE XREF: sub_17B75A+26↓j
                LDA     byte_600,Y
                BEQ     loc_17B77B
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17B77B
                LDA     byte_601,Y
                AND     #$E0
                BEQ     loc_17B7B2

loc_17B77B:                             ; CODE XREF: sub_17B75A+F↑j
                                        ; sub_17B75A+18↑j
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17B766
                LDA     #$80
                STA     byte_601
                STA     byte_621
                STA     byte_641
                STA     byte_661
                LDA     byte_56
                CMP     #4
                BNE     loc_17B7A7
                LDA     #3
                STA     byte_47
                LDA     #4
                JSR     sub_F41F
                LDA     #$8F
                JSR     sub_17A3F8
                JMP     loc_17B7B0
; ---------------------------------------------------------------------------

loc_17B7A7:                             ; CODE XREF: sub_17B75A+3A↑j
                LDA     #0
                STA     byte_53
                LDA     #$E
                JSR     sub_17A3F8

loc_17B7B0:                             ; CODE XREF: sub_17B75A+4↑j
                                        ; sub_17B75A+8↑j ...
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B7B2:                             ; CODE XREF: sub_17B75A+1F↑j
                LDA     byte_680
                ORA     byte_6A0
                ORA     byte_6C0
                ORA     byte_6E0
                BNE     loc_17B7F3
                LDA     byte_23
                BEQ     loc_17B7C9
                LDA     #$31 ; '1'
                JSR     sub_17A3F8

loc_17B7C9:                             ; CODE XREF: sub_17B75A+68↑j
                LDA     byte_56
                CMP     #6
                BNE     loc_17B7E7
                LDA     #0
                STA     byte_54
                JSR     sub_17B8D4
                LDA     #$20 ; ' '
                STA     byte_54
                JSR     sub_17B8D4
                LDA     #$40 ; '@'
                STA     byte_54
                JSR     sub_17B8D4
                JMP     loc_17B7F1
; ---------------------------------------------------------------------------

loc_17B7E7:                             ; CODE XREF: sub_17B75A+73↑j
                LDA     #5
                JSR     sub_F255
                LDA     #$D
                JSR     sub_17A3F8

loc_17B7F1:                             ; CODE XREF: sub_17B75A+8A↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B7F3:                             ; CODE XREF: sub_17B75A+64↑j
                LDA     byte_56
                CMP     #1
                BNE     loc_17B802
                LDY     #0
                JSR     sub_F673
                BCS     loc_17B802
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B802:                             ; CODE XREF: sub_17B75A+9D↑j
                                        ; sub_17B75A+A4↑j
                CLC
                RTS
; End of function sub_17B75A


; =============== S U B R O U T I N E =======================================


sub_17B804:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17B804            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17B863, sub_17B868, sub_17B879, sub_17B899, sub_17B8AF
                .WORD sub_17B8BD, sub_17B8CB, sub_17B915, sub_17BA07, sub_17BA1B
                .WORD sub_17BA2A, sub_17BA3C, sub_17BA6E, sub_17BA7A, sub_17BA95
                .WORD sub_17B8AA, sub_17B8F2, sub_17BA86, sub_17B88A, sub_17BAE4
                .WORD sub_17BAFA, sub_17BB0D, sub_17BB25, sub_17BB3D, sub_17BB55
                .WORD sub_17BB78, sub_17BB83, sub_17BB8C, sub_17BB9D, sub_17BBB0
                .WORD sub_17BBCD, sub_17BBEB, sub_17BBF9, sub_17BC02, sub_17BC0B
                .WORD sub_17BC14, sub_17BC1D, sub_17BC26, sub_17BC38, sub_17BC2F
                .WORD sub_17BCD0, sub_17BD2B, sub_17BC5D, sub_17BD44

; =============== S U B R O U T I N E =======================================


sub_17B863:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17B863


; =============== S U B R O U T I N E =======================================


sub_17B868:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD

loc_17B86B:                             ; CODE XREF: sub_17B8CB+6↓j
                LDX     byte_54
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$3E ; '>'
                JMP     sub_17BD5B
; End of function sub_17B868


; =============== S U B R O U T I N E =======================================


sub_17B879:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #5
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$3D ; '='
                JMP     sub_17BD5B
; End of function sub_17B879


; =============== S U B R O U T I N E =======================================


sub_17B88A:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #7
                JSR     sub_17BDE8
                LDA     #$20 ; ' '
                JMP     sub_17A3F8
; End of function sub_17B88A


; =============== S U B R O U T I N E =======================================


sub_17B899:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #$C
                JSR     sub_17BE3B
                LDX     #9
                LDA     #$23 ; '#'
                JMP     sub_17BD5B
; End of function sub_17B899


; =============== S U B R O U T I N E =======================================


sub_17B8AA:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_53
                JMP     sub_17B42D
; End of function sub_17B8AA


; =============== S U B R O U T I N E =======================================


sub_17B8AF:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #7
                JSR     sub_17BF00
                LDX     #9
                LDA     #$20 ; ' '
                JMP     sub_17BD5B
; End of function sub_17B8AF


; =============== S U B R O U T I N E =======================================


sub_17B8BD:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF00
                LDX     #9
                LDA     #$22 ; '"'
                JMP     sub_17BD5B
; End of function sub_17B8BD


; =============== S U B R O U T I N E =======================================


sub_17B8CB:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                JMP     loc_17B86B
; End of function sub_17B8CB


; =============== S U B R O U T I N E =======================================


sub_17B8D4:                             ; CODE XREF: sub_17B75A+79↑p
                                        ; sub_17B75A+80↑p ...
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                LDA     #0
                LDX     byte_54
                STA     byte_601,X
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #0
                JSR     sub_17BD5B
                LDX     #$14
                JMP     delay
; End of function sub_17B8D4


; =============== S U B R O U T I N E =======================================


sub_17B8F2:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDY     byte_53
                SEC
                LDA     byte_603,Y
                SBC     Pointer
                STA     byte_603,Y
                LDA     byte_604,Y
                SBC     Pointer+1
                STA     byte_604,Y
                BCC     loc_17B912
                ORA     byte_603,Y
                BEQ     loc_17B912
                JMP     statistical_frame
; ---------------------------------------------------------------------------

loc_17B912:                             ; CODE XREF: sub_17B8F2+16↑j
                                        ; sub_17B8F2+1B↑j
                JMP     sub_17B3DD
; End of function sub_17B8F2


; =============== S U B R O U T I N E =======================================


sub_17B915:                             ; DATA XREF: BANK17:B80B↑o
                LDA     byte_56
                CMP     #5
                BEQ     loc_17B93E
                CMP     #6
                BEQ     loc_17B93E
                JSR     sub_17BFE2
                BCC     loc_17B93E

loc_17B924:                             ; CODE XREF: sub_17BA2A:loc_17BA39↓j
                LDX     #3
                LDY     byte_53
                LDA     byte_611,Y
                CMP     #6
                BNE     loc_17B931
                LDX     #$3F ; '?'

loc_17B931:                             ; CODE XREF: sub_17B915+18↑j
                STX     Pointer
                JSR     sub_F1ED
                AND     Pointer
                STA     byte_4E
                LDA     #0
                STA     byte_4F

loc_17B93E:                             ; CODE XREF: sub_17B915+4↑j
                                        ; sub_17B915+8↑j ...
                LDA     byte_54
                PHA
                JSR     sub_17BDDD
                LDY     byte_54
                LDA     byte_61E,Y
                AND     #4
                BEQ     loc_17B962
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     #$53 ; 'S'
                JSR     sub_17A3F8
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                LDY     byte_53
                STY     byte_54

loc_17B962:                             ; CODE XREF: sub_17B915+36↑j
                LDA     byte_61E,Y
                AND     #$10
                BEQ     loc_17B96D
                LSR     Pointer+1
                ROR     Pointer

loc_17B96D:                             ; CODE XREF: sub_17B915+52↑j
                LDA     byte_61E,Y
                AND     #8
                BEQ     loc_17B978
                LSR     Pointer+1
                ROR     Pointer

loc_17B978:                             ; CODE XREF: sub_17B915+5D↑j
                JSR     sub_17BF74
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17B983
                INC     Pointer

loc_17B983:                             ; CODE XREF: sub_17B915+6A↑j
                LDA     Pointer
                STA     byte_590
                PHA
                LDA     Pointer+1
                STA     byte_591
                PHA
                LDA     #$C
                JSR     sub_17A3F8
                PLA
                STA     Pointer+1
                PLA
                STA     Pointer
                LDA     byte_56
                CMP     #3
                BEQ     loc_17B9A5
                JSR     sub_17BFEF
                BCS     loc_17B9C4

loc_17B9A5:                             ; CODE XREF: sub_17B915+89↑j
                JSR     sub_17BFE2
                BCS     loc_17B9C4
                LDY     byte_54
                SEC
                LDA     byte_603,Y
                SBC     Pointer
                STA     byte_603,Y
                LDA     byte_604,Y
                SBC     Pointer+1
                STA     byte_604,Y
                BCC     loc_17BA00
                ORA     byte_603,Y
                BEQ     loc_17BA00

loc_17B9C4:                             ; CODE XREF: sub_17B915+8E↑j
                                        ; sub_17B915+93↑j
                LDA     byte_601,Y
                AND     #$C
                BEQ     loc_17B9DF
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17B9DF
                LDA     byte_601,Y
                AND     #$F3
                STA     byte_601,Y
                LDA     #$8D
                JSR     sub_17A3F8

loc_17B9DF:                             ; CODE XREF: sub_17B915+B4↑j
                                        ; sub_17B915+BB↑j
                LDA     byte_601,Y
                AND     #$10
                BEQ     loc_17B9FA
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17B9FA
                LDA     byte_601,Y
                AND     #$EF
                STA     byte_601,Y
                LDA     #$61 ; 'a'
                JSR     sub_17A3F8

loc_17B9FA:                             ; CODE XREF: sub_17B915+CF↑j
                                        ; sub_17B915+D6↑j
                PLA
                STA     byte_54
                JMP     statistical_frame
; ---------------------------------------------------------------------------

loc_17BA00:                             ; CODE XREF: sub_17B915+A8↑j
                                        ; sub_17B915+AD↑j
                JSR     sub_17B3DD
                PLA
                STA     byte_54
                RTS
; End of function sub_17B915


; =============== S U B R O U T I N E =======================================


sub_17BA07:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDY     byte_54
                JSR     sub_17BF74
                LDX     byte_54
                LDY     #9
                JSR     sub_17BE72
                LDA     #$27 ; '''
                JMP     sub_17A3F8
; End of function sub_17BA07


; =============== S U B R O U T I N E =======================================


sub_17BA1B:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #$B
                JSR     sub_17BEC4
                LDA     #$26 ; '&'
                JMP     sub_17A3F8
; End of function sub_17BA1B


; =============== S U B R O U T I N E =======================================


sub_17BA2A:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BA39
                JSR     sub_17BFEF
                BCS     loc_17BA39
                LDY     byte_54
                JMP     sub_17B3DD
; ---------------------------------------------------------------------------

loc_17BA39:                             ; CODE XREF: sub_17BA2A+3↑j
                                        ; sub_17BA2A+8↑j
                JMP     loc_17B924
; End of function sub_17BA2A


; =============== S U B R O U T I N E =======================================


sub_17BA3C:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BA6B
                JSR     sub_17BFEF
                BCS     loc_17BA6B
                LDY     byte_54
                JSR     sub_F1ED
                AND     #3
                TAX
                INX
                TXA
                SEC
                SBC     byte_603,Y
                LDA     #0
                SBC     byte_604,Y
                BCS     loc_17BA6B
                TXA
                STA     byte_603,Y
                LDA     #0
                STA     byte_604,Y
                LDX     #0
                LDA     #$38 ; '8'
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BA6B:                             ; CODE XREF: sub_17BA3C+3↑j
                                        ; sub_17BA3C+8↑j ...
                JMP     sub_17BDD8
; End of function sub_17BA3C


; =============== S U B R O U T I N E =======================================


sub_17BA6E:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #7
                JSR     sub_17BF15
                LDA     #$21 ; '!'
                JMP     sub_17A3F8
; End of function sub_17BA6E


; =============== S U B R O U T I N E =======================================


sub_17BA7A:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF15
                LDA     #$27 ; '''
                JMP     sub_17A3F8
; End of function sub_17BA7A


; =============== S U B R O U T I N E =======================================


sub_17BA86:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_53
                LDY     #7
                JSR     sub_17BDE8
                LDA     #$5C ; '\'
                JMP     sub_17A3F8
; End of function sub_17BA86


; =============== S U B R O U T I N E =======================================


sub_17BA95:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDY     byte_54
                BMI     loc_17BADD
                LDA     pPPUTab,Y
                STA     AddrForJmp
                LDA     pPPUTab+1,Y
                STA     AddrForJmp+1
                LDY     #$11
                CLC
                LDA     (AddrForJmp),Y
                ADC     Pointer
                STA     pTileID
                INY
                LDA     (AddrForJmp),Y
                ADC     Pointer+1
                STA     pTileID+1
                INY
                LDA     (AddrForJmp),Y
                ADC     #0
                STA     byte_66
                BCC     loc_17BAC7
                LDA     #$FF
                STA     pTileID
                STA     pTileID+1
                STA     byte_66

loc_17BAC7:                             ; CODE XREF: sub_17BA95+28↑j
                JSR     sram_write_enable
                LDY     #$11
                LDA     pTileID
                STA     (AddrForJmp),Y
                INY
                LDA     pTileID+1
                STA     (AddrForJmp),Y
                INY
                LDA     byte_66
                STA     (AddrForJmp),Y
                JSR     sram_read_enable

loc_17BADD:                             ; CODE XREF: sub_17BA95+5↑j
                LDX     #$A
                LDA     #$2F ; '/'
                JMP     sub_17BD5B
; End of function sub_17BA95


; =============== S U B R O U T I N E =======================================


sub_17BAE4:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$1B
                LDY     #0
                LDX     #$80
                JMP     loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BAF7:                             ; CODE XREF: sub_17BAE4+3↑j
                                        ; sub_17BAE4+8↑j ...
                JMP     sub_17BDD8
; End of function sub_17BAE4


; =============== S U B R O U T I N E =======================================


sub_17BAFA:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$4B ; 'K'
                LDY     #0
                LDX     #2
                JMP     sub_17BD69
; End of function sub_17BAFA


; =============== S U B R O U T I N E =======================================


sub_17BB0D:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF66
                BCS     loc_17BAF7
                LDA     #$39 ; '9'
                LDY     #0
                LDX     #8
                JMP     sub_17BD69
; End of function sub_17BB0D


; =============== S U B R O U T I N E =======================================


sub_17BB25:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF66
                BCS     loc_17BAF7
                LDA     #$3B ; ';'
                LDY     #0
                LDX     #$10
                JMP     sub_17BD69
; End of function sub_17BB25


; =============== S U B R O U T I N E =======================================


sub_17BB3D:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$49 ; 'I'
                LDY     #0
                LDX     #$20 ; ' '
                JMP     sub_17BD69
; End of function sub_17BB3D


; =============== S U B R O U T I N E =======================================


sub_17BB55:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                LDY     byte_54
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #5
                LDA     (Pointer),Y
                INY
                ORA     (Pointer),Y
                BEQ     loc_17BAF7
                LDA     #$4D ; 'M'
                LDY     #0
                LDX     #$40 ; '@'
                JMP     loc_17BD7F
; End of function sub_17BB55


; =============== S U B R O U T I N E =======================================


sub_17BB78:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_61E,Y
                ORA     #8
                STA     byte_61E,Y
                RTS
; End of function sub_17BB78


; =============== S U B R O U T I N E =======================================


sub_17BB83:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$4F ; 'O'
                LDY     #$A
                LDX     #$10
                JMP     loc_17BD7F
; End of function sub_17BB83


; =============== S U B R O U T I N E =======================================


sub_17BB8C:                             ; DATA XREF: BANK17:B80B↑o
                JSR     loc_17BFE6
                BCS     loc_17BB9A
                LDA     #$17
                LDY     #$A
                LDX     #4
                JMP     loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BB9A:                             ; CODE XREF: sub_17BB8C+3↑j
                                        ; sub_17BB9D+3↓j ...
                JMP     sub_17BDD8
; End of function sub_17BB8C


; =============== S U B R O U T I N E =======================================


sub_17BB9D:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BB9A
                JSR     sub_17BFEF
                BCS     loc_17BB9A
                LDA     #$4E ; 'N'
                LDY     #0
                LDX     #$20 ; ' '
                JMP     loc_17BD7F
; End of function sub_17BB9D


; =============== S U B R O U T I N E =======================================


sub_17BBB0:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BB9A
                JSR     sub_17BFEF
                BCS     loc_17BB9A
                LDA     #$19
                LDY     #0
                LDX     #$40 ; '@'
                JSR     sub_17BD69
                BCS     locret_17BBCC
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF00

locret_17BBCC:                          ; CODE XREF: sub_17BBB0+13↑j
                RTS
; End of function sub_17BBB0


; =============== S U B R O U T I N E =======================================


sub_17BBCD:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_611,Y
                CMP     #1
                BNE     locret_17BBEA
                LDA     byte_61E,Y
                AND     #2
                BNE     locret_17BBEA
                LDA     byte_61E,Y
                ORA     #2
                STA     byte_61E,Y
                LDA     #$74 ; 't'
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

locret_17BBEA:                          ; CODE XREF: sub_17BBCD+7↑j
                                        ; sub_17BBCD+E↑j
                RTS
; End of function sub_17BBCD


; =============== S U B R O U T I N E =======================================


sub_17BBEB:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BF66
                BCS     loc_17BB9A
                LDA     #$67 ; 'g'
                LDY     #0
                LDX     #4
                JMP     sub_17BD69
; End of function sub_17BBEB


; =============== S U B R O U T I N E =======================================


sub_17BBF9:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$5D ; ']'
                LDY     #$A
                LDX     #2
                JMP     loc_17BD95
; End of function sub_17BBF9


; =============== S U B R O U T I N E =======================================


sub_17BC02:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$61 ; 'a'
                LDY     #$A
                LDX     #$10
                JMP     loc_17BD95
; End of function sub_17BC02


; =============== S U B R O U T I N E =======================================


sub_17BC0B:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$60 ; '`'
                LDY     #$A
                LDX     #$20 ; ' '
                JMP     loc_17BD95
; End of function sub_17BC0B


; =============== S U B R O U T I N E =======================================


sub_17BC14:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$70 ; 'p'
                LDY     #$A
                LDX     #2
                JMP     loc_17BDAB
; End of function sub_17BC14


; =============== S U B R O U T I N E =======================================


sub_17BC1D:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$5E ; '^'
                LDY     #$A
                LDX     #$C
                JMP     loc_17BD95
; End of function sub_17BC1D


; =============== S U B R O U T I N E =======================================


sub_17BC26:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$69 ; 'i'
                LDY     #2
                LDX     #$10
                JMP     loc_17BDAB
; End of function sub_17BC26


; =============== S U B R O U T I N E =======================================


sub_17BC2F:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$71 ; 'q'
                LDY     #$A
                LDX     #$40 ; '@'
                JMP     loc_17BD95
; End of function sub_17BC2F


; =============== S U B R O U T I N E =======================================


sub_17BC38:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_601,Y
                AND     #$80
                BEQ     loc_17BC5A
                LDA     #0
                STA     byte_601,Y
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                LDX     byte_54
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$62 ; 'b'
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BC5A:                             ; CODE XREF: sub_17BC38+7↑j
                JMP     sub_17BDD8
; End of function sub_17BC38


; =============== S U B R O U T I N E =======================================


sub_17BC5D:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_56
                CPX     #6
                BEQ     loc_17BC85
                LDA     #$19
                JSR     sub_F255
                LDA     apu_78C
                PHA
                LDX     #0
                JSR     sub_F26B
                LDA     #3
                STA     apu_7F0
                LDX     #$38 ; '8'
                JSR     delay
                PLA
                CMP     apu_78C
                BEQ     locret_17BC84
                STA     apu_7F5

locret_17BC84:                          ; CODE XREF: sub_17BC5D+22↑j
                RTS
; ---------------------------------------------------------------------------

loc_17BC85:                             ; CODE XREF: sub_17BC5D+4↑j
                LDA     #$19
                JSR     sub_F255
                SEC
                LDA     NamePos
                SBC     #$9E
                TAX
                JSR     sub_F26B
                LDA     #3
                STA     apu_7F0
                JSR     sub_17B6E8
                LDA     NamePos
                JSR     sub_17A3F8
                LDA     #$2C ; ','
                JSR     sub_F255
                LDX     NamePos
                INX
                CPX     #$A9
                BEQ     loc_17BCAF
                STX     NamePos
                RTS
; ---------------------------------------------------------------------------

loc_17BCAF:                             ; CODE XREF: sub_17BC5D+4D↑j
                JSR     sub_17B5FD
                LDA     #$FF
                JSR     sub_F255
                LDX     #$C8
                JSR     delay
                LDX     #$A9

loc_17BCBE:                             ; CODE XREF: sub_17BC5D+6C↓j
                STX     NamePos
                TXA
                JSR     sub_17A3F8
                LDX     NamePos
                INX
                CPX     #$AC
                BNE     loc_17BCBE
                LDY     #$80
                JMP     sub_17B3DD
; End of function sub_17BC5D


; =============== S U B R O U T I N E =======================================


sub_17BCD0:                             ; DATA XREF: BANK17:B80B↑o
                LDX     #$A
                LDY     byte_54
                LDA     unk_605,Y
                ORA     unk_606,Y
                BEQ     loc_17BD28
                SEC
                LDA     unk_605,Y
                TAX
                SBC     #$A
                LDA     unk_606,Y
                SBC     #0
                BCC     loc_17BCEC
                LDX     #$A

loc_17BCEC:                             ; CODE XREF: sub_17BCD0+18↑j
                STX     byte_590
                LDX     #0
                STX     byte_591
                SEC
                LDA     unk_605,Y
                SBC     byte_590
                STA     unk_605,Y
                LDA     unk_606,Y
                SBC     byte_591
                STA     unk_606,Y
                LDA     #$48 ; 'H'
                JSR     sub_17A3F8
                LDA     byte_590
                STA     Pointer
                LDA     byte_591
                STA     Pointer+1
                LDX     byte_53
                LDY     #5
                JSR     sub_17BEF2
                LDA     byte_53
                STA     byte_54
                LDX     #$A
                LDA     #$3D ; '='
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BD28:                             ; CODE XREF: sub_17BCD0+A↑j
                JMP     sub_17BDD8
; End of function sub_17BCD0


; =============== S U B R O U T I N E =======================================


sub_17BD2B:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                BMI     loc_17BD3F
                JSR     sub_17BFAA
                BCS     loc_17BD3F
                JSR     loc_17B4FC
                JSR     sub_17AACC
                LDA     #$81
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17BD3F:                             ; CODE XREF: sub_17BD2B+2↑j
                                        ; sub_17BD2B+7↑j
                LDA     #$59 ; 'Y'
                JMP     sub_17A3F8
; End of function sub_17BD2B


; =============== S U B R O U T I N E =======================================


sub_17BD44:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_601,Y
                AND     #8
                BNE     locret_17BD5A
                LDA     byte_601,Y
                ORA     #8
                STA     byte_601,Y
                LDA     #$39 ; '9'
                JSR     sub_17A3F8

locret_17BD5A:                          ; CODE XREF: sub_17BD44+7↑j
                RTS
; End of function sub_17BD44


; =============== S U B R O U T I N E =======================================


sub_17BD5B:                             ; CODE XREF: sub_17B868+E↑j
                                        ; sub_17B879+E↑j ...
                PHA
                TXA
                BEQ     loc_17BD62
                JSR     sub_F41F

loc_17BD62:                             ; CODE XREF: sub_17BD5B+2↑j
                JSR     statistical_frame
                PLA
                JMP     sub_17A3F8
; End of function sub_17BD5B


; =============== S U B R O U T I N E =======================================


sub_17BD69:                             ; CODE XREF: sub_17BAFA+10↑j
                                        ; sub_17BB0D+15↑j ...
                PHA
                JSR     sub_17BDCC
                LDA     byte_601,Y
                AND     Pointer
                BNE     loc_17BDC6
                LDA     byte_601,Y
                ORA     Pointer
                STA     byte_601,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD7F:                             ; CODE XREF: sub_17BAE4+10↑j
                                        ; sub_17BB55+20↑j ...
                PHA
                JSR     sub_17BDCC
                LDA     byte_61E,Y
                AND     Pointer
                BNE     loc_17BDC6
                LDA     byte_61E,Y
                ORA     Pointer
                STA     byte_61E,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD95:                             ; CODE XREF: sub_17BBF9+6↑j
                                        ; sub_17BC02+6↑j ...
                PHA
                JSR     sub_17BDCC
                LDA     byte_601,Y
                AND     Pointer
                BEQ     loc_17BDC6
                LDA     byte_601,Y
                AND     Pointer+1
                STA     byte_601,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BDAB:                             ; CODE XREF: sub_17BC14+6↑j
                                        ; sub_17BC26+6↑j
                PHA
                JSR     sub_17BDCC
                LDA     byte_61E,Y
                AND     Pointer
                BEQ     loc_17BDC6
                LDA     byte_61E,Y
                AND     Pointer+1
                STA     byte_61E,Y

loc_17BDBE:                             ; CODE XREF: sub_17BD69+13↑j
                                        ; sub_17BD69+29↑j ...
                LDX     byte_58
                PLA
                JSR     sub_17BD5B
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17BDC6:                             ; CODE XREF: sub_17BD69+9↑j
                                        ; sub_17BD69+1F↑j ...
                PLA
                JSR     sub_17BDD8
                SEC
                RTS
; End of function sub_17BD69


; =============== S U B R O U T I N E =======================================


sub_17BDCC:                             ; CODE XREF: sub_17BD69+1↑p
                                        ; sub_17BD69+17↑p ...
                STX     Pointer
                TXA
                EOR     #$FF
                STA     Pointer+1
                STY     byte_58
                LDY     byte_54
                RTS
; End of function sub_17BDCC


; =============== S U B R O U T I N E =======================================


sub_17BDD8:                             ; CODE XREF: sub_17BA3C:loc_17BA6B↑j
                                        ; sub_17BAE4:loc_17BAF7↑j ...
                LDA     #$55 ; 'U'
                JMP     sub_17A3F8
; End of function sub_17BDD8


; =============== S U B R O U T I N E =======================================


sub_17BDDD:                             ; CODE XREF: sub_17B868↑p
                                        ; sub_17B879↑p ...
                LDA     byte_4E
                STA     Pointer
                LDA     byte_4F
                STA     Pointer+1
                JMP     sub_F2ED
; End of function sub_17BDDD


; =============== S U B R O U T I N E =======================================


sub_17BDE8:                             ; CODE XREF: sub_17B88A+7↑p
                                        ; sub_17BA86+7↑p ...
                JSR     sub_17BF2C
; End of function sub_17BDE8


; =============== S U B R O U T I N E =======================================


sub_17BDEB:                             ; CODE XREF: sub_17BEF2+B↓j
                CLC
                LDA     byte_600,X
                ADC     Pointer
                STA     byte_66
                LDA     byte_601,X
                ADC     Pointer+1
                STA     TilesCount
                BCC     loc_17BE02
                LDA     #$FF
                STA     byte_66
                STA     TilesCount

loc_17BE02:                             ; CODE XREF: sub_17BDEB+F↑j
                SEC
                LDA     pTileID
                SBC     byte_66
                LDA     pTileID+1
                SBC     TilesCount
                BCS     loc_17BE15
                LDA     pTileID
                STA     byte_66
                LDA     pTileID+1
                STA     TilesCount

loc_17BE15:                             ; CODE XREF: sub_17BDEB+20↑j
                SEC
                LDA     byte_66
                SBC     byte_600,X
                STA     byte_590
                LDA     TilesCount
                SBC     byte_601,X
                STA     byte_591
                BCC     loc_17BE38
                ORA     byte_590
                BEQ     loc_17BE38
                LDA     byte_66
                STA     byte_600,X
                LDA     TilesCount
                STA     byte_601,X
                RTS
; ---------------------------------------------------------------------------

loc_17BE38:                             ; CODE XREF: sub_17BDEB+3B↑j
                                        ; sub_17BDEB+40↑j
                JMP     sub_17BFD8
; End of function sub_17BDEB


; =============== S U B R O U T I N E =======================================


sub_17BE3B:                             ; CODE XREF: sub_17B899+7↑p
                JSR     sub_17BF2C
                CLC
                LDA     byte_600,X
                ADC     Pointer
                STA     byte_66
                BCC     loc_17BE4C
                LDA     #$FF
                STA     byte_66

loc_17BE4C:                             ; CODE XREF: sub_17BE3B+B↑j
                SEC
                LDA     pTileID
                SBC     byte_66
                BCS     loc_17BE57
                LDA     pTileID
                STA     byte_66

loc_17BE57:                             ; CODE XREF: sub_17BE3B+16↑j
                LDA     #0
                STA     byte_591
                SEC
                LDA     byte_66
                SBC     byte_600,X
                STA     byte_590
                BCC     loc_17BE6F
                BEQ     loc_17BE6F
                LDA     byte_66
                STA     byte_600,X
                RTS
; ---------------------------------------------------------------------------

loc_17BE6F:                             ; CODE XREF: sub_17BE3B+2A↑j
                                        ; sub_17BE3B+2C↑j
                JMP     sub_17BFD8
; End of function sub_17BE3B


; =============== S U B R O U T I N E =======================================


sub_17BE72:                             ; CODE XREF: sub_17BA07+C↑p
                                        ; sub_17BF15+14↓j
                JSR     sub_17BF2C
                SEC
                LDA     byte_600,X
                SBC     Pointer
                STA     byte_66
                LDA     byte_601,X
                SBC     Pointer+1
                STA     TilesCount
                BCS     loc_17BE8C
                LDA     #0
                STA     byte_66
                STA     TilesCount

loc_17BE8C:                             ; CODE XREF: sub_17BE72+12↑j
                CPY     #3
                BEQ     loc_17BE9E
                CPY     #5
                BEQ     loc_17BE9E
                LDA     byte_66
                ORA     TilesCount
                BNE     loc_17BE9E
                LDA     #1
                STA     byte_66

loc_17BE9E:                             ; CODE XREF: sub_17BE72+1C↑j
                                        ; sub_17BE72+20↑j ...
                SEC
                LDA     byte_600,X
                SBC     byte_66
                STA     byte_590
                LDA     byte_601,X
                SBC     TilesCount
                STA     byte_591
                BCC     loc_17BEC1
                ORA     byte_590
                BEQ     loc_17BEC1
                LDA     byte_66
                STA     byte_600,X
                LDA     TilesCount
                STA     byte_601,X
                RTS
; ---------------------------------------------------------------------------

loc_17BEC1:                             ; CODE XREF: sub_17BE72+3D↑j
                                        ; sub_17BE72+42↑j
                JMP     sub_17BFD8
; End of function sub_17BE72


; =============== S U B R O U T I N E =======================================


sub_17BEC4:                             ; CODE XREF: sub_17BA1B+7↑p
                JSR     sub_17BF2C
                SEC
                LDA     byte_600,X
                SBC     Pointer
                STA     byte_66
                BEQ     loc_17BED3
                BCS     loc_17BED7

loc_17BED3:                             ; CODE XREF: sub_17BEC4+B↑j
                LDA     #1
                STA     byte_66

loc_17BED7:                             ; CODE XREF: sub_17BEC4+D↑j
                LDA     #0
                STA     byte_591
                SEC
                LDA     byte_600,X
                SBC     byte_66
                STA     byte_590
                BEQ     loc_17BEEF
                BCC     loc_17BEEF
                LDA     byte_66
                STA     byte_600,X
                RTS
; ---------------------------------------------------------------------------

loc_17BEEF:                             ; CODE XREF: sub_17BEC4+21↑j
                                        ; sub_17BEC4+23↑j
                JMP     sub_17BFD8
; End of function sub_17BEC4


; =============== S U B R O U T I N E =======================================


sub_17BEF2:                             ; CODE XREF: sub_17B868+7↑p
                                        ; sub_17B879+7↑p ...
                JSR     sub_17BF2C
                LDA     AddrForJmp
                STA     pTileID
                LDA     AddrForJmp+1
                STA     pTileID+1
                JMP     sub_17BDEB
; End of function sub_17BEF2


; =============== S U B R O U T I N E =======================================


sub_17BF00:                             ; CODE XREF: sub_17B8AF+4↑p
                                        ; sub_17B8BD+4↑p ...
                TXA
                PHA
                JSR     sub_17BF2C
                PLA
                TAX
                LDA     AddrForJmp
                STA     Pointer
                LDA     AddrForJmp+1
                STA     Pointer+1
                JSR     sub_F2ED
                JMP     sub_17BDE8
; End of function sub_17BF00


; =============== S U B R O U T I N E =======================================


sub_17BF15:                             ; CODE XREF: sub_17BA6E+4↑p
                                        ; sub_17BA7A+4↑p
                TXA
                PHA
                JSR     sub_17BF2C
                PLA
                TAX
                LDA     AddrForJmp+1
                LSR     A
                STA     Pointer+1
                LDA     AddrForJmp
                ROR     A
                STA     Pointer
                JSR     sub_F2ED
                JMP     sub_17BE72
; End of function sub_17BF15


; =============== S U B R O U T I N E =======================================


sub_17BF2C:                             ; CODE XREF: sub_17BDE8↑p
                                        ; sub_17BE3B↑p ...
                LDA     pPPUTab,X
                STA     byte_66
                LDA     pPPUTab+1,X
                STA     TilesCount
                LDA     (byte_66),Y
                STA     AddrForJmp
                ASL     A
                STA     pTileID
                INY
                LDA     (byte_66),Y
                AND     #3
                STA     AddrForJmp+1
                ROL     A
                STA     pTileID+1
                BCC     loc_17BF4F
                LDA     #$FF
                STA     pTileID
                STA     pTileID+1

loc_17BF4F:                             ; CODE XREF: sub_17BF2C+1B↑j
                DEY
                STX     pDist
                TYA
                CLC
                ADC     pDist
                TAX
                RTS
; End of function sub_17BF2C


; =============== S U B R O U T I N E =======================================


sub_17BF58:                             ; CODE XREF: sub_17BAE4+5↑p
                                        ; sub_17BAFA+5↑p ...
                LDY     byte_53
                LDA     unk_60D,Y
                TAX
                LDY     byte_54
                LDA     unk_60E,Y
                JMP     sub_17BF8C
; End of function sub_17BF58


; =============== S U B R O U T I N E =======================================


sub_17BF66:                             ; CODE XREF: sub_17BB0D+A↑p
                                        ; sub_17BB25+A↑p ...
                LDY     byte_53
                LDA     unk_60D,Y
                TAX
                LDY     byte_54
                LDA     unk_60F,Y
                JMP     sub_17BF8C
; End of function sub_17BF66


; =============== S U B R O U T I N E =======================================


sub_17BF74:                             ; CODE XREF: sub_17B915:loc_17B978↑p
                                        ; sub_17BA07+5↑p
                LDA     unk_602,Y
                AND     byte_57
                BEQ     loc_17BF87
                LSR     Pointer+1
                ROR     Pointer
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17BF87
                INC     Pointer

loc_17BF87:                             ; CODE XREF: sub_17BF74+5↑j
                                        ; sub_17BF74+F↑j
                LDA     #0
                STA     byte_57
                RTS
; End of function sub_17BF74


; =============== S U B R O U T I N E =======================================


sub_17BF8C:                             ; CODE XREF: sub_17BF58+B↑j
                                        ; sub_17BF66+B↑j
                LSR     A
                STA     Pointer
                STX     pTileID
                TXA
                SEC
                SBC     Pointer
                BCS     loc_17BF99
                LDA     #0

loc_17BF99:                             ; CODE XREF: sub_17BF8C+9↑j
                STA     Pointer+1
                LDA     #0
                STA     Pointer
                STA     AddrForJmp
                JSR     sub_F13D
                JSR     sub_F1ED
                CMP     Pointer
                RTS
; End of function sub_17BF8C


; =============== S U B R O U T I N E =======================================


sub_17BFAA:                             ; CODE XREF: sub_17A573+C7↑p
                                        ; sub_17BD2B+4↑p
                JSR     sub_17AABC
                LDY     #0

loc_17BFAF:                             ; CODE XREF: sub_17BFAA+26↓j
                TYA
                PHA
                LDA     (Pointer),Y
                BEQ     loc_17BFCB
                JSR     sub_17AAA4
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                TAX
                LDY     #2
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                AND     #$40 ; '@'
                BNE     loc_17BFD4

loc_17BFCB:                             ; CODE XREF: sub_17BFAA+9↑j
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17BFAF
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17BFD4:                             ; CODE XREF: sub_17BFAA+1F↑j
                PLA
                TAY
                CLC
                RTS
; End of function sub_17BFAA


; =============== S U B R O U T I N E =======================================


sub_17BFD8:                             ; CODE XREF: sub_17BDEB:loc_17BE38↑j
                                        ; sub_17BE3B:loc_17BE6F↑j ...
                LDA     #0
                STA     byte_590
                STA     byte_591
                CLC
                RTS
; End of function sub_17BFD8


; =============== S U B R O U T I N E =======================================


sub_17BFE2:                             ; CODE XREF: sub_17B0F7↑p
                                        ; sub_17B915+A↑p ...
                LDA     byte_54
                BPL     loc_17BFEB

loc_17BFE6:                             ; CODE XREF: sub_17BB8C↑p
                LDA     byte_56
                LSR     A
                BNE     loc_17BFED

loc_17BFEB:                             ; CODE XREF: sub_17BFE2+2↑j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17BFED:                             ; CODE XREF: sub_17BFE2+7↑j
                SEC
                RTS
; End of function sub_17BFE2


; =============== S U B R O U T I N E =======================================


sub_17BFEF:                             ; CODE XREF: sub_17B915+8B↑p
                                        ; sub_17BA2A+5↑p ...
                LDY     byte_54
                BMI     loc_17BFFC
                LDA     byte_611,Y
                CMP     #6
                BNE     loc_17BFFC
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17BFFC:                             ; CODE XREF: sub_17BFEF+2↑j
                                        ; sub_17BFEF+9↑j
                CLC
                RTS
; End of function sub_17BFEF

; ---------------------------------------------------------------------------
                .BYTE $FF, $FF
; end of 'BANK17'

; for bank 1E

; ---------------------------------------------------------------------------

RETURN_OPERAND  struc ; (sizeof=0x4)    ; XREF: ROM:E105/r
subroutine:     .WORD ?                 ; offset (00000000)
value:          .WORD ?
RETURN_OPERAND  ends

; ---------------------------------------------------------------------------

byte_C000:      .BYTE $FF               ; DATA XREF: nmi+4C↓w
byte_C001:      .BYTE $FF               ; DATA XREF: nmi+4F↓w
                .BYTE $FF, $FF, $FF, $FF, $FF, $B6, $42, 4, 0, 0, 0, 0
                .BYTE 0, $20, $49, $B5, $AA, $AA, $4A, $24, 1, $51, $DA
                .BYTE $B6, $AA, $6D, $F7, $FF, $FF, $FF, $FF, $FF, $F6
                .BYTE $76, $DB, $AB, $55, $A5, $44, $10, $20, 0, 0, 4
                .BYTE 8, $90, $28, $51, $AA, $5A, $B5, $6D, $7B, $F7, $EE
                .BYTE $DD, $B7, $77, $5B, $5B, $B5, $52, $49, $12, $12
                .BYTE 9, $12, $22, $49, $48, $A5, $2A, $55, $65, $B5, $B5
                .BYTE $AD, $B6, $6D, $DB, $B6, $6D, $DB, $B6, $B5, $AD
                .BYTE $D6, $AA, $2A, $55, $4A, $A5, $24, $49, $2A, 9, $95
                .BYTE $A2, $54, $49, $53, $B5, $44, $6A, $D5, $6A, $AD
                .BYTE $D6, $44, 0, $AB, $6A, $D5, $44, $44, $AD, $44, $44
                .BYTE $44, $54, $44, $95, $44, $52, 0, 0, $FF, $B7, $20
                .BYTE $B, 0, 0, 0, 0, $C0, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, 0, 0, 0, 0, 0, 0, $C0, $B, 0, 0, $80, $FD
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $17, 0, 0
                .BYTE 0, 0, 0, 0, 0, $F0, $FF, $FF, $FF, $FF, $FF, $7E
                .BYTE $51, $ED, $44, $81, $10, 1, $82, $18, $2B, $42, $53
                .BYTE $81, $6F, $D8, $DB, $EB, $E7, $BF, $EB, $1F, $FB
                .BYTE $95, $24, $48, 0, 2, 0, $E0, $C5, $C0, $BF, $F8
                .BYTE $FF, $FF, $BA, $E, $7E, $C4, $50, $68, $2A, $56
                .BYTE 2, $6F, $77, $4E, $F8, $45, $95, $20, $56, $50, $63
                .BYTE $3F, $F4, $FF, $F0, $9D, $F8, $21, $B2, $20, $8E
                .BYTE $D, $18, $CF, $82, $AF, $8A, $E3, $3F, $78, $FD
                .BYTE $18, $CE, 2, $87, $58, $E0, $C4, $47, $E9, $DF, $F1
                .BYTE $53, $3B, $8A, $97, $38, 8, $A9, 3, $DE, $E2, $F8
                .BYTE $F, $9E, $EC, $89, $B2, 7, $38, $E2, $63, $F1, $E3
                .BYTE $C3, $7B, $42, $AF, $28, $8E, $2A, $8E, $42, $83
                .BYTE $5A, $1D, $FA, $B1, $EB, $AB, $D6, $62, $DA, $A1
                .BYTE $E2, $D0, $34, $9C, $85, $8E, $AE, $C4, $7A, $72
                .BYTE $1D, $A6, $55, $1C, $B9, $52, $3D, $8B, $9E, $9D
                .BYTE $4E, $96, $2A, $B, $E2, $A8, $A4, $95, $2D, $BB
                .BYTE $72, $AD, $F4, $91, $5A, $8B, $52, $25, $4E, $9C
                .BYTE $5A, $79, $6A, $D7, $A4, $8E, $9C, $74, $B0, $A2
                .BYTE $B4, $89, $67, $35, $6D, $2B, $37, $B6, $45, $A5
                .BYTE $A9, $C5, $A4, $42, $34, $26, $54, $44, $44, 4, $44
                .BYTE 0, $4A, $44, 0, 0, 0, 0, 0, $ED, $BA, $98, $76, $78
                .BYTE $97, $AB, $CD, $A7, $47, $76, $48, $45, $66, $77
                .BYTE $89, $FC, $97, $64, $FC, $97, $65, $FC, $86, 1, $23
                .BYTE $45, $67, $89, $AB, $CD, $EF, $FE, $A9, $ED, $FD
                .BYTE $79, $BD, $FE, $D9, $45, $78, $99, $AA, $BB, $CC
                .BYTE $DD, $EF, $7A, $DE, $FF, $EF, $FD, $DF, $FE, $EF
                .BYTE $EF, $FD, $EF, $FE, $DF, $FF, $EE, $EE, $FF, $EF
                .BYTE $FF, $FF, $FF, $EF, $EF, $FF, $FF, $EF, $FF, $FF
                .BYTE $FF, $EF, $EF, $FF, $BF, $FF, $EE, $EE, $ED, $ED
                .BYTE $DD, $BB, $BB, $AA, $AA, $99, $98, $87, $76, $65
                .BYTE $54, $44, $33, $22, $22, $22, $22, $22, $22, $22
                .BYTE $11, $11, $11, $11, $11, $11, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $A9, $F
; ---------------------------------------------------------------------------
                STA     Stack
                LDA     #3
                ORA     BankMode
                STA     CHRBank000
                LDX     #9
                LDY     #2

loc_C210:                               ; CODE XREF: ROM:C211↓j
                DEY
                BNE     loc_C210
                BIT     byte_0
                JMP     loc_C220

; =============== S U B R O U T I N E =======================================


sub_C226:
                LDA     #$F
                STA     Stack
                RTS
; End of function sub_C226

; ---------------------------------------------------------------------------

                .BYTE $A9
                .BYTE $D9
                .BYTE $A2
                .BYTE $91
                .BYTE $85
                .BYTE $74 ; t
                .BYTE $86
                .BYTE $75 ; u
                .BYTE $20
                .BYTE $42 ; B
                .BYTE $C5
                .BYTE $20
                .BYTE $33 ; 3
                .BYTE $FD
                .BYTE $A9
                .BYTE $19
                .BYTE $A2
                .BYTE $B2
                .BYTE $A0
                .BYTE $A2
                .BYTE $20
                .BYTE $F3
                .BYTE $FD
                .BYTE $A9
                .BYTE   0
                .BYTE $85
                .BYTE $EC
                .BYTE $A9
                .BYTE $FF
                .BYTE $8D
                .BYTE $F7
                .BYTE   7
                .BYTE $A9
                .BYTE  $F
                .BYTE $8D
                .BYTE $15
                .BYTE $40 ; @
                .BYTE $20
                .BYTE $41 ; A
                .BYTE $FD
                .BYTE $A2
                .BYTE   0

; =============== S U B R O U T I N E =======================================


sub_C296:                               ; CODE XREF: sub_C296+E↓j
                LDA     #$25 ; '%'
                STA     $540,X
                INX
                LDA     #$C2
                STA     $540,X
                INX
                CPX     #$1A
                BNE     sub_C296
                LDA     #0
                STA     $540,X
                INX
                STA     $540,X
                LDA     #$F
                STA     IRQCount

loc_C2B3:                               ; CODE XREF: sub_C296:loc_C303↓j
                JSR     bank0_0

loc_C2B6:                               ; CODE XREF: sub_C296+57↓j
                JSR     wait_nmi_processed
                LDX     #0
                STX     OffsetNMI_ID
                JSR     tiled_area
                STY     OffsetNMI_ID
                INC     PosY
                LDY     #0
                LDA     (PointerTilePack),Y
                PHA
                INY
                LDA     (PointerTilePack),Y
                PHA
                INY
                TYA
                JSR     get_tile_pointer
                LDA     UnpackID
                CMP     #0
                BNE     loc_C2F0
                JSR     tiled_area
                JSR     sub_C306
                PLA
                TAX
                PLA
                CMP     $540,X
                BCC     loc_C2E9
                STA     $540,X

loc_C2E9:                               ; CODE XREF: sub_C296+4E↑j
                LDA     UnpackID
                CMP     #0
                BNE     loc_C2B6
                RTS
; ---------------------------------------------------------------------------

loc_C2F0:                               ; CODE XREF: sub_C296+40↑j
                INC     PosY
                JSR     clear_area
                JSR     sub_C306
                PLA
                TAX
                PLA
                CMP     $540,X
                BCC     loc_C303
                STA     $540,X

loc_C303:                               ; CODE XREF: sub_C296+68↑j
                JMP     loc_C2B3
; End of function sub_C296


; =============== S U B R O U T I N E =======================================


sub_C306:                               ; CODE XREF: sub_C296+45↑p
                                        ; sub_C296+5F↑p
                STY     OffsetNMI_ID
                JSR     sub_C46E
                LDA     #0
                STA     NMI_ID,X
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                LDA     #$19
                LDX     #$1D
                LDY     #$A3
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JMP     wait_nmi_flags_reset
; End of function sub_C306


; ---------------------------------------------------------------------------
                .BYTE $20, 1, $17, $21, $4B, $92, 1, $25, $16, $21, $10
                .BYTE $67, 0, $25, $18, $FB, $22, $FC, $1C, $FD, 0, $20
                .BYTE 1, $15, $21, $4B, $92, 1, $25, $14, $21, $10, $67
                .BYTE 1, $25, $16, $21, $2E, $67, 0, $25, $18, $FB, $22
                .BYTE $FC, $1C, $FD, 0, $20, 1, $13, $21, $4B, $92, 1
                .BYTE $25, $12, $21, $10, $67, 1, $25, $14, $21, $2E, $67
                .BYTE 1, $25, $16, $21, $4C, $67, 0, $25, $18, $FB, $22
                .BYTE $FC, $1C, $FD, 0
                .BYTE $24, $A0, $23, $38, 0, 0, 7, $23, $10, 0, 1, 3, $23
                .BYTE $14, 0, 2, 4, $23, $16, 0, 2, 4, $23, $11, 0, 3
                .BYTE 8, $A0, $25, 0, 1, 4, $A0, $A0, $21, $A0, $A1, 0
                .BYTE $A9, $6A, $A2, $92, $85, $74, $86, $75, $A5, $EC
                .BYTE $F0, 3, $4C, $B3, $C2, $4C, $74, $C2, $A9, $9B, $A2
                .BYTE $92, $4C, $A4, $C3, $A9, $CF, $A2, $92, $4C, $A4
                .BYTE $C3, $A9, 0, $A2, $93, $4C, $A4, $C3, $A9, $17, $A2
                .BYTE $93, $4C, $A4, $C3, $A9, $5F, $A2, $93, $4C, $A4
                .BYTE $C3, $20, $42, $C5, $A9, $48, $A2, $92, $4C, $A4
                .BYTE $C3, $A9, $6A, $A2, $93, $4C, $A4, $C3, $A9, $8D
                .BYTE $A2, $93, $4C, $A4, $C3, $A9, $1E, $A2, $95, $4C
                .BYTE $A4, $C3

; =============== S U B R O U T I N E =======================================


sub_C3F4:                               ; CODE XREF: sub_CCB1+32↓p
                PHP
                JSR     sub_CFAC
                JSR     sub_FDC0
                LDA     #1
                STA     NMIFlags
                LDA     #0
                STA     byte_7F7
                PLP
                RTS
; End of function sub_C3F4


; =============== S U B R O U T I N E =======================================


sub_C406:                               ; CODE XREF: sub_F5E3+7↓p
                LDA     #$FF

loc_C408:                               ; CODE XREF: sub_ECA3+2↓p
                STA     Pointer
                JSR     sram_write_enable
                LDA     #0

loc_C40F:                               ; CODE XREF: sub_C406+34↓j
                PHA
                TAX
                LDA     $600,X
                BEQ     loc_C436
                LDA     $618,X
                STA     PointerTilePack
                LDA     $619,X
                STA     PointerTilePack+1
                LDY     #1
                LDA     $601,X
                AND     Pointer
                STA     (PointerTilePack),Y
                LDY     #$14

loc_C42B:                               ; CODE XREF: sub_C406+2E↓j
                LDA     $603,X
                STA     (PointerTilePack),Y
                INX
                INY
                CPY     #$18
                BCC     loc_C42B

loc_C436:                               ; CODE XREF: sub_C406+E↑j
                PLA
                CLC
                ADC     #$20 ; ' '
                BPL     loc_C40F
                JSR     sram_read_enable
; End of function sub_C406


; =============== S U B R O U T I N E =======================================


sub_C43F:                               ; CODE XREF: sub_DA48+9A↓p
                                        ; sub_DB6C+D↓p
                JSR     sub_C542
                LDA     BankTable.CPU_8K_8000
                PHA
                JSR     bank0_0
                LDA     #$48 ; 'H'
                LDX     #$92
                STA     PointerTilePack
                STX     PointerTilePack+1
                JSR     sub_C6D2
                BNE     loc_C458

loc_C455:                               ; CODE XREF: sub_C43F+22↓j
                JSR     sub_C6DB

loc_C458:                               ; CODE XREF: sub_C43F+14↑j
                LDA     #2
                JSR     get_tile_pointer
                LDA     UnpackID
                CMP     #0
                BNE     loc_C455
                INC     PosY
                JSR     sub_C6D2
                PLA
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_C43F              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_C46E:                               ; CODE XREF: sub_C306+2↑p
                LDA     ChrCount
                LSR     A
                ADC     #0
                TAX
                LDA     PosY
                AND     #$1E
                ASL     A
                ASL     A
                ASL     A
                STA     BlockIndex
                LDA     PosX
                ADC     #1
                LSR     A
                ORA     BlockIndex
                STA     BlockIndex
                TAY
                JSR     sram_write_enable
                LDA     #$FF

loc_C48C:                               ; CODE XREF: sub_C46E+23↓j
                STA     $6600,Y
                INY
                DEX
                BNE     loc_C48C
                JSR     sram_read_enable
                LDX     PPU_addr
                LDY     PPU_addr+1
                TYA
                CLC
                AND     #3
                ADC     #3
                ADC     ChrCount
                LSR     A
                LSR     A
                STA     LoopAddr
                TYA
                AND     #$80
                STA     NTAddr+1
                TXA
                LSR     A
                ROR     NTAddr+1
                LSR     A
                ROR     NTAddr+1
                TYA
                AND     #$1C
                ORA     NTAddr+1
                LSR     A
                LSR     A
                ORA     #$C0
                STA     NTAddr+1
                ORA     #$F8
                STA     SpriteTabOff
                TXA
                ORA     #3
                STA     NTAddr
                TYA
                AND     #$42 ; 'B'
                LSR     A
                LSR     A
                ADC     #0
                EOR     #$FF
                ADC     #1
                CLC
                ADC     BlockIndex
                TAY
                LDX     OffsetNMI_ID
                LDA     #7
                STA     NMI_ID,X
                INX
                LDA     LoopAddr
                STA     NMI_ID,X
                INX

loc_C4E5:                               ; CODE XREF: sub_C46E+C0↓j
                                        ; sub_C46E+D1↓j
                LDA     NTAddr
                STA     NMI_ID,X
                INX
                LDA     NTAddr+1
                STA     NMI_ID,X
                INX
                LDA     $6600,Y
                AND     #3
                STA     BlockIndex
                INY
                LDA     $6600,Y
                AND     #$C
                ORA     BlockIndex
                STA     BlockIndex
                TYA
                CLC
                ADC     #$F
                TAY
                LDA     $6600,Y
                AND     #$30 ; '0'
                ORA     BlockIndex
                STA     BlockIndex
                INY
                LDA     $6600,Y
                AND     #$C0
                ORA     BlockIndex
                STA     NMI_ID,X
                INX
                TYA
                SEC
                SBC     #$F
                TAY
                DEC     LoopAddr
                BNE     loc_C528
                STX     OffsetNMI_ID
                RTS
; ---------------------------------------------------------------------------

loc_C528:                               ; CODE XREF: sub_C46E+B5↑j
                INC     SpriteTabOff
                BEQ     loc_C531
                INC     NTAddr+1
                JMP     loc_C4E5
; ---------------------------------------------------------------------------

loc_C531:                               ; CODE XREF: sub_C46E+BC↑j
                LDA     #4
                EOR     NTAddr
                STA     NTAddr
                LDA     #$F8
                STA     SpriteTabOff
                AND     NTAddr+1
                STA     NTAddr+1
                JMP     loc_C4E5
; End of function sub_C46E


; =============== S U B R O U T I N E =======================================


sub_C542:                               ; CODE XREF: sub_C43F↑p
                                        ; main:loc_CB5D↓p ...
                JSR     sram_write_enable
                LDX     #$10
                LDY     #0
                STY     byte_6707

loc_C54C:                               ; CODE XREF: sub_C542+71↓j
                JSR     sub_C62E
                BCS     loc_C5B0
                INC     byte_6707
                JSR     sub_C665
                TYA
                PHA
                LDY     #0

loc_C55B:                               ; CODE XREF: sub_C542+1E↓j
                JSR     sub_C637
                CPY     #$14
                BNE     loc_C55B
                TYA
                PHA
                LDY     #1
                LDA     (Pointer),Y
                LDY     #$E

loc_C56A:                               ; CODE XREF: sub_C542+52↓j
                ASL     A
                BCC     loc_C592
                PLA
                TYA
                PHA
                LDY     #0

loc_C572:                               ; CODE XREF: sub_C542+3A↓j
                LDA     $C398,Y
                STA     $6700,X
                INX
                INY
                CPY     #5
                BNE     loc_C572
                PLA
                TAY
                LDA     $C61E,Y
                STA     $6700,X
                INX
                LDA     $C61F,Y
                STA     $6700,X
                INX
                LDY     #$1B
                BNE     loc_C59B

loc_C592:                               ; CODE XREF: sub_C542+29↑j
                DEY
                DEY
                BPL     loc_C56A
                PLA
                TAY
                JSR     sub_C637

loc_C59B:                               ; CODE XREF: sub_C542+4E↑j
                                        ; sub_C542+63↓j
                LDA     $C37A,Y
                STA     $6700,X
                INX
                INY
                CPY     #$1E
                BNE     loc_C59B
                PLA
                TAY
                LDA     byte_6707
                CMP     #3
                BCS     loc_C5B5

loc_C5B0:                               ; CODE XREF: sub_C542+D↑j
                INY
                CPY     #4
                BCC     loc_C54C

loc_C5B5:                               ; CODE XREF: sub_C542+6C↑j
                LDA     #0
                STA     byte_6704
                STA     byte_6705
                STA     byte_6706
                SEC
                LDA     #3
                SBC     byte_6707
                TAX
                LDY     #0

loc_C5C9:                               ; CODE XREF: sub_C542+97↓j
                JSR     sub_C62E
                BCS     loc_C5D6
                STA     $6704,X
                INX
                CPX     #3
                BCS     loc_C5DB

loc_C5D6:                               ; CODE XREF: sub_C542+8A↑j
                INY
                CPY     #4
                BCC     loc_C5C9

loc_C5DB:                               ; CODE XREF: sub_C542+92↑j
                LDA     byte_6707
                ASL     A
                TAX
                LDA     #4
                STA     byte_6700
                STA     byte_670A
                CPX     #4
                BCS     loc_C5EE
                LDA     #0

loc_C5EE:                               ; CODE XREF: sub_C542+A8↑j
                STA     byte_670D
                LDA     $C616,X
                STA     byte_6701
                LDA     $C617,X
                STA     byte_6702
                LDA     byte_6713
                STA     byte_670B
                LDA     byte_6714
                STA     byte_670C
                LDA     #$9D
                STA     byte_670E
                LDA     #$C3
                STA     byte_670F
                JMP     sram_read_enable
; End of function sub_C542

; ---------------------------------------------------------------------------
                .WORD $C33D, $C329, $C33E, $C359
                .WORD $8629, $8622, $861B, $8614, $860D, $8606, $85FF
                .WORD $85F8

; =============== S U B R O U T I N E =======================================


sub_C62E:                               ; CODE XREF: sub_C542:loc_C54C↑p
                                        ; sub_C542:loc_C5C9↑p
                SEC
                LDA     $7408,Y
                BEQ     locret_C636
                CMP     #6

locret_C636:                            ; CODE XREF: sub_C62E+4↑j
                RTS
; End of function sub_C62E


; =============== S U B R O U T I N E =======================================


sub_C637:                               ; CODE XREF: sub_C542:loc_C55B↑p
                                        ; sub_C542+56↑p
                LDA     $C37A,Y
                STA     $6700,X
                INX
                INY
                LDA     $C37A,Y
                STA     $6700,X
                INX
                INY
                LDA     $C37A,Y
                STA     $6700,X
                INX
                INY
                CLC
                LDA     $C37A,Y
                ADC     Pointer
                STA     $6700,X
                INX
                INY
                LDA     $C37A,Y
                ADC     Pointer+1
                STA     $6700,X
                INX
                INY
                RTS
; End of function sub_C637


; =============== S U B R O U T I N E =======================================

; C665
.proc sub_C665
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
                JSR     sub_C6D2
                BNE     loc_C682

loc_C67F:                               ; CODE XREF: sub_C67A+A↓j
                JSR     sub_C6DB

loc_C682:                               ; CODE XREF: sub_C67A+3↑j
                CMP     #0
                BNE     loc_C67F
                INC     PosY
                JMP     sub_C6D2
; ---------------------------------------------------------------------------

sub_C68B:                               ; CODE XREF: get_cursor_pos+1E↓j
                PHA
                JSR     wait_nmi_processed
                JSR     nt_calc
                LDA     #5
                STA     NMI_ID
                LDA     #1
                STA     num_of_chr
                LDA     NTAddr
                STA     PPU_addr
                LDA     NTAddr+1
                STA     PPU_addr+1
                PLA
                STA     chr
                LDA     #0
                STA     next
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_C67A


; =============== S U B R O U T I N E =======================================


sub_C6B6:                               ; CODE XREF: sub_C6DB+A↓p
                                        ; sub_C6DB+10↓p ...
                LDA     byte_70
                CLC
                SBC     ChrCount
                BCC     loc_C6CF
                TAY

loc_C6BE:                               ; CODE XREF: sub_C6B6+E↓j
                LDA     #$A0
                JSR     add_tile
                DEY
                BPL     loc_C6BE
                LDY     OffsetNMI_ID
                LDA     $401,Y
                BEQ     loc_C6CF
                TXA
                TAY

loc_C6CF:                               ; CODE XREF: sub_C6B6+5↑j
                                        ; sub_C6B6+15↑j
                STY     OffsetNMI_ID
                RTS
; End of function sub_C6B6

; =============== S U B R O U T I N E =======================================


sub_C707:                               ; CODE XREF: sub_F562+33↓p
                JSR     wait_nmi_processed
                LDA     #$33 ; '3'
                STA     OffsetNMI_ID
                PHA
                JSR     tiled_area
                JSR     sub_C6B6
                STY     SpriteTabOff
                PLA
                TAX
                LDA     #5
                STA     NMI_ID
                LDA     #1
                STA     num_of_chr

loc_C723:                               ; CODE XREF: sub_C707+A5↓j
                LDA     #0
                STA     NMI_ID,Y
                CPX     SpriteTabOff
                BCS     loc_C6F9
                LDA     #8
                STA     NMI_ID,Y
                LDA     $401,X
                STA     ChrCount
                STA     $401,Y
                LDA     #$A0
                STA     $404,Y
                CLC
                LDA     $403,X
                STA     PPU_addr+1
                ADC     #$20 ; ' '
                STA     $403,Y
                LDA     $402,X
                STA     PPU_addr
                ADC     #0
                STA     $402,Y
                TXA
                CLC
                ADC     #4
                TAX
                TYA
                CLC
                ADC     #5
                TAY

loc_C75F:                               ; CODE XREF: sub_C707+A3↓j
                LDA     NMI_ID,X
                STA     chr
                CMP     #$A0
                BEQ     loc_C77B
                LDA     ModeSRAM
                BMI     loc_C77B
                EOR     #1
                STA     ModeSRAM
                LSR     A
                BCC     loc_C77B
                LDA     #$E
                STA     byte_7F1

loc_C77B:                               ; CODE XREF: sub_C707+60↑j
                                        ; sub_C707+65↑j ...
                LDA     #0
                STA     next
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                JSR     wait_nmi_processed
                BIT     ModeSRAM
                BVC     loc_C7A4
                TXA
                PHA
                LDA     chr
                LDX     #$28 ; '('
                CMP     #$AE
                BEQ     loc_C79F
                CMP     #$AC
                BEQ     loc_C79F
                LDX     #3

loc_C79F:                               ; CODE XREF: sub_C707+90↑j
                                        ; sub_C707+94↑j
                JSR     wait_frames      ; wait for the whole frame to be output
                PLA
                TAX

loc_C7A4:                               ; CODE XREF: sub_C707+85↑j
                INC     PPU_addr+1
                INX
                DEC     ChrCount
                BNE     loc_C75F
                JMP     loc_C723
; End of function sub_C707


; =============== S U B R O U T I N E =======================================


sub_C7AF:
                CMP     #1
                BNE     locret_C7C0
                PHA
                LDX     #$A4

loc_C7B6:                               ; CODE XREF: sub_C7AF+E↓j
                LDA     $432,X
                STA     $45B,X
                DEX
                BNE     loc_C7B6
                PLA

locret_C7C0:                            ; CODE XREF: sub_C7AF+2↑j
                RTS
; End of function sub_C7AF


; =============== S U B R O U T I N E =======================================


sub_C7C1:
                LDA     #$33 ; '3'

loc_C7C3:                               ; CODE XREF: sub_C7C1+6↓j
                CLC
                ADC     #$29 ; ')'
                DEX
                BNE     loc_C7C3
                STX     byte_7F
                TAX
                PHA
                JSR     sub_C7D4
                STA     byte_7F
                PLA
                TAX
; End of function sub_C7C1


; =============== S U B R O U T I N E =======================================


sub_C7D4:                               ; CODE XREF: sub_C7C1+C↑p
                                        ; sub_C7D4+37↓j
                JSR     wait_nmi_processed
                STX     OffsetNMI_ID

loc_C7D9:                               ; CODE XREF: sub_C7D4+1D↓j
                                        ; sub_C7D4+27↓j
                LDA     NMI_ID,X
                BEQ     loc_C7FD
                EOR     #5
                BNE     loc_C7F3
                ORA     byte_7F
                BNE     loc_C7E9
                JSR     sub_C80E

loc_C7E9:                               ; CODE XREF: sub_C7D4+10↑j
                TXA
                CLC
                ADC     #4
                ADC     $401,X
                TAX
                BCC     loc_C7D9

loc_C7F3:                               ; CODE XREF: sub_C7D4+C↑j
                JSR     sub_C80E
                TXA
                CLC
                ADC     #5
                TAX
                BCC     loc_C7D9

loc_C7FD:                               ; CODE XREF: sub_C7D4+8↑j
                STA     byte_7F
                SEC
                LDA     OffsetNMI_ID
                SBC     #$29 ; ')'
                TAX
                LDA     #$80
                STA     NMIFlags
                CPX     #$5C ; '\'
                BCS     sub_C7D4
                RTS
; End of function sub_C7D4


; =============== S U B R O U T I N E =======================================


sub_C80E:                               ; CODE XREF: sub_C7D4+12↑p
                                        ; sub_C7D4:loc_C7F3↑p
                SEC
                LDA     $403,X
                SBC     #$20 ; ' '
                STA     $403,X
                LDA     $402,X
                STA     SpriteTabOff
                SBC     #0
                STA     $402,X
                EOR     SpriteTabOff
                AND     #4
                BEQ     locret_C83C
                SEC
                LDA     $403,X
                SBC     #$40 ; '@'
                STA     $403,X
                LDA     $402,X
                SBC     #4
                AND     #$F
                ORA     #$20 ; ' '
                STA     $402,X

locret_C83C:                            ; CODE XREF: sub_C80E+17↑j
                RTS
; End of function sub_C80E


; =============== S U B R O U T I N E =======================================


sub_CC2B:                               ; CODE XREF: main+5A↑p
                                        ; sub_CCB1+76↓p ...
                LDA     byte_1F
                CMP     #7
                BCS     loc_CC5D
                LDA     #$10
                STA     NMIFlags
                JSR     sub_D05E
                JSR     sub_D0B1

loc_CC3B:                               ; CODE XREF: sub_CC2B+12↓j
                LDA     NMIFlags
                BNE     loc_CC3B

loc_CC3F:                               ; CODE XREF: sub_CC2B+18↓j
                LDA     OtherNMIFlags
                CMP     #9
                BCS     loc_CC3F
                SEC
                ROR     flag_clear_OAM_300
                JSR     sub_E065
                ASL     flag_clear_OAM_300
                JSR     sub_D232
                LDA     #0
                STA     NMI_ID,X
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                BNE     loc_CC83

loc_CC5D:                               ; CODE XREF: sub_CC2B+4↑j
                JSR     sub_D05E
                JSR     sub_D0B1
                JSR     sub_D232
                LDA     #0
                STA     NMI_ID,X
                STA     OffsetNMI_ID
                LDA     #$10
                STA     NMIFlags
                LDA     byte_1F
                CMP     #$F
                BCS     loc_CC83

loc_CC77:                               ; CODE XREF: sub_CC2B+4E↓j
                LDA     NMIFlags
                BNE     loc_CC77
                SEC
                ROR     flag_clear_OAM_300
                JSR     sub_E065
                ASL     flag_clear_OAM_300

loc_CC83:                               ; CODE XREF: sub_CC2B+30↑j
                                        ; sub_CC2B+4A↑j
                LDA     byte_A0
                LSR     A
                BCC     loc_CC96
                JSR     sub_D21C
                LDA     #0
                STA     NMI_ID,X
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags

loc_CC96:                               ; CODE XREF: sub_CC2B+5B↑j
                BIT     byte_A0
                BMI     locret_CC9C
                INC     byte_D5

locret_CC9C:                            ; CODE XREF: sub_CC2B+6D↑j
                RTS
; End of function sub_CC2B


; =============== S U B R O U T I N E =======================================


sub_CC9D:                               ; CODE XREF: main+42↑p
                                        ; main:loc_CBCD↑p
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAX
                LDY     $CCA9,X
                LDA     $743C,Y
                RTS
; End of function sub_CC9D

; ---------------------------------------------------------------------------
                .BYTE 0, 1, 2, 1, 0, 0, 0, 0

; =============== S U B R O U T I N E =======================================


sub_CCB1:                               ; CODE XREF: sub_CCB1+44↓j
                LDA     #$FF
                JSR     sub_FD28
                JSR     sub_DA16
                LDA     #2
                STA     byte_7F0
                LDA     #1
                ORA     MaskPPU
                STA     MaskPPU
                LDX     #8

loc_CCC6:                               ; CODE XREF: sub_CCB1+19↓j
                JSR     sub_EEE4
                DEX
                BNE     loc_CCC6
                LDA     #$1E
                AND     MaskPPU
                STA     MaskPPU
                JSR     sub_FD4F
                JMP     loc_CD79
; ---------------------------------------------------------------------------
                LDA     NTAddrC
                PHA
                LDA     #$FF
                STA     byte_F
                JSR     sub_FD28
                JSR     sub_C3F4
                LDA     #1
                STA     byte_7F4
                JSR     sub_CD9D
                LDX     #5

loc_CCF0:                               ; CODE XREF: sub_CCB1+60↓j
                JSR     sub_CD8B
                LDA     byte_A0
                BMI     sub_CCB1
                LDA     ButtonPressed
                AND     #$F
                TAX
                LDA     $EBDD,X
                BMI     loc_CD0C
                ORA     #$40 ; '@'
                TAX
                EOR     byte_22
                CMP     #4
                BEQ     loc_CD0C
                STX     byte_22

loc_CD0C:                               ; CODE XREF: sub_CCB1+4E↑j
                                        ; sub_CCB1+57↑j
                LDX     byte_25
                INX
                CPX     #$2D ; '-'
                BCC     loc_CCF0
                JSR     wait_nmi_processed
                LDA     #$20 ; ' '

loc_CD18:                               ; CODE XREF: sub_CCB1+71↓j
                TAX
                ASL     $304,X
                ASL     $305,X
                SEC
                SBC     #8
                BNE     loc_CD18
                LDA     #$A

loc_CD26:                               ; CODE XREF: sub_CCB1+80↓j
                PHA
                JSR     sub_CC2B
                JSR     wait_nmi_processed
                PLA
                SEC
                SBC     #1
                BNE     loc_CD26
                LDA     #1
                STA     byte_7F3
                LDA     #$22 ; '"'
                JSR     sub_EDFE
                JSR     bank13_A000
                JSR     sram_write_enable
                JSR     byte_BBD4
                JSR     sub_D9FA
                PLA
                LDA     PointerTilePack04
                TAX
                AND     #$3F ; '?'
                PHA
                TXA
                AND     #$C0
                STA     PointerTilePack04
                JSR     sub_D8C9
                LDX     #$14
                JSR     wait_frames      ; wait for the whole frame to be output
                JSR     sub_C542
                JSR     sub_CEFC
                JSR     clear_oam_sprite
                JSR     sub_CFAC
                JSR     sub_CD9D
                LDX     #$2C ; ','

loc_CD70:                               ; CODE XREF: sub_CCB1+C6↓j
                JSR     sub_CD8B
                LDX     byte_25
                DEX
                DEX
                BPL     loc_CD70

loc_CD79:                               ; CODE XREF: sub_CCB1+24↑j
                LDX     #0
                STX     byte_22
                STX     Gamepad0Buttons
                STX     byte_F
                JSR     sub_CDAF
                PLA
                JSR     sub_FD28
                JMP     loc_CB76
; End of function sub_CCB1


; =============== S U B R O U T I N E =======================================


sub_CD8B:                               ; CODE XREF: sub_CCB1:loc_CCF0↑p
                                        ; sub_CCB1:loc_CD70↑p
                JSR     sub_CDAF
                JSR     sub_DE99
                JSR     wait_nmi_processed
                JSR     sub_DD01
                JSR     sub_DFDA
                JMP     sub_CC2B
; End of function sub_CD8B


; =============== S U B R O U T I N E =======================================


sub_CD9D:                               ; CODE XREF: sub_CCB1+3A↑p
                                        ; sub_CCB1+BA↑p
                JSR     sram_write_enable
                LDA     PointerTilePack06
                AND     #$F
                STA     byte_6799
                ORA     #$40 ; '@'
                STA     byte_22
                JMP     sram_read_enable
; End of function sub_CD9D


; =============== S U B R O U T I N E =======================================


sub_CDAF:                               ; CODE XREF: sub_CCB1+D0↑p
                                        ; sub_CD8B↑p ...
                STX     byte_25
                LDA     $CDB7,X
                STA     byte_1F
                RTS
; End of function sub_CDAF

; ---------------------------------------------------------------------------
                .BYTE 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3
                .BYTE 3, 3, 3, 5, 5, 5, 5, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7
                .BYTE 7, 7, 7, 7, 7, 7, $F, $F, $F, $F, $F, $48, $AD, $8C
                .BYTE 7, $AA, $68, $20, $28, $FD, $A9, 0, $85, $DA, $24
                .BYTE $DA, $70, 5, $AD, $8C, 7, $D0, $F7, $A9, 0, $85
                .BYTE $DA, $8A, $4C, $28, $FD

; =============== S U B R O U T I N E =======================================


sub_CE02:
                LDY     #$5E ; '^'
                LDA     #0
                LDX     #$6C ; 'l'
                STA     Pointer
                STX     Pointer+1
                JSR     wait_nmi_processed
                TYA
                LDX     #1
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #9
                LDX     #$40 ; '@'
                STA     NMI_ID
                STX     num_of_chr
                LDA     #0
                LDX     #$18
                STX     PPU_addr
                STA     PPU_addr+1
                LDA     #0
                STA     byte_444
                LDX     #$20 ; ' '

loc_CE30:                               ; CODE XREF: sub_CE02+68↓j
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                JSR     wait_nmi_processed
                JSR     sram_write_enable
                LDY     #0

loc_CE40:                               ; CODE XREF: sub_CE02+46↓j
                LDA     $404,Y
                STA     (Pointer),Y
                INY
                CPY     #$40 ; '@'
                BCC     loc_CE40
                JSR     sram_read_enable
                CLC
                TYA
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                CLC
                TYA
                ADC     PPU_addr+1
                STA     PPU_addr+1
                LDA     #0
                ADC     PPU_addr
                STA     PPU_addr
                DEX
                BNE     loc_CE30
                RTS
; End of function sub_CE02


; =============== S U B R O U T I N E =======================================


sub_CE6D:
                LDA     #0
                LDX     #0
                STA     Pointer
                STX     Pointer+1
                LDA     #0
                LDX     #$20 ; ' '
                STA     pTileID
                STX     pTileID+1
                LDA     #$10
                STA     pDist

loc_CE81:                               ; CODE XREF: sub_CE6D+42↓j
                LDA     Pointer
                LDX     Pointer+1
                LDY     #9
                JSR     sub_CEB2
                LDA     pTileID
                LDX     pTileID+1
                LDY     #5
                JSR     sub_CEB2
                CLC
                LDA     #$40 ; '@'
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                CLC
                LDA     #$40 ; '@'
                ADC     pTileID
                STA     pTileID
                LDA     #0
                ADC     pTileID+1
                STA     pTileID+1
                DEC     pDist
                BNE     loc_CE81
                RTS
; End of function sub_CE6D


; =============== S U B R O U T I N E =======================================


sub_CEB2:                               ; CODE XREF: sub_CE6D+1A↑p
                                        ; sub_CE6D+23↑p
                PHA
                JSR     wait_nmi_processed
                PLA
                STA     PPU_addr+1
                STX     PPU_addr
                STY     NMI_ID
                LDA     #$40 ; '@'
                STA     num_of_chr
                LDA     #0
                STA     byte_444
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_CEB2

; =============== S U B R O U T I N E =======================================


sub_CEFC:                               ; CODE XREF: main+1C↑p
                                        ; sub_CCB1+B1↑p
                JSR     sub_D674
                LDA     #$14
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     CHRBank9
                LDA     byte_14
                ASL     A
                ASL     A
                ASL     A
                ROL     CHRBank9
                ASL     A
                ROL     CHRBank9
                ADC     #0
                STA     CHRBank8
                LDA     CHRBank9
                ADC     #$90
                STA     CHRBank9
                JSR     wait_nmi_processed
                LDY     #$F

loc_CF23:                               ; CODE XREF: sub_CEFC+32↓j
                LDA     ($88),Y
                BPL     loc_CF2A
                JSR     sub_E0F2

loc_CF2A:                               ; CODE XREF: sub_CEFC+29↑j
                STA     PalNMIBG,Y
                DEY
                BPL     loc_CF23
                LDY     #$F

loc_CF32:                               ; CODE XREF: sub_CEFC+3D↓j
                LDA     $CF9C,Y
                STA     $510,Y
                DEY
                BPL     loc_CF32
                LDX     PalNMIBG+$C
                LDY     PalNMIBG+$E
                STX     byte_17
                STY     byte_16
                LDX     #$F
                LDY     #$30 ; '0'
                STX     PalNMIBG+$C
                STY     PalNMIBG+$E
                JSR     sub_D5C4
                LDA     byte_1A
                AND     #$C0
                STA     byte_AC
                LDA     byte_1B
                STA     byte_AD
                LDA     #$40 ; '@'
                STA     byte_AE
                LDA     #0
                STA     byte_AF
                LDA     #$10
                STA     byte_9B

loc_CF68:                               ; CODE XREF: sub_CEFC+93↓j
                SEC
                LDA     byte_18
                AND     #$C0
                SBC     #$40 ; '@'
                STA     byte_AA
                LDA     byte_19
                SBC     #0
                STA     byte_AB
                LDA     #$13
                STA     byte_A8
                JSR     loc_D11D
                DEC     byte_9B
                BEQ     loc_CF92
                CLC
                LDA     byte_AC
                ADC     #$40 ; '@'
                STA     byte_AC
                LDA     byte_AD
                ADC     #0
                STA     byte_AD
                JMP     loc_CF68
; ---------------------------------------------------------------------------

loc_CF92:                               ; CODE XREF: sub_CEFC+84↑j
                JSR     sub_D09E
                LDY     #0
                STY     byte_1D
                JMP     sub_DD72
; End of function sub_CEFC

; ---------------------------------------------------------------------------
                .BYTE $F, $F, 0, $30, $F, $F, $16, $37, $F, $F, $24, $37
                .BYTE $F, $F, $12, $37

; =============== S U B R O U T I N E =======================================


sub_CFAC:                               ; CODE XREF: sub_C3F4+1↑p
                                        ; main+2F↑p ...
                JSR     wait_nmi_processed
                CLC
                LDA     byte_1C
                ORA     #8
                TAX
                LDY     byte_1D
                LDA     CntrlPPU
                AND     #$FC
                ORA     byte_1E
                STA     CntrlPPU
                STX     CameraX
                STY     CameraY
                STY     byte_99
                CLC
                LDA     byte_1A
                AND     #$C0
                ADC     #$80
                STA     byte_AC
                LDA     byte_1B
                ADC     #3
                STA     byte_AD
                LDA     #$F
                STA     byte_9B

loc_CFD8:                               ; CODE XREF: sub_CFAC+7F↓j
                CLC
                LDA     byte_99
                ADC     #$F0
                BCS     loc_CFE1
                ADC     #$F0

loc_CFE1:                               ; CODE XREF: sub_CFAC+31↑j
                STA     byte_99
                LDA     byte_18
                AND     #$C0
                STA     byte_AA
                LDA     byte_19
                STA     byte_AB
                LDX     byte_9B
                LDA     $D04E,X
                EOR     byte_99
                AND     #$10
                BNE     loc_CFFB
                LDA     $D04E,X

loc_CFFB:                               ; CODE XREF: sub_CFAC+4A↑j
                STA     byte_93
                JSR     wait_nmi_processed
                JSR     sub_D2C4
                LDA     #0
                STA     NMI_ID,X
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                DEC     byte_9B
                BEQ     loc_D02E
                LDA     byte_9B
                ASL     A
                TAX
                JSR     wait_nmi_flags_reset
                LDA     #$25 ; '%'
                STA     $53E,X
                SEC
                LDA     byte_AC
                SBC     #$40 ; '@'
                STA     byte_AC
                LDA     byte_AD
                SBC     #0
                STA     byte_AD
                JMP     loc_CFD8
; ---------------------------------------------------------------------------

loc_D02E:                               ; CODE XREF: sub_CFAC+64↑j
                JSR     wait_nmi_processed
                JSR     sub_D5C4
                LDA     #4
                STA     NMI_ID
                LDA     #0
                STA     num_of_chr
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                LDA     #$88
                STA     byte_A0
                LDA     #0
                STA     IRQCount
                STA     Gamepad0Buttons
                RTS
; End of function sub_CFAC

; ---------------------------------------------------------------------------
                .BYTE $F0, $10, $10, $10, $10, $10, $10, $10, $10, $10
                .BYTE $10, $10, $10, $10, $20

; =============== S U B R O U T I N E =======================================


sub_D05E:                               ; CODE XREF: sub_CC2B+A↑p
                                        ; sub_CC2B:loc_CC5D↑p
                LDA     byte_A0
                BMI     locret_D0B0
                ASL     A
                ASL     A
                ASL     A
                TAX
                CLC
                LDA     $EBED,X
                ADC     byte_18
                STA     byte_18
                LDA     $EBEE,X
                ADC     byte_19
                STA     byte_19
                CLC
                LDA     $EBEF,X
                ADC     byte_1A
                STA     byte_1A
                LDA     $EBF0,X
                ADC     byte_1B
                STA     byte_1B
                CLC
                LDA     $EBEF,X
                BEQ     sub_D09E
                BMI     loc_D094
                LDA     byte_1D
                ADC     #$20 ; ' '
                BCC     loc_D09A
                BCS     loc_D09C

loc_D094:                               ; CODE XREF: sub_D05E+2C↑j
                LDA     byte_1D
                ADC     #$F0
                BCS     loc_D09C

loc_D09A:                               ; CODE XREF: sub_D05E+32↑j
                ADC     #$F0

loc_D09C:                               ; CODE XREF: sub_D05E+34↑j
                                        ; sub_D05E+3A↑j
                STA     byte_1D
; End of function sub_D05E


; =============== S U B R O U T I N E =======================================


sub_D09E:                               ; CODE XREF: sub_CEFC:loc_CF92↑p
                                        ; sub_D05E+2A↑j
                LDA     byte_19
                AND     #7
                STA     byte_1E
                LDA     byte_18
                AND     #$C0
                LSR     byte_1E
                ROR     A
                LSR     byte_1E
                ROR     A
                STA     byte_1C

locret_D0B0:                            ; CODE XREF: sub_D05E+2↑j
                RTS
; End of function sub_D09E


; =============== S U B R O U T I N E =======================================


sub_D0B1:                               ; CODE XREF: sub_CC2B+D↑p
                                        ; sub_CC2B+35↑p
                JSR     sub_D5C4
                LDA     byte_A0
                BMI     locret_D0C0
                JSR     sub_D0C4
                LDA     byte_A0
                LSR     A
                BCS     loc_D0C1

locret_D0C0:                            ; CODE XREF: sub_D0B1+5↑j
                RTS
; ---------------------------------------------------------------------------

loc_D0C1:                               ; CODE XREF: sub_D0B1+D↑j
                ADC     #0
                ASL     A
; End of function sub_D0B1


; =============== S U B R O U T I N E =======================================


sub_D0C4:                               ; CODE XREF: sub_D0B1+7↑p

; FUNCTION CHUNK AT D11D SIZE 000000FF BYTES

                AND     #6
                ASL     A
                ASL     A
                TAX
                CLC
                LDA     byte_18
                AND     #$C0
                ADC     $D0FD,X
                STA     byte_AA
                LDA     byte_19
                ADC     $D0FE,X
                STA     byte_AB
                CLC
                LDA     byte_1A
                AND     #$C0
                ADC     $D0FF,X
                STA     byte_AC
                LDA     byte_1B
                ADC     $D100,X
                STA     byte_AD
                LDA     $D101,X
                STA     byte_AE
                LDA     $D102,X
                STA     byte_AF
                LDA     $D103,X
                STA     byte_A8
                JMP     loc_D11D
; End of function sub_D0C4

; ---------------------------------------------------------------------------
                .BYTE $C0, $FF, 0, 0, $40, 0, $13, 0, $40, 4, 0, 0, 0
                .BYTE $40, $10, 0, $C0, $FF, $C0, 3, $40, 0, $13, 0, $C0
                .BYTE $FF, 0, 0, 0, $40, $10, 0
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_D0C4

loc_D11D:                               ; CODE XREF: sub_CEFC+7F↑p
                                        ; sub_D0C4+36↑j
                JSR     sub_D55D

loc_D120:                               ; CODE XREF: sub_D0C4+132↓j
                                        ; sub_D0C4+14E↓j ...
                JSR     sub_D59D
                LDY     #0
                LDA     ($88),Y
                AND     #$3F ; '?'
                CMP     byte_14
                BEQ     loc_D132
                LDA     byte_16
                JMP     loc_D14F
; ---------------------------------------------------------------------------

loc_D132:                               ; CODE XREF: sub_D0C4+67↑j
                LDA     byte_94
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                CLC
                LDA     byte_AB
                STA     CHRBank8
                LDA     byte_AD
                AND     #$1F
                ADC     #$80
                STA     CHRBank9
                LDY     #0
                LDA     ($88),Y
                BPL     loc_D14F
                JSR     sub_E0F2

loc_D14F:                               ; CODE XREF: sub_D0C4+6B↑j
                                        ; sub_D0C4+86↑j
                TAX
                AND     #$40 ; '@'
                ASL     A
                STA     byte_97
                LSR     A
                LSR     A
                STA     byte_96
                BEQ     loc_D15D+1
                LDA     byte_13

loc_D15D:                               ; CODE XREF: sub_D0C4+95↑j
                BIT     CHRBank00+$9A5
                STA     CHRBank9
                TXA
                ASL     A
                ASL     A
                ASL     A
                ROL     CHRBank9
                ASL     A
                ROL     CHRBank9
                STA     CHRBank8
                STA     CHRBankA
                LDA     CHRBank9
                ADC     #$80
                ADC     byte_96
                STA     CHRBank9
                ADC     #$10
                STA     CHRBankB
                LDA     byte_10
                LSR     A
                ORA     #1
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     byte_12
                LSR     A
                ORA     #1
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode

loc_D18F:                               ; CODE XREF: sub_D0C4:loc_D215↓j
                LDA     byte_AA
                LSR     A
                LSR     A
                ORA     byte_AC
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAX
                TAY
                JSR     sram_write_enable
                LDA     ($88),Y
                EOR     byte_97
                LDY     byte_A1
                STA     ($A2),Y
                TXA
                TAY
                LDA     ($8A),Y
                AND     #$C0
                STA     byte_90
                LSR     A
                LSR     A
                ORA     byte_90
                LSR     A
                LSR     A
                ORA     byte_90
                LSR     A
                LSR     A
                ORA     byte_90
                LDY     byte_A1
                STA     ($A4),Y
                LDA     #0
                STA     ($A6),Y
                JSR     sram_read_enable
                DEC     byte_A8
                BEQ     locret_D21B
                LDA     byte_AE
                BEQ     loc_D1F9
                INC     byte_A1
                CLC
                ADC     byte_AA
                STA     byte_AA
                BCC     loc_D215
                LDA     #0
                ADC     byte_AB
                STA     byte_AB
                AND     #3
                BNE     loc_D218
                LDA     byte_A1
                SEC
                SBC     #$10
                STA     byte_A1
                LDA     byte_A3
                EOR     #1
                STA     byte_A3
                CLC
                ADC     #2
                STA     byte_A5
                ADC     #2
                STA     byte_A7
                JMP     loc_D120
; ---------------------------------------------------------------------------

loc_D1F9:                               ; CODE XREF: sub_D0C4+107↑j
                LDX     byte_AF
                BEQ     locret_D21B
                CLC
                LDA     byte_A1
                ADC     #$10
                STA     byte_A1
                CLC
                TXA
                ADC     byte_AC
                STA     byte_AC
                BCC     loc_D215
                LDA     #0
                ADC     byte_AD
                STA     byte_AD
                JMP     loc_D120
; ---------------------------------------------------------------------------

loc_D215:                               ; CODE XREF: sub_D0C4+110↑j
                                        ; sub_D0C4+146↑j
                JMP     loc_D18F
; ---------------------------------------------------------------------------

loc_D218:                               ; CODE XREF: sub_D0C4+11A↑j
                JMP     loc_D120
; ---------------------------------------------------------------------------

locret_D21B:                            ; CODE XREF: sub_D0C4+103↑j
                                        ; sub_D0C4+137↑j
                RTS
; END OF FUNCTION CHUNK FOR sub_D0C4

; =============== S U B R O U T I N E =======================================


sub_D21C:                               ; CODE XREF: sub_CC2B+5D↑p
                                        ; sub_D21C+2↓j
                LDA     NMIFlags
                BNE     sub_D21C
                LDA     byte_A0
                BMI     loc_D22F
                AND     #7
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     $D28B,X
                BPL     loc_D23F

loc_D22F:                               ; CODE XREF: sub_D21C+6↑j
                                        ; sub_D232+6↓j
                LDX     #0
                RTS
; End of function sub_D21C


; =============== S U B R O U T I N E =======================================


sub_D232:                               ; CODE XREF: sub_CC2B+22↑p
                                        ; sub_CC2B+38↑p ...
                LDA     NMIFlags
                BNE     sub_D232
                LDA     byte_A0
                BMI     loc_D22F
                AND     #7
                ASL     A
                ASL     A
                ASL     A

loc_D23F:                               ; CODE XREF: sub_D21C+11↑j
                TAX
                CLC
                LDA     byte_18
                AND     #$C0
                ADC     $D284,X
                STA     byte_AA
                LDA     byte_19
                ADC     $D285,X
                STA     byte_AB
                CLC
                LDA     byte_1A
                AND     #$C0
                ADC     $D286,X
                STA     byte_AC
                LDA     byte_1B
                ADC     $D287,X
                STA     byte_AD
                CLC
                LDA     $D288,X
                ADC     byte_1D
                BCS     loc_D26C
                ADC     #$F0

loc_D26C:                               ; CODE XREF: sub_D232+36↑j
                STA     byte_99
                LDA     $D28A,X
                BMI     loc_D281
                EOR     byte_99
                AND     #$10
                BNE     loc_D27C
                LDA     $D289,X

loc_D27C:                               ; CODE XREF: sub_D232+45↑j
                STA     byte_93
                JMP     sub_D2C4
; ---------------------------------------------------------------------------

loc_D281:                               ; CODE XREF: sub_D232+3F↑j
                JMP     sub_D398
; End of function sub_D232

; ---------------------------------------------------------------------------
                .BYTE 0, 0, 0, 0, $10, $F0, $10, $88, 0, 0, 0, 0, $10
                .BYTE $F0, $10, $10, 0, 4, 0, 0, $10, 0, $FF, $88, 0, 0
                .BYTE $80, 3, $F0, $20, 0, $10, 0, 0, $80, 3, $F0, $20
                .BYTE 0, $88, 0, 0, $80, 3, $F0, $20, 0, $30, 0, 0, 0
                .BYTE 0, $10, 0, $FF, $88, 0, 0, 0, 0, $10, $F0, $10, $30

; =============== S U B R O U T I N E =======================================


sub_D2C4:                               ; CODE XREF: sub_CFAC+54↑p
                                        ; sub_D232+4C↑j
                JSR     sub_D4B7
                LDA     #$11
                STA     byte_91
                LDX     #0

loc_D2CD:                               ; CODE XREF: sub_D2C4+8E↓j
                LDA     #5
                STA     NMI_ID,X
                STA     $42A,X
                INX
                LDA     byte_91
                ASL     A
                STA     NMI_ID,X
                STA     $42A,X
                INX
                LDA     CHRBankD
                STA     NMI_ID,X
                STA     $42A,X
                INX
                LDA     CHRBankC
                STA     NMI_ID,X
                ORA     #$20 ; ' '
                STA     $42A,X
                INX

loc_D2F4:                               ; CODE XREF: sub_D2C4+69↓j
                JSR     sub_D537
                LDY     #0
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     NMI_ID,X
                INY
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     $401,X
                INY
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     $42A,X
                INY
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     $42B,X
                INX
                INX
                DEC     byte_91
                BEQ     loc_D355
                INC     byte_A1
                LDA     byte_A1
                BIT     byte_D47F
                BNE     loc_D2F4
                SEC
                SBC     #$10
                STA     byte_A1
                LDA     byte_A3
                EOR     #1
                STA     byte_A3
                LDA     CHRBankC
                AND     #$E0
                STA     CHRBankC
                LDA     CHRBankD
                EOR     #4
                STA     CHRBankD
                SEC
                LDA     #$11
                SBC     byte_91
                ASL     A
                STA     num_of_chr
                STA     BankPPU_X800B
                JMP     loc_D2CD
; ---------------------------------------------------------------------------

loc_D355:                               ; CODE XREF: sub_D2C4+60↑j
                LDA     #9
                STA     byte_91
                LDX     #$54 ; 'T'
                LDA     #7
                STA     NMI_ID,X
                INX
                LDA     byte_91
                STA     NMI_ID,X
                INX

loc_D367:                               ; CODE XREF: sub_D2C4+B6↓j
                                        ; sub_D2C4+D0↓j
                JSR     sub_D480
                DEC     byte_91
                BEQ     locret_D397
                INC     CHRBankE
                CLC
                LDA     byte_92
                ADC     #2
                STA     byte_92
                BIT     byte_D47F
                BNE     loc_D367
                SEC
                SBC     #$10
                STA     byte_92
                LDA     byte_A5
                EOR     #1
                STA     byte_A5
                SEC
                LDA     CHRBankE
                SBC     #8
                STA     CHRBankE
                LDA     CHRBankF
                EOR     #4
                STA     CHRBankF
                JMP     loc_D367
; ---------------------------------------------------------------------------

locret_D397:                            ; CODE XREF: sub_D2C4+A8↑j
                RTS
; End of function sub_D2C4


; =============== S U B R O U T I N E =======================================


sub_D398:                               ; CODE XREF: sub_D232:loc_D281↑j
                JSR     sub_D4B7
                SEC
                LDA     #$F0
                SBC     byte_99
                CLC
                ADC     byte_A1
                STA     byte_A1
                LDA     #$F
                STA     byte_91
                LDX     #0
                LDA     #6
                STA     NMI_ID,X
                STA     $422,X
                INX
                LDA     byte_91
                ASL     A
                STA     NMI_ID,X
                STA     $422,X
                INX
                LDA     CHRBankD
                AND     #$FC
                STA     NMI_ID,X
                STA     $422,X
                INX
                LDA     CHRBankC
                AND     #$1E
                STA     NMI_ID,X
                ORA     #1
                STA     $422,X
                INX
                LDA     byte_99
                STA     CHRBankC

loc_D3DA:                               ; CODE XREF: sub_D398+8A↓j
                LDA     CHRBankC
                SEC
                SBC     #$10
                STA     CHRBankC
                BCS     loc_D3E9
                LDA     byte_A1
                ADC     #$10
                STA     byte_A1

loc_D3E9:                               ; CODE XREF: sub_D398+49↑j
                JSR     sub_D537
                LDY     #0
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     NMI_ID,X
                INY
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     $422,X
                INY
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     $401,X
                INY
                LDA     ($88),Y
                AND     #$3F ; '?'
                EOR     byte_97
                STA     $423,X
                INX
                INX
                DEC     byte_91
                BEQ     loc_D425
                CLC
                LDA     byte_A1
                ADC     #$10
                STA     byte_A1
                JMP     loc_D3DA
; ---------------------------------------------------------------------------

loc_D425:                               ; CODE XREF: sub_D398+81↑j
                LDA     #8
                STA     byte_91
                LDX     #$44 ; 'D'
                LDA     #7
                STA     NMI_ID,X
                INX
                LDA     byte_91
                STA     NMI_ID,X
                INX
                LDA     byte_99
                AND     #$10
                BEQ     loc_D455
                SEC
                LDA     byte_92
                PHA
                SBC     #$10
                STA     byte_92
                LDA     #$20 ; ' '
                STA     byte_93
                JSR     sub_D480
                PLA
                STA     byte_92
                LDA     #$10
                STA     byte_93
                BNE     loc_D45C

loc_D455:                               ; CODE XREF: sub_D398+A3↑j
                LDA     #$10
                STA     byte_93

loc_D459:                               ; CODE XREF: sub_D398+D6↓j
                                        ; sub_D398+E3↓j
                JSR     sub_D480

loc_D45C:                               ; CODE XREF: sub_D398+BB↑j
                DEC     byte_91
                BEQ     locret_D47E
                CLC
                LDA     byte_92
                ADC     #$20 ; ' '
                STA     byte_92
                CLC
                LDA     CHRBankE
                ADC     #8
                STA     CHRBankE
                BCC     loc_D459
                SBC     #$40 ; '@'
                STA     CHRBankE
                SEC
                LDA     byte_92
                SBC     #$10
                STA     byte_92
                JMP     loc_D459
; ---------------------------------------------------------------------------

locret_D47E:                            ; CODE XREF: sub_D398+C6↑j
                RTS
; End of function sub_D398

; ---------------------------------------------------------------------------
byte_D47F:      .BYTE $F                ; DATA XREF: sub_D2C4+66↑r
                                        ; sub_D2C4+B3↑r

; =============== S U B R O U T I N E =======================================


sub_D480:                               ; CODE XREF: sub_D2C4:loc_D367↑p
                                        ; sub_D398+B1↑p ...
                LDA     CHRBankF
                STA     NMI_ID,X
                INX
                LDA     CHRBankE
                STA     NMI_ID,X
                INX
                LDY     byte_92
                LDA     ($A4),Y
                AND     #3
                STA     byte_90
                INY
                LDA     ($A4),Y
                AND     #$C
                ORA     byte_90
                STA     byte_90
                CLC
                LDA     byte_92
                ADC     byte_93
                TAY
                LDA     ($A4),Y
                AND     #$30 ; '0'
                ORA     byte_90
                STA     byte_90
                INY
                LDA     ($A4),Y
                AND     #$C0
                ORA     byte_90
                STA     NMI_ID,X
                INX
                RTS
; End of function sub_D480


; =============== S U B R O U T I N E =======================================


sub_D4B7:                               ; CODE XREF: sub_D2C4↑p
                                        ; sub_D398↑p
                LDA     byte_10
                LSR     A
                ORA     #1
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     byte_12
                LSR     A
                ORA     #1
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JSR     sub_D55D
                LDA     byte_AB
                AND     #7
                STA     byte_9A
                LDA     byte_AA
                LSR     byte_9A
                ROR     A
                LSR     byte_9A
                ROR     A
                STA     byte_98
                LDA     byte_99
                EOR     byte_A1
                AND     #$10
                BNE     loc_D4ED
                LDA     byte_A1
                AND     #$EE
                JMP     loc_D4F6
; ---------------------------------------------------------------------------

loc_D4ED:                               ; CODE XREF: sub_D4B7+2D↑j
                SEC
                LDA     byte_A1
                SBC     #$10
                ORA     #$10
                AND     #$FE

loc_D4F6:                               ; CODE XREF: sub_D4B7+33↑j
                BIT     byte_93
                BPL     loc_D501
                LDX     #$20 ; ' '
                STX     byte_93
                SEC
                SBC     #$10

loc_D501:                               ; CODE XREF: sub_D4B7+41↑j
                STA     byte_92
                LDA     byte_99
                AND     #$F0
                STA     CHRBankC
                LDA     byte_9A
                ASL     CHRBankC
                ROL     A
                ASL     CHRBankC
                ROL     A
                ORA     #$20 ; ' '
                STA     CHRBankD
                ORA     #3
                STA     CHRBankF
                LDA     byte_98
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                ORA     CHRBankC
                STA     CHRBankC
                LSR     A
                LSR     A
                AND     #7
                STA     CHRBankE
                LDA     byte_99
                LSR     A
                LSR     A
                AND     #$38 ; '8'
                ORA     #$C0
                ORA     CHRBankE
                STA     CHRBankE
                RTS
; End of function sub_D4B7


; =============== S U B R O U T I N E =======================================


sub_D537:                               ; CODE XREF: sub_D2C4:loc_D2F4↑p
                                        ; sub_D398:loc_D3E9↑p
                LDY     byte_A1
                LDA     ($A2),Y
                AND     #$80
                LSR     A
                STA     byte_97
                LSR     A
                STA     byte_96
                BEQ     loc_D547+1
                LDA     byte_13

loc_D547:                               ; CODE XREF: sub_D537+C↑j
                BIT     CHRBank00+$9A5
                STA     CHRBank9
                LDA     ($A2),Y
                ASL     A
                ASL     A
                ROL     CHRBank9
                STA     CHRBank8
                LDA     CHRBank9
                ADC     #$90
                ADC     byte_96
                STA     CHRBank9
                RTS
; End of function sub_D537


; =============== S U B R O U T I N E =======================================


sub_D55D:                               ; CODE XREF: sub_D0C4:loc_D11D↑p
                                        ; sub_D4B7+14↑p ...
                LDA     byte_AB
                AND     #7
                STA     byte_A3
                LDA     byte_AA
                LSR     byte_A3
                ROR     A
                LSR     byte_A3
                ROR     A
                LSR     A
                LSR     A
                ORA     byte_AC
                STA     byte_A1
                LDA     byte_AD
                LSR     A
                ROR     byte_A1
                LSR     A
                ROR     byte_A1
                LDA     #0
                STA     byte_A2
                STA     byte_A4
                STA     byte_A6
                LDA     byte_A3
                CLC
                ADC     #$60 ; '`'
                STA     byte_A3
                ADC     #2
                STA     byte_A5
                ADC     #2
                STA     byte_A7
                RTS
; End of function sub_D55D


; =============== S U B R O U T I N E =======================================


sub_D591:                               ; CODE XREF: sub_D674+54↓p
                JSR     sub_D59D
                LDY     #0
                LDA     ($88),Y
                AND     #$3F ; '?'
                STA     byte_14
                RTS
; End of function sub_D591


; =============== S U B R O U T I N E =======================================


sub_D59D:                               ; CODE XREF: sub_D0C4:loc_D120↑p
                                        ; sub_D591↑p ...
                LDA     byte_AD
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                AND     #$E
                STA     byte_94
                ORA     #1
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     byte_AD
                LSR     A
                LSR     A
                AND     #7
                STA     CHRBank9
                LDA     byte_AB
                AND     #$FC
                CLC
                STA     CHRBank8
                LDA     CHRBank9
                ADC     #$B8
                STA     CHRBank9
                RTS
; End of function sub_D59D


; =============== S U B R O U T I N E =======================================


sub_D5C4:                               ; CODE XREF: sub_CEFC+53↑p
                                        ; sub_CFAC+85↑p ...
                CLC
                LDA     byte_19
                ADC     #2
                STA     byte_AB
                CLC
                LDA     byte_1A
                ADC     #$C0
                STA     byte_AC
                LDA     byte_1B
                ADC     #1
                STA     byte_AD
                JSR     sub_D59D
                LDY     #0
                LDA     ($88),Y
                AND     #$3F ; '?'
                CMP     byte_14
                BEQ     loc_D5F3
                LDA     byte_17
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                STA     byte_12
                AND     #3
                STA     byte_13
                RTS
; ---------------------------------------------------------------------------

loc_D5F3:                               ; CODE XREF: sub_D5C4+1F↑j
                LDA     byte_23
                BEQ     loc_D5FF
                BPL     loc_D60D
                AND     #$7F
                STA     byte_23
                BPL     loc_D612

loc_D5FF:                               ; CODE XREF: sub_D5C4+31↑j
                LDY     #1
                LDA     ($88),Y
                AND     #$3F ; '?'
                STA     byte_15
                TAX
                LDA     $D634,X
                BEQ     loc_D612

loc_D60D:                               ; CODE XREF: sub_D5C4+33↑j
                LDX     #1
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode

loc_D612:                               ; CODE XREF: sub_D5C4+39↑j
                                        ; sub_D5C4+47↑j
                LDY     #2
                LDA     ($88),Y
                AND     #$3F ; '?'
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                STA     byte_10
                AND     #3
                STA     byte_11
                INY
                LDA     ($88),Y
                AND     #$3F ; '?'
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                STA     byte_12
                AND     #3
                STA     byte_13
                RTS
; End of function sub_D5C4

; ---------------------------------------------------------------------------
                .BYTE 0, $68, $62, $62, $62, $62, $64, $62, $74, $64, $6A
                .BYTE $62, $66, $6C, $62, 0, 0, 0, 0, 0, $66, 0, $6A, $66
                .BYTE $62, $68, $64, $68, $6E, $66, $66, $66, $62, $62
                .BYTE $62, $66, $64, $6E, $62, $64, $66, $74, $6C, $66
                .BYTE 0, 0, $68, $6C, $72, 0, $66, 0, 0, 0, $6A, 0, $6C
                .BYTE $6E, $6C, $6E, $6C, $6E, $6E, 0

; =============== S U B R O U T I N E =======================================


sub_D674:                               ; CODE XREF: sub_CEFC↑p
                LDA     byte_20
                BPL     loc_D697
                AND     #$F
                STA     byte_3E
                LDA     byte_6784
                AND     #$C0
                STA     byte_AA
                LDA     byte_6785
                STA     byte_AB
                LDA     byte_6786
                AND     #$C0
                STA     byte_AC
                LDA     byte_6787
                STA     byte_AD
                JMP     loc_D6CB
; ---------------------------------------------------------------------------

loc_D697:                               ; CODE XREF: sub_D674+2↑j
                LDA     PointerTilePack06
                AND     #$3F ; '?'
                STA     byte_3E
                CLC
                LDA     PointerTilePack04
                AND     #$C0
                STA     byte_18
                ADC     #0
                STA     byte_AA
                LDA     PointerTilePack05
                STA     byte_19
                ADC     #2
                STA     byte_AB
                CLC
                LDA     PointerTilePack06
                AND     #$C0
                STA     byte_1A
                ADC     #$C0
                STA     byte_AC
                LDA     PointerTilePack07
                STA     byte_1B
                ADC     #1
                STA     byte_AD
                JSR     sub_D591

loc_D6CB:                               ; CODE XREF: sub_D674+20↑j
                JSR     sub_D55D
                JSR     sub_DD57
                JSR     sram_write_enable
                LDA     byte_23
                BNE     loc_D71B
                LDX     #0

loc_D6DA:                               ; CODE XREF: sub_D674+8E↓j
                LDA     $7408,X
                BEQ     loc_D6F2
                JSR     sub_D7DF
                LDY     #$19
                LDA     #$88
                STA     ($30),Y
                LDA     #$C
                CPX     #0
                BNE     loc_D6F2
                LDY     #$1C
                LDA     ($38),Y

loc_D6F2:                               ; CODE XREF: sub_D674+69↑j
                                        ; sub_D674+78↑j
                LDY     #0
                STA     ($30),Y
                LDA     byte_20
                AND     #$C0
                BEQ     loc_D73B
                JSR     sub_DD64
                INX
                CPX     #4
                BCC     loc_D6DA

loc_D704:                               ; CODE XREF: sub_D674:loc_D738↓j
                                        ; sub_D674+E2↓j
                LDA     PointerTilePack04
                AND     #$3F ; '?'
                BEQ     loc_D70E
                JSR     sub_FD28

loc_D70E:                               ; CODE XREF: sub_D674+95↑j
                LDA     #0
                STA     byte_20
                LDA     byte_22
                AND     #$CF
                STA     byte_22
                JMP     sram_read_enable
; ---------------------------------------------------------------------------

loc_D71B:                               ; CODE XREF: sub_D674+62↑j
                JSR     sub_D7E2
                LDY     #0
                LDA     ($30),Y
                AND     #$3F ; '?'
                CMP     #$D
                BNE     loc_D738
                JSR     sub_D884
                LDY     #$19
                LDA     byte_3E
                STA     ($30),Y
                EOR     #4
                STA     byte_3E
                JSR     sub_D7E2

loc_D738:                               ; CODE XREF: sub_D674+B2↑j
                JMP     loc_D704
; ---------------------------------------------------------------------------

loc_D73B:                               ; CODE XREF: sub_D674+86↑j
                                        ; sub_D674+E0↓j
                LDA     $7409,X
                BEQ     loc_D745
                JSR     sub_D768
                BCC     loc_D751

loc_D745:                               ; CODE XREF: sub_D674+CA↑j
                JSR     sub_DD64
                JSR     sram_write_enable
                LDY     #0
                LDA     #0
                STA     ($30),Y

loc_D751:                               ; CODE XREF: sub_D674+CF↑j
                INX
                CPX     #3
                BCC     loc_D73B
                JMP     loc_D704
; End of function sub_D674


; =============== S U B R O U T I N E =======================================


sub_D759:
                PHA
                LDX     #0

loc_D75C:                               ; CODE XREF: sub_D759+B↓j
                LDA     $7409,X
                BEQ     loc_D769
                INX
                CPX     #3
                BCC     loc_D75C
                PLA
                RTS
; End of function sub_D759


; =============== S U B R O U T I N E =======================================


sub_D768:                               ; CODE XREF: sub_D674+CC↑p
                PHA

loc_D769:                               ; CODE XREF: sub_D759+6↑j
                TXA
                PHA
                JSR     sub_D86C
                JSR     sub_D884
                JSR     sram_write_enable
                PLA
                TAX
                PLA
                STA     $7409,X
                JSR     sub_D7DF
                LDY     #$19
                LDA     byte_3E
                STA     ($30),Y
                LDY     #0
                LDA     #$C
                STA     ($30),Y
                CLC
                JMP     sram_read_enable
; End of function sub_D768


; =============== S U B R O U T I N E =======================================


sub_D78D:                               ; CODE XREF: sub_D8C9+2↓p
                                        ; sub_D8C9+7↓j ...
                LDX     #0

loc_D78F:                               ; CODE XREF: sub_D78D+A↓j
                CMP     $7408,X
                BEQ     loc_D79A
                INX
                CPX     #4
                BCC     loc_D78F
                RTS
; ---------------------------------------------------------------------------

loc_D79A:                               ; CODE XREF: sub_D78D+5↑j
                JSR     sram_write_enable

loc_D79D:                               ; CODE XREF: sub_D78D+1D↓j
                CPX     #3
                BCS     loc_D7AC
                LDA     $7409,X
                BEQ     loc_D7AE
                STA     $7408,X
                INX
                BCC     loc_D79D

loc_D7AC:                               ; CODE XREF: sub_D78D+12↑j
                LDA     #0

loc_D7AE:                               ; CODE XREF: sub_D78D+17↑j
                STA     $7408,X
                TXA
                JSR     sub_D86C
                JSR     sub_DFBF
                JSR     sub_DD57
                LDX     #0

loc_D7BD:                               ; CODE XREF: sub_D78D+4C↓j
                LDA     $7408,X
                BEQ     loc_D7CF
                JSR     sub_D813
                LDA     #$C
                CPX     #0
                BNE     loc_D7CF
                LDY     #$1C
                LDA     ($38),Y

loc_D7CF:                               ; CODE XREF: sub_D78D+33↑j
                                        ; sub_D78D+3C↑j
                LDY     #0
                STA     ($30),Y
                JSR     sub_DD64
                INX
                CPX     #4
                BCC     loc_D7BD
                CLC
                JMP     sram_read_enable
; End of function sub_D78D


; =============== S U B R O U T I N E =======================================


sub_D7DF:                               ; CODE XREF: sub_D674+6B↑p
                                        ; sub_D768+12↑p
                JSR     sub_D813
; End of function sub_D7DF


; =============== S U B R O U T I N E =======================================


sub_D7E2:                               ; CODE XREF: sub_D674:loc_D71B↑p
                                        ; sub_D674+C1↑p
                LDY     #4
                LDA     byte_AA
                STA     ($30),Y
                INY
                LDA     byte_AB
                STA     ($30),Y
                LDY     #6
                LDA     byte_AC
                STA     ($30),Y
                INY
                LDA     byte_AD
                STA     ($30),Y
                LDY     #$11
                LDA     byte_A1
                STA     ($30),Y
                INY
                LDA     byte_A6
                STA     ($30),Y
                INY
                LDA     byte_A7
                STA     ($30),Y
                LDA     byte_3E
                LDY     #$15
                STA     ($30),Y
                LDY     #$1D
                STA     ($30),Y
                RTS
; End of function sub_D7E2


; =============== S U B R O U T I N E =======================================


sub_D813:                               ; CODE XREF: sub_D78D+35↑p
                                        ; sub_D7DF↑p
                LDY     #2
                AND     #7
                STA     byte_39
                LDA     #0
                LSR     byte_39
                ROR     A
                LSR     byte_39
                ROR     A
                STA     byte_38
                STA     ($30),Y
                INY
                LDA     byte_39
                ADC     #$74 ; 't'
                STA     byte_39
                STA     ($30),Y
                LDY     #$1D
                LDA     ($38),Y
                LDY     #$14
                PHA
                AND     #$F0
                STA     ($30),Y
                LDY     #8
                PLA
                AND     #$F
                STA     ($30),Y
; End of function sub_D813


; =============== S U B R O U T I N E =======================================


sub_D840:                               ; CODE XREF: sub_D8D3+24↓p
                LDY     #$1E
                LDA     ($38),Y
                LDY     #$16
                STA     ($30),Y
                LDY     #$1F
                LDA     ($38),Y
                LDY     #$17
                STA     ($30),Y
                CLC
                LDY     #1
                LDA     ($38),Y
                BPL     locret_D86B
                AND     #$80
                STA     ($38),Y
                LDY     #$16
                LDA     ($30),Y
                ADC     #$A0
                STA     ($30),Y
                INY
                LDA     ($30),Y
                ADC     #0
                STA     ($30),Y
                SEC

locret_D86B:                            ; CODE XREF: sub_D840+15↑j
                RTS
; End of function sub_D840


; =============== S U B R O U T I N E =======================================


sub_D86C:                               ; CODE XREF: sub_D768+3↑p
                                        ; sub_D78D+25↑p ...
                STA     byte_31
                LDA     #0
                LSR     byte_31
                ROR     A
                LSR     byte_31
                ROR     A
                LSR     byte_31
                ROR     A
                ADC     #$80
                STA     byte_30
                LDA     byte_31
                ADC     #$67 ; 'g'
                STA     byte_31
                RTS
; End of function sub_D86C


; =============== S U B R O U T I N E =======================================


sub_D884:                               ; CODE XREF: sub_D674+B4↑p
                                        ; sub_D768+6↑p
                LDY     #$15
                LDA     ($30),Y
                STA     byte_3E
                EOR     #4
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDY     #4
                CLC
                LDA     $EBED,X
                ADC     ($30),Y
                STA     byte_AA
                INY
                LDA     $EBEE,X
                ADC     ($30),Y
                STA     byte_AB
                LDY     #6
                CLC
                LDA     $EBEF,X
                ADC     ($30),Y
                STA     byte_AC
                INY
                LDA     $EBF0,X
                ADC     ($30),Y
                STA     byte_AD
                JSR     sub_D55D
                JMP     sub_DD64
; End of function sub_D884


; =============== S U B R O U T I N E =======================================


sub_D8BA:                               ; CODE XREF: sub_D8D3+1E↓p
                                        ; sub_D977+17↓p ...
                JSR     sub_D86C
                LDY     #2
                LDA     ($30),Y
                STA     byte_38
                INY
                LDA     ($30),Y
                STA     byte_39
                RTS
; End of function sub_D8BA


; =============== S U B R O U T I N E =======================================


sub_D8C9:                               ; CODE XREF: sub_CCB1+A6↑p
                                        ; sub_D8D3:loc_D90E↓p
                LDA     #7
                JSR     sub_D78D
                LDA     #6
                JMP     sub_D78D
; End of function sub_D8C9


; =============== S U B R O U T I N E =======================================


sub_D8D3:                               ; CODE XREF: sub_ECA3+A↓p
                LDA     PointerTilePack+181
                BPL     loc_D8DD
                LDA     #6
                JSR     sub_D78D

loc_D8DD:                               ; CODE XREF: sub_D8D3+3↑j
                LDA     PointerTilePack+1C1
                BPL     loc_D8E7
                LDA     #7
                JSR     sub_D78D

loc_D8E7:                               ; CODE XREF: sub_D8D3+D↑j
                LDX     #0
                STX     ItemCount

loc_D8EB:                               ; CODE XREF: sub_D8D3+31↓j
                JSR     sub_D9F1
                BCS     loc_D906
                TXA
                JSR     sub_D8BA
                JSR     sram_write_enable
                JSR     sub_D840
                BCS     loc_D8FE
                INC     ItemCount

loc_D8FE:                               ; CODE XREF: sub_D8D3+27↑j
                JSR     sram_read_enable
                INX
                CPX     #4
                BCC     loc_D8EB

loc_D906:                               ; CODE XREF: sub_D8D3+1B↑j
                STX     SaveNum
                LDA     ItemCount
                BEQ     loc_D90E
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_D90E:                               ; CODE XREF: sub_D8D3+37↑j
                JSR     sub_D8C9
                JSR     sram_write_enable
                LDA     #0
                STA     PointerTilePack41
                STA     PointerTilePack56
                STA     PointerTilePack57
                LDA     PointerTilePack43
                STA     PointerTilePack54
                LDA     PointerTilePack44
                STA     PointerTilePack55
                LDA     PointerTilePack10
                LSR     PointerTilePack11
                ROR     A
                ADC     #0
                STA     PointerTilePack10
                LDA     PointerTilePack11
                ADC     #0
                STA     PointerTilePack11
                LDA     #1
                STA     ItemCount
                LDA     #0
                STA     byte_21
                STA     byte_23
                LDX     byte_47
                LDY     $D96B,X
                LDX     #3

loc_D950:                               ; CODE XREF: sub_D8D3+85↓j
                LDA     $D96F,Y
                STA     $7404,X
                DEY
                DEX
                BPL     loc_D950
                LDA     PointerTilePack06
                AND     #$F
                ORA     #$20 ; ' '
                STA     byte_20
                EOR     #$60 ; '`'
                STA     byte_22
                SEC
                JMP     sram_read_enable
; End of function sub_D8D3

; ---------------------------------------------------------------------------
                .BYTE 3, 3, 3, 7
                .BYTE $5C, $DF, 0, $24, $8B, $DF, $40, $DB

; =============== S U B R O U T I N E =======================================


sub_D977:                               ; CODE XREF: sub_ECA3+14↓p
                DEC     SaveNum
                BMI     locret_D997
                BEQ     locret_D997

loc_D97D:                               ; CODE XREF: sub_D977+10↓j
                LDA     PointerTilePack08
                CMP     #1
                BEQ     loc_D98C
                JSR     sub_D998
                BCS     loc_D97D

loc_D989:                               ; CODE XREF: sub_D977+1E↓j
                JSR     sub_D998

loc_D98C:                               ; CODE XREF: sub_D977+B↑j
                LDA     #0
                JSR     sub_D8BA
                LDY     #1
                LDA     ($38),Y
                BMI     loc_D989

locret_D997:                            ; CODE XREF: sub_D977+2↑j
                                        ; sub_D977+4↑j
                RTS
; End of function sub_D977


; =============== S U B R O U T I N E =======================================


sub_D998:                               ; CODE XREF: sub_D977+D↑p
                                        ; sub_D977:loc_D989↑p
                JSR     sram_write_enable
                LDX     #0
                STX     ItemCount

loc_D99F:                               ; CODE XREF: sub_D998+41↓j
                LDA     $7408,X
                PHA
                LDA     $7409,X
                STA     $7408,X
                PLA
                STA     $7409,X
                LDA     #2
                JSR     sub_D9DE
                LDA     #3
                JSR     sub_D9DE
                LDA     #8

loc_D9B9:                               ; CODE XREF: sub_D998+2B↓j
                PHA
                JSR     sub_D9DE
                PLA
                CLC
                ADC     #1
                CMP     #$11
                BCC     loc_D9B9
                LDA     #$16
                JSR     sub_D9DE
                LDA     #$17
                JSR     sub_D9DE
                CLC
                LDA     ItemCount
                ADC     #$20 ; ' '
                STA     ItemCount
                INX
                CPX     SaveNum
                BCC     loc_D99F
                JMP     sram_read_enable
; End of function sub_D998


; =============== S U B R O U T I N E =======================================


sub_D9DE:                               ; CODE XREF: sub_D998+17↑p
                                        ; sub_D998+1C↑p ...
                CLC
                ADC     ItemCount
                TAY
                LDA     $6780,Y
                PHA
                LDA     $67A0,Y
                STA     $6780,Y
                PLA
                STA     $67A0,Y
                RTS
; End of function sub_D9DE


; =============== S U B R O U T I N E =======================================


sub_D9F1:                               ; CODE XREF: sub_D8D3:loc_D8EB↑p
                                        ; sub_DA16:loc_DA1E↓p ...
                SEC
                LDA     $7408,X
                BEQ     locret_D9F9
                CMP     #6

locret_D9F9:                            ; CODE XREF: sub_D9F1+4↑j
                RTS
; End of function sub_D9F1


; =============== S U B R O U T I N E =======================================


sub_D9FA:                               ; CODE XREF: sub_CCB1+95↑p
                                        ; sub_EA38+7B↓p
                LDX     #0

loc_D9FC:                               ; CODE XREF: sub_D9FA+19↓j
                LDA     $7408,X
                BEQ     loc_DA10
                JSR     sub_C665
                LDY     #$2C ; ','

loc_DA06:                               ; CODE XREF: sub_D9FA+14↓j
                LDA     $73D8,Y
                STA     (Pointer),Y
                INY
                CPY     #$30 ; '0'
                BCC     loc_DA06

loc_DA10:                               ; CODE XREF: sub_D9FA+5↑j
                INX
                CPX     #4
                BCC     loc_D9FC
                RTS
; End of function sub_D9FA


; =============== S U B R O U T I N E =======================================


sub_DA16:                               ; CODE XREF: sub_CCB1+5↑p
                JSR     wait_nmi_processed
                JSR     sub_FDC0
                LDX     #0

loc_DA1E:                               ; CODE XREF: sub_DA16+29↓j
                JSR     sub_D9F1
                BCS     loc_DA3C
                TXA
                JSR     sub_D8BA
                LDY     #1
                LDA     ($38),Y
                BMI     loc_DA3C
                LDY     #$10
                LDA     ($30),Y
                TAY
                LDA     #$80
                STA     $306,Y
                LDA     #$81
                STA     $307,Y

loc_DA3C:                               ; CODE XREF: sub_DA16+B↑j
                                        ; sub_DA16+15↑j
                INX
                CPX     #4
                BCC     loc_DA1E
                LDA     #1
                STA     NMIFlags
                JMP     wait_nmi_processed
; End of function sub_DA16


; =============== S U B R O U T I N E =======================================


sub_DA48:                               ; CODE XREF: sub_ECA3+F↓p
                LDA     ItemCount
                STA     pTileID
                LDA     byte_49
                STA     Pointer
                LDA     byte_4A
                STA     Pointer+1
                LDA     byte_4B
                STA     AddrForJmp
                JSR     sub_F13D
                LDA     pDist
                BEQ     loc_DA61
                LDA     #1

loc_DA61:                               ; CODE XREF: sub_DA48+15↑j
                CLC
                ADC     Pointer
                STA     byte_49
                LDA     #0
                ADC     Pointer+1
                STA     byte_4A
                LDA     #0
                ADC     AddrForJmp
                STA     byte_4B
                JSR     sram_write_enable
                LDX     #0

loc_DA77:                               ; CODE XREF: sub_DA48+98↓j
                JSR     sub_D9F1
                BCS     loc_DADD
                STA     byte_28
                TXA
                LSR     A
                ROR     A
                ROR     A
                ROR     A
                STA     byte_53
                TXA
                PHA
                JSR     sub_D8BA
                LDY     #1
                LDA     ($38),Y
                BMI     loc_DADB
                LDA     byte_47
                BNE     loc_DAD8
                LDY     #$11
                CLC
                LDA     byte_49
                ADC     ($38),Y
                STA     ($38),Y
                INY
                LDA     byte_4A
                ADC     ($38),Y
                STA     ($38),Y
                INY
                LDA     byte_4B
                ADC     ($38),Y
                STA     ($38),Y
                BCC     loc_DAB9
                LDY     #$11
                LDA     #$FF
                STA     ($38),Y
                INY
                STA     ($38),Y
                INY
                STA     ($38),Y

loc_DAB9:                               ; CODE XREF: sub_DA48+63↑j
                                        ; sub_DA48+8E↓j
                LDY     #$10
                LDA     ($38),Y
                JSR     sub_DB40
                LDY     #$11
                SEC
                LDA     ($38),Y
                SBC     pTileID
                INY
                LDA     ($38),Y
                SBC     pTileID+1
                INY
                LDA     ($38),Y
                SBC     byte_66
                BCC     loc_DAD8
                JSR     sub_DB6C
                BCC     loc_DAB9

loc_DAD8:                               ; CODE XREF: sub_DA48+4A↑j
                                        ; sub_DA48+89↑j
                JSR     sub_DC87

loc_DADB:                               ; CODE XREF: sub_DA48+46↑j
                PLA
                TAX

loc_DADD:                               ; CODE XREF: sub_DA48+32↑j
                INX
                CPX     #4
                BCC     loc_DA77
                JSR     sub_C43F
                LDA     byte_47
                BNE     loc_DB30
                JSR     sram_write_enable
                LDX     #$12
                JSR     sub_DC11
                LDX     #$15
                JSR     sub_DC11
                LDA     byte_48
                BEQ     loc_DB30
                STA     byte_29
                JSR     bank13_A000
                JSR     byte_BBC3
                LDA     #$FF
                STA     byte_2A
                LDA     byte_2B
                ORA     #$1F

loc_DB0A:                               ; CODE XREF: sub_DA48+C5↓j
                ASL     byte_2A
                ASL     A
                BCC     loc_DB0A
                JSR     sub_F1ED
                AND     byte_2A
                BNE     loc_DB30
                JSR     byte_BB8C
                LDX     #0

loc_DB1B:                               ; CODE XREF: sub_DA48+E6↓j
                JSR     sub_D9F1
                BCS     loc_DB2B
                STA     byte_28
                TXA
                PHA
                JSR     byte_A979
                PLA
                TAX
                BCC     loc_DB33

loc_DB2B:                               ; CODE XREF: sub_DA48+D6↑j
                INX
                CPX     #4
                BCC     loc_DB1B

loc_DB30:                               ; CODE XREF: sub_DA48+9F↑j
                                        ; sub_DA48+B0↑j ...
                JMP     sram_read_enable
; ---------------------------------------------------------------------------

loc_DB33:                               ; CODE XREF: sub_DA48+E1↑j
                JSR     bank17_A000
                LDA     #6
                STA     byte_7F1
                LDA     #$8C
                JMP     byte_A3F8
; End of function sub_DA48


; =============== S U B R O U T I N E =======================================


sub_DB40:                               ; CODE XREF: sub_DA48+75↑p
                TAX
                INX
                STX     pTileID
                INX
                STX     Pointer
                LDA     #0
                STA     Pointer+1
                STA     AddrForJmp
                JSR     sub_F109
                JSR     sub_F109
                JSR     sub_DCDF
                LDY     #0
                LDA     ($68),Y
                STA     pTileID
                JSR     sub_F109
                LDA     Pointer+1
                STA     pTileID
                LDA     AddrForJmp
                STA     pTileID+1
                LDA     AddrForJmp+1
                STA     byte_66
                RTS
; End of function sub_DB40


; =============== S U B R O U T I N E =======================================


sub_DB6C:                               ; CODE XREF: sub_DA48+8B↑p
                LDY     #$10
                LDA     ($38),Y
                CMP     #$63 ; 'c'
                BCC     loc_DB75
                RTS
; ---------------------------------------------------------------------------

loc_DB75:                               ; CODE XREF: sub_DB6C+6↑j
                ADC     #1
                STA     ($38),Y
                JSR     sub_C43F
                JSR     sram_write_enable
                LDA     #$FF
                JSR     sub_FD28
                LDA     #$1F
                JSR     sub_FD28
                LDA     #$82
                JSR     byte_A3F8
                JSR     sub_DCDF
                LDY     #3

loc_DB93:                               ; CODE XREF: sub_DB6C+3A↓j
                JSR     sub_F1ED
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                CLC
                ADC     ($68),Y
                LSR     A
                STA     $55,Y
                INY
                CPY     #8
                BCC     loc_DB93
                LDY     #$B

loc_DBAA:                               ; CODE XREF: sub_DB6C+64↓j
                CLC
                LDA     ($38),Y
                ADC     $4D,Y
                BCC     loc_DBBC
                SBC     $4D,Y
                EOR     #$FF
                STA     $4D,Y
                LDA     #$FF

loc_DBBC:                               ; CODE XREF: sub_DB6C+44↑j
                STA     ($38),Y
                LDA     $4D,Y
                BEQ     loc_DBCD
                TYA
                PHA
                CLC
                ADC     #$7B ; '{'
                JSR     byte_A3F8
                PLA
                TAY

loc_DBCD:                               ; CODE XREF: sub_DB6C+55↑j
                INY
                CPY     #$10
                BCC     loc_DBAA
                LDY     #7
                LDA     byte_58
                JSR     sub_DC64
                LDY     #9
                LDA     byte_59
                JSR     sub_DC64
                LDY     #$E
                LDA     ($38),Y
                STA     Pointer
                CLC
                ADC     #$14
                BCC     loc_DBED
                LDA     #$FF

loc_DBED:                               ; CODE XREF: sub_DB6C+7D↑j
                LDY     #3
                JSR     sub_DC3F
                LDA     #$84
                JSR     sub_DC38
                LDA     byte_28
                CMP     #3
                BCS     loc_DC0F
                LDY     #$F
                LDA     ($38),Y
                STA     Pointer
                LSR     A
                CLC
                LDY     #5
                JSR     sub_DC3F
                LDA     #$85
                JSR     sub_DC38

loc_DC0F:                               ; CODE XREF: sub_DB6C+8F↑j
                CLC
                RTS
; End of function sub_DB6C


; =============== S U B R O U T I N E =======================================


sub_DC11:                               ; CODE XREF: sub_DA48+A6↑p
                                        ; sub_DA48+AB↑p
                CLC
                LDA     byte_4C
                ADC     $7400,X
                STA     $7400,X
                LDA     byte_4D
                ADC     $7401,X
                STA     $7401,X
                LDA     #0
                ADC     $7402,X
                STA     $7402,X
                BCC     locret_DC37
                LDA     #$FF
                STA     $7400,X
                STA     $7401,X
                STA     $7402,X

locret_DC37:                            ; CODE XREF: sub_DC11+19↑j
                RTS
; End of function sub_DC11


; =============== S U B R O U T I N E =======================================


sub_DC38:                               ; CODE XREF: sub_DB6C+88↑p
                                        ; sub_DB6C+A0↑p
                LDX     byte_5D
                BEQ     locret_DC70
                JMP     byte_A3F8
; End of function sub_DC38


; =============== S U B R O U T I N E =======================================


sub_DC3F:                               ; CODE XREF: sub_DB6C+83↑p
                                        ; sub_DB6C+9B↑p
                CLC
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ROL     A
                STA     Pointer+1
                SEC
                LDA     Pointer
                SBC     ($38),Y
                TAX
                INY
                LDA     Pointer+1
                SBC     ($38),Y
                BEQ     loc_DC5C
                LDX     #8
                BCS     loc_DC5C
                LDX     #1

loc_DC5C:                               ; CODE XREF: sub_DC3F+15↑j
                                        ; sub_DC3F+19↑j
                DEY
                TXA
                ASL     A
                JSR     sub_DC71
                STA     byte_5D
; End of function sub_DC3F


; =============== S U B R O U T I N E =======================================


sub_DC64:                               ; CODE XREF: sub_DB6C+6A↑p
                                        ; sub_DB6C+71↑p
                CLC
                ADC     ($38),Y
                STA     ($38),Y
                INY
                LDA     #0
                ADC     ($38),Y
                STA     ($38),Y

locret_DC70:                            ; CODE XREF: sub_DC38+2↑j
                RTS
; End of function sub_DC64


; =============== S U B R O U T I N E =======================================


sub_DC71:                               ; CODE XREF: sub_DC3F+20↑p
                CMP     #$10
                BCC     loc_DC77
                LDA     #$10

loc_DC77:                               ; CODE XREF: sub_DC71+2↑j
                TAX
                JSR     sub_F1ED
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                JSR     multiply
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                RTS
; End of function sub_DC71


; =============== S U B R O U T I N E =======================================


sub_DC87:                               ; CODE XREF: sub_DA48:loc_DAD8↑p
                LDA     byte_21
                BNE     locret_DCCC
                JSR     sub_DCDF
                LDY     #2
                LDA     ($68),Y
                BEQ     locret_DCCC
                PHA
                LDX     #$C0

loc_DC97:                               ; CODE XREF: sub_DC87+42↓j
                STX     byte_29
                JSR     sub_DCE6
                PLA
                PHA
                TAY
                LDA     ($68),Y
                LDY     #$10
                CMP     ($38),Y
                BCS     loc_DCC6
                JSR     sub_DCCD
                AND     ($38),Y
                BNE     loc_DCC6
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_DCC6
                LDA     ($38),Y
                ORA     $EC5D,X
                STA     ($38),Y
                LDA     #9
                STA     byte_7F1
                LDA     #$83
                JSR     byte_A3F8

loc_DCC6:                               ; CODE XREF: sub_DC87+1E↑j
                                        ; sub_DC87+25↑j ...
                LDX     byte_29
                INX
                BNE     loc_DC97
                PLA

locret_DCCC:                            ; CODE XREF: sub_DC87+2↑j
                                        ; sub_DC87+B↑j
                RTS
; End of function sub_DC87


; =============== S U B R O U T I N E =======================================


sub_DCCD:                               ; CODE XREF: sub_DC87+20↑p
                LDA     byte_29
                CLC
                ADC     #$C0
                ROR     A
                LSR     A
                LSR     A
                TAY
                LDA     byte_29
                AND     #7
                TAX
                LDA     $EC5D,X
                RTS
; End of function sub_DCCD


; =============== S U B R O U T I N E =======================================


sub_DCDF:                               ; CODE XREF: sub_DB40+13↑p
                                        ; sub_DB6C+22↑p ...
                CLC
                LDA     byte_28
                ADC     #$B8
                BCC     loc_DCE8
; End of function sub_DCDF


; =============== S U B R O U T I N E =======================================


sub_DCE6:                               ; CODE XREF: sub_DC87+12↑p
                LDA     byte_29

loc_DCE8:                               ; CODE XREF: sub_DCDF+5↑j
                ASL     A
                ROL     byte_69
                ASL     A
                ROL     byte_69
                ASL     A
                ROL     byte_69
                CLC
                ADC     #0
                STA     pDist
                LDA     byte_69
                AND     #7
                ADC     #$98
                STA     byte_69
                JMP     sub_DE8B
; End of function sub_DCE6


; =============== S U B R O U T I N E =======================================


sub_DD01:                               ; CODE XREF: main+54↑p
                                        ; sub_CD8B+9↑p
                JSR     sub_DD57
                JSR     sram_write_enable

loc_DD07:                               ; CODE XREF: sub_DD01+2F↓j
                LDY     #0
                LDA     ($30),Y
                ASL     A
                BEQ     loc_DD2B
                JSR     sub_E1BE
                BCS     loc_DD1D
                LDY     #0
                LDA     ($30),Y
                ORA     #$80
                STA     ($30),Y
                BMI     loc_DD2B

loc_DD1D:                               ; CODE XREF: sub_DD01+10↑j
                LDY     #0
                LDA     ($30),Y
                AND     #$3F ; '?'
                STA     ($30),Y
                JSR     sub_E0F9
                JSR     sub_DEF9

loc_DD2B:                               ; CODE XREF: sub_DD01+B↑j
                                        ; sub_DD01+1A↑j
                JSR     sub_DD64
                INC     SaveNum
                BNE     loc_DD07
                LDA     byte_20
                BNE     loc_DD54
                LDA     byte_18
                AND     #$C0
                ORA     NTAddrC
                LDX     byte_19
                STA     PointerTilePack04
                STX     PointerTilePack05
                LDA     byte_1A
                AND     #$C0
                ORA     byte_6795
                LDX     byte_1B
                STA     PointerTilePack06
                STX     PointerTilePack07

loc_DD54:                               ; CODE XREF: sub_DD01+33↑j
                JMP     sram_read_enable
; End of function sub_DD01


; =============== S U B R O U T I N E =======================================


sub_DD57:                               ; CODE XREF: sub_D674+5A↑p
                                        ; sub_D78D+2B↑p ...
                LDA     #$80
                LDX     #$67 ; 'g'
                STA     byte_30
                STX     byte_31
                LDX     #$FC
                STX     SaveNum
                RTS
; End of function sub_DD57


; =============== S U B R O U T I N E =======================================


sub_DD64:                               ; CODE XREF: sub_D674+88↑p
                                        ; sub_D674:loc_D745↑p ...
                CLC
                LDA     byte_30
                ADC     #$20 ; ' '
                STA     byte_30
                LDA     byte_31
                ADC     #0
                STA     byte_31
                RTS
; End of function sub_DD64


; =============== S U B R O U T I N E =======================================


sub_DD72:                               ; CODE XREF: sub_CEFC+9D↑j
                JSR     sub_DE29
                JSR     sram_write_enable

loc_DD78:                               ; CODE XREF: sub_DD72+11↓j
                JSR     sub_DE4B
                JSR     sub_DD88
                JSR     sub_DE5C
                DEC     SaveNum
                BNE     loc_DD78
                JMP     sram_read_enable
; End of function sub_DD72


; =============== S U B R O U T I N E =======================================


sub_DD88:                               ; CODE XREF: sub_DD72+9↑p
                                        ; sub_DE99:loc_DEB6↓p
                LDY     #1
                LDA     byte_15
                STA     ($30),Y
                LDA     ItemCount
                BNE     loc_DD97

loc_DD92:                               ; CODE XREF: sub_DD88+15↓j
                LDY     #0
                STA     ($30),Y
                RTS
; ---------------------------------------------------------------------------

loc_DD97:                               ; CODE XREF: sub_DD88+8↑j
                LDY     #0
                LDA     ($32),Y
                AND     #$3F ; '?'
                BEQ     loc_DD92
                JSR     sub_DE13
                LDY     #2
                LDA     ($32),Y
                AND     #$3F ; '?'
                LDY     #$15
                STA     ($30),Y
                LDY     #4
                LDA     ($32),Y
                LDY     #$16
                STA     ($30),Y
                LDY     #5
                LDA     ($32),Y
                LDY     #$17
                STA     ($30),Y
                LDY     #0
                LDA     ($32),Y
                AND     #$C0
                LDY     #4
                STA     ($30),Y
                STA     byte_AA
                LDY     #1
                LDA     ($32),Y
                LDY     #5
                STA     ($30),Y
                STA     byte_AB
                LDY     #2
                LDA     ($32),Y
                AND     #$C0
                LDY     #6
                STA     ($30),Y
                STA     byte_AC
                LDY     #3
                LDA     ($32),Y
                LDY     #7
                STA     ($30),Y
                STA     byte_AD
                LDY     #2
                LDA     byte_32
                STA     ($30),Y
                INY
                LDA     byte_33
                STA     ($30),Y
                JSR     sub_D55D
                LDY     #$11
                LDA     byte_A1
                STA     ($30),Y
                INY
                LDA     byte_A6
                STA     ($30),Y
                INY
                LDA     byte_A7
                STA     ($30),Y
                LDY     #$18
                LDX     #8
                LDA     #0

loc_DE0C:                               ; CODE XREF: sub_DD88+88↓j
                STA     ($30),Y
                INY
                DEX
                BNE     loc_DE0C
                RTS
; End of function sub_DD88


; =============== S U B R O U T I N E =======================================


sub_DE13:                               ; CODE XREF: sub_DD88+17↑p
                                        ; sub_E82B+D↓p
                LDY     #0
                STA     ($30),Y
                ASL     A
                ASL     A
                TAX
                LDY     #8
                LDA     $E107,X
                STA     ($30),Y
                LDY     #$14
                LDA     $E108,X
                STA     ($30),Y
                RTS
; End of function sub_DE13


; =============== S U B R O U T I N E =======================================


sub_DE29:                               ; CODE XREF: sub_DD72↑p
                                        ; sub_DE99↓p
                LDA     byte_15
                JSR     sub_DE6C
                ASL     A
                TAX
                LDA     BANK_SELECT,X
                STA     byte_38
                LDA     BANK_DATA,X
                STA     byte_39
                LDA     #2
                STA     ItemCount
; End of function sub_DE29


; =============== S U B R O U T I N E =======================================


sub_DE3E:                               ; CODE XREF: sub_DE99+45↓p
                LDA     #0
                LDX     #$68 ; 'h'
                STA     byte_30
                STX     byte_31
                LDX     #$28 ; '('
                STX     SaveNum
                RTS
; End of function sub_DE3E


; =============== S U B R O U T I N E =======================================


sub_DE4B:                               ; CODE XREF: sub_DD72:loc_DD78↑p
                                        ; sub_DE99:loc_DE9F↓p
                LDY     #1
                LDA     ($38),Y
                BEQ     loc_DE59
                STA     byte_33
                DEY
                LDA     ($38),Y
                STA     byte_32
                RTS
; ---------------------------------------------------------------------------

loc_DE59:                               ; CODE XREF: sub_DE4B+4↑j
                STA     ItemCount
                RTS
; End of function sub_DE4B


; =============== S U B R O U T I N E =======================================


sub_DE5C:                               ; CODE XREF: sub_DD72+C↑p
                                        ; sub_DE99:loc_DED7↓p
                CLC
                LDA     byte_38
                ADC     ItemCount
                STA     byte_38
                LDA     byte_39
                ADC     #0
                STA     byte_39
                JMP     sub_DD64
; End of function sub_DE5C


; =============== S U B R O U T I N E =======================================


sub_DE6C:                               ; CODE XREF: sub_DE29+2↑p
                                        ; sub_E376+32↓p ...
                CMP     #$2B ; '+'
                BCC     loc_DE76
                LDX     #$12
                SBC     #$2B ; '+'
                BCS     loc_DE82

loc_DE76:                               ; CODE XREF: sub_DE6C+2↑j
                CMP     #$1A
                BCC     loc_DE80
                LDX     #$11
                SBC     #$1A
                BCS     loc_DE82

loc_DE80:                               ; CODE XREF: sub_DE6C+C↑j
                LDX     #$10

loc_DE82:                               ; CODE XREF: sub_DE6C+8↑j
                                        ; sub_DE6C+12↑j
                PHA
                TXA
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                RTS
; End of function sub_DE6C


; =============== S U B R O U T I N E =======================================


sub_DE8B:                               ; CODE XREF: sub_DCE6+18↑j
                LDX     #6
                LDA     #0
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_DE8B              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_DE92:
                LDX     #6
                LDA     #0
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_DE92              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_DE99:                               ; CODE XREF: main:loc_CB76↑p
                                        ; sub_CD8B+3↑p
                JSR     sub_DE29
                JSR     sram_write_enable

loc_DE9F:                               ; CODE XREF: sub_DE99+43↓j
                JSR     sub_DE4B
                LDY     #1
                LDA     ($30),Y
                CMP     byte_15
                BEQ     loc_DEB9
                LDY     #0
                LDA     ($30),Y
                ASL     A
                BEQ     loc_DEB6
                JSR     sub_E1BE
                BCS     loc_DECF

loc_DEB6:                               ; CODE XREF: sub_DE99+16↑j
                JSR     sub_DD88

loc_DEB9:                               ; CODE XREF: sub_DE99+F↑j
                LDY     #0
                LDA     ($30),Y
                ASL     A
                BEQ     loc_DED7
                JSR     sub_E1BE
                BCS     loc_DECF
                LDY     #0
                LDA     ($30),Y
                ORA     #$80
                STA     ($30),Y
                BMI     loc_DED7

loc_DECF:                               ; CODE XREF: sub_DE99+1B↑j
                                        ; sub_DE99+2A↑j
                LDY     #0
                LDA     ($30),Y
                AND     #$3F ; '?'
                STA     ($30),Y

loc_DED7:                               ; CODE XREF: sub_DE99+25↑j
                                        ; sub_DE99+34↑j
                JSR     sub_DE5C
                DEC     SaveNum
                BNE     loc_DE9F
                JSR     sub_DE3E

loc_DEE1:                               ; CODE XREF: sub_DE99+5B↓j
                LDY     #0
                LDA     ($30),Y
                BEQ     loc_DEEF
                BMI     loc_DEEF
                JSR     sub_E0F9
                JSR     sub_DEF9

loc_DEEF:                               ; CODE XREF: sub_DE99+4C↑j
                                        ; sub_DE99+4E↑j
                JSR     sub_DD64
                DEC     SaveNum
                BNE     loc_DEE1
                JMP     sram_read_enable
; End of function sub_DE99


; =============== S U B R O U T I N E =======================================


sub_DEF9:                               ; CODE XREF: sub_DD01+27↑p
                                        ; sub_DE99+53↑p
                LDY     #$11
                LDA     ($30),Y
                STA     byte_69
                INY
                LDA     ($30),Y
                STA     byte_6A
                INY
                LDA     ($30),Y
                STA     byte_6B
                LDY     #0
                LDA     ($30),Y
                BPL     loc_DF12
                JMP     loc_DFAF
; ---------------------------------------------------------------------------

loc_DF12:                               ; CODE XREF: sub_DEF9+14↑j
                CLC
                LDA     byte_18
                ADC     #$60 ; '`'
                STA     Pointer
                LDA     byte_19
                ADC     #0
                STA     Pointer+1
                SEC
                LDY     #4
                LDA     ($30),Y
                SBC     Pointer
                STA     Pointer
                INY
                LDA     ($30),Y
                SBC     Pointer+1
                STA     Pointer+1
                CLC
                LDA     byte_1A
                ADC     #$A4
                STA     pTileID
                LDA     byte_1B
                ADC     #0
                STA     pTileID+1
                SEC
                LDY     #6
                LDA     ($30),Y
                SBC     pTileID
                STA     pTileID
                INY
                LDA     ($30),Y
                SBC     pTileID+1
                STA     pTileID+1
                LDY     #8
                LDA     Pointer+1
                AND     #4
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     ($30),Y
                STA     ($30),Y
                INY
                LDA     pTileID+1
                AND     #4
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     ($30),Y
                STA     ($30),Y
                INY
                LDA     Pointer
                LSR     Pointer+1
                ROR     A
                LSR     Pointer+1
                ROR     A
                STA     ($30),Y
                INY
                LDA     pTileID
                LSR     pTileID+1
                ROR     A
                LSR     pTileID+1
                ROR     A
                STA     ($30),Y
                LDA     byte_3E
                BMI     loc_DFB8
                LDY     #4
                LDA     byte_3A
                STA     ($30),Y
                INY
                LDA     byte_3B
                STA     ($30),Y
                LDY     #6
                LDA     byte_3C
                STA     ($30),Y
                INY
                LDA     byte_3D
                STA     ($30),Y
                LDY     #$11
                LDA     byte_A1
                STA     ($30),Y
                INY
                LDA     byte_A6
                STA     ($30),Y
                INY
                LDA     byte_A7
                STA     ($30),Y
                LDY     byte_A1
                LDA     SaveNum
                STA     ($A6),Y

loc_DFAF:                               ; CODE XREF: sub_DEF9+16↑j
                LDY     byte_69
                LDA     SaveNum
                EOR     ($6A),Y
                BEQ     loc_DFBC
                RTS
; ---------------------------------------------------------------------------

loc_DFB8:                               ; CODE XREF: sub_DEF9+88↑j
                LDY     byte_69
                LDA     SaveNum

loc_DFBC:                               ; CODE XREF: sub_DEF9+BC↑j
                STA     ($6A),Y
                RTS
; End of function sub_DEF9


; =============== S U B R O U T I N E =======================================


sub_DFBF:                               ; CODE XREF: sub_D78D+28↑p
                LDY     #$11
                LDA     ($30),Y
                STA     byte_A1
                INY
                LDA     ($30),Y
                STA     byte_A6
                INY
                LDA     ($30),Y
                STA     byte_A7
                LDA     #0
                LDY     byte_A1
                STA     ($A6),Y
                LDY     #0
                STA     ($30),Y
                RTS
; End of function sub_DFBF


; =============== S U B R O U T I N E =======================================


sub_DFDA:                               ; CODE XREF: main+57↑p
                                        ; sub_CD8B+C↑p
                LDA     PosX1F
                LSR     A
                LDA     #$80
                LDX     #$67 ; 'g'
                LDY     #$2C ; ','
                BCC     loc_DFEC
                LDA     #0
                LDX     #$68 ; 'h'
                LDY     #$28 ; '('

loc_DFEC:                               ; CODE XREF: sub_DFDA+A↑j
                STA     byte_30
                STX     byte_31
                STY     SaveNum
                LDA     #$18
                STA     byte_E3
                LDA     #0
                STA     byte_300
                LDX     #8
                JSR     sram_write_enable
; End of function sub_DFDA


; for bank 1F

; =============== S U B R O U T I N E =======================================


sub_E000:                               ; CODE XREF: sub_E000+54↓j
                LDY     #0
                LDA     ($30),Y
                BEQ     loc_E04F
                BMI     loc_E04F
                LDY     #8
                LDA     ($30),Y
                AND     #$3F ; '?'
                BEQ     loc_E04F
                LDY     #$14
                LDA     ($30),Y
                AND     #$10
                BEQ     loc_E01B
                TXA
                LDX     #0

loc_E01B:                               ; CODE XREF: sub_E000+16↑j
                STA     ItemCount
                LDY     #$10
                TXA
                STA     ($30),Y
                LDY     #8

loc_E024:                               ; CODE XREF: sub_E000+2D↓j
                LDA     ($30),Y
                STA     $300,X
                INX
                INY
                CPY     #$E
                BCC     loc_E024
                CLC
                LDA     $2FA,X
                AND     #$40 ; '@'
                BEQ     loc_E039
                LDA     #4

loc_E039:                               ; CODE XREF: sub_E000+35↑j
                ADC     ($30),Y
                STA     $300,X
                INX
                INY
                LDA     #0
                ADC     ($30),Y
                STA     $300,X
                INX
                BEQ     loc_E062
                LDA     ItemCount
                BEQ     loc_E04F
                TAX

loc_E04F:                               ; CODE XREF: sub_E000+4↑j
                                        ; sub_E000+6↑j ...
                JSR     sub_DD64
                DEC     SaveNum
                BNE     sub_E000

loc_E056:                               ; CODE XREF: sub_E000+60↓j
                LDA     #0
                STA     $300,X
                CLC
                TXA
                ADC     #8
                TAX
                BCC     loc_E056

loc_E062:                               ; CODE XREF: sub_E000+48↑j
                JMP     SRAMEnableRead
; End of function sub_E000


; =============== S U B R O U T I N E =======================================


sub_E065:                               ; CODE XREF: sub_CC2B+1D↑p
                                        ; sub_CC2B+53↑p
                LDX     #0

loc_E067:                               ; CODE XREF: sub_E065+1F↓j
                LDA     $300,X
                AND     #$40 ; '@'
                BEQ     loc_E07F
                SEC
                LDA     $306,X
                SBC     #4
                STA     $306,X
                LDA     $307,X
                SBC     #0
                STA     $307,X

loc_E07F:                               ; CODE XREF: sub_E065+7↑j
                CLC
                TXA
                ADC     #8
                TAX
                BCC     loc_E067
                RTS
; End of function sub_E065

; ---------------------------------------------------------------------------
                JSR     sub_DD57
                LDX     #4
                STX     SaveNum
                LDA     #0
                STA     AddrForJmp
                LDX     #8

loc_E094:                               ; CODE XREF: ROM:E0EF↓j
                LDY     #0
                LDA     ($30),Y
                BEQ     loc_E0E3
                BMI     loc_E0E3
                LDY     AddrForJmp
                LDA     (Pointer),Y
                STA     $302,X
                INY
                LDA     (Pointer),Y
                STA     $303,X
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                INY
                CLC
                LDA     (Pointer),Y
                LDY     #$16
                ADC     ($30),Y
                STA     $306,X
                INY
                LDA     #0
                ADC     ($30),Y
                STA     $307,X
                LDY     #8
                LDA     ($30),Y
                AND     #$3F ; '?'
                ASL     A
                ASL     AddrForJmp+1
                ROR     A
                STA     $300,X
                LDA     #$70 ; 'p'
                ASL     AddrForJmp+1
                ROR     A
                STA     $301,X
                LDA     #0
                STA     $304,X
                STA     $305,X
                CLC
                TXA
                ADC     #8
                TAX

loc_E0E3:                               ; CODE XREF: ROM:E098↑j
                                        ; ROM:E09A↑j
                CLC
                LDA     #4
                ADC     AddrForJmp
                STA     AddrForJmp
                JSR     sub_DD64
                DEC     SaveNum
                BNE     loc_E094
                RTS

; =============== S U B R O U T I N E =======================================


sub_E0F2:                               ; CODE XREF: sub_CEFC+2B↑p
                AND     #$3F ; '?'
                TAX
                LDA     $7400,X
                RTS
; End of function sub_E0F2


; =============== S U B R O U T I N E =======================================


sub_E0F9:                               ; CODE XREF: sub_DD01+24↑p
                                        ; sub_DE99+50↑p ...
                ASL     A
                ASL     A
                TAX
                LDA     $E106,X
                PHA
                LDA     $E105,X
                PHA
                RTS
; End of function sub_E0F9

; ---------------------------------------------------------------------------
                LDY     $E1,X
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
                DEC     OffsetNMI_ID
                DEY
                RRA     $E6,X
                BRK
; ---------------------------------------------------------------------------
                PHP
                LDY     $E1,X
                BRK
; ---------------------------------------------------------------------------
                LDY     $E1,X
                BRK
; ---------------------------------------------------------------------------
                ROL     $4E8,X
                LDX     byte_6B
                SBC     #4
                RTS
; ---------------------------------------------------------------------------
                .BYTE $39, $EB, 9, $20, $91, $EB, 9, $20, $DD, $E8, 9
                .BYTE $20, 4, $E9, 4, $60, $37, $EA, 9, $20, $C4, $EA
                .BYTE 9, $20, $C9, $EB, 4, $20, $F4, $E7, 4, $E6, $CC
                .BYTE $E7, 4, $E6, $BD, $E7, 4, $E6, $13, $E8, 4, $E6
                .BYTE 7, $E8, 4, $E6, $C6, $E7, 4, $E6, $B7, $E7, 4, $E6
                .BYTE $D, $E8, 4, $E6, $1F, $E7, 0, $C4, $1F, $E7, 4, $C6
                .BYTE $1F, $E7, 9, $46, $1F, $E7, 0, $44, $19, $E7, 0
                .BYTE $C4, $19, $E7, 4, $C6, $19, $E7, 9, $46, $19, $E7
                .BYTE 0, $44, $55, $E7, 4, $88, $F0, $E6, 4, $C6, $BD
                .BYTE $E7, 2, $E6, $1F, $E7, $A, $56, $1F, $E7, 4, $56
                .BYTE $1F, $E7, 8, $C6, $87, $E7, 4, $A6, $D8, $E6, 4
                .BYTE $C6, $D1, $E8, 9, $46, $60, $E6, 0, $45, $68, $E6
                .BYTE 0, $45, $F4, $E8, $A, $C6, $E7, $E8, 9, $46, $19
                .BYTE $E7, 4, $46, $60

; =============== S U B R O U T I N E =======================================


sub_E1BE:                               ; CODE XREF: sub_DD01+D↑p
                                        ; sub_DE99+18↑p ...
                LDY     #4
                LDA     ($30),Y
                STA     byte_3A
                INY
                LDA     ($30),Y
                STA     byte_3B
                LDY     #6
                LDA     ($30),Y
                STA     byte_3C
                INY
                LDA     ($30),Y
                STA     byte_3D

loc_E1D4:                               ; CODE XREF: sub_E788+1D↓p
                                        ; sub_E7DC+A↓p
                SEC
                LDA     byte_3C
                SBC     byte_1A
                STA     pTileID
                LDA     byte_3D
                SBC     byte_1B
                STA     pTileID+1
                SEC
                LDA     #$C0
                SBC     pTileID
                LDA     #3
                SBC     pTileID+1
                BCC     locret_E20E
                LDA     byte_18
                SBC     #$40 ; '@'
                STA     Pointer
                LDA     byte_19
                SBC     #0
                STA     Pointer+1
                SEC
                LDA     byte_3A
                SBC     Pointer
                STA     Pointer
                LDA     byte_3B
                SBC     Pointer+1
                STA     Pointer+1
                SEC
                LDA     #$80
                SBC     Pointer
                LDA     #4
                SBC     Pointer+1

locret_E20E:                            ; CODE XREF: sub_E1BE+2C↑j
                RTS
; End of function sub_E1BE

; ---------------------------------------------------------------------------
                JSR     sub_DD57
                LDY     #$15
                LDA     ($30),Y
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     $EBF1,X
                ASL     A
                TAX
                STA     byte_3F
                LDY     #$11
                LDA     $EBF4,X
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                CLC
                ADC     ($30),Y
                STA     byte_A1
                INY
                LDA     ($30),Y
                STA     byte_A6
                INY
                LDA     ($30),Y
                STA     byte_A7
                CLC
                LDA     byte_A1
                ADC     $EBF3,X
                TAX
                EOR     byte_A1
                AND     #$F0
                BEQ     loc_E258
                LDA     byte_A1
                AND     #$F0
                STA     byte_A1
                TXA
                AND     #$F
                ORA     byte_A1
                TAX
                LDA     byte_A7
                EOR     #1
                STA     byte_A7

loc_E258:                               ; CODE XREF: ROM:E244↑j
                STX     byte_A1
                JSR     sub_E275
; START OF FUNCTION CHUNK FOR sub_E266

loc_E25D:                               ; CODE XREF: sub_E266+D↓j
                LDX     byte_32
                LDY     byte_33
                STX     byte_30
                STY     byte_31
                RTS
; END OF FUNCTION CHUNK FOR sub_E266

; =============== S U B R O U T I N E =======================================


sub_E266:

; FUNCTION CHUNK AT ROM:E25D SIZE 00000009 BYTES

                LDA     byte_21
                AND     #$7F
                JSR     loc_E286
                ASL     byte_21
                LDX     #0
                STX     byte_21
                BEQ     loc_E25D
; End of function sub_E266


; =============== S U B R O U T I N E =======================================


sub_E275:                               ; CODE XREF: ROM:E25A↑p
                                        ; sub_E7DC+F↓p ...
                LDY     byte_A1
                LDA     ($A6),Y
                BEQ     locret_E2A1
                BMI     loc_E282
                SEC
                LDA     #$28 ; '('
                SBC     ($A6),Y

loc_E282:                               ; CODE XREF: sub_E275+6↑j
                CLC
                ADC     #4
                TAX

loc_E286:                               ; CODE XREF: sub_E266+4↑p
                STA     byte_33
                LDA     #0
                LSR     byte_33
                ROR     A
                LSR     byte_33
                ROR     A
                LSR     byte_33
                ROR     A
                ADC     #$80
                STA     byte_32
                LDA     byte_33
                ADC     #$67 ; 'g'
                STA     byte_33
                LDY     #$14
                LDA     ($32),Y

locret_E2A1:                            ; CODE XREF: sub_E275+4↑j
                                        ; sub_E2A2+6↓j ...
                RTS
; End of function sub_E275


; =============== S U B R O U T I N E =======================================


sub_E2A2:
                LDY     #$14
                LDA     ($30),Y
                AND     #$20 ; ' '
                BEQ     locret_E2A1
                JSR     SRAMEnableWrite
                CLC
                LDA     byte_3F
                ADC     #$20 ; ' '
                AND     #$38 ; '8'
                TAX
                LDY     #$15
                LSR     A
                LSR     A
                LSR     A
                STA     ($30),Y
                JSR     SRAMEnableRead
                LDA     $EBF1,X
                CLC
                LDY     #$16
                ADC     ($30),Y
                STA     Pointer
                LDA     #0
                INY
                ADC     ($30),Y
                STA     Pointer+1
                LDA     #$15
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDY     #$10
                LDA     ($30),Y
                TAY
                LDA     $300,Y
                AND     #$3F ; '?'
                STA     byte_3F
                BEQ     locret_E2A1
                LDA     Pointer
                STA     $306,Y
                LDA     Pointer+1
                STA     $307,Y
                LDA     $302,Y
                STA     pDist
                LDA     $303,Y
                STA     byte_69
                LDA     $301,Y
                ASL     A
                ASL     A
                TAX
                LDY     #0
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1
                INY
                LDA     (Pointer),Y
                STA     byte_6A
                INY
                LDA     (Pointer),Y
                STA     byte_6B
                SEC

loc_E315:                               ; CODE XREF: sub_E2A2+75↓j
                BIT     flag_clear_OAM_300
                BVS     loc_E315
                ROR     flag_clear_OAM_300
                LDY     #0

loc_E31D:                               ; CODE XREF: sub_E2A2+CF↓j
                LDA     $200,X
                CMP     #$F0
                BEQ     loc_E365
                CLC
                LDA     ($64),Y
                ADC     pDist
                STA     $203,X
                INY
                CLC
                LDA     ($64),Y
                ADC     byte_69
                STA     $200,X
                INY
                LDA     ($64),Y
                STA     Pointer
                LDA     byte_6B
                LSR     Pointer
                BCC     loc_E342
                LSR     A
                LSR     A

loc_E342:                               ; CODE XREF: sub_E2A2+9C↑j
                LSR     Pointer
                BCC     loc_E34A
                LSR     A
                LSR     A
                LSR     A
                LSR     A

loc_E34A:                               ; CODE XREF: sub_E2A2+A2↑j
                AND     #3
                ASL     Pointer
                ASL     Pointer
                ORA     Pointer
                STA     $202,X
                INY
                CLC
                AND     #$10
                BEQ     loc_E35D
                LDA     byte_6A

loc_E35D:                               ; CODE XREF: sub_E2A2+B7↑j
                ADC     ($64),Y
                STA     $201,X
                INY
                BNE     loc_E369

loc_E365:                               ; CODE XREF: sub_E2A2+80↑j
                INY
                INY
                INY
                INY

loc_E369:                               ; CODE XREF: sub_E2A2+C1↑j
                INX
                INX
                INX
                INX
                BEQ     loc_E373
                DEC     byte_3F
                BNE     loc_E31D

loc_E373:                               ; CODE XREF: sub_E2A2+CB↑j
                ASL     flag_clear_OAM_300
                RTS
; End of function sub_E2A2


; =============== S U B R O U T I N E =======================================


sub_E376:                               ; CODE XREF: sub_E7DC+5↓p
                LDA     byte_AD
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                AND     #$E
                ORA     #1
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     byte_AD
                LSR     A
                LSR     A
                AND     #7
                STA     byte_69
                LDA     byte_AB
                AND     #$FC
                CLC
                STA     pDist
                LDA     byte_69
                ADC     #$98
                STA     byte_69
                LDY     #1
                LDA     ($68),Y
                AND     #$3F ; '?'
                LDY     #1
                CMP     ($30),Y
                BNE     loc_E3AD
                LDA     byte_15
                JSR     sub_DE6C
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E3AD:                               ; CODE XREF: sub_E376+2E↑j
                LDA     byte_15
                JSR     sub_DE6C
                SEC
                RTS
; End of function sub_E376


; =============== S U B R O U T I N E =======================================



; ---------------------------------------------------------------------------
                RLA     byte_E4
                RLA     $DDE4,Y
                ISB     ($B1,X)
                CPX     byte_9D
                CPX     Gamepad1Buttons
                CPX     byte_2
                CPX     pTileID+1
                CPX     CHRBankF
                CPX     byte_20
                ASL     NMIFlags
                TAX
                AND     #$30 ; '0'
                BEQ     loc_E3EF
                AND     #$20 ; ' '
                BEQ     loc_E400
                TXA
                AND     #$1C
                BNE     loc_E400

loc_E3EF:                               ; CODE XREF: ROM:E3E4↑j
                LDX     #$FF
                LDY     #0
                JSR     unk_E510
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E425
                TXA
                AND     #3
                BEQ     loc_E425

loc_E400:                               ; CODE XREF: ROM:E3E8↑j
                                        ; ROM:E3ED↑j ...
                JMP     loc_E490
; ---------------------------------------------------------------------------
                JSR     sub_E506
                TAX
                AND     #$30 ; '0'
                BEQ     loc_E414
                AND     #$20 ; ' '
                BEQ     loc_E400
                TXA
                AND     #$13
                BNE     loc_E400

loc_E414:                               ; CODE XREF: ROM:E409↑j
                LDX     #1
                LDY     #0
                JSR     unk_E510
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E425
                TXA
                AND     #$C
                BNE     loc_E400

loc_E425:                               ; CODE XREF: ROM:E3F9↑j
                                        ; ROM:E3FE↑j ...
                JMP     loc_E497
; ---------------------------------------------------------------------------
                JSR     sub_E506
                AND     #$16
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     unk_E510
                AND     #9
                BNE     loc_E490
                BEQ     loc_E497
                JSR     sub_E506
                AND     #$14
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     unk_E510
                AND     #8
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     unk_E510
                AND     #2
                BNE     loc_E490
                LDX     #$FF
                LDY     #$10
                JSR     unk_E510
                AND     #1
                BNE     loc_E490
                BEQ     loc_E497
                JSR     sub_E506
                AND     #$12
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     unk_E510
                AND     #1
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     unk_E510
                AND     #4
                BNE     loc_E490
                LDX     #1
                LDY     #$10
                JSR     unk_E510
                AND     #8
                BNE     loc_E490
                BEQ     loc_E497

loc_E490:                               ; CODE XREF: ROM:loc_E400↑j
                                        ; ROM:E42D↑j ...
                LDA     byte_15
                JSR     sub_DE6C
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_E497:                               ; CODE XREF: ROM:loc_E425↑j
                                        ; ROM:E43A↑j ...
                LDA     byte_15
                JSR     sub_DE6C
                CLC
                RTS
; ---------------------------------------------------------------------------
                JSR     sub_E506
                AND     #$19
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     unk_E510
                AND     #6
                BNE     loc_E490
                BEQ     loc_E497
                JSR     sub_E506
                AND     #$18
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     unk_E510
                AND     #4
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     unk_E510
                AND     #1
                BNE     loc_E490
                LDX     #$FF
                LDY     #$F0
                JSR     unk_E510
                AND     #2
                BNE     loc_E490
                BEQ     loc_E497
                JSR     sub_E506
                AND     #$11
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     unk_E510
                AND     #2
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     unk_E510
                AND     #8
                BNE     loc_E490
                LDX     #1
                LDY     #$F0
                JSR     unk_E510
                AND     #4
                BNE     loc_E490
                BEQ     loc_E497

; =============== S U B R O U T I N E =======================================


sub_E506:                               ; CODE XREF: ROM:E403↑p
                                        ; ROM:E428↑p ...
                LDX     #0
                LDY     #0
                JSR     unk_E510
                STA     byte_3F
                RTS
; End of function sub_E506

; ---------------------------------------------------------------------------
unk_E510:       .BYTE $18               ; CODE XREF: ROM:E3F3↑p
                                        ; ROM:E418↑p ...
                .BYTE $98
                .BYTE $65 ; e
                .BYTE $A1
                .BYTE $85
                .BYTE $A3
                .BYTE $18
                .BYTE $8A
                .BYTE $65 ; e
                .BYTE $A3
                .BYTE $A8
                .BYTE $45 ; E
                .BYTE $A3
                .BYTE $29 ; )
                .BYTE $F0
                .BYTE $F0
                .BYTE  $E
                .BYTE $A5
                .BYTE $A3
                .BYTE $29 ; )
                .BYTE $F0
                .BYTE $85
                .BYTE $A3
                .BYTE $98
                .BYTE $29 ; )
                .BYTE  $F
                .BYTE   5
                .BYTE $A3
                .BYTE $A8
                .BYTE $A9
                .BYTE   1
                .BYTE $45 ; E
                .BYTE $A7
                .BYTE $18
                .BYTE $69 ; i
                .BYTE $FC
                .BYTE $85
                .BYTE $A3
                .BYTE $A9
                .BYTE   0
                .BYTE $85
                .BYTE $A4
                .BYTE $B1
                .BYTE $A2
                .BYTE $30 ; 0
                .BYTE   3
                .BYTE $A5
                .BYTE $10
                .BYTE $2C ; ,
                .BYTE $A5
                .BYTE $12
                .BYTE $4A ; J
                .BYTE $66 ; f
                .BYTE $A4
                .BYTE $69 ; i
                .BYTE $80
                .BYTE $85
                .BYTE $A5
                .BYTE $B1
                .BYTE $A2
                .BYTE $29 ; )
                .BYTE $7F ; 
                .BYTE $A8
                .BYTE $B1
                .BYTE $A4
                .BYTE $60 ; `
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_E788

loc_E552:                               ; CODE XREF: sub_E788+26↓j
                JSR     sub_E607
                LDY     #$C
                LDA     $EBF3,X
                ASL     A
                STA     ($30),Y
                INY
                LDA     $EBF4,X
                ASL     A
                STA     ($30),Y
                JMP     loc_E577
; END OF FUNCTION CHUNK FOR sub_E788

; =============== S U B R O U T I N E =======================================


sub_E567:                               ; CODE XREF: sub_E7F5:loc_E7F9↓j
                                        ; sub_E83F+90↓j ...
                JSR     sub_E607
                LDY     #$C
                LDA     $EBF3,X
                STA     ($30),Y
                INY
                LDA     $EBF4,X
                STA     ($30),Y

loc_E577:                               ; CODE XREF: sub_E788-224↑j
                LDY     #8
                LDA     ($30),Y
                AND     #$3F ; '?'
                ORA     #$40 ; '@'
                STA     Pointer
                LDA     byte_3E
                LSR     A
                AND     #$40 ; '@'
                EOR     Pointer
                STA     ($30),Y
                LDY     #9
                LDA     #$38 ; '8'
                STA     ($30),Y
                LDY     #$15
                LDA     ($30),Y
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     $EBF1,X

loc_E59B:                               ; CODE XREF: sub_E6E7+2D↓p
                                        ; sub_E6E7+44↓p ...
                CLC
                LDY     #$16
                ADC     ($30),Y
                LDY     #$E
                STA     ($30),Y
                LDA     #0
                LDY     #$17
                ADC     ($30),Y
                LDY     #$F
                STA     ($30),Y
                RTS
; End of function sub_E567


; =============== S U B R O U T I N E =======================================


sub_E5AF:                               ; CODE XREF: sub_E788+1A↓p
                JSR     sub_E5EF
                ASL     byte_3A
                ROL     byte_3B
                ASL     byte_3C
                ROL     byte_3D
                JMP     loc_E5C0
; End of function sub_E5AF


; =============== S U B R O U T I N E =======================================


sub_E5BD:                               ; CODE XREF: sub_E7DC+2↓p
                                        ; sub_E83F+7B↓p ...
                JSR     sub_E5EF

loc_E5C0:                               ; CODE XREF: sub_E5AF+B↑j
                CLC
                LDY     #4
                LDA     ($30),Y
                ADC     byte_3A
                STA     byte_3A
                AND     #$C0
                STA     byte_AA
                INY
                LDA     ($30),Y
                ADC     byte_3B
                STA     byte_3B
                STA     byte_AB
                CLC
                LDY     #6
                LDA     ($30),Y
                ADC     byte_3C
                STA     byte_3C
                AND     #$C0
                STA     byte_AC
                INY
                LDA     ($30),Y
                ADC     byte_3D
                STA     byte_3D
                STA     byte_AD

loc_E5EC:                               ; DATA XREF: ROM:800B↑w
                JMP     sub_D55D
; End of function sub_E5BD


; =============== S U B R O U T I N E =======================================


sub_E5EF:                               ; CODE XREF: sub_E5AF↑p
                                        ; sub_E5BD↑p
                JSR     sub_E607
                LDA     $EBED,X
                STA     byte_3A
                LDA     $EBEE,X
                STA     byte_3B
                LDA     $EBEF,X
                STA     byte_3C
                LDA     $EBF0,X
                STA     byte_3D
                RTS
; End of function sub_E5EF


; =============== S U B R O U T I N E =======================================


sub_E607:                               ; CODE XREF: sub_E788:loc_E552↑p
                                        ; sub_E567↑p ...
                LDA     byte_3E
                ASL     A
                ASL     A
                ASL     A
                TAX
                RTS
; End of function sub_E607


; =============== S U B R O U T I N E =======================================


sub_E60E:                               ; CODE XREF: sub_E6E7+A↓p
                                        ; sub_E71A↓p ...
                JSR     sub_E655
                LDY     #$14
                LDA     ($30),Y
                AND     #$F
                TAY
                LDA     ($32),Y
                INY
                CMP     #5
                BEQ     loc_E625
                CMP     #6
                BEQ     loc_E62F
                BNE     loc_E62D

loc_E625:                               ; CODE XREF: sub_E60E+F↑j
                JSR     sub_E646
                AND     $EC5D,X
                BNE     loc_E637

loc_E62D:                               ; CODE XREF: sub_E60E+15↑j
                                        ; sub_E60E+27↓j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E62F:                               ; CODE XREF: sub_E60E+13↑j
                JSR     sub_E646
                AND     $EC5D,X
                BNE     loc_E62D

loc_E637:                               ; CODE XREF: sub_E60E+1D↑j
                LDY     #0
                LDA     ($30),Y
                ORA     #$80
                STA     ($30),Y
                SEC
                RTS
; End of function sub_E60E


; =============== S U B R O U T I N E =======================================


sub_E641:                               ; CODE XREF: sub_E661↓p
                                        ; sub_E661+8↓p
                JSR     sub_E655
                LDY     #4
; End of function sub_E641


; =============== S U B R O U T I N E =======================================


sub_E646:                               ; CODE XREF: sub_E60E:loc_E625↑p
                                        ; sub_E60E:loc_E62F↑p
                LDA     ($32),Y
                AND     #7
                TAX
                LDA     ($32),Y
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     $7600,Y
                RTS
; End of function sub_E646


; =============== S U B R O U T I N E =======================================


sub_E655:                               ; CODE XREF: sub_E60E↑p
                                        ; sub_E641↑p ...
                LDY     #2
                LDA     ($30),Y
                STA     byte_32
                INY
                LDA     ($30),Y
                STA     byte_33
                RTS
; End of function sub_E655


; =============== S U B R O U T I N E =======================================


sub_E661:

; FUNCTION CHUNK AT ROM:E720 SIZE 0000000E BYTES

                JSR     sub_E641
                ORA     $EC5D,X
                BNE     loc_E672
                JSR     sub_E641
                ORA     $EC5D,X
                EOR     $EC5D,X

loc_E672:                               ; CODE XREF: sub_E661+6↑j
                STA     $7600,Y
                JMP     loc_E720
; End of function sub_E661


; =============== S U B R O U T I N E =======================================


sub_E678:
                LDY     #$1B
                LDA     ($30),Y
                BNE     loc_E694
                JMP     sub_E72E
; End of function sub_E678


; =============== S U B R O U T I N E =======================================


sub_E681:                               ; CODE XREF: sub_E6CF↓p
                LDY     #$15
                LDA     ($30),Y
                ORA     #$40 ; '@'
                LDY     #$1B
                EOR     ($30),Y
                AND     #$4F ; 'O'
                BEQ     loc_E694
                JSR     sub_E72E
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E694:                               ; CODE XREF: sub_E678+4↑j
                                        ; sub_E681+C↑j
                JSR     sub_E655
                LDY     #4
                JSR     sub_E6A1
                JSR     sub_E72E
                SEC
                RTS
; End of function sub_E681


; =============== S U B R O U T I N E =======================================


sub_E6A1:                               ; CODE XREF: sub_E681+18↑p
                                        ; sub_EA38+6A↓p
                LDA     byte_32
                STA     Pointer
                LDA     byte_33
                STA     Pointer+1
                SEC
                LDA     (Pointer),Y
                SBC     #0
                STA     PointerTilePack04
                INY
                LDA     (Pointer),Y
                SBC     #2
                STA     PointerTilePack05
                INY
                SEC
                LDA     (Pointer),Y
                SBC     #$C0
                STA     PointerTilePack06
                INY
                LDA     (Pointer),Y
                SBC     #1
                STA     PointerTilePack07
                LDA     #$40 ; '@'
                STA     byte_20
                RTS
; End of function sub_E6A1


; =============== S U B R O U T I N E =======================================


sub_E6CF:
                JSR     sub_E681
                BCC     locret_E6D8
                LDA     #1
                STA     byte_E

locret_E6D8:                            ; CODE XREF: sub_E6CF+3↑j
                RTS
; End of function sub_E6CF

; ---------------------------------------------------------------------------
                .BYTE $20, $E, $E6, $90, 1, $60, $20, $FC, $E7, $29, $F0
                .BYTE $4A, $4A
                .BYTE $4A

; =============== S U B R O U T I N E =======================================


sub_E6E7:

; FUNCTION CHUNK AT ROM:E720 SIZE 0000000E BYTES

                CMP     #8
                BCS     loc_E6FE
                JSR     sub_E7DC
                JMP     sub_E73D
; ---------------------------------------------------------------------------
                JSR     sub_E60E
                BCC     loc_E6F7
                RTS
; ---------------------------------------------------------------------------

loc_E6F7:                               ; CODE XREF: sub_E6E7+D↑j
                JSR     sub_E7FC
                AND     #$F0
                BNE     loc_E720

loc_E6FE:                               ; CODE XREF: sub_E6E7+2↑j
                LDY     #$C
                LDA     #$3D ; '='
                STA     ($30),Y
                INY
                LDA     #$EC
                STA     ($30),Y
                JSR     sub_E73D
                LDY     #9
                LDA     #$78 ; 'x'
                STA     ($30),Y
                LDA     #0
                JSR     loc_E59B
                JMP     sub_E72E
; End of function sub_E6E7


; =============== S U B R O U T I N E =======================================


sub_E71A:

; FUNCTION CHUNK AT ROM:E720 SIZE 0000000E BYTES

                JSR     sub_E60E
                BCC     loc_E720
                RTS
; End of function sub_E71A

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_E6E7
;   ADDITIONAL PARENT FUNCTION sub_E661
;   ADDITIONAL PARENT FUNCTION sub_E71A

loc_E720:                               ; CODE XREF: sub_E661+14↑j
                                        ; sub_E6E7+15↑j ...
                JSR     sub_E733
                JSR     sub_E73D
                JSR     sub_E746
                LDA     #0
                JSR     loc_E59B
; END OF FUNCTION CHUNK FOR sub_E6E7

; =============== S U B R O U T I N E =======================================


sub_E72E:                               ; CODE XREF: sub_E678+6↑j
                                        ; sub_E681+E↑p ...
                LDA     #$88
                STA     byte_3E
                RTS
; End of function sub_E72E


; =============== S U B R O U T I N E =======================================


sub_E733:                               ; CODE XREF: sub_E6E7:loc_E720↑p
                                        ; sub_E756↓p ...
                LDA     #0
                LDY     #$C
                STA     ($30),Y
                INY
                STA     ($30),Y
                RTS
; End of function sub_E733


; =============== S U B R O U T I N E =======================================


sub_E73D:                               ; CODE XREF: sub_E6E7+7↑j
                                        ; sub_E6E7+22↑p ...
                LDY     #8
                LDA     ($30),Y
                AND     #$3F ; '?'
                STA     ($30),Y
                RTS
; End of function sub_E73D


; =============== S U B R O U T I N E =======================================


sub_E746:                               ; CODE XREF: sub_E6E7+3F↑p
                                        ; sub_E756+6↓p ...
                LDY     #9
                LDA     #$38 ; '8'
                STA     ($30),Y
                RTS
; End of function sub_E746


; =============== S U B R O U T I N E =======================================


sub_E74D:                               ; CODE XREF: sub_E80E+1A↓j
                                        ; sub_EB3A+3F↓p
                LDY     #8
                LDA     ($30),Y
                ORA     #$40 ; '@'
                STA     ($30),Y
                RTS
; End of function sub_E74D


; =============== S U B R O U T I N E =======================================


sub_E756:
                JSR     sub_E733
                JSR     sub_E73D
                JSR     sub_E746
                JSR     sub_E655
                JSR     sub_E772
                AND     $EC5D,X
                BEQ     loc_E76C
                LDA     #4

loc_E76C:                               ; CODE XREF: sub_E756+12↑j
                JSR     loc_E59B
                JMP     sub_E72E
; End of function sub_E756


; =============== S U B R O U T I N E =======================================


sub_E772:                               ; CODE XREF: sub_E756+C↑p
                LDY     #6
                LDA     ($32),Y
                ASL     A
                LDY     #7
                LDA     ($32),Y
                AND     #7
                TAX
                LDA     ($32),Y
                ROR     A
                LSR     A
                LSR     A
                TAY
                LDA     $7620,Y
                RTS
; End of function sub_E772


; =============== S U B R O U T I N E =======================================


sub_E788:

; FUNCTION CHUNK AT ROM:E552 SIZE 00000015 BYTES

                LDY     #$1A
                LDA     ($30),Y
                BNE     loc_E79C
                LDA     #1
                STA     ($30),Y
                LDY     #$15
                LDA     ($30),Y
                EOR     #4
                AND     #$F
                STA     ($30),Y

loc_E79C:                               ; CODE XREF: sub_E788+4↑j
                LDY     #$15
                LDA     ($30),Y
                STA     byte_3E
                JSR     sub_E5AF
                JSR     loc_E1D4
                BCC     loc_E7B1
                LDA     #$F8
                STA     byte_22
                JMP     loc_E552
; ---------------------------------------------------------------------------

loc_E7B1:                               ; CODE XREF: sub_E788+20↑j
                LDA     #0
                STA     byte_22
                JMP     loc_E965
; End of function sub_E788


; =============== S U B R O U T I N E =======================================


sub_E7B8:
                JSR     sub_E60E
                BCC     loc_E7BE
                RTS
; ---------------------------------------------------------------------------

loc_E7BE:                               ; CODE XREF: sub_E7B8+3↑j
                JSR     sub_E7FC
                AND     #$E0
                LSR     A
                LSR     A
                BCC     loc_E7D2
                JSR     sub_E60E
                BCC     loc_E7CD
                RTS
; ---------------------------------------------------------------------------

loc_E7CD:                               ; CODE XREF: sub_E7B8+12↑j
                JSR     sub_E7FC
                AND     #$F8

loc_E7D2:                               ; CODE XREF: sub_E7B8+D↑j
                LSR     A
                LSR     A
                CMP     #8
                BCS     sub_E7F5
                LDY     #$15
                STA     ($30),Y
; End of function sub_E7B8


; =============== S U B R O U T I N E =======================================


sub_E7DC:                               ; CODE XREF: sub_E6E7+4↑p
                STA     byte_3E
                JSR     sub_E5BD
                JSR     sub_E376
                BCS     sub_E7F5
                JSR     loc_E1D4
                BCC     sub_E7F5
                JSR     sub_E275
                BNE     sub_E7F5
                JSR     bank14_8000_ex
                BCC     loc_E7F9
; End of function sub_E7DC


; =============== S U B R O U T I N E =======================================


sub_E7F5:                               ; CODE XREF: sub_E7B8+1E↑j
                                        ; sub_E7DC+8↑j ...
                LDA     #$88
                STA     byte_3E

loc_E7F9:                               ; CODE XREF: sub_E7DC+17↑j
                JMP     sub_E567
; End of function sub_E7F5


; =============== S U B R O U T I N E =======================================


sub_E7FC:                               ; CODE XREF: sub_E6E7:loc_E6F7↑p
                                        ; sub_E7B8:loc_E7BE↑p ...
                LDA     byte_25
                BNE     loc_E803
                JMP     sub_F1ED
; ---------------------------------------------------------------------------

loc_E803:                               ; CODE XREF: sub_E7FC+2↑j
                PLA
                PLA
                JMP     sub_E7F5
; End of function sub_E7FC


; =============== S U B R O U T I N E =======================================


sub_E808:
                JSR     sub_E60E
                BCC     sub_E7F5
                RTS
; End of function sub_E808


; =============== S U B R O U T I N E =======================================


sub_E80E:
                JSR     sub_E60E
                BCC     loc_E814
                RTS
; ---------------------------------------------------------------------------

loc_E814:                               ; CODE XREF: sub_E80E+3↑j
                JSR     sub_E7FC
                AND     #$E0
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                CMP     #8
                BCS     sub_E7F5
                LDY     #$15
                STA     ($30),Y
                JSR     sub_E7F5
                JMP     sub_E74D
; End of function sub_E80E


; =============== S U B R O U T I N E =======================================


sub_E82B:                               ; CODE XREF: sub_E83F+20↓j
                CMP     #0
                BNE     sub_E7F5
                STA     byte_22
                LDY     #$1D
                LDA     ($30),Y
                AND     #$7F
                PHA
                JSR     sub_DE13
                PLA
                JMP     sub_E0F9
; End of function sub_E82B


; =============== S U B R O U T I N E =======================================


sub_E83F:
                LDY     #$1A
                LDA     ($30),Y
                BNE     loc_E86B
                LDY     #$1E
                CLC
                LDA     ($30),Y
                STA     byte_32
                ADC     #2
                STA     ($30),Y
                INY
                LDA     ($30),Y
                STA     byte_33
                ADC     #0
                STA     ($30),Y
                LDY     #0
                LDA     ($32),Y
                CMP     #$10
                BCC     sub_E82B
                LDY     #$19
                STA     ($30),Y
                LDY     #1
                LDA     ($32),Y
                LDY     #$1A

loc_E86B:                               ; CODE XREF: sub_E83F+4↑j
                SEC
                SBC     #1
                STA     ($30),Y
                BNE     loc_E88F
                LDY     #$1E
                LDA     ($30),Y
                STA     byte_32
                INY
                LDA     ($30),Y
                STA     byte_33
                LDY     #0
                LDA     ($32),Y
                CMP     #$10
                BCS     loc_E88F
                SEC
                LDA     #$28 ; '('
                SBC     SaveNum
                CLC
                ADC     #$84
                STA     byte_21

loc_E88F:                               ; CODE XREF: sub_E83F+31↑j
                                        ; sub_E83F+44↑j
                LDY     #$19
                LDA     ($30),Y
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E8A2
                LDY     #$1D
                LDA     ($30),Y
                ASL     A
                ASL     A
                TAY
                LDA     $E107,Y

loc_E8A2:                               ; CODE XREF: sub_E83F+57↑j
                LDY     #8
                STA     ($30),Y
                TXA
                AND     #8
                BNE     loc_E8B2
                LDY     #$15
                TXA
                AND     #7
                STA     ($30),Y

loc_E8B2:                               ; CODE XREF: sub_E83F+6A↑j
                TXA
                BMI     loc_E8C1
                PHA
                AND     #7
                STA     byte_3E
                JSR     sub_E5BD
                PLA
                TAX
                BPL     loc_E8C5

loc_E8C1:                               ; CODE XREF: sub_E83F+74↑j
                LDA     #$88
                STA     byte_3E

loc_E8C5:                               ; CODE XREF: sub_E83F+80↑j
                TXA
                AND     #$40 ; '@'
                ASL     A
                ORA     #$70 ; 'p'
                ORA     byte_3E
                STA     byte_22
                JMP     sub_E567
; End of function sub_E83F

; ---------------------------------------------------------------------------
                .BYTE $20, $E, $E6, $90, 1, $60, $20, $F5, $E7, $4C, $E1
                .BYTE $E8, $20, $92, $EB, $20, $4D, $E7, $A9, $74, $D0
                .BYTE $18, $20, $E, $E6, $90, 1, $60, $20, $F5, $E7, $A9
                .BYTE $74, $D0, $B, $20, $E, $E6, $90, 1, $60, $20, $F5
                .BYTE $E7, $A9, $72, $A2, 1, $4C, $D0

; =============== S U B R O U T I N E =======================================


sub_E904:
                ISB     $23A5,X
                CLC
                BNE     loc_E95B
                LDA     byte_3E
                BMI     loc_E92F
                LDY     #$1D
                LDA     ($30),Y
                TAX
                LDA     byte_C
                STA     ($30),Y
                TXA
                LDY     #$15
                STA     ($30),Y
                STA     byte_C
                LDY     #$19
                LDA     ($30),Y
                TAX
                LDA     byte_3E
                STA     ($30),Y
                TXA
                STA     byte_3E
                BMI     loc_E92F
                JSR     sub_E5BD

loc_E92F:                               ; CODE XREF: sub_E904+8↑j
                                        ; sub_E904+26↑j
                JSR     sub_E567
                JSR     sub_EA24
                LDY     #8
                LDA     ($30),Y
                AND     #$F
                CMP     #$A
                BEQ     loc_E940
                RTS
; ---------------------------------------------------------------------------

loc_E940:                               ; CODE XREF: sub_E904+39↑j
                LDA     byte_D5
                ASL     A
                AND     #2
                ORA     #$70 ; 'p'
                LDX     #1
                JMP     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
; ---------------------------------------------------------------------------

loc_E94C:                               ; CODE XREF: sub_E96C+3↓j
                LDA     #$88
                STA     byte_A0
                LDA     #0
                STA     byte_E7
                STA     ShiftX
                STA     ShiftY
                JSR     sub_E733

loc_E95B:                               ; CODE XREF: sub_E904+4↑j
                LDA     #0
                STA     byte_3E
                STA     byte_23
                LDA     #$10
                BCS     loc_E967

loc_E965:                               ; CODE XREF: sub_E788+2D↑j
                LDA     #$80

loc_E967:                               ; CODE XREF: sub_E904+5F↑j
                LDY     #0
                STA     ($30),Y
                RTS
; End of function sub_E904


; =============== S U B R O U T I N E =======================================


sub_E96C:
                LDA     byte_23
                ASL     A
                BNE     loc_E94C
                JSR     sub_E9CD
                BMI     loc_E9A9
                LDY     #$15
                STA     ($30),Y
                STA     byte_C

loc_E97C:                               ; CODE XREF: sub_E96C+31↓j
                STA     byte_3E
                JSR     sub_E5BD
                LDA     byte_25
                CMP     #$28 ; '('
                BCS     loc_E9AD
                JSR     sub_E9FA
                BCS     loc_E9A9
                JSR     bank14_8000_ex
                BCS     loc_E9A9
                BIT     byte_3F
                BPL     loc_E9AD
                BVS     loc_E99F
                LDA     byte_3E
                SBC     #0
                AND     #$F
                BPL     loc_E97C

loc_E99F:                               ; CODE XREF: sub_E96C+29↑j
                LDY     #$15
                LDA     #0
                STA     ($30),Y
                STA     byte_C
                BCC     loc_E9AD

loc_E9A9:                               ; CODE XREF: sub_E96C+8↑j
                                        ; sub_E96C+1E↑j ...
                LDA     #$88
                STA     byte_3E

loc_E9AD:                               ; CODE XREF: sub_E96C+19↑j
                                        ; sub_E96C+27↑j ...
                JSR     sub_E567
                JSR     sub_EA24
; End of function sub_E96C

; START OF FUNCTION CHUNK FOR sub_EB92
;   ADDITIONAL PARENT FUNCTION sub_EA38

loc_E9B3:                               ; CODE XREF: sub_EA38+60↓j
                                        ; sub_EA38+8A↓j ...
                LDA     byte_3E
                STA     byte_A0
                LDY     #9
                LDA     ($30),Y
                AND     #$40 ; '@'
                ORA     byte_1F
                STA     byte_E7
                LDY     #$C
                LDA     ($30),Y
                STA     ShiftX
                INY
                LDA     ($30),Y
                STA     ShiftY
                RTS
; END OF FUNCTION CHUNK FOR sub_EB92

; =============== S U B R O U T I N E =======================================


sub_E9CD:                               ; CODE XREF: sub_E96C+5↑p
                                        ; sub_EB3A↓p ...
                LDA     byte_22
                BEQ     loc_E9E1
                BPL     loc_E9D4
                RTS
; ---------------------------------------------------------------------------

loc_E9D4:                               ; CODE XREF: sub_E9CD+4↑j
                LDY     #$19
                LDA     ($30),Y
                TAX
                LDA     byte_22
                STA     ($30),Y
                TXA
                AND     #$8F
                RTS
; ---------------------------------------------------------------------------

loc_E9E1:                               ; CODE XREF: sub_E9CD+2↑j
                LDA     ButtonPressed
                AND     #$F
                TAX
                LDA     byte_D
                BPL     loc_E9F3
                AND     #$F
                CMP     $EBDD,X
                BEQ     loc_E9F7
                STA     byte_D

loc_E9F3:                               ; CODE XREF: sub_E9CD+1B↑j
                LDA     $EBDD,X
                RTS
; ---------------------------------------------------------------------------

loc_E9F7:                               ; CODE XREF: sub_E9CD+22↑j
                LDA     #$88
                RTS
; End of function sub_E9CD


; =============== S U B R O U T I N E =======================================


sub_E9FA:                               ; CODE XREF: sub_E96C+1B↑p
                                        ; sub_EB92+E↓p
                JSR     sub_E275
                BEQ     loc_EA22
                ASL     A
                LDA     byte_3E
                AND     #1
                BEQ     loc_EA08
                BCS     loc_EA1C

loc_EA08:                               ; CODE XREF: sub_E9FA+A↑j
                LDA     byte_F
                BNE     loc_EA1A
                LDY     #$1B
                LDA     byte_3E
                ORA     #$40 ; '@'
                STA     ($32),Y
                BIT     byte_21
                BMI     loc_EA1A
                STX     byte_21

loc_EA1A:                               ; CODE XREF: sub_E9FA+10↑j
                                        ; sub_E9FA+1C↑j
                BCC     locret_EA23

loc_EA1C:                               ; CODE XREF: sub_E9FA+C↑j
                LDA     byte_22
                AND     #$10
                BEQ     locret_EA23

loc_EA22:                               ; CODE XREF: sub_E9FA+3↑j
                CLC

locret_EA23:                            ; CODE XREF: sub_E9FA:loc_EA1A↑j
                                        ; sub_E9FA+26↑j
                RTS
; End of function sub_E9FA


; =============== S U B R O U T I N E =======================================


sub_EA24:                               ; CODE XREF: sub_E904+2E↑p
                                        ; sub_E96C+44↑p
                JSR     sub_E655
                LDY     #1
                LDA     ($32),Y
                AND     #$40 ; '@'
                BEQ     locret_EA37
                LDY     #8
                LDA     ($30),Y
                AND     #$3F ; '?'
                STA     ($30),Y

locret_EA37:                            ; CODE XREF: sub_EA24+9↑j
                RTS
; End of function sub_EA24


; =============== S U B R O U T I N E =======================================


sub_EA38:

; FUNCTION CHUNK AT ROM:E9B3 SIZE 0000001A BYTES

                LDY     #$1A
                LDA     ($30),Y
                BNE     loc_EA7C
                LDA     byte_15
                JSR     sub_DE6C
                ASL     A
                TAX
                LDA     BANK_SELECT,X
                STA     Pointer
                LDA     BANK_DATA,X
                STA     Pointer+1
                LDY     #$1E
                LDA     ($30),Y
                ASL     A
                TAY
                LDA     (Pointer),Y
                STA     byte_32
                INY
                LDA     (Pointer),Y
                STA     byte_33
                LDY     #$1F
                LDA     ($30),Y
                TAY
                LDA     ($32),Y
                CMP     #$10
                BCC     loc_EA9B
                PHA
                INY
                LDA     ($32),Y
                TAX

loc_EA6E:                               ; DATA XREF: ROM:C264↑r
                INY
                TYA
                LDY     #$1F
                STA     ($30),Y
                LDY     #$19
                PLA
                STA     ($30),Y
                TXA
                LDY     #$1A

loc_EA7C:                               ; CODE XREF: sub_EA38+4↑j
                SEC
                SBC     #1
                STA     ($30),Y
                LDY     #$19
                LDA     ($30),Y
                BMI     loc_EABB
                AND     #$F
                STA     byte_3E
                LDY     #$15
                STA     ($30),Y
                JSR     sub_E5BD
                JSR     sub_EB0B
                JSR     loc_E59B
                JMP     loc_E9B3
; ---------------------------------------------------------------------------

loc_EA9B:                               ; CODE XREF: sub_EA38+2F↑j
                CMP     #0
                BNE     loc_EAA1
                STA     byte_23

loc_EAA1:                               ; CODE XREF: sub_EA38+65↑j
                INY
                JSR     sub_E6A1
                INY
                TYA
                LDY     #$1F
                STA     ($30),Y
                LDA     byte_23
                BNE     loc_EABB
                LDA     #$80
                STA     byte_23
                JSR     sub_D9FA
                LDX     #0
                JSR     sub_CDAF

loc_EABB:                               ; CODE XREF: sub_EA38+4D↑j
                                        ; sub_EA38+75↑j
                LDA     #$88
                STA     byte_3E
                JSR     sub_EB0B
                JMP     loc_E9B3
; End of function sub_EA38

; ---------------------------------------------------------------------------
                .BYTE $A5, $3E, $30, $3E, $A0, $19, $B1, $30, $AA, $A5
                .BYTE $3E, $91, $30, $8A, $30, $32, $85, $3E, $A0, $15
                .BYTE $49, 4, $91, $30, $A0, 6, $38, $AD, $86, $67, $F1
                .BYTE $30, $C8, $AD, $87, $67, $F1, $30, $A0, $14, $B1
                .BYTE $30, $B0, 3, 9, $10, $2C, $29, $EF, $91, $30, $20
                .BYTE $BD, $E5, $20, $B, $EB, $E0, $40, $90, 2, $E9, 4
                .BYTE $4C, $9B, $E5, $A9, $88, $85, $3E

; =============== S U B R O U T I N E =======================================


sub_EB0B:                               ; CODE XREF: sub_EA38+5A↑p
                                        ; sub_EA38+87↑p
                JSR     sub_E607
                LDY     #$C
                LDA     $EBF3,X
                STA     ($30),Y
                INY
                LDA     $EBF4,X
                STA     ($30),Y
                JSR     sub_E73D
                JSR     sub_E746
                LDA     byte_3E
                BMI     locret_EB39
                LDY     #$15
                LDA     ($30),Y
                TAX
                LDA     $EC35,X
                TAX
                LDY     #8
                AND     #$40 ; '@'
                ORA     ($30),Y
                STA     ($30),Y
                TXA
                AND     #$1F

locret_EB39:                            ; CODE XREF: sub_EB0B+18↑j
                RTS
; End of function sub_EB0B


; =============== S U B R O U T I N E =======================================


sub_EB3A:
                JSR     sub_E9CD
                BMI     loc_EB70
                LDY     #$15
                STA     ($30),Y
                STA     byte_A0
                TAX
                LDY     #$1A
                LDA     ($30),Y
                BEQ     loc_EB68
                BMI     loc_EB5B
                SEC
                SBC     #1
                STA     ($30),Y
                CMP     #5
                BCS     loc_EB68
                LDX     #7
                BCC     loc_EB68

loc_EB5B:                               ; CODE XREF: sub_EB3A+12↑j
                PHA
                CLC
                ADC     #1
                STA     ($30),Y
                PLA
                CMP     #$FD
                BCS     loc_EB68
                LDX     #5

loc_EB68:                               ; CODE XREF: sub_EB3A+10↑j
                                        ; sub_EB3A+1B↑j ...
                STX     byte_3E
                JSR     sub_E5BD
                JMP     loc_EB76
; ---------------------------------------------------------------------------

loc_EB70:                               ; CODE XREF: sub_EB3A+3↑j
                LDA     #$88
                STA     byte_A0
                STA     byte_3E

loc_EB76:                               ; CODE XREF: sub_EB3A+33↑j
                JSR     sub_E567
                JSR     sub_E74D
                LDA     byte_A0
                STA     byte_3E
                JSR     sub_E607
                LDA     byte_1F
                STA     byte_E7
                LDA     $EBF3,X
                STA     ShiftX
                LDA     $EBF4,X
                STA     ShiftY
; End of function sub_EB3A

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_2. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_EB92:

; FUNCTION CHUNK AT ROM:E9B3 SIZE 0000001A BYTES

                JSR     sub_E9CD
                BMI     loc_EBC0
                LDY     #$15
                STA     ($30),Y
                STA     byte_3E
                JSR     sub_E5BD
                JSR     sub_E9FA
                BCS     loc_EBC0
                LDA     byte_22
                BNE     loc_EBC4
                LDA     #$14
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     byte_A6
                STA     byte_A2
                JSR     sub_E506
                LDA     byte_15
                JSR     sub_DE6C
                BIT     byte_3F
                BVS     loc_EBC4

loc_EBC0:                               ; CODE XREF: sub_EB92+3↑j
                                        ; sub_EB92+11↑j
                LDA     #$88
                STA     byte_3E

loc_EBC4:                               ; CODE XREF: sub_EB92+15↑j
                                        ; sub_EB92+2C↑j
                JSR     sub_E567
                JMP     loc_E9B3
; End of function sub_EB92

; ---------------------------------------------------------------------------
                JSR     sub_E9CD
                STA     byte_3E
                BMI     loc_EBD4
                JSR     sub_E5BD

loc_EBD4:                               ; CODE XREF: ROM:EBCF↑j
                JSR     sub_E567
                JSR     sub_E73D
                JMP     loc_E9B3
; ---------------------------------------------------------------------------
                .BYTE $88, 2, 6, $88, 4, 3, 5, $88, 0, 1, 7, $88, $88
                .BYTE $88, $88, $88, 0, 0, $C0, $FF, 0, 0, 0, $FF, $40
                .BYTE 0, $C0, $FF, 0, 0, 1, $FF, $40, 0, 0, 0, 8, 0, 1
                .BYTE 0, $40, 0, $40, 0, $10, 0, 1, 1, 0, 0, $40, 0, $10
                .BYTE 0, 0, 1, $C0, $FF, $40, 0, $10, 0, $FF, 1, $C0, $FF
                .BYTE 0, 0, $18, 0, $FF, 0, $C0, $FF, $C0, $FF, 0, 0, $FF
                .BYTE $FF, 0, 0, 0, 0, $10, 0, 0, 0, $54, $14, $1C, 4
                .BYTE $44, 0, $C, $10, 0, $FF, 0, 1, $FF, 0, 1, 0, 0, $FF
                .BYTE 0, 1, 0, $FF, 0, 1, $FF, 0, 1, 0, 0, $FF, 0, 1, 0
                .BYTE 1, 0, $FF, 0, $FF, 0, 1, $80, $40, $20, $10, 8, 4
                .BYTE 2, 1

; =============== S U B R O U T I N E =======================================


sub_EC65:                               ; CODE XREF: start_battle+2D↓p
                JSR     darken_palette
                LDX     #0
                LDY     #8
                JSR     set_camera
                LDA     #$EC
                LDX     #$EC
                JSR     set_ppu_banks
                LDA     #1
                STA     byte_A000
                LDA     #$80
                STA     ModeSRAM
                LDA     #$7C ; '|'
                STA     BankPPU_X000
                STA     BankPPU_X400
                STA     BankPPU_X800
                STA     BankPPU_XC00
                LDA     #0
                STA     byte_46
                LDA     #0
                STA     byte_45
                LDX     #9

loc_EC94:                               ; CODE XREF: sub_EC65+36↓j
                LDA     $ECF2,X
                STA     $540,X
                DEX
                BPL     loc_EC94
                JSR     sub_ED1A
                JMP     wait_nmi
; End of function sub_EC65


; =============== S U B R O U T I N E =======================================


sub_ECA3:                               ; CODE XREF: start_battle+33↓p
                LDA     #$C3
                JSR     sub_C408
                LDX     #$1E
                JSR     wait_frames
                JSR     sub_D8D3
                BCS     loc_ECB6
                JSR     sub_DA48
                CLC

loc_ECB6:                               ; CODE XREF: sub_ECA3+D↑j
                PHP
                JSR     sub_D977
                LDX     #$3C ; '<'

loc_ECBC:                               ; CODE XREF: sub_ECA3+21↓j
                JSR     wait_nmi
                LDA     ButtonPressed
                BNE     loc_ECC6
                DEX
                BNE     loc_ECBC

loc_ECC6:                               ; CODE XREF: sub_ECA3+1E↑j
                JSR     wait_nmi_processed
                JSR     darken_color
                JSR     restore_palettes
                LDA     #$60 ; '`'
                LDX     #0
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     byte_A000
                STA     IRQCount
                STA     byte_70
                STA     byte_71
                STA     byte_48
                STA     ModeSRAM
                STA     JmpInstr
                PLP
                JMP     wait_nmi
; End of function sub_ECA3

; ---------------------------------------------------------------------------
                SEI
                BRK
; ---------------------------------------------------------------------------
                NOP

; =============== S U B R O U T I N E =======================================


sub_ED1A:                               ; CODE XREF: sub_EC65+38↑p
                                        ; sub_ECF1+1E↑p
                SEC
                LDA     #$59 ; 'Y'
                SBC     CameraY
                STA     IRQCount
                RTS
; End of function sub_ED1A

; =============== S U B R O U T I N E =======================================


sub_EDCB:
                JSR     loc_C220
                LDX     #$24 ; '$'
                LDA     #$1F
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                RTS
; End of function sub_EDCB


; =============== S U B R O U T I N E =======================================


sub_EDFE:                               ; CODE XREF: ROM:CD3A↑p
                PHA
                JSR     store_palettes
                PLA
                LDX     #$1F

loc_EE05:                               ; CODE XREF: sub_EDFE+B↓j
                STA     PalNMIBG,X
                DEX
                BPL     loc_EE05
                JMP     loc_EEB3
; End of function sub_EDFE


; =============== S U B R O U T I N E =======================================


sub_EE0E:
                PHA
                JSR     wait_nmi_processed
                PLA
                LDX     #$1F

loc_EE15:                               ; CODE XREF: sub_EE0E+E↓j
                DEX
                DEX
                DEX
                STA     PalNMIBG,X
                DEX
                BPL     loc_EE15
                JMP     loc_EEB3
; End of function sub_EE0E


; =============== S U B R O U T I N E =======================================


sub_EE21:
                PHA
                JSR     wait_nmi_processed
                PLA
                LDX     #$1F

loc_EE28:                               ; CODE XREF: sub_EE21+B↓j
                STA     PalBG,X
                DEX
                BPL     loc_EE28
                BMI     lighten_color
; End of function sub_EE21

; =============== S U B R O U T I N E =======================================


sub_EEE4:                               ; CODE XREF: ROM:loc_CCC6↑p
                                        ; sub_EEF0+21↓p
                JSR     wait_nmi_processed
                LDA     #4
                EOR     CameraX
                STA     CameraX
                JMP     wait_nmi
; End of function sub_EEE4


; =============== S U B R O U T I N E =======================================


sub_EEF0:                               ; CODE XREF: main+35↑p
                LDA     PosX1F
                AND     #$F0
                BEQ     locret_EF1A
                STA     Pointer
                ASL     Pointer
                BCC     locret_EF1A
                JSR     sub_F1ED
                AND     #$C0
                BNE     locret_EF1A
                JSR     store_palettes
                JSR     sub_EF1B
                LDX     #$A

loc_EF0C:                               ; CODE XREF: sub_EEF0+25↓j
                LDA     #7
                STA     byte_7F0
                JSR     sub_EEE4
                DEX
                BNE     loc_EF0C
                JSR     back_palettes

locret_EF1A:                            ; CODE XREF: sub_EEF0+5↑j
                                        ; sub_EEF0+B↑j ...
                RTS
; End of function sub_EEF0


; =============== S U B R O U T I N E =======================================


sub_EF1B:                               ; CODE XREF: sub_EEF0+17↑p
                LDX     #$F

loc_EF1D:                               ; CODE XREF: sub_EF1B+14↓j
                CPX     #$E
                BEQ     loc_EF2E
                SEC
                LDA     PalNMIBG,X
                SBC     #$10
                BCS     loc_EF2B
                LDA     #$F

loc_EF2B:                               ; CODE XREF: sub_EF1B+C↑j
                STA     PalNMIBG,X

loc_EF2E:                               ; CODE XREF: sub_EF1B+4↑j
                DEX
                BPL     loc_EF1D
                JMP     loc_EEB3
; End of function sub_EF1B


; =============== S U B R O U T I N E =======================================


cursor_update:
                LDY     #8
                LDA     ($80),Y
                STA     CHRBank4
                INY
                LDA     ($80),Y
                STA     CHRBank5
                LDY     #6
                LDA     ($80),Y
                STA     PosX
                LDY     #7
                LDA     ($80),Y
                STA     PosY
; End of function cursor_update


; =============== S U B R O U T I N E =======================================


sub_EF4B:                               ; CODE XREF: sub_F5C2+16↓p
                LDY     #0
                LDA     ($80),Y
                STA     CHRBank6
                TAX
                LDY     #1
                LDA     ($80),Y
                JSR     multiply
                STA     CurrentFieldPosition
                LDY     #0
                STY     CHRBank7

loc_EF5F:                               ; CODE XREF: sub_EF4B+1B↓j
                LDA     ($84),Y
                BNE     loc_EF6D
                INY
                CPY     CurrentFieldPosition
                BCC     loc_EF5F
                STA     CurrentFieldPosition
                STA     Buttons
                RTS
; ---------------------------------------------------------------------------

loc_EF6D:                               ; CODE XREF: sub_EF4B+16↑j
                STY     CurrentFieldPosition
                TYA

loc_EF70:                               ; CODE XREF: sub_EF4B+2D↓j
                CMP     CHRBank6
                BCC     loc_EF7A
                SBC     CHRBank6
                INC     CHRBank7
                BCS     loc_EF70

loc_EF7A:                               ; CODE XREF: sub_EF4B+27↑j
                STA     CHRBank6
                JSR     wait_nmi_processed
                LDY     #$18
                STY     pTileID+1
                LDA     #0
                STA     OAM+2

loc_EF88:                               ; CODE XREF: sub_EF4B+B9↓j
                                        ; sub_EF4B:loc_F052↓j
                LDY     #5
                LDA     ($80),Y
                STA     OAM+1
                LDY     #2
                LDA     ($80),Y
                LDX     CHRBank6
                JSR     multiply
                CLC
                ADC     PosX
                ASL     A
                ASL     A
                ASL     A
                STA     OAM+3
                LDY     #3
                LDA     ($80),Y
                LDX     CHRBank7
                JSR     multiply
                CLC
                ADC     PosY
                ASL     A
                ASL     A
                ASL     A
                CLC
                ADC     #7
                STA     OAM
                LDY     pTileID+1

loc_EFB8:                               ; CODE XREF: sub_EF4B+90↓j
                LDX     #0
                STX     Gamepad0Buttons

loc_EFBC:                               ; CODE XREF: sub_EF4B+7C↓j
                JSR     sub_F1ED
                JSR     wait_nmi
                LDA     Gamepad0Buttons
                BNE     loc_EFE1
                DEY
                BNE     loc_EFBC
                LDY     #5
                LDA     ($80),Y
                EOR     OAM+1
                STA     OAM+1
                LDA     ButtonPressed
                BNE     loc_EFDD
                LDY     #$18
                STY     pTileID+1
                BNE     loc_EFB8

loc_EFDD:                               ; CODE XREF: sub_EF4B+8A↑j
                LDY     #6
                STY     pTileID+1

loc_EFE1:                               ; CODE XREF: sub_EF4B+79↑j
                LDX     #0
                STX     Gamepad0Buttons
                TAX
                LDY     #4
                AND     #$F0
                AND     ($80),Y
                BEQ     loc_EFFB
                STA     Buttons
                LDA     #5
                STA     byte_7F1

loc_EFF5:                               ; CODE XREF: sub_EF4B+119↓j
                LDA     #$F0
                STA     OAM
                RTS
; ---------------------------------------------------------------------------

loc_EFFB:                               ; CODE XREF: sub_EF4B+A1↑j
                TXA
                AND     #$F
                STA     Buttons
                TAY
                LDX     $F0D9,Y
                BMI     loc_EF88
                LDA     CHRBank6
                STA     pDist
                LDA     CHRBank7
                STA     byte_69
                STX     byte_6B

loc_F010:                               ; CODE XREF: sub_EF4B+162↓j
                CLC
                LDA     $F0EA,X
                ADC     byte_69
                LDY     #1
                CMP     ($80),Y
                BCS     loc_F055
                STA     byte_69
                STA     Pointer
                CLC
                LDA     $F0E9,X
                ADC     pDist
                LDY     #0
                CMP     ($80),Y
                BCS     loc_F055
                STA     pDist
                STA     byte_6A
                LDA     ($80),Y
                LDX     Pointer
                JSR     multiply
                CLC
                ADC     byte_6A
                STA     byte_6A
                TAY
                LDA     ($84),Y
                BEQ     loc_F067
                LDA     pDist
                STA     CHRBank6
                LDA     byte_69
                STA     CHRBank7
                LDA     byte_6A
                STA     CurrentFieldPosition
                LDA     #$D
                STA     byte_7F1

loc_F052:                               ; CODE XREF: sub_EF4B+110↓j
                JMP     loc_EF88
; ---------------------------------------------------------------------------

loc_F055:                               ; CODE XREF: sub_EF4B+CF↑j
                                        ; sub_EF4B+DF↑j ...
                LDY     #4
                LDA     Buttons
                AND     ($80),Y
                BEQ     loc_F052
                STA     Buttons
                LDA     #$D
                STA     byte_7F1
                JMP     loc_EFF5
; ---------------------------------------------------------------------------

loc_F067:                               ; CODE XREF: sub_EF4B+F4↑j
                LDX     byte_6B
                LDY     #1
                LDA     byte_D6
                BEQ     loc_F071
                INX
                DEY

loc_F071:                               ; CODE XREF: sub_EF4B+122↑j
                LDA     $F0E9,X
                BEQ     loc_F0AB

loc_F076:                               ; CODE XREF: sub_EF4B+152↓j
                STA     byte_6A
                SEC
                LDA     $68,Y
                SBC     $86,Y
                EOR     #$FF
                BPL     loc_F08E
                CLC
                ADC     $86,Y
                STA     $68,Y
                BPL     loc_F0A1
                BMI     loc_F099

loc_F08E:                               ; CODE XREF: sub_EF4B+136↑j
                SEC
                ADC     $86,Y
                STA     $68,Y
                CMP     ($80),Y
                BCC     loc_F0A1

loc_F099:                               ; CODE XREF: sub_EF4B+141↑j
                LDA     #0
                CMP     byte_6A
                BNE     loc_F076
                BEQ     loc_F055

loc_F0A1:                               ; CODE XREF: sub_EF4B+13F↑j
                                        ; sub_EF4B+14C↑j
                TYA
                EOR     #1
                TAY
                LDA     $86,Y
                STA     $68,Y

loc_F0AB:                               ; CODE XREF: sub_EF4B+129↑j
                LDX     byte_6B
                JMP     loc_F010
; End of function sub_EF4B


; =============== S U B R O U T I N E =======================================


get_cursor_pos:

; FUNCTION CHUNK AT ROM:C68B SIZE 0000002B BYTES

                PHA
                LDY     #2
                LDA     ($80),Y
                LDX     CHRBank6
                JSR     multiply
                CLC
                ADC     PosX
                STA     PosX
                LDY     #3
                LDA     ($80),Y
                LDX     CHRBank7
                JSR     multiply
                CLC
                ADC     PosY
                STA     PosY
                PLA
                JMP     sub_C68B
; End of function get_cursor_pos

; ---------------------------------------------------------------------------
                .BYTE 1, 2, 3, 4, 5, 6, 7, 8, $88, 2, 6, $88, 4, $88, $88
                .BYTE $88, 0, $88, $88, $88, $88, $88, $88, $88, 0, $FF
                .BYTE 1, 0, 0, 1, $FF, 0

; =============== S U B R O U T I N E =======================================


sub_F0F1:                               ; CODE XREF: sub_F2ED+41↓p
                                        ; sub_F479+C↓p
                LDA     #0
                LDX     #$10

loc_F0F5:                               ; CODE XREF: sub_F0F1+F↓j
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F0FE
                CLC
                ADC     pTileID

loc_F0FE:                               ; CODE XREF: sub_F0F1+8↑j
                ROR     A
                DEX
                BNE     loc_F0F5
                STA     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                RTS
; End of function sub_F0F1


; =============== S U B R O U T I N E =======================================


sub_F109:                               ; CODE XREF: sub_DB40+D↑p
                                        ; sub_DB40+10↑p ...
                LDA     #0
                LDX     #$18

loc_F10D:                               ; CODE XREF: sub_F109+11↓j
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F118
                CLC
                ADC     pTileID

loc_F118:                               ; CODE XREF: sub_F109+A↑j
                ROR     A
                DEX
                BNE     loc_F10D
                STA     AddrForJmp+1
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                RTS
; End of function sub_F109


; =============== S U B R O U T I N E =======================================


sub_F13D:                               ; CODE XREF: sub_DA48+10↑p
                                        ; sub_F2ED+33↓p
                LDA     pTileID

loc_F13F:                               ; CODE XREF: sub_F13D:loc_F13F↓j
                BEQ     loc_F13F
                LDA     #0
                LDX     #$18
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp

loc_F14B:                               ; CODE XREF: sub_F13D+1F↓j
                ROL     A
                BCS     loc_F152
                CMP     pTileID
                BCC     loc_F155

loc_F152:                               ; CODE XREF: sub_F13D+F↑j
                SBC     pTileID
                SEC

loc_F155:                               ; CODE XREF: sub_F13D+13↑j
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp
                DEX
                BNE     loc_F14B
                STA     pDist
                RTS
; End of function sub_F13D


; =============== S U B R O U T I N E =======================================


sub_F161:                               ; CODE XREF: ROM:C97F↑p
                LDY     #8

loc_F163:                               ; CODE XREF: sub_F161+2A↓j
                DEY
                LDA     #0
                LDX     #$18
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp

loc_F16E:                               ; CODE XREF: sub_F161+1B↓j
                ROL     A
                CMP     #$A
                BCC     loc_F175
                SBC     #$A

loc_F175:                               ; CODE XREF: sub_F161+10↑j
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp
                DEX
                BNE     loc_F16E
                TAX
                LDA     $F19A,X
                STA     $68,Y
                LDA     Pointer
                ORA     Pointer+1
                ORA     AddrForJmp
                BNE     loc_F163
                STY     AddrForJmp+1
                LDA     #$A0
                BNE     loc_F196

loc_F193:                               ; CODE XREF: sub_F161+36↓j
                STA     $68,Y

loc_F196:                               ; CODE XREF: sub_F161+30↑j
                DEY
                BPL     loc_F193
                RTS
; End of function sub_F161

; ---------------------------------------------------------------------------
                .BYTE $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9
                .BYTE $A0, 0, $84, $60, $84, $61, $84, $62, $F0, $18, $A9
                .BYTE 0, $A2, $18, $66, $62, $66, $61, $66, $60, $90, 2
                .BYTE $69, 9, $6A, $CA, $D0, $F2, $66, $62, $66, $61, $66
                .BYTE $60, $B9, $68, 0, $C9, $BA, $B0, 7, $C9, $B0, $90
                .BYTE 3, $E9, $B0, $2C, $A9, 0, $18, $65, $60, $85, $60
                .BYTE $A9, 0, $65, $61, $85, $61, $A9, 0, $65, $62, $85
                .BYTE $62, $C8, $C0, 8, $90, $C2, $60

; =============== S U B R O U T I N E =======================================


sub_F1ED:                               ; CODE XREF: sub_DA48+C7↑p
                                        ; sub_DB6C:loc_DB93↑p ...
                CLC
                LDA     byte_26
                ADC     byte_27
                STA     byte_27
                CLC
                LDA     byte_26
                ADC     #$75 ; 'u'
                STA     byte_26
                LDA     byte_27
                ADC     #$63 ; 'c'
                STA     byte_27
                RTS
; End of function sub_F1ED


; =============== S U B R O U T I N E =======================================


sub_F255:                               ; CODE XREF: start_battle+1B↑p
                CMP     NTAddrC
                BEQ     locret_F25D
                STA     byte_7F5

locret_F25D:                            ; CODE XREF: sub_F255+3↑j
                RTS
; End of function sub_F255

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F724

loc_F25E:                               ; CODE XREF: sub_F724-4BC↓j
                                        ; sub_F724+B↓j
                TXA
                BEQ     locret_F26A
                PHA
                JSR     wait_nmi
                PLA
                TAX
                DEX
                BNE     loc_F25E

locret_F26A:                            ; CODE XREF: sub_F724-4C5↑j
                RTS
; END OF FUNCTION CHUNK FOR sub_F724

; =============== S U B R O U T I N E =======================================


sub_F26B:
                INX

loc_F26C:                               ; CODE XREF: sub_F26B+9↓j
                TXA
                PHA
                JSR     sub_F27C
                PLA
                TAX
                DEX
                BNE     loc_F26C
                JSR     sub_F27C
                JMP     sub_F4B6
; End of function sub_F26B


; =============== S U B R O U T I N E =======================================


sub_F27C:                               ; CODE XREF: sub_F26B+3↑p
                                        ; sub_F26B+B↑p
                LDX     #$2F ; '/'

loc_F27E:                               ; CODE XREF: sub_F27C+17↓j
                TXA
                PHA
                AND     #$F
                LSR     A
                TAX
                LDA     $F296,X
                JSR     sub_F4B8
                JSR     wait_nmi
                JSR     wait_nmi
                PLA
                TAX
                DEX
                BNE     loc_F27E
                RTS
; End of function sub_F27C


; =============== S U B R O U T I N E =======================================


sub_F296:
                AND     ($22,X)
                RLA     ($24,X)
                AND     byte_24
                RLA     ($22,X)
                LDX     #0
                STX     Gamepad0Buttons

loc_F2A2:                               ; CODE XREF: sub_F296+15↓j
                JSR     wait_nmi
                LDA     Gamepad0Buttons
                STX     Gamepad0Buttons
                AND     #$C0
                BEQ     loc_F2A2
                RTS
; End of function sub_F296


; =============== S U B R O U T I N E =======================================


sub_F2AE:                               ; CODE XREF: sub_F6AA+5↓p
                ASL     A
                TAY
                INY
                INY
                INY
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                LDY     #1
                SEC
                LDA     (Pointer),Y
                SBC     #1
                TAX
                INY
                LDA     (Pointer),Y
                SBC     #0
                PHA
                TXA
                PHA
                JMP     (AddrForJmp)
; End of function sub_F2AE


; =============== S U B R O U T I N E =======================================


sub_F2D5:
                ASL     A
                TAY
                INY
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                SEC
                LDA     (Pointer),Y
                SBC     #1
                TAX
                INY
                LDA     (Pointer),Y
                SBC     #0
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
                LDA     AddrForJmp+1
                PHA
                LDA     AddrForJmp
                PHA
                LDA     pTileID+1
                PHA
                LDA     pTileID
                PHA
                LDA     byte_69
                PHA
                LDA     pDist
                PHA
                LDA     Pointer+1
                AND     #$FC
                PHA
                LDX     #6

loc_F30B:                               ; CODE XREF: sub_F2ED+23↓j
                ASL     Pointer
                ROL     Pointer+1
                DEX
                BNE     loc_F30B
                STX     AddrForJmp
                TXA
                PHA
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     #$64 ; 'd'
                STA     pTileID
                JSR     sub_F13D
                JSR     sub_F1ED
                LSR     A
                PHP
                TAX
                LDA     $F37D,X
                STA     pTileID
                JSR     sub_F0F1
                PLP
                BCS     loc_F346
                PLA
                ADC     Pointer
                STA     Pointer
                PLA
                ADC     Pointer+1
                STA     Pointer+1
                PLA
                ADC     AddrForJmp
                STA     AddrForJmp
                JMP     loc_F355
; ---------------------------------------------------------------------------

loc_F346:                               ; CODE XREF: sub_F2ED+45↑j
                PLA
                SBC     Pointer
                STA     Pointer
                PLA
                SBC     Pointer+1
                STA     Pointer+1
                PLA
                SBC     AddrForJmp
                STA     AddrForJmp

loc_F355:                               ; CODE XREF: sub_F2ED+56↑j
                LDX     #6

loc_F357:                               ; CODE XREF: sub_F2ED+71↓j
                LSR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                DEX
                BNE     loc_F357
                PLA
                ORA     Pointer+1
                STA     Pointer+1
                PLA
                STA     pDist
                PLA
                STA     byte_69
                PLA
                STA     pTileID
                PLA
                STA     pTileID+1
                PLA
                STA     AddrForJmp
                PLA
                STA     AddrForJmp+1
                PLA
                TAY
                PLA
                TAX
                PLA
                RTS
; End of function sub_F2ED

; ---------------------------------------------------------------------------
                .BYTE 0, 0, 0, 0, 0, $C, $C, $C, $C, $C, 1, 1, 1, 1, 1
                .BYTE 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3
                .BYTE 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4
                .BYTE 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, $14, 6, 6, 6, 6, 6
                .BYTE 6, 6, 6, 6, $15, 7, 7, 7, 7, 7, 7, 7, 7, $11, $11
                .BYTE 8, 8, 8, 8, 8, 8, 8, 8, $12, $12, 9, 9, 9, 9, 9
                .BYTE 9, 9, $F, $F, $F, $A, $A, $A, $A, $A, $A, $D, $D
                .BYTE $D, $D, $B, $B, $B, $B, $B, $B, $E, $E, $E, $E, $10
                .BYTE $10, $10, $13, $13, $16, $17, $18, $AA, $A5, $61
                .BYTE $48, $A5, $60, $48, $86, $60, $A9, 0, $85, $61, $20
                .BYTE $ED, $F2, $A5, $61, $F0, 4, $A9, $FF, $85, $60, $A6
                .BYTE $60, $68, $85, $60, $68, $85, $61, $8A, $60, $48
                .BYTE $A, $A, $F0, $3F, $AA, $BD, $EA, $9E, $85, $65, $BD
                .BYTE $EB, $9E, $85, $67, $BD, $E9, $9E, $C9, 0, $D0, 8
                .BYTE $A5, $65, $8D, $F0, 7, $4C, $5B, $F4, $C9, 1, $D0
                .BYTE 8, $A5, $65, $8D, $F1, 7, $4C, $5B, $F4, $C9, 2
                .BYTE $D0, 8, $A5, $65, $8D, $F3, 7, $4C, $5B, $F4, $A5
                .BYTE $65, $8D, $F4, 7, $A6, $67, $20, $5E, $F2, $20, $39
                .BYTE $F2, $68, $60, $A2, $F, $8A, $48, $A9, 5, $8D, $F1
                .BYTE 7, $A2, 2, $20, $5E, $F2, $68, $AA, $CA, $D0, $EF
                .BYTE $60


; =============== S U B R O U T I N E =======================================


sub_F4B6:                               ; CODE XREF: sub_F26B+E↑j
                LDA     #$F
; End of function sub_F4B6


; =============== S U B R O U T I N E =======================================


sub_F4B8:                               ; CODE XREF: sub_F27C+B↑p
                PHA
                JSR     wait_nmi_processed
                PLA
                LDY     #$1C

loc_F4BF:                               ; CODE XREF: sub_F4B8+E↓j
                STA     PalNMIBG,Y
                DEY
                DEY
                DEY
                DEY
                BPL     loc_F4BF
                JSR     set_nmi_id4
                JMP     wait_nmi
; End of function sub_F4B8


; =============== S U B R O U T I N E =======================================


sub_F4CE:
                ASL     A
                STA     Pointer
                TXA
                PHA
                TYA
                PHA
                JSR     bank0
                LDY     Pointer
                LDA     $8C00,Y
                STA     Pointer
                LDA     $8C01,Y
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     byte_66
                INY
                LDX     PosX
                LDA     (Pointer),Y
                CMP     #$FF
                BEQ     loc_F4F4
                TAX

loc_F4F4:                               ; CODE XREF: sub_F4CE+23↑j
                STX     AddrForJmp
                INY
                LDX     PosY
                LDA     (Pointer),Y
                CMP     #$FF
                BEQ     loc_F500
                TAX

loc_F500:                               ; CODE XREF: sub_F4CE+2F↑j
                STX     AddrForJmp+1

loc_F502:                               ; CODE XREF: sub_F4CE+50↓j
                                        ; sub_F4CE+55↓j
                INY
                LDA     (Pointer),Y
                LDX     #0
                CMP     #$FC
                BEQ     loc_F521
                LDX     #1
                CMP     #$FD
                BEQ     loc_F521
                LDX     #2
                CMP     #$FE
                BEQ     loc_F521
                CMP     #$FF
                BEQ     loc_F526
                JSR     sub_F52E
                JMP     loc_F502
; ---------------------------------------------------------------------------

loc_F521:                               ; CODE XREF: sub_F4CE+3B↑j
                                        ; sub_F4CE+41↑j ...
                STX     byte_67
                JMP     loc_F502
; ---------------------------------------------------------------------------

loc_F526:                               ; CODE XREF: sub_F4CE+4B↑j
                JSR     bank16
                PLA
                TAY
                PLA
                TAX
                RTS
; End of function sub_F4CE


; =============== S U B R O U T I N E =======================================


sub_F52E:                               ; CODE XREF: sub_F4CE+4D↑p
                TAX
                INY
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1

loc_F539:                               ; CODE XREF: sub_F52E+31↓j
                TXA
                PHA
                TYA
                PHA
                JSR     wait_nmi_processed
                LDA     #0
                STA     byte_70
                LDA     AddrForJmp
                STA     PosX
                LDA     pTileID
                STA     PointerTilePack
                LDA     pTileID+1
                STA     PointerTilePack+1
                JSR     sub_F562
                CLC
                LDA     AddrForJmp+1
                ADC     byte_66
                STA     AddrForJmp+1
                PLA
                TAY
                PLA
                TAX
                DEX
                BNE     loc_F539
                RTS
; End of function sub_F52E


; =============== S U B R O U T I N E =======================================


sub_F562:                               ; CODE XREF: sub_F52E+22↑p
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     AddrForJmp
                PHA
                LDA     pTileID+1
                PHA
                LDA     pTileID
                PHA
                LDA     byte_67
                PHA
                LDA     byte_66
                PHA
                LDA     byte_67
                BEQ     loc_F58D
                CMP     #1
                BEQ     loc_F59E
                LDA     AddrForJmp+1
                STA     PosY
                PHA
                JSR     sub_C6D2
                PLA
                STA     AddrForJmp+1
                JMP     loc_F5AC
; ---------------------------------------------------------------------------

loc_F58D:                               ; CODE XREF: sub_F562+17↑j
                CLC
                LDA     AddrForJmp+1
                ADC     byte_66
                STA     PosY
                PHA
                JSR     sub_C707
                PLA
                STA     AddrForJmp+1
                JMP     loc_F5AC
; ---------------------------------------------------------------------------

loc_F59E:                               ; CODE XREF: sub_F562+1B↑j
                CLC
                LDA     AddrForJmp+1
                ADC     byte_66
                STA     PosY
                PHA
                JSR     sub_C6DB
                PLA
                STA     AddrForJmp+1

loc_F5AC:                               ; CODE XREF: sub_F562+28↑j
                                        ; sub_F562+39↑j
                PLA
                STA     byte_66
                PLA
                STA     byte_67
                PLA
                STA     pTileID
                PLA
                STA     pTileID+1
                PLA
                STA     AddrForJmp
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                RTS
; End of function sub_F562


; =============== S U B R O U T I N E =======================================


sub_F5C2:
                LDA     byte_5A
                PHA
                JSR     sub_F765
                LDA     #$DF
                STA     CHRBank4
                LDA     #$F5
                STA     CHRBank5
                LDA     #$DF
                STA     CHRBank0
                LDA     #$F5
                STA     CHRBank1
                JSR     sub_EF4B
                PLA
                STA     byte_5A
                RTS
; End of function sub_F5C2

; ---------------------------------------------------------------------------
                .BYTE 1, 1, 0, 0

; =============== S U B R O U T I N E =======================================


sub_F5E3:
                CPY     #$5D ; ']'
                PHA
                TXA
                PHA
                TYA
                PHA
                JSR     sub_C406
                JSR     sub_F614
                PLA
                TAY
                PLA
                TAX
                PLA
                SEC
                RTS
; End of function sub_F5E3


; =============== S U B R O U T I N E =======================================


sub_F614:                               ; CODE XREF: sub_F5E3+A↑p
                JSR     wait_nmi_processed
                LDY     #$E8
                STY     pDist
                LDA     #$DF
                STA     byte_69
                LDY     byte_6707

loc_F622:                               ; CODE XREF: sub_F614+16↓j
                SEC
                LDA     byte_69
                SBC     #$10
                STA     byte_69
                DEY
                BNE     loc_F622
                LDA     #0
                STA     byte_66

loc_F630:                               ; CODE XREF: sub_F614+5C↓j
                JSR     wait_nmi_processed
                LDY     byte_66
                LDA     $600,Y
                BEQ     loc_F660
                LDA     $611,Y
                AND     #6
                EOR     #6
                BEQ     loc_F660
                LDX     #2
                LDA     $601,Y
                AND     #$80
                BNE     loc_F655
                LDX     #1
                JSR     sub_F673
                BCC     loc_F655
                LDX     #0

loc_F655:                               ; CODE XREF: sub_F614+36↑j
                                        ; sub_F614+3D↑j
                TXA
                JSR     sub_F6AA
                CLC
                LDA     pDist
                ADC     #8
                STA     pDist

loc_F660:                               ; CODE XREF: sub_F614+24↑j
                                        ; sub_F614+2D↑j
                CLC
                LDA     byte_69
                ADC     #$10
                STA     byte_69
                CLC
                LDA     byte_66
                ADC     #$20 ; ' '
                STA     byte_66
                CMP     #$60 ; '`'
                BNE     loc_F630
                RTS
; End of function sub_F614


; =============== S U B R O U T I N E =======================================


sub_F673:                               ; CODE XREF: sub_F614+3A↑p
                TYA
                PHA
                LDA     $618,Y
                STA     Pointer
                LDA     $619,Y
                STA     Pointer+1
                LDA     $603,Y
                STA     pTileID
                LDA     $604,Y
                STA     pTileID+1
                LDY     #3
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                AND     #3
                STA     AddrForJmp+1
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                PLA
                TAY
                SEC
                LDA     pTileID
                SBC     AddrForJmp
                LDA     pTileID+1
                SBC     AddrForJmp+1
                RTS
; End of function sub_F673


; =============== S U B R O U T I N E =======================================


sub_F6AA:                               ; CODE XREF: sub_F614+42↑p
                PHA
                JSR     wait_nmi_processed
                PLA
                JSR     sub_F2AE
                TSX
                INC     $BF,X
                INC     $C8,X
                INC     $F0,X
                INC     $A9,X
                ORA     ($85,X)
                SBC     Pointer
                LDA     #0
                LDX     #$C
                LDY     #$97
                JMP     loc_F6F9
; ---------------------------------------------------------------------------
                LDX     pDist
                LDA     $300,X
                PHA
                LDA     #3
                LDX     #$C
                LDY     #$97
                JSR     loc_F6F9
                PLA
                CMP     #3
                BEQ     locret_F6EF
                LDX     #4

loc_F6DE:                               ; CODE XREF: sub_F6AA+43↓j
                TXA
                PHA
                LDA     #0
                JSR     sub_F724
                LDA     #3
                JSR     sub_F724
                PLA
                TAX
                DEX
                BNE     loc_F6DE

locret_F6EF:                            ; CODE XREF: sub_F6AA+30↑j
                RTS
; ---------------------------------------------------------------------------
                LDA     #3
                LDX     #$10
                LDY     #$97
                JMP     loc_F6F9
; ---------------------------------------------------------------------------

loc_F6F9:                               ; CODE XREF: sub_F6AA+1B↑j
                                        ; sub_F6AA+2A↑p ...
                STX     Pointer
                STY     Pointer+1
                LDX     pDist
                STA     $300,X
                LDA     #8
                STA     $301,X
                LDA     #$70 ; 'p'
                STA     $302,X
                LDA     byte_69
                STA     $303,X
                LDA     #0
                STA     $304,X
                STA     $305,X
                LDA     Pointer
                STA     $306,X
                LDA     Pointer+1
                STA     $307,X
                RTS
; End of function sub_F6AA


; =============== S U B R O U T I N E =======================================


sub_F724:                               ; CODE XREF: sub_F6AA+38↑p
                                        ; sub_F6AA+3D↑p

; FUNCTION CHUNK AT ROM:F25E SIZE 0000000D BYTES

                LDX     pDist
                STA     $300,X
                LDA     #1
                STA     NMIFlags
                LDX     #8
                JMP     loc_F25E
; End of function sub_F724

; =============== S U B R O U T I N E =======================================


sub_F760:
                LDA     #1
                STA     byte_5A
                RTS
; End of function sub_F760


; =============== S U B R O U T I N E =======================================


sub_F765:                               ; CODE XREF: sub_F5C2+3↑p
                LDA     #0
                STA     byte_5A
                RTS
; End of function sub_F765


; =============== S U B R O U T I N E =======================================


sub_F76A:
                LDA     byte_5A
                BEQ     locret_F771
                JSR     sub_F772

locret_F771:                            ; CODE XREF: sub_F76A+2↑j
                RTS
; End of function sub_F76A


; =============== S U B R O U T I N E =======================================


sub_F772:                               ; CODE XREF: sub_F76A+4↑p
                LDA     byte_59
                BEQ     locret_F79E
                BIT     flag_clear_OAM_300
                BVS     locret_F79E
                LDX     #0
                LDA     Gamepad0Buttons
                STX     Gamepad0Buttons
                AND     #$40 ; '@'
                BEQ     locret_F79E
                TXA
                STA     byte_59
                STA     byte_3E0
                LDA     byte_3E1
                ASL     A
                ASL     A
                TAY
                LDA     #$F0
                STA     $200,Y
                STA     $204,Y
                STA     $208,Y
                STA     $20C,Y

locret_F79E:                            ; CODE XREF: sub_F772+2↑j
                                        ; sub_F772+6↑j ...
                RTS
; End of function sub_F772