.include "nmi.inc"
.include "macros.inc"
.include "..\res\framecomm.inc"
.include "..\res\structures.inc"
.include "..\..\sys\palette.inc"

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
    .import NMI_Data, Enemy1, Enemy2, Enemy3, Enemy4, Character1, Character2, Character3, Character4, BattlePalettes
    .importzp GamepadButtons, pCharacter, Pointer, NMIFlags, OffsetNMI_Data, NamePos
    .importzp byte_23, byte_47, EnemyGroup, Experience, Money
    .importzp MsgCounter, CharacterOffset, BossID, Auto, EnemyPos, EnemyCount

    lda #0
    sta GamepadButtons
    sta GamepadButtons+1
    sta MsgCounter
    sta Auto
    sta Experience
    sta Experience+1
    sta Experience+2
    sta Money
    sta Money+1
    tax

@clear_bss:
    sta Character1,X
    inx
    bne @clear_bss
    ldx #$1F

@clear2:
    sta byte_580,X
    dex
    bpl @clear2
    lda #0
    sta CharacterOffset
    ldx #0

next_character:
    txa
    pha
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq no_character
    jsr copy_character
    clc
    lda CharacterOffset
    adc #$20
    sta CharacterOffset

no_character:
    pla
    tax
    inx
    cpx #4
    bne next_character
    jsr get_enemy_group ; Input: EnemyGroup - ID enemy ?
                        ; Output: pCharacter - pointer to struct
                        ;         Pointer - offset for struct, offset zero page
    lda #$80
    sta CharacterOffset
    ldy #0

@next_enemy:
    lda (pCharacter),Y
    sta Pointer
    iny
    lda (pCharacter),Y
    sta Pointer+1
    iny
    tya
    pha
    lda Pointer
    cmp #$FF
    beq @no_enemy
    jsr copy_enemy

@no_enemy:
    clc
    lda CharacterOffset
    adc #$20
    sta CharacterOffset
    pla
    tay
    cpy #8
    bne @next_enemy
    lda (pCharacter),Y
    and #$E0
    ldx #5

@get_boss_id:
    lsr A
    dex
    bne @get_boss_id
    sta BossID
    lda (pCharacter),Y
    and #$1F
    sta EnemyPos
    iny
    lda (pCharacter),Y
    and #$F
    sta Pointer
    lda #0
    ldx #5

@get_palette_off:
    asl Pointer
    rol A
    dex
    bne @get_palette_off
    sta Pointer+1
    clc
    lda #<BattlePalettes
    adc Pointer
    sta Pointer
    lda #>BattlePalettes
    adc Pointer+1
    sta Pointer+1
    jsr bank0
    jsr preload_palettes
    jsr bank16
    ldx #$23            ; 23C0 - attribute address
    ldy #$C0
    jsr fill_attribute
    ldx #$2B            ; 2BC0 - attribute address
    ldy #$C0
    jsr fill_attribute
    jsr statistical_frame
    lda #0
    sta EnemyCount
    lda #$80
    sta CharacterOffset

loc_17A0C0:
    ldx CharacterOffset
    lda Character,X
    beq loc_17A0CA
    jsr enemy_draw

loc_17A0CA:
    inc EnemyCount
    clc
    lda CharacterOffset
    adc #$20
    sta CharacterOffset
    bcc loc_17A0C0
    ldy #0
    ldx #0

loc_17A0D9:
    lda byte_580,Y
    iny
    ora byte_580,Y
    sta Pointer
    iny
    lda byte_580,Y
    iny
    ora byte_580,Y
    asl A
    asl A
    ora Pointer
    sta Pointer
    asl A
    asl A
    asl A
    asl A
    ora Pointer
    sta byte_580,X
    iny
    inx
    cpx #8
    bne loc_17A0D9
    jsr wait_nmi_processed
    lda #WRITE_ROW
    sta NMI_Data + NMI_DATA::NMI_ID
    lda #$10
    sta NMI_Data + NMI_DATA::NumOfChr
    ldy #0
    ldx #4

loc_17A110:
    lda byte_580,Y
    sta NMI_Data,X
    sta NMI_Data + NMI_DATA::PPU_Addr+6,X
    iny
    inx
    cpy #8
    bne loc_17A110
    lda #0
    sta NMI_Data + NMI_DATA::PPU_Addr+6,X
    lda #$80
    sta NMIFlags
    lda #$23
    sta NMI_Data + NMI_DATA::PPU_Addr
    lda #$D8
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    lda #0
    sta OffsetNMI_Data
    lda #0
    sta byte_47
    sta EnemyGroup
    ldx #$80

loc_17A13E:
    txa
    pha
    ldy #4

loc_17A142:
    lda Character1 + BATTLE::Health+1,X
    and #3
    sta Character1 + BATTLE::Health+1,X
    inx
    inx
    dey
    bne loc_17A142
    pla
    clc
    adc #$20
    tax
    bne loc_17A13E
    ldx #0
    lda BossID
    cmp #1
    bne loc_17A173
    ldx #4
    lda #$FF
    sta Enemy1 + BATTLE::Health
    sta Enemy1 + BATTLE::Health+1
    lda #0
    sta Character2 + BATTLE::EnemyGroup
    sta Character3 + BATTLE::EnemyGroup
    sta Character4 + BATTLE::EnemyGroup

loc_17A173:
    stx EnemyCount
    lda byte_23
    beq loc_17A18C
    ldy #0
    sty BossID

loc_17A17D:
    lda Character1 + BATTLE::Resist,Y
    ora #4
    sta Character1 + BATTLE::Resist,Y
    tya
    clc
    adc #$20
    tay
    bpl loc_17A17D

loc_17A18C:
    lda BossID
    cmp #5
    bne loc_17A19C
    lda #$96
    sta NamePos
    lda Character1 + BATTLE::Speed
    sta Enemy1 + BATTLE::Speed

loc_17A19C:
    ldx #20
    jsr delay
    jsr save_jmp_instr  ; save JMP ROM:F76A to $D7

@battle_loop:
    lda #BATTLE_LOG
    jsr frame
    jsr sub_17AC6A
    bcs @end_battle
    ldx #20
    jsr delay
    lda #CLEAR1
    jsr frame
    lda #0
    sta MsgCounter
    jsr shift_up_window
    jsr sub_F765
    jsr battle_order      ; battle menu, wait command
    jsr sub_F760        ; return if select action, set value $5A = 1
    lda #CLEAR2
    jsr frame
    jsr shift_down_window
    jmp @battle_loop
; ---------------------------------------------------------------------------

@end_battle:
    jsr clear_jmp_instr
    lda #0
    sta GamepadButtons
    sta GamepadButtons+1
    rts
; End of function battle


; =============== S U B R O U T I N E =======================================


copy_character:
    .importzp AddrForJmp

    sta AddrForJmp
    tax
    store #CurrentGame, Pointer

loc_17A1E8:
    clc
    lda Pointer
    adc #<.sizeof(CHARACTER)
    sta Pointer
    lda Pointer+1
    adc #>.sizeof(CHARACTER)
    sta Pointer+1
    dex
    bne loc_17A1E8
    ldy #CHARACTER::InitialStatus
    ldx CharacterOffset

@copy_to_lvl:
    lda (Pointer),Y
    sta Character1 + BATTLE::InitialStatus,X
    iny
    inx
    cpy #CHARACTER::Level
    bne @copy_to_lvl
    ldy #CHARACTER::Health
    ldx CharacterOffset

@health_pp:
    lda (Pointer),Y
    sta Character1 + BATTLE::Health,X
    inx
    iny
    cpy #CHARACTER::NameOffset
    bne @health_pp
    ldx CharacterOffset
    lda #$FF
    sta Character1 + BATTLE::EnemyGroup,X
    lda AddrForJmp
    sta Character1 + BATTLE::Scripts+1,X
    lda Pointer
    sta Character1 + BATTLE::PointerChr,X
    lda Pointer+1
    sta Character1 + BATTLE::PointerChr+1,X
    rts
; End of function copy_character


; =============== S U B R O U T I N E =======================================


copy_enemy:
    .import EnemyList

    ldx CharacterOffset
    lda Pointer+1
    asl A
    asl A
    sta Character1 + BATTLE::Letter,X
    lda Pointer
    sta AddrForJmp
    lda #0
    ldx #5

loc_17A23E:
    asl AddrForJmp
    rol A
    dex
    bne loc_17A23E
    sta AddrForJmp+1
    clc
    lda #<EnemyList
    adc AddrForJmp
    sta AddrForJmp
    lda #>EnemyList
    adc AddrForJmp+1
    sta AddrForJmp+1
    ldy #1
    ldx CharacterOffset

loc_17A257:
    lda (AddrForJmp),Y
    sta Character1 + BATTLE::InitialStatus,X
    iny
    inx
    cpy #ENEMY::Name
    bne loc_17A257
    ldx CharacterOffset
    ldy EnemyGroup
    iny
    tya
    sta Character1 + BATTLE::EnemyGroup,X
    lda AddrForJmp
    sta Character1 + BATTLE::PointerChr,X
    lda AddrForJmp+1
    sta Character1 + BATTLE::PointerChr+1,X
    ldy #$5E
    lda Pointer+1
    bpl loc_17A285
    lda Character1 + BATTLE::Resist,X
    ora #1
    sta Character1 + BATTLE::Resist,X
    ldy #0

loc_17A285:
    tya
    sta Character1 + BATTLE::Script,X
    rts
; End of function copy_enemy


; =============== S U B R O U T I N E =======================================


enemy_draw:
    .import SpriteTable, off_16960A, byte_168F40
    .importzp TilepackMode, pTileID, pDist, TilesCount

    lda Character1 + BATTLE::Resist,X
    and #1
    beq loc_17A296
    lda #0
    sta Character1 + BATTLE::EnemyGroup,X

loc_17A296:
    lda Character1 + BATTLE::Letter,X
    ora EnemyCount
    sta Character1 + BATTLE::Letter,X
    lda Character1 + BATTLE::Health+1,X
    and #$F0
    lsr A
    lsr A
    lsr A
    tay
    lda off_16960A,Y
    sta Pointer
    lda off_16960A+1,Y
    sta Pointer+1
    lda Character1 + BATTLE::Offense+1,X
    and #$E0
    lsr A
    lsr A
    lsr A
    lsr A
    lsr A
    sta TilepackMode
    ldy #0
    lda (Pointer),Y
    sta AddrForJmp
    iny
    lda (Pointer),Y
    sta AddrForJmp+1
    iny
    sec
    lda (Pointer),Y
    sbc TilepackMode
    tay
    iny
    lda #$E0

loc_17A2D2:
    clc
    adc #$20
    dey
    bne loc_17A2D2
    sta pTileID
    lda EnemyPos
    asl A
    asl A
    adc EnemyCount
    tay
    lda byte_168F40,Y
    sta pTileID+1
    lda Character1 + BATTLE::Health+1,X
    and #$C
    lsr A
    lsr A
    ldy pTileID+1
    ldx #0

loc_17A2F1:
    sta byte_580,Y
    iny
    inx
    cpx AddrForJmp+1
    bne loc_17A2F1
    clc
    lda pTileID+1
    adc pTileID
    adc #$80
    sta pTileID
    lda #0
    adc #$21
    sta pTileID+1
    lda pTileID
    and #$E0
    sta pDist
    lda pTileID+1
    and #3
    lsr A
    ror pDist
    lsr A
    ror pDist
    sec
    lda pDist
    sbc #$19
    sta pDist
    lda pTileID
    asl A
    asl A
    asl A
    sec
    sbc #$10
    sta pDist+1
    ldx EnemyCount
    inx
    lda #$C0

loc_17A32F:
    clc
    adc #$40
    dex
    bne loc_17A32F
    sta TilepackMode
    ldy #2

@next_row:
    jsr wait_nmi_processed
    ldx #0
    lda #WRITE_ROW
    sta NMI_Data,X
    inx
    lda AddrForJmp+1
    sta NMI_Data,X
    sta TilesCount
    inx
    lda pTileID+1
    sta NMI_Data,X
    inx
    lda pTileID
    sta NMI_Data,X

@next_tile:
    iny
    lda (Pointer),Y
    clc
    adc TilepackMode
    inx
    sta NMI_Data,X
    dec TilesCount
    bne @next_tile
    lda #0
    inx
    sta NMI_Data,X
    clc
    lda pTileID
    adc #$20
    sta pTileID
    lda pTileID+1
    adc #0
    sta pTileID+1
    lda #0
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    dec AddrForJmp
    bne @next_row
    ldx CharacterOffset
    lda Character1 + BATTLE::PP+1,X
    and #$FC
    beq locret_17A3D1
    lsr A
    lsr A
    sta Pointer
    asl A
    adc Pointer
    clc
    adc #$C8
    sta Pointer
    lda #0
    adc #$97
    sta Pointer+1
    ldy #0
    lda (Pointer),Y
    sta Character1 + BATTLE::TargetOff,X
    lda EnemyCount
    asl A
    asl A
    asl A
    tax
    lda #0
    sta SpriteTable,X
    sta SpriteTable + ANIM_SPRITE::TileID,X
    sta SpriteTable + ANIM_SPRITE::ShiftX,X
    sta SpriteTable + ANIM_SPRITE::ShiftY,X
    lda pDist+1
    sta SpriteTable + ANIM_SPRITE::PosX,X
    lda pDist
    sta SpriteTable + ANIM_SPRITE::PosY,X
    ldy #1
    lda (Pointer),Y
    sta SpriteTable + ANIM_SPRITE::pFrame,X
    iny
    lda (Pointer),Y
    sta SpriteTable + ANIM_SPRITE::pFrame+1,X

locret_17A3D1:
    rts
; End of function enemy_draw


; =============== S U B R O U T I N E =======================================


fill_attribute:
    jsr wait_nmi_processed
    stx NMI_Data + NMI_DATA::PPU_Addr
    sty NMI_Data + NMI_DATA::PPU_Addr+1
    lda #FILL
    sta NMI_Data + NMI_DATA::NMI_ID
    lda #$40
    sta NMI_Data + NMI_DATA::NumOfChr
    lda #$FF
    sta NMI_Data + NMI_DATA::Chr
    lda #0
    sta NMI_Data + NMI_DATA::Next
    lda #$80
    sta NMIFlags
    lda #0
    sta OffsetNMI_Data
    rts
; End of function fill_attribute


; =============== S U B R O U T I N E =======================================


print_text:
    .export print_text
    .import text2stack, delay_print_scroll, BattleMsg
    .importzp StackPointer, TargetOffset, DialogPage, PointerTilePack, Row, Column

    cmp #0
    beq locret_17A478
    pha
    jsr set_names
    jsr bank0
    pla
    cmp #$FF
    bne loc_17A42D
    sec
    ldy TargetOffset
    lda Character1 + BATTLE::PointerChr,Y
    sbc #0
    sta PointerTilePack
    lda Character1 + BATTLE::PointerChr+1,Y
    sbc #$80
    asl PointerTilePack
    rol A
    asl PointerTilePack
    rol A
    asl PointerTilePack
    rol A
    clc
    adc #$14
    sta PointerTilePack
    lda #0
    adc #5
    sta DialogPage
    bcc loc_17A44A

loc_17A42D:
    ldy #0
    sty Pointer+1
    asl A
    rol Pointer+1
    clc
    adc #<BattleMsg
    sta Pointer
    lda Pointer+1
    adc #>BattleMsg
    sta Pointer+1
    ldy #0
    lda (Pointer),Y
    sta PointerTilePack
    iny
    lda (Pointer),Y
    sta DialogPage

loc_17A44A:
    jsr text2stack
    store PointerTilePack, StackPointer
    lda MsgCounter
    cmp #3
    bne loc_17A462
    ldx #3
    jsr delay_print_scroll
    dec MsgCounter

loc_17A462:
    jsr print_msg
    cmp #2
    beq loc_17A46F
    inc MsgCounter
    cmp #0
    bne loc_17A44A

loc_17A46F:
    jsr bank16
    ldx CurrentGame + PURE_SAVE::FightMsgSpd
    jsr delay

locret_17A478:
    rts
; End of function print_text


; =============== S U B R O U T I N E =======================================


print_msg:
    .import sub_F5C2, print_string, move_chars
    .importzp PrintSize, UnpackID

    lda MsgCounter
    asl A
    adc #3
    sta Row
    ldy #0
    lda (StackPointer),Y
    cmp #3
    bne loc_17A49D
    lda #$F
    sta Column
    jsr sub_F5C2
    inc StackPointer
    bne loc_17A495
    inc StackPointer+1

loc_17A495:
    ldy #0
    lda (StackPointer),Y
    cmp #2
    beq locret_17A4BA

loc_17A49D:
    lda #$16
    sta PrintSize
    lda #5
    sta Column
    jsr wait_nmi_processed
    lda StackPointer
    sta PointerTilePack
    lda StackPointer+1
    sta PointerTilePack+1
    jsr print_string
    lda #1
    jsr move_chars      ; Move $A4 chars from $432-4D6 to $45B-4FF
    lda UnpackID        ; UnpackTable

locret_17A4BA:
    rts
; End of function print_msg


; =============== S U B R O U T I N E =======================================


set_names:
    .import TilePntr1, TilePntr2

    lda #$21
    sta TilePntr1
    sta TilePntr2
    store #TilePntr1, AddrForJmp
    ldx CharacterOffset
    jsr loc_17A4DA
    store #TilePntr2, AddrForJmp
    ldx TargetOffset

loc_17A4DA:
    lda Character1 + BATTLE::PointerChr,X
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,X
    sta Pointer+1
    ldy #ENEMY::Name
    lda (Pointer),Y
    pha
    iny
    lda (Pointer),Y
    ldy #2
    sta (AddrForJmp),Y
    pla
    dey
    sta (AddrForJmp),Y
    iny
    iny
    lda Character1 + BATTLE::Letter,X
    and #$1C
    beq loc_17A505
    lsr A
    lsr A
    clc
    adc #$40
    sta (AddrForJmp),Y
    iny

loc_17A505:
    lda #0
    sta (AddrForJmp),Y
    rts
; End of function set_names


; =============== S U B R O U T I N E =======================================


battle_order:
    lda #0
    sta CharacterOffset

loc_17A50E:
    ldy CharacterOffset
    lda #0
    sta Character1 + BATTLE::Script,Y
    lda Character1 + BATTLE::Resist,Y
    and #$F7
    sta Character1 + BATTLE::Resist,Y
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A535
    lda Character1 + BATTLE::InitialStatus,Y
    and #$F4
    bne loc_17A535
    lda Character1 + BATTLE::Resist,Y
    and #$20
    bne loc_17A535
    jsr sub_17A53F
    bcs loc_17A50E

loc_17A535:
    clc
    lda CharacterOffset
    adc #$20
    sta CharacterOffset
    bne loc_17A50E
    rts
; End of function battle_order


; =============== S U B R O U T I N E =======================================


sub_17A53F:
    lda Auto
    bne loc_17A559
    ldy CharacterOffset
    bmi loc_17A559
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    beq loc_17A559
    jsr sub_17A7DA
    bcs locret_17A572
    lda Auto
    beq loc_17A55C

loc_17A559:
    jsr sub_17A573

loc_17A55C:
    ldy CharacterOffset
    lda Character1 + BATTLE::Script,Y
    cmp #$53
    beq loc_17A569
    cmp #$59
    bne loc_17A571

loc_17A569:
    lda Character1 + BATTLE::Resist,Y
    ora #8
    sta Character1 + BATTLE::Resist,Y

loc_17A571:
    clc

locret_17A572:
    rts
; End of function sub_17A53F


; =============== S U B R O U T I N E =======================================


sub_17A573:
    .import sub_F673, randomize, script_high
    .importzp Value

    lda CharacterOffset
    bmi @enemy
    jmp loc_17A57D
; ---------------------------------------------------------------------------

@enemy:
    jmp loc_17A723
; ---------------------------------------------------------------------------

loc_17A57D:
    ldy #0

loc_17A57F:
    sty TargetOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A594
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    beq loc_17A594
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17A59D

loc_17A594:
    tya
    clc
    adc #$20
    tay
    bpl loc_17A57F
    bmi loc_17A5A0

loc_17A59D:
    jmp loc_17A6B0
; ---------------------------------------------------------------------------

loc_17A5A0:
    ldy #0

loc_17A5A2:
    sty TargetOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A5BC
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17A5BC
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    beq loc_17A5BC
    jsr sub_F673
    bcc loc_17A5C5

loc_17A5BC:
    tya
    clc
    adc #$20
    tay
    bpl loc_17A5A2
    bmi loc_17A5E9

loc_17A5C5:
    ldx #0
    ldy #0

loc_17A5C9:
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A5DB
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17A5DB
    jsr sub_F673
    bcs loc_17A5DB
    inx
    sty TargetOffset

loc_17A5DB:
    tya
    clc
    adc #$20
    tay
    bpl loc_17A5C9
    cpx #1
    bcc loc_17A611
    jmp loc_17A623
; ---------------------------------------------------------------------------

loc_17A5E9:
    ldy #0

loc_17A5EB:
    sty TargetOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A604
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    beq loc_17A604
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17A604
    and #$70
    bne loc_17A60E

loc_17A604:
    tya
    clc
    adc #$20
    tay
    bpl loc_17A5EB
    jmp loc_17A690
; ---------------------------------------------------------------------------

loc_17A60E:
    jmp loc_17A659
; ---------------------------------------------------------------------------

loc_17A611:
    lda #$C
    jsr loc_17A6C2
    bcc locret_17A622
    lda #$B
    jsr loc_17A6C2
    bcc locret_17A622
    jmp loc_17A623
; ---------------------------------------------------------------------------

locret_17A622:
    rts
; ---------------------------------------------------------------------------

loc_17A623:
    lda #$A
    jsr loc_17A6C2
    bcc loc_17A651
    lda #9
    jsr loc_17A6C2
    bcc loc_17A651
    lda #8
    jsr loc_17A6C2
    bcc loc_17A651
    ldy CharacterOffset
    jsr sub_17BFAA
    bcs loc_17A5E9
    cpx #$7C
    beq loc_17A5E9
    cpx #$84
    beq loc_17A5E9
    tya
    ldy CharacterOffset
    sta Character1 + BATTLE::Scripts,Y
    txa
    sta Character1 + BATTLE::Script,Y

loc_17A651:
    lda TargetOffset
    ldy CharacterOffset
    sta Character1 + BATTLE::TargetOff,Y
    rts
; ---------------------------------------------------------------------------

loc_17A659:
    ldy TargetOffset
    lda Character1 + BATTLE::InitialStatus,Y
    tax
    and #$20
    bne loc_17A670
    txa
    and #$10
    bne loc_17A677
    txa
    and #$40
    bne loc_17A67E
    jmp loc_17A685
; ---------------------------------------------------------------------------

loc_17A670:
    lda #$11
    jsr loc_17A6C2
    bcc loc_17A688

loc_17A677:
    lda #$13
    jsr loc_17A6C2
    bcc loc_17A688

loc_17A67E:
    lda #$12
    jsr loc_17A6C2
    bcc loc_17A688

loc_17A685:
    jmp loc_17A690
; ---------------------------------------------------------------------------

loc_17A688:
    lda TargetOffset
    ldy CharacterOffset
    sta Character1 + BATTLE::TargetOff,Y
    rts
; ---------------------------------------------------------------------------

loc_17A690:
    ldy CharacterOffset
    lda #1
    sta Character1 + BATTLE::Script,Y

loc_17A697:
    jsr randomize
    and #$E0
    ora #$80
    tay
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A697
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17A697
    tya
    ldy CharacterOffset
    sta Character1 + BATTLE::TargetOff,Y
    rts
; ---------------------------------------------------------------------------

loc_17A6B0:
    lda #$14
    jsr loc_17A6C2
    bcc loc_17A6BA
    jmp loc_17A5A0
; ---------------------------------------------------------------------------

loc_17A6BA:
    ldy CharacterOffset
    lda TargetOffset
    sta Character1 + BATTLE::TargetOff,Y
    rts
; ---------------------------------------------------------------------------

loc_17A6C2:
    sta Pointer
    jsr get_psi_pointer
    lda Pointer
    lsr A
    lsr A
    lsr A
    tay
    lda Pointer
    and #7
    tax
    inx
    sec
    lda #0

loc_17A6D6:
    ror A
    dex
    bne loc_17A6D6
    sta Pointer+1
    lda (pCharacter),Y
    and Pointer+1
    beq loc_17A721
    lda #0
    asl Pointer
    rol A
    asl Pointer
    rol A
    asl Pointer
    rol A
    sta Pointer+1
    clc
    lda Pointer
    adc #0
    sta Pointer
    lda Pointer+1
    adc #$9E
    sta Pointer+1
    jsr bank0
    ldy #5
    lda (Pointer),Y
    ldy CharacterOffset
    sta Character1 + BATTLE::Script,Y
    ldy #7
    lda (Pointer),Y
    sta Value
    lda #0
    sta Value+1
    jsr bank16
    jsr check_PP
    bcc loc_17A721
    jsr check_resist
    bcc loc_17A721
    clc
    rts
; ---------------------------------------------------------------------------

loc_17A721:
    sec
    rts
; ---------------------------------------------------------------------------

loc_17A723:
    jsr randomize
    and #7
    clc
    adc CharacterOffset
    tay
    lda Character1 + BATTLE::Scripts,Y
    ldy CharacterOffset
    sta Character1 + BATTLE::Script,Y
    jsr sub_17AC23
    jsr script_high
; ---------------------------------------------------------------------------
    .word set_target, sub_17A740, sub_17A74A

; =============== S U B R O U T I N E =======================================


sub_17A740:
    jsr random_targeting
    lda TargetOffset
    bpl sub_17A740
    jmp set_target
; End of function sub_17A740


; =============== S U B R O U T I N E =======================================


sub_17A74A:
    lda CharacterOffset
    bpl loc_17A796
    lda BossID
    cmp #3
    bne loc_17A760
    ldx #3

loc_17A756:
    lda #6
    jsr sub_17A7BE
    bcs loc_17A7A0
    dex
    bpl loc_17A756

loc_17A760:
    lda BossID
    cmp #4
    bne loc_17A78A
    ldx #3

loc_17A768:
    lda #1
    jsr sub_17A7BE
    bcs loc_17A7A0
    dex
    bpl loc_17A768
    ldx #3

loc_17A774:
    lda #2
    jsr sub_17A7BE
    bcs loc_17A7A0
    dex
    bpl loc_17A774
    ldx #3

loc_17A780:
    lda #4
    jsr sub_17A7BE
    bcs loc_17A7A0
    dex
    bpl loc_17A780

loc_17A78A:
    ldx #3

loc_17A78C: 
    lda #7
    jsr sub_17A7BE
    bcs loc_17A7A0
    dex
    bpl loc_17A78C

loc_17A796:
    jsr random_targeting
    lda TargetOffset
    bmi loc_17A796
    jmp set_target
; ---------------------------------------------------------------------------

loc_17A7A0:
    jmp set_target
; End of function sub_17A74A


; =============== S U B R O U T I N E =======================================


set_target:
    lda TargetOffset
    ldy CharacterOffset
    sta Character1 + BATTLE::TargetOff,Y
    rts
; End of function set_target


; =============== S U B R O U T I N E =======================================


random_targeting:
    .importzp OtherNMIFlags

    jsr randomize
    and #OtherNMIFlags
    tay
    lda Character1 + BATTLE::EnemyGroup,Y
    beq random_targeting
    lda Character1 + BATTLE::InitialStatus,Y
    bmi random_targeting
    sty TargetOffset
    rts
; End of function random_targeting


; =============== S U B R O U T I N E =======================================


sub_17A7BE:
    cmp CurrentGame + PURE_SAVE::CharactersNum, X   ; $7408,X
    bne loc_17A7D8
    txa
    asl A
    asl A
    asl A
    asl A
    asl A
    tay
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A7D8
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17A7D8
    sty TargetOffset
    sec
    rts
; ---------------------------------------------------------------------------

loc_17A7D8:
    clc
    rts
; End of function sub_17A7BE


; =============== S U B R O U T I N E =======================================


sub_17A7DA:
    jsr name_frame

loc_17A7DD:
    lda #BATTLE_MENU1
    ldx CurrentGame + GAME_SAVE::Flags+$1C
    bpl loc_17A7E6
    lda #BATTLE_MENU2

loc_17A7E6:
    jsr frame
    jsr battle_menu
    jsr script_high
; ---------------------------------------------------------------------------
    .word fight, auto, battle_psi, guard, battle_goods, run, battle_check
    .word sub_17A8E2, sub_17A8E7

nullsub_6:
    rts

; =============== S U B R O U T I N E =======================================


fight:
    lda #1
    ldy CharacterOffset
    sta Character1 + BATTLE::Script,Y
    jsr sub_17A962
    bcc loc_17A811
    jmp loc_17A7DD
; ---------------------------------------------------------------------------

loc_17A811:
    jmp nullsub_6
; End of function fight


; =============== S U B R O U T I N E =======================================


auto:
.import stru_159714

    jsr wait_nmi_processed
    lda #1
    sta Auto
    lda #<stru_159714
    sta SpriteTable + ANIM_SPRITE::pFrame+$E0
    lda #>stru_159714
    sta SpriteTable + ANIM_SPRITE::pFrame+$E1
    lda #4
    sta SpriteTable + ANIM_SPRITE::Tiles+$E0
    lda #0
    sta SpriteTable + ANIM_SPRITE::TileID+$E0
    sta SpriteTable + ANIM_SPRITE::ShiftX+$E0
    sta SpriteTable + ANIM_SPRITE::ShiftY+$E0
    lda #$D0
    sta SpriteTable + ANIM_SPRITE::PosX+$E0
    lda #$47
    sta SpriteTable + ANIM_SPRITE::PosY+$E0
    lda #1
    sta NMIFlags
    clc
    jmp nullsub_6
; End of function auto


; =============== S U B R O U T I N E =======================================


battle_psi:
    jsr get_psi_pointer
    lda #0
    sta Pointer
    ldy #7

loc_17A850:
    lda (pCharacter),Y
    ora Pointer
    sta Pointer
    dey
    bne loc_17A850
    lda Pointer
    beq loc_17A868
    jsr sub_17AB10
    bcs loc_17A865
    jmp nullsub_6
; ---------------------------------------------------------------------------

loc_17A865:
    jmp sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A868:
    jmp loc_17A7DD
; End of function battle_psi


; =============== S U B R O U T I N E =======================================


get_psi_pointer:
    ldy CharacterOffset
    clc
    lda Character1 + BATTLE::PointerChr,Y
    adc #<CHARACTER::PSI
    sta pCharacter
    lda Character1 + BATTLE::PointerChr+1,Y
    adc #>CHARACTER::PSI
    sta pCharacter+1
    rts
; End of function get_psi_pointer


; =============== S U B R O U T I N E =======================================


guard:
    lda #$59

set_script:
    ldy CharacterOffset
    sta Character1 + BATTLE::Script,Y
    clc
    jmp nullsub_6
; End of function guard


; =============== S U B R O U T I N E =======================================


battle_goods:
    ldy CharacterOffset
    clc
    lda Character1 + BATTLE::PointerChr,Y
    adc #<CHARACTER::Goods
    sta pCharacter
    lda Character1 + BATTLE::PointerChr+1,Y
    adc #>CHARACTER::Goods
    sta pCharacter+1
    lda #0
    sta Pointer
    ldy #7

loc_17A89F:
    lda (pCharacter),Y
    ora Pointer
    sta Pointer
    dey
    bpl loc_17A89F
    lda Pointer
    beq loc_17A8B7
    jsr sub_17AA08
    bcs loc_17A8B4
    jmp nullsub_6
; ---------------------------------------------------------------------------

loc_17A8B4:
    jmp sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A8B7:
    jmp loc_17A7DD
; End of function battle_goods


; =============== S U B R O U T I N E =======================================


run:
    lda #$48
    jmp set_script
; End of function run


; =============== S U B R O U T I N E =======================================


battle_check:
    .import byte_591
    .importzp CursorPosition

    lda #$80
    sta TargetOffset
    jsr target_choice
    bcs loc_17A8DF
    ldx CursorPosition
    lda byte_591,X
    tax
    dex
    txa
    sta TargetOffset
    ldy CharacterOffset
    sta Character1 + BATTLE::TargetOff,Y
    lda #$6F
    sta Character1 + BATTLE::Script,Y
    jmp nullsub_6
; ---------------------------------------------------------------------------

loc_17A8DF:
    jmp loc_17A7DD
; End of function battle_check


; =============== S U B R O U T I N E =======================================


sub_17A8E2:
    lda #$1C
    jmp set_script
; End of function sub_17A8E2


; =============== S U B R O U T I N E =======================================


sub_17A8E7:
    sec
    lda CharacterOffset
    beq loc_17A909
    sbc #$20
    sta CharacterOffset
    tay
    lda Character1 + BATTLE::EnemyGroup,Y
    beq sub_17A8E7
    lda Character1 + BATTLE::InitialStatus,Y
    bmi sub_17A8E7
    lda Character1 + BATTLE::InitialStatus,Y
    and #$F4
    bne sub_17A8E7
    lda Character1 + BATTLE::Resist,Y
    and #$20
    bne sub_17A8E7

loc_17A909:
    sec
    jmp nullsub_6
; End of function sub_17A8E7


; =============== S U B R O U T I N E =======================================


battle_menu:
    .import short_cursor_update
    .import stru_169F6B, BattleMenu1ID, byte_169F7B, byte_169F83
    .importzp pStr, pCursor, Buttons

    ldyx #BattleMenu1ID
    lda BossID
    cmp #1
    bne loc_17A91E
    ldyx #byte_169F83
    jmp loc_17A927
; ---------------------------------------------------------------------------

loc_17A91E:
    lda CurrentGame + GAME_SAVE::Flags+$1C
    bpl loc_17A927
    ldyx #byte_169F7B

loc_17A927:
    stx pStr
    sty pStr+1
    ldyx #stru_169F6B
    styx pCursor
    jsr short_cursor_update
    bit Buttons
    bvs loc_17A942
    lda #9
    jsr sub_17A945
    lda CursorPosition
    rts
; ---------------------------------------------------------------------------

loc_17A942:
    lda #8
    rts
; End of function battle_menu


; =============== S U B R O U T I N E =======================================


sub_17A945:
    sta Pointer
    lda CursorPosition
    lsr A
    asl A
    clc
    adc Row
    sta Row
    lda CursorPosition
    and #1
    beq loc_17A95D
    clc
    lda Column
    adc Pointer
    sta Column

loc_17A95D:
    lda #FR_CURSOR
    jmp frame
; End of function sub_17A945


; =============== S U B R O U T I N E =======================================


sub_17A962:
    jsr sub_17AC23
    beq loc_17A98D
    ldx #$80
    cmp #2
    beq loc_17A96F
    ldx #0

loc_17A96F:
    stx Pointer
    lda CharacterOffset
    and #$80
    eor Pointer
    sta TargetOffset
    jsr target_choice
    bcs loc_17A98F
    ldx CursorPosition
    lda byte_591,X
    tax
    dex
    txa
    sta TargetOffset
    ldy CharacterOffset
    sta Character1 + BATTLE::TargetOff,Y

loc_17A98D:
    clc
    rts
; ---------------------------------------------------------------------------

loc_17A98F:
    sec
    rts
; End of function sub_17A962


; =============== S U B R O U T I N E =======================================


target_choice:
    .import cursor_update, SelectEnemyCursor

    lda #SELECT_TARGET
    jsr frame
    jsr target_list
    store #SelectEnemyCursor, pCursor
    jsr cursor_update
    bit Buttons
    bvs loc_17A9B1
    bmi loc_17A9AD
    jmp target_choice
; ---------------------------------------------------------------------------

loc_17A9AD:
    lda CursorPosition
    clc
    rts
; ---------------------------------------------------------------------------

loc_17A9B1:
    sec
    rts
; End of function target_choice


; =============== S U B R O U T I N E =======================================


target_list:
    .import byte_590, byte_592, byte_593, unk_594

    lda #$12
    sta Row
    ldx #0
    stx byte_591
    stx byte_592
    stx byte_593
    stx unk_594
    inx
    stx byte_590
    lda TargetOffset
    pha
    ldy #4

next_target:
    tya
    pha
    ldy TargetOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    beq no_enimes
    ldy TargetOffset
    bmi @enemy
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    beq no_enimes

@enemy:
    iny
    tya
    sta byte_590,X
    inx
    txa
    pha
    jsr set_names
    lda #TARGET_NAME
    jsr frame
    inc Row
    pla
    tax

no_enimes:
    clc
    lda TargetOffset
    adc #$20
    sta TargetOffset
    pla
    tay
    dey
    bne next_target
    pla
    sta TargetOffset
    rts
; End of function target_list


; =============== S U B R O U T I N E =======================================


sub_17AA08:
    .import wait_A_B

    lda #BIG_SELECT
    jsr frame
    jsr sub_17AA67
    jsr select_battle_goods
    bcs loc_17AA65
    ldy CharacterOffset
    lda CursorPosition
    sta Character1 + BATTLE::Scripts,Y
    ldy CursorPosition
    lda (pCharacter),Y
    jsr get_itemID_pntr
    ldy CharacterOffset
    jsr check_item_flag
    bcs loc_17AA43
    jsr bank0
    ldy #ITEM::BattleAction
    lda (AddrForJmp),Y
    jsr bank16
    cmp #0
    beq loc_17AA4C
    ldy CharacterOffset
    sta Character1 + BATTLE::Script,Y
    jsr sub_17A962
    bcs loc_17AA65
    rts
; ---------------------------------------------------------------------------

loc_17AA43:
    ldx CharacterOffset
    jsr set_names
    ldx #$14
    bne loc_17AA5E

loc_17AA4C:
    ldx #CANT_NOW1
    jsr bank0
    ldy #3
    lda (AddrForJmp),Y
    jsr bank16
    cmp #0
    beq loc_17AA5E
    ldx #CANT_NOW

loc_17AA5E:
    txa
    jsr frame
    jsr wait_A_B

loc_17AA65:
    sec
    rts
; End of function sub_17AA08


; =============== S U B R O U T I N E =======================================


sub_17AA67:
    .import Columns, Rows, unk_588, unk_589, unk_58A

    ldy #0

loc_17AA69:
    tya
    pha
    and #1
    tax
    lda Columns,X
    sta Column
    tya
    lsr A
    tax
    lda Rows,X
    sta Row
    lda (pCharacter),Y
    beq loc_17AA9C
    jsr get_itemID_pntr
    jsr bank0
    lda #4
    sta unk_588
    ldy #0
    lda (AddrForJmp),Y
    sta unk_589
    iny
    lda (AddrForJmp),Y
    sta unk_58A
    lda #LIST
    jsr frame

loc_17AA9C:
    pla
    tay
    iny
    cpy #8
    bne loc_17AA69
    rts
; End of function sub_17AA67


; =============== S U B R O U T I N E =======================================


get_itemID_pntr:
    .import ItemList

    ldx #0
    stx AddrForJmp+1
    ldx #3

@mul8:
    asl A
    rol AddrForJmp+1
    dex
    bne @mul8
    clc
    adc #<ItemList
    sta AddrForJmp
    lda AddrForJmp+1
    adc #>ItemList
    sta AddrForJmp+1
    rts
; End of function get_itemID_pntr


; =============== S U B R O U T I N E =======================================


get_goods_pointer_battle:
    clc
    lda Character1 + BATTLE::PointerChr,Y
    adc #<CHARACTER::Goods
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    adc #>CHARACTER::Goods
    sta Pointer+1
    rts
; End of function get_goods_pointer_battle


; =============== S U B R O U T I N E =======================================


set_item_name_tiles:
    jsr bank0
    lda #$21
    sta byte_590
    ldy #0
    lda (AddrForJmp),Y
    sta byte_591
    iny
    lda (AddrForJmp),Y
    sta byte_592
    lda #0
    sta byte_593
    jmp bank16
; End of function set_item_name_tiles


; =============== S U B R O U T I N E =======================================


select_battle_goods:
.import stru_169F95

    lda #<stru_169F95
    sta pCursor
    lda #>stru_169F95
    sta pCursor+1
    lda pCharacter
    sta pStr
    lda pCharacter+1
    sta pStr+1
    jsr short_cursor_update
    bit Buttons
    bvs loc_17AB0E
    bmi loc_17AB05
    jmp select_battle_goods
; ---------------------------------------------------------------------------

loc_17AB05:
    lda #$C
    jsr sub_17A945
    lda CursorPosition
    clc
    rts
; ---------------------------------------------------------------------------

loc_17AB0E:
    sec
    rts
; End of function select_battle_goods


; =============== S U B R O U T I N E =======================================


sub_17AB10:
    .import set_jmp_addr

    ldy #1

loc_17AB12:
    lda (pCharacter),Y
    beq loc_17AB32
    tya
    pha
    lda #BIG_SELECT
    jsr frame
    lda #FR_ARROW
    jsr frame
    jsr print_list
    jsr list_select
    pla
    tay
    cpx #1
    beq loc_17AB39
    cpx #2
    beq loc_17AB5F

loc_17AB32:
    iny
    cpy #8
    beq sub_17AB10
    bne loc_17AB12

loc_17AB39:
    ldy CursorPosition
    lda byte_580,Y
    jsr set_jmp_addr
    jsr bank0
    ldy #5
    lda (AddrForJmp),Y
    beq loc_17AB57
    ldy CharacterOffset
    sta Character1 + BATTLE::Script,Y
    pha
    jsr bank16
    pla
    jmp sub_17A962
; ---------------------------------------------------------------------------

loc_17AB57:
    lda #CANT_NOW1
    jsr frame
    jsr wait_A_B

loc_17AB5F:
    sec
    rts
; End of function sub_17AB10


; =============== S U B R O U T I N E =======================================


print_list:
    tya
    asl A
    asl A
    asl A
    sta Pointer
    lda #$80
    sta Pointer+1
    ldx #0

loc_17AB6D:
    lda #0
    sta byte_580,X
    lda (pCharacter),Y
    and Pointer+1
    beq loc_17AB7D
    lda Pointer
    sta byte_580,X

loc_17AB7D:
    inc Pointer
    inx
    lsr Pointer+1
    bcc loc_17AB6D
    ldy #0

loc_17AB86:
    tya
    pha
    and #1
    tax
    lda Columns,X
    sta Column
    tya
    lsr A
    tax
    lda Rows,X
    sta Row
    lda byte_580,Y
    beq loc_17ABBA
    jsr set_jmp_addr
    jsr bank0
    lda #4
    sta unk_588
    ldy #0
    lda (AddrForJmp),Y
    sta unk_589
    iny
    lda (AddrForJmp),Y
    sta unk_58A
    lda #LIST
    jsr frame

loc_17ABBA:
    pla
    tay
    iny
    cpy #8
    bne loc_17AB86
    rts
; End of function print_list


; =============== S U B R O U T I N E =======================================


list_select:
.import ListCursor, stru_169F9D

    lda #<ListCursor
    sta pCursor
    lda #>ListCursor
    sta pCursor+1
    jsr cursor_update
    lda Buttons
    and #6
    bne loc_17ABE6
    lda Buttons
    and #$81
    bne loc_17ABE0
    bit Buttons
    bvs loc_17ABE3
    jmp list_select
; ---------------------------------------------------------------------------

loc_17ABE0:
    ldx #0
    rts
; ---------------------------------------------------------------------------

loc_17ABE3:
    ldx #2
    rts
; ---------------------------------------------------------------------------

loc_17ABE6:
    lda #<stru_169F9D
    sta pCursor
    lda #>stru_169F9D
    sta pCursor+1
    jsr cursor_update
    lda Buttons
    and #8
    bne list_select
    bit Buttons
    bvs loc_17AC03
    bmi loc_17AC00
    jmp list_select
; ---------------------------------------------------------------------------

loc_17AC00:
    ldx #1
    rts
; ---------------------------------------------------------------------------

loc_17AC03:
    ldx #2
    rts
; End of function list_select


; =============== S U B R O U T I N E =======================================


name_frame:
    .import draw_tilepack_clear, fNameStr

    lda #NAME
    jsr frame
    jsr set_names
    jsr bank0
    set PrintSize, #0
    store #fNameStr, PointerTilePack
    jsr draw_tilepack_clear
    jmp bank16
; End of function name_frame


; =============== S U B R O U T I N E =======================================


sub_17AC23:
    .import BattleAction

    pha
    and #3
    tax
    inx
    lda #1
    sec

loc_17AC2B:
    ror A
    ror A
    dex
    bne loc_17AC2B
    sta Pointer
    pla
    lsr A
    lsr A
    tay
    lda BattleAction,Y
    and Pointer
    sta Pointer+1

loc_17AC3D:
    lsr Pointer
    bcs loc_17AC46
    lsr Pointer+1
    jmp loc_17AC3D
; ---------------------------------------------------------------------------

loc_17AC46:
    lda Pointer+1
    rts
; End of function sub_17AC23


; =============== S U B R O U T I N E =======================================


check_item_flag:
    jsr bank0
    lda Character1 + BATTLE::Scripts+1,Y
    sta pTileID
    tax
    sec
    lda #0

loc_17AC55:
    rol A
    dex
    bne loc_17AC55
    sta TilesCount
    ldy #2
    lda (AddrForJmp),Y
    jsr bank16
    and TilesCount
    beq loc_17AC68
    clc
    rts
; ---------------------------------------------------------------------------

loc_17AC68:
    sec
    rts
; End of function check_item_flag


; =============== S U B R O U T I N E =======================================


sub_17AC6A:
    jsr sub_17B75A
    bcs loc_17AC91
    ldx #8

loc_17AC71:
    txa
    pha
    jsr sub_17ACA5
    jsr sub_17ACD6      ; out message, animation
    lda #$FF
    ldy CharacterOffset
    sta Character1 + BATTLE::Script,Y
    jsr sub_17B75A      ; check win, lose, out message
    bcs loc_17AC90
    pla
    tax
    dex
    bne loc_17AC71
    dec EnemyCount
    beq loc_17AC93
    clc
    rts
; ---------------------------------------------------------------------------

loc_17AC90:
    pla

loc_17AC91:
    sec
    rts
; ---------------------------------------------------------------------------

loc_17AC93:
    lda BossID
    cmp #1
    beq loc_17ACA3
    ldx #100
    jsr delay
    lda #Lingers
    jsr print_text

loc_17ACA3:
    sec
    rts
; End of function sub_17AC6A


; =============== S U B R O U T I N E =======================================


sub_17ACA5:
    .import get_speed

    lda #0
    sta Pointer
    sta Pointer+1

loc_17ACAB:
    ldy Pointer
    lda Character1 + BATTLE::Script,Y
    cmp #$FF
    beq loc_17ACC8
    cmp #$5E
    beq loc_17ACD3
    lda Character1 + BATTLE::Speed,Y
    jsr get_speed
    cmp Pointer+1
    bcc loc_17ACC8
    sta Pointer+1
    lda Pointer
    sta AddrForJmp

loc_17ACC8:
    clc
    lda Pointer
    adc #$20
    sta Pointer
    bne loc_17ACAB
    ldy AddrForJmp

loc_17ACD3:
    sty CharacterOffset
    rts
; End of function sub_17ACA5


; =============== S U B R O U T I N E =======================================


sub_17ACD6:
    .import BattleScripts
    .importzp pBattleScript

    ldy CharacterOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    bne loc_17ACE2
    lda #Empty
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACE2:
    lda Character1 + BATTLE::InitialStatus,Y
    and #$80
    beq loc_17ACEE
    lda #Empty
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACEE:
    lda Character1 + BATTLE::InitialStatus,Y
    and #$40
    beq loc_17ACFA
    lda #Turned
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACFA:
    lda Character1 + BATTLE::InitialStatus,Y
    and #$20
    beq loc_17AD06
    lda #CantMove
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD06:
    lda Character1 + BATTLE::InitialStatus,Y
    and #$10
    beq loc_17AD2B
    jsr randomize
    and #$E0
    bne loc_17AD26
    lda Character1 + BATTLE::InitialStatus,Y
    and #$EF
    sta Character1 + BATTLE::InitialStatus,Y
    sty TargetOffset
    jsr statistical_frame
    lda #WokeUp
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD26:
    lda #IsAsleep
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD2B:
    lda Character1 + BATTLE::InitialStatus,Y
    and #4
    beq loc_17AD37
    lda #DayDreaming
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD37:
    lda Character1 + BATTLE::Resist,Y
    and #2
    beq loc_17AD4A
    lda Character1 + BATTLE::Script,Y
    cmp #$76
    beq loc_17AD4A
    lda #Wheeze
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD4A:
    lda Character1 + BATTLE::Resist,Y
    and #$20
    beq loc_17AD6A
    jsr randomize
    and #$C0
    bne loc_17AD65
    lda Character1 + BATTLE::Resist,Y
    and #$DF
    sta Character1 + BATTLE::Resist,Y
    lda #EscapedRope
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD65:
    lda #Bound
    jmp loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD6A:
    lda Character1 + BATTLE::InitialStatus,Y
    and #8
    beq loc_17AD76
    lda #SoConfused
    jsr print_text

loc_17AD76:
    ldy CharacterOffset
    lda Character1 + BATTLE::Script,Y

loc_17AD7B:
    ldy #0
    sty Pointer+1
    asl A
    rol Pointer+1
    sta Pointer
    clc 
    lda #<BattleScripts
    adc Pointer
    sta Pointer
    lda #>BattleScripts
    adc Pointer+1
    sta Pointer+1
    ldy #0
    lda (Pointer),Y
    sta pBattleScript
    iny
    lda (Pointer),Y
    sta pBattleScript+1

next_script:
    ldy #0
    lda (pBattleScript),Y
    lsr A
    lsr A
    lsr A
    lsr A
    jsr script_high
; ---------------------------------------------------------------------------
    .word step_1, sub_17ADC9, use_psi, print_used_item, change_parameter
    .word get_target, sub_17AF08, sub_17AF31, sub_17AF39, sub_17AF7B
    .word sub_17AF92, sub_17AF98, sub_17AE8E
; ---------------------------------------------------------------------------

loc_17ADC1:
    jmp print_text
; End of function sub_17ACD6


; =============== S U B R O U T I N E =======================================


step_1:
    lda #1
    jmp next_battle_script
; End of function step_1


; =============== S U B R O U T I N E =======================================


sub_17ADC9:
    .import script_low

    ldy #0
    lda (pBattleScript),Y
    and #$F
    jsr script_low
; End of function sub_17ADC9
; ---------------------------------------------------------------------------
    .word sub_17ADEC, sub_17AFED, sub_17AFF2, sub_17AFFE, sub_17B008
    .word sub_17B012, sub_17B022, sub_17B032, sub_17B037, sub_17B041
    .word sub_17B04B, sub_17B055, sub_17B05F

; =============== S U B R O U T I N E =======================================


sub_17ADEC:
    lda #1
    jmp get_script_pntr
; End of function sub_17ADEC


; =============== S U B R O U T I N E =======================================


use_psi:
    .import play_sound, PSIList
    .importzp Sound

    ldy #1
    lda (pBattleScript),Y
    ldx #0
    stx Pointer+1
    ldx #3

loc_17ADFB:
    asl A
    rol Pointer+1
    dex
    bne loc_17ADFB
    clc
    adc #<PSIList
    sta Pointer
    lda Pointer+1
    adc #>PSIList
    sta Pointer+1
    jsr bank0
    ldy #7
    lda (Pointer),Y
    sta Value
    lda #0
    sta Value+1
    lda #$21
    sta byte_590
    ldy #0
    lda (Pointer),Y
    sta byte_591
    iny
    lda (Pointer),Y
    sta byte_592
    lda #0
    sta byte_593
    jsr bank16
    lda #Ttried
    jsr print_text
    jsr check_resist
    bcc @blocked
    jsr check_PP
    bcc @less
    jsr waste_PP_stframe
    lda Sound
    jsr play_sound
    lda #0
    sta Sound
    lda #2
    jmp get_script_pntr
; ---------------------------------------------------------------------------

@blocked:
    lda #PSIBlocked
    jmp print_text
; ---------------------------------------------------------------------------

@less:
    lda #NotenoughPPs
    jmp print_text
; End of function use_psi


; =============== S U B R O U T I N E =======================================


print_used_item:
    .import sram_write_enable

    ldy #1
    lda (pBattleScript),Y
    jsr get_itemID_pntr
    jsr set_item_name_tiles
    ldy CharacterOffset
    bmi loc_17AE7B
    jsr sram_write_enable
    ldy #0
    lda (pBattleScript),Y
    and #$F
    cmp #1
    bne loc_17AE7B
    jsr remove_item

loc_17AE7B:
    lda #USEd
    jsr print_text
    lda Sound
    jsr play_sound
    lda #0
    sta Sound
    lda #2
    jmp get_script_pntr
; End of function print_used_item


; =============== S U B R O U T I N E =======================================


sub_17AE8E:
    ldy #1
    lda (pBattleScript),Y
    jsr get_itemID_pntr
    jsr set_item_name_tiles
    ldy CharacterOffset
    bmi loc_17AEE5
    ldy #0
    lda (pBattleScript),Y
    and #$F
    jsr script_high
; End of function sub_17AE8E
; ---------------------------------------------------------------------------
    .word sub_17AEAB, sub_17AEBD, sub_17AECF

; =============== S U B R O U T I N E =======================================


sub_17AEAB:
    jsr randomize
    and #$E0
    bne loc_17AEE5
    jsr remove_item
    lda #WasBroken
    jsr print_text
    jmp loc_17AEE5
; End of function sub_17AEAB


; =============== S U B R O U T I N E =======================================


sub_17AEBD:
    jsr randomize
    and #$E0
    bne loc_17AEE5
    jsr remove_item
    lda #TurnedIntoStone
    jsr print_text
    jmp loc_17AEE5
; End of function sub_17AEBD


; =============== S U B R O U T I N E =======================================


sub_17AECF:
    .import sram_read_enable

    jsr sram_write_enable
    dec CurrentGame + PURE_SAVE::field_1F       ; $741F
    jsr sram_read_enable
    lda CurrentGame + PURE_SAVE::field_1F       ; $741F
    bne loc_17AEE5
    jsr remove_item
    lda #BecameEmpty
    jsr print_text

loc_17AEE5:
    lda #2
    jmp get_script_pntr
; End of function sub_17AECF


; =============== S U B R O U T I N E =======================================


get_target:
    ldy #0
    lda (pBattleScript),Y
    and #$F
    jsr script_low
; End of function get_target

; ---------------------------------------------------------------------------
    .word @step_1, nullsub_4, get_target_offset, sub_17B202, sub_17B21D
    .word sub_17B238, sub_17B23D, sub_17B248

; =============== S U B R O U T I N E =======================================


@step_1:
    lda #1
    jmp get_script_pntr
; End of function @step_1


; =============== S U B R O U T I N E =======================================


sub_17AF08:
    ldy #1
    lda (pBattleScript),Y
    sta pTileID
    dey
    lda (pBattleScript),Y
    and #$F
    jsr script_low
; ---------------------------------------------------------------------------
    .word @step_2, sub_17B250, get_offense, set_value, sub_17B302
    .word set_flags, sub_17B320, sub_17B3C2, pTileID2sound, print_pTileID
    .word play_pTileID

; =============== S U B R O U T I N E =======================================


@step_2:
    lda #2
    jmp get_script_pntr
; End of function step_2


; =============== S U B R O U T I N E =======================================


sub_17AF31:
    jsr low_script
    bcc sub_17AF3E
    jmp step_3
; End of function sub_17AF31


; =============== S U B R O U T I N E =======================================


sub_17AF39:
    jsr low_script
    bcc step_3
; End of function sub_17AF39


; =============== S U B R O U T I N E =======================================


sub_17AF3E:
    ldy #1
    lda (pBattleScript),Y
    pha
    iny
    lda (pBattleScript),Y
    sta pBattleScript+1
    pla
    sta pBattleScript
    jmp next_script
; End of function sub_17AF3E


; =============== S U B R O U T I N E =======================================


step_3:
    lda #3
    jmp get_script_pntr
; End of function step_3


; =============== S U B R O U T I N E =======================================


low_script:
    ldy #0
    lda (pBattleScript),Y
    and #$F
    jsr script_low
; ---------------------------------------------------------------------------
    .word nullsub_5, check_group_status, sub_17B0CC, sub_17B0F7, sub_17B112
    .word sub_17B125, sub_17B131, loc_17B0BC, sub_17B150, sub_17B164
    .word sub_17B169, sub_17B174, sub_17B180, sub_17B188, sub_17B194

nullsub_5:
    rts

; =============== S U B R O U T I N E =======================================


sub_17AF7B:
    lda pBattleScript+1
    pha
    lda pBattleScript
    pha
    jsr sub_17AFD3
    jsr next_script
    pla
    sta pBattleScript
    pla
    sta pBattleScript+1
    lda #3
    jmp get_script_pntr
; End of function sub_17AF7B


; =============== S U B R O U T I N E =======================================


sub_17AF92:
    jsr sub_17AFD3
    jmp next_script
; End of function sub_17AF92


; =============== S U B R O U T I N E =======================================


sub_17AF98:
    ldy #0
    lda (pBattleScript),Y
    and #$F
    tax
    lda #1
    jsr next_battle_script

loc_17AFA4:
    txa
    pha
    lda pBattleScript+1
    pha
    lda pBattleScript
    pha
    jsr next_script
    lda pBattleScript
    sta Pointer
    lda pBattleScript+1
    sta Pointer+1
    pla
    sta pBattleScript
    pla
    sta pBattleScript+1
    pla
    tax
    dex
    bne loc_17AFA4
    lda Pointer
    sta pBattleScript
    lda Pointer+1
    sta pBattleScript+1
    jmp next_script
; End of function sub_17AF98


; =============== S U B R O U T I N E =======================================


get_script_pntr:
    jsr next_battle_script
    jmp next_script
; End of function get_script_pntr


; =============== S U B R O U T I N E =======================================


sub_17AFD3:
    ldy #1
    lda (pBattleScript),Y
    pha
    iny
    lda (pBattleScript),Y
    sta pBattleScript+1
    pla
    sta pBattleScript
    rts
; End of function sub_17AFD3


; =============== S U B R O U T I N E =======================================


next_battle_script:
    clc
    adc pBattleScript
    sta pBattleScript
    lda #0
    adc pBattleScript+1
    sta pBattleScript+1
    rts
; End of function next_battle_script


; =============== S U B R O U T I N E =======================================


sub_17AFED:
    ldy CharacterOffset
    jmp sub_17B513
; End of function sub_17AFED


; =============== S U B R O U T I N E =======================================


sub_17AFF2:
    ldy TargetOffset
    bpl @player
    jmp sub_17B555
; ---------------------------------------------------------------------------

@player:
    lda #1
    sta byte_47
    rts
; End of function sub_17AFF2


; =============== S U B R O U T I N E =======================================


sub_17AFFE:
    ldy TargetOffset
    bpl @player
    jmp black_flash
; ---------------------------------------------------------------------------

@player:
    jmp sub_17B6B2
; End of function sub_17AFFE


; =============== S U B R O U T I N E =======================================


sub_17B008:
    ldy TargetOffset
    bpl @player
    jmp sub_17B67C
; ---------------------------------------------------------------------------

@player:
    jmp sub_17B6F1
; End of function sub_17B008


; =============== S U B R O U T I N E =======================================


sub_17B012:
    lda #CriedOut
    jsr print_text
    jsr sub_17B069
    bcs locret_17B021
    lda #HoweverNoOne
    jsr print_text

locret_17B021:
    rts
; End of function sub_17B012


; =============== S U B R O U T I N E =======================================


sub_17B022:
    lda #Sowed
    jsr print_text
    jsr sub_17B069
    bcs locret_17B031
    lda #Silence
    jsr print_text

locret_17B031:
    rts
; End of function sub_17B022


; =============== S U B R O U T I N E =======================================


sub_17B032:
    lda #2
    sta byte_47
    rts
; End of function sub_17B032


; =============== S U B R O U T I N E =======================================


sub_17B037:
    ldy TargetOffset
    bpl @player
    jmp red_flash
; ---------------------------------------------------------------------------

@player:
    jmp sub_17B6BB
; End of function sub_17B037


; =============== S U B R O U T I N E =======================================


sub_17B041:
    ldy TargetOffset
    bpl @player
    jmp indigo_flash
; ---------------------------------------------------------------------------

@player:
    jmp sub_17B6C4
; End of function sub_17B041


; =============== S U B R O U T I N E =======================================


sub_17B04B:
    ldy TargetOffset
    bpl @player
    jmp blue_flash
; ---------------------------------------------------------------------------

@player:
    jmp sub_17B6CD
; End of function sub_17B04B


; =============== S U B R O U T I N E =======================================


sub_17B055:
    ldy TargetOffset
    bpl @player
    jmp yellow_flash
; ---------------------------------------------------------------------------

@player:
    jmp sub_17B6D6
; End of function sub_17B055


; =============== S U B R O U T I N E =======================================


sub_17B05F:
    ldy TargetOffset
    bpl @player
    jmp green_flash
; ---------------------------------------------------------------------------

@player:
    jmp sub_17B6DF
; End of function sub_17B05F


; =============== S U B R O U T I N E =======================================


sub_17B069:
    ldy #$80

loc_17B06B:
    cpy CharacterOffset
    beq loc_17B076
    lda Character1 + BATTLE::Resist,Y
    and #1
    bne loc_17B07F

loc_17B076:
    tya
    clc
    adc #$20
    tay
    bne loc_17B06B
    clc
    rts
; ---------------------------------------------------------------------------

loc_17B07F:
    sty TargetOffset
    jsr sub_17B513
    ldy TargetOffset
    lda Character1 + BATTLE::Resist,Y
    and #$FE
    sta Character1 + BATTLE::Resist,Y
    lda #0
    sta Character1 + BATTLE::Script,Y
    ldy CharacterOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    ldy TargetOffset
    sta Character1 + BATTLE::EnemyGroup,Y
    lda #Joined
    jsr print_text
    sec
    rts
; End of function sub_17B069


; =============== S U B R O U T I N E =======================================


waste_PP_stframe:
    .import bank_A000_a, waste_PP

    lda #$19
    ldyx #(waste_PP-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    jmp statistical_frame
; End of function waste_PP_stframe


; =============== S U B R O U T I N E =======================================


check_group_status:
    ldy CharacterOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17B0CA
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17B0CA

loc_17B0BC:
    ldy TargetOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17B0CA
    lda Character1 + BATTLE::InitialStatus,Y
    bmi loc_17B0CA
    clc
    rts
; ---------------------------------------------------------------------------

loc_17B0CA:
    sec
    rts
; End of function check_group_status


; =============== S U B R O U T I N E =======================================


sub_17B0CC:
    lda byte_23
    bne loc_17B0F3
    ldy TargetOffset
    lda Character1 + BATTLE::InitialStatus,Y
    and #$70
    bne loc_17B0F3
    lda Character1 + BATTLE::Resist,Y
    bmi loc_17B0F3
    lda Character1 + BATTLE::Fight,Y
    sta Pointer
    ldy CharacterOffset
    lda Character1 + BATTLE::Fight,Y
    sta AddrForJmp
    jsr sub_17B1A2
    lda Pointer
    cmp AddrForJmp
    bcs loc_17B0F5

loc_17B0F3:
    clc
    rts
; ---------------------------------------------------------------------------

loc_17B0F5:
    sec
    rts
; End of function sub_17B0CC


; =============== S U B R O U T I N E =======================================


sub_17B0F7:
    jsr sub_17BFE2
    bcs locret_17B111
    ldy CharacterOffset
    lda Character1 + BATTLE::Fight,Y
    sta Pointer
    ldy TargetOffset
    lda Character1 + BATTLE::Fight,Y
    sta AddrForJmp
    jsr sub_17B1A2
    lda AddrForJmp
    cmp Pointer

locret_17B111:
    rts
; End of function sub_17B0F7


; =============== S U B R O U T I N E =======================================


sub_17B112:
    ldy CharacterOffset
    lda Character1 + BATTLE::Resist,Y
    and #$80
    eor #$80
    rol A
    bcs locret_17B124
    jsr randomize
    and #$80
    rol A

locret_17B124:
    rts
; End of function sub_17B112


; =============== S U B R O U T I N E =======================================


sub_17B125:
    lda CharacterOffset
    bmi loc_17B12F
    lda byte_23
    beq loc_17B12F
    clc
    rts
; ---------------------------------------------------------------------------

loc_17B12F:
    sec
    rts
; End of function sub_17B125


; =============== S U B R O U T I N E =======================================


sub_17B131:
    ldy TargetOffset
    bmi loc_17B14C
    lda Character1 + BATTLE::PointerChr,Y
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    sta Pointer+1
    ldy #$20

loc_17B141:
    lda (Pointer),Y
    cmp #$68
    beq loc_17B14E
    iny
    cpy #$28
    bne loc_17B141

loc_17B14C:
    sec
    rts
; ---------------------------------------------------------------------------

loc_17B14E:
    clc
    rts
; End of function sub_17B131


; =============== S U B R O U T I N E =======================================


sub_17B150:
    ldy TargetOffset
    lda Character1 + BATTLE::Flags,Y
    and #$80
    bne loc_17B160
    lda Character1 + BATTLE::Flags,Y
    and #1
    bne loc_17B162

loc_17B160:
    sec
    rts
; ---------------------------------------------------------------------------

loc_17B162:
    clc
    rts
; End of function sub_17B150


; =============== S U B R O U T I N E =======================================


sub_17B164:
    jsr randomize
    asl A
    rts
; End of function sub_17B164


; =============== S U B R O U T I N E =======================================


sub_17B169:
    ldy TargetOffset
    lda Character1 + BATTLE::Flags,Y
    and #$80
    eor #$80
    rol A
    rts
; End of function sub_17B169


; =============== S U B R O U T I N E =======================================


sub_17B174:
    ldy TargetOffset
    lda Character1 + BATTLE::Flags,Y
    and #4
    eor #4
    cmp #1
    rts
; End of function sub_17B174


; =============== S U B R O U T I N E =======================================


sub_17B180:
    .importzp ObjectNumWithChar

    lda ObjectNumWithChar
    bne loc_17B186
    sec
    rts
; ---------------------------------------------------------------------------

loc_17B186:
    clc
    rts
; End of function sub_17B180


; =============== S U B R O U T I N E =======================================


sub_17B188:
    ldy TargetOffset
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    cmp #1
    rts
; End of function sub_17B188


; =============== S U B R O U T I N E =======================================


sub_17B194:
    lda BossID
    cmp #5
    beq loc_17B1A0
    cmp #6
    beq loc_17B1A0
    sec
    rts
; ---------------------------------------------------------------------------

loc_17B1A0:
    clc
    rts
; End of function sub_17B194


; =============== S U B R O U T I N E =======================================


sub_17B1A2:
    lda #1
    sta Pointer+1
    sec
    lda Pointer
    sbc AddrForJmp
    sta Pointer
    lda Pointer+1
    sbc #0
    lsr A
    ror Pointer
    sec
    lda Pointer
    sbc #$66
    bcs loc_17B1BD
    lda #0

loc_17B1BD:
    sta Pointer
    jsr randomize
    sta AddrForJmp
    rts
; End of function sub_17B1A2


; =============== S U B R O U T I N E =======================================


check_resist:
    ldy CharacterOffset
    lda Character1 + BATTLE::Resist,Y
    and #$40
    eor #$40
    cmp #1
    rts
; End of function check_resist


; =============== S U B R O U T I N E =======================================


check_PP:
    ldy CharacterOffset
    sec
    lda Character1 + BATTLE::PP,Y
    sbc Value
    lda Character1 + BATTLE::PP+1,Y
    sbc Value+1
    rts
; End of function check_PP

nullsub_4:
    rts

; =============== S U B R O U T I N E =======================================


get_target_offset:
    ldy CharacterOffset
    lda Character1 + BATTLE::InitialStatus,Y
    and #8
    bne select_target
    lda Character1 + BATTLE::TargetOff,Y
    sta TargetOffset
    rts
; ---------------------------------------------------------------------------

select_target:
    jsr randomize
    and #$E0
    tay
    lda Character1 + BATTLE::EnemyGroup,Y
    beq select_target
    lda Character1 + BATTLE::InitialStatus,Y
    bmi select_target
    sty TargetOffset
    rts
; End of function get_target_offset


; =============== S U B R O U T I N E =======================================


sub_17B202:
    ldy CharacterOffset
    lda Character1 + BATTLE::InitialStatus,Y
    and #8
    beq loc_17B212
    jsr randomize
    and #$80
    bne loc_17B22D

loc_17B212:
    ldx #$80
    lda CharacterOffset
    bpl loc_17B21A
    ldx #0

loc_17B21A:
    stx TargetOffset
    rts
; End of function sub_17B202


; =============== S U B R O U T I N E =======================================


sub_17B21D:
    ldy CharacterOffset
    lda Character1 + BATTLE::InitialStatus,Y
    and #8
    beq loc_17B22D
    jsr randomize
    and #$80
    bne loc_17B212

loc_17B22D:
    ldx #0
    ldy CharacterOffset
    bpl loc_17B235
    ldx #$80

loc_17B235:
    stx TargetOffset
    rts
; End of function sub_17B21D


; =============== S U B R O U T I N E =======================================


sub_17B238:
    lda CharacterOffset
    sta TargetOffset
    rts
; End of function sub_17B238


; =============== S U B R O U T I N E =======================================


sub_17B23D:
    ldx #0
    ldy CharacterOffset
    bpl loc_17B245
    ldx #$80

loc_17B245:
    stx TargetOffset
    rts
; End of function sub_17B23D


; =============== S U B R O U T I N E =======================================


sub_17B248:
    clc
    lda TargetOffset
    adc #$20
    sta TargetOffset
    rts
; End of function sub_17B248


; =============== S U B R O U T I N E =======================================


sub_17B250:
    ldy TargetOffset
    lda Character1 + BATTLE::Defense,Y
    sta pTileID
    lda Character1 + BATTLE::Defense+1,Y
    sta pTileID+1
    sec
    ldy CharacterOffset
    lda Character1 + BATTLE::Offense,Y
    sta TilepackMode
    sta pDist
    sbc pTileID
    lda Character1 + BATTLE::Offense+1,Y
    sta TilesCount
    sta pDist+1
    sbc pTileID+1
    bcc loc_17B2A8
    lsr pTileID+1
    ror pTileID
    sec
    lda TilepackMode
    sbc pTileID
    sta Pointer
    lda TilesCount
    sbc pTileID+1
    sta Pointer+1

loc_17B284:
    lda BossID
    cmp #1
    bne loc_17B297
    jsr randomize
    and #7
    ora #4
    sta Pointer
    lda #0
    sta Pointer+1

loc_17B297:
    lda Pointer
    ora Pointer+1
    bne loc_17B29F
    inc Pointer

loc_17B29F:
    lda Pointer
    sta Value
    lda Pointer+1
    sta Value+1
    rts
; ---------------------------------------------------------------------------

loc_17B2A8:
    asl TilepackMode
    rol TilesCount
    clc
    lda TilepackMode
    adc pDist
    sta TilepackMode
    lda TilesCount
    adc pDist+1
    sta TilesCount
    sec
    lda TilepackMode
    sbc pTileID
    sta Pointer
    lda TilesCount
    sbc pTileID+1
    sta Pointer+1
    bcs loc_17B2CE
    lda #0
    sta Pointer
    sta Pointer+1

loc_17B2CE:
    lsr Pointer+1
    ror Pointer
    lsr Pointer+1
    ror Pointer
    jmp loc_17B284
; End of function sub_17B250


; =============== S U B R O U T I N E =======================================


get_offense:
    ldy CharacterOffset
    lda Character1 + BATTLE::Offense,Y
    sta Value
    lda Character1 + BATTLE::Offense+1,Y
    sta Value+1
    lda BossID
    cmp #1
    bne locret_17B2F8
    jsr randomize
    and #$F
    ora #8
    sta Value
    lda #0
    sta Value+1

locret_17B2F8:
    rts
; End of function get_offense


; =============== S U B R O U T I N E =======================================


set_value:
    lda pTileID
    sta Value
    lda #0
    sta Value+1
    rts
; End of function set_value


; =============== S U B R O U T I N E =======================================


sub_17B302:
    lda BossID
    cmp #5
    bne locret_17B318
    lda NamePos
    jsr print_text
    ldx NamePos
    inx
    cpx #$9E
    bne loc_17B316
    inc BossID

loc_17B316:
    stx NamePos

locret_17B318:
    rts
; End of function sub_17B302


; =============== S U B R O U T I N E =======================================


set_flags:
    .importzp Flags

    lda Flags
    ora pTileID
    sta Flags
    rts
; End of function set_flags


; =============== S U B R O U T I N E =======================================


sub_17B320:
    lda #CHECKed
    jsr print_text
    lda BossID
    cmp #2
    bne loc_17B330
    lda #Huge
    jmp print_text
; ---------------------------------------------------------------------------

loc_17B330:
    cmp #3
    bne loc_17B339
    lda #Improved
    jmp print_text
; ---------------------------------------------------------------------------

loc_17B339:
    cmp #4
    bne loc_17B342
    lda #Defeat
    jmp print_text
; ---------------------------------------------------------------------------

loc_17B342:
    cmp #5
    bne loc_17B34B
    lda #SingLullaby
    jmp print_text
; ---------------------------------------------------------------------------

loc_17B34B:
    cmp #6
    bne loc_17B354
    lda #SingLullaby
    jmp print_text
; ---------------------------------------------------------------------------

loc_17B354:
    ldy TargetOffset
    bmi loc_17B35D
    lda #ItNoEffect
    jmp print_text
; ---------------------------------------------------------------------------

loc_17B35D:
    ldy TargetOffset
    lda Character1 + BATTLE::Offense,Y
    sta byte_590
    lda Character1 + BATTLE::Offense+1,Y
    sta byte_591
    lda Character1 + BATTLE::Defense,Y
    sta byte_592
    lda Character1 + BATTLE::Defense+1,Y
    sta byte_593
    lda #Offense
    jsr print_text
    lda #Defense
    jsr print_text
    ldy TargetOffset
    lda Character1 + BATTLE::Flags,Y
    pha
    and #$40
    beq loc_17B390
    lda #AgainstFire
    jsr print_text

loc_17B390:
    pla
    pha
    and #$20
    beq loc_17B39B
    lda #AgainstFreeze
    jsr print_text

loc_17B39B:
    pla
    pha
    and #$10
    beq loc_17B3A6
    lda #AgainstThunder
    jsr print_text

loc_17B3A6:
    pla
    pha
    and #$80
    bne loc_17B3B7
    pla
    pha
    and #1
    beq loc_17B3B7
    lda #WeakSprays
    jsr print_text

loc_17B3B7:
    pla
    lda #$FF
    jmp print_text
; End of function sub_17B320


; =============== S U B R O U T I N E =======================================


sub_17B3BD:
    lda #ItNoEffect
    jmp print_text
; End of function sub_17B3BD


; =============== S U B R O U T I N E =======================================


sub_17B3C2:
    ldx #$F
    lda CharacterOffset
    bmi loc_17B3CA
    ldx #1

loc_17B3CA:
    txa
    jmp play_sound
; End of function sub_17B3C2


; =============== S U B R O U T I N E =======================================


pTileID2sound:
    lda pTileID
    sta Sound
    rts
; End of function pTileID2sound


; =============== S U B R O U T I N E =======================================


print_pTileID:
    lda pTileID
    jmp print_text
; End of function print_pTileID


; =============== S U B R O U T I N E =======================================


play_pTileID:
    lda pTileID
    jmp play_sound
; End of function play_pTileID


; =============== S U B R O U T I N E =======================================


sub_17B3DD:
    tya
    bmi loc_17B3F0
    lda Character1 + BATTLE::Scripts+1,Y
    cmp #6
    bne loc_17B3F0
    lda #0
    sta BossID
    ldx #$88
    jmp loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3F0:
    jsr sub_17B4CA
    cmp #1
    bne loc_17B3FC
    ldx #$19
    jmp loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3FC:
    cmp #2
    bne loc_17B405
    ldx #$1A
    jmp loc_17B40B
; ---------------------------------------------------------------------------

loc_17B405:
    jsr sub_17B42D
    jmp sub_17B496
; ---------------------------------------------------------------------------

loc_17B40B:
    lda TargetOffset
    pha
    lda CharacterOffset
    pha
    lda pBattleScript+1
    pha
    lda pBattleScript
    pha
    sty CharacterOffset
    txa
    jsr loc_17AD7B
    pla
    sta pBattleScript
    pla
    sta pBattleScript+1
    pla
    sta CharacterOffset
    pla
    sta TargetOffset
    tay
    jmp sub_17B496
; End of function sub_17B3DD


; =============== S U B R O U T I N E =======================================


sub_17B42D:
    .import Sound1

    tya
    pha
    lda #0
    sta Character1 + BATTLE::Health,Y
    sta Character1 + BATTLE::Health+1,Y
    lda #$80
    sta Character1 + BATTLE::InitialStatus,Y
    tya 
    bpl loc_17B48B
    lda #0
    sta Character1 + BATTLE::EnemyGroup,Y
    lda Character1 + BATTLE::PointerChr,Y
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    sta Pointer+1
    tya
    pha
    clc
    ldy #ENEMY::Experience
    lda (Pointer),Y
    adc Experience
    sta Experience
    iny
    lda (Pointer),Y
    adc Experience+1
    sta Experience+1
    lda #0
    adc Experience+2
    sta Experience+2
    clc
    ldy #ENEMY::Money
    lda (Pointer),Y
    adc Money
    sta Money
    iny
    lda (Pointer),Y
    adc Money+1
    sta Money+1
    ldy #ENEMY::Item
    lda (Pointer),Y
    beq loc_17B47E
    sta EnemyGroup

loc_17B47E:
    lda #6
    sta Sound1
    pla
    tay
    jsr sub_17B555
    jmp loc_17B490
; ---------------------------------------------------------------------------

loc_17B48B:
    lda #$15
    jsr play_sound

loc_17B490:
    jsr statistical_frame
    pla
    tay
    rts
; End of function sub_17B42D


; =============== S U B R O U T I N E =======================================


sub_17B496:
    tya
    pha
    bmi loc_17B4A9
    lda Character1 + BATTLE::Scripts+1,Y
    cmp #6
    beq loc_17B4C7
    lda #Hurt
    jsr print_text
    jmp loc_17B4C7
; ---------------------------------------------------------------------------

loc_17B4A9:
    lda BossID
    cmp #6
    beq loc_17B4C7
    lda Character1 + BATTLE::PointerChr,Y
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    sta Pointer+1
    ldy #$A
    lda (Pointer),Y
    and #$1C
    lsr A
    lsr A
    clc
    adc #$79
    jsr print_text

loc_17B4C7:
    pla
    tay
    rts
; End of function sub_17B496


; =============== S U B R O U T I N E =======================================


sub_17B4CA:
    tya
    pha
    lda Character1 + BATTLE::PointerChr,Y
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    sta Pointer+1
    ldy #8
    lda (Pointer),Y
    and #$1C
    lsr A
    lsr A
    sta Pointer
    pla
    tay
    lda Pointer
    rts
; End of function sub_17B4CA


; =============== S U B R O U T I N E =======================================


remove_item:
    ldy CharacterOffset
    clc
    lda Character1 + BATTLE::PointerChr,Y
    adc #<CHARACTER::Goods
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    adc #>CHARACTER::Goods
    sta Pointer+1
    ldy CharacterOffset
    lda Character1 + BATTLE::Scripts,Y
    tay

loc_17B4FC:
    jsr sram_write_enable

@next_item:
    cpy #7
    beq @last
    iny
    lda (Pointer),Y
    dey
    sta (Pointer),Y
    iny
    bne @next_item

@last:
    lda #0
    sta (Pointer),Y
    jmp sram_read_enable
; End of function remove_item


; =============== S U B R O U T I N E =======================================


sub_17B513:
    .import wait_nmi
    .importzp byte_45, BankPPU_X000

    jsr sub_17B5BC
    lda Character1 + BATTLE::InitialStatus,Y
    and #$7F
    sta Character1 + BATTLE::InitialStatus,Y
    lda #$22
    sta Pointer
    lda #$FF
    sta Pointer+1
    lda #$FF
    sta AddrForJmp
    jsr draw_enemy
    lda #0
    sta byte_45
    tya
    pha
    lda Character1 + BATTLE::Letter,Y
    and #3
    tax
    ldy #ENEMY::TilePage
    lda (pCharacter),Y
    sta BankPPU_X000,X
    pla
    tay
    lda Character1 + BATTLE::TargetOff,Y
    ldx pTileID+1
    sta SpriteTable,X
    lda #1
    sta NMIFlags
    jsr wait_nmi
    lda #$80
    sta NMIFlags
    rts
; End of function sub_17B513


; =============== S U B R O U T I N E =======================================


sub_17B555:
    jsr sub_17B5BC
    lda #0
    ldx pTileID+1
    sta SpriteTable,X
    lda #1
    sta NMIFlags
    jsr wait_nmi
    lda #$80
    sta NMIFlags
    lda #0
    sta Character1 + BATTLE::EnemyGroup,Y
    lda #0
    sta Pointer
    lda #$23
    sta Pointer+1
    lda #1
    sta AddrForJmp
    jsr draw_enemy
    lda Character1 + BATTLE::Letter,Y
    and #3
    tax
    lda #$7C
    sta BankPPU_X000,X
    rts
; End of function sub_17B555


; =============== S U B R O U T I N E =======================================


draw_enemy:
    .importzp byte_44

    tya
    pha
    lda Character1 + BATTLE::Letter,Y
    and #3
    tax
    ldy #ENEMY::TilePage
    lda (pCharacter),Y
    ora #$80
    sta BankPPU_X000,X
    pla
    tay
    lda #$80
    sta byte_45

loc_17B59F:
    lda Pointer
    sta byte_44
    and #1
    bne loc_17B5AD
    lda byte_45
    eor #$40
    sta byte_45

loc_17B5AD:
    jsr wait_nmi
    clc
    lda Pointer
    adc AddrForJmp
    sta Pointer
    cmp Pointer+1
    bne loc_17B59F
    rts
; End of function draw_enemy


; =============== S U B R O U T I N E =======================================


sub_17B5BC:
    lda Character1 + BATTLE::PointerChr,Y
    sta pCharacter
    lda Character1 + BATTLE::PointerChr+1,Y
    sta pCharacter+1
    lda Character1 + BATTLE::Letter,Y
    and #3
    sta pTileID
    asl A
    asl A
    asl A
    sta pTileID+1
    rts
; End of function sub_17B5BC


; =============== S U B R O U T I N E =======================================


black_flash:
    lda #BLACK
    ldx #3
    jmp flash_enemy
; End of function black_flash


; =============== S U B R O U T I N E =======================================


red_flash:
    lda #MEDIUM_RED
    ldx #3
    jmp flash_enemy
; End of function red_flash


; =============== S U B R O U T I N E =======================================


indigo_flash:
    lda #MEDIUM_INDIGO
    ldx #3
    jmp flash_enemy
; End of function indigo_flash


; =============== S U B R O U T I N E =======================================


blue_flash:
    lda #LIGHTEST_BLUE
    ldx #3
    jmp flash_enemy
; End of function blue_flash


; =============== S U B R O U T I N E =======================================


yellow_flash:
    lda #LIGHT_YELLOW
    ldx #3
    jmp flash_enemy
; End of function yellow_flash


; =============== S U B R O U T I N E =======================================


green_flash:
    lda #LIGHT_GREEN
    ldx #3
    jmp flash_enemy
; End of function green_flash


; =============== S U B R O U T I N E =======================================


sub_17B5FD:
    ldx #3

loc_17B5FF:
    txa
    pha
    lda #5
    sta Sound1
    jsr randomize
    and #3
    tax
    inx

loc_17B60D:
    txa
    pha
    lda #1
    sta Sound1
    pla
    pha
    ldx #3
    jsr flash_enemy
    pla
    tax
    dex
    bne loc_17B60D
    pla
    tax
    dex
    bne loc_17B5FF
    rts
; End of function sub_17B5FD


; =============== S U B R O U T I N E =======================================


flash_enemy:
    .import black1color_palette, color1_palette

    sta Pointer+1
    stx Pointer
    lda #2
    jsr play_sound
    ldy TargetOffset
    jsr sub_17B5BC
    jsr wait_nmi_processed
    ldx Pointer

loc_17B639:
    txa
    pha
    ldx pTileID+1
    lda SpriteTable,X
    pha
    lda #0
    sta SpriteTable,X
    lda #1
    sta NMIFlags
    jsr wait_nmi
    lda #$7C
    ldx pTileID
    sta BankPPU_X000,X
    lda Pointer+1
    jsr color1_palette
    jsr wait_nmi
    pla
    ldx pTileID+1
    sta SpriteTable,X
    lda #1
    sta NMIFlags
    jsr wait_nmi
    ldy #ENEMY::TilePage
    lda (pCharacter),Y
    ldx pTileID
    sta BankPPU_X000,X
    jsr black1color_palette
    jsr wait_nmi
    pla
    tax
    dex
    bne loc_17B639
    rts
; End of function flash_enemy


; =============== S U B R O U T I N E =======================================


sub_17B67C:
    lda #2
    jsr play_sound
    jsr sub_17B5BC
    ldy TargetOffset
    lda Character1 + BATTLE::TargetOff,Y
    pha
    ldx pTileID+1
    lda SpriteTable,X
    ldy TargetOffset
    sta Character1 + BATTLE::TargetOff,Y
    lda #0
    ldx pTileID+1
    sta SpriteTable,X
    lda #1
    sta NMIFlags
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    lda #$80
    sta NMIFlags
    ldy TargetOffset
    jsr sub_17B513
    pla
    ldy TargetOffset
    sta Character1 + BATTLE::TargetOff,Y
    rts
; End of function sub_17B67C


; =============== S U B R O U T I N E =======================================


sub_17B6B2:
    .import ScreenEffects1

    ldyx #ScreenEffects1
    lda #BLACK
    jmp screen_shift_effects
; End of function sub_17B6B2


; =============== S U B R O U T I N E =======================================


sub_17B6BB:
    ldyx #ScreenEffects1
    lda #MEDIUM_RED
    jmp screen_shift_effects
; End of function sub_17B6BB


; =============== S U B R O U T I N E =======================================


sub_17B6C4:
    ldyx #ScreenEffects1
    lda #MEDIUM_INDIGO
    jmp screen_shift_effects
; End of function sub_17B6C4


; =============== S U B R O U T I N E =======================================


sub_17B6CD:
    ldyx #ScreenEffects1
    lda #LIGHTEST_BLUE
    jmp screen_shift_effects
; End of function sub_17B6CD


; =============== S U B R O U T I N E =======================================


sub_17B6D6:
    ldyx #ScreenEffects1
    lda #LIGHT_YELLOW
    jmp screen_shift_effects
; End of function sub_17B6D6


; =============== S U B R O U T I N E =======================================


sub_17B6DF:
    .import ScreenEffects3

    ldyx #ScreenEffects3
    lda #LIGHT_GREEN
    jmp screen_shift_effects
; End of function sub_17B6DF


; =============== S U B R O U T I N E =======================================


sub_17B6E8:
    ldyx #ScreenEffects3
    lda #BLACK
    jmp screen_shift_effects
; End of function sub_17B6E8


; =============== S U B R O U T I N E =======================================


sub_17B6F1:
    .import ScreenEffects2

    ldyx #ScreenEffects2
    lda #BLACK
    jmp screen_shift_effects
; End of function sub_17B6F1


; =============== S U B R O U T I N E =======================================


screen_shift_effects:
    .import black1color_palette
    .importzp ShiftX, ShiftY

    sta pTileID
    stx Pointer
    sty Pointer+1
    lda #$10
    jsr play_sound
    jsr wait_nmi_processed
    ldy #0
    lda (Pointer),Y
    sta AddrForJmp
    iny
    lda (Pointer),Y
    sta AddrForJmp+1
    clc
    lda Pointer
    adc #2
    sta Pointer
    lda Pointer+1
    adc #0
    sta Pointer+1

loc_17B720:
    ldy #0

loc_17B722:
    tya
    pha
    and #2
    beq loc_17B730
    lda pTileID
    jsr color1_palette
    jmp loc_17B733
; ---------------------------------------------------------------------------

loc_17B730:
    jsr black1color_palette

loc_17B733:
    pla
    tay
    lda (Pointer),Y
    sta ShiftY
    iny
    lda (Pointer),Y
    sta ShiftX
    iny
    lda #1
    sta NMIFlags
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    cpy AddrForJmp+1
    bne loc_17B722
    dec AddrForJmp
    bne loc_17B720
    lda #0
    sta ShiftX
    sta ShiftY
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    jmp black1color_palette
; End of function screen_shift_effects


; =============== S U B R O U T I N E =======================================


sub_17B75A:
    .import check_music

    lda byte_47
    cmp #1
    beq loc_17B7B0
    cmp #2
    beq loc_17B7B0
    ldy #0

loc_17B766:
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17B77B
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    beq loc_17B77B
    lda Character1 + BATTLE::InitialStatus,Y
    and #$E0
    beq check_enemies

loc_17B77B:
    tya
    clc
    adc #$20
    tay
    bpl loc_17B766
    lda #$80
    sta Character1 + BATTLE::InitialStatus
    sta Character2 + BATTLE::InitialStatus
    sta Character3 + BATTLE::InitialStatus
    sta Character4 + BATTLE::InitialStatus
    lda BossID
    cmp #4
    bne loc_17B7A7
    lda #3
    sta byte_47
    lda #4
    jsr play_sound
    lda #ZAP
    jsr print_text
    jmp loc_17B7B0
; ---------------------------------------------------------------------------

loc_17B7A7:
    lda #0
    sta CharacterOffset
    lda #Lose
    jsr print_text

loc_17B7B0:
    sec
    rts
; ---------------------------------------------------------------------------

check_enemies:
    lda Enemy1 + BATTLE::EnemyGroup
    ora Enemy2 + BATTLE::EnemyGroup
    ora Enemy3 + BATTLE::EnemyGroup
    ora Enemy4 + BATTLE::EnemyGroup
    bne alive_enemy
    lda byte_23
    beq loc_17B7C9
    lda #TankBroken
    jsr print_text

loc_17B7C9:
    lda BossID
    cmp #6
    bne loc_17B7E7
    lda #0
    sta TargetOffset
    jsr sub_17B8D4
    lda #$20
    sta TargetOffset
    jsr sub_17B8D4
    lda #$40
    sta TargetOffset
    jsr sub_17B8D4
    jmp loc_17B7F1
; ---------------------------------------------------------------------------

loc_17B7E7:
    lda #5
    jsr check_music
    lda #YOUWIN
    jsr print_text

loc_17B7F1:
    sec
    rts
; ---------------------------------------------------------------------------

alive_enemy:
    lda BossID
    cmp #1
    bne loc_17B802
    ldy #0
    jsr sub_F673
    bcs loc_17B802
    sec
    rts
; ---------------------------------------------------------------------------

loc_17B802:
    clc
    rts
; End of function sub_17B75A


; =============== S U B R O U T I N E =======================================


change_parameter:
    ldy #1
    lda (pBattleScript),Y
    jsr script_low
; ---------------------------------------------------------------------------
    .word sub_17B863, recover_hp, recover_pp, increase_speed, increase_off
    .word increase_defense, sub_17B8CB, sub_17B915, decrease_def, decrease_fight
    .word sub_17BA2A, sub_17BA3C, decrease_offense, decrease_defense, sub_17BA95
    .word sub_17B8AA, sub_17B8F2, sub_17BA86, increase_offense, sub_17BAE4
    .word sub_17BAFA, sub_17BB0D, sub_17BB25, sub_17BB3D, sub_17BB55
    .word set_resist, sub_17BB83, sub_17BB8C, sub_17BB9D, sub_17BBB0
    .word sub_17BBCD, sub_17BBEB, sub_17BBF9, sub_17BC02, sub_17BC0B
    .word sub_17BC14, sub_17BC1D, sub_17BC26, revives, sub_17BC2F
    .word sub_17BCD0, sub_17BD2B, sub_17BC5D, sub_17BD44

; =============== S U B R O U T I N E =======================================


sub_17B863:
    lda #2
    jmp get_script_pntr
; End of function sub_17B863


; =============== S U B R O U T I N E =======================================


recover_hp:
    jsr get_random_value

loc_17B86B:
    ldx TargetOffset
    ldy #CHARACTER::MaxHealth
    jsr sub_17BEF2
    ldx #$A
    lda #RecoverHP
    jmp sound_frame_text
; End of function recover_hp


; =============== S U B R O U T I N E =======================================


recover_pp:
    jsr get_random_value
    ldx TargetOffset
    ldy #CHARACTER::MaxPP
    jsr sub_17BEF2
    ldx #$A
    lda #RecoverPP
    jmp sound_frame_text
; End of function recover_pp


; =============== S U B R O U T I N E =======================================


increase_offense:
    jsr get_random_value
    ldx TargetOffset
    ldy #CHARACTER::Offense
    jsr sub_17BDE8
    lda #OFFENSEinc
    jmp print_text
; End of function increase_offense


; =============== S U B R O U T I N E =======================================


increase_speed:
    jsr get_random_value
    ldx TargetOffset
    ldy #CHARACTER::Speed
    jsr sub_17BE3B
    ldx #9
    lda #SPEEDinc
    jmp sound_frame_text
; End of function increase_speed


; =============== S U B R O U T I N E =======================================


sub_17B8AA:
    ldy CharacterOffset
    jmp sub_17B42D
; End of function sub_17B8AA


; =============== S U B R O U T I N E =======================================


increase_off:
    ldx TargetOffset
    ldy #CHARACTER::Offense
    jsr sub_17BF00
    ldx #9
    lda #OFFENSEinc
    jmp sound_frame_text
; End of function increase_off


; =============== S U B R O U T I N E =======================================


increase_defense:
    ldx TargetOffset
    ldy #CHARACTER::Defense
    jsr sub_17BF00
    ldx #9
    lda #DEFENSEinc
    jmp sound_frame_text
; End of function increase_defense


; =============== S U B R O U T I N E =======================================


sub_17B8CB:
    lda #$FF
    sta Value
    sta Value+1
    jmp loc_17B86B
; End of function sub_17B8CB


; =============== S U B R O U T I N E =======================================


sub_17B8D4:
    lda #$FF
    sta Value
    sta Value+1
    lda #0
    ldx TargetOffset
    sta Character1 + BATTLE::InitialStatus,X
    ldy #CHARACTER::MaxHealth
    jsr sub_17BEF2
    ldx #$A
    lda #Empty
    jsr sound_frame_text
    ldx #20
    jmp delay
; End of function sub_17B8D4


; =============== S U B R O U T I N E =======================================


sub_17B8F2:
    jsr get_random_value
    ldy CharacterOffset
    sec
    lda Character1 + BATTLE::Health,Y
    sbc Pointer
    sta Character1 + BATTLE::Health,Y
    lda Character1 + BATTLE::Health+1,Y
    sbc Pointer+1
    sta Character1 + BATTLE::Health+1,Y
    bcc loc_17B912
    ora Character1 + BATTLE::Health,Y
    beq loc_17B912
    jmp statistical_frame
; ---------------------------------------------------------------------------

loc_17B912:
    jmp sub_17B3DD
; End of function sub_17B8F2


; =============== S U B R O U T I N E =======================================


sub_17B915:
    lda BossID
    cmp #5
    beq loc_17B93E
    cmp #6
    beq loc_17B93E
    jsr sub_17BFE2
    bcc loc_17B93E

loc_17B924:
    ldx #3
    ldy CharacterOffset
    lda Character1 + BATTLE::Scripts+1,Y
    cmp #6
    bne loc_17B931
    ldx #$3F

loc_17B931:
    stx Pointer
    jsr randomize
    and Pointer
    sta Value
    lda #0
    sta Value+1

loc_17B93E:
    lda TargetOffset
    pha
    jsr get_random_value
    ldy TargetOffset
    lda Character1 + BATTLE::Resist,Y
    and #4
    beq loc_17B962
    lda Pointer+1
    pha
    lda Pointer
    pha
    lda #BouncedBack
    jsr print_text
    pla
    sta Pointer
    pla
    sta Pointer+1
    ldy CharacterOffset
    sty TargetOffset

loc_17B962:
    lda Character1 + BATTLE::Resist,Y
    and #$10
    beq loc_17B96D
    lsr Pointer+1
    ror Pointer

loc_17B96D:
    lda Character1 + BATTLE::Resist,Y
    and #8
    beq loc_17B978
    lsr Pointer+1
    ror Pointer

loc_17B978:
    jsr sub_17BF74
    lda Pointer
    ora Pointer+1
    bne loc_17B983
    inc Pointer

loc_17B983:
    lda Pointer
    sta byte_590
    pha
    lda Pointer+1
    sta byte_591
    pha
    lda #Suffered
    jsr print_text
    pla
    sta Pointer+1
    pla
    sta Pointer
    lda BossID
    cmp #3
    beq loc_17B9A5
    jsr sub_17BFEF
    bcs loc_17B9C4

loc_17B9A5:
    jsr sub_17BFE2
    bcs loc_17B9C4
    ldy TargetOffset
    sec
    lda Character1 + BATTLE::Health,Y
    sbc Pointer
    sta Character1 + BATTLE::Health,Y
    lda Character1 + BATTLE::Health+1,Y
    sbc Pointer+1
    sta Character1 + BATTLE::Health+1,Y
    bcc loc_17BA00
    ora Character1 + BATTLE::Health,Y
    beq loc_17BA00

loc_17B9C4:
    lda Character1 + BATTLE::InitialStatus,Y
    and #$C
    beq loc_17B9DF
    jsr randomize
    and #$C0
    bne loc_17B9DF
    lda Character1 + BATTLE::InitialStatus,Y
    and #$F3
    sta Character1 + BATTLE::InitialStatus,Y
    lda #WasntConfused
    jsr print_text

loc_17B9DF:
    lda Character1 + BATTLE::InitialStatus,Y
    and #$10
    beq loc_17B9FA
    jsr randomize
    and #$C0
    bne loc_17B9FA
    lda Character1 + BATTLE::InitialStatus,Y
    and #$EF
    sta Character1 + BATTLE::InitialStatus,Y
    lda #WakeUp
    jsr print_text

loc_17B9FA:
    pla
    sta TargetOffset
    jmp statistical_frame
; ---------------------------------------------------------------------------

loc_17BA00:
    jsr sub_17B3DD
    pla
    sta TargetOffset
    rts
; End of function sub_17B915


; =============== S U B R O U T I N E =======================================


decrease_def:
    jsr get_random_value
    ldy TargetOffset
    jsr sub_17BF74
    ldx TargetOffset
    ldy #9
    jsr sub_17BE72
    lda #DEFENSEdec
    jmp print_text
; End of function decrease_def


; =============== S U B R O U T I N E =======================================


decrease_fight:
    jsr get_random_value
    ldx TargetOffset
    ldy #CHARACTER::Fight
    jsr decrease_parameter
    lda #FIGHTdec
    jmp print_text
; End of function decrease_fight


; =============== S U B R O U T I N E =======================================


sub_17BA2A:
    jsr sub_17BFE2
    bcs loc_17BA39
    jsr sub_17BFEF
    bcs loc_17BA39
    ldy TargetOffset
    jmp sub_17B3DD
; ---------------------------------------------------------------------------

loc_17BA39:
    jmp loc_17B924
; End of function sub_17BA2A


; =============== S U B R O U T I N E =======================================


sub_17BA3C:
    jsr sub_17BFE2
    bcs loc_17BA6B
    jsr sub_17BFEF
    bcs loc_17BA6B
    ldy TargetOffset
    jsr randomize
    and #3
    tax
    inx
    txa
    sec
    sbc Character1 + BATTLE::Health,Y
    lda #0
    sbc Character1 + BATTLE::Health+1,Y
    bcs loc_17BA6B
    txa
    sta Character1 + BATTLE::Health,Y
    lda #0
    sta Character1 + BATTLE::Health+1,Y
    ldx #0
    lda #Critical
    jmp sound_frame_text
; ---------------------------------------------------------------------------

loc_17BA6B:
    jmp print_no_effect
; End of function sub_17BA3C


; =============== S U B R O U T I N E =======================================


decrease_offense:
    ldx TargetOffset
    ldy #CHARACTER::Offense
    jsr sub_17BF15
    lda #OFFENSEdec
    jmp print_text
; End of function decrease_offense


; =============== S U B R O U T I N E =======================================


decrease_defense:
    ldx TargetOffset
    ldy #CHARACTER::Defense
    jsr sub_17BF15
    lda #DEFENSEdec
    jmp print_text
; End of function decrease_defense


; =============== S U B R O U T I N E =======================================


sub_17BA86:
    jsr get_random_value
    ldx CharacterOffset
    ldy #CHARACTER::Offense
    jsr sub_17BDE8
    lda #Approached
    jmp print_text
; End of function sub_17BA86


; =============== S U B R O U T I N E =======================================


sub_17BA95:
    jsr get_random_value
    ldy TargetOffset
    bmi loc_17BADD
    lda Character1 + BATTLE::PointerChr,Y
    sta AddrForJmp
    lda Character1 + BATTLE::PointerChr+1,Y
    sta AddrForJmp+1
    ldy #CHARACTER::Exp
    clc
    lda (AddrForJmp),Y
    adc Pointer
    sta pTileID
    iny
    lda (AddrForJmp),Y
    adc Pointer+1
    sta pTileID+1
    iny
    lda (AddrForJmp),Y
    adc #0
    sta TilepackMode
    bcc loc_17BAC7
    lda #$FF
    sta pTileID
    sta pTileID+1
    sta TilepackMode

loc_17BAC7:
    jsr sram_write_enable
    ldy #CHARACTER::Exp
    lda pTileID
    sta (AddrForJmp),Y
    iny
    lda pTileID+1
    sta (AddrForJmp),Y
    iny
    lda TilepackMode
    sta (AddrForJmp),Y
    jsr sram_read_enable

loc_17BADD:
    ldx #$A
    lda #EXPinc
    jmp sound_frame_text
; End of function sub_17BA95


; =============== S U B R O U T I N E =======================================


sub_17BAE4:
    jsr sub_17BFE2
    bcs loc_17BAF7
    jsr sub_17BF58
    bcs loc_17BAF7
    lda #Blinded
    ldy #0
    ldx #$80
    jmp loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BAF7:
    jmp print_no_effect
; End of function sub_17BAE4


; =============== S U B R O U T I N E =======================================


sub_17BAFA:
    jsr sub_17BFE2
    bcs loc_17BAF7
    jsr sub_17BF58
    bcs loc_17BAF7
    lda #WasPoisoned
    ldy #0
    ldx #2
    jmp sub_17BD69
; End of function sub_17BAFA


; =============== S U B R O U T I N E =======================================


sub_17BB0D:
    jsr sub_17BFE2
    bcs loc_17BAF7
    jsr sub_17BFEF
    bcs loc_17BAF7
    jsr sub_17BF66
    bcs loc_17BAF7
    lda #Senses
    ldy #0
    ldx #8
    jmp sub_17BD69
; End of function sub_17BB0D


; =============== S U B R O U T I N E =======================================


sub_17BB25:
    jsr sub_17BFE2
    bcs loc_17BAF7
    jsr sub_17BFEF
    bcs loc_17BAF7
    jsr sub_17BF66
    bcs loc_17BAF7
    lda #PutSleep
    ldy #0
    ldx #$10
    jmp sub_17BD69
; End of function sub_17BB25


; =============== S U B R O U T I N E =======================================


sub_17BB3D:
    jsr sub_17BFE2
    bcs loc_17BAF7
    jsr sub_17BFEF
    bcs loc_17BAF7
    jsr sub_17BF58
    bcs loc_17BAF7
    lda #CannotMove
    ldy #0
    ldx #$20
    jmp sub_17BD69
; End of function sub_17BB3D


; =============== S U B R O U T I N E =======================================


sub_17BB55:
    jsr sub_17BFE2
    bcs loc_17BAF7
    ldy TargetOffset
    lda Character1 + BATTLE::PointerChr,Y
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    sta Pointer+1
    ldy #ENEMY::PP
    lda (Pointer),Y
    iny
    ora (Pointer),Y
    beq loc_17BAF7
    lda #Blocked
    ldy #0
    ldx #$40
    jmp loc_17BD7F
; End of function sub_17BB55


; =============== S U B R O U T I N E =======================================


set_resist:
    ldy TargetOffset
    lda Character1 + BATTLE::Resist,Y
    ora #8
    sta Character1 + BATTLE::Resist,Y
    rts
; End of function set_resist


; =============== S U B R O U T I N E =======================================


sub_17BB83:
    lda #Shielded
    ldy #$A
    ldx #$10
    jmp loc_17BD7F
; End of function sub_17BB83


; =============== S U B R O U T I N E =======================================


sub_17BB8C:
    jsr loc_17BFE6
    bcs loc_17BB9A
    lda #Surrounded
    ldy #$A
    ldx #4
    jmp loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BB9A:
    jmp print_no_effect
; End of function sub_17BB8C


; =============== S U B R O U T I N E =======================================


sub_17BB9D:
    jsr sub_17BFE2
    bcs loc_17BB9A
    jsr sub_17BFEF
    bcs loc_17BB9A
    lda #WasBound
    ldy #0
    ldx #$20
    jmp loc_17BD7F
; End of function sub_17BB9D


; =============== S U B R O U T I N E =======================================


sub_17BBB0:
    jsr sub_17BFE2
    bcs loc_17BB9A
    jsr sub_17BFEF
    bcs loc_17BB9A
    lda #Tturned
    ldy #0
    ldx #$40
    jsr sub_17BD69
    bcs locret_17BBCC
    ldx TargetOffset
    ldy #9
    jsr sub_17BF00

locret_17BBCC:
    rts
; End of function sub_17BBB0


; =============== S U B R O U T I N E =======================================


sub_17BBCD:
    ldy TargetOffset
    lda Character1 + BATTLE::Scripts+1,Y
    cmp #1
    bne locret_17BBEA
    lda Character1 + BATTLE::Resist,Y
    and #2
    bne locret_17BBEA
    lda Character1 + BATTLE::Resist,Y
    ora #2
    sta Character1 + BATTLE::Resist,Y
    lda #AsthmaAttack
    jmp print_text
; ---------------------------------------------------------------------------

locret_17BBEA:
    rts
; End of function sub_17BBCD


; =============== S U B R O U T I N E =======================================


sub_17BBEB:
    jsr sub_17BF66
    bcs loc_17BB9A
    lda #SomethingStrange
    ldy #0
    ldx #4
    jmp sub_17BD69
; End of function sub_17BBEB


; =============== S U B R O U T I N E =======================================


sub_17BBF9:
    lda #Dissipated
    ldy #$A
    ldx #2
    jmp loc_17BD95
; End of function sub_17BBF9


; =============== S U B R O U T I N E =======================================


sub_17BC02:
    lda #WakeUp
    ldy #$A
    ldx #$10
    jmp loc_17BD95
; End of function sub_17BC02


; =============== S U B R O U T I N E =======================================


sub_17BC0B:
    lda #CanMove
    ldy #$A
    ldx #$20
    jmp loc_17BD95
; End of function sub_17BC0B


; =============== S U B R O U T I N E =======================================


sub_17BC14:
    lda #AsthmaAttackPass
    ldy #$A
    ldx #2
    jmp loc_17BDAB
; End of function sub_17BC14


; =============== S U B R O U T I N E =======================================


sub_17BC1D:
    lda #Regained
    ldy #$A
    ldx #$C
    jmp loc_17BD95
; End of function sub_17BC1D


; =============== S U B R O U T I N E =======================================


sub_17BC26:
    lda #Destroyed
    ldy #2
    ldx #$10
    jmp loc_17BDAB
; End of function sub_17BC26


; =============== S U B R O U T I N E =======================================


sub_17BC2F:
    lda #RecoveredStone
    ldy #$A
    ldx #$40
    jmp loc_17BD95
; End of function sub_17BC2F


; =============== S U B R O U T I N E =======================================


revives:
    ldy TargetOffset
    lda Character1 + BATTLE::InitialStatus,Y
    and #$80
    beq @no_revives
    lda #0
    sta Character1 + BATTLE::InitialStatus,Y
    lda #$FF
    sta Value
    sta Value+1
    ldx TargetOffset
    ldy #CHARACTER::MaxHealth
    jsr sub_17BEF2
    ldx #$A
    lda #Brought
    jmp sound_frame_text
; ---------------------------------------------------------------------------

@no_revives:
    jmp print_no_effect
; End of function revives


; =============== S U B R O U T I N E =======================================


sub_17BC5D:
    .import sub_F26B, CurrentMusic, NewMusic

    ldx BossID
    cpx #6
    beq loc_17BC85
    lda #$19
    jsr check_music
    lda CurrentMusic
    pha
    ldx #0
    jsr sub_F26B
    lda #3
    sta Sound1
    ldx #56
    jsr delay
    pla
    cmp CurrentMusic
    beq locret_17BC84
    sta NewMusic

locret_17BC84:
    rts
; ---------------------------------------------------------------------------

loc_17BC85:
    lda #$19
    jsr check_music
    sec
    lda NamePos
    sbc #$9E
    tax
    jsr sub_F26B
    lda #3
    sta Sound1
    jsr sub_17B6E8
    lda NamePos
    jsr print_text
    lda #$2C
    jsr check_music
    ldx NamePos
    inx
    cpx #BeDefeated
    beq loc_17BCAF
    stx NamePos
    rts
; ---------------------------------------------------------------------------

loc_17BCAF:
    jsr sub_17B5FD
    lda #$FF
    jsr check_music
    ldx #200
    jsr delay
    ldx #BeDefeated

@next_msg:
    stx NamePos
    txa
    jsr print_text
    ldx NamePos
    inx
    cpx #$AC
    bne @next_msg
    ldy #$80
    jmp sub_17B3DD
; End of function sub_17BC5D


; =============== S U B R O U T I N E =======================================


sub_17BCD0:
    ldx #$A
    ldy TargetOffset
    lda Character1 + BATTLE::PP,Y
    ora Character1 + BATTLE::PP+1,Y
    beq loc_17BD28
    sec
    lda Character1 + BATTLE::PP,Y
    tax
    sbc #$A
    lda Character1 + BATTLE::PP+1,Y
    sbc #0
    bcc loc_17BCEC
    ldx #$A

loc_17BCEC:
    stx byte_590
    ldx #0
    stx byte_591
    sec
    lda Character1 + BATTLE::PP,Y
    sbc byte_590
    sta Character1 + BATTLE::PP,Y
    lda Character1 + BATTLE::PP+1,Y
    sbc byte_591
    sta Character1 + BATTLE::PP+1,Y
    lda #Snatched
    jsr print_text
    lda byte_590
    sta Pointer
    lda byte_591
    sta Pointer+1
    ldx CharacterOffset
    ldy #CHARACTER::MaxPP
    jsr sub_17BEF2
    lda CharacterOffset
    sta TargetOffset
    ldx #$A
    lda #RecoverPP
    jmp sound_frame_text
; ---------------------------------------------------------------------------

loc_17BD28:
    jmp print_no_effect
; End of function sub_17BCD0


; =============== S U B R O U T I N E =======================================


sub_17BD2B:
    ldy TargetOffset
    bmi loc_17BD3F
    jsr sub_17BFAA
    bcs loc_17BD3F
    jsr loc_17B4FC
    jsr set_item_name_tiles
    lda #TookAway
    jmp print_text
; ---------------------------------------------------------------------------

loc_17BD3F:
    lda #Ready
    jmp print_text
; End of function sub_17BD2B


; =============== S U B R O U T I N E =======================================


sub_17BD44:
    ldy TargetOffset
    lda Character1 + BATTLE::InitialStatus,Y
    and #8
    bne locret_17BD5A
    lda Character1 + BATTLE::InitialStatus,Y
    ora #8
    sta Character1 + BATTLE::InitialStatus,Y
    lda #Senses
    jsr print_text

locret_17BD5A:
    rts
; End of function sub_17BD44


; =============== S U B R O U T I N E =======================================


sound_frame_text:
    pha
    txa
    beq loc_17BD62
    jsr play_sound

loc_17BD62:
    jsr statistical_frame
    pla
    jmp print_text
; End of function sound_frame_text


; =============== S U B R O U T I N E =======================================


sub_17BD69:
    pha
    jsr sub_17BDCC
    lda Character1 + BATTLE::InitialStatus,Y
    and Pointer
    bne loc_17BDC6
    lda Character1 + BATTLE::InitialStatus,Y
    ora Pointer
    sta Character1 + BATTLE::InitialStatus,Y
    jmp loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD7F:
    pha
    jsr sub_17BDCC
    lda Character1 + BATTLE::Resist,Y
    and Pointer
    bne loc_17BDC6
    lda Character1 + BATTLE::Resist,Y
    ora Pointer
    sta Character1 + BATTLE::Resist,Y
    jmp loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD95:
    pha
    jsr sub_17BDCC
    lda Character1 + BATTLE::InitialStatus,Y
    and Pointer
    beq loc_17BDC6
    lda Character1 + BATTLE::InitialStatus,Y
    and Pointer+1
    sta Character1 + BATTLE::InitialStatus,Y
    jmp loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BDAB:
    pha
    jsr sub_17BDCC
    lda Character1 + BATTLE::Resist,Y
    and Pointer
    beq loc_17BDC6
    lda Character1 + BATTLE::Resist,Y
    and Pointer+1
    sta Character1 + BATTLE::Resist,Y

loc_17BDBE:
    ldx Sound
    pla
    jsr sound_frame_text
    clc
    rts
; ---------------------------------------------------------------------------

loc_17BDC6:
    pla
    jsr print_no_effect
    sec
    rts
; End of function sub_17BD69


; =============== S U B R O U T I N E =======================================


sub_17BDCC:
    stx Pointer
    txa
    eor #$FF
    sta Pointer+1
    sty Sound
    ldy TargetOffset
    rts
; End of function sub_17BDCC


; =============== S U B R O U T I N E =======================================


print_no_effect:
    lda #WasNoEffect
    jmp print_text
; End of function print_no_effect


; =============== S U B R O U T I N E =======================================


get_random_value:
    .import random_value

    lda Value
    sta Pointer
    lda Value+1
    sta Pointer+1
    jmp random_value
; End of function get_random_value


; =============== S U B R O U T I N E =======================================


sub_17BDE8:
    jsr sub_17BF2C
; End of function sub_17BDE8


; =============== S U B R O U T I N E =======================================


sub_17BDEB:
    clc
    lda Character1 + BATTLE::EnemyGroup,X
    adc Pointer
    sta TilepackMode
    lda Character1 + BATTLE::InitialStatus,X
    adc Pointer+1
    sta TilesCount
    bcc loc_17BE02
    lda #$FF
    sta TilepackMode
    sta TilesCount

loc_17BE02:
    sec
    lda pTileID
    sbc TilepackMode
    lda pTileID+1
    sbc TilesCount
    bcs loc_17BE15
    lda pTileID
    sta TilepackMode
    lda pTileID+1
    sta TilesCount

loc_17BE15:
    sec
    lda TilepackMode
    sbc Character1 + BATTLE::EnemyGroup,X
    sta byte_590
    lda TilesCount
    sbc Character1 + BATTLE::InitialStatus,X
    sta byte_591
    bcc loc_17BE38
    ora byte_590
    beq loc_17BE38
    lda TilepackMode
    sta Character1 + BATTLE::EnemyGroup,X
    lda TilesCount
    sta Character1 + BATTLE::InitialStatus,X
    rts
; ---------------------------------------------------------------------------

loc_17BE38:
    jmp sub_17BFD8
; End of function sub_17BDEB


; =============== S U B R O U T I N E =======================================


sub_17BE3B:
    jsr sub_17BF2C
    clc
    lda Character1 + BATTLE::EnemyGroup,X
    adc Pointer
    sta TilepackMode
    bcc loc_17BE4C
    lda #$FF
    sta TilepackMode

loc_17BE4C:
    sec
    lda pTileID
    sbc TilepackMode
    bcs loc_17BE57
    lda pTileID
    sta TilepackMode

loc_17BE57:
    lda #0
    sta byte_591
    sec
    lda TilepackMode
    sbc Character1 + BATTLE::EnemyGroup,X
    sta byte_590
    bcc loc_17BE6F
    beq loc_17BE6F
    lda TilepackMode
    sta Character1 + BATTLE::EnemyGroup,X
    rts
; ---------------------------------------------------------------------------

loc_17BE6F:
    jmp sub_17BFD8
; End of function sub_17BE3B


; =============== S U B R O U T I N E =======================================


sub_17BE72:
    jsr sub_17BF2C
    sec
    lda Character1 + BATTLE::EnemyGroup,X
    sbc Pointer
    sta TilepackMode
    lda Character1 + BATTLE::InitialStatus,X
    sbc Pointer+1
    sta TilesCount
    bcs loc_17BE8C
    lda #0
    sta TilepackMode
    sta TilesCount

loc_17BE8C:
    cpy #3
    beq loc_17BE9E
    cpy #5
    beq loc_17BE9E
    lda TilepackMode
    ora TilesCount
    bne loc_17BE9E
    lda #1
    sta TilepackMode

loc_17BE9E:
    sec
    lda Character1 + BATTLE::EnemyGroup,X
    sbc TilepackMode
    sta byte_590
    lda Character1 + BATTLE::InitialStatus,X
    sbc TilesCount
    sta byte_591
    bcc loc_17BEC1
    ora byte_590
    beq loc_17BEC1
    lda TilepackMode
    sta Character1 + BATTLE::EnemyGroup,X
    lda TilesCount
    sta Character1 + BATTLE::InitialStatus,X
    rts
; ---------------------------------------------------------------------------

loc_17BEC1:
    jmp sub_17BFD8
; End of function sub_17BE72


; =============== S U B R O U T I N E =======================================


decrease_parameter:
    jsr sub_17BF2C
    sec
    lda Character1 + BATTLE::EnemyGroup,X
    sbc Pointer
    sta TilepackMode
    beq loc_17BED3
    bcs loc_17BED7

loc_17BED3:
    lda #1
    sta TilepackMode

loc_17BED7:
    lda #0
    sta byte_591
    sec
    lda Character1 + BATTLE::EnemyGroup,X
    sbc TilepackMode
    sta byte_590
    beq loc_17BEEF
    bcc loc_17BEEF
    lda TilepackMode
    sta Character1 + BATTLE::EnemyGroup,X
    rts
; ---------------------------------------------------------------------------

loc_17BEEF:
    jmp sub_17BFD8
; End of function decrease_parameter


; =============== S U B R O U T I N E =======================================


sub_17BEF2:
    jsr sub_17BF2C
    lda AddrForJmp
    sta pTileID
    lda AddrForJmp+1
    sta pTileID+1
    jmp sub_17BDEB
; End of function sub_17BEF2


; =============== S U B R O U T I N E =======================================


sub_17BF00:
    txa
    pha
    jsr sub_17BF2C
    pla
    tax
    lda AddrForJmp
    sta Pointer
    lda AddrForJmp+1
    sta Pointer+1
    jsr random_value
    jmp sub_17BDE8
; End of function sub_17BF00


; =============== S U B R O U T I N E =======================================


sub_17BF15:
    txa
    pha
    jsr sub_17BF2C
    pla
    tax
    lda AddrForJmp+1
    lsr A
    sta Pointer+1
    lda AddrForJmp
    ror A
    sta Pointer
    jsr random_value
    jmp sub_17BE72
; End of function sub_17BF15


; =============== S U B R O U T I N E =======================================


sub_17BF2C:
    lda Character1 + BATTLE::PointerChr,X
    sta TilepackMode
    lda Character1 + BATTLE::PointerChr+1,X
    sta TilesCount
    lda (TilepackMode),Y
    sta AddrForJmp
    asl A
    sta pTileID
    iny 
    lda (TilepackMode),Y
    and #3
    sta AddrForJmp+1
    rol A
    sta pTileID+1
    bcc loc_17BF4F
    lda #$FF
    sta pTileID
    sta pTileID+1

loc_17BF4F:
    dey
    stx pDist
    tya
    clc
    adc pDist
    tax
    rts
; End of function sub_17BF2C


; =============== S U B R O U T I N E =======================================


sub_17BF58:
    ldy CharacterOffset
    lda Character1 + BATTLE::Wisdom,Y
    tax
    ldy TargetOffset
    lda Character1 + BATTLE::Strength,Y
    jmp sub_17BF8C
; End of function sub_17BF58


; =============== S U B R O U T I N E =======================================


sub_17BF66:
    ldy CharacterOffset
    lda Character1 + BATTLE::Wisdom,Y
    tax
    ldy TargetOffset
    lda Character1 + BATTLE::Force,Y
    jmp sub_17BF8C
; End of function sub_17BF66


; =============== S U B R O U T I N E =======================================


sub_17BF74:
    lda Character1 + BATTLE::Flags,Y
    and Flags
    beq loc_17BF87
    lsr Pointer+1
    ror Pointer
    lda Pointer
    ora Pointer+1
    bne loc_17BF87
    inc Pointer

loc_17BF87:
    lda #0
    sta Flags
    rts
; End of function sub_17BF74


; =============== S U B R O U T I N E =======================================


sub_17BF8C:
    .import divide

    lsr A
    sta Pointer
    stx pTileID
    txa
    sec
    sbc Pointer
    bcs loc_17BF99
    lda #0

loc_17BF99:
    sta Pointer+1
    lda #0
    sta Pointer
    sta AddrForJmp
    jsr divide
    jsr randomize
    cmp Pointer
    rts
; End of function sub_17BF8C


; =============== S U B R O U T I N E =======================================


sub_17BFAA:
    jsr get_goods_pointer_battle
    ldy #0

loc_17BFAF:
    tya
    pha
    lda (Pointer),Y
    beq loc_17BFCB
    jsr get_itemID_pntr
    jsr bank0           ; set memory bank 0 at $8000
    ldy #5
    lda (AddrForJmp),Y
    tax
    ldy #2
    lda (AddrForJmp),Y
    jsr bank16          ; set memory bank $16 at $8000
    and #$40
    bne loc_17BFD4

loc_17BFCB:
    pla
    tay
    iny
    cpy #8
    bne loc_17BFAF
    sec
    rts
; ---------------------------------------------------------------------------

loc_17BFD4:
    pla
    tay
    clc
    rts
; End of function sub_17BFAA


; =============== S U B R O U T I N E =======================================


sub_17BFD8:
    lda #0
    sta byte_590
    sta byte_591
    clc
    rts
; End of function sub_17BFD8


; =============== S U B R O U T I N E =======================================


sub_17BFE2:
    lda TargetOffset
    bpl loc_17BFEB

loc_17BFE6:
    lda BossID
    lsr A
    bne loc_17BFED

loc_17BFEB:
    clc
    rts
; ---------------------------------------------------------------------------

loc_17BFED:
    sec
    rts
; End of function sub_17BFE2


; =============== S U B R O U T I N E =======================================


sub_17BFEF:
    ldy TargetOffset
    bmi loc_17BFFC
    lda Character1 + BATTLE::Scripts+1,Y
    cmp #6
    bne loc_17BFFC
    sec
    rts
; ---------------------------------------------------------------------------

loc_17BFFC:
    clc
    rts
; End of function sub_17BFEF

; end of 'BANK17'
