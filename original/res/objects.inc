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
;                    CHARACTER STATUS
;--------------------------------------------------------
FLU         = 1
DREAM       = 4
CONFUSED    = 8
ASLEEP      = $10
PARALYCH    = $20
STONE       = $40
FAINTED     = $80

;--------------------------------------------------------
;                       OBJECT TYPES
;--------------------------------------------------------
;----Entrance----
DOOR        = 1
STAIRS      = 3
HOLE        = 4

;------NPC-------
NPC_1       = $10
WALK_NPC    = $11
STAT_NPC    = $12
STAT_NPC1   = $13
STAT_NPC2   = $14
WALK_NPC2   = $15

UNKNOWN_22  = $22

;-----???--------
UNKNOWN_18  = $18

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

; $18 Trigger
.macro unknown_18 CoorX, CoorY, View
    .word CoorX|$18, CoorY|View
.endmacro

; $19
.macro entity CoorX, CoorY, View, Anim
    .word CoorX|$19, CoorY|View, Anim
.endmacro

; $1A Animated OBJECT
.macro unknown_1A CoorX, CoorY, View, Anim
    .word CoorX|$1A, CoorY|View, Anim
.endmacro

; $1B
.macro change_location CoorX, CoorY, View
    .word CoorX|$1B, CoorY|View
.endmacro

; $1C Trigger
.macro unknown_1C CoorX, CoorY, View
    .word CoorX|$1C, CoorY|View
.endmacro

; $1D
.macro unknown_1D CoorX, CoorY, View, Anim
    .word CoorX|$1D, CoorY|View, Anim
.endmacro

; $1E
.macro vehicle CoorX, CoorY, View, Anim
    .word CoorX|$1E, CoorY|View, Anim
.endmacro

; $1F Trigger
.macro unknown_1F CoorX, CoorY, View
    .word CoorX|$1F, CoorY|View
.endmacro

; $20 Box OBJECT
.macro box CoorX, CoorY, View, Anim, Item, BoxID
    .word CoorX|$20, CoorY|View, Anim
    .byte Item, BoxID
.endmacro

; $21 Animated OBJECT
.macro unknown_21 CoorX, CoorY, View, Anim
    .word CoorX|$21, CoorY|View, Anim
.endmacro

; $23
.macro unknown_23 CoorX, CoorY, View, Anim
    .word CoorX|$23, CoorY|View, Anim
.endmacro

; $24 Animated OBJECT
.macro unknown_24 CoorX, CoorY, View, Anim
    .word CoorX|$24, CoorY|View, Anim
.endmacro

; $27
.macro unknown_27 CoorX, CoorY, View, Anim
    .word CoorX|$27, CoorY|View, Anim
.endmacro

; $28
.macro unknown_28 CoorX, CoorY, View, Anim
    .word CoorX|$28, CoorY|View, Anim
.endmacro

; $2B
.macro unknown_2B CoorX, CoorY, View, Anim
    .word CoorX|$2B, CoorY|View, Anim
.endmacro

; $2C
.macro unknown_2C CoorX, CoorY, View, Anim
    .word CoorX|$2C, CoorY|View, Anim
.endmacro

; $2D
.macro unknown_2D CoorX, CoorY, View, Anim
    .word CoorX|$2D, CoorY|View, Anim
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
.macro reboot
    .byte $F
.endmacro

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
.macro map_val field, value
    .byte $17, field, value
.endmacro

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
.macro if_char character, offset
    .byte $1A, character, offset
.endmacro

; $1B
; no_add_money
.macro transfer offset
    .byte $1B, offset
.endmacro

; $1C
; input_number
.macro input_num offset
    .byte $1C, offset
.endmacro

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
.macro select_storage offset
    .byte $21, offset
.endmacro

; $22
; choose_list_item
.macro item_list item1, item2, item3, item4, offset
    .byte $22, item1, item2, item3, item4, offset
.endmacro

; $23
; none_inventory
.macro find_item2 item, offset
    .byte $23, item, offset
.endmacro

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
.macro add_account offset
    .byte $2A, offset
.endmacro
; $2B
; withdraw
.macro withdraw offset
    .byte $2B, offset
.endmacro

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
.macro add_storage offset
    .byte $2F, offset
.endmacro

; $30
; remove_closet
.macro remove_storage offset
    .byte $30, offset
.endmacro

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
.macro confirm_menu text, no_offset, cancel_offset
    .byte $37
    .word text
    .byte no_offset, cancel_offset
.endmacro

; $38
; no_inventory
.macro check_inventory offset
    .byte $38, offset
.endmacro

; $39
; no_closet
.macro check_storage offset
    .byte $39, offset
.endmacro

; $3A
; select_character
.macro sel_char character, offset
    .byte $3A, character, offset
.endmacro

; $3B
; change_object_type
.macro change_type type
    .byte $3B, type
.endmacro

; $3C
; function
.macro function func_id
    .byte $3C, func_id
.endmacro

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
.macro teleport_save
    .byte $41
.endmacro

; $42
; add_character
.macro add_char number, offset
    .byte $42, number, offset
.endmacro

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
.macro rocket
    .byte $46
.endmacro

; $47
; airplane
.macro plane value
    .byte $47, value
.endmacro

; $48
; tank
.macro tank persons ;load vehicle, persons
    .byte $48, persons
.endmacro

; $49
; boat
.macro boat persons
    .byte $49, persons
.endmacro

; $4A
; train
.macro train_ride
    .byte $4A
.endmacro

; $4B
; elevator
.macro elevator persons
    .byte $4B, persons
.endmacro

; $4C
; no_vehicle
.macro get_off persons
    .byte $4C, persons
.endmacro

; $4D
; sub_13B317
.macro land
    .byte $4D
.endmacro

; $4E
; sub_13B432
.macro save_coor
    .byte $4E
.endmacro

; $4F
; sub_13B3E8
.macro update_coor offset
    .byte $4F, offset
.endmacro

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
.macro check_level level, offset
    .byte $54, level, offset
.endmacro

; $55
; sleep
.macro sleep
    .byte $55
.endmacro

; $56
; save_game
.macro save
    .byte $56
.endmacro

; $57
; next_level
.macro need_exp
    .byte $57
.endmacro

; $58
; load_money
.macro all_cash
    .byte $58
.endmacro

; $59
; inflict_status
.macro set_status status
    .byte $59, status
.endmacro

; $5A, $5B - $5D
; set_music, play_sound
.macro play type, sound
    .byte $5A + type, sound
.endmacro

; $5E
; infinite_loop

; $5F
; teach_teleport
.macro teach_teleport
    .byte $5F
.endmacro

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
.macro get_weapon offset
    .byte $62, offset
.endmacro

; $63
; select_weapon
.macro sel_weapon offset
    .byte $63, offset
.endmacro

; $64
; live_show
.macro live_show
    .byte $64
.endmacro

; $65
; less_melodies
.macro melodies offset
    .byte $65, offset
.endmacro

; $66
; name_register
.macro name_reg
    .byte $66
.endmacro

; $67
; darken
.macro blackout
    .byte $67
.endmacro

; $68
; land_mine
.macro mine
    .byte $68
.endmacro

; $69
; shake
.macro shake
    .byte $69
.endmacro

; $6A
; crystal
.macro tomb
    .byte $6A
.endmacro


; $6B
; sub_13B751