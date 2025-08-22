.include "item.inc"

;--------------------------------------------------------
;                           VIEW
;--------------------------------------------------------
UP          = 0
RIGHT       = 2
DOWN        = 4
LEFT        = 6

;--------------------------------------------------------
;                      ACTION TYPES
;--------------------------------------------------------
TALK        = $A
CHECK       = $B
PSI         = $C
APPROACH    = $35
VIEW        = $36

;--------------------------------------------------------
;                       OBJECT TYPES
;--------------------------------------------------------
DOOR        = 1
STAIRS      = 3
HOLE        = 4

NPC_1       = $10
WALK_NPC    = $11
STAT_NPC    = $12
STAT_NPC1   = $13
STAT_NPC2   = $14
WALK_NPC2   = $15

;--------------------------------------------------------
;                         SOUNDS
;--------------------------------------------------------
MUSIC       = 0
SOUND1      = 1
SOUND2      = 2
SOUND3      = 3

;--------------------------------------------------------
;                          MUSIC
;--------------------------------------------------------
MUSIC_SAME  = 0
MUSIC_1     = 1
MUSIC_2     = 2
MUSIC_3     = 3
MUSIC_4     = 4
MUSIC_5     = 5
MUSIC_6     = 6
MUSIC_7     = 7
MUSIC_8     = 8
MUSIC_9     = 9
MUSIC_a     = $A
MUSIC_b     = $B
MUSIC_c     = $C
MUSIC_d     = $D
MUSIC_e     = $E
MUSIC_f     = $F
MUSIC_10    = $10
MUSIC_11    = $11
MUSIC_12    = $12
MUSIC_13    = $13
MUSIC_14    = $14
MUSIC_15    = $15
MUSIC_16    = $16
MUSIC_17    = $17
MUSIC_18    = $18
MUSIC_19    = $19
MUSIC_1a    = $1A
MUSIC_1b    = $1B
MUSIC_1c    = $1C
MUSIC_1d    = $1D
MUSIC_1e    = $1E
MUSIC_1f    = $1F
MUSIC_20    = $20
MUSIC_21    = $21
MUSIC_22    = $22
MUSIC_23    = $23
MUSIC_24    = $24
MUSIC_25    = $25
MUSIC_26    = $26
MUSIC_27    = $27
MUSIC_28    = $28
MUSIC_29    = $29
MUSIC_2a    = $2A
MUSIC_2b    = $2B
MUSIC_2c    = $2C
MUSIC_2d    = $2D
MUSIC_2e    = $2E
MUSIC_2f    = $2F
MUSIC_30    = $30
MUSIC_31    = $31
MUSIC_32    = $32
MUSIC_33    = $33
MUSIC_34    = $34
MUSIC_35    = $35
MUSIC_36    = $36
MUSIC_37    = $37
MUSIC_38    = $38
MUSIC_39    = $39
MUSIC_3a    = $3A
MUSIC_3b    = $3B
MUSIC_3c    = $3C
MUSIC_3d    = $3D
MUSIC_3e    = $3E
MUSIC_3f    = $3F

;--------------------------------------------------------
;                         FLAGS
;--------------------------------------------------------
BIT7        = 0
BIT6        = 1
BIT5        = 2
BIT4        = 3
BIT3        = 4
BIT2        = 5
BIT1        = 6
BIT0        = 7

FLAG00      = $00 << 3
FLAG01      = $01 << 3
FLAG02      = $02 << 3
FLAG03      = $03 << 3
FLAG04      = $04 << 3
FLAG05      = $05 << 3
FLAG06      = $06 << 3
FLAG07      = $07 << 3
FLAG08      = $08 << 3
FLAG09      = $09 << 3
FLAG0A      = $0A << 3
FLAG0B      = $0B << 3
FLAG0C      = $0C << 3
FLAG0D      = $0D << 3
FLAG0E      = $0E << 3
FLAG0F      = $0F << 3
FLAG10      = $10 << 3
FLAG11      = $11 << 3
FLAG12      = $12 << 3
FLAG13      = $13 << 3
FLAG14      = $14 << 3
FLAG15      = $15 << 3
FLAG16      = $16 << 3
FLAG17      = $17 << 3
FLAG18      = $18 << 3
FLAG19      = $19 << 3
FLAG1A      = $1A << 3
FLAG1B      = $1B << 3
FLAG1C      = $1C << 3
FLAG1D      = $1D << 3
TUNES       = $1E << 3
FLAG1F      = $1F << 3

;--------------------------------------------------------
;                      WORLD OBJECTS
;--------------------------------------------------------

; $00 - $04
.macro entrance Type, CoorXIn, CoorYIn, ViewIn, Music, CoorXOut, CoorYOut, ViewOut
    .word CoorXIn|Type, CoorYIn|ViewIn, CoorXOut|Music, CoorYOut|ViewOut
.endmacro

; $10 - 15
.macro npc Type, CoorX, CoorY, View, Anim
    .word CoorX|Type, CoorY|View, Anim
.endmacro

; $1B
.macro unknown_18 CoorX, CoorY, View
    .word CoorX|$18, CoorY|View
.endmacro

; $19
.macro entity CoorX, CoorY, View, Anim
    .word CoorX|$19, CoorY|View, Anim
.endmacro

; $1B
.macro change_location CoorX, CoorY, View
    .word CoorX|$1B, CoorY|View
.endmacro

;--------------------------------------------------------
;                     OBJECT SCRIPTS
;--------------------------------------------------------

.macro end_script
    .byte 0
.endmacro

; $00
;check_button_pressed

; $01
; jump
.macro jump offset
    .byte 1, offset
.endmacro

; $02
; call_subroutine
.macro call object, offset
    .byte 2
    .word object
    .byte offset
.endmacro

; $03
; return
.macro return
    .byte 3
.endmacro

; $04
; timeout
.macro wait frames
    .byte 4, frames
.endmacro

; $05
; object_show_hide
.macro hide flag
    .byte 5, flag
.endmacro

; $06
; object_show_hide
.macro show flag
    .byte 6, flag
.endmacro

; $07
; infinite_loop

; $08
; display_text
.macro print msg
    .byte 8
    .word msg
.endmacro

; $09
; confirm_msg
.macro confirm offset
    .byte $09, offset
.endmacro

; $0A, $0B
; jump_nothing
.macro check_action type, offset
    .byte type, offset
.endmacro

; $0C
; jump_none_psi
.macro check_psi psi, offset
    .byte $0C, psi, offset
.endmacro

; $0D
; jump_unuse_item
.macro use_item item, offset
    .byte $D, item, offset
.endmacro

; $0E
; infinite_loop

; $0F
; reboot

; $10
; set_flag
.macro set_flag flag
    .byte $10, flag
.endmacro

; $11
; clear_flag
.macro clear_flag flag
    .byte $11, flag
.endmacro

; $12
; jump_none_flag
.macro check_flag flag, offset
    .byte $12, flag, offset
.endmacro

; $13
; decrease_counter
.macro dec_count counter
    .byte $13, counter
.endmacro

; $14
; increase_counter
.macro inc_count counter
    .byte $14, counter
.endmacro

; $15
; reset_counter
.macro reset_count counter
    .byte $15, counter
.endmacro

; $16
; jump_less
.macro cmp_count counter, value, offset
    .byte $16, counter, value, offset
.endmacro

; $17
; change_map_val

; $18
; choose_character
.macro choose_char offset
    .byte $18, offset
.endmacro

; $19
; special_character
.macro get_char_name character
    .byte $19, character
.endmacro

; $1A
; jump_none_select

; $1B
; no_add_money

; $1C
; input_number

; $1D
; load_number
.macro price value
    .byte $1D
    .word value
.endmacro

; $1E
;jump_number_less
.macro not_less value, offset
    .byte $1E
    .word value
    .byte offset
.endmacro

; $1F
; show_money
.macro cash
    .byte $1F
.endmacro

; $20
; choose_inventory
.macro choose offset
    .byte $20, offset
.endmacro

; $21
; choose_closet_item

; $22
; choose_list_item
.macro item_list item1, item2, item3, item4, offset
    .byte $22, item1, item2, item3, item4, offset
.endmacro

; $23
; none_inventory

; $24
; none_closet

; $25
; select_item
.macro select_item item
    .byte $25, item
.endmacro

; $26
; none_select
.macro buying_item item, offset
    .byte $26, item, offset
.endmacro

; $27
; none_items
.macro find_item item, offset
    .byte $27, item, offset
.endmacro

; $28
; get_money
.macro get offset
    .byte $28, offset
.endmacro

; $29
; give_money
.macro pay offset
    .byte $29, offset
.endmacro

; $2A
; add_account

; $2B
; withdraw

; $2C
; jump_unsellable
.macro unsellable offset
    .byte $2C, offset
.endmacro

; $2D
; add_inventory
.macro add_item offset
    .byte $2D, offset
.endmacro

; $2E
; remove_inventory
.macro remove_item offset
    .byte $2E, offset
.endmacro

; $2F
; add_closet

; $30
; remove_closet

; $31
; select_character_item
.macro select_char_item item, offset
    .byte $31, item, offset
.endmacro

; $32
; multiply_num
.macro percent value
    .byte $32, value
.endmacro

; $33
; no_character
.macro check_char character, offset
    .byte $33, character, offset
.endmacro

; $34
; jump_nothing

; $35
; jump_nothing
.macro approach offset
    .byte $35, offset
.endmacro

; $36
; view_compare
.macro check_view offset
    .byte $36, offset
.endmacro

; $37
; show_menu

; $38
; no_inventory

; $39
; no_closet

; $3A
; select_character
.macro sel_char character, offset
    .byte $3A, character, offset
.endmacro

; $3B
; change_object_type

; $3C
; function

; $3D
; teleport
.macro teleport CoorX, CoorY
    .byte $3D
    .word CoorX, CoorY
.endmacro

; $3E
; move_object
.macro move address
    .byte $3E
    .word address
.endmacro

; $3F
; another_object
.macro another number
    .byte $3F, number
.endmacro

; $40
; jump_nothing
.macro check_keypress offset
    .byte $40, offset
.endmacro

; $41
; teleport_save

; $42
; add_character

; $43
; remove_character
.macro remove_char number, offset
    .byte $43, number, offset
.endmacro

; $44
; set_enemy_group
.macro enemies group
    .byte $44, group
.endmacro

; $45
; multiply_char
.macro total_price
    .byte $45
.endmacro

; $46
; rocket

; $47
; airplane

; $48
; tank

; $49
; boat

; $4A
; train
.macro train_ride
    .byte $4A
.endmacro

; $4B
; elevator

; $4C
; no_vehicle

; $4D
; sub_13B317

; $4E
; sub_13B432

; $4F
; sub_13B3E8

; $50
; less_maxhp
.macro max_hp offset
    .byte $50, offset
.endmacro

; $51
; heal_hp
.macro heal value
    .byte $51, value
.endmacro

; $52
; status
.macro check_status flag, offset
    .byte $52, flag, offset
.endmacro

; $53
; remove_status
.macro clear_status flag
    .byte $53, flag
.endmacro

; $54
; below_level

; $55
; sleep

; $56
; save_game

; $57
; next_level
.macro need_exp
    .byte $57
.endmacro

; $58
; load_money

; $59
; inflict_status

; $5A, $5B - $5D
; set_music, play_sound
.macro play type, sound
    .byte $5A + type, sound
.endmacro

; $5E
; infinite_loop

; $5F
; teach_teleport

; $60
; less_maxpp
.macro max_pp offset
    .byte $60, offset
.endmacro

; $61
; recovery_pp
.macro rec_pp value
    .byte $61, value
.endmacro

; $62
; take_weapon

; $63
; select_weapon

; $64
; live_show

; $65
; less_melodies

; $66
; name_register

; $67
; darken

; $68
; land_mine

; $69
; shake

; $6A
; crystal

; $6B
; sub_13B751