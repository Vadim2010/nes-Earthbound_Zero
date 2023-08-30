sub_196000:
    TAY
    BEQ loc_196005
    LDY #4

loc_196005:
    LDA stru_196222,Y
    STA stru_584,X
    LDA stru_196222.field_1,Y
    STA stru_584.field_1,X
    LDA stru_196222.field_2,Y
    STA stru_584.field_2,X
    LDA stru_196222.field_3,Y
    STA stru_584.field_3,X
    RTS
; End of function sub_196000


; =============== S U B R O U T I N E =======================================

; returns a pointer from the TilepackTable
; Input: X - offset in the TilepackTable table
; Output: PointerTilePack - pointer from the TilepackTable table

get_pointer_tilepak:
    LDA TilepackTable,X
    STA PointerTilePack
    LDA TilepackTable+1,X
    STA PointerTilePack+1
    RTS
; End of function get_pointer_tilepak


; =============== S U B R O U T I N E =======================================


get_cursor:
    LDA Cursors,X
    STA pCursor
    LDA Cursors+1,X
    STA pCursor+1
    RTS
; End of function get_cursor


; =============== S U B R O U T I N E =======================================


set_pos_6_5:
    LDA #$FF
    STA byte_D6
    LDX #6
    LDY #5
    STX PosX
    STY PosY
    RTS
; End of function set_pos_6_5


; =============== S U B R O U T I N E =======================================


copy_pure_save:
    PHA                         ; Input: A - game number
    LDA #0
    LDX #$74 ; 't'
    STA Dist
    STX Dist+1
    LDA #0
    LDX #$BE
    STA Source
    STX Source+1
    LDX #2
    LDY #0

@next_byte:
    LDA (Source),Y
    STA (Dist),Y
    INY
    BNE @next_byte
    INC Dist+1
    INC Source+1
    DEX
    BNE @next_byte
    LDA #0

@clear:
    STA (Dist),Y
    INY
    BNE @clear
    PLA
    ORA CurrentPlayer.PureSave.GameNumber
    STA CurrentPlayer.PureSave.GameNumber
    RTS
; End of function copy_pure_save

; ---------------------------------------------------------------------------
TilepackTable:
    .word ContinueGame1, NewGame1, ContinueGame2, NewGame2
    .word ContinueGame3, NewGame3, ClearBottomScreen, EraseDialog
    .word ToWhich

Cursors:
    .word stru_1961F0, stru_1961F0, stru_1961F0, stru_1961FA
    .word stru_1961F0, stru_196204, stru_19620E, stru_196218

ClearBottomScreen:
    TILEPACK_POS <$20, 4, $14>      ; command to set the initial position of tile output
    TILEPACK_FILL <$22, $A0, $18>   ; command to fill with a single repeating tile
    .byte 1
    TILEPACK_FILL <$22, $A0, $18>   ; command to fill with a single repeating tile
    .byte 1
    TILEPACK_FILL <$22, $A0, $18>   ; command to fill with a single repeating tile
    .byte 1
    TILEPACK_FILL <$22, $A0, $18>   ; command to fill with a single repeating tile
    .byte 0
    .byte $22, $A0, $18, 0

EraseDialog:
    TILEPACK_POS <$20, 6, $14>      ; command to set the initial position of tile output
    .byte $DB                       ; |-
    TILEPACK_FILL <$22, $DC, $12>   ; command to fill with a single repeating tile
    .byte $DD, 1                    ; -|
    .byte $24                       ; |
    .byte $A0, $A6                  ;  "
    TILEPACK_23 <$23, CurrentPlayer.PureSave.Characters.Name, 0, 8> ; command specifying a new offset
    .byte $CC, $F6, $EC             ; Lvl
    TILEPACK_23 <$23, CurrentPlayer.PureSave.Characters.Level, 1, 2> ; command specifying a new offset
    .byte $A6, $A0, $A0             ; "
    .byte $25                       ; |
    .byte 1
    .byte $24                       ; |
    .byte $A0, $F7, $E9, $EC, $EC, $A0, $F6, $E1, $EE, $E9      ;  will vanish. OK?
    .byte $F3, $E8, $AE, $A0, $CF, $CB, $A2, $A0
    .byte $25                       ; |
    .byte 1
    .byte $24                       ; |
    .byte $A0, $A0, $A0, $A0, $A0, $D9, $E5, $F3, $A0, $A0      ;  Yes  No
    .byte $CE, $EF, $A0, $A0, $A0, $A0, $A0, $A0
    .byte $25                       ; |
    .byte 0
    .byte $FB, $22, $FC, $12, $FD, 0

ToWhich:
    TILEPACK_POS <$20, 8, $15>      ; command to set the initial position of tile output
    .byte $DB                       ; /
    TILEPACK_FILL <$22, $DC, $E>    ; command to fill with a single repeating tile
    .byte $DD, 1                    ; \
    .byte $24                       ; |
    .byte $A0, $A0, $A0, $D4, $EF, $A0, $F7, $E8, $E9, $E3      ;    To which?
    .byte $E8, $A2, $A0, $A0
    .byte $25                       ; |
    .byte 0
    .byte $FB                       ; \
    TILEPACK_FILL <$22, $FC, $E>    ; command to fill with a single repeating tile
    .byte $FD, 0                    ; /

ContinueGame1:  TILEPACK_POS <$20, 3, 1>        ; command to set the initial position of tile output
    .byte $A0, 1
    .byte $A0, $DB, $DC, $FE        ;  /--
    TILEPACK_23 <$23, Save1.PureSave.Characters.Name, 0, 8>     ; command specifying a new offset
    .byte $CC, $F6, $EC ; Lvl
    TILEPACK_23 <$23, Save1.PureSave.Characters.Level, 1, 2>    ; command specifying a new offset
    TILEPACK_FILL <$22, $DC, 7>     ; command to fill with a single repeating tile
    .byte $DD, 1                    ; \
    TILEPACK_OFF <4, byte_196171>   ; command to load packed tiles at the specified offset

ContinueGame2:  TILEPACK_POS <$20, 3, 7>        ; command to set the initial position of tile output
    .byte $A0, 1
    .byte $A0, $DB, $DC, $FE        ;  /--
    TILEPACK_23 <$23, Save2.PureSave.Characters.Name, 0, 8>     ; command specifying a new offset
    .byte $CC, $F6, $EC             ; Lvl
    TILEPACK_23 <$23, Save2.PureSave.Characters.Level, 1, 2>    ; command specifying a new offset
    TILEPACK_FILL <$22, $DC, 7>     ; command to fill with a single repeating tile
    .byte $DD, 1                    ; \
    TILEPACK_OFF <4, byte_196171>   ; command to load packed tiles at the specified offset

ContinueGame3:  TILEPACK_POS <$20, 3, $D>       ; command to set the initial position of tile output
    .byte $A0, 1
    .byte $A0, $DB, $DC, $FE        ;  /--
    TILEPACK_23 <$23, Save3.PureSave.Characters.Name, 0, 8>     ; command specifying a new offset
    .byte $CC, $F6, $EC             ; Lvl
    TILEPACK_23 <$23, Save3.PureSave.Characters.Level, 1, 2>    ; command specifying a new offset
    TILEPACK_FILL <$22, $DC, 7>     ; command to fill with a single repeating tile
    .byte $DD, 1                    ; \

byte_196171:
    .byte $A0
    .byte $24                       ; |
    .byte $A0, $C3, $EF, $EE, $F4, $E9, $EE, $F5, $E5, $A0 ;  Continue  Copy Erase
    .byte $A0, $C3, $EF, $F0, $F9, $A0, $C5, $F2, $E1, $F3
    .byte $E5, $A0
    .byte $25                       ; |
    .byte 0
    .byte $A0, $FB                  ;  \
    TILEPACK_FILL <$22, $FC, $16>   ; command to fill with a single repeating tile
    .byte $FD, 0                    ; /

NewGame1:   TILEPACK_POS <$20, 3, 1>            ; command to set the initial position of tile output
    .byte $A0, 1
    .byte $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8, $B1  ;  /--GAME(1)
    .byte $A9
    TILEPACK_FILL <$22, $DC, $D>    ; command to fill with a single repeating tile
    .byte $DD, 1                    ; \
    TILEPACK_OFF <4, StartUp>       ; command to load packed tiles at the specified offset

NewGame2:   TILEPACK_POS <$20, 3, 7>            ; command to set the initial position of tile output
    .byte $A0, 1
    .byte $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8, $B2  ;  /--GAME(2)
    .byte $A9
    TILEPACK_FILL <$22, $DC, $D>    ; command to fill with a single repeating tile
    .byte $DD, 1                    ; \
    TILEPACK_OFF <4, StartUp>       ; command to load packed tiles at the specified offset

NewGame3:   TILEPACK_POS <$20, 3, $D>           ; command to set the initial position of tile output
    .byte $A0, 1
    .byte $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8, $B3  ;  /--GAME(3)
    .byte $A9
    TILEPACK_FILL <$22, $DC, $D>    ; command to fill with a single repeating tile
    .byte $DD, 1                    ; \

StartUp:
    .byte $A0
    .byte $24                       ; |
    TILEPACK_FILL <$22, $A0, 6>     ; command to fill with a single repeating tile
    .byte $D3, $F4, $E1, $F2, $F4, $A0, $F5, $F0    ; Start up
    TILEPACK_FILL <$22, $A0, 8>     ; command to fill with a single repeating tile
    .byte $25                       ; |
    .byte 0
    .byte $A0, $FB                  ;  \
    TILEPACK_FILL <$22, $FC, $16>   ; command to fill with a single repeating tile
    .byte $FD, 0                    ; /

stru_1961F0:
    CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, byte_19622C>
stru_1961FA:
    CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, byte_19622F>
stru_196204:
    CURSOR <1, 3, 0, 6, $C0, $3A, 3, 4, byte_196232>
stru_19620E:
    CURSOR <4, 3, 5, 6, $80, $3A, 5, 5, $584>
stru_196218:
    CURSOR <2, 1, 5, 0, $80, $3A, $B, $1A, byte_19622A>

stru_196222:    struc_196222 <$80, 0, $81, $82>
struc_196222 <0, $83, 0, 0>

byte_19622A:
    .byte 1, 2
byte_19622C:
    .byte 0, 3, 5
byte_19622F:
    .byte 1, 0, 5
byte_196232:
    .byte 1, 3, 0

CHRBank_0:
    .byte $60, 0, $7C, $7D, $7E, $7F    ; CHR Banks
Palettes:
    .byte BLACK, BLACK, WHITE, WHITE
    .byte BLACK, LIGHTEST_GREEN, MEDIUM_GRAY, LIGHTEST_GRAY
    .byte BLACK, LIGHTEST_GREEN, LIGHT_REDVIOLET, MEDIUM_GREEN
    .byte BLACK, LIGHTEST_GREEN, WHITE, MEDIUM_INDIGO

    .byte BLACK, BLACK, DARK_GRAY, WHITE
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE

; =============== S U B R O U T I N E =======================================


set_anim_sprite:
    LDA #4
    STA SpriteTable,Y
    LDA pTileID
    STA SpriteTable.TileID,Y
    LDA AddrForJmp
    STA SpriteTable.PosX,Y
    LDA AddrForJmp+1
    STA SpriteTable.PosY,Y
    LDA #0
    STA SpriteTable.field_4,Y
    STA SpriteTable.field_5,Y
    LDA Pointer
    STA SpriteTable.pFrame,Y
    LDA Pointer+1
    STA SpriteTable.pFrame+1,Y
    LDA #1
    STA NMIFlags
    RTS
; End of function set_anim_sprite


; =============== S U B R O U T I N E =======================================


get_anim_sprite:
    LDA #$50 ; 'P'
    STA AddrForJmp
    LDA #8
    STA AddrForJmp+1
    LDA #0
    STA pTileID
    LDA #$10
    STA Pointer                 ; BANK15:8010
    LDA #$80
    STA Pointer+1
    RTS
; End of function get_anim_sprite


; =============== S U B R O U T I N E =======================================


next_anim_sprite:
    CLC
    LDA Pointer
    ADC #$20 ; ' '
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


get_next_string:
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
Boy1:
   CHARACTER_ASK <stru_158010, AskBoy1Name, CurrentPlayer.PureSave.Characters.Name>
Girl:
   CHARACTER_ASK <stru_158030, AskGirlName, CurrentPlayer.PureSave.Characters.Name+$40>
Boy2:
   CHARACTER_ASK <stru_158050, AskBoy2Name, CurrentPlayer.PureSave.Characters.Name+$80>
Boy3:
   CHARACTER_ASK <stru_158070, AskBoy3Name, CurrentPlayer.PureSave.Characters.Name+$C0>
Food:
    CHARACTER_ASK <0, AskFoodName, CurrentPlayer.Food>

    CURSOR_SHORT <$10, 6, 1, 2, $D0, 1, 8, $E>
    CURSOR <2, 1, 4, 0, $80, $3A, $C, $18, byte_1962FA>

byte_1962FA:
    .byte 1, 1, 1
    .byte 8, $40, $23, $C0, $FF, 0

AskBoy1Name:
    .byte $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4, $E8, $E9, $F3, 1     ; What is this
    .byte $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0          ; boy's name?

AskGirlName:
    .byte $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4, $E8, $E9, $F3, 1     ; What is this
    .byte $E7, $E9, $F2, $EC, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0     ; girl's name?

AskBoy2Name:
    .byte $D4, $E8, $E9, $F3, $A0, $EF, $F4, $E8, $E5, $F2, 1               ; This other
    .byte $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0          ; boy's name?

AskBoy3Name:
    .byte $D4, $E8, $E9, $F3, $A0, $EC, $E1, $F3, $F4, 1                    ; This last
    .byte $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, 0          ; boy's name?

AskFoodName:
    .byte $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F9, $EF, $F5, $F2, 1     ; What is your
    .byte $E6, $E1, $F6, $EF, $F2, $E9, $F4, $E5, $A0, $E6                  ; favorite food?
    .byte $EF, $EF, $E4, $A2, 0

    .byte $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $E8, $E1                  ; Please change
    .byte $EE, $E7, $E5, 1
    .byte $F4, $E8, $E9, $F3, $A0, $EE, $E1, $ED, $E5, $AE, 0               ; this name.

    .byte $C1, $A0, $E3, $E8, $E1, $F2, $E1, $E3, $F4, $E5                  ; A character in
    .byte $F2, $A0, $E9, $EE, $A0, 1
    .byte $F4, $E8, $E9, $F3, $A0, $E7, $E1, $ED, $E5, $A0                  ; this game has
    .byte $E8, $E1, $F3, $A0, $A0, 1
    .byte $F4, $E8, $E1, $F4, $A0, $EE, $E1, $ED, $E5, $AE                  ; that name. Try
    .byte $A0, $D4, $F2, $F9, $A0, 1
    .byte $E1, $E7, $E1, $E9, $EE, $AC, $A0, $E1, $EE, $E4                  ; again, and use
    .byte $A0, $F5, $F3, $E5, $A0, 1
    .byte $EF, $EE, $EC, $F9, $A0, $E3, $E1, $F0, $E9, $F4                  ; only capital
    .byte $E1, $EC, $A0, $A0, $A0, 1
    .byte $EC, $E5, $F4, $F4, $E5, $F2, $F3, $AE, $A0, $A0                  ; letters.
    .byte $A0, $A0, $A0, $A0, $A0, 0

Names:
    .byte $CD, $E1, $F2, $F9, $A2, 1            ; Mary?
    .byte $D3, $F5, $FA, $F9, $A2, 1            ; Suzy?
    .byte $C7, $E5, $EF, $F2, $E7, $E5, $A2, 1  ; George?
    .byte $CD, $E1, $F2, $E9, $E1, $A2, 1       ; Maria?
    .byte $CD, $E9, $ED, $ED, $E9, $E5, $A2, 1  ; Mimmie?
    .byte $CD, $E9, $EE, $EE, $E9, $E5, $A2, 1  ; Minnie?
    .byte $D0, $E9, $F0, $F0, $E9, $A2, 1       ; Pippi?
    .byte $C4, $F5, $EE, $E3, $E1, $EE, $A2, 1  ; Duncan?
    .byte $CC, $E1, $F5, $F2, $E1, $A2, 1       ; Laura?
    .byte $C7, $E9, $E5, $E7, $F5, $E5, $A2, 1  ; Giegue?
    .byte $C1, $E2, $E2, $EF, $F4, $F4, $A2, 1  ; Abbott?
    .byte $CE, $E1, $EE, $E3, $F9, $A2, 1       ; Nancy?
    .byte $D5, $EC, $EC, $F2, $E9, $E3, $E8, 1  ; Ullrich
    .byte $D7, $E1, $EC, $EC, $F9, $A2, 1       ; Wally?
    .byte $CB, $E5, $EC, $EC, $F9, $A2, 1       ; Kelly?
    .byte $CA, $F5, $E1, $EE, $E1, $A2, 1       ; Juana?
    .byte $A0, 1, 0

AlphabeticalList:
    .byte $C1, $C2, $C3, $C4, $C5, $C6, $C7, $A0, $C8, $C9
    .byte $CA, $CB, $CC, $CD, $CE, 0                        ; ABCDEFG HIJKLMN
    .byte $CF, $D0, $D1, $D2, $D3, $D4, $D5, $A0, $D6, $D7  ; OPQRSTU VWXYZ.'
    .byte $D8, $D9, $DA, $AE, $A7, 0
    .byte $E1, $E2, $E3, $E4, $E5, $E6, $E7, $A0, $E8, $E9  ; abcdefg hijklmn
    .byte $EA, $EB, $EC, $ED, $EE, 0
    .byte $EF, $F0, $F1, $F2, $F3, $F4, $F5, $A0, $F6, $F7  ; opqrstu vwxyz-:
    .byte $F8, $F9, $FA, $AD, $AA, 0
    .byte 0, 0, $A1, 0, 0, 0, 0, 0, 0, $A2, 0, 0, 0, 0, 0   ; cursor position Back, End
    .byte 0
    .byte 0, 0, 0, $A3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; cursor position Previous

GameStory:
    .byte $C9, $EE, $A0, $F4, $E8, $E5, $A0, $E5, $E1, $F2  ; In the early 1900's, a dark
    .byte $EC, $F9, $A0, $B1, $B9, $B0, $B0, $A7, $F3, $AC
    .byte $A0, $E1, $A0, $E4, $E1, $F2, $EB, 1
    .byte $F3, $E8, $E1, $E4, $EF, $F7, $A0, $E3, $EF, $F6  ; shadow covered a small
    .byte $E5, $F2, $E5, $E4, $A0, $E1, $A0, $F3, $ED, $E1
    .byte $EC, $EC, 1
    .byte $E3, $EF, $F5, $EE, $F4, $F2, $F9, $A0, $F4, $EF  ; country town in rural
    .byte $F7, $EE, $A0, $E9, $EE, $A0, $F2, $F5, $F2, $E1
    .byte $EC, 1
    .byte $C1, $ED, $E5, $F2, $E9, $E3, $E1, $AE, $A0, $A0  ; America.  At that time, a
    .byte $C1, $F4, $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E9
    .byte $ED, $E5, $AC, $A0, $E1, 1
    .byte $F9, $EF, $F5, $EE, $E7, $A0, $ED, $E1, $F2, $F2  ; young married couple
    .byte $E9, $E5, $E4, $A0, $E3, $EF, $F5, $F0, $EC, $E5
    .byte 1
    .byte $F6, $E1, $EE, $E9, $F3, $E8, $E5, $E4, $A0, $ED  ; vanished mysteriously from
    .byte $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5, $F3, $EC
    .byte $F9, $A0, $E6, $F2, $EF, $ED, 1
    .byte $F4, $E8, $E5, $E9, $F2, $A0, $E8, $EF, $ED, $E5  ; their home.
    .byte $AE, 1
    .byte $A0, 1
    .byte $D4, $E8, $E5, $A0, $ED, $E1, $EE, $A7, $F3, $A0  ; The man's name was George,
    .byte $EE, $E1, $ED, $E5, $A0, $F7, $E1, $F3, $A0, $C7
    .byte $E5, $EF, $F2, $E7, $E5, $AC, 1
    .byte $F4, $E8, $E5, $A0, $F7, $EF, $ED, $E1, $EE, $A7  ; the woman's name was Maria.
    .byte $F3, $A0, $EE, $E1, $ED, $E5, $A0, $F7, $E1, $F3
    .byte $A0, $CD, $E1, $F2, $E9, $E1, $AE, 1
    .byte $A0, 1    ;
    .byte $D4, $F7, $EF, $A0, $F9, $E5, $E1, $F2, $F3, $A0  ; Two years later, as suddenly
    .byte $EC, $E1, $F4, $E5, $F2, $AC, $A0, $E1, $F3, $A0
    .byte $F3, $F5, $E4, $E4, $E5, $EE, $EC, $F9, 1
    .byte $E1, $F3, $A0, $E8, $E5, $A0, $EC, $E5, $E6, $F4  ; as he left, George returned.
    .byte $AC, $A0, $C7, $E5, $EF, $F2, $E7, $E5, $A0, $F2
    .byte $E5, $F4, $F5, $F2, $EE, $E5, $E4, $AE, 1
    .byte $C8, $E5, $A0, $EE, $E5, $F6, $E5, $F2, $A0, $F4  ; He never told anyone where
    .byte $EF, $EC, $E4, $A0, $E1, $EE, $F9, $EF, $EE, $E5
    .byte $A0, $F7, $E8, $E5, $F2, $E5, 1
    .byte $E8, $E5, $A0, $E8, $E1, $E4, $A0, $E2, $E5, $E5  ; he had been or what he had
    .byte $EE, $A0, $EF, $F2, $A0, $F7, $E8, $E1, $F4, $A0
    .byte $E8, $E5, $A0, $E8, $E1, $E4, 1
    .byte $E4, $EF, $EE, $E5, $AE, $A0, $A0, $C2, $F5, $F4  ; done.  But, he began an odd
    .byte $AC, $A0, $E8, $E5, $A0, $E2, $E5, $E7, $E1, $EE
    .byte $A0, $E1, $EE, $A0, $EF, $E4, $E4, 1
    .byte $F3, $F4, $F5, $E4, $F9, $AC, $A0, $E1, $EC, $EC  ; study, all by himself.
    .byte $A0, $E2, $F9, $A0, $E8, $E9, $ED, $F3, $E5, $EC
    .byte $E6, $AE, 1
    .byte $A0, 1    ;
    .byte $C1, $F3, $A0, $E6, $EF, $F2, $A0, $CD, $E1, $F2  ; As for Maria, his wife...
    .byte $E9, $E1, $AC, $A0, $E8, $E9, $F3, $A0, $F7, $E9
    .byte $E6, $E5, $AE, $AE, $AE, 1
    .byte $D3, $E8, $E5, $A0, $EE, $E5, $F6, $E5, $F2, $A0  ; She never returned.
    .byte $F2, $E5, $F4, $F5, $F2, $EE, $E5, $E4, $AE, 0
    .byte $B8, $B0, $A0, $F9, $E5, $E1, $F2, $F3, $A0, $E8  ; 80 years have passed   since then.
    .byte $E1, $F6, $E5, $A0, $F0, $E1, $F3, $F3, $E5, $E4
    .byte 1, $A0, 1, $F3, $E9, $EE, $E3, $E5, $A0, $F4, $E8
    .byte $E5, $EE, $AE, 0