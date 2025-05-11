.include "macros.inc"
.include "nes.inc"
.include "nmi.inc"
.include "palette.inc"
.include "mmc3\bank.inc"
.include "mmc3\mmc3.inc"
.include "..\original\res\structures.inc"

.segment "NMI_PPU"

.import get_function
; F8ED load_palettes ; in the ppu_lib.asm
; copies pre-prepared palettes from PalNMIBG to the PPU during NMI processing
.proc load_palettes
    .export load_palettes
    .import PalNMIBG, NMI_Data

    ;lda PPU_STATUS              ; read PPU status to reset the high/low latch

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
    sta PPU_ADDR                ; write the high byte of $3F00 address   
    stx PPU_ADDR                ; write the low byte of $3F00 address

@next_color:
    lda PalNMIBG, x             ; load data from address (palette + the value in x)
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
    sta PPU_DATA                ; write to PPU
    ;    WRITE_PPU_DATA

    inx                         ; X = X + 1
    cpx #$20                    ; Compare X to hex $20, decimal 16 - copying 16 bytes = 4 sprites
    bne @next_color             ; Branch to LoadPalettesLoop if compare was Not Equal to zero
                                ; if compare was equal to 32, keep going down

    ldax #PALETTE
    sta PPU_ADDR                ; write the high byte of $3F00 address   
    stx PPU_ADDR                ; write the low byte of $3F00 address

    stx PPU_ADDR                ; write the high byte of $0000 address
    stx PPU_ADDR                ; write the low byte of $0000 address
    iny
    ;rts
    jmp get_function
.endproc

; F916
.proc write_horizontal
    .export write_horizontal
    .import NMI_Data

    jsr write_nt_block
    lda NMI_Data,Y
    cmp #5
    beq write_horizontal
    jmp get_function
.endproc

; F923
.proc write_vertical
    .export write_vertical
    .import NMI_Data
    .importzp CntrlPPU

    lda CntrlPPU
    ora #CTRL_INCREMENT_32
    sta PPU_CTRL

@next_block:
    jsr write_nt_block
    lda NMI_Data,Y
    cmp #6
    beq @next_block
    set PPU_CTRL, CntrlPPU
    jmp get_function
.endproc

; F93C
.proc write_ppu_chars
    .export write_ppu_chars
    .import NMI_Data

    iny
    ldx NMI_Data,Y                ; get number of characters
    iny

@next_char:
    lda NMI_Data,Y                ; get & load PPU address NT (Nametable)
    sta PPU_ADDR
    iny
    lda NMI_Data,Y
    sta PPU_ADDR
    iny
    lda NMI_Data,Y                ; get char
    sta PPU_DATA                ; write char
    iny
    dex
    bne @next_char
    jmp get_function
.endproc

; F95C fill_ppu ; in the ppu_lib.asm
; fills the PPU area with the same value during NMI processing
.proc fill_ppu
    .export fill_ppu
    .import NMI_Data

    iny
    ldx NMI_Data,Y                ; get number of characters
    iny
    lda NMI_Data,Y                ; get & load PPU address NT (Nametable)
    sta PPU_ADDR
    iny
    lda NMI_Data,Y
    sta PPU_ADDR
    iny
    lda NMI_Data,Y                ; get char
    iny

@write_ppu:
    sta PPU_DATA
    dex
    bne @write_ppu
    jmp get_function
.endproc

; F97C
.proc read_ppu
    .export read_ppu
    .import NMI_Data

    iny
    ldx NMI_Data,Y                ; get number of characters
    iny
    lda NMI_Data,Y                ; get & load PPU address NT (Nametable)
    sta PPU_ADDR
    iny
    lda NMI_Data,Y
    sta PPU_ADDR
    iny
    lda PPU_DATA                ; load value from ppu

get_next_char:
    lda PPU_DATA                ; load value from ppu
    sta NMI_Data,Y                ; save value into NMI_Data table
    iny
    dex
    bne get_next_char
    jmp get_function
.endproc

; F99F
.proc chr_text2stack
    .export chr_text2stack
    .importzp BankRegister, BankTable, BankMode
    .import mmc3_bank_set, NMI_Data

    lda BankRegister
    pha                         ; store bank register into stack
    lda BankTable + BANK_TABLE::PPU_1K_0800
    pha                         ; store chr bank $X800 into the stack
    lda BankTable + BANK_TABLE::PPU_1K_0C00
    pha                         ; store chr bank $XC00 into the stack
    iny
    lda NMI_Data,Y                ; get chr bank number
    ldx #4                      ; select mode 1K $X800
    jsr mmc3_bank_set           ; set PPU memory bank
    clc
    adc #1                      ; next chr bank number
    ldx #5                      ; select mode 1K $XC00
    jsr mmc3_bank_set           ; set PPU memory bank
    iny
    lda NMI_Data,Y
    sta PPU_ADDR                ; set high byte PPU address
    iny
    lda NMI_Data,Y
    sta PPU_ADDR                ; set low byte PPU address
    iny
    lda PPU_DATA                ; get PPU data
    ldx #0

next_data:
    lda PPU_DATA                ; get PPU data
    sta Stack+$10,X             ; save the read value into the stack
    inx
    cpx #$40
    bcc next_data              ; repeat for $40 (64) values
    pla                         ; restore chr bank $XC00 from the stack
    ldx #5                      ; select mode 1K $XC00
    jsr mmc3_bank_set           ; set PPU memory bank
    pla                         ; restore chr bank $X800 from the stack
    ldx #4                      ; select mode 1K $X800
    jsr mmc3_bank_set           ; set PPU memory bank
    pla                         ; restore bank register from the stack
    sta BankRegister
    ora BankMode
    sta BANK_SELECT
    jmp get_function
.endproc

; F9EF
.proc write_nt_block
    .export write_nt_block
    .import NMI_Data
    .importzp Bitfield

    iny
    ldx NMI_Data,Y                ; get number of char
    stx Bitfield                ; save bitfield value
    iny
    lda NMI_Data,Y                ; get & load PPU address NT (Nametable)
    sta PPU_ADDR
    iny
    lda NMI_Data,Y
    sta PPU_ADDR
    iny
    lsr Bitfield
    bcc clear_bit0
    lda NMI_Data,Y
    sta PPU_DATA
    iny

clear_bit0:
    lsr Bitfield
    bcc clear_bit1
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny

clear_bit1:
    lsr Bitfield
    bcc clear_bit2
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny

clear_bit2:
    ldx Bitfield
    beq end_block

next_block:
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    lda NMI_Data,Y
    sta PPU_DATA
    iny
    dex
    bne next_block

end_block:
    rts
.endproc

; FA81
.proc draw_sprite
    .export draw_sprite, oam_offscreen
    .import mmc3_bank_set, SpriteTable
    .importzp pFrame, byte_C9, byte_CB, byte_CE, byte_CF, byte_E1, byte_E3, byte_E4, byte_E7, ShiftX, ShiftY
    .importzp CameraX, CameraY, FlagClearOAM300, SpriteTabOffset, SpriteTabStep, CntrlPPU
    .importzp TileCount, TileID, TileX, Attribute, TileY, pOAMSprite, pSprite, Bitfield

    lda #$15
    ldx #6
    jsr mmc3_bank_set           ; set memory bank 15 at $8000
    set byte_CE, #0
    sta byte_CF
    ldx byte_E1
    bit byte_E7
    bvc loc_FAB8
    ldy #0

loc_FA96:
    clc
    lda (ShiftX),Y
    adc byte_CE
    sta byte_CE
    iny
    clc
    lda (ShiftX),Y
    adc byte_CF
    sta byte_CF
    iny
    dex
    bpl loc_FA96
    clc
    tya
    adc ShiftX
    sta ShiftX
    lda #0
    adc ShiftY
    sta ShiftY
    jmp loc_FAC9

loc_FAB8:
    clc
    lda ShiftX
    adc byte_CE
    sta byte_CE
    clc
    lda ShiftY
    adc byte_CF
    sta byte_CF
    dex
    bpl loc_FAB8

loc_FAC9:
    clc
    lda byte_CE
    bmi loc_FAD6
    adc CameraX
    sta CameraX
    bcc loc_FAE2
    bcs switch_scroll_mode

loc_FAD6:
    adc CameraX
    sta CameraX
    bcs loc_FAE2

switch_scroll_mode:
    lda CntrlPPU
    eor #1
    sta CntrlPPU

loc_FAE2:
    clc
    lda byte_CF
    bmi loc_FAEF
    adc #$10
    adc CameraY
    bcc loc_FAF3
    bcs loc_FAF5

loc_FAEF:
    adc CameraY
    bcs loc_FAF5

loc_FAF3:
    adc #$F0

loc_FAF5:
    sta CameraY
    lda FlagClearOAM300
    and #$3F
    eor #$20
    sta FlagClearOAM300
    set SpriteTabOffset, #0
    sta byte_E4
    set SpriteTabStep, #8
    ldx #$10

loc_FB0B:
    ldy SpriteTabOffset
    lda SpriteTable,Y
    and #$3F
    bne @sprite
    jmp no_sprite

@sprite:
    sta TileCount
    stx TileID
    lda SpriteTable + ANIM_SPRITE::TileID,Y
    and #$C0
    sta Attribute
    txa
    lsr A
    lsr A
    ora Attribute
    sta SpriteTable + ANIM_SPRITE::TileID,Y
    sec
    lda #0
    sbc byte_CE
    sta TileX
    sec
    lda #0
    sbc byte_CF
    sta TileY
    ldx byte_E1
    bit Attribute
    bvc loc_FB70
    lda SpriteTable + ANIM_SPRITE::ShiftX,Y
    sta pOAMSprite
    lda SpriteTable + ANIM_SPRITE::ShiftY,Y
    sta pOAMSprite+1
    ldy #0

loc_FB4A:
    clc
    lda (pOAMSprite),Y
    adc TileX
    sta TileX
    iny
    clc
    lda (pOAMSprite),Y
    adc TileY
    sta TileY
    iny
    dex
    bpl loc_FB4A
    clc
    tya
    adc pOAMSprite
    ldy SpriteTabOffset
    sta SpriteTable + ANIM_SPRITE::ShiftX,Y
    lda #0
    adc pOAMSprite+1
    sta SpriteTable + ANIM_SPRITE::ShiftY,Y
    jmp loc_FB83

loc_FB70:
    clc
    lda SpriteTable + ANIM_SPRITE::ShiftX,Y
    adc TileX
    sta TileX
    clc
    lda SpriteTable + ANIM_SPRITE::ShiftY,Y
    adc TileY
    sta TileY
    dex
    bpl loc_FB70

loc_FB83:
    ldx TileID
    clc
    lda TileX
    bmi loc_FB96
    adc SpriteTable + ANIM_SPRITE::PosX,Y
    sta TileX
    sta SpriteTable + ANIM_SPRITE::PosX,Y
    bcc loc_FBA8
    bcs loc_FBA0

loc_FB96:
    adc SpriteTable + ANIM_SPRITE::PosX,Y
    sta TileX
    sta SpriteTable + ANIM_SPRITE::PosX,Y
    bcs loc_FBA8

loc_FBA0:
    lda SpriteTable + ANIM_SPRITE::Tiles,Y
    eor #$80
    sta SpriteTable + ANIM_SPRITE::Tiles,Y

loc_FBA8:
    clc
    lda TileY
    bmi loc_FBB9
    adc SpriteTable + ANIM_SPRITE::PosY,Y
    sta TileY
    sta SpriteTable + ANIM_SPRITE::PosY,Y
    bcc loc_FBCB
    bcs loc_FBC3

loc_FBB9:
    adc SpriteTable + ANIM_SPRITE::PosY,Y
    sta TileY
    sta SpriteTable + ANIM_SPRITE::PosY,Y
    bcs loc_FBCB

loc_FBC3:
    lda SpriteTable + ANIM_SPRITE::TileID,Y
    eor #$80
    sta SpriteTable + ANIM_SPRITE::TileID,Y

loc_FBCB:
    lda SpriteTable + ANIM_SPRITE::Tiles,Y
    and #$80
    sta byte_C9
    lda SpriteTable + ANIM_SPRITE::TileID,Y
    and #$80
    sta byte_CB
    lda SpriteTable + ANIM_SPRITE::pFrame,Y
    sta pFrame
    lda SpriteTable + ANIM_SPRITE::pFrame+1,Y
    sta pFrame+1
    ldy #0
    lda (pFrame),Y
    sta pOAMSprite
    iny
    lda (pFrame),Y
    sta pOAMSprite+1
    iny
    lda (pFrame),Y
    sta TileID
    iny
    lda (pFrame),Y
    sta Bitfield
    ldy #0

next_tile:
    lda (pOAMSprite),Y
    iny
    clc
    adc TileX
    sta OAM_Cache + OAM_TILE::PosX,X
    ror A
    eor byte_C9
    bmi loc_FC1F
    lda (pOAMSprite),Y
    clc
    adc TileY
    sta OAM_Cache + OAM_TILE::PosY,X
    ror A
    eor byte_CB
    bmi loc_FC1B
    cmp #$F0
    bcc loc_FC25
    bcs loc_FC1F

loc_FC1B:
    cmp #$F9
    bcs loc_FC25

loc_FC1F:
    iny
    iny
    iny
    jmp loc_FC58

loc_FC25:
    iny
    lda (pOAMSprite),Y
    sta Attribute
    lda Bitfield
    lsr Attribute
    bcc palette_no_bit0
    lsr A
    lsr A

palette_no_bit0:
    lsr Attribute
    bcc palette_no_bit1
    lsr A
    lsr A
    lsr A
    lsr A

palette_no_bit1:
    and #3
    asl Attribute
    asl Attribute
    ora Attribute
    sta OAM_Cache + OAM_TILE::Attr,X
    iny
    and #$10
    beq loc_FC4C
    lda TileID

loc_FC4C:
    adc (pOAMSprite),Y
    sta OAM_Cache + OAM_TILE::TileID,X
    iny
    inx
    inx
    inx
    inx
    beq exit

loc_FC58:
    dec TileCount
    bne next_tile

no_sprite:
    clc
    lda SpriteTabStep
    bmi loc_FC6E
    adc SpriteTabOffset
    sta SpriteTabOffset
    beq oam_offscreen
    cmp byte_E3
    beq loc_FC79
    jmp loc_FB0B

loc_FC6E:
    adc SpriteTabOffset
    sta SpriteTabOffset
    cmp byte_E3
    bcc oam_offscreen
    jmp loc_FB0B

loc_FC79:
    stx byte_E4
    lda FlagClearOAM300
    and #$20
    bne loc_FC87
    set SpriteTabOffset, #$F8
    sta SpriteTabStep

loc_FC87:
    jmp loc_FB0B

; FC8A oam_offscreen
; this moves all the sprites in OAM memory offscreen by setting y to 255
oam_offscreen:
    lda #$F0

offscreen:
    sta OAM_Cache, X
    inx
    inx
    inx
    inx
    bne offscreen
exit:
    rts
.endproc

; FC96
.proc sub_FC96
    .export sub_FC96
    .importzp FlagClearOAM300, byte_E4, TileCount

    lda FlagClearOAM300
    eor #$40
    sta FlagClearOAM300
    ldy #$FC
    ldx byte_E4
    bne loc_FCE7
    rts

swap_oam:
    lda OAM_Cache,X
    pha
    lda OAM_Cache,Y
    sta OAM_Cache,X
    pla
    sta OAM_Cache,Y
    inx
    iny
    lda OAM_Cache,X
    pha
    lda OAM_Cache,Y
    sta OAM_Cache,X
    pla
    sta OAM_Cache,Y
    inx
    iny
    lda OAM_Cache,X
    pha
    lda OAM_Cache,Y
    sta OAM_Cache,X
    pla
    sta OAM_Cache,Y
    inx
    iny
    lda OAM_Cache,X
    pha
    lda OAM_Cache,Y
    sta OAM_Cache,X
    pla
    sta OAM_Cache,Y
    inx
    tya
    sec
    sbc #7
    tay

loc_FCE7:
    sty TileCount
    cpx TileCount
    bcc swap_oam
    rts
.endproc

; FCEE
.proc set_ppu
    .export set_ppu
    .importzp MaskPPU, BankMode, CntrlPPU
    .import oam_offscreen

    lda #0
    tax

@clear:
    sta 0,X                     ; clear $00-$FF zeropage
    inx
    bne @clear

    jsr oam_offscreen
    ; VBlank Disable, Sprite Size = 8x8, PPU Horizontal Write, Name Table Address 0 = $2000
    ; Screen Pattern Table Address 0 = $0000, Sprite Pattern Table Address 1 = $1000
    set PPU_CTRL, #(CTRL_SPRITE_1000)
    sta CntrlPPU
    ; set bank mode for PRG and CHR
    set BankMode, #(PRG_SWAP_8000|CHR_2K_1XXX_1K_0XXX)
    sta BANK_SELECT
    ; allow display of sprites
    set PPU_MASK, #(MASK_SHOW_BG|MASK_SHOW_SPRITE)
    sta MaskPPU
    set MIRROR, #0                  ; vertical nametable mirroring
    rts
.endproc

.segment "CLEAR"
; FD5E
.proc clear_oam_sprite
    .export clear_oam_sprite
    .import wait_nmi_processed, SpriteTable
    .importzp FlagClearOAM300

    jsr wait_nmi_processed
    sec                         ; set carry flag
    ror FlagClearOAM300
    ldx #0

@clear:
    lda #0
    sta SpriteTable,X
    lda #$F0
    sta OAM_Cache,X
    inx
    inx
    inx
    inx
    sta OAM_Cache,X
    inx
    inx
    inx
    inx
    bne @clear
    asl FlagClearOAM300
    rts
.endproc

; FD80
.proc clear_nametables
    .export clear_nametables
    .import wait_nmi_processed, NMI_Data
    .importzp OffsetNMI_Data, NMIFlags

    jsr wait_nmi_processed
    lda #FILL                   ; #8 fill_ppu function ID
    ldx #$80                    ; number of char for fill
    sta NMI_Data
    stx NMI_Data+1              ; num_of_chr
    lda #0                      ; PPU address for fill ($2000) - nametable
    ldx #$20
    sta NMI_Data+3              ; PPU_addr+1
    stx NMI_Data+2              ; PPU_addr
    set NMI_Data+4, #0          ; chr ; character for fill = 0
    sta NMI_Data+5              ; next; next record or end of record - 0

@next_fill:
    ldx #0
    lda #$80
    stx OffsetNMI_Data
    sta NMIFlags
    jsr wait_nmi_processed

    clc                         ; clear carry flag
    lda NMI_Data+3              ; PPU_addr+1 ; get next nametable address + $80
    adc #$80
    sta NMI_Data+3              ; PPU_addr+1
    lda NMI_Data+2              ; PPU_addr
    adc #0
    sta NMI_Data+2              ; PPU_addr
    cmp #$28                    ; address == $2800
    bcc @next_fill
    rts
.endproc

; FDC0
.proc update_animation
    .export update_animation
    .import wait_nmi_processed
    .importzp ShiftX, ShiftY, byte_E7

    jsr wait_nmi_processed
    lda byte_E7
    and #$BF
    sta byte_E7
    set ShiftX, #0
    sta ShiftY
    clc

@next_field:
    tax
    lda $301,X
    and #$BF
    sta $301,X
    lda #0
    sta $304,X
    sta $305,X
    txa 
    adc #8
    bcc @next_field
    rts
.endproc
