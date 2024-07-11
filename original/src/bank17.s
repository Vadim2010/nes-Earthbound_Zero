.include "..\res\structures.inc"

.segment "BANK_7"

; ===========================================================================

; Segment type: Pure code
                ;.segment BANK17
                ;* =  $A000

; =============== S U B R O U T I N E =======================================


battle:
    .export battle
    .import get_enemy_group, bank0, preload_palettes, bank16, statistical_frame, wait_nmi_processed, delay, save_jmp_instr
    .import frame, shift_down_window, sub_F760, sub_F765, shift_up_window, clear_jmp_instr, Character, CurrentGame, byte_580
    .import NMI_Data, Item1, byte_640, byte_660
    .importzp Gamepad0Buttons, Gamepad1Buttons, pCharacter, Pointer, NMIFlags, OffsetNMI_Data, NamePos
    .importzp byte_23, byte_47, EnemyGroup, byte_49, byte_4A, byte_4B, byte_4C, byte_4D
    .importzp byte_52, CharacterOffset, Encounter, byte_59, EnemyPos, byte_5B

                LDA     #0
                STA     Gamepad0Buttons
                STA     Gamepad1Buttons
                STA     byte_52
                STA     byte_59
                STA     byte_49
                STA     byte_4A
                STA     byte_4B
                STA     byte_4C
                STA     byte_4D
                TAX

@clear1:
                STA     Character,X
                INX
                BNE     @clear1
                LDX     #$1F

@clear2:
                STA     byte_580,X
                DEX
                BPL     @clear2
                LDA     #0
                STA     CharacterOffset
                LDX     #0

next_character:
                TXA
                PHA
                LDA     CurrentGame + PURE_SAVE::CharactersNum,X    ; $7408,X
                BEQ     loc_17A03A
                JSR     copy_character
                CLC
                LDA     CharacterOffset
                ADC     #$20
                STA     CharacterOffset

loc_17A03A:
                PLA
                TAX
                INX
                CPX     #4
                BNE     next_character
                JSR     get_enemy_group ; Input: EnemyGroup - ID enemy ?
                                        ; Output: pCharacter - pointer to struct
                                        ;         Pointer - offset for struct, offset zero page
                LDA     #$80
                STA     CharacterOffset
                LDY     #0

@next_enemy:
                LDA     (pCharacter),Y  ; BANK16:95D8
                STA     Pointer
                INY
                LDA     (pCharacter),Y
                STA     Pointer+1
                INY
                TYA
                PHA
                LDA     Pointer
                CMP     #$FF
                BEQ     @no_enemy
                JSR     copy_enemy

@no_enemy:
                CLC
                LDA     CharacterOffset
                ADC     #$20
                STA     CharacterOffset
                PLA
                TAY
                CPY     #8
                BNE     @next_enemy
                LDA     (pCharacter),Y
                AND     #$E0
                LDX     #5

loc_17A072:
                LSR     A
                DEX
                BNE     loc_17A072
                STA     Encounter
                LDA     (pCharacter),Y  ; BANK16:95E0, BANK16:8FF0
                AND     #$1F
                STA     EnemyPos
                INY
                LDA     (pCharacter),Y
                AND     #$F
                STA     Pointer
                LDA     #0
                LDX     #5

loc_17A089:
                ASL     Pointer
                ROL     A
                DEX
                BNE     loc_17A089
                STA     Pointer+1
                CLC
                LDA     #$81            ; BattlePalette
                ADC     Pointer
                STA     Pointer
                LDA     #$8E
                ADC     Pointer+1
                STA     Pointer+1       ; ROM:8F41, ROM:8FC1
                JSR     bank0           ; set memory bank 0 at $8000
                JSR     preload_palettes
                JSR     bank16          ; set memory bank $16 at $8000
                LDX     #$23            ; 23C0 - attribute address
                LDY     #$C0
                JSR     fill_attribute
                LDX     #$2B            ; 2BC0 - attribute address
                LDY     #$C0
                JSR     fill_attribute
                JSR     statistical_frame
                LDA     #0
                STA     byte_5B
                LDA     #$80
                STA     CharacterOffset

loc_17A0C0:
                LDX     CharacterOffset
                LDA     Character,X
                BEQ     loc_17A0CA
                JSR     enemy_draw

loc_17A0CA:
                INC     byte_5B
                CLC
                LDA     CharacterOffset
                ADC     #$20
                STA     CharacterOffset
                BCC     loc_17A0C0
                LDY     #0
                LDX     #0

loc_17A0D9:
                LDA     byte_580,Y
                INY
                ORA     byte_580,Y
                STA     Pointer
                INY
                LDA     byte_580,Y
                INY
                ORA     byte_580,Y
                ASL     A
                ASL     A
                ORA     Pointer
                STA     Pointer
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     Pointer
                STA     byte_580,X
                INY
                INX
                CPX     #8
                BNE     loc_17A0D9
                JSR     wait_nmi_processed
                LDA     #5              ; write_horizontal
                STA     NMI_Data + NMI_DATA::NMI_ID ; NMITable
                LDA     #$10
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDY     #0
                LDX     #4

loc_17A110:
                LDA     byte_580,Y
                STA     NMI_Data,X      ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr+6,X ; NMITable
                INY
                INX
                CPY     #8
                BNE     loc_17A110
                LDA     #0
                STA     NMI_Data + NMI_DATA::PPU_Addr+6,X ; NMITable
                LDA     #$80
                STA     NMIFlags
                LDA     #$23
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                LDA     #$D8
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #0
                STA     byte_47
                STA     EnemyGroup
                LDX     #$80

loc_17A13E:
                TXA
                PHA
                LDY     #4

loc_17A142:
                LDA     Character + CHARACTER::MaxHealth+1,X
                AND     #3
                STA     Character + CHARACTER::MaxHealth+1,X
                INX
                INX
                DEY
                BNE     loc_17A142
                PLA
                CLC
                ADC     #$20
                TAX
                BNE     loc_17A13E
                LDX     #0
                LDA     Encounter
                CMP     #1
                BNE     loc_17A173
                LDX     #4
                LDA     #$FF
                STA     Item1+3
                STA     Item1+4
                LDA     #0
                STA     Character + CHARACTER::field_20
                STA     byte_640
                STA     byte_660

loc_17A173:
                STX     byte_5B
                LDA     byte_23
                BEQ     loc_17A18C
                LDY     #0
                STY     Encounter

loc_17A17D:
                LDA     Character + CHARACTER::field_1E,Y
                ORA     #4
                STA     Character + CHARACTER::field_1E,Y
                TYA
                CLC
                ADC     #$20
                TAY
                BPL     loc_17A17D

loc_17A18C:
                LDA     Encounter
                CMP     #5
                BNE     loc_17A19C
                LDA     #$96
                STA     NamePos
                LDA     Character + CHARACTER::Speed
                STA     Item1+$C

loc_17A19C:
                LDX     #$14
                JSR     delay
                JSR     save_jmp_instr  ; save JMP ROM:F76A to $D7

@battle_loop:
                LDA     #0
                JSR     frame
                JSR     sub_17AC6A      ; draw battle window without menu
                                        ; print messages
                                        ; damage animation
                BCS     @end_battle
                LDX     #$14
                JSR     delay
                LDA     #7
                JSR     frame
                LDA     #0
                STA     byte_52
                JSR     shift_up_window ; shift up window
                                        ; jump instruction LDX #$04
                JSR     sub_F765
                JSR     sub_17A50A      ; battle menu, wait command
                JSR     sub_F760        ; return if select action, set value $5A = 1
                LDA     #3
                JSR     frame
                JSR     shift_down_window
                JMP     @battle_loop
; ---------------------------------------------------------------------------

@end_battle:
                JSR     clear_jmp_instr
                LDA     #0
                STA     Gamepad0Buttons
                STA     Gamepad1Buttons
                RTS
; End of function battle


; =============== S U B R O U T I N E =======================================


copy_character:
    .importzp AddrForJmp

                STA     AddrForJmp
                TAX
                LDA     #<(CurrentGame)         ; #0
                STA     Pointer
                LDA     #>(CurrentGame)         ; #$74
                STA     Pointer+1

loc_17A1E8:
                CLC
                LDA     Pointer
                ADC     #$40                    ; offset Charachter field into PureSave
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1
                DEX
                BNE     loc_17A1E8
                LDY     #1
                LDX     CharacterOffset

loc_17A1FC:
                LDA     (Pointer),Y
                STA     Character + CHARACTER::field_1,X
                INY
                INX
                CPY     #$10
                BNE     loc_17A1FC
                LDY     #$14
                LDX     CharacterOffset

loc_17A20B:
                LDA     (Pointer),Y
                STA     Character + CHARACTER::MaxHealth,X
                INX
                INY
                CPY     #$18
                BNE     loc_17A20B
                LDX     CharacterOffset
                LDA     #$FF
                STA     Character,X
                LDA     AddrForJmp
                STA     Character + CHARACTER::Exp,X
                LDA     Pointer
                STA     Character + CHARACTER::NameOffset,X
                LDA     Pointer+1
                STA     Character + CHARACTER::NameOffset+1,X
                RTS
; End of function copy_character


; =============== S U B R O U T I N E =======================================


copy_enemy:
                LDX     CharacterOffset
                LDA     Pointer+1
                ASL     A
                ASL     A
                STA     Character + CHARACTER::field_1A,X
                LDA     Pointer
                STA     AddrForJmp
                LDA     #0
                LDX     #5

loc_17A23E:
                ASL     AddrForJmp
                ROL     A
                DEX
                BNE     loc_17A23E
                STA     AddrForJmp+1
                CLC
                LDA     #0
                ADC     AddrForJmp
                STA     AddrForJmp
                LDA     #$80
                ADC     AddrForJmp+1
                STA     AddrForJmp+1
                LDY     #1
                LDX     CharacterOffset

loc_17A257:
                LDA     (AddrForJmp),Y  ; BANK16:8860, BANK16:8481
                STA     Character + CHARACTER::field_1,X
                INY
                INX
                CPY     #$18
                BNE     loc_17A257
                LDX     CharacterOffset
                LDY     EnemyGroup
                INY
                TYA
                STA     Character,X
                LDA     AddrForJmp
                STA     Character + CHARACTER::NameOffset,X
                LDA     AddrForJmp+1
                STA     Character + CHARACTER::NameOffset+1,X
                LDY     #$5E
                LDA     Pointer+1
                BPL     loc_17A285
                LDA     Character + CHARACTER::field_1E,X
                ORA     #1
                STA     Character + CHARACTER::field_1E,X
                LDY     #0

loc_17A285:
                TYA
                STA     Character + CHARACTER::field_1D,X
                RTS
; End of function copy_enemy


; =============== S U B R O U T I N E =======================================


enemy_draw:
    .import SpriteTable, off_16960A, byte_168F40
    .importzp TilepackMode, pTileID, pDist, TilesCount

                LDA     Character + CHARACTER::field_1E,X
                AND     #1
                BEQ     loc_17A296
                LDA     #0
                STA     Character,X

loc_17A296:
                LDA     Character + CHARACTER::field_1A,X
                ORA     byte_5B
                STA     Character + CHARACTER::field_1A,X
                LDA     Character + CHARACTER::MaxHealth+1,X
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     off_16960A,Y
                STA     Pointer
                LDA     off_16960A+1,Y
                STA     Pointer+1
                LDA     Character + CHARACTER::Offense+1,X
                AND     #$E0
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                STA     TilepackMode
                LDY     #0
                LDA     (Pointer),Y     ; BANK16:9734
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                INY
                SEC
                LDA     (Pointer),Y
                SBC     TilepackMode
                TAY
                INY
                LDA     #$E0

loc_17A2D2:
                CLC
                ADC     #$20
                DEY
                BNE     loc_17A2D2
                STA     pTileID
                LDA     EnemyPos
                ASL     A
                ASL     A
                ADC     byte_5B
                TAY
                LDA     byte_168F40,Y
                STA     pTileID+1
                LDA     Character + CHARACTER::MaxHealth+1,X
                AND     #$C
                LSR     A
                LSR     A
                LDY     pTileID+1
                LDX     #0

loc_17A2F1:
                STA     byte_580,Y
                INY
                INX
                CPX     AddrForJmp+1
                BNE     loc_17A2F1
                CLC
                LDA     pTileID+1
                ADC     pTileID
                ADC     #$80
                STA     pTileID
                LDA     #0
                ADC     #$21
                STA     pTileID+1
                LDA     pTileID
                AND     #$E0
                STA     pDist
                LDA     pTileID+1
                AND     #3
                LSR     A
                ROR     pDist
                LSR     A
                ROR     pDist
                SEC
                LDA     pDist
                SBC     #$19
                STA     pDist
                LDA     pTileID
                ASL     A
                ASL     A
                ASL     A
                SEC
                SBC     #$10
                STA     pDist+1
                LDX     byte_5B
                INX
                LDA     #$C0

loc_17A32F:
                CLC
                ADC     #$40
                DEX
                BNE     loc_17A32F
                STA     TilepackMode
                LDY     #2

@next_row:
                JSR     wait_nmi_processed
                LDX     #0
                LDA     #5              ; write_horizontal
                STA     NMI_Data,X      ; NMITable
                INX
                LDA     AddrForJmp+1
                STA     NMI_Data,X      ; NMITable
                STA     TilesCount
                INX
                LDA     pTileID+1
                STA     NMI_Data,X      ; NMITable
                INX
                LDA     pTileID
                STA     NMI_Data,X      ; NMITable

@next_tile:
                INY
                LDA     (Pointer),Y     ; BANK16:973C
                CLC
                ADC     TilepackMode
                INX
                STA     NMI_Data,X      ; NMITable
                DEC     TilesCount
                BNE     @next_tile
                LDA     #0
                INX
                STA     NMI_Data,X      ; NMITable
                CLC
                LDA     pTileID
                ADC     #$20 ; ' '
                STA     pTileID
                LDA     pTileID+1
                ADC     #0
                STA     pTileID+1
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                DEC     AddrForJmp
                BNE     @next_row
                LDX     CharacterOffset
                LDA     Character + CHARACTER::MaxPP+1,X
                AND     #$FC
                BEQ     locret_17A3D1
                LSR     A
                LSR     A
                STA     Pointer
                ASL     A
                ADC     Pointer
                CLC
                ADC     #$C8
                STA     Pointer
                LDA     #0
                ADC     #$97
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     Character + CHARACTER::field_1C,X
                LDA     byte_5B
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     #0
                STA     SpriteTable,X
                STA     SpriteTable + ANIM_SPRITE::TileID,X
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                LDA     pDist+1
                STA     SpriteTable + ANIM_SPRITE::PosX,X
                LDA     pDist
                STA     SpriteTable + ANIM_SPRITE::PosY,X
                LDY     #1
                LDA     (Pointer),Y
                STA     SpriteTable + ANIM_SPRITE::pFrame,X
                INY
                LDA     (Pointer),Y
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X

locret_17A3D1:
                RTS
; End of function enemy_draw


; =============== S U B R O U T I N E =======================================


fill_attribute:
                JSR     wait_nmi_processed
                STX     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                STY     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     #8
                STA     NMI_Data + NMI_DATA::NMI_ID ; NMITable
                LDA     #$40
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     #$FF
                STA     NMI_Data + NMI_DATA::Chr    ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::Next   ; NMITable
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     OffsetNMI_Data
                RTS
; End of function fill_attribute


; =============== S U B R O U T I N E =======================================


sub_17A3F8:
    .export sub_17A3F8
    .import text2stack, sub_C7C1
    .importzp byte_50, byte_51, byte_54, byte_73, PointerTilePack, Row, Column

                CMP     #0
                BEQ     locret_17A478
                PHA
                JSR     sub_17A4BB
                JSR     bank0           ; set memory bank 0 at $8000
                PLA
                CMP     #$FF
                BNE     loc_17A42D
                SEC
                LDY     byte_54
                LDA     Character + CHARACTER::NameOffset,Y
                SBC     #0
                STA     PointerTilePack
                LDA     Character + CHARACTER::NameOffset+1,Y
                SBC     #$80
                ASL     PointerTilePack
                ROL     A
                ASL     PointerTilePack
                ROL     A
                ASL     PointerTilePack
                ROL     A
                CLC
                ADC     #$14
                STA     PointerTilePack
                LDA     #0
                ADC     #5
                STA     byte_73
                BCC     loc_17A44A

loc_17A42D:
                LDY     #0
                STY     Pointer+1
                ASL     A
                ROL     Pointer+1
                CLC
                ADC     #$81
                STA     Pointer
                LDA     Pointer+1
                ADC     #$90
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     PointerTilePack
                INY
                LDA     (Pointer),Y
                STA     byte_73

loc_17A44A:
                JSR     text2stack
                LDA     PointerTilePack
                STA     byte_50
                LDA     PointerTilePack+1
                STA     byte_51
                LDA     byte_52
                CMP     #3
                BNE     loc_17A462
                LDX     #3
                JSR     sub_C7C1
                DEC     byte_52

loc_17A462:
                JSR     sub_17A479
                CMP     #2
                BEQ     loc_17A46F
                INC     byte_52
                CMP     #0
                BNE     loc_17A44A

loc_17A46F:
                JSR     bank16          ; set memory bank $16 at $8000
                LDX     CurrentGame + PURE_SAVE::field_18       ; $7418
                JSR     delay

locret_17A478:
                RTS
; End of function sub_17A3F8


; =============== S U B R O U T I N E =======================================


sub_17A479:
    .import sub_F5C2, print_string, move_chars
    .importzp byte_70, UnpackID

                LDA     byte_52
                ASL     A
                ADC     #3
                STA     Row
                LDY     #0
                LDA     (byte_50),Y
                CMP     #3
                BNE     loc_17A49D
                LDA     #$F
                STA     Column
                JSR     sub_F5C2
                INC     byte_50
                BNE     loc_17A495
                INC     byte_51

loc_17A495:
                LDY     #0
                LDA     (byte_50),Y
                CMP     #2
                BEQ     locret_17A4BA

loc_17A49D:
                LDA     #$16
                STA     byte_70
                LDA     #5
                STA     Column
                JSR     wait_nmi_processed
                LDA     byte_50
                STA     PointerTilePack
                LDA     byte_51
                STA     PointerTilePack+1
                JSR     print_string
                LDA     #1
                JSR     move_chars      ; Move $A4 chars from $432-4D6 to $45B-4FF
                LDA     UnpackID        ; UnpackTable

locret_17A4BA:
                RTS
; End of function sub_17A479


; =============== S U B R O U T I N E =======================================


sub_17A4BB:
    .import unk_588

                LDA     #$21
                STA     byte_580
                STA     unk_588
                LDA     #$80
                STA     AddrForJmp
                LDA     #5
                STA     AddrForJmp+1
                LDX     CharacterOffset
                JSR     loc_17A4DA
                LDA     #$88
                STA     AddrForJmp
                LDA     #5
                STA     AddrForJmp+1
                LDX     byte_54

loc_17A4DA:
                LDA     Character + CHARACTER::NameOffset,X
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,X
                STA     Pointer+1
                LDY     #$18
                LDA     (Pointer),Y
                PHA
                INY
                LDA     (Pointer),Y
                LDY     #2
                STA     (AddrForJmp),Y
                PLA
                DEY
                STA     (AddrForJmp),Y
                INY
                INY
                LDA     Character + CHARACTER::field_1A,X
                AND     #$1C
                BEQ     loc_17A505
                LSR     A
                LSR     A
                CLC
                ADC     #$40
                STA     (AddrForJmp),Y
                INY

loc_17A505:
                LDA     #0
                STA     (AddrForJmp),Y
                RTS
; End of function sub_17A4BB


; =============== S U B R O U T I N E =======================================


sub_17A50A:
                LDA     #0
                STA     CharacterOffset

loc_17A50E:
                LDY     CharacterOffset
                LDA     #0
                STA     Character + CHARACTER::field_1D,Y
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$F7
                STA     Character + CHARACTER::field_1E,Y
                LDA     Character,Y
                BEQ     loc_17A535
                LDA     Character + CHARACTER::field_1,Y
                AND     #$F4
                BNE     loc_17A535
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$20
                BNE     loc_17A535
                JSR     sub_17A53F
                BCS     loc_17A50E

loc_17A535:
                CLC
                LDA     CharacterOffset
                ADC     #$20
                STA     CharacterOffset
                BNE     loc_17A50E
                RTS
; End of function sub_17A50A


; =============== S U B R O U T I N E =======================================


sub_17A53F:
                LDA     byte_59
                BNE     loc_17A559
                LDY     CharacterOffset
                BMI     loc_17A559
                LDA     Character + CHARACTER::Exp,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A559
                JSR     sub_17A7DA
                BCS     locret_17A572
                LDA     byte_59
                BEQ     loc_17A55C

loc_17A559:
                JSR     sub_17A573

loc_17A55C:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::field_1D,Y
                CMP     #$53
                BEQ     loc_17A569
                CMP     #$59
                BNE     loc_17A571

loc_17A569:
                LDA     Character + CHARACTER::field_1E,Y
                ORA     #8
                STA     Character + CHARACTER::field_1E,Y

loc_17A571:
                CLC

locret_17A572:
                RTS
; End of function sub_17A53F


; =============== S U B R O U T I N E =======================================


sub_17A573:
    .import sub_F673, sub_F1ED, sub_F2D5
    .importzp byte_4E, byte_4F

                LDA     CharacterOffset
                BMI     loc_17A57A
                JMP     loc_17A57D
; ---------------------------------------------------------------------------

loc_17A57A:
                JMP     loc_17A723
; ---------------------------------------------------------------------------

loc_17A57D:
                LDY     #0

loc_17A57F:
                STY     byte_54
                LDA     Character,Y
                BEQ     loc_17A594
                LDA     Character + CHARACTER::Exp,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A594
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17A59D

loc_17A594:
                TYA
                CLC
                ADC     #$20
                TAY
                BPL     loc_17A57F
                BMI     loc_17A5A0

loc_17A59D:
                JMP     loc_17A6B0
; ---------------------------------------------------------------------------

loc_17A5A0:
                LDY     #0

loc_17A5A2:
                STY     byte_54
                LDA     Character,Y
                BEQ     loc_17A5BC
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17A5BC
                LDA     Character + CHARACTER::Exp,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A5BC
                JSR     sub_F673
                BCC     loc_17A5C5

loc_17A5BC:
                TYA
                CLC
                ADC     #$20
                TAY
                BPL     loc_17A5A2
                BMI     loc_17A5E9

loc_17A5C5:
                LDX     #0
                LDY     #0

loc_17A5C9:
                LDA     Character,Y
                BEQ     loc_17A5DB
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17A5DB
                JSR     sub_F673
                BCS     loc_17A5DB
                INX
                STY     byte_54

loc_17A5DB:
                TYA
                CLC
                ADC     #$20
                TAY
                BPL     loc_17A5C9
                CPX     #1
                BCC     loc_17A611
                JMP     loc_17A623
; ---------------------------------------------------------------------------

loc_17A5E9:
                LDY     #0

loc_17A5EB:
                STY     byte_54
                LDA     Character,Y
                BEQ     loc_17A604
                LDA     Character + CHARACTER::Exp,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A604
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17A604
                AND     #$70
                BNE     loc_17A60E

loc_17A604:
                TYA
                CLC
                ADC     #$20
                TAY
                BPL     loc_17A5EB
                JMP     loc_17A690
; ---------------------------------------------------------------------------

loc_17A60E:
                JMP     loc_17A659
; ---------------------------------------------------------------------------

loc_17A611:
                LDA     #$C
                JSR     loc_17A6C2
                BCC     locret_17A622
                LDA     #$B
                JSR     loc_17A6C2
                BCC     locret_17A622
                JMP     loc_17A623
; ---------------------------------------------------------------------------

locret_17A622:
                RTS
; ---------------------------------------------------------------------------

loc_17A623:
                LDA     #$A
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDA     #9
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDA     #8
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDY     CharacterOffset
                JSR     sub_17BFAA
                BCS     loc_17A5E9
                CPX     #$7C
                BEQ     loc_17A5E9
                CPX     #$84
                BEQ     loc_17A5E9
                TYA
                LDY     CharacterOffset
                STA     Character + CHARACTER::Level,Y
                TXA
                STA     Character + CHARACTER::field_1D,Y

loc_17A651:
                LDA     byte_54
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A659:
                LDY     byte_54
                LDA     Character + CHARACTER::field_1,Y
                TAX
                AND     #$20
                BNE     loc_17A670
                TXA
                AND     #$10
                BNE     loc_17A677
                TXA
                AND     #$40
                BNE     loc_17A67E
                JMP     loc_17A685
; ---------------------------------------------------------------------------

loc_17A670:
                LDA     #$11
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A677:
                LDA     #$13
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A67E:
                LDA     #$12
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A685:
                JMP     loc_17A690
; ---------------------------------------------------------------------------

loc_17A688:
                LDA     byte_54
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A690:
                LDY     CharacterOffset
                LDA     #1
                STA     Character + CHARACTER::field_1D,Y

loc_17A697:
                JSR     sub_F1ED
                AND     #$E0
                ORA     #$80
                TAY
                LDA     Character,Y
                BEQ     loc_17A697
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17A697
                TYA
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A6B0:
                LDA     #$14
                JSR     loc_17A6C2
                BCC     loc_17A6BA
                JMP     loc_17A5A0
; ---------------------------------------------------------------------------

loc_17A6BA:
                LDY     CharacterOffset
                LDA     byte_54
                STA     Character + CHARACTER::field_1C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A6C2:
                STA     Pointer
                JSR     sub_17A86B
                LDA     Pointer
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     Pointer
                AND     #7
                TAX
                INX
                SEC
                LDA     #0

loc_17A6D6:
                ROR     A
                DEX
                BNE     loc_17A6D6
                STA     Pointer+1
                LDA     (pCharacter),Y
                AND     Pointer+1
                BEQ     loc_17A721
                LDA     #0
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                STA     Pointer+1
                CLC
                LDA     Pointer
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$9E
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (Pointer),Y
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1D,Y
                LDY     #7
                LDA     (Pointer),Y
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     sub_17B1D1
                BCC     loc_17A721
                JSR     sub_17B1C5
                BCC     loc_17A721
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A721:
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17A723:
                JSR     sub_F1ED
                AND     #7
                CLC
                ADC     CharacterOffset
                TAY
                LDA     Character + CHARACTER::Level,Y
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1D,Y
                JSR     sub_17AC23
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17A573            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .word sub_17A7A3, sub_17A740, sub_17A74A

; =============== S U B R O U T I N E =======================================


sub_17A740:
                JSR     sub_17A7AB
                LDA     byte_54
                BPL     sub_17A740
                JMP     sub_17A7A3
; End of function sub_17A740


; =============== S U B R O U T I N E =======================================


sub_17A74A:
                LDA     CharacterOffset
                BPL     loc_17A796
                LDA     Encounter
                CMP     #3
                BNE     loc_17A760
                LDX     #3

loc_17A756:
                LDA     #6
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A756

loc_17A760:
                LDA     Encounter
                CMP     #4
                BNE     loc_17A78A
                LDX     #3

loc_17A768:
                LDA     #1
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A768
                LDX     #3

loc_17A774:
                LDA     #2
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A774
                LDX     #3

loc_17A780:
                LDA     #4
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A780

loc_17A78A:
                LDX     #3

loc_17A78C: 
                LDA     #7
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A78C

loc_17A796:
                JSR     sub_17A7AB
                LDA     byte_54
                BMI     loc_17A796
                JMP     sub_17A7A3
; ---------------------------------------------------------------------------

loc_17A7A0:
                JMP     sub_17A7A3
; End of function sub_17A74A


; =============== S U B R O U T I N E =======================================


sub_17A7A3:
                LDA     byte_54
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1C,Y
                RTS
; End of function sub_17A7A3


; =============== S U B R O U T I N E =======================================


sub_17A7AB:
    .importzp OtherNMIFlags

                JSR     sub_F1ED
                AND     #OtherNMIFlags
                TAY
                LDA     Character,Y
                BEQ     sub_17A7AB
                LDA     Character + CHARACTER::field_1,Y
                BMI     sub_17A7AB
                STY     byte_54
                RTS
; End of function sub_17A7AB


; =============== S U B R O U T I N E =======================================


sub_17A7BE:
                CMP     CurrentGame + PURE_SAVE::CharactersNum, X   ; $7408,X
                BNE     loc_17A7D8
                TXA
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                TAY
                LDA     Character,Y
                BEQ     loc_17A7D8
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17A7D8
                STY     byte_54
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17A7D8:
                CLC
                RTS
; End of function sub_17A7BE


; =============== S U B R O U T I N E =======================================


sub_17A7DA:
                JSR     sub_17AC06

loc_17A7DD:
                LDA     #2
                LDX     $761C           ; CurrentGame.field_21C
                BPL     loc_17A7E6
                LDA     #$13

loc_17A7E6:
                JSR     frame
                JSR     battle_menu
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17A7DA            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .word sub_17A802, sub_17A814, sub_17A847, sub_17A87D, sub_17A888
                .word sub_17A8BA, sub_17A8BF, sub_17A8E2, sub_17A8E7

nullsub_6:
    RTS

; =============== S U B R O U T I N E =======================================


sub_17A802:
                LDA     #1
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1D,Y
                JSR     sub_17A962
                BCC     loc_17A811
                JMP     loc_17A7DD
; ---------------------------------------------------------------------------

loc_17A811:
                JMP     nullsub_6
; End of function sub_17A802


; =============== S U B R O U T I N E =======================================


sub_17A814:
                JSR     wait_nmi_processed
                LDA     #1
                STA     byte_59
                LDA     #$14
                STA     SpriteTable + ANIM_SPRITE::pFrame+$E0
                LDA     #$97
                STA     SpriteTable + ANIM_SPRITE::pFrame+$E1
                LDA     #4
                STA     SpriteTable + ANIM_SPRITE::Tiles+$E0
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::TileID+$E0
                STA     SpriteTable + ANIM_SPRITE::field_4+$E0
                STA     SpriteTable + ANIM_SPRITE::field_5+$E0
                LDA     #$D0
                STA     SpriteTable + ANIM_SPRITE::PosX+$E0
                LDA     #$47
                STA     SpriteTable + ANIM_SPRITE::PosY+$E0
                LDA     #1
                STA     NMIFlags
                CLC
                JMP     nullsub_6
; End of function sub_17A814


; =============== S U B R O U T I N E =======================================


sub_17A847:
                JSR     sub_17A86B
                LDA     #0
                STA     Pointer
                LDY     #7

loc_17A850:
                LDA     (pCharacter),Y
                ORA     Pointer
                STA     Pointer
                DEY
                BNE     loc_17A850
                LDA     Pointer
                BEQ     loc_17A868
                JSR     sub_17AB10
                BCS     loc_17A865
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A865:
                JMP     sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A868:
                JMP     loc_17A7DD
; End of function sub_17A847


; =============== S U B R O U T I N E =======================================


sub_17A86B:
                LDY     CharacterOffset
                CLC
                LDA     Character + CHARACTER::NameOffset,Y
                ADC     #$30
                STA     pCharacter
                LDA     Character + CHARACTER::NameOffset+1,Y
                ADC     #0
                STA     pCharacter+1
                RTS
; End of function sub_17A86B


; =============== S U B R O U T I N E =======================================


sub_17A87D:
                LDA     #$59

loc_17A87F:
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1D,Y
                CLC
                JMP     nullsub_6
; End of function sub_17A87D


; =============== S U B R O U T I N E =======================================


sub_17A888:
                LDY     CharacterOffset
                CLC
                LDA     Character + CHARACTER::NameOffset,Y
                ADC     #$20
                STA     pCharacter
                LDA     Character + CHARACTER::NameOffset+1,Y
                ADC     #0
                STA     pCharacter+1
                LDA     #0
                STA     Pointer
                LDY     #7

loc_17A89F:
                LDA     (pCharacter),Y
                ORA     Pointer
                STA     Pointer
                DEY
                BPL     loc_17A89F
                LDA     Pointer
                BEQ     loc_17A8B7
                JSR     sub_17AA08
                BCS     loc_17A8B4
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A8B4:
                JMP     sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A8B7:
                JMP     loc_17A7DD
; End of function sub_17A888


; =============== S U B R O U T I N E =======================================


sub_17A8BA:
                LDA     #$48
                JMP     loc_17A87F
; End of function sub_17A8BA


; =============== S U B R O U T I N E =======================================


sub_17A8BF:
    .import byte_591
    .importzp CursorPosition

                LDA     #$80
                STA     byte_54
                JSR     sub_17A991
                BCS     loc_17A8DF
                LDX     CursorPosition
                LDA     byte_591,X
                TAX
                DEX
                TXA
                STA     byte_54
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1C,Y
                LDA     #$6F
                STA     Character + CHARACTER::field_1D,Y
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A8DF:
                JMP     loc_17A7DD
; End of function sub_17A8BF


; =============== S U B R O U T I N E =======================================


sub_17A8E2:
                LDA     #$1C
                JMP     loc_17A87F
; End of function sub_17A8E2


; =============== S U B R O U T I N E =======================================


sub_17A8E7:
                SEC
                LDA     CharacterOffset
                BEQ     loc_17A909
                SBC     #$20
                STA     CharacterOffset
                TAY
                LDA     Character,Y
                BEQ     sub_17A8E7
                LDA     Character + CHARACTER::field_1,Y
                BMI     sub_17A8E7
                LDA     Character + CHARACTER::field_1,Y
                AND     #$F4
                BNE     sub_17A8E7
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$20
                BNE     sub_17A8E7

loc_17A909:
                SEC
                JMP     nullsub_6
; End of function sub_17A8E7


; =============== S U B R O U T I N E =======================================


battle_menu:
    .import short_cursor_update
    .importzp pStr, pCursor, Buttons

                LDX     #$73
                LDY     #$9F
                LDA     Encounter
                CMP     #1
                BNE     loc_17A91E
                LDX     #$83
                LDY     #$9F
                JMP     loc_17A927
; ---------------------------------------------------------------------------

loc_17A91E:
                LDA     $761C           ; CurrentGame.field_21C
                BPL     loc_17A927
                LDX     #$7B
                LDY     #$9F

loc_17A927:
                STX     pStr
                STY     pStr+1
                LDX     #$6B
                LDY     #$9F
                STX     pCursor
                STY     pCursor+1
                JSR     short_cursor_update
                BIT     Buttons
                BVS     loc_17A942
                LDA     #9
                JSR     sub_17A945
                LDA     CursorPosition
                RTS
; ---------------------------------------------------------------------------

loc_17A942:
                LDA     #8
                RTS
; End of function battle_menu


; =============== S U B R O U T I N E =======================================


sub_17A945:
                STA     Pointer
                LDA     CursorPosition
                LSR     A
                ASL     A
                CLC
                ADC     Row
                STA     Row
                LDA     CursorPosition
                AND     #1
                BEQ     loc_17A95D
                CLC
                LDA     Column
                ADC     Pointer
                STA     Column

loc_17A95D:
                LDA     #$D
                JMP     frame
; End of function sub_17A945


; =============== S U B R O U T I N E =======================================


sub_17A962:
                JSR     sub_17AC23
                BEQ     loc_17A98D
                LDX     #$80
                CMP     #2
                BEQ     loc_17A96F
                LDX     #0

loc_17A96F:
                STX     Pointer
                LDA     CharacterOffset
                AND     #$80
                EOR     Pointer
                STA     byte_54
                JSR     sub_17A991
                BCS     loc_17A98F
                LDX     CursorPosition
                LDA     byte_591,X
                TAX
                DEX
                TXA
                STA     byte_54
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1C,Y

loc_17A98D:
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A98F:
                SEC
                RTS
; End of function sub_17A962


; =============== S U B R O U T I N E =======================================


sub_17A991:
    .import cursor_update

                LDA     #$B
                JSR     frame
                JSR     sub_17A9B3
                LDA     #$8B
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                BIT     Buttons
                BVS     loc_17A9B1
                BMI     loc_17A9AD
                JMP     sub_17A991
; ---------------------------------------------------------------------------

loc_17A9AD:
                LDA     CursorPosition
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A9B1:
                SEC
                RTS
; End of function sub_17A991


; =============== S U B R O U T I N E =======================================


sub_17A9B3:
    .import byte_590, byte_592, byte_593, unk_594

                LDA     #$12
                STA     Row
                LDX     #0
                STX     byte_591
                STX     byte_592
                STX     byte_593
                STX     unk_594
                INX
                STX     byte_590
                LDA     byte_54
                PHA
                LDY     #4

loc_17A9CE:
                TYA
                PHA
                LDY     byte_54
                LDA     Character,Y
                BEQ     loc_17A9F8
                LDY     byte_54
                BMI     loc_17A9E4
                LDA     Character + CHARACTER::Exp,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A9F8

loc_17A9E4:
                INY
                TYA
                STA     byte_590,X
                INX
                TXA
                PHA
                JSR     sub_17A4BB
                LDA     #$C
                JSR     frame
                INC     Row
                PLA
                TAX

loc_17A9F8:
                CLC
                LDA     byte_54
                ADC     #$20
                STA     byte_54
                PLA
                TAY
                DEY
                BNE     loc_17A9CE
                PLA
                STA     byte_54
                RTS
; End of function sub_17A9B3


; =============== S U B R O U T I N E =======================================


sub_17AA08:
    .import wait_A_B

                LDA     #$E
                JSR     frame
                JSR     sub_17AA67
                JSR     sub_17AAE9
                BCS     loc_17AA65
                LDY     CharacterOffset
                LDA     CursorPosition
                STA     Character + CHARACTER::Level,Y
                LDY     CursorPosition
                LDA     (pCharacter),Y
                JSR     sub_17AAA4
                LDY     CharacterOffset
                JSR     sub_17AC49
                BCS     loc_17AA43
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                CMP     #0
                BEQ     loc_17AA4C
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1D,Y
                JSR     sub_17A962
                BCS     loc_17AA65
                RTS
; ---------------------------------------------------------------------------

loc_17AA43:
                LDX     CharacterOffset
                JSR     sub_17A4BB
                LDX     #$14
                BNE     loc_17AA5E

loc_17AA4C:
                LDX     #$10
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #3
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                CMP     #0
                BEQ     loc_17AA5E
                LDX     #$11

loc_17AA5E:
                TXA
                JSR     frame
                JSR     wait_A_B

loc_17AA65:
                SEC
                RTS
; End of function sub_17AA08


; =============== S U B R O U T I N E =======================================


sub_17AA67:
    .import byte_169FB2, byte_169FB4, unk_589, unk_58A

                LDY     #0

loc_17AA69:
                TYA
                PHA
                AND     #1
                TAX
                LDA     byte_169FB2,X
                STA     Column
                TYA
                LSR     A
                TAX
                LDA     byte_169FB4,X
                STA     Row
                LDA     (pCharacter),Y
                BEQ     loc_17AA9C
                JSR     sub_17AAA4
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #4
                STA     unk_588
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     unk_589
                INY
                LDA     (AddrForJmp),Y
                STA     unk_58A
                LDA     #$F
                JSR     frame

loc_17AA9C:
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17AA69
                RTS
; End of function sub_17AA67


; =============== S U B R O U T I N E =======================================


sub_17AAA4:
                LDX     #0
                STX     AddrForJmp+1
                LDX     #3

loc_17AAAA:
                ASL     A
                ROL     AddrForJmp+1
                DEX
                BNE     loc_17AAAA
                CLC
                ADC     #0
                STA     AddrForJmp
                LDA     AddrForJmp+1
                ADC     #$98
                STA     AddrForJmp+1
                RTS
; End of function sub_17AAA4


; =============== S U B R O U T I N E =======================================


sub_17AABC:
                CLC
                LDA     Character + CHARACTER::NameOffset,Y
                ADC     #$20
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                ADC     #0
                STA     Pointer+1
                RTS
; End of function sub_17AABC


; =============== S U B R O U T I N E =======================================


sub_17AACC:
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #$21
                STA     byte_590
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     byte_591
                INY
                LDA     (AddrForJmp),Y
                STA     byte_592
                LDA     #0
                STA     byte_593
                JMP     bank16          ; set memory bank $16 at $8000
; End of function sub_17AACC


; =============== S U B R O U T I N E =======================================


sub_17AAE9:
                LDA     #$95
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                LDA     pCharacter
                STA     pStr
                LDA     pCharacter+1
                STA     pStr+1
                JSR     short_cursor_update
                BIT     Buttons
                BVS     loc_17AB0E
                BMI     loc_17AB05
                JMP     sub_17AAE9
; ---------------------------------------------------------------------------

loc_17AB05:
                LDA     #$C
                JSR     sub_17A945
                LDA     CursorPosition
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AB0E:
                SEC
                RTS
; End of function sub_17AAE9


; =============== S U B R O U T I N E =======================================


sub_17AB10:
    .import set_jmp_addr

                LDY     #1

loc_17AB12:
                LDA     (pCharacter),Y
                BEQ     loc_17AB32
                TYA
                PHA
                LDA     #$E
                JSR     frame
                LDA     #$12
                JSR     frame
                JSR     sub_17AB61
                JSR     sub_17ABC2
                PLA
                TAY
                CPX     #1
                BEQ     loc_17AB39
                CPX     #2
                BEQ     loc_17AB5F

loc_17AB32:
                INY
                CPY     #8
                BEQ     sub_17AB10
                BNE     loc_17AB12

loc_17AB39:
                LDY     CursorPosition
                LDA     byte_580,Y
                JSR     set_jmp_addr
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                BEQ     loc_17AB57
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1D,Y
                PHA
                JSR     bank16          ; set memory bank $16 at $8000
                PLA
                JMP     sub_17A962
; ---------------------------------------------------------------------------

loc_17AB57:
                LDA     #$10
                JSR     frame
                JSR     wait_A_B

loc_17AB5F:
                SEC
                RTS
; End of function sub_17AB10


; =============== S U B R O U T I N E =======================================


sub_17AB61:
                TYA
                ASL     A
                ASL     A
                ASL     A
                STA     Pointer
                LDA     #$80
                STA     Pointer+1
                LDX     #0

loc_17AB6D:
                LDA     #0
                STA     byte_580,X
                LDA     (pCharacter),Y
                AND     Pointer+1
                BEQ     loc_17AB7D
                LDA     Pointer
                STA     byte_580,X

loc_17AB7D:
                INC     Pointer
                INX
                LSR     Pointer+1
                BCC     loc_17AB6D
                LDY     #0

loc_17AB86:
                TYA
                PHA
                AND     #1
                TAX
                LDA     byte_169FB2,X
                STA     Column
                TYA
                LSR     A
                TAX
                LDA     byte_169FB4,X
                STA     Row
                LDA     byte_580,Y
                BEQ     loc_17ABBA
                JSR     set_jmp_addr
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #4
                STA     unk_588
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     unk_589
                INY
                LDA     (AddrForJmp),Y
                STA     unk_58A
                LDA     #$F
                JSR     frame

loc_17ABBA:
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17AB86
                RTS
; End of function sub_17AB61


; =============== S U B R O U T I N E =======================================


sub_17ABC2:
                LDA     #$A7
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                LDA     Buttons
                AND     #6
                BNE     loc_17ABE6
                LDA     Buttons
                AND     #$81
                BNE     loc_17ABE0
                BIT     Buttons
                BVS     loc_17ABE3
                JMP     sub_17ABC2
; ---------------------------------------------------------------------------

loc_17ABE0:
                LDX     #0
                RTS
; ---------------------------------------------------------------------------

loc_17ABE3:
                LDX     #2
                RTS
; ---------------------------------------------------------------------------

loc_17ABE6:
                LDA     #$9D
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                LDA     Buttons
                AND     #8
                BNE     sub_17ABC2
                BIT     Buttons
                BVS     loc_17AC03
                BMI     loc_17AC00
                JMP     sub_17ABC2
; ---------------------------------------------------------------------------

loc_17AC00:
                LDX     #1
                RTS
; ---------------------------------------------------------------------------

loc_17AC03:
                LDX     #2
                RTS
; End of function sub_17ABC2


; =============== S U B R O U T I N E =======================================


sub_17AC06:
    .import draw_tilepack_clear, fNameStr

                LDA     #$A
                JSR     frame
                JSR     sub_17A4BB
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #0
                STA     byte_70
                LDA     #<(fNameStr)    ; #$7A
                STA     PointerTilePack
                LDA     #>(fNameStr)    ; #$8E
                STA     PointerTilePack+1
                JSR     draw_tilepack_clear
                JMP     bank16          ; set memory bank $16 at $8000
; End of function sub_17AC06


; =============== S U B R O U T I N E =======================================


sub_17AC23:
    .import byte_169EC7

                PHA
                AND     #3
                TAX
                INX
                LDA     #1
                SEC

loc_17AC2B:
                ROR     A
                ROR     A
                DEX
                BNE     loc_17AC2B
                STA     Pointer
                PLA
                LSR     A
                LSR     A
                TAY
                LDA     byte_169EC7,Y
                AND     Pointer
                STA     Pointer+1

loc_17AC3D:
                LSR     Pointer
                BCS     loc_17AC46
                LSR     Pointer+1
                JMP     loc_17AC3D
; ---------------------------------------------------------------------------

loc_17AC46:
                LDA     Pointer+1
                RTS
; End of function sub_17AC23


; =============== S U B R O U T I N E =======================================


sub_17AC49:
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     Character + CHARACTER::Exp,Y
                STA     pTileID
                TAX
                SEC
                LDA     #0

loc_17AC55:
                ROL     A
                DEX
                BNE     loc_17AC55
                STA     TilesCount
                LDY     #2
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                AND     TilesCount
                BEQ     loc_17AC68
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AC68:
                SEC
                RTS
; End of function sub_17AC49


; =============== S U B R O U T I N E =======================================


sub_17AC6A:
                JSR     sub_17B75A
                BCS     loc_17AC91
                LDX     #8

loc_17AC71:
                TXA
                PHA
                JSR     sub_17ACA5
                JSR     sub_17ACD6      ; out message, animation
                LDA     #$FF
                LDY     CharacterOffset
                STA     Character + CHARACTER::field_1D,Y
                JSR     sub_17B75A      ; check win, lose, out message
                BCS     loc_17AC90
                PLA
                TAX
                DEX
                BNE     loc_17AC71
                DEC     byte_5B
                BEQ     loc_17AC93
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AC90:
                PLA

loc_17AC91:
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17AC93:
                LDA     Encounter
                CMP     #1
                BEQ     loc_17ACA3
                LDX     #$64
                JSR     delay
                LDA     #$92
                JSR     sub_17A3F8

loc_17ACA3:
                SEC
                RTS
; End of function sub_17AC6A


; =============== S U B R O U T I N E =======================================


sub_17ACA5:
    .import sub_F3FD

                LDA     #0
                STA     Pointer
                STA     Pointer+1

loc_17ACAB:
                LDY     Pointer
                LDA     Character + CHARACTER::field_1D,Y
                CMP     #$FF
                BEQ     loc_17ACC8
                CMP     #$5E ; '^'
                BEQ     loc_17ACD3
                LDA     Character + CHARACTER::Speed,Y
                JSR     sub_F3FD
                CMP     Pointer+1
                BCC     loc_17ACC8
                STA     Pointer+1
                LDA     Pointer
                STA     AddrForJmp

loc_17ACC8:
                CLC
                LDA     Pointer
                ADC     #$20
                STA     Pointer
                BNE     loc_17ACAB
                LDY     AddrForJmp

loc_17ACD3:
                STY     CharacterOffset
                RTS
; End of function sub_17ACA5


; =============== S U B R O U T I N E =======================================


sub_17ACD6:
    .importzp word_5E

                LDY     CharacterOffset
                LDA     Character,Y
                BNE     loc_17ACE2
                LDA     #0
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACE2:
                LDA     Character + CHARACTER::field_1,Y
                AND     #$80
                BEQ     loc_17ACEE
                LDA     #0
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACEE:
                LDA     Character + CHARACTER::field_1,Y
                AND     #$40
                BEQ     loc_17ACFA
                LDA     #$47
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACFA:
                LDA     Character + CHARACTER::field_1,Y
                AND     #$20
                BEQ     loc_17AD06
                LDA     #$46
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD06:
                LDA     Character + CHARACTER::field_1,Y
                AND     #$10
                BEQ     loc_17AD2B
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AD26
                LDA     Character + CHARACTER::field_1,Y
                AND     #$EF
                STA     Character + CHARACTER::field_1,Y
                STY     byte_54
                JSR     statistical_frame
                LDA     #$8E
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD26:
                LDA     #$3C
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD2B:
                LDA     Character + CHARACTER::field_1,Y
                AND     #4
                BEQ     loc_17AD37
                LDA     #$68
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD37:
                LDA     Character + CHARACTER::field_1E,Y
                AND     #2
                BEQ     loc_17AD4A
                LDA     Character + CHARACTER::field_1D,Y
                CMP     #$76
                BEQ     loc_17AD4A
                LDA     #$56
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD4A:
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$20
                BEQ     loc_17AD6A
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17AD65
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$DF
                STA     Character + CHARACTER::field_1E,Y
                LDA     #$8B
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD65:
                LDA     #$1C
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD6A:
                LDA     Character + CHARACTER::field_1,Y
                AND     #8
                BEQ     loc_17AD76
                LDA     #$3A
                JSR     sub_17A3F8

loc_17AD76:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::field_1D,Y

loc_17AD7B:
                LDY     #0
                STY     Pointer+1
                ASL     A
                ROL     Pointer+1
                STA     Pointer
                CLC
                LDA     #$FB
                ADC     Pointer
                STA     Pointer
                LDA     #$97
                ADC     Pointer+1
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     word_5E
                INY
                LDA     (Pointer),Y
                STA     word_5E+1

loc_17AD9C:
                LDY     #0
                LDA     (word_5E),Y
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                JSR     sub_F2D5        ; trap no return
; ---------------------------------------------------------------------------
                .word sub_17ADC4, sub_17ADC9, sub_17ADF1, sub_17AE5D, sub_17B804
                .word sub_17AEEA, sub_17AF08, sub_17AF31, sub_17AF39, sub_17AF7B
                .word sub_17AF92, sub_17AF98, sub_17AE8E
; ---------------------------------------------------------------------------

loc_17ADC1:
                JMP     sub_17A3F8
; End of function sub_17ACD6


; =============== S U B R O U T I N E =======================================


sub_17ADC4:
                LDA     #1
                JMP     sub_17AFE1
; End of function sub_17ADC4


; =============== S U B R O U T I N E =======================================


sub_17ADC9:
    .import sub_F2AE

                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17ADC9            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .word sub_17ADEC, sub_17AFED, sub_17AFF2, sub_17AFFE, sub_17B008
                .word sub_17B012, sub_17B022, sub_17B032, sub_17B037, sub_17B041
                .word sub_17B04B, sub_17B055, sub_17B05F

; =============== S U B R O U T I N E =======================================


sub_17ADEC:
                LDA     #1
                JMP     sub_17AFCD
; End of function sub_17ADEC


; =============== S U B R O U T I N E =======================================


sub_17ADF1:
    .import sub_F41F
    .importzp byte_58

                LDY     #1
                LDA     (word_5E),Y
                LDX     #0
                STX     Pointer+1
                LDX     #3

loc_17ADFB:
                ASL     A
                ROL     Pointer+1
                DEX
                BNE     loc_17ADFB
                CLC
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$9E
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #7
                LDA     (Pointer),Y
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                LDA     #$21 ; '!'
                STA     byte_590
                LDY     #0
                LDA     (Pointer),Y
                STA     byte_591
                INY
                LDA     (Pointer),Y
                STA     byte_592
                LDA     #0
                STA     byte_593
                JSR     bank16          ; set memory bank $16 at $8000
                LDA     #$64
                JSR     sub_17A3F8
                JSR     sub_17B1C5
                BCC     loc_17AE53
                JSR     sub_17B1D1
                BCC     loc_17AE58
                JSR     sub_17B0A4
                LDA     byte_58
                JSR     sub_F41F
                LDA     #0
                STA     byte_58
                LDA     #2
                JMP     sub_17AFCD
; ---------------------------------------------------------------------------

loc_17AE53:
                LDA     #$51
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17AE58:
                LDA     #$54
                JMP     sub_17A3F8
; End of function sub_17ADF1


; =============== S U B R O U T I N E =======================================


sub_17AE5D:
    .import sram_write_enable

                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_17AAA4
                JSR     sub_17AACC
                LDY     CharacterOffset
                BMI     loc_17AE7B
                JSR     sram_write_enable
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                CMP     #1
                BNE     loc_17AE7B
                JSR     sub_17B4E5

loc_17AE7B:
                LDA     #$63
                JSR     sub_17A3F8
                LDA     byte_58
                JSR     sub_F41F
                LDA     #0
                STA     byte_58
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AE5D


; =============== S U B R O U T I N E =======================================


sub_17AE8E:
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_17AAA4
                JSR     sub_17AACC
                LDY     CharacterOffset
                BMI     loc_17AEE5
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17AE8E            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .word sub_17AEAB, sub_17AEBD, sub_17AECF

; =============== S U B R O U T I N E =======================================


sub_17AEAB:
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$75
                JSR     sub_17A3F8
                JMP     loc_17AEE5
; End of function sub_17AEAB


; =============== S U B R O U T I N E =======================================


sub_17AEBD:
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$78
                JSR     sub_17A3F8
                JMP     loc_17AEE5
; End of function sub_17AEBD


; =============== S U B R O U T I N E =======================================


sub_17AECF:
    .import sram_read_enable

                JSR     sram_write_enable
                DEC     CurrentGame + PURE_SAVE::field_1F       ; $741F
                JSR     sram_read_enable
                LDA     CurrentGame + PURE_SAVE::field_1F       ; $741F
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$91
                JSR     sub_17A3F8

loc_17AEE5:
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AECF


; =============== S U B R O U T I N E =======================================


sub_17AEEA:
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap no return
; End of function sub_17AEEA

; ---------------------------------------------------------------------------
                .word sub_17AF03, nullsub_4, sub_17B1E0, sub_17B202, sub_17B21D
                .word sub_17B238, sub_17B23D, sub_17B248

; =============== S U B R O U T I N E =======================================


sub_17AF03:
                LDA     #1
                JMP     sub_17AFCD
; End of function sub_17AF03


; =============== S U B R O U T I N E =======================================


sub_17AF08:
                LDY     #1
                LDA     (word_5E),Y
                STA     pTileID
                DEY
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17AF08            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .word sub_17AF2C, sub_17B250, sub_17B2D9, sub_17B2F9, sub_17B302
                .word sub_17B319, sub_17B320, sub_17B3C2, sub_17B3CE, sub_17B3D3
                .word sub_17B3D8

; =============== S U B R O U T I N E =======================================


sub_17AF2C:
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AF2C


; =============== S U B R O U T I N E =======================================


sub_17AF31:
                JSR     sub_17AF53
                BCC     sub_17AF3E
                JMP     sub_17AF4E
; End of function sub_17AF31


; =============== S U B R O U T I N E =======================================


sub_17AF39:
                JSR     sub_17AF53
                BCC     sub_17AF4E
; End of function sub_17AF39


; =============== S U B R O U T I N E =======================================


sub_17AF3E:
                LDY     #1
                LDA     (word_5E),Y
                PHA
                INY
                LDA     (word_5E),Y
                STA     word_5E+1
                PLA
                STA     word_5E
                JMP     loc_17AD9C
; End of function sub_17AF3E


; =============== S U B R O U T I N E =======================================


sub_17AF4E:
                LDA     #3
                JMP     sub_17AFCD
; End of function sub_17AF4E


; =============== S U B R O U T I N E =======================================


sub_17AF53:
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17AF53            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .word nullsub_5, sub_17B0B0, sub_17B0CC, sub_17B0F7, sub_17B112
                .word sub_17B125, sub_17B131, loc_17B0BC, sub_17B150, sub_17B164
                .word sub_17B169, sub_17B174, sub_17B180, sub_17B188, sub_17B194

nullsub_5:
    RTS

; =============== S U B R O U T I N E =======================================


sub_17AF7B:
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                JSR     sub_17AFD3
                JSR     loc_17AD9C
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                LDA     #3
                JMP     sub_17AFCD
; End of function sub_17AF7B


; =============== S U B R O U T I N E =======================================


sub_17AF92:
                JSR     sub_17AFD3
                JMP     loc_17AD9C
; End of function sub_17AF92


; =============== S U B R O U T I N E =======================================


sub_17AF98:
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                TAX
                LDA     #1
                JSR     sub_17AFE1

loc_17AFA4:
                TXA
                PHA
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                JSR     loc_17AD9C
                LDA     word_5E
                STA     Pointer
                LDA     word_5E+1
                STA     Pointer+1
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                PLA
                TAX
                DEX
                BNE     loc_17AFA4
                LDA     Pointer
                STA     word_5E
                LDA     Pointer+1
                STA     word_5E+1
                JMP     loc_17AD9C
; End of function sub_17AF98


; =============== S U B R O U T I N E =======================================


sub_17AFCD:
                JSR     sub_17AFE1
                JMP     loc_17AD9C
; End of function sub_17AFCD


; =============== S U B R O U T I N E =======================================


sub_17AFD3:
                LDY     #1
                LDA     (word_5E),Y
                PHA
                INY
                LDA     (word_5E),Y
                STA     word_5E+1
                PLA
                STA     word_5E
                RTS
; End of function sub_17AFD3


; =============== S U B R O U T I N E =======================================


sub_17AFE1:
                CLC
                ADC     word_5E
                STA     word_5E
                LDA     #0
                ADC     word_5E+1
                STA     word_5E+1
                RTS
; End of function sub_17AFE1


; =============== S U B R O U T I N E =======================================


sub_17AFED:
                LDY     CharacterOffset
                JMP     sub_17B513
; End of function sub_17AFED


; =============== S U B R O U T I N E =======================================


sub_17AFF2:
                LDY     byte_54
                BPL     loc_17AFF9
                JMP     sub_17B555
; ---------------------------------------------------------------------------

loc_17AFF9:
                LDA     #1
                STA     byte_47
                RTS
; End of function sub_17AFF2


; =============== S U B R O U T I N E =======================================


sub_17AFFE:
                LDY     byte_54
                BPL     loc_17B005
                JMP     sub_17B5D3
; ---------------------------------------------------------------------------

loc_17B005:
                JMP     sub_17B6B2
; End of function sub_17AFFE


; =============== S U B R O U T I N E =======================================


sub_17B008:
                LDY     byte_54
                BPL     loc_17B00F
                JMP     sub_17B67C
; ---------------------------------------------------------------------------

loc_17B00F:
                JMP     sub_17B6F1
; End of function sub_17B008


; =============== S U B R O U T I N E =======================================


sub_17B012:
                LDA     #$2D
                JSR     sub_17A3F8
                JSR     sub_17B069
                BCS     locret_17B021
                LDA     #$40
                JSR     sub_17A3F8

locret_17B021:
                RTS
; End of function sub_17B012


; =============== S U B R O U T I N E =======================================


sub_17B022:
                LDA     #$2E
                JSR     sub_17A3F8
                JSR     sub_17B069
                BCS     locret_17B031
                LDA     #$41
                JSR     sub_17A3F8

locret_17B031:
                RTS
; End of function sub_17B022


; =============== S U B R O U T I N E =======================================


sub_17B032:
                LDA     #2
                STA     byte_47
                RTS
; End of function sub_17B032


; =============== S U B R O U T I N E =======================================


sub_17B037:
                LDY     byte_54
                BPL     loc_17B03E
                JMP     sub_17B5DA
; ---------------------------------------------------------------------------

loc_17B03E:
                JMP     sub_17B6BB
; End of function sub_17B037


; =============== S U B R O U T I N E =======================================


sub_17B041:
                LDY     byte_54
                BPL     loc_17B048
                JMP     sub_17B5E1
; ---------------------------------------------------------------------------

loc_17B048:
                JMP     sub_17B6C4
; End of function sub_17B041


; =============== S U B R O U T I N E =======================================


sub_17B04B:
                LDY     byte_54
                BPL     loc_17B052
                JMP     sub_17B5E8
; ---------------------------------------------------------------------------

loc_17B052:
                JMP     sub_17B6CD
; End of function sub_17B04B


; =============== S U B R O U T I N E =======================================


sub_17B055:
                LDY     byte_54
                BPL     loc_17B05C
                JMP     sub_17B5EF
; ---------------------------------------------------------------------------

loc_17B05C:
                JMP     sub_17B6D6
; End of function sub_17B055


; =============== S U B R O U T I N E =======================================


sub_17B05F:
                LDY     byte_54
                BPL     loc_17B066
                JMP     sub_17B5F6
; ---------------------------------------------------------------------------

loc_17B066:
                JMP     sub_17B6DF
; End of function sub_17B05F


; =============== S U B R O U T I N E =======================================


sub_17B069:
                LDY     #$80

loc_17B06B:
                CPY     CharacterOffset
                BEQ     loc_17B076
                LDA     Character + CHARACTER::field_1E,Y
                AND     #1
                BNE     loc_17B07F

loc_17B076:
                TYA
                CLC
                ADC     #$20
                TAY
                BNE     loc_17B06B
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B07F:
                STY     byte_54
                JSR     sub_17B513
                LDY     byte_54
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$FE
                STA     Character + CHARACTER::field_1E,Y
                LDA     #0
                STA     Character + CHARACTER::field_1D,Y
                LDY     CharacterOffset
                LDA     Character,Y
                LDY     byte_54
                STA     Character,Y
                LDA     #$42
                JSR     sub_17A3F8
                SEC
                RTS
; End of function sub_17B069


; =============== S U B R O U T I N E =======================================


sub_17B0A4:
    .import bank_A000_a

                LDA     #$19
                LDX     #$FB
                LDY     #$A7            ; BANK19:A7FC
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JMP     statistical_frame
; End of function sub_17B0A4


; =============== S U B R O U T I N E =======================================


sub_17B0B0:
                LDY     CharacterOffset
                LDA     Character,Y
                BEQ     loc_17B0CA
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17B0CA

loc_17B0BC:
                LDY     byte_54
                LDA     Character,Y
                BEQ     loc_17B0CA
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17B0CA
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B0CA:
                SEC
                RTS
; End of function sub_17B0B0


; =============== S U B R O U T I N E =======================================


sub_17B0CC:
                LDA     byte_23
                BNE     loc_17B0F3
                LDY     byte_54
                LDA     Character + CHARACTER::field_1,Y
                AND     #$70
                BNE     loc_17B0F3
                LDA     Character + CHARACTER::field_1E,Y
                BMI     loc_17B0F3
                LDA     Character + CHARACTER::Fight,Y
                STA     Pointer
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Fight,Y
                STA     AddrForJmp
                JSR     sub_17B1A2
                LDA     Pointer
                CMP     AddrForJmp
                BCS     loc_17B0F5

loc_17B0F3:
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B0F5:
                SEC
                RTS
; End of function sub_17B0CC


; =============== S U B R O U T I N E =======================================


sub_17B0F7:
                JSR     sub_17BFE2
                BCS     locret_17B111
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Fight,Y
                STA     Pointer
                LDY     byte_54
                LDA     Character + CHARACTER::Fight,Y
                STA     AddrForJmp
                JSR     sub_17B1A2
                LDA     AddrForJmp
                CMP     Pointer

locret_17B111:
                RTS
; End of function sub_17B0F7


; =============== S U B R O U T I N E =======================================


sub_17B112:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$80
                EOR     #$80
                ROL     A
                BCS     locret_17B124
                JSR     sub_F1ED
                AND     #$80
                ROL     A

locret_17B124:
                RTS
; End of function sub_17B112


; =============== S U B R O U T I N E =======================================


sub_17B125:
                LDA     CharacterOffset
                BMI     loc_17B12F
                LDA     byte_23
                BEQ     loc_17B12F
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B12F:
                SEC
                RTS
; End of function sub_17B125


; =============== S U B R O U T I N E =======================================


sub_17B131:
                LDY     byte_54
                BMI     loc_17B14C
                LDA     Character + CHARACTER::NameOffset,Y
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     Pointer+1
                LDY     #$20

loc_17B141:
                LDA     (Pointer),Y
                CMP     #$68
                BEQ     loc_17B14E
                INY
                CPY     #$28
                BNE     loc_17B141

loc_17B14C:
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B14E:
                CLC
                RTS
; End of function sub_17B131


; =============== S U B R O U T I N E =======================================


sub_17B150:
                LDY     byte_54
                LDA     Character + CHARACTER::field_2,Y
                AND     #$80
                BNE     loc_17B160
                LDA     Character + CHARACTER::field_2,Y
                AND     #1
                BNE     loc_17B162

loc_17B160:
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B162:
                CLC
                RTS
; End of function sub_17B150


; =============== S U B R O U T I N E =======================================


sub_17B164:
                JSR     sub_F1ED
                ASL     A
                RTS
; End of function sub_17B164


; =============== S U B R O U T I N E =======================================


sub_17B169:
                LDY     byte_54
                LDA     Character + CHARACTER::field_2,Y
                AND     #$80
                EOR     #$80
                ROL     A
                RTS
; End of function sub_17B169


; =============== S U B R O U T I N E =======================================


sub_17B174:
                LDY     byte_54
                LDA     Character + CHARACTER::field_2,Y
                AND     #4
                EOR     #4
                CMP     #1
                RTS
; End of function sub_17B174


; =============== S U B R O U T I N E =======================================


sub_17B180:
    .importzp byte_21

                LDA     byte_21
                BNE     loc_17B186
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B186:
                CLC
                RTS
; End of function sub_17B180


; =============== S U B R O U T I N E =======================================


sub_17B188:
                LDY     byte_54
                LDA     Character + CHARACTER::Exp,Y
                AND     #6
                EOR     #6
                CMP     #1
                RTS
; End of function sub_17B188


; =============== S U B R O U T I N E =======================================


sub_17B194:
                LDA     Encounter
                CMP     #5
                BEQ     loc_17B1A0
                CMP     #6
                BEQ     loc_17B1A0
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B1A0:
                CLC
                RTS
; End of function sub_17B194


; =============== S U B R O U T I N E =======================================


sub_17B1A2:
                LDA     #1
                STA     Pointer+1
                SEC
                LDA     Pointer
                SBC     AddrForJmp
                STA     Pointer
                LDA     Pointer+1
                SBC     #0
                LSR     A
                ROR     Pointer
                SEC
                LDA     Pointer
                SBC     #$66
                BCS     loc_17B1BD
                LDA     #0

loc_17B1BD:
                STA     Pointer
                JSR     sub_F1ED
                STA     AddrForJmp
                RTS
; End of function sub_17B1A2


; =============== S U B R O U T I N E =======================================


sub_17B1C5:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$40
                EOR     #$40
                CMP     #1
                RTS
; End of function sub_17B1C5


; =============== S U B R O U T I N E =======================================


sub_17B1D1:
                LDY     CharacterOffset
                SEC
                LDA     Character + CHARACTER::MaxPP,Y
                SBC     byte_4E
                LDA     Character + CHARACTER::MaxPP+1,Y
                SBC     byte_4F
                RTS
; End of function sub_17B1D1

nullsub_4:
    RTS

; =============== S U B R O U T I N E =======================================


sub_17B1E0:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::field_1,Y
                AND     #8
                BNE     loc_17B1EF
                LDA     Character + CHARACTER::field_1C,Y
                STA     byte_54
                RTS
; ---------------------------------------------------------------------------

loc_17B1EF:
                JSR     sub_F1ED
                AND     #$E0
                TAY
                LDA     Character,Y
                BEQ     loc_17B1EF
                LDA     Character + CHARACTER::field_1,Y
                BMI     loc_17B1EF
                STY     byte_54
                RTS
; End of function sub_17B1E0


; =============== S U B R O U T I N E =======================================


sub_17B202:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::field_1,Y
                AND     #8
                BEQ     loc_17B212
                JSR     sub_F1ED
                AND     #$80
                BNE     loc_17B22D

loc_17B212:
                LDX     #$80
                LDA     CharacterOffset
                BPL     loc_17B21A
                LDX     #0

loc_17B21A:
                STX     byte_54
                RTS
; End of function sub_17B202


; =============== S U B R O U T I N E =======================================


sub_17B21D:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::field_1,Y
                AND     #8
                BEQ     loc_17B22D
                JSR     sub_F1ED
                AND     #$80
                BNE     loc_17B212

loc_17B22D:
                LDX     #0
                LDY     CharacterOffset
                BPL     loc_17B235
                LDX     #$80

loc_17B235:
                STX     byte_54
                RTS
; End of function sub_17B21D


; =============== S U B R O U T I N E =======================================


sub_17B238:
                LDA     CharacterOffset
                STA     byte_54
                RTS
; End of function sub_17B238


; =============== S U B R O U T I N E =======================================


sub_17B23D:
                LDX     #0
                LDY     CharacterOffset
                BPL     loc_17B245
                LDX     #$80

loc_17B245:
                STX     byte_54
                RTS
; End of function sub_17B23D


; =============== S U B R O U T I N E =======================================


sub_17B248:
                CLC
                LDA     byte_54
                ADC     #$20
                STA     byte_54
                RTS
; End of function sub_17B248


; =============== S U B R O U T I N E =======================================


sub_17B250:
                LDY     byte_54
                LDA     Character + CHARACTER::Defense,Y
                STA     pTileID
                LDA     Character + CHARACTER::Defense+1,Y
                STA     pTileID+1
                SEC
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Offense,Y
                STA     TilepackMode
                STA     pDist
                SBC     pTileID
                LDA     Character + CHARACTER::Offense+1,Y
                STA     TilesCount
                STA     pDist+1
                SBC     pTileID+1
                BCC     loc_17B2A8
                LSR     pTileID+1
                ROR     pTileID
                SEC
                LDA     TilepackMode
                SBC     pTileID
                STA     Pointer
                LDA     TilesCount
                SBC     pTileID+1
                STA     Pointer+1

loc_17B284:
                LDA     Encounter
                CMP     #1
                BNE     loc_17B297
                JSR     sub_F1ED
                AND     #7
                ORA     #4
                STA     Pointer
                LDA     #0
                STA     Pointer+1

loc_17B297:
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17B29F
                INC     Pointer

loc_17B29F:
                LDA     Pointer
                STA     byte_4E
                LDA     Pointer+1
                STA     byte_4F
                RTS
; ---------------------------------------------------------------------------

loc_17B2A8:
                ASL     TilepackMode
                ROL     TilesCount
                CLC
                LDA     TilepackMode
                ADC     pDist
                STA     TilepackMode
                LDA     TilesCount
                ADC     pDist+1
                STA     TilesCount
                SEC
                LDA     TilepackMode
                SBC     pTileID
                STA     Pointer
                LDA     TilesCount
                SBC     pTileID+1
                STA     Pointer+1
                BCS     loc_17B2CE
                LDA     #0
                STA     Pointer
                STA     Pointer+1

loc_17B2CE:
                LSR     Pointer+1
                ROR     Pointer
                LSR     Pointer+1
                ROR     Pointer
                JMP     loc_17B284
; End of function sub_17B250


; =============== S U B R O U T I N E =======================================


sub_17B2D9:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Offense,Y
                STA     byte_4E
                LDA     Character + CHARACTER::Offense+1,Y
                STA     byte_4F
                LDA     Encounter
                CMP     #1
                BNE     locret_17B2F8
                JSR     sub_F1ED
                AND     #$F
                ORA     #8
                STA     byte_4E
                LDA     #0
                STA     byte_4F

locret_17B2F8:
                RTS
; End of function sub_17B2D9


; =============== S U B R O U T I N E =======================================


sub_17B2F9:
                LDA     pTileID
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                RTS
; End of function sub_17B2F9


; =============== S U B R O U T I N E =======================================


sub_17B302:
                LDA     Encounter
                CMP     #5
                BNE     locret_17B318
                LDA     NamePos
                JSR     sub_17A3F8
                LDX     NamePos
                INX
                CPX     #$9E
                BNE     loc_17B316
                INC     Encounter

loc_17B316:
                STX     NamePos

locret_17B318:
                RTS
; End of function sub_17B302


; =============== S U B R O U T I N E =======================================


sub_17B319:
    .importzp byte_57

                LDA     byte_57
                ORA     pTileID
                STA     byte_57
                RTS
; End of function sub_17B319


; =============== S U B R O U T I N E =======================================


sub_17B320:
                LDA     #$6A
                JSR     sub_17A3F8
                LDA     Encounter
                CMP     #2
                BNE     loc_17B330
                LDA     #$95
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B330:
                CMP     #3
                BNE     loc_17B339
                LDA     #$94
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B339:
                CMP     #4
                BNE     loc_17B342
                LDA     #$93
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B342:
                CMP     #5
                BNE     loc_17B34B
                LDA     #1
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B34B:
                CMP     #6
                BNE     loc_17B354
                LDA     #1
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B354:
                LDY     byte_54
                BMI     loc_17B35D
                LDA     #$90
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B35D:
                LDY     byte_54
                LDA     Character + CHARACTER::Offense,Y
                STA     byte_590
                LDA     Character + CHARACTER::Offense+1,Y
                STA     byte_591
                LDA     Character + CHARACTER::Defense,Y
                STA     byte_592
                LDA     Character + CHARACTER::Defense+1,Y
                STA     byte_593
                LDA     #$24
                JSR     sub_17A3F8
                LDA     #$25
                JSR     sub_17A3F8
                LDY     byte_54
                LDA     Character + CHARACTER::field_2,Y
                PHA
                AND     #$40
                BEQ     loc_17B390
                LDA     #$6B
                JSR     sub_17A3F8

loc_17B390:
                PLA
                PHA
                AND     #$20
                BEQ     loc_17B39B
                LDA     #$6C
                JSR     sub_17A3F8

loc_17B39B:
                PLA
                PHA
                AND     #$10
                BEQ     loc_17B3A6
                LDA     #$6D
                JSR     sub_17A3F8

loc_17B3A6:
                PLA
                PHA
                AND     #$80
                BNE     loc_17B3B7
                PLA
                PHA
                AND     #1
                BEQ     loc_17B3B7
                LDA     #$6F
                JSR     sub_17A3F8

loc_17B3B7:
                PLA
                LDA     #$FF
                JMP     sub_17A3F8
; End of function sub_17B320


; =============== S U B R O U T I N E =======================================


sub_17B3BD:
                LDA     #$90
                JMP     sub_17A3F8
; End of function sub_17B3BD


; =============== S U B R O U T I N E =======================================


sub_17B3C2:
                LDX     #$F
                LDA     CharacterOffset
                BMI     loc_17B3CA
                LDX     #1

loc_17B3CA:
                TXA
                JMP     sub_F41F
; End of function sub_17B3C2


; =============== S U B R O U T I N E =======================================


sub_17B3CE:
                LDA     pTileID
                STA     byte_58
                RTS
; End of function sub_17B3CE


; =============== S U B R O U T I N E =======================================


sub_17B3D3:
                LDA     pTileID
                JMP     sub_17A3F8
; End of function sub_17B3D3


; =============== S U B R O U T I N E =======================================


sub_17B3D8:
                LDA     pTileID
                JMP     sub_F41F
; End of function sub_17B3D8


; =============== S U B R O U T I N E =======================================


sub_17B3DD:
                TYA
                BMI     loc_17B3F0
                LDA     Character + CHARACTER::Exp,Y
                CMP     #6
                BNE     loc_17B3F0
                LDA     #0
                STA     Encounter
                LDX     #$88
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3F0:
                JSR     sub_17B4CA
                CMP     #1
                BNE     loc_17B3FC
                LDX     #$19
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3FC:
                CMP     #2
                BNE     loc_17B405
                LDX     #$1A
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B405:
                JSR     sub_17B42D
                JMP     sub_17B496
; ---------------------------------------------------------------------------

loc_17B40B:
                LDA     byte_54
                PHA
                LDA     CharacterOffset
                PHA
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                STY     CharacterOffset
                TXA
                JSR     loc_17AD7B
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                PLA
                STA     CharacterOffset
                PLA
                STA     byte_54
                TAY
                JMP     sub_17B496
; End of function sub_17B3DD


; =============== S U B R O U T I N E =======================================


sub_17B42D:
    .import apu_7F0

                TYA
                PHA
                LDA     #0
                STA     Character + CHARACTER::MaxHealth,Y
                STA     Character + CHARACTER::MaxHealth+1,Y
                LDA     #$80
                STA     Character + CHARACTER::field_1,Y
                TYA
                BPL     loc_17B48B
                LDA     #0
                STA     Character,Y
                LDA     Character + CHARACTER::NameOffset,Y
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     Pointer+1
                TYA
                PHA
                CLC
                LDY     #$1A
                LDA     (Pointer),Y
                ADC     byte_49
                STA     byte_49
                INY
                LDA     (Pointer),Y
                ADC     byte_4A
                STA     byte_4A
                LDA     #0
                ADC     byte_4B
                STA     byte_4B
                CLC
                LDY     #$1C
                LDA     (Pointer),Y
                ADC     byte_4C
                STA     byte_4C
                INY
                LDA     (Pointer),Y
                ADC     byte_4D
                STA     byte_4D
                LDY     #$1E
                LDA     (Pointer),Y
                BEQ     loc_17B47E
                STA     EnemyGroup

loc_17B47E:
                LDA     #6
                STA     apu_7F0
                PLA
                TAY
                JSR     sub_17B555
                JMP     loc_17B490
; ---------------------------------------------------------------------------

loc_17B48B:
                LDA     #$15
                JSR     sub_F41F

loc_17B490:
                JSR     statistical_frame
                PLA
                TAY
                RTS
; End of function sub_17B42D


; =============== S U B R O U T I N E =======================================


sub_17B496:
                TYA
                PHA
                BMI     loc_17B4A9
                LDA     Character + CHARACTER::Exp,Y
                CMP     #6
                BEQ     loc_17B4C7
                LDA     #$10
                JSR     sub_17A3F8
                JMP     loc_17B4C7
; ---------------------------------------------------------------------------

loc_17B4A9:
                LDA     Encounter
                CMP     #6
                BEQ     loc_17B4C7
                LDA     Character + CHARACTER::NameOffset,Y
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     Pointer+1
                LDY     #$A
                LDA     (Pointer),Y
                AND     #$1C
                LSR     A
                LSR     A
                CLC
                ADC     #$79
                JSR     sub_17A3F8

loc_17B4C7:
                PLA
                TAY
                RTS
; End of function sub_17B496


; =============== S U B R O U T I N E =======================================


sub_17B4CA:
                TYA
                PHA
                LDA     Character + CHARACTER::NameOffset,Y
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     Pointer+1
                LDY     #8
                LDA     (Pointer),Y
                AND     #$1C
                LSR     A
                LSR     A
                STA     Pointer
                PLA
                TAY
                LDA     Pointer
                RTS
; End of function sub_17B4CA


; =============== S U B R O U T I N E =======================================


sub_17B4E5:
                LDY     CharacterOffset
                CLC
                LDA     Character + CHARACTER::NameOffset,Y
                ADC     #$20
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                ADC     #0
                STA     Pointer+1
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Level,Y
                TAY

loc_17B4FC:
                JSR     sram_write_enable

loc_17B4FF:
                CPY     #7
                BEQ     loc_17B50C
                INY
                LDA     (Pointer),Y
                DEY
                STA     (Pointer),Y
                INY
                BNE     loc_17B4FF

loc_17B50C:
                LDA     #0
                STA     (Pointer),Y
                JMP     sram_read_enable
; End of function sub_17B4E5


; =============== S U B R O U T I N E =======================================


sub_17B513:
    .import wait_nmi
    .importzp byte_45, BankPPU_X000

                JSR     sub_17B5BC
                LDA     Character + CHARACTER::field_1,Y
                AND     #$7F
                STA     Character + CHARACTER::field_1,Y
                LDA     #$22
                STA     Pointer
                LDA     #$FF
                STA     Pointer+1
                LDA     #$FF
                STA     AddrForJmp
                JSR     sub_17B589
                LDA     #0
                STA     byte_45
                TYA
                PHA
                LDA     Character + CHARACTER::field_1A,Y
                AND     #3
                TAX
                LDY     #$1F
                LDA     (pCharacter),Y
                STA     BankPPU_X000,X
                PLA
                TAY
                LDA     Character + CHARACTER::field_1C,Y
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_17B513


; =============== S U B R O U T I N E =======================================


sub_17B555:
                JSR     sub_17B5BC
                LDA     #0
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     Character,Y
                LDA     #0
                STA     Pointer
                LDA     #$23
                STA     Pointer+1
                LDA     #1
                STA     AddrForJmp
                JSR     sub_17B589
                LDA     Character + CHARACTER::field_1A,Y
                AND     #3
                TAX
                LDA     #$7C
                STA     BankPPU_X000,X
                RTS
; End of function sub_17B555


; =============== S U B R O U T I N E =======================================


sub_17B589:
    .importzp byte_44

                TYA
                PHA
                LDA     Character + CHARACTER::field_1A,Y
                AND     #3
                TAX
                LDY     #$1F
                LDA     (pCharacter),Y
                ORA     #$80
                STA     BankPPU_X000,X
                PLA
                TAY
                LDA     #$80
                STA     byte_45

loc_17B59F:
                LDA     Pointer
                STA     byte_44
                AND     #1
                BNE     loc_17B5AD
                LDA     byte_45
                EOR     #$40
                STA     byte_45

loc_17B5AD:
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                CLC
                LDA     Pointer
                ADC     AddrForJmp
                STA     Pointer
                CMP     Pointer+1
                BNE     loc_17B59F
                RTS
; End of function sub_17B589


; =============== S U B R O U T I N E =======================================


sub_17B5BC:
                LDA     Character + CHARACTER::NameOffset,Y
                STA     pCharacter
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     pCharacter+1
                LDA     Character + CHARACTER::field_1A,Y
                AND     #3
                STA     pTileID
                ASL     A
                ASL     A
                ASL     A
                STA     pTileID+1
                RTS
; End of function sub_17B5BC


; =============== S U B R O U T I N E =======================================


sub_17B5D3:
                LDA     #$F
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5D3


; =============== S U B R O U T I N E =======================================


sub_17B5DA:
                LDA     #$16
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5DA


; =============== S U B R O U T I N E =======================================


sub_17B5E1:
                LDA     #$12
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5E1


; =============== S U B R O U T I N E =======================================


sub_17B5E8:
                LDA     #$31
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5E8


; =============== S U B R O U T I N E =======================================


sub_17B5EF:
                LDA     #$28
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5EF


; =============== S U B R O U T I N E =======================================


sub_17B5F6:
                LDA     #$2A
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5F6


; =============== S U B R O U T I N E =======================================


sub_17B5FD:
                LDX     #3

loc_17B5FF:
                TXA
                PHA
                LDA     #5
                STA     apu_7F0
                JSR     sub_F1ED
                AND     #3
                TAX
                INX

loc_17B60D:
                TXA
                PHA
                LDA     #1
                STA     apu_7F0
                PLA
                PHA
                LDX     #3
                JSR     sub_17B626
                PLA
                TAX
                DEX
                BNE     loc_17B60D
                PLA
                TAX
                DEX
                BNE     loc_17B5FF
                RTS
; End of function sub_17B5FD


; =============== S U B R O U T I N E =======================================


sub_17B626:
    .import sub_F4B6, loc_F4B8

                STA     Pointer+1
                STX     Pointer
                LDA     #2
                JSR     sub_F41F
                LDY     byte_54
                JSR     sub_17B5BC
                JSR     wait_nmi_processed
                LDX     Pointer

loc_17B639:
                TXA
                PHA
                LDX     pTileID+1
                LDA     SpriteTable,X
                PHA
                LDA     #0
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$7C
                LDX     pTileID
                STA     BankPPU_X000,X
                LDA     Pointer+1
                JSR     loc_F4B8
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDY     #$1F
                LDA     (pCharacter),Y
                LDX     pTileID
                STA     BankPPU_X000,X
                JSR     sub_F4B6
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     loc_17B639
                RTS
; End of function sub_17B626


; =============== S U B R O U T I N E =======================================


sub_17B67C:
                LDA     #2
                JSR     sub_F41F
                JSR     sub_17B5BC
                LDY     byte_54
                LDA     Character + CHARACTER::field_1C,Y
                PHA
                LDX     pTileID+1
                LDA     SpriteTable,X
                LDY     byte_54
                STA     Character + CHARACTER::field_1C,Y
                LDA     #0
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                LDY     byte_54
                JSR     sub_17B513
                PLA
                LDY     byte_54
                STA     Character + CHARACTER::field_1C,Y
                RTS
; End of function sub_17B67C


; =============== S U B R O U T I N E =======================================


sub_17B6B2:
                LDX     #$41
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6B2


; =============== S U B R O U T I N E =======================================


sub_17B6BB:
                LDX     #$41
                LDY     #$9F
                LDA     #$16
                JMP     sub_17B6FA
; End of function sub_17B6BB


; =============== S U B R O U T I N E =======================================


sub_17B6C4:
                LDX     #$41
                LDY     #$9F
                LDA     #$12
                JMP     sub_17B6FA
; End of function sub_17B6C4


; =============== S U B R O U T I N E =======================================


sub_17B6CD:
                LDX     #$41
                LDY     #$9F
                LDA     #$31
                JMP     sub_17B6FA
; End of function sub_17B6CD


; =============== S U B R O U T I N E =======================================


sub_17B6D6:
                LDX     #$41
                LDY     #$9F
                LDA     #$28
                JMP     sub_17B6FA
; End of function sub_17B6D6


; =============== S U B R O U T I N E =======================================


sub_17B6DF:
                LDX     #$61
                LDY     #$9F
                LDA     #$2A
                JMP     sub_17B6FA
; End of function sub_17B6DF


; =============== S U B R O U T I N E =======================================


sub_17B6E8:
                LDX     #$61
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6E8


; =============== S U B R O U T I N E =======================================


sub_17B6F1:
                LDX     #$4B
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6F1


; =============== S U B R O U T I N E =======================================


sub_17B6FA:
    .import sub_F4B6
    .importzp ShiftX, ShiftY

                STA     pTileID
                STX     Pointer
                STY     Pointer+1
                LDA     #$10
                JSR     sub_F41F
                JSR     wait_nmi_processed
                LDY     #0
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                CLC
                LDA     Pointer
                ADC     #2
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1

loc_17B720:
                LDY     #0

loc_17B722:
                TYA
                PHA
                AND     #2
                BEQ     loc_17B730
                LDA     pTileID
                JSR     loc_F4B8
                JMP     loc_17B733
; ---------------------------------------------------------------------------

loc_17B730:
                JSR     sub_F4B6

loc_17B733:
                PLA
                TAY
                LDA     (Pointer),Y
                STA     ShiftY
                INY
                LDA     (Pointer),Y
                STA     ShiftX
                INY
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                CPY     AddrForJmp+1
                BNE     loc_17B722
                DEC     AddrForJmp
                BNE     loc_17B720
                LDA     #0
                STA     ShiftX
                STA     ShiftY
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                JMP     sub_F4B6
; End of function sub_17B6FA


; =============== S U B R O U T I N E =======================================


sub_17B75A:
    .import CheckMusic, Item3, byte_6C0, byte_6E0

                LDA     byte_47
                CMP     #1
                BEQ     loc_17B7B0
                CMP     #2
                BEQ     loc_17B7B0
                LDY     #0

loc_17B766:
                LDA     Character,Y
                BEQ     loc_17B77B
                LDA     Character + CHARACTER::Exp,Y
                AND     #6
                EOR     #6
                BEQ     loc_17B77B
                LDA     Character + CHARACTER::field_1,Y
                AND     #$E0
                BEQ     loc_17B7B2

loc_17B77B:
                TYA
                CLC
                ADC     #$20
                TAY
                BPL     loc_17B766
                LDA     #$80
                STA     Character + CHARACTER::field_1
                STA     Character + CHARACTER::field_20+1
                STA     byte_640+1
                STA     byte_660+1
                LDA     Encounter
                CMP     #4
                BNE     loc_17B7A7
                LDA     #3
                STA     byte_47
                LDA     #4
                JSR     sub_F41F
                LDA     #$8F
                JSR     sub_17A3F8
                JMP     loc_17B7B0
; ---------------------------------------------------------------------------

loc_17B7A7:
                LDA     #0
                STA     CharacterOffset
                LDA     #$E
                JSR     sub_17A3F8

loc_17B7B0:
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B7B2:
                LDA     Item1
                ORA     Item3
                ORA     byte_6C0
                ORA     byte_6E0
                BNE     loc_17B7F3
                LDA     byte_23
                BEQ     loc_17B7C9
                LDA     #$31
                JSR     sub_17A3F8

loc_17B7C9:
                LDA     Encounter
                CMP     #6
                BNE     loc_17B7E7
                LDA     #0
                STA     byte_54
                JSR     sub_17B8D4
                LDA     #$20
                STA     byte_54
                JSR     sub_17B8D4
                LDA     #$40
                STA     byte_54
                JSR     sub_17B8D4
                JMP     loc_17B7F1
; ---------------------------------------------------------------------------

loc_17B7E7:
                LDA     #5
                JSR     CheckMusic
                LDA     #$D
                JSR     sub_17A3F8

loc_17B7F1:
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B7F3:
                LDA     Encounter
                CMP     #1
                BNE     loc_17B802
                LDY     #0
                JSR     sub_F673
                BCS     loc_17B802
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B802:
                CLC
                RTS
; End of function sub_17B75A


; =============== S U B R O U T I N E =======================================


sub_17B804:
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17B804            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .word sub_17B863, sub_17B868, sub_17B879, sub_17B899, sub_17B8AF
                .word sub_17B8BD, sub_17B8CB, sub_17B915, sub_17BA07, sub_17BA1B
                .word sub_17BA2A, sub_17BA3C, sub_17BA6E, sub_17BA7A, sub_17BA95
                .word sub_17B8AA, sub_17B8F2, sub_17BA86, sub_17B88A, sub_17BAE4
                .word sub_17BAFA, sub_17BB0D, sub_17BB25, sub_17BB3D, sub_17BB55
                .word sub_17BB78, sub_17BB83, sub_17BB8C, sub_17BB9D, sub_17BBB0
                .word sub_17BBCD, sub_17BBEB, sub_17BBF9, sub_17BC02, sub_17BC0B
                .word sub_17BC14, sub_17BC1D, sub_17BC26, sub_17BC38, sub_17BC2F
                .word sub_17BCD0, sub_17BD2B, sub_17BC5D, sub_17BD44

; =============== S U B R O U T I N E =======================================


sub_17B863:
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17B863


; =============== S U B R O U T I N E =======================================


sub_17B868:
                JSR     sub_17BDDD

loc_17B86B:
                LDX     byte_54
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$3E
                JMP     sub_17BD5B
; End of function sub_17B868


; =============== S U B R O U T I N E =======================================


sub_17B879:
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #5
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$3D
                JMP     sub_17BD5B
; End of function sub_17B879


; =============== S U B R O U T I N E =======================================


sub_17B88A:
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #7
                JSR     sub_17BDE8
                LDA     #$20
                JMP     sub_17A3F8
; End of function sub_17B88A


; =============== S U B R O U T I N E =======================================


sub_17B899:
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #$C
                JSR     sub_17BE3B
                LDX     #9
                LDA     #$23
                JMP     sub_17BD5B
; End of function sub_17B899


; =============== S U B R O U T I N E =======================================


sub_17B8AA:
                LDY     CharacterOffset
                JMP     sub_17B42D
; End of function sub_17B8AA


; =============== S U B R O U T I N E =======================================


sub_17B8AF:
                LDX     byte_54
                LDY     #7
                JSR     sub_17BF00
                LDX     #9
                LDA     #$20
                JMP     sub_17BD5B
; End of function sub_17B8AF


; =============== S U B R O U T I N E =======================================


sub_17B8BD:
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF00
                LDX     #9
                LDA     #$22
                JMP     sub_17BD5B
; End of function sub_17B8BD


; =============== S U B R O U T I N E =======================================


sub_17B8CB:
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                JMP     loc_17B86B
; End of function sub_17B8CB


; =============== S U B R O U T I N E =======================================


sub_17B8D4:
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                LDA     #0
                LDX     byte_54
                STA     Character + CHARACTER::field_1,X
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #0
                JSR     sub_17BD5B
                LDX     #$14
                JMP     delay
; End of function sub_17B8D4


; =============== S U B R O U T I N E =======================================


sub_17B8F2:
                JSR     sub_17BDDD
                LDY     CharacterOffset
                SEC
                LDA     Character + CHARACTER::MaxHealth,Y
                SBC     Pointer
                STA     Character + CHARACTER::MaxHealth,Y
                LDA     Character + CHARACTER::MaxHealth+1,Y
                SBC     Pointer+1
                STA     Character + CHARACTER::MaxHealth+1,Y
                BCC     loc_17B912
                ORA     Character + CHARACTER::MaxHealth,Y
                BEQ     loc_17B912
                JMP     statistical_frame
; ---------------------------------------------------------------------------

loc_17B912:
                JMP     sub_17B3DD
; End of function sub_17B8F2


; =============== S U B R O U T I N E =======================================


sub_17B915:
                LDA     Encounter
                CMP     #5
                BEQ     loc_17B93E
                CMP     #6
                BEQ     loc_17B93E
                JSR     sub_17BFE2
                BCC     loc_17B93E

loc_17B924:
                LDX     #3
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Exp,Y
                CMP     #6
                BNE     loc_17B931
                LDX     #$3F

loc_17B931:
                STX     Pointer
                JSR     sub_F1ED
                AND     Pointer
                STA     byte_4E
                LDA     #0
                STA     byte_4F

loc_17B93E:
                LDA     byte_54
                PHA
                JSR     sub_17BDDD
                LDY     byte_54
                LDA     Character + CHARACTER::field_1E,Y
                AND     #4
                BEQ     loc_17B962
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     #$53
                JSR     sub_17A3F8
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                LDY     CharacterOffset
                STY     byte_54

loc_17B962:
                LDA     Character + CHARACTER::field_1E,Y
                AND     #$10
                BEQ     loc_17B96D
                LSR     Pointer+1
                ROR     Pointer

loc_17B96D:
                LDA     Character + CHARACTER::field_1E,Y
                AND     #8
                BEQ     loc_17B978
                LSR     Pointer+1
                ROR     Pointer

loc_17B978:
                JSR     sub_17BF74
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17B983
                INC     Pointer

loc_17B983:
                LDA     Pointer
                STA     byte_590
                PHA
                LDA     Pointer+1
                STA     byte_591
                PHA
                LDA     #$C
                JSR     sub_17A3F8
                PLA
                STA     Pointer+1
                PLA
                STA     Pointer
                LDA     Encounter
                CMP     #3
                BEQ     loc_17B9A5
                JSR     sub_17BFEF
                BCS     loc_17B9C4

loc_17B9A5:
                JSR     sub_17BFE2
                BCS     loc_17B9C4
                LDY     byte_54
                SEC
                LDA     Character + CHARACTER::MaxHealth,Y
                SBC     Pointer
                STA     Character + CHARACTER::MaxHealth,Y
                LDA     Character + CHARACTER::MaxHealth+1,Y
                SBC     Pointer+1
                STA     Character + CHARACTER::MaxHealth+1,Y
                BCC     loc_17BA00
                ORA     Character + CHARACTER::MaxHealth,Y
                BEQ     loc_17BA00

loc_17B9C4:
                LDA     Character + CHARACTER::field_1,Y
                AND     #$C
                BEQ     loc_17B9DF
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17B9DF
                LDA     Character + CHARACTER::field_1,Y
                AND     #$F3
                STA     Character + CHARACTER::field_1,Y
                LDA     #$8D
                JSR     sub_17A3F8

loc_17B9DF:
                LDA     Character + CHARACTER::field_1,Y
                AND     #$10
                BEQ     loc_17B9FA
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17B9FA
                LDA     Character + CHARACTER::field_1,Y
                AND     #$EF
                STA     Character + CHARACTER::field_1,Y
                LDA     #$61
                JSR     sub_17A3F8

loc_17B9FA:
                PLA
                STA     byte_54
                JMP     statistical_frame
; ---------------------------------------------------------------------------

loc_17BA00:
                JSR     sub_17B3DD
                PLA
                STA     byte_54
                RTS
; End of function sub_17B915


; =============== S U B R O U T I N E =======================================


sub_17BA07:
                JSR     sub_17BDDD
                LDY     byte_54
                JSR     sub_17BF74
                LDX     byte_54
                LDY     #9
                JSR     sub_17BE72
                LDA     #$27
                JMP     sub_17A3F8
; End of function sub_17BA07


; =============== S U B R O U T I N E =======================================


sub_17BA1B:
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #$B
                JSR     sub_17BEC4
                LDA     #$26
                JMP     sub_17A3F8
; End of function sub_17BA1B


; =============== S U B R O U T I N E =======================================


sub_17BA2A:
                JSR     sub_17BFE2
                BCS     loc_17BA39
                JSR     sub_17BFEF
                BCS     loc_17BA39
                LDY     byte_54
                JMP     sub_17B3DD
; ---------------------------------------------------------------------------

loc_17BA39:
                JMP     loc_17B924
; End of function sub_17BA2A


; =============== S U B R O U T I N E =======================================


sub_17BA3C:
                JSR     sub_17BFE2
                BCS     loc_17BA6B
                JSR     sub_17BFEF
                BCS     loc_17BA6B
                LDY     byte_54
                JSR     sub_F1ED
                AND     #3
                TAX
                INX
                TXA
                SEC
                SBC     Character + CHARACTER::MaxHealth,Y
                LDA     #0
                SBC     Character + CHARACTER::MaxHealth+1,Y
                BCS     loc_17BA6B
                TXA
                STA     Character + CHARACTER::MaxHealth,Y
                LDA     #0
                STA     Character + CHARACTER::MaxHealth+1,Y
                LDX     #0
                LDA     #$38
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BA6B:
                JMP     sub_17BDD8
; End of function sub_17BA3C


; =============== S U B R O U T I N E =======================================


sub_17BA6E:
                LDX     byte_54
                LDY     #7
                JSR     sub_17BF15
                LDA     #$21
                JMP     sub_17A3F8
; End of function sub_17BA6E


; =============== S U B R O U T I N E =======================================


sub_17BA7A:
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF15
                LDA     #$27
                JMP     sub_17A3F8
; End of function sub_17BA7A


; =============== S U B R O U T I N E =======================================


sub_17BA86:
                JSR     sub_17BDDD
                LDX     CharacterOffset
                LDY     #7
                JSR     sub_17BDE8
                LDA     #$5C
                JMP     sub_17A3F8
; End of function sub_17BA86


; =============== S U B R O U T I N E =======================================


sub_17BA95:
                JSR     sub_17BDDD
                LDY     byte_54
                BMI     loc_17BADD
                LDA     Character + CHARACTER::NameOffset,Y
                STA     AddrForJmp
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     AddrForJmp+1
                LDY     #$11
                CLC
                LDA     (AddrForJmp),Y
                ADC     Pointer
                STA     pTileID
                INY
                LDA     (AddrForJmp),Y
                ADC     Pointer+1
                STA     pTileID+1
                INY
                LDA     (AddrForJmp),Y
                ADC     #0
                STA     TilepackMode
                BCC     loc_17BAC7
                LDA     #$FF
                STA     pTileID
                STA     pTileID+1
                STA     TilepackMode

loc_17BAC7:
                JSR     sram_write_enable
                LDY     #$11
                LDA     pTileID
                STA     (AddrForJmp),Y
                INY
                LDA     pTileID+1
                STA     (AddrForJmp),Y
                INY
                LDA     TilepackMode
                STA     (AddrForJmp),Y
                JSR     sram_read_enable

loc_17BADD:
                LDX     #$A
                LDA     #$2F
                JMP     sub_17BD5B
; End of function sub_17BA95


; =============== S U B R O U T I N E =======================================


sub_17BAE4:
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$1B
                LDY     #0
                LDX     #$80
                JMP     loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BAF7:
                JMP     sub_17BDD8
; End of function sub_17BAE4


; =============== S U B R O U T I N E =======================================


sub_17BAFA:
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$4B
                LDY     #0
                LDX     #2
                JMP     sub_17BD69
; End of function sub_17BAFA


; =============== S U B R O U T I N E =======================================


sub_17BB0D:
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF66
                BCS     loc_17BAF7
                LDA     #$39
                LDY     #0
                LDX     #8
                JMP     sub_17BD69
; End of function sub_17BB0D


; =============== S U B R O U T I N E =======================================


sub_17BB25:
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF66
                BCS     loc_17BAF7
                LDA     #$3B
                LDY     #0
                LDX     #$10
                JMP     sub_17BD69
; End of function sub_17BB25


; =============== S U B R O U T I N E =======================================


sub_17BB3D:
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$49
                LDY     #0
                LDX     #$20
                JMP     sub_17BD69
; End of function sub_17BB3D


; =============== S U B R O U T I N E =======================================


sub_17BB55:
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                LDY     byte_54
                LDA     Character + CHARACTER::NameOffset,Y
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     Pointer+1
                LDY     #5
                LDA     (Pointer),Y
                INY
                ORA     (Pointer),Y
                BEQ     loc_17BAF7
                LDA     #$4D
                LDY     #0
                LDX     #$40
                JMP     loc_17BD7F
; End of function sub_17BB55


; =============== S U B R O U T I N E =======================================


sub_17BB78:
                LDY     byte_54
                LDA     Character + CHARACTER::field_1E,Y
                ORA     #8
                STA     Character + CHARACTER::field_1E,Y
                RTS
; End of function sub_17BB78


; =============== S U B R O U T I N E =======================================


sub_17BB83:
                LDA     #$4F
                LDY     #$A
                LDX     #$10
                JMP     loc_17BD7F
; End of function sub_17BB83


; =============== S U B R O U T I N E =======================================


sub_17BB8C:
                JSR     loc_17BFE6
                BCS     loc_17BB9A
                LDA     #$17
                LDY     #$A
                LDX     #4
                JMP     loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BB9A:
                JMP     sub_17BDD8
; End of function sub_17BB8C


; =============== S U B R O U T I N E =======================================


sub_17BB9D:
                JSR     sub_17BFE2
                BCS     loc_17BB9A
                JSR     sub_17BFEF
                BCS     loc_17BB9A
                LDA     #$4E
                LDY     #0
                LDX     #$20
                JMP     loc_17BD7F
; End of function sub_17BB9D


; =============== S U B R O U T I N E =======================================


sub_17BBB0:
                JSR     sub_17BFE2
                BCS     loc_17BB9A
                JSR     sub_17BFEF
                BCS     loc_17BB9A
                LDA     #$19
                LDY     #0
                LDX     #$40
                JSR     sub_17BD69
                BCS     locret_17BBCC
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF00

locret_17BBCC:
                RTS
; End of function sub_17BBB0


; =============== S U B R O U T I N E =======================================


sub_17BBCD:
                LDY     byte_54
                LDA     Character + CHARACTER::Exp,Y
                CMP     #1
                BNE     locret_17BBEA
                LDA     Character + CHARACTER::field_1E,Y
                AND     #2
                BNE     locret_17BBEA
                LDA     Character + CHARACTER::field_1E,Y
                ORA     #2
                STA     Character + CHARACTER::field_1E,Y
                LDA     #$74
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

locret_17BBEA:
                RTS
; End of function sub_17BBCD


; =============== S U B R O U T I N E =======================================


sub_17BBEB:
                JSR     sub_17BF66
                BCS     loc_17BB9A
                LDA     #$67
                LDY     #0
                LDX     #4
                JMP     sub_17BD69
; End of function sub_17BBEB


; =============== S U B R O U T I N E =======================================


sub_17BBF9:
                LDA     #$5D
                LDY     #$A
                LDX     #2
                JMP     loc_17BD95
; End of function sub_17BBF9


; =============== S U B R O U T I N E =======================================


sub_17BC02:
                LDA     #$61
                LDY     #$A
                LDX     #$10
                JMP     loc_17BD95
; End of function sub_17BC02


; =============== S U B R O U T I N E =======================================


sub_17BC0B:
                LDA     #$60
                LDY     #$A
                LDX     #$20
                JMP     loc_17BD95
; End of function sub_17BC0B


; =============== S U B R O U T I N E =======================================


sub_17BC14:
                LDA     #$70
                LDY     #$A
                LDX     #2
                JMP     loc_17BDAB
; End of function sub_17BC14


; =============== S U B R O U T I N E =======================================


sub_17BC1D:
                LDA     #$5E
                LDY     #$A
                LDX     #$C
                JMP     loc_17BD95
; End of function sub_17BC1D


; =============== S U B R O U T I N E =======================================


sub_17BC26:
                LDA     #$69
                LDY     #2
                LDX     #$10
                JMP     loc_17BDAB
; End of function sub_17BC26


; =============== S U B R O U T I N E =======================================


sub_17BC2F:
                LDA     #$71
                LDY     #$A
                LDX     #$40
                JMP     loc_17BD95
; End of function sub_17BC2F


; =============== S U B R O U T I N E =======================================


sub_17BC38:
                LDY     byte_54
                LDA     Character + CHARACTER::field_1,Y
                AND     #$80
                BEQ     loc_17BC5A
                LDA     #0
                STA     Character + CHARACTER::field_1,Y
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                LDX     byte_54
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$62
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BC5A:
                JMP     sub_17BDD8
; End of function sub_17BC38


; =============== S U B R O U T I N E =======================================


sub_17BC5D:
    .import sub_F26B, CurrentMusic, NewMusic

                LDX     Encounter
                CPX     #6
                BEQ     loc_17BC85
                LDA     #$19
                JSR     CheckMusic
                LDA     CurrentMusic
                PHA
                LDX     #0
                JSR     sub_F26B
                LDA     #3
                STA     apu_7F0
                LDX     #$38
                JSR     delay
                PLA
                CMP     CurrentMusic
                BEQ     locret_17BC84
                STA     NewMusic

locret_17BC84:
                RTS
; ---------------------------------------------------------------------------

loc_17BC85:
                LDA     #$19
                JSR     CheckMusic
                SEC
                LDA     NamePos
                SBC     #$9E
                TAX
                JSR     sub_F26B
                LDA     #3
                STA     apu_7F0
                JSR     sub_17B6E8
                LDA     NamePos
                JSR     sub_17A3F8
                LDA     #$2C
                JSR     CheckMusic
                LDX     NamePos
                INX
                CPX     #$A9
                BEQ     loc_17BCAF
                STX     NamePos
                RTS
; ---------------------------------------------------------------------------

loc_17BCAF:
                JSR     sub_17B5FD
                LDA     #$FF
                JSR     CheckMusic
                LDX     #$C8
                JSR     delay
                LDX     #$A9

loc_17BCBE:
                STX     NamePos
                TXA
                JSR     sub_17A3F8
                LDX     NamePos
                INX
                CPX     #$AC
                BNE     loc_17BCBE
                LDY     #$80
                JMP     sub_17B3DD
; End of function sub_17BC5D


; =============== S U B R O U T I N E =======================================


sub_17BCD0:
                LDX     #$A
                LDY     byte_54
                LDA     Character + CHARACTER::MaxPP,Y
                ORA     Character + CHARACTER::MaxPP+1,Y
                BEQ     loc_17BD28
                SEC
                LDA     Character + CHARACTER::MaxPP,Y
                TAX
                SBC     #$A
                LDA     Character + CHARACTER::MaxPP+1,Y
                SBC     #0
                BCC     loc_17BCEC
                LDX     #$A

loc_17BCEC:
                STX     byte_590
                LDX     #0
                STX     byte_591
                SEC
                LDA     Character + CHARACTER::MaxPP,Y
                SBC     byte_590
                STA     Character + CHARACTER::MaxPP,Y
                LDA     Character + CHARACTER::MaxPP+1,Y
                SBC     byte_591
                STA     Character + CHARACTER::MaxPP+1,Y
                LDA     #$48
                JSR     sub_17A3F8
                LDA     byte_590
                STA     Pointer
                LDA     byte_591
                STA     Pointer+1
                LDX     CharacterOffset
                LDY     #5
                JSR     sub_17BEF2
                LDA     CharacterOffset
                STA     byte_54
                LDX     #$A
                LDA     #$3D
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BD28:
                JMP     sub_17BDD8
; End of function sub_17BCD0


; =============== S U B R O U T I N E =======================================


sub_17BD2B:
                LDY     byte_54
                BMI     loc_17BD3F
                JSR     sub_17BFAA
                BCS     loc_17BD3F
                JSR     loc_17B4FC
                JSR     sub_17AACC
                LDA     #$81
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17BD3F:
                LDA     #$59
                JMP     sub_17A3F8
; End of function sub_17BD2B


; =============== S U B R O U T I N E =======================================


sub_17BD44:
                LDY     byte_54
                LDA     Character + CHARACTER::field_1,Y
                AND     #8
                BNE     locret_17BD5A
                LDA     Character + CHARACTER::field_1,Y
                ORA     #8
                STA     Character + CHARACTER::field_1,Y
                LDA     #$39
                JSR     sub_17A3F8

locret_17BD5A:
                RTS
; End of function sub_17BD44


; =============== S U B R O U T I N E =======================================


sub_17BD5B:
                PHA
                TXA
                BEQ     loc_17BD62
                JSR     sub_F41F

loc_17BD62:
                JSR     statistical_frame
                PLA
                JMP     sub_17A3F8
; End of function sub_17BD5B


; =============== S U B R O U T I N E =======================================


sub_17BD69:
                PHA
                JSR     sub_17BDCC
                LDA     Character + CHARACTER::field_1,Y
                AND     Pointer
                BNE     loc_17BDC6
                LDA     Character + CHARACTER::field_1,Y
                ORA     Pointer
                STA     Character + CHARACTER::field_1,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD7F:
                PHA
                JSR     sub_17BDCC
                LDA     Character + CHARACTER::field_1E,Y
                AND     Pointer
                BNE     loc_17BDC6
                LDA     Character + CHARACTER::field_1E,Y
                ORA     Pointer
                STA     Character + CHARACTER::field_1E,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD95:
                PHA
                JSR     sub_17BDCC
                LDA     Character + CHARACTER::field_1,Y
                AND     Pointer
                BEQ     loc_17BDC6
                LDA     Character + CHARACTER::field_1,Y
                AND     Pointer+1
                STA     Character + CHARACTER::field_1,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BDAB:
                PHA
                JSR     sub_17BDCC
                LDA     Character + CHARACTER::field_1E,Y
                AND     Pointer
                BEQ     loc_17BDC6
                LDA     Character + CHARACTER::field_1E,Y
                AND     Pointer+1
                STA     Character + CHARACTER::field_1E,Y

loc_17BDBE:
                LDX     byte_58
                PLA
                JSR     sub_17BD5B
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17BDC6:
                PLA
                JSR     sub_17BDD8
                SEC
                RTS
; End of function sub_17BD69


; =============== S U B R O U T I N E =======================================


sub_17BDCC:
                STX     Pointer
                TXA
                EOR     #$FF
                STA     Pointer+1
                STY     byte_58
                LDY     byte_54
                RTS
; End of function sub_17BDCC


; =============== S U B R O U T I N E =======================================


sub_17BDD8:
                LDA     #$55
                JMP     sub_17A3F8
; End of function sub_17BDD8


; =============== S U B R O U T I N E =======================================


sub_17BDDD:
    .import sub_F2ED

                LDA     byte_4E
                STA     Pointer
                LDA     byte_4F
                STA     Pointer+1
                JMP     sub_F2ED
; End of function sub_17BDDD


; =============== S U B R O U T I N E =======================================


sub_17BDE8:
                JSR     sub_17BF2C
; End of function sub_17BDE8


; =============== S U B R O U T I N E =======================================


sub_17BDEB:
                CLC
                LDA     Character,X
                ADC     Pointer
                STA     TilepackMode
                LDA     Character + CHARACTER::field_1,X
                ADC     Pointer+1
                STA     TilesCount
                BCC     loc_17BE02
                LDA     #$FF
                STA     TilepackMode
                STA     TilesCount

loc_17BE02:
                SEC
                LDA     pTileID
                SBC     TilepackMode
                LDA     pTileID+1
                SBC     TilesCount
                BCS     loc_17BE15
                LDA     pTileID
                STA     TilepackMode
                LDA     pTileID+1
                STA     TilesCount

loc_17BE15:
                SEC
                LDA     TilepackMode
                SBC     Character,X
                STA     byte_590
                LDA     TilesCount
                SBC     Character + CHARACTER::field_1,X
                STA     byte_591
                BCC     loc_17BE38
                ORA     byte_590
                BEQ     loc_17BE38
                LDA     TilepackMode
                STA     Character,X
                LDA     TilesCount
                STA     Character + CHARACTER::field_1,X
                RTS
; ---------------------------------------------------------------------------

loc_17BE38:
                JMP     sub_17BFD8
; End of function sub_17BDEB


; =============== S U B R O U T I N E =======================================


sub_17BE3B:
                JSR     sub_17BF2C
                CLC
                LDA     Character,X
                ADC     Pointer
                STA     TilepackMode
                BCC     loc_17BE4C
                LDA     #$FF
                STA     TilepackMode

loc_17BE4C:
                SEC
                LDA     pTileID
                SBC     TilepackMode
                BCS     loc_17BE57
                LDA     pTileID
                STA     TilepackMode

loc_17BE57:
                LDA     #0
                STA     byte_591
                SEC
                LDA     TilepackMode
                SBC     Character,X
                STA     byte_590
                BCC     loc_17BE6F
                BEQ     loc_17BE6F
                LDA     TilepackMode
                STA     Character,X
                RTS
; ---------------------------------------------------------------------------

loc_17BE6F:
                JMP     sub_17BFD8
; End of function sub_17BE3B


; =============== S U B R O U T I N E =======================================


sub_17BE72:
                JSR     sub_17BF2C
                SEC
                LDA     Character,X
                SBC     Pointer
                STA     TilepackMode
                LDA     Character + CHARACTER::field_1,X
                SBC     Pointer+1
                STA     TilesCount
                BCS     loc_17BE8C
                LDA     #0
                STA     TilepackMode
                STA     TilesCount

loc_17BE8C:
                CPY     #3
                BEQ     loc_17BE9E
                CPY     #5
                BEQ     loc_17BE9E
                LDA     TilepackMode
                ORA     TilesCount
                BNE     loc_17BE9E
                LDA     #1
                STA     TilepackMode

loc_17BE9E:
                SEC
                LDA     Character,X
                SBC     TilepackMode
                STA     byte_590
                LDA     Character + CHARACTER::field_1,X
                SBC     TilesCount
                STA     byte_591
                BCC     loc_17BEC1
                ORA     byte_590
                BEQ     loc_17BEC1
                LDA     TilepackMode
                STA     Character,X
                LDA     TilesCount
                STA     Character + CHARACTER::field_1,X
                RTS
; ---------------------------------------------------------------------------

loc_17BEC1:
                JMP     sub_17BFD8
; End of function sub_17BE72


; =============== S U B R O U T I N E =======================================


sub_17BEC4:
                JSR     sub_17BF2C
                SEC
                LDA     Character,X
                SBC     Pointer
                STA     TilepackMode
                BEQ     loc_17BED3
                BCS     loc_17BED7

loc_17BED3:
                LDA     #1
                STA     TilepackMode

loc_17BED7:
                LDA     #0
                STA     byte_591
                SEC
                LDA     Character,X
                SBC     TilepackMode
                STA     byte_590
                BEQ     loc_17BEEF
                BCC     loc_17BEEF
                LDA     TilepackMode
                STA     Character,X
                RTS
; ---------------------------------------------------------------------------

loc_17BEEF:
                JMP     sub_17BFD8
; End of function sub_17BEC4


; =============== S U B R O U T I N E =======================================


sub_17BEF2:
                JSR     sub_17BF2C
                LDA     AddrForJmp
                STA     pTileID
                LDA     AddrForJmp+1
                STA     pTileID+1
                JMP     sub_17BDEB
; End of function sub_17BEF2


; =============== S U B R O U T I N E =======================================


sub_17BF00:
                TXA
                PHA
                JSR     sub_17BF2C
                PLA
                TAX
                LDA     AddrForJmp
                STA     Pointer
                LDA     AddrForJmp+1
                STA     Pointer+1
                JSR     sub_F2ED
                JMP     sub_17BDE8
; End of function sub_17BF00


; =============== S U B R O U T I N E =======================================


sub_17BF15:
                TXA
                PHA
                JSR     sub_17BF2C
                PLA
                TAX
                LDA     AddrForJmp+1
                LSR     A
                STA     Pointer+1
                LDA     AddrForJmp
                ROR     A
                STA     Pointer
                JSR     sub_F2ED
                JMP     sub_17BE72
; End of function sub_17BF15


; =============== S U B R O U T I N E =======================================


sub_17BF2C:
                LDA     Character + CHARACTER::NameOffset,X
                STA     TilepackMode
                LDA     Character + CHARACTER::NameOffset+1,X
                STA     TilesCount
                LDA     (TilepackMode),Y
                STA     AddrForJmp
                ASL     A
                STA     pTileID
                INY
                LDA     (TilepackMode),Y
                AND     #3
                STA     AddrForJmp+1
                ROL     A
                STA     pTileID+1
                BCC     loc_17BF4F
                LDA     #$FF
                STA     pTileID
                STA     pTileID+1

loc_17BF4F:
                DEY
                STX     pDist
                TYA
                CLC
                ADC     pDist
                TAX
                RTS
; End of function sub_17BF2C


; =============== S U B R O U T I N E =======================================


sub_17BF58:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Wisdom,Y
                TAX
                LDY     byte_54
                LDA     Character + CHARACTER::Strength,Y
                JMP     sub_17BF8C
; End of function sub_17BF58


; =============== S U B R O U T I N E =======================================


sub_17BF66:
                LDY     CharacterOffset
                LDA     Character + CHARACTER::Wisdom,Y
                TAX
                LDY     byte_54
                LDA     Character + CHARACTER::Force,Y
                JMP     sub_17BF8C
; End of function sub_17BF66


; =============== S U B R O U T I N E =======================================


sub_17BF74:
                LDA     Character + CHARACTER::field_2,Y
                AND     byte_57
                BEQ     loc_17BF87
                LSR     Pointer+1
                ROR     Pointer
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17BF87
                INC     Pointer

loc_17BF87:
                LDA     #0
                STA     byte_57
                RTS
; End of function sub_17BF74


; =============== S U B R O U T I N E =======================================


sub_17BF8C:
    .import sub_F13D

                LSR     A
                STA     Pointer
                STX     pTileID
                TXA
                SEC
                SBC     Pointer
                BCS     loc_17BF99
                LDA     #0

loc_17BF99:
                STA     Pointer+1
                LDA     #0
                STA     Pointer
                STA     AddrForJmp
                JSR     sub_F13D
                JSR     sub_F1ED
                CMP     Pointer
                RTS
; End of function sub_17BF8C


; =============== S U B R O U T I N E =======================================


sub_17BFAA:
                JSR     sub_17AABC
                LDY     #0

loc_17BFAF:
                TYA
                PHA
                LDA     (Pointer),Y
                BEQ     loc_17BFCB
                JSR     sub_17AAA4
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                TAX
                LDY     #2
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                AND     #$40
                BNE     loc_17BFD4

loc_17BFCB:                             ; CODE XREF: sub_17BFAA+9↑j
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17BFAF
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17BFD4:
                PLA
                TAY
                CLC
                RTS
; End of function sub_17BFAA


; =============== S U B R O U T I N E =======================================


sub_17BFD8:
                LDA     #0
                STA     byte_590
                STA     byte_591
                CLC
                RTS
; End of function sub_17BFD8


; =============== S U B R O U T I N E =======================================


sub_17BFE2:
                LDA     byte_54
                BPL     loc_17BFEB

loc_17BFE6:
                LDA     Encounter
                LSR     A
                BNE     loc_17BFED

loc_17BFEB:
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17BFED:
                SEC
                RTS
; End of function sub_17BFE2


; =============== S U B R O U T I N E =======================================


sub_17BFEF:
                LDY     byte_54
                BMI     loc_17BFFC
                LDA     Character + CHARACTER::Exp,Y
                CMP     #6
                BNE     loc_17BFFC
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17BFFC:
                CLC
                RTS
; End of function sub_17BFEF

; end of 'BANK17'
