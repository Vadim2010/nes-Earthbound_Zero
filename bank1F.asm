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
                JMP     sram_read_enable
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


; =============== S U B R O U T I N E =======================================


sub_E087:
                JSR     sub_DD57
                LDX     #4
                STX     byte_36
                LDA     #0
                STA     AddrForJmp
                LDX     #8

loc_E094:                               ; CODE XREF: sub_E087+68↓j
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

loc_E0E3:                               ; CODE XREF: sub_E087+11↑j
                                        ; sub_E087+13↑j
                CLC
                LDA     #4
                ADC     AddrForJmp
                STA     AddrForJmp
                JSR     sub_DD64
                DEC     byte_36
                BNE     loc_E094
                RTS
; End of function sub_E087


; =============== S U B R O U T I N E =======================================


sub_E0F2:                               ; CODE XREF: sub_CEFC+2B↑p
                                        ; sub_D0C4+88↑p
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
                RETURN_OPERAND <nullsub_3-1, 0>
                RETURN_OPERAND <sub_E681-1, $8800>
                RETURN_OPERAND <sub_E681-1, $8800>
                RETURN_OPERAND <sub_E6CF-1, $8800>
                RETURN_OPERAND <sub_E678-1, $800>
                RETURN_OPERAND <nullsub_3-1, 0>
                RETURN_OPERAND <nullsub_3-1, 0>
                RETURN_OPERAND <sub_E83F-1, $A604>
                RETURN_OPERAND <sub_E96C-1, $6004>
                RETURN_OPERAND <sub_EB3A-1, $2009>
                RETURN_OPERAND <sub_EB92-1, $2009>
                RETURN_OPERAND <loc_E8DE-1, $2009>
                RETURN_OPERAND <sub_E905-1, $6004>
                RETURN_OPERAND <sub_EA38-1, $2009>
                RETURN_OPERAND <loc_EAC5-1, $2009>
                RETURN_OPERAND <sub_EBCA-1, $2004>
                RETURN_OPERAND <sub_E7F5-1, $E604>
                RETURN_OPERAND <loc_E7CD-1, $E604>
                RETURN_OPERAND <loc_E7BE-1, $E604>
                RETURN_OPERAND <loc_E814-1, $E604>
                RETURN_OPERAND <sub_E808-1, $E604>
                RETURN_OPERAND <loc_E7C7-1, $E604>
                RETURN_OPERAND <sub_E7B8-1, $E604>
                RETURN_OPERAND <sub_E80E-1, $E604>
                RETURN_OPERAND <loc_E720-1, $C400>
                RETURN_OPERAND <loc_E720-1, $C604>
                RETURN_OPERAND <loc_E720-1, $4609>
                RETURN_OPERAND <loc_E720-1, $4400>
                RETURN_OPERAND <sub_E71A-1, $C400>
                RETURN_OPERAND <sub_E71A-1, $C604>
                RETURN_OPERAND <sub_E71A-1, $4609>
                RETURN_OPERAND <sub_E71A-1, $4400>
                RETURN_OPERAND <sub_E756-1, $8804>
                RETURN_OPERAND <sub_E6F1-1, $C604>
                RETURN_OPERAND <loc_E7BE-1, $E602>
                RETURN_OPERAND <loc_E720-1, $560A>
                RETURN_OPERAND <loc_E720-1, $5604>
                RETURN_OPERAND <loc_E720-1, $C608>
                RETURN_OPERAND <unk_E788-1, $A604>
                RETURN_OPERAND <sub_E6D9-1, $C604>
                RETURN_OPERAND <sub_E8D2-1, $4609>
                RETURN_OPERAND <sub_E661-1, $4500>
                RETURN_OPERAND <loc_E669-1, $4500>
                RETURN_OPERAND <loc_E8F5-1, $C60A>
                RETURN_OPERAND <sub_E8E8-1, $4609>
                RETURN_OPERAND <sub_E71A-1, $4604>
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_3. PRESS CTRL-NUMPAD+ TO EXPAND]

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

loc_E1D4:                               ; CODE XREF: sub_E7DC+A↓p
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


; =============== S U B R O U T I N E =======================================


sub_E20F:
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

loc_E258:                               ; CODE XREF: sub_E20F+35↑j
                STX     byte_A1
                JSR     sub_E275

loc_E25D:                               ; CODE XREF: sub_E266+D↓j
                LDX     byte_32
                LDY     byte_33
                STX     byte_30
                STY     byte_31
                RTS
; End of function sub_E20F


; =============== S U B R O U T I N E =======================================


sub_E266:
                LDA     byte_21
                AND     #$7F
                JSR     loc_E286
                ASL     byte_21
                LDX     #0
                STX     byte_21
                BEQ     loc_E25D
; End of function sub_E266


; =============== S U B R O U T I N E =======================================


sub_E275:                               ; CODE XREF: sub_E20F+4B↑p
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
                JSR     sram_write_enable
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
                JSR     sram_read_enable
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


bank14_8000_ex:                         ; CODE XREF: sub_E7DC+14↓p
                                        ; sub_E96C+20↓p
                LDA     #$14
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     byte_A6
                STA     byte_A2
                LDA     byte_3E
                ASL     A
                TAX
                LDA     $E3CD,X
                PHA
                LDA     $E3CC,X
                PHA
                RTS
; End of function bank14_8000_ex

; ---------------------------------------------------------------------------
ReturnTab:      .WORD sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
                .WORD loc_E4DC-1, loc_E403-1, loc_E466-1, loc_E490-1

; =============== S U B R O U T I N E =======================================


sub_E3DE:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                TAX
                AND     #$30 ; '0'
                BEQ     loc_E3EF
                AND     #$20 ; ' '
                BEQ     loc_E400
                TXA
                AND     #$1C
                BNE     loc_E400

loc_E3EF:                               ; CODE XREF: sub_E3DE+6↑j
                LDX     #$FF
                LDY     #0
                JSR     loc_E510
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E425
                TXA
                AND     #3
                BEQ     loc_E425

loc_E400:                               ; CODE XREF: sub_E3DE+A↑j
                                        ; sub_E3DE+F↑j ...
                JMP     loc_E490
; ---------------------------------------------------------------------------

loc_E403:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                TAX
                AND     #$30 ; '0'
                BEQ     loc_E414
                AND     #$20 ; ' '
                BEQ     loc_E400
                TXA
                AND     #$13
                BNE     loc_E400

loc_E414:                               ; CODE XREF: sub_E3DE+2B↑j
                LDX     #1
                LDY     #0
                JSR     loc_E510
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E425
                TXA
                AND     #$C
                BNE     loc_E400

loc_E425:                               ; CODE XREF: sub_E3DE+1B↑j
                                        ; sub_E3DE+20↑j ...
                JMP     loc_E497
; End of function sub_E3DE


; =============== S U B R O U T I N E =======================================


sub_E428:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$16
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     loc_E510
                AND     #9
                BNE     loc_E490
                BEQ     loc_E497

loc_E43C:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$14
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     loc_E510
                AND     #8
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     loc_E510
                AND     #2
                BNE     loc_E490
                LDX     #$FF
                LDY     #$10
                JSR     loc_E510
                AND     #1
                BNE     loc_E490
                BEQ     loc_E497

loc_E466:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$12
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     loc_E510
                AND     #1
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     loc_E510
                AND     #4
                BNE     loc_E490
                LDX     #1
                LDY     #$10
                JSR     loc_E510
                AND     #8
                BNE     loc_E490
                BEQ     loc_E497

loc_E490:                               ; CODE XREF: sub_E3DE:loc_E400↑j
                                        ; sub_E428+5↑j ...
                LDA     byte_15
                JSR     sub_DE6C
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_E497:                               ; CODE XREF: sub_E3DE:loc_E425↑j
                                        ; sub_E428+12↑j ...
                LDA     byte_15
                JSR     sub_DE6C
                CLC
                RTS
; End of function sub_E428


; =============== S U B R O U T I N E =======================================


sub_E49E:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$19
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     loc_E510
                AND     #6
                BNE     loc_E490
                BEQ     loc_E497
; End of function sub_E49E


; =============== S U B R O U T I N E =======================================


sub_E4B2:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$18
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     loc_E510
                AND     #4
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     loc_E510
                AND     #1
                BNE     loc_E490
                LDX     #$FF
                LDY     #$F0
                JSR     loc_E510
                AND     #2
                BNE     loc_E490
                BEQ     loc_E497

loc_E4DC:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$11
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     loc_E510
                AND     #2
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     loc_E510
                AND     #8
                BNE     loc_E490
                LDX     #1
                LDY     #$F0
                JSR     loc_E510
                AND     #4
                BNE     loc_E490
                BEQ     loc_E497
; End of function sub_E4B2


; =============== S U B R O U T I N E =======================================


sub_E506:                               ; CODE XREF: sub_E3DE↑p
                                        ; sub_E3DE:loc_E403↑p ...
                LDX     #0
                LDY     #0
                JSR     loc_E510
                STA     byte_3F
                RTS
; End of function sub_E506

; ---------------------------------------------------------------------------

loc_E510:                               ; CODE XREF: sub_E3DE+15↑p
                                        ; sub_E3DE+3A↑p ...
                CLC
                TYA
                ADC     byte_A1
                STA     byte_A3
                CLC
                TXA
                ADC     byte_A3
                TAY
                EOR     byte_A3
                AND     #$F0
                BEQ     loc_E52F
                LDA     byte_A3
                AND     #$F0
                STA     byte_A3
                TYA
                AND     #$F
                ORA     byte_A3
                TAY
                LDA     #1

loc_E52F:                               ; CODE XREF: ROM:E51F↑j
                EOR     byte_A7
                CLC
                ADC     #$FC
                STA     byte_A3
                LDA     #0
                STA     byte_A4
                LDA     ($A2),Y
                BMI     loc_E540+1
                LDA     byte_10

loc_E540:                               ; CODE XREF: ROM:E53C↑j
                BIT     byte_800+$AA5
                LSR     A
                ROR     byte_A4
                ADC     #$80
                STA     byte_A5
                LDA     ($A2),Y
                AND     #$7F
                TAY
                LDA     ($A4),Y
                RTS
; ---------------------------------------------------------------------------
                .BYTE $20
                .BYTE   7
                .BYTE $E6
                .BYTE $A0
                .BYTE  $C
                .BYTE $BD
                .BYTE $F3
                .BYTE $EB
                .BYTE  $A
                .BYTE $91
                .BYTE $30 ; 0
                .BYTE $C8
                .BYTE $BD
                .BYTE $F4
                .BYTE $EB
                .BYTE  $A
                .BYTE $91
                .BYTE $30 ; 0
                .BYTE $4C ; L
                .BYTE $77 ; w
                .BYTE $E5

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

loc_E59B:                               ; CODE XREF: sub_E6F1+23↓p
                                        ; sub_E71A+11↓p ...
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


sub_E5AF:
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


sub_E607:                               ; CODE XREF: sub_E567↑p
                                        ; sub_E5EF↑p ...
                LDA     byte_3E
                ASL     A
                ASL     A
                ASL     A
                TAX
                RTS
; End of function sub_E607


; =============== S U B R O U T I N E =======================================


sub_E60E:                               ; CODE XREF: sub_E6D9↓p
                                        ; sub_E6F1↓p ...
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
                JSR     loc_E646
                AND     $EC5D,X
                BNE     loc_E637

loc_E62D:                               ; CODE XREF: sub_E60E+15↑j
                                        ; sub_E60E+27↓j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E62F:                               ; CODE XREF: sub_E60E+13↑j
                JSR     loc_E646
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
                                        ; sub_E661:loc_E669↓p
                JSR     sub_E655
                LDY     #4

loc_E646:                               ; CODE XREF: sub_E60E:loc_E625↑p
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
; End of function sub_E641


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


sub_E661:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E641
                ORA     $EC5D,X
                BNE     loc_E672

loc_E669:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E641
                ORA     $EC5D,X
                EOR     $EC5D,X

loc_E672:                               ; CODE XREF: sub_E661+6↑j
                STA     $7600,Y
                JMP     loc_E720
; End of function sub_E661


; =============== S U B R O U T I N E =======================================


sub_E678:                               ; DATA XREF: ROM:E105↑o
                LDY     #$1B
                LDA     ($30),Y
                BNE     loc_E694
                JMP     sub_E72E
; End of function sub_E678


; =============== S U B R O U T I N E =======================================


sub_E681:                               ; CODE XREF: sub_E6CF↓p
                                        ; DATA XREF: ROM:E105↑o
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


sub_E6CF:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E681
                BCC     locret_E6D8
                LDA     #1
                STA     byte_E

locret_E6D8:                            ; CODE XREF: sub_E6CF+3↑j
                RTS
; End of function sub_E6CF


; =============== S U B R O U T I N E =======================================


sub_E6D9:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E6DF
                RTS
; ---------------------------------------------------------------------------

loc_E6DF:                               ; CODE XREF: sub_E6D9+3↑j
                JSR     sub_E7FC
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                CMP     #8
                BCS     loc_E6FE
                JSR     sub_E7DC
                JMP     sub_E73D
; End of function sub_E6D9


; =============== S U B R O U T I N E =======================================


sub_E6F1:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E6F7
                RTS
; ---------------------------------------------------------------------------

loc_E6F7:                               ; CODE XREF: sub_E6F1+3↑j
                JSR     sub_E7FC
                AND     #$F0
                BNE     loc_E720

loc_E6FE:                               ; CODE XREF: sub_E6D9+10↑j
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
; End of function sub_E6F1


; =============== S U B R O U T I N E =======================================


sub_E71A:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E720
                RTS
; ---------------------------------------------------------------------------

loc_E720:                               ; CODE XREF: sub_E661+14↑j
                                        ; sub_E6F1+B↑j ...
                JSR     sub_E733
                JSR     sub_E73D
                JSR     sub_E746
                LDA     #0
                JSR     loc_E59B
; End of function sub_E71A


; =============== S U B R O U T I N E =======================================


sub_E72E:                               ; CODE XREF: sub_E678+6↑j
                                        ; sub_E681+E↑p ...
                LDA     #$88
                STA     byte_3E
                RTS
; End of function sub_E72E


; =============== S U B R O U T I N E =======================================


sub_E733:                               ; CODE XREF: sub_E71A:loc_E720↑p
                                        ; sub_E756↓p ...
                LDA     #0
                LDY     #$C
                STA     ($30),Y
                INY
                STA     ($30),Y
                RTS
; End of function sub_E733


; =============== S U B R O U T I N E =======================================


sub_E73D:                               ; CODE XREF: sub_E6D9+15↑j
                                        ; sub_E6F1+18↑p ...
                LDY     #8
                LDA     ($30),Y
                AND     #$3F ; '?'
                STA     ($30),Y
                RTS
; End of function sub_E73D


; =============== S U B R O U T I N E =======================================


sub_E746:                               ; CODE XREF: sub_E71A+C↑p
                                        ; sub_E756+6↓p ...
                LDY     #9
                LDA     #$38 ; '8'
                STA     ($30),Y
                RTS
; End of function sub_E746


; =============== S U B R O U T I N E =======================================


sub_E74D:                               ; CODE XREF: sub_E80E+1A↓j
                                        ; sub_E8D2:loc_E8E1↓p ...
                LDY     #8
                LDA     ($30),Y
                ORA     #$40 ; '@'
                STA     ($30),Y
                RTS
; End of function sub_E74D


; =============== S U B R O U T I N E =======================================


sub_E756:                               ; DATA XREF: ROM:E105↑o
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

; ---------------------------------------------------------------------------
unk_E788:       .BYTE $A0               ; DATA XREF: ROM:E105↑o
                .BYTE $1A
                .BYTE $B1
                .BYTE $30 ; 0
                .BYTE $D0
                .BYTE  $E
                .BYTE $A9
                .BYTE   1
                .BYTE $91
                .BYTE $30 ; 0
                .BYTE $A0
                .BYTE $15
                .BYTE $B1
                .BYTE $30 ; 0
                .BYTE $49 ; I
                .BYTE   4
                .BYTE $29 ; )
                .BYTE  $F
                .BYTE $91
                .BYTE $30 ; 0
                .BYTE $A0
                .BYTE $15
                .BYTE $B1
                .BYTE $30 ; 0
                .BYTE $85
                .BYTE $3E ; >
                .BYTE $20
                .BYTE $AF
                .BYTE $E5
                .BYTE $20
                .BYTE $D4
                .BYTE $E1
                .BYTE $90
                .BYTE   7
                .BYTE $A9
                .BYTE $F8
                .BYTE $85
                .BYTE $22 ; "
                .BYTE $4C ; L
                .BYTE $52 ; R
                .BYTE $E5
                .BYTE $A9
                .BYTE   0
                .BYTE $85
                .BYTE $22 ; "
                .BYTE $4C ; L
                .BYTE $65 ; e
                .BYTE $E9

; =============== S U B R O U T I N E =======================================


sub_E7B8:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E7BE
                RTS
; ---------------------------------------------------------------------------

loc_E7BE:                               ; CODE XREF: sub_E7B8+3↑j
                                        ; DATA XREF: ROM:E105↑o
                JSR     sub_E7FC
                AND     #$E0
                LSR     A
                LSR     A
                BCC     loc_E7D2

loc_E7C7:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E7CD
                RTS
; ---------------------------------------------------------------------------

loc_E7CD:                               ; CODE XREF: sub_E7B8+12↑j
                                        ; DATA XREF: ROM:E105↑o
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


sub_E7DC:                               ; CODE XREF: sub_E6D9+12↑p
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


sub_E7FC:                               ; CODE XREF: sub_E6D9:loc_E6DF↑p
                                        ; sub_E6F1:loc_E6F7↑p ...
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


sub_E808:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     sub_E7F5
                RTS
; End of function sub_E808


; =============== S U B R O U T I N E =======================================


sub_E80E:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E814
                RTS
; ---------------------------------------------------------------------------

loc_E814:                               ; CODE XREF: sub_E80E+3↑j
                                        ; DATA XREF: ROM:E105↑o
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


sub_E83F:                               ; DATA XREF: ROM:E105↑o
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


; =============== S U B R O U T I N E =======================================


sub_E8D2:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E8D8
                RTS
; ---------------------------------------------------------------------------

loc_E8D8:                               ; CODE XREF: sub_E8D2+3↑j
                JSR     sub_E7F5
                JMP     loc_E8E1
; ---------------------------------------------------------------------------

loc_E8DE:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_EB92

loc_E8E1:                               ; CODE XREF: sub_E8D2+9↑j
                JSR     sub_E74D
                LDA     #$74 ; 't'
                BNE     loc_E900
; End of function sub_E8D2


; =============== S U B R O U T I N E =======================================


sub_E8E8:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E8EE
                RTS
; ---------------------------------------------------------------------------

loc_E8EE:                               ; CODE XREF: sub_E8E8+3↑j
                JSR     sub_E7F5
                LDA     #$74 ; 't'
                BNE     loc_E900

loc_E8F5:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E60E
                BCC     loc_E8FB
                RTS
; ---------------------------------------------------------------------------

loc_E8FB:                               ; CODE XREF: sub_E8E8+10↑j
                JSR     sub_E7F5
                LDA     #$72 ; 'r'

loc_E900:                               ; CODE XREF: sub_E8D2+14↑j
                                        ; sub_E8E8+B↑j
                LDX     #1
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_E8E8              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_E905:                               ; DATA XREF: ROM:E105↑o
                LDA     byte_23
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

loc_E92F:                               ; CODE XREF: sub_E905+7↑j
                                        ; sub_E905+25↑j
                JSR     sub_E567
                JSR     sub_EA24
                LDY     #8
                LDA     ($30),Y
                AND     #$F
                CMP     #$A
                BEQ     loc_E940
                RTS
; ---------------------------------------------------------------------------

loc_E940:                               ; CODE XREF: sub_E905+38↑j
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

loc_E95B:                               ; CODE XREF: sub_E905+3↑j
                LDA     #0
                STA     byte_3E
                STA     byte_23
                LDA     #$10
                BCS     loc_E967
                LDA     #$80

loc_E967:                               ; CODE XREF: sub_E905+5E↑j
                LDY     #0
                STA     ($30),Y
                RTS
; End of function sub_E905


; =============== S U B R O U T I N E =======================================


sub_E96C:                               ; DATA XREF: ROM:E105↑o
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
; End of function sub_E96C


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


sub_EA24:                               ; CODE XREF: sub_E905+2D↑p
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


sub_EA38:                               ; DATA XREF: ROM:E105↑o
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

loc_EAC5:                               ; DATA XREF: ROM:E105↑o
                LDA     byte_3E
                BMI     loc_EB07
                LDY     #$19
                LDA     ($30),Y
                TAX
                LDA     byte_3E
                STA     ($30),Y
                TXA
                BMI     loc_EB07
                STA     byte_3E
                LDY     #$15
                EOR     #4
                STA     ($30),Y
                LDY     #6
                SEC
                LDA     byte_6786
                SBC     ($30),Y
                INY
                LDA     byte_6787
                SBC     ($30),Y
                LDY     #$14
                LDA     ($30),Y
                BCS     loc_EAF3+1
                ORA     #$10

loc_EAF3:                               ; CODE XREF: ROM:EAEF↑j
                BIT     loc_EF29
                STA     ($30),Y
                JSR     sub_E5BD
                JSR     sub_EB0B
                CPX     #$40 ; '@'
                BCC     loc_EB04
                SBC     #4

loc_EB04:                               ; CODE XREF: ROM:EB00↑j
                JMP     loc_E59B
; ---------------------------------------------------------------------------

loc_EB07:                               ; CODE XREF: ROM:EAC7↑j
                                        ; ROM:EAD3↑j
                LDA     #$88
                STA     byte_3E

; =============== S U B R O U T I N E =======================================


sub_EB0B:                               ; CODE XREF: sub_EA38+5A↑p
                                        ; sub_EA38+87↑p ...
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


sub_EB3A:                               ; DATA XREF: ROM:E105↑o
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


sub_EB92:                               ; CODE XREF: sub_E8D2:loc_E8DE↑p
                                        ; DATA XREF: ROM:E105↑o
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


; =============== S U B R O U T I N E =======================================


sub_EBCA:                               ; DATA XREF: ROM:E105↑o
                JSR     sub_E9CD
                STA     byte_3E
                BMI     loc_EBD4
                JSR     sub_E5BD

loc_EBD4:                               ; CODE XREF: sub_EBCA+5↑j
                JSR     sub_E567
                JSR     sub_E73D
                JMP     loc_E9B3
; End of function sub_EBCA

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
                JSR     loc_EECC
                LDA     #$EC
                LDX     #$EC
                JSR     SetPPUBank
                LDA     #1
                STA     byte_A000
                LDA     #$80
                STA     modeSRAM
                LDA     #$7C ; '|'
                STA     BankPPU7C_X000
                STA     BankPPU7C_X400
                STA     BankPPU7C_X800
                STA     BankPPU7C_XC00
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
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EC65


; =============== S U B R O U T I N E =======================================


sub_ECA3:                               ; CODE XREF: start_battle+33↓p
                LDA     #$C3
                JSR     loc_C408
                LDX     #$1E
                JSR     wait_frame      ; wait for the whole frame to be output
                JSR     sub_D8D3
                BCS     loc_ECB6
                JSR     sub_DA48
                CLC

loc_ECB6:                               ; CODE XREF: sub_ECA3+D↑j
                PHP
                JSR     sub_D977
                LDX     #$3C ; '<'

loc_ECBC:                               ; CODE XREF: sub_ECA3+21↓j
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     byte_DE
                BNE     loc_ECC6
                DEX
                BNE     loc_ECBC

loc_ECC6:                               ; CODE XREF: sub_ECA3+1E↑j
                JSR     sub_FD33
                JSR     loc_EDDF
                JSR     sub_EE7F
                LDA     #$60 ; '`'
                LDX     #0
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     $A000
                STA     byte_EC
                STA     byte_70
                STA     byte_71
                STA     byte_48
                STA     modeSRAM
                STA     JmpInstr
                PLP
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_ECA3

; ---------------------------------------------------------------------------
                .BYTE $78, 0, $7C, $7D, $7E

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
                LDA     BankPPU7C_X000
                BPL     loc_ED34
                LDA     #$7C ; '|'

loc_ED34:                               ; CODE XREF: sub_ED22+E↑j
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU7C_X400
                BPL     loc_ED41
                LDA     #$7C ; '|'

loc_ED41:                               ; CODE XREF: sub_ED22+1B↑j
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU7C_X800
                BPL     loc_ED4E
                LDA     #$7C ; '|'

loc_ED4E:                               ; CODE XREF: sub_ED22+28↑j
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU7C_XC00
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
                LDA     BankPPU7C_X000
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU7C_X400
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU7C_X800
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU7C_XC00
                AND     #$7F
                STX     $8000
                STA     $8001
                RTS
; End of function sub_ED22


; =============== S U B R O U T I N E =======================================


banks_ppu:
                LDA     byte_44
                STA     byte_46
                LDA     #$C8
                JSR     sub_C218
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                LDA     BankTable.PPU_1K_0000
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable.PPU_1K_0400
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable.PPU_1K_0800
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable.PPU_1K_0C00
                STX     $8000
                STA     $8001
                RTS
; End of function banks_ppu


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

loc_EDDF:                               ; CODE XREF: sub_ECA3+26↑p
                LDY     #5

loc_EDE1:                               ; CODE XREF: sub_EDDC+1F↓j
                LDX     #$1F

loc_EDE3:                               ; CODE XREF: sub_EDDC+15↓j
                SEC
                LDA     $500,X
                SBC     #$10
                BCS     loc_EDED
                LDA     #$F

loc_EDED:                               ; CODE XREF: sub_EDDC+D↑j
                STA     $500,X
                DEX
                BPL     loc_EDE3
                TYA
                TAX
                JSR     loc_EEB5
                DEY
                CPY     #1
                BNE     loc_EDE1
                RTS
; End of function sub_EDDC


; =============== S U B R O U T I N E =======================================


sub_EDFE:                               ; CODE XREF: sub_CCB1+89↑p
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
                JSR     loc_EEB5
                DEY
                CPY     #1
                BNE     loc_EE35
                RTS
; End of function sub_EE30


; =============== S U B R O U T I N E =======================================


sub_EE7F:                               ; CODE XREF: sub_ECA3+29↑p
                                        ; sub_EE9D:loc_EEB0↓p
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

loc_EEB0:                               ; CODE XREF: sub_EEF0+27↓p
                JSR     sub_EE7F

loc_EEB3:                               ; CODE XREF: sub_EDFE+D↑j
                                        ; sub_EE0E+10↑j ...
                LDX     #1

loc_EEB5:                               ; CODE XREF: sub_EDDC+19↑p
                                        ; sub_EE30+46↑p
                LDA     #4
                STA     NMI_ID
                LDA     #0
                STA     num_of_chr
                STA     Offset400
                LDA     #$80
                STA     CHRToPPU
                JMP     wait_frame      ; wait for the whole frame to be output
; End of function sub_EE9D


; =============== S U B R O U T I N E =======================================


sub_EEC8:
                LDX     #0
                LDY     #0

loc_EECC:                               ; CODE XREF: sub_EC65+7↑p
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
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EEC8


; =============== S U B R O U T I N E =======================================


sub_EEE4:                               ; CODE XREF: sub_CCB1:loc_CCC6↑p
                                        ; sub_EEF0+21↓p
                JSR     sub_FD33
                LDA     #4
                EOR     vertical_scroll_PPU
                STA     vertical_scroll_PPU
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
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
                LDA     $500,X
                SBC     #$10
                BCS     loc_EF2B

loc_EF29:                               ; DATA XREF: ROM:loc_EAF3↑r
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
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
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


sub_F161:                               ; CODE XREF: sub_C950+2F↑p
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


start_battle:                           ; CODE XREF: main+B6↑p
                                        ; main+DC↑p
                JSR     bank17_A000
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     sub_F479
                LDX     #$2C ; ','
                LDY     #9
                LDA     ($5C),Y
                AND     #$F0
                CMP     #$50 ; 'P'
                BEQ     loc_F21C
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAX

loc_F21C:                               ; CODE XREF: start_battle+13↑j
                TXA
                JSR     sub_F255
                JSR     bank14_8000
                JSR     byte_9630       ; animation
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     sub_FD5E
                JSR     sub_FD80
                JSR     sub_EC65
                JSR     $A000           ; main battle proc
                JSR     sub_ECA3        ; clear screen
                RTS
; End of function start_battle


; =============== S U B R O U T I N E =======================================

; set memory bank $16 at $8000

bank16:                                 ; CODE XREF: start_battle+3↑p
                                        ; start_battle+24↑p ...
                PHA
                TXA
                PHA
                LDA     #$16
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                TAX
                PLA
                RTS
; End of function bank16


; =============== S U B R O U T I N E =======================================

; set memory bank 0 at $8000

bank0:                                  ; CODE XREF: sub_F4CE+7↓p
                PHA
                TXA
                PHA
                LDA     #0
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                TAX
                PLA
                RTS
; End of function bank0


; =============== S U B R O U T I N E =======================================


sub_F255:                               ; CODE XREF: start_battle+1B↑p
                CMP     byte_78C
                BEQ     locret_F25D
                STA     byte_7F5

locret_F25D:                            ; CODE XREF: sub_F255+3↑j
                RTS
; ---------------------------------------------------------------------------

loc_F25E:                               ; CODE XREF: sub_F255+13↓j
                                        ; sub_F41F+3E↓p ...
                TXA
                BEQ     locret_F26A
                PHA
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     loc_F25E

locret_F26A:                            ; CODE XREF: sub_F255+A↑j
                RTS
; End of function sub_F255


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
                JSR     loc_F4B8
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
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
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     byte_DA
                STX     byte_DA
                AND     #$C0
                BEQ     loc_F2A2
                RTS
; End of function sub_F296


; =============== S U B R O U T I N E =======================================


sub_F2AE:                               ; CODE XREF: sub_F6AA+5↓p
                ASL     A               ; diff effects in the battle
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


sub_F2ED:                               ; CODE XREF: sub_F3FD+D↓p
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
                .BYTE $10, $10, $13, $13, $16, $17, $18

; =============== S U B R O U T I N E =======================================


sub_F3FD:
                TAX
                LDA     pPPUTable+1
                PHA
                LDA     pPPUTable
                PHA
                STX     pPPUTable
                LDA     #0
                STA     pPPUTable+1
                JSR     sub_F2ED
                LDA     pPPUTable+1
                BEQ     loc_F415
                LDA     #$FF
                STA     pPPUTable

loc_F415:                               ; CODE XREF: sub_F3FD+12↑j
                LDX     pPPUTable
                PLA
                STA     pPPUTable
                PLA
                STA     pPPUTable+1
                TXA
                RTS
; End of function sub_F3FD


; =============== S U B R O U T I N E =======================================


sub_F41F:
                PHA
                ASL     A
                ASL     A
                BEQ     loc_F463
                TAX
                LDA     $9EEA,X
                STA     byte_65
                LDA     $9EEB,X
                STA     byte_67
                LDA     $9EE9,X
                CMP     #0
                BNE     loc_F43E
                LDA     byte_65
                STA     byte_7F0
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F43E:                               ; CODE XREF: sub_F41F+15↑j
                CMP     #1
                BNE     loc_F44A
                LDA     byte_65
                STA     byte_7F1
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F44A:                               ; CODE XREF: sub_F41F+21↑j
                CMP     #2
                BNE     loc_F456
                LDA     byte_65
                STA     byte_7F3
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F456:                               ; CODE XREF: sub_F41F+2D↑j
                LDA     byte_65
                STA     byte_7F4

loc_F45B:                               ; CODE XREF: sub_F41F+1C↑j
                                        ; sub_F41F+28↑j ...
                LDX     byte_67
                JSR     loc_F25E
                JSR     bank16          ; set memory bank $16 at $8000

loc_F463:                               ; CODE XREF: sub_F41F+3↑j
                PLA
                RTS
; End of function sub_F41F


; =============== S U B R O U T I N E =======================================


sub_F465:
                LDX     #$F

loc_F467:                               ; CODE XREF: sub_F465+11↓j
                TXA
                PHA
                LDA     #5
                STA     byte_7F1
                LDX     #2
                JSR     loc_F25E
                PLA
                TAX
                DEX
                BNE     loc_F467
                RTS
; End of function sub_F465


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


set_nmi_id4:                            ; CODE XREF: sub_F4B6+12↓p
                LDA     #4
                STA     NMI_ID
                LDA     #0
                STA     num_of_chr
                LDA     #0
                STA     Offset400
                LDA     #$80
                STA     CHRToPPU
                RTS
; End of function set_nmi_id4


; =============== S U B R O U T I N E =======================================


sub_F4B6:                               ; CODE XREF: sub_F26B+E↑j
                LDA     #$F

loc_F4B8:                               ; CODE XREF: sub_F27C+B↑p
                PHA
                JSR     sub_FD33
                PLA
                LDY     #$1C

loc_F4BF:                               ; CODE XREF: sub_F4B6+10↓j
                STA     $500,Y
                DEY
                DEY
                DEY
                DEY
                BPL     loc_F4BF
                JSR     set_nmi_id4
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_F4B6


; =============== S U B R O U T I N E =======================================


sub_F4CE:
                ASL     A
                STA     pPPUTable
                TXA
                PHA
                TYA
                PHA
                JSR     bank0           ; set memory bank 0 at $8000
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
                JSR     bank16          ; set memory bank $16 at $8000
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


set_jmp_addr:
                STA     AddrForJmp
                LDA     #0
                ASL     AddrForJmp
                ROL     A
                ASL     AddrForJmp
                ROL     A
                ASL     AddrForJmp
                ROL     A
                STA     AddrForJmp+1
                CLC
                LDA     AddrForJmp
                ADC     #0
                STA     AddrForJmp
                LDA     AddrForJmp+1
                ADC     #$9E
                STA     AddrForJmp+1
                RTS
; End of function set_jmp_addr


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

; save JMP $F76A to $D7

save_jmp_instr:
                LDA     #$6A ; 'j'
                STA     JmpInstr+1
                LDA     #$F7
                STA     JmpInstr+2
                LDA     #$4C ; 'L'
                STA     JmpInstr
                RTS
; End of function save_jmp_instr


; =============== S U B R O U T I N E =======================================


sub_F759:
                LDA     #0
                STA     JmpInstr
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
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


; =============== S U B R O U T I N E =======================================


                ; public nmi
nmi:                                    ; DATA XREF: ROM:NMI_vector↓o
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
                BIT     NMIReady
                BPL     @NMIGo
                RTI
; ---------------------------------------------------------------------------

@NMIGo:                                 ; CODE XREF: nmi+5↑j
                PHA
                TXA
                PHA
                TYA
                PHA
                LDX     #0
                LDA     #2
                STX     OAM_ADDR        ; SPR-RAM Address Register (W)
                                        ;
                                        ; D7-D0: 8-bit address in SPR-RAM to access via $2004.
                STA     OAM_DMA         ; Sprite DMA Register (W)
                                        ;
                                        ; Transfers 256 bytes of memory into SPR-RAM. The address
                                        ; read from is $100*N, where N is the value written.
                LDY     Offset400
                LDA     byte_E0
                BEQ     loc_F7C2
                LDA     CHRToPPU
                BNE     loc_F7CA
                BEQ     @NoChars

loc_F7C2:                               ; CODE XREF: nmi+1B↑j
                LDA     CHRToPPU
                BEQ     @NoChars
                AND     #$7F
                STA     byte_E0

loc_F7CA:                               ; CODE XREF: nmi+1F↑j
                                        ; sub_F8D7+1↓j ...
                LDA     $400,Y          ; get NMI_ID
                BEQ     loc_F7E3
                BMI     loc_F7DC
                ASL     A
                TAX
                LDA     ReturnTable+1,X
                PHA
                LDA     ReturnTable,X
                PHA
                RTS
; ---------------------------------------------------------------------------

loc_F7DC:                               ; CODE XREF: nmi+30↑j
                AND     #$7F
                STA     $400,Y
                BNE     @NoChars

loc_F7E3:                               ; CODE XREF: nmi+2E↑j
                STA     CHRToPPU

@NoChars:                               ; CODE XREF: nmi+21↑j nmi+25↑j ...
                LDX     byte_EC
                BEQ     loc_F827
                LDA     #$FF
                STA     byte_C000
                STA     byte_C001
                LDA     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
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
                LDA     #$10
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
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
                LDA     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
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
                LDA     #$10
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
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
                LDA     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
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
                STX     $C000
                STX     $C001
                STX     $E001           ; Enable MMC3 interrupts
                STX     byte_EB
                STA     InterruptOffset
                CLI

loc_F827:                               ; CODE XREF: nmi+48↑j
                LDA     vertical_scroll_PPU
                LDX     horizontal_scroll_PPU
                STA     PPU_SCROLL      ; VRAM Address Register #1 (W2)
                                        ;
                                        ; Commonly used used to "pan/scroll" the screen (sprites
                                        ; excluded) horizontally and vertically. However, there
                                        ; is no actual panning hardware inside the NES. This
                                        ; register controls VRAM addressing lines.
                STX     PPU_SCROLL      ; VRAM Address Register #1 (W2)
                                        ;
                                        ; Commonly used used to "pan/scroll" the screen (sprites
                                        ; excluded) horizontally and vertically. However, there
                                        ; is no actual panning hardware inside the NES. This
                                        ; register controls VRAM addressing lines.
                LDA     CntrlPPU
                LDX     mask_PPU
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                STX     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
                STY     Offset400
                LDA     #$80
                STA     NMIReady
                LDA     BankTableOffset
                PHA
                LDA     BankTable.CPU_8K_8000
                PHA
                LDA     BankTable.CPU_8K_A000
                PHA
                LDA     byte_8
                BEQ     loc_F85F
                LSR     A
                AND     #3
                ORA     #$44 ; 'D'
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                DEC     byte_8

loc_F85F:                               ; CODE XREF: nmi+AD↑j
                JSR     bank_8000_1D_A000
                JSR     $8000           ; Bank 0x1C
                LDA     byte_E2
                BMI     restore_bank
                LDA     byte_E7
                AND     #$3F ; '?'
                STA     byte_E1
                LDA     byte_E0
                BNE     loc_F879
                JSR     sub_FC96
                JMP     restore_bank
; ---------------------------------------------------------------------------

loc_F879:                               ; CODE XREF: nmi+D2↑j
                CLC
                SBC     byte_E1
                BCS     loc_F885
                LDX     byte_E0
                DEX
                STX     byte_E1
                LDA     #0

loc_F885:                               ; CODE XREF: nmi+DD↑j
                STA     byte_E0
                JSR     sub_FA81

restore_bank:                           ; CODE XREF: nmi+C8↑j nmi+D7↑j
                PLA                     ; 13
                LDX     #7              ; A000
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA                     ; 14
                LDX     #6              ; 8000
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA                     ; 7
                STA     BankTableOffset
                ORA     BankMode
                STA     $8000
                JSR     gamepad_input   ; Subroutine to process gamepad input and perform bitwise operations
                LDA     GamePad0Status
                ORA     byte_DA
                STA     byte_DA
                LDA     GamePad1Status
                ORA     byte_DB
                STA     byte_DB
                JSR     handle_game_logic ; subroutine to handle game logic and control flow
                LDA     JmpInstr
                BEQ     @end_nmi
                JSR     JmpInstr

@end_nmi:                               ; CODE XREF: nmi+113↑j
                LDA     #0
                STA     NMIReady
                PLA
                TAY
                PLA
                TAX
                PLA
                RTI
; End of function nmi

; ---------------------------------------------------------------------------
ReturnTable:    .WORD loc_F7CA-1, sub_F8D7-1, sub_F8DB-1, sub_F8E5-1, load_palettes-1
                                        ; DATA XREF: nmi+38↑r nmi+34↑r
                .WORD sub_F916-1, sub_F923-1, sub_F93C-1, sub_F95C-1, sub_F97C-1
                .WORD sub_F99F-1

; =============== S U B R O U T I N E =======================================


sub_F8D7:                               ; DATA XREF: ROM:ReturnTable↑o
                INY
                JMP     loc_F7CA
; End of function sub_F8D7


; =============== S U B R O U T I N E =======================================


sub_F8DB:                               ; DATA XREF: ROM:ReturnTable↑o
                INY
                TYA
                SEC
                ADC     $400,Y
                TAY
                JMP     loc_F7CA
; End of function sub_F8DB


; =============== S U B R O U T I N E =======================================


sub_F8E5:                               ; DATA XREF: ROM:ReturnTable↑o
                INY
                LDA     $400,Y
                TAY
                JMP     loc_F7CA
; End of function sub_F8E5


; =============== S U B R O U T I N E =======================================


load_palettes:                          ; DATA XREF: ROM:ReturnTable↑o
                LDA     #$3F ; '?'      ; Image and sprite palette adress 0x3F00
                LDX     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.

LoadPalettesLoop:                       ; CODE XREF: load_palettes+13↓j
                LDA     palette_background,X
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INX
                CPX     #$20 ; ' '
                BNE     LoadPalettesLoop
                LDA     #$3F ; '?'
                LDX     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                JMP     loc_F7CA
; End of function load_palettes


; =============== S U B R O U T I N E =======================================


sub_F916:                               ; CODE XREF: sub_F916+8↓j
                                        ; DATA XREF: ROM:ReturnTable↑o
                JSR     sub_F9EF
                LDA     $400,Y
                CMP     #5
                BEQ     sub_F916
                JMP     loc_F7CA
; End of function sub_F916


; =============== S U B R O U T I N E =======================================


sub_F923:                               ; DATA XREF: ROM:ReturnTable↑o
                LDA     CntrlPPU
                ORA     #PPU_CTRL_INCREMENT_MODE
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address

loc_F92A:                               ; CODE XREF: sub_F923+F↓j
                JSR     sub_F9EF
                LDA     $400,Y
                CMP     #6
                BEQ     loc_F92A
                LDA     CntrlPPU
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                JMP     loc_F7CA
; End of function sub_F923


; =============== S U B R O U T I N E =======================================


sub_F93C:                               ; DATA XREF: ROM:ReturnTable↑o
                INY
                LDX     $400,Y
                INY

loc_F941:                               ; CODE XREF: sub_F93C+1B↓j
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                DEX
                BNE     loc_F941
                JMP     loc_F7CA
; End of function sub_F93C


; =============== S U B R O U T I N E =======================================


sub_F95C:                               ; DATA XREF: ROM:ReturnTable↑o
                INY
                LDX     $400,Y          ; get number of characters
                INY
                LDA     $400,Y          ; get & load PPU address
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     $400,Y          ; get char
                INY

WRITE_PPU:                              ; CODE XREF: sub_F95C+1B↓j
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                DEX
                BNE     WRITE_PPU
                JMP     loc_F7CA
; End of function sub_F95C


; =============== S U B R O U T I N E =======================================


sub_F97C:                               ; DATA XREF: ROM:ReturnTable↑o
                INY
                LDX     $400,Y
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.

loc_F992:                               ; CODE XREF: sub_F97C+1E↓j
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                STA     $400,Y
                INY
                DEX
                BNE     loc_F992
                JMP     loc_F7CA
; End of function sub_F97C


; =============== S U B R O U T I N E =======================================


sub_F99F:                               ; DATA XREF: ROM:ReturnTable↑o
                LDA     BankTableOffset
                PHA
                LDA     BankTable.PPU_1K_0800
                PHA
                LDA     BankTable.PPU_1K_0C00
                PHA
                INY
                LDA     $400,Y
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                CLC
                ADC     #1
                LDX     #5
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                LDX     #0

loc_F9CD:                               ; CODE XREF: sub_F99F+37↓j
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                STA     $110,X
                INX
                CPX     #$40 ; '@'
                BCC     loc_F9CD
                PLA
                LDX     #5
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                STA     BankTableOffset
                ORA     BankMode
                STA     byte_8000
                JMP     loc_F7CA
; End of function sub_F99F


; =============== S U B R O U T I N E =======================================


sub_F9EF:                               ; CODE XREF: sub_F916↑p
                                        ; sub_F923:loc_F92A↑p
                INY
                LDX     $400,Y
                STX     byte_C3
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     $400,Y
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LSR     byte_C3
                BCC     loc_FA0F
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY

loc_FA0F:                               ; CODE XREF: sub_F9EF+17↑j
                LSR     byte_C3
                BCC     loc_FA21
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY

loc_FA21:                               ; CODE XREF: sub_F9EF+22↑j
                LSR     byte_C3
                BCC     loc_FA41
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY

loc_FA41:                               ; CODE XREF: sub_F9EF+34↑j
                LDX     byte_C3
                BEQ     locret_FA80

loc_FA45:                               ; CODE XREF: sub_F9EF+8F↓j
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     $400,Y
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                DEX
                BNE     loc_FA45

locret_FA80:                            ; CODE XREF: sub_F9EF+54↑j
                RTS
; End of function sub_F9EF


; =============== S U B R O U T I N E =======================================


sub_FA81:                               ; CODE XREF: nmi+E8↑p
                LDA     #$15
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     byte_CE
                STA     byte_CF
                LDX     byte_E1
                BIT     byte_E7
                BVC     loc_FAB8
                LDY     #0

loc_FA96:                               ; CODE XREF: sub_FA81+26↓j
                CLC
                LDA     ($E8),Y
                ADC     byte_CE
                STA     byte_CE
                INY
                CLC
                LDA     ($E8),Y
                ADC     byte_CF
                STA     byte_CF
                INY
                DEX
                BPL     loc_FA96
                CLC
                TYA
                ADC     byte_E8
                STA     byte_E8
                LDA     #0
                ADC     byte_E9
                STA     byte_E9
                JMP     loc_FAC9
; ---------------------------------------------------------------------------

loc_FAB8:                               ; CODE XREF: sub_FA81+11↑j
                                        ; sub_FA81+46↓j
                CLC
                LDA     byte_E8
                ADC     byte_CE
                STA     byte_CE
                CLC
                LDA     byte_E9
                ADC     byte_CF
                STA     byte_CF
                DEX
                BPL     loc_FAB8

loc_FAC9:                               ; CODE XREF: sub_FA81+34↑j
                CLC
                LDA     byte_CE
                BMI     loc_FAD6
                ADC     vertical_scroll_PPU
                STA     vertical_scroll_PPU
                BCC     loc_FAE2
                BCS     loc_FADC

loc_FAD6:                               ; CODE XREF: sub_FA81+4B↑j
                ADC     vertical_scroll_PPU
                STA     vertical_scroll_PPU
                BCS     loc_FAE2

loc_FADC:                               ; CODE XREF: sub_FA81+53↑j
                LDA     CntrlPPU
                EOR     #1
                STA     CntrlPPU

loc_FAE2:                               ; CODE XREF: sub_FA81+51↑j
                                        ; sub_FA81+59↑j
                CLC
                LDA     byte_CF
                BMI     loc_FAEF
                ADC     #$10
                ADC     horizontal_scroll_PPU
                BCC     loc_FAF3
                BCS     loc_FAF5

loc_FAEF:                               ; CODE XREF: sub_FA81+64↑j
                ADC     horizontal_scroll_PPU
                BCS     loc_FAF5

loc_FAF3:                               ; CODE XREF: sub_FA81+6A↑j
                ADC     #$F0

loc_FAF5:                               ; CODE XREF: sub_FA81+6C↑j
                                        ; sub_FA81+70↑j
                STA     horizontal_scroll_PPU
                LDA     byte_E2
                AND     #$3F ; '?'
                EOR     #$20 ; ' '
                STA     byte_E2
                LDA     #0
                STA     byte_CC
                STA     byte_E4
                LDA     #8
                STA     byte_CD
                LDX     #$10

loc_FB0B:                               ; CODE XREF: sub_FA81+1EA↓j
                                        ; sub_FA81+1F5↓j ...
                LDY     byte_CC
                LDA     $300,Y
                AND     #$3F ; '?'
                BNE     loc_FB17
                JMP     loc_FC5C
; ---------------------------------------------------------------------------

loc_FB17:                               ; CODE XREF: sub_FA81+91↑j
                STA     GamePadBit0
                STX     byte_C2
                LDA     $301,Y
                AND     #$C0
                STA     GamePadBit1
                TXA
                LSR     A
                LSR     A
                ORA     GamePadBit1
                STA     $301,Y
                SEC
                LDA     #0
                SBC     byte_CE
                STA     byte_C8
                SEC
                LDA     #0
                SBC     byte_CF
                STA     byte_CA
                LDX     byte_E1
                BIT     GamePadBit1
                BVC     loc_FB70
                LDA     $304,Y
                STA     byte_C4
                LDA     $305,Y
                STA     byte_C5
                LDY     #0

loc_FB4A:                               ; CODE XREF: sub_FA81+DA↓j
                CLC
                LDA     ($C4),Y
                ADC     byte_C8
                STA     byte_C8
                INY
                CLC
                LDA     ($C4),Y
                ADC     byte_CA
                STA     byte_CA
                INY
                DEX
                BPL     loc_FB4A
                CLC
                TYA
                ADC     byte_C4
                LDY     byte_CC
                STA     $304,Y
                LDA     #0
                ADC     byte_C5
                STA     $305,Y
                JMP     loc_FB83
; ---------------------------------------------------------------------------

loc_FB70:                               ; CODE XREF: sub_FA81+BB↑j
                                        ; sub_FA81+100↓j
                CLC
                LDA     $304,Y
                ADC     byte_C8
                STA     byte_C8
                CLC
                LDA     $305,Y
                ADC     byte_CA
                STA     byte_CA
                DEX
                BPL     loc_FB70

loc_FB83:                               ; CODE XREF: sub_FA81+EC↑j
                LDX     byte_C2
                CLC
                LDA     byte_C8
                BMI     loc_FB96
                ADC     $302,Y
                STA     byte_C8
                STA     $302,Y
                BCC     loc_FBA8
                BCS     loc_FBA0

loc_FB96:                               ; CODE XREF: sub_FA81+107↑j
                ADC     $302,Y
                STA     byte_C8
                STA     $302,Y
                BCS     loc_FBA8

loc_FBA0:                               ; CODE XREF: sub_FA81+113↑j
                LDA     $300,Y
                EOR     #$80
                STA     $300,Y

loc_FBA8:                               ; CODE XREF: sub_FA81+111↑j
                                        ; sub_FA81+11D↑j
                CLC
                LDA     byte_CA
                BMI     loc_FBB9
                ADC     $303,Y
                STA     byte_CA
                STA     $303,Y
                BCC     loc_FBCB
                BCS     loc_FBC3

loc_FBB9:                               ; CODE XREF: sub_FA81+12A↑j
                ADC     $303,Y
                STA     byte_CA
                STA     $303,Y
                BCS     loc_FBCB

loc_FBC3:                               ; CODE XREF: sub_FA81+136↑j
                LDA     $301,Y
                EOR     #$80
                STA     $301,Y

loc_FBCB:                               ; CODE XREF: sub_FA81+134↑j
                                        ; sub_FA81+140↑j
                LDA     $300,Y
                AND     #$80
                STA     byte_C9
                LDA     $301,Y
                AND     #$80
                STA     byte_CB
                LDA     $306,Y
                STA     byte_C6
                LDA     $307,Y
                STA     byte_C7
                LDY     #0
                LDA     ($C6),Y
                STA     byte_C4
                INY
                LDA     ($C6),Y
                STA     byte_C5
                INY
                LDA     ($C6),Y
                STA     byte_C2
                INY
                LDA     ($C6),Y
                STA     byte_C3
                LDY     #0

loc_FBFA:                               ; CODE XREF: sub_FA81+1D9↓j
                LDA     ($C4),Y
                INY
                CLC
                ADC     byte_C8
                STA     $203,X
                ROR     A
                EOR     byte_C9
                BMI     loc_FC1F
                LDA     ($C4),Y
                CLC
                ADC     byte_CA
                STA     $200,X
                ROR     A
                EOR     byte_CB
                BMI     loc_FC1B
                CMP     #$F0
                BCC     loc_FC25
                BCS     loc_FC1F

loc_FC1B:                               ; CODE XREF: sub_FA81+192↑j
                CMP     #$F9
                BCS     loc_FC25

loc_FC1F:                               ; CODE XREF: sub_FA81+185↑j
                                        ; sub_FA81+198↑j
                INY
                INY
                INY
                JMP     loc_FC58
; ---------------------------------------------------------------------------

loc_FC25:                               ; CODE XREF: sub_FA81+196↑j
                                        ; sub_FA81+19C↑j
                INY
                LDA     ($C4),Y
                STA     GamePadBit1
                LDA     byte_C3
                LSR     GamePadBit1
                BCC     loc_FC32
                LSR     A
                LSR     A

loc_FC32:                               ; CODE XREF: sub_FA81+1AD↑j
                LSR     GamePadBit1
                BCC     loc_FC3A
                LSR     A
                LSR     A
                LSR     A
                LSR     A

loc_FC3A:                               ; CODE XREF: sub_FA81+1B3↑j
                AND     #3
                ASL     GamePadBit1
                ASL     GamePadBit1
                ORA     GamePadBit1
                STA     $202,X
                INY
                AND     #$10
                BEQ     loc_FC4C
                LDA     byte_C2

loc_FC4C:                               ; CODE XREF: sub_FA81+1C7↑j
                ADC     ($C4),Y
                STA     $201,X
                INY
                INX
                INX
                INX
                INX
                BEQ     locret_FC95

loc_FC58:                               ; CODE XREF: sub_FA81+1A1↑j
                DEC     GamePadBit0
                BNE     loc_FBFA

loc_FC5C:                               ; CODE XREF: sub_FA81+93↑j
                CLC
                LDA     byte_CD
                BMI     loc_FC6E
                ADC     byte_CC
                STA     byte_CC
                BEQ     sub_FC8A
                CMP     byte_E3
                BEQ     loc_FC79
                JMP     loc_FB0B
; ---------------------------------------------------------------------------

loc_FC6E:                               ; CODE XREF: sub_FA81+1DE↑j
                ADC     byte_CC
                STA     byte_CC
                CMP     byte_E3
                BCC     sub_FC8A
                JMP     loc_FB0B
; ---------------------------------------------------------------------------

loc_FC79:                               ; CODE XREF: sub_FA81+1E8↑j
                STX     byte_E4
                LDA     byte_E2
                AND     #$20 ; ' '
                BNE     loc_FC87
                LDA     #$F8
                STA     byte_CC
                STA     byte_CD

loc_FC87:                               ; CODE XREF: sub_FA81+1FE↑j
                JMP     loc_FB0B
; End of function sub_FA81


; =============== S U B R O U T I N E =======================================


sub_FC8A:                               ; CODE XREF: sub_FA81+1E4↑j
                                        ; sub_FA81+1F3↑j ...
                LDA     #$F0            ; A = F0

loc_FC8C:                               ; CODE XREF: sub_FC8A+9↓j
                STA     oam,X           ; Set [200],[204],[208], ..., [2FC] = F0
                INX
                INX
                INX
                INX
                BNE     loc_FC8C

locret_FC95:                            ; CODE XREF: sub_FA81+1D5↑j
                RTS
; End of function sub_FC8A


; =============== S U B R O U T I N E =======================================


sub_FC96:                               ; CODE XREF: nmi+D4↑p
                LDA     byte_E2
                EOR     #$40 ; '@'
                STA     byte_E2
                LDY     #$FC
                LDX     byte_E4
                BNE     loc_FCE7
                RTS
; ---------------------------------------------------------------------------

loc_FCA3:                               ; CODE XREF: sub_FC96+55↓j
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                INY
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                INY
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                INY
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                TYA
                SEC
                SBC     #7
                TAY

loc_FCE7:                               ; CODE XREF: sub_FC96+A↑j
                STY     GamePadBit0
                CPX     GamePadBit0
                BCC     loc_FCA3
                RTS
; End of function sub_FC96


; =============== S U B R O U T I N E =======================================


set_ppu:                                ; CODE XREF: reset+68↓p
                LDA     #0              ; A, X = 0
                TAX

loc_FCF1:                               ; CODE XREF: set_ppu+6↓j
                STA     0,X             ; Clear 0-FF bytes
                INX
                BNE     loc_FCF1
                JSR     sub_FC8A
                LDA     #PPU_CTRL_SPRITE ; VBlank Disable
                                        ; Sprite Size = 8x8
                                        ; Screen Pattern Table Address 0 = $0000
                                        ; Sprite Pattern Table Address 1 = $1000
                                        ; PPU Horizontal Write (INC = 1)
                                        ; Name Table Address 0 = $2000
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                STA     CntrlPPU
                LDA     #$80
                STA     BankMode
                STA     $8000
                LDA     #PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES ; Sprite Visibility     1 = Enable
                                        ; Background Visibility 1 = Enable
                                        ; Hide sprites in leftmost 8 pixels of screen
                                        ; Hide background in leftmost 8 pixels of screen
                                        ; Display Type 0 = normal color
                STA     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
                STA     mask_PPU
                LDA     #0
                STA     $A000
                RTS
; End of function set_ppu


; =============== S U B R O U T I N E =======================================


sub_FD14:                               ; CODE XREF: reset+6B↓p

; FUNCTION CHUNK AT 8006 SIZE 00000203 BYTES

                LDA     #$1C
                STA     BankNum
                LDA     #0
                LDX     #0

loc_FD1C:                               ; CODE XREF: sub_FD14+C↓j
                STA     $700,X          ; Clear 700-7FF
                INX
                BNE     loc_FD1C
                JSR     bank_8000_1D_A000
                JMP     byte_8006
; End of function sub_FD14


; =============== S U B R O U T I N E =======================================


sub_FD28:                               ; CODE XREF: main+BC↑p
                                        ; sub_CCB1+2↑p ...
                CMP     byte_78C
                BEQ     loc_FD30
                STA     byte_7F5

loc_FD30:                               ; CODE XREF: sub_FD28+3↑j
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_FD28


; =============== S U B R O U T I N E =======================================


sub_FD33:                               ; CODE XREF: sub_C296:loc_C2B6↑p
                                        ; sub_C67A+12↑p ...
                LDA     CHRToPPU
                ORA     byte_E0
                BNE     sub_FD33
                RTS
; End of function sub_FD33


; =============== S U B R O U T I N E =======================================

; wait for the whole frame to be output

wait_frame:                             ; CODE XREF: sub_C707:loc_C79F↑p
                                        ; sub_CCB1+AB↑p ...
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                DEX
                BNE     wait_frame      ; wait for the whole frame to be output
                RTS
; End of function wait_frame


; =============== S U B R O U T I N E =======================================

; wait for NMI interrupt processing to complete

wait_nmi:                               ; CODE XREF: sub_EC65+3B↑j
                                        ; sub_ECA3:loc_ECBC↑p ...
                LDA     #1
                STA     NMIReady

@wait:                                  ; CODE XREF: wait_nmi+6↓j
                LDA     NMIReady
                BNE     @wait
                RTS
; End of function wait_nmi


; =============== S U B R O U T I N E =======================================


sub_FD4A:                               ; CODE XREF: sub_C306+19↑j
                                        ; sub_CFAC+6A↑p ...
                LDA     CHRToPPU
                BNE     sub_FD4A
                RTS
; End of function sub_FD4A


; =============== S U B R O U T I N E =======================================


sub_FD4F:                               ; CODE XREF: sub_CCB1+21↑p
                LDA     #0
                STA     byte_DA

loc_FD53:                               ; CODE XREF: sub_FD4F+6↓j
                LDA     byte_DA
                BEQ     loc_FD53
                PHA
                LDA     #0
                STA     byte_DA
                PLA
                RTS
; End of function sub_FD4F


; =============== S U B R O U T I N E =======================================


sub_FD5E:                               ; CODE XREF: main:loc_CB70↑p
                                        ; sub_CCB1+B4↑p ...
                JSR     sub_FD33
                SEC
                ROR     byte_E2
                LDX     #0

loc_FD66:                               ; CODE XREF: sub_FD5E+1D↓j
                LDA     #0
                STA     $300,X
                LDA     #$F0
                STA     $200,X
                INX
                INX
                INX
                INX
                STA     $200,X
                INX
                INX
                INX
                INX
                BNE     loc_FD66
                ASL     byte_E2
                RTS
; End of function sub_FD5E


; =============== S U B R O U T I N E =======================================


sub_FD80:                               ; CODE XREF: start_battle+2A↑p
                JSR     sub_FD33
                LDA     #8
                LDX     #$80
                STA     NMI_ID
                STX     num_of_chr
                LDA     #0
                LDX     #$20 ; ' '
                STA     PPU_addr+1
                STX     PPU_addr
                LDA     #0
                STA     chr
                STA     next

loc_FD9F:                               ; CODE XREF: sub_FD80+3D↓j
                LDX     #0
                LDA     #$80
                STX     Offset400
                STA     CHRToPPU
                JSR     sub_FD33
                CLC
                LDA     PPU_addr+1
                ADC     #$80
                STA     PPU_addr+1
                LDA     PPU_addr
                ADC     #0
                STA     PPU_addr
                CMP     #$28 ; '('
                BCC     loc_FD9F
                RTS
; End of function sub_FD80


; =============== S U B R O U T I N E =======================================


sub_FDC0:                               ; CODE XREF: sub_C3F4+4↑p
                                        ; sub_DA16+3↑p
                JSR     sub_FD33
                LDA     byte_E7
                AND     #$BF
                STA     byte_E7
                LDA     #0
                STA     byte_E8
                STA     byte_E9
                CLC

loc_FDD0:                               ; CODE XREF: sub_FDC0+24↓j
                TAX
                LDA     $301,X
                AND     #$BF
                STA     $301,X
                LDA     #0
                STA     $304,X
                STA     $305,X
                TXA
                ADC     #8
                BCC     loc_FDD0
                RTS
; End of function sub_FDC0


; =============== S U B R O U T I N E =======================================


sram_write_enable:                      ; CODE XREF: sub_C406+4↑p
                                        ; sub_C46E+19↑p ...
                LDA     #$80
                STA     $A001
                RTS
; End of function sram_write_enable


; =============== S U B R O U T I N E =======================================


sram_read_enable:                       ; CODE XREF: sub_C406+36↑p
                                        ; sub_C46E+25↑p ...
                LDA     #$C0
                STA     $A001
                RTS
; End of function sram_read_enable


; =============== S U B R O U T I N E =======================================

; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
; input: A - bank number, YX - (subroutine address - 1)
; Y - high byte, X - low byte

bank_A000_a:                            ; CODE XREF: sub_C306+16↑p
                PHA
                LDA     #$FE            ; save return address as bank_A000_sp - 1
                PHA
                LDA     #$C
                PHA
                TYA
                PHA
                TXA
                PHA
                TSX
                LDA     BankTable.CPU_8K_A000
                LDY     Stack+5,X
                STA     Stack+5,X
                TYA
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
; ---------------------------------------------------------------------------

Bank_A000_sp:                           ; global label to enter the memory bank setup procedure
                PLA                     ; setup memory bank $A000 from stack
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank_A000_a           ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


                ; public irq
irq:                                    ; DATA XREF: ROM:IRQ_vector↓o
                PHA                     ; store registers onto the stack
                TXA
                PHA
                TYA
                PHA
                LDA     BankTableOffset
                PHA                     ; store bank table offset (bank memory register)
                JSR     interrupt_handler
                PLA                     ; restore bank table offset (bank memory register)
                ORA     BankMode
                STA     $8000
                LDX     InterruptOffset
                INX
                INX
                STX     InterruptOffset
                LDA     InterruptTable+1,X
                BNE     @no_irq_disable
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                STA     byte_EB

@no_irq_disable:                        ; CODE XREF: irq+1A↑j
                PLA                     ; restore registers from the stack
                TAY
                PLA
                TAX
                PLA
                RTI
; End of function irq


; =============== S U B R O U T I N E =======================================


interrupt_handler:                      ; CODE XREF: irq+8↑p
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                LDX     InterruptOffset
                LDA     InterruptTable+1,X
                PHA                     ; store the high address of the subprogram on the stack
                LDA     InterruptTable,X
                PHA                     ; store the low address of the subprogram on the stack
                STA     $E001           ; Enable MMC3 interrupts
                RTS
; End of function interrupt_handler


; =============== S U B R O U T I N E =======================================

; Subroutine to process gamepad input and perform bitwise operations

gamepad_input:                          ; CODE XREF: nmi+FF↑p
                LDX     #1

@ReadGamepad:                           ; CODE XREF: gamepad_input+38↓j
                SEC                     ; set carry flag

@SetControllerStrobe:                   ; CODE XREF: gamepad_input+26↓j
                PHP                     ; push processor status register on the stack
                LDA     #1              ; reset joysticks, write first $01 then $00 into $4016
                STA     GAMEPAD_REGISTER1 ; Joypad #1 (RW)
                                        ;
                                        ; READING:
                                        ;    D4: Zapper Trigger
                                        ;    D3: Zapper Sprite Detection
                                        ;    D0: Joypad Data
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Joypad Strobe (W)
                                        ;
                                        ;    D0: Joypad Strobe
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Expansion Port Latch (W)
                                        ;    D0: Expansion Port Method
                                        ;
                LDA     #0
                STA     GAMEPAD_REGISTER1 ; Joypad #1 (RW)
                                        ;
                                        ; READING:
                                        ;    D4: Zapper Trigger
                                        ;    D3: Zapper Sprite Detection
                                        ;    D0: Joypad Data
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Joypad Strobe (W)
                                        ;
                                        ;    D0: Joypad Strobe
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Expansion Port Latch (W)
                                        ;    D0: Expansion Port Method
                                        ;
                LDY     #8              ; initialize Y to 8 (number of bits to process)

@ReadControllerData:                    ; CODE XREF: gamepad_input+1A↓j
                LDA     GAMEPAD_REGISTER1,X ; read the controller data at $4016 + X (NES input registers)
                LSR     A               ; shift the data right to get the next bit
                ROL     GamePadBit0
                LSR     A
                ROL     GamePadBit1
                DEY
                BNE     @ReadControllerData ; loop until all 8 bits are read
                LDA     GamePadBit0
                ORA     GamePadBit1
                PLP                     ; pull the original processor status register
                BCC     @HandleController2
                STA     GamePad0Status,X
                CLC                     ; clear carry flag
                BCC     @SetControllerStrobe

@HandleController2:                     ; CODE XREF: gamepad_input+21↑j
                CMP     GamePad0Status,X ; compare the data with the previously stored data
                BEQ     @SkipControllerUpdate ; if equal, skip the controller update
                LDA     byte_DE,X

@SkipControllerUpdate:                  ; CODE XREF: gamepad_input+2A↑j
                TAY
                EOR     byte_DE,X
                AND     GamePad0Status,X
                STA     GamePad0Status,X
                STY     byte_DE,X
                DEX
                BPL     @ReadGamepad
                RTS
; End of function gamepad_input


; =============== S U B R O U T I N E =======================================

; subroutine to handle game logic and control flow

handle_game_logic:                      ; CODE XREF: nmi+10E↑p
                LDA     GamePad0Status
                BNE     @CheckNextState
                LDA     byte_D3
                CMP     #$2A ; '*'
                BCC     @NextState
                RTS
; ---------------------------------------------------------------------------

@CheckNextState:                        ; CODE XREF: handle_game_logic+2↑j
                LDA     #0
                STA     byte_D3

@NextState:                             ; CODE XREF: handle_game_logic+8↑j
                INC     byte_D0
                BNE     @exit
                INC     byte_D3
                INC     byte_D1
                BNE     @exit
                INC     byte_D2

@exit:                                  ; CODE XREF: handle_game_logic+11↑j
                                        ; handle_game_logic+17↑j
                RTS
; End of function handle_game_logic

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
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; =============== S U B R O U T I N E =======================================


                ; public reset
reset:                                  ; DATA XREF: ROM:RESET_vector↓o
                LDA     #PPU_CTRL_SPRITE ; VBlank NMI Disable
                                        ; Sprite Size = 8x8
                                        ; Screen Pattern Table Address 0 = $0000
                                        ; Sprite Pattern Table Address 1 = $1000
                                        ; PPU Horizontal Write (INC = 1)
                                        ; Name Table Address 0 = $2000
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                SEI                     ; Disable interrupt
                CLD                     ; BCD disable
                LDA     #0              ; Emphasize RGB = 0
                                        ; Sprite hide
                                        ; Background hide
                                        ; Hide sprites in leftmost 8 pixels of screen
                                        ; Hide background in leftmost 8 pixels of screen
                                        ; Display Type color
                STA     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
                STA     pAPU_SV_CSR     ; pAPU Sound/Vertical Clock Signal Register (R)
                                        ;
                                        ;    D6: Vertical Clock Signal IRQ Availability
                                        ;    D4: Delta Modulation
                                        ;    D3: Noise
                                        ;    D2: Triangle
                                        ;    D1: Pulse #2
                                        ;    D0: Pulse #1
                                        ; ---------------------------------------------
                                        ; pAPU Channel Control (W)
                                        ;
                                        ;    D4: Delta Modulation
                                        ;    D3: Noise
                                        ;    D2: Triangle
                                        ;    D1: Pulse #2
                                        ;    D0: Pulse #1
                STA     pAPU_DM_CR      ; pAPU Delta Modulation Control Register (W)
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                LDA     #$40 ; '@'
                STA     pAPU_F_CNTR     ; Joypad #2/SOFTCLK (RW)
                                        ;
                                        ; READING:
                                        ;    D7: Vertical Clock Signal (External)
                                        ;    D6: Vertical Clock Signal (Internal)
                                        ;    D4: Zapper Trigger
                                        ;    D3: Zapper Sprite Detection
                                        ;    D0: Joypad Data
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Expansion Port Latch (W)
                                        ;
                                        ;    D0: Expansion Port Method
                                        ;
                STA     $A001           ; Disable SRAM
                LDX     #2

@WaitVblank:                            ; CODE XREF: reset+22↓j
                                        ; reset+25↓j
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
                BPL     @WaitVblank
                DEX
                BNE     @WaitVblank
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
                LDY     #$3F ; '?'
                LDX     #0
                STY     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDX     #$20 ; ' '
                LDA     #$F

@LoadPalettesLoop:                      ; CODE XREF: reset+3C↓j
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                DEX
                BNE     @LoadPalettesLoop
                STY     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDA     #PPU_MASK_SHOW_BACKGROUND_L8|PPU_MASK_SHOW_SPRITES_L8|PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES ; Emphasize RGB = 0
                                        ; Sprite show
                                        ; Background show
                                        ; Show sprites in leftmost 8 pixels of screen
                                        ; Show background in leftmost 8 pixels of screen
                                        ; Display Type color
                STA     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
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
                LDA     #$10
                TAX

loc_FF95:                               ; CODE XREF: reset+5E↓j
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
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
                EOR     #0
                DEX
                BNE     loc_FF95
                LDX     #$FF
                TXS
                LDA     #0
                STA     $8000           ; selecting of a CHR bank
                JSR     set_ppu
                JSR     sub_FD14
                LDX     #7
                LDA     #$13
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
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
                LDA     CntrlPPU
                ORA     #$80            ; Enable NMI
                STA     CntrlPPU
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                CLI
                JMP     main
; End of function reset


; =============== S U B R O U T I N E =======================================


bank_8000_1D_A000:                      ; CODE XREF: nmi:loc_F85F↑p
                                        ; sub_FD14+E↑p
                LDA     BankNum
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #$1D
                LDX     #7
; End of function bank_8000_1D_A000


; =============== S U B R O U T I N E =======================================

; Set memory bank
; A - bank number
; X - mode

mmc3_bank_set:                          ; CODE XREF: bank0_0+4↑j
                                        ; sub_C43F+2C↑j ...
                STX     BankTableOffset ; bankTableOffset (bankMode)
                STA     BankTable,X     ; save bank number to table
                TXA
                ORA     BankMode
                STA     $8000           ; set bank mode
                LDA     BankTable,X     ; get bank number
                STA     $8001           ; select bank number
                RTS
; End of function mmc3_bank_set

; ---------------------------------------------------------------------------
aEarthBound100: .BYTE 'EARTH BOUND 1.00',0
                .BYTE 0, 0, 0, 3, 0, 1, $F, 1, 0
NMI_vector:     .WORD nmi
RESET_vector:   .WORD reset
IRQ_vector:     .WORD irq
; end of 'ROM'


                .END reset
