; I BELIEVE I TOOK ALL THE DOCUMENTATION COMMENTS FROM THE YOSHI DOCUMENT

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

PPU_ADDR = $2006 ; THIS IS THE ADDRESS OF THE PPU MEMORY

; PPUDATA	$2007	dddd dddd	PPU data read/write
;----------￾-------￾----------￾---------------------------------------------'
;| $2007   | RW    | dddddddd | PPU I/O Register                    [PPUIO] |
;|         |       |          |                                             |
;|         |       |          |  Used to read/write to the address spec-    |
;|         |       |          |  ified via $2006 in VRAM.                   |
;----------￾-------￾----------￾---------------------------------------------'
PPU_DATA = $2007 

; OAMADDR	$2003	aaaa aaaa	OAM read/write address
; SPRITE MEMORY ADDRESS
;----------￾-------￾----------￾---------------------------------------------'
;| $2003   |  W    | aaaaaaaa | Sprite Memory Address             [SPRADDR] |
;|         |       |          |                                             |
;|         |       |          |  Specifies the address in Sprite RAM to     |
;|         |       |          |  access via $2004 (see Section #9).         |
;----------￾-------￾----------￾---------------------------------------------'
OAM_ADDR = $2003

; OAMDATA	$2004	dddd dddd	OAM data read/write
;----------￾-------￾----------￾---------------------------------------------'
;| $2004   |  W    | dddddddd | Sprite I/O Register                 [SPRIO] |
;|         |       |          |                                             |
;|         |       |          |  Used to read/write to the address spec-    |
;|         |       |          |  ified via $2003 in Sprite RAM.             |
;----------￾-------￾----------￾---------------------------------------------'
OAM_DATA = $2004

;======================================================================================
; PPU CTRL FLAGS
; VPHB SINN
; 7654 3210
; |||| ||||
; |||| |||+----\
; |||| |||      |---> Nametable Select  (0 = $2000; 1 = $2400; 2 = $2800; 3 = $2C00)
; |||| ||+-----/
; |||| |+----> VRAM address increment per CPU read/write of PPUDATA (0: 1 across; 1: 32 down)
; |||| +-----> Sprite Tile Address Select (0: $0000; 1: $1000)
; ||||                              
; |||+-------> Background Tile Address Select (0: $0000; 1: $1000)
; ||+--------> Sprite Hight (0: 8x8; 1: 8x16)
; |+---------> PPU Master / Slave (not sure if this is used)
; +----------> NMI enable (0: off; 1: on)
;======================================================================================

.define PPU_CTRL_NMI_ENABLE     #%10000000
.define PPU_CTRL_MASTER_SLAVE   #%01000000
.define PPU_CTRL_16_PX_HEIGHT   #%00100000
.define PPU_CTRL_BACKGROUND     #%00010000
.define PPU_CTRL_SPRITE         #%00001000
.define PPU_CTRL_INCREMENT_MODE #%00000100
.define PPU_CTRL_DEFAULT        #%10011100

.define PPU_CTRL $2000
;===========================================================================
; PPU MASK MODES
; 7  bit  0
; ---- ----
; BGRs bMmG
; |||| ||||
; |||| |||+- Greyscale (0: normal color, 1: produce a greyscale display)
; |||| ||+-- 1: Show background in leftmost 8 pixels of screen, 0: Hide
; |||| |+--- 1: Show sprites in leftmost 8 pixels of screen, 0: Hide
; |||| +---- 1: Show background
; ||||
; |||+------ 1: Show sprites
; ||+------- Emphasize red*
; |+-------- Emphasize green*
; +--------- Emphasize blue*
;===========================================================================
PPU_MASK_EMPH_BLUE = %10000000
PPU_MASK_EMPH_GREEN = %01000000
PPU_MASK_EMPH_RED = %00100000
PPU_MASK_SHOW_SPRITES = %00010000
PPU_MASK_SHOW_BACKGROUND = %00001000
PPU_MASK_SHOW_SPRITES_L8 = %00000100
PPU_MASK_SHOW_BACKGROUND_L8 = %00000010
PPU_MASK_GRAYSCALE = %00000001

PPU_MASK = $2001

; VSO- ----	vblank (V), sprite 0 hit (S), sprite overflow (O), read resets write pair for $2005/2006
;----------￾-------￾----------￾---------------------------------------------'
;| $2002   | R     | vhs00000 | PPU Status Register               [PPUSTAT] |
;|         |       |          |                                             |
;|         |       |          |  v = VBlank Occurance Flag                  |
;|         |       |          |         0 = No VBlank                       |
;|         |       |          |         1 = VBlank                          |
;|         |       |          |  h = Hit Occurance Flag                     |
;|         |       |          |         0 = No hit                          |
;|         |       |          |         1 = Refresh has hit Sprite #0       |
;|         |       |          |  s = Sprite Count Max                       |
;|         |       |          |         0 = Less than 8 sprites on the      |
;|         |       |          |             current scanline                |
;|         |       |          |         1 = More than 8 sprites on the      |
;|         |       |          |             current scanline                |
;|         |       |          |                                             |
;|         |       |          | NOTE: Reading this register resets Bit 7,   |
;|         |       |          |       also also resets the Background       |
;|         |       |          |       Scroll Register bits as well.         |
;|         |       |          | NOTE: Bit 6 is reset to 0 at the beginning  |
;|         |       |          |       of the next refresh.                  |
;|         |       |          | NOTE: Bit 6 is not set until the first      |
;|         |       |          |       actual pixel (i.e. non-transparent)   |
;|         |       |          |       is drawn. Therefore, if you have a    |
;|         |       |          |       sprite (8x8) which has it's first 4   |
;|         |       |          |       pixels as transparent, and it's 5th   |
;|         |       |          |       as a non-transparent value, Bit 6     |
;|         |       |          |       will be set after the 5th pixel is    |
;|         |       |          |       found & drawn.                        |
;|         |       |          | NOTE: If Bit 5 is set, the PPU will NOT let |
;|         |       |          |       you write to VRAM.                    |
;----------￾-------￾----------￾---------------------------------------------'
PPU_STATUS = $2002

; xxxx xxxx	fine scroll position (two writes: X, Y)
;----------￾-------￾----------￾---------------------------------------------'
;| $2005   |  W2   | dddddddd | Background Scroll Register        [BGSCROL] |
;|         |       |          |                                             |
;|         |       |          |  Used to scroll the screen vertically and   |
;|         |       |          |  horizontally. This is a double-write       |
;|         |       |          |  register.                                  |
;|         |       |          |                                             |
;|         |       |          |  BYTE 1: Horizontal Scroll                  |
;|         |       |          |  BYTE 2: Vertical Scroll                    |
;|         |       |          |                                             |
;|         |       |          |  The scrolled data will span across multip- |
;|         |       |          |  le Name Tables. The layout is as follows:  |
;|         |       |          |                                             |
;|         |       |          |      --------------------------¨            |
;|         |       |          |      | #2 ($2800) | #3 ($2C00) |            |
;|         |       |          |      A------------￾------------'            |
;|         |       |          |      | #0 ($2000) | #1 ($2400) |            |
;|         |       |          |      A-------------------------U            |
;|         |       |          |                                             |
;|         |       |          | NOTE: If the Vertical Scroll value is >239, |
;|         |       |          |       it will be ignored. Some emulators    |
;|         |       |          |       write 0 to the Vertical Scroll if     |
;|         |       |          |       the value is >239.                    |
;|         |       |          | NOTE: Remember, there is only enough VRAM   |
;|         |       |          |       for two (2) Name Tables.              |
;|         |       |          | NOTE: After a VBL occurs, the next write    |
;|         |       |          |       will control the Horizontal Scroll.   |
;----------￾-------￾----------￾---------------------------------------------'

PPU_SCROLL = $2005

OAM_DMA = $4014	; OAM DMA high address

.segment "CODE"
.proc load_attribute 
    LDA PPU_STATUS        ; read PPU status to reset the high/low latch
    LDA #$23    ; 27 ; 2B ; 2F
    STA PPU_ADDR          ; write the high byte of $23C0 address

    LDA #$C0
    STA PPU_ADDR          ; write the low byte of $23C0 address

    LDX #$00              ; start out at 0
    LoadAttributeLoop:
        LDA #%00000000 ; attribute, x      ; load data from address (attribute + the value in x)
        STA PPU_DATA          ; write to PPU
        INX                   ; X = X + 1
        CPX #$40              ; Compare X to hex $08, decimal 8 - copying 8 bytes
    BNE LoadAttributeLoop  ; Branch to LoadAttributeLoop if compare was Not Equal to zero


    LDA PPU_STATUS        ; read PPU status to reset the high/low latch
    LDA #$2B    ; 27 ; 2B ; 2F
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

; F8ED
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
    LDA #$3F
    LDX #$00

    STA PPU_ADDR                ; write the high byte of $3F00 address   
    STX PPU_ADDR                ; write the low byte of $3F00 address

@next_color:
    LDA PaletteBackground0, x   ; load data from address (palette + the value in x)
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
    STA PPU_DATA             ; write to PPU
    ;    WRITE_PPU_DATA

    INX                         ; X = X + 1
    CPX #$20                    ; Compare X to hex $20, decimal 16 - copying 16 bytes = 4 sprites
    BNE @next_color             ; Branch to LoadPalettesLoop if compare was Not Equal to zero
                                ; if compare was equal to 32, keep going down

    LDA #$3F
    LDX #$00

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

.segment "DATA"
PaletteBackground0: .res 16     ; in the original game starts at $500
PaletteSprites0:    .res 16
PaletteBackground1: .res 16     ; in the original game starts at $520
PaletteSprites1:    .res 16

.segment "OAM"
;.org $200                      ; in the original game starts at $200 
oam: .res 256                   ; sprite OAM data to be uploaded by DMA

