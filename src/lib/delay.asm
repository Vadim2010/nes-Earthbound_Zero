.segment "CODE"

; FD33
; wait until all interrupts have been processed
.proc wait_int_processed
    LDA NMIFlags
    ORA OtherNMIFlags
    BNE wait_int_processed
    RTS
.endproc

; FD3A
; wait for a few frames
; input: X - number of frames
.proc wait_frames
    JSR wait_nmi
    DEX
    BNE wait_frames
    RTS
.endproc

; FD41
; wait for NMI interrupt processing to complete
.proc wait_nmi
    LDA #1
    STA NMIReady

@wait:
    LDA NMIReady
    BNE @wait
    RTS
.endproc

; FD4A
.proc wait_nmi_flags_reset
    LDA NMIFlags
    BNE wait_nmi_flags_reset
    RTS
.endproc
