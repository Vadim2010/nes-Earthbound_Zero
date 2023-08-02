.segment "ZEROPAGE"
Pointer: .addr                  ; store pointer at tables (CHR banks, palettes, packed tilemaps, ...)

.segment "OAM"
;.org $200                      ; in the original game starts at $200 
oam: .res 256                   ; sprite OAM data to be uploaded by DMA

.segment "DATA"
NMI_ID: .res 256                ; $400
PalNMIBG:   .res 16             ; in the original game starts at $500
PalNMISpr:  .res 16

.segment "CODE"
.proc load_attribute 
    LDA PPU_STATUS              ; read PPU status to reset the high/low latch
    LDA #$23                    ; 27 ; 2B ; 2F
    STA PPU_ADDR                ; write the high byte of $23C0 address

    LDA #$C0
    STA PPU_ADDR                ; write the low byte of $23C0 address

    LDX #$00                    ; start out at 0
    LoadAttributeLoop:
        LDA #%00000000          ; attribute, x      ; load data from address (attribute + the value in x)
        STA PPU_DATA            ; write to PPU
        INX                     ; X = X + 1
        CPX #$40                ; Compare X to hex $08, decimal 8 - copying 8 bytes
    BNE LoadAttributeLoop       ; Branch to LoadAttributeLoop if compare was Not Equal to zero


    LDA PPU_STATUS              ; read PPU status to reset the high/low latch
    LDA #$2B                    ; 27 ; 2B ; 2F
    STA PPU_ADDR                ; write the high byte of $23C0 address

    LDA #$C0
    STA PPU_ADDR                ; write the low byte of $23C0 address

    LDX #$00                    ; start out at 0
    LoadAttributeLoop_2:
        LDA #%00000000          ; attribute, x      ; load data from address (attribute + the value in x)
        STA PPU_DATA            ; write to PPU

        INX                     ; X = X + 1
        CPX #$40                ; Compare X to hex $08, decimal 8 - copying 8 bytes
    BNE LoadAttributeLoop_2     ; Branch to LoadAttributeLoop if compare was Not Equal to zero

    RTS
.endproc

; F496
; loads the background and sprite color palettes into RAM before an NMI
; interrupt is executed, loading that palette from RAM into the PPU's memory
.proc preload_palettes:
    JSR wait_int_processed
    LDY #$1F

@next_color:
    LDA (Pointer),Y
    STA PalNMIBG,Y
    DEY
    BPL @next_color

set_nmi_id4:
    LDA #4                      ; load_palettes function ID
    STA NMI_ID
    LDA #0
    STA num_of_chr              ; 
    LDA #0
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags
    RTS
.endproc

; F732
; copies 32 bytes of a packed tilemap at $400
; input YX - pointer to the packed fragment Y - high byte, X - low byte
.proc copy_packed_tiles
    JSR wait_int_processed
    STX Pointer
    STY Pointer+1
    LDY #$1F

@next_byte:
    LDA (Pointer),Y
    STA NMI_ID,Y
    DEY
    BPL @next_byte
    LDA #$80
    STA NMIFlags
    LDA #0
    STA OffsetNMI_ID
    RTS
.endproc

; F8ED
; copies pre-prepared palettes from PalNMIBG to the PPU during NMI processing
.proc load_palettes

    ;lda PPU_STATUS             ; read PPU status to reset the high/low latch

    ; PPUADDR	$2006	aaaa aaaa	PPU read/write address (two writes: MSB, LSB)
    ;----------￾-------￾----------￾---------------------------------------------'
    ;| $2006   |  W2   | aaaaaaaa | PPU Memory Address                [PPUADDR] |
    ;|         |       |          |                                             |
    ;|         |       |          |  Specifies the address in VRAM in which     |
    ;|         |       |          |  data should be read from or written to.    |
    ;|         |       |          |  This is a double-write register. The high- |
    ;|         |       |          |  byte of the 16-bit address is written      |
    ;|         |       |          |  first, then the low-byte.                  |
    ;----------￾-------￾----------￾---------------------------------------------'
    ; LDA #$3F
    ; LDX #$00
    ldax #PALETTE
    STA PPU_ADDR                ; write the high byte of $3F00 address   
    STX PPU_ADDR                ; write the low byte of $3F00 address

@next_color:
    LDA PalNMIBG, x         ; load data from address (palette + the value in x)
                                ; 1st time through loop it will load palette+0
                                ; 2nd time through loop it will load palette+1
                                ; 3rd time through loop it will load palette+2
                                ; etc

    ; PPUDATA	$2007	dddd dddd	PPU data read/write
    ;----------￾-------￾----------￾---------------------------------------------'
    ;| $2007   | RW    | dddddddd | PPU I/O Register                    [PPUIO] |
    ;|         |       |          |                                             |
    ;|         |       |          |  Used to read/write to the address spec-    |
    ;|         |       |          |  ified via $2006 in VRAM.                   |
    ;----------￾-------￾----------￾---------------------------------------------'
    STA PPU_DATA                ; write to PPU
    ;    WRITE_PPU_DATA

    INX                         ; X = X + 1
    CPX #$20                    ; Compare X to hex $20, decimal 16 - copying 16 bytes = 4 sprites
    BNE @next_color             ; Branch to LoadPalettesLoop if compare was Not Equal to zero
                                ; if compare was equal to 32, keep going down

    ; LDA #$3F
    ; LDX #$00
    ldax #PALETTE
    STA PPU_ADDR                ; write the high byte of $3F00 address   
    STX PPU_ADDR                ; write the low byte of $3F00 address

    STX PPU_ADDR                ; write the high byte of $0000 address
    STX PPU_ADDR                ; write the low byte of $0000 address
    INY
    ;rts
    JMP loc_F7CA
.endproc

.proc oam_dma
    set PPU_CTRL, #%10010000; PPU_CTRL_NMI_ENABLE
;=============================================
; PPU_MASK_EMPH_BLUE          = %10000000
; PPU_MASK_EMPH_GREEN         = %01000000
; PPU_MASK_EMPH_RED           = %00100000
; PPU_MASK_SHOW_SPRITES       = %00010000
; PPU_MASK_SHOW_BACKGROUND    = %00001000
; PPU_MASK_SHOW_SPRITES_L8    = %00000100
; PPU_MASK_SHOW_BACKGROUND_L8 = %00000010
; PPU_MASK_GRAYSCALE          = %00000001
;=============================================

    LDA #(PPU_MASK_SHOW_SPRITES|PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES_L8|PPU_MASK_SHOW_BACKGROUND_L8)
    STA PPU_MASK
    set OAM_ADDR, #0
    set OAM_DMA, #2
    RTS
.endproc

; F95C
; fills the PPU area with the same value during NMI processing
.proc fill_ppu
    INY
    LDX NMI_ID,Y                ; get number of characters
    INY
    LDA NMI_ID,Y                ; get & load PPU address NT (Nametable)
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y                ; get char
    INY

@write_ppu:
    STA PPU_DATA
    DEX
    BNE @write_ppu
    JMP get_function
.endproc

; this moves all the sprites in oam memory offscreen by setting y to 255
.proc clear_sprites
    LDA #$F0

@clear_sprites_loop:
    STA oam, X
    INX
    INX
    INX
    INX
    BNE @clear_sprites_loop
    RTS
.endproc

; clear the entire background on a vblank
.proc clear_background_all
        JSR wait_for_vblank

        LDY #$20
		outer_background_clear_loop:
	        LDA PPU_STATUS
			STY PPU_ADDR

			LDA #0
			TAX
			STA PPU_ADDR
			inner_background_clear_loop:
	            STA PPU_DATA
				INX
				BNE inner_background_clear_loop
			INY
			CPY #$24
		BNE outer_background_clear_loop

        LDY #$28
		outer_background_clear_loop2:
	        LDA PPU_STATUS
			STY PPU_ADDR

			LDA #0
			TAX
			STA PPU_ADDR
			inner_background_clear_loop2:
	            STA PPU_DATA
				INX
				BNE inner_background_clear_loop2
			INY
			CPY #$2C
		BNE outer_background_clear_loop2

	RTS
.endproc

; FCEE
.proc set_ppu:
    ; clear $00-$FF zeropage
    LDA #0
    TAX

@next_clear:
    STA 0,X
    INX
    BNE @next_clear

    JSR clear_sprites
    ; VBlank Disable, Sprite Size = 8x8, PPU Horizontal Write, Name Table Address 0 = $2000
    ; Screen Pattern Table Address 0 = $0000, Sprite Pattern Table Address 1 = $1000
    LDA #PPU_CTRL_SPRITE
    STA PPU_CTRL
    STA CntrlPPU
    ; set bank mode for PRG and CHR
    LDA #PRG_SWAP_8000|CHR_12_INVERSION
    STA BankMode
    STA BANK_SELECT
    ; allow display of sprites
    LDA #PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES
    STA PPU_MASK
    STA mask_PPU
    ; vertical nametable mirroring
    LDA #0
    STA MIRROR
    RTS
.endproc
