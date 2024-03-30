.include "ram.inc"
.include "..\res\charmap.inc"
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

sub_196000          = sub_196000_copy - NEW_OFF
get_pointer_tilepak = get_pointer_tilepak_copy - NEW_OFF
get_cursor          = get_cursor_copy - NEW_OFF
set_pos_6_5         = set_pos_6_5_copy - NEW_OFF
copy_pure_save      = copy_pure_save_copy - NEW_OFF

set_anim_sprite     = set_anim_sprite_copy - NEW_OFF
get_anim_sprite     = get_anim_sprite_copy - NEW_OFF
next_anim_sprite    = next_anim_sprite_copy - NEW_OFF
get_next_string     = get_next_string_copy - NEW_OFF

sub_196000_copy:
                TAY
                BEQ     loc_196005
                LDY     #4

loc_196005:
                LDA     stru_196222 - NEW_OFF,Y
                STA     stru_584,X
                LDA     stru_196222+1 - NEW_OFF,Y
                STA     stru_584+1,X
                LDA     stru_196222+2 - NEW_OFF,Y
                STA     stru_584+2,X
                LDA     stru_196222+3 - NEW_OFF,Y
                STA     stru_584+3,X
                RTS
; End of function sub_196000


; =============== S U B R O U T I N E =======================================

; returns a pointer from the TilepackTable
; Input: X - offset in the TilepackTable table
; Output: PointerTilePack - pointer from the TilepackTable table

get_pointer_tilepak_copy:
    .importzp PointerTilePack

                LDA     TilepackTable - NEW_OFF,X
                STA     PointerTilePack
                LDA     TilepackTable+1 - NEW_OFF,X
                STA     PointerTilePack+1
                RTS
; End of function get_pointer_tilepak


; =============== S U B R O U T I N E =======================================


get_cursor_copy:
    .importzp pCursor

                LDA     Cursors - NEW_OFF,X
                STA     pCursor
                LDA     Cursors+1 - NEW_OFF,X
                STA     pCursor+1
                RTS
; End of function get_cursor


; =============== S U B R O U T I N E =======================================


set_pos_6_5_copy:
    .importzp Column, Row, byte_D6

                LDA     #$FF
                STA     byte_D6
                LDX     #6
                LDY     #5
                STX     Column
                STY     Row
                RTS
; End of function set_pos_6_5


; =============== S U B R O U T I N E =======================================


copy_pure_save_copy:
    .importzp Dist, Source

                PHA                     ; Input: A - game number
                LDA     #0
                LDX     #$74
                STA     Dist
                STX     Dist+1
                LDA     #0
                LDX     #$BE
                STA     Source          ; byte_109EAB, byte_109EB3
                STX     Source+1        ; byte_109EAB, byte_109EB3
                LDX     #2
                LDY     #0

@next_byte:
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                STA     (Dist),Y
                INY
                BNE     @next_byte
                INC     Dist+1
                INC     Source+1        ; byte_109EAB, byte_109EB3
                DEX
                BNE     @next_byte
                LDA     #0

@clear:
                STA     (Dist),Y
                INY
                BNE     @clear
                PLA
                ORA     $7402           ; CurrentPlayer.PureSave.GameNumber
                STA     $7402           ; CurrentPlayer.PureSave.GameNumber
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
    .byte $20, 4, $14           ; TILEPACK_POS <$20, 4, $14> ; command to set the initial position of tile output
    .byte $22, $A0, $18         ; TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
    .byte 1
    .byte $22, $A0, $18         ; TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
    .byte 1
    .byte $22, $A0, $18         ; TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
    .byte 1
    .byte $22, $A0, $18         ; TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
    .byte 0
    .byte $22, $A0, $18, 0
EraseDialog:
    .byte $20, 6, $14           ; TILEPACK_POS <$20, 6, $14> ; command to set the initial position of tile output
    .byte $DB                   ; upper left corner of the frame /
    .byte $22, $DC, $12         ; TILEPACK_FILL <$22, $DC, $12> ; command to fill with a single repeating tile (top border)
    .byte $DD, 1                ; upper right corner of the frame \ and final marker
    .byte $24                   ; left frame border |
    .byte $A0, $A6              ; ' "'
    .byte $23
    .word $7478                 ; Сharacter Name
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, CurrentPlayer.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC
    .byte $23
    .word $7450                 ; Сharacter Level
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, CurrentPlayer.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
    .byte $A6, $A0, $A0         ; '"  '
    .byte $25                   ; |
    .byte 1
    .byte $24                   ; |
    .byte " will vanish. OK? "  ; $A0, $F7, $E9, $EC, $EC, $A0, $F6, $E1, $EE, $E9, $F3, $E8, $AE, $A0, $CF, $CB, $A2, $A0
    .byte $25                   ; |
    .byte 1
    .byte $24                   ; |
    .byte "     Yes  No      "  ; $A0, $A0, $A0, $A0, $A0, $D9, $E5, $F3, $A0, $A0, $CE, $EF, $A0, $A0, $A0, $A0, $A0, $A0
    .byte $25                   ; |
    .byte 0
    .byte $FB                   ; bottom left corner of the frame
    .byte $22, $FC, $12         ; bottom border
    .byte $FD, 0                ; bottom right corner of the frame and completion marker
ToWhich:
    .byte $20, 8, $15           ; TILEPACK_POS <$20, 8, $15> ; command to set the initial position of tile output
    .byte $DB                   ; upper left corner of the frame /
    .byte $22, $DC, $E          ; TILEPACK_FILL <$22, $DC, $E> ; command to fill with a single repeating tile (top border)
    .byte $DD, 1                ; upper right corner of the frame \ and final marker
    .byte $24                   ; |
    .byte "   To which?  "      ; $A0, $A0, $A0, $D4, $EF, $A0, $F7, $E8, $E9, $E3, $E8, $A2, $A0, $A0
    .byte $25                   ; |
    .byte 0
    .byte $FB                   ; bottom left corner of the frame
    .byte $22, $FC, $E          ; TILEPACK_FILL <$22, $FC, $E> ; command to fill with a single repeating tile (bottom border)
    .byte $FD, 0                ; bottom right corner of the frame and completion marker
ContinueGame1:
    .byte $20, 3, 1             ; TILEPACK_POS <$20, 3, 1> ; command to set the initial position of tile output
    .byte " ", 1                ;
    .byte " ", $DB, $DC, $FE    ;  /--
    .byte $23
    .word $7778                 ; Сharacter Name save 1
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, Save1.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC 
    .byte $23
    .word $7750                 ; Сharacter Level save 1
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, Save1.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
    .byte $22, $DC, 7           ; TILEPACK_FILL <$22, $DC, 7> ; command to fill with a single repeating tile (top border)
    .byte $DD, 1                ; upper right corner of the frame \ and final marker
    .byte 4
    .word FinalFrame1 - NEW_OFF  ; TILEPACK_OFF <4, FinalFrame1> ; command to load packed tiles at the specified offset
ContinueGame2:
    .byte $20, 3, 7             ; TILEPACK_POS <$20, 3, 7> ; command to set the initial position of tile output
    .byte " ", 1                ;
    .byte " ", $DB, $DC, $FE    ;  /--
    .byte $23
    .word $7A78                 ; Сharacter Name save 2
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, Save2.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC
    .byte $23
    .word $7A50                 ; Сharacter Level save 2
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, Save2.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
    .byte $22, $DC, 7           ; TILEPACK_FILL <$22, $DC, 7> ; command to fill with a single repeating tile (top border)
    .byte $DD, 1                ; upper right corner of the frame \ and final marker
    .byte 4
    .word FinalFrame1 - NEW_OFF  ; TILEPACK_OFF <4, FinalFrame1> ; command to load packed tiles at the specified offset
ContinueGame3:
    .byte $20, 3, $D            ; TILEPACK_POS <$20, 3, $D> ; command to set the initial position of tile output
    .byte " ", 1
    .byte " ", $DB, $DC, $FE    ;  /--
    .byte $23
    .word $7D78                 ; Сharacter Name save 3
    .byte 0, 8                  ; TILEPACK_NUM2STR <$23, Save3.PureSave.Characters.Name, 0, 8> ; command specifying a new offset for what?
    .byte "Lvl"                 ; $CC, $F6, $EC
    .byte $23
    .word $7D50                 ; Сharacter Level save 3
    .byte 1, 2                  ; TILEPACK_NUM2STR <$23, Save3.PureSave.Characters.Level, 1, 2> ; command specifying a new offset for what?
    .byte $22, $DC, 7           ; TILEPACK_FILL <$22, $DC, 7> ; command to fill with a single repeating tile (top border)
    .byte $DD, 1                ; upper right corner of the frame \ and final marker
FinalFrame1:
    .byte " "
    .byte $24                   ; |
    .byte " Continue  Copy Erase " ; $A0, $C3, $EF, $EE, $F4, $E9, $EE, $F5, $E5, $A0, $A0, $C3, $EF, $F0, $F9, $A0, $C5, $F2, $E1, $F3, $E5, $A0
    .byte $25                   ; |
    .byte 0
    .byte " ", $FB              ; bottom left corner of the frame
    .byte $22, $FC, $16         ; TILEPACK_FILL <$22, $FC, $16> ; command to fill with a single repeating tile (bottom border)
    .byte $FD, 0                ; bottom right corner of the frame and completion marker
NewGame1:
    .byte $20, 3, 1             ; TILEPACK_POS <$20, 3, 1> ; command to set the initial position of tile output
    .byte " ", 1
    .byte " ", $DB, $DC, $FE    ;  /--
    .byte "GAME(1)"             ; $C7, $C1, $CD, $C5, $A8, $B1, $A9
    .byte $22, $DC, $D          ; TILEPACK_FILL <$22, $DC, $D> ; command to fill with a single repeating tile
    .byte $DD, 1                ; \
    .byte 4
    .word StartUp - NEW_OFF     ; TILEPACK_OFF <4, StartUp> ; command to load packed tiles at the specified offset
NewGame2:
    .byte $20, 3, 7             ; TILEPACK_POS <$20, 3, 7> ; command to set the initial position of tile output
    .byte " ", 1
    .byte " ", $DB, $DC, $FE    ;  /--
    .byte "GAME(2)"             ; $C7, $C1, $CD, $C5, $A8, $B2, $A9
    .byte $22, $DC, $D          ; TILEPACK_FILL <$22, $DC, $D> ; command to fill with a single repeating tile
    .byte $DD, 1                ; \
    .byte 4
    .word StartUp - NEW_OFF     ; TILEPACK_OFF <4, StartUp> ; command to load packed tiles at the specified offset
NewGame3:
    .byte $20, 3, $D            ; TILEPACK_POS <$20, 3, $D> ; command to set the initial position of tile output
    .byte " ", 1
    .byte " ", $DB, $DC, $FE    ;  /--
    .byte "GAME(3)"             ; $C7, $C1, $CD, $C5, $A8, $B3, $A9
    .byte $22, $DC, $D          ; TILEPACK_FILL <$22, $DC, $D> ; command to fill with a single repeating tile
    .byte $DD, 1                ; \
StartUp:
    .byte " "
    .byte $24                   ; |
    .byte $22, $A0, 6           ; TILEPACK_FILL <$22, $A0, 6> ; command to fill with a single repeating tile
    .byte "Start up"            ; $D3, $F4, $E1, $F2, $F4, $A0, $F5, $F0
    .byte $22, $A0, 8           ; TILEPACK_FILL <$22, $A0, 8> ; command to fill with a single repeating tile
    .byte $25                   ; |
    .byte 0
    .byte " ", $FB              ;  \
    .byte $22, $FC, $16         ; TILEPACK_FILL <$22, $FC, $16> ; command to fill with a single repeating tile
    .byte $FD, 0                ; /
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
    .byte $60, 0, $7C, $7D, $7E, $7F; Bank
Palettes:
    .byte BLACK, BLACK, WHITE, WHITE; PALETTE0
    .byte BLACK, LIGHTEST_GREEN, MEDIUM_GRAY, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, LIGHTEST_GREEN, LIGHT_REDVIOLET, MEDIUM_GREEN; PALETTE2
    .byte BLACK, LIGHTEST_GREEN, WHITE, MEDIUM_INDIGO; PALETTE3
    .byte BLACK, BLACK, DARK_GRAY, WHITE; PALETTE0
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE; PALETTE1
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE; PALETTE2
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE; PALETTE3

; =============== S U B R O U T I N E =======================================


set_anim_sprite_copy:
    .importzp pTileID, AddrForJmp, Pointer, NMIFlags

                LDA     #4
                STA     SpriteTable,Y
                LDA     pTileID
                STA     SpriteTable + ANIM_SPRITE::TileID,Y
                LDA     AddrForJmp
                STA     SpriteTable + ANIM_SPRITE::PosX,Y
                LDA     AddrForJmp+1
                STA     SpriteTable + ANIM_SPRITE::PosY,Y
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4,Y
                STA     SpriteTable + ANIM_SPRITE::field_5,Y
                LDA     Pointer
                STA     SpriteTable + ANIM_SPRITE::pFrame,Y
                LDA     Pointer+1
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,Y
                LDA     #1
                STA     NMIFlags
                RTS
; End of function set_anim_sprite


; =============== S U B R O U T I N E =======================================


get_anim_sprite_copy:
                LDA     #$50
                STA     AddrForJmp
                LDA     #8
                STA     AddrForJmp+1
                LDA     #0
                STA     pTileID
                LDA     #$10
                STA     Pointer         ; BANK15:8010
                LDA     #$80
                STA     Pointer+1
                RTS
; End of function get_anim_sprite


; =============== S U B R O U T I N E =======================================


next_anim_sprite_copy:
                CLC
                LDA     Pointer
                ADC     #$20
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1
                CLC
                LDA     AddrForJmp+1
                ADC     #$18
                STA     AddrForJmp+1
                CLC
                TYA
                ADC     #8
                TAY
                RTS
; End of function next_anim_sprite


; =============== S U B R O U T I N E =======================================


get_next_string_copy:
                CLC
                LDA     pTileID
                ADC     #$10
                STA     pTileID
                LDA     pTileID+1
                ADC     #0
                STA     pTileID+1
                CLC
                LDA     AddrForJmp+1
                ADC     #2
                STA     AddrForJmp+1
                RTS
; End of function get_next_string

; ---------------------------------------------------------------------------
.import stru_158010, stru_158030, stru_158050, stru_158070
Boy1:
    .word stru_158010, AskBoy1Name - NEW_OFF, $7478     ; CHARACTER_ASK <stru_158010, AskBoy1Name, CurrentPlayer.PureSave.Characters.Name>
Girl:
    .word stru_158030, AskGirlName - NEW_OFF, $74B8     ; CHARACTER_ASK <stru_158030, AskGirlName, CurrentPlayer.PureSave.Characters.Name+$40>
Boy2:
    .word stru_158050, AskBoy2Name - NEW_OFF, $74F8     ; CHARACTER_ASK <stru_158050, AskBoy2Name, CurrentPlayer.PureSave.Characters.Name+$80>
Boy3:
    .word stru_158070, AskBoy3Name - NEW_OFF, $7538     ; CHARACTER_ASK <stru_158070, AskBoy3Name, CurrentPlayer.PureSave.Characters.Name+$C0>
Food:
    .word 0, AskFoodName - NEW_OFF, $7689               ; CHARACTER_ASK <0, AskFoodName, CurrentPlayer.Food>
    .byte $10, 6, 1, 2, $D0, 1, 8, $E                   ; CURSOR_SHORT <$10, 6, 1, 2, $D0, 1, 8, $E>
    .byte 2, 1, 4, 0, $80, $3A, $C, $18
    .word byte_1962FA - NEW_OFF                         ; CURSOR <2, 1, 4, 0, $80, $3A, $C, $18, byte_1962FA>
byte_1962FA:
    .byte 1, 1, 1
    .byte 8, $40, $23, $C0, $FF, 0
AskBoy1Name:
    .byte "What is this", 1         ; $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4, $E8, $E9, $F3, 1
    .byte "boy's name?", 0          ; $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0
AskGirlName:
    .byte "What is this", 1         ; $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4, $E8, $E9, $F3, 1
    .byte "girl's name?", 0         ; $E7, $E9, $F2, $EC, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0
AskBoy2Name:
    .byte "This other", 1           ; $D4, $E8, $E9, $F3, $A0, $EF, $F4, $E8, $E5, $F2, 1
    .byte "boy's name?", 0          ; $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0
AskBoy3Name:
    .byte "This last", 1            ; $D4, $E8, $E9, $F3, $A0, $EC, $E1, $F3, $F4, 1
    .byte "boy's name?", 0          ; $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0
AskFoodName:
    .byte "What is your", 1         ; $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F9, $EF, $F5, $F2, 1
    .byte "favorite food?", 0       ; $E6, $E1, $F6, $EF, $F2, $E9, $F4, $E5, $A0, $E6, $EF, $EF, $E4, $A2, 0

    .byte "Please change", 1        ; $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $E8, $E1, $EE, $E7, $E5, 1
    .byte "this name.", 0           ; $F4, $E8, $E9, $F3, $A0, $EE, $E1, $ED, $E5, $AE, 0

    .byte "A character in ", 1      ; $C1, $A0, $E3, $E8, $E1, $F2, $E1, $E3, $F4, $E5, $F2, $A0, $E9, $EE, $A0, 1
    .byte "this game has  ", 1      ; $F4, $E8, $E9, $F3, $A0, $E7, $E1, $ED, $E5, $A0, $E8, $E1, $F3, $A0, $A0, 1
    .byte "that name. Try ", 1      ; $F4, $E8, $E1, $F4, $A0, $EE, $E1, $ED, $E5, $AE, $A0, $D4, $F2, $F9, $A0, 1
    .byte "again, and use ", 1      ; $E1, $E7, $E1, $E9, $EE, $AC, $A0, $E1, $EE, $E4, $A0, $F5, $F3, $E5, $A0, 1
    .byte "only capital   ", 1      ; $EF, $EE, $EC, $F9, $A0, $E3, $E1, $F0, $E9, $F4, $E1, $EC, $A0, $A0, $A0, 1
    .byte "letters.       ", 0      ; $EC, $E5, $F4, $F4, $E5, $F2, $F3, $AE, $A0, $A0, $A0, $A0, $A0, $A0, $A0, 0
Names:
    .byte "Mary?", 1                ; $CD, $E1, $F2, $F9, $A2, 1
    .byte "Suzy?", 1                ; $D3, $F5, $FA, $F9, $A2, 1
    .byte "George?", 1              ; $C7, $E5, $EF, $F2, $E7, $E5, $A2, 1
    .byte "Maria?", 1               ; $CD, $E1, $F2, $E9, $E1, $A2, 1
    .byte "Mimmie?", 1              ; $CD, $E9, $ED, $ED, $E9, $E5, $A2, 1
    .byte "Minnie?", 1              ; $CD, $E9, $EE, $EE, $E9, $E5, $A2, 1
    .byte "Pippi?", 1               ; $D0, $E9, $F0, $F0, $E9, $A2, 1
    .byte "Duncan?", 1              ; $C4, $F5, $EE, $E3, $E1, $EE, $A2, 1
    .byte "Laura?", 1               ; $CC, $E1, $F5, $F2, $E1, $A2, 1
    .byte "Giegue?", 1              ; $C7, $E9, $E5, $E7, $F5, $E5, $A2, 1
    .byte "Abbott?", 1              ; $C1, $E2, $E2, $EF, $F4, $F4, $A2, 1
    .byte "Nancy?", 1               ; $CE, $E1, $EE, $E3, $F9, $A2, 1
    .byte "Ullrich", 1              ; $D5, $EC, $EC, $F2, $E9, $E3, $E8, 1
    .byte "Wally?", 1               ; $D7, $E1, $EC, $EC, $F9, $A2, 1
    .byte "Kelly?", 1               ; $CB, $E5, $EC, $EC, $F9, $A2, 1
    .byte "Juana?", 1               ; $CA, $F5, $E1, $EE, $E1, $A2, 1
    .byte " ", 1
    .byte 0
AlphabeticalList:
    .byte "ABCDEFG HIJKLMN", 0      ; $C1, $C2, $C3, $C4, $C5, $C6, $C7, $A0, $C8, $C9, $CA, $CB, $CC, $CD, $CE, 0
    .byte "OPQRSTU VWXYZ.'", 0      ; $CF, $D0, $D1, $D2, $D3, $D4, $D5, $A0, $D6, $D7, $D8, $D9, $DA, $AE, $A7, 0
    .byte "abcdefg hijklmn", 0      ; $E1, $E2, $E3, $E4, $E5, $E6, $E7, $A0, $E8, $E9, $EA, $EB, $EC, $ED, $EE, 0
    .byte "opqrstu vwxyz-:", 0      ; $EF, $F0, $F1, $F2, $F3, $F4, $F5, $A0, $F6, $F7, $F8, $F9, $FA, $AD, $AA, 0
    .byte 0, 0, $A1, 0, 0, 0, 0, 0, 0, $A2, 0, 0, 0, 0, 0 ; cursor position Back, End
    .byte 0
    .byte 0, 0, 0, $A3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ; cursor position Previous
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
    .byte "80 years have passed", 1
    .byte " ", 1
    .byte "since then.", 0
