.segment "ZEROPAGE"
;.org $E9                       ; in the original game $E9
ShiftY: .res 1

.segment "DATA"
PalBG:      .res 16             ; in the original game starts at $520
PalSpr:     .res 16

.segment "CODE"

; ECFC
.proc shift_down_window
    LDX #$FC                    ; shift down
; ---------------------------------------------------------------------------
    .BYTE $2C                   ; mask LDX #4 BIT $04A2 instruction
; ---------------------------------------------------------------------------

shift_up_window:
    LDX #4                      ; shift up
    JSR wait_nmi_processed
    STX ShiftY                  ; $E9 <- 4 shift up or $FC shift down
    LDX #$14

@next_shift:
    LDA #1                      ; shift up or down window
    STA NMIFlags
    JSR wait_nmi_processed
    JSR sub_ED1A
    DEX
    BNE @next_shift
    LDA #0
    STA ShiftY
    RTS
.endproc

; EDDC
; lowers the brightness of the colors of the background and sprite palettes ($500)
; in 4 cycles to black
.proc darken_palette
    JSR store_palettes

darken_color:
    LDY #5                      ; reduce counter

@next_reduce:
    LDX #$1F                    ; color counter

@next_color:
    SEC
    LDA PalNMIBG,X              ; get color
    SBC #$10                    ; decrease color by $10
    BCS @save_color
    LDA #$F                     ; black color if subtracted value is greater

@save_color:
    STA PalNMIBG,X              ; save color
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
.proc lighten_palette
    JSR wait_nmi_processed

lighten_color:
    LDY #5                      ; increase counter

@next_increase:
    LDX #$1F                    ; color counter

@next_color:
    SEC
    LDA PalNMIBG,X              ; get current color
    SBC PalBG,X                 ; sub final color
    BEQ @no_change              ; the colors are the same
    AND #$F
    BNE @low_tetrad_different   ; low tetrad is different
    BCS @color_above
    LDA PalNMIBG,X              ; get color
    ADC #$10                    ; increase color by $10
    BPL @save_color

@low_tetrad_different:
    LDA PalBG,X                 ; get final color
    AND #$F                     ; mask low tetrad
    CMP #$D
    BCC @lowE                   ; low tetrad must not be greater than $E (see palette.asm)

@color_above:
    LDA PalNMIBG,X              ; get current color
    SBC #$10                    ; decrease color by $10
    BCS @save_color             ; save if above 0
    LDA #$F                     ; else set black color
    BPL @save_color

@lowE:
    PHA                         ; save low tetrad into the stack
    LDA PalNMIBG,X              ; get current color
    AND #$30                    ; mask high tetrad
    STA PalNMIBG,X              ; save high tetrad
    PLA                         ; load low tetrad from the stack
    ORA PalNMIBG,X              ; merge tetrads

@save_color:
    STA PalNMIBG,X              ; save new color

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

; EE7F
; makes a copy of palettes into pre-prepared palettes for transfer to the PPU.
.proc restore_palettes
    JSR wait_nmi_processed
    LDX #$1F

@next_color:
    LDA PalBG,X
    STA PalNMIBG,X
    DEX
    BPL @next_color
    RTS
.endproc

; EE8E
; makes a copy of palettes from pre-prepared palettes for transfer to PPU.
.proc store_palettes
    JSR wait_nmi_processed
    LDX #$1F

@next_color:
    LDA PalNMIBG,X
    STA PalBG,X
    DEX
    BPL @next_color
    RTS
.endproc

; EE9D
.proc copy_palettes
    STA Pointer
    STX Pointer+1
    JSR wait_nmi_processed
    LDY #$1F

@next_color:
    LDA (Pointer),Y
    STA PalNMIBG,Y
    DEY
    BPL @next_color
    BMI one_frame

back_palettes:
    JSR restore_palettes

one_frame:
    LDX #1

wait_palette_to_PPU:
    LDA #4
    STA NMI_ID
    LDA #0
    STA num_of_chr
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    JMP wait_frames
.endproc

; EECC
.proc home_camera:
    LDX #0
    LDY #0

set_camera:
    JSR wait_nmi_processed
    LDA #0
    STA ShiftX
    STA ShiftY
    STA IRQCount
    LDA #$FC
    AND CntrlPPU
    STA CntrlPPU
    STX CameraX
    STY CameraY
    JMP wait_nmi
.endproc

; FD80
.proc clear_nametables
    JSR wait_nmi_processed
    LDA #8                      ; fill_ppu function ID
    LDX #$80                    ; number of char for fill
    STA NMI_ID
    STX num_of_chr
    LDA #0                      ; PPU address for fill ($2000) - nametable
    LDX #$20
    STA PPU_addr+1
    STX PPU_addr
    LDA #0
    STA chr                     ; character for fill = 0
    STA next                    ; next record or end of record - 0

@next_fill:
    LDX #0
    LDA #$80
    STX OffsetNMI_ID
    STA NMIFlags
    JSR wait_nmi_processed

    CLC                         ; clear carry flag
    LDA PPU_addr+1              ; get next nametable address + $80
    ADC #$80
    STA PPU_addr+1
    LDA PPU_addr
    ADC #0
    STA PPU_addr
    CMP #$28                    ; address == $2800
    BCC @next_fill
    RTS
.endproc
