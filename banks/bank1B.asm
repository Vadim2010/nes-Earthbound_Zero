; ===========================================================================

; Segment type: Pure code
                ;.segment BANK1B
                * =  $8000

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B8000:
                JMP     sub_1B8091
; End of function sub_1B8000


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B8003:
                JMP     sub_1B80AA
; End of function sub_1B8003


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B8006:
                JMP     sub_1B805A
; End of function sub_1B8006


; =============== S U B R O U T I N E =======================================


sub_1B8009:                             ; CODE XREF: sub_1B80ED:loc_1B8109↓p
                LDA     #0
                BEQ     loc_1B8017
; End of function sub_1B8009


; =============== S U B R O U T I N E =======================================


sub_1B800D:                             ; CODE XREF: sub_1B80ED:loc_1B8113↓p
                LDA     #8
                BNE     loc_1B8017
; End of function sub_1B800D


; =============== S U B R O U T I N E =======================================


sub_1B8011:                             ; CODE XREF: sub_1B80ED:loc_1B8118↓p
                LDA     #$C
                BNE     loc_1B8017
; End of function sub_1B8011


; =============== S U B R O U T I N E =======================================


sub_1B8015:                             ; CODE XREF: sub_1B80ED:loc_1B810E↓p
                                        ; sub_1B8142+3↓p
                LDA     #4

loc_1B8017:                             ; CODE XREF: sub_1B8009+2↑j
                                        ; sub_1B800D+2↑j ...
                STA     apu_B0
                LDA     #$40 ; '@'
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                STY     PointerAPU
                STA     PointerAPU+1
                LDY     #0

loc_1B8023:                             ; CODE XREF: sub_1B8015+16↓j
                LDA     (PointerAPU),Y
                STA     (apu_B0),Y
                INY
                TYA
                CMP     #4
                BNE     loc_1B8023
                RTS
; End of function sub_1B8015


; =============== S U B R O U T I N E =======================================


sub_1B802E:                             ; CODE XREF: sub_1B8091+5↓p
                LDA     apu_BB
                AND     #2
                STA     apu_7FF
                LDA     apu_BC
                AND     #2
                EOR     apu_7FF
                CLC
                BEQ     loc_1B8040
                SEC

loc_1B8040:                             ; CODE XREF: sub_1B802E+F↑j
                ROR     apu_BB
                ROR     apu_BC
                RTS
; End of function sub_1B802E


; =============== S U B R O U T I N E =======================================


sub_1B8045:                             ; CODE XREF: sub_1B8132↓p
                                        ; sub_1B817C↓p
                LDX     apu_BD
                INC     byte_7DA,X
                LDA     byte_7DA,X
                CMP     byte_7D5,X
                BNE     locret_1B8057
                LDA     #0
                STA     byte_7DA,X

locret_1B8057:                          ; CODE XREF: sub_1B8045+B↑j
                RTS
; End of function sub_1B8045

; ---------------------------------------------------------------------------
byte_1B8058:    .BYTE 0, 0              ; DATA XREF: sub_1B805A:loc_1B806C↓r

; =============== S U B R O U T I N E =======================================


sub_1B805A:                             ; CODE XREF: sub_1B8006↑j
                LDA     #$F
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
                LDA     #$55 ; 'U'
                STA     apu_BB
                LDA     #0
                STA     apu_786
                STA     apu_78B
                TAY

loc_1B806C:                             ; CODE XREF: sub_1B805A+1C↓j
                LDA     byte_1B8058,Y
                STA     apu_76C,Y
                INY
                TYA
                CMP     #$14
                BNE     loc_1B806C
                JSR     sub_1B80AA
                RTS
; End of function sub_1B805A

; ---------------------------------------------------------------------------
                .BYTE 0, 0

; =============== S U B R O U T I N E =======================================


sub_1B807E:                             ; CODE XREF: sub_1B8091+8↓p
                LDA     apu_7F5
                CMP     #$25 ; '%'
                BNE     locret_1B8090
                JSR     sub_1B80AA
                STA     apu_7F5
                LDA     #$11
                STA     byte_7F1

locret_1B8090:                          ; CODE XREF: sub_1B807E+5↑j
                RTS
; End of function sub_1B807E


; =============== S U B R O U T I N E =======================================


sub_1B8091:                             ; CODE XREF: sub_1B8000↑j
                LDA     #$C0
                STA     pAPU_F_CNTR     ; Joypad #2/SOFTCLK (RW)
                                        ;
                                        ; READING:
                                        ;    D7: Vertical Clock Signal (External)
                                        ;    D6: Vertical Clock Signal (Internal)
                                        ;    D4: Zapper Trigger
                                        ;    D3: Zapper Sprite Detection
                                        ;    D0: Joypad Data
                                        ; ----------------------------------------------
                                        ; APU Frame Counter
                                        ;
                                        ; WRITING:
                                        ; Expansion Port Latch (W)
                                        ;
                                        ;    D7: Mode 0 = 4-step, 1 = 5-step
                                        ;    D6: IRQ Inhibit Flag
                JSR     sub_1B802E
                JSR     sub_1B807E
                JSR     sub_1B81A3
                LDA     #0
                LDX     #6

loc_1B80A3:                             ; CODE XREF: sub_1B8091+16↓j
                STA     ModeSRAM,X
                DEX
                BNE     loc_1B80A3
                RTS
; End of function sub_1B8091


; =============== S U B R O U T I N E =======================================


sub_1B80AA:                             ; CODE XREF: sub_1B8003↑j
                                        ; sub_1B805A+1E↑p ...
                JSR     sub_1B80B9

loc_1B80AD:                             ; CODE XREF: sub_1B8341↓p
                JSR     sub_1B80D7
                LDA     #0
                STA     pAPU_DM_DAR     ; pAPU Delta Modulation D/A Register (W)
                STA     apu_79C
                RTS
; End of function sub_1B80AA


; =============== S U B R O U T I N E =======================================


sub_1B80B9:                             ; CODE XREF: sub_1B80AA↑p
                LDA     #0
                STA     apu_7C8
                STA     apu_7C9
                STA     apu_7CA
                STA     apu_78C
                STA     PulseChannels
                TAY

loc_1B80CB:                             ; CODE XREF: sub_1B80B9+1B↓j
                LDA     #0
                STA     Noise,Y
                INY
                TYA
                CMP     #6
                BNE     loc_1B80CB
                RTS
; End of function sub_1B80B9


; =============== S U B R O U T I N E =======================================


sub_1B80D7:                             ; CODE XREF: sub_1B80AA:loc_1B80AD↑p
                LDA     #0
                STA     pAPU_DM_DAR     ; pAPU Delta Modulation D/A Register (W)
                LDA     #$10
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                STA     pAPU_P_2_CR     ; pAPU Pulse #2 Control Register (W)
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                LDA     #0
                STA     pAPU_T_CR_1     ; pAPU Triangle Control Register #1 (W)
                RTS
; End of function sub_1B80D7


; =============== S U B R O U T I N E =======================================


sub_1B80ED:
                LDX     apu_BD
                STA     byte_7D5,X
                TXA
                STA     byte_7C7,X
                TYA
                BEQ     loc_1B811B
                TXA
                BEQ     loc_1B8118
                CMP     #1
                BEQ     loc_1B8109
                CMP     #2
                BEQ     loc_1B810E
                CMP     #3
                BEQ     loc_1B8113
                RTS
; ---------------------------------------------------------------------------

loc_1B8109:                             ; CODE XREF: sub_1B80ED+11↑j
                JSR     sub_1B8009
                BEQ     loc_1B811B

loc_1B810E:                             ; CODE XREF: sub_1B80ED+15↑j
                JSR     sub_1B8015
                BEQ     loc_1B811B

loc_1B8113:                             ; CODE XREF: sub_1B80ED+19↑j
                JSR     sub_1B800D
                BEQ     loc_1B811B

loc_1B8118:                             ; CODE XREF: sub_1B80ED+D↑j
                JSR     sub_1B8011

loc_1B811B:                             ; CODE XREF: sub_1B80ED+A↑j
                                        ; sub_1B80ED+1F↑j ...
                LDA     apu_BF
                STA     Noise,X
                LDA     #0
                STA     byte_7DA,X

loc_1B8125:                             ; CODE XREF: sub_1B8142+1E↓j
                STA     byte_7DF,X
                STA     byte_7E3,X
                STA     byte_7E7,X
                STA     PulseChannels
                RTS
; End of function sub_1B80ED


; =============== S U B R O U T I N E =======================================


sub_1B8132:
                JSR     sub_1B8045
                BNE     locret_1B8141
                LDA     #0
                STA     Noise
                LDA     #$10
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)

locret_1B8141:                          ; CODE XREF: sub_1B8132+3↑j
                RTS
; End of function sub_1B8132


; =============== S U B R O U T I N E =======================================


sub_1B8142:
                STA     byte_7D9
                JSR     sub_1B8015
                LDA     apu_BF
                STA     byte_7FC
                LDX     #1
                STX     apu_7C8
                INX
                STX     apu_7C9
                LDA     #0
                STA     byte_7DE
                STA     byte_7F9
                LDX     #1
                JMP     loc_1B8125
; End of function sub_1B8142


; =============== S U B R O U T I N E =======================================


sub_1B8163:
                JSR     loc_1B8181
                JSR     sub_1B8192
                INC     PulseChannels
                LDA     #0
                STA     byte_7FC
                LDX     #1
                LDA     #$7F
                STA     pAPU_P_1_CR,X   ; pAPU Pulse #1 Control Register (W)
                STA     pAPU_P_2_CR,X   ; pAPU Pulse #2 Control Register (W)
                RTS
; End of function sub_1B8163


; =============== S U B R O U T I N E =======================================


sub_1B817C:
                JSR     sub_1B8045
                BNE     locret_1B8191

loc_1B8181:                             ; CODE XREF: sub_1B8163↑p
                LDA     #$10
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                LDA     #0
                STA     apu_7C8
                STA     byte_7F9
                INC     PulseChannels

locret_1B8191:                          ; CODE XREF: sub_1B817C+3↑j
                RTS
; End of function sub_1B817C


; =============== S U B R O U T I N E =======================================


sub_1B8192:                             ; CODE XREF: sub_1B8163+3↑p
                LDA     #$10
                STA     pAPU_P_2_CR     ; pAPU Pulse #2 Control Register (W)
                LDA     #0
                STA     apu_7C9
                STA     byte_7FA
                RTS
; End of function sub_1B8192


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B81A0:                             ; CODE XREF: sub_1B81A3+6↓j
                JMP     sub_1B80AA
; End of function sub_1B81A0


; =============== S U B R O U T I N E =======================================


sub_1B81A3:                             ; CODE XREF: sub_1B8091+B↑p
                LDA     apu_7F5
                TAY
                CMP     #$3F ; '?'
                BCS     sub_1B81A0
                TYA
                BEQ     loc_1B81EA
                STA     apu_78C
                CMP     #$19
                BEQ     loc_1B81B9
                CMP     #$19
                BCC     loc_1B81C4

loc_1B81B9:                             ; CODE XREF: sub_1B81A3+10↑j
                STA     apu_BF
                SEC
                SBC     #$19
                STA     byte_7CC
                JMP     loc_1B81DC
; ---------------------------------------------------------------------------

loc_1B81C4:                             ; CODE XREF: sub_1B81A3+14↑j
                CMP     #6
                BNE     loc_1B81D4
                LDA     byte_6707
                CMP     #1
                BEQ     loc_1B81D3
                LDA     #7
                BNE     loc_1B81D4

loc_1B81D3:                             ; CODE XREF: sub_1B81A3+2A↑j
                TYA

loc_1B81D4:                             ; CODE XREF: sub_1B81A3+23↑j
                                        ; sub_1B81A3+2E↑j
                STA     apu_BF
                STA     byte_7CC
                DEC     byte_7CC

loc_1B81DC:                             ; CODE XREF: sub_1B81A3+1E↑j
                LDA     #$7F
                STA     PulseSweep1
                STA     byte_7C1
                JSR     sub_1B8341

loc_1B81E7:                             ; CODE XREF: sub_1B81A3+4A↓j
                JMP     loc_1B84D0
; ---------------------------------------------------------------------------

loc_1B81EA:                             ; CODE XREF: sub_1B81A3+9↑j
                LDA     byte_7FD
                BNE     loc_1B81E7
                RTS
; End of function sub_1B81A3

; ---------------------------------------------------------------------------
byte_1B81F0:    .BYTE 0                 ; DATA XREF: sub_1B867B+5↓r
byte_1B81F1:    .BYTE $10               ; DATA XREF: sub_1B867B+B↓r
byte_1B81F2:    .BYTE 1, $18, 0, 1, $38, 0, 3, $40, 0, 6, $58, 1, 3, $40
                                        ; DATA XREF: sub_1B867B+11↓r
                .BYTE 2, 4, $40, $13, 5, $40, $14, $A, $40, $14, 8, $40
                .BYTE $12, $E, 8, $16, $E, $28, $16, $B, $18, $1D, 1, $28
                .BYTE $16, 1, $28, $13, 1, $38, $12, 1, $38

; =============== S U B R O U T I N E =======================================


sub_1B8221:                             ; CODE XREF: sub_1B83F6+15C↓p
                LDA     byte_7FD
                CMP     #1
                BEQ     locret_1B824A
                TXA
                CMP     #3
                BEQ     locret_1B824A
                LDA     byte_79A,X
                AND     #$E0
                BEQ     locret_1B824A
                STA     apu_B0
                LDA     byte_7C3,X
                CMP     #2
                BEQ     loc_1B8247
                LDY     APURegisterNum
                LDA     PulseTimer1,Y
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                JSR     sub_1B8288

loc_1B8247:                             ; CODE XREF: sub_1B8221+1A↑j
                INC     byte_7D1,X

locret_1B824A:                          ; CODE XREF: sub_1B8221+5↑j
                                        ; sub_1B8221+A↑j ...
                RTS
; End of function sub_1B8221


; =============== S U B R O U T I N E =======================================


sub_1B824B:                             ; CODE XREF: sub_1B8288+19↓j
                                        ; sub_1B8288+1D↓j
                LDA     PointerAPU
                CMP     #$31 ; '1'
                BNE     loc_1B8253
                LDA     #$27 ; '''

loc_1B8253:                             ; CODE XREF: sub_1B824B+4↑j
                TAY
                LDA     byte_1B82DA,Y
                PHA
                LDA     byte_7C3,X
                CMP     #$46 ; 'F'
                BNE     loc_1B8264
                PLA
                LDA     #0
                BEQ     sub_1B82C2

loc_1B8264:                             ; CODE XREF: sub_1B824B+12↑j
                PLA
                JMP     sub_1B82C2
; End of function sub_1B824B


; =============== S U B R O U T I N E =======================================


sub_1B8268:                             ; CODE XREF: sub_1B8288+15↓j
                LDA     PointerAPU
                TAY
                CMP     #$10
                BCS     loc_1B8275
                LDA     byte_1B8311,Y
                JMP     loc_1B82C8
; ---------------------------------------------------------------------------

loc_1B8275:                             ; CODE XREF: sub_1B8268+5↑j
                LDA     #$F6
                BNE     loc_1B82C8

loc_1B8279:                             ; CODE XREF: sub_1B8288+11↓j
                LDA     byte_7C3,X
                CMP     #$4C ; 'L'
                BCC     loc_1B8284
                LDA     #$FE
                BNE     loc_1B82C8

loc_1B8284:                             ; CODE XREF: sub_1B8268+16↑j
                LDA     #$FE
                BNE     loc_1B82C8
; End of function sub_1B8268


; =============== S U B R O U T I N E =======================================


sub_1B8288:                             ; CODE XREF: sub_1B8221+23↑p
                LDA     byte_7D1,X
                STA     PointerAPU
                LDA     apu_B0
                CMP     #$20 ; ' '
                BEQ     loc_1B82A7
                CMP     #$A0
                BEQ     loc_1B82B6
                CMP     #$60 ; '`'
                BEQ     loc_1B8279
                CMP     #$40 ; '@'
                BEQ     sub_1B8268
                CMP     #$80
                BEQ     sub_1B824B
                CMP     #$C0
                BEQ     sub_1B824B

loc_1B82A7:                             ; CODE XREF: sub_1B8288+9↑j
                LDA     PointerAPU
                CMP     #$A
                BNE     loc_1B82AF
                LDA     #0

loc_1B82AF:                             ; CODE XREF: sub_1B8288+23↑j
                TAY
                LDA     byte_1B8307,Y
                JMP     sub_1B82C2
; ---------------------------------------------------------------------------

loc_1B82B6:                             ; CODE XREF: sub_1B8288+D↑j
                LDA     PointerAPU
                CMP     #$2B ; '+'
                BNE     loc_1B82BE
                LDA     #$21 ; '!'

loc_1B82BE:                             ; CODE XREF: sub_1B8288+32↑j
                TAY
                LDA     byte_1B82E6,Y
; End of function sub_1B8288


; =============== S U B R O U T I N E =======================================


sub_1B82C2:                             ; CODE XREF: sub_1B824B+17↑j
                                        ; sub_1B824B+1A↑j ...
                PHA
                TYA
                STA     byte_7D1,X
                PLA

loc_1B82C8:                             ; CODE XREF: sub_1B8268+A↑j
                                        ; sub_1B8268+F↑j ...
                PHA
                LDA     apu_7C8,X
                BNE     loc_1B82D8
                PLA
                CLC
                ADC     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDY     APURegisterNum
                STA     pAPU_P_1_FTR,Y  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                RTS
; ---------------------------------------------------------------------------

loc_1B82D8:                             ; CODE XREF: sub_1B82C2+A↑j
                PLA
                RTS
; End of function sub_1B82C2

; ---------------------------------------------------------------------------
byte_1B82DA:    .BYTE 9, 8, 7, 6, 5, 4, 3, 2, 2, 1, 1, 0
                                        ; DATA XREF: sub_1B824B+9↑r
byte_1B82E6:    .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
                                        ; DATA XREF: sub_1B8288+37↑r
                .BYTE 0, 0, 0, $FF, 0, 0, 0, 0, 1, 1, 0, 0, 0, $FF, $FF
                .BYTE 0
byte_1B8307:    .BYTE 0, 1, 1, 2, 1, 0, $FF, $FF, $FE, $FF
                                        ; DATA XREF: sub_1B8288+28↑r
byte_1B8311:    .BYTE 0, $FF, $FE, $FD, $FC, $FB, $FA, $F9, $F8, $F7, $F6
                                        ; DATA XREF: sub_1B8268+7↑r
                .BYTE $F5, $F6, $F7, $F6, $F5

; =============== S U B R O U T I N E =======================================


sub_1B8321:                             ; CODE XREF: sub_1B8341:loc_1B8355↓p
                LDA     byte_7CC
                TAY
                LDA     byte_1B89A7,Y
                TAY
                LDX     #0

loc_1B832B:                             ; CODE XREF: sub_1B8321+15↓j
                LDA     byte_1B89C3,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1B832B
                RTS
; End of function sub_1B8321


; =============== S U B R O U T I N E =======================================


sub_1B8339:                             ; CODE XREF: sub_1B836F+3C↓j
                LDA     #$FF
                STA     byte_7A0,X
                JMP     loc_1B83BA
; End of function sub_1B8339


; =============== S U B R O U T I N E =======================================


sub_1B8341:                             ; CODE XREF: sub_1B81A3+41↑p
                JSR     loc_1B80AD
                LDA     apu_BF
                STA     byte_7FD
                CMP     #$33 ; '3'
                BEQ     loc_1B835B
                CMP     #$19
                BEQ     loc_1B8355
                CMP     #$19
                BCC     sub_1B836F

loc_1B8355:                             ; CODE XREF: sub_1B8341+E↑j
                JSR     sub_1B8321
                JMP     loc_1B8386
; ---------------------------------------------------------------------------

loc_1B835B:                             ; CODE XREF: sub_1B8341+A↑j
                LDX     #0
                LDY     #0

loc_1B835F:                             ; CODE XREF: sub_1B8341+29↓j
                LDA     byte_1B89CD,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1B835F
                JMP     loc_1B8386
; End of function sub_1B8341


; =============== S U B R O U T I N E =======================================


sub_1B836F:                             ; CODE XREF: sub_1B8341+12↑j
                LDA     byte_7CC
                TAY
                LDA     byte_1B898F,Y
                TAY
                LDX     #0

loc_1B8379:                             ; CODE XREF: sub_1B836F+15↓j
                LDA     byte_1B89C3,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1B8379

loc_1B8386:                             ; CODE XREF: sub_1B8341+17↑j
                                        ; sub_1B8341+2B↑j
                LDA     #1
                STA     byte_7B4
                STA     byte_7B5
                STA     byte_7B6
                STA     byte_7B7
                LDA     #0
                STA     byte_BA
                LDY     #8

loc_1B839A:                             ; CODE XREF: sub_1B836F+2F↓j
                STA     byte_7A7,Y
                DEY
                BNE     loc_1B839A
                TAX

loc_1B83A1:                             ; CODE XREF: sub_1B836F+53↓j
                LDA     byte_792,X
                STA     byte_B6
                LDA     byte_793,X
                CMP     #$FF
                BEQ     sub_1B8339
                STA     byte_B7
                LDY     byte_7A8
                LDA     (byte_B6),Y
                STA     byte_7A0,X
                INY
                LDA     (byte_B6),Y

loc_1B83BA:                             ; CODE XREF: sub_1B8339+5↑j
                STA     byte_7A1,X
                INX
                INX
                TXA
                CMP     #8
                BNE     loc_1B83A1
                RTS
; End of function sub_1B836F


; =============== S U B R O U T I N E =======================================


sub_1B83C5:                             ; CODE XREF: sub_1B83F6:loc_1B84D0↓p
                LDA     PulseChannels
                BEQ     locret_1B83F5
                CMP     #1
                BEQ     loc_1B83DF
                LDA     #$7F
                STA     pAPU_P_2_RCR    ; pAPU Pulse #2 Ramp Control Register (W)
                LDA     PulseTimer2
                STA     pAPU_P_2_FTR    ; pAPU Pulse #2 Fine Tune (FT) Register (W)
                LDA     PulseCounter2
                STA     pAPU_P_2_CTR    ; pAPU Pulse #2 Coarse Tune (CT) Register (W)

loc_1B83DF:                             ; CODE XREF: sub_1B83C5+7↑j
                LDA     #$7F
                STA     pAPU_P_1_RCR    ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1
                STA     pAPU_P_1_CTR    ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
                LDA     #0
                STA     PulseChannels

locret_1B83F5:                          ; CODE XREF: sub_1B83C5+3↑j
                                        ; sub_1B83F6+3↓j
                RTS
; End of function sub_1B83C5


; =============== S U B R O U T I N E =======================================


sub_1B83F6:                             ; CODE XREF: sub_1B83F6:loc_1B854F↓p
                TXA
                CMP     #2
                BCS     locret_1B83F5
                LDA     byte_79A,X
                AND     #$1F
                BEQ     locret_1B845B
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     byte_7C3,X
                CMP     #2
                BEQ     loc_1B8465
                LDY     #0

loc_1B840D:                             ; CODE XREF: sub_1B83F6+1D↓j
                DEC     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                BEQ     loc_1B8415
                INY
                INY
                BNE     loc_1B840D

loc_1B8415:                             ; CODE XREF: sub_1B83F6+19↑j
                LDA     off_1B86DA,Y
                STA     PointerAPU
                LDA     off_1B86DA+1,Y
                STA     PointerAPU+1
                LDA     byte_7CD,X
                LSR     A
                TAY
                LDA     (PointerAPU),Y
                STA     byte_B4
                CMP     #$FF
                BEQ     loc_1B845C
                CMP     #$F0
                BEQ     loc_1B8461
                LDA     byte_7CD,X
                AND     #1
                BNE     loc_1B843F
                LSR     byte_B4
                LSR     byte_B4
                LSR     byte_B4
                LSR     byte_B4

loc_1B843F:                             ; CODE XREF: sub_1B83F6+3F↑j
                LDA     byte_B4
                AND     #$F
                STA     apu_B0
                LDA     byte_79D,X
                AND     #$F0
                ORA     apu_B0
                TAY

loc_1B844D:                             ; CODE XREF: sub_1B83F6+71↓j
                INC     byte_7CD,X

loc_1B8450:                             ; CODE XREF: sub_1B83F6+69↓j
                                        ; sub_1B83F6+6D↓j
                LDA     apu_7C8,X
                BNE     locret_1B845B
                TYA
                LDY     APURegisterNum
                STA     pAPU_P_1_CR,Y   ; pAPU Pulse #1 Control Register (W)

locret_1B845B:                          ; CODE XREF: sub_1B83F6+A↑j
                                        ; sub_1B83F6+5D↑j
                RTS
; ---------------------------------------------------------------------------

loc_1B845C:                             ; CODE XREF: sub_1B83F6+34↑j
                LDY     byte_79D,X
                BNE     loc_1B8450

loc_1B8461:                             ; CODE XREF: sub_1B83F6+38↑j
                LDY     #$10
                BNE     loc_1B8450

loc_1B8465:                             ; CODE XREF: sub_1B83F6+13↑j
                LDY     #$10
                BNE     loc_1B844D

loc_1B8469:                             ; CODE XREF: sub_1B83F6+C6↓j
                INY
                LDA     (byte_B6),Y
                STA     byte_792,X
                INY
                LDA     (byte_B6),Y
                STA     byte_793,X
                LDA     byte_792,X
                STA     byte_B6
                LDA     byte_793,X
                STA     byte_B7
                TXA
                LSR     A
                TAX
                LDA     #0
                TAY
                STA     byte_7A8,X
                JMP     loc_1B84A8
; ---------------------------------------------------------------------------

loc_1B848B:                             ; CODE XREF: sub_1B83F6+C2↓j
                JSR     sub_1B80AA

locret_1B848E:                          ; CODE XREF: sub_1B83F6+EB↓j
                RTS
; ---------------------------------------------------------------------------

loc_1B848F:                             ; CODE XREF: sub_1B83F6:loc_1B84CD↓j
                TXA
                ASL     A
                TAX
                LDA     byte_792,X
                STA     byte_B6
                LDA     byte_793,X
                STA     byte_B7
                TXA
                LSR     A
                TAX
                INC     byte_7A8,X
                INC     byte_7A8,X
                LDY     byte_7A8,X

loc_1B84A8:                             ; CODE XREF: sub_1B83F6+92↑j
                TXA
                ASL     A
                TAX
                LDA     (byte_B6),Y
                STA     byte_7A0,X
                INY
                LDA     (byte_B6),Y
                STA     byte_7A1,X
                CMP     #0
                BEQ     loc_1B848B
                CMP     #$FF
                BEQ     loc_1B8469
                TXA
                LSR     A
                TAX
                LDA     #0
                STA     byte_7AC,X
                LDA     #1
                STA     byte_7B4,X
                BNE     loc_1B84EA

loc_1B84CD:                             ; CODE XREF: sub_1B83F6+11B↓j
                JMP     loc_1B848F
; ---------------------------------------------------------------------------

loc_1B84D0:                             ; CODE XREF: sub_1B81A3:loc_1B81E7↑j
                JSR     sub_1B83C5
                LDA     #0
                TAX
                STA     APURegisterNum
                BEQ     loc_1B84EA

loc_1B84DA:                             ; CODE XREF: sub_1B83F6+106↓j
                TXA
                LSR     A
                TAX

loc_1B84DD:                             ; CODE XREF: sub_1B83F6+15F↓j
                                        ; sub_1B83F6+243↓j
                INX
                TXA
                CMP     #4
                BEQ     locret_1B848E
                LDA     APURegisterNum
                CLC
                ADC     #4
                STA     APURegisterNum

loc_1B84EA:                             ; CODE XREF: sub_1B83F6+D5↑j
                                        ; sub_1B83F6+E2↑j
                TXA
                ASL     A
                TAX
                LDA     byte_7A0,X
                STA     byte_B6
                LDA     byte_7A1,X
                STA     byte_B7
                LDA     byte_7A1,X
                CMP     #$FF
                BEQ     loc_1B84DA
                TXA
                LSR     A
                TAX
                DEC     byte_7B4,X
                BNE     loc_1B854F
                LDA     #0
                STA     byte_7CD,X
                STA     byte_7D1,X

loc_1B850E:                             ; CODE XREF: sub_1B83F6:loc_1B854C↓j
                                        ; sub_1B83F6+174↓j ...
                JSR     sub_1B86D1
                BEQ     loc_1B84CD
                CMP     #$9F
                BEQ     loc_1B855E
                CMP     #$9E
                BEQ     loc_1B8576
                CMP     #$9C
                BEQ     loc_1B857F
                TAY
                CMP     #$FF
                BEQ     loc_1B852D
                AND     #$C0
                CMP     #$C0
                BEQ     loc_1B853D
                JMP     loc_1B8588
; ---------------------------------------------------------------------------

loc_1B852D:                             ; CODE XREF: sub_1B83F6+12C↑j
                LDA     byte_7BC,X
                BEQ     loc_1B854C
                DEC     byte_7BC,X
                LDA     byte_7B0,X
                STA     byte_7AC,X
                BNE     loc_1B854C

loc_1B853D:                             ; CODE XREF: sub_1B83F6+132↑j
                TYA
                AND     #$3F ; '?'
                STA     byte_7BC,X
                DEC     byte_7BC,X
                LDA     byte_7AC,X
                STA     byte_7B0,X

loc_1B854C:                             ; CODE XREF: sub_1B83F6+13A↑j
                                        ; sub_1B83F6+145↑j
                JMP     loc_1B850E
; ---------------------------------------------------------------------------

loc_1B854F:                             ; CODE XREF: sub_1B83F6+10E↑j
                JSR     sub_1B83F6
                JSR     sub_1B8221
                JMP     loc_1B84DD
; ---------------------------------------------------------------------------

loc_1B8558:                             ; CODE XREF: sub_1B83F6+1B8↓j
                JMP     loc_1B866C
; ---------------------------------------------------------------------------

loc_1B855B:                             ; CODE XREF: sub_1B83F6+1AB↓j
                JMP     loc_1B8642
; ---------------------------------------------------------------------------

loc_1B855E:                             ; CODE XREF: sub_1B83F6+11F↑j
                JSR     sub_1B86D1
                STA     byte_79A,X
                JSR     sub_1B86D1
                STA     byte_79D,X
                JMP     loc_1B850E
; ---------------------------------------------------------------------------
                JSR     sub_1B86D1
                JSR     sub_1B86D1
                JMP     loc_1B850E
; ---------------------------------------------------------------------------

loc_1B8576:                             ; CODE XREF: sub_1B83F6+123↑j
                JSR     sub_1B86D1
                STA     byte_791
                JMP     loc_1B850E
; ---------------------------------------------------------------------------

loc_1B857F:                             ; CODE XREF: sub_1B83F6+127↑j
                JSR     sub_1B86D1
                STA     byte_790
                JMP     loc_1B850E
; ---------------------------------------------------------------------------

loc_1B8588:                             ; CODE XREF: sub_1B83F6+134↑j
                TYA
                AND     #$B0
                CMP     #$B0
                BNE     loc_1B85A7
                TYA
                AND     #$F
                CLC
                ADC     byte_791
                TAY
                LDA     byte_1B891A,Y
                STA     byte_7B8,X
                TAY
                TXA
                CMP     #2
                BEQ     loc_1B855B

loc_1B85A3:                             ; CODE XREF: sub_1B83F6+273↓j
                JSR     sub_1B86D1
                TAY

loc_1B85A7:                             ; CODE XREF: sub_1B83F6+197↑j
                TYA
                STA     byte_7C3,X
                TXA
                CMP     #3
                BEQ     loc_1B8558
                PHA
                LDX     APURegisterNum
                LDA     byte_1B8891,Y
                BEQ     loc_1B85DC
                LDA     byte_790
                BPL     loc_1B85C8
                AND     #$7F
                STA     PointerAPU+1
                TYA
                CLC
                SBC     PointerAPU+1
                JMP     loc_1B85CD
; ---------------------------------------------------------------------------

loc_1B85C8:                             ; CODE XREF: sub_1B83F6+1C5↑j
                TYA
                CLC
                ADC     byte_790

loc_1B85CD:                             ; CODE XREF: sub_1B83F6+1CF↑j
                TAY
                LDA     byte_1B8891,Y
                STA     PulseTimer1,X
                LDA     byte_1B8890,Y
                ORA     #8
                STA     PulseCounter1,X

loc_1B85DC:                             ; CODE XREF: sub_1B83F6+1C0↑j
                TAY
                PLA
                TAX
                TYA
                BNE     loc_1B85F1
                LDA     #0
                STA     apu_B0
                TXA
                CMP     #2
                BEQ     loc_1B85F6
                LDA     #$10
                STA     apu_B0
                BNE     loc_1B85F6

loc_1B85F1:                             ; CODE XREF: sub_1B83F6+1EA↑j
                LDA     byte_79D,X
                STA     apu_B0

loc_1B85F6:                             ; CODE XREF: sub_1B83F6+1F3↑j
                                        ; sub_1B83F6+1F9↑j
                TXA
                DEC     apu_7C8,X
                CMP     apu_7C8,X
                BEQ     loc_1B863C
                INC     apu_7C8,X
                LDY     APURegisterNum
                TXA
                CMP     #2
                BEQ     loc_1B861C
                LDA     byte_79A,X
                AND     #$1F
                BEQ     loc_1B861C
                LDA     apu_B0
                CMP     #$10
                BEQ     loc_1B861E
                AND     #$F0
                ORA     #0
                BNE     loc_1B861E

loc_1B861C:                             ; CODE XREF: sub_1B83F6+211↑j
                                        ; sub_1B83F6+218↑j
                LDA     apu_B0

loc_1B861E:                             ; CODE XREF: sub_1B83F6+21E↑j
                                        ; sub_1B83F6+224↑j
                STA     pAPU_P_1_CR,Y   ; pAPU Pulse #1 Control Register (W)
                LDA     PulseSweep1,X
                STA     pAPU_P_1_RCR,Y  ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1,Y
                STA     pAPU_P_1_FTR,Y  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1,Y
                STA     pAPU_P_1_CTR,Y  ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

loc_1B8633:                             ; CODE XREF: sub_1B83F6+249↓j
                                        ; sub_1B83F6+282↓j
                LDA     byte_7B8,X
                STA     byte_7B4,X
                JMP     loc_1B84DD
; ---------------------------------------------------------------------------

loc_1B863C:                             ; CODE XREF: sub_1B83F6+207↑j
                INC     apu_7C8,X
                JMP     loc_1B8633
; ---------------------------------------------------------------------------

loc_1B8642:                             ; CODE XREF: sub_1B83F6:loc_1B855B↑j
                LDA     apu_79C
                AND     #$1F
                BNE     loc_1B8666
                LDA     apu_79C
                AND     #$C0
                BNE     loc_1B8653

loc_1B8650:                             ; CODE XREF: sub_1B83F6+25F↓j
                TYA
                BNE     loc_1B865B

loc_1B8653:                             ; CODE XREF: sub_1B83F6+258↑j
                CMP     #$C0
                BEQ     loc_1B8650
                LDA     #$FF
                BNE     loc_1B8666

loc_1B865B:                             ; CODE XREF: sub_1B83F6+25B↑j
                CLC
                ADC     #$FF
                ASL     A
                ASL     A
                CMP     #$3C ; '<'
                BCC     loc_1B8666
                LDA     #$3C ; '<'

loc_1B8666:                             ; CODE XREF: sub_1B83F6+251↑j
                                        ; sub_1B83F6+263↑j ...
                STA     byte_79F
                JMP     loc_1B85A3
; ---------------------------------------------------------------------------

loc_1B866C:                             ; CODE XREF: sub_1B83F6:loc_1B8558↑j
                TYA
                PHA
                JSR     sub_1B8693
                PLA
                AND     #$3F ; '?'
                TAY
                JSR     sub_1B867B
                JMP     loc_1B8633
; End of function sub_1B83F6


; =============== S U B R O U T I N E =======================================


sub_1B867B:                             ; CODE XREF: sub_1B83F6+27F↑p
                LDA     Noise
                BNE     @exit
                LDA     byte_1B81F0,Y
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                LDA     byte_1B81F1,Y
                STA     pAPU_N_FR_1     ; pAPU Noise Frequency Register #1 (W)
                LDA     byte_1B81F2,Y
                STA     pAPU_N_FR_2     ; pAPU Noise Frequency Register #2 (W)

@exit:                                  ; CODE XREF: sub_1B867B+3↑j
                RTS
; End of function sub_1B867B


; =============== S U B R O U T I N E =======================================


sub_1B8693:                             ; CODE XREF: sub_1B83F6+278↑p
                TYA
                AND     #$C0
                CMP     #$40 ; '@'
                BEQ     loc_1B869F
                CMP     #$80
                BEQ     loc_1B86A9
                RTS
; ---------------------------------------------------------------------------

loc_1B869F:                             ; CODE XREF: sub_1B8693+5↑j
                LDA     #$E
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     #7
                LDY     #0
                BEQ     loc_1B86B1

loc_1B86A9:                             ; CODE XREF: sub_1B8693+9↑j
                LDA     #$E
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     #$F
                LDY     #2

loc_1B86B1:                             ; CODE XREF: sub_1B8693+14↑j
                STA     pAPU_DM_DLR     ; pAPU Delta Modulation Data Length Register (W)
                STY     pAPU_DM_AR      ; pAPU Delta Modulation Address Register (W)
                LDA     DMCflag
                BNE     locret_1B86D0
                LDA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                STA     pAPU_DM_CR      ; pAPU Delta Modulation Control Register (W)
                LDA     #$F
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
                LDA     #0
                STA     pAPU_DM_DAR     ; pAPU Delta Modulation D/A Register (W)
                LDA     #$1F
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

locret_1B86D0:                          ; CODE XREF: sub_1B8693+27↑j
                RTS
; End of function sub_1B8693


; =============== S U B R O U T I N E =======================================


sub_1B86D1:                             ; CODE XREF: sub_1B83F6:loc_1B850E↑p
                                        ; sub_1B83F6:loc_1B855E↑p ...
                LDY     byte_7AC,X
                INC     byte_7AC,X
                LDA     (byte_B6),Y
                RTS
; End of function sub_1B86D1

; ---------------------------------------------------------------------------
off_1B86DA:     .WORD byte_1B874C, byte_1B8753, byte_1B8777, byte_1B878A
                                        ; DATA XREF: sub_1B83F6:loc_1B8415↑r
                                        ; sub_1B83F6+24↑r
                .WORD byte_1B879C, byte_1B87A2, byte_1B8745, byte_1B87A4
                .WORD byte_1B87AD, byte_1B879F, byte_1B87B6, byte_1B87C3
                .WORD byte_1B87D1, byte_1B87DE, byte_1B87EA, byte_1B87F4
                .WORD byte_1B883F, byte_1B8847, byte_1B880D, byte_1B885B
                .WORD byte_1B8822, byte_1B8718, byte_1B875D, byte_1B873C
                .WORD byte_1B8735, byte_1B8722, byte_1B871E, byte_1B8773
                .WORD byte_1B8793, byte_1B886B, byte_1B887F
byte_1B8718:    .BYTE $76, $11, $11, $14, $31, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B871E:    .BYTE $33, $45, $66, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B8722:    .BYTE $43, $33, $22, $22, $22, $22, $22, $21, $11, $11
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $11, $11, $11, $11, $11, $11, $11, $F0
byte_1B8735:    .BYTE $23, $33, $32, $22, $22, $22, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B873C:    .BYTE $98, $76, $63, $22, $87, $76, $53, $11, $F0
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B8745:    .BYTE $23, $56, $78, $88, $88, $87, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B874C:    .BYTE $23, $34, $56, $77, $65, $54, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B8753:    .BYTE $5A, $98, $88, $77, $66, $66, $65, $55, $55, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B875D:    .BYTE $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $55, $55, $55, $66, $66, $77, $78, $88, $76, $54
                .BYTE $32, $FF
byte_1B8773:    .BYTE $11, $11, $22, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B8777:    .BYTE $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $55, $55, $55, $66, $66, $77, $78, $88, $FF
byte_1B878A:    .BYTE $F9, $87, $77, $77, $66, $65, $55, $44, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B8793:    .BYTE $C8, $76, $66, $66, $55, $55, $55, $44, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B879C:    .BYTE $A8, $76, $FF     ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B879F:    .BYTE $74, $32, $FF     ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B87A2:    .BYTE $99, $FF          ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B87A4:    .BYTE $DC, $BA, $99, $88, $87, $76, $55, $44, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B87AD:    .BYTE $23, $44, $33, $33, $33, $33, $33, $32, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B87B6:    .BYTE $77, $76, $65, $55, $44, $43, $32, $22, $11, $11
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $11, $F0
byte_1B87C3:    .BYTE $54, $43, $33, $33, $32, $22, $22, $11, $11, $11
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $11, $11, $F0
byte_1B87D1:    .BYTE $43, $33, $22, $22, $22, $21, $11, $11, $11, $11
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $11, $F0
byte_1B87DE:    .BYTE $32, $22, $22, $21, $11, $11, $11, $11, $11, $11
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $F0
byte_1B87EA:    .BYTE $21, $11, $11, $11, $11, $11, $11, $11, $11, $F0
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B87F4:    .BYTE $99, $88, $77, $76, $66, $55, $54, $44, $33, $33
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $33, $32, $22, $22, $22, $22, $21, $11, $11, $11
                .BYTE $11, $11, $11, $11, $F0
byte_1B880D:    .BYTE $65, $55, $54, $44, $33, $33, $33, $33, $22, $22
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $22, $22, $11, $11, $11, $11, $11, $11, $11, $11
                .BYTE $F0
byte_1B8822:    .BYTE $FB, $BA, $AA, $99, $99, $99, $98, $88, $77, $77
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $77, $66, $66, $66, $55, $54, $44, $44, $43, $33
                .BYTE $33, $22, $22, $22, $22, $11, $11, $11, $F0
byte_1B883F:    .BYTE $23, $45, $55, $44, $33, $33, $22, $FF
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
byte_1B8847:    .BYTE $87, $65, $43, $21, $44, $33, $21, $11, $32, $21
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF
byte_1B885B:    .BYTE $66, $65, $42, $21, $32, $21, $11, $11, $21, $11
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $11, $11, $11, $11, $FF
byte_1B886B:    .BYTE $A8, $75, $43, $21, $43, $33, $21, $11, $32, $21
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF
byte_1B887F:    .BYTE $12, $33, $33, $34, $44, $44, $44, $44, $44, $44
                                        ; DATA XREF: BANK1B:off_1B86DA↑o
                .BYTE $44, $44, $44, $44, $44, $22, $FF
byte_1B8890:    .BYTE 7                 ; DATA XREF: sub_1B83F6+1DE↑r
byte_1B8891:    .BYTE $F0, 0, 0, 6, $AE, 6, $4E, 5, $F3, 5, $9E, 5, $4D
                                        ; DATA XREF: sub_1B83F6+1BD↑r
                                        ; sub_1B83F6+1D8↑r
                .BYTE 5, 1, 4, $B9, 4, $75, 4, $35, 3, $F8, 3, $BF, 3
                .BYTE $89, 3, $57, 3, $27, 2, $F9, 2, $CF, 2, $A6, 2, $80
                .BYTE 2, $5C, 2, $3A, 2, $1A, 1, $FC, 1, $DF, 1, $C4, 1
                .BYTE $AB, 1, $93, 1, $7C, 1, $67, 1, $52, 1, $3F, 1, $2D
                .BYTE 1, $1C, 1, $C, 0, $FD, 0, $EE, 0, $E1, 0
                .BYTE $D4, 0, $C8, 0, $BD, 0, $B2, 0, $A8, 0, $9F, 0, $96
                .BYTE 0, $8D, 0, $85, 0, $7E, 0, $76, 0, $70, 0, $69, 0
                .BYTE $63, 0, $5E, 0, $58, 0, $53, 0, $4F, 0, $4A, 0, $46
                .BYTE 0, $42, 0, $3E, 0, $3A, 0, $37, 0, $34, 0, $31, 0
                .BYTE $2E, 0, $2B, 0, $29, 0, $A, 0, 1
byte_1B891A:    .BYTE 4, 8, $10, $20, $40, $18, $30, $C, $A, 5, 2, 1, 5
                                        ; DATA XREF: sub_1B83F6+1A1↑r
                .BYTE $A, $14, $28, $50, $1E, $3C, $F, $C, 6, 3, 2, 6
                .BYTE $C, $18, $30, $60, $24, $48, $12, $10, 8, 3, 1, 4
                .BYTE 2, 0, $90, 7, $E, $1C, $38, $70, $2A, $54, $15, $12
                .BYTE 9, 3, 1, 2, 7, $F, $1E, $3C, $78, $2D, $5A, $16
                .BYTE $14, $A, 3, 1, 8, 8, $10, $20, $40, $80, $30, $60
                .BYTE $18, $15, $A, 4, 1, 2, $C0, 9, $12, $24, $48, $90
                .BYTE $36, $6C, $1B, $18, $A, $14, $28, $50, $A0, $3C
                .BYTE $78, $1E, $1A, $D, 5, 1, 2, $17, $B, $16, $2C, $58
                .BYTE $B0, $42, $84, $21, $1D, $E, 5, 1, 2, $17
byte_1B898F:    .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                                        ; DATA XREF: sub_1B836F+4↑r
                .BYTE 0, 0, 0, 0, 0, 0, 0
byte_1B89A7:    .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                                        ; DATA XREF: sub_1B8321+4↑r
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
byte_1B89C3:    .BYTE 0, $28, $BF, $8C, $B1, $8C, $D1, $8C, $DD, $8C
                                        ; DATA XREF: sub_1B8321:loc_1B832B↑r
                                        ; sub_1B836F:loc_1B8379↑r
byte_1B89CD:    .BYTE 0, $18, $6B, $8E, $79, $8E, $87, $8E, $9F, $8E, $9F
                                        ; DATA XREF: sub_1B8341:loc_1B835F↑r
                .BYTE $B3, $B1, $B4, $5A, $B3, $64, $62, $B4, $5A, $B3
                .BYTE $50, $4C, $B4, $4C, $B3, $48, $46, $B4, $46, $50
                .BYTE 0, $9F, $E, $B1, $B3, $34, $42, $54, $50, $32, $42
                .BYTE $B4, $4A, $B3, $30, $42, $B4, $50, $B3, $2E, $38
                .BYTE $B4, $40, 0, $C8, $B4, 2, $FF, 0, $C8, $B4, 1, $FF
                .BYTE 0, $9C, $8D, 0, $9F, $13, $B5, $B2, $68, $6C, $70
                .BYTE $76, $B4, $6C, $B2, $80, $7E, $7A, $70, $B4, $76
                .BYTE $B2, $7A, $7E, $80, $B3, $76, $B6, $68, $B2, $72
                .BYTE $70, $68, $B4, $5E, $B2, 2, $B3, $62, $66, $68, $72
                .BYTE $B2, $70, $72, $76, $70, $6C, $70, $72, $6C, $B2
                .BYTE $62, $72, $70, $5E, $B3, $6C, $66, $B3, $68, $9F
                .BYTE $C, $B5, $B2, $5E, $9F, $D, $B5, $B2, $6C, $9F, $E
                .BYTE $B5, $B4, $68, 2, 2, 0, $9F, $10, $B5, $B2, $68
                .BYTE $6C, $70, $76, $B4, $6C, $B2, $80, $7E, $7A, $70
                .BYTE $B4, $76, $B2, $7A, $7E, $80, $B3, $76, $B6, $68
                .BYTE $B2, $72, $70, $68, $B4, $5E, $B2, 2, $B3, $62, $66
                .BYTE $68, $72, $B2, $70, $72, $76, $70, $6C, $70, $72
                .BYTE $6C, $B2, $62, $72, $70, $5E, $B3, $6C, $66, $B3
                .BYTE $68, $B2, $5E, $6C, $B4, $68, 0, $B2, $50, $58, $5E
                .BYTE $68, $42, $50, $5A, $62, $4A, $50, $58, $62, $40
                .BYTE $4E, $58, $5E, $42, $50, $5A, $58, 2, $58, $5E, $68
                .BYTE $42, $50, $5A, $4E, 2, $54, $5E, $66, $42, $5A, $46
                .BYTE $5E, $4A, $62, $4E, $66, $50, $58, $5E, $58, $46
                .BYTE $4E, $54, $5E, $42, $50, $5A, $50, $46, $54, $5E
                .BYTE $66, $9F, $C, $B1, $50, $5E, 2, 2, $9F, $1A
                .BYTE $B1, $B4, $58, 2, 2, 0, $9F, $C, $B1, $B2, $50, $58
                .BYTE $5E, $68, $42, $50, $5A, $62, $4A, $50, $58, $62
                .BYTE $40, $4E, $58, $5E, $42, $50, $5A, $58, 2, $58, $5E
                .BYTE $68, $42, $50, $5A, $4E, 2, $54, $5E, $66, $42, $5A
                .BYTE $46, $5E, $4A, $62, $4E, $66, $50, $58, $5E, $58
                .BYTE $46, $4E, $54, $5E, $42, $50, $5A, $50, $46, $54
                .BYTE $5E, $66, $50, $5E, 2, 2, $70, $68, $5E, $58, 0
                .BYTE $D0, $B4, 2, $FF, 0, $9F, $A7, $F6, $C3, $B3, $4A
                .BYTE $B2, $4C, $50, $B3, $50, $54, $B3, $46, $B2, $4A
                .BYTE $4C, $B3, $4A, $42, $B3, $42, $B2, $46, $3C, $B2
                .BYTE $40, $42, $46, $4A, $B3, $40, $3C, $B4, $38, $FF
                .BYTE $B3, $4A, $B2, $50, $5A, $B3, $54, $4C, $B3, $50
                .BYTE $B2, $46, $4C, $B6, $4A, $B1, $4A, $46, $B3, $42
                .BYTE $B2, $46, $4A, $B3, $46, $3C, $42, $40, $42, $46
                .BYTE $9F, $A7, $F3, $B4, $4A, $B3, $46, $50, $B4, $4A
                .BYTE $46, $9F, 9, $F2, $B4, $46, 0, $9F, $A7, $B2, $C2
                .BYTE $B1, $5A, $50, $4A, $42, $38, $42, $4A, $50, $5A
                .BYTE $54, $4C, $42, $3C, $42, $4C, $54, $58, $50, $46
                .BYTE $40, $38, $40, $46, $50, $50, $4A, $42, $38, $32
                .BYTE $38, $42, $4A, $50, $4A, $42, $3C, $36, $3C, $42
                .BYTE $4A, $4E, $46, $3C, $36, $2E, $36, $3C, $46, $50
                .BYTE $46, $40, $38, $2E, $38, $40, $46, $50, $4C, $46
                .BYTE $40, $38, $34, $2E, $28, $FF, $C2, $B0, $5A, $50
                .BYTE $4A, $42, $38, $42, $4A, $50, $FF, $C2, $5A, $54
                .BYTE $4C, $42, $3C, $42, $4C, $54, $FF, $C2, $58, $50
                .BYTE $46, $40, $38, $40, $46, $50, $FF, $C2, $50, $4A
                .BYTE $42, $38, $32, $38, $42, $4A, $FF, $50, $4A, $42
                .BYTE $3C, $38, $32, $2A, $24, $20, $24, $2A, $32, $3C
                .BYTE $42, $4A, $50, $54, $4E, $46, $42, $3C, $36, $2E
                .BYTE $2A, $24, $2E, $36, $3C, $42, $46, $4E, $54, $C2
                .BYTE $50, $46, $40, $38, $2E, $38, $40, $46, $FF, $C2
                .BYTE $50, $4C, $46, $40, $38, $34, $2E, $28, $FF, 0, $9F
                .BYTE $A9, $B2, $C2, $B2, $5A, $50, $4A, $50, $5A, $4C
                .BYTE $46, $4C, $FF, $9F, $E, $B1, $5A, $4C, $46, $4C
                .BYTE 0, $C2, $B4, $42, $34, $38, $42, $3C, $46, $38, $B3
                .BYTE $38, $34, $FF, $B3, $2A, $B2, $2E, $32, $B3, $34
                .BYTE $1C, $B3, $20, $B2, $28, $2E, $B6, $2A, $B2, $28
                .BYTE $24, $20, $B3, $1E, $B4, $2E, $20, $B3, $38, $34
                .BYTE $B3, $42, $B2, $46, $4A, $B3, $4C, $34, $B3, $38
                .BYTE $B2, $40, $46, $B6, $42, $B2, $40, $3C, $38, $B3
                .BYTE $36, $B4, $2E, $20, $32, $2A, $26, $2A, $26, $26
                .BYTE 0, $C7, $B3, $41, 4, $B5, $41, $B1, 4, $B3, 7, $FF
                .BYTE $B3, $41, $B5, $81, $B0, $41, $41, $B1, $81, $41
                .BYTE 1, $41, 1, $41, $81, 1, $C8, $B2, $44, 4, $81, 4
                .BYTE $B1, 4, $41, $44, 1, $B2, $81, 4, $FF, $C4, $B3
                .BYTE 1, 4, $FF, 0, $5C, $8A, $EB, $8C, $D7, $89, $2D
                .BYTE $8B, $5C, $8A, $11, $8A, 0, 0, $E3, $8A, $2C, $8D
                .BYTE $ED, $89, $80, $8B, $C6, $8B, $24, $8C, $E, $8A
                .BYTE $E3, $8A, $9B, $8A, $FA, $8D, $24, $8E, 4, $8A, $3A
                .BYTE $8C, $28, $8B, $28, $8B
                .BYTE $48, $8E, $4D, $8E, 9, $8A, $81, $8C, $48, $8E, $48
                .BYTE $8E, $48, $8E, $9F, $10, $B1, $C2, $B2, $50, $54
                .BYTE $58, $5E, $B4, $54, $B2, $68, $66, $62, $58, $B4
                .BYTE $5E, $B2, $62, $66, $68, $B3, $5E, $B6, $50, $B2
                .BYTE $5A, $58, $50, $B4, $46, $B2, 2, $B3, $4A, $4E, $50
                .BYTE $5A, $B2, $58, $5A, $5E, $58, $54, $58, $5A, $54
                .BYTE $B2, $4A, $5A, $58, $46, $B3, $54, $4E, $B3, $50
                .BYTE $B2, $46, $54, $B4, $50, $FF, 0, $9F, $B4, $B1, $B2
                .BYTE $5E, $70, $5E, $70, $62, $72, $62, $72, $62, $70
                .BYTE $62, $70, $5E, $70, $5E, $70, $62, $72, $62, $B3
                .BYTE $5E, $B2, $70, $5E, $70, $62, $72, $62, $B3, $66
                .BYTE $B2, $76, $66, $76, $62, $72, $62, $B3, $72, $B2
                .BYTE $62, $B3, $72, $B2, $5E, $70, $5E, $70, $5A, $6C
                .BYTE $5A, $6C, $62, $72, $62, $72, $66, $76, $66, $76
                .BYTE $68, $70, $76, $70, $80, $76, $70, $68, $9F, $A9
                .BYTE $B2, $B1, $46, $40, $46, $40, $4A, $40, $46, $40
                .BYTE $46, $42, $46, $42, $4A, $42, $46, $42, $46, $40
                .BYTE $46, $40, $4A, $40, $46, $40, $46, $40, $46, $40
                .BYTE $4A, $40, $46, $40, $46, $42, $46, $42, $4A, $42
                .BYTE $B5, $46, $B1, $40, $46, $40, $4A, $40, $B5, $46
                .BYTE $B1, $42, $46, $42, $4A, $42, $B5, $46, $B1, $3C
                .BYTE $46, $3C, $4A, $3C, $B2, $46, $B1
                .BYTE $4A, $42, $4A, $42, $4E, $42, $4E, $42, $50, $42
                .BYTE $50, $42, $54, $42, $54, $42, $58, $50, $46, $40
                .BYTE $50, $46, $40, $38, $3C, $46, $4E, $46, $54, $4E
                .BYTE $46, $4E, $4A, $38, $4A, $38, $4A, $38, $4A, $38
                .BYTE $4E, $3C, $4E, $3C, $4E, $3C, $4E, $3C, $50, $40
                .BYTE $50, $40, $50, $40, $50, $40, $50, $46, $40, $38
                .BYTE $46, $40, $38, $40, 0
                .BYTE $9F, $A0, 0, $B4, $50, $5A, $B4, $4A, $B6, $40, $B1
                .BYTE $40, 2, $B6, $42, $B4, $50, $B2, 2, $B6, $42, $B4
                .BYTE $46, $B2, 2, $B3, $42, $46, $4A, $4E, $B4, $50, $46
                .BYTE $B4, $42, $46, $50, $B6, $38, $B2, 2, 0, $9F, $A0
                .BYTE 0, $C2, $B4, $38, $42, $32, $28, $B6, $2A, $B4, $38
                .BYTE $B2, 2, $B6, $2A, $B4, $2E, $B2, 2, $B3, $2A, $2E
                .BYTE $32, $36, $B4, $38, $2E, $B4, $2A, $2E, $38, $20
                .BYTE $FF, 0, $D0, $B4, 1, $FF, 0, $C8, $B3, 1, 4, $FF
                .BYTE $C8, $B3, 1, 4, $FF, $B3, 1, $B1, $25, $28, $2B
                .BYTE $2E, $CF, $B1, $2E, $2E, $B2, 1, $B1, $25, $28, $2B
                .BYTE $2B, $FF, 0, $BB, $8E, $28, $90, $7E, $93, $B8, $93
                .BYTE 3, $94, $FF, $FF, $73, $8E, $FB, $8E, $AA, $90, $3D
                .BYTE $91, $6B, $91, $45, $94, $FF, $FF, $81, $8E, $46
                .BYTE $8F, $76, $8F, $76, $8F, $E8, $8F, 5, $90, $E8, $8F
                .BYTE $F, $90, $E4, $91, $29, $92, $AF, $8E, $FF, $FF
                .BYTE $99, $8E, $86, $8F, $AA, $8F, $79, $92, $9F, $92
                .BYTE $33, $93, $B5, $8E, $FF, $FF, $A9, $8E, $B4, 2, 2
                .BYTE 2, 2, 0, $B4, 1, 1, 1, 1, 0, $9F, 4, $13, $C4, $B2
                .BYTE 2, $B5, $24, $28, $20, $B1, 2, $20, $B5, $28, $B2
                .BYTE 2, $B5, $24, $28, $B3, $1E, $20, $FF, $B4, $2C, $2C
                .BYTE $B1, $2C, $2C, 2, 2, $B3, $2C, $B1, 2, $2E, $28
                .BYTE $2A, $3C, $3A, $38, $36, $B4, $2C, $2C, $B1, $2C
                .BYTE $2C, 2, 2, $B3, $2C, $B1, $38, $B5, $38, $B1, $38
                .BYTE $B4, $38, $B5, 2, 0, $9F, 4, $13, $C4, $B1, $C, $C
                .BYTE $2C, $C, $C, $2E, $C, $C, $28, $C, $C, $C, $28, $2E
                .BYTE $C, $C, $C, $C, $2C, $C, $C, $2E, $C, $C, $B3, $2E
                .BYTE $2E, $FF, $B4, $24, $22, $B1, $1E, $1E, 2, 2, $B3
                .BYTE $1E, $B1, 2, $16, $10, $12, $24, $22, $20, $B4, $1E
                .BYTE $B1, $24, $B4, $22, $B1, $1E, $1E, 2, 2, $B3, $1E
                .BYTE $B1, $2E, $B5, $32, $B1, $28, $B4, $2A, $B5, 2, 0
                .BYTE $9F, $A0, 0, $B4, $24, $B3, $3C, $B1, $3C, $4A, $54
                .BYTE $4A, $B4, $24, $B3, $1E, $20, $B4, $24, $B3, $3C
                .BYTE $B1, 2, $4A, $54, $4A, $B4, $3C, $B3, $1E, $BA, $46
                .BYTE $44, $42, $40, $3E, $3C, $3A, $38, $36, $34, $32
                .BYTE $30, $2E, $2C, $2A, $26, 0, $9F, 0, 0, $CC, $B1
                .BYTE $24, $24, $FF, $B8, $1E, $24, $2E, $20, $24, $2E
                .BYTE 0, $C6, $B2, 1, 4, $FF, $B1, $81, $41, $81, $81
                .BYTE $41, $81, $81, $41, $41, 1, 4, 1, $C5, $B2, 1, 4
                .BYTE $FF, $C8, $B0, $81, $FF, $B1, $81, $41, $B0, $81
                .BYTE $81, $B1, $41, 0, $C8, $44, 4, $84, 4, $44, $44
                .BYTE $84, 4, $FF, $C5, $B1, $44, $44, $84, $44, $FF, $44
                .BYTE $44, $C4, $B0, $81, $FF, $B1, $81, $C2, $84, $44
                .BYTE $44, $FF, $44, $C5, $44, $44, $84, $44, $FF, $44
                .BYTE $44, $C4, $B0, $81, $FF, $C2, $B1, $84, $44, 1, 1
                .BYTE $FF, 4, 1, 4, 1, $81, $41, $B0, $81, $41, $81, $41
                .BYTE 0, $9F, 0, 0, $C5, $B1, $1E, $B0, $1E, $36, $FF
                .BYTE $B1, $1E, $32, $32, $36, $32, $32, $32
                .BYTE $2E, $2E, 2, $C2, $B1, $2E, $B0, $2E, $2E, $FF, 0
                .BYTE $B1, 2, $2E, $28, $2A, $3C, $3A, $38, $36, 0, $9F
                .BYTE $A0, 0, $B1, $28, $B5, $2A, $B1, $2E, $B4, $32, $BA
                .BYTE $32, $30, $2E, $2C, $2A, $28, $26, $24, $22, $20
                .BYTE $1E, $1C, 0, $9F, 4, $13, $B2, 2, $B5, $24, $20
                .BYTE $28, $24, $B1, $20, $24, 2, 2, $B5, $24, $20, $B4
                .BYTE $1A, $B2, 2, $B5, $24, $20, $28, $24, $B1, $20, $24
                .BYTE 2, 2, $B5, $24, $20, $B3, $1A, $B1, $2E, $2E, $2E
                .BYTE $2E, $9F, $D, $13, $2E, $2E, $2E, $2E, $2E, $2E
                .BYTE $2E, $2E, $2E, $2E, $2E, $2E, $9F, 4, $13, $2E, $2E
                .BYTE $2E, $2E, $9F, $D, $13, $2E, $2E, $2E, $2E, $2E
                .BYTE $2E, $2E, $2E, $9F, $C, $13, $2E, $2E, $2E, $2E
                .BYTE $2E, $2E, $2E, $2E, $9F, 4, $13, $B2, $12, $B5, $36
                .BYTE $32, $38, $36, $B1, $32, $36, $B2, $16, $B5, $36
                .BYTE $32, $B4, $2A, $9F, $A7, $F3, $B2, 4, $B5, $42, $40
                .BYTE $38, $B3, $3C, $B1, 2, $B2, 8, $B5, $42, $40, $46
                .BYTE $B3, $3C, $B1, 2, 0, $9F, 4, $13, $B1, $C, $C, $2C
                .BYTE $C, $C, $28, $C, $C, $2E, $C, $C, $2C, $C, $C, $28
                .BYTE $2C, $C, $C, $2C, $C, $C, $28, $C, $C, $B4, $20
                .BYTE $B1, $C, $C, $2C, $C, $C, $28, $C, $C, $2E, $C, $C
                .BYTE $2C, $C, $C, $28, $2C, $C, $C, $2C, $C, $C, $28
                .BYTE $C, $C, $B3, $20, $9F, 4, $13, $B1, 6, 6, 6, 8, $9F
                .BYTE $D, $13, 8, $9F, $C, $13, $24, $9F, $D, $13, 8, 8
                .BYTE $9F, $C, $13, $24, $9F, $D, $13, 8, 8, $9F, $C, $13
                .BYTE $24, $9F, $D, $13, 8, 8, 8, 8, $9F, 4, $13, $B1
                .BYTE 6, 6, 6, 8, $9F, $D, $13, 8, $9F, $C, $13, $24, $9F
                .BYTE $D, $13, 8, 8, $9F, $C, $13, $24, $9F, $D, $13, 8
                .BYTE 8, $9F, $C, $13, $24, $9F, $C, $13, 8, 8, 8, 8, $9F
                .BYTE $1D, $13, 8, 8, 8, 8, 0, $9F, $1D, $13, $B1, $12
                .BYTE $12, $2E, $12, $12, $2A, $12, $12, $32, $12, $12
                .BYTE $2E, $12, $12, $2A, $2E, $16, $16, $2E, $16, $16
                .BYTE $2A, $16, $16, $24, $16, $16, $B0, $16, $16, $B1
                .BYTE $16, $B0, $16, $16, $9F, 4, $13, $B1, $16, $1A, 0
                .BYTE $9F, $B9, $B2, $C4, $B0, $50, $46, $42, $46, $FF
                .BYTE $C2, $50, $46, $42, $38, $2E, $2A, $2E, $38, $FF
                .BYTE $C2, $50, $46, $50, $46, $42, $46, $50, $46, $FF
                .BYTE $C2, $50, $46, $42, $38, $2E, $2A, $2E, $38, $FF
                .BYTE $9F, $BE, $F1, $B2, $4A, $4E, $B1, $54, $B5, $58
                .BYTE $B2, $5C, $54, $B1, $4E, $B5, $54, $9F, $B0, $F2
                .BYTE $B5, $54, $B3, $54, $B1, 2, $B5, $54, $B3, $54, $B1
                .BYTE 2, $9F, $A9, $F2, $B4, $2C, 2, $9F, $AF, $B1, $B3
                .BYTE $3C, $44, $38, $44, $9F, $AE, $B1, $36, $44, $9F
                .BYTE $AD, $B1, $34, $44, $9F, $AC, $B1, $3C, $44, $38
                .BYTE $44, $36, $44, $9F, $AD, $B1, $34, $44, $9F, $BC
                .BYTE $B2, $B4, $4A, $9F, $BC, $B1, $32, $24, 0, $9F, $A0
                .BYTE 0, $B4, $24, $B3, $3C, $B1, $3C, $4A, $54, $4A, $B4
                .BYTE $24, $24, $B4, $24, $B3, $3C, $B1, $3C, $4A
                .BYTE $54, $4A, $B4, $24, $B3, $24, $9F, 0, 0, $B1, $1E
                .BYTE $1E, $1E, $20, $20, $38, $20, $20, $38, $20, $20
                .BYTE $20, $20, $20, $20, $20, $1E, $1E, $1E
                .BYTE $20, $20, $38, $20, $20, $38, $20, $20, $20, $20
                .BYTE $20, $20, $20, $20, $20, $20, $20, 0
                .BYTE $2A, $2A, $2A, $B0, $2A, $2A, $B1, $2A, $2A, $2A
                .BYTE $2A, $2A, $42, $B0, $2A, $2A, $B1, $2A, $2A, $2A
                .BYTE $2A, $B0, $2A, $2A, $C7, $B1, $2E, $B0, $2E, $2E
                .BYTE $FF, $B1, $2E, $32, $9F, $A0, 0, $B4, $34, $1C, $38
                .BYTE $20, $9F, $A0, 0, $B2, $36, $B3, $32, $B2, 2, $32
                .BYTE $B3, $2E, $B2, 2, $B5, $2E, $B3, $2A, $B1, 2, $B5
                .BYTE $28, $B3, $26, $B1, 2, $B4, $24, $24, $C4, $B4, $24
                .BYTE $3C, $FF, $24, 2, 2, 0, $B2, $44, 4, $C5, 1, 4, $FF
                .BYTE $B1, $81, $41, $81, $81, $41, $81, $81, $41, $41
                .BYTE 1, 4, 1, $C5, $B2, 1, 4, $FF, $BA, $81, $81, $C7
                .BYTE $B0, $81, $FF, $B1, $81, $41, $81, $81, 0, $44, $44
                .BYTE $84, $44, $44, 4, $84, $44, $44, 4, $84, 4, $84
                .BYTE $44, $81, $81, 4, $44, $84, $44, $44, 4, $84, $44
                .BYTE $84, $44, $84, $44, $BA, $81, $81, $B0, $81, $81
                .BYTE $81, $B1, $44, $B0, $81, $28, $B1, $44, 4, $84, $44
                .BYTE $44, 4, $84, $44, 4, $44, $84, $44, 4, $44, $84
                .BYTE 4, $44, 4, $84, 4, $44, $44, $84, 4, $B0, 4, 1, $44
                .BYTE $41, $84, 1, $44, $2E, 4, $44, 4, $41, $44, $41
                .BYTE $44, $41, $B0, $44, $2B, $28, $2E, 4, $2B, $28, $2E
                .BYTE 1, $2B, $28, $2E, 4, $2B, $28, $2E, $44, $2B, $28
                .BYTE $2E, 4, $2B, $28, $2E, 1, $2B, $84, $2E, $84, $2B
                .BYTE $44, $2E, $44, $2B, $28, $2E, 4, $2B, $28, $2E, 1
                .BYTE $2B, $28, $2E, 4, $2B, $28, $2E, $44, $2B, $28, $2E
                .BYTE 4, $2B, $28, $2E, $81, $41, $25, $81, $41, $44, $84
                .BYTE $2E, 0, $44, $2B, $2E, $2B, $44, $2B, $2E, $2B, $2E
                .BYTE $2B, $2E, $2B, 4, $2B, $2E, $28, $44, $2B, $2E, $2B
                .BYTE $44, $2B, $2E, $2B, $28, $2B, $2E, $2B, $28, $81
                .BYTE $84, $81, $B1, $44, 4, $81, $44, 1, $41, $81, 1
                .BYTE $44, 4, $81, $44, 1, $B0, $41, $41, $B2, $81, $B0
                .BYTE $44, $25, $25, $28, $28, $28, $28, $2B, $2B, $2B
                .BYTE $2B, $2B, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
                .BYTE $2E, $2E, 0, $9F, $D, $F1, $C4, $B0, $54, $3C, $54
                .BYTE $54, $3C, $54, $3C, $3C, $FF, $9F, 4, $15, $B5, $16
                .BYTE $B3, $12, $B1, 2, $B5, $10, $B3, $E, $B1, 2, $9F
                .BYTE $1D, $12, $B4, $C, $9F, $A9, $B1, $B4, $24, $9E
                .BYTE $35, $9F, $BC, $B1, $B4, $4A, $54, $4A, $54, $B4
                .BYTE $4A, $54, $4A, $54, $24, $24, 2, 0
                .BYTE $9F, $F, $F1, $B2, $50, $58, $5E, $68, $42, $50
                .BYTE $5A, $62, $4A, $50, $58, $62, $40, $4E, $58, $5E
                .BYTE $42, $50, $5A, $58, 2, $58, $5E, $68, $42, $50, $5A
                .BYTE $4E, 2, $54, $5E, $66, $9F, $E, $F1, $42, $5A, $46
                .BYTE $5E, $4A, $62, $4E, $66, $50, $58, $5E, $58, $46
                .BYTE $4E, $54, $5E, $9F, $D, $F1, $42, $50, $5A, $50
                .BYTE $46, $54, $5E, $66, $50, $5E, 2, 2, $70, $68, $5E
                .BYTE $58, 0, $B2, $50, $58, $5E, $68, $42, $50, $5A, $62
                .BYTE $4A, $50, $58, $62, $40, $4E, $58, $5E, $42, $50
                .BYTE $5A, $58, 2, $58, $5E, $68, $42, $50, $5A, $4E, 2
                .BYTE $54, $5E, $66, $42, $5A, $46, $5E, $4A, $62, $4E
                .BYTE $66, $50, $58, $5E, $58, $46, $4E, $54, $5E, $42
                .BYTE $50, $5A, $50, $46, $54, $5E, $66, $50, $5E, 2, 2
                .BYTE $70, $68, $5E, $58, 0, $9F, $BF, $B0, $B2, $50, $54
                .BYTE $58, $5E, $B6, $54, $B2, 2, $B2, $68, $66, $62, $58
                .BYTE $B3, $5E, 2, $B2, $62, $66, $68, $B3, $5E, $B6, $50
                .BYTE $B2, $5A, $58, $50, $B4, $46, $B2, 2, $B3, $4A, $4E
                .BYTE $50, $5A, $B2, $58, $5A, $5E, $58, $54, $58, $5A
                .BYTE $54, $B2, $4A, $5A, $58, $46, $B3, $54, $4E, $B3
                .BYTE $50, $B2, $46, $54, $B3, $50, 2, 0
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
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF
; end of 'BANK1B'