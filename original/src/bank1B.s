.include "nes.inc"
.include "macros.inc"

.segment "BANK_B"

; ===========================================================================

; Segment type: Pure code
;.segment BANK1B
;* =  $8000

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B8000:
    jmp sub_1B8091
; End of function sub_1B8000


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B8003:
    jmp sub_1B80AA
; End of function sub_1B8003


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B8006:
    jmp sub_1B805A
; End of function sub_1B8006


; =============== S U B R O U T I N E =======================================


sub_1B8009:
    lda #0
    beq loc_1B8017
; End of function sub_1B8009


; =============== S U B R O U T I N E =======================================


sub_1B800D:
    lda #8
    bne loc_1B8017
; End of function sub_1B800D


; =============== S U B R O U T I N E =======================================


sub_1B8011:
    lda #$C
    bne loc_1B8017
; End of function sub_1B8011


; =============== S U B R O U T I N E =======================================


sub_1B8015:
    .importzp apu_B0, APU_DM_CR, PointerAPU

    lda #4

loc_1B8017:
    sta apu_B0
    set APU_DM_CR, #$40 ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    sty PointerAPU
    sta PointerAPU+1
    ldy #0

loc_1B8023:
    lda (PointerAPU),Y
    sta (apu_B0),Y
    iny
    tya
    cmp #4
    bne loc_1B8023
    rts
; End of function sub_1B8015


; =============== S U B R O U T I N E =======================================


sub_1B802E:
    .import apu_7FF
    .importzp apu_BB, apu_BC

    lda apu_BB
    and #2
    sta apu_7FF
    lda apu_BC
    and #2
    eor apu_7FF
    clc
    beq loc_1B8040
    sec

loc_1B8040:
    ror apu_BB
    ror apu_BC
    rts
; End of function sub_1B802E


; =============== S U B R O U T I N E =======================================


sub_1B8045:
    .import byte_7D5, byte_7DA
    .importzp apu_BD

    ldx apu_BD
    inc byte_7DA,X
    lda byte_7DA,X
    cmp byte_7D5,X
    bne locret_1B8057
    lda #0
    sta byte_7DA,X

locret_1B8057:
    rts
; End of function sub_1B8045

; ---------------------------------------------------------------------------
byte_1B8058:    .byte 0, 0

; =============== S U B R O U T I N E =======================================


sub_1B805A:
    .import apu_786, apu_78B, apu_76C

    set SND_CHN, #$F    ; pAPU Sound/Vertical Clock Signal Register (R)
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
    set apu_BB, #$55
    set apu_786, #0
    sta apu_78B
    tay

loc_1B806C:
    lda byte_1B8058,Y
    sta apu_76C,Y
    iny
    tya
    cmp #$14
    bne loc_1B806C
    jsr sub_1B80AA
    rts
; End of function sub_1B805A

; ---------------------------------------------------------------------------
    .byte 0, 0

; =============== S U B R O U T I N E =======================================


sub_1B807E:
    .import NewMusic, Sound2

    lda NewMusic
    cmp #$25
    bne locret_1B8090
    jsr sub_1B80AA
    sta NewMusic
    set Sound2, #$11

locret_1B8090:
    rts
; End of function sub_1B807E


; =============== S U B R O U T I N E =======================================


sub_1B8091:
    .import ModeSRAM

    set IO_JOY2, #$C0   ; Joypad #2/SOFTCLK (RW)
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
    jsr sub_1B802E
    jsr sub_1B807E
    jsr sub_1B81A3
    lda #0
    ldx #6

loc_1B80A3:
    sta ModeSRAM,X
    dex
    bne loc_1B80A3
    rts
; End of function sub_1B8091


; =============== S U B R O U T I N E =======================================


sub_1B80AA:
    .import apu_79C

    jsr sub_1B80B9

loc_1B80AD:
    jsr sub_1B80D7
    set DMC_CNTR, #0     ; pAPU Delta Modulation D/A Register (W)
    sta apu_79C
    rts
; End of function sub_1B80AA


; =============== S U B R O U T I N E =======================================


sub_1B80B9:
    .import CurrentMusic, PulseChannels, Noise, apu_7C8, apu_7C9, apu_7CA

    set apu_7C8, #0
    sta apu_7C9
    sta apu_7CA
    sta CurrentMusic
    sta PulseChannels
    tay

loc_1B80CB:
    lda #0
    sta Noise,Y
    iny
    tya
    cmp #6
    bne loc_1B80CB
    rts
; End of function sub_1B80B9


; =============== S U B R O U T I N E =======================================


sub_1B80D7:
    set DMC_CNTR, #0    ; pAPU Delta Modulation D/A Register (W)
    set PL1_VOL, #$10   ; pAPU Pulse #1 Control Register (W)
    sta PL2_VOL         ; pAPU Pulse #2 Control Register (W)
    sta NOISE_VOL       ; pAPU Noise Control Register #1 (W)
    set TRI_LINEAR, #0  ; pAPU Triangle Control Register #1 (W)
    rts
; End of function sub_1B80D7


; =============== S U B R O U T I N E =======================================


sub_1B80ED:
    .import byte_7C7, byte_7DF, byte_7E3, byte_7E7
    .importzp apu_BF

    ldx apu_BD
    sta byte_7D5,X
    txa
    sta byte_7C7,X
    tya
    beq loc_1B811B
    txa
    beq loc_1B8118
    cmp #1
    beq loc_1B8109
    cmp #2
    beq loc_1B810E
    cmp #3
    beq loc_1B8113
    rts
; ---------------------------------------------------------------------------

loc_1B8109:
    jsr sub_1B8009
    beq loc_1B811B

loc_1B810E:
    jsr sub_1B8015
    beq loc_1B811B

loc_1B8113:
    jsr sub_1B800D
    beq loc_1B811B

loc_1B8118:
    jsr sub_1B8011

loc_1B811B:
    lda apu_BF
    sta Noise,X
    lda #0
    sta byte_7DA,X

loc_1B8125:
    sta byte_7DF,X
    sta byte_7E3,X
    sta byte_7E7,X
    sta PulseChannels
    rts
; End of function sub_1B80ED


; =============== S U B R O U T I N E =======================================


sub_1B8132:
    jsr sub_1B8045
    bne locret_1B8141
    set Noise, #0
    set NOISE_VOL, #$10   ; pAPU Noise Control Register #1 (W)

locret_1B8141:
    rts
; End of function sub_1B8132


; =============== S U B R O U T I N E =======================================


sub_1B8142:
    .import byte_7D9, byte_7FC, byte_7DE, byte_7F9

    sta byte_7D9
    jsr sub_1B8015
    set byte_7FC, apu_BF
    ldx #1
    stx apu_7C8
    inx 
    stx apu_7C9
    set byte_7DE, #0
    sta byte_7F9
    ldx #1
    jmp loc_1B8125
; End of function sub_1B8142


; =============== S U B R O U T I N E =======================================


sub_1B8163:
    jsr loc_1B8181
    jsr sub_1B8192
    inc PulseChannels
    set byte_7FC, #0
    ldx #1
    lda #$7F
    sta PL1_VOL,X       ; pAPU Pulse #1 Control Register (W)
    sta PL2_VOL,X       ; pAPU Pulse #2 Control Register (W)
    rts
; End of function sub_1B8163


; =============== S U B R O U T I N E =======================================


sub_1B817C:
    jsr sub_1B8045
    bne locret_1B8191

loc_1B8181:
    set PL1_VOL, #$10   ; pAPU Pulse #1 Control Register (W)
    set apu_7C8, #0
    sta byte_7F9
    inc PulseChannels

locret_1B8191:
    rts
; End of function sub_1B817C


; =============== S U B R O U T I N E =======================================


sub_1B8192:
    .import byte_7FA

    set PL2_VOL, #$10    ; pAPU Pulse #2 Control Register (W)
    set apu_7C9, #0
    sta byte_7FA
    rts
; End of function sub_1B8192


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_1B81A0:
    jmp sub_1B80AA
; End of function sub_1B81A0


; =============== S U B R O U T I N E =======================================


sub_1B81A3:
    .import PulseSweep1, byte_7C1, byte_7CC, byte_7FD

    lda NewMusic
    tay
    cmp #$3F
    bcs sub_1B81A0
    tya
    beq loc_1B81EA
    sta CurrentMusic
    cmp #$19
    beq loc_1B81B9
    cmp #$19
    bcc loc_1B81C4

loc_1B81B9:
    sta apu_BF
    sec
    sbc #$19
    sta byte_7CC
    jmp loc_1B81DC
; ---------------------------------------------------------------------------

loc_1B81C4:
    cmp #6
    bne loc_1B81D4
    lda $6707
    cmp #1
    beq loc_1B81D3
    lda #7
    bne loc_1B81D4

loc_1B81D3:
    tya

loc_1B81D4:
    sta apu_BF
    sta byte_7CC
    dec byte_7CC

loc_1B81DC:
    set PulseSweep1, #$7F
    sta byte_7C1
    jsr sub_1B8341

loc_1B81E7:
    jmp loc_1B84D0
; ---------------------------------------------------------------------------

loc_1B81EA:
    lda byte_7FD
    bne loc_1B81E7
    rts
; End of function sub_1B81A3

; ---------------------------------------------------------------------------
byte_1B81F0:
    .byte 0

byte_1B81F1:
    .byte $10

byte_1B81F2:
    .byte 1, $18, 0, 1, $38, 0, 3, $40, 0, 6, $58, 1, 3, $40
    .byte 2, 4, $40, $13, 5, $40, $14, $A, $40, $14, 8, $40
    .byte $12, $E, 8, $16, $E, $28, $16, $B, $18, $1D, 1, $28
    .byte $16, 1, $28, $13, 1, $38, $12, 1, $38

; =============== S U B R O U T I N E =======================================


sub_1B8221:
    .import PulseTimer1, byte_79A, byte_7C3, byte_7D1
    .importzp APURegisterNum

    lda byte_7FD
    cmp #1
    beq locret_1B824A
    txa
    cmp #3
    beq locret_1B824A
    lda byte_79A,X
    and #$E0
    beq locret_1B824A
    sta apu_B0
    lda byte_7C3,X
    cmp #2
    beq loc_1B8247
    ldy APURegisterNum
    lda PulseTimer1,Y
    sta APU_DM_CR       ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    jsr sub_1B8288

loc_1B8247:
    inc byte_7D1,X

locret_1B824A:
    rts
; End of function sub_1B8221


; =============== S U B R O U T I N E =======================================


sub_1B824B:
    lda PointerAPU
    cmp #$31
    bne loc_1B8253
    lda #$27

loc_1B8253:
    tay
    lda byte_1B82DA,Y
    pha
    lda byte_7C3,X
    cmp #$46
    bne loc_1B8264
    pla
    lda #0
    beq sub_1B82C2

loc_1B8264:
    pla
    jmp sub_1B82C2
; End of function sub_1B824B


; =============== S U B R O U T I N E =======================================


sub_1B8268:
    lda PointerAPU
    tay
    cmp #$10
    bcs loc_1B8275
    lda byte_1B8311,Y
    jmp loc_1B82C8
; ---------------------------------------------------------------------------

loc_1B8275:
    lda #$F6
    bne loc_1B82C8

loc_1B8279:
    lda byte_7C3,X
    cmp #$4C
    bcc loc_1B8284
    lda #$FE
    bne loc_1B82C8

loc_1B8284:
    lda #$FE
    bne loc_1B82C8
; End of function sub_1B8268


; =============== S U B R O U T I N E =======================================


sub_1B8288:
    lda byte_7D1,X
    sta PointerAPU
    lda apu_B0
    cmp #$20
    beq loc_1B82A7
    cmp #$A0
    beq loc_1B82B6
    cmp #$60
    beq loc_1B8279
    cmp #$40
    beq sub_1B8268
    cmp #$80
    beq sub_1B824B
    cmp #$C0
    beq sub_1B824B

loc_1B82A7:
    lda PointerAPU
    cmp #$A
    bne loc_1B82AF
    lda #0

loc_1B82AF:
    tay
    lda byte_1B8307,Y
    jmp sub_1B82C2
; ---------------------------------------------------------------------------

loc_1B82B6:
    lda PointerAPU
    cmp #$2B
    bne loc_1B82BE
    lda #$21

loc_1B82BE:
    tay
    lda byte_1B82E6,Y
; End of function sub_1B8288


; =============== S U B R O U T I N E =======================================


sub_1B82C2:
    pha
    tya
    sta byte_7D1,X
    pla

loc_1B82C8:
    pha
    lda apu_7C8,X
    bne loc_1B82D8
    pla
    clc
    adc APU_DM_CR       ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    ldy APURegisterNum
    sta PL1_LO,Y        ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    rts
; ---------------------------------------------------------------------------

loc_1B82D8:
    pla
    rts
; End of function sub_1B82C2

; ---------------------------------------------------------------------------
byte_1B82DA:
    .byte 9, 8, 7, 6, 5, 4, 3, 2, 2, 1, 1, 0

byte_1B82E6:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
    .byte 0, 0, 0, $FF, 0, 0, 0, 0, 1, 1, 0, 0, 0, $FF, $FF
    .byte 0

byte_1B8307:
    .byte 0, 1, 1, 2, 1, 0, $FF, $FF, $FE, $FF

byte_1B8311:
    .byte 0, $FF, $FE, $FD, $FC, $FB, $FA, $F9, $F8, $F7, $F6
    .byte $F5, $F6, $F7, $F6, $F5

; =============== S U B R O U T I N E =======================================


sub_1B8321:
    .import byte_790

    lda byte_7CC
    tay
    lda byte_1B89A7,Y
    tay
    ldx #0

loc_1B832B:
    lda byte_1B89C3,Y
    sta byte_790,X
    iny
    inx
    txa
    cmp #$A
    bne loc_1B832B
    rts
; End of function sub_1B8321


; =============== S U B R O U T I N E =======================================


sub_1B8339:
    .import byte_7A0

    lda #$FF
    sta byte_7A0,X
    jmp loc_1B83BA
; End of function sub_1B8339


; =============== S U B R O U T I N E =======================================


sub_1B8341:
    jsr loc_1B80AD
    set byte_7FD, apu_BF
    cmp #$33
    beq loc_1B835B
    cmp #$19
    beq loc_1B8355
    cmp #$19
    bcc sub_1B836F

loc_1B8355:
    jsr sub_1B8321
    jmp loc_1B8386
; ---------------------------------------------------------------------------

loc_1B835B:
    ldx #0
    ldy #0

loc_1B835F:
    lda byte_1B89CD,Y
    sta byte_790,X
    iny
    inx
    txa
    cmp #$A
    bne loc_1B835F
    jmp loc_1B8386
; End of function sub_1B8341


; =============== S U B R O U T I N E =======================================


sub_1B836F:
    .import byte_792, byte_793, byte_7A1, byte_7A7, byte_7A8, byte_7B4, byte_7B5, byte_7B6, byte_7B7
    .importzp byte_B6, byte_B7, byte_BA

    lda byte_7CC
    tay
    lda byte_1B898F,Y
    tay
    ldx #0

loc_1B8379:
    lda byte_1B89C3,Y
    sta byte_790,X
    iny
    inx
    txa
    cmp #$A
    bne loc_1B8379

loc_1B8386:
    set byte_7B4, #1
    sta byte_7B5
    sta byte_7B6
    sta byte_7B7
    set byte_BA, #0
    ldy #8

loc_1B839A:
    sta byte_7A7,Y
    dey
    bne loc_1B839A
    tax

loc_1B83A1:
    lda byte_792,X
    sta byte_B6
    lda byte_793,X
    cmp #$FF
    beq sub_1B8339
    sta byte_B7
    ldy byte_7A8
    lda (byte_B6),Y
    sta byte_7A0,X
    iny
    lda (byte_B6),Y

loc_1B83BA:
    sta byte_7A1,X
    inx
    inx
    txa
    cmp #8
    bne loc_1B83A1
    rts
; End of function sub_1B836F


; =============== S U B R O U T I N E =======================================


sub_1B83C5:
    .import PulseCounter1, PulseTimer2, PulseCounter2

    lda PulseChannels
    beq locret_1B83F5
    cmp #1
    beq loc_1B83DF
    set PL2_SWEEP, #$7F ; pAPU Pulse #2 Ramp Control Register (W)
    set PL2_LO, PulseTimer2  ; pAPU Pulse #2 Fine Tune (FT) Register (W)
    set PL2_HI, PulseCounter2  ; pAPU Pulse #2 Coarse Tune (CT) Register (W)

loc_1B83DF:
    set PL1_SWEEP, #$7F ; pAPU Pulse #1 Ramp Control Register (W)
    set PL1_LO, PulseTimer1  ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    set PL1_HI, PulseCounter1  ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
    set PulseChannels, #0

locret_1B83F5:
    rts
; End of function sub_1B83C5


; =============== S U B R O U T I N E =======================================


sub_1B83F6:
    .import byte_791, byte_79D, byte_79F, byte_7AC, byte_7B0, byte_7B8, byte_7BC, byte_7CD
    .importzp byte_B4

    txa
    cmp #2
    bcs locret_1B83F5
    lda byte_79A,X
    and #$1F
    beq locret_1B845B
    sta APU_DM_CR       ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    lda byte_7C3,X
    cmp #2
    beq loc_1B8465
    ldy #0

loc_1B840D:
    dec APU_DM_CR       ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    beq loc_1B8415
    iny
    iny
    bne loc_1B840D

loc_1B8415:
    lda off_1B86DA,Y
    sta PointerAPU
    lda off_1B86DA+1,Y
    sta PointerAPU+1
    lda byte_7CD,X
    lsr A
    tay
    lda (PointerAPU),Y
    sta byte_B4
    cmp #$FF
    beq loc_1B845C
    cmp #$F0
    beq loc_1B8461
    lda byte_7CD,X
    and #1
    bne loc_1B843F
    lsr byte_B4
    lsr byte_B4
    lsr byte_B4
    lsr byte_B4

loc_1B843F:
    lda byte_B4
    and #$F
    sta apu_B0
    lda byte_79D,X
    and #$F0
    ora apu_B0
    tay

loc_1B844D:
    inc byte_7CD,X

loc_1B8450:
    lda apu_7C8,X
    bne locret_1B845B
    tya
    ldy APURegisterNum
    sta PL1_VOL,Y       ; pAPU Pulse #1 Control Register (W)

locret_1B845B:
    rts
; ---------------------------------------------------------------------------

loc_1B845C:
    ldy byte_79D,X
    bne loc_1B8450

loc_1B8461:
    ldy #$10
    bne loc_1B8450

loc_1B8465:
    ldy #$10
    bne loc_1B844D

loc_1B8469:
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
    jmp loc_1B84A8
; ---------------------------------------------------------------------------

loc_1B848B:
    jsr sub_1B80AA

locret_1B848E:
    rts
; ---------------------------------------------------------------------------

loc_1B848F:
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

loc_1B84A8:
    txa
    asl A
    tax
    lda (byte_B6),Y
    sta byte_7A0,X
    iny
    lda (byte_B6),Y
    sta byte_7A1,X
    cmp #0
    beq loc_1B848B
    cmp #$FF
    beq loc_1B8469
    txa
    lsr A
    tax
    lda #0
    sta byte_7AC,X
    lda #1
    sta byte_7B4,X
    bne loc_1B84EA

loc_1B84CD:
    jmp loc_1B848F
; ---------------------------------------------------------------------------

loc_1B84D0:
    jsr sub_1B83C5
    lda #0
    tax
    sta APURegisterNum
    beq loc_1B84EA

loc_1B84DA:
    txa
    lsr A
    tax

loc_1B84DD:
    inx
    txa
    cmp #4
    beq locret_1B848E
    lda APURegisterNum
    clc
    adc #4
    sta APURegisterNum

loc_1B84EA:
    txa
    asl A
    tax
    lda byte_7A0,X
    sta byte_B6
    lda byte_7A1,X
    sta byte_B7
    lda byte_7A1,X
    cmp #$FF
    beq loc_1B84DA
    txa
    lsr A
    tax
    dec byte_7B4,X
    bne loc_1B854F
    lda #0
    sta byte_7CD,X
    sta byte_7D1,X

loc_1B850E:
    jsr sub_1B86D1
    beq loc_1B84CD
    cmp #$9F
    beq loc_1B855E
    cmp #$9E
    beq loc_1B8576
    cmp #$9C
    beq loc_1B857F
    tay
    cmp #$FF
    beq loc_1B852D
    and #$C0
    cmp #$C0
    beq loc_1B853D
    jmp loc_1B8588
; ---------------------------------------------------------------------------

loc_1B852D:
    lda byte_7BC,X
    beq loc_1B854C
    dec byte_7BC,X
    lda byte_7B0,X
    sta byte_7AC,X
    bne loc_1B854C

loc_1B853D:
    tya
    and #$3F
    sta byte_7BC,X
    dec byte_7BC,X
    lda byte_7AC,X
    sta byte_7B0,X

loc_1B854C:
    jmp loc_1B850E
; ---------------------------------------------------------------------------

loc_1B854F:
    jsr sub_1B83F6
    jsr sub_1B8221
    jmp loc_1B84DD
; ---------------------------------------------------------------------------

loc_1B8558:
    jmp loc_1B866C
; ---------------------------------------------------------------------------

loc_1B855B:
    jmp loc_1B8642
; ---------------------------------------------------------------------------

loc_1B855E:
    jsr sub_1B86D1
    sta byte_79A,X
    jsr sub_1B86D1
    sta byte_79D,X
    jmp loc_1B850E
; ---------------------------------------------------------------------------
    jsr sub_1B86D1
    jsr sub_1B86D1
    jmp loc_1B850E
; ---------------------------------------------------------------------------

loc_1B8576:
    jsr sub_1B86D1
    sta byte_791
    jmp loc_1B850E
; ---------------------------------------------------------------------------

loc_1B857F:
    jsr sub_1B86D1
    sta byte_790
    jmp loc_1B850E
; ---------------------------------------------------------------------------

loc_1B8588:
    tya
    and #$B0
    cmp #$B0
    bne loc_1B85A7
    tya
    and #$F
    clc
    adc byte_791
    tay
    lda byte_1B891A,Y
    sta byte_7B8,X
    tay
    txa
    cmp #2
    beq loc_1B855B

loc_1B85A3:
    jsr sub_1B86D1
    tay

loc_1B85A7:
    tya
    sta byte_7C3,X
    txa
    cmp #3
    beq loc_1B8558
    pha
    ldx APURegisterNum
    lda byte_1B8891,Y
    beq loc_1B85DC
    lda byte_790
    bpl loc_1B85C8
    and #$7F
    sta PointerAPU+1
    tya
    clc
    sbc PointerAPU+1
    jmp loc_1B85CD
; ---------------------------------------------------------------------------

loc_1B85C8:
    tya
    clc
    adc byte_790

loc_1B85CD:
    tay
    lda byte_1B8891,Y
    sta PulseTimer1,X
    lda byte_1B8890,Y
    ora #8
    sta PulseCounter1,X

loc_1B85DC:
    tay
    pla
    tax
    tya
    bne loc_1B85F1
    set apu_B0, #0
    txa
    cmp #2
    beq loc_1B85F6
    set apu_B0, #$10
    bne loc_1B85F6

loc_1B85F1:
    lda byte_79D,X
    sta apu_B0

loc_1B85F6:
    txa
    dec apu_7C8,X
    cmp apu_7C8,X
    beq loc_1B863C
    inc apu_7C8,X
    ldy APURegisterNum
    txa
    cmp #2
    beq loc_1B861C
    lda byte_79A,X
    and #$1F
    beq loc_1B861C
    lda apu_B0
    cmp #$10
    beq loc_1B861E
    and #$F0
    ora #0
    bne loc_1B861E

loc_1B861C:
    lda apu_B0

loc_1B861E:
    sta PL1_VOL,Y       ; pAPU Pulse #1 Control Register (W)
    lda PulseSweep1,X
    sta PL1_SWEEP,Y     ; pAPU Pulse #1 Ramp Control Register (W)
    lda PulseTimer1,Y
    sta PL1_LO,Y        ; pAPU Pulse #1 Fine Tune (FT) Register (W)
    lda PulseCounter1,Y
    sta PL1_HI,Y        ; pAPU Pulse #1 Coarse Tune (CT) Register (W)

loc_1B8633:
    lda byte_7B8,X
    sta byte_7B4,X
    jmp loc_1B84DD
; ---------------------------------------------------------------------------

loc_1B863C:
    inc apu_7C8,X
    jmp loc_1B8633
; ---------------------------------------------------------------------------

loc_1B8642:
    lda apu_79C
    and #$1F
    bne loc_1B8666
    lda apu_79C
    and #$C0
    bne loc_1B8653

loc_1B8650:
    tya
    bne loc_1B865B

loc_1B8653:
    cmp #$C0
    beq loc_1B8650
    lda #$FF
    bne loc_1B8666

loc_1B865B:
    clc
    adc #$FF
    asl A
    asl A
    cmp #$3C
    bcc loc_1B8666
    lda #$3C

loc_1B8666:
    sta byte_79F
    jmp loc_1B85A3
; ---------------------------------------------------------------------------

loc_1B866C:
    tya
    pha
    jsr sub_1B8693
    pla
    and #$3F
    tay
    jsr sub_1B867B
    jmp loc_1B8633
; End of function sub_1B83F6


; =============== S U B R O U T I N E =======================================


sub_1B867B:
    lda Noise
    bne @exit
    lda byte_1B81F0,Y
    sta NOISE_VOL       ; pAPU Noise Control Register #1 (W)
    lda byte_1B81F1,Y
    sta NOISE_LO        ; pAPU Noise Frequency Register #1 (W)
    lda byte_1B81F2,Y
    sta NOISE_HI        ; pAPU Noise Frequency Register #2 (W)

@exit:
    rts
; End of function sub_1B867B


; =============== S U B R O U T I N E =======================================


sub_1B8693:
    .import DMCflag

    tya
    and #$C0
    cmp #$40
    beq loc_1B869F
    cmp #$80
    beq loc_1B86A9
    rts
; ---------------------------------------------------------------------------

loc_1B869F:
    set APU_DM_CR, #$E  ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    lda #7
    ldy #0
    beq loc_1B86B1

loc_1B86A9:
    set APU_DM_CR, #$E  ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
    lda #$F
    ldy #2

loc_1B86B1:
    sta DMC_LEN         ; pAPU Delta Modulation Data Length Register (W)
    sty DMC_START       ; pAPU Delta Modulation Address Register (W)
    lda DMCflag
    bne locret_1B86D0
    set DMC_FREQ, APU_DM_CR ; Data for pAPU_DM_CR
                        ; bit 7 - IRQ enabled flag
                        ; bit 6 - Loop flag
                        ; bit 3-0 note (frequency counter)
                        ; pAPU Delta Modulation Control Register (W)
    set SND_CHN, #$F    ; pAPU Sound/Vertical Clock Signal Register (R)
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
    set DMC_CNTR, #0    ; pAPU Delta Modulation D/A Register (W)
    set SND_CHN, #$1F   ; pAPU Sound/Vertical Clock Signal Register (R)
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
    rts
; End of function sub_1B8693


; =============== S U B R O U T I N E =======================================


sub_1B86D1:
    ldy byte_7AC,X
    inc byte_7AC,X
    lda (byte_B6),Y
    rts
; End of function sub_1B86D1

; ---------------------------------------------------------------------------
off_1B86DA:
    .word byte_1B874C, byte_1B8753, byte_1B8777, byte_1B878A
    .word byte_1B879C, byte_1B87A2, byte_1B8745, byte_1B87A4
    .word byte_1B87AD, byte_1B879F, byte_1B87B6, byte_1B87C3
    .word byte_1B87D1, byte_1B87DE, byte_1B87EA, byte_1B87F4
    .word byte_1B883F, byte_1B8847, byte_1B880D, byte_1B885B
    .word byte_1B8822, byte_1B8718, byte_1B875D, byte_1B873C
    .word byte_1B8735, byte_1B8722, byte_1B871E, byte_1B8773
    .word byte_1B8793, byte_1B886B, byte_1B887F

byte_1B8718:
    .byte $76, $11, $11, $14, $31, $FF

byte_1B871E:
    .byte $33, $45, $66, $FF

byte_1B8722:
    .byte $43, $33, $22, $22, $22, $22, $22, $21, $11, $11
    .byte $11, $11, $11, $11, $11, $11, $11, $11, $F0

byte_1B8735:
    .byte $23, $33, $32, $22, $22, $22, $FF

byte_1B873C:
    .byte $98, $76, $63, $22, $87, $76, $53, $11, $F0

byte_1B8745:
    .byte $23, $56, $78, $88, $88, $87, $FF

byte_1B874C:
    .byte $23, $34, $56, $77, $65, $54, $FF

byte_1B8753:
    .byte $5A, $98, $88, $77, $66, $66, $65, $55, $55, $FF

byte_1B875D:
    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
    .byte $55, $55, $55, $66, $66, $77, $78, $88, $76, $54
    .byte $32, $FF

byte_1B8773:
    .byte $11, $11, $22, $FF

byte_1B8777:
    .byte $11, $11, $22, $22, $33, $33, $44, $44, $44, $45
    .byte $55, $55, $55, $66, $66, $77, $78, $88, $FF

byte_1B878A:
    .byte $F9, $87, $77, $77, $66, $65, $55, $44, $FF

byte_1B8793:
    .byte $C8, $76, $66, $66, $55, $55, $55, $44, $FF

byte_1B879C:
    .byte $A8, $76, $FF

byte_1B879F:
    .byte $74, $32, $FF

byte_1B87A2:
    .byte $99, $FF

byte_1B87A4:
    .byte $DC, $BA, $99, $88, $87, $76, $55, $44, $FF

byte_1B87AD:
    .byte $23, $44, $33, $33, $33, $33, $33, $32, $FF

byte_1B87B6:
    .byte $77, $76, $65, $55, $44, $43, $32, $22, $11, $11
    .byte $11, $11, $F0

byte_1B87C3:
    .byte $54, $43, $33, $33, $32, $22, $22, $11, $11, $11
    .byte $11, $11, $11, $F0

byte_1B87D1:
    .byte $43, $33, $22, $22, $22, $21, $11, $11, $11, $11
    .byte $11, $11, $F0

byte_1B87DE:
    .byte $32, $22, $22, $21, $11, $11, $11, $11, $11, $11
    .byte $11, $F0

byte_1B87EA:
    .byte $21, $11, $11, $11, $11, $11, $11, $11, $11, $F0

byte_1B87F4:
    .byte $99, $88, $77, $76, $66, $55, $54, $44, $33, $33
    .byte $33, $32, $22, $22, $22, $22, $21, $11, $11, $11
    .byte $11, $11, $11, $11, $F0

byte_1B880D:
    .byte $65, $55, $54, $44, $33, $33, $33, $33, $22, $22
    .byte $22, $22, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $F0

byte_1B8822:
    .byte $FB, $BA, $AA, $99, $99, $99, $98, $88, $77, $77
    .byte $77, $66, $66, $66, $55, $54, $44, $44, $43, $33
    .byte $33, $22, $22, $22, $22, $11, $11, $11, $F0

byte_1B883F:
    .byte $23, $45, $55, $44, $33, $33, $22, $FF

byte_1B8847:
    .byte $87, $65, $43, $21, $44, $33, $21, $11, $32, $21
    .byte $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF

byte_1B885B:
    .byte $66, $65, $42, $21, $32, $21, $11, $11, $21, $11
    .byte $11, $11, $11, $11, $11, $FF

byte_1B886B:
    .byte $A8, $75, $43, $21, $43, $33, $21, $11, $32, $21
    .byte $11, $11, $21, $11, $11, $11, $11, $11, $11, $FF

byte_1B887F:
    .byte $12, $33, $33, $34, $44, $44, $44, $44, $44, $44
    .byte $44, $44, $44, $44, $44, $22, $FF

byte_1B8890:
    .byte 7

byte_1B8891:
    .byte $F0, 0, 0, 6, $AE, 6, $4E, 5, $F3, 5, $9E, 5, $4D
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

byte_1B891A:
    .byte 4, 8, $10, $20, $40, $18, $30, $C, $A, 5, 2, 1, 5
    .byte $A, $14, $28, $50, $1E, $3C, $F, $C, 6, 3, 2, 6
    .byte $C, $18, $30, $60, $24, $48, $12, $10, 8, 3, 1, 4
    .byte 2, 0, $90, 7, $E, $1C, $38, $70, $2A, $54, $15, $12
    .byte 9, 3, 1, 2, 7, $F, $1E, $3C, $78, $2D, $5A, $16
    .byte $14, $A, 3, 1, 8, 8, $10, $20, $40, $80, $30, $60
    .byte $18, $15, $A, 4, 1, 2, $C0, 9, $12, $24, $48, $90
    .byte $36, $6C, $1B, $18, $A, $14, $28, $50, $A0, $3C
    .byte $78, $1E, $1A, $D, 5, 1, 2, $17, $B, $16, $2C, $58
    .byte $B0, $42, $84, $21, $1D, $E, 5, 1, 2, $17

byte_1B898F:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0

byte_1B89A7:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

byte_1B89C3:
    .byte 0, $28, $BF, $8C, $B1, $8C, $D1, $8C, $DD, $8C

byte_1B89CD:
    .byte 0, $18, $6B, $8E, $79, $8E, $87, $8E, $9F, $8E, $9F
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