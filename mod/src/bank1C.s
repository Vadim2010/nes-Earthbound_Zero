.include "nes.inc"
.include "..\res\structures.inc"

.segment "BANK_C"

; ===========================================================================

; Segment type: Pure code
;.segment BANK1C
;* =  $8000

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1C8000:
    jmp sub_1C8277
; End of function sub_1C8000


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1C8003:
    jmp sub_1C8299
; End of function sub_1C8003


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1C8006:
    .export sub_1C8006

    jmp sub_1C8216
; End of function sub_1C8006

; ---------------------------------------------------------------------------
    .word sub_1C83FA, loc_1C843A, sub_1C8393, sub_1C83DC, sub_1C8420
    .word sub_1C835C, sub_1C8346, sub_1C8328, sub_1C847D, sub_1C8321
    .word sub_1C8401, sub_1C8441, sub_1C83A1, sub_1C83E3, sub_1C8427
    .word loc_1C8374, sub_1C8410, sub_1C832F, sub_1C8484, sub_1C8410
    .word sub_1C86C4, loc_1C8772, loc_1C8747, sub_1C867C, sub_1C8726
    .word sub_1C87A9, sub_1C875E, loc_1C8610, sub_1C8829, sub_1C85EB
    .word sub_1C85E6, sub_1C8699, sub_1C85DF, sub_1C866E, sub_1C85A4
    .word loc_1C8733, sub_1C860D, sub_1C8962, sub_1C86CB, sub_1C877F
    .word loc_1C8752, sub_1C8683, sub_1C870F, sub_1C87B7, loc_1C8769
    .word sub_1C861E, sub_1C880E, sub_1C85F2, sub_1C85AF, sub_1C86A0
    .word sub_1C8683, sub_1C8683, sub_1C8683, loc_1C873E, sub_1C861E
    .word loc_1C896C, sub_1C885E, sub_1C884E, sub_1C88D4, sub_1C88E5
    .word sub_1C887E, sub_1C88B4, sub_1C88BA, sub_1C88EC, sub_1C84F6
    .word loc_1C854D, sub_1C8542, sub_1C8509, sub_1C8559, sub_1C8559

; =============== S U B R O U T I N E =======================================


sub_1C8095:
                LDA     #0
                BEQ     loc_1C80A3
; End of function sub_1C8095


; =============== S U B R O U T I N E =======================================


sub_1C8099:
                LDA     #8
                BNE     loc_1C80A3
; End of function sub_1C8099


; =============== S U B R O U T I N E =======================================


sub_1C809D:
                LDA     #$C
                BNE     loc_1C80A3
; End of function sub_1C809D


; =============== S U B R O U T I N E =======================================


sub_1C80A1:
    .importzp APU_DM_CR, PointerAPU, apu_B0

                LDA     #4

loc_1C80A3:
                STA     apu_B0
                LDA     #$40
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                STY     PointerAPU
                LDA     #$81
                STA     PointerAPU+1
                LDY     #0

loc_1C80B1:
                LDA     (PointerAPU),Y
                STA     (apu_B0),Y
                INY
                TYA
                CMP     #4
                BNE     loc_1C80B1
                RTS
; End of function sub_1C80A1


; =============== S U B R O U T I N E =======================================


sub_1C80BC:
    .import apu_7FF
    .importzp apu_BB, apu_BC

                LDA     apu_BB
                AND     #2
                STA     apu_7FF
                LDA     apu_BC
                AND     #2
                EOR     apu_7FF
                CLC
                BEQ     loc_1C80CE
                SEC

loc_1C80CE:
                ROR     apu_BB
                ROR     apu_BC
                RTS
; End of function sub_1C80BC


; =============== S U B R O U T I N E =======================================


sub_1C80D3:
    .import byte_7D5, byte_7DA
    .importzp apu_BD

                LDX     apu_BD
                INC     byte_7DA,X
                LDA     byte_7DA,X
                CMP     byte_7D5,X
                BNE     locret_1C80E5
                LDA     #0
                STA     byte_7DA,X

locret_1C80E5:
                RTS
; End of function sub_1C80D3

; ---------------------------------------------------------------------------
byte_1C80E6:    .byte $53, $93, $42, $93, $42, $93, $42, $93, $42, $93
                .byte $42, $93, $42, $93, $42, $93, $42, $93, 0, 0
byte_1C80FA:    .byte $A4, $AC, $A3, $AC, $A4, $AC, $16, $7F, $E, $80
                .byte $3E, $7F, $E, 8, $1F, $7F, $F, $C0, $3F, $7F
byte_1C810E:    .byte 0, $B0, $11, $7F, $E, $30, $9B, $7F, $C, $28
byte_1C8118:    .byte $10, $7F
byte_1C811A:    .byte $87, $B0, $A, $7F, $F, 8
byte_1C8120:    .byte $B0, $7F, $1C, $40, $B0, $7F, $32, $40, $B1, $7F
byte_1C812A:    .byte $40, $40, $B1, $7F
byte_1C812E:    .byte $42, $40, $B1, $8E, $A0, $47, $B1, $7F, $FF, $47
                .byte $1F, $7F, $30
byte_1C813B:    .byte 8, $1F, $BB, $D4, 8, $81, $A7, $E1, $88, $99, $7F
byte_1C8146:    .byte $15, $88, $9B, $7F
byte_1C814A:    .byte $1F, $88, $D8, $7F, $20, $28, $D1, $7F, $20, $28
                .byte $D9, $7F
byte_1C8156:    .byte $54, $28, $9E, $9D, $C0, 8, $9C, $9A, $E8, 8, $9E
                .byte $7F, $40, 8, $94, $C6, $67, $28, $96, $CE, $47, $28
                .byte $D9, $A5, $7B, $F9, $D6, $A5, $90, $F9, $DA, $96
                .byte $46, $F9, $96, $7F, $76, $20, $82, $7F, $27, $F8
                .byte $94, $A5, $89, $48, $96, $AD, $7A, $58, $93, $A5
                .byte $99, $28, $9F, $84, $80, $FA, $94, $84, $24, $18
                .byte $94, $7F, $94, $18, $95, $B4, $57, $F8, 2, $7F, $67
                .byte 9, $7F, $7F, $E1, $A, $7F, $7F, $21
byte_1C81A7:    .byte 9, 4, $7F, $5D, $28, 3, $7F, $38, $28

; =============== S U B R O U T I N E =======================================


sub_1C81B0:
                LDX     #3
                LDA     #$79
                LDY     #$81
                BNE     loc_1C81D3
; End of function sub_1C81B0


; =============== S U B R O U T I N E =======================================


sub_1C81B8:
                LDX     #4
                LDA     #$89
                LDY     #$8F
                BNE     loc_1C81D3
; End of function sub_1C81B8


; =============== S U B R O U T I N E =======================================


sub_1C81C0:
    .import byte_7FC

                LDA     byte_7FC
                BNE     exit_0
                LDX     #1
                LDA     #$31
                LDY     #$55
                BNE     loc_1C81D3
; End of function sub_1C81C0


; =============== S U B R O U T I N E =======================================


sub_1C81CD:
    .import Sound1, Noise
    .importzp apu_BF

                LDX     #0
                LDA     #9
                LDY     #$1D

loc_1C81D3:
                STA     apu_B0
                STX     apu_BD
                LDA     Sound1,X
                BEQ     loc_1C820D

loc_1C81DC:
                STA     apu_BF
                STA     PointerAPU
                LDY     #$80
                STY     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                AND     #7
                TAY
                LDA     byte_1C8205,Y
                TAY
                DEC     PointerAPU
                LDA     PointerAPU
                AND     #$F8
                STA     PointerAPU
                ASL     PointerAPU
                TYA
                ORA     PointerAPU
                TAY
                LDA     (apu_B0),Y
                STA     PointerAPU
                INY
                LDA     (apu_B0),Y
                STA     PointerAPU+1
                JMP     (PointerAPU)
; ---------------------------------------------------------------------------
byte_1C8205:    .byte $E, 0, 2, 4, 6, 8, $A, $C
; ---------------------------------------------------------------------------

loc_1C820D:
                LDA     Noise,X
                BEQ     exit_0
                STY     apu_B0
                BNE     loc_1C81DC
; End of function sub_1C81CD


; =============== S U B R O U T I N E =======================================


sub_1C8216:
    .import apu_786, apu_78B, apu_76C

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

@next_byte:
                LDA     byte_1C80E6,Y
                STA     apu_76C,Y
                INY
                TYA
                CMP     #$14
                BNE     @next_byte
                JSR     sub_1C8299

exit_0:
                RTS
; End of function sub_1C8216

; ---------------------------------------------------------------------------
off_1C8238:     .word byte_1C935A, byte_1C9365, byte_1C9370, byte_1C937C
                .word byte_1C9388, byte_1C9391, byte_1C939E, byte_1C93AA

; =============== S U B R O U T I N E =======================================


sub_1C8248:
    .import CurrentGame

                lda     CurrentGame + GAME_SAVE::Flags+$1E
                sta     apu_B0
                ldy     #0
                beq     loc_1C825D

loc_1C8251:
                lda     #$42
                sta     apu_76C+2,Y
                iny
                lda     #$93
                sta     apu_76C+2,Y
                iny

loc_1C825D:
                tya
                cmp     #$10
                beq     locret_1C8276
                lsr     apu_B0
                bcc     loc_1C8251
                lda     off_1C8238,Y
                sta     apu_76C+2,Y
                iny
                lda     off_1C8238,Y
                sta     apu_76C+2,Y
                iny
                bne     loc_1C825D

locret_1C8276:
                rts
; End of function sub_1C8248


; =============== S U B R O U T I N E =======================================


sub_1C8277:
    .import ModeSRAM

                LDA     #$C0            ; APU mode 5-step, IRQ disable
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
                JSR     sub_1C80BC
                JSR     sub_1C81CD
                JSR     sub_1C81B8
                JSR     sub_1C81B0
                JSR     sub_1C81C0
                JSR     loc_1C8911
                LDA     #0
                LDX     #6

@clear_next:
                STA     ModeSRAM,X
                DEX
                BNE     @clear_next
                RTS
; End of function sub_1C8277


; =============== S U B R O U T I N E =======================================


sub_1C8299:
    .import apu_79C

                JSR     sub_1C82A8

loc_1C829C:
                JSR     sub_1C82C6
                LDA     #0
                STA     DMC_CNTR        ; pAPU Delta Modulation D/A Register (W)
                STA     apu_79C
                RTS
; End of function sub_1C8299


; =============== S U B R O U T I N E =======================================


sub_1C82A8:
    .import CurrentMusic, PulseChannels, apu_7C8, apu_7C9, apu_7CA

                LDA     #0
                STA     apu_7C8
                STA     apu_7C9
                STA     apu_7CA
                STA     CurrentMusic
                STA     PulseChannels
                TAY

@clear:
                LDA     #0
                STA     Noise,Y
                INY
                TYA
                CMP     #6
                BNE     @clear
                RTS
; End of function sub_1C82A8


; =============== S U B R O U T I N E =======================================


sub_1C82C6:
                LDA     #0
                STA     DMC_CNTR        ; pAPU Delta Modulation D/A Register (W)
                LDA     #$10
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                STA     PL2_VOL         ; pAPU Pulse #2 Control Register (W)
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                LDA     #0
                STA     TRI_LINEAR      ; pAPU Triangle Control Register #1 (W)
                RTS
; End of function sub_1C82C6


; =============== S U B R O U T I N E =======================================


sub_1C82DC:
    .import byte_7C7, byte_7DF, byte_7E3, byte_7E7

                LDX     apu_BD
                STA     byte_7D5,X
                TXA
                STA     byte_7C7,X
                TYA
                BEQ     loc_1C830A
                TXA
                BEQ     loc_1C8307
                CMP     #1
                BEQ     loc_1C82F8
                CMP     #2
                BEQ     loc_1C82FD
                CMP     #3
                BEQ     loc_1C8302
                RTS
; ---------------------------------------------------------------------------

loc_1C82F8:
                JSR     sub_1C8095
                BEQ     loc_1C830A

loc_1C82FD:
                JSR     sub_1C80A1
                BEQ     loc_1C830A

loc_1C8302:
                JSR     sub_1C8099
                BEQ     loc_1C830A

loc_1C8307:
                JSR     sub_1C809D

loc_1C830A:
                LDA     apu_BF
                STA     Noise,X
                LDA     #0
                STA     byte_7DA,X

loc_1C8314:
                STA     byte_7DF,X
                STA     byte_7E3,X
                STA     byte_7E7,X
                STA     PulseChannels

locret_1C8320:
                RTS
; End of function sub_1C82DC


; =============== S U B R O U T I N E =======================================


sub_1C8321:
                LDA     #$30
                LDY     #$1C
                JMP     sub_1C82DC
; End of function sub_1C8321


; =============== S U B R O U T I N E =======================================


sub_1C8328:
                LDA     #$C
                LDY     #$14
                JMP     sub_1C82DC
; End of function sub_1C8328


; =============== S U B R O U T I N E =======================================


sub_1C832F:
                JSR     sub_1C80D3
                BNE     locret_1C8320
                LDY     #$14
                JSR     sub_1C809D
                INC     byte_7DF
                LDA     byte_7DF
                CMP     #4
                BNE     locret_1C8320
                JMP     sub_1C8415
; End of function sub_1C832F


; =============== S U B R O U T I N E =======================================


sub_1C8346:
    .import Sound3

                LDA     #4
                LDY     #$14
                JSR     sub_1C82DC
                LDA     #2
                STA     Sound3
                LDA     apu_BB
                AND     #$F7

loc_1C8356:
                AND     #$F
                STA     NOISE_LO        ; pAPU Noise Frequency Register #1 (W)
                RTS
; End of function sub_1C8346


; =============== S U B R O U T I N E =======================================


sub_1C835C:
                LDA     #6
                LDY     #$18
                JSR     sub_1C82DC
                LDA     byte_1C811A
                STA     byte_7DF
                LDA     byte_1C8118
                STA     byte_7E3

locret_1C836F:
                RTS
; End of function sub_1C835C


; =============== S U B R O U T I N E =======================================


sub_1C8370:
                LDA     #$86
                BNE     loc_1C838F

loc_1C8374:
                JSR     sub_1C80D3
                BNE     locret_1C836F
                INC     byte_7DF
                INC     byte_7E3
                LDA     byte_7E3
                CMP     #$19
                BNE     loc_1C8389
                JMP     sub_1C8415
; ---------------------------------------------------------------------------

loc_1C8389:
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                LDA     byte_7DF

loc_1C838F:
                STA     NOISE_LO        ; pAPU Noise Frequency Register #1 (W)
                RTS
; End of function sub_1C8370


; =============== S U B R O U T I N E =======================================


sub_1C8393:
                LDA     #5
                LDY     #$C
                JSR     sub_1C82DC
                LDA     byte_1C810E
                STA     byte_7DF

locret_1C83A0:
                RTS
; End of function sub_1C8393


; =============== S U B R O U T I N E =======================================


sub_1C83A1:
                LDA     byte_7E7
                CMP     #2
                BEQ     sub_1C83B1
                JSR     sub_1C80D3
                BNE     locret_1C83A0
                INC     byte_7E7
                RTS
; End of function sub_1C83A1


; =============== S U B R O U T I N E =======================================


sub_1C83B1:
                JSR     sub_1C80D3
                BNE     loc_1C83CC
                DEC     byte_7DF
                DEC     byte_7DF
                DEC     byte_7DF
                INC     byte_7E3
                LDA     byte_7E3
                CMP     #$F
                BNE     locret_1C83A0
                JMP     sub_1C8436
; ---------------------------------------------------------------------------

loc_1C83CC:
                INC     byte_7DF
                LDA     byte_7DF

loc_1C83D2:
                STA     NOISE_LO        ; pAPU Noise Frequency Register #1 (W)

locret_1C83D5:
                RTS
; End of function sub_1C83B1


; =============== S U B R O U T I N E =======================================


sub_1C83D6:
                JSR     sub_1C845C
                JMP     loc_1C83D2
; End of function sub_1C83D6


; =============== S U B R O U T I N E =======================================


sub_1C83DC:
                LDA     #3
                LDY     #$10
                JMP     sub_1C82DC
; End of function sub_1C83DC


; =============== S U B R O U T I N E =======================================


sub_1C83E3:
                JSR     sub_1C80D3
                BNE     locret_1C83D5
                INC     byte_7DF
                LDA     byte_7DF
                ORA     #$10
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                CMP     #$10
                BNE     locret_1C83D5
                JMP     sub_1C8415
; End of function sub_1C83E3


; =============== S U B R O U T I N E =======================================


sub_1C83FA:
                LDA     #$10
                LDY     #8
                JMP     sub_1C82DC
; End of function sub_1C83FA


; =============== S U B R O U T I N E =======================================


sub_1C8401:
                JSR     sub_1C80D3
                BEQ     sub_1C8415
                LDX     #$81
                JSR     sub_1C83D6
                LDX     #$89
                JMP     loc_1C8450
; End of function sub_1C8401


; =============== S U B R O U T I N E =======================================


sub_1C8410:
                JSR     sub_1C80D3
                BNE     locret_1C841F
; End of function sub_1C8410


; =============== S U B R O U T I N E =======================================


sub_1C8415:
                LDA     #0
                STA     Noise
                LDA     #$10
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)

locret_1C841F:
                RTS
; End of function sub_1C8415


; =============== S U B R O U T I N E =======================================


sub_1C8420:
                LDA     #$20
                LDY     #8
                JMP     sub_1C82DC
; End of function sub_1C8420


; =============== S U B R O U T I N E =======================================


sub_1C8427:
                JSR     sub_1C80D3
                BEQ     sub_1C8415
                LDX     #$91
                JSR     sub_1C83D6
                LDX     #$A1
                JMP     loc_1C8450
; End of function sub_1C8427


; =============== S U B R O U T I N E =======================================


sub_1C8436:
                LDA     #2
                STA     apu_BF

loc_1C843A:
                LDA     #$40
                LDY     #8
                JMP     sub_1C82DC
; End of function sub_1C8436


; =============== S U B R O U T I N E =======================================


sub_1C8441:
                JSR     sub_1C80D3
                BNE     loc_1C8449
                JMP     sub_1C8415
; ---------------------------------------------------------------------------

loc_1C8449:
                LDX     #$B1
                JSR     sub_1C83D6
                LDX     #$D1

loc_1C8450:
                JSR     sub_1C845C
                ORA     #$10
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                INC     byte_7DF
                RTS
; End of function sub_1C8441


; =============== S U B R O U T I N E =======================================


sub_1C845C:
    .importzp byte_B4

                STX     apu_B0
                LDY     #$C1
                STY     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDX     byte_7DF
                TXA
                LSR     A
                TAY
                LDA     (apu_B0),Y
                STA     byte_B4
                TXA
                AND     #1
                BEQ     loc_1C8476
                LDA     byte_B4
                AND     #$F
                RTS
; ---------------------------------------------------------------------------

loc_1C8476:
                LDA     byte_B4
                LSR     A
                LSR     A
                LSR     A
                LSR     A

locret_1C847C:
                RTS
; End of function sub_1C845C


; =============== S U B R O U T I N E =======================================


sub_1C847D:
                LDA     #8
                LDY     #4
                JMP     sub_1C82DC
; End of function sub_1C847D


; =============== S U B R O U T I N E =======================================


sub_1C8484:
                JSR     sub_1C80D3
                BNE     locret_1C847C
                LDA     byte_7DF
                INC     byte_7DF
                CMP     #$28
                BEQ     loc_1C84B9
                CMP     #$10
                BEQ     loc_1C84AE
                CMP     #$18
                BEQ     loc_1C84AA
                CMP     #$20
                BEQ     loc_1C84A6
                CMP     #$10
                BCS     locret_1C847C
                JMP     loc_1C8356
; ---------------------------------------------------------------------------

loc_1C84A6:
                LDA     #$31
                BNE     loc_1C84B0

loc_1C84AA:
                LDA     #$32
                BNE     loc_1C84B0

loc_1C84AE:
                LDA     #$33

loc_1C84B0:
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                LDA     #$F
                STA     NOISE_LO        ; pAPU Noise Frequency Register #1 (W)
                RTS
; ---------------------------------------------------------------------------

loc_1C84B9:
                JMP     sub_1C8415
; End of function sub_1C8484


; =============== S U B R O U T I N E =======================================


sub_1C84BC:
    .import byte_7D9, byte_7DE, byte_7F9

                STA     byte_7D9
                JSR     sub_1C80A1
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
                JMP     loc_1C8314
; End of function sub_1C84BC


; =============== S U B R O U T I N E =======================================


sub_1C84DD:
                JSR     loc_1C8688
                JSR     sub_1C8840
                INC     PulseChannels
                LDA     #0
                STA     byte_7FC
                LDX     #1
                LDA     #$7F

loc_1C84EF:
                STA     PL1_VOL,X       ; pAPU Pulse #1 Control Register (W)
                STA     PL2_VOL,X       ; pAPU Pulse #2 Control Register (W)
                RTS
; End of function sub_1C84DD


; =============== S U B R O U T I N E =======================================


sub_1C84F6:
    .import byte_7E0

                LDY     #$24
                JSR     sub_1C8095
                LDA     #$A
                LDY     #$20
                JSR     sub_1C84BC
                LDA     byte_1C8120
                STA     byte_7E0

locret_1C8508:
                RTS
; End of function sub_1C84F6


; =============== S U B R O U T I N E =======================================


sub_1C8509:
    .import byte_7E4

                JSR     sub_1C80D3
                BNE     loc_1C8533
                LDA     byte_7E4
                BEQ     loc_1C8518
                DEC     byte_7E0
                BNE     loc_1C851B

loc_1C8518:
                INC     byte_7E0

loc_1C851B:
                LDA     byte_7E0
                CMP     #$B0
                BNE     loc_1C8525
                JMP     sub_1C84DD
; ---------------------------------------------------------------------------

loc_1C8525:
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                STA     PL2_VOL         ; pAPU Pulse #2 Control Register (W)
                CMP     #$BF
                BNE     locret_1C8508
                INC     byte_7E4
                RTS
; ---------------------------------------------------------------------------

loc_1C8533:
                LDY     #$1A
                LDA     byte_7DE
                AND     #1
                BNE     loc_1C853E
                LDY     #$1B

loc_1C853E:
                STY     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                RTS
; End of function sub_1C8509


; =============== S U B R O U T I N E =======================================


sub_1C8542:
                LDY     #$30
                JSR     sub_1C8095
                LDA     #8
                LDY     #$34
                BNE     loc_1C8556

loc_1C854D:
                LDY     #$2C
                JSR     sub_1C8095
                LDA     #3
                LDY     #$28

loc_1C8556:
                JMP     sub_1C84BC
; End of function sub_1C8542


; =============== S U B R O U T I N E =======================================


sub_1C8559:
                JSR     sub_1C857E
                JSR     sub_1C80D3
                BNE     sub_1C857E
                LDX     #0
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #$12
                BEQ     loc_1C8576
                CMP     #$E
                BCC     loc_1C8579
                LDA     #$BE
                JMP     loc_1C84EF
; ---------------------------------------------------------------------------

loc_1C8576:
                JMP     sub_1C84DD
; ---------------------------------------------------------------------------

loc_1C8579:
                ORA     #$B0
                JMP     loc_1C84EF
; End of function sub_1C8559


; =============== S U B R O U T I N E =======================================


sub_1C857E:
                INC     byte_7E4
                LDA     byte_7E4
                AND     #7
                TAY
                LDA     byte_1C859C,Y
                CLC
                ADC     byte_1C812A
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     byte_1C859C,Y
                CLC
                ADC     byte_1C812E
                STA     PL2_LO          ; pAPU Pulse #2 Fine Tune (FT) Register (W)

locret_1C859B:
                RTS
; End of function sub_1C857E

; ---------------------------------------------------------------------------
byte_1C859C:    .byte 0, 1, 2, 1, 0, $FF, $FE, $FF

; =============== S U B R O U T I N E =======================================


sub_1C85A4:
                LDA     #$A
                LDY     #$98
                JMP     sub_1C82DC
; End of function sub_1C85A4

; ---------------------------------------------------------------------------
byte_1C85AB:    .byte $14, $93, $94, $D3

; =============== S U B R O U T I N E =======================================


sub_1C85AF:
                LDA     byte_7E4
                BEQ     loc_1C85C1
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #$16
                BNE     locret_1C859B
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C85C1:
                LDA     byte_7E0
                AND     #3
                TAY
                LDA     byte_1C85AB,Y
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #8
                BNE     locret_1C859B
                INC     byte_7E4
                LDY     #$7C
                JMP     sub_1C8095
; End of function sub_1C85AF


; =============== S U B R O U T I N E =======================================


sub_1C85DF:
                LDA     #2
                LDY     #$90
                JMP     sub_1C82DC
; End of function sub_1C85DF


; =============== S U B R O U T I N E =======================================


sub_1C85E6:
                LDY     #$78
                JMP     sub_1C82DC
; End of function sub_1C85E6


; =============== S U B R O U T I N E =======================================


sub_1C85EB:
                LDA     #4
                LDY     #$64
                JMP     sub_1C82DC
; End of function sub_1C85EB


; =============== S U B R O U T I N E =======================================


sub_1C85F2:
                JSR     sub_1C80D3
                BNE     locret_1C866D
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #1
                BEQ     loc_1C8608
                CMP     #4
                BNE     locret_1C866D
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C8608:
                LDY     #$68
                JMP     sub_1C8095
; End of function sub_1C85F2


; =============== S U B R O U T I N E =======================================


sub_1C860D:
    .import byte_7E8

                INC     apu_78B

loc_1C8610:
                LDA     #$F
                LDY     #$44
                JSR     sub_1C82DC
                LDA     byte_1C8146

loc_1C861A:
                STA     byte_7E8
                RTS
; End of function sub_1C860D


; =============== S U B R O U T I N E =======================================


sub_1C861E:
    .import NewMusic, byte_7D6

                JSR     sub_1C80D3
                BNE     loc_1C8661
                INC     byte_7E4
                LDA     byte_7E4
                CMP     #8
                BEQ     loc_1C865A
                CMP     #$24
                BEQ     loc_1C8648

loc_1C8631:
                AND     #1
                BEQ     loc_1C863C
                LDA     byte_1C814A
                LDY     #$48
                BNE     loc_1C8641

loc_1C863C:
                LDA     byte_1C8146
                LDY     #$44

loc_1C8641:
                PHA
                JSR     sub_1C8095
                PLA
                BNE     loc_1C861A

loc_1C8648:
                LDA     apu_78B
                BEQ     loc_1C8657
                LDA     #0
                STA     apu_78B
                LDA     #$25
                STA     NewMusic

loc_1C8657:
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C865A:
                LDA     #2
                STA     byte_7D6
                BNE     loc_1C8631

loc_1C8661:
                DEC     byte_7E8
                DEC     byte_7E8
                LDA     byte_7E8
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)

locret_1C866D:
                RTS
; End of function sub_1C861E


; =============== S U B R O U T I N E =======================================


sub_1C866E:
                LDA     byte_7F9
                CMP     #7
                BEQ     locret_1C866D
                LDA     #2
                LDY     #$94
                JMP     sub_1C82DC
; End of function sub_1C866E


; =============== S U B R O U T I N E =======================================


sub_1C867C:
                LDA     #$10
                LDY     #$8C
                JMP     sub_1C82DC
; End of function sub_1C867C


; =============== S U B R O U T I N E =======================================


sub_1C8683:
                JSR     sub_1C80D3
                BNE     locret_1C8698

loc_1C8688:
                LDA     #$10
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                LDA     #0
                STA     apu_7C8
                STA     byte_7F9
                INC     PulseChannels

locret_1C8698:
                RTS
; End of function sub_1C8683


; =============== S U B R O U T I N E =======================================


sub_1C8699:
                LDA     #6
                LDY     #$80
                JMP     sub_1C82DC
; End of function sub_1C8699


; =============== S U B R O U T I N E =======================================


sub_1C86A0:
                JSR     sub_1C80D3
                BNE     locret_1C8698
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #1
                BEQ     loc_1C86BA
                CMP     #2
                BEQ     loc_1C86BF
                CMP     #3
                BNE     locret_1C8698
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C86BA:
                LDY     #$84
                JMP     sub_1C8095
; ---------------------------------------------------------------------------

loc_1C86BF:
                LDY     #$88
                JMP     sub_1C8095
; End of function sub_1C86A0


; =============== S U B R O U T I N E =======================================


sub_1C86C4:
                LDA     #8
                LDY     #$6C
                JMP     sub_1C82DC
; End of function sub_1C86C4


; =============== S U B R O U T I N E =======================================


sub_1C86CB:
                JSR     sub_1C80D3
                BEQ     sub_1C86ED
                LDA     byte_7E8
                CMP     #2
                BNE     loc_1C86E9
                LDA     #0
                STA     byte_7E8
                LDY     byte_7E4
                INC     byte_7E4
                LDA     byte_1C80FA,Y
                STA     PL1_SWEEP       ; pAPU Pulse #1 Ramp Control Register (W)
                RTS
; ---------------------------------------------------------------------------

loc_1C86E9:
                INC     byte_7E8
                RTS
; End of function sub_1C86CB


; =============== S U B R O U T I N E =======================================


sub_1C86ED:
                LDA     #0
                STA     byte_7E4
                LDA     byte_7E0
                BEQ     loc_1C8702
                CMP     #1
                BEQ     loc_1C8706
                CMP     #2
                BNE     locret_1C870E
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C8702:
                LDY     #$70
                BNE     loc_1C8708

loc_1C8706:
                LDY     #$74

loc_1C8708:
                JSR     sub_1C8095
                INC     byte_7E0

locret_1C870E:
                RTS
; End of function sub_1C86ED


; =============== S U B R O U T I N E =======================================


sub_1C870F:
                JSR     sub_1C80D3
                BNE     locret_1C870E
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #2
                BNE     loc_1C8721
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C8721:
                LDY     #$50
                JMP     sub_1C8095
; End of function sub_1C870F


; =============== S U B R O U T I N E =======================================


sub_1C8726:
                LDA     byte_7F9
                CMP     #7
                BEQ     locret_1C870E
                LDA     #3
                LDY     #$4C
                BNE     loc_1C875B

loc_1C8733:
                LDA     #$10
                LDY     #$3C
                JSR     loc_1C875B
                LDA     #$18
                BNE     loc_1C877B

loc_1C873E:
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$3C
                BNE     loc_1C8786

loc_1C8747:
                LDA     #6
                LDY     #$58
                JSR     loc_1C875B
                LDA     #$10
                BNE     loc_1C877B

loc_1C8752:
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$58
                BNE     loc_1C8786

loc_1C875B:
                JMP     sub_1C82DC
; End of function sub_1C8726


; =============== S U B R O U T I N E =======================================


sub_1C875E:
                LDA     #5
                LDY     #$5C
                JSR     loc_1C875B
                LDA     #8
                BNE     loc_1C877B

loc_1C8769:
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$5C
                BNE     loc_1C8786

loc_1C8772:
                LDA     #6
                LDY     #$60
                JSR     loc_1C875B
                LDA     #0

loc_1C877B:
                STA     byte_7E4

locret_1C877E:
                RTS
; End of function sub_1C875E


; =============== S U B R O U T I N E =======================================


sub_1C877F:
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$60

loc_1C8786:
                JSR     sub_1C8095
                CLC
                LDA     byte_7E4
                ADC     byte_7E0
                TAY
                LDA     byte_1C87EE,Y
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDY     byte_7E0
                LDA     byte_1C87E5,Y
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                BNE     loc_1C87A5
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C87A5:
                INC     byte_7E0

locret_1C87A8:
                RTS
; End of function sub_1C877F


; =============== S U B R O U T I N E =======================================


sub_1C87A9:
                LDA     #4
                LDY     #$54
                JSR     sub_1C82DC
                LDA     byte_1C8156
                STA     byte_7E0
                RTS
; End of function sub_1C87A9


; =============== S U B R O U T I N E =======================================


sub_1C87B7:
                JSR     sub_1C80D3
                BNE     locret_1C87A8
                INC     byte_7E4
                LDA     byte_7E4
                CMP     #5
                BNE     loc_1C87C9
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C87C9:
                LDA     byte_7E0
                LSR     A
                LSR     A
                LSR     A
                STA     byte_7E8
                LDA     byte_7E0
                CLC
                SBC     byte_7E8
                STA     byte_7E0
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     #$28

loc_1C87E1:
                STA     PL1_HI          ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

locret_1C87E4:
                RTS
; End of function sub_1C87B7

; ---------------------------------------------------------------------------
byte_1C87E5:    .byte $9E, $9B, $99, $96, $94, $93, $92, $91, 0
byte_1C87EE:    .byte $20, $40, $20, $40, $20, $40, $20, $40, $90, $60
                .byte $90, $90, $60, $80, $90, $60, $B0, $79, $A8, $58
                .byte $90, $40, $80, $30, $76, $9F, $58, $76, $42, $58
                .byte $31, $42

; =============== S U B R O U T I N E =======================================


sub_1C880E:
                JSR     sub_1C80D3
                BNE     locret_1C87E4
                LDY     byte_7E0
                INC     byte_7E0
                LDA     byte_1C8830,Y
                BEQ     loc_1C8826
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     #$88
                JMP     loc_1C87E1
; ---------------------------------------------------------------------------

loc_1C8826:
                JMP     loc_1C8688
; End of function sub_1C880E


; =============== S U B R O U T I N E =======================================


sub_1C8829:
                LDA     #4
                LDY     #$40
                JMP     sub_1C82DC
; End of function sub_1C8829

; ---------------------------------------------------------------------------
byte_1C8830:    .byte $A8, $96, $70, $53, $4A, $37, $29, $E1, $A8, $96
                .byte $70, $53, $4A, $37, $29, 0

; =============== S U B R O U T I N E =======================================


sub_1C8840:
    .import byte_7FA

                LDA     #$10
                STA     PL2_VOL         ; pAPU Pulse #2 Control Register (W)
                LDA     #0
                STA     apu_7C9
                STA     byte_7FA
                RTS
; End of function sub_1C8840


; =============== S U B R O U T I N E =======================================


sub_1C884E:
                LDA     #4
                LDY     #$A0
                JSR     sub_1C82DC
                LDA     apu_BB
                STA     TRI_LO          ; pAPU Triangle Frequency Register #1 (W)
                LDA     #$A
                BNE     loc_1C88B0
; End of function sub_1C884E


; =============== S U B R O U T I N E =======================================


sub_1C885E:
    .import byte_7E6

                LDA     #4
                LDY     #$9C
                JSR     sub_1C82DC
                LDA     #8
                STA     byte_7E6
                RTS
; End of function sub_1C885E

; ---------------------------------------------------------------------------
byte_1C886B:    .byte $31, $3A, $42, $4A, $58, $63, $76, $85, $96, $B2
                .byte $C8, $EE, 0, $C, $2D, $67, $93, $DF, $FF

; =============== S U B R O U T I N E =======================================


sub_1C887E:
    .import byte_7E2, byte_7FB

                JSR     sub_1C80D3
                BNE     locret_1C88B3

loc_1C8883:
                LDY     byte_7E2
                LDA     byte_1C886B,Y
                BEQ     loc_1C889B
                CMP     #$FF
                BEQ     loc_1C88A3
                INC     byte_7E2
                STA     TRI_LO          ; pAPU Triangle Frequency Register #1 (W)
                LDA     byte_7E6
                JMP     loc_1C88B0
; ---------------------------------------------------------------------------

loc_1C889B:
                INC     byte_7E6
                INC     byte_7E2
                BNE     loc_1C8883

loc_1C88A3:
                LDA     #0
                STA     TRI_LINEAR      ; pAPU Triangle Control Register #1 (W)
                STA     apu_7CA
                STA     byte_7FB
                LDA     #$18

loc_1C88B0:
                STA     TRI_HI          ; pAPU Triangle Frequency Register #2 (W)

locret_1C88B3:
                RTS
; End of function sub_1C887E


; =============== S U B R O U T I N E =======================================


sub_1C88B4:
                JSR     sub_1C80D3
                BEQ     loc_1C88A3

locret_1C88B9:
                RTS
; End of function sub_1C88B4


; =============== S U B R O U T I N E =======================================


sub_1C88BA:
                JSR     sub_1C80D3
                BNE     locret_1C88B9
                LDY     byte_7E2
                INC     byte_7E2
                LDA     byte_1C88DB,Y
                BEQ     loc_1C88A3
                STA     TRI_LO          ; pAPU Triangle Frequency Register #1 (W)
                LDA     byte_1C81A7
                STA     TRI_HI          ; pAPU Triangle Frequency Register #2 (W)
                RTS
; End of function sub_1C88BA


; =============== S U B R O U T I N E =======================================


sub_1C88D4:
                LDA     #3
                LDY     #$A4
                JMP     sub_1C82DC
; End of function sub_1C88D4

; ---------------------------------------------------------------------------
byte_1C88DB:    .byte $3F, $48, $52, $6D, $78, $84, $91, $AE, $BD, 0

; =============== S U B R O U T I N E =======================================


sub_1C88E5:
                LDA     #8
                LDY     #$A8
                JMP     sub_1C82DC
; End of function sub_1C88E5


; =============== S U B R O U T I N E =======================================


sub_1C88EC:
                JSR     sub_1C80D3
                BNE     locret_1C88B3
                INC     byte_7E2
                LDA     byte_7E2
                CMP     #2
                BNE     loc_1C88FE
                JMP     loc_1C88A3
; ---------------------------------------------------------------------------

loc_1C88FE:
                LDY     #$AC
                JMP     sub_1C8099
; End of function sub_1C88EC


; =============== S U B R O U T I N E =======================================


sub_1C8903:
    .import PulseSweep1, byte_7C1, byte_7CC, byte_7FD

                JSR     sub_1C8248
                LDA     #1
                STA     CurrentMusic
                JMP     loc_1C8946
; ---------------------------------------------------------------------------

loc_1C890E:
                JMP     sub_1C8299
; ---------------------------------------------------------------------------

loc_1C8911:
                LDA     NewMusic
                TAY
                CMP     #$3F
                BCS     loc_1C890E
                CMP     #1
                BEQ     sub_1C8903
                TYA
                BEQ     loc_1C895C
                STA     CurrentMusic
                CMP     #$19
                BEQ     loc_1C892B
                CMP     #$19
                BCC     loc_1C8936

loc_1C892B:
                STA     apu_BF
                SEC
                SBC     #$19
                STA     byte_7CC
                JMP     loc_1C894E
; ---------------------------------------------------------------------------

loc_1C8936:
                CMP     #6
                BNE     loc_1C8946
                LDA     $6707
                CMP     #1
                BEQ     loc_1C8945
                LDA     #7
                BNE     loc_1C8946

loc_1C8945:
                TYA

loc_1C8946:
                STA     apu_BF
                STA     byte_7CC
                DEC     byte_7CC

loc_1C894E:
                LDA     #$7F
                STA     PulseSweep1
                STA     byte_7C1
                JSR     sub_1C8AEC

loc_1C8959:
                JMP     loc_1C8C7B
; ---------------------------------------------------------------------------

loc_1C895C:
                LDA     byte_7FD
                BNE     loc_1C8959
                RTS
; End of function sub_1C8903


; =============== S U B R O U T I N E =======================================


sub_1C8962:
                LDA     #3
                LDY     #$38
                JSR     sub_1C82DC
                JMP     loc_1C8971
; ---------------------------------------------------------------------------

loc_1C896C:
                JSR     sub_1C80D3
                BNE     locret_1C8995

loc_1C8971:
                LDA     byte_7E0
                AND     #7
                TAY
                LDA     byte_7E0
                LSR     A
                LSR     A
                LSR     A
                TAX
                INC     byte_7E0
                LDA     byte_1C89A1,X
                BEQ     loc_1C8996
                STA     PL1_VOL         ; pAPU Pulse #1 Control Register (W)
                LDA     byte_1C8999,Y
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     byte_1C813B
                STA     PL1_HI          ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

locret_1C8995:
                RTS
; ---------------------------------------------------------------------------

loc_1C8996:
                JMP     loc_1C8688
; End of function sub_1C8962

; ---------------------------------------------------------------------------
byte_1C8999:    .byte $2C, $24, $28, $20, $24, $1C, $20, $18
byte_1C89A1:    .byte $1F, $19, $14, $12, $11, 0
stru_1C89A7:    .byte 0, $10, 1         ; APU_NOISE <0, $10, 1>
                .byte $18, 0, 1         ; APU_NOISE <$18, 0, 1>
                .byte $38, 0, 3         ; APU_NOISE <$38, 0, 3>
                .byte $40, 0, 6         ; APU_NOISE <$40, 0, 6>
                .byte $58, 1, 3         ; APU_NOISE <$58, 1, 3>
                .byte $40, 2, 4         ; APU_NOISE <$40, 2, 4>
                .byte $40, $13, 5       ; APU_NOISE <$40, $13, 5>
                .byte $40, $14, $A      ; APU_NOISE <$40, $14, $A>
                .byte $40, $14, 8       ; APU_NOISE <$40, $14, 8>
                .byte $40, $12, $E      ; APU_NOISE <$40, $12, $E>
                .byte 8, $16, $E        ; APU_NOISE <8, $16, $E>
                .byte $28, $16, $B      ; APU_NOISE <$28, $16, $B>
                .byte $18

; =============== S U B R O U T I N E =======================================


sub_1C89CC:
    .import PulseTimer1, byte_79A, byte_7C3, byte_7D1
    .importzp APURegisterNum

                LDA     byte_7FD
                CMP     #1
                BEQ     exit
                TXA
                CMP     #3
                BEQ     exit
                LDA     byte_79A,X
                AND     #$E0
                BEQ     exit
                STA     apu_B0
                LDA     byte_7C3,X
                CMP     #2
                BEQ     loc_1C89F2
                LDY     APURegisterNum
                LDA     PulseTimer1,Y
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                JSR     loc_1C8A33

loc_1C89F2:
                INC     byte_7D1,X

exit:
                RTS
; End of function sub_1C89CC


; =============== S U B R O U T I N E =======================================


sub_1C89F6:
                LDA     PointerAPU
                CMP     #$31
                BNE     loc_1C89FE
                LDA     #$27

loc_1C89FE:
                TAY
                LDA     byte_1C8A85,Y
                PHA
                LDA     byte_7C3,X
                CMP     #$46
                BNE     loc_1C8A0F
                PLA
                LDA     #0
                BEQ     loc_1C8A6D

loc_1C8A0F:
                PLA
                JMP     loc_1C8A6D
; ---------------------------------------------------------------------------

loc_1C8A13:
                LDA     PointerAPU
                TAY
                CMP     #$10
                BCS     loc_1C8A20
                LDA     byte_1C8ABC,Y
                JMP     loc_1C8A73
; ---------------------------------------------------------------------------

loc_1C8A20:
                LDA     #$F6
                BNE     loc_1C8A73

loc_1C8A24:
                LDA     byte_7C3,X
                CMP     #$4C
                BCC     loc_1C8A2F
                LDA     #$FE
                BNE     loc_1C8A73

loc_1C8A2F:
                LDA     #$FE
                BNE     loc_1C8A73

loc_1C8A33:
                LDA     byte_7D1,X
                STA     PointerAPU
                LDA     apu_B0
                CMP     #$20
                BEQ     loc_1C8A52
                CMP     #$A0
                BEQ     loc_1C8A61
                CMP     #$60
                BEQ     loc_1C8A24
                CMP     #$40
                BEQ     loc_1C8A13
                CMP     #$80
                BEQ     sub_1C89F6
                CMP     #$C0
                BEQ     sub_1C89F6

loc_1C8A52:
                LDA     PointerAPU
                CMP     #$A
                BNE     loc_1C8A5A
                LDA     #0

loc_1C8A5A:
                TAY
                LDA     byte_1C8AB2,Y
                JMP     loc_1C8A6D
; ---------------------------------------------------------------------------

loc_1C8A61:
                LDA     PointerAPU
                CMP     #$2B
                BNE     loc_1C8A69
                LDA     #$21

loc_1C8A69:
                TAY
                LDA     byte_1C8A91,Y

loc_1C8A6D:
                PHA
                TYA
                STA     byte_7D1,X
                PLA

loc_1C8A73:
                PHA
                LDA     apu_7C8,X
                BNE     loc_1C8A83
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

loc_1C8A83:
                PLA
                RTS
; End of function sub_1C89F6

; ---------------------------------------------------------------------------
byte_1C8A85:    .byte 9, 8, 7, 6, 5, 4, 3, 2, 2, 1, 1, 0
byte_1C8A91:    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
                .byte 0, 0, 0, $FF, 0, 0, 0, 0, 1, 1, 0, 0, 0, $FF, $FF
                .byte 0
byte_1C8AB2:    .byte 0, 1, 1, 2, 1, 0, $FF, $FF, $FE, $FF
byte_1C8ABC:    .byte 0, $FF, $FE, $FD, $FC, $FB, $FA, $F9, $F8, $F7, $F6
                .byte $F5, $F6, $F7, $F6, $F5

; =============== S U B R O U T I N E =======================================


sub_1C8ACC:
    .import byte_790

                LDA     byte_7CC
                TAY
                LDA     byte_1C90F4,Y
                TAY
                LDX     #0

loc_1C8AD6:
                LDA     byte_1C91FE,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1C8AD6
                RTS
; End of function sub_1C8ACC


; =============== S U B R O U T I N E =======================================


sub_1C8AE4:
    .import byte_7A0

                LDA     #$FF
                STA     byte_7A0,X
                JMP     loc_1C8B65
; End of function sub_1C8AE4


; =============== S U B R O U T I N E =======================================


sub_1C8AEC:
    .import byte_792, byte_793, byte_7A1, byte_7A7, byte_7A8, byte_7B4, byte_7B5, byte_7B6, byte_7B7
    .importzp byte_B6, byte_B7, byte_BA

                JSR     loc_1C829C
                LDA     apu_BF
                STA     byte_7FD
                CMP     #$32
                BEQ     loc_1C8B06
                CMP     #$19
                BEQ     loc_1C8B00
                CMP     #$19
                BCC     loc_1C8B1A

loc_1C8B00:
                JSR     sub_1C8ACC
                JMP     loc_1C8B31
; ---------------------------------------------------------------------------

loc_1C8B06:
                LDX     #0
                LDY     #0

loc_1C8B0A:
                LDA     byte_1C92F8,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1C8B0A
                JMP     loc_1C8B31
; ---------------------------------------------------------------------------

loc_1C8B1A:
                LDA     byte_7CC
                TAY
                LDA     byte_1C90DC,Y
                TAY
                LDX     #0

loc_1C8B24:
                LDA     byte_1C910E,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1C8B24

loc_1C8B31:
                LDA     #1
                STA     byte_7B4
                STA     byte_7B5
                STA     byte_7B6
                STA     byte_7B7
                LDA     #0
                STA     byte_BA
                LDY     #8

loc_1C8B45:
                STA     byte_7A7,Y
                DEY
                BNE     loc_1C8B45
                TAX

loc_1C8B4C:
                LDA     byte_792,X
                STA     byte_B6
                LDA     byte_793,X
                CMP     #$FF
                BEQ     sub_1C8AE4
                STA     byte_B7
                LDY     byte_7A8
                LDA     (byte_B6),Y
                STA     byte_7A0,X
                INY
                LDA     (byte_B6),Y

loc_1C8B65:
                STA     byte_7A1,X
                INX
                INX
                TXA
                CMP     #8
                BNE     loc_1C8B4C
                RTS
; End of function sub_1C8AEC


; =============== S U B R O U T I N E =======================================


set_pulse:
    .import PulseCounter1, PulseTimer2, PulseCounter2

                LDA     PulseChannels
                BEQ     exit_1
                CMP     #1
                BEQ     @one
                LDA     #$7F
                STA     PL2_SWEEP       ; pAPU Pulse #2 Ramp Control Register (W)
                LDA     PulseTimer2
                STA     PL2_LO          ; pAPU Pulse #2 Fine Tune (FT) Register (W)
                LDA     PulseCounter2
                STA     PL2_HI          ; pAPU Pulse #2 Coarse Tune (CT) Register (W)

@one:
                LDA     #$7F
                STA     PL1_SWEEP       ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1
                STA     PL1_LO          ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1
                STA     PL1_HI          ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
                LDA     #0
                STA     PulseChannels

exit_1:
                RTS
; End of function set_pulse


; =============== S U B R O U T I N E =======================================


sub_1C8BA1:
    .import byte_791, byte_79D, byte_79F, byte_7AC, byte_7B0, byte_7B8, byte_7BC, byte_7CD

                TXA
                CMP     #2
                BCS     exit_1
                LDA     byte_79A,X
                AND     #$1F
                BEQ     locret_1C8C06
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     byte_7C3,X
                CMP     #2
                BEQ     loc_1C8C10
                LDY     #0

loc_1C8BB8:
                DEC     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                BEQ     loc_1C8BC0
                INY
                INY
                BNE     loc_1C8BB8

loc_1C8BC0:
                LDA     off_1C8E85,Y
                STA     PointerAPU
                LDA     off_1C8E85+1,Y
                STA     PointerAPU+1
                LDA     byte_7CD,X
                LSR     A
                TAY
                LDA     (PointerAPU),Y
                STA     byte_B4
                CMP     #$FF
                BEQ     loc_1C8C07
                CMP     #$F0
                BEQ     loc_1C8C0C
                LDA     byte_7CD,X
                AND     #1
                BNE     loc_1C8BEA
                LSR     byte_B4
                LSR     byte_B4
                LSR     byte_B4
                LSR     byte_B4

loc_1C8BEA:
                LDA     byte_B4
                AND     #$F
                STA     apu_B0
                LDA     byte_79D,X
                AND     #$F0
                ORA     apu_B0
                TAY

loc_1C8BF8:
                INC     byte_7CD,X

loc_1C8BFB:
                LDA     apu_7C8,X
                BNE     locret_1C8C06
                TYA
                LDY     APURegisterNum
                STA     PL1_VOL,Y       ; pAPU Pulse #1 Control Register (W)

locret_1C8C06:
                RTS
; ---------------------------------------------------------------------------

loc_1C8C07:
                LDY     byte_79D,X
                BNE     loc_1C8BFB

loc_1C8C0C:
                LDY     #$10
                BNE     loc_1C8BFB

loc_1C8C10:
                LDY     #$10
                BNE     loc_1C8BF8

loc_1C8C14:
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
                JMP     loc_1C8C53
; ---------------------------------------------------------------------------

loc_1C8C36:
                JSR     sub_1C8299

locret_1C8C39:
                RTS
; ---------------------------------------------------------------------------

loc_1C8C3A:
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

loc_1C8C53:
                TXA
                ASL     A
                TAX
                LDA     (byte_B6),Y
                STA     byte_7A0,X
                INY
                LDA     (byte_B6),Y
                STA     byte_7A1,X
                CMP     #0
                BEQ     loc_1C8C36
                CMP     #$FF
                BEQ     loc_1C8C14
                TXA
                LSR     A
                TAX
                LDA     #0
                STA     byte_7AC,X
                LDA     #1
                STA     byte_7B4,X
                BNE     loc_1C8C95

loc_1C8C78:
                JMP     loc_1C8C3A
; ---------------------------------------------------------------------------

loc_1C8C7B:
                JSR     set_pulse
                LDA     #0
                TAX
                STA     APURegisterNum
                BEQ     loc_1C8C95

loc_1C8C85:
                TXA
                LSR     A
                TAX

loc_1C8C88:
                INX
                TXA
                CMP     #4
                BEQ     locret_1C8C39
                LDA     APURegisterNum
                CLC
                ADC     #4
                STA     APURegisterNum

loc_1C8C95:
                TXA
                ASL     A
                TAX
                LDA     byte_7A0,X
                STA     byte_B6
                LDA     byte_7A1,X
                STA     byte_B7
                LDA     byte_7A1,X
                CMP     #$FF
                BEQ     loc_1C8C85
                TXA
                LSR     A
                TAX
                DEC     byte_7B4,X
                BNE     loc_1C8CFA
                LDA     #0
                STA     byte_7CD,X
                STA     byte_7D1,X

loc_1C8CB9:
                JSR     sub_1C8E7C
                BEQ     loc_1C8C78
                CMP     #$9F
                BEQ     loc_1C8D09
                CMP     #$9E
                BEQ     loc_1C8D21
                CMP     #$9C
                BEQ     loc_1C8D2A
                TAY
                CMP     #$FF
                BEQ     loc_1C8CD8
                AND     #$C0
                CMP     #$C0
                BEQ     loc_1C8CE8
                JMP     loc_1C8D33
; ---------------------------------------------------------------------------

loc_1C8CD8:
                LDA     byte_7BC,X
                BEQ     loc_1C8CF7
                DEC     byte_7BC,X
                LDA     byte_7B0,X
                STA     byte_7AC,X
                BNE     loc_1C8CF7

loc_1C8CE8:
                TYA
                AND     #$3F
                STA     byte_7BC,X
                DEC     byte_7BC,X
                LDA     byte_7AC,X
                STA     byte_7B0,X

loc_1C8CF7:
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8CFA:
                JSR     sub_1C8BA1
                JSR     sub_1C89CC
                JMP     loc_1C8C88
; ---------------------------------------------------------------------------

loc_1C8D03:
                JMP     loc_1C8E17
; ---------------------------------------------------------------------------

loc_1C8D06:
                JMP     loc_1C8DED
; ---------------------------------------------------------------------------

loc_1C8D09:
                JSR     sub_1C8E7C
                STA     byte_79A,X
                JSR     sub_1C8E7C
                STA     byte_79D,X
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------
                JSR     sub_1C8E7C
                JSR     sub_1C8E7C
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D21:
                JSR     sub_1C8E7C
                STA     byte_791
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D2A:
                JSR     sub_1C8E7C
                STA     byte_790
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D33:
                TYA
                AND     #$B0
                CMP     #$B0
                BNE     loc_1C8D52
                TYA
                AND     #$F
                CLC
                ADC     byte_791
                TAY
                LDA     $9074,Y
                STA     byte_7B8,X
                TAY
                TXA
                CMP     #2
                BEQ     loc_1C8D06

loc_1C8D4E:
                JSR     sub_1C8E7C
                TAY

loc_1C8D52:
                TYA
                STA     byte_7C3,X
                TXA
                CMP     #3
                BEQ     loc_1C8D03
                PHA
                LDX     APURegisterNum
                LDA     byte_1C8FEA+1,Y
                BEQ     loc_1C8D87
                LDA     byte_790
                BPL     loc_1C8D73
                AND     #$7F
                STA     PointerAPU+1
                TYA
                CLC
                SBC     PointerAPU+1
                JMP     loc_1C8D78
; ---------------------------------------------------------------------------

loc_1C8D73:
                TYA
                CLC
                ADC     byte_790

loc_1C8D78:
                TAY
                LDA     byte_1C8FEA+1,Y
                STA     PulseTimer1,X
                LDA     byte_1C8FEA,Y
                ORA     #8
                STA     PulseCounter1,X

loc_1C8D87:
                TAY
                PLA
                TAX
                TYA
                BNE     loc_1C8D9C
                LDA     #0
                STA     apu_B0
                TXA
                CMP     #2
                BEQ     loc_1C8DA1
                LDA     #$10
                STA     apu_B0
                BNE     loc_1C8DA1

loc_1C8D9C:
                LDA     byte_79D,X
                STA     apu_B0

loc_1C8DA1:
                TXA
                DEC     apu_7C8,X
                CMP     apu_7C8,X
                BEQ     loc_1C8DE7
                INC     apu_7C8,X
                LDY     APURegisterNum
                TXA
                CMP     #2
                BEQ     loc_1C8DC7
                LDA     byte_79A,X
                AND     #$1F
                BEQ     loc_1C8DC7
                LDA     apu_B0
                CMP     #$10
                BEQ     loc_1C8DC9
                AND     #$F0
                ORA     #0
                BNE     loc_1C8DC9

loc_1C8DC7:
                LDA     apu_B0

loc_1C8DC9:
                STA     PL1_VOL,Y       ; pAPU Pulse #1 Control Register (W)
                LDA     PulseSweep1,X
                STA     PL1_SWEEP,Y     ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1,Y
                STA     PL1_LO,Y        ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1,Y
                STA     PL1_HI,Y        ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

loc_1C8DDE:
                LDA     byte_7B8,X
                STA     byte_7B4,X
                JMP     loc_1C8C88
; ---------------------------------------------------------------------------

loc_1C8DE7:
                INC     apu_7C8,X
                JMP     loc_1C8DDE
; ---------------------------------------------------------------------------

loc_1C8DED:
                LDA     apu_79C
                AND     #$1F
                BNE     loc_1C8E11
                LDA     apu_79C
                AND     #$C0
                BNE     loc_1C8DFE

loc_1C8DFB:
                TYA
                BNE     loc_1C8E06

loc_1C8DFE:
                CMP     #$C0
                BEQ     loc_1C8DFB
                LDA     #$FF
                BNE     loc_1C8E11

loc_1C8E06:
                CLC
                ADC     #$FF
                ASL     A
                ASL     A
                CMP     #$3C
                BCC     loc_1C8E11
                LDA     #$3C

loc_1C8E11:
                STA     byte_79F
                JMP     loc_1C8D4E
; ---------------------------------------------------------------------------

loc_1C8E17:
                TYA
                PHA
                JSR     sub_1C8E3E
                PLA
                AND     #$3F
                TAY
                JSR     sub_1C8E26
                JMP     loc_1C8DDE
; End of function sub_1C8BA1


; =============== S U B R O U T I N E =======================================


sub_1C8E26:
                LDA     Noise
                BNE     @exit
                LDA     stru_1C89A7,Y
                STA     NOISE_VOL       ; pAPU Noise Control Register #1 (W)
                LDA     stru_1C89A7+1,Y ; stru_1C89A7.Frequency,Y
                STA     NOISE_LO        ; pAPU Noise Frequency Register #1 (W)
                LDA     stru_1C89A7+2,Y ; stru_1C89A7.Length,Y
                STA     NOISE_HI        ; pAPU Noise Frequency Register #2 (W)

@exit:
                RTS
; End of function sub_1C8E26


; =============== S U B R O U T I N E =======================================


sub_1C8E3E:
    .import DMCflag

                TYA
                AND     #$C0
                CMP     #$40
                BEQ     loc_1C8E4A
                CMP     #$80
                BEQ     loc_1C8E54
                RTS
; ---------------------------------------------------------------------------

loc_1C8E4A:
                LDA     #$E
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     #7
                LDY     #0
                BEQ     loc_1C8E5C

loc_1C8E54:
                LDA     #$E
                STA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                LDA     #$F
                LDY     #2

loc_1C8E5C:
                STA     DMC_LEN         ; pAPU Delta Modulation Data Length Register (W)
                STY     DMC_START       ; pAPU Delta Modulation Address Register (W)
                LDA     DMCflag
                BNE     @exit
                LDA     APU_DM_CR       ; Data for pAPU_DM_CR
                                        ; bit 7 - IRQ enabled flag
                                        ; bit 6 - Loop flag
                                        ; bit 3-0 note (frequency counter)
                STA     DMC_FREQ        ; pAPU Delta Modulation Control Register (W)
                LDA     #$F             ; enable all without DM
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
                LDA     #$1F            ; enable all
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

@exit:
                RTS
; End of function sub_1C8E3E


; =============== S U B R O U T I N E =======================================


sub_1C8E7C:
                LDY     byte_7AC,X
                INC     byte_7AC,X
                LDA     (byte_B6),Y
                RTS
; End of function sub_1C8E7C

; ---------------------------------------------------------------------------
off_1C8E85:     .word byte_1C8EE9, byte_1C8EF0, byte_1C8F14, byte_1C8F27
                .word byte_1C8F30, byte_1C8F36, byte_1C8EE2, byte_1C8F38
                .word byte_1C8F41, byte_1C8F33, byte_1C8F4A, byte_1C8F53
                .word byte_1C8F5B, byte_1C8F63, byte_1C8F6A, byte_1C8F73
                .word byte_1C8FBE, byte_1C8FC6, byte_1C8F8C, byte_1C8FDA
                .word byte_1C8FA1, byte_1C8EBD, byte_1C8EFA, byte_1C8ED9
                .word byte_1C8ED2, byte_1C8EC7, byte_1C8EC3, byte_1C8F10
byte_1C8EBD:    .byte $76, $11, $11, $14, $31, $FF
byte_1C8EC3:    .byte $33, $45, $66, $FF
byte_1C8EC7:    .byte $91, $91, $91, $91, $91, $91, $91, $91, $91, $91
                .byte $F0
byte_1C8ED2:    .byte $23, $33, $32, $22, $22, $22, $FF
byte_1C8ED9:    .byte $98, $76, $63, $22, $87, $76, $53, $11, $F0
byte_1C8EE2:    .byte $23, $56, $78, $88, $88, $87, $FF
byte_1C8EE9:    .byte $23, $34, $56, $77, $65, $54, $FF
byte_1C8EF0:    .byte $5A, $98, $88, $77, $66, $66, $65, $55, $55, $FF
byte_1C8EFA:    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                .byte $55, $55, $55, $66, $66, $77, $78, $88, $76, $54
                .byte $32, $FF
byte_1C8F10:    .byte $11, $11, $22, $FF
byte_1C8F14:    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                .byte $55, $55, $55, $66, $66, $77, $78, $88, $FF
byte_1C8F27:    .byte $F9, $87, $77, $77, $66, $65, $55, $44, $FF
byte_1C8F30:    .byte $A8, $76, $FF
byte_1C8F33:    .byte $74, $32, $FF
byte_1C8F36:    .byte $99, $FF
byte_1C8F38:    .byte $DC, $BA, $99, $88, $87, $76, $55, $44, $FF
byte_1C8F41:    .byte $23, $44, $33, $33, $33, $33, $33, $32, $FF
byte_1C8F4A:    .byte $77, $76, $65, $55, $44, $43, $32, $21, $F0
byte_1C8F53:    .byte $44, $43, $33, $32, $22, $11, $11, $F0
byte_1C8F5B:    .byte $33, $33, $22, $22, $11, $11, $11, $F0
byte_1C8F63:    .byte $22, $22, $22, $11, $11, $11, $F0
byte_1C8F6A:    .byte $11, $11, $11, $11, $11, $11, 1, 0, $F0
byte_1C8F73:    .byte $99, $88, $77, $76, $66, $55, $54, $44, $33, $33
                .byte $33, $32, $22, $22, $22, $22, $21, $11, $11, $11
                .byte $11, $11, $11, $11, $F0
byte_1C8F8C:    .byte $65, $55, $54, $44, $33, $33, $33, $33, $22, $22
                .byte $22, $22, $11, $11, $11, $11, $11, $11, $11, $11
                .byte $F0
byte_1C8FA1:    .byte $FB, $BA, $AA, $99, $99, $99, $98, $88, $77, $77
                .byte $77, $66, $66, $66, $55, $54, $44, $44, $43, $33
                .byte $33, $22, $22, $22, $22, $11, $11, $11, $F0
byte_1C8FBE:    .byte $23, $45, $55, $44, $33, $33, $22, $FF
byte_1C8FC6:    .byte $87, $65, $43, $21, $44, $33, $21, $11, $32, $21
                .byte $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF
byte_1C8FDA:    .byte $66, $65, $42, $21, $32, $21, $11, $11, $21, $11
                .byte $11, $11, $11, $11, $11, $FF
byte_1C8FEA:    .byte 7, $F0, 0, 0, 6, $AE, 6, $4E, 5, $F3, 5, $9E, 5
                .byte $4D, 5, 1, 4, $B9, 4, $75, 4, $35, 3, $F8, 3, $BF
                .byte 3, $89, 3, $57
                .byte 3, $27, 2, $F9, 2, $CF, 2, $A6, 2, $80, 2, $5C, 2
                .byte $3A, 2, $1A, 1, $FC, 1, $DF, 1, $C4, 1, $AB, 1, $93
                .byte 1, $7C, 1, $67, 1, $52, 1, $3F, 1, $2D, 1, $1C, 1
                .byte $C, 0, $FD, 0, $EE, 0, $E1, 0, $D4, 0, $C8, 0, $BD
                .byte 0, $B2, 0, $A8, 0, $9F, 0, $96, 0, $8D, 0, $85, 0
                .byte $7E, 0, $76, 0, $70, 0, $69, 0, $63, 0, $5E, 0, $58
                .byte 0, $53, 0, $4F, 0, $4A, 0, $46, 0, $42, 0, $3E, 0
                .byte $3A, 0, $37, 0, $34, 0, $31, 0, $2E, 0, $2B, 0, $29
                .byte 0, $A, 0, 1, 4, 8, $10, $20, $40, $18, $30, $C, $A
                .byte 5, 2, 1, 5, $A, $14, $28, $50, $1E, $3C, $F, $C
                .byte 6, 3, 2, 6, $C, $18, $30, $60, $24, $48, $12, $10
                .byte 8, 3, 1, 4, 2, 0, $90, 7, $E, $1C, $38, $70, $2A
                .byte $54, $15, $12, 9, 3, 1, 2, 8, $10, $20, $40, $80
                .byte $30, $60, $18, $15, $A, 4, 1, 2, $C0, 9, $12, $24
                .byte $48, $90, $36, $6C, $1B, $18, $A, $14, $28, $50
                .byte $A0, $3C, $78, $1E, $1A, $D, 5, 1, 2, $17, $B, $16
                .byte $2C, $58, $B0, $42, $84, $21, $1D, $E, 5, 1, 2, $17
byte_1C90DC:    .byte 0, $A, $14, $1E, $28, $3C, $32, $46, $50, $5A, $64
                .byte $6E, $78, $82, $8C, $96, $A0, $AA, $B4, $BE, $C8
                .byte $D2, $DC, $E6
byte_1C90F4:    .byte 0, $A, $14, $1E, $28, $32, $3C, $46, $50, $5A, $64
                .byte $6E, $78, $82, $8C, $96, $A0, $AA, $B4, $BE, $C8
                .byte $D2, $DC, $E6, $F0, 0
byte_1C910E:    .byte $18, $18, $FF, $FF, $FF, $FF, $6C, 7, $FF, $FF, 0
                .byte $28, $B2, $93, $BA, $93, $C4, $93, $D6, $93, 0, $28
                .byte $17, $96, $21, $96, $2B, $96, $33, $96, 0, $28, $47
                .byte $98, $51, $98, $5B, $98, $67, $98, 0, 0, 3, $9A
                .byte 7, $9A, 9, $9A, $FF, $FF, 0, $28, $2D, $9E, $39
                .byte $9E, $45, $9E, $51, $9E, 0, $35, $B7, $9B, $C1, $9B
                .byte $CB, $9B, $D3, $9B, $81, $C, $38, $9A, $40, $9A
                .byte $48, $9A, $50, $9A, 0, $4C, $2C, $A1, $34, $A1, $3A
                .byte $A1, $48, $A1, 0, $35, $1A, $A2, $30, $A2, $36, $A2
                .byte $FF, $FF, 0, $4C, $6D, $A3, $73, $A3, $79, $A3, $7F
                .byte $A3, 0, $35, $37, $A7, $2F, $A7, $41, $A7, $49, $A7
                .byte 0, $35, $25, $A4, $2D, $A4, $35, $A4, $3D, $A4, 0
                .byte $18, $29, $A5, $2F, $A5, $35, $A5, $3B, $A5, 0, $18
                .byte $E, $A6, $16, $A6, $1C, $A6, $22, $A6, $87, $18
                .byte $83, $A0, $8D, $A0, $97, $A0, $A1, $A0, 0, $28, $11
                .byte $A8, $19, $A8, $25, $A8, $2D, $A8, 2, $43, $95, $A9
                .byte $8F, $A9, $9B, $A9, $A1, $A9, 0, $35, $1C, $AA, $26
                .byte $AA, $2E, $AA, $36, $AA, 0, $18, $45, $BC, $59, $BC
                .byte $65, $BC, $79, $BC, 0, $43, $1E, $AB, $2C, $AB, $36
                .byte $AB, $3C, $AB, 0, $28, $29, $BB, $23, $BB, $2F, $BB
                .byte $35, $BB, 0, $18, $E0, $AB, $F0, $AB, $FE, $AB, 6
                .byte $AC, 0, $C, $B5, $A8, $BD, $A8, $C3, $A8, $FF, $FF
byte_1C91FE:    .byte 0, $28, $84, $AE, $6C, $AE, $FF, $FF, $FF, $FF, 0
                .byte $5A, $FB, $AE, 1, $AF, 7, $AF, $FF, $FF, $18, $4C
                .byte $FF, $AF, $F7, $AF, $FF, $FF, $FF, $FF, 0, $4C, $12
                .byte $B0, $1A, $B0, $22, $B0, $FF, $FF, 0, $18, $61, $B0
                .byte $65, $B0, $67, $B0, $FF, $FF, 0, $18, $92, $B9, $98
                .byte $B9, $9E, $B9, $B0, $B9, 6, 0, $C7, $AE, $D1, $AE
                .byte $D9, $AE, $FF, $FF, $83, $18, $98, $AE, $9C, $AE
                .byte $9E, $AE, $FF, $FF, $83, $43, $38, $B4, $3C, $B4
                .byte $3E, $B4, $FF, $FF, $87, $18, $9E, $B0, $A4, $B0
                .byte $B0, $B0, $BC, $B0, 0, $18, $3C, $B1, $52, $B1, $62
                .byte $B1, $74, $B1, $30, $28, 2, $93, 6, $93, $FF, $FF
                .byte $FF, $FF, $18, $28, $A, $93, $E, $93, $FF, $FF, $FF
                .byte $FF, 0, $28, $12, $93, $16, $93, $FF, $FF, $FF, $FF
                .byte 0, $28, $1A, $93, $1E, $93, $FF, $FF, $FF, $FF, $30
                .byte $28, $22, $93, $26, $93, $FF, $FF, $FF, $FF, $18
                .byte $28, $2A, $93, $2E, $93, $FF, $FF, $FF, $FF, $30
                .byte $28, $32, $93, $36, $93, $FF, $FF, $FF, $FF, $18
                .byte $28, $3A, $93, $3E, $93, $FF, $FF, $FF, $FF, 0, $43
                .byte $61, $B4, $67, $B4, $FF, $FF, $FF, $FF, 0, $28, $25
                .byte $B8, $17, $B8, $39, $B8, $47, $B8, 0, $28, $79, $B4
                .byte $7F, $B4, $27, $A8, $2F, $A8, 0, $18, $FF, $FF, $95
                .byte $B4, $FF, $FF, $FF, $FF, 0, $28, $A3, $B4, $A9, $B4
                .byte $AF, $B4, $FF, $FF, 0, $28, $56, $B5, $5E, $B5, $FF
                .byte $FF, $FF, $FF
byte_1C92F8:    .byte 0, $43, $80, $B5, $88, $B5, $90, $B5, $96, $B5, $47
                .byte $93, $5A, $93, $57, $93, 0, 0, $4D, $93, $65, $93
                .byte $62, $93, 0, 0, $4D, $93, $70, $93, $6D, $93, 0
                .byte 0, $47, $93, $7C, $93, $79, $93, 0, 0, $4D, $93
                .byte $88, $93, $85, $93, 0, 0, $4D, $93, $91, $93, $8E
                .byte $93, 0, 0, $47, $93, $9E, $93, $9B, $93, 0, 0, $4D
                .byte $93, $AA, $93, $A7, $93, 0, 0, $BB, $62, $B6, 2
                .byte 0, $9F, $D, $F1, $B8, 2, 0, $9F, $29, $F3, $B8, 2
                .byte 0, $9F, $A0, 0, 0, $9F, $12, $30
byte_1C935A:    .byte $B2, $38, $3C, $40, $46, $B4, $3C, 0, $9F, $27, $B6
byte_1C9365:    .byte $B2, $50, $4E, $4A, $40, $B4, $46, 0, $9F, $47, $F5
byte_1C9370:    .byte $B2, $4A, $4E, $50, $B3, $46, $B6, $38, 0, $9F, $10
                .byte $F5
byte_1C937C:    .byte $B2, $42, $40, $38, $B4, $2E, $B2, 2, 0, $9F, $87
                .byte $F5
byte_1C9388:    .byte $B3, $32, $36, $38, $42, 0, $9F, $A7, $B4
byte_1C9391:    .byte $B2, $40, $42, $46, $40, $3C, $40, $42, $3C, 0, $9F
                .byte $B8, $B1
byte_1C939E:    .byte $B2, $32, $42, $40, $2E, $B3, $3C, $36, 0, $9F, $A7
                .byte $F5
byte_1C93AA:    .byte $B3, $38, $B2, $2E, $3C, $B4, $38, 0, $3B, $96, $DE
                .byte $93, $FF, $FF, $B4, $93, $4D, $96, $B4, $94, $F7
                .byte $94, $FF, $FF, $BC, $93, $5F, $96, $90, $95, $A2
                .byte $95, $90, $95, $90, $95, $A2, $95, $D3, $95, $FF
                .byte $FF, $C6, $93, $71, $96, $EC, $95, $FF, $FF, $D8
                .byte $93, $9F, $13, $31, $9E, 0, $C2, $B7, 2, $B0, $38
                .byte $B2, 2, $B0, $38, $B7, 2, $B2, 2, $B0, $38, $B7
                .byte 2, $B6, 2, $FF, $B7, 2, $B4, $2A, $B0, 2, $B6, 2
                .byte $B4, 2, 2, $B7, 2, $B0, $3E, $B2, 2, $B0, $3E, $B7
                .byte 2, $B2, 2, $B0, $42, $B7, 2, $B2, 2, $B7, 2, $B0
                .byte $42, $B2, 2, $B4, $3C, 2, $C2, $B1, $34, 2, $42
                .byte 2, $3C, 2, $42, 2, $38, 2, $B7, $3C, $B0, $3C, $B7
                .byte 2, $B0, $30, $B7, 2, $B0, $3A, $B1, $34, 2, $34
                .byte 2, $34, 2, $34, 2, $34, 2, $B7, 2, $B3, $24, $B0
                .byte 2, $FF, $B7, 2, $B0, $22, $B2, 2, $22, $22, $B0
                .byte $22, $B7, 2, $B7, 2, $B0, $2E, $B2, 2, $B7, 2, $B0
                .byte $2A, $B1, $24, 2, $24, 2, $24, 2, 2, 2, $B7, $24
                .byte $B0, $24, $B2, 2, $B3, $24, $B7, 2, $B2, $26, $B0
                .byte $38, $B1, $32, 2, $3E, 2, $2E, 2, $38, 2, $B7, $34
                .byte $B0, $38, $B2, 2, $B7, 2
                .byte $B0, $2E, $B2, 2, $B1, $30, 2, $B2, 2, $B1, $2E
                .byte 2, $B7, 2, $B0, $32, $B3, 2, $C2, $B8, $3C, $3C
                .byte $3C, $BA, 2, $B2, $3C, 2, $FF, $C2, $B8, $3C, $BB
                .byte 2, $B8, $3C, $BB, 2, $B8, $3C, $FF, $B2, $3C, 2
                .byte $3C, 2, 0, $9F, $15, $31, $C2, $B7, 2, $B0, $30
                .byte $B2, 2, $B0, $30, $B7, 2, $B2, 2, $B0, $30, $B7
                .byte 2, $B6, 2, $FF, $B7, 2, $B4, $22, $B0, 2, $B6, 2
                .byte $B4, 2, 2, $B7, 2, $B0, $2A, $B2, 2, $B0, $2A, $B7
                .byte 2, $B2, 2, $B0, $20, $B7, 2, $B2, 2, $B7, 2, $B0
                .byte $22, $B2, 2, $B4, $30, $B6, 2, $B7, 2, $B0, $3A
                .byte 0, $C2, $B1, $3C, 2, $42, 2, $46, 2, $42, 2, $48
                .byte 2, $B7, $46, $B0, $42, $B7, 2, $B0, $38, $B7, 2
                .byte $B0, $3A, $B1, $3C, 2, $42, 2, $46, 2, $42, 2, $3C
                .byte 2, $B7, 2, $B3, $30, $B0, 2, $FF, $B7, 2, $B0, $34
                .byte $B2, 2, $34, $2E, $B0, $34, $B7, 2, $B7, $2E, $B0
                .byte $3A, $B2, 2, $B7, 2, $B0, $2A, $B1, $2E, 2, $34
                .byte 2, $34, 2, $2E, 2, $B7, $2A, $B0, $2E, $B2, 2, $B3
                .byte $30, $B7, 2, $B0, $30, $B7, $32, $B0, $38, $B1, $42
                .byte 2, $3E, 2, $3A, 2, $38, 2, $B7, $34, $B0, $38, $B2
                .byte 2, $B7, 2, $B0, $3C, $B2, 2, $B1, $3C, 2, $B2, 2
                .byte $B1, $3E, 2, $B7, 2, $B0, $42, $B3, 2, $C2, $B8
                .byte $30, $30, $30, $BA, 2, $B2, $30, 2, $FF, $C2, $B8
                .byte $30, $BB, 2, $B8, $30, $BB, 2, $B8, $30, $FF, $B2
                .byte $30, 2, $30, 2, 0, $9F, 0, 0, $C2, $B7, $34, $B0
                .byte $34, $B2, $30, $2E, $2C, $2A, $28, $26, $24, $FF
                .byte 0, $B7, $26, $B0, $26, $B2, $22, $20, $2C, $2E, $20
                .byte $2A, $22, $B7, $1C, $B0, $1C, $B2, $22, $24, $2A
                .byte $30, $2E, $2A, $24, $2A, $32, $38, $B7, $32, $B0
                .byte $32, $B2, $26, $3A, $38, $36, $B7, $34, $B0, $34
                .byte $B2, $30, $2E, $2C, $2A, $2E, $30, $32, 0, $C2, $B8
                .byte $34, $34, $34, $BA, 2, $B2, $34, 2, $FF, $C2, $B8
                .byte $34, $34, $34, $BA, 2, $FF, $B2, $34, 2, $34, 2
                .byte 0, $DC, $B7, 4, $B0, 4, $B2, 7, $B7, 4, $B0, 4, $B2
                .byte 7, $FF, $C2, $B8, 7, 7, 7, $BA, 1, $B2, 7, 1, $FF
                .byte $C2, $B8, 7, $BB, 2, $B8, 7, $BB, 2, $B8, 7, $FF
                .byte $B2, 7, 1, 7, 1, 0, $3B, $96, $74, $96, $B6, $96
                .byte $FF, $FF, $19, $96, $4D, $96, $95, $96, $5A, $97
                .byte $FF, $FF, $23, $96, $5F, $96, $C8, $97, $FF, $FF
                .byte $2D, $96, $71, $96, $23, $98, $FF, $FF, $35, $96
                .byte $9F, $38, $31, $B0, $16, $20, $2A, $2E, $38, $42
                .byte $46, $50, $9F, $23, $3A, $B3, $5A, 0, $9F, $38, $31
                .byte $B0, $12, $16, $20, $2A, $2E, $38, $42, $46, $9F
                .byte $23, $3A, $B3, $50, 0, $9F, $A, 0, $B0, $20, $2A
                .byte $2E, $38, $42, $46, $50, $5A, $9F, $A0, 0, $B3, $5E
                .byte 0, $B4, 1, 0, $9F, 4, $F3, $B8, $50, $50, $50, $9F
                .byte $B, $F3, $50, $50, $50, $9F, $C, $F3, $50
                .byte $50, $9F, $D, $F3, $50, $50, $9F, $E, $F3, $50, $50
                .byte $B0, 2, $BB, 2, 0, $9F, 4, $F6, $B8, $5A, $5A, $5A
                .byte $9F, $B, $F6, $5A, $5A, $5A, $9F, $C, $F6, $5A, $5A
                .byte $9F, $D, $F6, $5A, $5A, $9F, $E, $F6, $5A, $5A, $B0
                .byte 2, $BB, 2, 0, $9F, $A9, $F3, $B8, 2, $B0, $42, $38
                .byte $3A, $48, $B6, $44, $B0, $4E, $4E, 2, 2, $B6, 2
                .byte $B0, $42, $38, $3A, $48, $B6, $44, $B0, $52, $52
                .byte 2, 2, $B2, 2, $B8, 2, 2, $BB, 2, $9F, $A8, $F3, $B4
                .byte $20, $B3, $26, $22, $B4, $20, $B3, $2C, $26, $9F
                .byte $29, $F2, $C4, $B0, $30, $38, $2A, $30, $FF, $C4
                .byte $32, $3A, $2C, $32, $FF, $C4, $34, $24, $2E, $34
                .byte $FF, $C2, $36, $3E, $30, $36, $FF, $C2, $38, $40
                .byte $32, $38, $FF, $9F, $A8, $F3, $C2, $B0, 2, 2, $20
                .byte 2, 2, $20, 2, 2, $B3, $20, $B0, 2, 2, $22, 2, 2
                .byte $22, 2, 2, $B3, $22, $FF, $BB, 2, $9F, $A1, $B4
                .byte $C2, $B0, $34, $3A, $42, $50, $B2, $48, $42, $3A
                .byte $B1, $42, $3A, $48, $3A, $3E, $34, $2E, $34, $B0
                .byte $4C, $52, $5A, $68, $B2, $60, $5A, $52, $B0, $5A
                .byte $52, $48, $42, $3A, $42, $48, $52, $56, $4C, $46
                .byte $3E, $34, $3E, $46, $4C, $FF, 0, $9F, $A8, $F4, $B0
                .byte $42, $38, $3A, $48, $B6, $44, $B0, $4E, $4E, 2, 2
                .byte $B6, 2, $B0, $42, $38, $3A, $48, $B6, $44, $B0, $52
                .byte $52, 2, 2, $B6, 2, $B4, $2A, $B3, $30, $2C, $B4
                .byte $2A, $B3, $36, $30, $9F, $A9, $F3, $C4, $B0, $42
                .byte $30, $38, $42, $FF, $C4, $44, $32, $3A, $44, $FF
                .byte $C4, $46, $34, $3C, $46, $FF, $C2, $48, $36, $3E
                .byte $48, $FF, $C2, $4A, $38, $40, $4A, $FF, $9F, $A8
                .byte $F4, $C2, $B0, 2, 2, $2A, 2, 2, $2A, 2, 2, $B3, $2A
                .byte $B0, 2, 2, $2C, 2, 2, $2C, 2, 2, $B3, $2C, $FF, $C4
                .byte $B4, $4C, $B3, $48, $46, $FF, 0, $9F, 0, 0, $C5
                .byte $B1, $2A, $20, $26, $20, $B0, $2A, $2A, $B1, $20
                .byte $26, $20, $2A, $20, $26, $20, $B0, $2A, $2A, $B1
                .byte $1A, $1C, $20, $FF, $2A, $2C, $2E, $30, $32, $30
                .byte $2E, $2C, $2C, $2E, $30, $32, $34, $32, $30, $2E
                .byte $2E, $30, $32, $34, $36, $34, $32, $30, $30, $32
                .byte $34, $36, $32, $34, $36, $38, $9F, $F, 0, $E0, $B0
                .byte $2A, $2A, $FF, $9F, 0, 0, $C4, $B1, $34, $32, $30
                .byte $2E, $2C, $2A, $28, $26, $3A, $38, $36, $34, $3E
                .byte $3C, $3A, $38, $FF, 0, $DC, $B0, 4, 4, 4, 4, 7, 4
                .byte 4, 4, $FF, $C4, 4, 4, 7, 4, 4, 7, 4, 4, 7, 4, 4
                .byte 4, 7, 7, 7, 7, $FF, $E0, 4, 4, 7, 4, $FF, 0, $3B
                .byte $96, $71, $98, $A9, $98, $FF, $FF, $49, $98, $4D
                .byte $96, $BD, $98, $3E, $99, $FF, $FF, $53, $98, $5F
                .byte $96, $88, $99, $A7, $99, $9C, $99, $FF, $FF, $5D
                .byte $98, $71, $96, $D4, $99, $D4, $99, $FF, $FF, $69
                .byte $98, $9F, 4, $34, $9E, $C, $B3, 2, $C5, $B1, $54
                .byte $FF, 2, 2, 2, $C5, $4C, $FF, 2, 2, 2
                .byte $54, 2, 2, 2, $54, $B5, 2, $9F, $44, $34, $B1, 2
                .byte $B6, $62, $B1, 2, $9F, 4, $34, $B4, 2, 2, $B1, $54
                .byte $54, $54, $52, $54, $54, $52, $54, $C5, $B4, 2, $FF
                .byte 0, $E0, $B1, $16, $FF, $D0, $20, $FF, $D0, $16, $FF
                .byte $C8, $24, $FF, $C8, $20, $FF, $D0, $16, $FF, 0, $9F
                .byte $A4, $34, $B1, 2, $4C, $4E, $54, $C5, $5E, $FF, $58
                .byte $54, $58, $C5, $54, $FF, $58, $54, $58, $C2, $5E
                .byte $58, $54, $58, $FF, $9F, $44, $34, 2, $B6, $58, $B1
                .byte 2, $C2, $9F, $A4, $34, $B1, $68, 2, $9F, $44, $34
                .byte $B2, $64, $FF, $9F, $A4, $34, $B1, 2, $68, $9F, $44
                .byte $34, $B2, $64, $9F, $A4, $34, $68, $9F, $44, $34
                .byte $64, $9F, 4, $34, $B1, $5E, $5E, $5E, $5C, $5E, $5E
                .byte $5C, $5E, 2, $64, $5E, $5A, $54, $50, $4C, $46, $9F
                .byte $44, $34, $B2, $50, $50, $B1, $50, $9F, 4, $34, $B1
                .byte $50, $4C, $46, 2, $46, $42, $3C, $3A, $38, $34, $2E
                .byte $B1, 2, $50, $9F, $A4, $34, $54, $5E, $5A, $54, $50
                .byte $4C, $46, 2, 2, $B3, $3C, $B1, 2, 0, $C2, $B1, $24
                .byte $24, $28, $24, $24, $24, $28, $24, $24, $24, $28
                .byte $24, $2A, $24, $28, $24, $FF, $C2, $2E, $2E, $32
                .byte $2E, $FF, $2E, $2E, $32, $2E, $34, $2E, $32, $2E
                .byte $C2, $24, $24, $28, $24, $FF, $2A, $24, $28, $24
                .byte $24, $24, $28, $24, $C2, $32, $32, $36, $32, $FF
                .byte $C2, $2E, $2E, $32, $2E, $FF, $C2, $24, $24, $28
                .byte $24, $FF, $2A, $24, $28, $24, $24, $24, $28, $24
                .byte 0, $9F, 0, 0, $B3, 2, $2E, 2, $38, 2, $2E, $2E, $B1
                .byte 2, $C7, $3C, $FF, $9F, $15, 0, 0, $C4, $B1, $2E
                .byte $2E, $36, $36, $3C, $3C, $40, $3C, $FF, $C2, $B1
                .byte $38, $38, $40, $40, $46, $46, $4A, $46, $FF, $C2
                .byte $2E, $2E, $36, $36, $3C, $3C, $40, $3C, $FF, $3C
                .byte $3C, $44, $44, $4A, $4A, $4E, $4A, $38, $38, $40
                .byte $40, $46, $46, $4A, $46, $C8, $2E, $FF, 2, $C7, $3C
                .byte $FF, 0, $B3, 1, $B4, $44, $44, $B3, $44, $44, $B1
                .byte 1, $C7, $84, $FF, $C7, $44, 4, $84, $84, $44, 4
                .byte $84, 4, $FF, $D0, $B0, $84, $FF, $CB, $B1, $44, 4
                .byte $84, $84, $44, 4, $84, 4, $FF, $44, 4, $84, $44
                .byte $C8, $B0, $84, $FF, 0, $B, $9A, 0, 0, $1A, $9A, $29
                .byte $9A, $9F, $A7, $F3, $B0, $1C, $26, $2E, $34, $3E
                .byte $46, $4C, $56, $B4, $54, 0, $9F, $A7, $F3, $B0, $E
                .byte $16, $1C, $26, $2E, $34, $3E, $46, $B4, $34, 0, $9F
                .byte $A0, 0, $B0, $2E, $34, $3E, $46, $4C, $56, $5E, $64
                .byte $B4, $5A, 0, $58, $9A, $74, $9A, $FF, $FF, $3A, $9A
                .byte $61, $9A, $E6, $9A, $FF, $FF, $42, $9A, $6A, $9A
                .byte $93, $9B, $FF, $FF, $4A, $9A, $70, $9A, $AC, $9B
                .byte $FF, $FF, $52, $9A, $9F, $29, $73, $B2, 2, $42, $46
                .byte $48, 0, $9F, $1B, $76, $B2, 2, $4A, $4C, $4E, 0
                .byte $9F, 0, 0, $B4, 2, 0, $B4, 1, 0, 0, $C2, $B3, $50
                .byte $B2, 2, $B1, $50, 2, $4C, 2, $4A, 2, $B2, 2, 2, $FF
                .byte $B4
                .byte 2, 2, $46, $B2, 2, $38, $3C, $3E, $C4, $B4, 2, $FF
                .byte $B2, 2, $B3, $46, $B2, $46, $B1, $46, 2, $42, 2
                .byte $40, 2, $3C, 2, $B4, $4A, $B2, 2, $42, $46, $48
                .byte $C3, $B1, 2, 2, $5A, $5A, $5A, 2, $58, $58, $58
                .byte 2, $54, $54, $54, 2, $50, 2, $FF, $B6, $40, $B2
                .byte $3C, $B4, $46, $C2, $B1, 2, 2, $46, $46, $46, 2
                .byte $42, $42, $42, 2, $40, $40, $40, 2, $3C, 2, $FF
                .byte $B2, 2, $B3, $40, $B2, $42, $46, $50, $4C, $50, $B2
                .byte $50, $50, 2, 2, $32, $B6, 2, 0, $C6, $B0, $50, $4A
                .byte $FF, $B1, $5A, 2, $54, 2, $50, 2, $B2, 2, $4A, $C6
                .byte $B0, $50, $4A, $FF, $B1, $5A, 2, $54, 2, $50, 2
                .byte $B2, 2, $4A, $B1, 2, 2, $72, $6C, $68, $62, $5E
                .byte $5A, $54, $50, $4A, $48, $46, $42, $3C, $38, $C8
                .byte $B0, $50, $40, $FF, $B2, 2, $40, $42, $44, $C2, $B1
                .byte $3E, $40, $50, $3E, $40, $50, $3E, $40, $4C, $3E
                .byte $40, $4C, $4A, $46, $40, $38, $FF, $B2, 2, $C4, $B0
                .byte $58, $46, $FF, $B2, $58, $B1, $58, 2, $54, 2, $50
                .byte 2, $4C, 2, $C8, $B0, $4A, $38, $FF, $B2, 2, $4A
                .byte $4C, $4E, $C3, $B1, 2, 2, $62, $62, $62, 2, $5E
                .byte $5E, $5E, 2, $5A, $5A, $5A, 2, $58, 2, $FF, $B6
                .byte $50, $B2, $4C, $C8, $B0, $46, $40, $FF, $C2, $B1
                .byte 2, 2, $58, $58, $58, 2, $54, $54, $54, 2, $50, $50
                .byte $50, 2, $4C, 2, $FF, $B2, 2, $B3, $46, $B2, $4A
                .byte $4C, $58, $54, $58, $B2, $5A, $5A, $B1, $54, $50
                .byte $B2, $4A, $42, $B6, 2, 0, $9F, 0, 0, $C6, $B5, $2A
                .byte $32, $B2, $20, $FF, $C8, $B5, $20, $28, $B2, $2E
                .byte $FF, $C2, $B5, $2A, $32, $B2, $20, $FF, 0, $E0, $B2
                .byte $41, $B1, 4, 4, $B2, $41, 4, $FF, 0, $DB, $9B, $54
                .byte $9C, $98, $9C, $FF, $FF, $B9, $9B, $FC, $9B, $3F
                .byte $9D, $76, $9D, $FF, $FF, $C3, $9B, $1D, $9C, $AE
                .byte $9D, $FF, $FF, $CD, $9B, $35, $9C, $E8, $9C, $FF
                .byte $FF, $D5, $9B, $9F, $A9, $B2, $B1, $38, $42, $4A
                .byte $B2, $3C, $B2, $40, $B1, $40, $40, $B2, $40, $B3
                .byte $38, $B1, 2, $B1, $38, $42, $4A, $B2, $3C, $B2, $40
                .byte $B4, $40, $B1, 2, 0, $9F, $B2, $B1, $B1, $5A, $62
                .byte $68, $B2, $66, $B2, $68, $B1, $68, $68, $B2, $5E
                .byte $B3, $62, $B1, 2, $B1, $5A, $62, $68, $B2, $66, $B2
                .byte $68, $B4, $68, $B1, 2, 0, $9F, $A0, 0, $B5, $42
                .byte $B3, $46, $B1, 2, $B5, $38, $B3, $42, $B1, 2, $B5
                .byte $42, $B3, $46, $B4, $38, $B1, 2, 0, $C2, $B1, $44
                .byte 4, 4, $44, 1, 4, 1, 4, $FF, $44, 4, 4, $44, 1, $44
                .byte 1, $44, 1, 4, 4, 1, $B0, $81, $81, $B1, $41, $81
                .byte $41, 0, $9F, $B2, $B1, $C2, $B1, 2, $40, $46, $50
                .byte 2, $3C, $46, $4E, 2, $38, $40, $4A, 2, $38, $40
                .byte $46, $42, $4A, $50, $42, $40, $46, $50, $40, $3E
                .byte $46, $4C, $46, $3C, $46, $36, $46, $FF, 2, $32, $38
                .byte $40, 2, $30, $38, $40, 2, $2E, $38
                .byte $40, 2, $2C, $32, $38, $9F, $A9, $B2, $4A, $46, $42
                .byte $46, $46, $46, $42, $46, $B4, $40, 0, $9F, $B2, $F2
                .byte $B1, $36, $1E, $28, $B5, $36, $B2, $1E, $B1, $38
                .byte $20, $2A, $B5, $38, $B2, $20, $B1, $36, $1E, $28
                .byte $2E, $36, $16, $24, $2E, $28, $16, $20, $28, $2E
                .byte $20, $28, $2E, $B1, $4A, $42, $38, $42, $46, $40
                .byte $B2, $38, $B1, $42, $38, $32, $38, $46, $40, $B2
                .byte $38, $B1, $4A, $42, $38, $42, $46, $40, $B2, $38
                .byte $9F, $A9, $B1, $B1, $4A, $4A, $4A, $4A, $50, $B2
                .byte $42, $B4, $40, $B1, 2, 0, 0, $C8, $B1, $41, 4, $81
                .byte $B0, 4, $41, $B1, $41, $44, $81, $B0, 4, 4, $FF
                .byte $C3, $B1, $44, 4, $84, $44, $44, 4, $84, 4, $FF
                .byte $44, 4, $84, $44, $B0, $81, $81, $B1, $81, $81, $81
                .byte $C2, $B1, $44, 4, $84, $44, 1, $84, $84, 1, $FF
                .byte $44, 4, $84, $44, $44, 4, $84, 4, $44, 4, $84, $44
                .byte $44, $81, $81, 7, $C4, $44, 4, $84, $44, $44, 4
                .byte $84, 4, $FF, $44, 4, $84, $44, $44, 4, $B0, $81
                .byte $81, $B1, $81, 0, $9F, $A7, $B3, $C2, $B1, $40, $40
                .byte $46, $46, $B2, $54, $B1, $4E, $B4, $50, $B1, 2, $B1
                .byte $4A, $4A, $50, $50, $B2, $58, $B1, $50, $B3, $46
                .byte $B1, $42, $B3, $42, $FF, $B1, $40, $3C, $38, $3C
                .byte $B2, $40, $4A, $50, $58, $B3, $62, $C2, $B1, $50
                .byte $4E, $4A, $4E, $FF, $B4, $50, 0, $B1, $46, $46, $46
                .byte 2, $B0, $46, 2, $B1, $40, $3C, $B4, $38, $B1, 2
                .byte $B1, $46, $46, $46, 2, $54, $50, $4E, $B6, $50, $B1
                .byte 2, $4A, $4E, $C3, $50, $4E, $4A, $4E, $FF, $50, 2
                .byte $46, $46, $C2, $50, $4E, $4A, $4E, $FF, $C4, $50
                .byte $FF, $58, $B2, $50, $B4, $50, $B1, 2, 0, $9F, 0
                .byte 0, $C2, $B5, $38, $B1, $38, $B5, $36, $B1, $36, $B5
                .byte $32, $B1, $32, $B5, $2E, $B1, $2E, $B5, $2A, $B1
                .byte $2A, $B5, $28, $B1, $28, $B5, $26, $B1, $26, $B5
                .byte $2E, $B1, $2E, $FF, $9F, $1F, 0, $C4, $B1, $32, $FF
                .byte $C4, $30, $FF, $C4, $2E, $FF, $C4, $2C, $FF, $C4
                .byte $2A, $FF, $C4, $2E, $FF, $9F, $A0, 0, $B4, $20, $9F
                .byte 0, 0, $B5, $28, $B3, $28, $B1, 2, $B5, $2A, $B3
                .byte $2A, $B1, 2, $B5, $28, $B1, $28, $B5, $2E, $B1, $2E
                .byte $C2, $B5, $38, $B1, $38, $FF, $9F, $1F, 0, $C4, $B1
                .byte $2A, $FF, $C4, $28, $FF, $C4, $24, $FF, $C4, $28
                .byte $FF, $C4, $2A, $FF, $C4, $28, $FF, $C4, $24, $FF
                .byte $C4, $2E, $FF, $9F, $A0, 0, $B4, $20, 0, $5D, $9E
                .byte $D2, $9E, $D2, $9E, $6B, $9F, $FF, $FF, $2D, $9E
                .byte $84, $9E, $F7, $9E, $F7, $9E, $C0, $9F, $FF, $FF
                .byte $39, $9E, $B0, $9E, $1B, $9F, $1B, $9F, 3, $A0, $FF
                .byte $FF, $45, $9E, $BE, $9E, $57, $9F, $57, $9F, $54
                .byte $A0, $FF, $FF, $51, $9E, $9F, 5, $B1, $B1, $5E, $B2
                .byte $5E, $B1, $60, 2, $B5, $60, $B1, $5A, $B2, $5A, $B1
                .byte $5E, 2, $B5, $5E, $B1, $56, $B2, $56, $B1, $5A, 2
                .byte $B5, $5A, $B1, $54, $B2, $54, $B3, $56, $B1, 2, 0
                .byte $9F
                .byte $AA, $B1, $B1, $4C, $B2, $4C, $B1, $50, 2, $B5, $50
                .byte $B1, $48, $B2, $48, $B1, $4C, 2, $B5, $4C, $B1, $46
                .byte $B2, $46, $B1, $48, 2, $B5, $48, $B1, $42, $B2, $42
                .byte $B2, $46, $9F, 5, $F1, $B1, $20, $18, $12, 0, $9F
                .byte 0, 0, $C7, $B2, 2, $38, $FF, $B1, 2, $38, $30, $2A
                .byte 0, $C7, $B0, 4, 4, 7, 4, $44, 4, 7, 4, $FF, $B1
                .byte 1, $81, $B0, $81, $81, $B1, $41, 0, $9F, $A, $B1
                .byte $B1, 2, $56, $46, $4C, 2, $50, $3E, $48, 2, $54
                .byte $42, $4C, 2, $56, $46, $4C, 2, $50, $3E, $48, 2
                .byte $50, $42, $48, 2, $54, $46, $4E, 2, $56, $46, $50
                .byte 0, $9F, $A2, $B4, $B1, $46, $3E, $46, $48, 2, $B5
                .byte $48, $B1, $4C, $42, $48, $B3, $46, $B1, 2, $48, $4C
                .byte $48, $46, 2, $42, 2, $48, $B1, $46, $3C, $42, $3E
                .byte 2, $B5, 2, 0, $9F, 0, 0, $B7, $26, $B0, $26, $B1
                .byte $2E, $26, $B7, $30, $B0, $30, $B1, $38, $30, $B7
                .byte $34, $B0, $34, $B1, $3C, $34, $B7, $26, $B0, $26
                .byte $B1, $2E, $26, $B7, $30, $B0, $30, $B1, $3E, $26
                .byte $B7, $2A, $B0, $2A, $B1, $38, $2A, $B7, $2E, $B0
                .byte $2E, $B1, $24, $2E, $B7, $38, $B0, $38, $B1, $2E
                .byte $38, 0, $C4, $B1, $44, $B0, 4, $41, $B1, $84, $44
                .byte $44, $B0, 4, $41, $B1, $84, $B0, 4, 4, $FF, 0, $9F
                .byte $B6, $B1, $C3, $B1, $46, $4C, $56, $46, $48, $56
                .byte $48, $4C, $FF, $9F, $D, $B2, $B1, $56, $54, $54
                .byte $4C, $B2, $56, $56, $9F, $B6, $B1, $C2, $B1, $46
                .byte $4C, $56, $46, $48, $56, $48, $4C, $FF, $46, $4C
                .byte $54, $46, $4C, $54, $46, $4C, $9F, $D, $B2, $B1
                .byte $56, $54, $54, $4C, $B2, $56, $54, $B2, $3E, $38
                .byte $3C, $B1, $3C, $3C, $B2, $3E, $34, $B3, $2E, $B1
                .byte $3E, $3C, $38, $34, $B2, $3C, $B1, $2A, $2A, $B6
                .byte $2E, $B2, 2, 0, $C2, $9F, $A2, $F4, $B2, 2, $B1
                .byte $3E, $3E, $46, $4C, $4C, $4C, $B2, $56, $54, $50
                .byte $54, $B1, $50, $B0, $54, $50, $B6, $4C, $9F, $13
                .byte $B3, $B1, $68, $64, $64, $5E, $B2, $68, $64, $FF
                .byte $9F, $A7, $F4, $B2, $50, $3E, $42, $B1, $4C, $48
                .byte $B2, $46, $3E, $B3, $34, $B1, $50, $4C, $48, $46
                .byte $B2, $42, $B1, $3E, $3C, $B6, $3E
; end of 'BANK1C'