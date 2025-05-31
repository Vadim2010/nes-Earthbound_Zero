.include "nes.inc"
.include "macros.inc"
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
    lda #0
    beq loc_1C80A3
; End of function sub_1C8095


; =============== S U B R O U T I N E =======================================


sub_1C8099:
    lda #8
    bne loc_1C80A3
; End of function sub_1C8099


; =============== S U B R O U T I N E =======================================


sub_1C809D:
    lda #$C
    bne loc_1C80A3
; End of function sub_1C809D


; =============== S U B R O U T I N E =======================================


sub_1C80A1:
    .importzp APU_DM_CR, PointerAPU, apu_B0

    lda #4

loc_1C80A3:
    sta apu_B0
    set APU_DM_CR, #$40 ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    sty PointerAPU
    set PointerAPU+1, #$81
    ldy #0

loc_1C80B1:
    lda (PointerAPU),Y
    sta (apu_B0),Y
    iny
    tya
    cmp #4
    bne loc_1C80B1
    rts
; End of function sub_1C80A1


; =============== S U B R O U T I N E =======================================


sub_1C80BC:
    .import apu_7FF
    .importzp apu_BB, apu_BC

    lda apu_BB
    and #2
    sta apu_7FF
    lda apu_BC
    and #2
    eor apu_7FF
    clc
    beq loc_1C80CE
    sec

loc_1C80CE:
    ror apu_BB
    ror apu_BC
    rts
; End of function sub_1C80BC


; =============== S U B R O U T I N E =======================================


sub_1C80D3:
    .import byte_7D5, byte_7DA
    .importzp apu_BD

    ldx apu_BD
    inc byte_7DA,X
    lda byte_7DA,X
    cmp byte_7D5,X
    bne locret_1C80E5
    lda #0
    sta byte_7DA,X

locret_1C80E5:
    rts
; End of function sub_1C80D3

; ---------------------------------------------------------------------------
byte_1C80E6:
    .byte $53, $93, $42, $93, $42, $93, $42, $93, $42, $93
    .byte $42, $93, $42, $93, $42, $93, $42, $93, 0, 0

byte_1C80FA:
    .byte $A4, $AC, $A3, $AC, $A4, $AC, $16, $7F, $E, $80
    .byte $3E, $7F, $E, 8, $1F, $7F, $F, $C0, $3F, $7F

byte_1C810E:
    .byte 0, $B0, $11, $7F, $E, $30, $9B, $7F, $C, $28

byte_1C8118:
    .byte $10, $7F

byte_1C811A:
    .byte $87, $B0, $A, $7F, $F, 8

byte_1C8120:
    .byte $B0, $7F, $1C, $40, $B0, $7F, $32, $40, $B1, $7F

byte_1C812A:
    .byte $40, $40, $B1, $7F

byte_1C812E:
    .byte $42, $40, $B1, $8E, $A0, $47, $B1, $7F, $FF, $47
    .byte $1F, $7F, $30

byte_1C813B:
    .byte 8, $1F, $BB, $D4, 8, $81, $A7, $E1, $88, $99, $7F

byte_1C8146:
    .byte $15, $88, $9B, $7F

byte_1C814A:
    .byte $1F, $88, $D8, $7F, $20, $28, $D1, $7F, $20, $28
    .byte $D9, $7F

byte_1C8156:
    .byte $54, $28, $9E, $9D, $C0, 8, $9C, $9A, $E8, 8, $9E
    .byte $7F, $40, 8, $94, $C6, $67, $28, $96, $CE, $47, $28
    .byte $D9, $A5, $7B, $F9, $D6, $A5, $90, $F9, $DA, $96
    .byte $46, $F9, $96, $7F, $76, $20, $82, $7F, $27, $F8
    .byte $94, $A5, $89, $48, $96, $AD, $7A, $58, $93, $A5
    .byte $99, $28, $9F, $84, $80, $FA, $94, $84, $24, $18
    .byte $94, $7F, $94, $18, $95, $B4, $57, $F8, 2, $7F, $67
    .byte 9, $7F, $7F, $E1, $A, $7F, $7F, $21

byte_1C81A7:
    .byte 9, 4, $7F, $5D, $28, 3, $7F, $38, $28

; =============== S U B R O U T I N E =======================================


sub_1C81B0:
    ldx #3
    lda #$79
    ldy #$81
    bne loc_1C81D3
; End of function sub_1C81B0


; =============== S U B R O U T I N E =======================================


sub_1C81B8:
    ldx #4
    lda #$89
    ldy #$8F
    bne loc_1C81D3
; End of function sub_1C81B8


; =============== S U B R O U T I N E =======================================


sub_1C81C0:
    .import byte_7FC

    lda byte_7FC
    bne exit_0
    ldx #1
    lda #$31
    ldy #$55
    bne loc_1C81D3
; End of function sub_1C81C0


; =============== S U B R O U T I N E =======================================


sub_1C81CD:
    .import Sound1, Noise
    .importzp apu_BF

    ldx #0
    lda #9
    ldy #$1D

loc_1C81D3:
    sta apu_B0
    stx apu_BD
    lda Sound1,X
    beq loc_1C820D

loc_1C81DC:
    sta apu_BF
    sta PointerAPU
    ldy #$80
    sty APU_DM_CR   ; Data for pAPU_DM_CR
        ; bit 7 - IRQ enabled flag
        ; bit 6 - Loop flag
        ; bit 3-0 note (frequency counter)
    and #7
    tay
    lda byte_1C8205,Y
    tay
    dec PointerAPU
    lda PointerAPU
    and #$F8
    sta PointerAPU
    asl PointerAPU
    tya
    ora PointerAPU
    tay
    lda (apu_B0),Y
    sta PointerAPU
    iny
    lda (apu_B0),Y
    sta PointerAPU+1
    jmp (PointerAPU)
; ---------------------------------------------------------------------------
byte_1C8205:
    .byte $E, 0, 2, 4, 6, 8, $A, $C
; ---------------------------------------------------------------------------

loc_1C820D:
    lda Noise,X
    beq exit_0
    sty apu_B0
    bne loc_1C81DC
; End of function sub_1C81CD


; =============== S U B R O U T I N E =======================================


sub_1C8216:
    .import apu_786, apu_78B, apu_76C

    set SND_CHN, #$F    ; pAPU Sound/Vertical Clock Signal Register (R)
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
    set apu_BB, #$55
    set apu_786, #0
    sta apu_78B
    tay

@next_byte:
    lda byte_1C80E6,Y
    sta apu_76C,Y
    iny
    tya
    cmp #$14
    bne @next_byte
    jsr sub_1C8299

exit_0:
    rts
; End of function sub_1C8216

; ---------------------------------------------------------------------------
off_1C8238:
    .word byte_1C935A, byte_1C9365, byte_1C9370, byte_1C937C
    .word byte_1C9388, byte_1C9391, byte_1C939E, byte_1C93AA

; =============== S U B R O U T I N E =======================================


sub_1C8248:
    .import CurrentGame

    set apu_B0, CurrentGame + GAME_SAVE::Flags+$1E
    ldy #0
    beq loc_1C825D

loc_1C8251:
    lda #$42
    sta apu_76C+2,Y
    iny
    lda #$93
    sta apu_76C+2,Y
    iny

loc_1C825D:
    tya
    cmp #$10
    beq locret_1C8276
    lsr apu_B0
    bcc loc_1C8251
    lda off_1C8238,Y
    sta apu_76C+2,Y
    iny
    lda off_1C8238,Y
    sta apu_76C+2,Y
    iny
    bne loc_1C825D

locret_1C8276:
    rts
; End of function sub_1C8248


; =============== S U B R O U T I N E =======================================


sub_1C8277:
    .import ModeSRAM

    set IO_JOY2, #$C0   ; APU mode 5-step, IRQ disable
                        ; Joypad #2/SOFTCLK (RW)
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
    jsr sub_1C80BC
    jsr sub_1C81CD
    jsr sub_1C81B8
    jsr sub_1C81B0
    jsr sub_1C81C0
    jsr loc_1C8911
    lda #0
    ldx #6

@clear_next:
    sta ModeSRAM,X
    dex
    bne @clear_next
    rts
; End of function sub_1C8277


; =============== S U B R O U T I N E =======================================


sub_1C8299:
    .import apu_79C

    jsr sub_1C82A8

loc_1C829C:
    jsr sub_1C82C6
    set DMC_CNTR, #0    ; pAPU Delta Modulation D/A Register (W)
    sta apu_79C
    rts
; End of function sub_1C8299


; =============== S U B R O U T I N E =======================================


sub_1C82A8:
    .import CurrentMusic, PulseChannels, apu_7C8, apu_7C9, apu_7CA

    set apu_7C8, #0
    sta apu_7C9
    sta apu_7CA
    sta CurrentMusic
    sta PulseChannels
    tay

@clear:
    lda #0
    sta Noise,Y
    iny
    tya
    cmp #6
    bne @clear
    rts
; End of function sub_1C82A8


; =============== S U B R O U T I N E =======================================


sub_1C82C6:
    set DMC_CNTR, #0    ; pAPU Delta Modulation D/A Register (W)
    set PL1_VOL, #$10   ; pAPU Pulse #1 Control Register (W)
    sta PL2_VOL         ; pAPU Pulse #2 Control Register (W)
    sta NOISE_VOL       ; pAPU Noise Control Register #1 (W)
    set TRI_LINEAR, #0  ; pAPU Triangle Control Register #1 (W)
    rts
; End of function sub_1C82C6


; =============== S U B R O U T I N E =======================================


sub_1C82DC:
    .import byte_7C7, byte_7DF, byte_7E3, byte_7E7

    ldx apu_BD
    sta byte_7D5,X
    txa
    sta byte_7C7,X
    tya
    beq loc_1C830A
    txa
    beq loc_1C8307
    cmp #1
    beq loc_1C82F8
    cmp #2
    beq loc_1C82FD
    cmp #3
    beq loc_1C8302
    rts
; ---------------------------------------------------------------------------

loc_1C82F8:
    jsr sub_1C8095
    beq loc_1C830A

loc_1C82FD:
    jsr sub_1C80A1
    beq loc_1C830A

loc_1C8302:
    jsr sub_1C8099
    beq loc_1C830A

loc_1C8307:
    jsr sub_1C809D

loc_1C830A:
    lda apu_BF
    sta Noise,X
    lda #0
    sta byte_7DA,X

loc_1C8314:
    sta byte_7DF,X
    sta byte_7E3,X
    sta byte_7E7,X
    sta PulseChannels

locret_1C8320:
    rts
; End of function sub_1C82DC


; =============== S U B R O U T I N E =======================================


sub_1C8321:
    lda #$30
    ldy #$1C
    jmp sub_1C82DC
; End of function sub_1C8321


; =============== S U B R O U T I N E =======================================


sub_1C8328:
    lda #$C
    ldy #$14
    jmp sub_1C82DC
; End of function sub_1C8328


; =============== S U B R O U T I N E =======================================


sub_1C832F:
    jsr sub_1C80D3
    bne locret_1C8320
    ldy #$14
    jsr sub_1C809D
    inc byte_7DF
    lda byte_7DF
    cmp #4
    bne locret_1C8320
    jmp sub_1C8415
; End of function sub_1C832F


; =============== S U B R O U T I N E =======================================


sub_1C8346:
    .import Sound3

    lda #4
    ldy #$14
    jsr sub_1C82DC
    set Sound3, #2
    lda apu_BB
    and #$F7

loc_1C8356:
    and #$F
    sta NOISE_LO    ; pAPU Noise Frequency Register #1 (W)
    rts
; End of function sub_1C8346


; =============== S U B R O U T I N E =======================================


sub_1C835C:
    lda #6
    ldy #$18
    jsr sub_1C82DC
    set byte_7DF, byte_1C811A
    set byte_7E3, byte_1C8118

locret_1C836F:
    rts
; End of function sub_1C835C


; =============== S U B R O U T I N E =======================================


sub_1C8370:
    lda #$86
    bne loc_1C838F

loc_1C8374:
    jsr sub_1C80D3
    bne locret_1C836F
    inc byte_7DF
    inc byte_7E3
    lda byte_7E3
    cmp #$19
    bne loc_1C8389
    jmp sub_1C8415
; ---------------------------------------------------------------------------

loc_1C8389:
    sta NOISE_VOL   ; pAPU Noise Control Register #1 (W)
    lda byte_7DF

loc_1C838F:
    sta NOISE_LO    ; pAPU Noise Frequency Register #1 (W)
    rts
; End of function sub_1C8370


; =============== S U B R O U T I N E =======================================


sub_1C8393:
    lda #5
    ldy #$C
    jsr sub_1C82DC
    set byte_7DF, byte_1C810E

locret_1C83A0:
    rts
; End of function sub_1C8393


; =============== S U B R O U T I N E =======================================


sub_1C83A1:
    lda byte_7E7
    cmp #2
    beq sub_1C83B1
    jsr sub_1C80D3
    bne locret_1C83A0
    inc byte_7E7
    rts
; End of function sub_1C83A1


; =============== S U B R O U T I N E =======================================


sub_1C83B1:
    jsr sub_1C80D3
    bne loc_1C83CC
    dec byte_7DF
    dec byte_7DF
    dec byte_7DF
    inc byte_7E3
    lda byte_7E3
    cmp #$F
    bne locret_1C83A0
    jmp sub_1C8436
; ---------------------------------------------------------------------------

loc_1C83CC:
    inc byte_7DF
    lda byte_7DF

loc_1C83D2:
    sta NOISE_LO    ; pAPU Noise Frequency Register #1 (W)

locret_1C83D5:
    rts
; End of function sub_1C83B1


; =============== S U B R O U T I N E =======================================


sub_1C83D6:
    jsr sub_1C845C
    jmp loc_1C83D2
; End of function sub_1C83D6


; =============== S U B R O U T I N E =======================================


sub_1C83DC:
    lda #3
    ldy #$10
    jmp sub_1C82DC
; End of function sub_1C83DC


; =============== S U B R O U T I N E =======================================


sub_1C83E3:
    jsr sub_1C80D3
    bne locret_1C83D5
    inc byte_7DF
    lda byte_7DF
    ora #$10
    sta NOISE_VOL   ; pAPU Noise Control Register #1 (W)
    cmp #$10
    bne locret_1C83D5
    jmp sub_1C8415
; End of function sub_1C83E3


; =============== S U B R O U T I N E =======================================


sub_1C83FA:
    lda #$10
    ldy #8
    jmp sub_1C82DC
; End of function sub_1C83FA


; =============== S U B R O U T I N E =======================================


sub_1C8401:
    jsr sub_1C80D3
    beq sub_1C8415
    ldx #$81
    jsr sub_1C83D6
    ldx #$89
    jmp loc_1C8450
; End of function sub_1C8401


; =============== S U B R O U T I N E =======================================


sub_1C8410:
    jsr sub_1C80D3
    bne locret_1C841F
; End of function sub_1C8410


; =============== S U B R O U T I N E =======================================


sub_1C8415:
    set Noise, #0
    set NOISE_VOL, #$10     ; pAPU Noise Control Register #1 (W)

locret_1C841F:
    rts
; End of function sub_1C8415


; =============== S U B R O U T I N E =======================================


sub_1C8420:
    lda #$20
    ldy #8
    jmp sub_1C82DC
; End of function sub_1C8420


; =============== S U B R O U T I N E =======================================


sub_1C8427:
    jsr sub_1C80D3
    beq sub_1C8415
    ldx #$91
    jsr sub_1C83D6
    ldx #$A1
    jmp loc_1C8450
; End of function sub_1C8427


; =============== S U B R O U T I N E =======================================


sub_1C8436:
    set apu_BF, #2

loc_1C843A:
    lda #$40
    ldy #8
    jmp sub_1C82DC
; End of function sub_1C8436


; =============== S U B R O U T I N E =======================================


sub_1C8441:
    jsr sub_1C80D3
    bne loc_1C8449
    jmp sub_1C8415
; ---------------------------------------------------------------------------

loc_1C8449:
    ldx #$B1
    jsr sub_1C83D6
    ldx #$D1

loc_1C8450:
    jsr sub_1C845C
    ora #$10
    sta NOISE_VOL   ; pAPU Noise Control Register #1 (W)
    inc byte_7DF
    rts
; End of function sub_1C8441


; =============== S U B R O U T I N E =======================================


sub_1C845C:
    .importzp byte_B4

    stx apu_B0
    ldy #$C1
    sty APU_DM_CR   ; Data for pAPU_DM_CR
        ; bit 7 - IRQ enabled flag
        ; bit 6 - Loop flag
        ; bit 3-0 note (frequency counter)
    ldx byte_7DF
    txa
    lsr A
    tay
    lda (apu_B0),Y
    sta byte_B4
    txa
    and #1
    beq loc_1C8476
    lda byte_B4
    and #$F
    rts
; ---------------------------------------------------------------------------

loc_1C8476:
    lda byte_B4
    lsr A
    lsr A
    lsr A
    lsr A

locret_1C847C:
    rts
; End of function sub_1C845C


; =============== S U B R O U T I N E =======================================


sub_1C847D:
    lda #8
    ldy #4
    jmp sub_1C82DC
; End of function sub_1C847D


; =============== S U B R O U T I N E =======================================


sub_1C8484:
    jsr sub_1C80D3
    bne locret_1C847C
    lda byte_7DF
    inc byte_7DF
    cmp #$28
    beq loc_1C84B9
    cmp #$10
    beq loc_1C84AE
    cmp #$18
    beq loc_1C84AA
    cmp #$20
    beq loc_1C84A6
    cmp #$10
    bcs locret_1C847C
    jmp loc_1C8356
; ---------------------------------------------------------------------------

loc_1C84A6:
    lda #$31
    bne loc_1C84B0

loc_1C84AA:
    lda #$32
    bne loc_1C84B0

loc_1C84AE:
    lda #$33

loc_1C84B0:
    sta NOISE_VOL   ; pAPU Noise Control Register #1 (W)
    set NOISE_LO, #$F    ; pAPU Noise Frequency Register #1 (W)
    rts
; ---------------------------------------------------------------------------

loc_1C84B9:
    jmp sub_1C8415
; End of function sub_1C8484


; =============== S U B R O U T I N E =======================================


sub_1C84BC:
    .import byte_7D9, byte_7DE, byte_7F9

    sta byte_7D9
    jsr sub_1C80A1
    set byte_7FC, apu_BF
    ldx #1
    stx apu_7C8
    inx
    stx apu_7C9
    set byte_7DE, #0
    sta byte_7F9
    ldx #1
    jmp loc_1C8314
; End of function sub_1C84BC


; =============== S U B R O U T I N E =======================================


sub_1C84DD:
    jsr loc_1C8688
    jsr sub_1C8840
    inc PulseChannels
    set byte_7FC, #0
    ldx #1
    lda #$7F

loc_1C84EF:
    sta PL1_VOL,X   ; pAPU Pulse #1 Control Register (W)
    sta PL2_VOL,X   ; pAPU Pulse #2 Control Register (W)
    rts
; End of function sub_1C84DD


; =============== S U B R O U T I N E =======================================


sub_1C84F6:
    .import byte_7E0

    ldy #$24
    jsr sub_1C8095
    lda #$A
    ldy #$20
    jsr sub_1C84BC
    set byte_7E0, byte_1C8120

locret_1C8508:
    rts
; End of function sub_1C84F6


; =============== S U B R O U T I N E =======================================


sub_1C8509:
    .import byte_7E4

    jsr sub_1C80D3
    bne loc_1C8533
    lda byte_7E4
    beq loc_1C8518
    dec byte_7E0
    bne loc_1C851B

loc_1C8518:
    inc byte_7E0

loc_1C851B:
    lda byte_7E0
    cmp #$B0
    bne loc_1C8525
    jmp sub_1C84DD
; ---------------------------------------------------------------------------

loc_1C8525:
    sta PL1_VOL     ; pAPU Pulse #1 Control Register (W)
    sta PL2_VOL     ; pAPU Pulse #2 Control Register (W)
    cmp #$BF
    bne locret_1C8508
    inc byte_7E4
    rts
; ---------------------------------------------------------------------------

loc_1C8533:
    ldy #$1A
    lda byte_7DE
    and #1
    bne loc_1C853E
    ldy #$1B

loc_1C853E:
    sty PL1_LO  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    rts
; End of function sub_1C8509


; =============== S U B R O U T I N E =======================================


sub_1C8542:
    ldy #$30
    jsr sub_1C8095
    lda #8
    ldy #$34
    bne loc_1C8556

loc_1C854D:
    ldy #$2C
    jsr sub_1C8095
    lda #3
    ldy #$28

loc_1C8556:
    jmp sub_1C84BC
; End of function sub_1C8542


; =============== S U B R O U T I N E =======================================


sub_1C8559:
    jsr sub_1C857E
    jsr sub_1C80D3
    bne sub_1C857E
    ldx #0
    inc byte_7E0
    lda byte_7E0
    cmp #$12
    beq loc_1C8576
    cmp #$E
    bcc loc_1C8579
    lda #$BE
    jmp loc_1C84EF
; ---------------------------------------------------------------------------

loc_1C8576:
    jmp sub_1C84DD
; ---------------------------------------------------------------------------

loc_1C8579:
    ora #$B0
    jmp loc_1C84EF
; End of function sub_1C8559


; =============== S U B R O U T I N E =======================================


sub_1C857E:
    inc byte_7E4
    lda byte_7E4
    and #7
    tay
    lda byte_1C859C,Y
    clc
    adc byte_1C812A
    sta PL1_LO  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    lda byte_1C859C,Y
    clc
    adc byte_1C812E
    sta PL2_LO  ; pAPU Pulse #2 Fine Tune (FT) Register (W)

locret_1C859B:
    rts
; End of function sub_1C857E

; ---------------------------------------------------------------------------
byte_1C859C:
    .byte 0, 1, 2, 1, 0, $FF, $FE, $FF

; =============== S U B R O U T I N E =======================================


sub_1C85A4:
    lda #$A
    ldy #$98
    jmp sub_1C82DC
; End of function sub_1C85A4

; ---------------------------------------------------------------------------
byte_1C85AB:
    .byte $14, $93, $94, $D3

; =============== S U B R O U T I N E =======================================


sub_1C85AF:
    lda byte_7E4
    beq loc_1C85C1
    inc byte_7E0
    lda byte_7E0
    cmp #$16
    bne locret_1C859B
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C85C1:
    lda byte_7E0
    and #3
    tay
    lda byte_1C85AB,Y
    sta PL1_VOL     ; pAPU Pulse #1 Control Register (W)
    inc byte_7E0
    lda byte_7E0
    cmp #8
    bne locret_1C859B
    inc byte_7E4
    ldy #$7C
    jmp sub_1C8095
; End of function sub_1C85AF


; =============== S U B R O U T I N E =======================================


sub_1C85DF:
    lda #2
    ldy #$90
    jmp sub_1C82DC
; End of function sub_1C85DF


; =============== S U B R O U T I N E =======================================


sub_1C85E6:
    ldy #$78
    jmp sub_1C82DC
; End of function sub_1C85E6


; =============== S U B R O U T I N E =======================================


sub_1C85EB:
    lda #4
    ldy #$64
    jmp sub_1C82DC
; End of function sub_1C85EB


; =============== S U B R O U T I N E =======================================


sub_1C85F2:
    jsr sub_1C80D3
    bne locret_1C866D
    inc byte_7E0
    lda byte_7E0
    cmp #1
    beq loc_1C8608
    cmp #4
    bne locret_1C866D
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C8608:
    ldy #$68
    jmp sub_1C8095
; End of function sub_1C85F2


; =============== S U B R O U T I N E =======================================


sub_1C860D:
    .import byte_7E8

    inc apu_78B

loc_1C8610:
    lda #$F
    ldy #$44
    jsr sub_1C82DC
    lda byte_1C8146

loc_1C861A:
    sta byte_7E8
    rts
; End of function sub_1C860D


; =============== S U B R O U T I N E =======================================


sub_1C861E:
    .import NewMusic, byte_7D6

    jsr sub_1C80D3
    bne loc_1C8661
    inc byte_7E4
    lda byte_7E4
    cmp #8
    beq loc_1C865A
    cmp #$24
    beq loc_1C8648

loc_1C8631:
    and #1
    beq loc_1C863C
    lda byte_1C814A
    ldy #$48
    bne loc_1C8641

loc_1C863C:
    lda byte_1C8146
    ldy #$44

loc_1C8641:
    pha
    jsr sub_1C8095
    pla
    bne loc_1C861A

loc_1C8648:
    lda apu_78B
    beq loc_1C8657
    set apu_78B, #0
    set NewMusic, #$25

loc_1C8657:
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C865A:
    set byte_7D6, #2
    bne loc_1C8631

loc_1C8661:
    dec byte_7E8
    dec byte_7E8
    set PL1_LO, byte_7E8    ; pAPU Pulse #1 Fine Tune (FT) Register (W)

locret_1C866D:
    rts
; End of function sub_1C861E


; =============== S U B R O U T I N E =======================================


sub_1C866E:
    lda byte_7F9
    cmp #7
    beq locret_1C866D
    lda #2
    ldy #$94
    jmp sub_1C82DC
; End of function sub_1C866E


; =============== S U B R O U T I N E =======================================


sub_1C867C:
    lda #$10
    ldy #$8C
    jmp sub_1C82DC
; End of function sub_1C867C


; =============== S U B R O U T I N E =======================================


sub_1C8683:
    jsr sub_1C80D3
    bne locret_1C8698

loc_1C8688:
    set PL1_VOL, #$10   ; pAPU Pulse #1 Control Register (W)
    set apu_7C8, #0
    sta byte_7F9
    inc PulseChannels

locret_1C8698:
    rts
; End of function sub_1C8683


; =============== S U B R O U T I N E =======================================


sub_1C8699:
    lda #6
    ldy #$80
    jmp sub_1C82DC
; End of function sub_1C8699


; =============== S U B R O U T I N E =======================================


sub_1C86A0:
    jsr sub_1C80D3
    bne locret_1C8698
    inc byte_7E0
    lda byte_7E0
    cmp #1
    beq loc_1C86BA
    cmp #2
    beq loc_1C86BF
    cmp #3
    bne locret_1C8698
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C86BA:
    ldy #$84
    jmp sub_1C8095
; ---------------------------------------------------------------------------

loc_1C86BF:
    ldy #$88
    jmp sub_1C8095
; End of function sub_1C86A0


; =============== S U B R O U T I N E =======================================


sub_1C86C4:
    lda #8
    ldy #$6C
    jmp sub_1C82DC
; End of function sub_1C86C4


; =============== S U B R O U T I N E =======================================


sub_1C86CB:
    jsr sub_1C80D3
    beq sub_1C86ED
    lda byte_7E8
    cmp #2
    bne loc_1C86E9
    set byte_7E8, #0
    ldy byte_7E4
    inc byte_7E4
    lda byte_1C80FA,Y
    sta PL1_SWEEP   ; pAPU Pulse #1 Ramp Control Register (W)
    rts
; ---------------------------------------------------------------------------

loc_1C86E9:
    inc byte_7E8
    rts
; End of function sub_1C86CB


; =============== S U B R O U T I N E =======================================


sub_1C86ED:
    set byte_7E4, #0
    lda byte_7E0
    beq loc_1C8702
    cmp #1
    beq loc_1C8706
    cmp #2
    bne locret_1C870E
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C8702:
    ldy #$70
    bne loc_1C8708

loc_1C8706:
    ldy #$74

loc_1C8708:
    jsr sub_1C8095
    inc byte_7E0

locret_1C870E:
    rts
; End of function sub_1C86ED


; =============== S U B R O U T I N E =======================================


sub_1C870F:
    jsr sub_1C80D3
    bne locret_1C870E
    inc byte_7E0
    lda byte_7E0
    cmp #2
    bne loc_1C8721
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C8721:
    ldy #$50
    jmp sub_1C8095
; End of function sub_1C870F


; =============== S U B R O U T I N E =======================================


sub_1C8726:
    lda byte_7F9
    cmp #7
    beq locret_1C870E
    lda #3
    ldy #$4C
    bne loc_1C875B

loc_1C8733:
    lda #$10
    ldy #$3C
    jsr loc_1C875B
    lda #$18
    bne loc_1C877B

loc_1C873E:
    jsr sub_1C80D3
    bne locret_1C877E
    ldy #$3C
    bne loc_1C8786

loc_1C8747:
    lda #6
    ldy #$58
    jsr loc_1C875B
    lda #$10
    bne loc_1C877B

loc_1C8752:
    jsr sub_1C80D3
    bne locret_1C877E
    ldy #$58
    bne loc_1C8786

loc_1C875B:
    jmp sub_1C82DC
; End of function sub_1C8726


; =============== S U B R O U T I N E =======================================


sub_1C875E:
    lda #5
    ldy #$5C
    jsr loc_1C875B
    lda #8
    bne loc_1C877B

loc_1C8769:
    jsr sub_1C80D3
    bne locret_1C877E
    ldy #$5C
    bne loc_1C8786

loc_1C8772:
    lda #6
    ldy #$60
    jsr loc_1C875B
    lda #0

loc_1C877B:
    sta byte_7E4

locret_1C877E:
    rts
; End of function sub_1C875E


; =============== S U B R O U T I N E =======================================


sub_1C877F:
    jsr sub_1C80D3
    bne locret_1C877E
    ldy #$60

loc_1C8786:
    jsr sub_1C8095
    clc
    lda byte_7E4
    adc byte_7E0
    tay
    lda byte_1C87EE,Y
    sta PL1_LO  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    ldy byte_7E0
    lda byte_1C87E5,Y
    sta PL1_VOL     ; pAPU Pulse #1 Control Register (W)
    bne loc_1C87A5
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C87A5:
    inc byte_7E0

locret_1C87A8:
    rts
; End of function sub_1C877F


; =============== S U B R O U T I N E =======================================


sub_1C87A9:
    lda #4
    ldy #$54
    jsr sub_1C82DC
    set byte_7E0, byte_1C8156
    rts
; End of function sub_1C87A9


; =============== S U B R O U T I N E =======================================


sub_1C87B7:
    jsr sub_1C80D3
    bne locret_1C87A8
    inc byte_7E4
    lda byte_7E4
    cmp #5
    bne loc_1C87C9
    jmp loc_1C8688
; ---------------------------------------------------------------------------

loc_1C87C9:
    lda byte_7E0
    lsr A
    lsr A
    lsr A
    sta byte_7E8
    lda byte_7E0
    clc
    sbc byte_7E8
    sta byte_7E0
    sta PL1_LO  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    lda #$28

loc_1C87E1:
    sta PL1_HI  ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

locret_1C87E4:
    rts
; End of function sub_1C87B7

; ---------------------------------------------------------------------------
byte_1C87E5:
    .byte $9E, $9B, $99, $96, $94, $93, $92, $91, 0

byte_1C87EE:
    .byte $20, $40, $20, $40, $20, $40, $20, $40, $90, $60
    .byte $90, $90, $60, $80, $90, $60, $B0, $79, $A8, $58
    .byte $90, $40, $80, $30, $76, $9F, $58, $76, $42, $58
    .byte $31, $42

; =============== S U B R O U T I N E =======================================


sub_1C880E:
    jsr sub_1C80D3
    bne locret_1C87E4
    ldy byte_7E0
    inc byte_7E0
    lda byte_1C8830,Y
    beq loc_1C8826
    sta PL1_LO  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    lda #$88
    jmp loc_1C87E1
; ---------------------------------------------------------------------------

loc_1C8826:
    jmp loc_1C8688
; End of function sub_1C880E


; =============== S U B R O U T I N E =======================================


sub_1C8829:
    lda #4
    ldy #$40
    jmp sub_1C82DC
; End of function sub_1C8829

; ---------------------------------------------------------------------------
byte_1C8830:
    .byte $A8, $96, $70, $53, $4A, $37, $29, $E1, $A8, $96
    .byte $70, $53, $4A, $37, $29, 0

; =============== S U B R O U T I N E =======================================


sub_1C8840:
    .import byte_7FA

    set PL2_VOL, #$10   ; pAPU Pulse #2 Control Register (W)
    set apu_7C9, #0
    sta byte_7FA
    rts
; End of function sub_1C8840


; =============== S U B R O U T I N E =======================================


sub_1C884E:
    lda #4
    ldy #$A0
    jsr sub_1C82DC
    set TRI_LO, apu_BB      ; pAPU Triangle Frequency Register #1 (W)
    lda #$A
    bne loc_1C88B0
; End of function sub_1C884E


; =============== S U B R O U T I N E =======================================


sub_1C885E:
    .import byte_7E6

    lda #4
    ldy #$9C
    jsr sub_1C82DC
    set byte_7E6, #8
    rts
; End of function sub_1C885E

; ---------------------------------------------------------------------------
byte_1C886B:
    .byte $31, $3A, $42, $4A, $58, $63, $76, $85, $96, $B2
    .byte $C8, $EE, 0, $C, $2D, $67, $93, $DF, $FF

; =============== S U B R O U T I N E =======================================


sub_1C887E:
    .import byte_7E2, byte_7FB

    jsr sub_1C80D3
    bne locret_1C88B3

loc_1C8883:
    ldy byte_7E2
    lda byte_1C886B,Y
    beq loc_1C889B
    cmp #$FF
    beq loc_1C88A3
    inc byte_7E2
    sta TRI_LO  ; pAPU Triangle Frequency Register #1 (W)
    lda byte_7E6
    jmp loc_1C88B0
; ---------------------------------------------------------------------------

loc_1C889B:
    inc byte_7E6
    inc byte_7E2
    bne loc_1C8883

loc_1C88A3:
    set TRI_LINEAR, #0      ; pAPU Triangle Control Register #1 (W)
    sta apu_7CA
    sta byte_7FB
    lda #$18

loc_1C88B0:
    sta TRI_HI  ; pAPU Triangle Frequency Register #2 (W)

locret_1C88B3:
    rts
; End of function sub_1C887E


; =============== S U B R O U T I N E =======================================


sub_1C88B4:
    jsr sub_1C80D3
    beq loc_1C88A3

locret_1C88B9:
    rts
; End of function sub_1C88B4


; =============== S U B R O U T I N E =======================================


sub_1C88BA:
    jsr sub_1C80D3
    bne locret_1C88B9
    ldy byte_7E2
    inc byte_7E2
    lda byte_1C88DB,Y
    beq loc_1C88A3
    sta TRI_LO  ; pAPU Triangle Frequency Register #1 (W)
    set TRI_HI, byte_1C81A7     ; pAPU Triangle Frequency Register #2 (W)
    rts
; End of function sub_1C88BA


; =============== S U B R O U T I N E =======================================


sub_1C88D4:
    lda #3
    ldy #$A4
    jmp sub_1C82DC
; End of function sub_1C88D4

; ---------------------------------------------------------------------------
byte_1C88DB:
    .byte $3F, $48, $52, $6D, $78, $84, $91, $AE, $BD, 0

; =============== S U B R O U T I N E =======================================


sub_1C88E5:
    lda #8
    ldy #$A8
    jmp sub_1C82DC
; End of function sub_1C88E5


; =============== S U B R O U T I N E =======================================


sub_1C88EC:
    jsr sub_1C80D3
    bne locret_1C88B3
    inc byte_7E2
    lda byte_7E2
    cmp #2
    bne loc_1C88FE
    jmp loc_1C88A3
; ---------------------------------------------------------------------------

loc_1C88FE:
    ldy #$AC
    jmp sub_1C8099
; End of function sub_1C88EC


; =============== S U B R O U T I N E =======================================


sub_1C8903:
    .import PulseSweep1, byte_7C1, byte_7CC, byte_7FD

    jsr sub_1C8248
    set CurrentMusic, #1
    jmp loc_1C8946
; ---------------------------------------------------------------------------

loc_1C890E:
    jmp sub_1C8299
; ---------------------------------------------------------------------------

loc_1C8911:
    lda NewMusic
    tay
    cmp #$3F
    bcs loc_1C890E
    cmp #1
    beq sub_1C8903
    tya
    beq loc_1C895C
    sta CurrentMusic
    cmp #$19
    beq loc_1C892B
    cmp #$19
    bcc loc_1C8936

loc_1C892B:
    sta apu_BF
    sec
    sbc #$19
    sta byte_7CC
    jmp loc_1C894E
; ---------------------------------------------------------------------------

loc_1C8936:
    cmp #6
    bne loc_1C8946
    lda $6707
    cmp #1
    beq loc_1C8945
    lda #7
    bne loc_1C8946

loc_1C8945:
    tya

loc_1C8946:
    sta apu_BF
    sta byte_7CC
    dec byte_7CC

loc_1C894E:
    set PulseSweep1, #$7F
    sta byte_7C1
    jsr sub_1C8AEC

loc_1C8959:
    jmp loc_1C8C7B
; ---------------------------------------------------------------------------

loc_1C895C:
    lda byte_7FD
    bne loc_1C8959
    rts
; End of function sub_1C8903


; =============== S U B R O U T I N E =======================================


sub_1C8962:
    lda #3
    ldy #$38
    jsr sub_1C82DC
    jmp loc_1C8971
; ---------------------------------------------------------------------------

loc_1C896C:
    jsr sub_1C80D3
    bne locret_1C8995

loc_1C8971:
    lda byte_7E0
    and #7
    tay
    lda byte_7E0
    lsr A
    lsr A
    lsr A
    tax
    inc byte_7E0
    lda byte_1C89A1,X
    beq loc_1C8996
    sta PL1_VOL     ; pAPU Pulse #1 Control Register (W)
    lda byte_1C8999,Y
    sta PL1_LO  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    set PL1_HI, byte_1C813B     ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

locret_1C8995:
    rts
; ---------------------------------------------------------------------------

loc_1C8996:
    jmp loc_1C8688
; End of function sub_1C8962

; ---------------------------------------------------------------------------
byte_1C8999:
    .byte $2C, $24, $28, $20, $24, $1C, $20, $18

byte_1C89A1:
    .byte $1F, $19, $14, $12, $11, 0

stru_1C89A7:
    .byte 0, $10, 1     ; APU_NOISE <0, $10, 1>
    .byte $18, 0, 1     ; APU_NOISE <$18, 0, 1>
    .byte $38, 0, 3     ; APU_NOISE <$38, 0, 3>
    .byte $40, 0, 6     ; APU_NOISE <$40, 0, 6>
    .byte $58, 1, 3     ; APU_NOISE <$58, 1, 3>
    .byte $40, 2, 4     ; APU_NOISE <$40, 2, 4>
    .byte $40, $13, 5   ; APU_NOISE <$40, $13, 5>
    .byte $40, $14, $A  ; APU_NOISE <$40, $14, $A>
    .byte $40, $14, 8   ; APU_NOISE <$40, $14, 8>
    .byte $40, $12, $E  ; APU_NOISE <$40, $12, $E>
    .byte 8, $16, $E    ; APU_NOISE <8, $16, $E>
    .byte $28, $16, $B  ; APU_NOISE <$28, $16, $B>
    .byte $18

; =============== S U B R O U T I N E =======================================


sub_1C89CC:
    .import PulseTimer1, byte_79A, byte_7C3, byte_7D1
    .importzp APURegisterNum

    lda byte_7FD
    cmp #1
    beq exit
    txa
    cmp #3
    beq exit
    lda byte_79A,X
    and #$E0
    beq exit
    sta apu_B0
    lda byte_7C3,X
    cmp #2
    beq loc_1C89F2
    ldy APURegisterNum
    lda PulseTimer1,Y
    sta APU_DM_CR   ; Data for pAPU_DM_CR
        ; bit 7 - IRQ enabled flag
        ; bit 6 - Loop flag
        ; bit 3-0 note (frequency counter)
    jsr loc_1C8A33

loc_1C89F2:
    inc byte_7D1,X

exit:
    rts
; End of function sub_1C89CC


; =============== S U B R O U T I N E =======================================


sub_1C89F6:
    lda PointerAPU
    cmp #$31
    bne loc_1C89FE
    lda #$27

loc_1C89FE:
    tay
    lda byte_1C8A85,Y
    pha
    lda byte_7C3,X
    cmp #$46
    bne loc_1C8A0F
    pla
    lda #0
    beq loc_1C8A6D

loc_1C8A0F:
    pla
    jmp loc_1C8A6D
; ---------------------------------------------------------------------------

loc_1C8A13:
    lda PointerAPU
    tay
    cmp #$10
    bcs loc_1C8A20
    lda byte_1C8ABC,Y
    jmp loc_1C8A73
; ---------------------------------------------------------------------------

loc_1C8A20:
    lda #$F6
    bne loc_1C8A73

loc_1C8A24:
    lda byte_7C3,X
    cmp #$4C
    bcc loc_1C8A2F
    lda #$FE
    bne loc_1C8A73

loc_1C8A2F:
    lda #$FE
    bne loc_1C8A73

loc_1C8A33:
    lda byte_7D1,X
    sta PointerAPU
    lda apu_B0
    cmp #$20
    beq loc_1C8A52
    cmp #$A0
    beq loc_1C8A61
    cmp #$60
    beq loc_1C8A24
    cmp #$40
    beq loc_1C8A13
    cmp #$80
    beq sub_1C89F6
    cmp #$C0
    beq sub_1C89F6

loc_1C8A52:
    lda PointerAPU
    cmp #$A
    bne loc_1C8A5A
    lda #0

loc_1C8A5A:
    tay
    lda byte_1C8AB2,Y
    jmp loc_1C8A6D
; ---------------------------------------------------------------------------

loc_1C8A61:
    lda PointerAPU
    cmp #$2B
    bne loc_1C8A69
    lda #$21

loc_1C8A69:
    tay
    lda byte_1C8A91,Y

loc_1C8A6D:
    pha
    tya
    sta byte_7D1,X
    pla

loc_1C8A73:
    pha
    lda apu_7C8,X
    bne loc_1C8A83
    pla
    clc
    adc APU_DM_CR   ; Data for pAPU_DM_CR
        ; bit 7 - IRQ enabled flag
        ; bit 6 - Loop flag
        ; bit 3-0 note (frequency counter)
    ldy APURegisterNum
    sta PL1_LO,Y    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    rts
; ---------------------------------------------------------------------------

loc_1C8A83:
    pla
    rts
; End of function sub_1C89F6

; ---------------------------------------------------------------------------
byte_1C8A85:
    .byte 9, 8, 7, 6, 5, 4, 3, 2, 2, 1, 1, 0

byte_1C8A91:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
    .byte 0, 0, 0, $FF, 0, 0, 0, 0, 1, 1, 0, 0, 0, $FF, $FF
    .byte 0

byte_1C8AB2:
    .byte 0, 1, 1, 2, 1, 0, $FF, $FF, $FE, $FF

byte_1C8ABC:
    .byte 0, $FF, $FE, $FD, $FC, $FB, $FA, $F9, $F8, $F7, $F6
    .byte $F5, $F6, $F7, $F6, $F5

; =============== S U B R O U T I N E =======================================


sub_1C8ACC:
    .import byte_790

    lda byte_7CC
    tay
    lda byte_1C90F4,Y
    tay
    ldx #0

loc_1C8AD6:
    lda byte_1C91FE,Y
    sta byte_790,X
    iny
    inx
    txa
    cmp #$A
    bne loc_1C8AD6
    rts
; End of function sub_1C8ACC


; =============== S U B R O U T I N E =======================================


sub_1C8AE4:
    .import byte_7A0

    lda #$FF
    sta byte_7A0,X
    jmp loc_1C8B65
; End of function sub_1C8AE4


; =============== S U B R O U T I N E =======================================


sub_1C8AEC:
    .import byte_792, byte_793, byte_7A1, byte_7A7, byte_7A8, byte_7B4, byte_7B5, byte_7B6, byte_7B7
    .importzp byte_B6, byte_B7, byte_BA

    jsr loc_1C829C
    set byte_7FD, apu_BF
    cmp #$32
    beq loc_1C8B06
    cmp #$19
    beq loc_1C8B00
    cmp #$19
    bcc loc_1C8B1A

loc_1C8B00:
    jsr sub_1C8ACC
    jmp loc_1C8B31
; ---------------------------------------------------------------------------

loc_1C8B06:
    ldx #0
    ldy #0

loc_1C8B0A:
    lda byte_1C92F8,Y
    sta byte_790,X
    iny
    inx
    txa
    cmp #$A
    bne loc_1C8B0A
    jmp loc_1C8B31
; ---------------------------------------------------------------------------

loc_1C8B1A:
    lda byte_7CC
    tay
    lda byte_1C90DC,Y
    tay
    ldx #0

loc_1C8B24:
    lda byte_1C910E,Y
    sta byte_790,X
    iny
    inx
    txa
    cmp #$A
    bne loc_1C8B24

loc_1C8B31:
    set byte_7B4, #1
    sta byte_7B5
    sta byte_7B6
    sta byte_7B7
    set byte_BA, #0
    ldy #8

loc_1C8B45:
    sta byte_7A7,Y
    dey
    bne loc_1C8B45
    tax

loc_1C8B4C:
    lda byte_792,X
    sta byte_B6
    lda byte_793,X
    cmp #$FF
    beq sub_1C8AE4
    sta byte_B7
    ldy byte_7A8
    lda (byte_B6),Y
    sta byte_7A0,X
    iny
    lda (byte_B6),Y

loc_1C8B65:
    sta byte_7A1,X
    inx
    inx
    txa
    cmp #8
    bne loc_1C8B4C
    rts
; End of function sub_1C8AEC


; =============== S U B R O U T I N E =======================================


set_pulse:
    .import PulseCounter1, PulseTimer2, PulseCounter2

    lda PulseChannels
    beq exit_1
    cmp #1
    beq @one
    set PL2_SWEEP, #$7F         ; pAPU Pulse #2 Ramp Control Register (W)
    set PL2_LO, PulseTimer2     ; pAPU Pulse #2 Fine Tune (FT) Register (W)
    set PL2_HI, PulseCounter2   ; pAPU Pulse #2 Coarse Tune (CT) Register (W)

@one:
    set PL1_SWEEP, #$7F         ; pAPU Pulse #1 Ramp Control Register (W)
    set PL1_LO, PulseTimer1     ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    set PL1_HI, PulseCounter1   ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
    set PulseChannels, #0

exit_1:
    rts
; End of function set_pulse


; =============== S U B R O U T I N E =======================================


sub_1C8BA1:
    .import byte_791, byte_79D, byte_79F, byte_7AC, byte_7B0, byte_7B8, byte_7BC, byte_7CD

    txa
    cmp #2
    bcs exit_1
    lda byte_79A,X
    and #$1F
    beq locret_1C8C06
    sta APU_DM_CR   ; Data for pAPU_DM_CR
        ; bit 7 - IRQ enabled flag
        ; bit 6 - Loop flag
        ; bit 3-0 note (frequency counter)
    lda byte_7C3,X
    cmp #2
    beq loc_1C8C10
    ldy #0

loc_1C8BB8:
    dec APU_DM_CR   ; Data for pAPU_DM_CR
        ; bit 7 - IRQ enabled flag
        ; bit 6 - Loop flag
        ; bit 3-0 note (frequency counter)
    beq loc_1C8BC0
    iny
    iny
    bne loc_1C8BB8

loc_1C8BC0:
    lda off_1C8E85,Y
    sta PointerAPU
    lda off_1C8E85+1,Y
    sta PointerAPU+1
    lda byte_7CD,X
    lsr A
    tay
    lda (PointerAPU),Y
    sta byte_B4
    cmp #$FF
    beq loc_1C8C07
    cmp #$F0
    beq loc_1C8C0C
    lda byte_7CD,X
    and #1
    bne loc_1C8BEA
    lsr byte_B4
    lsr byte_B4
    lsr byte_B4
    lsr byte_B4

loc_1C8BEA:
    lda byte_B4
    and #$F
    sta apu_B0
    lda byte_79D,X
    and #$F0
    ora apu_B0
    tay

loc_1C8BF8:
    inc byte_7CD,X

loc_1C8BFB:
    lda apu_7C8,X
    bne locret_1C8C06
    tya
    ldy APURegisterNum
    sta PL1_VOL,Y   ; pAPU Pulse #1 Control Register (W)

locret_1C8C06:
    rts
; ---------------------------------------------------------------------------

loc_1C8C07:
    ldy byte_79D,X
    bne loc_1C8BFB

loc_1C8C0C:
    ldy #$10
    bne loc_1C8BFB

loc_1C8C10:
    ldy #$10
    bne loc_1C8BF8

loc_1C8C14:
    iny
    lda (byte_B6),Y
    sta byte_792,X
    iny
    lda (byte_B6),Y
    sta byte_793,X
    lda byte_792,X
    sta byte_B6
    lda byte_793,X
    sta byte_B7
    txa
    lsr A
    tax
    lda #0
    tay
    sta byte_7A8,X
    jmp loc_1C8C53
; ---------------------------------------------------------------------------

loc_1C8C36:
    jsr sub_1C8299

locret_1C8C39:
    rts
; ---------------------------------------------------------------------------

loc_1C8C3A:
    txa
    asl A
    tax
    lda byte_792,X
    sta byte_B6
    lda byte_793,X
    sta byte_B7
    txa
    lsr A
    tax
    inc byte_7A8,X
    inc byte_7A8,X
    ldy byte_7A8,X

loc_1C8C53:
    txa
    asl A
    tax
    lda (byte_B6),Y
    sta byte_7A0,X
    iny
    lda (byte_B6),Y
    sta byte_7A1,X
    cmp #0
    beq loc_1C8C36
    cmp #$FF
    beq loc_1C8C14
    txa
    lsr A
    tax
    lda #0
    sta byte_7AC,X
    lda #1
    sta byte_7B4,X
    bne loc_1C8C95

loc_1C8C78:
    jmp loc_1C8C3A
; ---------------------------------------------------------------------------

loc_1C8C7B:
    jsr set_pulse
    lda #0
    tax
    sta APURegisterNum
    beq loc_1C8C95

loc_1C8C85:
    txa
    lsr A
    tax

loc_1C8C88:
    inx
    txa
    cmp #4
    beq locret_1C8C39
    lda APURegisterNum
    clc
    adc #4
    sta APURegisterNum

loc_1C8C95:
    txa
    asl A
    tax
    lda byte_7A0,X
    sta byte_B6
    lda byte_7A1,X
    sta byte_B7
    lda byte_7A1,X
    cmp #$FF
    beq loc_1C8C85
    txa
    lsr A
    tax
    dec byte_7B4,X
    bne loc_1C8CFA
    lda #0
    sta byte_7CD,X
    sta byte_7D1,X

loc_1C8CB9:
    jsr sub_1C8E7C
    beq loc_1C8C78
    cmp #$9F
    beq loc_1C8D09
    cmp #$9E
    beq loc_1C8D21
    cmp #$9C
    beq loc_1C8D2A
    tay
    cmp #$FF
    beq loc_1C8CD8
    and #$C0
    cmp #$C0
    beq loc_1C8CE8
    jmp loc_1C8D33
; ---------------------------------------------------------------------------

loc_1C8CD8:
    lda byte_7BC,X
    beq loc_1C8CF7
    dec byte_7BC,X
    lda byte_7B0,X
    sta byte_7AC,X
    bne loc_1C8CF7

loc_1C8CE8:
    tya
    and #$3F
    sta byte_7BC,X
    dec byte_7BC,X
    lda byte_7AC,X
    sta byte_7B0,X

loc_1C8CF7:
    jmp loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8CFA:
    jsr sub_1C8BA1
    jsr sub_1C89CC
    jmp loc_1C8C88
; ---------------------------------------------------------------------------

loc_1C8D03:
    jmp loc_1C8E17
; ---------------------------------------------------------------------------

loc_1C8D06:
    jmp loc_1C8DED
; ---------------------------------------------------------------------------

loc_1C8D09:
    jsr sub_1C8E7C
    sta byte_79A,X
    jsr sub_1C8E7C
    sta byte_79D,X
    jmp loc_1C8CB9
; ---------------------------------------------------------------------------
    jsr sub_1C8E7C
    jsr sub_1C8E7C
    jmp loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D21:
    jsr sub_1C8E7C
    sta byte_791
    jmp loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D2A:
    jsr sub_1C8E7C
    sta byte_790
    jmp loc_1C8CB9
; ---------------------------------------------------------------------------

loc_1C8D33:
    tya
    and #$B0
    cmp #$B0
    bne loc_1C8D52
    tya
    and #$F
    clc
    adc byte_791
    tay
    lda $9074,Y
    sta byte_7B8,X
    tay
    txa
    cmp #2
    beq loc_1C8D06

loc_1C8D4E:
    jsr sub_1C8E7C
    tay

loc_1C8D52:
    tya
    sta byte_7C3,X
    txa
    cmp #3
    beq loc_1C8D03
    pha
    ldx APURegisterNum
    lda byte_1C8FEA+1,Y
    beq loc_1C8D87
    lda byte_790
    bpl loc_1C8D73
    and #$7F
    sta PointerAPU+1
    tya
    clc
    sbc PointerAPU+1
    jmp loc_1C8D78
; ---------------------------------------------------------------------------

loc_1C8D73:
    tya
    clc
    adc byte_790

loc_1C8D78:
    tay
    lda byte_1C8FEA+1,Y
    sta PulseTimer1,X
    lda byte_1C8FEA,Y
    ora #8
    sta PulseCounter1,X

loc_1C8D87:
    tay
    pla
    tax
    tya
    bne loc_1C8D9C
    set apu_B0, #0
    txa
    cmp #2
    beq loc_1C8DA1
    set apu_B0, #$10
    bne loc_1C8DA1

loc_1C8D9C:
    lda byte_79D,X
    sta apu_B0

loc_1C8DA1:
    txa
    dec apu_7C8,X
    cmp apu_7C8,X
    beq loc_1C8DE7
    inc apu_7C8,X
    ldy APURegisterNum
    txa
    cmp #2
    beq loc_1C8DC7
    lda byte_79A,X
    and #$1F
    beq loc_1C8DC7
    lda apu_B0
    cmp #$10
    beq loc_1C8DC9
    and #$F0
    ora #0
    bne loc_1C8DC9

loc_1C8DC7:
    lda apu_B0

loc_1C8DC9:
    sta PL1_VOL,Y   ; pAPU Pulse #1 Control Register (W)
    lda PulseSweep1,X
    sta PL1_SWEEP,Y ; pAPU Pulse #1 Ramp Control Register (W)
    lda PulseTimer1,Y
    sta PL1_LO,Y    ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    lda PulseCounter1,Y
    sta PL1_HI,Y    ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

loc_1C8DDE:
    lda byte_7B8,X
    sta byte_7B4,X
    jmp loc_1C8C88
; ---------------------------------------------------------------------------

loc_1C8DE7:
    inc apu_7C8,X
    jmp loc_1C8DDE
; ---------------------------------------------------------------------------

loc_1C8DED:
    lda apu_79C
    and #$1F
    bne loc_1C8E11
    lda apu_79C
    and #$C0
    bne loc_1C8DFE

loc_1C8DFB:
    tya
    bne loc_1C8E06

loc_1C8DFE:
    cmp #$C0
    beq loc_1C8DFB
    lda #$FF
    bne loc_1C8E11

loc_1C8E06:
    clc
    adc #$FF
    asl A
    asl A
    cmp #$3C
    bcc loc_1C8E11
    lda #$3C

loc_1C8E11:
    sta byte_79F
    jmp loc_1C8D4E
; ---------------------------------------------------------------------------

loc_1C8E17:
    tya
    pha
    jsr sub_1C8E3E
    pla
    and #$3F
    tay
    jsr sub_1C8E26
    jmp loc_1C8DDE
; End of function sub_1C8BA1


; =============== S U B R O U T I N E =======================================


sub_1C8E26:
    lda Noise
    bne @exit
    lda stru_1C89A7,Y
    sta NOISE_VOL   ; pAPU Noise Control Register #1 (W)
    lda stru_1C89A7+1,Y ; stru_1C89A7.Frequency,Y
    sta NOISE_LO    ; pAPU Noise Frequency Register #1 (W)
    lda stru_1C89A7+2,Y ; stru_1C89A7.Length,Y
    sta NOISE_HI    ; pAPU Noise Frequency Register #2 (W)

@exit:
    rts
; End of function sub_1C8E26


; =============== S U B R O U T I N E =======================================


sub_1C8E3E:
    .import DMCflag

    tya
    and #$C0
    cmp #$40
    beq loc_1C8E4A
    cmp #$80
    beq loc_1C8E54
    rts
; ---------------------------------------------------------------------------

loc_1C8E4A:
    set APU_DM_CR, #$E      ; Data for pAPU_DM_CR
                            ; bit 7 - IRQ enabled flag
                            ; bit 6 - Loop flag
                            ; bit 3-0 note (frequency counter)
    lda #7
    ldy #0
    beq loc_1C8E5C

loc_1C8E54:
    set APU_DM_CR, #$E      ; Data for pAPU_DM_CR
                            ; bit 7 - IRQ enabled flag
                            ; bit 6 - Loop flag
                            ; bit 3-0 note (frequency counter)
    lda #$F
    ldy #2

loc_1C8E5C:
    sta DMC_LEN             ; pAPU Delta Modulation Data Length Register (W)
    sty DMC_START           ; pAPU Delta Modulation Address Register (W)
    lda DMCflag
    bne @exit
    set DMC_FREQ, APU_DM_CR ; Data for pAPU_DM_CR
                            ; bit 7 - IRQ enabled flag
                            ; bit 6 - Loop flag
                            ; bit 3-0 note (frequency counter)
                            ; pAPU Delta Modulation Control Register (W)
    set SND_CHN, #$F        ; enable all without DM
                            ; pAPU Sound/Vertical Clock Signal Register (R)
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
    set DMC_CNTR, #0        ; pAPU Delta Modulation D/A Register (W)
    set SND_CHN, #$1F       ; enable all
                            ; pAPU Sound/Vertical Clock Signal Register (R)
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
    rts
; End of function sub_1C8E3E


; =============== S U B R O U T I N E =======================================


sub_1C8E7C:
    ldy byte_7AC,X
    inc byte_7AC,X
    lda (byte_B6),Y
    rts
; End of function sub_1C8E7C

; ---------------------------------------------------------------------------
off_1C8E85:
    .word byte_1C8EE9, byte_1C8EF0, byte_1C8F14, byte_1C8F27
    .word byte_1C8F30, byte_1C8F36, byte_1C8EE2, byte_1C8F38
    .word byte_1C8F41, byte_1C8F33, byte_1C8F4A, byte_1C8F53
    .word byte_1C8F5B, byte_1C8F63, byte_1C8F6A, byte_1C8F73
    .word byte_1C8FBE, byte_1C8FC6, byte_1C8F8C, byte_1C8FDA
    .word byte_1C8FA1, byte_1C8EBD, byte_1C8EFA, byte_1C8ED9
    .word byte_1C8ED2, byte_1C8EC7, byte_1C8EC3, byte_1C8F10

byte_1C8EBD:
    .byte $76, $11, $11, $14, $31, $FF

byte_1C8EC3:
    .byte $33, $45, $66, $FF

byte_1C8EC7:
    .byte $91, $91, $91, $91, $91, $91, $91, $91, $91, $91
    .byte $F0

byte_1C8ED2:
    .byte $23, $33, $32, $22, $22, $22, $FF

byte_1C8ED9:
    .byte $98, $76, $63, $22, $87, $76, $53, $11, $F0

byte_1C8EE2:
    .byte $23, $56, $78, $88, $88, $87, $FF

byte_1C8EE9:
    .byte $23, $34, $56, $77, $65, $54, $FF

byte_1C8EF0:
    .byte $5A, $98, $88, $77, $66, $66, $65, $55, $55, $FF

byte_1C8EFA:
    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
    .byte $55, $55, $55, $66, $66, $77, $78, $88, $76, $54
    .byte $32, $FF

byte_1C8F10:
    .byte $11, $11, $22, $FF

byte_1C8F14:
    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
    .byte $55, $55, $55, $66, $66, $77, $78, $88, $FF

byte_1C8F27:
    .byte $F9, $87, $77, $77, $66, $65, $55, $44, $FF

byte_1C8F30:
    .byte $A8, $76, $FF

byte_1C8F33:
    .byte $74, $32, $FF

byte_1C8F36:
    .byte $99, $FF

byte_1C8F38:
    .byte $DC, $BA, $99, $88, $87, $76, $55, $44, $FF

byte_1C8F41:
    .byte $23, $44, $33, $33, $33, $33, $33, $32, $FF

byte_1C8F4A:
    .byte $77, $76, $65, $55, $44, $43, $32, $21, $F0

byte_1C8F53:
    .byte $44, $43, $33, $32, $22, $11, $11, $F0

byte_1C8F5B:
    .byte $33, $33, $22, $22, $11, $11, $11, $F0

byte_1C8F63:
    .byte $22, $22, $22, $11, $11, $11, $F0

byte_1C8F6A:
    .byte $11, $11, $11, $11, $11, $11, 1, 0, $F0

byte_1C8F73:
    .byte $99, $88, $77, $76, $66, $55, $54, $44, $33, $33
    .byte $33, $32, $22, $22, $22, $22, $21, $11, $11, $11
    .byte $11, $11, $11, $11, $F0

byte_1C8F8C:
    .byte $65, $55, $54, $44, $33, $33, $33, $33, $22, $22
    .byte $22, $22, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $F0

byte_1C8FA1:
    .byte $FB, $BA, $AA, $99, $99, $99, $98, $88, $77, $77
    .byte $77, $66, $66, $66, $55, $54, $44, $44, $43, $33
    .byte $33, $22, $22, $22, $22, $11, $11, $11, $F0

byte_1C8FBE:
    .byte $23, $45, $55, $44, $33, $33, $22, $FF

byte_1C8FC6:
    .byte $87, $65, $43, $21, $44, $33, $21, $11, $32, $21
    .byte $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF

byte_1C8FDA:
    .byte $66, $65, $42, $21, $32, $21, $11, $11, $21, $11
    .byte $11, $11, $11, $11, $11, $FF

byte_1C8FEA:
    .byte 7, $F0, 0, 0, 6, $AE, 6, $4E, 5, $F3, 5, $9E, 5
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

byte_1C90DC:
    .byte 0, $A, $14, $1E, $28, $3C, $32, $46, $50, $5A, $64
    .byte $6E, $78, $82, $8C, $96, $A0, $AA, $B4, $BE, $C8
    .byte $D2, $DC, $E6

byte_1C90F4:
    .byte 0, $A, $14, $1E, $28, $32, $3C, $46, $50, $5A, $64
    .byte $6E, $78, $82, $8C, $96, $A0, $AA, $B4, $BE, $C8
    .byte $D2, $DC, $E6, $F0, 0

byte_1C910E:
    .byte $18, $18, $FF, $FF, $FF, $FF, $6C, 7, $FF, $FF, 0
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

byte_1C91FE:
    .byte 0, $28, $84, $AE, $6C, $AE, $FF, $FF, $FF, $FF, 0
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

byte_1C92F8:
    .byte 0, $43, $80, $B5, $88, $B5, $90, $B5, $96, $B5, $47
    .byte $93, $5A, $93, $57, $93, 0, 0, $4D, $93, $65, $93
    .byte $62, $93, 0, 0, $4D, $93, $70, $93, $6D, $93, 0
    .byte 0, $47, $93, $7C, $93, $79, $93, 0, 0, $4D, $93
    .byte $88, $93, $85, $93, 0, 0, $4D, $93, $91, $93, $8E
    .byte $93, 0, 0, $47, $93, $9E, $93, $9B, $93, 0, 0, $4D
    .byte $93, $AA, $93, $A7, $93, 0, 0, $BB, $62, $B6, 2
    .byte 0, $9F, $D, $F1, $B8, 2, 0, $9F, $29, $F3, $B8, 2
    .byte 0, $9F, $A0, 0, 0, $9F, $12, $30

byte_1C935A:
    .byte $B2, $38, $3C, $40, $46, $B4, $3C, 0, $9F, $27, $B6

byte_1C9365:
    .byte $B2, $50, $4E, $4A, $40, $B4, $46, 0, $9F, $47, $F5

byte_1C9370:
    .byte $B2, $4A, $4E, $50, $B3, $46, $B6, $38, 0, $9F, $10
    .byte $F5

byte_1C937C:
    .byte $B2, $42, $40, $38, $B4, $2E, $B2, 2, 0, $9F, $87
    .byte $F5

byte_1C9388:
    .byte $B3, $32, $36, $38, $42, 0, $9F, $A7, $B4

byte_1C9391:
    .byte $B2, $40, $42, $46, $40, $3C, $40, $42, $3C, 0, $9F
    .byte $B8, $B1

byte_1C939E:
    .byte $B2, $32, $42, $40, $2E, $B3, $3C, $36, 0, $9F, $A7
    .byte $F5

byte_1C93AA:
    .byte $B3, $38, $B2, $2E, $3C, $B4, $38, 0, $3B, $96, $DE
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