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
                .BYTE   0
                .BYTE   1
                .BYTE   2
                .BYTE   3
                .BYTE   8
                .BYTE   9
                .BYTE $96
                .BYTE $97
                .BYTE $98
                .BYTE $99
                .BYTE $9A
                .BYTE $9B
                .BYTE $9C
                .BYTE $9D
                .BYTE $9E
                .BYTE $9F
                .BYTE $A0
                .BYTE $A1
                .BYTE $A2
                .BYTE $A3
                .BYTE $A4
                .BYTE $2A ; *
                .BYTE $2B ; +
                .BYTE $2C ; ,
                .BYTE $2D ; -
                .BYTE $2E ; .
                .BYTE $AA
                .BYTE $AB
                .BYTE $AC
                .BYTE $AD
                .BYTE $AE
                .BYTE $93
                .BYTE   4
                .BYTE   5
                .BYTE   6
                .BYTE   7
                .BYTE  $E
                .BYTE  $F
                .BYTE $D6
                .BYTE $D7
                .BYTE $D8
                .BYTE $D9
                .BYTE $DA
                .BYTE $DB
                .BYTE $DC
                .BYTE $DD
                .BYTE $DE
                .BYTE $DF
                .BYTE $E0
                .BYTE $E1
                .BYTE $E2
                .BYTE $E3
                .BYTE $E4
                .BYTE $6A ; j
                .BYTE $6B ; k
                .BYTE $6C ; l
                .BYTE $6D ; m
                .BYTE $6E ; n
                .BYTE $EA
                .BYTE $EB
                .BYTE $EC
                .BYTE $ED
                .BYTE $EE
                .BYTE $D3
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
                STA     byte_EC

loc_C2B3:                               ; CODE XREF: sub_C296:loc_C303↓j
                JSR     bank0_0

loc_C2B6:                               ; CODE XREF: sub_C296+57↓j
                JSR     wait_fill_PPU
                LDX     #0
                STX     Offset400
                JSR     sub_C83D
                STY     Offset400
                INC     byte_77
                LDY     #0
                LDA     ($74),Y
                PHA
                INY
                LDA     ($74),Y
                PHA
                INY
                TYA
                JSR     sub_CB38
                LDA     word_72
                CMP     #0
                BNE     loc_C2F0
                JSR     sub_C83D
                JSR     sub_C306
                PLA
                TAX
                PLA
                CMP     $540,X
                BCC     loc_C2E9
                STA     $540,X

loc_C2E9:                               ; CODE XREF: sub_C296+4E↑j
                LDA     word_72
                CMP     #0
                BNE     loc_C2B6
                RTS
; ---------------------------------------------------------------------------

loc_C2F0:                               ; CODE XREF: sub_C296+40↑j
                INC     byte_77
                JSR     sub_C86D
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
                STY     Offset400
                JSR     sub_C46E
                LDA     #0
                STA     NMI_ID,X
                STA     Offset400
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
                STA     pPPUTable
                JSR     sram_write_enable
                LDA     #0

loc_C40F:                               ; CODE XREF: sub_C406+34↓j
                PHA
                TAX
                LDA     $600,X
                BEQ     loc_C436
                LDA     $618,X
                STA     byte_74
                LDA     $619,X
                STA     byte_75
                LDY     #1
                LDA     $601,X
                AND     pPPUTable
                STA     ($74),Y
                LDY     #$14

loc_C42B:                               ; CODE XREF: sub_C406+2E↓j
                LDA     $603,X
                STA     ($74),Y
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
                STA     byte_74
                STX     byte_75
                JSR     sub_C6D2
                BNE     loc_C458

loc_C455:                               ; CODE XREF: sub_C43F+22↓j
                JSR     sub_C6DB

loc_C458:                               ; CODE XREF: sub_C43F+14↑j
                LDA     #2
                JSR     sub_CB38
                LDA     word_72
                CMP     #0
                BNE     loc_C455
                INC     byte_77
                JSR     sub_C6D2
                PLA
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_C43F              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_C46E:                               ; CODE XREF: sub_C306+2↑p
                LDA     byte_7E
                LSR     A
                ADC     #0
                TAX
                LDA     byte_77
                AND     #$1E
                ASL     A
                ASL     A
                ASL     A
                STA     byte_7A
                LDA     byte_76
                ADC     #1
                LSR     A
                ORA     byte_7A
                STA     byte_7A
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
                ADC     byte_7E
                LSR     A
                LSR     A
                STA     word_7C
                TYA
                AND     #$80
                STA     byte_79
                TXA
                LSR     A
                ROR     byte_79
                LSR     A
                ROR     byte_79
                TYA
                AND     #$1C
                ORA     byte_79
                LSR     A
                LSR     A
                ORA     #$C0
                STA     byte_79
                ORA     #$F8
                STA     byte_7B
                TXA
                ORA     #3
                STA     byte_78
                TYA
                AND     #$42 ; 'B'
                LSR     A
                LSR     A
                ADC     #0
                EOR     #$FF
                ADC     #1
                CLC
                ADC     byte_7A
                TAY
                LDX     Offset400
                LDA     #7
                STA     NMI_ID,X
                INX
                LDA     word_7C
                STA     NMI_ID,X
                INX

loc_C4E5:                               ; CODE XREF: sub_C46E+C0↓j
                                        ; sub_C46E+D1↓j
                LDA     byte_78
                STA     NMI_ID,X
                INX
                LDA     byte_79
                STA     NMI_ID,X
                INX
                LDA     $6600,Y
                AND     #3
                STA     byte_7A
                INY
                LDA     $6600,Y
                AND     #$C
                ORA     byte_7A
                STA     byte_7A
                TYA
                CLC
                ADC     #$F
                TAY
                LDA     $6600,Y
                AND     #$30 ; '0'
                ORA     byte_7A
                STA     byte_7A
                INY
                LDA     $6600,Y
                AND     #$C0
                ORA     byte_7A
                STA     NMI_ID,X
                INX
                TYA
                SEC
                SBC     #$F
                TAY
                DEC     word_7C
                BNE     loc_C528
                STX     Offset400
                RTS
; ---------------------------------------------------------------------------

loc_C528:                               ; CODE XREF: sub_C46E+B5↑j
                INC     byte_7B
                BEQ     loc_C531
                INC     byte_79
                JMP     loc_C4E5
; ---------------------------------------------------------------------------

loc_C531:                               ; CODE XREF: sub_C46E+BC↑j
                LDA     #4
                EOR     byte_78
                STA     byte_78
                LDA     #$F8
                STA     byte_7B
                AND     byte_79
                STA     byte_79
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
                LDA     (pPPUTable),Y
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
                ADC     pPPUTable
                STA     $6700,X
                INX
                INY
                LDA     $C37A,Y
                ADC     pPPUTable+1
                STA     $6700,X
                INX
                INY
                RTS
; End of function sub_C637


; =============== S U B R O U T I N E =======================================


sub_C665:                               ; CODE XREF: sub_C542+12↑p
                                        ; sub_D9FA+7↓p
                STA     pPPUTable+1
                LDA     #0
                LSR     pPPUTable+1
                ROR     A
                LSR     pPPUTable+1
                ROR     A
                ADC     #0
                STA     pPPUTable
                LDA     pPPUTable+1
                ADC     #$74 ; 't'
                STA     pPPUTable+1
                RTS
; End of function sub_C665


; =============== S U B R O U T I N E =======================================


sub_C67A:
                JSR     sub_C6D2
                BNE     loc_C682

loc_C67F:                               ; CODE XREF: sub_C67A+A↓j
                JSR     sub_C6DB

loc_C682:                               ; CODE XREF: sub_C67A+3↑j
                CMP     #0
                BNE     loc_C67F
                INC     byte_77
                JMP     sub_C6D2
; ---------------------------------------------------------------------------

loc_C68B:                               ; CODE XREF: sub_F0B0+1E↓j
                PHA
                JSR     wait_fill_PPU
                JSR     sub_C9D7
                LDA     #5
                STA     NMI_ID
                LDA     #1
                STA     num_of_chr
                LDA     byte_78
                STA     PPU_addr
                LDA     byte_79
                STA     PPU_addr+1
                PLA
                STA     chr
                LDA     #0
                STA     next
                STA     Offset400
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_C67A


; =============== S U B R O U T I N E =======================================


sub_C6B6:                               ; CODE XREF: sub_C6DB+A↓p
                                        ; sub_C6DB+10↓p ...
                LDA     byte_70
                CLC
                SBC     byte_7E
                BCC     loc_C6CF
                TAY

loc_C6BE:                               ; CODE XREF: sub_C6B6+E↓j
                LDA     #$A0
                JSR     sub_CA1F
                DEY
                BPL     loc_C6BE
                LDY     Offset400
                LDA     $401,Y
                BEQ     loc_C6CF
                TXA
                TAY

loc_C6CF:                               ; CODE XREF: sub_C6B6+5↑j
                                        ; sub_C6B6+15↑j
                STY     Offset400
                RTS
; End of function sub_C6B6


; =============== S U B R O U T I N E =======================================


sub_C6D2:                               ; CODE XREF: sub_C43F+11↑p
                                        ; sub_C43F+26↑p ...
                JSR     wait_fill_PPU
                LDX     #0
                STX     Offset400
                BEQ     loc_C6E8
; End of function sub_C6D2


; =============== S U B R O U T I N E =======================================


sub_C6DB:                               ; CODE XREF: sub_C43F:loc_C455↑p
                                        ; sub_C67A:loc_C67F↑p ...
                JSR     wait_fill_PPU
                LDX     #0
                STX     Offset400
                JSR     sub_C86D
                JSR     sub_C6B6

loc_C6E8:                               ; CODE XREF: sub_C6D2+7↑j
                JSR     sub_C83D
                JSR     sub_C6B6
                LDA     #0
                STA     NMI_ID,Y
                STA     Offset400
                LDA     #$80
                STA     NMIFlags

loc_C6F9:                               ; CODE XREF: sub_C707+23↓j
                JSR     sub_CB1A
                LDA     word_72
                CMP     #1
                BNE     locret_C706
                INC     byte_77
                INC     byte_77

locret_C706:                            ; CODE XREF: sub_C6DB+25↑j
                RTS
; End of function sub_C6DB


; =============== S U B R O U T I N E =======================================


sub_C707:                               ; CODE XREF: sub_F562+33↓p
                JSR     wait_fill_PPU
                LDA     #$33 ; '3'
                STA     Offset400
                PHA
                JSR     sub_C83D
                JSR     sub_C6B6
                STY     byte_7B
                PLA
                TAX
                LDA     #5
                STA     NMI_ID
                LDA     #1
                STA     num_of_chr

loc_C723:                               ; CODE XREF: sub_C707+A5↓j
                LDA     #0
                STA     NMI_ID,Y
                CPX     byte_7B
                BCS     loc_C6F9
                LDA     #8
                STA     NMI_ID,Y
                LDA     $401,X
                STA     byte_7E
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
                STA     Offset400
                LDA     #$80
                STA     NMIFlags
                JSR     wait_fill_PPU
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
                DEC     byte_7E
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
                JSR     wait_fill_PPU
                STX     Offset400

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
                LDA     Offset400
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
                STA     byte_7B
                SBC     #0
                STA     $402,X
                EOR     byte_7B
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


sub_C83D:                               ; CODE XREF: sub_C296+27↑p
                                        ; sub_C296+42↑p ...
                JSR     sub_C9D7
                LDA     byte_71
                STA     byte_7F
                LDX     Offset400
                LDY     #0
                STY     byte_7E
                TYA
                PHA
                JSR     sub_CA3D

loc_C84F:                               ; CODE XREF: sub_C83D+2D↓j
                DEC     byte_7F
                BPL     loc_C865
                LDA     ($74),Y
                JSR     sub_CA5C
                BCS     loc_C867
                LDY     #$4F ; 'O'
                STY     word_7C
                LDY     #$C8
                STY     word_7C+1
                JMP     loc_C8A1
; ---------------------------------------------------------------------------

loc_C865:                               ; CODE XREF: sub_C83D+14↑j
                LDA     #$A0

loc_C867:                               ; CODE XREF: sub_C83D+1B↑j
                JSR     sub_CA1F
                JMP     loc_C84F
; End of function sub_C83D


; =============== S U B R O U T I N E =======================================


sub_C86D:                               ; CODE XREF: sub_C296+5C↑p
                                        ; sub_C6DB+7↑p
                DEC     byte_77
                JSR     sub_C9D7
                LDA     byte_71
                STA     byte_7F
                LDX     Offset400
                LDY     #0
                STY     byte_7E
                TYA
                PHA
                JSR     sub_CA3D

loc_C881:                               ; CODE XREF: sub_C86D+31↓j
                DEC     byte_7F
                BPL     loc_C899
                LDA     ($74),Y
                JSR     sub_CA7C
                BCS     loc_C89B
                ORA     #$80
                LDY     #$81
                STY     word_7C
                LDY     #$C8
                STY     word_7C+1
                JMP     loc_C8A1
; ---------------------------------------------------------------------------

loc_C899:                               ; CODE XREF: sub_C86D+16↑j
                LDA     #$A0

loc_C89B:                               ; CODE XREF: sub_C86D+1D↑j
                JSR     sub_CA1F
                JMP     loc_C881
; ---------------------------------------------------------------------------

loc_C8A1:                               ; CODE XREF: sub_C83D+25↑j
                                        ; sub_C86D+29↑j
                STA     word_72
                ASL     A
                TAY
                LDA     $C8AF,Y
                PHA
                LDA     $C8AE,Y
                PHA
                RTS
; End of function sub_C86D

; ---------------------------------------------------------------------------
                .WORD loc_C8E2-1, loc_C8E2-1, loc_C8E2-1, loc_C8E2-1, sub_C909-1
                .WORD sub_C8D4-1, sub_C92F-1, sub_C950-1, sub_C8C2-1, sub_C9D2-1

; =============== S U B R O U T I N E =======================================


sub_C8C2:                               ; DATA XREF: ROM:C8AE↑o
                LDY     byte_7A

loc_C8C4:                               ; CODE XREF: sub_C8D4+C↓j
                LDA     ($74),Y
                PHA
                INY
                LDA     ($74),Y
                STA     byte_75
                PLA
                STA     byte_74
                LDY     #0
                JMP     (word_7C)
; End of function sub_C8C2


; =============== S U B R O U T I N E =======================================


sub_C8D4:                               ; DATA XREF: ROM:C8AE↑o
                LDY     byte_7A
                BEQ     loc_C8E2
                LDA     byte_74
                PHA
                LDA     byte_75
                PHA
                TYA
                PHA
                BNE     loc_C8C4

loc_C8E2:                               ; CODE XREF: sub_C8D4+2↑j
                                        ; DATA XREF: ROM:C8AE↑o
                PLA
                BEQ     loc_C8F1
                TAY
                INY
                INY
                PLA
                STA     byte_75
                PLA
                STA     byte_74
                JMP     (word_7C)
; ---------------------------------------------------------------------------

loc_C8F1:                               ; CODE XREF: sub_C8D4+F↑j
                LDY     Offset400
                LDA     $401,Y
                BEQ     loc_C8FA
                TXA
                TAY

loc_C8FA:                               ; CODE XREF: sub_C8D4+22↑j
                LDA     word_72
                BPL     loc_C901
                INC     byte_77
                RTS
; ---------------------------------------------------------------------------

loc_C901:                               ; CODE XREF: sub_C8D4+28↑j
                LDA     byte_7A
                JSR     sub_CB38
                LDA     word_72
                RTS
; End of function sub_C8D4


; =============== S U B R O U T I N E =======================================


sub_C909:                               ; DATA XREF: ROM:C8AE↑o
                LDY     byte_7A
                LDA     ($74),Y
                STA     byte_76
                INY
                LDA     ($74),Y
                STA     byte_77
                INY
                STY     byte_7A
                BCC     loc_C91B
                DEC     byte_77

loc_C91B:                               ; CODE XREF: sub_C909+E↑j
                LDY     Offset400
                LDA     $401,Y
                BNE     loc_C924
                LDX     Offset400

loc_C924:                               ; CODE XREF: sub_C909+17↑j
                JSR     sub_C9D7
                JSR     sub_CA3D
                LDY     byte_7A
                JMP     (word_7C)
; End of function sub_C909


; =============== S U B R O U T I N E =======================================


sub_C92F:                               ; DATA XREF: ROM:C8AE↑o
                LDY     byte_7A
                LDA     ($74),Y
                BCC     loc_C937
                LDA     #$A0

loc_C937:                               ; CODE XREF: sub_C92F+4↑j
                STA     word_72
                INY
                LDA     ($74),Y
                INY
                STY     byte_7A
                TAY

loc_C940:                               ; CODE XREF: sub_C92F+19↓j
                DEY
                BMI     loc_C94B
                LDA     word_72
                JSR     sub_CA1F
                JMP     loc_C940
; ---------------------------------------------------------------------------

loc_C94B:                               ; CODE XREF: sub_C92F+12↑j
                LDY     byte_7A
                JMP     (word_7C)
; End of function sub_C92F


; =============== S U B R O U T I N E =======================================


sub_C950:                               ; DATA XREF: ROM:C8AE↑o
                LDY     byte_7A
                LDA     ($74),Y
                STA     byte_64
                INY
                LDA     ($74),Y
                STA     byte_65
                INY
                LDA     ($74),Y
                STA     byte_66
                INY
                LDA     ($74),Y
                STA     byte_67
                INY
                TYA
                PHA
                LDY     byte_66
                BEQ     loc_C9A3
                LDA     #0
                STA     pPPUTable
                STA     pPPUTable+1
                STA     AddrForJmp
                DEY

loc_C975:                               ; CODE XREF: sub_C950+2B↓j
                LDA     ($64),Y
                STA     $60,Y
                DEY
                BPL     loc_C975
                TXA
                PHA
                JSR     sub_F161
                PLA
                TAX
                LDA     byte_67
                BNE     loc_C993
                SEC
                LDA     #8
                SBC     AddrForJmp+1
                STA     byte_67
                LDA     AddrForJmp+1
                BPL     loc_C998

loc_C993:                               ; CODE XREF: sub_C950+36↑j
                SEC
                LDA     #8
                SBC     byte_67

loc_C998:                               ; CODE XREF: sub_C950+41↑j
                CLC
                ADC     #$68 ; 'h'
                STA     byte_64
                LDA     #0
                ADC     #0
                STA     byte_65

loc_C9A3:                               ; CODE XREF: sub_C950+1A↑j
                LDY     #0

loc_C9A5:                               ; CODE XREF: sub_C950+7B↓j
                LDA     word_72
                BMI     loc_C9B2
                LDA     ($64),Y
                JSR     sub_CA5C
                BCS     loc_C9C6
                BCC     loc_C9C0

loc_C9B2:                               ; CODE XREF: sub_C950+57↑j
                LDA     ($64),Y
                JSR     sub_CA7C
                BCS     loc_C9C6
                BCC     loc_C9C0

loc_C9BB:                               ; CODE XREF: sub_C950+72↓j
                LDA     #$A0
                JSR     sub_CA1F

loc_C9C0:                               ; CODE XREF: sub_C950+60↑j
                                        ; sub_C950+69↑j
                DEC     byte_67
                BPL     loc_C9BB
                BMI     loc_C9CD

loc_C9C6:                               ; CODE XREF: sub_C950+5E↑j
                                        ; sub_C950+67↑j
                JSR     sub_CA1F
                DEC     byte_67
                BNE     loc_C9A5

loc_C9CD:                               ; CODE XREF: sub_C950+74↑j
                PLA
                TAY
                JMP     (word_7C)
; End of function sub_C950


; =============== S U B R O U T I N E =======================================


sub_C9D2:                               ; DATA XREF: ROM:C8AE↑o
                LDY     byte_7A
                JMP     (word_7C)
; End of function sub_C9D2


; =============== S U B R O U T I N E =======================================


sub_C9D7:                               ; CODE XREF: sub_C67A+15↑p
                                        ; sub_C83D↑p ...
                LDA     CntrlPPU
                LSR     A
                LSR     A
                LDA     HorizontalScrollPPU
                ROR     A
                CLC
                ADC     #8
                STA     byte_79
                LDA     byte_77
                ADC     #1
                ASL     A
                ASL     A
                CLC
                ADC     byte_79
                BVS     loc_C9F1
                SEC
                SBC     #8

loc_C9F1:                               ; CODE XREF: sub_C9D7+15↑j
                ASL     A
                AND     #$F8
                STA     byte_79
                LDA     #2
                ROL     A
                ASL     A
                ASL     byte_79
                ROL     A
                ASL     byte_79
                ROL     A
                STA     byte_78
                LDA     CntrlPPU
                LSR     A
                LDA     VerticalScrollPPU
                ROR     A
                LSR     A
                LSR     A
                CLC
                ADC     byte_76
                TAY
                AND     #$20 ; ' '
                LSR     A
                LSR     A
                LSR     A
                ADC     byte_78
                STA     byte_78
                TYA
                AND     #$1F
                ADC     byte_79
                STA     byte_79
                RTS
; End of function sub_C9D7


; =============== S U B R O U T I N E =======================================


sub_CA1F:                               ; CODE XREF: sub_C6B6+A↑p
                                        ; sub_C83D:loc_C867↑p ...
                STA     NMI_ID,X
                INX
                TXA
                LDX     Offset400
                INC     $401,X
                TAX
                INC     byte_7E
                INC     byte_7B
                BEQ     loc_CA31
                RTS
; ---------------------------------------------------------------------------

loc_CA31:                               ; CODE XREF: sub_CA1F+F↑j
                LDA     byte_79
                AND     #$E0
                STA     byte_79
                LDA     byte_78
                EOR     #4
                STA     byte_78
; End of function sub_CA1F


; =============== S U B R O U T I N E =======================================


sub_CA3D:                               ; CODE XREF: sub_C83D+F↑p
                                        ; sub_C86D+11↑p ...
                STX     Offset400
                LDA     #5
                STA     NMI_ID,X
                INX
                LDA     #0
                STA     NMI_ID,X
                INX
                LDA     byte_78
                STA     NMI_ID,X
                INX
                LDA     byte_79
                STA     NMI_ID,X
                INX
                ORA     #$E0
                STA     byte_7B
                RTS
; End of function sub_CA3D


; =============== S U B R O U T I N E =======================================


sub_CA5C:                               ; CODE XREF: sub_C83D+18↑p
                                        ; sub_C950+5B↑p
                INY
                STY     byte_7A
                CMP     #$40 ; '@'
                BCS     locret_CA7B
                TAY
                LDA     $C22C,Y
                LDY     byte_7A
                CMP     #$80
                BCS     locret_CA7B
                CMP     #$20 ; ' '
                BCS     loc_CA79
                CMP     #$A
                BCS     loc_CA76
                RTS
; ---------------------------------------------------------------------------

loc_CA76:                               ; CODE XREF: sub_CA5C+17↑j
                ORA     #$D0
                RTS
; ---------------------------------------------------------------------------

loc_CA79:                               ; CODE XREF: sub_CA5C+13↑j
                ORA     #$80

locret_CA7B:                            ; CODE XREF: sub_CA5C+5↑j
                                        ; sub_CA5C+F↑j
                RTS
; End of function sub_CA5C


; =============== S U B R O U T I N E =======================================


sub_CA7C:                               ; CODE XREF: sub_C86D+1A↑p
                                        ; sub_C950+64↑p
                INY
                STY     byte_7A
                CMP     #$40 ; '@'
                BCS     loc_CA9F
                TAY
                LDA     $C22C,Y
                LDY     byte_7A
                CMP     #$80
                BCS     loc_CA9C
                CMP     #$20 ; ' '
                BCS     loc_CA99
                CMP     #$A
                BCS     loc_CA96
                RTS
; ---------------------------------------------------------------------------

loc_CA96:                               ; CODE XREF: sub_CA7C+17↑j
                ORA     #$D0
                RTS
; ---------------------------------------------------------------------------

loc_CA99:                               ; CODE XREF: sub_CA7C+13↑j
                LDA     #$FF
                RTS
; ---------------------------------------------------------------------------

loc_CA9C:                               ; CODE XREF: sub_CA7C+F↑j
                LDA     #$FE
                RTS
; ---------------------------------------------------------------------------

loc_CA9F:                               ; CODE XREF: sub_CA7C+5↑j
                LDA     #$A0
                RTS
; End of function sub_CA7C


; =============== S U B R O U T I N E =======================================


sub_CAA2:
                LDA     word_72+1
                BPL     loc_CAA9
                STA     byte_75
                RTS
; ---------------------------------------------------------------------------

loc_CAA9:                               ; CODE XREF: sub_CAA2+2↑j
                CMP     #$7F
                BCS     loc_CAE1
                TAX
                LDA     byte_74
                ASL     byte_74
                ROL     word_72+1
                ADC     byte_74
                STA     byte_74
                TXA
                ADC     word_72+1
                ADC     #$80
                STA     byte_75
                LDA     #$7F
                STA     word_72+1
                LDA     BankTable.CPU_8K_8000
                PHA
                LDA     #$18
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDY     #0
                LDA     ($74),Y
                STA     byte_9
                INY
                LDA     ($74),Y
                STA     byte_A
                INY
                LDA     ($74),Y
                STA     byte_B
                PLA
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode

loc_CAE1:                               ; CODE XREF: sub_CAA2+9↑j
                JSR     wait_fill_PPU
                LDA     #$A
                STA     NMI_ID
                LDA     byte_B
                LSR     A
                LDA     byte_A
                ROR     A
                SEC
                ROR     A
                STA     num_of_chr
                LDA     byte_A
                AND     #3
                ORA     #8
                STA     PPU_addr
                LDA     byte_9
                STA     PPU_addr+1
                LDA     #0
                STA     chr
                LDA     #0
                STA     Offset400
                LDA     #$80
                STA     NMIFlags
                LDA     #$10
                STA     byte_74
                LDA     #1
                STA     byte_75
                JMP     wait_fill_PPU
; End of function sub_CAA2


; =============== S U B R O U T I N E =======================================


sub_CB1A:                               ; CODE XREF: sub_C6DB:loc_C6F9↑p
                LDA     byte_75
                BPL     loc_CB21
                STA     word_72+1
                RTS
; ---------------------------------------------------------------------------

loc_CB21:                               ; CODE XREF: sub_CB1A+2↑j
                SEC
                LDA     byte_74
                SBC     #$10
                CLC
                ADC     byte_9
                STA     byte_9
                LDA     #0
                ADC     byte_A
                STA     byte_A
                LDA     #0
                ADC     byte_B
                STA     byte_B
                RTS
; End of function sub_CB1A


; =============== S U B R O U T I N E =======================================


sub_CB38:                               ; CODE XREF: sub_C296+39↑p
                                        ; sub_C43F+1B↑p ...
                CLC
                ADC     byte_74
                STA     byte_74
                LDA     #0
                ADC     byte_75
                STA     byte_75
                RTS
; End of function sub_CB38


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
                ROR     byte_E2
                JSR     sub_E065
                ASL     byte_E2
                JSR     sub_D232
                LDA     #0
                STA     NMI_ID,X
                STA     Offset400
                LDA     #$80
                STA     NMIFlags
                BNE     loc_CC83

loc_CC5D:                               ; CODE XREF: sub_CC2B+4↑j
                JSR     sub_D05E
                JSR     sub_D0B1
                JSR     sub_D232
                LDA     #0
                STA     NMI_ID,X
                STA     Offset400
                LDA     #$10
                STA     NMIFlags
                LDA     byte_1F
                CMP     #$F
                BCS     loc_CC83

loc_CC77:                               ; CODE XREF: sub_CC2B+4E↓j
                LDA     NMIFlags
                BNE     loc_CC77
                SEC
                ROR     byte_E2
                JSR     sub_E065
                ASL     byte_E2

loc_CC83:                               ; CODE XREF: sub_CC2B+30↑j
                                        ; sub_CC2B+4A↑j
                LDA     byte_A0
                LSR     A
                BCC     loc_CC96
                JSR     sub_D21C
                LDA     #0
                STA     NMI_ID,X
                STA     Offset400
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
                LDA     byte_78C
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
                LDA     byte_DE
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
                JSR     wait_fill_PPU
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
                JSR     wait_fill_PPU
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
                LDA     byte_7404
                TAX
                AND     #$3F ; '?'
                PHA
                TXA
                AND     #$C0
                STA     byte_7404
                JSR     sub_D8C9
                LDX     #$14
                JSR     wait_frames      ; wait for the whole frame to be output
                JSR     sub_C542
                JSR     sub_CEFC
                JSR     sub_FD5E
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
                STX     byte_DA
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
                JSR     wait_fill_PPU
                JSR     sub_DD01
                JSR     sub_DFDA
                JMP     sub_CC2B
; End of function sub_CD8B


; =============== S U B R O U T I N E =======================================


sub_CD9D:                               ; CODE XREF: sub_CCB1+3A↑p
                                        ; sub_CCB1+BA↑p
                JSR     sram_write_enable
                LDA     byte_7406
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
                STA     pPPUTable
                STX     pPPUTable+1
                JSR     wait_fill_PPU
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
                STA     Offset400
                LDA     #$80
                STA     NMIFlags
                JSR     wait_fill_PPU
                JSR     sram_write_enable
                LDY     #0

loc_CE40:                               ; CODE XREF: sub_CE02+46↓j
                LDA     $404,Y
                STA     (pPPUTable),Y
                INY
                CPY     #$40 ; '@'
                BCC     loc_CE40
                JSR     sram_read_enable
                CLC
                TYA
                ADC     pPPUTable
                STA     pPPUTable
                LDA     #0
                ADC     pPPUTable+1
                STA     pPPUTable+1
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
                STA     pPPUTable
                STX     pPPUTable+1
                LDA     #0
                LDX     #$20 ; ' '
                STA     byte_64
                STX     byte_65
                LDA     #$10
                STA     byte_68

loc_CE81:                               ; CODE XREF: sub_CE6D+42↓j
                LDA     pPPUTable
                LDX     pPPUTable+1
                LDY     #9
                JSR     sub_CEB2
                LDA     byte_64
                LDX     byte_65
                LDY     #5
                JSR     sub_CEB2
                CLC
                LDA     #$40 ; '@'
                ADC     pPPUTable
                STA     pPPUTable
                LDA     #0
                ADC     pPPUTable+1
                STA     pPPUTable+1
                CLC
                LDA     #$40 ; '@'
                ADC     byte_64
                STA     byte_64
                LDA     #0
                ADC     byte_65
                STA     byte_65
                DEC     byte_68
                BNE     loc_CE81
                RTS
; End of function sub_CE6D


; =============== S U B R O U T I N E =======================================


sub_CEB2:                               ; CODE XREF: sub_CE6D+1A↑p
                                        ; sub_CE6D+23↑p
                PHA
                JSR     wait_fill_PPU
                PLA
                STA     PPU_addr+1
                STX     PPU_addr
                STY     NMI_ID
                LDA     #$40 ; '@'
                STA     num_of_chr
                LDA     #0
                STA     byte_444
                LDA     #0
                STA     Offset400
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_CEB2


; =============== S U B R O U T I N E =======================================


bank13_A000:                            ; CODE XREF: main:@new_place↑p
                                        ; main+61↑p ...
                LDA     #$13
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank13_A000           ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


bank17_A000:                            ; CODE XREF: sub_DA48:loc_DB33↓p
                                        ; start_battle↓p
                LDA     #$17
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank17_A000           ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


bank14_8000:                            ; CODE XREF: main+8↑p
                                        ; main:loc_CBE5↑p ...
                LDA     #$14
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank14_8000           ; A - bank number
                                        ; X - mode

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
                JSR     wait_fill_PPU
                LDY     #$F

loc_CF23:                               ; CODE XREF: sub_CEFC+32↓j
                LDA     ($88),Y
                BPL     loc_CF2A
                JSR     sub_E0F2

loc_CF2A:                               ; CODE XREF: sub_CEFC+29↑j
                STA     PaletteBackground0,Y
                DEY
                BPL     loc_CF23
                LDY     #$F

loc_CF32:                               ; CODE XREF: sub_CEFC+3D↓j
                LDA     $CF9C,Y
                STA     $510,Y
                DEY
                BPL     loc_CF32
                LDX     PaletteBackground0+$C
                LDY     PaletteBackground0+$E
                STX     byte_17
                STY     byte_16
                LDX     #$F
                LDY     #$30 ; '0'
                STX     PaletteBackground0+$C
                STY     PaletteBackground0+$E
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
                JSR     wait_fill_PPU
                CLC
                LDA     byte_1C
                ORA     #8
                TAX
                LDY     byte_1D
                LDA     CntrlPPU
                AND     #$FC
                ORA     byte_1E
                STA     CntrlPPU
                STX     VerticalScrollPPU
                STY     HorizontalScrollPPU
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
                JSR     wait_fill_PPU
                JSR     sub_D2C4
                LDA     #0
                STA     NMI_ID,X
                STA     Offset400
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
                JSR     wait_fill_PPU
                JSR     sub_D5C4
                LDA     #4
                STA     NMI_ID
                LDA     #0
                STA     num_of_chr
                STA     Offset400
                LDA     #$80
                STA     NMIFlags
                LDA     #$88
                STA     byte_A0
                LDA     #0
                STA     byte_EC
                STA     byte_DA
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
                LDA     byte_7406
                AND     #$3F ; '?'
                STA     byte_3E
                CLC
                LDA     byte_7404
                AND     #$C0
                STA     byte_18
                ADC     #0
                STA     byte_AA
                LDA     byte_7405
                STA     byte_19
                ADC     #2
                STA     byte_AB
                CLC
                LDA     byte_7406
                AND     #$C0
                STA     byte_1A
                ADC     #$C0
                STA     byte_AC
                LDA     byte_7407
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
                LDA     byte_7404
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
                LDA     byte_7581
                BPL     loc_D8DD
                LDA     #6
                JSR     sub_D78D

loc_D8DD:                               ; CODE XREF: sub_D8D3+3↑j
                LDA     byte_75C1
                BPL     loc_D8E7
                LDA     #7
                JSR     sub_D78D

loc_D8E7:                               ; CODE XREF: sub_D8D3+D↑j
                LDX     #0
                STX     byte_37

loc_D8EB:                               ; CODE XREF: sub_D8D3+31↓j
                JSR     sub_D9F1
                BCS     loc_D906
                TXA
                JSR     sub_D8BA
                JSR     sram_write_enable
                JSR     sub_D840
                BCS     loc_D8FE
                INC     byte_37

loc_D8FE:                               ; CODE XREF: sub_D8D3+27↑j
                JSR     sram_read_enable
                INX
                CPX     #4
                BCC     loc_D8EB

loc_D906:                               ; CODE XREF: sub_D8D3+1B↑j
                STX     byte_36
                LDA     byte_37
                BEQ     loc_D90E
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_D90E:                               ; CODE XREF: sub_D8D3+37↑j
                JSR     sub_D8C9
                JSR     sram_write_enable
                LDA     #0
                STA     byte_7441
                STA     byte_7456
                STA     byte_7457
                LDA     byte_7443
                STA     byte_7454
                LDA     byte_7444
                STA     byte_7455
                LDA     byte_7410
                LSR     byte_7411
                ROR     A
                ADC     #0
                STA     byte_7410
                LDA     byte_7411
                ADC     #0
                STA     byte_7411
                LDA     #1
                STA     byte_37
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
                LDA     byte_7406
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
                DEC     byte_36
                BMI     locret_D997
                BEQ     locret_D997

loc_D97D:                               ; CODE XREF: sub_D977+10↓j
                LDA     byte_7408
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
                STX     byte_37

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
                LDA     byte_37
                ADC     #$20 ; ' '
                STA     byte_37
                INX
                CPX     byte_36
                BCC     loc_D99F
                JMP     sram_read_enable
; End of function sub_D998


; =============== S U B R O U T I N E =======================================


sub_D9DE:                               ; CODE XREF: sub_D998+17↑p
                                        ; sub_D998+1C↑p ...
                CLC
                ADC     byte_37
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
                STA     (pPPUTable),Y
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
                JSR     wait_fill_PPU
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
                JMP     wait_fill_PPU
; End of function sub_DA16


; =============== S U B R O U T I N E =======================================


sub_DA48:                               ; CODE XREF: sub_ECA3+F↓p
                LDA     byte_37
                STA     byte_64
                LDA     byte_49
                STA     pPPUTable
                LDA     byte_4A
                STA     pPPUTable+1
                LDA     byte_4B
                STA     AddrForJmp
                JSR     sub_F13D
                LDA     byte_68
                BEQ     loc_DA61
                LDA     #1

loc_DA61:                               ; CODE XREF: sub_DA48+15↑j
                CLC
                ADC     pPPUTable
                STA     byte_49
                LDA     #0
                ADC     pPPUTable+1
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
                SBC     byte_64
                INY
                LDA     ($38),Y
                SBC     byte_65
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
                STX     byte_64
                INX
                STX     pPPUTable
                LDA     #0
                STA     pPPUTable+1
                STA     AddrForJmp
                JSR     sub_F109
                JSR     sub_F109
                JSR     sub_DCDF
                LDY     #0
                LDA     ($68),Y
                STA     byte_64
                JSR     sub_F109
                LDA     pPPUTable+1
                STA     byte_64
                LDA     AddrForJmp
                STA     byte_65
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
                STA     pPPUTable
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
                STA     pPPUTable
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
                ADC     pPPUTable
                STA     pPPUTable
                LDA     #0
                ROL     A
                STA     pPPUTable+1
                SEC
                LDA     pPPUTable
                SBC     ($38),Y
                TAX
                INY
                LDA     pPPUTable+1
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
                JSR     sub_F125
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
                STA     byte_68
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
                INC     byte_36
                BNE     loc_DD07
                LDA     byte_20
                BNE     loc_DD54
                LDA     byte_18
                AND     #$C0
                ORA     byte_78C
                LDX     byte_19
                STA     byte_7404
                STX     byte_7405
                LDA     byte_1A
                AND     #$C0
                ORA     byte_6795
                LDX     byte_1B
                STA     byte_7406
                STX     byte_7407

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
                STX     byte_36
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
                DEC     byte_36
                BNE     loc_DD78
                JMP     sram_read_enable
; End of function sub_DD72


; =============== S U B R O U T I N E =======================================


sub_DD88:                               ; CODE XREF: sub_DD72+9↑p
                                        ; sub_DE99:loc_DEB6↓p
                LDY     #1
                LDA     byte_15
                STA     ($30),Y
                LDA     byte_37
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
                STA     byte_37
; End of function sub_DE29


; =============== S U B R O U T I N E =======================================


sub_DE3E:                               ; CODE XREF: sub_DE99+45↓p
                LDA     #0
                LDX     #$68 ; 'h'
                STA     byte_30
                STX     byte_31
                LDX     #$28 ; '('
                STX     byte_36
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
                STA     byte_37
                RTS
; End of function sub_DE4B


; =============== S U B R O U T I N E =======================================


sub_DE5C:                               ; CODE XREF: sub_DD72+C↑p
                                        ; sub_DE99:loc_DED7↓p
                CLC
                LDA     byte_38
                ADC     byte_37
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
                DEC     byte_36
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
                DEC     byte_36
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
                STA     pPPUTable
                LDA     byte_19
                ADC     #0
                STA     pPPUTable+1
                SEC
                LDY     #4
                LDA     ($30),Y
                SBC     pPPUTable
                STA     pPPUTable
                INY
                LDA     ($30),Y
                SBC     pPPUTable+1
                STA     pPPUTable+1
                CLC
                LDA     byte_1A
                ADC     #$A4
                STA     byte_64
                LDA     byte_1B
                ADC     #0
                STA     byte_65
                SEC
                LDY     #6
                LDA     ($30),Y
                SBC     byte_64
                STA     byte_64
                INY
                LDA     ($30),Y
                SBC     byte_65
                STA     byte_65
                LDY     #8
                LDA     pPPUTable+1
                AND     #4
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     ($30),Y
                STA     ($30),Y
                INY
                LDA     byte_65
                AND     #4
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     ($30),Y
                STA     ($30),Y
                INY
                LDA     pPPUTable
                LSR     pPPUTable+1
                ROR     A
                LSR     pPPUTable+1
                ROR     A
                STA     ($30),Y
                INY
                LDA     byte_64
                LSR     byte_65
                ROR     A
                LSR     byte_65
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
                LDA     byte_36
                STA     ($A6),Y

loc_DFAF:                               ; CODE XREF: sub_DEF9+16↑j
                LDY     byte_69
                LDA     byte_36
                EOR     ($6A),Y
                BEQ     loc_DFBC
                RTS
; ---------------------------------------------------------------------------

loc_DFB8:                               ; CODE XREF: sub_DEF9+88↑j
                LDY     byte_69
                LDA     byte_36

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
                LDA     byte_761F
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
                STY     byte_36
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
                STA     byte_37
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
                LDA     byte_37
                BEQ     loc_E04F
                TAX

loc_E04F:                               ; CODE XREF: sub_E000+4↑j
                                        ; sub_E000+6↑j ...
                JSR     sub_DD64
                DEC     byte_36
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
                STX     byte_36
                LDA     #0
                STA     AddrForJmp
                LDX     #8

loc_E094:                               ; CODE XREF: ROM:E0EF↓j
                LDY     #0
                LDA     ($30),Y
                BEQ     loc_E0E3
                BMI     loc_E0E3
                LDY     AddrForJmp
                LDA     (pPPUTable),Y
                STA     $302,X
                INY
                LDA     (pPPUTable),Y
                STA     $303,X
                INY
                LDA     (pPPUTable),Y
                STA     AddrForJmp+1
                INY
                CLC
                LDA     (pPPUTable),Y
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
                DEC     byte_36
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
                DEC     Offset400
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
                STA     byte_64
                LDA     byte_3D
                SBC     byte_1B
                STA     byte_65
                SEC
                LDA     #$C0
                SBC     byte_64
                LDA     #3
                SBC     byte_65
                BCC     locret_E20E
                LDA     byte_18
                SBC     #$40 ; '@'
                STA     pPPUTable
                LDA     byte_19
                SBC     #0
                STA     pPPUTable+1
                SEC
                LDA     byte_3A
                SBC     pPPUTable
                STA     pPPUTable
                LDA     byte_3B
                SBC     pPPUTable+1
                STA     pPPUTable+1
                SEC
                LDA     #$80
                SBC     pPPUTable
                LDA     #4
                SBC     pPPUTable+1

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
                STA     pPPUTable
                LDA     #0
                INY
                ADC     ($30),Y
                STA     pPPUTable+1
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
                LDA     pPPUTable
                STA     $306,Y
                LDA     pPPUTable+1
                STA     $307,Y
                LDA     $302,Y
                STA     byte_68
                LDA     $303,Y
                STA     byte_69
                LDA     $301,Y
                ASL     A
                ASL     A
                TAX
                LDY     #0
                LDA     (pPPUTable),Y
                STA     byte_64
                INY
                LDA     (pPPUTable),Y
                STA     byte_65
                INY
                LDA     (pPPUTable),Y
                STA     byte_6A
                INY
                LDA     (pPPUTable),Y
                STA     byte_6B
                SEC

loc_E315:                               ; CODE XREF: sub_E2A2+75↓j
                BIT     byte_E2
                BVS     loc_E315
                ROR     byte_E2
                LDY     #0

loc_E31D:                               ; CODE XREF: sub_E2A2+CF↓j
                LDA     $200,X
                CMP     #$F0
                BEQ     loc_E365
                CLC
                LDA     ($64),Y
                ADC     byte_68
                STA     $203,X
                INY
                CLC
                LDA     ($64),Y
                ADC     byte_69
                STA     $200,X
                INY
                LDA     ($64),Y
                STA     pPPUTable
                LDA     byte_6B
                LSR     pPPUTable
                BCC     loc_E342
                LSR     A
                LSR     A

loc_E342:                               ; CODE XREF: sub_E2A2+9C↑j
                LSR     pPPUTable
                BCC     loc_E34A
                LSR     A
                LSR     A
                LSR     A
                LSR     A

loc_E34A:                               ; CODE XREF: sub_E2A2+A2↑j
                AND     #3
                ASL     pPPUTable
                ASL     pPPUTable
                ORA     pPPUTable
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
                ASL     byte_E2
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
                STA     byte_68
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
                CPX     byte_DB
                CPX     byte_2
                CPX     byte_65
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
                STA     pPPUTable
                LDA     byte_3E
                LSR     A
                AND     #$40 ; '@'
                EOR     pPPUTable
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
                STA     pPPUTable
                LDA     byte_33
                STA     pPPUTable+1
                SEC
                LDA     (pPPUTable),Y
                SBC     #0
                STA     byte_7404
                INY
                LDA     (pPPUTable),Y
                SBC     #2
                STA     byte_7405
                INY
                SEC
                LDA     (pPPUTable),Y
                SBC     #$C0
                STA     byte_7406
                INY
                LDA     (pPPUTable),Y
                SBC     #1
                STA     byte_7407
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
                SBC     byte_36
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
                STA     byte_E8
                STA     byte_E9
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
                STA     byte_E8
                INY
                LDA     ($30),Y
                STA     byte_E9
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
                LDA     byte_DE
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
                STA     pPPUTable
                LDA     BANK_DATA,X
                STA     pPPUTable+1
                LDY     #$1E
                LDA     ($30),Y
                ASL     A
                TAY
                LDA     (pPPUTable),Y
                STA     byte_32
                INY
                LDA     (pPPUTable),Y
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
                STA     byte_E8
                LDA     $EBF4,X
                STA     byte_E9
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
                JSR     reduce_palette
                LDX     #0
                LDY     #8
                JSR     sub_EECC
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
                LDA     byte_DE
                BNE     loc_ECC6
                DEX
                BNE     loc_ECBC

loc_ECC6:                               ; CODE XREF: sub_ECA3+1E↑j
                JSR     wait_fill_PPU
                JSR     reduce_color
                JSR     sub_EE7F
                LDA     #$60 ; '`'
                LDX     #0
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     byte_A000
                STA     byte_EC
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
                SBC     HorizontalScrollPPU
                STA     byte_EC
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
                JSR     copy_ram_palette
                PLA
                LDX     #$1F

loc_EE05:                               ; CODE XREF: sub_EDFE+B↓j
                STA     PaletteBackground0,X
                DEX
                BPL     loc_EE05
                JMP     loc_EEB3
; End of function sub_EDFE


; =============== S U B R O U T I N E =======================================


sub_EE0E:
                PHA
                JSR     wait_fill_PPU
                PLA
                LDX     #$1F

loc_EE15:                               ; CODE XREF: sub_EE0E+E↓j
                DEX
                DEX
                DEX
                STA     PaletteBackground0,X
                DEX
                BPL     loc_EE15
                JMP     loc_EEB3
; End of function sub_EE0E


; =============== S U B R O U T I N E =======================================


sub_EE21:
                PHA
                JSR     wait_fill_PPU
                PLA
                LDX     #$1F

loc_EE28:                               ; CODE XREF: sub_EE21+B↓j
                STA     PaletteBackground1,X
                DEX
                BPL     loc_EE28
                BMI     increase_color
; End of function sub_EE21

; =============== S U B R O U T I N E =======================================


sub_EE7F:                               ; CODE XREF: sub_ECA3+29↑p
                                        ; loc_EEB0↓p
                JSR     wait_fill_PPU
                LDX     #$1F

loc_EE84:                               ; CODE XREF: sub_EE7F+C↓j
                LDA     PaletteBackground1,X
                STA     PaletteBackground0,X
                DEX
                BPL     loc_EE84
                RTS
; End of function sub_EE7F


; =============== S U B R O U T I N E =======================================


copy_ram_palette:                               ; CODE XREF: reduce_palette↑p
                                        ; sub_EDFE+1↑p ...
                JSR     wait_fill_PPU
                LDX     #$1F

loc_EE93:                               ; CODE XREF: copy_ram_palette+C↓j
                LDA     PaletteBackground0,X
                STA     PaletteBackground1,X
                DEX
                BPL     loc_EE93
                RTS
; End of function copy_ram_palette

; =============== S U B R O U T I N E =======================================


sub_EEC8:
                LDX     #0
                LDY     #0
; End of function sub_EEC8


; =============== S U B R O U T I N E =======================================


sub_EECC:                               ; CODE XREF: sub_EC65+7↑p
                JSR     wait_fill_PPU
                LDA     #0
                STA     byte_E8
                STA     byte_E9
                STA     byte_EC
                LDA     #$FC
                AND     CntrlPPU
                STA     CntrlPPU
                STX     VerticalScrollPPU
                STY     HorizontalScrollPPU
                JMP     wait_nmi
; End of function sub_EECC


; =============== S U B R O U T I N E =======================================


sub_EEE4:                               ; CODE XREF: ROM:loc_CCC6↑p
                                        ; sub_EEF0+21↓p
                JSR     wait_fill_PPU
                LDA     #4
                EOR     VerticalScrollPPU
                STA     VerticalScrollPPU
                JMP     wait_nmi
; End of function sub_EEE4


; =============== S U B R O U T I N E =======================================


sub_EEF0:                               ; CODE XREF: main+35↑p
                LDA     byte_761F
                AND     #$F0
                BEQ     locret_EF1A
                STA     pPPUTable
                ASL     pPPUTable
                BCC     locret_EF1A
                JSR     sub_F1ED
                AND     #$C0
                BNE     locret_EF1A
                JSR     copy_ram_palette
                JSR     sub_EF1B
                LDX     #$A

loc_EF0C:                               ; CODE XREF: sub_EEF0+25↓j
                LDA     #7
                STA     byte_7F0
                JSR     sub_EEE4
                DEX
                BNE     loc_EF0C
                JSR     loc_EEB0

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
                LDA     PaletteBackground0,X
                SBC     #$10
                BCS     loc_EF2B
                LDA     #$F

loc_EF2B:                               ; CODE XREF: sub_EF1B+C↑j
                STA     PaletteBackground0,X

loc_EF2E:                               ; CODE XREF: sub_EF1B+4↑j
                DEX
                BPL     loc_EF1D
                JMP     loc_EEB3
; End of function sub_EF1B


; =============== S U B R O U T I N E =======================================


sub_EF34:
                LDY     #8
                LDA     ($80),Y
                STA     CHRBank4
                INY
                LDA     ($80),Y
                STA     CHRBank5
                LDY     #6
                LDA     ($80),Y
                STA     byte_76
                LDY     #7
                LDA     ($80),Y
                STA     byte_77
; End of function sub_EF34


; =============== S U B R O U T I N E =======================================


sub_EF4B:                               ; CODE XREF: sub_F5C2+16↓p
                LDY     #0
                LDA     ($80),Y
                STA     CHRBank6
                TAX
                LDY     #1
                LDA     ($80),Y
                JSR     sub_F125
                STA     CHRBank2
                LDY     #0
                STY     CHRBank7

loc_EF5F:                               ; CODE XREF: sub_EF4B+1B↓j
                LDA     ($84),Y
                BNE     loc_EF6D
                INY
                CPY     CHRBank2
                BCC     loc_EF5F
                STA     CHRBank2
                STA     CHRBank3
                RTS
; ---------------------------------------------------------------------------

loc_EF6D:                               ; CODE XREF: sub_EF4B+16↑j
                STY     CHRBank2
                TYA

loc_EF70:                               ; CODE XREF: sub_EF4B+2D↓j
                CMP     CHRBank6
                BCC     loc_EF7A
                SBC     CHRBank6
                INC     CHRBank7
                BCS     loc_EF70

loc_EF7A:                               ; CODE XREF: sub_EF4B+27↑j
                STA     CHRBank6
                JSR     wait_fill_PPU
                LDY     #$18
                STY     byte_65
                LDA     #0
                STA     oam+2

loc_EF88:                               ; CODE XREF: sub_EF4B+B9↓j
                                        ; sub_EF4B:loc_F052↓j
                LDY     #5
                LDA     ($80),Y
                STA     oam+1
                LDY     #2
                LDA     ($80),Y
                LDX     CHRBank6
                JSR     sub_F125
                CLC
                ADC     byte_76
                ASL     A
                ASL     A
                ASL     A
                STA     oam+3
                LDY     #3
                LDA     ($80),Y
                LDX     CHRBank7
                JSR     sub_F125
                CLC
                ADC     byte_77
                ASL     A
                ASL     A
                ASL     A
                CLC
                ADC     #7
                STA     oam
                LDY     byte_65

loc_EFB8:                               ; CODE XREF: sub_EF4B+90↓j
                LDX     #0
                STX     byte_DA

loc_EFBC:                               ; CODE XREF: sub_EF4B+7C↓j
                JSR     sub_F1ED
                JSR     wait_nmi
                LDA     byte_DA
                BNE     loc_EFE1
                DEY
                BNE     loc_EFBC
                LDY     #5
                LDA     ($80),Y
                EOR     oam+1
                STA     oam+1
                LDA     byte_DE
                BNE     loc_EFDD
                LDY     #$18
                STY     byte_65
                BNE     loc_EFB8

loc_EFDD:                               ; CODE XREF: sub_EF4B+8A↑j
                LDY     #6
                STY     byte_65

loc_EFE1:                               ; CODE XREF: sub_EF4B+79↑j
                LDX     #0
                STX     byte_DA
                TAX
                LDY     #4
                AND     #$F0
                AND     ($80),Y
                BEQ     loc_EFFB
                STA     CHRBank3
                LDA     #5
                STA     byte_7F1

loc_EFF5:                               ; CODE XREF: sub_EF4B+119↓j
                LDA     #$F0
                STA     oam
                RTS
; ---------------------------------------------------------------------------

loc_EFFB:                               ; CODE XREF: sub_EF4B+A1↑j
                TXA
                AND     #$F
                STA     CHRBank3
                TAY
                LDX     $F0D9,Y
                BMI     loc_EF88
                LDA     CHRBank6
                STA     byte_68
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
                STA     pPPUTable
                CLC
                LDA     $F0E9,X
                ADC     byte_68
                LDY     #0
                CMP     ($80),Y
                BCS     loc_F055
                STA     byte_68
                STA     byte_6A
                LDA     ($80),Y
                LDX     pPPUTable
                JSR     sub_F125
                CLC
                ADC     byte_6A
                STA     byte_6A
                TAY
                LDA     ($84),Y
                BEQ     loc_F067
                LDA     byte_68
                STA     CHRBank6
                LDA     byte_69
                STA     CHRBank7
                LDA     byte_6A
                STA     CHRBank2
                LDA     #$D
                STA     byte_7F1

loc_F052:                               ; CODE XREF: sub_EF4B+110↓j
                JMP     loc_EF88
; ---------------------------------------------------------------------------

loc_F055:                               ; CODE XREF: sub_EF4B+CF↑j
                                        ; sub_EF4B+DF↑j ...
                LDY     #4
                LDA     CHRBank3
                AND     ($80),Y
                BEQ     loc_F052
                STA     CHRBank3
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


sub_F0B0:

; FUNCTION CHUNK AT ROM:C68B SIZE 0000002B BYTES

                PHA
                LDY     #2
                LDA     ($80),Y
                LDX     CHRBank6
                JSR     sub_F125
                CLC
                ADC     byte_76
                STA     byte_76
                LDY     #3
                LDA     ($80),Y
                LDX     CHRBank7
                JSR     sub_F125
                CLC
                ADC     byte_77
                STA     byte_77
                PLA
                JMP     loc_C68B
; End of function sub_F0B0

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
                ROR     pPPUTable+1
                ROR     pPPUTable
                BCC     loc_F0FE
                CLC
                ADC     byte_64

loc_F0FE:                               ; CODE XREF: sub_F0F1+8↑j
                ROR     A
                DEX
                BNE     loc_F0F5
                STA     AddrForJmp
                ROR     pPPUTable+1
                ROR     pPPUTable
                RTS
; End of function sub_F0F1


; =============== S U B R O U T I N E =======================================


sub_F109:                               ; CODE XREF: sub_DB40+D↑p
                                        ; sub_DB40+10↑p ...
                LDA     #0
                LDX     #$18

loc_F10D:                               ; CODE XREF: sub_F109+11↓j
                ROR     AddrForJmp
                ROR     pPPUTable+1
                ROR     pPPUTable
                BCC     loc_F118
                CLC
                ADC     byte_64

loc_F118:                               ; CODE XREF: sub_F109+A↑j
                ROR     A
                DEX
                BNE     loc_F10D
                STA     AddrForJmp+1
                ROR     AddrForJmp
                ROR     pPPUTable+1
                ROR     pPPUTable
                RTS
; End of function sub_F109


; =============== S U B R O U T I N E =======================================


sub_F125:                               ; CODE XREF: sub_DC71+E↑p
                                        ; sub_EF4B+B↑p ...
                STA     pPPUTable
                STX     byte_64
                LDA     #0
                LDX     #8

loc_F12D:                               ; CODE XREF: sub_F125+11↓j
                ROR     pPPUTable
                BCC     loc_F134
                CLC
                ADC     byte_64

loc_F134:                               ; CODE XREF: sub_F125+A↑j
                ROR     A
                DEX
                BNE     loc_F12D
                TAX
                LDA     pPPUTable
                ROR     A
                RTS
; End of function sub_F125


; =============== S U B R O U T I N E =======================================


sub_F13D:                               ; CODE XREF: sub_DA48+10↑p
                                        ; sub_F2ED+33↓p
                LDA     byte_64

loc_F13F:                               ; CODE XREF: sub_F13D:loc_F13F↓j
                BEQ     loc_F13F
                LDA     #0
                LDX     #$18
                ROL     pPPUTable
                ROL     pPPUTable+1
                ROL     AddrForJmp

loc_F14B:                               ; CODE XREF: sub_F13D+1F↓j
                ROL     A
                BCS     loc_F152
                CMP     byte_64
                BCC     loc_F155

loc_F152:                               ; CODE XREF: sub_F13D+F↑j
                SBC     byte_64
                SEC

loc_F155:                               ; CODE XREF: sub_F13D+13↑j
                ROL     pPPUTable
                ROL     pPPUTable+1
                ROL     AddrForJmp
                DEX
                BNE     loc_F14B
                STA     byte_68
                RTS
; End of function sub_F13D


; =============== S U B R O U T I N E =======================================


sub_F161:                               ; CODE XREF: ROM:C97F↑p
                LDY     #8

loc_F163:                               ; CODE XREF: sub_F161+2A↓j
                DEY
                LDA     #0
                LDX     #$18
                ROL     pPPUTable
                ROL     pPPUTable+1
                ROL     AddrForJmp

loc_F16E:                               ; CODE XREF: sub_F161+1B↓j
                ROL     A
                CMP     #$A
                BCC     loc_F175
                SBC     #$A

loc_F175:                               ; CODE XREF: sub_F161+10↑j
                ROL     pPPUTable
                ROL     pPPUTable+1
                ROL     AddrForJmp
                DEX
                BNE     loc_F16E
                TAX
                LDA     $F19A,X
                STA     $68,Y
                LDA     pPPUTable
                ORA     pPPUTable+1
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
                CMP     byte_78C
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
                STX     byte_DA

loc_F2A2:                               ; CODE XREF: sub_F296+15↓j
                JSR     wait_nmi
                LDA     byte_DA
                STX     byte_DA
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
                STA     pPPUTable
                PLA
                STA     pPPUTable+1
                LDA     (pPPUTable),Y
                STA     AddrForJmp
                INY
                LDA     (pPPUTable),Y
                STA     AddrForJmp+1
                LDY     #1
                SEC
                LDA     (pPPUTable),Y
                SBC     #1
                TAX
                INY
                LDA     (pPPUTable),Y
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
                STA     pPPUTable
                PLA
                STA     pPPUTable+1
                SEC
                LDA     (pPPUTable),Y
                SBC     #1
                TAX
                INY
                LDA     (pPPUTable),Y
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
                LDA     byte_65
                PHA
                LDA     byte_64
                PHA
                LDA     byte_69
                PHA
                LDA     byte_68
                PHA
                LDA     pPPUTable+1
                AND     #$FC
                PHA
                LDX     #6

loc_F30B:                               ; CODE XREF: sub_F2ED+23↓j
                ASL     pPPUTable
                ROL     pPPUTable+1
                DEX
                BNE     loc_F30B
                STX     AddrForJmp
                TXA
                PHA
                LDA     pPPUTable+1
                PHA
                LDA     pPPUTable
                PHA
                LDA     #$64 ; 'd'
                STA     byte_64
                JSR     sub_F13D
                JSR     sub_F1ED
                LSR     A
                PHP
                TAX
                LDA     $F37D,X
                STA     byte_64
                JSR     sub_F0F1
                PLP
                BCS     loc_F346
                PLA
                ADC     pPPUTable
                STA     pPPUTable
                PLA
                ADC     pPPUTable+1
                STA     pPPUTable+1
                PLA
                ADC     AddrForJmp
                STA     AddrForJmp
                JMP     loc_F355
; ---------------------------------------------------------------------------

loc_F346:                               ; CODE XREF: sub_F2ED+45↑j
                PLA
                SBC     pPPUTable
                STA     pPPUTable
                PLA
                SBC     pPPUTable+1
                STA     pPPUTable+1
                PLA
                SBC     AddrForJmp
                STA     AddrForJmp

loc_F355:                               ; CODE XREF: sub_F2ED+56↑j
                LDX     #6

loc_F357:                               ; CODE XREF: sub_F2ED+71↓j
                LSR     AddrForJmp
                ROR     pPPUTable+1
                ROR     pPPUTable
                DEX
                BNE     loc_F357
                PLA
                ORA     pPPUTable+1
                STA     pPPUTable+1
                PLA
                STA     byte_68
                PLA
                STA     byte_69
                PLA
                STA     byte_64
                PLA
                STA     byte_65
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
                JSR     wait_fill_PPU
                PLA
                LDY     #$1C

loc_F4BF:                               ; CODE XREF: sub_F4B8+E↓j
                STA     PaletteBackground0,Y
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
                STA     pPPUTable
                TXA
                PHA
                TYA
                PHA
                JSR     bank0
                LDY     pPPUTable
                LDA     $8C00,Y
                STA     pPPUTable
                LDA     $8C01,Y
                STA     pPPUTable+1
                LDY     #0
                LDA     (pPPUTable),Y
                STA     byte_66
                INY
                LDX     byte_76
                LDA     (pPPUTable),Y
                CMP     #$FF
                BEQ     loc_F4F4
                TAX

loc_F4F4:                               ; CODE XREF: sub_F4CE+23↑j
                STX     AddrForJmp
                INY
                LDX     byte_77
                LDA     (pPPUTable),Y
                CMP     #$FF
                BEQ     loc_F500
                TAX

loc_F500:                               ; CODE XREF: sub_F4CE+2F↑j
                STX     AddrForJmp+1

loc_F502:                               ; CODE XREF: sub_F4CE+50↓j
                                        ; sub_F4CE+55↓j
                INY
                LDA     (pPPUTable),Y
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
                LDA     (pPPUTable),Y
                STA     byte_64
                INY
                LDA     (pPPUTable),Y
                STA     byte_65

loc_F539:                               ; CODE XREF: sub_F52E+31↓j
                TXA
                PHA
                TYA
                PHA
                JSR     wait_fill_PPU
                LDA     #0
                STA     byte_70
                LDA     AddrForJmp
                STA     byte_76
                LDA     byte_64
                STA     byte_74
                LDA     byte_65
                STA     byte_75
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
                LDA     pPPUTable+1
                PHA
                LDA     pPPUTable
                PHA
                LDA     AddrForJmp
                PHA
                LDA     byte_65
                PHA
                LDA     byte_64
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
                STA     byte_77
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
                STA     byte_77
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
                STA     byte_77
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
                STA     byte_64
                PLA
                STA     byte_65
                PLA
                STA     AddrForJmp
                PLA
                STA     pPPUTable
                PLA
                STA     pPPUTable+1
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
                JSR     wait_fill_PPU
                LDY     #$E8
                STY     byte_68
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
                JSR     wait_fill_PPU
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
                LDA     byte_68
                ADC     #8
                STA     byte_68

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
                STA     pPPUTable
                LDA     $619,Y
                STA     pPPUTable+1
                LDA     $603,Y
                STA     byte_64
                LDA     $604,Y
                STA     byte_65
                LDY     #3
                LDA     (pPPUTable),Y
                STA     AddrForJmp
                INY
                LDA     (pPPUTable),Y
                AND     #3
                STA     AddrForJmp+1
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                PLA
                TAY
                SEC
                LDA     byte_64
                SBC     AddrForJmp
                LDA     byte_65
                SBC     AddrForJmp+1
                RTS
; End of function sub_F673


; =============== S U B R O U T I N E =======================================


sub_F6AA:                               ; CODE XREF: sub_F614+42↑p
                PHA
                JSR     wait_fill_PPU
                PLA
                JSR     sub_F2AE
                TSX
                INC     $BF,X
                INC     $C8,X
                INC     $F0,X
                INC     $A9,X
                ORA     ($85,X)
                SBC     pPPUTable
                LDA     #0
                LDX     #$C
                LDY     #$97
                JMP     loc_F6F9
; ---------------------------------------------------------------------------
                LDX     byte_68
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
                STX     pPPUTable
                STY     pPPUTable+1
                LDX     byte_68
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
                LDA     pPPUTable
                STA     $306,X
                LDA     pPPUTable+1
                STA     $307,X
                RTS
; End of function sub_F6AA


; =============== S U B R O U T I N E =======================================


sub_F724:                               ; CODE XREF: sub_F6AA+38↑p
                                        ; sub_F6AA+3D↑p

; FUNCTION CHUNK AT ROM:F25E SIZE 0000000D BYTES

                LDX     byte_68
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
                BIT     byte_E2
                BVS     locret_F79E
                LDX     #0
                LDA     byte_DA
                STX     byte_DA
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