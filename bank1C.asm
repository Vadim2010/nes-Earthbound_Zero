; ===========================================================================

; Segment type: Pure code
                ;.segment BANK1C
                * =  $8000

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1C8000:
                JMP     sub_1C8277
; End of function sub_1C8000


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1C8003:
                JMP     sub_1C8299
; End of function sub_1C8003


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1C8006:                             ; CODE XREF: set_apu+11↑J
                JMP     sub_1C8216
; End of function sub_1C8006

; ---------------------------------------------------------------------------
                .WORD sub_1C83FA, loc_1C843A, sub_1C8393, sub_1C83DC, sub_1C8420
                .WORD sub_1C835C, sub_1C8346, sub_1C8328, sub_1C847D, sub_1C8321
                .WORD sub_1C8401, sub_1C8441, sub_1C83A1, sub_1C83E3, sub_1C8427
                .WORD loc_1C8374, sub_1C8410, sub_1C832F, sub_1C8484, sub_1C8410
                .WORD sub_1C86C4, loc_1C8772, loc_1C8747, sub_1C867C, sub_1C8726
                .WORD sub_1C87A9, sub_1C875E, loc_1C8610, sub_1C8829, sub_1C85EB
                .WORD sub_1C85E6, sub_1C8699, sub_1C85DF, sub_1C866E, sub_1C85A4
                .WORD loc_1C8733, sub_1C860D, sub_1C8962, sub_1C86CB, sub_1C877F
                .WORD loc_1C8752, sub_1C8683, sub_1C870F, sub_1C87B7, loc_1C8769
                .WORD sub_1C861E, sub_1C880E, sub_1C85F2, sub_1C85AF, sub_1C86A0
                .WORD sub_1C8683, sub_1C8683, sub_1C8683, loc_1C873E, sub_1C861E
                .WORD loc_1C896C, sub_1C885E, sub_1C884E, sub_1C88D4, sub_1C88E5
                .WORD sub_1C887E, sub_1C88B4, sub_1C88BA, sub_1C88EC, sub_1C84F6
                .WORD loc_1C854D, sub_1C8542, sub_1C8509, sub_1C8559, sub_1C8559

; =============== S U B R O U T I N E =======================================


sub_1C8095:                             ; CODE XREF: sub_1C82DC:loc_1C82F8↓p
                                        ; sub_1C84F6+2↓p ...
                LDA     #0
                BEQ     loc_1C80A3
; End of function sub_1C8095


; =============== S U B R O U T I N E =======================================


sub_1C8099:                             ; CODE XREF: sub_1C82DC:loc_1C8302↓p
                                        ; sub_1C88EC+14↓j
                LDA     #8
                BNE     loc_1C80A3
; End of function sub_1C8099


; =============== S U B R O U T I N E =======================================


sub_1C809D:                             ; CODE XREF: sub_1C82DC:loc_1C8307↓p
                                        ; sub_1C832F+7↓p
                LDA     #$C
                BNE     loc_1C80A3
; End of function sub_1C809D


; =============== S U B R O U T I N E =======================================


sub_1C80A1:                             ; CODE XREF: sub_1C82DC:loc_1C82FD↓p
                                        ; sub_1C84BC+3↓p
                LDA     #4

loc_1C80A3:                             ; CODE XREF: sub_1C8095+2↑j
                                        ; sub_1C8099+2↑j ...
                STA     apu_B0
                LDA     #$40 ; '@'
                STA     byte_B1
                STY     PointerAPU
                LDA     #$81
                STA     PointerAPU+1
                LDY     #0

loc_1C80B1:                             ; CODE XREF: sub_1C80A1+18↓j
                LDA     (PointerAPU),Y
                STA     (apu_B0),Y
                INY
                TYA
                CMP     #4
                BNE     loc_1C80B1
                RTS
; End of function sub_1C80A1


; =============== S U B R O U T I N E =======================================


sub_1C80BC:                             ; CODE XREF: sub_1C8277+5↓p
                LDA     apu_BB
                AND     #2
                STA     apu_7FF
                LDA     apu_BC
                AND     #2
                EOR     apu_7FF
                CLC
                BEQ     loc_1C80CE
                SEC

loc_1C80CE:                             ; CODE XREF: sub_1C80BC+F↑j
                ROR     apu_BB
                ROR     apu_BC
                RTS
; End of function sub_1C80BC


; =============== S U B R O U T I N E =======================================


sub_1C80D3:                             ; CODE XREF: sub_1C832F↓p
                                        ; sub_1C8370:loc_1C8374↓p ...
                LDX     apu_BD
                INC     byte_7DA,X
                LDA     byte_7DA,X
                CMP     byte_7D5,X
                BNE     locret_1C80E5
                LDA     #0
                STA     byte_7DA,X

locret_1C80E5:                          ; CODE XREF: sub_1C80D3+B↑j
                RTS
; End of function sub_1C80D3

; ---------------------------------------------------------------------------
byte_1C80E6:    .BYTE $53, $93, $42, $93, $42, $93, $42, $93, $42, $93
                                        ; DATA XREF: sub_1C8216:loc_1C8228↓r
                .BYTE $42, $93, $42, $93, $42, $93, $42, $93, 0, 0
byte_1C80FA:    .BYTE $A4, $AC, $A3, $AC, $A4, $AC, $16, $7F, $E, $80
                                        ; DATA XREF: sub_1C86CB+17↓r
                .BYTE $3E, $7F, $E, 8, $1F, $7F, $F, $C0, $3F, $7F
byte_1C810E:    .BYTE 0, $B0, $11, $7F, $E, $30, $9B, $7F, $C, $28
                                        ; DATA XREF: sub_1C8393+7↓r
byte_1C8118:    .BYTE $10, $7F          ; DATA XREF: sub_1C835C+D↓r
byte_1C811A:    .BYTE $87, $B0, $A, $7F, $F, 8
                                        ; DATA XREF: sub_1C835C+7↓r
byte_1C8120:    .BYTE $B0, $7F, $1C, $40, $B0, $7F, $32, $40, $B1, $7F
                                        ; DATA XREF: sub_1C84F6+C↓r
byte_1C812A:    .BYTE $40, $40, $B1, $7F ; DATA XREF: sub_1C857E+D↓r
byte_1C812E:    .BYTE $42, $40, $B1, $8E, $A0, $47, $B1, $7F, $FF, $47
                                        ; DATA XREF: sub_1C857E+17↓r
                .BYTE $1F, $7F, $30
byte_1C813B:    .BYTE 8, $1F, $BB, $D4, 8, $81, $A7, $E1, $88, $99, $7F
                                        ; DATA XREF: sub_1C8962+2D↓r
byte_1C8146:    .BYTE $15, $88, $9B, $7F ; DATA XREF: sub_1C860D+A↓r
                                        ; sub_1C861E:loc_1C863C↓r
byte_1C814A:    .BYTE $1F, $88, $D8, $7F, $20, $28, $D1, $7F, $20, $28
                                        ; DATA XREF: sub_1C861E+17↓r
                .BYTE $D9, $7F
byte_1C8156:    .BYTE $54, $28, $9E, $9D, $C0, 8, $9C, $9A, $E8, 8, $9E
                                        ; DATA XREF: sub_1C87A9+7↓r
                .BYTE $7F, $40, 8, $94, $C6, $67, $28, $96, $CE, $47, $28
                .BYTE $D9, $A5, $7B, $F9, $D6, $A5, $90, $F9, $DA, $96
                .BYTE $46, $F9, $96, $7F, $76, $20, $82, $7F, $27, $F8
                .BYTE $94, $A5, $89, $48, $96, $AD, $7A, $58, $93, $A5
                .BYTE $99, $28, $9F, $84, $80, $FA, $94, $84, $24, $18
                .BYTE $94, $7F, $94, $18, $95, $B4, $57, $F8, 2, $7F, $67
                .BYTE 9, $7F, $7F, $E1, $A, $7F, $7F, $21
byte_1C81A7:    .BYTE 9, 4, $7F, $5D, $28, 3, $7F, $38, $28
                                        ; DATA XREF: sub_1C88BA+13↓r

; =============== S U B R O U T I N E =======================================


sub_1C81B0:                             ; CODE XREF: sub_1C8277+E↓p
                LDX     #3
                LDA     #$79 ; 'y'
                LDY     #$81
                BNE     loc_1C81D3
; End of function sub_1C81B0


; =============== S U B R O U T I N E =======================================


sub_1C81B8:                             ; CODE XREF: sub_1C8277+B↓p
                LDX     #4
                LDA     #$89
                LDY     #$8F
                BNE     loc_1C81D3
; End of function sub_1C81B8


; =============== S U B R O U T I N E =======================================


sub_1C81C0:                             ; CODE XREF: sub_1C8277+11↓p
                LDA     apu_7F8+4
                BNE     locret_1C8237
                LDX     #1
                LDA     #$31 ; '1'
                LDY     #$55 ; 'U'
                BNE     loc_1C81D3
; End of function sub_1C81C0


; =============== S U B R O U T I N E =======================================


sub_1C81CD:                             ; CODE XREF: sub_1C8277+8↓p
                LDX     #0
                LDA     #9
                LDY     #$1D

loc_1C81D3:                             ; CODE XREF: sub_1C81B0+6↑j
                                        ; sub_1C81B8+6↑j ...
                STA     apu_B0
                STX     apu_BD
                LDA     apu_7F0,X
                BEQ     loc_1C820D

loc_1C81DC:                             ; CODE XREF: sub_1C81CD+47↓j
                STA     apu_BF
                STA     PointerAPU
                LDY     #$80
                STY     byte_B1
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
byte_1C8205:    .BYTE $E, 0, 2, 4, 6, 8, $A, $C
                                        ; DATA XREF: sub_1C81CD+1A↑r
; ---------------------------------------------------------------------------

loc_1C820D:                             ; CODE XREF: sub_1C81CD+D↑j
                LDA     apu_7F8,X
                BEQ     locret_1C8237
                STY     apu_B0
                BNE     loc_1C81DC
; End of function sub_1C81CD


; =============== S U B R O U T I N E =======================================


sub_1C8216:                             ; CODE XREF: sub_1C8006↑j
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
                LDA     #$55
                STA     apu_BB
                LDA     #0
                STA     apu_786
                STA     apu_78B
                TAY

loc_1C8228:                             ; CODE XREF: sub_1C8216+1C↓j
                LDA     byte_1C80E6,Y
                STA     apu_76C,Y
                INY
                TYA
                CMP     #$14
                BNE     loc_1C8228
                JSR     sub_1C8299

locret_1C8237:                          ; CODE XREF: sub_1C81C0+3↑j
                                        ; sub_1C81CD+43↑j
                RTS
; End of function sub_1C8216

; ---------------------------------------------------------------------------
off_1C8238:     .WORD byte_1C935A, byte_1C9365, byte_1C9370, byte_1C937C
                                        ; DATA XREF: sub_1C8248+1E↓r
                                        ; sub_1C8248+25↓r
                .WORD byte_1C9388, byte_1C9391, byte_1C939E, byte_1C93AA

; =============== S U B R O U T I N E =======================================


sub_1C8248:                             ; CODE XREF: sub_1C8903↓p
                LDA     CurrentGame.field_21E
                STA     apu_B0
                LDY     #0
                BEQ     loc_1C825D

loc_1C8251:                             ; CODE XREF: sub_1C8248+1C↓j
                LDA     #$42 ; 'B'
                STA     apu_76C+2,Y
                INY
                LDA     #$93
                STA     apu_76C+2,Y
                INY

loc_1C825D:                             ; CODE XREF: sub_1C8248+7↑j
                                        ; sub_1C8248+2C↓j
                TYA
                CMP     #$10
                BEQ     locret_1C8276
                LSR     apu_B0
                BCC     loc_1C8251
                LDA     off_1C8238,Y
                STA     apu_76C+2,Y
                INY
                LDA     off_1C8238,Y
                STA     apu_76C+2,Y
                INY
                BNE     loc_1C825D

locret_1C8276:                          ; CODE XREF: sub_1C8248+18↑j
                RTS
; End of function sub_1C8248


; =============== S U B R O U T I N E =======================================


sub_1C8277:                             ; CODE XREF: sub_1C8000↑j
                LDA     #$C0            ; APU mode 5-step, IRQ disable
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
                JSR     sub_1C80BC
                JSR     sub_1C81CD
                JSR     sub_1C81B8
                JSR     sub_1C81B0
                JSR     sub_1C81C0
                JSR     loc_1C8911
                LDA     #0
                LDX     #6

loc_1C8292:                             ; CODE XREF: sub_1C8277+1F↓j
                STA     ModeSRAM,X
                DEX
                BNE     loc_1C8292
                RTS
; End of function sub_1C8277


; =============== S U B R O U T I N E =======================================


sub_1C8299:                             ; CODE XREF: sub_1C8003↑j
                                        ; sub_1C8216+1E↑p ...
                JSR     sub_1C82A8

loc_1C829C:                             ; CODE XREF: sub_1C8AEC↓p
                JSR     sub_1C82C6
                LDA     #0
                STA     pAPU_DM_DAR     ; pAPU Delta Modulation D/A Register (W)
                STA     apu_79C
                RTS
; End of function sub_1C8299


; =============== S U B R O U T I N E =======================================


sub_1C82A8:                             ; CODE XREF: sub_1C8299↑p
                LDA     #0
                STA     apu_7C8
                STA     apu_7C9
                STA     apu_7CA
                STA     apu_78C
                STA     PulseChannels
                TAY

@clear:                                 ; CODE XREF: sub_1C82A8+1B↓j
                LDA     #0
                STA     apu_7F8,Y
                INY
                TYA
                CMP     #6
                BNE     @clear
                RTS
; End of function sub_1C82A8


; =============== S U B R O U T I N E =======================================


sub_1C82C6:                             ; CODE XREF: sub_1C8299:loc_1C829C↑p
                LDA     #0
                STA     pAPU_DM_DAR     ; pAPU Delta Modulation D/A Register (W)
                LDA     #$10
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                STA     pAPU_P_2_CR     ; pAPU Pulse #2 Control Register (W)
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                LDA     #0
                STA     pAPU_T_CR_1     ; pAPU Triangle Control Register #1 (W)
                RTS
; End of function sub_1C82C6


; =============== S U B R O U T I N E =======================================


sub_1C82DC:                             ; CODE XREF: sub_1C8321+4↓j
                                        ; sub_1C8328+4↓j ...
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

loc_1C82F8:                             ; CODE XREF: sub_1C82DC+11↑j
                JSR     sub_1C8095
                BEQ     loc_1C830A

loc_1C82FD:                             ; CODE XREF: sub_1C82DC+15↑j
                JSR     sub_1C80A1
                BEQ     loc_1C830A

loc_1C8302:                             ; CODE XREF: sub_1C82DC+19↑j
                JSR     sub_1C8099
                BEQ     loc_1C830A

loc_1C8307:                             ; CODE XREF: sub_1C82DC+D↑j
                JSR     sub_1C809D

loc_1C830A:                             ; CODE XREF: sub_1C82DC+A↑j
                                        ; sub_1C82DC+1F↑j ...
                LDA     apu_BF
                STA     apu_7F8,X
                LDA     #0
                STA     byte_7DA,X

loc_1C8314:                             ; CODE XREF: sub_1C84BC+1E↓j
                STA     byte_7DF,X
                STA     byte_7E3,X
                STA     byte_7E7,X
                STA     PulseChannels

locret_1C8320:                          ; CODE XREF: sub_1C832F+3↓j
                                        ; sub_1C832F+12↓j
                RTS
; End of function sub_1C82DC


; =============== S U B R O U T I N E =======================================


sub_1C8321:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$30 ; '0'
                LDY     #$1C
                JMP     sub_1C82DC
; End of function sub_1C8321


; =============== S U B R O U T I N E =======================================


sub_1C8328:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$C
                LDY     #$14
                JMP     sub_1C82DC
; End of function sub_1C8328


; =============== S U B R O U T I N E =======================================


sub_1C832F:                             ; DATA XREF: BANK1C:8009↑o
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


sub_1C8346:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #4
                LDY     #$14
                JSR     sub_1C82DC
                LDA     #2
                STA     byte_7F3
                LDA     apu_BB
                AND     #$F7

loc_1C8356:                             ; CODE XREF: sub_1C8484+1F↓j
                AND     #$F
                STA     pAPU_N_FR_1     ; pAPU Noise Frequency Register #1 (W)
                RTS
; End of function sub_1C8346


; =============== S U B R O U T I N E =======================================


sub_1C835C:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #6
                LDY     #$18
                JSR     sub_1C82DC
                LDA     byte_1C811A
                STA     byte_7DF
                LDA     byte_1C8118
                STA     byte_7E3

locret_1C836F:                          ; CODE XREF: sub_1C8370+7↓j
                RTS
; End of function sub_1C835C


; =============== S U B R O U T I N E =======================================


sub_1C8370:
                LDA     #$86
                BNE     loc_1C838F

loc_1C8374:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C836F
                INC     byte_7DF
                INC     byte_7E3
                LDA     byte_7E3
                CMP     #$19
                BNE     loc_1C8389
                JMP     sub_1C8415
; ---------------------------------------------------------------------------

loc_1C8389:                             ; CODE XREF: sub_1C8370+14↑j
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                LDA     byte_7DF

loc_1C838F:                             ; CODE XREF: sub_1C8370+2↑j
                STA     pAPU_N_FR_1     ; pAPU Noise Frequency Register #1 (W)
                RTS
; End of function sub_1C8370


; =============== S U B R O U T I N E =======================================


sub_1C8393:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #5
                LDY     #$C
                JSR     sub_1C82DC
                LDA     byte_1C810E
                STA     byte_7DF

locret_1C83A0:                          ; CODE XREF: sub_1C83A1+A↓j
                                        ; sub_1C83B1+16↓j
                RTS
; End of function sub_1C8393


; =============== S U B R O U T I N E =======================================


sub_1C83A1:                             ; DATA XREF: BANK1C:8009↑o
                LDA     byte_7E7
                CMP     #2
                BEQ     sub_1C83B1
                JSR     sub_1C80D3
                BNE     locret_1C83A0
                INC     byte_7E7
                RTS
; End of function sub_1C83A1


; =============== S U B R O U T I N E =======================================


sub_1C83B1:                             ; CODE XREF: sub_1C83A1+5↑j
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

loc_1C83CC:                             ; CODE XREF: sub_1C83B1+3↑j
                INC     byte_7DF
                LDA     byte_7DF

loc_1C83D2:                             ; CODE XREF: sub_1C83D6+3↓j
                STA     pAPU_N_FR_1     ; pAPU Noise Frequency Register #1 (W)

locret_1C83D5:                          ; CODE XREF: sub_1C83E3+3↓j
                                        ; sub_1C83E3+12↓j
                RTS
; End of function sub_1C83B1


; =============== S U B R O U T I N E =======================================


sub_1C83D6:                             ; CODE XREF: sub_1C8401+7↓p
                                        ; sub_1C8427+7↓p ...
                JSR     sub_1C845C
                JMP     loc_1C83D2
; End of function sub_1C83D6


; =============== S U B R O U T I N E =======================================


sub_1C83DC:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #3
                LDY     #$10
                JMP     sub_1C82DC
; End of function sub_1C83DC


; =============== S U B R O U T I N E =======================================


sub_1C83E3:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C83D5
                INC     byte_7DF
                LDA     byte_7DF
                ORA     #$10
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                CMP     #$10
                BNE     locret_1C83D5
                JMP     sub_1C8415
; End of function sub_1C83E3


; =============== S U B R O U T I N E =======================================


sub_1C83FA:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$10
                LDY     #8
                JMP     sub_1C82DC
; End of function sub_1C83FA


; =============== S U B R O U T I N E =======================================


sub_1C8401:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BEQ     sub_1C8415
                LDX     #$81
                JSR     sub_1C83D6
                LDX     #$89
                JMP     loc_1C8450
; End of function sub_1C8401


; =============== S U B R O U T I N E =======================================


sub_1C8410:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C841F
; End of function sub_1C8410


; =============== S U B R O U T I N E =======================================


sub_1C8415:                             ; CODE XREF: sub_1C832F+14↑j
                                        ; sub_1C8370+16↑j ...
                LDA     #0
                STA     apu_7F8
                LDA     #$10
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)

locret_1C841F:                          ; CODE XREF: sub_1C8410+3↑j
                RTS
; End of function sub_1C8415


; =============== S U B R O U T I N E =======================================


sub_1C8420:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$20 ; ' '
                LDY     #8
                JMP     sub_1C82DC
; End of function sub_1C8420


; =============== S U B R O U T I N E =======================================


sub_1C8427:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BEQ     sub_1C8415
                LDX     #$91
                JSR     sub_1C83D6
                LDX     #$A1
                JMP     loc_1C8450
; End of function sub_1C8427


; =============== S U B R O U T I N E =======================================


sub_1C8436:                             ; CODE XREF: sub_1C83B1+18↑j
                LDA     #2
                STA     apu_BF

loc_1C843A:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$40 ; '@'
                LDY     #8
                JMP     sub_1C82DC
; End of function sub_1C8436


; =============== S U B R O U T I N E =======================================


sub_1C8441:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     loc_1C8449
                JMP     sub_1C8415
; ---------------------------------------------------------------------------

loc_1C8449:                             ; CODE XREF: sub_1C8441+3↑j
                LDX     #$B1
                JSR     sub_1C83D6
                LDX     #$D1

loc_1C8450:                             ; CODE XREF: sub_1C8401+C↑j
                                        ; sub_1C8427+C↑j
                JSR     sub_1C845C
                ORA     #$10
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                INC     byte_7DF
                RTS
; End of function sub_1C8441


; =============== S U B R O U T I N E =======================================


sub_1C845C:                             ; CODE XREF: sub_1C83D6↑p
                                        ; sub_1C8441:loc_1C8450↑p
                STX     apu_B0
                LDY     #$C1
                STY     byte_B1
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

loc_1C8476:                             ; CODE XREF: sub_1C845C+13↑j
                LDA     byte_B4
                LSR     A
                LSR     A
                LSR     A
                LSR     A

locret_1C847C:                          ; CODE XREF: sub_1C8484+3↓j
                                        ; sub_1C8484+1D↓j
                RTS
; End of function sub_1C845C


; =============== S U B R O U T I N E =======================================


sub_1C847D:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #8
                LDY     #4
                JMP     sub_1C82DC
; End of function sub_1C847D


; =============== S U B R O U T I N E =======================================


sub_1C8484:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C847C
                LDA     byte_7DF
                INC     byte_7DF
                CMP     #$28 ; '('
                BEQ     loc_1C84B9
                CMP     #$10
                BEQ     loc_1C84AE
                CMP     #$18
                BEQ     loc_1C84AA
                CMP     #$20 ; ' '
                BEQ     loc_1C84A6
                CMP     #$10
                BCS     locret_1C847C
                JMP     loc_1C8356
; ---------------------------------------------------------------------------

loc_1C84A6:                             ; CODE XREF: sub_1C8484+19↑j
                LDA     #$31 ; '1'
                BNE     loc_1C84B0

loc_1C84AA:                             ; CODE XREF: sub_1C8484+15↑j
                LDA     #$32 ; '2'
                BNE     loc_1C84B0

loc_1C84AE:                             ; CODE XREF: sub_1C8484+11↑j
                LDA     #$33 ; '3'

loc_1C84B0:                             ; CODE XREF: sub_1C8484+24↑j
                                        ; sub_1C8484+28↑j
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                LDA     #$F
                STA     pAPU_N_FR_1     ; pAPU Noise Frequency Register #1 (W)
                RTS
; ---------------------------------------------------------------------------

loc_1C84B9:                             ; CODE XREF: sub_1C8484+D↑j
                JMP     sub_1C8415
; End of function sub_1C8484


; =============== S U B R O U T I N E =======================================


sub_1C84BC:                             ; CODE XREF: sub_1C84F6+9↓p
                                        ; sub_1C8542:loc_1C8556↓j
                STA     byte_7D9
                JSR     sub_1C80A1
                LDA     apu_BF
                STA     apu_7F8+4
                LDX     #1
                STX     apu_7C8
                INX
                STX     apu_7C9
                LDA     #0
                STA     byte_7DE
                STA     apu_7F8+1
                LDX     #1
                JMP     loc_1C8314
; End of function sub_1C84BC


; =============== S U B R O U T I N E =======================================


sub_1C84DD:                             ; CODE XREF: sub_1C8509+19↓j
                                        ; sub_1C8559:loc_1C8576↓j
                JSR     loc_1C8688
                JSR     sub_1C8840
                INC     PulseChannels
                LDA     #0
                STA     apu_7F8+4
                LDX     #1
                LDA     #$7F

loc_1C84EF:                             ; CODE XREF: sub_1C8559+1A↓j
                                        ; sub_1C8559+22↓j
                STA     pAPU_P_1_CR,X   ; pAPU Pulse #1 Control Register (W)
                STA     pAPU_P_2_CR,X   ; pAPU Pulse #2 Control Register (W)
                RTS
; End of function sub_1C84DD


; =============== S U B R O U T I N E =======================================


sub_1C84F6:                             ; DATA XREF: BANK1C:8009↑o
                LDY     #$24 ; '$'
                JSR     sub_1C8095
                LDA     #$A
                LDY     #$20 ; ' '
                JSR     sub_1C84BC
                LDA     byte_1C8120
                STA     byte_7E0

locret_1C8508:                          ; CODE XREF: sub_1C8509+24↓j
                RTS
; End of function sub_1C84F6


; =============== S U B R O U T I N E =======================================


sub_1C8509:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     loc_1C8533
                LDA     byte_7E4
                BEQ     loc_1C8518
                DEC     byte_7E0
                BNE     loc_1C851B

loc_1C8518:                             ; CODE XREF: sub_1C8509+8↑j
                INC     byte_7E0

loc_1C851B:                             ; CODE XREF: sub_1C8509+D↑j
                LDA     byte_7E0
                CMP     #$B0
                BNE     loc_1C8525
                JMP     sub_1C84DD
; ---------------------------------------------------------------------------

loc_1C8525:                             ; CODE XREF: sub_1C8509+17↑j
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                STA     pAPU_P_2_CR     ; pAPU Pulse #2 Control Register (W)
                CMP     #$BF
                BNE     locret_1C8508
                INC     byte_7E4
                RTS
; ---------------------------------------------------------------------------

loc_1C8533:                             ; CODE XREF: sub_1C8509+3↑j
                LDY     #$1A
                LDA     byte_7DE
                AND     #1
                BNE     loc_1C853E
                LDY     #$1B

loc_1C853E:                             ; CODE XREF: sub_1C8509+31↑j
                STY     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                RTS
; End of function sub_1C8509


; =============== S U B R O U T I N E =======================================


sub_1C8542:                             ; DATA XREF: BANK1C:8009↑o
                LDY     #$30 ; '0'
                JSR     sub_1C8095
                LDA     #8
                LDY     #$34 ; '4'
                BNE     loc_1C8556

loc_1C854D:                             ; DATA XREF: BANK1C:8009↑o
                LDY     #$2C ; ','
                JSR     sub_1C8095
                LDA     #3
                LDY     #$28 ; '('

loc_1C8556:                             ; CODE XREF: sub_1C8542+9↑j
                JMP     sub_1C84BC
; End of function sub_1C8542


; =============== S U B R O U T I N E =======================================


sub_1C8559:                             ; DATA XREF: BANK1C:8009↑o
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

loc_1C8576:                             ; CODE XREF: sub_1C8559+12↑j
                JMP     sub_1C84DD
; ---------------------------------------------------------------------------

loc_1C8579:                             ; CODE XREF: sub_1C8559+16↑j
                ORA     #$B0
                JMP     loc_1C84EF
; End of function sub_1C8559


; =============== S U B R O U T I N E =======================================


sub_1C857E:                             ; CODE XREF: sub_1C8559↑p
                                        ; sub_1C8559+6↑j
                INC     byte_7E4
                LDA     byte_7E4
                AND     #7
                TAY
                LDA     byte_1C859C,Y
                CLC
                ADC     byte_1C812A
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     byte_1C859C,Y
                CLC
                ADC     byte_1C812E
                STA     pAPU_P_2_FTR    ; pAPU Pulse #2 Fine Tune (FT) Register (W)

locret_1C859B:                          ; CODE XREF: sub_1C85AF+D↓j
                                        ; sub_1C85AF+26↓j
                RTS
; End of function sub_1C857E

; ---------------------------------------------------------------------------
byte_1C859C:    .BYTE 0, 1, 2, 1, 0, $FF, $FE, $FF
                                        ; DATA XREF: sub_1C857E+9↑r
                                        ; sub_1C857E+13↑r

; =============== S U B R O U T I N E =======================================


sub_1C85A4:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$A
                LDY     #$98
                JMP     sub_1C82DC
; End of function sub_1C85A4

; ---------------------------------------------------------------------------
byte_1C85AB:    .BYTE $14, $93, $94, $D3 ; DATA XREF: sub_1C85AF+18↓r

; =============== S U B R O U T I N E =======================================


sub_1C85AF:                             ; DATA XREF: BANK1C:8009↑o
                LDA     byte_7E4
                BEQ     loc_1C85C1
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #$16
                BNE     locret_1C859B
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C85C1:                             ; CODE XREF: sub_1C85AF+3↑j
                LDA     byte_7E0
                AND     #3
                TAY
                LDA     byte_1C85AB,Y
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #8
                BNE     locret_1C859B
                INC     byte_7E4
                LDY     #$7C ; '|'
                JMP     sub_1C8095
; End of function sub_1C85AF


; =============== S U B R O U T I N E =======================================


sub_1C85DF:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #2
                LDY     #$90
                JMP     sub_1C82DC
; End of function sub_1C85DF


; =============== S U B R O U T I N E =======================================


sub_1C85E6:                             ; DATA XREF: BANK1C:8009↑o
                LDY     #$78 ; 'x'
                JMP     sub_1C82DC
; End of function sub_1C85E6


; =============== S U B R O U T I N E =======================================


sub_1C85EB:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #4
                LDY     #$64 ; 'd'
                JMP     sub_1C82DC
; End of function sub_1C85EB


; =============== S U B R O U T I N E =======================================


sub_1C85F2:                             ; DATA XREF: BANK1C:8009↑o
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

loc_1C8608:                             ; CODE XREF: sub_1C85F2+D↑j
                LDY     #$68 ; 'h'
                JMP     sub_1C8095
; End of function sub_1C85F2


; =============== S U B R O U T I N E =======================================


sub_1C860D:                             ; DATA XREF: BANK1C:8009↑o
                INC     apu_78B

loc_1C8610:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$F
                LDY     #$44 ; 'D'
                JSR     sub_1C82DC
                LDA     byte_1C8146

loc_1C861A:                             ; CODE XREF: sub_1C861E+28↓j
                STA     byte_7E8
                RTS
; End of function sub_1C860D


; =============== S U B R O U T I N E =======================================


sub_1C861E:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     loc_1C8661
                INC     byte_7E4
                LDA     byte_7E4
                CMP     #8
                BEQ     loc_1C865A
                CMP     #$24 ; '$'
                BEQ     loc_1C8648

loc_1C8631:                             ; CODE XREF: sub_1C861E+41↓j
                AND     #1
                BEQ     loc_1C863C
                LDA     byte_1C814A
                LDY     #$48 ; 'H'
                BNE     loc_1C8641

loc_1C863C:                             ; CODE XREF: sub_1C861E+15↑j
                LDA     byte_1C8146
                LDY     #$44 ; 'D'

loc_1C8641:                             ; CODE XREF: sub_1C861E+1C↑j
                PHA
                JSR     sub_1C8095
                PLA
                BNE     loc_1C861A

loc_1C8648:                             ; CODE XREF: sub_1C861E+11↑j
                LDA     apu_78B
                BEQ     loc_1C8657
                LDA     #0
                STA     apu_78B
                LDA     #$25 ; '%'
                STA     apu_7F5

loc_1C8657:                             ; CODE XREF: sub_1C861E+2D↑j
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C865A:                             ; CODE XREF: sub_1C861E+D↑j
                LDA     #2
                STA     byte_7D6
                BNE     loc_1C8631

loc_1C8661:                             ; CODE XREF: sub_1C861E+3↑j
                DEC     byte_7E8
                DEC     byte_7E8
                LDA     byte_7E8
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)

locret_1C866D:                          ; CODE XREF: sub_1C85F2+3↑j
                                        ; sub_1C85F2+11↑j ...
                RTS
; End of function sub_1C861E


; =============== S U B R O U T I N E =======================================


sub_1C866E:                             ; DATA XREF: BANK1C:8009↑o
                LDA     apu_7F8+1
                CMP     #7
                BEQ     locret_1C866D
                LDA     #2
                LDY     #$94
                JMP     sub_1C82DC
; End of function sub_1C866E


; =============== S U B R O U T I N E =======================================


sub_1C867C:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$10
                LDY     #$8C
                JMP     sub_1C82DC
; End of function sub_1C867C


; =============== S U B R O U T I N E =======================================


sub_1C8683:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C8698

loc_1C8688:                             ; CODE XREF: sub_1C84DD↑p
                                        ; sub_1C85AF+F↑j ...
                LDA     #$10
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                LDA     #0
                STA     apu_7C8
                STA     apu_7F8+1
                INC     PulseChannels

locret_1C8698:                          ; CODE XREF: sub_1C8683+3↑j
                                        ; sub_1C86A0+3↓j ...
                RTS
; End of function sub_1C8683


; =============== S U B R O U T I N E =======================================


sub_1C8699:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #6
                LDY     #$80
                JMP     sub_1C82DC
; End of function sub_1C8699


; =============== S U B R O U T I N E =======================================


sub_1C86A0:                             ; DATA XREF: BANK1C:8009↑o
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

loc_1C86BA:                             ; CODE XREF: sub_1C86A0+D↑j
                LDY     #$84
                JMP     sub_1C8095
; ---------------------------------------------------------------------------

loc_1C86BF:                             ; CODE XREF: sub_1C86A0+11↑j
                LDY     #$88
                JMP     sub_1C8095
; End of function sub_1C86A0


; =============== S U B R O U T I N E =======================================


sub_1C86C4:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #8
                LDY     #$6C ; 'l'
                JMP     sub_1C82DC
; End of function sub_1C86C4


; =============== S U B R O U T I N E =======================================


sub_1C86CB:                             ; DATA XREF: BANK1C:8009↑o
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
                STA     pAPU_P_1_RCR    ; pAPU Pulse #1 Ramp Control Register (W)
                RTS
; ---------------------------------------------------------------------------

loc_1C86E9:                             ; CODE XREF: sub_1C86CB+A↑j
                INC     byte_7E8
                RTS
; End of function sub_1C86CB


; =============== S U B R O U T I N E =======================================


sub_1C86ED:                             ; CODE XREF: sub_1C86CB+3↑j
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

loc_1C8702:                             ; CODE XREF: sub_1C86ED+8↑j
                LDY     #$70 ; 'p'
                BNE     loc_1C8708

loc_1C8706:                             ; CODE XREF: sub_1C86ED+C↑j
                LDY     #$74 ; 't'

loc_1C8708:                             ; CODE XREF: sub_1C86ED+17↑j
                JSR     sub_1C8095
                INC     byte_7E0

locret_1C870E:                          ; CODE XREF: sub_1C86ED+10↑j
                                        ; sub_1C870F+3↓j ...
                RTS
; End of function sub_1C86ED


; =============== S U B R O U T I N E =======================================


sub_1C870F:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C870E
                INC     byte_7E0
                LDA     byte_7E0
                CMP     #2
                BNE     loc_1C8721
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C8721:                             ; CODE XREF: sub_1C870F+D↑j
                LDY     #$50 ; 'P'
                JMP     sub_1C8095
; End of function sub_1C870F


; =============== S U B R O U T I N E =======================================


sub_1C8726:                             ; DATA XREF: BANK1C:8009↑o
                LDA     apu_7F8+1
                CMP     #7
                BEQ     locret_1C870E
                LDA     #3
                LDY     #$4C ; 'L'
                BNE     loc_1C875B

loc_1C8733:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #$10
                LDY     #$3C ; '<'
                JSR     loc_1C875B
                LDA     #$18
                BNE     loc_1C877B

loc_1C873E:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$3C ; '<'
                BNE     loc_1C8786

loc_1C8747:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #6
                LDY     #$58 ; 'X'
                JSR     loc_1C875B
                LDA     #$10
                BNE     loc_1C877B

loc_1C8752:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$58 ; 'X'
                BNE     loc_1C8786

loc_1C875B:                             ; CODE XREF: sub_1C8726+B↑j
                                        ; sub_1C8726+11↑p ...
                JMP     sub_1C82DC
; End of function sub_1C8726


; =============== S U B R O U T I N E =======================================


sub_1C875E:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #5
                LDY     #$5C ; '\'
                JSR     loc_1C875B
                LDA     #8
                BNE     loc_1C877B

loc_1C8769:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$5C ; '\'
                BNE     loc_1C8786

loc_1C8772:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #6
                LDY     #$60 ; '`'
                JSR     loc_1C875B
                LDA     #0

loc_1C877B:                             ; CODE XREF: sub_1C8726+16↑j
                                        ; sub_1C8726+2A↑j ...
                STA     byte_7E4

locret_1C877E:                          ; CODE XREF: sub_1C8726+1B↑j
                                        ; sub_1C8726+2F↑j ...
                RTS
; End of function sub_1C875E


; =============== S U B R O U T I N E =======================================


sub_1C877F:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C877E
                LDY     #$60 ; '`'

loc_1C8786:                             ; CODE XREF: sub_1C8726+1F↑j
                                        ; sub_1C8726+33↑j ...
                JSR     sub_1C8095
                CLC
                LDA     byte_7E4
                ADC     byte_7E0
                TAY
                LDA     byte_1C87EE,Y
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDY     byte_7E0
                LDA     byte_1C87E5,Y
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                BNE     loc_1C87A5
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C87A5:                             ; CODE XREF: sub_1C877F+21↑j
                INC     byte_7E0

locret_1C87A8:                          ; CODE XREF: sub_1C87B7+3↓j
                RTS
; End of function sub_1C877F


; =============== S U B R O U T I N E =======================================


sub_1C87A9:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #4
                LDY     #$54 ; 'T'
                JSR     sub_1C82DC
                LDA     byte_1C8156
                STA     byte_7E0
                RTS
; End of function sub_1C87A9


; =============== S U B R O U T I N E =======================================


sub_1C87B7:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C87A8
                INC     byte_7E4
                LDA     byte_7E4
                CMP     #5
                BNE     loc_1C87C9
                JMP     loc_1C8688
; ---------------------------------------------------------------------------

loc_1C87C9:                             ; CODE XREF: sub_1C87B7+D↑j
                LDA     byte_7E0
                LSR     A
                LSR     A
                LSR     A
                STA     byte_7E8
                LDA     byte_7E0
                CLC
                SBC     byte_7E8
                STA     byte_7E0
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     #$28 ; '('

loc_1C87E1:                             ; CODE XREF: sub_1C880E+15↓j
                STA     pAPU_P_1_CTR    ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

locret_1C87E4:                          ; CODE XREF: sub_1C880E+3↓j
                RTS
; End of function sub_1C87B7

; ---------------------------------------------------------------------------
byte_1C87E5:    .BYTE $9E, $9B, $99, $96, $94, $93, $92, $91, 0
                                        ; DATA XREF: sub_1C877F+1B↑r
byte_1C87EE:    .BYTE $20, $40, $20, $40, $20, $40, $20, $40, $90, $60
                                        ; DATA XREF: sub_1C877F+12↑r
                .BYTE $90, $90, $60, $80, $90, $60, $B0, $79, $A8, $58
                .BYTE $90, $40, $80, $30, $76, $9F, $58, $76, $42, $58
                .BYTE $31, $42

; =============== S U B R O U T I N E =======================================


sub_1C880E:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C87E4
                LDY     byte_7E0
                INC     byte_7E0
                LDA     byte_1C8830,Y
                BEQ     loc_1C8826
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     #$88
                JMP     loc_1C87E1
; ---------------------------------------------------------------------------

loc_1C8826:                             ; CODE XREF: sub_1C880E+E↑j
                JMP     loc_1C8688
; End of function sub_1C880E


; =============== S U B R O U T I N E =======================================


sub_1C8829:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #4
                LDY     #$40 ; '@'
                JMP     sub_1C82DC
; End of function sub_1C8829

; ---------------------------------------------------------------------------
byte_1C8830:    .BYTE $A8, $96, $70, $53, $4A, $37, $29, $E1, $A8, $96
                                        ; DATA XREF: sub_1C880E+B↑r
                .BYTE $70, $53, $4A, $37, $29, 0

; =============== S U B R O U T I N E =======================================


sub_1C8840:                             ; CODE XREF: sub_1C84DD+3↑p
                LDA     #$10
                STA     pAPU_P_2_CR     ; pAPU Pulse #2 Control Register (W)
                LDA     #0
                STA     apu_7C9
                STA     apu_7F8+2
                RTS
; End of function sub_1C8840


; =============== S U B R O U T I N E =======================================


sub_1C884E:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #4
                LDY     #$A0
                JSR     sub_1C82DC
                LDA     apu_BB
                STA     pAPU_T_FR_1     ; pAPU Triangle Frequency Register #1 (W)
                LDA     #$A
                BNE     loc_1C88B0
; End of function sub_1C884E


; =============== S U B R O U T I N E =======================================


sub_1C885E:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #4
                LDY     #$9C
                JSR     sub_1C82DC
                LDA     #8
                STA     byte_7E6
                RTS
; End of function sub_1C885E

; ---------------------------------------------------------------------------
byte_1C886B:    .BYTE $31, $3A, $42, $4A, $58, $63, $76, $85, $96, $B2
                                        ; DATA XREF: sub_1C887E+8↓r
                .BYTE $C8, $EE, 0, $C, $2D, $67, $93, $DF, $FF

; =============== S U B R O U T I N E =======================================


sub_1C887E:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C88B3

loc_1C8883:                             ; CODE XREF: sub_1C887E+23↓j
                LDY     byte_7E2
                LDA     byte_1C886B,Y
                BEQ     loc_1C889B
                CMP     #$FF
                BEQ     loc_1C88A3
                INC     byte_7E2
                STA     pAPU_T_FR_1     ; pAPU Triangle Frequency Register #1 (W)
                LDA     byte_7E6
                JMP     loc_1C88B0
; ---------------------------------------------------------------------------

loc_1C889B:                             ; CODE XREF: sub_1C887E+B↑j
                INC     byte_7E6
                INC     byte_7E2
                BNE     loc_1C8883

loc_1C88A3:                             ; CODE XREF: sub_1C887E+F↑j
                                        ; sub_1C88B4+3↓j ...
                LDA     #0
                STA     pAPU_T_CR_1     ; pAPU Triangle Control Register #1 (W)
                STA     apu_7CA
                STA     apu_7F8+3
                LDA     #$18

loc_1C88B0:                             ; CODE XREF: sub_1C884E+E↑j
                                        ; sub_1C887E+1A↑j
                STA     pAPU_T_FR_2     ; pAPU Triangle Frequency Register #2 (W)

locret_1C88B3:                          ; CODE XREF: sub_1C887E+3↑j
                                        ; sub_1C88EC+3↓j
                RTS
; End of function sub_1C887E


; =============== S U B R O U T I N E =======================================


sub_1C88B4:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BEQ     loc_1C88A3

locret_1C88B9:                          ; CODE XREF: sub_1C88BA+3↓j
                RTS
; End of function sub_1C88B4


; =============== S U B R O U T I N E =======================================


sub_1C88BA:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C88B9
                LDY     byte_7E2
                INC     byte_7E2
                LDA     byte_1C88DB,Y
                BEQ     loc_1C88A3
                STA     pAPU_T_FR_1     ; pAPU Triangle Frequency Register #1 (W)
                LDA     byte_1C81A7
                STA     pAPU_T_FR_2     ; pAPU Triangle Frequency Register #2 (W)
                RTS
; End of function sub_1C88BA


; =============== S U B R O U T I N E =======================================


sub_1C88D4:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #3
                LDY     #$A4
                JMP     sub_1C82DC
; End of function sub_1C88D4

; ---------------------------------------------------------------------------
byte_1C88DB:    .BYTE $3F, $48, $52, $6D, $78, $84, $91, $AE, $BD, 0
                                        ; DATA XREF: sub_1C88BA+B↑r

; =============== S U B R O U T I N E =======================================


sub_1C88E5:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #8
                LDY     #$A8
                JMP     sub_1C82DC
; End of function sub_1C88E5


; =============== S U B R O U T I N E =======================================


sub_1C88EC:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C88B3
                INC     byte_7E2
                LDA     byte_7E2
                CMP     #2
                BNE     loc_1C88FE
                JMP     loc_1C88A3
; ---------------------------------------------------------------------------

loc_1C88FE:                             ; CODE XREF: sub_1C88EC+D↑j
                LDY     #$AC
                JMP     sub_1C8099
; End of function sub_1C88EC


; =============== S U B R O U T I N E =======================================


sub_1C8903:                             ; CODE XREF: sub_1C8903+18↓j
                JSR     sub_1C8248
                LDA     #1
                STA     apu_78C
                JMP     loc_1C8946
; ---------------------------------------------------------------------------

loc_1C890E:                             ; CODE XREF: sub_1C8903+14↓j
                JMP     sub_1C8299
; ---------------------------------------------------------------------------

loc_1C8911:                             ; CODE XREF: sub_1C8277+14↑p
                LDA     apu_7F5
                TAY
                CMP     #$3F ; '?'
                BCS     loc_1C890E
                CMP     #1
                BEQ     sub_1C8903
                TYA
                BEQ     loc_1C895C
                STA     apu_78C
                CMP     #$19
                BEQ     loc_1C892B
                CMP     #$19
                BCC     loc_1C8936

loc_1C892B:                             ; CODE XREF: sub_1C8903+22↑j
                STA     apu_BF
                SEC
                SBC     #$19
                STA     byte_7CC
                JMP     loc_1C894E
; ---------------------------------------------------------------------------

loc_1C8936:                             ; CODE XREF: sub_1C8903+26↑j
                CMP     #6
                BNE     loc_1C8946
                LDA     byte_6707
                CMP     #1
                BEQ     loc_1C8945
                LDA     #7
                BNE     loc_1C8946

loc_1C8945:                             ; CODE XREF: sub_1C8903+3C↑j
                TYA

loc_1C8946:                             ; CODE XREF: sub_1C8903+8↑j
                                        ; sub_1C8903+35↑j ...
                STA     apu_BF
                STA     byte_7CC
                DEC     byte_7CC

loc_1C894E:                             ; CODE XREF: sub_1C8903+30↑j
                LDA     #$7F
                STA     PulseSweep1
                STA     byte_7C1
                JSR     sub_1C8AEC

loc_1C8959:                             ; CODE XREF: sub_1C8903+5C↓j
                JMP     loc_1C8C7B
; ---------------------------------------------------------------------------

loc_1C895C:                             ; CODE XREF: sub_1C8903+1B↑j
                LDA     apu_7F8+5
                BNE     loc_1C8959
                RTS
; End of function sub_1C8903


; =============== S U B R O U T I N E =======================================


sub_1C8962:                             ; DATA XREF: BANK1C:8009↑o
                LDA     #3
                LDY     #$38 ; '8'
                JSR     sub_1C82DC
                JMP     loc_1C8971
; ---------------------------------------------------------------------------

loc_1C896C:                             ; DATA XREF: BANK1C:8009↑o
                JSR     sub_1C80D3
                BNE     locret_1C8995

loc_1C8971:                             ; CODE XREF: sub_1C8962+7↑j
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
                STA     pAPU_P_1_CR     ; pAPU Pulse #1 Control Register (W)
                LDA     byte_1C8999,Y
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     byte_1C813B
                STA     pAPU_P_1_CTR    ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

locret_1C8995:                          ; CODE XREF: sub_1C8962+D↑j
                RTS
; ---------------------------------------------------------------------------

loc_1C8996:                             ; CODE XREF: sub_1C8962+22↑j
                JMP     loc_1C8688
; End of function sub_1C8962

; ---------------------------------------------------------------------------
byte_1C8999:    .BYTE $2C, $24, $28, $20, $24, $1C, $20, $18
                                        ; DATA XREF: sub_1C8962+27↑r
byte_1C89A1:    .BYTE $1F, $19, $14, $12, $11, 0
                                        ; DATA XREF: sub_1C8962+1F↑r
byte_1C89A7:    .BYTE 0                 ; DATA XREF: sub_1C8E26+5↓r
byte_1C89A8:    .BYTE $10               ; DATA XREF: sub_1C8E26+B↓r
byte_1C89A9:    .BYTE 1, $18, 0, 1, $38, 0, 3, $40, 0, 6, $58, 1, 3, $40
                                        ; DATA XREF: sub_1C8E26+11↓r
                .BYTE 2, 4, $40, $13, 5, $40, $14, $A, $40, $14, 8, $40
                .BYTE $12, $E, 8, $16, $E, $28, $16, $B, $18

; =============== S U B R O U T I N E =======================================


sub_1C89CC:                             ; CODE XREF: sub_1C8BA1+15C↓p
                LDA     apu_7F8+5
                CMP     #1
                BEQ     @exit
                TXA
                CMP     #3
                BEQ     @exit
                LDA     byte_79A,X
                AND     #$E0
                BEQ     @exit
                STA     apu_B0
                LDA     unk_7C3,X
                CMP     #2
                BEQ     loc_1C89F2
                LDY     Pulse1Register
                LDA     PulseTimer1,Y
                STA     byte_B1
                JSR     loc_1C8A33

loc_1C89F2:                             ; CODE XREF: sub_1C89CC+1A↑j
                INC     byte_7D1,X

@exit:                                  ; CODE XREF: sub_1C89CC+5↑j
                                        ; sub_1C89CC+A↑j ...
                RTS
; End of function sub_1C89CC


; =============== S U B R O U T I N E =======================================


sub_1C89F6:                             ; CODE XREF: sub_1C89F6+56↓j
                                        ; sub_1C89F6+5A↓j
                LDA     PointerAPU
                CMP     #$31 ; '1'
                BNE     loc_1C89FE
                LDA     #$27 ; '''

loc_1C89FE:                             ; CODE XREF: sub_1C89F6+4↑j
                TAY
                LDA     byte_1C8A85,Y
                PHA
                LDA     unk_7C3,X
                CMP     #$46 ; 'F'
                BNE     loc_1C8A0F
                PLA
                LDA     #0
                BEQ     loc_1C8A6D

loc_1C8A0F:                             ; CODE XREF: sub_1C89F6+12↑j
                PLA
                JMP     loc_1C8A6D
; ---------------------------------------------------------------------------

loc_1C8A13:                             ; CODE XREF: sub_1C89F6+52↓j
                LDA     PointerAPU
                TAY
                CMP     #$10
                BCS     loc_1C8A20
                LDA     byte_1C8ABC,Y
                JMP     loc_1C8A73
; ---------------------------------------------------------------------------

loc_1C8A20:                             ; CODE XREF: sub_1C89F6+22↑j
                LDA     #$F6
                BNE     loc_1C8A73

loc_1C8A24:                             ; CODE XREF: sub_1C89F6+4E↓j
                LDA     unk_7C3,X
                CMP     #$4C ; 'L'
                BCC     loc_1C8A2F
                LDA     #$FE
                BNE     loc_1C8A73

loc_1C8A2F:                             ; CODE XREF: sub_1C89F6+33↑j
                LDA     #$FE
                BNE     loc_1C8A73

loc_1C8A33:                             ; CODE XREF: sub_1C89CC+23↑p
                LDA     byte_7D1,X
                STA     PointerAPU
                LDA     apu_B0
                CMP     #$20 ; ' '
                BEQ     loc_1C8A52
                CMP     #$A0
                BEQ     loc_1C8A61
                CMP     #$60 ; '`'
                BEQ     loc_1C8A24
                CMP     #$40 ; '@'
                BEQ     loc_1C8A13
                CMP     #$80
                BEQ     sub_1C89F6
                CMP     #$C0
                BEQ     sub_1C89F6

loc_1C8A52:                             ; CODE XREF: sub_1C89F6+46↑j
                LDA     PointerAPU
                CMP     #$A
                BNE     loc_1C8A5A
                LDA     #0

loc_1C8A5A:                             ; CODE XREF: sub_1C89F6+60↑j
                TAY
                LDA     byte_1C8AB2,Y
                JMP     loc_1C8A6D
; ---------------------------------------------------------------------------

loc_1C8A61:                             ; CODE XREF: sub_1C89F6+4A↑j
                LDA     PointerAPU
                CMP     #$2B ; '+'
                BNE     loc_1C8A69
                LDA     #$21 ; '!'

loc_1C8A69:                             ; CODE XREF: sub_1C89F6+6F↑j
                TAY
                LDA     byte_1C8A91,Y

loc_1C8A6D:                             ; CODE XREF: sub_1C89F6+17↑j
                                        ; sub_1C89F6+1A↑j ...
                PHA
                TYA
                STA     byte_7D1,X
                PLA

loc_1C8A73:                             ; CODE XREF: sub_1C89F6+27↑j
                                        ; sub_1C89F6+2C↑j ...
                PHA
                LDA     apu_7C8,X
                BNE     loc_1C8A83
                PLA
                CLC
                ADC     byte_B1
                LDY     Pulse1Register
                STA     pAPU_P_1_FTR,Y  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                RTS
; ---------------------------------------------------------------------------

loc_1C8A83:                             ; CODE XREF: sub_1C89F6+81↑j
                PLA
                RTS
; End of function sub_1C89F6

; ---------------------------------------------------------------------------
byte_1C8A85:    .BYTE 9, 8, 7, 6, 5, 4, 3, 2, 2, 1, 1, 0
                                        ; DATA XREF: sub_1C89F6+9↑r
byte_1C8A91:    .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
                                        ; DATA XREF: sub_1C89F6+74↑r
                .BYTE 0, 0, 0, $FF, 0, 0, 0, 0, 1, 1, 0, 0, 0, $FF, $FF
                .BYTE 0
byte_1C8AB2:    .BYTE 0, 1, 1, 2, 1, 0, $FF, $FF, $FE, $FF
                                        ; DATA XREF: sub_1C89F6+65↑r
byte_1C8ABC:    .BYTE 0, $FF, $FE, $FD, $FC, $FB, $FA, $F9, $F8, $F7, $F6
                                        ; DATA XREF: sub_1C89F6+24↑r
                .BYTE $F5, $F6, $F7, $F6, $F5

; =============== S U B R O U T I N E =======================================


sub_1C8ACC:                             ; CODE XREF: sub_1C8AEC:loc_1C8B00↓p
                LDA     byte_7CC
                TAY
                LDA     byte_1C90F4,Y
                TAY
                LDX     #0

loc_1C8AD6:                             ; CODE XREF: sub_1C8ACC+15↓j
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


sub_1C8AE4:                             ; CODE XREF: sub_1C8B4C+A↓j
                LDA     #$FF
                STA     byte_7A0,X
                JMP     loc_1C8B65
; End of function sub_1C8AE4


; =============== S U B R O U T I N E =======================================


sub_1C8AEC:                             ; CODE XREF: sub_1C8903+53↑p
                JSR     loc_1C829C
                LDA     apu_BF
                STA     apu_7F8+5
                CMP     #$32 ; '2'
                BEQ     loc_1C8B06
                CMP     #$19
                BEQ     loc_1C8B00
                CMP     #$19
                BCC     loc_1C8B1A

loc_1C8B00:                             ; CODE XREF: sub_1C8AEC+E↑j
                JSR     sub_1C8ACC
                JMP     loc_1C8B31
; ---------------------------------------------------------------------------

loc_1C8B06:                             ; CODE XREF: sub_1C8AEC+A↑j
                LDX     #0
                LDY     #0

loc_1C8B0A:                             ; CODE XREF: sub_1C8AEC+29↓j
                LDA     byte_1C92F8,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1C8B0A
                JMP     loc_1C8B31
; ---------------------------------------------------------------------------

loc_1C8B1A:                             ; CODE XREF: sub_1C8AEC+12↑j
                LDA     byte_7CC
                TAY
                LDA     byte_1C90DC,Y
                TAY
                LDX     #0

loc_1C8B24:                             ; CODE XREF: sub_1C8AEC+43↓j
                LDA     byte_1C910E,Y
                STA     byte_790,X
                INY
                INX
                TXA
                CMP     #$A
                BNE     loc_1C8B24

loc_1C8B31:                             ; CODE XREF: sub_1C8AEC+17↑j
                                        ; sub_1C8AEC+2B↑j
                LDA     #1
                STA     byte_7B4
                STA     byte_7B5
                STA     byte_7B6
                STA     byte_7B7
                LDA     #0
                STA     byte_BA
                LDY     #8

loc_1C8B45:                             ; CODE XREF: sub_1C8AEC+5D↓j
                STA     byte_7A7,Y
                DEY
                BNE     loc_1C8B45
                TAX
; End of function sub_1C8AEC


; =============== S U B R O U T I N E =======================================


sub_1C8B4C:                             ; CODE XREF: sub_1C8B4C+21↓j
                LDA     unk_792,X
                STA     byte_B6
                LDA     unk_793,X
                CMP     #$FF
                BEQ     sub_1C8AE4
                STA     byte_B7
                LDY     byte_7A8
                LDA     (byte_B6),Y
                STA     byte_7A0,X
                INY
                LDA     (byte_B6),Y

loc_1C8B65:                             ; CODE XREF: sub_1C8AE4+5↑j
                STA     byte_7A1,X
                INX
                INX
                TXA
                CMP     #8
                BNE     sub_1C8B4C
                RTS
; End of function sub_1C8B4C


; =============== S U B R O U T I N E =======================================


set_pulse:                              ; CODE XREF: sub_1C8BA1:loc_1C8C7B↓p
                LDA     PulseChannels
                BEQ     @exit
                CMP     #1
                BEQ     @one
                LDA     #$7F
                STA     pAPU_P_2_RCR    ; pAPU Pulse #2 Ramp Control Register (W)
                LDA     PulseTimer2
                STA     pAPU_P_2_FTR    ; pAPU Pulse #2 Fine Tune (FT) Register (W)
                LDA     PulseCounter2
                STA     pAPU_P_2_CTR    ; pAPU Pulse #2 Coarse Tune (CT) Register (W)

@one:                                   ; CODE XREF: set_pulse+7↑j
                LDA     #$7F
                STA     pAPU_P_1_RCR    ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1
                STA     pAPU_P_1_FTR    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1
                STA     pAPU_P_1_CTR    ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
                LDA     #0
                STA     PulseChannels

@exit:                                  ; CODE XREF: set_pulse+3↑j
                                        ; sub_1C8BA1+3↓j
                RTS
; End of function set_pulse


; =============== S U B R O U T I N E =======================================


sub_1C8BA1:                             ; CODE XREF: sub_1C8BA1:loc_1C8CFA↓p
                TXA
                CMP     #2
                BCS     @exit
                LDA     byte_79A,X
                AND     #$1F
                BEQ     locret_1C8C06
                STA     byte_B1
                LDA     unk_7C3,X
                CMP     #2
                BEQ     loc_1C8C10
                LDY     #0

loc_1C8BB8:                             ; CODE XREF: sub_1C8BA1+1D↓j
                DEC     byte_B1
                BEQ     loc_1C8BC0
                INY
                INY
                BNE     loc_1C8BB8

loc_1C8BC0:                             ; CODE XREF: sub_1C8BA1+19↑j
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

loc_1C8BEA:                             ; CODE XREF: sub_1C8BA1+3F↑j
                LDA     byte_B4
                AND     #$F
                STA     apu_B0
                LDA     byte_79D,X
                AND     #$F0
                ORA     apu_B0
                TAY

loc_1C8BF8:                             ; CODE XREF: sub_1C8BA1+71↓j
                INC     byte_7CD,X

loc_1C8BFB:                             ; CODE XREF: sub_1C8BA1+69↓j
                                        ; sub_1C8BA1+6D↓j
                LDA     apu_7C8,X
                BNE     locret_1C8C06
                TYA
                LDY     Pulse1Register
                STA     pAPU_P_1_CR,Y   ; pAPU Pulse #1 Control Register (W)

locret_1C8C06:                          ; CODE XREF: sub_1C8BA1+A↑j
                                        ; sub_1C8BA1+5D↑j
                RTS
; ---------------------------------------------------------------------------

loc_1C8C07:                             ; CODE XREF: sub_1C8BA1+34↑j
                LDY     byte_79D,X
                BNE     loc_1C8BFB

loc_1C8C0C:                             ; CODE XREF: sub_1C8BA1+38↑j
                LDY     #$10
                BNE     loc_1C8BFB

loc_1C8C10:                             ; CODE XREF: sub_1C8BA1+13↑j
                LDY     #$10
                BNE     loc_1C8BF8

loc_1C8C14:                             ; CODE XREF: sub_1C8BA1+C6↓j
                INY
                LDA     (byte_B6),Y
                STA     unk_792,X
                INY
                LDA     (byte_B6),Y
                STA     unk_793,X
                LDA     unk_792,X
                STA     byte_B6
                LDA     unk_793,X
                STA     byte_B7
                TXA
                LSR     A
                TAX
                LDA     #0
                TAY
                STA     byte_7A8,X
                JMP     loc_1C8C53
; ---------------------------------------------------------------------------

loc_1C8C36:                             ; CODE XREF: sub_1C8BA1+C2↓j
                JSR     sub_1C8299

locret_1C8C39:                          ; CODE XREF: sub_1C8BA1+EB↓j
                RTS
; ---------------------------------------------------------------------------

loc_1C8C3A:                             ; CODE XREF: sub_1C8BA1:loc_1C8C78↓j
                TXA
                ASL     A
                TAX
                LDA     unk_792,X
                STA     byte_B6
                LDA     unk_793,X
                STA     byte_B7
                TXA
                LSR     A
                TAX
                INC     byte_7A8,X
                INC     byte_7A8,X
                LDY     byte_7A8,X

loc_1C8C53:                             ; CODE XREF: sub_1C8BA1+92↑j
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

loc_1C8C78:                             ; CODE XREF: sub_1C8BA1+11B↓j
                JMP     loc_1C8C3A
; ---------------------------------------------------------------------------

loc_1C8C7B:                             ; CODE XREF: sub_1C8903:loc_1C8959↑j
                JSR     set_pulse
                LDA     #0
                TAX
                STA     Pulse1Register
                BEQ     loc_1C8C95

loc_1C8C85:                             ; CODE XREF: sub_1C8BA1+106↓j
                TXA
                LSR     A
                TAX

loc_1C8C88:                             ; CODE XREF: sub_1C8BA1+15F↓j
                                        ; sub_1C8BA1+243↓j
                INX
                TXA
                CMP     #4
                BEQ     locret_1C8C39
                LDA     Pulse1Register
                CLC
                ADC     #4
                STA     Pulse1Register

loc_1C8C95:                             ; CODE XREF: sub_1C8BA1+D5↑j
                                        ; sub_1C8BA1+E2↑j
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

loc_1C8CB9:                             ; CODE XREF: sub_1C8BA1:loc_1C8CF7↓j
                                        ; sub_1C8BA1+174↓j ...
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

loc_1C8CD8:                             ; CODE XREF: sub_1C8BA1+12C↑j
                LDA     unk_7BC,X
                BEQ     loc_1C8CF7
                DEC     unk_7BC,X
                LDA     byte_7B0,X
                STA     byte_7AC,X
                BNE     loc_1C8CF7

loc_1C8CE8:                             ; CODE XREF: sub_1C8BA1+132↑j
                TYA
                AND     #$3F ; '?'
                STA     unk_7BC,X
                DEC     unk_7BC,X
                LDA     byte_7AC,X
                STA     byte_7B0,X

loc_1C8CF7:                             ; CODE XREF: sub_1C8BA1+13A↑j
                                        ; sub_1C8BA1+145↑j
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8CFA:                             ; CODE XREF: sub_1C8BA1+10E↑j
                JSR     sub_1C8BA1
                JSR     sub_1C89CC
                JMP     loc_1C8C88
; ---------------------------------------------------------------------------

loc_1C8D03:                             ; CODE XREF: sub_1C8BA1+1B8↓j
                JMP     loc_1C8E17
; ---------------------------------------------------------------------------

loc_1C8D06:                             ; CODE XREF: sub_1C8BA1+1AB↓j
                JMP     loc_1C8DED
; ---------------------------------------------------------------------------

loc_1C8D09:                             ; CODE XREF: sub_1C8BA1+11F↑j
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

loc_1C8D21:                             ; CODE XREF: sub_1C8BA1+123↑j
                JSR     sub_1C8E7C
                STA     byte_791
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D2A:                             ; CODE XREF: sub_1C8BA1+127↑j
                JSR     sub_1C8E7C
                STA     byte_790
                JMP     loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D33:                             ; CODE XREF: sub_1C8BA1+134↑j
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
                STA     unk_7B8,X
                TAY
                TXA
                CMP     #2
                BEQ     loc_1C8D06

loc_1C8D4E:                             ; CODE XREF: sub_1C8BA1+273↓j
                JSR     sub_1C8E7C
                TAY

loc_1C8D52:                             ; CODE XREF: sub_1C8BA1+197↑j
                TYA
                STA     unk_7C3,X
                TXA
                CMP     #3
                BEQ     loc_1C8D03
                PHA
                LDX     Pulse1Register
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

loc_1C8D73:                             ; CODE XREF: sub_1C8BA1+1C5↑j
                TYA
                CLC
                ADC     byte_790

loc_1C8D78:                             ; CODE XREF: sub_1C8BA1+1CF↑j
                TAY
                LDA     byte_1C8FEA+1,Y
                STA     PulseTimer1,X
                LDA     byte_1C8FEA,Y
                ORA     #8
                STA     PulseCounter1,X

loc_1C8D87:                             ; CODE XREF: sub_1C8BA1+1C0↑j
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

loc_1C8D9C:                             ; CODE XREF: sub_1C8BA1+1EA↑j
                LDA     byte_79D,X
                STA     apu_B0

loc_1C8DA1:                             ; CODE XREF: sub_1C8BA1+1F3↑j
                                        ; sub_1C8BA1+1F9↑j
                TXA
                DEC     apu_7C8,X
                CMP     apu_7C8,X
                BEQ     loc_1C8DE7
                INC     apu_7C8,X
                LDY     Pulse1Register
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

loc_1C8DC7:                             ; CODE XREF: sub_1C8BA1+211↑j
                                        ; sub_1C8BA1+218↑j
                LDA     apu_B0

loc_1C8DC9:                             ; CODE XREF: sub_1C8BA1+21E↑j
                                        ; sub_1C8BA1+224↑j
                STA     pAPU_P_1_CR,Y   ; pAPU Pulse #1 Control Register (W)
                LDA     PulseSweep1,X
                STA     pAPU_P_1_RCR,Y  ; pAPU Pulse #1 Ramp Control Register (W)
                LDA     PulseTimer1,Y
                STA     pAPU_P_1_FTR,Y  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
                LDA     PulseCounter1,Y
                STA     pAPU_P_1_CTR,Y  ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

loc_1C8DDE:                             ; CODE XREF: sub_1C8BA1+249↓j
                                        ; sub_1C8BA1+282↓j
                LDA     unk_7B8,X
                STA     byte_7B4,X
                JMP     loc_1C8C88
; ---------------------------------------------------------------------------

loc_1C8DE7:                             ; CODE XREF: sub_1C8BA1+207↑j
                INC     apu_7C8,X
                JMP     loc_1C8DDE
; ---------------------------------------------------------------------------

loc_1C8DED:                             ; CODE XREF: sub_1C8BA1:loc_1C8D06↑j
                LDA     apu_79C
                AND     #$1F
                BNE     loc_1C8E11
                LDA     apu_79C
                AND     #$C0
                BNE     loc_1C8DFE

loc_1C8DFB:                             ; CODE XREF: sub_1C8BA1+25F↓j
                TYA
                BNE     loc_1C8E06

loc_1C8DFE:                             ; CODE XREF: sub_1C8BA1+258↑j
                CMP     #$C0
                BEQ     loc_1C8DFB
                LDA     #$FF
                BNE     loc_1C8E11

loc_1C8E06:                             ; CODE XREF: sub_1C8BA1+25B↑j
                CLC
                ADC     #$FF
                ASL     A
                ASL     A
                CMP     #$3C ; '<'
                BCC     loc_1C8E11
                LDA     #$3C ; '<'

loc_1C8E11:                             ; CODE XREF: sub_1C8BA1+251↑j
                                        ; sub_1C8BA1+263↑j ...
                STA     byte_79F
                JMP     loc_1C8D4E
; ---------------------------------------------------------------------------

loc_1C8E17:                             ; CODE XREF: sub_1C8BA1:loc_1C8D03↑j
                TYA
                PHA
                JSR     sub_1C8E3E
                PLA
                AND     #$3F ; '?'
                TAY
                JSR     sub_1C8E26
                JMP     loc_1C8DDE
; End of function sub_1C8BA1


; =============== S U B R O U T I N E =======================================


sub_1C8E26:                             ; CODE XREF: sub_1C8BA1+27F↑p
                LDA     apu_7F8
                BNE     @exit
                LDA     byte_1C89A7,Y
                STA     pAPU_N_CR_1     ; pAPU Noise Control Register #1 (W)
                LDA     byte_1C89A8,Y
                STA     pAPU_N_FR_1     ; pAPU Noise Frequency Register #1 (W)
                LDA     byte_1C89A9,Y
                STA     pAPU_N_FR_2     ; pAPU Noise Frequency Register #2 (W)

@exit:                                  ; CODE XREF: sub_1C8E26+3↑j
                RTS
; End of function sub_1C8E26


; =============== S U B R O U T I N E =======================================


sub_1C8E3E:                             ; CODE XREF: sub_1C8BA1+278↑p
                TYA
                AND     #$C0
                CMP     #$40 ; '@'
                BEQ     loc_1C8E4A
                CMP     #$80
                BEQ     loc_1C8E54
                RTS
; ---------------------------------------------------------------------------

loc_1C8E4A:                             ; CODE XREF: sub_1C8E3E+5↑j
                LDA     #$E
                STA     byte_B1
                LDA     #7
                LDY     #0
                BEQ     loc_1C8E5C

loc_1C8E54:                             ; CODE XREF: sub_1C8E3E+9↑j
                LDA     #$E
                STA     byte_B1
                LDA     #$F
                LDY     #2

loc_1C8E5C:                             ; CODE XREF: sub_1C8E3E+14↑j
                STA     pAPU_DM_DLR     ; pAPU Delta Modulation Data Length Register (W)
                STY     pAPU_DM_AR      ; pAPU Delta Modulation Address Register (W)
                LDA     byte_7F7
                BNE     locret_1C8E7B
                LDA     byte_B1
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

locret_1C8E7B:                          ; CODE XREF: sub_1C8E3E+27↑j
                RTS
; End of function sub_1C8E3E


; =============== S U B R O U T I N E =======================================


sub_1C8E7C:                             ; CODE XREF: sub_1C8BA1:loc_1C8CB9↑p
                                        ; sub_1C8BA1:loc_1C8D09↑p ...
                LDY     byte_7AC,X
                INC     byte_7AC,X
                LDA     (byte_B6),Y
                RTS
; End of function sub_1C8E7C

; ---------------------------------------------------------------------------
off_1C8E85:     .WORD byte_1C8EE9, byte_1C8EF0, byte_1C8F14, byte_1C8F27
                                        ; DATA XREF: sub_1C8BA1:loc_1C8BC0↑r
                                        ; sub_1C8BA1+24↑r
                .WORD byte_1C8F30, byte_1C8F36, byte_1C8EE2, byte_1C8F38
                .WORD byte_1C8F41, byte_1C8F33, byte_1C8F4A, byte_1C8F53
                .WORD byte_1C8F5B, byte_1C8F63, byte_1C8F6A, byte_1C8F73
                .WORD byte_1C8FBE, byte_1C8FC6, byte_1C8F8C, byte_1C8FDA
                .WORD byte_1C8FA1, byte_1C8EBD, byte_1C8EFA, byte_1C8ED9
                .WORD byte_1C8ED2, byte_1C8EC7, byte_1C8EC3, byte_1C8F10
byte_1C8EBD:    .BYTE $76, $11, $11, $14, $31, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8EC3:    .BYTE $33, $45, $66, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8EC7:    .BYTE $91, $91, $91, $91, $91, $91, $91, $91, $91, $91
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $F0
byte_1C8ED2:    .BYTE $23, $33, $32, $22, $22, $22, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8ED9:    .BYTE $98, $76, $63, $22, $87, $76, $53, $11, $F0
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8EE2:    .BYTE $23, $56, $78, $88, $88, $87, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8EE9:    .BYTE $23, $34, $56, $77, $65, $54, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8EF0:    .BYTE $5A, $98, $88, $77, $66, $66, $65, $55, $55, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8EFA:    .BYTE $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $55, $55, $55, $66, $66, $77, $78, $88, $76, $54
                .BYTE $32, $FF
byte_1C8F10:    .BYTE $11, $11, $22, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F14:    .BYTE $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $55, $55, $55, $66, $66, $77, $78, $88, $FF
byte_1C8F27:    .BYTE $F9, $87, $77, $77, $66, $65, $55, $44, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F30:    .BYTE $A8, $76, $FF     ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F33:    .BYTE $74, $32, $FF     ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F36:    .BYTE $99, $FF          ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F38:    .BYTE $DC, $BA, $99, $88, $87, $76, $55, $44, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F41:    .BYTE $23, $44, $33, $33, $33, $33, $33, $32, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F4A:    .BYTE $77, $76, $65, $55, $44, $43, $32, $21, $F0
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F53:    .BYTE $44, $43, $33, $32, $22, $11, $11, $F0
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F5B:    .BYTE $33, $33, $22, $22, $11, $11, $11, $F0
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F63:    .BYTE $22, $22, $22, $11, $11, $11, $F0
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F6A:    .BYTE $11, $11, $11, $11, $11, $11, 1, 0, $F0
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8F73:    .BYTE $99, $88, $77, $76, $66, $55, $54, $44, $33, $33
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $33, $32, $22, $22, $22, $22, $21, $11, $11, $11
                .BYTE $11, $11, $11, $11, $F0
byte_1C8F8C:    .BYTE $65, $55, $54, $44, $33, $33, $33, $33, $22, $22
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $22, $22, $11, $11, $11, $11, $11, $11, $11, $11
                .BYTE $F0
byte_1C8FA1:    .BYTE $FB, $BA, $AA, $99, $99, $99, $98, $88, $77, $77
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $77, $66, $66, $66, $55, $54, $44, $44, $43, $33
                .BYTE $33, $22, $22, $22, $22, $11, $11, $11, $F0
byte_1C8FBE:    .BYTE $23, $45, $55, $44, $33, $33, $22, $FF
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
byte_1C8FC6:    .BYTE $87, $65, $43, $21, $44, $33, $21, $11, $32, $21
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF
byte_1C8FDA:    .BYTE $66, $65, $42, $21, $32, $21, $11, $11, $21, $11
                                        ; DATA XREF: BANK1C:off_1C8E85↑o
                .BYTE $11, $11, $11, $11, $11, $FF
byte_1C8FEA:    .BYTE 7, $F0, 0, 0, 6, $AE, 6, $4E, 5, $F3, 5, $9E, 5
                                        ; DATA XREF: sub_1C8BA1+1DE↑r
                                        ; sub_1C8BA1+1BD↑r ...
                .BYTE $4D, 5, 1, 4, $B9, 4, $75, 4, $35, 3, $F8, 3, $BF
                .BYTE 3, $89, 3, $57
                .BYTE 3, $27, 2, $F9, 2, $CF, 2, $A6, 2, $80, 2, $5C, 2
                .BYTE $3A, 2, $1A, 1, $FC, 1, $DF, 1, $C4, 1, $AB, 1, $93
                .BYTE 1, $7C, 1, $67, 1, $52, 1, $3F, 1, $2D, 1, $1C, 1
                .BYTE $C, 0, $FD, 0, $EE, 0, $E1, 0, $D4, 0, $C8, 0, $BD
                .BYTE 0, $B2, 0, $A8, 0, $9F, 0, $96, 0, $8D, 0, $85, 0
                .BYTE $7E, 0, $76, 0, $70, 0, $69, 0, $63, 0, $5E, 0, $58
                .BYTE 0, $53, 0, $4F, 0, $4A, 0, $46, 0, $42, 0, $3E, 0
                .BYTE $3A, 0, $37, 0, $34, 0, $31, 0, $2E, 0, $2B, 0, $29
                .BYTE 0, $A, 0, 1, 4, 8, $10, $20, $40, $18, $30, $C, $A
                .BYTE 5, 2, 1, 5, $A, $14, $28, $50, $1E, $3C, $F, $C
                .BYTE 6, 3, 2, 6, $C, $18, $30, $60, $24, $48, $12, $10
                .BYTE 8, 3, 1, 4, 2, 0, $90, 7, $E, $1C, $38, $70, $2A
                .BYTE $54, $15, $12, 9, 3, 1, 2, 8, $10, $20, $40, $80
                .BYTE $30, $60, $18, $15, $A, 4, 1, 2, $C0, 9, $12, $24
                .BYTE $48, $90, $36, $6C, $1B, $18, $A, $14, $28, $50
                .BYTE $A0, $3C, $78, $1E, $1A, $D, 5, 1, 2, $17, $B, $16
                .BYTE $2C, $58, $B0, $42, $84, $21, $1D, $E, 5, 1, 2, $17
byte_1C90DC:    .BYTE 0, $A, $14, $1E, $28, $3C, $32, $46, $50, $5A, $64
                                        ; DATA XREF: sub_1C8AEC+32↑r
                .BYTE $6E, $78, $82, $8C, $96, $A0, $AA, $B4, $BE, $C8
                .BYTE $D2, $DC, $E6
byte_1C90F4:    .BYTE 0, $A, $14, $1E, $28, $32, $3C, $46, $50, $5A, $64
                                        ; DATA XREF: sub_1C8ACC+4↑r
                .BYTE $6E, $78, $82, $8C, $96, $A0, $AA, $B4, $BE, $C8
                .BYTE $D2, $DC, $E6, $F0, 0
byte_1C910E:    .BYTE $18, $18, $FF, $FF, $FF, $FF, $6C, 7, $FF, $FF, 0
                                        ; DATA XREF: sub_1C8AEC:loc_1C8B24↑r
                .BYTE $28, $B2, $93, $BA, $93, $C4, $93, $D6, $93, 0, $28
                .BYTE $17, $96, $21, $96, $2B, $96, $33, $96, 0, $28, $47
                .BYTE $98, $51, $98, $5B, $98, $67, $98, 0, 0, 3, $9A
                .BYTE 7, $9A, 9, $9A, $FF, $FF, 0, $28, $2D, $9E, $39
                .BYTE $9E, $45, $9E, $51, $9E, 0, $35, $B7, $9B, $C1, $9B
                .BYTE $CB, $9B, $D3, $9B, $81, $C, $38, $9A, $40, $9A
                .BYTE $48, $9A, $50, $9A, 0, $4C, $2C, $A1, $34, $A1, $3A
                .BYTE $A1, $48, $A1, 0, $35, $1A, $A2, $30, $A2, $36, $A2
                .BYTE $FF, $FF, 0, $4C, $6D, $A3, $73, $A3, $79, $A3, $7F
                .BYTE $A3, 0, $35, $37, $A7, $2F, $A7, $41, $A7, $49, $A7
                .BYTE 0, $35, $25, $A4, $2D, $A4, $35, $A4, $3D, $A4, 0
                .BYTE $18, $29, $A5, $2F, $A5, $35, $A5, $3B, $A5, 0, $18
                .BYTE $E, $A6, $16, $A6, $1C, $A6, $22, $A6, $87, $18
                .BYTE $83, $A0, $8D, $A0, $97, $A0, $A1, $A0, 0, $28, $11
                .BYTE $A8, $19, $A8, $25, $A8, $2D, $A8, 2, $43, $95, $A9
                .BYTE $8F, $A9, $9B, $A9, $A1, $A9, 0, $35, $1C, $AA, $26
                .BYTE $AA, $2E, $AA, $36, $AA, 0, $18, $45, $BC, $59, $BC
                .BYTE $65, $BC, $79, $BC, 0, $43, $1E, $AB, $2C, $AB, $36
                .BYTE $AB, $3C, $AB, 0, $28, $29, $BB, $23, $BB, $2F, $BB
                .BYTE $35, $BB, 0, $18, $E0, $AB, $F0, $AB, $FE, $AB, 6
                .BYTE $AC, 0, $C, $B5, $A8, $BD, $A8, $C3, $A8, $FF, $FF
byte_1C91FE:    .BYTE 0, $28, $84, $AE, $6C, $AE, $FF, $FF, $FF, $FF, 0
                                        ; DATA XREF: sub_1C8ACC:loc_1C8AD6↑r
                .BYTE $5A, $FB, $AE, 1, $AF, 7, $AF, $FF, $FF, $18, $4C
                .BYTE $FF, $AF, $F7, $AF, $FF, $FF, $FF, $FF, 0, $4C, $12
                .BYTE $B0, $1A, $B0, $22, $B0, $FF, $FF, 0, $18, $61, $B0
                .BYTE $65, $B0, $67, $B0, $FF, $FF, 0, $18, $92, $B9, $98
                .BYTE $B9, $9E, $B9, $B0, $B9, 6, 0, $C7, $AE, $D1, $AE
                .BYTE $D9, $AE, $FF, $FF, $83, $18, $98, $AE, $9C, $AE
                .BYTE $9E, $AE, $FF, $FF, $83, $43, $38, $B4, $3C, $B4
                .BYTE $3E, $B4, $FF, $FF, $87, $18, $9E, $B0, $A4, $B0
                .BYTE $B0, $B0, $BC, $B0, 0, $18, $3C, $B1, $52, $B1, $62
                .BYTE $B1, $74, $B1, $30, $28, 2, $93, 6, $93, $FF, $FF
                .BYTE $FF, $FF, $18, $28, $A, $93, $E, $93, $FF, $FF, $FF
                .BYTE $FF, 0, $28, $12, $93, $16, $93, $FF, $FF, $FF, $FF
                .BYTE 0, $28, $1A, $93, $1E, $93, $FF, $FF, $FF, $FF, $30
                .BYTE $28, $22, $93, $26, $93, $FF, $FF, $FF, $FF, $18
                .BYTE $28, $2A, $93, $2E, $93, $FF, $FF, $FF, $FF, $30
                .BYTE $28, $32, $93, $36, $93, $FF, $FF, $FF, $FF, $18
                .BYTE $28, $3A, $93, $3E, $93, $FF, $FF, $FF, $FF, 0, $43
                .BYTE $61, $B4, $67, $B4, $FF, $FF, $FF, $FF, 0, $28, $25
                .BYTE $B8, $17, $B8, $39, $B8, $47, $B8, 0, $28, $79, $B4
                .BYTE $7F, $B4, $27, $A8, $2F, $A8, 0, $18, $FF, $FF, $95
                .BYTE $B4, $FF, $FF, $FF, $FF, 0, $28, $A3, $B4, $A9, $B4
                .BYTE $AF, $B4, $FF, $FF, 0, $28, $56, $B5, $5E, $B5, $FF
                .BYTE $FF, $FF, $FF
byte_1C92F8:    .BYTE 0, $43, $80, $B5, $88, $B5, $90, $B5, $96, $B5, $47
                                        ; DATA XREF: sub_1C8AEC:loc_1C8B0A↑r
                .BYTE $93, $5A, $93, $57, $93, 0, 0, $4D, $93, $65, $93
                .BYTE $62, $93, 0, 0, $4D, $93, $70, $93, $6D, $93, 0
                .BYTE 0, $47, $93, $7C, $93, $79, $93, 0, 0, $4D, $93
                .BYTE $88, $93, $85, $93, 0, 0, $4D, $93, $91, $93, $8E
                .BYTE $93, 0, 0, $47, $93, $9E, $93, $9B, $93, 0, 0, $4D
                .BYTE $93, $AA, $93, $A7, $93, 0, 0, $BB, $62, $B6, 2
                .BYTE 0, $9F, $D, $F1, $B8, 2, 0, $9F, $29, $F3, $B8, 2
                .BYTE 0, $9F, $A0, 0, 0, $9F, $12, $30
byte_1C935A:    .BYTE $B2, $38, $3C, $40, $46, $B4, $3C, 0, $9F, $27, $B6
                                        ; DATA XREF: BANK1C:off_1C8238↑o
byte_1C9365:    .BYTE $B2, $50, $4E, $4A, $40, $B4, $46, 0, $9F, $47, $F5
                                        ; DATA XREF: BANK1C:off_1C8238↑o
byte_1C9370:    .BYTE $B2, $4A, $4E, $50, $B3, $46, $B6, $38, 0, $9F, $10
                                        ; DATA XREF: BANK1C:off_1C8238↑o
                .BYTE $F5
byte_1C937C:    .BYTE $B2, $42, $40, $38, $B4, $2E, $B2, 2, 0, $9F, $87
                                        ; DATA XREF: BANK1C:off_1C8238↑o
                .BYTE $F5
byte_1C9388:    .BYTE $B3, $32, $36, $38, $42, 0, $9F, $A7, $B4
                                        ; DATA XREF: BANK1C:off_1C8238↑o
byte_1C9391:    .BYTE $B2, $40, $42, $46, $40, $3C, $40, $42, $3C, 0, $9F
                                        ; DATA XREF: BANK1C:off_1C8238↑o
                .BYTE $B8, $B1
byte_1C939E:    .BYTE $B2, $32, $42, $40, $2E, $B3, $3C, $36, 0, $9F, $A7
                                        ; DATA XREF: BANK1C:off_1C8238↑o
                .BYTE $F5
byte_1C93AA:    .BYTE $B3, $38, $B2, $2E, $3C, $B4, $38, 0, $3B, $96, $DE
                                        ; DATA XREF: BANK1C:off_1C8238↑o
                .BYTE $93, $FF, $FF, $B4, $93, $4D, $96, $B4, $94, $F7
                .BYTE $94, $FF, $FF, $BC, $93, $5F, $96, $90, $95, $A2
                .BYTE $95, $90, $95, $90, $95, $A2, $95, $D3, $95, $FF
                .BYTE $FF, $C6, $93, $71, $96, $EC, $95, $FF, $FF, $D8
                .BYTE $93, $9F, $13, $31, $9E, 0, $C2, $B7, 2, $B0, $38
                .BYTE $B2, 2, $B0, $38, $B7, 2, $B2, 2, $B0, $38, $B7
                .BYTE 2, $B6, 2, $FF, $B7, 2, $B4, $2A, $B0, 2, $B6, 2
                .BYTE $B4, 2, 2, $B7, 2, $B0, $3E, $B2, 2, $B0, $3E, $B7
                .BYTE 2, $B2, 2, $B0, $42, $B7, 2, $B2, 2, $B7, 2, $B0
                .BYTE $42, $B2, 2, $B4, $3C, 2, $C2, $B1, $34, 2, $42
                .BYTE 2, $3C, 2, $42, 2, $38, 2, $B7, $3C, $B0, $3C, $B7
                .BYTE 2, $B0, $30, $B7, 2, $B0, $3A, $B1, $34, 2, $34
                .BYTE 2, $34, 2, $34, 2, $34, 2, $B7, 2, $B3, $24, $B0
                .BYTE 2, $FF, $B7, 2, $B0, $22, $B2, 2, $22, $22, $B0
                .BYTE $22, $B7, 2, $B7, 2, $B0, $2E, $B2, 2, $B7, 2, $B0
                .BYTE $2A, $B1, $24, 2, $24, 2, $24, 2, 2, 2, $B7, $24
                .BYTE $B0, $24, $B2, 2, $B3, $24, $B7, 2, $B2, $26, $B0
                .BYTE $38, $B1, $32, 2, $3E, 2, $2E, 2, $38, 2, $B7, $34
                .BYTE $B0, $38, $B2, 2, $B7, 2
                .BYTE $B0, $2E, $B2, 2, $B1, $30, 2, $B2, 2, $B1, $2E
                .BYTE 2, $B7, 2, $B0, $32, $B3, 2, $C2, $B8, $3C, $3C
                .BYTE $3C, $BA, 2, $B2, $3C, 2, $FF, $C2, $B8, $3C, $BB
                .BYTE 2, $B8, $3C, $BB, 2, $B8, $3C, $FF, $B2, $3C, 2
                .BYTE $3C, 2, 0, $9F, $15, $31, $C2, $B7, 2, $B0, $30
                .BYTE $B2, 2, $B0, $30, $B7, 2, $B2, 2, $B0, $30, $B7
                .BYTE 2, $B6, 2, $FF, $B7, 2, $B4, $22, $B0, 2, $B6, 2
                .BYTE $B4, 2, 2, $B7, 2, $B0, $2A, $B2, 2, $B0, $2A, $B7
                .BYTE 2, $B2, 2, $B0, $20, $B7, 2, $B2, 2, $B7, 2, $B0
                .BYTE $22, $B2, 2, $B4, $30, $B6, 2, $B7, 2, $B0, $3A
                .BYTE 0, $C2, $B1, $3C, 2, $42, 2, $46, 2, $42, 2, $48
                .BYTE 2, $B7, $46, $B0, $42, $B7, 2, $B0, $38, $B7, 2
                .BYTE $B0, $3A, $B1, $3C, 2, $42, 2, $46, 2, $42, 2, $3C
                .BYTE 2, $B7, 2, $B3, $30, $B0, 2, $FF, $B7, 2, $B0, $34
                .BYTE $B2, 2, $34, $2E, $B0, $34, $B7, 2, $B7, $2E, $B0
                .BYTE $3A, $B2, 2, $B7, 2, $B0, $2A, $B1, $2E, 2, $34
                .BYTE 2, $34, 2, $2E, 2, $B7, $2A, $B0, $2E, $B2, 2, $B3
                .BYTE $30, $B7, 2, $B0, $30, $B7, $32, $B0, $38, $B1, $42
                .BYTE 2, $3E, 2, $3A, 2, $38, 2, $B7, $34, $B0, $38, $B2
                .BYTE 2, $B7, 2, $B0, $3C, $B2, 2, $B1, $3C, 2, $B2, 2
                .BYTE $B1, $3E, 2, $B7, 2, $B0, $42, $B3, 2, $C2, $B8
                .BYTE $30, $30, $30, $BA, 2, $B2, $30, 2, $FF, $C2, $B8
                .BYTE $30, $BB, 2, $B8, $30, $BB, 2, $B8, $30, $FF, $B2
                .BYTE $30, 2, $30, 2, 0, $9F, 0, 0, $C2, $B7, $34, $B0
                .BYTE $34, $B2, $30, $2E, $2C, $2A, $28, $26, $24, $FF
                .BYTE 0, $B7, $26, $B0, $26, $B2, $22, $20, $2C, $2E, $20
                .BYTE $2A, $22, $B7, $1C, $B0, $1C, $B2, $22, $24, $2A
                .BYTE $30, $2E, $2A, $24, $2A, $32, $38, $B7, $32, $B0
                .BYTE $32, $B2, $26, $3A, $38, $36, $B7, $34, $B0, $34
                .BYTE $B2, $30, $2E, $2C, $2A, $2E, $30, $32, 0, $C2, $B8
                .BYTE $34, $34, $34, $BA, 2, $B2, $34, 2, $FF, $C2, $B8
                .BYTE $34, $34, $34, $BA, 2, $FF, $B2, $34, 2, $34, 2
                .BYTE 0, $DC, $B7, 4, $B0, 4, $B2, 7, $B7, 4, $B0, 4, $B2
                .BYTE 7, $FF, $C2, $B8, 7, 7, 7, $BA, 1, $B2, 7, 1, $FF
                .BYTE $C2, $B8, 7, $BB, 2, $B8, 7, $BB, 2, $B8, 7, $FF
                .BYTE $B2, 7, 1, 7, 1, 0, $3B, $96, $74, $96, $B6, $96
                .BYTE $FF, $FF, $19, $96, $4D, $96, $95, $96, $5A, $97
                .BYTE $FF, $FF, $23, $96, $5F, $96, $C8, $97, $FF, $FF
                .BYTE $2D, $96, $71, $96, $23, $98, $FF, $FF, $35, $96
                .BYTE $9F, $38, $31, $B0, $16, $20, $2A, $2E, $38, $42
                .BYTE $46, $50, $9F, $23, $3A, $B3, $5A, 0, $9F, $38, $31
                .BYTE $B0, $12, $16, $20, $2A, $2E, $38, $42, $46, $9F
                .BYTE $23, $3A, $B3, $50, 0, $9F, $A, 0, $B0, $20, $2A
                .BYTE $2E, $38, $42, $46, $50, $5A, $9F, $A0, 0, $B3, $5E
                .BYTE 0, $B4, 1, 0, $9F, 4, $F3, $B8, $50, $50, $50, $9F
                .BYTE $B, $F3, $50, $50, $50, $9F, $C, $F3, $50
                .BYTE $50, $9F, $D, $F3, $50, $50, $9F, $E, $F3, $50, $50
                .BYTE $B0, 2, $BB, 2, 0, $9F, 4, $F6, $B8, $5A, $5A, $5A
                .BYTE $9F, $B, $F6, $5A, $5A, $5A, $9F, $C, $F6, $5A, $5A
                .BYTE $9F, $D, $F6, $5A, $5A, $9F, $E, $F6, $5A, $5A, $B0
                .BYTE 2, $BB, 2, 0, $9F, $A9, $F3, $B8, 2, $B0, $42, $38
                .BYTE $3A, $48, $B6, $44, $B0, $4E, $4E, 2, 2, $B6, 2
                .BYTE $B0, $42, $38, $3A, $48, $B6, $44, $B0, $52, $52
                .BYTE 2, 2, $B2, 2, $B8, 2, 2, $BB, 2, $9F, $A8, $F3, $B4
                .BYTE $20, $B3, $26, $22, $B4, $20, $B3, $2C, $26, $9F
                .BYTE $29, $F2, $C4, $B0, $30, $38, $2A, $30, $FF, $C4
                .BYTE $32, $3A, $2C, $32, $FF, $C4, $34, $24, $2E, $34
                .BYTE $FF, $C2, $36, $3E, $30, $36, $FF, $C2, $38, $40
                .BYTE $32, $38, $FF, $9F, $A8, $F3, $C2, $B0, 2, 2, $20
                .BYTE 2, 2, $20, 2, 2, $B3, $20, $B0, 2, 2, $22, 2, 2
                .BYTE $22, 2, 2, $B3, $22, $FF, $BB, 2, $9F, $A1, $B4
                .BYTE $C2, $B0, $34, $3A, $42, $50, $B2, $48, $42, $3A
                .BYTE $B1, $42, $3A, $48, $3A, $3E, $34, $2E, $34, $B0
                .BYTE $4C, $52, $5A, $68, $B2, $60, $5A, $52, $B0, $5A
                .BYTE $52, $48, $42, $3A, $42, $48, $52, $56, $4C, $46
                .BYTE $3E, $34, $3E, $46, $4C, $FF, 0, $9F, $A8, $F4, $B0
                .BYTE $42, $38, $3A, $48, $B6, $44, $B0, $4E, $4E, 2, 2
                .BYTE $B6, 2, $B0, $42, $38, $3A, $48, $B6, $44, $B0, $52
                .BYTE $52, 2, 2, $B6, 2, $B4, $2A, $B3, $30, $2C, $B4
                .BYTE $2A, $B3, $36, $30, $9F, $A9, $F3, $C4, $B0, $42
                .BYTE $30, $38, $42, $FF, $C4, $44, $32, $3A, $44, $FF
                .BYTE $C4, $46, $34, $3C, $46, $FF, $C2, $48, $36, $3E
                .BYTE $48, $FF, $C2, $4A, $38, $40, $4A, $FF, $9F, $A8
                .BYTE $F4, $C2, $B0, 2, 2, $2A, 2, 2, $2A, 2, 2, $B3, $2A
                .BYTE $B0, 2, 2, $2C, 2, 2, $2C, 2, 2, $B3, $2C, $FF, $C4
                .BYTE $B4, $4C, $B3, $48, $46, $FF, 0, $9F, 0, 0, $C5
                .BYTE $B1, $2A, $20, $26, $20, $B0, $2A, $2A, $B1, $20
                .BYTE $26, $20, $2A, $20, $26, $20, $B0, $2A, $2A, $B1
                .BYTE $1A, $1C, $20, $FF, $2A, $2C, $2E, $30, $32, $30
                .BYTE $2E, $2C, $2C, $2E, $30, $32, $34, $32, $30, $2E
                .BYTE $2E, $30, $32, $34, $36, $34, $32, $30, $30, $32
                .BYTE $34, $36, $32, $34, $36, $38, $9F, $F, 0, $E0, $B0
                .BYTE $2A, $2A, $FF, $9F, 0, 0, $C4, $B1, $34, $32, $30
                .BYTE $2E, $2C, $2A, $28, $26, $3A, $38, $36, $34, $3E
                .BYTE $3C, $3A, $38, $FF, 0, $DC, $B0, 4, 4, 4, 4, 7, 4
                .BYTE 4, 4, $FF, $C4, 4, 4, 7, 4, 4, 7, 4, 4, 7, 4, 4
                .BYTE 4, 7, 7, 7, 7, $FF, $E0, 4, 4, 7, 4, $FF, 0, $3B
                .BYTE $96, $71, $98, $A9, $98, $FF, $FF, $49, $98, $4D
                .BYTE $96, $BD, $98, $3E, $99, $FF, $FF, $53, $98, $5F
                .BYTE $96, $88, $99, $A7, $99, $9C, $99, $FF, $FF, $5D
                .BYTE $98, $71, $96, $D4, $99, $D4, $99, $FF, $FF, $69
                .BYTE $98, $9F, 4, $34, $9E, $C, $B3, 2, $C5, $B1, $54
                .BYTE $FF, 2, 2, 2, $C5, $4C, $FF, 2, 2, 2
                .BYTE $54, 2, 2, 2, $54, $B5, 2, $9F, $44, $34, $B1, 2
                .BYTE $B6, $62, $B1, 2, $9F, 4, $34, $B4, 2, 2, $B1, $54
                .BYTE $54, $54, $52, $54, $54, $52, $54, $C5, $B4, 2, $FF
                .BYTE 0, $E0, $B1, $16, $FF, $D0, $20, $FF, $D0, $16, $FF
                .BYTE $C8, $24, $FF, $C8, $20, $FF, $D0, $16, $FF, 0, $9F
                .BYTE $A4, $34, $B1, 2, $4C, $4E, $54, $C5, $5E, $FF, $58
                .BYTE $54, $58, $C5, $54, $FF, $58, $54, $58, $C2, $5E
                .BYTE $58, $54, $58, $FF, $9F, $44, $34, 2, $B6, $58, $B1
                .BYTE 2, $C2, $9F, $A4, $34, $B1, $68, 2, $9F, $44, $34
                .BYTE $B2, $64, $FF, $9F, $A4, $34, $B1, 2, $68, $9F, $44
                .BYTE $34, $B2, $64, $9F, $A4, $34, $68, $9F, $44, $34
                .BYTE $64, $9F, 4, $34, $B1, $5E, $5E, $5E, $5C, $5E, $5E
                .BYTE $5C, $5E, 2, $64, $5E, $5A, $54, $50, $4C, $46, $9F
                .BYTE $44, $34, $B2, $50, $50, $B1, $50, $9F, 4, $34, $B1
                .BYTE $50, $4C, $46, 2, $46, $42, $3C, $3A, $38, $34, $2E
                .BYTE $B1, 2, $50, $9F, $A4, $34, $54, $5E, $5A, $54, $50
                .BYTE $4C, $46, 2, 2, $B3, $3C, $B1, 2, 0, $C2, $B1, $24
                .BYTE $24, $28, $24, $24, $24, $28, $24, $24, $24, $28
                .BYTE $24, $2A, $24, $28, $24, $FF, $C2, $2E, $2E, $32
                .BYTE $2E, $FF, $2E, $2E, $32, $2E, $34, $2E, $32, $2E
                .BYTE $C2, $24, $24, $28, $24, $FF, $2A, $24, $28, $24
                .BYTE $24, $24, $28, $24, $C2, $32, $32, $36, $32, $FF
                .BYTE $C2, $2E, $2E, $32, $2E, $FF, $C2, $24, $24, $28
                .BYTE $24, $FF, $2A, $24, $28, $24, $24, $24, $28, $24
                .BYTE 0, $9F, 0, 0, $B3, 2, $2E, 2, $38, 2, $2E, $2E, $B1
                .BYTE 2, $C7, $3C, $FF, $9F, $15, 0, 0, $C4, $B1, $2E
                .BYTE $2E, $36, $36, $3C, $3C, $40, $3C, $FF, $C2, $B1
                .BYTE $38, $38, $40, $40, $46, $46, $4A, $46, $FF, $C2
                .BYTE $2E, $2E, $36, $36, $3C, $3C, $40, $3C, $FF, $3C
                .BYTE $3C, $44, $44, $4A, $4A, $4E, $4A, $38, $38, $40
                .BYTE $40, $46, $46, $4A, $46, $C8, $2E, $FF, 2, $C7, $3C
                .BYTE $FF, 0, $B3, 1, $B4, $44, $44, $B3, $44, $44, $B1
                .BYTE 1, $C7, $84, $FF, $C7, $44, 4, $84, $84, $44, 4
                .BYTE $84, 4, $FF, $D0, $B0, $84, $FF, $CB, $B1, $44, 4
                .BYTE $84, $84, $44, 4, $84, 4, $FF, $44, 4, $84, $44
                .BYTE $C8, $B0, $84, $FF, 0, $B, $9A, 0, 0, $1A, $9A, $29
                .BYTE $9A, $9F, $A7, $F3, $B0, $1C, $26, $2E, $34, $3E
                .BYTE $46, $4C, $56, $B4, $54, 0, $9F, $A7, $F3, $B0, $E
                .BYTE $16, $1C, $26, $2E, $34, $3E, $46, $B4, $34, 0, $9F
                .BYTE $A0, 0, $B0, $2E, $34, $3E, $46, $4C, $56, $5E, $64
                .BYTE $B4, $5A, 0, $58, $9A, $74, $9A, $FF, $FF, $3A, $9A
                .BYTE $61, $9A, $E6, $9A, $FF, $FF, $42, $9A, $6A, $9A
                .BYTE $93, $9B, $FF, $FF, $4A, $9A, $70, $9A, $AC, $9B
                .BYTE $FF, $FF, $52, $9A, $9F, $29, $73, $B2, 2, $42, $46
                .BYTE $48, 0, $9F, $1B, $76, $B2, 2, $4A, $4C, $4E, 0
                .BYTE $9F, 0, 0, $B4, 2, 0, $B4, 1, 0, 0, $C2, $B3, $50
                .BYTE $B2, 2, $B1, $50, 2, $4C, 2, $4A, 2, $B2, 2, 2, $FF
                .BYTE $B4
                .BYTE 2, 2, $46, $B2, 2, $38, $3C, $3E, $C4, $B4, 2, $FF
                .BYTE $B2, 2, $B3, $46, $B2, $46, $B1, $46, 2, $42, 2
                .BYTE $40, 2, $3C, 2, $B4, $4A, $B2, 2, $42, $46, $48
                .BYTE $C3, $B1, 2, 2, $5A, $5A, $5A, 2, $58, $58, $58
                .BYTE 2, $54, $54, $54, 2, $50, 2, $FF, $B6, $40, $B2
                .BYTE $3C, $B4, $46, $C2, $B1, 2, 2, $46, $46, $46, 2
                .BYTE $42, $42, $42, 2, $40, $40, $40, 2, $3C, 2, $FF
                .BYTE $B2, 2, $B3, $40, $B2, $42, $46, $50, $4C, $50, $B2
                .BYTE $50, $50, 2, 2, $32, $B6, 2, 0, $C6, $B0, $50, $4A
                .BYTE $FF, $B1, $5A, 2, $54, 2, $50, 2, $B2, 2, $4A, $C6
                .BYTE $B0, $50, $4A, $FF, $B1, $5A, 2, $54, 2, $50, 2
                .BYTE $B2, 2, $4A, $B1, 2, 2, $72, $6C, $68, $62, $5E
                .BYTE $5A, $54, $50, $4A, $48, $46, $42, $3C, $38, $C8
                .BYTE $B0, $50, $40, $FF, $B2, 2, $40, $42, $44, $C2, $B1
                .BYTE $3E, $40, $50, $3E, $40, $50, $3E, $40, $4C, $3E
                .BYTE $40, $4C, $4A, $46, $40, $38, $FF, $B2, 2, $C4, $B0
                .BYTE $58, $46, $FF, $B2, $58, $B1, $58, 2, $54, 2, $50
                .BYTE 2, $4C, 2, $C8, $B0, $4A, $38, $FF, $B2, 2, $4A
                .BYTE $4C, $4E, $C3, $B1, 2, 2, $62, $62, $62, 2, $5E
                .BYTE $5E, $5E, 2, $5A, $5A, $5A, 2, $58, 2, $FF, $B6
                .BYTE $50, $B2, $4C, $C8, $B0, $46, $40, $FF, $C2, $B1
                .BYTE 2, 2, $58, $58, $58, 2, $54, $54, $54, 2, $50, $50
                .BYTE $50, 2, $4C, 2, $FF, $B2, 2, $B3, $46, $B2, $4A
                .BYTE $4C, $58, $54, $58, $B2, $5A, $5A, $B1, $54, $50
                .BYTE $B2, $4A, $42, $B6, 2, 0, $9F, 0, 0, $C6, $B5, $2A
                .BYTE $32, $B2, $20, $FF, $C8, $B5, $20, $28, $B2, $2E
                .BYTE $FF, $C2, $B5, $2A, $32, $B2, $20, $FF, 0, $E0, $B2
                .BYTE $41, $B1, 4, 4, $B2, $41, 4, $FF, 0, $DB, $9B, $54
                .BYTE $9C, $98, $9C, $FF, $FF, $B9, $9B, $FC, $9B, $3F
                .BYTE $9D, $76, $9D, $FF, $FF, $C3, $9B, $1D, $9C, $AE
                .BYTE $9D, $FF, $FF, $CD, $9B, $35, $9C, $E8, $9C, $FF
                .BYTE $FF, $D5, $9B, $9F, $A9, $B2, $B1, $38, $42, $4A
                .BYTE $B2, $3C, $B2, $40, $B1, $40, $40, $B2, $40, $B3
                .BYTE $38, $B1, 2, $B1, $38, $42, $4A, $B2, $3C, $B2, $40
                .BYTE $B4, $40, $B1, 2, 0, $9F, $B2, $B1, $B1, $5A, $62
                .BYTE $68, $B2, $66, $B2, $68, $B1, $68, $68, $B2, $5E
                .BYTE $B3, $62, $B1, 2, $B1, $5A, $62, $68, $B2, $66, $B2
                .BYTE $68, $B4, $68, $B1, 2, 0, $9F, $A0, 0, $B5, $42
                .BYTE $B3, $46, $B1, 2, $B5, $38, $B3, $42, $B1, 2, $B5
                .BYTE $42, $B3, $46, $B4, $38, $B1, 2, 0, $C2, $B1, $44
                .BYTE 4, 4, $44, 1, 4, 1, 4, $FF, $44, 4, 4, $44, 1, $44
                .BYTE 1, $44, 1, 4, 4, 1, $B0, $81, $81, $B1, $41, $81
                .BYTE $41, 0, $9F, $B2, $B1, $C2, $B1, 2, $40, $46, $50
                .BYTE 2, $3C, $46, $4E, 2, $38, $40, $4A, 2, $38, $40
                .BYTE $46, $42, $4A, $50, $42, $40, $46, $50, $40, $3E
                .BYTE $46, $4C, $46, $3C, $46, $36, $46, $FF, 2, $32, $38
                .BYTE $40, 2, $30, $38, $40, 2, $2E, $38
                .BYTE $40, 2, $2C, $32, $38, $9F, $A9, $B2, $4A, $46, $42
                .BYTE $46, $46, $46, $42, $46, $B4, $40, 0, $9F, $B2, $F2
                .BYTE $B1, $36, $1E, $28, $B5, $36, $B2, $1E, $B1, $38
                .BYTE $20, $2A, $B5, $38, $B2, $20, $B1, $36, $1E, $28
                .BYTE $2E, $36, $16, $24, $2E, $28, $16, $20, $28, $2E
                .BYTE $20, $28, $2E, $B1, $4A, $42, $38, $42, $46, $40
                .BYTE $B2, $38, $B1, $42, $38, $32, $38, $46, $40, $B2
                .BYTE $38, $B1, $4A, $42, $38, $42, $46, $40, $B2, $38
                .BYTE $9F, $A9, $B1, $B1, $4A, $4A, $4A, $4A, $50, $B2
                .BYTE $42, $B4, $40, $B1, 2, 0, 0, $C8, $B1, $41, 4, $81
                .BYTE $B0, 4, $41, $B1, $41, $44, $81, $B0, 4, 4, $FF
                .BYTE $C3, $B1, $44, 4, $84, $44, $44, 4, $84, 4, $FF
                .BYTE $44, 4, $84, $44, $B0, $81, $81, $B1, $81, $81, $81
                .BYTE $C2, $B1, $44, 4, $84, $44, 1, $84, $84, 1, $FF
                .BYTE $44, 4, $84, $44, $44, 4, $84, 4, $44, 4, $84, $44
                .BYTE $44, $81, $81, 7, $C4, $44, 4, $84, $44, $44, 4
                .BYTE $84, 4, $FF, $44, 4, $84, $44, $44, 4, $B0, $81
                .BYTE $81, $B1, $81, 0, $9F, $A7, $B3, $C2, $B1, $40, $40
                .BYTE $46, $46, $B2, $54, $B1, $4E, $B4, $50, $B1, 2, $B1
                .BYTE $4A, $4A, $50, $50, $B2, $58, $B1, $50, $B3, $46
                .BYTE $B1, $42, $B3, $42, $FF, $B1, $40, $3C, $38, $3C
                .BYTE $B2, $40, $4A, $50, $58, $B3, $62, $C2, $B1, $50
                .BYTE $4E, $4A, $4E, $FF, $B4, $50, 0, $B1, $46, $46, $46
                .BYTE 2, $B0, $46, 2, $B1, $40, $3C, $B4, $38, $B1, 2
                .BYTE $B1, $46, $46, $46, 2, $54, $50, $4E, $B6, $50, $B1
                .BYTE 2, $4A, $4E, $C3, $50, $4E, $4A, $4E, $FF, $50, 2
                .BYTE $46, $46, $C2, $50, $4E, $4A, $4E, $FF, $C4, $50
                .BYTE $FF, $58, $B2, $50, $B4, $50, $B1, 2, 0, $9F, 0
                .BYTE 0, $C2, $B5, $38, $B1, $38, $B5, $36, $B1, $36, $B5
                .BYTE $32, $B1, $32, $B5, $2E, $B1, $2E, $B5, $2A, $B1
                .BYTE $2A, $B5, $28, $B1, $28, $B5, $26, $B1, $26, $B5
                .BYTE $2E, $B1, $2E, $FF, $9F, $1F, 0, $C4, $B1, $32, $FF
                .BYTE $C4, $30, $FF, $C4, $2E, $FF, $C4, $2C, $FF, $C4
                .BYTE $2A, $FF, $C4, $2E, $FF, $9F, $A0, 0, $B4, $20, $9F
                .BYTE 0, 0, $B5, $28, $B3, $28, $B1, 2, $B5, $2A, $B3
                .BYTE $2A, $B1, 2, $B5, $28, $B1, $28, $B5, $2E, $B1, $2E
                .BYTE $C2, $B5, $38, $B1, $38, $FF, $9F, $1F, 0, $C4, $B1
                .BYTE $2A, $FF, $C4, $28, $FF, $C4, $24, $FF, $C4, $28
                .BYTE $FF, $C4, $2A, $FF, $C4, $28, $FF, $C4, $24, $FF
                .BYTE $C4, $2E, $FF, $9F, $A0, 0, $B4, $20, 0, $5D, $9E
                .BYTE $D2, $9E, $D2, $9E, $6B, $9F, $FF, $FF, $2D, $9E
                .BYTE $84, $9E, $F7, $9E, $F7, $9E, $C0, $9F, $FF, $FF
                .BYTE $39, $9E, $B0, $9E, $1B, $9F, $1B, $9F, 3, $A0, $FF
                .BYTE $FF, $45, $9E, $BE, $9E, $57, $9F, $57, $9F, $54
                .BYTE $A0, $FF, $FF, $51, $9E, $9F, 5, $B1, $B1, $5E, $B2
                .BYTE $5E, $B1, $60, 2, $B5, $60, $B1, $5A, $B2, $5A, $B1
                .BYTE $5E, 2, $B5, $5E, $B1, $56, $B2, $56, $B1, $5A, 2
                .BYTE $B5, $5A, $B1, $54, $B2, $54, $B3, $56, $B1, 2, 0
                .BYTE $9F
                .BYTE $AA, $B1, $B1, $4C, $B2, $4C, $B1, $50, 2, $B5, $50
                .BYTE $B1, $48, $B2, $48, $B1, $4C, 2, $B5, $4C, $B1, $46
                .BYTE $B2, $46, $B1, $48, 2, $B5, $48, $B1, $42, $B2, $42
                .BYTE $B2, $46, $9F, 5, $F1, $B1, $20, $18, $12, 0, $9F
                .BYTE 0, 0, $C7, $B2, 2, $38, $FF, $B1, 2, $38, $30, $2A
                .BYTE 0, $C7, $B0, 4, 4, 7, 4, $44, 4, 7, 4, $FF, $B1
                .BYTE 1, $81, $B0, $81, $81, $B1, $41, 0, $9F, $A, $B1
                .BYTE $B1, 2, $56, $46, $4C, 2, $50, $3E, $48, 2, $54
                .BYTE $42, $4C, 2, $56, $46, $4C, 2, $50, $3E, $48, 2
                .BYTE $50, $42, $48, 2, $54, $46, $4E, 2, $56, $46, $50
                .BYTE 0, $9F, $A2, $B4, $B1, $46, $3E, $46, $48, 2, $B5
                .BYTE $48, $B1, $4C, $42, $48, $B3, $46, $B1, 2, $48, $4C
                .BYTE $48, $46, 2, $42, 2, $48, $B1, $46, $3C, $42, $3E
                .BYTE 2, $B5, 2, 0, $9F, 0, 0, $B7, $26, $B0, $26, $B1
                .BYTE $2E, $26, $B7, $30, $B0, $30, $B1, $38, $30, $B7
                .BYTE $34, $B0, $34, $B1, $3C, $34, $B7, $26, $B0, $26
                .BYTE $B1, $2E, $26, $B7, $30, $B0, $30, $B1, $3E, $26
                .BYTE $B7, $2A, $B0, $2A, $B1, $38, $2A, $B7, $2E, $B0
                .BYTE $2E, $B1, $24, $2E, $B7, $38, $B0, $38, $B1, $2E
                .BYTE $38, 0, $C4, $B1, $44, $B0, 4, $41, $B1, $84, $44
                .BYTE $44, $B0, 4, $41, $B1, $84, $B0, 4, 4, $FF, 0, $9F
                .BYTE $B6, $B1, $C3, $B1, $46, $4C, $56, $46, $48, $56
                .BYTE $48, $4C, $FF, $9F, $D, $B2, $B1, $56, $54, $54
                .BYTE $4C, $B2, $56, $56, $9F, $B6, $B1, $C2, $B1, $46
                .BYTE $4C, $56, $46, $48, $56, $48, $4C, $FF, $46, $4C
                .BYTE $54, $46, $4C, $54, $46, $4C, $9F, $D, $B2, $B1
                .BYTE $56, $54, $54, $4C, $B2, $56, $54, $B2, $3E, $38
                .BYTE $3C, $B1, $3C, $3C, $B2, $3E, $34, $B3, $2E, $B1
                .BYTE $3E, $3C, $38, $34, $B2, $3C, $B1, $2A, $2A, $B6
                .BYTE $2E, $B2, 2, 0, $C2, $9F, $A2, $F4, $B2, 2, $B1
                .BYTE $3E, $3E, $46, $4C, $4C, $4C, $B2, $56, $54, $50
                .BYTE $54, $B1, $50, $B0, $54, $50, $B6, $4C, $9F, $13
                .BYTE $B3, $B1, $68, $64, $64, $5E, $B2, $68, $64, $FF
                .BYTE $9F, $A7, $F4, $B2, $50, $3E, $42, $B1, $4C, $48
                .BYTE $B2, $46, $3E, $B3, $34, $B1, $50, $4C, $48, $46
                .BYTE $B2, $42, $B1, $3E, $3C, $B6, $3E
; end of 'BANK1C'