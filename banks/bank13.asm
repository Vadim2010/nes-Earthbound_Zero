; ===========================================================================

; Segment type: Pure code
                ;.segment BANK13
                ;* =  $A000

; =============== S U B R O U T I N E =======================================


sub_13A000:                             ; CODE XREF: main:loc_CBDC↑P
                LDA     #5
                STA     byte_7F1

loc_13A005:                             ; DATA XREF: BANK13:off_13A1A4↓o
                LDA     $761E
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
                JSR     state
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
                STX     Column
                STY     Row
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
off_13A1A4:     .word sub_13A1EA-1, sub_13A20F-1, sub_13A262-1, loc_13A005-1
                .word sub_13A238-1, sub_13A1BA-1
                .byte 2, 3, 6, 2, $C0, $3A, 2, 3,
                .word $F0D1

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
off_13A2BC:     .word sub_13A2C6-1, sub_13A37D-1, sub_13A315-1, sub_13A390-1
                                        ; DATA XREF: sub_13A262+55↑r
                                        ; sub_13A262+51↑r
                .word sub_13A3A9-1

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
off_13A3CB:     .word sub_13A443-1, sub_13A451-1, sub_13A443-1, sub_13A443-1
                                        ; DATA XREF: sub_13A3BC+A↑r
                                        ; sub_13A3BC+6↑r
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
                STA     CurrentGame + GAME_SAVE::PureSave.field_19
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
                LDA     #1              ; sub_13BD0D
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
                DEC     CurrentGame + GAME_SAVE::PureSave.field_1F
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
                LDA     CurrentGame + GAME_SAVE::field_21F
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
                LDA     BankTable + BANK_TABLE::CPU_8K_8000
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
                CMP     CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
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
                LDA     CurrentGame + GAME_SAVE::field_21C
                BPL     loc_13A7E2
                JMP     sub_13A443
; ---------------------------------------------------------------------------

loc_13A7E2:                             ; CODE XREF: sub_13A7D7+6↑j
                JSR     sram_write_enable
                LDX     #3

loc_13A7E7:                             ; CODE XREF: sub_13A7D7+17↓j
                LDA     byte_13A803,X
                STA     CurrentGame + GAME_SAVE::PureSave.GlobalX,X
                DEX
                BPL     loc_13A7E7
                JSR     sub_D9FA
                JSR     loc_D8CE
                LDA     #2              ; check_copyright
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
                LDA     MapSectorID
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
                STA     OAM + OAM_TILE::TileID
                LDA     #0
                STA     OAM + OAM_TILE::Attr
                LDX     #$40 ; '@'
                LDA     byte_6785
                JSR     sub_13A8D4
                SBC     #8
                STA     OAM + OAM_TILE::PosX
                LDX     #$80
                LDA     byte_6787
                JSR     sub_13A8D4
                SBC     #$21 ; '!'
                STA     OAM + OAM_TILE::PosY
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
                EOR     OAM + OAM_TILE::TileID
                STA     OAM + OAM_TILE::TileID
                BIT     Gamepad0Buttons
                BVC     loc_13A899
                LDA     #0
                STA     Gamepad0Buttons
                LDA     #$F0
                STA     OAM + OAM_TILE::PosY
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
                STA     DMCflag
                JSR     clear_oam_sprite
                JMP     draw_screen
; End of function sub_13A82F


; =============== S U B R O U T I N E =======================================


sub_13A8D4:                             ; CODE XREF: sub_13A82F+4A↑p
                                        ; sub_13A82F+57↑p
                SEC
                BPL     @exit
                TAY
                TXA
                ORA     OAM + OAM_TILE::Attr
                STA     OAM + OAM_TILE::Attr
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


sub_13A979:                             ; CODE XREF: sub_DA48+DC↑P
                                        ; sub_13A315+11↑p ...
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
                STA     CurrentGame + GAME_SAVE::field_220,Y
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
                LDA     word_13AA87,X
                STA     PointerTilePack
                LDA     word_13AA87+1,X
                STA     byte_73
                RTS
; End of function sub_13AA7C

; ---------------------------------------------------------------------------
word_13AA87:    .word 0, $385, $386, $387, 0, $3D7, $3DB, $6C7, $6C8, $6D0
                                        ; DATA XREF: sub_13AA7C↑r
                                        ; sub_13AA7C+5↑r
                .word $6C9, $38E, $38F, $390, $391, $392, $393, $394, $395
                .word $396, $397, $398, $6AF, $6B0, $6B1, $6B2, $6B3, $6B4
                .word $6B5, $6B6, $6B7, $6B8, $6B9, $6BA, $6BB, $6BC, $6BD
                .word $6BE, $6A7, $6A8, $6A5, $6AA, $6A9, $6C1, $6A6, $6C3
                .word $6C4, $6C5, $6C6, $6BF, $6C0, $399, $39A, $39B, $6CB
                .word $39D, $6CC, $6CD, $6CA, $3A1, $6CF, $6CE, $14, $16
                .word $338, $18, $21, $1B

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
                JMP     wait_press_button
; ---------------------------------------------------------------------------

loc_13AB3C:                             ; CODE XREF: sub_13AB0F+23↑j
                SEC
                RTS
; End of function sub_13AB0F


; =============== S U B R O U T I N E =======================================


sub_13AB3E:                             ; CODE XREF: sub_13A9D6↑p
                                        ; sub_13AB0F↑p ...
                JSR     sub_E655

@load_msg_bank:                         ; CODE XREF: sub_13AD27:loc_13AD61↓p
                                        ; sub_13AFD1+11↓p ...
                LDY     #1
                LDA     (Dist),Y        ; get msg number
                JMP     set_msg_bank
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
off_13AB69:     .word loc_13AB30-1, loc_13AC88-1, sub_13AC8D-1, return-1
                                        ; DATA XREF: sub_13AB5E+6↑r
                                        ; sub_13AB5E+2↑r
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
                LDA     CurrentGame + GAME_SAVE::PureSave.GlobalX
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
                LDY     Row
                CPY     #$1B
                BCC     loc_13AD36
                JSR     sub_13AD98
                DEC     byte_2D
                BMI     loc_13AD84

loc_13AD36:                             ; CODE XREF: sub_13AD27+6↑j
                LDA     byte_2D
                BNE     loc_13AD40
                LDY     Row
                CPY     #$19
                BCS     loc_13AD84

loc_13AD40:                             ; CODE XREF: sub_13AD27+11↑j
                                        ; sub_13AD27+67↓j
                JSR     text2stack
                LDA     #$16
                STA     byte_70
                LDA     #0
                STA     byte_71
                JSR     print_string
                JSR     move_chars      ; Move $A4 chars from $432-4D6 to $45B-4FF
                CMP     #0
                BEQ     loc_13AD61
                LDY     #0
                LDA     (PointerTilePack),Y
                CMP     #3
                BEQ     loc_13AD75
                CMP     #0
                BNE     loc_13AD29

loc_13AD61:                             ; CODE XREF: sub_13AD27+2C↑j
                JSR     @load_msg_bank
                LDA     #0
                STA     byte_70
                STA     byte_71
                LDY     byte_35

loc_13AD6C:                             ; CODE XREF: sub_13AD27:loc_13AD84↓p
                SEC
                LDA     Row
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
                LDY     Row
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
                DEC     Row
                DEC     Row
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
                STA     Column
                LDA     #$D1
                LDX     #$F0            ; ROM:F0D1
                STA     pStr
                STX     pStr+1
                JSR     loc_EF4B
                LDA     #8
                STA     Column
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
                STA     CurrentGame + GAME_SAVE::field_200,Y
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
                STA     CurrentGame + GAME_SAVE::field_200,Y
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
                INC     CurrentGame + GAME_SAVE::field_260,X
                JMP     sram_read_enable
; End of function sub_13AE5E


; =============== S U B R O U T I N E =======================================


sub_13AE6C:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                JSR     sram_write_enable
                DEC     CurrentGame + GAME_SAVE::field_260,X
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
                STA     CurrentGame + GAME_SAVE::field_260,X
                JMP     sram_read_enable
; End of function sub_13AE7A


; =============== S U B R O U T I N E =======================================


sub_13AE8A:                             ; DATA XREF: BANK13:off_13AB69↑o
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                LDA     CurrentGame + GAME_SAVE::field_260,X
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
                LDA     CurrentGame + GAME_SAVE::PureSave.cash
                STA     word_2A
                LDA     CurrentGame + GAME_SAVE::PureSave.cash+1
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
                LDA     CurrentGame + GAME_SAVE::PureSave.cash
                ADC     word_2A
                STA     Pointer
                LDA     CurrentGame + GAME_SAVE::PureSave.cash+1
                ADC     word_2A+1
                STA     Pointer+1
                BCS     loc_13AF12
                BCC     loc_13AEFF

loc_13AEEE:                             ; DATA XREF: BANK13:off_13AB69↑o
                SEC
                LDA     CurrentGame + GAME_SAVE::PureSave.cash
                SBC     word_2A
                STA     Pointer
                LDA     CurrentGame + GAME_SAVE::PureSave.cash+1
                SBC     word_2A+1
                STA     Pointer+1
                BCC     loc_13AF12

loc_13AEFF:                             ; CODE XREF: sub_13AEDB+11↑j
                JSR     sram_write_enable
                LDA     Pointer
                STA     CurrentGame + GAME_SAVE::PureSave.cash
                LDA     Pointer+1
                STA     CurrentGame + GAME_SAVE::PureSave.cash+1
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
                LDA     CurrentGame + GAME_SAVE::PureSave.field_12
                ADC     word_2A
                STA     Pointer
                LDA     CurrentGame + GAME_SAVE::PureSave.field_12+1
                ADC     word_2A+1
                STA     Pointer+1
                LDA     CurrentGame + GAME_SAVE::PureSave.field_14
                ADC     #0
                STA     AddrForJmp
                BCS     loc_13AF12
                BCC     loc_13AF47

loc_13AF2F:                             ; DATA XREF: BANK13:off_13AB69↑o
                SEC
                LDA     CurrentGame + GAME_SAVE::PureSave.field_12
                SBC     word_2A
                STA     Pointer
                LDA     CurrentGame + GAME_SAVE::PureSave.field_12+1
                SBC     word_2A+1
                STA     Pointer+1
                LDA     CurrentGame + GAME_SAVE::PureSave.field_14
                SBC     #0
                STA     AddrForJmp
                BCC     loc_13AF12

loc_13AF47:                             ; CODE XREF: sub_13AF15+18↑j
                JSR     sram_write_enable
                LDA     Pointer
                STA     CurrentGame + GAME_SAVE::PureSave.field_12
                LDA     Pointer+1
                STA     CurrentGame + GAME_SAVE::PureSave.field_12+1
                LDA     AddrForJmp
                STA     CurrentGame + GAME_SAVE::PureSave.field_14
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
                JSR     get_offset      ; Input: Pointer - first multiplier
                                        ;        pTileID - second multiplier
                                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
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
                JSR     @load_msg_bank
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
                LDA     Column
                PHA
                LDA     Row
                PHA
                STY     byte_35
                JSR     sub_13B763
                PLA
                STA     Row
                PLA
                STA     Column
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
                LDA     CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
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
                STX     Column
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
                STX     Column
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
                LDA     Column
                PHA
                LDA     Row
                PHA
                JSR     sub_13B87F
                JMP     loc_13B1A5
; End of function sub_13B172


; =============== S U B R O U T I N E =======================================


sub_13B184:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$22 ; '"'
                STA     byte_2C
                STY     byte_35
                LDA     Column
                PHA
                LDA     Row
                PHA
                JSR     sub_13B814
                JMP     loc_13B1A5
; End of function sub_13B184


; =============== S U B R O U T I N E =======================================


sub_13B196:                             ; DATA XREF: BANK13:off_13AB69↑o
                LDA     #$20 ; ' '
                STA     byte_2C
                STY     byte_35
                LDA     Column
                PHA
                LDA     Row
                PHA
                JSR     sub_13B7B6

loc_13B1A5:                             ; CODE XREF: sub_13B172+F↑j
                                        ; sub_13B184+F↑j
                PLA
                STA     Row
                PLA
                STA     Column
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
                STA     CurrentGame + GAME_SAVE::field_280
                STY     AddrForJmp
                JSR     loc_13BC5A
                JSR     @load_msg_bank

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
                LDA     CurrentGame + GAME_SAVE::field_280
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
                LDA     BankTable + BANK_TABLE::PPU_2K_1800
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
                STA     MsgNumber
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
                JSR     @load_msg_bank
                JSR     sram_write_enable
                LDX     #3

loc_13B4D0:                             ; CODE XREF: sub_13B4A9+2E↓j
                LDA     CurrentGame + GAME_SAVE::PureSave.GlobalX,X
                STA     CurrentGame + GAME_SAVE::PureSave.field_C,X
                DEX
                BPL     loc_13B4D0
                LDA     #0
                STA     CurrentGame + GAME_SAVE::PureSave.field_15
                STA     CurrentGame + GAME_SAVE::PureSave.field_16
                STA     CurrentGame + GAME_SAVE::PureSave.field_17
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
                LDA     CurrentGame + GAME_SAVE::PureSave.field_C,X
                STA     CurrentGame + GAME_SAVE::PureSave.GlobalX,X
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
                LDA     CurrentGame + GAME_SAVE::PureSave.field_15
                ORA     CurrentGame + GAME_SAVE::PureSave.field_16
                ORA     CurrentGame + GAME_SAVE::PureSave.field_17
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
                LDA     CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
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
                LDA     CurrentGame + GAME_SAVE::PureSave.GlobalX
                AND     #$C0
                ORA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     CurrentGame + GAME_SAVE::PureSave.GlobalX
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
                ORA     CurrentGame + GAME_SAVE::PureSave.Characters.field_30
                STA     CurrentGame + GAME_SAVE::PureSave.Characters.field_30
                LDA     #$20 ; ' '
                ORA     CurrentGame + GAME_SAVE::PureSave.Characters.field_30+$40
                STA     CurrentGame + GAME_SAVE::PureSave.Characters.field_30+$40
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
                LDA     CurrentGame + GAME_SAVE::field_21E
                CMP     #$FF
                BEQ     loc_13B6F4
                JMP     loc_13AC88
; ---------------------------------------------------------------------------

loc_13B6F4:                             ; CODE XREF: sub_13B6EA+5↑j
                JSR     sram_write_enable
                LDX     #3

loc_13B6F9:                             ; CODE XREF: sub_13B6EA+16↓j
                LDA     byte_13B708,X
                STA     CurrentGame + GAME_SAVE::PureSave.field_C,X
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
                LDA     Column
                PHA
                LDA     Row
                PHA
                JSR     sub_13B9E4
                PLA
                STA     Row
                PLA
                STA     Column
                LDY     byte_35
                INY
                RTS
; End of function sub_13B70C


; =============== S U B R O U T I N E =======================================


sub_13B725:                             ; DATA XREF: BANK13:off_13AB69↑o
                JSR     wait_nmi_processed
                JSR     bg_blackout
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
                JSR     @load_msg_bank
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
                JSR     @load_msg_bank
                LDY     byte_35
                INY
                RTS
; End of function sub_13B751


; =============== S U B R O U T I N E =======================================


sub_13B763:                             ; CODE XREF: sub_13AA4E+11↑p
                                        ; sub_13B0AD+C↑p
                LDX     #2
                LDY     #$19
                STX     Column
                STY     Row
                LDX     #2

loc_13B76D:                             ; CODE XREF: sub_13B763+19↓j
                LDA     byte_6704,X
                BEQ     loc_13B77E
                LDA     #$A0
                JSR     sub_C68B
                DEC     Row
                DEC     Row
                DEX
                BPL     loc_13B76D

loc_13B77E:                             ; CODE XREF: sub_13B763+D↑j
                DEC     Column
                SEC
                LDA     Row
                SBC     #4
                STA     Row
                JSR     sub_C3C0
                JSR     @load_msg_bank
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
                JSR     goods_psi
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
                JSR     @load_msg_bank
                SEC
                LDA     byte_35
                ADC     Source          ; byte_109EAB, byte_109EB3
                STA     pStr
                LDA     #0
                ADC     Source+1        ; byte_109EAB, byte_109EB3
                STA     pStr+1
                LDY     #3

loc_13B829:                             ; CODE XREF: sub_13B814+45↓j
                STY     Row
                LDY     byte_35
                INY
                STY     byte_35
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     byte_29
                BEQ     loc_13B853
                LDA     #$C
                STA     byte_70
                LDX     #3
                STX     Column
                JSR     sub_13BBAF
                JSR     sub_13BBC3
                LDA     #0
                STA     byte_70
                LDX     #$F
                STX     Column
                LDA     #$6F ; 'o'
                LDX     #$B8            ; B86F
                JSR     sub_13AC44

loc_13B853:                             ; CODE XREF: sub_13B814+20↑j
                LDY     Row
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
                JSR     goods_psi
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
                LDA     CurrentGame + GAME_SAVE::field_2B0,X
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
                JSR     goods_psi
                LDX     #$FF

loc_13B8EB:                             ; CODE XREF: sub_13B8E6+F↓j
                                        ; sub_13B8E6+13↓j ...
                INX
                CPX     #3
                BCC     loc_13B8F2
                LDX     #0

loc_13B8F2:                             ; CODE XREF: sub_13B8E6+8↑j
                                        ; sub_13B8E6+47↓j
                LDA     CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
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
                JSR     goods_psi
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
                LDA     CurrentGame + GAME_SAVE::field_21D
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
                STA     CurrentGame + GAME_SAVE::PureSave.field_31
                STA     ItemCount
                LDY     #$10
                LDA     #$A2

loc_13BA07:                             ; CODE XREF: sub_13B9E4+27↓j
                STA     CurrentGame + GAME_SAVE::PureSave.field_20,Y
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
                LDA     CurrentGame + GAME_SAVE::PureSave.field_20,Y
                CMP     #$A2
                BNE     loc_13BA30
                DEY

loc_13BA30:                             ; CODE XREF: sub_13B9E4+49↑j
                LDA     #$A2
                STY     ItemCount
                STA     CurrentGame + GAME_SAVE::PureSave.field_20,Y
                BNE     loc_13BA18

loc_13BA39:                             ; CODE XREF: sub_13B9E4+3C↑j
                LDY     CurrentFieldPosition
                CPY     #$10
                BEQ     loc_13BA24
                CPY     #$26 ; '&'
                BEQ     loc_13BA54
                LDA     byte_580,Y
                LDY     ItemCount
                STA     CurrentGame + GAME_SAVE::PureSave.field_20,Y
                CPY     #$10
                BCS     loc_13BA18
                INY
                STY     ItemCount
                BNE     loc_13BA18

loc_13BA54:                             ; CODE XREF: sub_13B9E4+3E↑j
                                        ; sub_13B9E4+5D↑j
                LDY     ItemCount
                BEQ     loc_13BA18
                LDA     CurrentGame + GAME_SAVE::PureSave.field_20,Y
                CMP     #$A2
                BEQ     loc_13BA60
                INY

loc_13BA60:                             ; CODE XREF: sub_13B9E4+79↑j
                LDA     #0
                STA     CurrentGame + GAME_SAVE::PureSave.field_20,Y
                STA     byte_D6
                LDA     #$F0
                STA     OAM + OAM_TILE::PosY+4
                JSR     sram_read_enable
                JMP     @load_msg_bank
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
                STA     OAM + OAM_TILE::PosY+4
                LDA     #1
                STA     OAM + OAM_TILE::TileID+4
                LDA     #0
                STA     OAM + OAM_TILE::Attr+4
                LDA     ItemCount
                ASL     A
                ASL     A
                ASL     A
                ADC     #$48 ; 'H'
                STA     OAM + OAM_TILE::PosX+4
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
                STX     Column
                STY     Row
                JMP     sub_C6D2
; End of function sub_13BB21


; =============== S U B R O U T I N E =======================================


sub_13BB40:                             ; CODE XREF: sub_13B7B6+1B↑p
                                        ; sub_13B87F+23↑p ...
                LDA     #$B
                LDX     #7
                LDY     #5
                STA     byte_70
                STY     Row
                LDY     #0

loc_13BB4C:                             ; CODE XREF: sub_13BB40+28↓j
                STX     Column
                STY     CurrentFieldPosition
                LDA     (pStr),Y
                STA     byte_29
                JSR     sub_13BBAF
                LDX     #$13
                CPX     Column
                BNE     loc_13BB63
                INC     Row
                INC     Row
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


sub_13BB8C:                             ; CODE XREF: sub_DA48+CE↑P
                                        ; sub_13A9D6:loc_13AA05↑p ...
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
                JMP     @load_msg_bank
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
                JMP     @load_msg_bank
; End of function sub_13BBAF


; =============== S U B R O U T I N E =======================================


sub_13BBC3:                             ; CODE XREF: sub_DA48+B7↑P
                                        ; sub_13AFC4+7↑p ...
                JSR     sub_13BBDF
                LDY     #6
                LDA     (Pointer),Y
                STA     word_2A
                INY
                LDA     (Pointer),Y
                STA     word_2A+1
                JMP     @load_msg_bank
; End of function sub_13BBC3


; =============== S U B R O U T I N E =======================================


sub_13BBD4:                             ; CODE XREF: sub_CCB1+92↑P
                                        ; sub_13B34A+33↑p
                JSR     sub_13BBDF
                LDY     #2
                JSR     loc_E6A9
                JMP     @load_msg_bank
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
                JSR     wait_press_button
                JMP     sub_C3D5
; End of function sub_13BC04


; =============== S U B R O U T I N E =======================================


sub_13BC0A:                             ; CODE XREF: sub_13AD0D+11↑p
                                        ; sub_13B546+D↑p
                LDA     PointerTilePack
                PHA
                LDA     byte_73
                PHA
                JSR     out_msg_frame
                PLA
                STA     byte_73
                PLA
                STA     PointerTilePack
                LDA     #0
                STA     byte_2D
                LDX     #8
                LDY     #$13
                STX     Column
                STY     Row
                JMP     @load_msg_bank
; End of function sub_13BC0A


; =============== S U B R O U T I N E =======================================


sub_13BC28:                             ; CODE XREF: sub_13B0E4+2↑p
                                        ; sub_13B484+2↑p
                LDA     Column
                PHA
                LDA     Row
                PHA
                JSR     sub_C3DF
                PLA
                STA     Row
                PLA
                STA     Column
                JMP     @load_msg_bank
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
RoutineTable:   .word darken_palette-1  ; DATA XREF: routine_selector+C↑r
                                        ; routine_selector+8↑r
                .word sub_13BD0D-1, check_copyright-1, sub_13BD31-1, sub_13BD5C-1
                .word sub_13BDD9-1, loc_13BD34-1, sub_13BE0F-1

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
                LDA     #LIGHTEST_PURPLE
                JSR     one_color_lighten_palette
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
                LDA     #MEDIUM_BLUE
                JSR     one_color_lighten_palette
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
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                LDA     SpriteTable + ANIM_SPRITE::PosY,X
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
                ADC     $306,X
                STA     SpriteTable + ANIM_SPRITE::pFrame,X
                TYA
                ADC     SpriteTable + ANIM_SPRITE::pFrame+1,X
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X
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
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                DEY
                LDA     byte_13BE4F,Y
                STA     SpriteTable + ANIM_SPRITE::field_4,X
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
                LDA     CurrentGame + GAME_SAVE::PureSave.GameNumber
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
                LDA     CurrentGame + GAME_SAVE::PureSave.Active
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

; ; ---------------------------------------------------------------------------
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                ; .BYTE $FF, $FF, $FF
; ; end of 'BANK13'
