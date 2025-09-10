.include "nmi.inc"
.include "macros.inc"
.include "palette.inc"
.include "mmc3\bank.inc"
.include "..\res\structures.inc"
.include "..\res\charmap.inc"

.segment "BANK_9"
; ===========================================================================

; Segment type: Pure code
;.segment BANK19
;* =  $A000

; =============== S U B R O U T I N E =======================================


check_copyrights:
    .export check_copyrights
    .import wait_nmi_processed, NMI_Data
    .importzp CameraX, CameraY, CntrlPPU, NMIFlags, OffsetNMI_Data, Pointer, CopyrightViolation

    lda CameraY
    cmp #0
    bne @violation
    lda CameraX
    cmp #0
    bne @violation
    lda CntrlPPU
    cmp #$88
    bne @violation
    jsr wait_nmi_processed
    lda #READ
    ldx #$12
    sta NMI_Data + NMI_DATA::NMI_ID
    stx NMI_Data + NMI_DATA::NumOfChr
    lda #7
    ldx #$23
    stx NMI_Data + NMI_DATA::PPU_Addr
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    set NMI_Data + NMI_DATA::Chr+$12, #0
    sta OffsetNMI_Data
    set NMIFlags, #$80
    jsr wait_nmi_processed
    ldx #0

@next_id:
    lda NMI_Data + NMI_DATA::Chr,X
    cmp CopyrightIDTiles,X
    bne @violation
    inx
    cpx #$12
    bcc @next_id
    set NMI_Data + NMI_DATA::NumOfChr, #$10
    set NMI_Data + NMI_DATA::PPU_Addr+$12, #0
    store #CopyrightTiles, Pointer
    lda #$43
    ldx #5
    jsr compare_tiles   ; сompare screen tiles to detect copyright infringement
                        ; input: A - address of PPU >> 8
                        ;        X - number of blocks of 16 bytes
                        ; output: set Z flag if no violations are detected
    bne @violation
    lda #$69
    ldx #8
    jsr compare_tiles   ; сompare screen tiles to detect copyright infringement
                        ; input: A - address of PPU >> 8
                        ;        X - number of blocks of 16 bytes
                        ; output: set Z flag if no violations are detected
    bne @violation
    lda #$53
    ldx #5
    jsr compare_tiles   ; сompare screen tiles to detect copyright infringement
                        ; input: A - address of PPU >> 8
                        ;        X - number of blocks of 16 bytes
                        ; output: set Z flag if no violations are detected
    bne @violation
    rts
; ---------------------------------------------------------------------------

@violation:
    set CopyrightViolation, #$E5
    rts
; End of function check_copyrights


; =============== S U B R O U T I N E =======================================

; сompare screen tiles to detect copyright infringement
; input: A - address of PPU >> 8
;        X - number of blocks of 16 bytes
; output: set Z flag if no violations are detected

compare_tiles:
    pha
    asl A
    asl A
    asl A
    asl A
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    pla
    lsr A
    lsr A
    lsr A
    lsr A
    sta NMI_Data + NMI_DATA::PPU_Addr

@next_compare:
    set OffsetNMI_Data, #0
    set NMIFlags, #$80
    jsr wait_nmi_processed
    ldy #0

@compare:
    lda NMI_Data + NMI_DATA::Chr,Y
    cmp (Pointer),Y
    bne @violation
    iny
    cpy #$10
    bcc @compare
    clc
    lda #$10
    adc Pointer
    sta Pointer
    lda #0
    adc Pointer+1
    sta Pointer+1
    dex
    beq @violation
    clc
    lda #$10
    adc NMI_Data + NMI_DATA::PPU_Addr+1
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    lda #0
    adc NMI_Data + NMI_DATA::PPU_Addr
    sta NMI_Data + NMI_DATA::PPU_Addr
    bcc @next_compare

@violation:
    rts
; End of function compare_tiles

; ---------------------------------------------------------------------------
CopyrightIDTiles:
    .byte $43, $44, $45, $46, $47, $70, $69, $6A, $6B, $6C
    .byte $6D, $6E, $6F, $53, $54, $55, $56, $57

CopyrightTiles:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $38, $44, $BA, $A2, $BA, $44, $38
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $5E, $52, $5E, $42, $5E,   0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $F7, $94, $F7, $90, $F7,   0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $82, $82, $82, $82, $B2, $10
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $F7, $94, $F7, $10, $F7,   0

ItoiTiles:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $3A, $22, $3B,  $A, $3A, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BB, $92, $92, $92, $BB, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BB, $22, $BB, $A0, $BB, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BB, $29, $A9, $B9, $A9, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $B8, $28, $28, $28, $38, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $EE, $44, $44, $44, $E4, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $EE, $A4, $A4, $A4, $EE, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BC, $A4, $A4, $A4, $BC, 0

NintendoTiles:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $10, $12, $23, $23, $42, $42, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $5D, $49, $C9, $C9, $5D, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $2E, $A4, $E4, $64, $24, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $E9, $8D, $EF, $8B, $E9, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0,   0, $67, $55, $55, $55, $67, 0

; =============== S U B R O U T I N E =======================================


copyright_violation:
    .export copyright_violation
    .import darken_palette, update_animation, clear_oam_sprite, clear_nametables, wait_change_music, mmc3_bank_set
    .import text2stack, draw_tilepack_clear, PalNMIBG
    .importzp IRQCount, PointerTilePack, Row, Column, PrintSize, byte_71, DialogPage

    jsr darken_palette
    jsr update_animation
    jsr clear_oam_sprite
    jsr clear_nametables

loc_19A204:
    jsr wait_nmi_processed
    set IRQCount, #0
    sta CameraX
    sta CameraY
    lda #$FF
    jsr wait_change_music

loc_19A214:
    lda #$7E
    ldx #4
    jsr mmc3_bank_set
    lda #$7F
    ldx #5
    jsr mmc3_bank_set
    set PointerTilePack, #$F4
    set DialogPage, #6
    set Column, #2
    set Row, #2
    set PrintSize, #0
    sta byte_71

loc_19A238:
    jsr text2stack
    jsr draw_tilepack_clear
    cmp #0
    beq loc_19A24A
    ldy #0
    lda (PointerTilePack),Y
    cmp #0
    bne loc_19A238

loc_19A24A:
    jsr wait_nmi_processed
    ldx #$1F

@next_color:
    lda ViolationPalette,X
    sta PalNMIBG,X
    dex
    bpl @next_color
    set NMI_Data + NMI_DATA::NMI_ID, #4
    set NMI_Data + NMI_DATA::NumOfChr, #0
    sta OffsetNMI_Data
    set NMIFlags, #$80

infinite_loop:
    jmp infinite_loop
; End of function copyright_violation

; ---------------------------------------------------------------------------
ViolationPalette:
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY          ; PALETTE0
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY          ; PALETTE1
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY          ; PALETTE2
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY          ; PALETTE3
    .byte BLACK, BLACK, DARK_GRAY, WHITE                ; PALETTE0
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE     ; PALETTE1
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE   ; PALETTE2
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE  ; PALETTE3

; =============== S U B R O U T I N E =======================================

; copy bank 19 $B800-$BFFF in sram $6000-$67FF

copy_to_sram:
    .export copy_to_sram
    .import sram_write_enable, sram_read_enable, __SRAM_CODE_LOAD__, __SRAM_CODE_RUN__
    .importzp pTileID

    ldxa #__SRAM_CODE_LOAD__
    stxa Pointer
    ldxa #__SRAM_CODE_RUN__
    stxa pTileID
    jsr sram_write_enable
    ldx #8

@next_block:
    ldy #0

@next_byte:
    lda (Pointer),Y
    sta (pTileID),Y
    iny
    bne @next_byte
    inc Pointer+1
    inc pTileID+1
    dex
    bne @next_block
    jmp sram_read_enable
; End of function copy_to_sram


; =============== S U B R O U T I N E =======================================


sub_19A2B3:
    .export sub_19A2B3
    .import get_screen_pointers
    .importzp CoorX, MaxX, CoorY, MaxY, OffScreen, BlockIndex, AttributeOffset, AttributeScr

    CLC
    LDA CoorX
    ADC #$40
    AND #$80
    STA MaxX
    LDA CoorX+1
    ADC #0
    STA MaxX+1
    LDA CoorY
    STA MaxY
    LDA CoorY+1
    STA MaxY+1
    JSR get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr $6200 or $6300
                        ; ObjectScr $6400 or $6500
                        ; OffScreen - offset
    LDA CoorX
    ASL A
    ASL A
    ROL A
    AND #1
    TAX
    LDY OffScreen
    LDA #$10
    STA BlockIndex
    JSR sram_write_enable

@next_block:
    TYA                 ; 1 block - 4 screen rows, 1 attr row
    ORA #$F0
    STA AttributeOffset

@next_attribute:
    LDA (AttributeScr),Y
    STA AttributeCopy,X
    INY
    INX
    INC AttributeOffset
    BNE @next_attribute
    TYA
    SEC
    SBC #$10
    TAY
    LDA AttributeScr+1
    EOR #1
    STA AttributeScr+1
    LDA OffScreen
    AND #$F
    BEQ @no_attr_tail
    STA AttributeOffset

@next_attr_tail:
    LDA (AttributeScr),Y
    STA AttributeCopy,X
    INY
    INX
    DEC AttributeOffset
    BNE @next_attr_tail

@no_attr_tail:
    TYA
    CLC
    ADC #$10
    TAY
    LDA AttributeScr+1
    EOR #1
    STA AttributeScr+1
    DEC BlockIndex
    BNE @next_block
    JMP sram_read_enable
; End of function sub_19A2B3


; =============== S U B R O U T I N E =======================================


sub_19A31E:
    .export sub_19A31E
    .importzp FlagClearOAM300, NTAddr, ChrCount, LoopAddr

    SEC
    ROR FlagClearOAM300
    LDA Column
    ASL A
    ASL A
    ASL A
    STA NTAddr
    CLC
    LDA Column
    ADC ChrCount
    ASL A
    ASL A
    ASL A
    SEC
    SBC #4
    STA NTAddr+1        ; 7408
    LDA Row
    CLC
    AND #$1E
    ASL A
    ASL A
    ASL A
    STA LoopAddr        ; ROM:C84F, ROM:C881
    CLC
    ADC #$C
    STA LoopAddr+1      ; ROM:C84F, ROM:C881
    LDX #0

loc_19A346:
    LDA OAM_Cache,X
    CMP LoopAddr+1      ; ROM:C84F, ROM:C881
    BCS loc_19A365
    ADC #4
    CMP LoopAddr        ; ROM:C84F, ROM:C881
    BCC loc_19A365
    LDA OAM_Cache + OAM_TILE::PosX,X
    CMP NTAddr+1
    BCS loc_19A365
    ADC #4
    CMP NTAddr
    BCC loc_19A365
    LDA #$F0
    STA OAM_Cache,X

loc_19A365:
    INX
    INX
    INX
    INX
    BNE loc_19A346
    ASL FlagClearOAM300
    RTS
; End of function sub_19A31E


; =============== S U B R O U T I N E =======================================


setup_menu:
    .export setup_menu
    .import setup, cursor_update, CurrentGame, loc_EF7C
    .importzp byte_D6, pCursor, Buttons, CursorPosition

    jsr setup
    ldy #0

@next_row:
    tya
    pha
    jsr print_checkbox
    pla
    tay
    iny
    cpy #4
    bcc @next_row
    set byte_D6, #1
    ldxa #SetupCursor
    stxa pCursor
    jsr cursor_update

@next_choice:
    bit Buttons
    bpl @stop_choice
    lda CursorPosition
    tax
    lsr A
    lsr A
    lsr A
    tay
    jsr sram_write_enable
    lda SetupRows,X
    sta CurrentGame + PURE_SAVE::CmndBtn,Y
    cpy #3
    bne @no_speed
    txa
    and #7
    tax
    lda FightMsgSpd,X
    sta CurrentGame + PURE_SAVE::FightMsgSpd

@no_speed:
    jsr sram_read_enable
    lda Column
    pha
    lda Row
    pha
    jsr print_checkbox
    pla
    sta Row
    pla
    sta Column
    jsr loc_EF7C
    jmp @next_choice
; ---------------------------------------------------------------------------

@stop_choice:
    set byte_D6, #0
    rts
; End of function setup_menu


; =============== S U B R O U T I N E =======================================


print_checkbox:
    .import draw_symbol

    tya
    asl A
    asl A
    adc #$D
    sta Row
    lda CurrentGame + PURE_SAVE::CmndBtn,Y
    sta Pointer
    lda ColumnTable,Y
    sta Pointer+1
    ldx #5

next_check_box:
    stx Column
    lda #UNCHECK
    asl Pointer
    adc #0
    asl Pointer+1
    bcc @next_column
    jsr draw_symbol

@next_column:
    clc
    lda Column
    adc #4
    tax
    cpx #$19
    bcc next_check_box
    rts
; End of function print_checkbox

; ---------------------------------------------------------------------------
    ; CURSOR <8, 4, 4, 4, $C0, $3A, 4, $D, SetupRows>
SetupCursor:
    .byte 8, 4, 4, 4, $C0, $3A, 4, $D
    .word SetupRows
ColumnTable:
    .byte $A8, $A8, $A8, $F8
SetupRows:
    .byte $80,   0, $20,   0, 8, 0, 0, 0
    .byte $80,   0, $20,   0, 8, 0, 0, 0
    .byte $80,   0, $20,   0, 8, 0, 0, 0
    .byte $80, $40, $20, $10, 8, 0, 0, 0
FightMsgSpd:
    .byte $41, $31, $21, $11, 1

; =============== S U B R O U T I N E =======================================


bank_checksum:
    .importzp BankTable, AddrForJmp

    lda BankTable + BANK_TABLE::CPU_8K_8000
    pha
    ldx #0

loc_19A432:
    stx Pointer
    lda CheckSums1,X
    bmi loc_19A47A
    ldx #6
    jsr mmc3_bank_set
    lda #0
    ldx #$80
    sta pTileID
    stx pTileID+1
    lda #0
    sta Pointer+1
    sta AddrForJmp
    ldx #$20

loc_19A44E:
    ldy #0

loc_19A450:
    clc
    lda (pTileID),Y
    adc Pointer+1
    sta Pointer+1
    lda #0
    adc AddrForJmp
    sta AddrForJmp
    iny
    bne loc_19A450
    inc pTileID+1
    dex
    bne loc_19A44E
    ldx Pointer
    inx
    lda CheckSums1,X
    cmp AddrForJmp
    nop
    nop
    inx
    lda CheckSums1,X
    cmp Pointer+1
    nop
    nop
    inx
    bne loc_19A432

loc_19A47A:
    pla
    ldx #6
    jmp mmc3_bank_set
; End of function bank_checksum

; =============== S U B R O U T I N E =======================================


sub_19A480:
    jsr darken_palette
    jsr update_animation
    jsr clear_oam_sprite
    jsr clear_nametables
    jmp loc_19A204
; End of function sub_19A480

; ---------------------------------------------------------------------------
CheckSums1:
    .byte $13, $2C, $95, $14, $B, $82, $17, $ED, $EB, $19
    .byte $C7, $A8, $1C, $AC, $D5, $1E, $1C, $CF, $1F, $36
    .byte $FA, $FF, $57, $38

; =============== S U B R O U T I N E =======================================


sub_19A4A7:
    .export sub_19A4A7
    .import bank_A000_a, bank14_8000, redraw_screen, check_button_pressed, out_msg_button
    .importzp EnemyGroup

    LDA CurrentGame+PURE_SAVE::field_19
    BEQ locret_19A4CB
    LDY EnemyGroup
    LDX byte_19A504,Y
    LDA byte_19A4F2,X
    CMP CurrentGame+PURE_SAVE::Boy1+CHARACTER::Level
    BCS locret_19A4CB
    JSR sram_write_enable
    DEC CurrentGame+PURE_SAVE::field_19
    JSR sram_read_enable
    LDA #0
    STA EnemyGroup
    LDA CurrentGame+PURE_SAVE::field_19
    BEQ loc_19A4CC

locret_19A4CB:
    RTS
; ---------------------------------------------------------------------------

loc_19A4CC:
    LDA #$D1
    STA PointerTilePack
    LDA #6
    STA DialogPage
    LDA #$13
    ldyx #(out_msg_button-1)
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    LDA #$13
    ldyx #(check_button_pressed-1)
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    LDA #$13
    ldyx #(redraw_screen-1)
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    JMP bank14_8000
; End of function sub_19A4A7

; ---------------------------------------------------------------------------
byte_19A4F2:
    .byte 0, 3, 5, 7, $A, $C, $10, $12, $13, $15, $17, $1A
    .byte $1C, $1E, $23, $24, $25, $FF
byte_19A504:
    .byte 0, 1, 3, 1, 3, 1, 3, 3, 1, 3, 1, 1, 7, 1, 1, 2, $11
    .byte $11, $11, $11, 2, 2, 3, 3, $11, 3, 3, 3, 3, 3, 3
    .byte $11, 3, $11, 3, 3, $11, 3, 6, $11, 6, 6, $11, 8
    .byte 4, $11, $11, $11, 4, 4, 4, 4, 5, 5, 5, 4, 5, 5, 4
    .byte 4, 4, 5, 5, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $11, 6, 8, 8, $11, $11, $11, 7, 7, 7, 7, 7, $11
    .byte 6, 6, $11, $11, 6, $11, 2, 9, $11, $11, $11, 9, 9
    .byte $11, 9, 9, $11, $11, 9, $A, $A, $A, $A, $A, $A, $A
    .byte $A, $11, $11, $11, $B, $B, $B, $B, $B, $D, $D, $B
    .byte $B, $B, $B, $B, $11, $11, $11, $B, $11, $11, $11
    .byte $11, $11, $11, $11, $B, $B, $C, $C, $C, $C, $C, $11
    .byte $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $E, $E, $E, $E, $E, $F, $F, $F, $F, $10, $10, $10
    .byte $10, $10, $10, $10, $10, $10, $10, $10, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

; =============== S U B R O U T I N E =======================================


tomb_animation:
    .export tomb_animation
    .import one_color_palettes_save, back_palettes, wait_frames, SpriteTable
    .importzp WaitPressed, Dist

    jsr bank_checksum2
    lda #0
    sta WaitPressed
    lda #$13
    ldyx #(redraw_screen-1)
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    lda #$6A
    ldx #1
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    jsr wait_nmi_processed
    ldx #$DF

loc_19A5E8:
    lda SpriteTable,X
    sta SpriteTable + ANIM_SPRITE::Tiles+$20,X
    dex
    cpx #$FF
    bne loc_19A5E8
    ldx #$1F

loc_19A5F5:
    lda stru_19A6A1,X
    sta SpriteTable,X
    dex
    bpl loc_19A5F5
    clc
    lda CoorX
    adc #$60
    sta Pointer
    lda CoorX+1
    adc #0
    sta Pointer+1
    sec
    ldy #4
    lda (Dist),Y
    sbc Pointer
    sta Pointer
    iny
    lda (Dist),Y
    sbc Pointer+1
    sta Pointer+1
    lsr Pointer+1
    ror Pointer
    lsr Pointer+1
    ror Pointer
    clc
    lda CoorY
    adc #$A4
    sta pTileID
    lda CoorY+1
    adc #0
    sta pTileID+1
    sec
    ldy #6
    lda (Dist),Y
    sbc pTileID
    sta pTileID
    iny
    lda (Dist),Y
    sbc pTileID+1
    sta pTileID+1
    lsr pTileID+1
    ror pTileID
    lsr pTileID+1
    ror pTileID
    lda Pointer
    sta SpriteTable + ANIM_SPRITE::PosX
    sta SpriteTable + ANIM_SPRITE::PosX+8
    sta SpriteTable + ANIM_SPRITE::PosX+$10
    sta SpriteTable + ANIM_SPRITE::PosX+$18
    lda pTileID
    sta SpriteTable + ANIM_SPRITE::PosY
    sta SpriteTable + ANIM_SPRITE::PosY+8
    sta SpriteTable + ANIM_SPRITE::PosY+$10
    sta SpriteTable + ANIM_SPRITE::PosY+$18
    lda #$5A
    sta NMIFlags
    lda #$30
    jsr one_color_palettes_save
    jsr wait_nmi_processed
    lda #0
    sta SpriteTable + ANIM_SPRITE::ShiftX
    sta SpriteTable + ANIM_SPRITE::ShiftY
    sta SpriteTable + ANIM_SPRITE::Tiles+8
    sta SpriteTable + ANIM_SPRITE::Tiles+$10
    sta SpriteTable + ANIM_SPRITE::Tiles+$18
    lda Pointer
    sta SpriteTable + ANIM_SPRITE::PosX
    lda pTileID
    sta SpriteTable + ANIM_SPRITE::PosY
    lda #$FC
    sta SpriteTable + ANIM_SPRITE::pFrame
    lda #$99
    sta SpriteTable + ANIM_SPRITE::pFrame+1
    lda #1
    sta NMIFlags
    jsr back_palettes
    ldx #60
    jmp wait_frames
; End of function tomb_animation

; ---------------------------------------------------------------------------
stru_19A6A1:
    .import TombAnim

    .byte 4, 0, $32, $32, 1, 1
    .word TombAnim                 ; ANIM_SPRITE <4, 0, $32, $32, 1, 1, TombAnim>
    .byte 4, 0, $42, $32, 1, $FF
    .word TombAnim                 ; ANIM_SPRITE <4, 0, $42, $32, 1, $FF, TombAnim>
    .byte 4, 0, $32, $42, $FF, 1
    .word TombAnim                 ; ANIM_SPRITE <4, 0, $32, $42, $FF, 1, TombAnim>
    .byte 4, 0, $42, $42, $FF, $FF
    .word TombAnim                 ; ANIM_SPRITE <4, 0, $42, $42, $FF, $FF, TombAnim>

nullsub_7:
    .export nullsub_7
    rts

; =============== S U B R O U T I N E =======================================


dancing:
    .export dancing
    .import NewMusic

    jsr bank_checksum
    jsr update_animation
    lda #$FF
    jsr wait_change_music
    ldx #60
    jsr wait_frames     ; wait for a few frames input: X - number of frames
    lda #$23
    sta NewMusic
    lda #$F8
    ldx #$FF
    jsr update_anim
    lda #$10
    ldx #0
    jsr update_anim
    jsr steps_in_place
    jsr steps_in_place
    jsr side_steps
    jsr diag_steps
    jsr side_steps
    jsr diag_steps
    jsr steps_in_place
    jsr steps_back
    jsr steps_forward
    jsr steps_back
    jsr steps_forward
    jsr wait_nmi_processed
    ldx #$60
    jsr wait_frames     ; wait for a few frames input: X - number of frames
    jsr side_steps
    jsr diag_steps
    jsr side_steps
    jsr loc_19A7B0
    ldx #120
    jmp wait_frames     ; wait for a few frames input: X - number of frames
; End of function dancing


; =============== S U B R O U T I N E =======================================


side_steps:
    ldy #0
    bpl take_steps
; End of function side_steps


; =============== S U B R O U T I N E =======================================


diag_steps:
    ldy #8
    bpl take_steps
; End of function diag_steps


; =============== S U B R O U T I N E =======================================


steps_back:
    ldy #$10
    bpl take_steps
; End of function steps_back


; =============== S U B R O U T I N E =======================================


steps_forward:
    ldy #$18

take_steps:
    lda DanceSteps,Y
    ldx DanceSteps+1,Y
    jsr loc_19A7B4
    iny
    iny
    tya
    and #7
    bne take_steps
    rts
; End of function steps_forward

; ---------------------------------------------------------------------------
DanceSteps:
    .word     1,   $FF,     1,   $FF, $FF01,  $FF, $101,  $FF
    .word $FF00, $FF00, $FF00, $FF00,  $101, $1FF, $101, $1FF

; =============== S U B R O U T I N E =======================================


update_anim:
    stxa Pointer
    ldx #8

@next_sprite:
    jsr get_pframe
    lda #$30
    sta NMIFlags
    jsr get_anim_offset
    cpx #$20
    bcc @next_sprite
    jsr wait_nmi_processed
    lda #$30
    sta NMIFlags
    rts
; End of function update_anim


; =============== S U B R O U T I N E =======================================


get_pframe:
    jsr wait_nmi_processed
    clc
    lda Pointer
    adc SpriteTable + ANIM_SPRITE::pFrame,X
    sta SpriteTable + ANIM_SPRITE::pFrame,X
    lda Pointer+1
    adc SpriteTable + ANIM_SPRITE::pFrame+1,X
    sta SpriteTable + ANIM_SPRITE::pFrame+1,X
    rts
; End of function get_pframe


; =============== S U B R O U T I N E =======================================


shift_characters:
    cpx #$20
    bcs reset_shift
    lda pTileID
    sta SpriteTable + ANIM_SPRITE::ShiftX,X
    lda pTileID+1
    sta SpriteTable + ANIM_SPRITE::ShiftY,X
    rts
; End of function shift_characters


; =============== S U B R O U T I N E =======================================


reset_shift:
    lda #0
    sta SpriteTable + ANIM_SPRITE::ShiftX,X
    sta SpriteTable + ANIM_SPRITE::ShiftY,X
    rts
; End of function reset_shift


; =============== S U B R O U T I N E =======================================


get_anim_offset:
    clc
    txa
    adc #8
    tax
    rts
; End of function get_anim_offset


; =============== S U B R O U T I N E =======================================


steps_in_place:
    jsr loc_19A7B0

loc_19A7B0:
    lda #0
    ldx #0

loc_19A7B4:
    sta pTileID
    stx pTileID+1
    jsr loc_19A7BB

loc_19A7BB:
    lda #4
    ldx #0
    sta Pointer
    stx Pointer+1
    ldx #8

@next_shift:
    jsr get_pframe
    jsr shift_characters
    jsr get_anim_offset
    bcc @next_shift
    lda #2
    sta NMIFlags
    ldx #8

loc_19A7D6:
    jsr wait_nmi_processed
    jsr reset_shift
    jsr get_anim_offset
    bcc loc_19A7D6
    lda #$16
    sta NMIFlags
    ldxa #$FFFC
    stxa Pointer
    ldx #8

loc_19A7EF:
    jsr get_pframe
    jsr get_anim_offset
    bcc loc_19A7EF
    lda #$18
    sta NMIFlags
    rts
; End of function steps_in_place


; =============== S U B R O U T I N E =======================================


waste_PP:
    .export waste_PP
    .import Character
    .importzp Value, CharacterOffset

    ldy CharacterOffset
    sec
    lda Character + CHARACTER::MaxPP,Y
    sbc Value
    sta Character + CHARACTER::MaxPP,Y
    lda Character + CHARACTER::MaxPP+1,Y
    sbc Value+1
    sta Character + CHARACTER::MaxPP+1,Y
    bcs locret_19A819
    lda #0
    sta Character + CHARACTER::MaxPP,Y
    sta Character + CHARACTER::MaxPP+1,Y

locret_19A819:
    rts
; End of function waste_PP


; =============== S U B R O U T I N E =======================================


bank_checksum2:
    lda BankTable + BANK_TABLE::CPU_8K_8000
    pha
    ldx #0

loc_19A81F:
    stx Pointer
    lda CheckSums2,X
    bmi loc_19A867
    ldx #6
    jsr mmc3_bank_set
    lda #0
    ldx #$80
    sta pTileID
    stx pTileID+1
    lda #0
    sta Pointer+1
    sta AddrForJmp
    ldx #$20

loc_19A83B:
    ldy #0

loc_19A83D:
    clc
    lda (pTileID),Y
    adc Pointer+1
    sta Pointer+1
    lda #0
    adc AddrForJmp
    sta AddrForJmp
    iny
    bne loc_19A83D
    inc pTileID+1
    dex
    bne loc_19A83B
    ldx Pointer
    inx
    lda CheckSums2,X
    cmp AddrForJmp
    nop
    nop
    inx
    lda CheckSums2,X
    cmp Pointer+1
    nop
    nop
    inx
    bne loc_19A81F

loc_19A867:
    pla
    ldx #6
    jmp mmc3_bank_set
; End of function bank_checksum2

; =============== S U B R O U T I N E =======================================


sub_19A86D:
    jsr darken_palette
    jsr update_animation
    jsr clear_oam_sprite
    jsr clear_nametables
    jsr wait_nmi_processed
    lda #0
    sta IRQCount
    sta CameraX
    sta CameraY
    lda #$FF
    jsr wait_change_music
    jmp loc_19A214
; End of function sub_19A86D

; ---------------------------------------------------------------------------
CheckSums2:
    .byte $13, $2C, $95, $14, $B, $82, $17, $ED, $EB, $19
    .byte $C7, $A8, $1C, $AC, $D5, $1E, $1C, $CF, $1F, $36
    .byte $FA, $FF, $57, $38

;.align $1800
