.segment "CODE"

; CEE8
; set 6 memory banks for PPU
; pPPUTable = XA address (X - high and A - low byte)
; 
; |PPU address | PPUTable offset | Size |
; |-------------------------------------|
; |   $1000    |        0        |  2K  |
; |-------------------------------------|
; |   $1800    |        1        |  2K  |
; |-------------------------------------|
; |   $0000    |        2        |  1K  |
; |-------------------------------------|
; |   $0400    |        3        |  1K  |
; |-------------------------------------|
; |   $0800    |        4        |  1K  |
; |-------------------------------------|
; |   $0C00    |        5        |  1K  |
; ---------------------------------------
.proc set_ppu_banks:
    sta pPPUTable
    stx pPPUTable+1
    ldx #PPU_1K_1C00    ; Select 1K CHR ROM page at 0C00h, 0800h, 0400h, 0000h,
                        ; and 2K CHR ROM page at 1800h, 1000h in PPU space
    ldy #5

@next_chr_bank:
    lda (pPPUTable),Y
    beq @no_chr_bank
    jsr mmc3_bank_set   ; Set memory bank A - bank number X - mode

@no_chr_bank:                               ; CODE XREF: set_ppu_banks+A↑j
    dex
    dey
    bpl @next_chr_bank
    rts
.endproc

; ECFC
.proc shift_down_window
    LDX #$FC                    ; shift down
; ---------------------------------------------------------------------------
    .BYTE $2C                   ; mask LDX #4 BIT $04A2 instruction
; ---------------------------------------------------------------------------

shift_up_window:
    LDX #4                      ; shift up
    JSR sub_FD33
    STX ShiftPosWindow          ; $E9 <- 4 shift up or $FC shift down
    LDX #$14

@next_shift:
    LDA #1                      ; shift up or down window
    STA NMIFlags
    JSR sub_FD33
    JSR sub_ED1A
    DEX
    BNE @next_shift
    LDA #0
    STA ShiftPosWindow
    RTS
.endproc

; EDDC
; lowers the brightness of the colors of the background and sprite palettes ($500)
; in 4 cycles to black
.proc reduce_palette
    JSR copy_ram_palette

reduce_color:
    LDY #5                      ; reduce counter

@next_reduce:
    LDX #$1F                    ; color counter

@next_color:
    SEC
    LDA PaletteBackground0,X    ; get color
    SBC #$10                    ; decrease color by $10
    BCS @save_color
    LDA #$F                     ; black color if subtracted value is greater

@save_color:
    STA PaletteBackground0,X    ; save color
    DEX                         ; decrease color counter
    BPL @next_color
    TYA
    TAX
    JSR wait_palette_to_PPU     ; waiting for palette copy to PPU
    DEY                         ; decrease reduce counter
    CPY #1
    BNE @next_reduce
    RTS
.endproc

; EE30
; increase the brightness colors of background palette and sprite palette in 4 cycles
.proc increase_palette
    JSR wait_fill_PPU

increase_color:
    LDY #5                      ; increase counter

@next_increase:
    LDX #$1F                    ; color counter

@next_color:
    SEC
    LDA PaletteBackground0,X    ; get current color
    SBC PaletteBackground1,X    ; sub final color
    BEQ @no_change              ; the colors are the same
    AND #$F
    BNE @low_tetrad_different   ; low tetrad is different
    BCS @color_above
    LDA PaletteBackground0,X    ; get color
    ADC #$10                    ; increase color by $10
    BPL @save_color

@low_tetrad_different:
    LDA PaletteBackground1,X    ; get final color
    AND #$F                     ; mask low tetrad
    CMP #$D
    BCC @lowE                   ; low tetrad must not be greater than $E (see palette.asm)

@color_above:
    LDA PaletteBackground0,X    ; get current color
    SBC #$10                    ; decrease color by $10
    BCS @save_color             ; save if above 0
    LDA #$F                     ; else set black color
    BPL @save_color

@lowE:
    PHA                         ; save low tetrad into the stack
    LDA PaletteBackground0,X    ; get current color
    AND #$30                    ; mask high tetrad
    STA PaletteBackground0,X    ; save high tetrad
    PLA                         ; load low tetrad from the stack
    ORA PaletteBackground0,X    ; merge tetrads

@save_color:
    STA PaletteBackground0,X    ; save new color

@no_change:
    DEX                         ; decrease color counter
    BPL @next_color
    TYA
    TAX
    JSR wait_palette_to_PPU
    DEY                         ; decrease reduce counter
    CPY #1
    BNE @next_increase
    RTS
.endproc

; EE9D
.proc sub_EE9D
    STA pPPUTable
    STX pPPUTable+1
    JSR wait_fill_PPU
    LDY #$1F

loc_EEA6:
    LDA (pPPUTable),Y
    STA PaletteBackground0,Y
    DEY
    BPL loc_EEA6
    BMI loc_EEB3

loc_EEB0:
    JSR sub_EE7F

loc_EEB3:
    LDX #1

wait_palette_to_PPU:
    LDA #4
    STA NMI_ID
    LDA #0
    STA num_of_chr
    STA Offset400
    LDA #$80
    STA NMIFlags
    JMP wait_frames
.endproc

; F496 load_palettes name exist (ppu.asm)
.proc load_palette:
    JSR wait_fill_PPU
    LDY #$1F

@next_color:
    LDA (pPPUTable),Y
    STA PaletteBackground0,Y
    DEY
    BPL @next_color

set_nmi_id4:
    LDA #4                  ; load_palettes function ID
    STA NMI_ID
    LDA #0
    STA num_of_chr          ; 
    LDA #0
    STA Offset400
    LDA #$80
    STA NMIFlags
    RTS
.endproc

; F732
; copies the palettes at the pointer pPPUTable offset at $400
.proc copy_palettes_400
    JSR wait_fill_PPU
    STX pPPUTable
    STY pPPUTable+1
    LDY #$1F

@next_color:
    LDA (pPPUTable),Y
    STA NMI_ID,Y
    DEY
    BPL @next_color
    LDA #$80
    STA NMIFlags
    LDA #0
    STA Offset400
    RTS
.endproc

; FD33
.proc wait_fill_PPU
    LDA NMIFlags
    ORA OtherNMIFlags
    BNE wait_fill_PPU
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

; FD80
.proc clear_nametables
    JSR wait_fill_PPU
    LDA #8                  ; fill_ppu function ID
    LDX #$80                ; number of char for fill
    STA NMI_ID
    STX num_of_chr
    LDA #0                  ; PPU address for fill ($2000) - nametable
    LDX #$20
    STA PPU_addr+1
    STX PPU_addr
    LDA #0
    STA chr                 ; character for fill = 0
    STA next                ; next record or end of record - 0

@next_fill:
    LDX #0
    LDA #$80
    STX Offset400
    STA NMIFlags
    JSR wait_fill_PPU

    CLC                      ; clear carry flag
    LDA PPU_addr+1           ; get next nametable address + $80
    ADC #$80
    STA PPU_addr+1
    LDA PPU_addr
    ADC #0
    STA PPU_addr
    CMP #$28                ; address == $2800
    BCC @next_fill
    RTS
.endproc

.segment "ZEROPAGE"
;.org $E9                       ; in the original game $E9
ShiftPosWindow: .res 1