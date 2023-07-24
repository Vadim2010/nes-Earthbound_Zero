; F202
.proc start_battle:
    jsr bank17_A000
    jsr bank16
    jsr sub_F479
    ldx #$2C ; ','
    ldy #9
    lda ($5C),Y
    and #$F0
    cmp #$50 ; 'P'
    beq loc_F21C
    lsr A
    lsr A
    lsr A
    lsr A
    tax

loc_F21C:
    txa
    jsr sub_F255
    jsr bank14_8000
    jsr unk_9630
    jsr bank16
    jsr sub_FD5E
    jsr sub_FD80
    jsr sub_EC65
    jsr byte_A000
    jsr sub_ECA3
    rts
.endproc

; F4A3
.proc set_nmi_id4
    lda #4
    sta NMI_ID
    lda #0
    sta num_of_chr
    lda #0
    sta Offset400
    lda #$80
    sta CHRToPPU
    rts
.endproc



; F5F7
.proc set_jmp_addr
    sta AddrForJmp
    lda #0
    asl AddrForJmp
    rol A
    asl AddrForJmp
    rol A
    asl AddrForJmp
    rol A
    sta AddrForJmp+1
    clc 
    lda AddrForJmp
    adc #0
    sta AddrForJmp
    lda AddrForJmp+1
    adc #$9E
    sta AddrForJmp+1
    rts
.endproc



; F74C
; save JMP $F76A to $D7
.proc save_jmp_instr
    lda #$6A ; 'j'
    sta JmpInstr+1
    lda #$F7
    sta JmpInstr+2
    lda #$4C ; 'L'
    sta JmpInstr
    rts
.endproc



; FD14
.proc sub_FD14
    lda #$1C
    sta BankNum
    lda #0
    ldx #0

loc_FD1C:
    sta $700,X          ; Clear 700-7FF
    inx 
    bne loc_FD1C
    jsr bank_8000_1D_A000
    jmp loc_8006		; bank 1C
.endproc


; FD28
.proc sub_FD28
    cmp byte_78C
    beq loc_FD30
    sta byte_7F5

loc_FD30:
    jmp wait_nmi
.endproc


; FD33
.proc sub_FD33
    lda CHRToPPU
    ora byte_E0
    bne sub_FD33
    rts
.endproc


; FD3A
; wait for the whole frame to be output
.proc wait_frame
    jsr wait_nmi
    dex 
    bne wait_frame
    rts
.endproc


; FD41
; wait for NMI interrupt processing to complete
.proc wait_nmi
    lda #1
    sta NMIReady

@wait:
    lda NMIReady
    bne @wait
    rts
.endproc


; FD4A
.proc sub_FD4A
    lda CHRToPPU
    bne sub_FD4A
    rts
.endproc

; FD4F
.proc sub_FD4F
    lda #0
    sta byte_DA

loc_FD53:
    lda byte_DA
    beq loc_FD53
    pha 
    lda #0
    sta byte_DA
    pla
    rts
.endproc

; FD5E
.proc sub_FD5E
    jsr sub_FD33
    sec 
    ror byte_E2
    ldx #0

loc_FD66:
    lda #0
    sta $300,X
    lda #$F0
    sta $200,X
    inx 
    inx 
    inx 
    inx 
    sta $200,X
    inx 
    inx 
    inx 
    inx 
    bne loc_FD66
    asl byte_E2
    rts
.endproc

; FD80
.proc sub_FD80
    jsr sub_FD33
    lda #8
    ldx #$80
    sta NMI_ID
    stx num_of_chr
    lda #0
    ldx #$20 ; ' '
    sta PPU_addr+1
    stx PPU_addr
    lda #0
    sta chr
    sta next

loc_FD9F:
    ldx #0
    lda #$80
    stx Offset400
    sta CHRToPPU
    jsr sub_FD33
    clc 
    lda PPU_addr+1
    adc #$80
    sta PPU_addr+1
    lda PPU_addr
    adc #0
    sta PPU_addr
    cmp #$28 ; '('
    bcc loc_FD9F
    rts
.endproc

; FDC0
.proc sub_FDC0
    jsr sub_FD33
    lda byte_E7
    and #$BF
    sta byte_E7
    lda #0
    sta byte_E8
    sta byte_E9
    clc

loc_FDD0:
    tax
    lda $301,X
    and #$BF
    sta $301,X
    lda #0
    sta $304,X
    sta $305,X
    txa 
    adc #8
    bcc loc_FDD0
    rts
.endproc