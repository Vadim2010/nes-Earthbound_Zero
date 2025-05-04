.include "macros.inc"
.include "palette.inc"
.include "..\res\charmap.inc"
.include "..\res\framecomm.inc"
.include "..\res\structures.inc"

.segment "SRAM_CODE"

.export copy_gameslot, get_pointer_tilepak, get_cursor, set_pos_6_5, copy_pure_save
.export set_anim_sprite, get_anim_sprite, next_anim_sprite, get_next_string
.export Names, AlphabeticalList, GameStory, Nowadays, TryAgain, SameName
.export Boy1, Girl, Boy2, Boy3, Food, ScrAttr, Cur_62E8, Cur_62F0, CHRBank_0, Palettes

copy_gameslot:
    .import GameSlotCopy

    tay
    beq @copy
    ldy #4

@copy:
    lda GameSlot,Y
    sta GameSlotCopy,X
    lda GameSlot+1,Y
    sta GameSlotCopy+1,X
    lda GameSlot+2,Y
    sta GameSlotCopy+2,X
    lda GameSlot+3,Y
    sta GameSlotCopy+3,X
    rts
; End of function copy_gameslot


; =============== S U B R O U T I N E =======================================

; returns a pointer from the TilepackTable
; Input: X - offset in the TilepackTable table
; Output: PointerTilePack - pointer from the TilepackTable table

get_pointer_tilepak:
    .importzp PointerTilePack

    lda TilepackTable,X
    sta PointerTilePack
    lda TilepackTable+1,X
    sta PointerTilePack+1
    rts
; End of function get_pointer_tilepak


; =============== S U B R O U T I N E =======================================


get_cursor:
    .importzp pCursor

    lda Cursors,X
    sta pCursor
    lda Cursors+1,X
    sta pCursor+1
    rts
; End of function get_cursor


; =============== S U B R O U T I N E =======================================


set_pos_6_5:
    .importzp Column, Row, byte_D6

    lda #$FF
    sta byte_D6
    ldx #6
    ldy #5
    stx Column
    sty Row
    rts
; End of function set_pos_6_5


; =============== S U B R O U T I N E =======================================


copy_pure_save:
    .import CurrentGame, PureSave
    .importzp Dist, Source

    pha
    ldxa #CurrentGame
    stxa Dist
    ldxa #(PureSave+$2000)
    stxa Source
    ldx #2
    ldy #0

@next_byte:
    lda (Source),Y
    sta (Dist),Y
    iny
    bne @next_byte
    inc Dist+1
    inc Source+1
    dex
    bne @next_byte
    lda #0

@clear:
    sta (Dist),Y
    iny
    bne @clear
    pla
    ora CurrentGame + PURE_SAVE::GameNumber
    sta CurrentGame + PURE_SAVE::GameNumber
    rts
; End of function copy_pure_save

; ---------------------------------------------------------------------------
TilepackTable:
    .word ContinueGame1, NewGame1, ContinueGame2, NewGame2
    .word ContinueGame3, NewGame3, ClearBottomScreen, EraseDialog, ToWhich

Cursors:
    .word CopyGame1, CopyGame1, CopyGame1, CopyGame2
    .word CopyGame1, CopyGame3, GameMenu, Erase

ClearBottomScreen:
    tile_position 4, 20
    fill " ", 24
    end_row

    fill " ", 24
    end_row

    fill " ", 24
    end_row

    fill " ", 24
    end_frame

    fill " ", 24
    end_frame

EraseDialog:
    tile_position 6, 20
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 18
    .byte FRAME_TOP_RIGHT
    end_row

    left
    .byte " ", $A6
    convert CurrentGame+PURE_SAVE::Boy1+CHARACTER::Name, 0, 8
    .byte "Lvl"
    convert CurrentGame+PURE_SAVE::Boy1+CHARACTER::Level, 1, 2
    .byte $A6, "  "
    right
    end_row

    left
    .byte " will vanish. OK? "
    right
    end_row

    left
    .byte "     Yes  No      "
    right
    end_frame

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 18
    .byte FRAME_BOTTOM_RIGHT
    end_frame

ToWhich:
    tile_position 8, 21
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 14
    .byte FRAME_TOP_RIGHT
    end_row

    left
    .byte "   To which?  "
    right
    end_frame

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 14
    .byte FRAME_BOTTOM_RIGHT
    end_frame

ContinueGame1:
    .import Game1

    tile_position 3, 1
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT
    convert Game1+PURE_SAVE::Boy1+CHARACTER::Name, 0, 8
    .byte "Lvl"
    convert Game1+PURE_SAVE::Boy1+CHARACTER::Level, 1, 2
    fill FRAME_TOP, 7
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset FinalFrame1

ContinueGame2:
    .import Game2

    tile_position 3, 7
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT
    convert Game2+PURE_SAVE::Boy1+CHARACTER::Name, 0, 8
    .byte "Lvl"
    convert Game2+PURE_SAVE::Boy1+CHARACTER::Level, 1, 2
    fill FRAME_TOP, 7
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset FinalFrame1

ContinueGame3:
    .import Game3

    tile_position 3, 13
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT
    convert Game3+PURE_SAVE::Boy1+CHARACTER::Name, 0, 8
    .byte "Lvl"
    convert Game3+PURE_SAVE::Boy1+CHARACTER::Level, 1, 2
    fill FRAME_TOP, 7
    .byte FRAME_TOP_RIGHT
    end_row

FinalFrame1:
    .byte " "
    left
    .byte " Continue  Copy Erase "
    right
    end_frame

    .byte " ", FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 22
    .byte FRAME_BOTTOM_RIGHT
    end_frame

NewGame1:
    tile_position 3, 1
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT, "GAME(1)"
    fill FRAME_TOP, 13
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset StartUp

NewGame2:
    tile_position 3, 7
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT, "GAME(2)"
    fill FRAME_TOP, 13
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset StartUp

NewGame3:
    tile_position 3, 13
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT, "GAME(3)"
    fill FRAME_TOP, 13
    .byte FRAME_TOP_RIGHT
    end_row

StartUp:
    .byte " "
    left
    fill " ", 6
    .byte "Start up"
    fill " ", 8
    right
    end_frame

    .byte " ", FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 22
    .byte FRAME_BOTTOM_RIGHT
    end_frame

CopyGame1:
    .byte 1, 3, 0, 6, $C0, $3A, 3, 4
    .word CopySlots1 ; CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, CopySlots1>

CopyGame2:
    .byte 1, 3, 0, 6, $C0, $3A, 3, 4
    .word CopySlots2 ; CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, CopySlots2>

CopyGame3:
    .byte 1, 3, 0, 6, $C0, $3A, 3, 4
    .word CopySlots3 ; CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, CopySlots3>

GameMenu:
    .byte 4, 3, 5, 6, $80, $3A, 5, 5
    .word GameSlotCopy              ; CURSOR <4, 3, 5, 6, $80, $3A, 5, 5, $584>

Erase:
    .byte 2, 1, 5, 0, $80, $3A, 11, 26
    .word ConfirmMenu ; CURSOR <2, 1, 5, 0, $80, $3A, $B, $1A, ConfirmMenu>

GameSlot:
    .byte $80, 0, $81, $82      ; busy slot <$80, 0, $81, $82>
    .byte 0, $83, 0, 0          ; free slot <0, $83, 0, 0>

ConfirmMenu:
    .byte 1, 2

CopySlots1:
    .byte 0, 3, 5

CopySlots2:
    .byte 1, 0, 5

CopySlots3:
    .byte 1, 3, 0

CHRBank_0:
    .byte $60, 0, $7C, $7D, $7E, $7F; Banks

Palettes:
    .byte BLACK, BLACK, WHITE, WHITE                            ; PALETTE0
    .byte BLACK, LIGHTEST_GREEN, MEDIUM_GRAY, LIGHTEST_GRAY     ; PALETTE1
    .byte BLACK, LIGHTEST_GREEN, LIGHT_REDVIOLET, MEDIUM_GREEN  ; PALETTE2
    .byte BLACK, LIGHTEST_GREEN, WHITE, MEDIUM_INDIGO           ; PALETTE3
    .byte BLACK, BLACK, DARK_GRAY, WHITE                        ; PALETTE0
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE             ; PALETTE1
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE           ; PALETTE2
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE          ; PALETTE3

; =============== S U B R O U T I N E =======================================


set_anim_sprite:
    .import SpriteTable
    .importzp pTileID, AddrForJmp, Pointer, NMIFlags

    lda #4
    sta SpriteTable,Y
    lda pTileID
    sta SpriteTable + ANIM_SPRITE::TileID,Y
    lda AddrForJmp
    sta SpriteTable + ANIM_SPRITE::PosX,Y
    lda AddrForJmp+1
    sta SpriteTable + ANIM_SPRITE::PosY,Y
    lda #0
    sta SpriteTable + ANIM_SPRITE::ShiftX,Y
    sta SpriteTable + ANIM_SPRITE::ShiftY,Y
    lda Pointer
    sta SpriteTable + ANIM_SPRITE::pFrame,Y
    lda Pointer+1
    sta SpriteTable + ANIM_SPRITE::pFrame+1,Y
    lda #1
    sta NMIFlags
    rts
; End of function set_anim_sprite


; =============== S U B R O U T I N E =======================================


get_anim_sprite:
    lda #$50
    sta AddrForJmp
    lda #8
    sta AddrForJmp+1
    lda #0
    sta pTileID
    lda #$10
    sta Pointer
    lda #$80
    sta Pointer+1
    rts
; End of function get_anim_sprite


; =============== S U B R O U T I N E =======================================


next_anim_sprite:
    clc
    lda Pointer
    adc #$20
    sta Pointer
    lda Pointer+1
    adc #0
    sta Pointer+1
    clc
    lda AddrForJmp+1
    adc #$18
    sta AddrForJmp+1
    clc
    tya
    adc #8
    tay
    rts
; End of function next_anim_sprite


; =============== S U B R O U T I N E =======================================


get_next_string:
    clc
    lda pTileID
    adc #$10
    sta pTileID
    lda pTileID+1
    adc #0
    sta pTileID+1
    clc
    lda AddrForJmp+1
    adc #2
    sta AddrForJmp+1
    rts
; End of function get_next_string

; ---------------------------------------------------------------------------
.import AnimBoy1, AnimGirl, AnimBoy2, AnimBoy3

Boy1:
    .word AnimBoy1 + $10, AskBoy1Name, CurrentGame + PURE_SAVE::Boy1 + CHARACTER::Name

Girl:
    .word AnimGirl + $10, AskGirlName, CurrentGame + PURE_SAVE::Girl + CHARACTER::Name

Boy2:
    .word AnimBoy2 + $10, AskBoy2Name, CurrentGame + PURE_SAVE::Boy2 + CHARACTER::Name

Boy3:
    .word AnimBoy3 + $10, AskBoy3Name, CurrentGame + PURE_SAVE::Boy3 + CHARACTER::Name

Food:
    .word 0, AskFoodName, CurrentGame + GAME_SAVE::Food

Cur_62E8:
    .byte $10, 6, 1, 2, $D0, 1, 8, $E                   ; CURSOR_SHORT <$10, 6, 1, 2, $D0, 1, 8, $E>

Cur_62F0:
    .byte 2, 1, 4, 0, $80, $3A, $C, $18
    .word byte_1962FA                         ; CURSOR <2, 1, 4, 0, $80, $3A, $C, $18, byte_1962FA>

byte_1962FA:
    .byte 1, 1, 1

ScrAttr:
    .byte 8, $40, $23, $C0, $FF, 0

AskBoy1Name:
    .byte "What is this", 1
    .byte "boy's name?", 0

AskGirlName:
    .byte "What is this", 1
    .byte "girl's name?", 0

AskBoy2Name:
    .byte "This other", 1
    .byte "boy's name?", 0

AskBoy3Name:
    .byte "This last", 1
    .byte "boy's name?", 0

AskFoodName:
    .byte "What is your", 1
    .byte "favorite food?", 0

TryAgain:
    .byte "Please change", 1
    .byte "this name.", 0

SameName:
    .byte "A character in ", 1
    .byte "this game has  ", 1
    .byte "that name. Try ", 1
    .byte "again, and use ", 1
    .byte "only capital   ", 1
    .byte "letters.       ", 0

Names:
    .byte "Mary?", 1
    .byte "Suzy?", 1
    .byte "George?", 1
    .byte "Maria?", 1
    .byte "Mimmie?", 1
    .byte "Minnie?", 1
    .byte "Pippi?", 1
    .byte "Duncan?", 1
    .byte "Laura?", 1
    .byte "Giegue?", 1
    .byte "Abbott?", 1
    .byte "Nancy?", 1
    .byte "Ullrich", 1
    .byte "Wally?", 1
    .byte "Kelly?", 1
    .byte "Juana?", 1
    .byte " ", 1, 0

AlphabeticalList:
    .byte "ABCDEFG HIJKLMN", 0
    .byte "OPQRSTU VWXYZ.'", 0
    .byte "abcdefg hijklmn", 0
    .byte "opqrstu vwxyz-:", 0
    .byte 0, 0, $A1, 0, 0, 0, 0, 0, 0, $A2, 0, 0, 0, 0, 0, 0    ; cursor position Back, End
    .byte 0, 0, 0, $A3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0      ; cursor position Previous

GameStory:
    .byte "In the early 1900's, a dark", 1
    .byte "shadow covered a small", 1
    .byte "country town in rural", 1
    .byte "America.  At that time, a", 1
    .byte "young married couple", 1
    .byte "vanished mysteriously from", 1
    .byte "their home.", 1
    .byte " ", 1
    .byte "The man's name was George,", 1
    .byte "the woman's name was Maria.", 1
    .byte " ", 1
    .byte "Two years later, as suddenly", 1
    .byte "as he left, George returned.", 1
    .byte "He never told anyone where", 1
    .byte "he had been or what he had", 1 
    .byte "done.  But, he began an odd", 1
    .byte "study, all by himself.", 1
    .byte " ", 1
    .byte "As for Maria, his wife...", 1
    .byte "She never returned.", 0

Nowadays:
    .byte "80 years have passed", 1
    .byte " ", 1
    .byte "since then.", 0
