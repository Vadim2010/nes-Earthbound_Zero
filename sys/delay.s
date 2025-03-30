.segment "WAIT"

; FD28
.proc wait_change_music
    .export wait_change_music
    .import CurrentMusic, NewMusic

    cmp CurrentMusic        ; $78C
    beq @wait
    sta NewMusic            ; $7F5

@wait:
    jmp wait_nmi
.endproc


; FD33
; wait until all interrupts have been processed
.proc wait_nmi_processed
    .export wait_nmi_processed
    .importzp NMIFlags, OtherNMIFlags

    lda NMIFlags
    ora OtherNMIFlags
    bne wait_nmi_processed
    rts
.endproc

; FD3A
; wait for a few frames
; input: X - number of frames
.proc wait_frames
    .export wait_frames

    jsr wait_nmi
    dex
    bne wait_frames
    rts
.endproc

; FD41
; wait for NMI interrupt processing to complete
.proc wait_nmi
    .export wait_nmi
    .importzp NMIReady

    lda #1
    sta NMIReady

@wait:
    lda NMIReady
    bne @wait
    rts
.endproc

; FD4A
.proc wait_nmi_flags_reset
    .export wait_nmi_flags_reset
    .importzp NMIFlags

    lda NMIFlags
    bne wait_nmi_flags_reset
    rts
.endproc

; FD4F
.proc wait_press_button
    .export wait_press_button
    .importzp GamepadButtons

    lda #0
    sta GamepadButtons

@wait_button:
    lda GamepadButtons
    beq @wait_button
    pha 
    lda #0
    sta GamepadButtons
    pla
    rts
.endproc
