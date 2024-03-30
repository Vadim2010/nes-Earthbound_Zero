.include "nes.inc"
.include "ram.inc"

.segment "PRG_BANK_B"

; ===========================================================================

; Segment type: Pure code
;.segment BANK1B
;* =  $8000

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


sub_1B8009:
                LDA     #0
                BEQ     loc_1B8017
; End of function sub_1B8009


; =============== S U B R O U T I N E =======================================


sub_1B800D:
                LDA     #8
                BNE     loc_1B8017
; End of function sub_1B800D


; =============== S U B R O U T I N E =======================================


sub_1B8011:
                LDA     #$C
                BNE     loc_1B8017
; End of function sub_1B8011


; =============== S U B R O U T I N E =======================================


sub_1B8015:
    .importzp apu_B0, APU_DM_CR, PointerAPU

                LDA     #4

loc_1B8017:
                STA     apu_B0
                LDA     #$40
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                STY     PointerAPU
                STA     PointerAPU+1
                LDY     #0

loc_1B8023:
                LDA     (PointerAPU),Y
                STA     (apu_B0),Y
                INY
                TYA
                CMP     #4
                BNE     loc_1B8023
                RTS
; End of function sub_1B8015


; =============== S U B R O U T I N E =======================================


sub_1B802E:
    .importzp apu_BB, apu_BC

                LDA     apu_BB
                AND     #2
                STA     apu_7FF
                LDA     apu_BC
                AND     #2
                EOR     apu_7FF
                CLC
                BEQ     loc_1B8040
                SEC

loc_1B8040:
                ROR     apu_BB
                ROR     apu_BC
                RTS
; End of function sub_1B802E


; =============== S U B R O U T I N E =======================================


sub_1B8045:
    .importzp apu_BD

                LDX     apu_BD
                INC     byte_7DA,X
                LDA     byte_7DA,X
                CMP     byte_7D5,X
                BNE     locret_1B8057
                LDA     #0
                STA     byte_7DA,X

locret_1B8057:
                RTS
; End of function sub_1B8045

; ---------------------------------------------------------------------------
byte_1B8058:    .byte 0, 0

; =============== S U B R O U T I N E =======================================


sub_1B805A:
                LDA     #$F
                STA     SND_CHN         ; pAPU Sound/Vertical Clock Signal Register (R)
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
                LDA     #$55
                STA     apu_BB
                LDA     #0
                STA     apu_786
                STA     apu_78B
                TAY

loc_1B806C:
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
                .byte 0, 0

; =============== S U B R O U T I N E =======================================


sub_1B807E:
                LDA     apu_7F5
                CMP     #$25
                BNE     locret_1B8090
                JSR     sub_1B80AA
                STA     apu_7F5
                LDA     #$11
                STA     byte_7F1

locret_1B8090:
                RTS
; End of function sub_1B807E


; =============== S U B R O U T I N E =======================================


sub_1B8091:
                LDA     #$C0
                STA     IO_JOY2         ; Joypad #2/SOFTCLK (RW)
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

loc_1B80A3:
                STA     ModeSRAM,X
                DEX
                BNE     loc_1B80A3
                RTS
; End of function sub_1B8091


; =============== S U B R O U T I N E =======================================


sub_1B80AA:
                JSR     sub_1B80B9

loc_1B80AD:
                JSR     sub_1B80D7
                LDA     #0
                STA     DMC_CNTR        ; pAPU Delta Modulation D/A Register (W)
                STA     apu_79C
                RTS
; End of function sub_1B80AA


; =============== S U B R O U T I N E =======================================


sub_1B80B9:
                LDA     #0
                STA     apu_7C8
                STA     apu_7C9
                STA     apu_7CA
                STA     apu_78C
                STA     PulseChannels
                TAY

loc_1B80CB:
                LDA     #0
                STA     Noise,Y
                INY
                TYA
                CMP     #6
                BNE     loc_1B80CB
                RTS
; End of function sub_1B80B9


; =============== S U B R O U T I N E =======================================


sub_1B80D7:
                LDA     #0
                STA     DMC_CNTR        ; pAPU Delta Modulation D/A Register (W)
                LDA     #$10
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                STA     PL2_VOL         ; pAPU Pulse #2 Control Register (W)
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                LDA     #0
                STA     TRI_LINEAR      ; pAPU Triangle Control Register #1 (W)
                RTS
; End of function sub_1B80D7


; =============== S U B R O U T I N E =======================================


sub_1B80ED:
    .importzp apu_BF

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

loc_1B8109:
                JSR     sub_1B8009
                BEQ     loc_1B811B

loc_1B810E:
                JSR     sub_1B8015
                BEQ     loc_1B811B

loc_1B8113:
                JSR     sub_1B800D
                BEQ     loc_1B811B

loc_1B8118:
                JSR     sub_1B8011

loc_1B811B:
                LDA     apu_BF
                STA     Noise,X
                LDA     #0
                STA     byte_7DA,X

loc_1B8125:
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
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)

locret_1B8141:
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
                STA     PL1_VOL,X       ; pAPU Pulse #1 Control Register (W)
                STA     PL2_VOL,X       ; pAPU Pulse #2 Control Register (W)
                RTS
; End of function sub_1B8163


; =============== S U B R O U T I N E =======================================


sub_1B817C:
                JSR     sub_1B8045
                BNE     locret_1B8191

loc_1B8181:
                LDA     #$10
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                LDA     #0
                STA     apu_7C8
                STA     byte_7F9
                INC     PulseChannels

locret_1B8191:
                RTS
; End of function sub_1B817C


; =============== S U B R O U T I N E =======================================


sub_1B8192:
                LDA     #$10
                STA     PL2_VOL         ; pAPU Pulse #2 Control Register (W)
                LDA     #0
                STA     apu_7C9
                STA     byte_7FA
                RTS
; End of function sub_1B8192


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B81A0:
                JMP     sub_1B80AA
; End of function sub_1B81A0


; =============== S U B R O U T I N E =======================================


sub_1B81A3:
                LDA     apu_7F5
                TAY
                CMP     #$3F
                BCS     sub_1B81A0
                TYA
                BEQ     loc_1B81EA
                STA     apu_78C
                CMP     #$19
                BEQ     loc_1B81B9
                CMP     #$19
                BCC     loc_1B81C4

loc_1B81B9:
                STA     apu_BF
                SEC
                SBC     #$19
                STA     byte_7CC
                JMP     loc_1B81DC
; ---------------------------------------------------------------------------

loc_1B81C4:
                CMP     #6
                BNE     loc_1B81D4
                LDA     $6707
                CMP     #1
                BEQ     loc_1B81D3
                LDA     #7
                BNE     loc_1B81D4

loc_1B81D3:
                TYA

loc_1B81D4:
                STA     apu_BF
                STA     byte_7CC
                DEC     byte_7CC

loc_1B81DC:
                LDA     #$7F
                STA     PulseSweep1
                STA     byte_7C1
                JSR     sub_1B8341

loc_1B81E7:
                JMP     loc_1B84D0
; ---------------------------------------------------------------------------

loc_1B81EA:
                LDA     byte_7FD
                BNE     loc_1B81E7
                RTS
; End of function sub_1B81A3

; ---------------------------------------------------------------------------
byte_1B81F0:    .byte 0
byte_1B81F1:    .byte $10
byte_1B81F2:    .byte 1, $18, 0, 1, $38, 0, 3, $40, 0, 6, $58, 1, 3, $40
                .byte 2, 4, $40, $13, 5, $40, $14, $A, $40, $14, 8, $40
                .byte $12, $E, 8, $16, $E, $28, $16, $B, $18, $1D, 1, $28
                .byte $16, 1, $28, $13, 1, $38, $12, 1, $38

; =============== S U B R O U T I N E =======================================


sub_1B8221:
    .importzp APURegisterNum

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

loc_1B8247:
                INC     byte_7D1,X

locret_1B824A:
                RTS
; End of function sub_1B8221


; =============== S U B R O U T I N E =======================================


sub_1B824B:
                LDA     PointerAPU
                CMP     #$31
                BNE     loc_1B8253
                LDA     #$27

loc_1B8253:
                TAY
                LDA     byte_1B82DA,Y
                PHA
                LDA     byte_7C3,X
                CMP     #$46
                BNE     loc_1B8264
                PLA
                LDA     #0
                BEQ     sub_1B82C2

loc_1B8264:
                PLA
                JMP     sub_1B82C2
; End of function sub_1B824B


; =============== S U B R O U T I N E =======================================


sub_1B8268:
                LDA     PointerAPU
                TAY
                CMP     #$10
                BCS     loc_1B8275
                LDA     byte_1B8311,Y
                JMP     loc_1B82C8
; ---------------------------------------------------------------------------

loc_1B8275:
                LDA     #$F6
                BNE     loc_1B82C8

loc_1B8279:
                LDA     byte_7C3,X
                CMP     #$4C
                BCC     loc_1B8284
                LDA     #$FE
                BNE     loc_1B82C8

loc_1B8284:
                LDA     #$FE
                BNE     loc_1B82C8
; End of function sub_1B8268


; =============== S U B R O U T I N E =======================================


sub_1B8288:
                LDA     byte_7D1,X
                STA     PointerAPU
                LDA     apu_B0
                CMP     #$20
                BEQ     loc_1B82A7
                CMP     #$A0
                BEQ     loc_1B82B6
                CMP     #$60
                BEQ     loc_1B8279
                CMP     #$40
                BEQ     sub_1B8268
                CMP     #$80
                BEQ     sub_1B824B
                CMP     #$C0
                BEQ     sub_1B824B

loc_1B82A7:
                LDA     PointerAPU
                CMP     #$A
                BNE     loc_1B82AF
                LDA     #0

loc_1B82AF:
                TAY
                LDA     byte_1B8307,Y
                JMP     sub_1B82C2
; ---------------------------------------------------------------------------

loc_1B82B6:
                LDA     PointerAPU
                CMP     #$2B
                BNE     loc_1B82BE
                LDA     #$21

loc_1B82BE:
                TAY
                LDA     byte_1B82E6,Y
; End of function sub_1B8288


; =============== S U B R O U T I N E =======================================


sub_1B82C2:
                PHA
                TYA
                STA     byte_7D1,X
                PLA

loc_1B82C8:
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
                STA     PL1_LO,Y        ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                RTS
; ---------------------------------------------------------------------------

loc_1B82D8:
                PLA
                RTS
; End of function sub_1B82C2

; ---------------------------------------------------------------------------
byte_1B82DA:    .byte 9, 8, 7, 6, 5, 4, 3, 2, 2, 1, 1, 0
byte_1B82E6:    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
                .byte 0, 0, 0, $FF, 0, 0, 0, 0, 1, 1, 0, 0, 0, $FF, $FF
                .byte 0
byte_1B8307:    .byte 0, 1, 1, 2, 1, 0, $FF, $FF, $FE, $FF
byte_1B8311:    .byte 0, $FF, $FE, $FD, $FC, $FB, $FA, $F9, $F8, $F7, $F6
                .byte $F5, $F6, $F7, $F6, $F5

; =============== S U B R O U T I N E =======================================


sub_1B8321:
                LDA     byte_7CC
                TAY
                LDA     byte_1B89A7,Y
                TAY
                LDX     #0

loc_1B832B:
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


sub_1B8339:
                LDA     #$FF
                STA     byte_7A0,X
                JMP     loc_1B83BA
; End of function sub_1B8339


; =============== S U B R O U T I N E =======================================


sub_1B8341:
                JSR     loc_1B80AD
                LDA     apu_BF
                STA     byte_7FD
                CMP     #$33 ; '3'
                BEQ     loc_1B835B
                CMP     #$19
                BEQ     loc_1B8355
                CMP     #$19
                BCC     sub_1B836F

loc_1B8355:
                JSR     sub_1B8321
                JMP     loc_1B8386
; ---------------------------------------------------------------------------

loc_1B835B:
                LDX     #0
                LDY     #0

loc_1B835F:
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


sub_1B836F:
    .importzp byte_B6, byte_B7, byte_BA

                LDA     byte_7CC
                TAY
                LDA     byte_1B898F,Y
                TAY
                LDX     #0

loc_1B8379:
                LDA     byte_1B89C3,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1B8379

loc_1B8386:
                LDA     #1
                STA     byte_7B4
                STA     byte_7B5
                STA     byte_7B6
                STA     byte_7B7
                LDA     #0
                STA     byte_BA
                LDY     #8

loc_1B839A:
                STA     byte_7A7,Y
                DEY
                BNE     loc_1B839A
                TAX

loc_1B83A1:
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

loc_1B83BA:
                STA     byte_7A1,X
                INX
                INX
                TXA
                CMP     #8
                BNE     loc_1B83A1
                RTS
; End of function sub_1B836F


; =============== S U B R O U T I N E =======================================


sub_1B83C5:
                LDA     PulseChannels
                BEQ     locret_1B83F5
                CMP     #1
                BEQ     loc_1B83DF
                LDA     #$7F
                STA     PL2_SWEEP       ; pAPU Pulse #2 Ramp Control Register (W)
                LDA     PulseTimer2
                STA     PL2_LO          ; pAPU Pulse #2 Fine Tune (FT) Register (W)
                LDA     PulseCounter2
                STA     PL2_HI          ; pAPU Pulse #2 Coarse Tune (CT) Register (W)

loc_1B83DF:
                LDA     #$7F
                STA     PL1_SWEEP       ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1
                STA     PL1_HI          ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
                LDA     #0
                STA     PulseChannels

locret_1B83F5:
                RTS
; End of function sub_1B83C5


; =============== S U B R O U T I N E =======================================


sub_1B83F6:
    .importzp byte_B4

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

loc_1B840D:
                DEC     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                BEQ     loc_1B8415
                INY
                INY
                BNE     loc_1B840D

loc_1B8415:
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

loc_1B843F:
                LDA     byte_B4
                AND     #$F
                STA     apu_B0
                LDA     byte_79D,X
                AND     #$F0
                ORA     apu_B0
                TAY

loc_1B844D:
                INC     byte_7CD,X

loc_1B8450:
                LDA     apu_7C8,X
                BNE     locret_1B845B
                TYA
                LDY     APURegisterNum
                STA     PL1_VOL,Y       ; pAPU Pulse #1 Control Register (W)

locret_1B845B:
                RTS
; ---------------------------------------------------------------------------

loc_1B845C:
                LDY     byte_79D,X
                BNE     loc_1B8450

loc_1B8461:
                LDY     #$10
                BNE     loc_1B8450

loc_1B8465:
                LDY     #$10
                BNE     loc_1B844D

loc_1B8469:
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

loc_1B848B:
                JSR     sub_1B80AA

locret_1B848E:
                RTS
; ---------------------------------------------------------------------------

loc_1B848F:
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

loc_1B84A8:
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

loc_1B84CD:
                JMP     loc_1B848F
; ---------------------------------------------------------------------------

loc_1B84D0:
                JSR     sub_1B83C5
                LDA     #0
                TAX
                STA     APURegisterNum
                BEQ     loc_1B84EA

loc_1B84DA:
                TXA
                LSR     A
                TAX

loc_1B84DD:
                INX
                TXA
                CMP     #4
                BEQ     locret_1B848E
                LDA     APURegisterNum
                CLC
                ADC     #4
                STA     APURegisterNum

loc_1B84EA:
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

loc_1B850E:
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

loc_1B852D:
                LDA     byte_7BC,X
                BEQ     loc_1B854C
                DEC     byte_7BC,X
                LDA     byte_7B0,X
                STA     byte_7AC,X
                BNE     loc_1B854C

loc_1B853D:
                TYA
                AND     #$3F
                STA     byte_7BC,X
                DEC     byte_7BC,X
                LDA     byte_7AC,X
                STA     byte_7B0,X

loc_1B854C:
                JMP     loc_1B850E
; ---------------------------------------------------------------------------

loc_1B854F:
                JSR     sub_1B83F6
                JSR     sub_1B8221
                JMP     loc_1B84DD
; ---------------------------------------------------------------------------

loc_1B8558:
                JMP     loc_1B866C
; ---------------------------------------------------------------------------

loc_1B855B:
                JMP     loc_1B8642
; ---------------------------------------------------------------------------

loc_1B855E:
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

loc_1B8576:
                JSR     sub_1B86D1
                STA     byte_791
                JMP     loc_1B850E
; ---------------------------------------------------------------------------

loc_1B857F:
                JSR     sub_1B86D1
                STA     byte_790
                JMP     loc_1B850E
; ---------------------------------------------------------------------------

loc_1B8588:
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

loc_1B85A3:
                JSR     sub_1B86D1
                TAY

loc_1B85A7:
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

loc_1B85C8:
                TYA
                CLC
                ADC     byte_790

loc_1B85CD:
                TAY
                LDA     byte_1B8891,Y
                STA     PulseTimer1,X
                LDA     byte_1B8890,Y
                ORA     #8
                STA     PulseCounter1,X

loc_1B85DC:
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

loc_1B85F1:
                LDA     byte_79D,X
                STA     apu_B0

loc_1B85F6:
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

loc_1B861C:
                LDA     apu_B0

loc_1B861E:
                STA     PL1_VOL,Y       ; pAPU Pulse #1 Control Register (W)
                LDA     PulseSweep1,X
                STA     PL1_SWEEP,Y     ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1,Y
                STA     PL1_LO,Y        ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1,Y
                STA     PL1_HI,Y        ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

loc_1B8633:
                LDA     byte_7B8,X
                STA     byte_7B4,X
                JMP     loc_1B84DD
; ---------------------------------------------------------------------------

loc_1B863C:
                INC     apu_7C8,X
                JMP     loc_1B8633
; ---------------------------------------------------------------------------

loc_1B8642:
                LDA     apu_79C
                AND     #$1F
                BNE     loc_1B8666
                LDA     apu_79C
                AND     #$C0
                BNE     loc_1B8653

loc_1B8650:
                TYA
                BNE     loc_1B865B

loc_1B8653:
                CMP     #$C0
                BEQ     loc_1B8650
                LDA     #$FF
                BNE     loc_1B8666

loc_1B865B:
                CLC
                ADC     #$FF
                ASL     A
                ASL     A
                CMP     #$3C
                BCC     loc_1B8666
                LDA     #$3C

loc_1B8666:
                STA     byte_79F
                JMP     loc_1B85A3
; ---------------------------------------------------------------------------

loc_1B866C:
                TYA
                PHA
                JSR     sub_1B8693
                PLA
                AND     #$3F
                TAY
                JSR     sub_1B867B
                JMP     loc_1B8633
; End of function sub_1B83F6


; =============== S U B R O U T I N E =======================================


sub_1B867B:
                LDA     Noise
                BNE     @exit
                LDA     byte_1B81F0,Y
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                LDA     byte_1B81F1,Y
                STA     NOISE_LO        ; pAPU Noise Frequency Register #1 (W)
                LDA     byte_1B81F2,Y
                STA     NOISE_HI        ; pAPU Noise Frequency Register #2 (W)

@exit:
                RTS
; End of function sub_1B867B


; =============== S U B R O U T I N E =======================================


sub_1B8693:
                TYA
                AND     #$C0
                CMP     #$40
                BEQ     loc_1B869F
                CMP     #$80
                BEQ     loc_1B86A9
                RTS
; ---------------------------------------------------------------------------

loc_1B869F:
                LDA     #$E
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     #7
                LDY     #0
                BEQ     loc_1B86B1

loc_1B86A9:
                LDA     #$E
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     #$F
                LDY     #2

loc_1B86B1:
                STA     DMC_LEN         ; pAPU Delta Modulation Data Length Register (W)
                STY     DMC_START       ; pAPU Delta Modulation Address Register (W)
                LDA     DMCflag
                BNE     locret_1B86D0
                LDA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                STA     DMC_FREQ        ; pAPU Delta Modulation Control Register (W)
                LDA     #$F
                STA     SND_CHN         ; pAPU Sound/Vertical Clock Signal Register (R)
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
                STA     DMC_CNTR        ; pAPU Delta Modulation D/A Register (W)
                LDA     #$1F
                STA     SND_CHN         ; pAPU Sound/Vertical Clock Signal Register (R)
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

locret_1B86D0:
                RTS
; End of function sub_1B8693


; =============== S U B R O U T I N E =======================================


sub_1B86D1:
                LDY     byte_7AC,X
                INC     byte_7AC,X
                LDA     (byte_B6),Y
                RTS
; End of function sub_1B86D1

; ---------------------------------------------------------------------------
off_1B86DA:     .word byte_1B874C, byte_1B8753, byte_1B8777, byte_1B878A
                .word byte_1B879C, byte_1B87A2, byte_1B8745, byte_1B87A4
                .word byte_1B87AD, byte_1B879F, byte_1B87B6, byte_1B87C3
                .word byte_1B87D1, byte_1B87DE, byte_1B87EA, byte_1B87F4
                .word byte_1B883F, byte_1B8847, byte_1B880D, byte_1B885B
                .word byte_1B8822, byte_1B8718, byte_1B875D, byte_1B873C
                .word byte_1B8735, byte_1B8722, byte_1B871E, byte_1B8773
                .word byte_1B8793, byte_1B886B, byte_1B887F
byte_1B8718:    .byte $76, $11, $11, $14, $31, $FF
byte_1B871E:    .byte $33, $45, $66, $FF
byte_1B8722:    .byte $43, $33, $22, $22, $22, $22, $22, $21, $11, $11
                .byte $11, $11, $11, $11, $11, $11, $11, $11, $F0
byte_1B8735:    .byte $23, $33, $32, $22, $22, $22, $FF
byte_1B873C:    .byte $98, $76, $63, $22, $87, $76, $53, $11, $F0
byte_1B8745:    .byte $23, $56, $78, $88, $88, $87, $FF
byte_1B874C:    .byte $23, $34, $56, $77, $65, $54, $FF
byte_1B8753:    .byte $5A, $98, $88, $77, $66, $66, $65, $55, $55, $FF
byte_1B875D:    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                .byte $55, $55, $55, $66, $66, $77, $78, $88, $76, $54
                .byte $32, $FF
byte_1B8773:    .byte $11, $11, $22, $FF
byte_1B8777:    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                .byte $55, $55, $55, $66, $66, $77, $78, $88, $FF
byte_1B878A:    .byte $F9, $87, $77, $77, $66, $65, $55, $44, $FF
byte_1B8793:    .byte $C8, $76, $66, $66, $55, $55, $55, $44, $FF
byte_1B879C:    .byte $A8, $76, $FF
byte_1B879F:    .byte $74, $32, $FF
byte_1B87A2:    .byte $99, $FF
byte_1B87A4:    .byte $DC, $BA, $99, $88, $87, $76, $55, $44, $FF
byte_1B87AD:    .byte $23, $44, $33, $33, $33, $33, $33, $32, $FF
byte_1B87B6:    .byte $77, $76, $65, $55, $44, $43, $32, $22, $11, $11
                .byte $11, $11, $F0
byte_1B87C3:    .byte $54, $43, $33, $33, $32, $22, $22, $11, $11, $11
                .byte $11, $11, $11, $F0
byte_1B87D1:    .byte $43, $33, $22, $22, $22, $21, $11, $11, $11, $11
                .byte $11, $11, $F0
byte_1B87DE:    .byte $32, $22, $22, $21, $11, $11, $11, $11, $11, $11
                .byte $11, $F0
byte_1B87EA:    .byte $21, $11, $11, $11, $11, $11, $11, $11, $11, $F0
byte_1B87F4:    .byte $99, $88, $77, $76, $66, $55, $54, $44, $33, $33
                .byte $33, $32, $22, $22, $22, $22, $21, $11, $11, $11
                .byte $11, $11, $11, $11, $F0
byte_1B880D:    .byte $65, $55, $54, $44, $33, $33, $33, $33, $22, $22
                .byte $22, $22, $11, $11, $11, $11, $11, $11, $11, $11
                .byte $F0
byte_1B8822:    .byte $FB, $BA, $AA, $99, $99, $99, $98, $88, $77, $77
                .byte $77, $66, $66, $66, $55, $54, $44, $44, $43, $33
                .byte $33, $22, $22, $22, $22, $11, $11, $11, $F0
byte_1B883F:    .byte $23, $45, $55, $44, $33, $33, $22, $FF
byte_1B8847:    .byte $87, $65, $43, $21, $44, $33, $21, $11, $32, $21
                .byte $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF
byte_1B885B:    .byte $66, $65, $42, $21, $32, $21, $11, $11, $21, $11
                .byte $11, $11, $11, $11, $11, $FF
byte_1B886B:    .byte $A8, $75, $43, $21, $43, $33, $21, $11, $32, $21
                .byte $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF
byte_1B887F:    .byte $12, $33, $33, $34, $44, $44, $44, $44, $44, $44
                .byte $44, $44, $44, $44, $44, $22, $FF
byte_1B8890:    .byte 7
byte_1B8891:    .byte $F0, 0, 0, 6, $AE, 6, $4E, 5, $F3, 5, $9E, 5, $4D
                .byte 5, 1, 4, $B9, 4, $75, 4, $35, 3, $F8, 3, $BF, 3
                .byte $89, 3, $57, 3, $27, 2, $F9, 2, $CF, 2, $A6, 2, $80
                .byte 2, $5C, 2, $3A, 2, $1A, 1, $FC, 1, $DF, 1, $C4, 1
                .byte $AB, 1, $93, 1, $7C, 1, $67, 1, $52, 1, $3F, 1, $2D
                .byte 1, $1C, 1, $C, 0, $FD, 0, $EE, 0, $E1, 0
                .byte $D4, 0, $C8, 0, $BD, 0, $B2, 0, $A8, 0, $9F, 0, $96
                .byte 0, $8D, 0, $85, 0, $7E, 0, $76, 0, $70, 0, $69, 0
                .byte $63, 0, $5E, 0, $58, 0, $53, 0, $4F, 0, $4A, 0, $46
                .byte 0, $42, 0, $3E, 0, $3A, 0, $37, 0, $34, 0, $31, 0
                .byte $2E, 0, $2B, 0, $29, 0, $A, 0, 1
byte_1B891A:    .byte 4, 8, $10, $20, $40, $18, $30, $C, $A, 5, 2, 1, 5
                .byte $A, $14, $28, $50, $1E, $3C, $F, $C, 6, 3, 2, 6
                .byte $C, $18, $30, $60, $24, $48, $12, $10, 8, 3, 1, 4
                .byte 2, 0, $90, 7, $E, $1C, $38, $70, $2A, $54, $15, $12
                .byte 9, 3, 1, 2, 7, $F, $1E, $3C, $78, $2D, $5A, $16
                .byte $14, $A, 3, 1, 8, 8, $10, $20, $40, $80, $30, $60
                .byte $18, $15, $A, 4, 1, 2, $C0, 9, $12, $24, $48, $90
                .byte $36, $6C, $1B, $18, $A, $14, $28, $50, $A0, $3C
                .byte $78, $1E, $1A, $D, 5, 1, 2, $17, $B, $16, $2C, $58
                .byte $B0, $42, $84, $21, $1D, $E, 5, 1, 2, $17
byte_1B898F:    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0
byte_1B89A7:    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
byte_1B89C3:    .byte 0, $28, $BF, $8C, $B1, $8C, $D1, $8C, $DD, $8C
byte_1B89CD:    .byte 0, $18, $6B, $8E, $79, $8E, $87, $8E, $9F, $8E, $9F
                .byte $B3, $B1, $B4, $5A, $B3, $64, $62, $B4, $5A, $B3
                .byte $50, $4C, $B4, $4C, $B3, $48, $46, $B4, $46, $50
                .byte 0, $9F, $E, $B1, $B3, $34, $42, $54, $50, $32, $42
                .byte $B4, $4A, $B3, $30, $42, $B4, $50, $B3, $2E, $38
                .byte $B4, $40, 0, $C8, $B4, 2, $FF, 0, $C8, $B4, 1, $FF
                .byte 0, $9C, $8D, 0, $9F, $13, $B5, $B2, $68, $6C, $70
                .byte $76, $B4, $6C, $B2, $80, $7E, $7A, $70, $B4, $76
                .byte $B2, $7A, $7E, $80, $B3, $76, $B6, $68, $B2, $72
                .byte $70, $68, $B4, $5E, $B2, 2, $B3, $62, $66, $68, $72
                .byte $B2, $70, $72, $76, $70, $6C, $70, $72, $6C, $B2
                .byte $62, $72, $70, $5E, $B3, $6C, $66, $B3, $68, $9F
                .byte $C, $B5, $B2, $5E, $9F, $D, $B5, $B2, $6C, $9F, $E
                .byte $B5, $B4, $68, 2, 2, 0, $9F, $10, $B5, $B2, $68
                .byte $6C, $70, $76, $B4, $6C, $B2, $80, $7E, $7A, $70
                .byte $B4, $76, $B2, $7A, $7E, $80, $B3, $76, $B6, $68
                .byte $B2, $72, $70, $68, $B4, $5E, $B2, 2, $B3, $62, $66
                .byte $68, $72, $B2, $70, $72, $76, $70, $6C, $70, $72
                .byte $6C, $B2, $62, $72, $70, $5E, $B3, $6C, $66, $B3
                .byte $68, $B2, $5E, $6C, $B4, $68, 0, $B2, $50, $58, $5E
                .byte $68, $42, $50, $5A, $62, $4A, $50, $58, $62, $40
                .byte $4E, $58, $5E, $42, $50, $5A, $58, 2, $58, $5E, $68
                .byte $42, $50, $5A, $4E, 2, $54, $5E, $66, $42, $5A, $46
                .byte $5E, $4A, $62, $4E, $66, $50, $58, $5E, $58, $46
                .byte $4E, $54, $5E, $42, $50, $5A, $50, $46, $54, $5E
                .byte $66, $9F, $C, $B1, $50, $5E, 2, 2, $9F, $1A
                .byte $B1, $B4, $58, 2, 2, 0, $9F, $C, $B1, $B2, $50, $58
                .byte $5E, $68, $42, $50, $5A, $62, $4A, $50, $58, $62
                .byte $40, $4E, $58, $5E, $42, $50, $5A, $58, 2, $58, $5E
                .byte $68, $42, $50, $5A, $4E, 2, $54, $5E, $66, $42, $5A
                .byte $46, $5E, $4A, $62, $4E, $66, $50, $58, $5E, $58
                .byte $46, $4E, $54, $5E, $42, $50, $5A, $50, $46, $54
                .byte $5E, $66, $50, $5E, 2, 2, $70, $68, $5E, $58, 0
                .byte $D0, $B4, 2, $FF, 0, $9F, $A7, $F6, $C3, $B3, $4A
                .byte $B2, $4C, $50, $B3, $50, $54, $B3, $46, $B2, $4A
                .byte $4C, $B3, $4A, $42, $B3, $42, $B2, $46, $3C, $B2
                .byte $40, $42, $46, $4A, $B3, $40, $3C, $B4, $38, $FF
                .byte $B3, $4A, $B2, $50, $5A, $B3, $54, $4C, $B3, $50
                .byte $B2, $46, $4C, $B6, $4A, $B1, $4A, $46, $B3, $42
                .byte $B2, $46, $4A, $B3, $46, $3C, $42, $40, $42, $46
                .byte $9F, $A7, $F3, $B4, $4A, $B3, $46, $50, $B4, $4A
                .byte $46, $9F, 9, $F2, $B4, $46, 0, $9F, $A7, $B2, $C2
                .byte $B1, $5A, $50, $4A, $42, $38, $42, $4A, $50, $5A
                .byte $54, $4C, $42, $3C, $42, $4C, $54, $58, $50, $46
                .byte $40, $38, $40, $46, $50, $50, $4A, $42, $38, $32
                .byte $38, $42, $4A, $50, $4A, $42, $3C, $36, $3C, $42
                .byte $4A, $4E, $46, $3C, $36, $2E, $36, $3C, $46, $50
                .byte $46, $40, $38, $2E, $38, $40, $46, $50, $4C, $46
                .byte $40, $38, $34, $2E, $28, $FF, $C2, $B0, $5A, $50
                .byte $4A, $42, $38, $42, $4A, $50, $FF, $C2, $5A, $54
                .byte $4C, $42, $3C, $42, $4C, $54, $FF, $C2, $58, $50
                .byte $46, $40, $38, $40, $46, $50, $FF, $C2, $50, $4A
                .byte $42, $38, $32, $38, $42, $4A, $FF, $50, $4A, $42
                .byte $3C, $38, $32, $2A, $24, $20, $24, $2A, $32, $3C
                .byte $42, $4A, $50, $54, $4E, $46, $42, $3C, $36, $2E
                .byte $2A, $24, $2E, $36, $3C, $42, $46, $4E, $54, $C2
                .byte $50, $46, $40, $38, $2E, $38, $40, $46, $FF, $C2
                .byte $50, $4C, $46, $40, $38, $34, $2E, $28, $FF, 0, $9F
                .byte $A9, $B2, $C2, $B2, $5A, $50, $4A, $50, $5A, $4C
                .byte $46, $4C, $FF, $9F, $E, $B1, $5A, $4C, $46, $4C
                .byte 0, $C2, $B4, $42, $34, $38, $42, $3C, $46, $38, $B3
                .byte $38, $34, $FF, $B3, $2A, $B2, $2E, $32, $B3, $34
                .byte $1C, $B3, $20, $B2, $28, $2E, $B6, $2A, $B2, $28
                .byte $24, $20, $B3, $1E, $B4, $2E, $20, $B3, $38, $34
                .byte $B3, $42, $B2, $46, $4A, $B3, $4C, $34, $B3, $38
                .byte $B2, $40, $46, $B6, $42, $B2, $40, $3C, $38, $B3
                .byte $36, $B4, $2E, $20, $32, $2A, $26, $2A, $26, $26
                .byte 0, $C7, $B3, $41, 4, $B5, $41, $B1, 4, $B3, 7, $FF
                .byte $B3, $41, $B5, $81, $B0, $41, $41, $B1, $81, $41
                .byte 1, $41, 1, $41, $81, 1, $C8, $B2, $44, 4, $81, 4
                .byte $B1, 4, $41, $44, 1, $B2, $81, 4, $FF, $C4, $B3
                .byte 1, 4, $FF, 0, $5C, $8A, $EB, $8C, $D7, $89, $2D
                .byte $8B, $5C, $8A, $11, $8A, 0, 0, $E3, $8A, $2C, $8D
                .byte $ED, $89, $80, $8B, $C6, $8B, $24, $8C, $E, $8A
                .byte $E3, $8A, $9B, $8A, $FA, $8D, $24, $8E, 4, $8A, $3A
                .byte $8C, $28, $8B, $28, $8B
                .byte $48, $8E, $4D, $8E, 9, $8A, $81, $8C, $48, $8E, $48
                .byte $8E, $48, $8E, $9F, $10, $B1, $C2, $B2, $50, $54
                .byte $58, $5E, $B4, $54, $B2, $68, $66, $62, $58, $B4
                .byte $5E, $B2, $62, $66, $68, $B3, $5E, $B6, $50, $B2
                .byte $5A, $58, $50, $B4, $46, $B2, 2, $B3, $4A, $4E, $50
                .byte $5A, $B2, $58, $5A, $5E, $58, $54, $58, $5A, $54
                .byte $B2, $4A, $5A, $58, $46, $B3, $54, $4E, $B3, $50
                .byte $B2, $46, $54, $B4, $50, $FF, 0, $9F, $B4, $B1, $B2
                .byte $5E, $70, $5E, $70, $62, $72, $62, $72, $62, $70
                .byte $62, $70, $5E, $70, $5E, $70, $62, $72, $62, $B3
                .byte $5E, $B2, $70, $5E, $70, $62, $72, $62, $B3, $66
                .byte $B2, $76, $66, $76, $62, $72, $62, $B3, $72, $B2
                .byte $62, $B3, $72, $B2, $5E, $70, $5E, $70, $5A, $6C
                .byte $5A, $6C, $62, $72, $62, $72, $66, $76, $66, $76
                .byte $68, $70, $76, $70, $80, $76, $70, $68, $9F, $A9
                .byte $B2, $B1, $46, $40, $46, $40, $4A, $40, $46, $40
                .byte $46, $42, $46, $42, $4A, $42, $46, $42, $46, $40
                .byte $46, $40, $4A, $40, $46, $40, $46, $40, $46, $40
                .byte $4A, $40, $46, $40, $46, $42, $46, $42, $4A, $42
                .byte $B5, $46, $B1, $40, $46, $40, $4A, $40, $B5, $46
                .byte $B1, $42, $46, $42, $4A, $42, $B5, $46, $B1, $3C
                .byte $46, $3C, $4A, $3C, $B2, $46, $B1
                .byte $4A, $42, $4A, $42, $4E, $42, $4E, $42, $50, $42
                .byte $50, $42, $54, $42, $54, $42, $58, $50, $46, $40
                .byte $50, $46, $40, $38, $3C, $46, $4E, $46, $54, $4E
                .byte $46, $4E, $4A, $38, $4A, $38, $4A, $38, $4A, $38
                .byte $4E, $3C, $4E, $3C, $4E, $3C, $4E, $3C, $50, $40
                .byte $50, $40, $50, $40, $50, $40, $50, $46, $40, $38
                .byte $46, $40, $38, $40, 0
                .byte $9F, $A0, 0, $B4, $50, $5A, $B4, $4A, $B6, $40, $B1
                .byte $40, 2, $B6, $42, $B4, $50, $B2, 2, $B6, $42, $B4
                .byte $46, $B2, 2, $B3, $42, $46, $4A, $4E, $B4, $50, $46
                .byte $B4, $42, $46, $50, $B6, $38, $B2, 2, 0, $9F, $A0
                .byte 0, $C2, $B4, $38, $42, $32, $28, $B6, $2A, $B4, $38
                .byte $B2, 2, $B6, $2A, $B4, $2E, $B2, 2, $B3, $2A, $2E
                .byte $32, $36, $B4, $38, $2E, $B4, $2A, $2E, $38, $20
                .byte $FF, 0, $D0, $B4, 1, $FF, 0, $C8, $B3, 1, 4, $FF
                .byte $C8, $B3, 1, 4, $FF, $B3, 1, $B1, $25, $28, $2B
                .byte $2E, $CF, $B1, $2E, $2E, $B2, 1, $B1, $25, $28, $2B
                .byte $2B, $FF, 0, $BB, $8E, $28, $90, $7E, $93, $B8, $93
                .byte 3, $94, $FF, $FF, $73, $8E, $FB, $8E, $AA, $90, $3D
                .byte $91, $6B, $91, $45, $94, $FF, $FF, $81, $8E, $46
                .byte $8F, $76, $8F, $76, $8F, $E8, $8F, 5, $90, $E8, $8F
                .byte $F, $90, $E4, $91, $29, $92, $AF, $8E, $FF, $FF
                .byte $99, $8E, $86, $8F, $AA, $8F, $79, $92, $9F, $92
                .byte $33, $93, $B5, $8E, $FF, $FF, $A9, $8E, $B4, 2, 2
                .byte 2, 2, 0, $B4, 1, 1, 1, 1, 0, $9F, 4, $13, $C4, $B2
                .byte 2, $B5, $24, $28, $20, $B1, 2, $20, $B5, $28, $B2
                .byte 2, $B5, $24, $28, $B3, $1E, $20, $FF, $B4, $2C, $2C
                .byte $B1, $2C, $2C, 2, 2, $B3, $2C, $B1, 2, $2E, $28
                .byte $2A, $3C, $3A, $38, $36, $B4, $2C, $2C, $B1, $2C
                .byte $2C, 2, 2, $B3, $2C, $B1, $38, $B5, $38, $B1, $38
                .byte $B4, $38, $B5, 2, 0, $9F, 4, $13, $C4, $B1, $C, $C
                .byte $2C, $C, $C, $2E, $C, $C, $28, $C, $C, $C, $28, $2E
                .byte $C, $C, $C, $C, $2C, $C, $C, $2E, $C, $C, $B3, $2E
                .byte $2E, $FF, $B4, $24, $22, $B1, $1E, $1E, 2, 2, $B3
                .byte $1E, $B1, 2, $16, $10, $12, $24, $22, $20, $B4, $1E
                .byte $B1, $24, $B4, $22, $B1, $1E, $1E, 2, 2, $B3, $1E
                .byte $B1, $2E, $B5, $32, $B1, $28, $B4, $2A, $B5, 2, 0
                .byte $9F, $A0, 0, $B4, $24, $B3, $3C, $B1, $3C, $4A, $54
                .byte $4A, $B4, $24, $B3, $1E, $20, $B4, $24, $B3, $3C
                .byte $B1, 2, $4A, $54, $4A, $B4, $3C, $B3, $1E, $BA, $46
                .byte $44, $42, $40, $3E, $3C, $3A, $38, $36, $34, $32
                .byte $30, $2E, $2C, $2A, $26, 0, $9F, 0, 0, $CC, $B1
                .byte $24, $24, $FF, $B8, $1E, $24, $2E, $20, $24, $2E
                .byte 0, $C6, $B2, 1, 4, $FF, $B1, $81, $41, $81, $81
                .byte $41, $81, $81, $41, $41, 1, 4, 1, $C5, $B2, 1, 4
                .byte $FF, $C8, $B0, $81, $FF, $B1, $81, $41, $B0, $81
                .byte $81, $B1, $41, 0, $C8, $44, 4, $84, 4, $44, $44
                .byte $84, 4, $FF, $C5, $B1, $44, $44, $84, $44, $FF, $44
                .byte $44, $C4, $B0, $81, $FF, $B1, $81, $C2, $84, $44
                .byte $44, $FF, $44, $C5, $44, $44, $84, $44, $FF, $44
                .byte $44, $C4, $B0, $81, $FF, $C2, $B1, $84, $44, 1, 1
                .byte $FF, 4, 1, 4, 1, $81, $41, $B0, $81, $41, $81, $41
                .byte 0, $9F, 0, 0, $C5, $B1, $1E, $B0, $1E, $36, $FF
                .byte $B1, $1E, $32, $32, $36, $32, $32, $32
                .byte $2E, $2E, 2, $C2, $B1, $2E, $B0, $2E, $2E, $FF, 0
                .byte $B1, 2, $2E, $28, $2A, $3C, $3A, $38, $36, 0, $9F
                .byte $A0, 0, $B1, $28, $B5, $2A, $B1, $2E, $B4, $32, $BA
                .byte $32, $30, $2E, $2C, $2A, $28, $26, $24, $22, $20
                .byte $1E, $1C, 0, $9F, 4, $13, $B2, 2, $B5, $24, $20
                .byte $28, $24, $B1, $20, $24, 2, 2, $B5, $24, $20, $B4
                .byte $1A, $B2, 2, $B5, $24, $20, $28, $24, $B1, $20, $24
                .byte 2, 2, $B5, $24, $20, $B3, $1A, $B1, $2E, $2E, $2E
                .byte $2E, $9F, $D, $13, $2E, $2E, $2E, $2E, $2E, $2E
                .byte $2E, $2E, $2E, $2E, $2E, $2E, $9F, 4, $13, $2E, $2E
                .byte $2E, $2E, $9F, $D, $13, $2E, $2E, $2E, $2E, $2E
                .byte $2E, $2E, $2E, $9F, $C, $13, $2E, $2E, $2E, $2E
                .byte $2E, $2E, $2E, $2E, $9F, 4, $13, $B2, $12, $B5, $36
                .byte $32, $38, $36, $B1, $32, $36, $B2, $16, $B5, $36
                .byte $32, $B4, $2A, $9F, $A7, $F3, $B2, 4, $B5, $42, $40
                .byte $38, $B3, $3C, $B1, 2, $B2, 8, $B5, $42, $40, $46
                .byte $B3, $3C, $B1, 2, 0, $9F, 4, $13, $B1, $C, $C, $2C
                .byte $C, $C, $28, $C, $C, $2E, $C, $C, $2C, $C, $C, $28
                .byte $2C, $C, $C, $2C, $C, $C, $28, $C, $C, $B4, $20
                .byte $B1, $C, $C, $2C, $C, $C, $28, $C, $C, $2E, $C, $C
                .byte $2C, $C, $C, $28, $2C, $C, $C, $2C, $C, $C, $28
                .byte $C, $C, $B3, $20, $9F, 4, $13, $B1, 6, 6, 6, 8, $9F
                .byte $D, $13, 8, $9F, $C, $13, $24, $9F, $D, $13, 8, 8
                .byte $9F, $C, $13, $24, $9F, $D, $13, 8, 8, $9F, $C, $13
                .byte $24, $9F, $D, $13, 8, 8, 8, 8, $9F, 4, $13, $B1
                .byte 6, 6, 6, 8, $9F, $D, $13, 8, $9F, $C, $13, $24, $9F
                .byte $D, $13, 8, 8, $9F, $C, $13, $24, $9F, $D, $13, 8
                .byte 8, $9F, $C, $13, $24, $9F, $C, $13, 8, 8, 8, 8, $9F
                .byte $1D, $13, 8, 8, 8, 8, 0, $9F, $1D, $13, $B1, $12
                .byte $12, $2E, $12, $12, $2A, $12, $12, $32, $12, $12
                .byte $2E, $12, $12, $2A, $2E, $16, $16, $2E, $16, $16
                .byte $2A, $16, $16, $24, $16, $16, $B0, $16, $16, $B1
                .byte $16, $B0, $16, $16, $9F, 4, $13, $B1, $16, $1A, 0
                .byte $9F, $B9, $B2, $C4, $B0, $50, $46, $42, $46, $FF
                .byte $C2, $50, $46, $42, $38, $2E, $2A, $2E, $38, $FF
                .byte $C2, $50, $46, $50, $46, $42, $46, $50, $46, $FF
                .byte $C2, $50, $46, $42, $38, $2E, $2A, $2E, $38, $FF
                .byte $9F, $BE, $F1, $B2, $4A, $4E, $B1, $54, $B5, $58
                .byte $B2, $5C, $54, $B1, $4E, $B5, $54, $9F, $B0, $F2
                .byte $B5, $54, $B3, $54, $B1, 2, $B5, $54, $B3, $54, $B1
                .byte 2, $9F, $A9, $F2, $B4, $2C, 2, $9F, $AF, $B1, $B3
                .byte $3C, $44, $38, $44, $9F, $AE, $B1, $36, $44, $9F
                .byte $AD, $B1, $34, $44, $9F, $AC, $B1, $3C, $44, $38
                .byte $44, $36, $44, $9F, $AD, $B1, $34, $44, $9F, $BC
                .byte $B2, $B4, $4A, $9F, $BC, $B1, $32, $24, 0, $9F, $A0
                .byte 0, $B4, $24, $B3, $3C, $B1, $3C, $4A, $54, $4A, $B4
                .byte $24, $24, $B4, $24, $B3, $3C, $B1, $3C, $4A
                .byte $54, $4A, $B4, $24, $B3, $24, $9F, 0, 0, $B1, $1E
                .byte $1E, $1E, $20, $20, $38, $20, $20, $38, $20, $20
                .byte $20, $20, $20, $20, $20, $1E, $1E, $1E
                .byte $20, $20, $38, $20, $20, $38, $20, $20, $20, $20
                .byte $20, $20, $20, $20, $20, $20, $20, 0
                .byte $2A, $2A, $2A, $B0, $2A, $2A, $B1, $2A, $2A, $2A
                .byte $2A, $2A, $42, $B0, $2A, $2A, $B1, $2A, $2A, $2A
                .byte $2A, $B0, $2A, $2A, $C7, $B1, $2E, $B0, $2E, $2E
                .byte $FF, $B1, $2E, $32, $9F, $A0, 0, $B4, $34, $1C, $38
                .byte $20, $9F, $A0, 0, $B2, $36, $B3, $32, $B2, 2, $32
                .byte $B3, $2E, $B2, 2, $B5, $2E, $B3, $2A, $B1, 2, $B5
                .byte $28, $B3, $26, $B1, 2, $B4, $24, $24, $C4, $B4, $24
                .byte $3C, $FF, $24, 2, 2, 0, $B2, $44, 4, $C5, 1, 4, $FF
                .byte $B1, $81, $41, $81, $81, $41, $81, $81, $41, $41
                .byte 1, 4, 1, $C5, $B2, 1, 4, $FF, $BA, $81, $81, $C7
                .byte $B0, $81, $FF, $B1, $81, $41, $81, $81, 0, $44, $44
                .byte $84, $44, $44, 4, $84, $44, $44, 4, $84, 4, $84
                .byte $44, $81, $81, 4, $44, $84, $44, $44, 4, $84, $44
                .byte $84, $44, $84, $44, $BA, $81, $81, $B0, $81, $81
                .byte $81, $B1, $44, $B0, $81, $28, $B1, $44, 4, $84, $44
                .byte $44, 4, $84, $44, 4, $44, $84, $44, 4, $44, $84
                .byte 4, $44, 4, $84, 4, $44, $44, $84, 4, $B0, 4, 1, $44
                .byte $41, $84, 1, $44, $2E, 4, $44, 4, $41, $44, $41
                .byte $44, $41, $B0, $44, $2B, $28, $2E, 4, $2B, $28, $2E
                .byte 1, $2B, $28, $2E, 4, $2B, $28, $2E, $44, $2B, $28
                .byte $2E, 4, $2B, $28, $2E, 1, $2B, $84, $2E, $84, $2B
                .byte $44, $2E, $44, $2B, $28, $2E, 4, $2B, $28, $2E, 1
                .byte $2B, $28, $2E, 4, $2B, $28, $2E, $44, $2B, $28, $2E
                .byte 4, $2B, $28, $2E, $81, $41, $25, $81, $41, $44, $84
                .byte $2E, 0, $44, $2B, $2E, $2B, $44, $2B, $2E, $2B, $2E
                .byte $2B, $2E, $2B, 4, $2B, $2E, $28, $44, $2B, $2E, $2B
                .byte $44, $2B, $2E, $2B, $28, $2B, $2E, $2B, $28, $81
                .byte $84, $81, $B1, $44, 4, $81, $44, 1, $41, $81, 1
                .byte $44, 4, $81, $44, 1, $B0, $41, $41, $B2, $81, $B0
                .byte $44, $25, $25, $28, $28, $28, $28, $2B, $2B, $2B
                .byte $2B, $2B, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
                .byte $2E, $2E, 0, $9F, $D, $F1, $C4, $B0, $54, $3C, $54
                .byte $54, $3C, $54, $3C, $3C, $FF, $9F, 4, $15, $B5, $16
                .byte $B3, $12, $B1, 2, $B5, $10, $B3, $E, $B1, 2, $9F
                .byte $1D, $12, $B4, $C, $9F, $A9, $B1, $B4, $24, $9E
                .byte $35, $9F, $BC, $B1, $B4, $4A, $54, $4A, $54, $B4
                .byte $4A, $54, $4A, $54, $24, $24, 2, 0
                .byte $9F, $F, $F1, $B2, $50, $58, $5E, $68, $42, $50
                .byte $5A, $62, $4A, $50, $58, $62, $40, $4E, $58, $5E
                .byte $42, $50, $5A, $58, 2, $58, $5E, $68, $42, $50, $5A
                .byte $4E, 2, $54, $5E, $66, $9F, $E, $F1, $42, $5A, $46
                .byte $5E, $4A, $62, $4E, $66, $50, $58, $5E, $58, $46
                .byte $4E, $54, $5E, $9F, $D, $F1, $42, $50, $5A, $50
                .byte $46, $54, $5E, $66, $50, $5E, 2, 2, $70, $68, $5E
                .byte $58, 0, $B2, $50, $58, $5E, $68, $42, $50, $5A, $62
                .byte $4A, $50, $58, $62, $40, $4E, $58, $5E, $42, $50
                .byte $5A, $58, 2, $58, $5E, $68, $42, $50, $5A, $4E, 2
                .byte $54, $5E, $66, $42, $5A, $46, $5E, $4A, $62, $4E
                .byte $66, $50, $58, $5E, $58, $46, $4E, $54, $5E, $42
                .byte $50, $5A, $50, $46, $54, $5E, $66, $50, $5E, 2, 2
                .byte $70, $68, $5E, $58, 0, $9F, $BF, $B0, $B2, $50, $54
                .byte $58, $5E, $B6, $54, $B2, 2, $B2, $68, $66, $62, $58
                .byte $B3, $5E, 2, $B2, $62, $66, $68, $B3, $5E, $B6, $50
                .byte $B2, $5A, $58, $50, $B4, $46, $B2, 2, $B3, $4A, $4E
                .byte $50, $5A, $B2, $58, $5A, $5E, $58, $54, $58, $5A
                .byte $54, $B2, $4A, $5A, $58, $46, $B3, $54, $4E, $B3
                .byte $50, $B2, $46, $54, $B3, $50, 2, 0

; end of 'BANK1B'