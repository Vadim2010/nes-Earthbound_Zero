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
    .importzp Vechicle, byte_47, EnemyGroup, Experience, Money
    .importzp MsgCounter, CharacterOffset, BossID, Auto, EnemyPos, EnemyCount

    set GamepadButtons, #0
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
    set CharacterOffset, #0
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
    set CharacterOffset, #$80
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
    set EnemyCount, #0
    set CharacterOffset, #$80

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
    set NMI_Data + NMI_DATA::NMI_ID, #WRITE_ROW
    set NMI_Data + NMI_DATA::NumOfChr, #$10
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
    set NMIFlags, #$80
    set NMI_Data + NMI_DATA::PPU_Addr, #$23
    set NMI_Data + NMI_DATA::PPU_Addr+1, #$D8
    set OffsetNMI_Data, #0
    set byte_47, #0
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
    set Enemy1 + BATTLE::Health, #$FF
    sta Enemy1 + BATTLE::Health+1
    set Character2 + BATTLE::EnemyGroup, #0
    sta Character3 + BATTLE::EnemyGroup
    sta Character4 + BATTLE::EnemyGroup

loc_17A173:
    stx EnemyCount
    lda Vechicle
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
    set NamePos, #$96
    set Enemy1 + BATTLE::Speed, Character1 + BATTLE::Speed

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
    set MsgCounter, #0
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
    set GamepadButtons, #0
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
    ldy #CHARACTER::Status
    ldx CharacterOffset

@copy_to_lvl:
    lda (Pointer),Y
    sta Character1 + BATTLE::Status,X
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
    set AddrForJmp, Pointer
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
    sta Character1 + BATTLE::Status,X
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
    set OffsetNMI_Data, #0
    set NMIFlags, #$80
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
    set NMI_Data + NMI_DATA::NMI_ID, #FILL
    set NMI_Data + NMI_DATA::NumOfChr, #$40
    set NMI_Data + NMI_DATA::Chr, #$FF
    set NMI_Data + NMI_DATA::Next, #0
    set NMIFlags, #$80
    set OffsetNMI_Data, #0
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
    set Column, #$F
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
    set PrintSize, #$16
    set Column, #5
    jsr wait_nmi_processed
    store StackPointer, PointerTilePack
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

    set TilePntr1, #$21
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
    set CharacterOffset, #0

loc_17A50E:
    ldy CharacterOffset
    lda #0
    sta Character1 + BATTLE::Script,Y
    lda Character1 + BATTLE::Resist,Y
    and #$F7
    sta Character1 + BATTLE::Resist,Y
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17A535
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
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
    set Auto, #1
    store #stru_159714, SpriteTable + ANIM_SPRITE::pFrame+$E0
    set SpriteTable + ANIM_SPRITE::Tiles+$E0, #4
    set SpriteTable + ANIM_SPRITE::TileID+$E0, #0
    sta SpriteTable + ANIM_SPRITE::ShiftX+$E0
    sta SpriteTable + ANIM_SPRITE::ShiftY+$E0
    set SpriteTable + ANIM_SPRITE::PosX+$E0, #$D0
    set SpriteTable + ANIM_SPRITE::PosY+$E0, #$47
    set NMIFlags, #1
    clc
    jmp nullsub_6
; End of function auto


; =============== S U B R O U T I N E =======================================


battle_psi:
    jsr get_psi_pointer
    set Pointer, #0
    ldy #7

loc_17A850:
    lda (pCharacter),Y
    ora Pointer
    sta Pointer
    dey
    bne loc_17A850
    lda Pointer
    beq loc_17A868
    jsr choose_psi
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
    set Pointer, #0
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

    set TargetOffset, #$80
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
    lda Character1 + BATTLE::Status,Y
    bmi sub_17A8E7
    lda Character1 + BATTLE::Status,Y
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

    set Row, #$12
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
    set unk_588, #4
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
    set byte_590, #$21
    ldy #0
    lda (AddrForJmp),Y
    sta byte_591
    iny
    lda (AddrForJmp),Y
    sta byte_592
    set byte_593, #0
    jmp bank16
; End of function set_item_name_tiles


; =============== S U B R O U T I N E =======================================


select_battle_goods:
.import stru_169F95

    store #stru_169F95, pCursor
    store pCharacter, pStr
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


choose_psi:
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
    beq choose_psi
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
; End of function choose_psi


; =============== S U B R O U T I N E =======================================


print_list:
    tya
    asl A
    asl A
    asl A
    sta Pointer
    set Pointer+1, #$80
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
    set unk_588, #4
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

    store #ListCursor, pCursor
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
    store #stru_169F9D, pCursor
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
    jsr script      ; out message, animation
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

    set Pointer, #0
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
    set AddrForJmp, Pointer

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


script:
    .import BattleScripts
    .importzp pBattleScript

    ldy CharacterOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    bne @check_alive
    lda #Empty
    jmp print_message
; ---------------------------------------------------------------------------

@check_alive:
    lda Character1 + BATTLE::Status,Y
    and #$80
    beq @check_stone
    lda #Empty
    jmp print_message
; ---------------------------------------------------------------------------

@check_stone:
    lda Character1 + BATTLE::Status,Y
    and #$40
    beq @check_cantmove
    lda #Turned
    jmp print_message
; ---------------------------------------------------------------------------

@check_cantmove:
    lda Character1 + BATTLE::Status,Y
    and #$20
    beq @check_asleep
    lda #CantMove
    jmp print_message
; ---------------------------------------------------------------------------

@check_asleep:
    lda Character1 + BATTLE::Status,Y
    and #$10
    beq @check_daydream
    jsr randomize
    and #$E0
    bne @still_asleep
    lda Character1 + BATTLE::Status,Y
    and #$EF
    sta Character1 + BATTLE::Status,Y
    sty TargetOffset
    jsr statistical_frame
    lda #WokeUp
    jmp print_message
; ---------------------------------------------------------------------------

@still_asleep:
    lda #IsAsleep
    jmp print_message
; ---------------------------------------------------------------------------

@check_daydream:
    lda Character1 + BATTLE::Status,Y
    and #4
    beq @check_wheeze
    lda #DayDreaming
    jmp print_message
; ---------------------------------------------------------------------------

@check_wheeze:
    lda Character1 + BATTLE::Resist,Y
    and #2
    beq check_bound
    lda Character1 + BATTLE::Script,Y
    cmp #$76
    beq check_bound
    lda #Wheeze
    jmp print_message
; ---------------------------------------------------------------------------

check_bound:
    lda Character1 + BATTLE::Resist,Y
    and #$20
    beq @check_confused
    jsr randomize
    and #$C0
    bne @still_bound
    lda Character1 + BATTLE::Resist,Y
    and #$DF
    sta Character1 + BATTLE::Resist,Y
    lda #EscapedRope
    jmp print_message
; ---------------------------------------------------------------------------

@still_bound:
    lda #Bound
    jmp print_message
; ---------------------------------------------------------------------------

@check_confused:
    lda Character1 + BATTLE::Status,Y
    and #8
    beq @load_script_id
    lda #SoConfused
    jsr print_text

@load_script_id:
    ldy CharacterOffset
    lda Character1 + BATTLE::Script,Y

get_script_pointer:
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

execute_script:
    ldy #0
    lda (pBattleScript),Y
    lsr A
    lsr A
    lsr A
    lsr A
    jsr script_high
; ---------------------------------------------------------------------------
    .word step_1, battle_event, use_psi, print_used_item, change_parameter
    .word get_target, action, script_bcc, script_bcs, script_sub
    .word script_jmp, script_loop, item_gone
; ---------------------------------------------------------------------------

print_message:
    jmp print_text
; End of function script


; =============== S U B R O U T I N E =======================================


step_1:
    lda #1
    jmp next_battle_script
; End of function step_1


; =============== S U B R O U T I N E =======================================


battle_event:
    .import script_low

    ldy #0
    lda (pBattleScript),Y
    and #$F
    jsr script_low
; End of function battle_event
; ---------------------------------------------------------------------------
    .word step1, enemy_approach, enemy_removal, hit, blast
    .word call_backup, sowed_seed, escape_battle, hit_fire, hit_freeze
    .word hit_thunder, hit_beam, hit_smash

; =============== S U B R O U T I N E =======================================


step1:
    lda #1
    jmp get_script_pntr
; End of function step1


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
    set Value+1, #0
    set byte_590, #$21
    ldy #0
    lda (Pointer),Y
    sta byte_591
    iny
    lda (Pointer),Y
    sta byte_592
    set byte_593, #0
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
    set Sound, #0
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
    set Sound, #0
    lda #2
    jmp get_script_pntr
; End of function print_used_item


; =============== S U B R O U T I N E =======================================


item_gone:
    ldy #1
    lda (pBattleScript),Y
    jsr get_itemID_pntr
    jsr set_item_name_tiles
    ldy CharacterOffset
    bmi step2
    ldy #0
    lda (pBattleScript),Y
    and #$F
    jsr script_high
; End of function item_gone
; ---------------------------------------------------------------------------
    .word item_broken, turn2stone, became_empty

; =============== S U B R O U T I N E =======================================


item_broken:
    jsr randomize
    and #$E0
    bne step2
    jsr remove_item
    lda #WasBroken
    jsr print_text
    jmp step2
; End of function item_broken


; =============== S U B R O U T I N E =======================================


turn2stone:
    jsr randomize
    and #$E0
    bne step2
    jsr remove_item
    lda #TurnedIntoStone
    jsr print_text
    jmp step2
; End of function turn2stone


; =============== S U B R O U T I N E =======================================


became_empty:
    .import sram_read_enable

    jsr sram_write_enable
    dec CurrentGame + PURE_SAVE::field_1F
    jsr sram_read_enable
    lda CurrentGame + PURE_SAVE::field_1F
    bne step2
    jsr remove_item
    lda #BecameEmpty
    jsr print_text

step2:
    lda #2
    jmp get_script_pntr
; End of function became_empty


; =============== S U B R O U T I N E =======================================


get_target:
    ldy #0
    lda (pBattleScript),Y
    and #$F
    jsr script_low
; End of function get_target

; ---------------------------------------------------------------------------
    .word @step_1, nullsub_4, get_target_offset, get_group_by_status1, get_group_by_status2
    .word char2target, get_group, get_next_target

; =============== S U B R O U T I N E =======================================


@step_1:
    lda #1
    jmp get_script_pntr
; End of function @step_1


; =============== S U B R O U T I N E =======================================


action:
    ldy #1
    lda (pBattleScript),Y
    sta pTileID
    dey
    lda (pBattleScript),Y
    and #$F
    jsr script_low
; ---------------------------------------------------------------------------
    .word @step_2, calc_attack, get_offense, set_value, boss_msg
    .word set_flags, enemy_check, choose_sound, pTileID2sound, print_pTileID
    .word play_pTileID

; =============== S U B R O U T I N E =======================================


@step_2:
    lda #2
    jmp get_script_pntr
; End of function step_2


; =============== S U B R O U T I N E =======================================


script_bcc:
    jsr low_script
    bcc new_script
    jmp step_3
; End of function script_bcc


; =============== S U B R O U T I N E =======================================


script_bcs:
    jsr low_script
    bcc step_3
; End of function script_bcs


; =============== S U B R O U T I N E =======================================


new_script:
    ldy #1
    lda (pBattleScript),Y
    pha
    iny
    lda (pBattleScript),Y
    sta pBattleScript+1
    pla
    sta pBattleScript
    jmp execute_script
; End of function new_script


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
    .word nullsub_5, check_group_status, fight_lower, fight_check_simple, check_resist_chance
    .word check_no_vechicle, check_franklin, check_target_status, check_target_flags, coin_chance
    .word check_immune_status, check_immune_sleep, check_object, check_target_up, check_final_bosses

nullsub_5:
    rts

; =============== S U B R O U T I N E =======================================


script_sub:
    save pBattleScript
    jsr new_battle_script
    jsr execute_script
    restore pBattleScript
    lda #3
    jmp get_script_pntr
; End of function script_sub


; =============== S U B R O U T I N E =======================================


script_jmp:
    jsr new_battle_script
    jmp execute_script
; End of function script_jmp


; =============== S U B R O U T I N E =======================================


script_loop:
    ldy #0
    lda (pBattleScript),Y
    and #$F
    tax
    lda #1
    jsr next_battle_script

@next_loop:
    txa
    pha
    save pBattleScript
    jsr execute_script
    store pBattleScript, Pointer
    restore pBattleScript
    pla
    tax
    dex
    bne @next_loop
    store Pointer, pBattleScript
    jmp execute_script
; End of function script_loop


; =============== S U B R O U T I N E =======================================


get_script_pntr:
    jsr next_battle_script
    jmp execute_script
; End of function get_script_pntr


; =============== S U B R O U T I N E =======================================


new_battle_script:
    ldy #1
    lda (pBattleScript),Y
    pha
    iny
    lda (pBattleScript),Y
    sta pBattleScript+1
    pla
    sta pBattleScript
    rts
; End of function new_battle_script


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


enemy_approach:
    ldy CharacterOffset
    jmp spawn_enemy
; End of function enemy_approach


; =============== S U B R O U T I N E =======================================


enemy_removal:
    ldy TargetOffset
    bpl @player
    jmp despawn_enemy
; ---------------------------------------------------------------------------

@player:
    set byte_47, #1
    rts
; End of function enemy_removal


; =============== S U B R O U T I N E =======================================


hit:
    ldy TargetOffset
    bpl @player
    jmp black_flash
; ---------------------------------------------------------------------------

@player:
    jmp black_shake
; End of function hit


; =============== S U B R O U T I N E =======================================


blast:
    ldy TargetOffset
    bpl @player
    jmp blink_enemy
; ---------------------------------------------------------------------------

@player:
    jmp blast_black
; End of function blast


; =============== S U B R O U T I N E =======================================


call_backup:
    lda #CriedOut
    jsr print_text
    jsr summon_ally
    bcs locret_17B021
    lda #HoweverNoOne
    jsr print_text

locret_17B021:
    rts
; End of function call_backup


; =============== S U B R O U T I N E =======================================


sowed_seed:
    lda #Sowed
    jsr print_text
    jsr summon_ally
    bcs locret_17B031
    lda #Silence
    jsr print_text

locret_17B031:
    rts
; End of function sowed_seed


; =============== S U B R O U T I N E =======================================


escape_battle:
    set byte_47, #2
    rts
; End of function escape_battle


; =============== S U B R O U T I N E =======================================


hit_fire:
    ldy TargetOffset
    bpl @player
    jmp red_flash
; ---------------------------------------------------------------------------

@player:
    jmp red_shake
; End of function hit_fire


; =============== S U B R O U T I N E =======================================


hit_freeze:
    ldy TargetOffset
    bpl @player
    jmp indigo_flash
; ---------------------------------------------------------------------------

@player:
    jmp indigo_shake
; End of function hit_freeze


; =============== S U B R O U T I N E =======================================


hit_thunder:
    ldy TargetOffset
    bpl @player
    jmp blue_flash
; ---------------------------------------------------------------------------

@player:
    jmp blue_shake
; End of function hit_thunder


; =============== S U B R O U T I N E =======================================


hit_beam:
    ldy TargetOffset
    bpl @player
    jmp yellow_flash
; ---------------------------------------------------------------------------

@player:
    jmp yellow_shake
; End of function hit_beam


; =============== S U B R O U T I N E =======================================


hit_smash:
    ldy TargetOffset
    bpl @player
    jmp green_flash
; ---------------------------------------------------------------------------

@player:
    jmp green_impact
; End of function hit_smash


; =============== S U B R O U T I N E =======================================


summon_ally:
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
    jsr spawn_enemy
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
; End of function summon_ally


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
    lda Character1 + BATTLE::Status,Y
    bmi loc_17B0CA

check_target_status:
    ldy TargetOffset
    lda Character1 + BATTLE::EnemyGroup,Y
    beq loc_17B0CA
    lda Character1 + BATTLE::Status,Y
    bmi loc_17B0CA
    clc
    rts
; ---------------------------------------------------------------------------

loc_17B0CA:
    sec
    rts
; End of function check_group_status


; =============== S U B R O U T I N E =======================================


fight_lower:
    lda Vechicle
    bne fight_disadvantage
    ldy TargetOffset
    lda Character1 + BATTLE::Status,Y
    and #$70
    bne fight_disadvantage
    lda Character1 + BATTLE::Resist,Y
    bmi fight_disadvantage
    lda Character1 + BATTLE::Fight,Y
    sta Pointer
    ldy CharacterOffset
    lda Character1 + BATTLE::Fight,Y
    sta AddrForJmp
    jsr get_dmg
    lda Pointer
    cmp AddrForJmp
    bcs fight_advantage

fight_disadvantage:
    clc
    rts
; ---------------------------------------------------------------------------

fight_advantage:
    sec
    rts
; End of function fight_lower


; =============== S U B R O U T I N E =======================================


fight_check_simple:
    jsr check_boss
    bcs locret_17B111
    ldy CharacterOffset
    lda Character1 + BATTLE::Fight,Y
    sta Pointer
    ldy TargetOffset
    lda Character1 + BATTLE::Fight,Y
    sta AddrForJmp
    jsr get_dmg
    lda AddrForJmp
    cmp Pointer

locret_17B111:
    rts
; End of function fight_check_simple


; =============== S U B R O U T I N E =======================================


check_resist_chance:
    ldy CharacterOffset
    lda Character1 + BATTLE::Resist,Y
    and #$80
    eor #$80
    rol A
    bcs @resist
    jsr randomize
    and #$80
    rol A

@resist:
    rts
; End of function check_resist_chance


; =============== S U B R O U T I N E =======================================


check_no_vechicle:
    lda CharacterOffset
    bmi loc_17B12F
    lda Vechicle
    beq loc_17B12F
    clc
    rts
; ---------------------------------------------------------------------------

loc_17B12F:
    sec
    rts
; End of function check_no_vechicle


; =============== S U B R O U T I N E =======================================


check_franklin:
    ldy TargetOffset
    bmi loc_17B14C
    lda Character1 + BATTLE::PointerChr,Y
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    sta Pointer+1
    ldy #$20

@next_item:
    lda (Pointer),Y
    cmp #$68
    beq loc_17B14E
    iny
    cpy #$28
    bne @next_item

loc_17B14C:
    sec
    rts
; ---------------------------------------------------------------------------

loc_17B14E:
    clc
    rts
; End of function check_franklin


; =============== S U B R O U T I N E =======================================


check_target_flags:
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
; End of function check_target_flags


; =============== S U B R O U T I N E =======================================


coin_chance:
    jsr randomize
    asl A
    rts
; End of function coin_chance


; =============== S U B R O U T I N E =======================================


check_immune_status:
    ldy TargetOffset
    lda Character1 + BATTLE::Flags,Y
    and #$80
    eor #$80
    rol A
    rts
; End of function check_immune_status


; =============== S U B R O U T I N E =======================================


check_immune_sleep:
    ldy TargetOffset
    lda Character1 + BATTLE::Flags,Y
    and #4
    eor #4
    cmp #1
    rts
; End of function check_immune_sleep


; =============== S U B R O U T I N E =======================================


check_object:
    .importzp ObjectNumWithChar

    lda ObjectNumWithChar
    bne loc_17B186
    sec
    rts
; ---------------------------------------------------------------------------

loc_17B186:
    clc
    rts
; End of function check_object


; =============== S U B R O U T I N E =======================================


check_target_up:
    ldy TargetOffset
    lda Character1 + BATTLE::Scripts+1,Y
    and #6
    eor #6
    cmp #1
    rts
; End of function check_target_up


; =============== S U B R O U T I N E =======================================


check_final_bosses:
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
; End of function check_final_bosses


; =============== S U B R O U T I N E =======================================


get_dmg:
    set Pointer+1, #1
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
    sbc #102
    bcs loc_17B1BD
    lda #0

loc_17B1BD:
    sta Pointer
    jsr randomize
    sta AddrForJmp
    rts
; End of function get_dmg


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
    lda Character1 + BATTLE::Status,Y
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
    lda Character1 + BATTLE::Status,Y
    bmi select_target
    sty TargetOffset
    rts
; End of function get_target_offset


; =============== S U B R O U T I N E =======================================


get_group_by_status1:
    ldy CharacterOffset
    lda Character1 + BATTLE::Status,Y
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
; End of function get_group_by_status1


; =============== S U B R O U T I N E =======================================


get_group_by_status2:
    ldy CharacterOffset
    lda Character1 + BATTLE::Status,Y
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
; End of function get_group_by_status2


; =============== S U B R O U T I N E =======================================


char2target:
    set TargetOffset, CharacterOffset
    rts
; End of function char2target


; =============== S U B R O U T I N E =======================================


get_group:
    ldx #0
    ldy CharacterOffset
    bpl loc_17B245
    ldx #$80

loc_17B245:
    stx TargetOffset
    rts
; End of function get_group


; =============== S U B R O U T I N E =======================================


get_next_target:
    clc
    lda TargetOffset
    adc #$20
    sta TargetOffset
    rts
; End of function get_next_target


; =============== S U B R O U T I N E =======================================


calc_attack:
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
    bcc weak_attack
    lsr pTileID+1
    ror pTileID
    sec
    lda TilepackMode
    sbc pTileID
    sta Pointer
    lda TilesCount
    sbc pTileID+1
    sta Pointer+1

boss:
    lda BossID
    cmp #1
    bne @final_check
    jsr randomize
    and #7
    ora #4
    sta Pointer
    set Pointer+1, #0

@final_check:
    lda Pointer
    ora Pointer+1
    bne @store_value
    inc Pointer

@store_value:
    store Pointer, Value
    rts
; ---------------------------------------------------------------------------

weak_attack:
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
    bcs @halve_result
    set Pointer, #0
    sta Pointer+1

@halve_result:
    lsr Pointer+1
    ror Pointer
    lsr Pointer+1
    ror Pointer
    jmp boss
; End of function calc_attack


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
    set Value+1, #0

locret_17B2F8:
    rts
; End of function get_offense


; =============== S U B R O U T I N E =======================================


set_value:
    set Value, pTileID
    set Value+1, #0
    rts
; End of function set_value


; =============== S U B R O U T I N E =======================================


boss_msg:
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
; End of function boss_msg


; =============== S U B R O U T I N E =======================================


set_flags:
    .importzp Flags

    lda Flags
    ora pTileID
    sta Flags
    rts
; End of function set_flags


; =============== S U B R O U T I N E =======================================


enemy_check:
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
; End of function enemy_check


; =============== S U B R O U T I N E =======================================


sub_17B3BD:
    lda #ItNoEffect
    jmp print_text
; End of function sub_17B3BD


; =============== S U B R O U T I N E =======================================


choose_sound:
    ldx #$F
    lda CharacterOffset
    bmi loc_17B3CA
    ldx #1

loc_17B3CA:
    txa
    jmp play_sound
; End of function choose_sound


; =============== S U B R O U T I N E =======================================


pTileID2sound:
    set Sound, pTileID
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


attack_outcome:
    tya
    bmi check_explode
    lda Character1 + BATTLE::Scripts+1,Y
    cmp #6
    bne check_explode
    set BossID, #0
    ldx #$88
    jmp final_action
; ---------------------------------------------------------------------------

check_explode:
    jsr get_final_action
    cmp #1
    bne @check_burn
    ldx #$19
    jmp final_action
; ---------------------------------------------------------------------------

@check_burn:
    cmp #2
    bne @enemy_defeated
    ldx #$1A
    jmp final_action
; ---------------------------------------------------------------------------

@enemy_defeated:
    jsr kill_enemy
    jmp defeat_msg
; ---------------------------------------------------------------------------

final_action:
    lda TargetOffset
    pha
    lda CharacterOffset
    pha
    save pBattleScript
    sty CharacterOffset
    txa
    jsr get_script_pointer
    restore pBattleScript
    pla
    sta CharacterOffset
    pla
    sta TargetOffset
    tay
    jmp defeat_msg
; End of function attack_outcome


; =============== S U B R O U T I N E =======================================


kill_enemy:
    .import Sound1

    tya
    pha
    lda #0
    sta Character1 + BATTLE::Health,Y
    sta Character1 + BATTLE::Health+1,Y
    lda #$80
    sta Character1 + BATTLE::Status,Y
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
    set Sound1, #6
    pla
    tay
    jsr despawn_enemy
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
; End of function kill_enemy


; =============== S U B R O U T I N E =======================================


defeat_msg:
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
; End of function defeat_msg


; =============== S U B R O U T I N E =======================================


get_final_action:
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
; End of function get_final_action


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


spawn_enemy:
    .import wait_nmi
    .importzp CHRFlags, BankPPU_X000

    jsr get_enemy_ptr
    lda Character1 + BATTLE::Status,Y
    and #$7F
    sta Character1 + BATTLE::Status,Y
    set Pointer, #$22
    set Pointer+1, #$FF
    lda #$FF
    sta AddrForJmp
    jsr draw_enemy
    set CHRFlags, #0
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
    set NMIFlags, #1
    jsr wait_nmi
    set NMIFlags, #$80
    rts
; End of function spawn_enemy


; =============== S U B R O U T I N E =======================================


despawn_enemy:
    jsr get_enemy_ptr
    lda #0
    ldx pTileID+1
    sta SpriteTable,X
    set NMIFlags, #1
    jsr wait_nmi
    set NMIFlags, #$80
    lda #0
    sta Character1 + BATTLE::EnemyGroup,Y
    set Pointer, #0
    set Pointer+1, #$23
    set AddrForJmp, #1
    jsr draw_enemy
    lda Character1 + BATTLE::Letter,Y
    and #3
    tax
    lda #$7C
    sta BankPPU_X000,X
    rts
; End of function despawn_enemy


; =============== S U B R O U T I N E =======================================


draw_enemy:
    .importzp SplitLine

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
    set CHRFlags, #$80

loc_17B59F:
    set SplitLine, Pointer
    and #1
    bne loc_17B5AD
    lda CHRFlags
    eor #$40
    sta CHRFlags

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


get_enemy_ptr:
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
; End of function get_enemy_ptr


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
    set Sound1, #5
    jsr randomize
    and #3
    tax
    inx

loc_17B60D:
    txa
    pha
    set Sound1, #1
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
    jsr get_enemy_ptr
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
    set NMIFlags, #1
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
    set NMIFlags, #1
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


blink_enemy:
    lda #2
    jsr play_sound
    jsr get_enemy_ptr
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
    set NMIFlags, #1
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    set NMIFlags, #$80
    ldy TargetOffset
    jsr spawn_enemy
    pla
    ldy TargetOffset
    sta Character1 + BATTLE::TargetOff,Y
    rts
; End of function blink_enemy


; =============== S U B R O U T I N E =======================================


black_shake:
    .import ScreenEffects1

    ldyx #ScreenEffects1
    lda #BLACK
    jmp screen_shift_effects
; End of function black_shake


; =============== S U B R O U T I N E =======================================


red_shake:
    ldyx #ScreenEffects1
    lda #MEDIUM_RED
    jmp screen_shift_effects
; End of function red_shake


; =============== S U B R O U T I N E =======================================


indigo_shake:
    ldyx #ScreenEffects1
    lda #MEDIUM_INDIGO
    jmp screen_shift_effects
; End of function indigo_shake


; =============== S U B R O U T I N E =======================================


blue_shake:
    ldyx #ScreenEffects1
    lda #LIGHTEST_BLUE
    jmp screen_shift_effects
; End of function blue_shake


; =============== S U B R O U T I N E =======================================


yellow_shake:
    ldyx #ScreenEffects1
    lda #LIGHT_YELLOW
    jmp screen_shift_effects
; End of function yellow_shake


; =============== S U B R O U T I N E =======================================


green_impact:
    .import ScreenEffects3

    ldyx #ScreenEffects3
    lda #LIGHT_GREEN
    jmp screen_shift_effects
; End of function green_impact


; =============== S U B R O U T I N E =======================================


black_impact:
    ldyx #ScreenEffects3
    lda #BLACK
    jmp screen_shift_effects
; End of function black_impact


; =============== S U B R O U T I N E =======================================


blast_black:
    .import ScreenEffects2

    ldyx #ScreenEffects2
    lda #BLACK
    jmp screen_shift_effects
; End of function blast_black


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
    set NMIFlags, #1
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    cpy AddrForJmp+1
    bne loc_17B722
    dec AddrForJmp
    bne loc_17B720
    set ShiftX, #0
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
    lda Character1 + BATTLE::Status,Y
    and #$E0
    beq check_enemies

loc_17B77B:
    tya
    clc
    adc #$20
    tay
    bpl loc_17B766
    set Character1 + BATTLE::Status, #$80
    sta Character2 + BATTLE::Status
    sta Character3 + BATTLE::Status
    sta Character4 + BATTLE::Status
    lda BossID
    cmp #4
    bne loc_17B7A7
    set byte_47, #3
    lda #4
    jsr play_sound
    lda #ZAP
    jsr print_text
    jmp loc_17B7B0
; ---------------------------------------------------------------------------

loc_17B7A7:
    set CharacterOffset, #0
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
    lda Vechicle
    beq loc_17B7C9
    lda #TankBroken
    jsr print_text

loc_17B7C9:
    lda BossID
    cmp #6
    bne loc_17B7E7
    set TargetOffset, #0
    jsr sub_17B8D4
    set TargetOffset, #$20
    jsr sub_17B8D4
    set TargetOffset, #$40
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
    .word step_2, recover_hp, recover_pp, increase_speed, increase_off
    .word increase_defense, restore_hp, resolve_attack, decrease_def, decrease_fight
    .word knock_out, critical_dmg, decrease_offense, decrease_defense, increase_exp
    .word trigger_kill, random_damage, approach_enemy, increase_offense, blinded
    .word poisoned, confused, put2sleep, cant_move, psi_blocked
    .word set_resist, shielded, barrier, bound, stone
    .word asthma, strange, dissipated, wake_up, can_move
    .word asthma_pass, regained, destroyed, revives, recovered_stone
    .word snatched, took_away, defeated, lost_senses

; =============== S U B R O U T I N E =======================================


step_2:
    lda #2
    jmp get_script_pntr
; End of function step_2


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


trigger_kill:
    ldy CharacterOffset
    jmp kill_enemy
; End of function trigger_kill


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


restore_hp:
    set Value, #$FF
    sta Value+1
    jmp loc_17B86B
; End of function restore_hp


; =============== S U B R O U T I N E =======================================


sub_17B8D4:
    set Value, #$FF
    sta Value+1
    lda #0
    ldx TargetOffset
    sta Character1 + BATTLE::Status,X
    ldy #CHARACTER::MaxHealth
    jsr sub_17BEF2
    ldx #$A
    lda #Empty
    jsr sound_frame_text
    ldx #20
    jmp delay
; End of function sub_17B8D4


; =============== S U B R O U T I N E =======================================


random_damage:
    jsr get_random_value
    ldy CharacterOffset
    sec
    lda Character1 + BATTLE::Health,Y
    sbc Pointer
    sta Character1 + BATTLE::Health,Y
    lda Character1 + BATTLE::Health+1,Y
    sbc Pointer+1
    sta Character1 + BATTLE::Health+1,Y
    bcc fatal_damage
    ora Character1 + BATTLE::Health,Y
    beq fatal_damage
    jmp statistical_frame
; ---------------------------------------------------------------------------

fatal_damage:
    jmp attack_outcome
; End of function random_damage


; =============== S U B R O U T I N E =======================================


resolve_attack:
    lda BossID
    cmp #5
    beq check_reflect
    cmp #6
    beq check_reflect
    jsr check_boss
    bcc check_reflect

dmg_range:
    ldx #3
    ldy CharacterOffset
    lda Character1 + BATTLE::Scripts+1,Y
    cmp #6
    bne @dmg_value
    ldx #$3F

@dmg_value:
    stx Pointer
    jsr randomize
    and Pointer
    sta Value
    set Value+1, #0

check_reflect:
    lda TargetOffset
    pha
    jsr get_random_value
    ldy TargetOffset
    lda Character1 + BATTLE::Resist,Y
    and #4
    beq @dmg_resist1
    save Pointer
    lda #BouncedBack
    jsr print_text
    restore Pointer
    ldy CharacterOffset
    sty TargetOffset

@dmg_resist1:
    lda Character1 + BATTLE::Resist,Y
    and #$10
    beq @dmg_resist2
    lsr Pointer+1
    ror Pointer

@dmg_resist2:
    lda Character1 + BATTLE::Resist,Y
    and #8
    beq @correct_dmg
    lsr Pointer+1
    ror Pointer

@correct_dmg:
    jsr damage_correction
    lda Pointer
    ora Pointer+1
    bne @store_dmg
    inc Pointer

@store_dmg:
    set byte_590, Pointer
    pha
    set byte_591, Pointer+1
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
    jsr special_enemy
    bcs check_confuse

loc_17B9A5:
    jsr check_boss
    bcs check_confuse
    ldy TargetOffset
    sec
    lda Character1 + BATTLE::Health,Y
    sbc Pointer
    sta Character1 + BATTLE::Health,Y
    lda Character1 + BATTLE::Health+1,Y
    sbc Pointer+1
    sta Character1 + BATTLE::Health+1,Y
    bcc kill_target
    ora Character1 + BATTLE::Health,Y
    beq kill_target

check_confuse:
    lda Character1 + BATTLE::Status,Y
    and #$C
    beq check_asleep
    jsr randomize
    and #$C0
    bne check_asleep
    lda Character1 + BATTLE::Status,Y
    and #$F3
    sta Character1 + BATTLE::Status,Y
    lda #WasntConfused
    jsr print_text

check_asleep:
    lda Character1 + BATTLE::Status,Y
    and #$10
    beq update_gui
    jsr randomize
    and #$C0
    bne update_gui
    lda Character1 + BATTLE::Status,Y
    and #$EF
    sta Character1 + BATTLE::Status,Y
    lda #WakeUp
    jsr print_text

update_gui:
    pla
    sta TargetOffset
    jmp statistical_frame
; ---------------------------------------------------------------------------

kill_target:
    jsr attack_outcome
    pla
    sta TargetOffset
    rts
; End of function resolve_attack


; =============== S U B R O U T I N E =======================================


decrease_def:
    jsr get_random_value
    ldy TargetOffset
    jsr damage_correction
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


knock_out:
    jsr check_boss
    bcs skip_knockout
    jsr special_enemy
    bcs skip_knockout
    ldy TargetOffset
    jmp attack_outcome
; ---------------------------------------------------------------------------

skip_knockout:
    jmp dmg_range
; End of function knock_out


; =============== S U B R O U T I N E =======================================


critical_dmg:
    jsr check_boss
    bcs loc_17BA6B
    jsr special_enemy
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
; End of function critical_dmg


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


approach_enemy:
    jsr get_random_value
    ldx CharacterOffset
    ldy #CHARACTER::Offense
    jsr sub_17BDE8
    lda #Approached
    jmp print_text
; End of function approach_enemy


; =============== S U B R O U T I N E =======================================


increase_exp:
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
    set pTileID, #$FF
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
; End of function increase_exp


; =============== S U B R O U T I N E =======================================


blinded:
    jsr check_boss
    bcs wasted
    jsr sub_17BF58
    bcs wasted
    lda #Blinded
    ldy #0
    ldx #$80
    jmp loc_17BD7F
; ---------------------------------------------------------------------------

wasted:
    jmp print_no_effect
; End of function blinded


; =============== S U B R O U T I N E =======================================


poisoned:
    jsr check_boss
    bcs wasted
    jsr sub_17BF58
    bcs wasted
    lda #WasPoisoned
    ldy #0
    ldx #2
    jmp sub_17BD69
; End of function poisoned


; =============== S U B R O U T I N E =======================================


confused:
    jsr check_boss
    bcs wasted
    jsr special_enemy
    bcs wasted
    jsr sub_17BF66
    bcs wasted
    lda #Senses
    ldy #0
    ldx #8
    jmp sub_17BD69
; End of function confused


; =============== S U B R O U T I N E =======================================


put2sleep:
    jsr check_boss
    bcs wasted
    jsr special_enemy
    bcs wasted
    jsr sub_17BF66
    bcs wasted
    lda #PutSleep
    ldy #0
    ldx #$10
    jmp sub_17BD69
; End of function put2sleep


; =============== S U B R O U T I N E =======================================


cant_move:
    jsr check_boss
    bcs wasted
    jsr special_enemy
    bcs wasted
    jsr sub_17BF58
    bcs wasted
    lda #CannotMove
    ldy #0
    ldx #$20
    jmp sub_17BD69
; End of function cant_move


; =============== S U B R O U T I N E =======================================


psi_blocked:
    jsr check_boss
    bcs wasted
    ldy TargetOffset
    lda Character1 + BATTLE::PointerChr,Y
    sta Pointer
    lda Character1 + BATTLE::PointerChr+1,Y
    sta Pointer+1
    ldy #ENEMY::PP
    lda (Pointer),Y
    iny
    ora (Pointer),Y
    beq wasted
    lda #Blocked
    ldy #0
    ldx #$40
    jmp loc_17BD7F
; End of function psi_blocked


; =============== S U B R O U T I N E =======================================


set_resist:
    ldy TargetOffset
    lda Character1 + BATTLE::Resist,Y
    ora #8
    sta Character1 + BATTLE::Resist,Y
    rts
; End of function set_resist


; =============== S U B R O U T I N E =======================================


shielded:
    lda #Shielded
    ldy #$A
    ldx #$10
    jmp loc_17BD7F
; End of function shielded


; =============== S U B R O U T I N E =======================================


barrier:
    jsr chk_boss
    bcs loc_17BB9A
    lda #Surrounded
    ldy #$A
    ldx #4
    jmp loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BB9A:
    jmp print_no_effect
; End of function barrier


; =============== S U B R O U T I N E =======================================


bound:
    jsr check_boss
    bcs loc_17BB9A
    jsr special_enemy
    bcs loc_17BB9A
    lda #WasBound
    ldy #0
    ldx #$20
    jmp loc_17BD7F
; End of function bound


; =============== S U B R O U T I N E =======================================


stone:
    jsr check_boss
    bcs loc_17BB9A
    jsr special_enemy
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
; End of function stone


; =============== S U B R O U T I N E =======================================


asthma:
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
; End of function asthma


; =============== S U B R O U T I N E =======================================


strange:
    jsr sub_17BF66
    bcs loc_17BB9A
    lda #SomethingStrange
    ldy #0
    ldx #4
    jmp sub_17BD69
; End of function strange


; =============== S U B R O U T I N E =======================================


dissipated:
    lda #Dissipated
    ldy #$A
    ldx #2
    jmp loc_17BD95
; End of function dissipated


; =============== S U B R O U T I N E =======================================


wake_up:
    lda #WakeUp
    ldy #$A
    ldx #$10
    jmp loc_17BD95
; End of function wake_up


; =============== S U B R O U T I N E =======================================


can_move:
    lda #CanMove
    ldy #$A
    ldx #$20
    jmp loc_17BD95
; End of function can_move


; =============== S U B R O U T I N E =======================================


asthma_pass:
    lda #AsthmaAttackPass
    ldy #$A
    ldx #2
    jmp loc_17BDAB
; End of function asthma_pass


; =============== S U B R O U T I N E =======================================


regained:
    lda #Regained
    ldy #$A
    ldx #$C
    jmp loc_17BD95
; End of function regained


; =============== S U B R O U T I N E =======================================


destroyed:
    lda #Destroyed
    ldy #2
    ldx #$10
    jmp loc_17BDAB
; End of function destroyed


; =============== S U B R O U T I N E =======================================


recovered_stone:
    lda #RecoveredStone
    ldy #$A
    ldx #$40
    jmp loc_17BD95
; End of function recovered_stone


; =============== S U B R O U T I N E =======================================


revives:
    ldy TargetOffset
    lda Character1 + BATTLE::Status,Y
    and #$80
    beq no_revives
    lda #0
    sta Character1 + BATTLE::Status,Y
    set Value, #$FF
    sta Value+1
    ldx TargetOffset
    ldy #CHARACTER::MaxHealth
    jsr sub_17BEF2
    ldx #$A
    lda #Brought
    jmp sound_frame_text
; ---------------------------------------------------------------------------

no_revives:
    jmp print_no_effect
; End of function revives


; =============== S U B R O U T I N E =======================================


defeated:
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
    set Sound1, #3
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
    set Sound1, #3
    jsr black_impact
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
    jmp attack_outcome
; End of function defeated


; =============== S U B R O U T I N E =======================================


snatched:
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
    store byte_590, Pointer
    ldx CharacterOffset
    ldy #CHARACTER::MaxPP
    jsr sub_17BEF2
    set TargetOffset, CharacterOffset
    ldx #$A
    lda #RecoverPP
    jmp sound_frame_text
; ---------------------------------------------------------------------------

loc_17BD28:
    jmp print_no_effect
; End of function snatched


; =============== S U B R O U T I N E =======================================


took_away:
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
; End of function took_away


; =============== S U B R O U T I N E =======================================


lost_senses:
    ldy TargetOffset
    lda Character1 + BATTLE::Status,Y
    and #8
    bne locret_17BD5A
    lda Character1 + BATTLE::Status,Y
    ora #8
    sta Character1 + BATTLE::Status,Y
    lda #Senses
    jsr print_text

locret_17BD5A:
    rts
; End of function lost_senses


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
    lda Character1 + BATTLE::Status,Y
    and Pointer
    bne prnt_no_effect
    lda Character1 + BATTLE::Status,Y
    ora Pointer
    sta Character1 + BATTLE::Status,Y
    jmp take_effect
; ---------------------------------------------------------------------------

loc_17BD7F:
    pha
    jsr sub_17BDCC
    lda Character1 + BATTLE::Resist,Y
    and Pointer
    bne prnt_no_effect
    lda Character1 + BATTLE::Resist,Y
    ora Pointer
    sta Character1 + BATTLE::Resist,Y
    jmp take_effect
; ---------------------------------------------------------------------------

loc_17BD95:
    pha
    jsr sub_17BDCC
    lda Character1 + BATTLE::Status,Y
    and Pointer
    beq prnt_no_effect
    lda Character1 + BATTLE::Status,Y
    and Pointer+1
    sta Character1 + BATTLE::Status,Y
    jmp take_effect
; ---------------------------------------------------------------------------

loc_17BDAB:
    pha
    jsr sub_17BDCC
    lda Character1 + BATTLE::Resist,Y
    and Pointer
    beq prnt_no_effect
    lda Character1 + BATTLE::Resist,Y
    and Pointer+1
    sta Character1 + BATTLE::Resist,Y

take_effect:
    ldx Sound
    pla
    jsr sound_frame_text
    clc
    rts
; ---------------------------------------------------------------------------

prnt_no_effect:
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

    store Value, Pointer
    jmp random_value
; End of function get_random_value


; =============== S U B R O U T I N E =======================================


sub_17BDE8:
    jsr get_char_parameter

loc_17BDEB:
    clc
    lda Character1 + BATTLE::EnemyGroup,X
    adc Pointer
    sta TilepackMode
    lda Character1 + BATTLE::Status,X
    adc Pointer+1
    sta TilesCount
    bcc loc_17BE02
    set TilepackMode, #$FF
    sta TilesCount

loc_17BE02:
    sec
    lda pTileID
    sbc TilepackMode
    lda pTileID+1
    sbc TilesCount
    bcs loc_17BE15
    set TilepackMode, pTileID
    set TilesCount, pTileID+1

loc_17BE15:
    sec
    lda TilepackMode
    sbc Character1 + BATTLE::EnemyGroup,X
    sta byte_590
    lda TilesCount
    sbc Character1 + BATTLE::Status,X
    sta byte_591
    bcc loc_17BE38
    ora byte_590
    beq loc_17BE38
    lda TilepackMode
    sta Character1 + BATTLE::EnemyGroup,X
    lda TilesCount
    sta Character1 + BATTLE::Status,X
    rts
; ---------------------------------------------------------------------------

loc_17BE38:
    jmp sub_17BFD8
; End of function loc_17BDEB


; =============== S U B R O U T I N E =======================================


sub_17BE3B:
    jsr get_char_parameter
    clc
    lda Character1 + BATTLE::EnemyGroup,X
    adc Pointer
    sta TilepackMode
    bcc loc_17BE4C
    set TilepackMode, #$FF

loc_17BE4C:
    sec
    lda pTileID
    sbc TilepackMode
    bcs loc_17BE57
    set TilepackMode, pTileID

loc_17BE57:
    set byte_591, #0
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
    jsr get_char_parameter
    sec
    lda Character1 + BATTLE::EnemyGroup,X
    sbc Pointer
    sta TilepackMode
    lda Character1 + BATTLE::Status,X
    sbc Pointer+1
    sta TilesCount
    bcs loc_17BE8C
    set TilepackMode, #0
    sta TilesCount

loc_17BE8C:
    cpy #3
    beq loc_17BE9E
    cpy #5
    beq loc_17BE9E
    lda TilepackMode
    ora TilesCount
    bne loc_17BE9E
    set TilepackMode, #1

loc_17BE9E:
    sec
    lda Character1 + BATTLE::EnemyGroup,X
    sbc TilepackMode
    sta byte_590
    lda Character1 + BATTLE::Status,X
    sbc TilesCount
    sta byte_591
    bcc loc_17BEC1
    ora byte_590
    beq loc_17BEC1
    lda TilepackMode
    sta Character1 + BATTLE::EnemyGroup,X
    lda TilesCount
    sta Character1 + BATTLE::Status,X
    rts
; ---------------------------------------------------------------------------

loc_17BEC1:
    jmp sub_17BFD8
; End of function sub_17BE72


; =============== S U B R O U T I N E =======================================


decrease_parameter:
    jsr get_char_parameter
    sec
    lda Character1 + BATTLE::EnemyGroup,X
    sbc Pointer
    sta TilepackMode
    beq loc_17BED3
    bcs loc_17BED7

loc_17BED3:
    set TilepackMode, #1

loc_17BED7:
    set byte_591, #0
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
    jsr get_char_parameter
    store AddrForJmp, pTileID
    jmp loc_17BDEB
; End of function sub_17BEF2


; =============== S U B R O U T I N E =======================================


sub_17BF00:
    txa
    pha
    jsr get_char_parameter
    pla
    tax
    store AddrForJmp, Pointer
    jsr random_value
    jmp sub_17BDE8
; End of function sub_17BF00


; =============== S U B R O U T I N E =======================================


sub_17BF15:
    txa
    pha
    jsr get_char_parameter
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


get_char_parameter:
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
    set pTileID, #$FF
    sta pTileID+1

loc_17BF4F:
    dey
    stx pDist
    tya
    clc
    adc pDist
    tax
    rts
; End of function get_char_parameter


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


damage_correction:
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
    set Flags, #0
    rts
; End of function damage_correction


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
    set Pointer, #0
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
    set byte_590, #0
    sta byte_591
    clc
    rts
; End of function sub_17BFD8


; =============== S U B R O U T I N E =======================================


check_boss:
    lda TargetOffset
    bpl not_enemy

chk_boss:
    lda BossID
    lsr A
    bne is_boss

not_enemy:
    clc
    rts
; ---------------------------------------------------------------------------

is_boss:
    sec
    rts
; End of function check_boss


; =============== S U B R O U T I N E =======================================


special_enemy:
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
; End of function special_enemy

; end of 'BANK17'
