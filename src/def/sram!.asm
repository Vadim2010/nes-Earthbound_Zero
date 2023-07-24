.segment "CODE"

; FDE7
.proc sram_write_enable
    lda #$80
    sta SRAM
    rts
.endproc

; FDED
.proc sram_read_enable
    lda #$C0
    sta SRAM
    rts
.endproc