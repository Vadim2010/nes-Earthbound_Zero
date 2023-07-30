.segment "CODE"
; FDE7
.proc sram_write_enable
    ; lda #SRAM_WRITE_ENABLE|SRAM_ENABLE
    ; sta SRAM
    set SRAM, #SRAM_WRITE_ENABLE|SRAM_ENABLE
    rts
.endproc

; FDED
.proc sram_read_enable
    ; lda #SRAM_WRITE_DISABLE|SRAM_ENABLE
    ; sta SRAM
    set SRAM, #SRAM_WRITE_DISABLE|SRAM_ENABLE
    rts
.endproc
