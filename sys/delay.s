.include "ram.inc"

.segment "WAIT"

; FD28
.proc wait_change_music
    .export wait_change_music

    CMP CurrentMusic        ; $78C
    BEQ @wait
    STA NewMusic            ; $7F5

@wait:
    JMP wait_nmi
.endproc


; FD33
; wait until all interrupts have been processed
.proc wait_nmi_processed
    .export wait_nmi_processed
    .importzp NMIFlags, OtherNMIFlags

    LDA NMIFlags
    ORA OtherNMIFlags
    BNE wait_nmi_processed
    RTS
.endproc

; FD3A
; wait for a few frames
; input: X - number of frames
.proc wait_frames
    .export wait_frames

    JSR wait_nmi
    DEX
    BNE wait_frames
    RTS
.endproc

; FD41
; wait for NMI interrupt processing to complete
.proc wait_nmi
    .export wait_nmi
    .importzp NMIReady

    LDA #1
    STA NMIReady

@wait:
    LDA NMIReady
    BNE @wait
    RTS
.endproc

; FD4A
.proc wait_nmi_flags_reset
    .export wait_nmi_flags_reset
    .importzp NMIFlags

    LDA NMIFlags
    BNE wait_nmi_flags_reset
    RTS
.endproc

; FD4F
.proc wait_press_button
    .export wait_press_button
    .importzp Gamepad0Buttons

    LDA #0
    STA Gamepad0Buttons

@wait_button:
    LDA Gamepad0Buttons
    BEQ @wait_button
    PHA 
    LDA #0
    STA Gamepad0Buttons
    PLA
    RTS
.endproc
