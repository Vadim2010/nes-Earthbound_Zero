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
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda #$7F
    ldx #5
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
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
    lda #UNCHECK            ; #$94
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


sub_19A42D:
    .importzp BankTable, AddrForJmp

    LDA BankTable + BANK_TABLE::CPU_8K_8000
    PHA
    LDX #0

loc_19A432:
    STX Pointer
    LDA byte_19A48F,X
    BMI loc_19A47A
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    LDA #0
    LDX #$80
    STA pTileID
    STX pTileID+1
    LDA #0
    STA Pointer+1
    STA AddrForJmp
    LDX #$20

loc_19A44E:
    LDY #0

loc_19A450:
    CLC
    LDA (pTileID),Y
    ADC Pointer+1
    STA Pointer+1
    LDA #0
    ADC AddrForJmp
    STA AddrForJmp
    INY
    BNE loc_19A450
    INC pTileID+1
    DEX
    BNE loc_19A44E
    LDX Pointer
    INX
    LDA byte_19A48F,X
    CMP AddrForJmp
    NOP
    NOP
    INX
    LDA byte_19A48F,X
    CMP Pointer+1
    NOP
    NOP
    INX
    BNE loc_19A432

loc_19A47A:
    PLA
    LDX #6
    JMP mmc3_bank_set   ; Set memory bank A - bank number, X - mode
; End of function sub_19A42D

; =============== S U B R O U T I N E =======================================


sub_19A480:
    JSR darken_palette
    JSR update_animation
    JSR clear_oam_sprite
    JSR clear_nametables
    JMP loc_19A204
; End of function sub_19A480

; ---------------------------------------------------------------------------
byte_19A48F:
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


sub_19A5CC:
    .export sub_19A5CC
    .import one_color_palettes_save, back_palettes, wait_frames, SpriteTable
    .importzp WaitPressed, Dist

    JSR sub_19A81A
    LDA #0
    STA WaitPressed
    LDA #$13
    ldyx #(redraw_screen-1)
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    LDA #$6A
    LDX #1
    JSR mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    JSR wait_nmi_processed
    LDX #$DF

loc_19A5E8:
    LDA SpriteTable,X
    STA SpriteTable + ANIM_SPRITE::Tiles+$20,X
    DEX
    CPX #$FF
    BNE loc_19A5E8
    LDX #$1F

loc_19A5F5:
    LDA stru_19A6A1,X
    STA SpriteTable,X
    DEX
    BPL loc_19A5F5
    CLC
    LDA CoorX
    ADC #$60
    STA Pointer
    LDA CoorX+1
    ADC #0
    STA Pointer+1
    SEC
    LDY #4
    LDA (Dist),Y
    SBC Pointer
    STA Pointer
    INY
    LDA (Dist),Y
    SBC Pointer+1
    STA Pointer+1
    LSR Pointer+1
    ROR Pointer
    LSR Pointer+1
    ROR Pointer
    CLC
    LDA CoorY
    ADC #$A4
    STA pTileID
    LDA CoorY+1
    ADC #0
    STA pTileID+1
    SEC
    LDY #6
    LDA (Dist),Y
    SBC pTileID
    STA pTileID
    INY
    LDA (Dist),Y
    SBC pTileID+1
    STA pTileID+1
    LSR pTileID+1
    ROR pTileID
    LSR pTileID+1
    ROR pTileID
    LDA Pointer
    STA SpriteTable + ANIM_SPRITE::PosX
    STA SpriteTable + ANIM_SPRITE::PosX+8
    STA SpriteTable + ANIM_SPRITE::PosX+$10
    STA SpriteTable + ANIM_SPRITE::PosX+$18
    LDA pTileID
    STA SpriteTable + ANIM_SPRITE::PosY
    STA SpriteTable + ANIM_SPRITE::PosY+8
    STA SpriteTable + ANIM_SPRITE::PosY+$10
    STA SpriteTable + ANIM_SPRITE::PosY+$18
    LDA #$5A
    STA NMIFlags
    LDA #$30
    JSR one_color_palettes_save
    JSR wait_nmi_processed
    LDA #0
    STA SpriteTable + ANIM_SPRITE::ShiftX
    STA SpriteTable + ANIM_SPRITE::ShiftY
    STA SpriteTable + ANIM_SPRITE::Tiles+8
    STA SpriteTable + ANIM_SPRITE::Tiles+$10
    STA SpriteTable + ANIM_SPRITE::Tiles+$18
    LDA Pointer
    STA SpriteTable + ANIM_SPRITE::PosX
    LDA pTileID
    STA SpriteTable + ANIM_SPRITE::PosY
    LDA #$FC
    STA SpriteTable + ANIM_SPRITE::pFrame
    LDA #$99
    STA SpriteTable + ANIM_SPRITE::pFrame+1
    LDA #1
    STA NMIFlags
    JSR back_palettes
    LDX #60
    JMP wait_frames     ; wait for a few frames input: X - number of frames
; End of function sub_19A5CC

; ---------------------------------------------------------------------------
stru_19A6A1:
    .import stru_1599F8

    .byte 4, 0, $32, $32, 1, 1
    .word stru_1599F8                 ; ANIM_SPRITE <4, 0, $32, $32, 1, 1, stru_1599F8>
    .byte 4, 0, $42, $32, 1, $FF
    .word stru_1599F8                 ; ANIM_SPRITE <4, 0, $42, $32, 1, $FF, stru_1599F8>
    .byte 4, 0, $32, $42, $FF, 1
    .word stru_1599F8                 ; ANIM_SPRITE <4, 0, $32, $42, $FF, 1, stru_1599F8>
    .byte 4, 0, $42, $42, $FF, $FF
    .word stru_1599F8                 ; ANIM_SPRITE <4, 0, $42, $42, $FF, $FF, stru_1599F8>

nullsub_7:
    .export nullsub_7
    rts

; =============== S U B R O U T I N E =======================================


sub_19A6C2:
    .export sub_19A6C2
    .import NewMusic

    JSR sub_19A42D
    JSR update_animation
    LDA #$FF
    JSR wait_change_music
    LDX #60
    JSR wait_frames     ; wait for a few frames input: X - number of frames
    LDA #$23
    STA NewMusic
    LDA #$F8
    LDX #$FF
    JSR sub_19A75E
    LDA #$10
    LDX #0
    JSR sub_19A75E
    JSR sub_19A7AD
    JSR sub_19A7AD
    JSR sub_19A71F
    JSR sub_19A723
    JSR sub_19A71F
    JSR sub_19A723
    JSR sub_19A7AD
    JSR sub_19A727
    JSR sub_19A72B
    JSR sub_19A727
    JSR sub_19A72B
    JSR wait_nmi_processed
    LDX #$60
    JSR wait_frames     ; wait for a few frames input: X - number of frames
    JSR sub_19A71F
    JSR sub_19A723
    JSR sub_19A71F
    JSR loc_19A7B0
    LDX #120
    JMP wait_frames     ; wait for a few frames input: X - number of frames
; End of function sub_19A6C2


; =============== S U B R O U T I N E =======================================


sub_19A71F:
    LDY #0
    BPL loc_19A72D
; End of function sub_19A71F


; =============== S U B R O U T I N E =======================================


sub_19A723:
    LDY #8
    BPL loc_19A72D
; End of function sub_19A723


; =============== S U B R O U T I N E =======================================


sub_19A727:
    LDY #$10
    BPL loc_19A72D
; End of function sub_19A727


; =============== S U B R O U T I N E =======================================


sub_19A72B:
    LDY #$18

loc_19A72D:
    LDA byte_19A73E,Y
    LDX byte_19A73E+1,Y
    JSR loc_19A7B4
    INY
    INY
    TYA
    AND #7
    BNE loc_19A72D
    RTS
; End of function sub_19A72B

; ---------------------------------------------------------------------------
byte_19A73E:
    .byte 1, 0, $FF, 0, 1, 0, $FF, 0, 1, $FF, $FF, 0, 1, 1
    .byte $FF, 0, 0, $FF, 0, $FF, 0, $FF, 0, $FF, 1, 1, $FF
    .byte 1, 1, 1, $FF, 1

; =============== S U B R O U T I N E =======================================


sub_19A75E:
    stxa Pointer
    LDX #8

loc_19A764:
    JSR sub_19A77A
    LDA #$30
    STA NMIFlags
    JSR sub_19A7A7
    CPX #$20
    BCC loc_19A764
    JSR wait_nmi_processed
    LDA #$30
    STA NMIFlags
    RTS
; End of function sub_19A75E


; =============== S U B R O U T I N E =======================================


sub_19A77A:
    JSR wait_nmi_processed
    CLC
    LDA Pointer
    ADC SpriteTable + ANIM_SPRITE::pFrame,X
    STA SpriteTable + ANIM_SPRITE::pFrame,X
    LDA Pointer+1
    ADC SpriteTable + ANIM_SPRITE::pFrame+1,X
    STA SpriteTable + ANIM_SPRITE::pFrame+1,X
    RTS
; End of function sub_19A77A


; =============== S U B R O U T I N E =======================================


sub_19A78F:
    CPX #$20
    BCS sub_19A79E
    LDA pTileID
    STA SpriteTable + ANIM_SPRITE::ShiftX,X
    LDA pTileID+1
    STA SpriteTable + ANIM_SPRITE::ShiftY,X
    RTS
; End of function sub_19A78F


; =============== S U B R O U T I N E =======================================


sub_19A79E:
    LDA #0
    STA SpriteTable + ANIM_SPRITE::ShiftX,X
    STA SpriteTable + ANIM_SPRITE::ShiftY,X
    RTS
; End of function sub_19A79E


; =============== S U B R O U T I N E =======================================


sub_19A7A7:
    CLC
    TXA
    ADC #8
    TAX
    RTS
; End of function sub_19A7A7


; =============== S U B R O U T I N E =======================================


sub_19A7AD:
    .import RESET_vector

    JSR loc_19A7B0

loc_19A7B0:
    LDA #0
    LDX #0

loc_19A7B4:
    STA pTileID
    STX pTileID+1
    JSR loc_19A7BB

loc_19A7BB:
    LDA #4
    LDX #0
    STA Pointer
    STX Pointer+1
    LDX #8

loc_19A7C5:
    JSR sub_19A77A
    JSR sub_19A78F
    JSR sub_19A7A7
    BCC loc_19A7C5
    LDA #2
    STA NMIFlags
    LDX #8

loc_19A7D6:
    JSR wait_nmi_processed
    JSR sub_19A79E
    JSR sub_19A7A7
    BCC loc_19A7D6
    LDA #$16
    STA NMIFlags
    ldxa #RESET_vector
    stxa Pointer
    LDX #8

loc_19A7EF:
    JSR sub_19A77A
    JSR sub_19A7A7
    BCC loc_19A7EF
    LDA #$18
    STA NMIFlags
    RTS
; End of function sub_19A7AD


; =============== S U B R O U T I N E =======================================


waste_PP:
    .export waste_PP
    .import Character
    .importzp Value, CharacterOffset

    LDY CharacterOffset
    SEC
    LDA Character + CHARACTER::MaxPP,Y
    SBC Value
    STA Character + CHARACTER::MaxPP,Y
    LDA Character + CHARACTER::MaxPP+1,Y
    SBC Value+1
    STA Character + CHARACTER::MaxPP+1,Y
    BCS locret_19A819
    LDA #0
    STA Character + CHARACTER::MaxPP,Y
    STA Character + CHARACTER::MaxPP+1,Y

locret_19A819:
    RTS
; End of function waste_PP


; =============== S U B R O U T I N E =======================================


sub_19A81A:
    LDA BankTable + BANK_TABLE::CPU_8K_8000
    PHA
    LDX #0

loc_19A81F:
    STX Pointer
    LDA byte_19A88C,X
    BMI loc_19A867
    LDX #6
    JSR mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    LDA #0
    LDX #$80
    STA pTileID
    STX pTileID+1
    LDA #0
    STA Pointer+1
    STA AddrForJmp
    LDX #$20

loc_19A83B:
    LDY #0

loc_19A83D:
    CLC
    LDA (pTileID),Y
    ADC Pointer+1
    STA Pointer+1
    LDA #0
    ADC AddrForJmp
    STA AddrForJmp
    INY
    BNE loc_19A83D
    INC pTileID+1
    DEX
    BNE loc_19A83B
    LDX Pointer
    INX
    LDA byte_19A88C,X
    CMP AddrForJmp
    NOP
    NOP
    INX
    LDA byte_19A88C,X
    CMP Pointer+1
    NOP
    NOP
    INX
    BNE loc_19A81F

loc_19A867:
    PLA
    LDX #6
    JMP mmc3_bank_set   ; Set memory bank A - bank number, X - mode
; End of function sub_19A81A

; =============== S U B R O U T I N E =======================================


sub_19A86D:
    JSR darken_palette
    JSR update_animation
    JSR clear_oam_sprite
    JSR clear_nametables
    JSR wait_nmi_processed
    LDA #0
    STA IRQCount
    STA CameraX
    STA CameraY
    LDA #$FF
    JSR wait_change_music
    JMP loc_19A214
; End of function sub_19A86D

; ---------------------------------------------------------------------------
byte_19A88C:
    .byte $13, $2C, $95, $14, $B, $82, $17, $ED, $EB, $19
    .byte $C7, $A8, $1C, $AC, $D5, $1E, $1C, $CF, $1F, $36
    .byte $FA, $FF, $57, $38

.align $1800