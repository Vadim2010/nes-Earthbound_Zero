.include "ram.inc"
.include "..\res\sram.inc"
.include "..\res\charmap.inc"
.include "..\res\framecomm.inc"
.include "palette.inc"

.segment "SRAM_CODE"

; ===========================================================================

; Segment type: Pure code
;.segment SRAM19
; * =  $6000

; =============== S U B R O U T I N E =======================================
OFF     = $B800
SRAM    = $6000
NEW_OFF = OFF - SRAM

.export sub_196000, get_pointer_tilepak, get_cursor, set_pos_6_5, copy_pure_save
.export set_anim_sprite, get_anim_sprite, next_anim_sprite, get_next_string
.export Names, AlphabeticalList, GameStory, Nowadays, TryAgain, SameName
.export Boy1, Girl, Boy2, Boy3, Food

sub_196000          = sub_196000_copy - NEW_OFF
get_pointer_tilepak = get_pointer_tilepak_copy - NEW_OFF
get_cursor          = get_cursor_copy - NEW_OFF
set_pos_6_5         = set_pos_6_5_copy - NEW_OFF
copy_pure_save      = copy_pure_save_copy - NEW_OFF

set_anim_sprite     = set_anim_sprite_copy - NEW_OFF
get_anim_sprite     = get_anim_sprite_copy - NEW_OFF
next_anim_sprite    = next_anim_sprite_copy - NEW_OFF
get_next_string     = get_next_string_copy - NEW_OFF

Names               = Names_copy - NEW_OFF
AlphabeticalList    = AlphabeticalList_copy - NEW_OFF
GameStory           = GameStory_copy - NEW_OFF
Nowadays            = Nowadays_copy - NEW_OFF

TryAgain            = TryAgain_copy - NEW_OFF
SameName            = SameName_copy - NEW_OFF

Boy1 = Boy1_copy - NEW_OFF
Girl = Girl_copy - NEW_OFF
Boy2 = Boy2_copy - NEW_OFF
Boy3 = Boy3_copy - NEW_OFF
Food = Food_copy - NEW_OFF

sub_196000_copy:
    TAY
    BEQ loc_196005
    LDY #4

loc_196005:
    LDA stru_196222 - NEW_OFF,Y
    STA stru_584,X
    LDA stru_196222+1 - NEW_OFF,Y
    STA stru_584+1,X
    LDA stru_196222+2 - NEW_OFF,Y
    STA stru_584+2,X
    LDA stru_196222+3 - NEW_OFF,Y
    STA stru_584+3,X
    RTS
; End of function sub_196000


; =============== S U B R O U T I N E =======================================

; returns a pointer from the TilepackTable
; Input: X - offset in the TilepackTable table
; Output: PointerTilePack - pointer from the TilepackTable table

get_pointer_tilepak_copy:
    .importzp PointerTilePack

    LDA TilepackTable - NEW_OFF,X
    STA PointerTilePack
    LDA TilepackTable+1 - NEW_OFF,X
    STA PointerTilePack+1
    RTS
; End of function get_pointer_tilepak


; =============== S U B R O U T I N E =======================================


get_cursor_copy:
    .importzp pCursor

    LDA Cursors - NEW_OFF,X
    STA pCursor
    LDA Cursors+1 - NEW_OFF,X
    STA pCursor+1
    RTS
; End of function get_cursor


; =============== S U B R O U T I N E =======================================


set_pos_6_5_copy:
    .importzp Column, Row, byte_D6

    LDA #$FF
    STA byte_D6
    LDX #6
    LDY #5
    STX Column
    STY Row
    RTS
; End of function set_pos_6_5


; =============== S U B R O U T I N E =======================================


copy_pure_save_copy:
    .importzp Dist, Source

    PHA                 ; Input: A - game number
    LDA #0
    LDX #$74
    STA Dist
    STX Dist+1
    LDA #0
    LDX #$BE
    STA Source          ; byte_109EAB, byte_109EB3
    STX Source+1        ; byte_109EAB, byte_109EB3
    LDX #2
    LDY #0

@next_byte:
    LDA (Source),Y      ; byte_109EAB, byte_109EB3
    STA (Dist),Y
    INY
    BNE @next_byte
    INC Dist+1
    INC Source+1        ; byte_109EAB, byte_109EB3
    DEX
    BNE @next_byte
    LDA #0

@clear:
    STA (Dist),Y
    INY
    BNE @clear
    PLA
    ORA $7402           ; CurrentPlayer.PureSave.GameNumber
    STA $7402           ; CurrentPlayer.PureSave.GameNumber
    RTS
; End of function copy_pure_save

; ---------------------------------------------------------------------------
TilepackTable:
    .word ContinueGame1 - NEW_OFF, NewGame1 - NEW_OFF, ContinueGame2 - NEW_OFF, NewGame2 - NEW_OFF
    .word ContinueGame3 - NEW_OFF, NewGame3 - NEW_OFF, ClearBottomScreen - NEW_OFF, EraseDialog - NEW_OFF, ToWhich - NEW_OFF
Cursors:
    .word stru_1961F0 - NEW_OFF, stru_1961F0 - NEW_OFF, stru_1961F0 - NEW_OFF, stru_1961FA - NEW_OFF
    .word stru_1961F0 - NEW_OFF, stru_196204 - NEW_OFF, stru_19620E - NEW_OFF, stru_196218 - NEW_OFF
ClearBottomScreen:
    tile_position 4, $14
    fill " ", $18
    end_row

    fill " ", $18
    end_row

    fill " ", $18
    end_row

    fill " ", $18
    end_frame

    fill " ", $18
    end_frame

EraseDialog:
    tile_position 6, $14
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, $12
    .byte FRAME_TOP_RIGHT
    end_row

    left
    .byte " ", $A6              ; ' "'
    .byte $23
    .word Boy1Name              ; Сharacter Name
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, CurrentPlayer.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC
    .byte $23
    .word Boy1Lvl               ; Сharacter Level
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, CurrentPlayer.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
    .byte $A6, "  "             ; '"  '
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
    fill FRAME_BOTTOM, $12
    .byte FRAME_BOTTOM_RIGHT
    end_frame

ToWhich:
    tile_position 8, $15
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, $E
    .byte FRAME_TOP_RIGHT
    end_row

    left
    .byte "   To which?  "
    right
    end_frame

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, $E
    .byte FRAME_BOTTOM_RIGHT
    end_frame

ContinueGame1:
    tile_position 3, 1
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT
    .byte $23
    .word Boy1NameSave1         ; Сharacter Name save 1
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, Save1.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC 
    .byte $23
    .word Boy1LvlSave1          ; Сharacter Level save 1
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, Save1.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
    fill FRAME_TOP, 7
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset FinalFrame1 - NEW_OFF

ContinueGame2:
    tile_position 3, 7
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT
    .byte $23
    .word Boy1NameSave2         ; Сharacter Name save 2
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, Save2.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC
    .byte $23
    .word Boy1LvlSave2          ; Сharacter Level save 2
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, Save2.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
    fill FRAME_TOP, 7
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset FinalFrame1 - NEW_OFF

ContinueGame3:
    tile_position 3, $D
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT
    .byte $23
    .word Boy1NameSave3                 ; Сharacter Name save 3
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, Save3.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC
    .byte $23
    .word Boy1LvlSave3          ; Сharacter Level save 3
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, Save3.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
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
    fill FRAME_BOTTOM, $16
    .byte FRAME_BOTTOM_RIGHT
    end_frame

NewGame1:
    tile_position 3, 1
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT, "GAME(1)"
    fill FRAME_TOP, $D
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset StartUp - NEW_OFF

NewGame2:
    tile_position 3, 7
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT, "GAME(2)"
    fill FRAME_TOP, $D
    .byte FRAME_TOP_RIGHT
    end_row

    frame_offset StartUp - NEW_OFF

NewGame3:
    tile_position 3, $D
    .byte " "
    end_row

    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP_SHORT, "GAME(3)"
    fill FRAME_TOP, $D
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
    fill FRAME_BOTTOM, $16
    .byte FRAME_BOTTOM_RIGHT
    end_frame

stru_1961F0:
    .byte 1, 3, 0, 6, $C0, $3A, 3, 4
    .word byte_19622C - NEW_OFF ; CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, byte_19622C>

stru_1961FA:
    .byte 1, 3, 0, 6, $C0, $3A, 3, 4
    .word byte_19622F - NEW_OFF ; CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, byte_19622F>

stru_196204:
    .byte 1, 3, 0, 6, $C0, $3A, 3, 4
    .word byte_196232 - NEW_OFF ; CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, byte_196232>

stru_19620E:
    .byte 4, 3, 5, 6, $80, $3A, 5, 5
    .word stru_584              ; CURSOR <4, 3, 5, 6, $80, $3A, 5, 5, $584>

stru_196218:
    .byte 2, 1, 5, 0, $80, $3A, $B, $1A
    .word byte_19622A - NEW_OFF ; CURSOR <2, 1, 5, 0, $80, $3A, $B, $1A, byte_19622A>

stru_196222:
    .byte $80, 0, $81, $82      ; struc_196222 <$80, 0, $81, $82>
    .byte 0, $83, 0, 0          ; struc_196222 <0, $83, 0, 0>

byte_19622A:
    .byte 1, 2

byte_19622C:
    .byte 0, 3, 5

byte_19622F:
    .byte 1, 0, 5

byte_196232:
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


set_anim_sprite_copy:
    .importzp pTileID, AddrForJmp, Pointer, NMIFlags

    LDA #4
    STA SpriteTable,Y
    LDA pTileID
    STA SpriteTable + ANIM_SPRITE::TileID,Y
    LDA AddrForJmp
    STA SpriteTable + ANIM_SPRITE::PosX,Y
    LDA AddrForJmp+1
    STA SpriteTable + ANIM_SPRITE::PosY,Y
    LDA #0
    STA SpriteTable + ANIM_SPRITE::field_4,Y
    STA SpriteTable + ANIM_SPRITE::field_5,Y
    LDA Pointer
    STA SpriteTable + ANIM_SPRITE::pFrame,Y
    LDA Pointer+1
    STA SpriteTable + ANIM_SPRITE::pFrame+1,Y
    LDA #1
    STA NMIFlags
    RTS
; End of function set_anim_sprite


; =============== S U B R O U T I N E =======================================


get_anim_sprite_copy:
    LDA #$50
    STA AddrForJmp
    LDA #8
    STA AddrForJmp+1
    LDA #0
    STA pTileID
    LDA #$10
    STA Pointer
    LDA #$80
    STA Pointer+1
    RTS
; End of function get_anim_sprite


; =============== S U B R O U T I N E =======================================


next_anim_sprite_copy:
    CLC
    LDA Pointer
    ADC #$20
    STA Pointer
    LDA Pointer+1
    ADC #0
    STA Pointer+1
    CLC
    LDA AddrForJmp+1
    ADC #$18
    STA AddrForJmp+1
    CLC
    TYA
    ADC #8
    TAY
    RTS
; End of function next_anim_sprite


; =============== S U B R O U T I N E =======================================


get_next_string_copy:
    CLC
    LDA pTileID
    ADC #$10
    STA pTileID
    LDA pTileID+1
    ADC #0
    STA pTileID+1
    CLC
    LDA AddrForJmp+1
    ADC #2
    STA AddrForJmp+1
    RTS
; End of function get_next_string

; ---------------------------------------------------------------------------
.import stru_158010, stru_158030, stru_158050, stru_158070
Boy1_copy:
    .word stru_158010, AskBoy1Name - NEW_OFF, Boy1Name     ; CHARACTER_ASK <stru_158010, AskBoy1Name, CurrentPlayer.PureSave.Characters.Name>
Girl_copy:
    .word stru_158030, AskGirlName - NEW_OFF, GirlName     ; CHARACTER_ASK <stru_158030, AskGirlName, CurrentPlayer.PureSave.Characters.Name+$40>
Boy2_copy:
    .word stru_158050, AskBoy2Name - NEW_OFF, Boy2Name     ; CHARACTER_ASK <stru_158050, AskBoy2Name, CurrentPlayer.PureSave.Characters.Name+$80>
Boy3_copy:
    .word stru_158070, AskBoy3Name - NEW_OFF, Boy3Name     ; CHARACTER_ASK <stru_158070, AskBoy3Name, CurrentPlayer.PureSave.Characters.Name+$C0>
Food_copy:
    .word 0, AskFoodName - NEW_OFF, FoodName               ; CHARACTER_ASK <0, AskFoodName, CurrentPlayer.Food>
    .byte $10, 6, 1, 2, $D0, 1, 8, $E                   ; CURSOR_SHORT <$10, 6, 1, 2, $D0, 1, 8, $E>
    .byte 2, 1, 4, 0, $80, $3A, $C, $18
    .word byte_1962FA - NEW_OFF                         ; CURSOR <2, 1, 4, 0, $80, $3A, $C, $18, byte_1962FA>
byte_1962FA:
    .byte 1, 1, 1
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

TryAgain_copy:
    .byte "Please change", 1
    .byte "this name.", 0

SameName_copy:
    .byte "A character in ", 1
    .byte "this game has  ", 1
    .byte "that name. Try ", 1
    .byte "again, and use ", 1
    .byte "only capital   ", 1
    .byte "letters.       ", 0

Names_copy:
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

AlphabeticalList_copy:
    .byte "ABCDEFG HIJKLMN", 0
    .byte "OPQRSTU VWXYZ.'", 0
    .byte "abcdefg hijklmn", 0
    .byte "opqrstu vwxyz-:", 0
    .byte 0, 0, $A1, 0, 0, 0, 0, 0, 0, $A2, 0, 0, 0, 0, 0, 0 ; cursor position Back, End
    .byte 0, 0, 0, $A3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ; cursor position Previous

GameStory_copy:
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

Nowadays_copy:
    .byte "80 years have passed", 1
    .byte " ", 1
    .byte "since then.", 0
