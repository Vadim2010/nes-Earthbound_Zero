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
                LDA     ($60),Y
                STA     $302,X
                INY
                LDA     ($60),Y
                STA     $303,X
                INY
                LDA     ($60),Y
                STA     AddrForJmp+1
                INY
                CLC
                LDA     ($60),Y
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
                LDA     ($60),Y
                STA     byte_64
                INY
                LDA     ($60),Y
                STA     byte_65
                INY
                LDA     ($60),Y
                STA     byte_6A
                INY
                LDA     ($60),Y
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
                CPX     byte_8F
                CPX     byte_20
                ASL     CHRToPPU
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
                LDA     ($60),Y
                SBC     #0
                STA     byte_7404
                INY
                LDA     ($60),Y
                SBC     #2
                STA     byte_7405
                INY
                SEC
                LDA     ($60),Y
                SBC     #$C0
                STA     byte_7406
                INY
                LDA     ($60),Y
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
                LDA     $8000,X
                STA     pPPUTable
                LDA     $8001,X
                STA     pPPUTable+1
                LDY     #$1E
                LDA     ($30),Y
                ASL     A
                TAY
                LDA     ($60),Y
                STA     byte_32
                INY
                LDA     ($60),Y
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
                JSR     sub_EDDC
                LDX     #0
                LDY     #8
                JSR     sub_EECC
                LDA     #$EC
                LDX     #$EC
                JSR     SetPPUBank
                LDA     #1
                STA     byte_A000
                LDA     #$80
                STA     modeSRAM
                LDA     #$7C ; '|'
                STA     byte_40
                STA     byte_41
                STA     byte_42
                STA     byte_43
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
                JSR     sub_FD3A
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
                JSR     sub_FD33
                JSR     sub_EDDF
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
                STA     modeSRAM
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


sub_ECF1:
                RRA     $ED21,X
                ADC     ($ED,X)
                AND     ($ED,X)
                TXS
                SBC     byte_0
                LDX     #$FC
                BIT     byte_4A2
                JSR     sub_FD33
                STX     byte_E9
                LDX     #$14

loc_ED08:                               ; CODE XREF: sub_ECF1+22↓j
                LDA     #1
                STA     CHRToPPU
                JSR     sub_FD33
                JSR     sub_ED1A
                DEX
                BNE     loc_ED08
                LDA     #0
                STA     byte_E9
                RTS
; End of function sub_ECF1


; =============== S U B R O U T I N E =======================================


sub_ED1A:                               ; CODE XREF: sub_EC65+38↑p
                                        ; sub_ECF1+1E↑p
                SEC
                LDA     #$59 ; 'Y'
                SBC     horizontal_scroll_PPU
                STA     byte_EC
                RTS
; End of function sub_ED1A


; =============== S U B R O U T I N E =======================================


sub_ED22:
                CLC
                LDA     #2
                ADC     byte_46
                JSR     sub_C218
                BIT     byte_45
                BPL     loc_ED6F

loc_ED2E:                               ; CODE XREF: sub_ED22+4B↓j
                LDA     byte_40
                BPL     loc_ED34
                LDA     #$7C ; '|'

loc_ED34:                               ; CODE XREF: sub_ED22+E↑j
                STX     $8000
                STA     $8001
                INX
                LDA     byte_41
                BPL     loc_ED41
                LDA     #$7C ; '|'

loc_ED41:                               ; CODE XREF: sub_ED22+1B↑j
                STX     $8000
                STA     $8001
                INX
                LDA     byte_42
                BPL     loc_ED4E
                LDA     #$7C ; '|'

loc_ED4E:                               ; CODE XREF: sub_ED22+28↑j
                STX     $8000
                STA     $8001
                INX
                LDA     byte_43
                BPL     loc_ED5B
                LDA     #$7C ; '|'

loc_ED5B:                               ; CODE XREF: sub_ED22+35↑j
                STX     $8000
                STA     $8001
                RTS
; ---------------------------------------------------------------------------
                SEC
                LDA     #$23 ; '#'
                SBC     byte_46
                ASL     A
                JSR     sub_C218
                BIT     byte_45
                BVS     loc_ED2E

loc_ED6F:                               ; CODE XREF: sub_ED22+A↑j
                LDA     byte_40
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     byte_41
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     byte_42
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     byte_43
                AND     #$7F
                STX     $8000
                STA     $8001
                RTS
; End of function sub_ED22

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


sub_EDDC:                               ; CODE XREF: sub_EC65↑p
                JSR     sub_EE8E
; End of function sub_EDDC


; =============== S U B R O U T I N E =======================================


sub_EDDF:                               ; CODE XREF: sub_ECA3+26↑p
                LDY     #5

loc_EDE1:                               ; CODE XREF: sub_EDDF+1C↓j
                LDX     #$1F

loc_EDE3:                               ; CODE XREF: sub_EDDF+12↓j
                SEC
                LDA     $500,X
                SBC     #$10
                BCS     loc_EDED
                LDA     #$F

loc_EDED:                               ; CODE XREF: sub_EDDF+A↑j
                STA     $500,X
                DEX
                BPL     loc_EDE3
                TYA
                TAX
                JSR     sub_EEB5
                DEY
                CPY     #1
                BNE     loc_EDE1
                RTS
; End of function sub_EDDF


; =============== S U B R O U T I N E =======================================


sub_EDFE:                               ; CODE XREF: ROM:CD3A↑p
                PHA
                JSR     sub_EE8E
                PLA
                LDX     #$1F

loc_EE05:                               ; CODE XREF: sub_EDFE+B↓j
                STA     $500,X
                DEX
                BPL     loc_EE05
                JMP     loc_EEB3
; End of function sub_EDFE


; =============== S U B R O U T I N E =======================================


sub_EE0E:
                PHA
                JSR     sub_FD33
                PLA
                LDX     #$1F

loc_EE15:                               ; CODE XREF: sub_EE0E+E↓j
                DEX
                DEX
                DEX
                STA     $500,X
                DEX
                BPL     loc_EE15
                JMP     loc_EEB3
; End of function sub_EE0E


; =============== S U B R O U T I N E =======================================


sub_EE21:
                PHA
                JSR     sub_FD33
                PLA
                LDX     #$1F

loc_EE28:                               ; CODE XREF: sub_EE21+B↓j
                STA     $520,X
                DEX
                BPL     loc_EE28
                BMI     loc_EE33
; End of function sub_EE21


; =============== S U B R O U T I N E =======================================


sub_EE30:
                JSR     sub_FD33

loc_EE33:                               ; CODE XREF: sub_EE21+D↑j
                LDY     #5

loc_EE35:                               ; CODE XREF: sub_EE30+4C↓j
                LDX     #$1F

loc_EE37:                               ; CODE XREF: sub_EE30+42↓j
                SEC
                LDA     $500,X
                SBC     $520,X
                BEQ     loc_EE71
                AND     #$F
                BNE     loc_EE4D
                BCS     loc_EE56
                LDA     $500,X
                ADC     #$10
                BPL     loc_EE6E

loc_EE4D:                               ; CODE XREF: sub_EE30+12↑j
                LDA     $520,X
                AND     #$F
                CMP     #$D
                BCC     loc_EE61

loc_EE56:                               ; CODE XREF: sub_EE30+14↑j
                LDA     $500,X
                SBC     #$10
                BCS     loc_EE6E
                LDA     #$F
                BPL     loc_EE6E

loc_EE61:                               ; CODE XREF: sub_EE30+24↑j
                PHA
                LDA     $500,X
                AND     #$30 ; '0'
                STA     $500,X
                PLA
                ORA     $500,X

loc_EE6E:                               ; CODE XREF: sub_EE30+1B↑j
                                        ; sub_EE30+2B↑j ...
                STA     $500,X

loc_EE71:                               ; CODE XREF: sub_EE30+E↑j
                DEX
                BPL     loc_EE37
                TYA
                TAX
                JSR     sub_EEB5
                DEY
                CPY     #1
                BNE     loc_EE35
                RTS
; End of function sub_EE30


; =============== S U B R O U T I N E =======================================


sub_EE7F:                               ; CODE XREF: sub_ECA3+29↑p
                                        ; sub_EEB0↓p
                JSR     sub_FD33
                LDX     #$1F

loc_EE84:                               ; CODE XREF: sub_EE7F+C↓j
                LDA     $520,X
                STA     $500,X
                DEX
                BPL     loc_EE84
                RTS
; End of function sub_EE7F


; =============== S U B R O U T I N E =======================================


sub_EE8E:                               ; CODE XREF: sub_EDDC↑p
                                        ; sub_EDFE+1↑p ...
                JSR     sub_FD33
                LDX     #$1F

loc_EE93:                               ; CODE XREF: sub_EE8E+C↓j
                LDA     $500,X
                STA     $520,X
                DEX
                BPL     loc_EE93
                RTS
; End of function sub_EE8E


; =============== S U B R O U T I N E =======================================


sub_EE9D:
                STA     pPPUTable
                STX     pPPUTable+1
                JSR     sub_FD33
                LDY     #$1F

loc_EEA6:                               ; CODE XREF: sub_EE9D+F↓j
                LDA     ($60),Y
                STA     $500,Y
                DEY
                BPL     loc_EEA6
                BMI     loc_EEB3
; End of function sub_EE9D


; =============== S U B R O U T I N E =======================================


sub_EEB0:                               ; CODE XREF: sub_EEF0+27↓p
                JSR     sub_EE7F

loc_EEB3:                               ; CODE XREF: sub_EDFE+D↑j
                                        ; sub_EE0E+10↑j ...
                LDX     #1
; End of function sub_EEB0


; =============== S U B R O U T I N E =======================================


sub_EEB5:                               ; CODE XREF: sub_EDDF+16↑p
                                        ; sub_EE30+46↑p
                LDA     #4
                STA     NMI_ID
                LDA     #0
                STA     num_of_chr
                STA     Offset400
                LDA     #$80
                STA     CHRToPPU
                JMP     sub_FD3A
; End of function sub_EEB5


; =============== S U B R O U T I N E =======================================


sub_EEC8:
                LDX     #0
                LDY     #0
; End of function sub_EEC8


; =============== S U B R O U T I N E =======================================


sub_EECC:                               ; CODE XREF: sub_EC65+7↑p
                JSR     sub_FD33
                LDA     #0
                STA     byte_E8
                STA     byte_E9
                STA     byte_EC
                LDA     #$FC
                AND     CntrlPPU
                STA     CntrlPPU
                STX     vertical_scroll_PPU
                STY     horizontal_scroll_PPU
                JMP     wait_nmi
; End of function sub_EECC


; =============== S U B R O U T I N E =======================================


sub_EEE4:                               ; CODE XREF: ROM:loc_CCC6↑p
                                        ; sub_EEF0+21↓p
                JSR     sub_FD33
                LDA     #4
                EOR     vertical_scroll_PPU
                STA     vertical_scroll_PPU
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
                JSR     sub_EE8E
                JSR     sub_EF1B
                LDX     #$A

loc_EF0C:                               ; CODE XREF: sub_EEF0+25↓j
                LDA     #7
                STA     byte_7F0
                JSR     sub_EEE4
                DEX
                BNE     loc_EF0C
                JSR     sub_EEB0

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
                LDA     $500,X
                SBC     #$10
                BCS     loc_EF2B
                LDA     #$F

loc_EF2B:                               ; CODE XREF: sub_EF1B+C↑j
                STA     $500,X

loc_EF2E:                               ; CODE XREF: sub_EF1B+4↑j
                DEX
                BPL     loc_EF1D
                JMP     loc_EEB3
; End of function sub_EF1B


; =============== S U B R O U T I N E =======================================


sub_EF34:
                LDY     #8
                LDA     ($80),Y
                STA     byte_84
                INY
                LDA     ($80),Y
                STA     byte_85
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
                STA     byte_86
                TAX
                LDY     #1
                LDA     ($80),Y
                JSR     sub_F125
                STA     byte_82
                LDY     #0
                STY     byte_87

loc_EF5F:                               ; CODE XREF: sub_EF4B+1B↓j
                LDA     ($84),Y
                BNE     loc_EF6D
                INY
                CPY     byte_82
                BCC     loc_EF5F
                STA     byte_82
                STA     byte_83
                RTS
; ---------------------------------------------------------------------------

loc_EF6D:                               ; CODE XREF: sub_EF4B+16↑j
                STY     byte_82
                TYA

loc_EF70:                               ; CODE XREF: sub_EF4B+2D↓j
                CMP     byte_86
                BCC     loc_EF7A
                SBC     byte_86
                INC     byte_87
                BCS     loc_EF70

loc_EF7A:                               ; CODE XREF: sub_EF4B+27↑j
                STA     byte_86
                JSR     sub_FD33
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
                LDX     byte_86
                JSR     sub_F125
                CLC
                ADC     byte_76
                ASL     A
                ASL     A
                ASL     A
                STA     oam+3
                LDY     #3
                LDA     ($80),Y
                LDX     byte_87
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
                STA     byte_83
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
                STA     byte_83
                TAY
                LDX     $F0D9,Y
                BMI     loc_EF88
                LDA     byte_86
                STA     byte_68
                LDA     byte_87
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
                STA     byte_86
                LDA     byte_69
                STA     byte_87
                LDA     byte_6A
                STA     byte_82
                LDA     #$D
                STA     byte_7F1

loc_F052:                               ; CODE XREF: sub_EF4B+110↓j
                JMP     loc_EF88
; ---------------------------------------------------------------------------

loc_F055:                               ; CODE XREF: sub_EF4B+CF↑j
                                        ; sub_EF4B+DF↑j ...
                LDY     #4
                LDA     byte_83
                AND     ($80),Y
                BEQ     loc_F052
                STA     byte_83
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
                LDX     byte_86
                JSR     sub_F125
                CLC
                ADC     byte_76
                STA     byte_76
                LDY     #3
                LDA     ($80),Y
                LDX     byte_87
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
                LDA     ($60),Y
                STA     AddrForJmp
                INY
                LDA     ($60),Y
                STA     AddrForJmp+1
                LDY     #1
                SEC
                LDA     ($60),Y
                SBC     #1
                TAX
                INY
                LDA     ($60),Y
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
                LDA     ($60),Y
                SBC     #1
                TAX
                INY
                LDA     ($60),Y
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


sub_F479:                               ; CODE XREF: start_battle+6↑p
                LDA     byte_48
                STA     pPPUTable
                LDA     #0
                STA     pPPUTable+1
                LDA     #$A
                STA     byte_64
                JSR     sub_F0F1
                CLC
                LDA     #$98
                ADC     pPPUTable
                STA     byte_5C
                LDA     #$8F
                ADC     pPPUTable+1
                STA     byte_5D
                RTS
; End of function sub_F479


; =============== S U B R O U T I N E =======================================


sub_F496:
                JSR     sub_FD33
                LDY     #$1F

loc_F49B:                               ; CODE XREF: sub_F496+B↓j
                LDA     ($60),Y
                STA     $500,Y
                DEY
                BPL     loc_F49B
; End of function sub_F496


; =============== S U B R O U T I N E =======================================


sub_F4B6:                               ; CODE XREF: sub_F26B+E↑j
                LDA     #$F
; End of function sub_F4B6


; =============== S U B R O U T I N E =======================================


sub_F4B8:                               ; CODE XREF: sub_F27C+B↑p
                PHA
                JSR     sub_FD33
                PLA
                LDY     #$1C

loc_F4BF:                               ; CODE XREF: sub_F4B8+E↓j
                STA     $500,Y
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
                LDA     ($60),Y
                STA     byte_66
                INY
                LDX     byte_76
                LDA     ($60),Y
                CMP     #$FF
                BEQ     loc_F4F4
                TAX

loc_F4F4:                               ; CODE XREF: sub_F4CE+23↑j
                STX     AddrForJmp
                INY
                LDX     byte_77
                LDA     ($60),Y
                CMP     #$FF
                BEQ     loc_F500
                TAX

loc_F500:                               ; CODE XREF: sub_F4CE+2F↑j
                STX     AddrForJmp+1

loc_F502:                               ; CODE XREF: sub_F4CE+50↓j
                                        ; sub_F4CE+55↓j
                INY
                LDA     ($60),Y
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
                LDA     ($60),Y
                STA     byte_64
                INY
                LDA     ($60),Y
                STA     byte_65

loc_F539:                               ; CODE XREF: sub_F52E+31↓j
                TXA
                PHA
                TYA
                PHA
                JSR     sub_FD33
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
                STA     byte_84
                LDA     #$F5
                STA     byte_85
                LDA     #$DF
                STA     byte_80
                LDA     #$F5
                STA     byte_81
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
                JSR     sub_FD33
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
                JSR     sub_FD33
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
                LDA     ($60),Y
                STA     AddrForJmp
                INY
                LDA     ($60),Y
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
                JSR     sub_FD33
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
                STA     CHRToPPU
                LDX     #8
                JMP     loc_F25E
; End of function sub_F724


; =============== S U B R O U T I N E =======================================


sub_F732:
                JSR     sub_FD33
                STX     pPPUTable
                STY     pPPUTable+1
                LDY     #$1F

loc_F73B:                               ; CODE XREF: sub_F732+F↓j
                LDA     ($60),Y
                STA     $400,Y
                DEY
                BPL     loc_F73B
                LDA     #$80
                STA     CHRToPPU
                LDA     #0
                STA     Offset400
                RTS
; End of function sub_F732



; =============== S U B R O U T I N E =======================================


sub_F759:
                LDA     #0
                STA     JmpInstr
                JMP     wait_nmi
; End of function sub_F759


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