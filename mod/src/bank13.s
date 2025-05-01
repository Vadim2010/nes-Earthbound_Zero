.include "macros.inc"
.include "palette.inc"
.include "mmc3\bank.inc"
.include "..\res\structures.inc"
.include "..\res\charmap.inc"
.include "..\res\framecomm.inc"

; ===========================================================================

; Segment type: Pure code
                ;.segment BANK13
                ;* =  $A000

; =============== S U B R O U T I N E =======================================

.segment "BANK_3"

.proc sub_13A000
    .export sub_13A000, out_state
    .import get_character_num, get_character_pointer, state, cursor_update, loc_EF7C, redraw_screen, Character
    .importzp Pointer, Item, pCursor, Buttons, CursorPosition, Column, Row

    lda #5
    sta Sound2

out_state:
    lda CurrentGame + GAME_SAVE::Flags+$1E
    sta Pointer
    ldy #$F0

@next_melody:
    lda #$A5
    lsr Pointer
    bcc @melody_state
    lda #$96

@melody_state:
    sta Character,Y
    iny
    cpy #$F8
    bcc @next_melody
    lda #0
    sta Character,Y

character:
    ldx #0

loc_13A023:
    jsr get_character_num
    bcs next_charac
    jsr get_character_pointer ; Input: A - Character number
                        ; Output: Pointer (word) = High $74 Low $40 * A
    txa 
    pha 
    ldy #$3F

@copy_character:
    lda (Pointer),Y
    sta Character,Y
    dey
    bpl @copy_character
    ldx #$80
    ldy #CHARACTER::Items

@next_item:
    lda Character,Y
    sta Item
    jsr copy_name
    iny
    cpy #$2C
    bcc @next_item
    jsr state
    ldxa #stru_13A0F5
    jsr draw_tiles
    lda #$C0
    sta Item
    jsr print_psi
    ldxa #stru_13A119
    stxa pCursor
    jsr cursor_update

loc_13A064:
    bit Buttons
    bvs loc_13A08B
    lda CursorPosition
    beq loc_13A082
    jsr print_psi
    bcs loc_13A074
    jsr print_psi

loc_13A074:
    ldx #$A
    ldy #3
    stx Column
    sty Row
    jsr loc_EF7C
    jmp loc_13A064
; ---------------------------------------------------------------------------

loc_13A082:
    pla
    tax

next_charac:
    inx
    cpx #4
    bcc loc_13A023
    bcs character

loc_13A08B:
    pla
    jmp redraw_screen
.endproc            ; End of function sub_13A000


; =============== S U B R O U T I N E =======================================


.proc copy_name
    .import Character
    .importzp Pointer, pTileID

    tya
    pha
    txa
    pha
    jsr get_item_pointer
    ldy #0
    lda (Pointer),Y
    sta pTileID
    iny
    lda (Pointer),Y
    sta pTileID+1
    pla
    tax
    ldy #0

@next_byte:
    lda (pTileID),Y
    sta Character,X
    inx
    iny
    cpy #$10
    bcc @next_byte
    pla
    tay
    rts
.endproc            ; End of function copy_name


; =============== S U B R O U T I N E =======================================


.proc print_psi
    .import get_flag_bit, draw_tilepack_clear, Character
    .importzp pDist, Item, PointerTilePack

    ldx #$40

next_string:
    stx pDist
    jsr get_flag_bit
    ldx pDist
    and Character,Y
    beq @next_psi
    jsr copy_name

@next_psi:
    inc Item
    bne no_last
    lda #$C0
    sta Item
    cpx #$41
    bcs no_psi
    rts
; ---------------------------------------------------------------------------

empty_string:
    lda #0
    sta Character,X
    clc
    txa
    adc #$10
    tax

no_psi:
    cpx #$80
    bcc empty_string
    bcs get_frame

no_last:
    cpx #$80
    bcc next_string

get_frame:
    ldxa #stru_13A0FE
    stxa PointerTilePack

@draw:
    jsr draw_tilepack_clear
    cmp #0
    bne @draw
    rts
.endproc            ; End of function print_psi

; ---------------------------------------------------------------------------
.import Character
stru_13A0F5:
    tile_position 11, 3
    convert Character+CHARACTER::Name, 0, 7       ; $638, 0, 7
    end_frame

stru_13A0FE:
    tile_position 19, 5
    convert $640, 0, 11
    end_row

    convert $650, 0, 11
    end_row

    convert $660, 0, 11
    end_row

    convert $670, 0, 11
    end_frame

stru_13A119:
    cursor 2, 1, 9, 0, $C5, $3A, $A, 3, byte_F0D1

; =============== S U B R O U T I N E =======================================


.proc sub_13A123
    .export sub_13A123
    .import sub_CDE4, redraw_screen, message_button, loc_13ADC1
    .importzp byte_D1, byte_D2, byte_D3, WaitPressed, Buttons, CursorPosition

    lda #$80
    bit byte_D3+1
    bne locret_13A167
    ldx byte_D2
    ldy byte_D1
    cpx #6
    bcc locret_13A167
    cpy #$90
    bcc locret_13A167
    ora byte_D3+1
    sta byte_D3+1
    lda #$2F
    jsr sub_CDE4
    ldx #$7C
    jsr message_button
    ldx #$7E
    jsr message_button
    ldx #$80
    jsr message_button
    lda #$37
    sta WaitPressed
    jsr loc_13ADC1
    bit Buttons
    bvs loc_13A168
    lda CursorPosition
    beq loc_13A168
    jsr make_save
    ldx #$86
    jsr message_button
    jmp reboot
; ---------------------------------------------------------------------------

locret_13A167:
    rts
; ---------------------------------------------------------------------------

loc_13A168:
    ldx #$82
    jsr message_button
    ldx #$84
    jsr message_button
    jsr check_button_pressed
    jmp redraw_screen
.endproc            ; End of function sub_13A123


; =============== S U B R O U T I N E =======================================


.proc command_menu
    .export command_menu
    .import sub_C26C, cursor_update, redraw_screen, get_cursor_pos
    .importzp pCursor, Buttons, CursorPosition

    lda #5
    sta Sound2
    jsr sub_C26C
    ldxa #CommandCursor
    stxa pCursor
    jsr cursor_update
    bit Buttons
    bmi loc_13A192
    jmp redraw_screen
; ---------------------------------------------------------------------------

loc_13A192:
    lda #$FF
    jsr get_cursor_pos  ; get position of cursor and set cursor tile Input: A - tile ID, Output: PosX, PosY
    lda CursorPosition
    asl A
    tax
    lda CommandHandlers+1,X
    pha
    lda CommandHandlers,X
    pha
    rts
.endproc            ; End of function command_menu

; ---------------------------------------------------------------------------
CommandHandlers:
    .import out_state
    .word talk-1, check-1, goods-1, out_state-1, psi-1, change_setup-1

CommandCursor:
    cursor 2, 3, 6, 2, $C0, $3A, 2, 3, byte_F0D1

; =============== S U B R O U T I N E =======================================


.proc change_setup
    .import bank_A000_a, redraw_screen, setup_menu

    lda #$19
    ldyx #(setup_menu-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    jmp redraw_screen
.endproc            ; End of function change_setup


; =============== S U B R O U T I N E =======================================


.proc sub_13A1C6
    .export sub_13A1C6
    .import get_obj_pointer, redraw_screen
    .importzp byte_34

    jsr get_obj_pointer
    bcs loc_13A1E4
    jsr get_obj_type
    beq locret_13A1E9
    asl A
    asl A
    bcc locret_13A1E9
    and #$3C
    beq locret_13A1E9
    lda #$35
    sta byte_34
    jsr sub_13AB0F
    bcs locret_13A1E9

loc_13A1E1:
    jmp redraw_screen
; ---------------------------------------------------------------------------

loc_13A1E4:
    jsr sub_13AB48
    bcc loc_13A1E1

locret_13A1E9:
    rts
.endproc            ; End of function sub_13A1C6


; =============== S U B R O U T I N E =======================================


.proc talk
    .import sub_E20F, set_oam, message_button, redraw_screen
    .importzp byte_34

    jsr sub_E20F
    asl A
    bpl nobody
    and #$1E
    beq what
    jsr set_oam
    lda #$A
    sta byte_34
    jsr sub_13AB0F
    bcc redraw

nobody:
    ldx #2
    bne out_msg

what:
    ldx #4

out_msg:
    jsr message_button
    jsr check_button_pressed

redraw:
    jmp redraw_screen
.endproc            ; End of function talk


; =============== S U B R O U T I N E =======================================


.proc check
    .import sub_E20F, redraw_screen, message_button
    .importzp byte_34

    jsr sub_E20F
    jsr get_obj_type
    bne loc_13A21D
    jsr sub_13A9D6
    jmp redraw_screen
; ---------------------------------------------------------------------------

loc_13A21D:
    asl A
    bpl no_problem
    and #$1E
    beq no_problem
    lda #$B
    sta byte_34
    jsr sub_13AB0F
    bcc loc_13A235

no_problem:
    ldx #6
    jsr message_button
    jsr check_button_pressed

loc_13A235:
    jmp redraw_screen
.endproc            ; End of function check


; =============== S U B R O U T I N E =======================================


.proc psi
    .import redraw_screen, press_redraw
    .importzp Pointer, BankPPU_XC00, BankPPU_X000

    jsr sub_13B8E6
    bcc loc_13A240
    jmp redraw_screen
; ---------------------------------------------------------------------------

loc_13A240:
    jsr make_msg
    ldy #7
    lda (Pointer),Y
    sta BankPPU_XC00
    sec
    ldy #$16
    lda (BankPPU_X000),Y
    sbc BankPPU_XC00
    iny
    lda (BankPPU_X000),Y
    sbc #0
    bcc loc_13A25D
    jsr sub_13A3BC
    jmp press_redraw
; ---------------------------------------------------------------------------

loc_13A25D:
    ldx #$10
    jmp msg_press_redraw
.endproc            ; End of function psi


; =============== S U B R O U T I N E =======================================


.proc goods
    .export goods, loc_13A26A
    .import redraw_screen, draw_goods_menu, short_cursor_update, get_cursor_pos, byte_F0D1
    .importzp Item, pStr, pCursor, Buttons, CursorPosition

    jsr sub_13B7B6
    bcc loc_13A26A
    jmp redraw_screen
; ---------------------------------------------------------------------------

loc_13A26A:
    jsr draw_goods_menu
    jsr get_char_pntr
    jsr sub_13A972
    beq loc_13A281
    lda Item
    cmp #3
    beq loc_13A281
    ldxa #byte_13A2A2
    bne loc_13A285

loc_13A281:
    ldxa #byte_F0D1

loc_13A285:
    stxa pStr
    ldxa #ActionCursor
    stxa pCursor
    jsr short_cursor_update
    bit Buttons
    bmi loc_13A2A7
    bpl goods
; ---------------------------------------------------------------------------
ActionCursor:
    cursor_short 1, 5, 0, 2, $C0, $3A, $18, 7

byte_13A2A2:
    .byte 0, 0, 3, 4, 0
; ---------------------------------------------------------------------------

loc_13A2A7:
    lda #$FF
    jsr get_cursor_pos  ; get position of cursor and set cursor tile Input: A - tile ID, Output: PosX, PosY
    jsr make_msg
    lda CursorPosition
    asl A
    tax
    lda Actions+1,X
    pha
    lda Actions,X
    pha
    rts
.endproc            ; End of function goods

; ---------------------------------------------------------------------------
Actions:
    .word use-1, eat-1, give-1, drop-1, look-1

; =============== S U B R O U T I N E =======================================


.proc use
    .import press_redraw, message_button, Sound3
    .importzp Pointer, AddrForJmp, CharNum

    ldy #3
    lda (Pointer),Y
    bne to_equip
    ldy #2
    lda (Pointer),Y
    and #$3F
    beq used
    ldx CharNum
    and byte_13AA74,X
    beq cant_use
    jsr sub_13A3BC
    jmp press_redraw
; ---------------------------------------------------------------------------

used:
    ldx #$16
    jsr message_button
    jsr nothing_happend
    jmp press_redraw
; ---------------------------------------------------------------------------

cant_use:
    ldx #$18
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

to_equip:
    sta AddrForJmp
    ldy #2
    lda (Pointer),Y
    ldx CharNum
    and byte_13AA74,X
    beq cant_equip
    jsr sub_13BC3A
    bcs cant_equip
    ldx #$1C
    jsr message_button
    lda #4
    sta Sound3
    jmp press_redraw
; ---------------------------------------------------------------------------

cant_equip:
    ldx #$1E
    jmp msg_press_redraw
.endproc            ; End of function use


; =============== S U B R O U T I N E =======================================


.proc give
    .import loc_13A26A
    .importzp CharNum, Item, BankPPU_X800

    ldx $6707
    dex
    beq no_friends
    lda Item
    cmp #3
    beq cant_hand
    jsr sub_13AA4E
    bcs loc_13A37A
    jsr sub_13A979
    bcs loc_13A36A
    jsr sub_13A9A3
    cmp BankPPU_X800
    beq loc_13A356
    jsr sub_13A972
    bne loc_13A349
    jsr get_char_pntr
    jsr sub_13A972
    bne wisdom
    ldx #$24
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

wisdom:
    ldx #$4C
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

loc_13A349:
    jsr get_char_pntr
    jsr sub_13A972
    bne use_magic_herb
    ldx #$4E
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

loc_13A356:
    jsr sub_13A972
    bne use_magic_herb
    ldx #$50
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

use_magic_herb:
    ldx #$52
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

cant_hand:
    ldx #$26
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

loc_13A36A:
    lda CharNum
    cmp BankPPU_X800
    beq loc_13A356
    ldx #$28
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

no_friends:
    ldx #$C
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

loc_13A37A:
    jmp loc_13A26A
.endproc            ; End of function give


; =============== S U B R O U T I N E =======================================


.proc eat
    .import press_redraw
    .importzp Pointer

    ldy #2
    lda (Pointer),Y
    and #$40
    beq cant_do
    jsr sub_13A3BC
    jmp press_redraw
; ---------------------------------------------------------------------------

cant_do:
     ldx #$1A
     jmp msg_press_redraw
.endproc
; End of function eat


; =============== S U B R O U T I N E =======================================


.proc drop
    jsr sub_13A98B
    bcs dont_throw
    jsr sub_13A972
    bne force
    ldx #$20
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

force:
    ldx #$54
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

dont_throw:
    ldx #$22
    jmp msg_press_redraw
.endproc            ; End of function drop


; =============== S U B R O U T I N E =======================================


.proc look
    .import out_msg_button, press_redraw
    .importzp PointerTilePack, Item, DialogPage

    clc
    lda Item
    adc #$E8                ; DIALOGS8 $3E8
    sta PointerTilePack
    lda #0
    adc #3
    sta DialogPage
    jsr out_msg_button
    jmp press_redraw
.endproc            ; End of function look


; =============== S U B R O U T I N E =======================================


.proc sub_13A3BC
    .importzp Pointer

    ldy #4
    lda (Pointer),Y
    asl A
    tax
    lda ActionTable+1,X
    pha
    lda ActionTable,X
    pha
    rts
.endproc
; End of function sub_13A3BC

; ---------------------------------------------------------------------------
ActionTable:
    .word nothing_happend-1, sub_13A451-1, nothing_happend-1, nothing_happend-1
    .word nothing_happend-1, sub_13A49A-1, sub_13A4CF-1, sub_13A451-1
    .word sub_13A465-1, nothing_happend-1, sub_13A4EB-1, sub_13A4F0-1
    .word sub_13A4F5-1, sub_13A4FA-1, sub_13A4FF-1, sub_13A504-1
    .word sub_13A50C-1, sub_13A74D-1, sub_13A756-1, sub_13A75F-1
    .word sub_13A79A-1, sub_13A7A7-1, sub_13A7B4-1, sub_13A7BB-1
    .word sub_13A7C2-1, sub_13A7C9-1, sub_13A7D0-1, sub_13A811-1
    .word nothing_happend-1, nothing_happend-1, sub_13A7D7-1, sub_13A478-1
    .word sub_13A807-1, sub_13A80C-1, sub_13A825-1, sub_13A816-1
    .word sub_13A43E-1, sub_13A427-1, sub_13A612-1, sub_13A4DB-1
    .word sub_13A4E0-1, sub_13A4E5-1, sub_13A73F-1, sub_13A43E-1
    .word sub_13A738-1, sub_13A746-1

; =============== S U B R O U T I N E =======================================


.proc sub_13A427
    .import sub_E20F
    .importzp byte_34

    jsr sub_13A9B1
    jsr sub_E20F
    asl A
    bpl sub_13A43E
    and #$1E
    beq sub_13A43E
    lda #$C
    sta byte_34
    jsr sub_13AB0F
    bcs sub_13A43E
    rts
.endproc            ; End of function sub_13A427


; =============== S U B R O U T I N E =======================================


.proc sub_13A43E
    .import message_button

    ldx #$E
    jsr message_button
.endproc            ; End of function sub_13A43E


; =============== S U B R O U T I N E =======================================


.proc nothing_happend
    .export nothing_happend, message_button
    .import out_msg_button

    ldx #$2A

message_button:
    jsr get_dialog_id
    jmp out_msg_button
.endproc            ; End of function nothing_happend


; =============== S U B R O U T I N E =======================================


.proc message
    .import out_msg

    jsr get_dialog_id
    jmp out_msg
.endproc            ; End of function message


; =============== S U B R O U T I N E =======================================


.proc sub_13A451
    .import sub_E20F
    .importzp byte_34

    jsr sub_E20F
    asl A
    bpl nothing_happend
    and #$1E
    beq nothing_happend
    lda #$D
    sta byte_34
    jsr sub_13AB0F
    bcs nothing_happend
    rts
.endproc            ; End of function sub_13A451


; =============== S U B R O U T I N E =======================================


.proc sub_13A465
    .import sram_write_enable, sram_read_enable, message_button

    jsr sub_13A990
    jsr sram_write_enable
    lda #$A
    sta CurrentGame+PURE_SAVE::field_19
    jsr sram_read_enable
    ldx #$16
    jmp message_button
.endproc            ; End of function sub_13A465


; =============== S U B R O U T I N E =======================================


.proc sub_13A478
    .import sram_write_enable, sram_read_enable, message_button
    .importzp FuncID, byte_20, BankPPU_X000

    jsr sub_13A990
    jsr sram_write_enable
    ldy #$2C

loc_13A480:
    lda (BankPPU_X000),Y
    sta $73D8,Y
    iny 
    cpy #$30
    bcc loc_13A480
    jsr sram_read_enable
    lda #$40
    sta byte_20
    lda #1              ; sub_13BD0D
    sta FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    ldx #$48
    jmp message_button
.endproc         ; End of function sub_13A478


; =============== S U B R O U T I N E =======================================


.proc sub_13A49A
    .import sram_write_enable, sram_read_enable, message_button, loc_13A542
    .importzp Pointer, CursorPosition, Item, BankPPU_X000

    lda CursorPosition
    bne loc_13A4CA
    lda #3
    jsr sub_13B058
    bcc loc_13A4C5
    lda Item
    jsr sub_13B058
    jsr sram_write_enable
    lda #3
    sta (Pointer),Y
    ldy #$2C

loc_13A4B3:
    lda $73D8,Y
    sta (BankPPU_X000),Y
    iny
    cpy #$30
    bcc loc_13A4B3
    jsr sram_read_enable
    ldx #$44
    jmp message_button
; ---------------------------------------------------------------------------

loc_13A4C5:
    ldx #$46
    jmp message_button
; ---------------------------------------------------------------------------

loc_13A4CA:
    lda #$14
    jmp loc_13A542
.endproc
; End of function sub_13A49A


; =============== S U B R O U T I N E =======================================


.proc sub_13A4CF
    .import loc_13A542
    .importzp CursorPosition

    lda CursorPosition
    bne loc_13A4D6
    jmp sub_13A451
; ---------------------------------------------------------------------------

loc_13A4D6:
    lda #$F
    jmp loc_13A542
.endproc            ; End of function sub_13A4CF


; =============== S U B R O U T I N E =======================================


.proc sub_13A4DB
    lda #$1E
    jmp sub_13A63B
.endproc            ; End of function sub_13A4DB


; =============== S U B R O U T I N E =======================================


.proc sub_13A4E0
    lda #$50
    jmp sub_13A63B
.endproc            ; End of function sub_13A4E0


; =============== S U B R O U T I N E =======================================


.proc sub_13A4E5
    .import loc_13A63E

    jsr set_price1000
    jmp loc_13A63E
.endproc            ; End of function sub_13A4E5


; =============== S U B R O U T I N E =======================================


.proc sub_13A4EB
    lda #$A
    jmp sub_13A53E
.endproc            ; End of function sub_13A4EB


; =============== S U B R O U T I N E =======================================


.proc sub_13A4F0
    .import loc_13A542

    lda #$14
    jmp loc_13A542
.endproc            ; End of function sub_13A4F0


; =============== S U B R O U T I N E =======================================


.proc sub_13A4F5
    .import loc_13A542

    lda #$1E
    jmp loc_13A542
.endproc            ; End of function sub_13A4F5


; =============== S U B R O U T I N E =======================================


.proc sub_13A4FA
    .import loc_13A542

    lda #$3C
    jmp loc_13A542
.endproc            ; End of function sub_13A4FA


; =============== S U B R O U T I N E =======================================


.proc sub_13A4FF
    lda #$64
    jmp sub_13A53E
.endproc            ; End of function sub_13A4FF


; =============== S U B R O U T I N E =======================================


.proc sub_13A504
    .import loc_13A54B

    jsr set_price1000
    ldx #$16
    jmp loc_13A54B
.endproc            ; End of function sub_13A504


; =============== S U B R O U T I N E =======================================


sub_13A50C:
    .import message_button, sram_write_enable, sram_read_enable, CurrentGame

    lda #$1E
    jsr sub_13A912
    jsr sub_13AA4E
    bcs loc_13A56A
    jsr get_char_pntr
    jsr sub_13A972
    bmi loc_13A56F
    jsr make_msg
    ldx #$42
    jsr message_button
    jsr sram_write_enable
    dec CurrentGame + PURE_SAVE::field_1F
    php
    jsr sram_read_enable
    plp
    bne loc_13A53B
    jsr sub_13A9A3
    ldx #$56
    jsr message_button

loc_13A53B:
    jmp loc_13A564
; End of function sub_13A50C


; =============== S U B R O U T I N E =======================================


sub_13A53E:
    .export sub_13A53E, loc_13A542, loc_13A54B
    .import loc_13A26A, message_button, two_messages
    .importzp Price, Item, PointerTilePack

    ldx #$2E
    bne loc_13A544

loc_13A542:
    ldx #$2C

loc_13A544:
    stx PointerTilePack
    jsr sub_13A912
    ldx PointerTilePack

loc_13A54B:
    jsr get_dialog_id
    jsr sub_13AA4E
    bcs loc_13A56A
    jsr get_char_pntr
    jsr sub_13A972
    bmi loc_13A56F
    jsr make_msg
    jsr out_msg_button
    jsr sub_13A9A3

loc_13A564:
    jsr sub_13A681
    jmp sub_13BC04
; ---------------------------------------------------------------------------

loc_13A56A:
    pla
    pla
    jmp loc_13A26A
; ---------------------------------------------------------------------------

loc_13A56F:
    jsr sub_13A9A3
    ldx #$58
    jsr message_button
    lda Item
    cmp #$41
    bne loc_13A577
    jmp resurrect

loc_13A577:
    jmp nothing_happend
; End of function sub_13A53E

; =============== S U B R O U T I N E =======================================


sub_13A57A:
    .import sram_write_enable, sram_read_enable, message_button, Sound2
    .importzp BankPPU_X000

    sta Price
    sty Price+1
    jsr get_dialog_id
    jsr sub_13AA4E
    bcs loc_13A56A
    lda Price
    bmi loc_13A592
    jsr get_char_pntr
    jsr sub_13A972
    bmi loc_13A56F

loc_13A592:
    jsr make_msg
    jsr out_msg_button
    jsr sub_13A9A3

loc_13A59B:
    ldy #1
    lda (BankPPU_X000),Y
    and Price
    beq loc_13A577
    jsr sram_write_enable
    lda Price
    php
    eor #$FF
    and (BankPPU_X000),Y
    sta (BankPPU_X000),Y
    plp
    bpl loc_13A5B5
    jsr sub_13A6E0

loc_13A5B5:
    jsr sram_read_enable
    lda #7
    sta Sound2
    ldx Price+1
    jsr message_button
    jmp sub_13BC04
; End of function sub_13A57A


; =============== S U B R O U T I N E =======================================


sub_13A5C5:
    .export sub_13A5C5, loc_13A5E2
    .import sram_write_enable, sram_read_enable, message_button
    .importzp Price, BankPPU_X000, pTileID

    sty Price
    jsr get_dialog_id
    jsr sub_13AA4E
    bcs loc_13A56A
    jsr get_char_pntr
    jsr sub_13A972
    bmi loc_13A56F
    jsr make_msg
    jsr out_msg_button
    jsr sub_13A9A3
    ldy Price

loc_13A5E2:
    lda #5
    jsr sub_13A912
    clc
    lda (BankPPU_X000),Y
    adc Price
    sta pTileID
    bcc loc_13A5F7
    clc
    lda Price
    sbc pTileID
    sta Price

loc_13A5F7:
    jsr sram_write_enable
    clc
    lda (BankPPU_X000),Y
    adc Price
    sta (BankPPU_X000),Y
    jsr sram_read_enable
    clc
    tya
    adc #$11
    asl A
    tax
    jsr message_button
    ldx #$32
    jmp message
; End of function sub_13A5C5


; =============== S U B R O U T I N E =======================================


sub_13A612:
    .import message_button, sub_CCD8

    jsr sub_13A62C
    jsr sub_13B98F
    bcs loc_13A659
    jsr sub_13A9B1
    ldx #$E
    jsr message_button
    pla
    pla
    pla
    pla
    jsr check_button_pressed
    jmp sub_CCD8
; End of function sub_13A612


; =============== S U B R O U T I N E =======================================


sub_13A62C:
    .import message_button

    lda CurrentGame + GAME_SAVE::Flags+$1F
    and #2
    beq locret_13A63A
    pla
    pla
    ldx #$12
    jmp message_button
; ---------------------------------------------------------------------------

locret_13A63A:
    rts
; End of function sub_13A62C


; =============== S U B R O U T I N E =======================================


sub_13A63B:
    .export sub_13A63B, loc_13A63E
    .import message_button

    jsr sub_13A912

loc_13A63E:
    jsr sub_13AA4E
    bcs loc_13A659
    jsr sub_13A9B1
    ldx #$E
    jsr message_button
    jsr make_msg
    jsr sub_13A972
    bmi loc_13A65E
    jsr sub_13A681
    jmp sub_13BC04
; ---------------------------------------------------------------------------

loc_13A659:
    pla
    pla
    jmp psi
; ---------------------------------------------------------------------------

loc_13A65E:
    jmp nothing_happend
; End of function sub_13A63B


; =============== S U B R O U T I N E =======================================


sub_13A661:
    .import message_button
    .importzp Price

    sta Price
    sty Price+1
    jsr sub_13AA4E
    bcs loc_13A659
    jsr sub_13A9B1
    ldx #$E
    jsr message_button
    jsr make_msg
    lda Price
    bmi loc_13A67E
    jsr sub_13A972
    bmi loc_13A65E

loc_13A67E:
    jmp loc_13A59B
; End of function sub_13A661

.import loc_13A6F0
resurrect:
    jsr sram_write_enable
    ldy #CHARACTER::InitialStatus
    lda (BankPPU_X000),Y
    and #$7F
    sta (BankPPU_X000),Y
    ldy #CHARACTER::MaxHealth
    lda (BankPPU_X000),Y
    sta Price
    iny
    lda (BankPPU_X000),Y
    sta Price+1
    lsr Price+1
    ror Price
    ldy #CHARACTER::Health
    lda Price
    sta (BankPPU_X000),Y
    iny
    lda Price+1
    sta (BankPPU_X000),Y
    jsr sram_read_enable
    jsr loc_13A6F0
    jsr make_msg
    ldx #$14
    jsr message_button
    jmp sub_13BC04

; =============== S U B R O U T I N E =======================================


.proc sub_13A681
    .export two_messages
    .import sram_write_enable, sram_read_enable, message_button

    ldy #$14
    jsr sub_13A6A5
    ldy #3
    jsr sub_13A6B4
    jsr sram_write_enable
    ldy #$14
    jsr sub_13A6D1
    jsr sram_read_enable
    lda #7
    sta Sound2

two_messages:
    ldx #$34
    jsr message_button
    ldx #$30
    jmp message
.endproc            ; End of function sub_13A681


; =============== S U B R O U T I N E =======================================


.proc sub_13A6A5
    .importzp BankPPU_X000, Price, pTileID

    clc
    lda (BankPPU_X000),Y
    adc Price
    sta pTileID
    iny
    lda (BankPPU_X000),Y
    adc Price+1
    sta pTileID+1
    rts
.endproc            ; End of function sub_13A6A5


; =============== S U B R O U T I N E =======================================


.proc sub_13A6B4
    .importzp BankPPU_X000, pTileID, pDist, Price

    sec
    lda (BankPPU_X000),Y
    sbc pTileID
    sta pDist
    iny
    lda (BankPPU_X000),Y
    sbc pTileID+1
    sta pDist+1
    bcs locret_13A6D0
    lda Price
    adc pDist
    sta Price
    lda Price+1
    adc pDist+1
    sta Price+1

locret_13A6D0:
    rts
.endproc            ; End of function sub_13A6B4


; =============== S U B R O U T I N E =======================================


.proc sub_13A6D1
    .importzp BankPPU_X000, Price

    clc
    lda (BankPPU_X000),Y
    adc Price
    sta (BankPPU_X000),Y
    iny
    lda (BankPPU_X000),Y
    adc Price+1
    sta (BankPPU_X000),Y
    rts
.endproc            ; End of function sub_13A6D1


; =============== S U B R O U T I N E =======================================


.proc sub_13A6E0
    .export sub_13A6E0, loc_13A6F0
    .import sub_D8D3, get_buffer_offset, loc_E2BF, mmc3_bank_set, sub_CDE4, sub_D977, sram_write_enable
    .importzp BankPPU_X000, Dist, BankTable

    ldy #3
    lda (BankPPU_X000),Y
    ldy #$14
    sta (BankPPU_X000),Y
    ldy #4
    lda (BankPPU_X000),Y
    ldy #$15
    sta (BankPPU_X000),Y

loc_13A6F0:
    lda Dist
    pha
    lda Dist+1
    pha
    jsr sub_D8D3
    jsr sub_13A728
    bcs loc_13A71E
    txa
    jsr get_buffer_offset
    lda BankTable + BANK_TABLE::CPU_8K_8000
    pha
    ldy #$15
    lda (Dist),Y
    asl A
    asl A
    asl A
    tax
    jsr loc_E2BF
    pla
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda #$1D
    jsr sub_CDE4
    jsr sub_D977

loc_13A71E:
    jsr sram_write_enable
    pla
    sta Dist+1
    pla
    sta Dist
    rts
.endproc            ; End of function sub_13A6E0


; =============== S U B R O U T I N E =======================================


.proc sub_13A728
    .importzp CharNum

    lda CharNum
    ldx #0

loc_13A72C:
    cmp CurrentGame + PURE_SAVE::CharactersNum,X
    clc
    beq locret_13A737
    inx
    cpx #4
    bcc loc_13A72C

locret_13A737:
    rts
.endproc            ; End of function sub_13A728


; =============== S U B R O U T I N E =======================================


.proc sub_13A738
    lda #2
    ldy #$5A
    jmp sub_13A661
.endproc            ; End of function sub_13A738


; =============== S U B R O U T I N E =======================================


.proc sub_13A73F
    lda #$40
    ldy #$6C
    jmp sub_13A661
.endproc            ; End of function sub_13A73F


; =============== S U B R O U T I N E =======================================


.proc sub_13A746
    lda #$80
    ldy #$14
    jmp sub_13A661
.endproc            ; End of function sub_13A746


; =============== S U B R O U T I N E =======================================


.proc sub_13A74D
    lda #2
    ldx #$2E
    ldy #$5A
    jmp sub_13A57A
.endproc            ; End of function sub_13A74D


; =============== S U B R O U T I N E =======================================


.proc sub_13A756
    lda #1
    ldx #$16
    ldy #$5C
    jmp sub_13A57A
.endproc            ; End of function sub_13A756


; =============== S U B R O U T I N E =======================================


.proc sub_13A75F
    .import message_button, sram_write_enable, sram_read_enable, randomize

    lda #$14
    jsr sub_13A912
    ldx #$5E
    jsr message_button
    ldy #$16
    jsr sub_13A6A5
    ldy #5
    jsr sub_13A6B4
    jsr sram_write_enable
    ldy #$16
    jsr sub_13A6D1
    jsr sram_read_enable
    ldx #$36
    jsr message_button
    ldx #$30
    jsr message
    jsr randomize
    cmp #$19
    bcs loc_13A797
    jsr sub_13A990
    ldx #$60
    jsr message_button

loc_13A797:
    jmp sub_13BC04
.endproc            ; End of function sub_13A75F


; =============== S U B R O U T I N E =======================================


.proc sub_13A79A
    .import message_button, loc_13A5E2

    ldx #$4A
    jsr message_button
    jsr sub_13A990
    ldy #$F
    jmp loc_13A5E2
.endproc            ; End of function sub_13A79A


; =============== S U B R O U T I N E =======================================


.proc sub_13A7A7
    .import message_button, loc_13A5E2

    ldx #$2C
    jsr message_button
    jsr sub_13A990
    ldy #$B
    jmp loc_13A5E2
.endproc            ; End of function sub_13A7A7


; =============== S U B R O U T I N E =======================================


.proc sub_13A7B4
    ldx #$2E
    ldy #$C
    jmp sub_13A5C5
.endproc            ; End of function sub_13A7B4


; =============== S U B R O U T I N E =======================================


.proc sub_13A7BB
    ldx #$2E
    ldy #$D
    jmp sub_13A5C5
.endproc            ; End of function sub_13A7BB


; =============== S U B R O U T I N E =======================================


.proc sub_13A7C2
    ldx #$2E
    ldy #$E
    jmp sub_13A5C5
.endproc            ; End of function sub_13A7C2


; =============== S U B R O U T I N E =======================================


.proc sub_13A7C9
    ldx #$2E
    ldy #$F
    jmp sub_13A5C5
.endproc            ; End of function sub_13A7C9


; =============== S U B R O U T I N E =======================================


.proc sub_13A7D0
    ldx #$2E
    ldy #$B
    jmp sub_13A5C5
.endproc            ; End of function sub_13A7D0


; =============== S U B R O U T I N E =======================================


.proc sub_13A7D7
    .import sram_write_enable, sub_D9FA, loc_D8CE, message_button
    .importzp FuncID, byte_20

    jsr sub_13A62C
    lda CurrentGame + GAME_SAVE::Flags+$1C
    bpl loc_13A7E2
    jmp nothing_happend
; ---------------------------------------------------------------------------

loc_13A7E2:
    jsr sram_write_enable
    ldx #3

loc_13A7E7:
    lda byte_13A803,X
    sta CurrentGame + PURE_SAVE::GlobalX,X
    dex
    bpl loc_13A7E7
    jsr sub_D9FA
    jsr loc_D8CE
    lda #2              ; check_copyright
    sta FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    lda #$40
    sta byte_20
    ldx #$16
    jmp message_button
.endproc            ; End of function sub_13A7D7

; ---------------------------------------------------------------------------
byte_13A803:
   .byte $49, $9E, $44, $A8

; =============== S U B R O U T I N E =======================================


.proc sub_13A807
    .import message_button

    ldx #$62
    jmp message_button
.endproc            ; End of function sub_13A807


; =============== S U B R O U T I N E =======================================


.proc sub_13A80C
    .import message_button

    ldx #$64
    jmp message_button
.endproc            ; End of function sub_13A80C


; =============== S U B R O U T I N E =======================================


.proc sub_13A811
    .import message_button

    ldx #$74
    jmp message_button
.endproc            ; End of function sub_13A811


; =============== S U B R O U T I N E =======================================


.proc sub_13A816
    .import message_button, sub_CDE4

    ldx #$70
    jsr message_button
    lda #1
    jsr sub_CDE4
    ldx #$72
    jmp message_button
.endproc            ; End of function sub_13A816


; =============== S U B R O U T I N E =======================================


.proc sub_13A825
    .import message_button, loc_13A834

    pla
    pla
    ldx #$78
    jsr message_button
    jmp loc_13A834
.endproc            ; End of function sub_13A825


; =============== S U B R O U T I N E =======================================


.proc sub_13A82F
    .export sub_13A82F, loc_13A834
    .import clear_oam_sprite, set_camera, mmc3_bank_set, sub_CE6D, set_ppu_banks, copy_palettes, DMCflag
    .import wait_frames, wait_nmi_processed, darken_color, restore_palettes, draw_screen
    .importzp MapSectorID, MaskPPU, GamepadButtons

    lda #5
    sta Sound2

loc_13A834:
    lda MapSectorID
    cmp #1
    beq loc_13A843
    cmp #2
    beq loc_13A843
    ldx #$7A
    jmp msg_press_redraw
; ---------------------------------------------------------------------------

loc_13A843:
    jsr check_button_pressed
    jsr darken_palette
    jsr clear_oam_sprite
    ldx #0
    ldy #8
    jsr set_camera
    lda #6
    ora MaskPPU
    sta MaskPPU
    lda #$5B
    ldx #2
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    jsr sub_CE6D
    ldxa #CHRBanks
    jsr set_ppu_banks   ; set 6 memory banks for PPU
                        ; Character + CHARACTER::NameOffsetle = XA address (X - high and A - low byte)
                        ;
                        ; |PPU address | PPUTable offset | Size |
                        ; |-------------------------------------|
                        ; |   $1000    |        0        |  2K  |
                        ; |-------------------------------------|
                        ; |   $1800    |        1        |  2K  |
                        ; |-------------------------------------|
                        ; |   $0000    |        2        |  1K  |
                        ; |-------------------------------------|
                        ; |   $0400    |        3        |  1K  |
                        ; |-------------------------------------|
                        ; |   $0800    |        4        |  1K  |
                        ; |-------------------------------------|
                        ; |   $0C00    |        5        |  1K  |
                        ; ---------------------------------------
    lda #$DF
    sta OAM_Cache + OAM_TILE::TileID
    lda #0
    sta OAM_Cache + OAM_TILE::Attr
    ldx #$40
    lda Characters + OBJECT::CoorX+1
    jsr sub_13A8D4
    sbc #8
    sta OAM_Cache + OAM_TILE::PosX
    ldx #$80
    lda Characters + OBJECT::CoorY+1
    jsr sub_13A8D4
    sbc #$21
    sta OAM_Cache + OAM_TILE::PosY
    ldxa #Palette
    jsr copy_palettes
    lda #0
    sta GamepadButtons

loc_13A899:
    ldx #8
    jsr wait_frames
    lda #$DF
    eor OAM_Cache + OAM_TILE::TileID
    sta OAM_Cache + OAM_TILE::TileID
    bit GamepadButtons
    bvc loc_13A899
    lda #0
    sta GamepadButtons
    lda #$F0
    sta OAM_Cache + OAM_TILE::PosY
    jsr wait_nmi_processed
    jsr darken_color
    jsr restore_palettes
    lda #$F9
    and MaskPPU
    sta MaskPPU
    lda #$7E
    ldx #4
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda #0
    sta DMCflag
    jsr clear_oam_sprite
    jmp draw_screen
.endproc            ; End of function sub_13A82F


; =============== S U B R O U T I N E =======================================


.proc sub_13A8D4
    sec
    bpl @exit
    tay
    txa
    ora OAM_Cache + OAM_TILE::Attr
    sta OAM_Cache + OAM_TILE::Attr
    tya
    sbc #7

@exit:
    rts
.endproc            ; End of function sub_13A8D4

; ---------------------------------------------------------------------------
CHRBanks:
    .byte 0, $78, $58, $59, $5A, 0

Palette:
    .byte BLACK, LIGHTEST_RED, WHITE, LIGHT_GREEN   ; PALETTE0
    .byte BLACK, LIGHTEST_RED, WHITE, LIGHT_GREEN   ; PALETTE1
    .byte BLACK, LIGHTEST_RED, WHITE, MEDIUM_RED    ; PALETTE2
    .byte BLACK, LIGHTEST_RED, WHITE, MEDIUM_RED    ; PALETTE3
    .byte BLACK, LIGHT_BLUE, DARK_INDIGO, DARK_GREEN; PALETTE0
    .byte BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE ; PALETTE1
    .byte BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE ; PALETTE2
    .byte BLACK, LIGHT_BLUE, LIGHT_BLUE, LIGHT_BLUE ; PALETTE3

; =============== S U B R O U T I N E =======================================


.proc msg_press_redraw
    .export msg_press_redraw, press_redraw
    .import message_button, redraw_screen

    jsr message_button

press_redraw:
    jsr check_button_pressed
    jmp redraw_screen
.endproc            ; End of function msg_press_redraw


; =============== S U B R O U T I N E =======================================


.proc sub_13A912
    .import random_value
    .importzp Pointer, Price

    sta Pointer
    lda #0
    sta Pointer+1
    jsr random_value
    store Pointer, Price
    rts
.endproc
; End of function sub_13A912


; =============== S U B R O U T I N E =======================================


.proc set_price1000
    .importzp Price

    ldxa #1000
    stxa Price
    rts
.endproc            ; End of function set_price1000


; =============== S U B R O U T I N E =======================================


.proc make_msg
    .import sram_write_enable, sram_read_enable, NameOffset, CharName, ItemName
    .importzp Pointer, pTileID, BankPPU_X000, BankPPU_X400

    jsr sram_write_enable
    jsr get_char_pntr
    lda #4
    sta NameOffset
    clc
    lda BankPPU_X000
    adc #<CHARACTER::Name
    sta CharName
    lda BankPPU_X400
    adc #>CHARACTER::Name
    sta CharName+1
    jsr get_item_pointer
    ldy #0
    lda (Pointer),Y
    sta pTileID
    iny
    lda (Pointer),Y
    sta pTileID+1
    ldy #0

@next_char:
    lda (pTileID),Y
    sta ItemName,Y
    iny
    cmp #0
    bne @next_char
    jmp sram_read_enable
.endproc
; End of function make_msg


; =============== S U B R O U T I N E =======================================


.proc get_char_pntr
    .import get_character_pointer
    .importzp Pointer, CharNum, BankPPU_X000, BankPPU_X400

    lda CharNum
    jsr get_character_pointer ; Input: A - Character number
                        ; Output: Pointer (word) = High $74 Low $40 * A
    lda Pointer
    sta BankPPU_X000
    lda Pointer+1
    sta BankPPU_X400
    rts
.endproc
; End of function get_char_pntr


; =============== S U B R O U T I N E =======================================


.proc sub_13A972
    .importzp BankPPU_X000

    ldy #1
    lda (BankPPU_X000),Y
    and #$F0
    rts
.endproc            ; End of function sub_13A972


; =============== S U B R O U T I N E =======================================


sub_13A979:
    .export sub_13A979
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, Item

    lda #0
    jsr sub_13B058
    bcs loc_13A9A1
    jsr sram_write_enable
    lda Item
    sta (Pointer),Y
    clc
    jmp sram_read_enable
; End of function sub_13A979


; =============== S U B R O U T I N E =======================================


sub_13A98B:
    jsr sub_13B0A3
    bne loc_13A9A1
; End of function sub_13A98B


; =============== S U B R O U T I N E =======================================


sub_13A990:
    .import sram_write_enable, sram_read_enable
    .importzp Item

    lda Item
    jsr sub_13B058
    bcs loc_13A9A1
    jsr sram_write_enable
    jsr item_removed
    clc
    jmp sram_read_enable
; ---------------------------------------------------------------------------

loc_13A9A1:
    sec
    rts
; End of function sub_13A990


; =============== S U B R O U T I N E =======================================


.proc sub_13A9A3
    .importzp CharNum, BankPPU_X800

    lda CharNum
    pha
    lda BankPPU_X800
    sta CharNum
    jsr sub_13A990
    pla
    sta CharNum
    rts
.endproc            ; End of function sub_13A9A3


; =============== S U B R O U T I N E =======================================


.proc sub_13A9B1
    .import sram_write_enable, sram_read_enable
    .importzp BankPPU_X000, BankPPU_XC00

    jsr sram_write_enable
    sec
    ldy #$16
    lda (BankPPU_X000),Y
    sbc BankPPU_XC00
    sta (BankPPU_X000),Y
    iny
    lda (BankPPU_X000),Y
    sbc #0
    sta (BankPPU_X000),Y
    jmp sram_read_enable
.endproc            ; End of function sub_13A9B1


; =============== S U B R O U T I N E =======================================


.proc get_obj_type
    .importzp Dist

    tay
    beq loc_13A9D3
    tax
    ldy #0
    lda (Dist),Y
    and #$3F
    tay
    txa

loc_13A9D3:
    cpy #$20
    rts
.endproc            ; End of function get_obj_type


; =============== S U B R O U T I N E =======================================


.proc sub_13A9D6
    .import sub_E772, FlagBit, loc_E2C2, message_button, get_character_num
    .importzp Source, CharNum, Item

    jsr obj_bank
    jsr sub_E772
    and FlagBit,X
    bne loc_13A9FD
    lda #4
    jsr loc_E2C2
    ldx #$66
    jsr message_button
    lda #$A
    sta Sound2
    ldy #6
    lda (Source),Y
    and #$7F
    sta Item
    bne loc_13AA05
    jsr sub_13AA3F

loc_13A9FD:
    ldx #$76
    jsr message_button
    jmp check_button_pressed
; ---------------------------------------------------------------------------

loc_13AA05:
    jsr sub_13BB8C
    ldx #$68
    jsr message_button
    ldx #0

loc_13AA0F:
    jsr get_character_num
    bcs loc_13AA1F
    sta CharNum
    txa
    pha
    jsr sub_13A979
    pla
    tax
    bcc loc_13AA2C

loc_13AA1F:
    inx
    cpx #4
    bcc loc_13AA0F
    ldx #$6E
    jsr message_button
    jmp check_button_pressed
; ---------------------------------------------------------------------------

loc_13AA2C:
    jsr sub_13AA3F
    jsr get_name
    ldx #$6A
    jsr message_button
    lda #6
    sta Sound2
    jmp check_button_pressed
.endproc            ; End of function sub_13A9D6


; =============== S U B R O U T I N E =======================================


.proc sub_13AA3F
    .import sram_write_enable, sub_E772, FlagBit, sram_read_enable

    jsr sram_write_enable
    jsr sub_E772
    ora FlagBit,X
    sta CurrentGame + GAME_SAVE::field_220,Y
    jmp sram_read_enable
.endproc            ; End of function sub_13AA3F


; =============== S U B R O U T I N E =======================================


.proc sub_13AA4E
    .importzp CharNum, DialogPage, BankPPU_X800, PointerTilePack

    lda CharNum
    sta BankPPU_X800
    lda $6707
    cmp #2
    bcc loc_13AA6A
    lda PointerTilePack
    pha
    lda DialogPage
    pha
    jsr sub_13B763
    pla
    sta DialogPage
    pla
    sta PointerTilePack
    bcs loc_13AA6F

loc_13AA6A:
    jsr get_name
    clc
    rts
; ---------------------------------------------------------------------------

loc_13AA6F:
    lda BankPPU_X800
    sta CharNum
    rts
.endproc            ; End of function sub_13AA4E

; ---------------------------------------------------------------------------
byte_13AA74:
    .byte 0, 1, 2, 4, 8, $10, $20, $20

; =============== S U B R O U T I N E =======================================


.proc get_dialog_id
    .importzp PointerTilePack, DialogPage

    lda DialogsID,X
    sta PointerTilePack
    lda DialogsID+1,X
    sta DialogPage
    rts
.endproc            ; End of function get_dialog_id

; ---------------------------------------------------------------------------
DialogsID:
    .word 0, $385, $386, $387, 0, $3D7, $3DB, $6C7, $6C8, $6D0
    .word $6C9, $38E, $38F, $390, $391, $392, $393, $394, $395
    .word $396, $397, $398, $6AF, $6B0, $6B1, $6B2, $6B3, $6B4
    .word $6B5, $6B6, $6B7, $6B8, $6B9, $6BA, $6BB, $6BC, $6BD
    .word $6BE, $6A7, $6A8, $6A5, $6AA, $6A9, $6C1, $6A6, $6C3
    .word $6C4, $6C5, $6C6, $6BF, $6C0, $399, $39A, $39B, $6CB
    .word $39D, $6CC, $6CD, $6CA, $3A1, $6CF, $6CE, $14, $16
    .word $338, $18, $21, $1B

; =============== S U B R O U T I N E =======================================


.proc sub_13AB0F
    .export sub_13AB0F, next_scr, end_object, check_button_pressed
    .import get_obj_pointer, wait_press_button
    .importzp Dist, Source, ObjectNumWithChar, WaitPressed, byte_34

    jsr obj_bank
    ldy #OBJECT::Value2
    lda (Dist),Y
    and #$F
    tay

next_scr:
    lda (Source),Y
    beq end_object
    jsr run_script
    jmp next_scr
; ---------------------------------------------------------------------------

end_object:
    lda ObjectNumWithChar
    beq check_button_pressed
    jsr get_obj_pointer
    lda #$40
    sta byte_34
    bne sub_13AB0F

check_button_pressed:
    lda WaitPressed
    beq @no_wait
    lda #0
    sta WaitPressed
    clc
    jmp wait_press_button
; ---------------------------------------------------------------------------

@no_wait:
    sec
    rts
.endproc            ; End of function sub_13AB0F


; =============== S U B R O U T I N E =======================================


.proc obj_bank
    .export obj_bank, load_obj_bank
    .import get_pntr, set_obj_bank
    .importzp Dist

    jsr get_pntr

load_obj_bank:
    ldy #1
    lda (Dist),Y        ; get msg number
    jmp set_obj_bank
.endproc        ; End of function obj_bank


; =============== S U B R O U T I N E =======================================


.proc sub_13AB48
    .import next_scr
    .importzp Dist

    jsr obj_bank
    ldy #$1C
    lda (Dist),Y
    tay
    jmp next_scr
.endproc            ; End of function sub_13AB48


; =============== S U B R O U T I N E =======================================


.proc sub_13AB53
    .export sub_13AB53
    .import get_obj_pointer, next_scr
    .importzp ScriptOffset

    jsr get_obj_pointer
    jsr obj_bank
    ldy ScriptOffset
    jmp next_scr
.endproc            ; End of function sub_13AB53


; =============== S U B R O U T I N E =======================================


.proc run_script
    asl A
    tax
    lda MapScripts+1,X
    pha
    lda MapScripts,X
    pha
    rts
.endproc            ; End of function run_script

; ---------------------------------------------------------------------------
MapScripts:
    .import check_button_pressed, none_closet
    .import jump_unsellable, remove_inventory, add_closet, remove_closet
    .import heal_hp

    .word check_button_pressed-1, jump-1, call_subroutine-1, return-1
    .word timeout-1, object_show_hide-1, object_show_hide-1, infinite_loop-1
    .word display_text-1, confirm_msg-1, jump_nothing-1, jump_nothing-1
    .word jump_none_psi-1, jump_unuse_item-1, infinite_loop-1, reboot-1
    .word set_flag-1, clear_flag-1, jump_none_flag-1, decrease_counter-1
    .word increase_counter-1, reset_counter-1, jump_less-1, change_map_val-1
    .word choose_character-1, special_character-1, jump_none_select-1, no_add_money-1
    .word input_number-1, load_number-1, jump_number_less-1, show_money-1
    .word choose_inventory-1, choose_closet_item-1, choose_list_item-1, none_inventory-1
    .word none_closet-1, select_item-1, none_select-1, none_items-1
    .word give_money-1, take_money-1, add_account-1, withdraw-1
    .word jump_unsellable-1, add_inventory-1, remove_inventory-1, add_closet-1
    .word remove_closet-1, select_character_item-1, multiply_num-1, no_character-1
    .word jump_nothing-1, jump_nothing-1, sub_13B3D8-1, show_menu-1
    .word no_inventory-1, no_closet-1, select_character-1, change_object_type-1
    .word sub_13B42B-1, teleport-1, move_object-1, another_object-1
    .word jump_nothing-1, teleport_save-1, add_character-1, remove_character-1
    .word set_enemy_group-1, multiply_char-1, rocket-1, airplane-1
    .word tank-1, boat-1, train-1, elevator-1
    .word no_vehicle-1, sub_13B317-1, sub_13B432-1, sub_13B3E8-1
    .word less_maxhp-1, heal_hp-1, status-1, remove_status-1
    .word below_level-1, sleep-1, save_game-1, next_level-1
    .word load_money-1, inflict_status-1, set_music-1, play_sound1-1
    .word play_sound2-1, play_sound3-1, infinite_loop-1, teach_teleport-1
    .word less_maxpp-1, recovery_pp-1, take_weapon-1, select_weapon-1
    .word live_show-1, less_melodies-1, name_register-1, darken-1
    .word land_mine-1, shake-1, crystal-1, sub_13B751-1

; =============== S U B R O U T I N E =======================================


.proc infinite_loop
    jmp infinite_loop
.endproc; End of function infinite_loop


; =============== S U B R O U T I N E =======================================


.proc draw_tiles
    .import draw_tilepack
    .importzp PointerTilePack

    stxa PointerTilePack
    jmp draw_tilepack
.endproc            ; End of function draw_tiles


; =============== S U B R O U T I N E =======================================


.proc reboot
    .import check_button_pressed, darken_palette, reset

    jsr check_button_pressed
    jsr darken_palette
    jmp reset
.endproc            ; End of function reboot


; =============== S U B R O U T I N E =======================================


.proc object_show_hide
    iny
    iny
    rts
.endproc            ; End of function object_show_hide


; =============== S U B R O U T I N E =======================================


.proc another_object
    .importzp Source, ObjectNumWithChar

    iny
    lda (Source),Y
    clc
    adc #4
    sta ObjectNumWithChar
    iny
    rts
.endproc            ; End of function another_object


; =============== S U B R O U T I N E =======================================


.proc jump_none_psi
    .import loc_13AC6D
    .importzp Source

    iny
    lda (Source),Y
    clc
    adc #$C0
    jmp loc_13AC6D
.endproc            ; End of function jump_none_psi


; =============== S U B R O U T I N E =======================================


jump_unuse_item:
    .export jump_unuse_item, loc_13AC6D
    .importzp Source, Item, byte_34

    iny
    lda (Source),Y

loc_13AC6D:
    cmp Item
    bne jump

jump_nothing:
    txa
    lsr A
    cmp byte_34
    bne jump

loc_13AC77:
    iny
    iny
    rts
; End of function jump_unuse_item


; =============== S U B R O U T I N E =======================================


sub_13AC7A:
    .export sub_13AC7A, loc_13AC7E, loc_13AC82

    bcs loc_13AC77
    bcc jump

loc_13AC7E:
    bcc loc_13AC77
    bcs jump

loc_13AC82:
    bne loc_13AC77
    beq jump
; End of function sub_13AC7A


; =============== S U B R O U T I N E =======================================


sub_13AC86:
    .importzp Source

    beq loc_13AC77

jump:
    iny
    lda (Source),Y
    tay
    rts
; End of function sub_13AC86


; =============== S U B R O U T I N E =======================================


.proc call_subroutine
    .import next_scr
    .importzp Source, ScriptOffset

    lda Source
    pha
    lda Source+1
    pha
    iny
    lda (Source),Y
    pha
    iny
    lda (Source),Y
    pha
    iny
    lda (Source),Y
    sta ScriptOffset
    iny
    pla
    sta Source+1
    pla
    sta Source
    tya
    pha
    ldy ScriptOffset
    jsr next_scr
    pla
    tay
    pla
    sta Source+1
    pla
    sta Source
    rts
.endproc            ; End of function call_subroutine


; =============== S U B R O U T I N E =======================================


.proc return
    pla
    pla
    rts
.endproc            ; End of function return


; =============== S U B R O U T I N E =======================================


.proc timeout
    .import store_palettes, one_frame, mmc3_bank_set, back_palettes, wait_frames, PalNMIBG
    .importzp Source, CHRBank, BankNum0, BankNum1

    lda CurrentGame + PURE_SAVE::GlobalX
    and #$3F
    cmp #$24
    bcc loc_13AD05
    cmp #$2C
    bcs loc_13AD05
    jsr store_palettes
    iny
    lda (Source),Y
    sta CHRBank
    iny

loc_13ACD0:
    lsr A
    lsr A
    lsr A
    and #7
    tax
    lda Colors,X
    sta PalNMIBG+1
    sta PalNMIBG+5
    sta PalNMIBG+9
    sta PalNMIBG+$D
    jsr one_frame
    lda CHRBank
    bne loc_13ACD0
    lda BankNum0
    ldx #2
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda BankNum1
    ldx #3
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    jmp back_palettes
; ---------------------------------------------------------------------------
Colors:
    .byte LIGHT_BLUE, LIGHT_INDIGO, LIGHT_VIOLET, LIGHT_PURPLE
    .byte LIGHT_REDVIOLET, LIGHT_PURPLE, LIGHT_VIOLET, LIGHT_INDIGO
; ---------------------------------------------------------------------------

loc_13AD05:
    iny
    lda (Source),Y
    tax
    iny
    jmp wait_frames     ; wait for a few frames
.endproc            ; End of function timeout


; =============== S U B R O U T I N E =======================================


display_text:
    .export display_text, out_msg_button
    .importzp Source, PointerTilePack, WaitPressed, ScriptOffset, DialogPage

    iny
    lda (Source),Y
    sta PointerTilePack
    iny
    lda (Source),Y
    sta DialogPage
    iny
    sty ScriptOffset

out_msg_button:
    lda WaitPressed
    bne loc_13AD21
    jsr draw_msg_frame

loc_13AD21:
    lda #8
    cmp WaitPressed
    beq loc_13AD7B
; End of function display_text


; =============== S U B R O U T I N E =======================================


sub_13AD27:
    .export sub_13AD27, out_msg
    .import text2stack, print_string, move_chars, load_obj_bank, loc_13ADC5
    .importzp Row, PointerTilePack, WaitPressed, byte_2D, ScriptOffset, PrintSize, byte_71, DialogPage

    sta WaitPressed

out_msg:
    ldy Row
    cpy #$1B
    bcc loc_13AD36
    jsr sub_13AD98
    dec byte_2D
    bmi loc_13AD84

loc_13AD36:
    lda byte_2D
    bne loc_13AD40
    ldy Row
    cpy #$19
    bcs loc_13AD84

loc_13AD40:
    jsr text2stack
    lda #$16
    sta PrintSize
    lda #0
    sta byte_71
    jsr print_string
    jsr move_chars      ; Move $A4 chars from $432-4D6 to $45B-4FF
    cmp #0
    beq loc_13AD61
    ldy #0
    lda (PointerTilePack),Y
    cmp #3
    beq loc_13AD75
    cmp #0
    bne out_msg

loc_13AD61:
    jsr load_obj_bank
    lda #0
    sta PrintSize
    sta byte_71
    ldy ScriptOffset

loc_13AD6C:
    sec
    lda Row
    sbc #$13
    lsr A
    sta byte_2D
    rts
; ---------------------------------------------------------------------------

loc_13AD75:
    inc PointerTilePack
    bne loc_13AD7B
    inc DialogPage

loc_13AD7B:
    ldy Row
    cpy #$1B
    bcc loc_13AD84
    jsr sub_13AD98

loc_13AD84:
    jsr loc_13AD6C
    ldxa #byte_13AD91
    jsr loc_13ADC5
    jmp loc_13AD40
; End of function sub_13AD27

; ---------------------------------------------------------------------------
byte_13AD91:
    .byte 1, 1, 0, 0, $C0, $3B, $12

; =============== S U B R O U T I N E =======================================


.proc sub_13AD98
    .import delay_print_scroll
    .importzp Row

    ldx #4
    jsr delay_print_scroll
    dec Row
    dec Row
    rts
.endproc            ; End of function sub_13AD98


; =============== S U B R O U T I N E =======================================


.proc confirm_msg
    .importzp CursorPosition, ScriptOffset

    sty ScriptOffset
    jsr sub_13ADAE
    ldy ScriptOffset
    lda CursorPosition
    jmp sub_13AC86
.endproc            ; End of function confirm_msg


; =============== S U B R O U T I N E =======================================


.proc sub_13ADAE
    .export sub_13ADAE, loc_13ADC1, loc_13ADC5
    .import loc_EF4B, byte_F0D1
    .importzp PointerTilePack, pCursor, pStr, Column, DialogPage

    ldxa #Confirm
    sta PointerTilePack
    stx DialogPage
    lda #9
    jsr sub_13AD27
    ldxa #byte_13ADEC
    bne loc_13ADC5

loc_13ADC1:
    ldxa #byte_13ADF3

loc_13ADC5:
    stxa pCursor
    ldy #6
    lda (pCursor),Y
    sta Column
    ldxa #byte_F0D1
    stxa pStr
    jsr loc_EF4B
    lda #8
    sta Column
    rts
.endproc            ; End of function sub_13ADAE

; ---------------------------------------------------------------------------
Confirm:
    .byte "    Yes  No ", 0

byte_13ADEC:
    .byte 2, 1, 5, 0, $80, $3A, $B

byte_13ADF3:
    .byte 2, 1, 9, 0, $C0, $3A, 9

; =============== S U B R O U T I N E =======================================


.proc show_menu
    .import loc_13ADC1
    .importzp Source, Buttons, CursorPosition, PointerTilePack, ScriptOffset, DialogPage

    iny
    lda (Source),Y
    sta PointerTilePack
    iny
    lda (Source),Y
    sta DialogPage
    iny
    sty ScriptOffset
    lda #$37
    jsr sub_13AD27
    jsr loc_13ADC1
    ldy ScriptOffset
    bit Buttons
    bvs loc_13AE20
    lda CursorPosition
    bne loc_13AE1C
    iny
    iny
    rts
; ---------------------------------------------------------------------------

loc_13AE1C:
    lda (Source),Y
    tay
    rts
; ---------------------------------------------------------------------------

loc_13AE20:
    jmp jump
.endproc            ; End of function show_menu


; =============== S U B R O U T I N E =======================================


.proc set_flag
    .import sram_write_enable, FlagBit, sram_read_enable
    .importzp ScriptOffset

    jsr sram_write_enable
    jsr sub_13AE58
    ora FlagBit,X
    sta CurrentGame + GAME_SAVE::Flags,Y
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function set_flag


; =============== S U B R O U T I N E =======================================


.proc clear_flag
    .import sram_write_enable, FlagBit, sram_read_enable
    .importzp ScriptOffset

    jsr sram_write_enable
    jsr sub_13AE58
    ora FlagBit,X
    eor FlagBit,X
    sta CurrentGame + GAME_SAVE::Flags,Y
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function clear_flag


; =============== S U B R O U T I N E =======================================


.proc jump_none_flag
    .import FlagBit
    .importzp ScriptOffset

    jsr sub_13AE58
    ldy ScriptOffset
    and FlagBit,X
    eor FlagBit,X
    jmp sub_13AC86
.endproc            ; End of function jump_none_flag


; =============== S U B R O U T I N E =======================================


.proc sub_13AE58
    .import get_flags
    .importzp ScriptOffset

    iny
    sty ScriptOffset
    jmp get_flags
.endproc            ; End of function sub_13AE58


; =============== S U B R O U T I N E =======================================


.proc increase_counter
    .import sram_write_enable, sram_read_enable
    .importzp Source

    iny
    lda (Source),Y
    tax
    iny
    jsr sram_write_enable
    inc CurrentGame + GAME_SAVE::field_260,X
    jmp sram_read_enable
.endproc            ; End of function increase_counter


; =============== S U B R O U T I N E =======================================


.proc decrease_counter
    .import sram_write_enable, sram_read_enable
    .importzp Source

    iny
    lda (Source),Y
    tax
    iny
    jsr sram_write_enable
    dec CurrentGame + GAME_SAVE::field_260,X
    jmp sram_read_enable
.endproc            ; End of function decrease_counter


; =============== S U B R O U T I N E =======================================


.proc reset_counter
    .import sram_write_enable, sram_read_enable
    .importzp Source

    iny
    lda (Source),Y
    tax
    iny
    jsr sram_write_enable
    lda #0
    sta CurrentGame + GAME_SAVE::field_260,X
    jmp sram_read_enable
.endproc            ; End of function reset_counter


; =============== S U B R O U T I N E =======================================


.proc jump_less
    .importzp Source

    iny
    lda (Source),Y
    tax
    iny
    lda CurrentGame + GAME_SAVE::field_260,X
    cmp (Source),Y
    jmp sub_13AC7A
.endproc            ; End of function jump_less


; =============== S U B R O U T I N E =======================================


.proc special_character
    .importzp ScriptOffset

    jsr sub_13B032
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function special_character


; =============== S U B R O U T I N E =======================================


.proc load_number
    .importzp Source, Price

    iny
    lda (Source),Y
    sta Price
    iny
    lda (Source),Y
    sta Price+1
    iny
    rts
.endproc            ; End of function load_number


; =============== S U B R O U T I N E =======================================


.proc load_money
    .importzp Price

    store CurrentGame + PURE_SAVE::Cash, Price
    iny
    rts
.endproc            ; End of function load_money


; =============== S U B R O U T I N E =======================================


.proc select_item
    .importzp ScriptOffset

    jsr sub_13AFC4
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function select_item


; =============== S U B R O U T I N E =======================================


.proc jump_none_select
    .importzp Source, CharNum

    iny
    lda CharNum
    cmp (Source),Y
    jmp sub_13AC86
.endproc            ; End of function jump_none_select


; =============== S U B R O U T I N E =======================================


.proc jump_number_less
    .importzp Source, Price

    sec
    iny
    lda Price
    sbc (Source),Y
    iny
    lda Price+1
    sbc (Source),Y
    jmp sub_13AC7A
.endproc            ; End of function jump_number_less


; =============== S U B R O U T I N E =======================================


.proc none_select
    .importzp Source, Item

    iny
    lda Item
    cmp (Source),Y
    jmp sub_13AC86
.endproc            ; End of function none_select


; =============== S U B R O U T I N E =======================================


give_money:
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, Price

    clc
    lda CurrentGame + PURE_SAVE::Cash
    adc Price
    sta Pointer
    lda CurrentGame + PURE_SAVE::Cash + 1
    adc Price+1
    sta Pointer+1
    bcs loc_13AF12
    bcc loc_13AEFF

take_money:
    sec
    lda CurrentGame + PURE_SAVE::Cash
    sbc Price
    sta Pointer
    lda CurrentGame + PURE_SAVE::Cash + 1
    sbc Price+1
    sta Pointer+1
    bcc loc_13AF12

loc_13AEFF:
    jsr sram_write_enable
    store Pointer, CurrentGame + PURE_SAVE::Cash
    jsr sram_read_enable
    iny
    iny
    rts
; ---------------------------------------------------------------------------

loc_13AF12:
    jmp jump
; End of function give_money


; =============== S U B R O U T I N E =======================================


add_account:
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, AddrForJmp, Price

    clc
    lda CurrentGame + PURE_SAVE::Account
    adc Price
    sta Pointer
    lda CurrentGame + PURE_SAVE::Account + 1
    adc Price+1
    sta Pointer+1
    lda CurrentGame + PURE_SAVE::field_14
    adc #0
    sta AddrForJmp
    bcs loc_13AF12
    bcc loc_13AF47

withdraw:
    sec
    lda CurrentGame + PURE_SAVE::Account
    sbc Price
    sta Pointer
    lda CurrentGame + PURE_SAVE::Account + 1
    sbc Price+1
    sta Pointer+1
    lda CurrentGame + PURE_SAVE::field_14
    sbc #0
    sta AddrForJmp
    bcc loc_13AF12

loc_13AF47:
    jsr sram_write_enable
    store Pointer, CurrentGame + PURE_SAVE::Account
    lda AddrForJmp
    sta CurrentGame + PURE_SAVE::field_14
    iny
    iny
    jmp sram_read_enable
; End of function add_account


; =============== S U B R O U T I N E =======================================


.proc multiply_num
    .import multiplication, divide
    .importzp Source, pTileID, Pointer, AddrForJmp, ScriptOffset, Price

    iny
    lda (Source),Y
    sta pTileID
    sty ScriptOffset
    lda Price
    sta Pointer
    lda Price+1
    sta Pointer+1
    jsr multiplication      ; Input: Pointer - first multiplier
                        ;        pTileID - second multiplier
                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
    lda #100
    sta pTileID
    jsr divide
    ldy ScriptOffset
    iny 
    lda AddrForJmp
    bne sub_13AF87
    lda Pointer
    sta Price
    lda Pointer+1
    sta Price+1
    rts
.endproc ; End of function multiply_num


; =============== S U B R O U T I N E =======================================


.proc sub_13AF87
    .importzp Price

    lda #$FF
    sta Price
    sta Price+1
    rts
.endproc            ; End of function sub_13AF87


; =============== S U B R O U T I N E =======================================


.proc none_items
    .import get_character_num
    .importzp CharNum, Item

    jsr sub_13AFC4
    ldx #0

loc_13AF93:
    jsr get_character_num
    bcs loc_13AFA5
    sta CharNum
    txa
    pha
    lda Item
    jsr sub_13B058
    pla
    tax
    bcc sub_13B01E

loc_13AFA5:
    inx
    cpx #4
    bcc loc_13AF93
    bcs sub_13B023
.endproc            ; End of function none_items


; =============== S U B R O U T I N E =======================================


.proc none_inventory
    .export none_inventory, none_closet
    .importzp Item

    jsr sub_13AFC4
    lda Item
    jsr sub_13B058
    bcc sub_13B01E
    bcs sub_13B023

none_closet:
    jsr sub_13AFC4
    lda Item
    jsr sub_13B063
    bcs sub_13B023
    bcc sub_13B01E
.endproc            ; End of function none_inventory


; =============== S U B R O U T I N E =======================================


.proc sub_13AFC4
    .importzp Source, Item, ScriptOffset


    iny
    lda (Source),Y
    sta Item
    sty ScriptOffset
    jsr sub_13BBC3
    jmp sub_13BB8C
.endproc            ; End of function sub_13AFC4


; =============== S U B R O U T I N E =======================================


.proc add_inventory
    .export add_inventory, jump_unsellable, remove_inventory, add_closet, remove_closet
    .import load_obj_bank, sram_write_enable, sram_read_enable, item_removed
    .importzp Pointer, ScriptOffset, Item

    sty ScriptOffset
    lda #0
    jsr sub_13B058
    bcs sub_13B023
    bcc loc_13AFFE

jump_unsellable:
    sty ScriptOffset
    jsr sub_13B0A3
    php
    jsr load_obj_bank
    plp
    bne sub_13B023
    beq loc_13AFEC

remove_inventory:
    sty ScriptOffset

loc_13AFEC:
    lda Item
    jsr sub_13B058
    bcs sub_13B023
    bcc loc_13B015

add_closet:
    sty ScriptOffset
    lda #0
    jsr sub_13B063
    bcs sub_13B023

loc_13AFFE:
    jsr sram_write_enable
    lda Item
    sta (Pointer),Y
    ldy ScriptOffset
    iny
    iny
    jmp sram_read_enable
; ---------------------------------------------------------------------------

remove_closet:
    sty ScriptOffset
    lda Item
    jsr sub_13B063
    bcs sub_13B023

loc_13B015:
    jsr sram_write_enable
    jsr item_removed
    jsr sram_read_enable
.endproc            ; End of function add_inventory


; =============== S U B R O U T I N E =======================================


.proc sub_13B01E
    .importzp ScriptOffset

    ldy ScriptOffset
    iny
    iny
    rts
.endproc            ; End of function sub_13B01E


; =============== S U B R O U T I N E =======================================


.proc sub_13B023
    .importzp ScriptOffset

    ldy ScriptOffset
    jmp jump
.endproc            ; End of function sub_13B023


; =============== S U B R O U T I N E =======================================


.proc no_character
    jsr sub_13B032
    jsr sub_13A728
    bcc sub_13B01E
    bcs sub_13B023
.endproc            ; End of function no_character


; =============== S U B R O U T I N E =======================================


.proc sub_13B032
    .importzp Source, CharNum, ScriptOffset

    iny
    lda (Source),Y
    sta CharNum
    sty ScriptOffset
    jmp get_name
.endproc            ; End of function sub_13B032


; =============== S U B R O U T I N E =======================================


.proc select_character_item
    .importzp Source, ScriptOffset, CharNum, Item, Pointer

    iny
    lda (Source),Y
    sty ScriptOffset
    pha
    lda CharNum
    jsr get_goods_pntr
    pla
    tay
    lda (Pointer),Y
    beq sub_13B023
    sta Item
    jsr sub_13BBC3
    jsr sub_13BB8C
    jmp sub_13B01E
.endproc            ; End of function select_character_item


; =============== S U B R O U T I N E =======================================


sub_13B058:
    .importzp CharNum

    pha
    lda CharNum
    jsr get_goods_pntr
    pla
    ldy #8
    bne loc_13B068
; End of function sub_13B058


; =============== S U B R O U T I N E =======================================


sub_13B063:
    .export sub_13B063, item_removed
    .importzp Pointer, pTileID

    jsr sub_13B09A
    ldy #$50

loc_13B068:
    sty pTileID
    ldy #0

@next_item:
    cmp (Pointer),Y
    beq @item_found
    iny
    cpy pTileID
    bcc @next_item
    rts
; ---------------------------------------------------------------------------

@item_found:
    clc
    rts
; ---------------------------------------------------------------------------

loc_13B078:
    lda (Pointer),Y
    dey
    sta (Pointer),Y
    iny

item_removed:
    iny
    cpy pTileID
    bcc loc_13B078
    lda #0
    dey
    sta (Pointer),Y
    rts
; End of function sub_13B063


; =============== S U B R O U T I N E =======================================


.proc get_goods_pntr
    .import get_character_pointer
    .importzp Pointer

    jsr get_character_pointer ; Input: A - Character number
                        ; Output: Pointer (word) = High $74 Low $40 * A
    clc
    lda Pointer
    adc #<CHARACTER::Goods
    sta Pointer
    lda Pointer+1
    adc #>CHARACTER::Goods
    sta Pointer+1
    rts
.endproc            ; End of function get_goods_pntr


; =============== S U B R O U T I N E =======================================


.proc sub_13B09A
    .importzp Pointer

    storex #CurrentGame + GAME_SAVE::field_2B0, Pointer
    rts
.endproc            ; End of function sub_13B09A


; =============== S U B R O U T I N E =======================================


.proc sub_13B0A3
    .importzp Pointer

    jsr get_item_pointer
    ldy #2
    lda (Pointer),Y
    and #$80
    rts
.endproc            ; End of function sub_13B0A3


; =============== S U B R O U T I N E =======================================


choose_character:
    .importzp Column, Row, WaitPressed, ScriptOffset

    lda #$18
    sta WaitPressed
    lda Column
    pha
    lda Row
    pha
    sty ScriptOffset
    jsr sub_13B763
    pla
    sta Row
    pla
    sta Column
    bcs loc_13B0CC

loc_13B0C4:
    jsr get_name
    ldy ScriptOffset
    iny
    iny
    rts
; ---------------------------------------------------------------------------

loc_13B0CC:
    ldy ScriptOffset
    jmp jump
; End of function choose_character


; =============== S U B R O U T I N E =======================================


select_character:
    .importzp Source, CharNum, ScriptOffset

    iny
    lda (Source),Y
    sty ScriptOffset
    tax
    cpx #4
    bcs loc_13B0CC
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_13B0CC
    sta CharNum
    bne loc_13B0C4
; End of function select_character


; =============== S U B R O U T I N E =======================================


.proc input_number
    .import loc_EF7C, get_cursor_pos, sub_F1A4, loc_13B1A5
    .importzp Pointer, PointerTilePack, ScriptOffset, pDist, pStr, CurrentX, CurrentY, CursorPosition
    .importzp Column, Buttons, pCursor, byte_6C, Price, DialogPage

    sty ScriptOffset
    jsr sub_13BC28
    ldx #7

loc_13B0EB:
    lda byte_13B15E,X
    sta pDist,X
    dex
    bpl loc_13B0EB
    ldxa #stru_13B166
    sta PointerTilePack
    stx DialogPage
    lda #$1C
    jsr sub_13AD27
    ldxa #byte_13B16C
    stxa pCursor
    lda #$6C
    ldx #0
    sta pStr
    stx pStr+1
    lda #0
    sta CurrentX
    sta CurrentY
    sta CursorPosition

loc_13B118:
    ldx #$C
    stx Column
    jsr loc_EF7C
    lda Buttons
    and #$C
    beq loc_13B146
    ldx CursorPosition
    ldy byte_6C,X
    and #8
    beq loc_13B136
    iny
    cpy #$BA
    bne loc_13B13D
    ldy #$B0
    bne loc_13B13D

loc_13B136:
    dey
    cpy #$AF
    bne loc_13B13D
    ldy #$B9

loc_13B13D:
    tya
    sta byte_6C,X
    jsr get_cursor_pos  ; get position of cursor and set cursor tile
                        ; Input: A - tile ID
                        ; Output: PosX, PosY
    jmp loc_13B118
; ---------------------------------------------------------------------------

loc_13B146:
    jsr sub_F1A4
    lda Pointer
    sta Price
    lda Pointer+1
    sta Price+1
    ldx #8
    stx Column
    ldy ScriptOffset
    lda #$40
    bit Buttons
    jmp sub_13AC86
.endproc            ; End of function input_number

; ---------------------------------------------------------------------------
byte_13B15E:
    .byte "  $ 0000"        ; .byte $A0, $A0, $A4, $A0, $B0, $B0, $B0, $B0

stru_13B166:
    convert pDist, 0, 8     ; $68, 0, 8
    end_frame

byte_13B16C:
    .byte 4, 1, 1, 0, $CC, 1

; =============== S U B R O U T I N E =======================================


.proc choose_closet_item
    .import loc_13B1A5
    .importzp Column, Row, WaitPressed, ScriptOffset

    lda #$21
    sta WaitPressed
    sty ScriptOffset
    lda Column
    pha
    lda Row
    pha
    jsr sub_13B87F
    jmp loc_13B1A5
.endproc            ; End of function choose_closet_item


; =============== S U B R O U T I N E =======================================


.proc choose_list_item
    .import loc_13B1A5
    .importzp Column, Row, WaitPressed, ScriptOffset

    lda #$22
    sta WaitPressed
    sty ScriptOffset
    lda Column
    pha
    lda Row
    pha
    jsr sub_13B814
    jmp loc_13B1A5
.endproc            ; End of function choose_list_item


; =============== S U B R O U T I N E =======================================


choose_inventory:
    .export choose_inventory, loc_13B1A5
    .importzp Column, Row, WaitPressed, ScriptOffset

    lda #$20
    sta WaitPressed
    sty ScriptOffset
    lda Column
    pha
    lda Row
    pha
    jsr sub_13B7B6

loc_13B1A5:
    pla
    sta Row
    pla
    sta Column
    bcs loc_13B1B8
    jsr sub_13BBC3
    jsr sub_13BB8C

loc_13B1B3:
    ldy ScriptOffset
    iny
    iny
    rts
; ---------------------------------------------------------------------------

loc_13B1B8:
    ldy ScriptOffset
    jmp jump
; End of function choose_inventory


; =============== S U B R O U T I N E =======================================


no_inventory:
    .import get_character_num
    .importzp ScriptOffset

    sty ScriptOffset
    ldx #0

loc_13B1C1:
    jsr get_character_num
    bcs loc_13B1D1
    tay
    txa
    pha
    tya
    jsr sub_13B1E1
    pla
    tax
    bcc loc_13B1B3

loc_13B1D1:
    inx
    cpx #4
    bcc loc_13B1C1
    bcs loc_13B1B8

no_closet:
    sty ScriptOffset
    jsr loc_13B1E8
    bcs loc_13B1B8
    bcc loc_13B1B3
; End of function no_inventory


; =============== S U B R O U T I N E =======================================


sub_13B1E1:
    .importzp Pointer, pTileID

    jsr get_goods_pntr
    ldy #8
    bne loc_13B1ED

loc_13B1E8:
    jsr sub_13B09A
    ldy #$50

loc_13B1ED:
    sty pTileID
    ldy #0

loc_13B1F1:
    lda (Pointer),Y
    bne loc_13B1FB
    iny
    cpy pTileID
    bcc loc_13B1F1
    rts
; ---------------------------------------------------------------------------

loc_13B1FB:
    clc
    rts
; End of function sub_13B1E1


; =============== S U B R O U T I N E =======================================


take_weapon:
    .import get_char_pointer, sram_write_enable, load_obj_bank, sram_read_enable
    .importzp Pointer, ScriptOffset, AddrForJmp

    sty ScriptOffset
    jsr get_char_pointer
    jsr sram_write_enable
    ldy #$28
    lda (Pointer),Y
    beq loc_13B21B
    sta CurrentGame + GAME_SAVE::field_280
    sty AddrForJmp
    jsr sub_13BC5A
    jsr load_obj_bank

loc_13B216:
    ldy ScriptOffset
    iny
    iny
    rts
; ---------------------------------------------------------------------------

loc_13B21B:
    ldy ScriptOffset
    jsr sram_read_enable

loc_13B220:
    jmp jump
; End of function take_weapon


; =============== S U B R O U T I N E =======================================


select_weapon:
    .importzp Item, ScriptOffset

    lda CurrentGame + GAME_SAVE::field_280
    beq loc_13B220
    sta Item
    sty ScriptOffset
    jsr sub_13BBC3
    jsr sub_13BB8C
    jmp loc_13B216
; End of function select_weapon


; =============== S U B R O U T I N E =======================================


.proc change_object_type
    .import sram_write_enable, sram_read_enable, save_obj_value
    .importzp Source, ScriptOffset

    jsr sram_write_enable
    iny
    lda (Source),Y
    sty ScriptOffset
    jsr save_obj_value
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function change_object_type


; =============== S U B R O U T I N E =======================================


.proc move_object
    .import sram_write_enable, sram_read_enable, CoorXY, end_object
    .importzp Source, Dist, ScriptOffset

    jsr sram_write_enable
    iny
    lda (Source),Y
    pha
    iny
    lda (Source),Y
    iny
    sty ScriptOffset
    ldy #$1F
    sta (Dist),Y
    dey
    pla
    sta (Dist),Y
    ldy #0
    lda #7
    sta (Dist),Y
    ldy #0
    lda (Source),Y
    and #$3F
    ldy #$1D
    sta (Dist),Y
    ldy #$14
    lda (Dist),Y
    and #$BF
    sta (Dist),Y
    ldy #$1C
    lda ScriptOffset
    sta (Dist),Y
    lda $6795           ; byte_6795
    asl A
    asl A
    asl A
    tax 
    lda CoorXY + CHANGE_COOR::NewX,X
    lsr A
    lsr A
    sta $6799           ; byte_6799
    jsr sram_read_enable
    pla
    pla
    jmp end_object
.endproc            ; End of function move_object


; =============== S U B R O U T I N E =======================================


.proc rocket
    .export rocket, loc_13B295
    .import sram_read_enable
    .importzp ScriptOffset, BankTable

    lda BankTable + BANK_TABLE::PPU_2K_1800
    jsr sub_13B29C

loc_13B295:
    ldy ScriptOffset
    iny
    iny
    jmp sram_read_enable
.endproc            ; End of function rocket


; =============== S U B R O U T I N E =======================================


.proc sub_13B29C
    .import sram_write_enable, sram_read_enable
    .importzp Dist, ObjectNumWithChar, byte_23, ScriptOffset

    tax
    sty ScriptOffset
    jsr sram_write_enable
    txa
    eor byte_23
    and #$7F
    bne loc_13B2AA
    rts
; ---------------------------------------------------------------------------

loc_13B2AA:
    stx byte_23
    ldy #$1C
    lda ScriptOffset
    sta (Dist),Y
    jsr get_objects_num
    ora #$80
    sta ObjectNumWithChar
    jsr sram_read_enable
    pla
    pla
    pla
    pla
    jmp check_button_pressed
.endproc            ; End of function sub_13B29C


; =============== S U B R O U T I N E =======================================


.proc get_objects_num
    .importzp Pointer, Dist

    sec
    lda Dist
    sbc #<Characters
    sta Pointer
    lda Dist+1
    sbc #>Characters
    asl Pointer
    rol A
    asl Pointer
    rol A
    asl Pointer
    rol A
    rts
.endproc            ; End of function get_objects_num


; =============== S U B R O U T I N E =======================================


.proc sub_13B2D8
    .export sub_13B2D8, loc_13B2DE
    .importzp Source, ScriptOffset

    stx $6796           ; byte_6796
    sty $6797           ; byte_6797

loc_13B2DE:
    sta $6780           ; byte_6780
    asl A
    asl A
    tax
    lda $E107,X         ; ObjectHandler.value,X
    sta $6788           ; byte_6788
    lda $E108,X         ; ObjectHandler.value+1,X
    sta $6794           ; byte_6794
    ldy ScriptOffset
    iny
    lda (Source),Y
    sta $6795           ; byte_6795
    sta $6799           ; byte_6799
    rts
.endproc            ; End of function sub_13B2D8


; =============== S U B R O U T I N E =======================================


.proc airplane
    .import sub_CDAF, loc_13B295

    lda #$74
    jsr sub_13B29C
    lda #9
    ldx #$FC
    ldy #$8A            ; 8AFC
    jsr sub_13B2D8
    lda #$F
    sta $679A           ; byte_679A
    ldx #$10
    jsr sub_CDAF
    jmp loc_13B295
.endproc            ; End of function airplane


; =============== S U B R O U T I N E =======================================


.proc sub_13B317
    .import sram_write_enable, sram_read_enable

    jsr sram_write_enable
    lda #$F8
    sta $679A           ; byte_679A
    iny
    jmp sram_read_enable
.endproc            ; End of function sub_13B317


; =============== S U B R O U T I N E =======================================


.proc tank
    .import sub_CDAF, loc_13B295

    lda #$74
    jsr sub_13B29C
    lda #$A
    ldx #$1C
    ldy #$8B            ; 8B1C
    jsr sub_13B2D8
    ldx #8
    jsr sub_CDAF
    jmp loc_13B295
.endproc            ; End of function tank


; =============== S U B R O U T I N E =======================================


.proc boat
    .import loc_13B295

    lda #$74
    jsr sub_13B29C
    lda #$B
    ldx #$3C
    ldy #$8B            ; 8B3C
    jsr sub_13B2D8
    jmp loc_13B295
.endproc            ; End of function boat


; =============== S U B R O U T I N E =======================================


.proc train
    .import sram_write_enable, sram_read_enable, sub_CDAF
    .importzp ObjNumber, byte_23, Item, ScriptOffset

    sty ScriptOffset
    lda #$F0
    sta byte_23
    lda #$3F
    sta ObjNumber
    jsr sram_write_enable
    lda #0
    sta $67C0           ; byte_67C0
    sta $67E0           ; byte_67E0
    lda #$D
    ldy #0
    jsr sub_13B38B
    lda #$E
    ldy #$20
    jsr sub_13B38B
    sec
    lda Item
    sbc #$8F
    sta $679E           ; byte_679E
    lda #0
    sta $679F           ; byte_679F
    sta $679A           ; byte_679A
    jsr sub_13BBD4
    ldx #$10
    jsr sub_CDAF
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function train


; =============== S U B R O U T I N E =======================================


.proc sub_13B38B
    sta $6780,Y         ; byte_6780,Y
    asl A
    asl A
    tax
    lda #$28
    sta $6796,Y         ; byte_6796,Y
    lda #$8A
    sta $6797,Y         ; byte_6797,Y
    lda $E107,X         ; ObjectHandler.value,X
    sta $6788,Y         ; byte_6788,Y
    lda $E108,X         ; ObjectHandler.value+1,X
    sta $6794,Y         ; byte_6794,Y
    rts
.endproc            ; End of function sub_13B38B


; =============== S U B R O U T I N E =======================================


.proc elevator
    .import loc_13B2DE, loc_13B295

    lda #$F2
    jsr sub_13B29C
    lda #$F
    jsr loc_13B2DE
    jmp loc_13B295
.endproc            ; End of function elevator


; =============== S U B R O U T I N E =======================================


.proc no_vehicle
    .import sub_CDAF, copy_character_buffer
    .importzp Source, Dist, byte_20, byte_23, ScriptOffset

    iny
    sty ScriptOffset
    lda (Source),Y
    ora #$80
    sta byte_20
    ldx #0
    stx byte_23
    jsr sub_CDAF
    lda Dist
    pha
    lda Dist+1
    pha
    jsr copy_character_buffer
    pla
    sta Dist+1
    pla
    sta Dist
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function no_vehicle


; =============== S U B R O U T I N E =======================================


.proc sub_13B3D8
    .importzp Source, ScriptOffset

    sty     ScriptOffset
    ldy     #2
    lda     (Source),Y
    and     #$3F
    ldy     ScriptOffset
    cmp     $6795           ; byte_6795
    jmp     sub_13AC86
.endproc            ; End of function sub_13B3D8


; =============== S U B R O U T I N E =======================================


.proc sub_13B3E8
    .importzp Source, Dist, ScriptOffset

    sty ScriptOffset
    ldy #0
    lda (Source),Y
    and #$C0
    ldy #4
    cmp (Dist),Y
    bne loc_13B41B
    ldy #1
    lda (Source),Y
    ldy #5
    cmp (Dist),Y
    bne loc_13B41B
    ldy #2
    lda (Source),Y
    and #$C0
    ldy #6
    cmp (Dist),Y
    bne loc_13B41B
    ldy #3
    lda (Source),Y
    ldy #7
    cmp (Dist),Y
    bne loc_13B41B
    ldy ScriptOffset
    iny
    iny
    rts
; ---------------------------------------------------------------------------

loc_13B41B:
    ldy ScriptOffset
    jmp jump
.endproc            ; End of function sub_13B3E8


; =============== S U B R O U T I N E =======================================


.proc teleport
    .import sram_write_enable, sram_read_enable, enter

    jsr sram_write_enable
    iny
    jsr enter
    iny
    jmp sram_read_enable
.endproc            ; End of function teleport


; =============== S U B R O U T I N E =======================================


.proc sub_13B42B
    .importzp Source, FuncID

    iny
    lda (Source),Y
    sta FuncID
    iny
    rts
.endproc            ; End of function sub_13B42B


; =============== S U B R O U T I N E =======================================


.proc sub_13B432
    .import sram_write_enable, sram_read_enable, sub_D9FA
    .importzp ScriptOffset

    sty ScriptOffset
    jsr sram_write_enable
    jsr sub_D9FA
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function sub_13B432


; =============== S U B R O U T I N E =======================================


.proc add_character
    .import sub_D759, loc_13AC7E
    .importzp Dist, CharNum, ScriptOffset

    jsr sub_13B032
    lda Dist
    pha
    lda Dist+1
    pha
    lda CharNum
    jsr sub_D759
    pla
    sta Dist+1
    pla
    sta Dist
    ldy ScriptOffset
    jmp loc_13AC7E
.endproc            ; End of function add_character


; =============== S U B R O U T I N E =======================================


.proc remove_character
    .import sub_D78D, loc_13AC7E
    .importzp Dist, CharNum, ScriptOffset

    jsr sub_13B032
    lda Dist
    pha
    lda Dist+1
    pha
    lda CharNum
    jsr sub_D78D
    pla
    sta Dist+1
    pla
    sta Dist
    ldy ScriptOffset
    jmp loc_13AC7E
.endproc            ; End of function remove_character


; =============== S U B R O U T I N E =======================================


.proc set_enemy_group
    .importzp Source, ObjectNumWithChar, ScriptOffset, EnemyGroup

    iny
    lda (Source),Y
    sta EnemyGroup
    jsr get_objects_num
    sta ObjectNumWithChar
    iny
    sty ScriptOffset
    pla
    pla
    jmp check_button_pressed
.endproc            ; End of function set_enemy_group


; =============== S U B R O U T I N E =======================================


.proc show_money
    .importzp ScriptOffset

    sty     ScriptOffset
    jsr     sub_13BC28
    ldy     ScriptOffset
    iny
    rts
.endproc            ; End of function show_money


; =============== S U B R O U T I N E =======================================


.proc change_map_val
    .import sram_write_enable, sram_read_enable
    .importzp Source

    jsr sram_write_enable
    iny
    lda (Source),Y
    and #$3F
    tax
    iny
    lda (Source),Y
    sta CurrentGame,X
    iny
    jmp sram_read_enable
.endproc            ; End of function change_map_val


; =============== S U B R O U T I N E =======================================


.proc save_game
    .importzp ScriptOffset

    sty ScriptOffset
    jsr make_save
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function save_game


; =============== S U B R O U T I N E =======================================


.proc next_level
    .import get_char_pointer, sub_DB40, load_obj_bank, sram_write_enable, sram_read_enable
    .importzp Pointer, ScriptOffset, Price, pTileID

    sty ScriptOffset
    jsr get_char_pointer
    ldy #$10
    lda (Pointer),Y
    jsr sub_DB40
    jsr get_char_pointer
    ldy #$11
    sec
    lda pTileID
    sbc (Pointer),Y
    sta Price
    iny
    lda pTileID+1
    sbc (Pointer),Y
    sta Price+1
    jsr load_obj_bank
    jsr sram_write_enable
    ldx #3

loc_13B4D0:
    lda CurrentGame + PURE_SAVE::GlobalX,X
    sta CurrentGame + PURE_SAVE::field_C,X
    dex
    bpl loc_13B4D0
    lda #0
    sta CurrentGame + PURE_SAVE::Transfer
    sta CurrentGame + PURE_SAVE::Transfer + 1
    sta CurrentGame + PURE_SAVE::field_17
    jsr sram_read_enable
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function next_level


; =============== S U B R O U T I N E =======================================


.proc teleport_save
    .import sram_write_enable, sram_read_enable
    .importzp byte_20, byte_22

    jsr sram_write_enable
    ldx #3

loc_13B4F0:
    lda CurrentGame + PURE_SAVE::field_C,X
    sta CurrentGame + PURE_SAVE::GlobalX,X
    dex
    bpl loc_13B4F0
    lda #$20
    sta byte_20
    lda #0
    sta byte_22
    iny
    jmp sram_read_enable
.endproc            ; End of function teleport_save


; =============== S U B R O U T I N E =======================================


.proc no_add_money
    .import loc_13AC82

    lda CurrentGame + PURE_SAVE::Transfer
    ora CurrentGame + PURE_SAVE::Transfer + 1
    ora CurrentGame + PURE_SAVE::field_17
    jmp loc_13AC82
.endproc            ; End of function no_add_money


; =============== S U B R O U T I N E =======================================


.proc multiply_char
    .import get_character_num, get_character_pointer
    .importzp ScriptOffset, Price, pTileID, Pointer

    sty ScriptOffset
    lda Price
    sta pTileID
    lda Price+1
    sta pTileID+1
    ldx #1

loc_13B51D:
    jsr get_character_num
    bcs loc_13B53D
    jsr get_character_pointer ; Input: A - Character number
                        ; Output: Pointer (word) = High $74 Low $40 * A
    ldy #1
    lda (Pointer),Y
    bmi loc_13B53D
    clc
    lda pTileID
    adc Price
    sta Price
    lda pTileID+1
    adc Price+1
    sta Price+1
    bcc loc_13B53D
    jsr sub_13AF87

loc_13B53D:
    inx
    cpx #4
    bcc loc_13B51D
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function multiply_char


; =============== S U B R O U T I N E =======================================


.proc sleep
    .import wait_frames, lighten_palette
    .importzp WaitPressed, ScriptOffset

    sty ScriptOffset
    ldx #60
    jsr wait_frames     ; wait for a few frames input: X - number of frames
    jsr darken_palette
    jsr sub_13B561
    jsr draw_msg_frame
    lda #$55
    sta WaitPressed
    jsr lighten_palette ; increase the brightness of colors in the palette
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function sleep


; =============== S U B R O U T I N E =======================================


.proc sub_13B561
    .import sram_write_enable, sram_read_enable, get_character_pointer, sub_CDE4
    .importzp Pointer

    jsr sram_write_enable
    ldx #0

loc_13B566:
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_13B57A
    jsr get_character_pointer ; Input: A - Character number
                        ; Output: Pointer (word) = High $74 Low $40 * A
    ldy #1
    lda (Pointer),Y
    bmi loc_13B57A
    jsr recovery_health
    jsr sub_13B598

loc_13B57A:
    inx
    cpx #4
    bcc loc_13B566
    jsr sram_read_enable
    lda #$20
    jmp sub_CDE4
.endproc            ; End of function sub_13B561


; =============== S U B R O U T I N E =======================================


.proc recovery_health
    .importzp Pointer

    ldy #CHARACTER::MaxHealth
    lda (Pointer),Y
    ldy #CHARACTER::Health
    sta (Pointer),Y
    ldy #CHARACTER::MaxHealth+1
    lda (Pointer),Y
    ldy #CHARACTER::Health+1
    sta (Pointer),Y
    rts
.endproc            ; End of function recovery_health


; =============== S U B R O U T I N E =======================================


.proc sub_13B598
    .importzp Pointer

    ldy #5
    lda (Pointer),Y
    ldy #$16
    sta (Pointer),Y
    ldy #6
    lda (Pointer),Y
    ldy #$17
    sta (Pointer),Y
    rts
.endproc            ; End of function sub_13B598


; =============== S U B R O U T I N E =======================================


.proc less_maxhp
    .importzp Pointer, ScriptOffset

    jsr sub_13B5C2
    sec
    ldy #$14
    lda (Pointer),Y
    ldy #3
    sbc (Pointer),Y
    ldy #$15
    lda (Pointer),Y
    ldy #4
    sbc (Pointer),Y
    ldy ScriptOffset
    jmp sub_13AC7A
.endproc            ; End of function less_maxhp


; =============== S U B R O U T I N E =======================================


.proc sub_13B5C2
    .export sub_13B5C2, get_char_pointer
    .import get_character_pointer
    .importzp CharNum, ScriptOffset

    sty ScriptOffset

get_char_pointer:
    lda CharNum
    jmp get_character_pointer ; Input: A - Character number
.endproc            ; End of function sub_13B5C2            ; Output: Pointer (word) = High $74 Low $40 * A


; =============== S U B R O U T I N E =======================================


.proc less_maxpp
    .importzp Pointer, ScriptOffset

    jsr sub_13B5C2
    sec
    ldy #$16
    lda (Pointer),Y
    ldy #5
    sbc (Pointer),Y
    ldy #$17
    lda (Pointer),Y
    ldy #6
    sbc (Pointer),Y
    ldy ScriptOffset
    jmp sub_13AC7A
.endproc            ; End of function less_maxpp


; =============== S U B R O U T I N E =======================================


.proc status
    .importzp Source, Pointer, ScriptOffset

    iny
    jsr sub_13B5C2
    ldy #1
    lda (Pointer),Y
    ldy ScriptOffset
    and (Source),Y
    jmp sub_13AC86
.endproc            ; End of function status


; =============== S U B R O U T I N E =======================================


.proc below_level
    .importzp Source, Pointer, ScriptOffset

    iny
    jsr sub_13B5C2
    ldy #$10
    lda (Pointer),Y
    ldy ScriptOffset
    cmp (Source),Y
    jmp sub_13AC7A
.endproc            ; End of function below_level


; =============== S U B R O U T I N E =======================================


.proc remove_status
    .import sram_write_enable, sram_read_enable, loc_13A6F0
    .importzp Source, Pointer, ScriptOffset

    iny
    jsr sub_13B5C2
    jsr sram_write_enable
    ldy ScriptOffset
    lda (Source),Y
    php
    ldy #1
    pha
    lda (Pointer),Y
    tax
    pla
    and (Pointer),Y
    sta (Pointer),Y
    plp
    bmi loc_13B623
    jsr recovery_health
    txa
    bpl loc_13B623
    jsr loc_13A6F0

loc_13B623:
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function remove_status


; =============== S U B R O U T I N E =======================================


.proc inflict_status
    .import sram_write_enable, sram_read_enable
    .importzp Source, Pointer, ScriptOffset

    iny
    jsr sub_13B5C2
    jsr sram_write_enable
    ldy ScriptOffset
    lda (Source),Y
    ldy #1
    ora (Pointer),Y
    sta (Pointer),Y
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function inflict_status


; =============== S U B R O U T I N E =======================================


.proc recovery_pp
    .export recovery_pp, heal_hp
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, ScriptOffset, AddrForJmp, Source, pTileID

    iny
    jsr sub_13B5C2
    ldx #$16
    ldy #5
    bne loc_13B652

heal_hp:
    iny
    jsr sub_13B5C2
    ldx #$14
    ldy #3

loc_13B652:
    stx AddrForJmp
    sty AddrForJmp+1
    clc
    ldy ScriptOffset
    lda (Source),Y
    ldy AddrForJmp
    adc (Pointer),Y
    sta pTileID
    iny
    lda #0
    adc (Pointer),Y
    sta pTileID+1
    sec
    ldy AddrForJmp+1
    lda (Pointer),Y
    sbc pTileID
    iny
    lda (Pointer),Y
    sbc pTileID+1
    bcs loc_13B681
    ldy AddrForJmp+1
    lda (Pointer),Y
    sta pTileID
    iny
    lda (Pointer),Y
    sta pTileID+1

loc_13B681:
    jsr sram_write_enable
    ldy AddrForJmp
    lda pTileID
    sta (Pointer),Y
    iny
    lda pTileID+1
    sta (Pointer),Y
    ldy ScriptOffset
    iny
    jmp sram_read_enable
.endproc            ; End of function recovery_pp


; =============== S U B R O U T I N E =======================================


.proc set_music
    .import sram_write_enable, sram_read_enable, wait_change_music
    .importzp Source

    iny
    lda (Source),Y
    jsr wait_change_music
    jsr sram_write_enable
    lda CurrentGame + PURE_SAVE::GlobalX
    and #$C0
    ora (Source),Y
    sta CurrentGame + PURE_SAVE::GlobalX
    iny
    jmp sram_read_enable
.endproc            ; End of function set_music


; =============== S U B R O U T I N E =======================================


.proc play_sound1
    .import Sound1
    .importzp Source

    iny
    lda (Source),Y
    sta Sound1
    iny
    rts
.endproc            ; End of function play_sound1


; =============== S U B R O U T I N E =======================================


.proc play_sound2
    .importzp Source

    iny
    lda (Source),Y
    sta Sound2
    iny
    rts
.endproc            ; End of function play_sound2


; =============== S U B R O U T I N E =======================================


.proc play_sound3
    .import Sound3
    .importzp Source

    iny
    lda (Source),Y
    sta Sound3
    iny
    rts
.endproc            ; End of function play_sound3


; =============== S U B R O U T I N E =======================================


.proc teach_teleport
    .import sram_write_enable, sram_read_enable

    jsr sram_write_enable
    lda #$20
    ora CurrentGame + PURE_SAVE::Boy1 + CHARACTER::PSI
    sta CurrentGame + PURE_SAVE::Boy1 + CHARACTER::PSI
    lda #$20
    ora CurrentGame + PURE_SAVE::Girl + CHARACTER::PSI
    sta CurrentGame + PURE_SAVE::Girl + CHARACTER::PSI
    iny
    jmp sram_read_enable
.endproc            ; End of function teach_teleport


; =============== S U B R O U T I N E =======================================


.proc live_show
    .import bank_A000_a, sub_19A6C2
    .importzp ScriptOffset

    sty ScriptOffset
    lda #$19
    ldyx #(sub_19A6C2-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function live_show


; =============== S U B R O U T I N E =======================================


.proc less_melodies
    .import sram_write_enable, sram_read_enable

    lda CurrentGame + GAME_SAVE::Flags+$1E
    cmp #$FF
    beq loc_13B6F4
    jmp jump
; ---------------------------------------------------------------------------

loc_13B6F4:
    jsr sram_write_enable
    ldx #3

loc_13B6F9:
    lda byte_13B708,X
    sta CurrentGame + PURE_SAVE::field_C,X
    dex
    bpl loc_13B6F9
    jsr sram_read_enable
    iny
    iny
    rts
.endproc            ; End of function less_melodies

; ---------------------------------------------------------------------------
byte_13B708:
    .byte $D2, 0, $80, $47

; =============== S U B R O U T I N E =======================================


.proc name_register
    .importzp Column, Row, WaitPressed, ScriptOffset

    lda #$66
    sta WaitPressed
    sty ScriptOffset
    lda Column
    pha
    lda Row
    pha
    jsr sub_13B9E4
    pla
    sta Row
    pla
    sta Column
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function name_register


; =============== S U B R O U T I N E =======================================


.proc darken
    .import wait_nmi_processed, bg_blackout

    jsr wait_nmi_processed
    jsr bg_blackout
    iny
    rts
.endproc            ; End of function darken


; =============== S U B R O U T I N E =======================================


.proc land_mine
    .import back_palettes

    jsr sub_13BD3B
    jsr back_palettes
    iny
    rts
.endproc            ; End of function land_mine


; =============== S U B R O U T I N E =======================================


.proc shake
    .import sub_EEE4

    ldx #$10

loc_13B737:
    jsr sub_EEE4
    dex
    bne loc_13B737
    iny
    rts
.endproc            ; End of function shake


; =============== S U B R O U T I N E =======================================


.proc crystal
    .import bank_A000_a, load_obj_bank, sub_19A5CC
    .importzp ScriptOffset

    sty ScriptOffset
    lda #$19
    ldyx #(sub_19A5CC-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    jsr load_obj_bank
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function crystal


; =============== S U B R O U T I N E =======================================


.proc sub_13B751
    .import bank_A000_a, load_obj_bank, nullsub_7
    .importzp ScriptOffset

    sty ScriptOffset
    lda #$19
    ldyx #(nullsub_7-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    jsr load_obj_bank
    ldy ScriptOffset
    iny
    rts
.endproc            ; End of function sub_13B751


; =============== S U B R O U T I N E =======================================


.proc sub_13B763
    .import draw_symbol, sub_C3C0, load_obj_bank, cursor_update, get_cursor_pos
    .importzp Column, Row, pCursor, Buttons, CursorPosition, CharNum

    ldx #2
    ldy #25
    stx Column
    sty Row
    ldx #2

loc_13B76D:
    lda $6704,X
    beq loc_13B77E
    lda #$A0
    jsr draw_symbol
    dec Row
    dec Row
    dex
    bpl loc_13B76D

loc_13B77E:
    dec Column
    sec
    lda Row
    sbc #4
    sta Row
    jsr sub_C3C0
    jsr load_obj_bank
    ldxa #stru_13B7AC
    stxa pCursor
    jsr cursor_update
    bit Buttons
    bmi loc_13B79E
    sec
    rts
; ---------------------------------------------------------------------------

loc_13B79E:
    lda #$FF
    jsr get_cursor_pos  ; get position of cursor and set cursor tile Input: A - tile ID Output: PosX, PosY
    ldx CursorPosition
    lda $6704,X
    sta CharNum
    clc
    rts
.endproc            ; End of function sub_13B763

; ---------------------------------------------------------------------------
stru_13B7AC:
    .byte 1, 3, 0, 2, $C0, $3A, 2, $15  ; CURSOR <1, 3, 0, 2, $C0, $3A, 2, $15, byte_196704>
    .word $6704 ; byte_196704

; =============== S U B R O U T I N E =======================================


.proc sub_13B7B6
    .import goods_psi_frame, get_character_num
    .importzp ItemCount, Buttons, CharNum

    jsr goods_psi_frame
    ldx #$FF

loc_13B7BB:
    inx
    cpx #3
    bcc loc_13B7C2
    ldx #0

loc_13B7C2:
    jsr get_character_num
    bcs loc_13B7BB
    sta CharNum
    stx ItemCount
    jsr print_character_name
    jsr get_goods_pointer
    jsr print_goods
    jsr character_menu
    ldx ItemCount
    lda #6
    bit Buttons
    bvs loc_13B7F4
    bmi loc_13B7BB
    beq loc_13B7BB
    jsr get_goods_pointer
    jsr goods_select
    bit Buttons
    bvs loc_13B7F4
    bmi get_item
    ldx ItemCount
    jmp loc_13B7C2
; ---------------------------------------------------------------------------

loc_13B7F4:
    sec
    rts
.endproc            ; End of function sub_13B7B6


; =============== S U B R O U T I N E =======================================


.proc get_item
    .import get_cursor_pos
    .importzp pStr, CursorPosition, Item

    lda #$FF
    jsr get_cursor_pos
    ldy CursorPosition
    lda (pStr),Y
    sta Item
    clc
    rts
.endproc            ; End of function get_item


; =============== S U B R O U T I N E =======================================


.proc get_goods_pointer
    .import get_char_pointer
    .importzp Pointer, pStr

    jsr get_char_pointer
    clc
    lda Pointer
    adc #CHARACTER::Goods
    sta pStr
    lda Pointer+1
    adc #0
    sta pStr+1
    rts
.endproc            ; End of function get_goods_pointer


; =============== S U B R O U T I N E =======================================


.proc sub_13B814
    .import sub_C3B9, load_obj_bank, short_cursor_update
    .importzp Source, pStr, Row, Column, pCursor, Buttons, Item, ScriptOffset, PrintSize

    jsr sub_C3B9
    jsr load_obj_bank
    sec
    lda ScriptOffset
    adc Source
    sta pStr
    lda #0
    adc Source+1
    sta pStr+1
    ldy #3

loc_13B829:
    sty Row
    ldy ScriptOffset
    iny
    sty ScriptOffset
    lda (Source),Y
    sta Item
    beq loc_13B853
    lda #$C
    sta PrintSize
    ldx #3
    stx Column
    jsr print_item
    jsr sub_13BBC3
    lda #0
    sta PrintSize
    ldx #$F
    stx Column
    ldxa #byte_13B86F
    jsr draw_tiles

loc_13B853:
    ldy Row
    iny
    iny
    cpy #$B
    bcc loc_13B829
    ldxa #stru_13B877
    stxa pCursor
    jsr short_cursor_update
    bit Buttons
    bmi loc_13B86C
    sec
    rts
; ---------------------------------------------------------------------------

loc_13B86C:
    jmp get_item
.endproc            ; End of function sub_13B814

; ---------------------------------------------------------------------------
byte_13B86F:
    .byte $A4, $23, $2A, 0, 2, 4, $BA, 0

stru_13B877:
    .byte 1, 4, 0, 2, $C0, $3A, 2, 3    ;CURSOR_SHORT <1, 4, 0, 2, $C0, $3A, 2, 3>

; =============== S U B R O U T I N E =======================================


.proc sub_13B87F
    .import goods_psi_frame
    .importzp ItemCount, Buttons

    jsr goods_psi_frame
    ldxa #stru_13B8D8
    jsr draw_tiles
    ldx #$F8

loc_13B88B:
    clc
    txa
    adc #8
    tax
    cpx #$50
    bcc loc_13B896
    ldx #0

loc_13B896:
    lda CurrentGame + GAME_SAVE::field_2B0,X
    bne loc_13B89D
    ldx #0

loc_13B89D:
    stx ItemCount
    jsr sub_13B8CA
    jsr print_goods
    jsr character_menu
    ldx ItemCount
    lda #6
    bit Buttons
    bvs loc_13B8C5
    bmi loc_13B88B
    beq loc_13B88B
    jsr sub_13B8CA
    jsr goods_select
    bit Buttons
    bvs loc_13B8C5
    bmi loc_13B8C7
    ldx ItemCount
    jmp loc_13B896
; ---------------------------------------------------------------------------

loc_13B8C5:
    sec
    rts
; ---------------------------------------------------------------------------

loc_13B8C7:
    jmp get_item
.endproc            ; End of function sub_13B87F


; =============== S U B R O U T I N E =======================================


.proc sub_13B8CA
    .importzp ItemCount, pStr

    clc
    lda ItemCount
    adc #<(CurrentGame + GAME_SAVE::field_2B0)     ; #$B0
    sta pStr
    lda #0
    adc #>(CurrentGame + GAME_SAVE::field_2B0)      ; #$76
    sta pStr+1
    rts
.endproc            ; End of function sub_13B8CA

; ---------------------------------------------------------------------------
stru_13B8D8:
    tile_position 9, 3
    .byte "The Closet", 0

; =============== S U B R O U T I N E =======================================


.proc sub_13B8E6
    .import goods_psi_frame
    .importzp Pointer, CharNum, ItemCount, Buttons

    jsr goods_psi_frame
    ldx #$FF

loc_13B8EB:
    inx
    cpx #3
    bcc loc_13B8F2
    ldx #0

loc_13B8F2:
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_13B8EB
    cmp #3
    bcs loc_13B8EB
    sta CharNum
    stx ItemCount
    jsr print_character_name
    jsr sub_13B935
    jsr print_goods
    jsr character_menu
    ldx ItemCount
    lda #6
    bit Buttons
    bvs loc_13B930
    bmi loc_13B8EB
    beq loc_13B8EB
    jsr sub_13B935
    ldy #1
    lda (Pointer),Y
    and #$F0
    bne loc_13B92B
    jsr goods_select
    bit Buttons
    bvs loc_13B930
    bmi loc_13B932

loc_13B92B:
    ldx ItemCount
    jmp loc_13B8F2
; ---------------------------------------------------------------------------

loc_13B930:
    sec
    rts
; ---------------------------------------------------------------------------

loc_13B932:
    jmp get_item
.endproc            ; End of function sub_13B8E6


; =============== S U B R O U T I N E =======================================


.proc sub_13B935
    .import get_char_pointer, FlagBit
    .importzp Pointer, pStr, pTileID

    jsr get_char_pointer
    clc
    lda Pointer
    adc #$30
    sta pStr
    lda Pointer+1
    adc #0
    sta pStr+1
    ldx #0
    ldy #0

loc_13B949:
    stx pTileID
    sty pTileID+1
    lda pTileID+1
    and #7
    tax
    lda pTileID+1
    lsr A
    lsr A
    lsr A
    tay
    lda (pStr),Y
    and FlagBit,X
    ldx pTileID
    and byte_13B98B,Y
    beq loc_13B971
    clc
    lda pTileID+1
    adc #$C0
    sta byte_580,X
    inx
    cpx #8
    bcs loc_13B982

loc_13B971:
    ldy pTileID+1
    iny
    cpy #$20
    bcc loc_13B949
    lda #0

loc_13B97A:
    sta byte_580,X
    inx
    cpx #8
    bcc loc_13B97A

loc_13B982:
    ldxa #byte_580
    stxa pStr
    rts
.endproc            ; End of function sub_13B935

; ---------------------------------------------------------------------------
byte_13B98B:
    .byte $60, $E0, $A8, 0

; =============== S U B R O U T I N E =======================================


.proc sub_13B98F
    .import goods_psi_frame, loc_13BB12
    .importzp Buttons

    jsr goods_psi_frame
    ldxa #stru_13B9D1
    jsr draw_tiles
    jsr sub_13B9AF
    jsr print_goods
    ldxa #stru_13B9DC
    jsr loc_13BB12
    bit Buttons
    bmi loc_13B9AC
    sec
    rts
; ---------------------------------------------------------------------------

loc_13B9AC:
    jmp get_item
.endproc            ; End of function sub_13B98F


; =============== S U B R O U T I N E =======================================


.proc sub_13B9AF
    .importzp pTileID, pStr

    lda CurrentGame + GAME_SAVE::Flags+$1D
    sta pTileID+1
    ldx #0

loc_13B9B6:
    lda #0
    asl pTileID+1
    bcc loc_13B9C0
    clc
    txa
    adc #$80

loc_13B9C0:
    sta byte_580,X
    inx
    cpx #8
    bcc loc_13B9B6
    ldxa #byte_580
    stxa pStr
    rts
.endproc            ; End of function sub_13B9AF

; ---------------------------------------------------------------------------
stru_13B9D1:
    tile_position 7, 3
    .byte FRAME_TOP_SHORT, "Where?", 0

stru_13B9DC:
    .byte 2, 4, $C, 2, $C0, $3A, 6, 5   ; CURSOR_SHORT <2, 4, $C, 2, $C0, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


.proc sub_13B9E4
    .import sub_C3CE,draw_tilepack, cursor_update, loc_EF7C, sram_write_enable, sram_read_enable, load_obj_bank
    .importzp ItemCount, Buttons, CursorPosition, byte_D6

    jsr sub_C3CE
    ldxa #stru_13BAB6
    jsr draw_tiles
    jsr draw_tilepack
    ldx #0
    jsr sub_13BA72
    jsr sub_13BA72
    jsr sram_write_enable
    lda #0
    sta CurrentGame + PURE_SAVE::field_31
    sta ItemCount
    ldy #$10
    lda #$A2

loc_13BA07:
    sta CurrentGame + PURE_SAVE::field_20,Y
    dey
    bpl loc_13BA07
    sta byte_D6
    jsr sub_13BA8D
    jsr cursor_update
    jmp loc_13BA1E
; ---------------------------------------------------------------------------

loc_13BA18:
    jsr sub_13BA8D
    jsr loc_EF7C

loc_13BA1E:
    bit Buttons
    bmi loc_13BA39
    bvc loc_13BA54

loc_13BA24:
    ldy ItemCount
    beq loc_13BA18
    lda CurrentGame + PURE_SAVE::field_20,Y
    cmp #$A2
    bne loc_13BA30
    dey

loc_13BA30:
    lda #$A2
    sty ItemCount
    sta CurrentGame + PURE_SAVE::field_20,Y
    bne loc_13BA18

loc_13BA39:
    ldy CursorPosition
    cpy #$10
    beq loc_13BA24
    cpy #$26
    beq loc_13BA54
    lda byte_580,Y
    ldy ItemCount
    sta CurrentGame + PURE_SAVE::field_20,Y
    cpy #$10
    bcs loc_13BA18
    iny
    sty ItemCount
    bne loc_13BA18

loc_13BA54:
    ldy ItemCount
    beq loc_13BA18
    lda CurrentGame + PURE_SAVE::field_20,Y
    cmp #$A2
    beq loc_13BA60
    iny

loc_13BA60:
    lda #0
    sta CurrentGame + PURE_SAVE::field_20,Y
    sta byte_D6
    lda #$F0
    sta OAM_Cache + OAM_TILE::PosY+4
    jsr sram_read_enable
    jmp load_obj_bank
.endproc            ; End of function sub_13B9E4


; =============== S U B R O U T I N E =======================================


.proc sub_13BA72
    .import byte_57E

    ldy #$11

loc_13BA74:
    lda byte_13BAB9,X
    sta byte_580,X
    inx
    dey
    bne loc_13BA74
    lda #0
    sta byte_57E,X
    ldy #5

loc_13BA85:
    sta byte_580,X
    inx
    dey
    bne loc_13BA85
    rts
.endproc            ; End of function sub_13BA72


; =============== S U B R O U T I N E =======================================


.proc sub_13BA8D
    .importzp ItemCount, pCursor

    ldxa #byte_13BAE5
    jsr draw_tiles
    lda #$32
    sta OAM_Cache + OAM_TILE::PosY+4
    lda #1
    sta OAM_Cache + OAM_TILE::TileID+4
    lda #0
    sta OAM_Cache + OAM_TILE::Attr+4
    lda ItemCount
    asl A
    asl A
    asl A
    adc #$48
    sta OAM_Cache + OAM_TILE::PosX+4
    ldxa #stru_13BAEF
    stxa pCursor
    rts
.endproc            ; End of function sub_13BA8D

; ---------------------------------------------------------------------------
stru_13BAB6:
    tile_position 8, 9

byte_13BAB9:
    .byte "ABCDEFG HIJKLMN @Back", 1
    .byte "OPQRSTU VWXYZ.", $A7, " @End ", 0

byte_13BAE5:
    tile_position 9, 5
    tile_pointer CurrentGame + PURE_SAVE::field_20
    tile_position 8, 9
    end_frame

stru_13BAEF:
.import byte_580

    .byte $16, 2, 1, 2, $D0, 1, 8, 9    ; CURSOR <$16, 2, 1, 2, $D0, 1, 8, 9, $580>
    .word byte_580

; =============== S U B R O U T I N E =======================================


.proc character_menu
    .import cursor_update
    .importzp pCursor

    ldxa #CharacterCursor
    stxa pCursor
    jmp cursor_update
.endproc            ; End of function character_menu

; ---------------------------------------------------------------------------
CharacterCursor:
    .import byte_F0D1
    .byte 1, 1, 0, 0, $C5, $3A, 7, 3        ; CURSOR <1, 1, 0, 0, $C5, $3A, 7, 3, $F0D1> ; ROM:F0D1
    .word byte_F0D1

; =============== S U B R O U T I N E =======================================


.proc goods_select
    .export goods_select, loc_13BB12
    .import short_cursor_update
    .importzp pCursor

    ldxa #GoodsCursor

loc_13BB12:
    stxa pCursor
    jmp short_cursor_update
.endproc            ; End of function goods_select

; ---------------------------------------------------------------------------
GoodsCursor:
    .byte 2, 4, $C, 2, $C8, $3A, 6, 5       ; CURSOR_SHORT <2, 4, $C, 2, $C8, $3A, 6, 5>

; =============== S U B R O U T I N E =======================================


.proc print_character_name
    .import get_character_pointer, draw_tilepack
    .importzp Pointer, PointerTilePack, PrintSize, Column, Row

    jsr get_character_pointer ; Input: A - Character number Output: Pointer (word) = High $74 Low $40 * A
    clc 
    lda Pointer
    adc #CHARACTER::Name
    sta PointerTilePack
    lda Pointer+1
    adc #0
    sta PointerTilePack+1
    lda #7
    ldx #9
    ldy #3
    sta PrintSize
    stx Column
    sty Row
    jmp draw_tilepack
.endproc            ; End of function print_character_name


; =============== S U B R O U T I N E =======================================


.proc print_goods
    .importzp Row, Column, CursorPosition, pStr, Item, PrintSize

    lda #$B
    ldx #7
    ldy #5
    sta PrintSize
    sty Row
    ldy #0

next_item:
    stx Column
    sty CursorPosition
    lda (pStr),Y
    sta Item
    jsr print_item
    ldx #$13
    cpx Column
    bne @next_column
    inc Row
    inc Row
    ldx #7

@next_column:
    ldy CursorPosition
    iny
    cpy #8
    bcc next_item
    lda #0
    sta PrintSize
    rts
.endproc            ; End of function print_goods


; =============== S U B R O U T I N E =======================================


.proc get_name
    .import get_char_pointer, sram_write_enable, sram_read_enable, byte_6D00, word_6D01
    .importzp Pointer

    jsr get_char_pointer
    jsr sram_write_enable
    lda #4
    sta byte_6D00
    clc
    lda Pointer
    adc #<CHARACTER::Name
    sta word_6D01
    lda Pointer+1
    adc #>CHARACTER::Name
    sta word_6D01+1
    jmp sram_read_enable
.endproc            ; End of function get_name


; =============== S U B R O U T I N E =======================================


.proc sub_13BB8C
    .export sub_13BB8C
    .import sram_write_enable, sram_read_enable, load_obj_bank, byte_6D04
    .importzp Pointer, pTileID

    jsr get_item_pointer
    ldy #0
    lda (Pointer),Y
    sta pTileID
    iny
    lda (Pointer),Y
    sta pTileID+1
    jsr sram_write_enable
    ldy #0

loc_13BB9F:
    lda (pTileID),Y
    sta byte_6D04,Y
    iny
    cmp #0
    bne loc_13BB9F
    jsr sram_read_enable
    jmp load_obj_bank
.endproc            ; End of function sub_13BB8C


; =============== S U B R O U T I N E =======================================


.proc print_item
    .import draw_tilepack, load_obj_bank
    .importzp Pointer, PointerTilePack

    jsr get_item_pointer
    ldy #0
    lda (Pointer),Y
    sta PointerTilePack
    iny
    lda (Pointer),Y
    sta PointerTilePack+1
    jsr draw_tilepack
    jmp load_obj_bank
.endproc            ; End of function print_item


; =============== S U B R O U T I N E =======================================


.proc sub_13BBC3
    .export sub_13BBC3
    .import load_obj_bank
    .importzp Pointer, Price

    jsr get_item_pointer
    ldy #6
    lda (Pointer),Y
    sta Price
    iny
    lda (Pointer),Y
    sta Price+1
    jmp load_obj_bank
.endproc            ; End of function sub_13BBC3


; =============== S U B R O U T I N E =======================================


.proc sub_13BBD4
    .export sub_13BBD4
    .import loc_E6A9, load_obj_bank

    jsr get_item_pointer
    ldy #2
    jsr loc_E6A9
    jmp load_obj_bank
.endproc            ; End of function sub_13BBD4


; =============== S U B R O U T I N E =======================================


.proc get_item_pointer
    .export get_item_pointer, get_item_pntr
    .import ItemList
    .importzp Pointer

    jsr get_item_offset

get_item_pntr:
    clc
    lda Pointer
    adc #<ItemList
    sta Pointer
    lda Pointer+1
    adc #>ItemList
    sta Pointer+1
    rts
.endproc            ; End of function get_item_pointer


; =============== S U B R O U T I N E =======================================


.proc get_item_offset
    .export get_item_offset, get_off
    .import set_bank0_0
    .importzp Pointer, Item

    lda Item

get_off:
    sta Pointer
    lda #0
    asl Pointer
    rol A
    asl Pointer
    rol A
    asl Pointer
    rol A
    sta Pointer+1
    jmp set_bank0_0
.endproc            ; End of function get_item_offset


; =============== S U B R O U T I N E =======================================


.proc sub_13BC04
    .import wait_press_button, sub_C3D5

    jsr wait_press_button
    jmp sub_C3D5
.endproc            ; End of function sub_13BC04


; =============== S U B R O U T I N E =======================================


.proc draw_msg_frame
    .import out_msg_frame, load_obj_bank
    .importzp PointerTilePack, Column, Row, byte_2D, DialogPage

    lda PointerTilePack
    pha
    lda DialogPage
    pha
    jsr out_msg_frame
    pla
    sta DialogPage
    pla
    sta PointerTilePack
    lda #0
    sta byte_2D
    ldx #8
    ldy #19
    stx Column
    sty Row
    jmp load_obj_bank
.endproc            ; End of function draw_msg_frame


; =============== S U B R O U T I N E =======================================


.proc sub_13BC28
    .import sub_C3DF, load_obj_bank
    .importzp Column, Row

    lda Column
    pha
    lda Row
    pha
    jsr sub_C3DF
    pla
    sta Row
    pla
    sta Column
    jmp load_obj_bank
.endproc            ; End of function sub_13BC28


; =============== S U B R O U T I N E =======================================


sub_13BC3A:
    .importzp AddrForJmp, CursorMode, FieldPosition, Item

    lda AddrForJmp
    and #$3F
    sta CursorMode
    lda AddrForJmp
    and #$C0
    asl A
    rol A
    rol A
    adc #$28
    sta AddrForJmp
    lda Item
    jsr sub_13B058
    bcs locret_13BC59
    tya
    adc #$20
    sta FieldPosition
    bcc loc_13BC5E

locret_13BC59:
    rts

; ---------------------------------------------------------------------------

sub_13BC5A:
    .import get_char_pointer, get_off, get_item_pntr, sram_write_enable, sram_read_enable
    .importzp CursorMode, Pointer, pDist, AddrForJmp, FieldPosition

    lda #0
    sta CursorMode

loc_13BC5E:
    jsr get_char_pointer
    lda Pointer
    ldx Pointer+1
    sta pDist
    stx pDist+1
    ldy AddrForJmp
    lda (pDist),Y
    jsr get_off
    jsr get_item_pntr
    ldy #3
    lda (Pointer),Y
    and #$3F
    sta AddrForJmp+1
    jsr sram_write_enable
    ldx AddrForJmp
    lda loc_13BCC0,X
    bmi loc_13BCA6
    tay
    sec
    lda (pDist),Y
    sbc AddrForJmp+1
    sta (pDist),Y
    iny
    lda (pDist),Y
    sbc #0
    sta (pDist),Y
    dey
    clc
    lda (pDist),Y
    adc CursorMode
    sta (pDist),Y
    iny
    lda (pDist),Y
    adc #0
    sta (pDist),Y
    jmp loc_13BCB8
; ---------------------------------------------------------------------------

loc_13BCA6:
    ldy #2
    lda AddrForJmp+1
    asl A
    eor #$FF
    and (pDist),Y
    sta (pDist),Y
    lda CursorMode
    asl A
    ora (pDist),Y
    sta (pDist),Y

loc_13BCB8:
    lda CursorMode
    beq loc_13BCE0
    ldy FieldPosition
    lda (pDist),Y

loc_13BCC0:
    tax
    ldy AddrForJmp
    lda (pDist),Y
    bne loc_13BCDB
    ldy FieldPosition
    bne loc_13BCD1

loc_13BCCB:
    lda (pDist),Y
    dey
    sta (pDist),Y
    iny

loc_13BCD1:
    iny
    cpy #$28
    bcc loc_13BCCB
    dey
    lda #0
    beq loc_13BCDD

loc_13BCDB:
    ldy FieldPosition

loc_13BCDD:
    sta (pDist),Y
    txa

loc_13BCE0:
    ldy AddrForJmp
    sta (pDist),Y
    clc
    jmp sram_read_enable

; ---------------------------------------------------------------------------
    .byte 7, 9, 9, $FF

; =============== S U B R O U T I N E =======================================

; Executes a subroutine from RoutineTable at the offset stored in FuncID, whose value is reset.

.proc routine_selector
    .export routine_selector
    .import RoutineTable
    .importzp FuncID

    lda FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    asl A
    tax
    lda #0
    sta FuncID          ; ID from table BANK13:BCFD (RoutineTable)
    lda RoutineTable+1,X
    pha
    lda RoutineTable,X
    pha
    rts
.endproc            ; End of function routine_selector

; ---------------------------------------------------------------------------
RoutineTable:
    .export RoutineTable
    .import darken_palette, loc_13BD34

    .word darken_palette-1, sub_13BD0D-1, check_copyright-1, sub_13BD31-1
    .word sub_13BD5C-1, sub_13BDD9-1, loc_13BD34-1, sub_13BE0F-1

; =============== S U B R O U T I N E =======================================


.proc sub_13BD0D
    .import Sound1

    lda #8
    sta Sound1
    jmp darken_palette
.endproc            ; End of function sub_13BD0D


; =============== S U B R O U T I N E =======================================


.proc check_copyright
    .import one_color_lighten_palette, bank_A000_a, wait_frames, copyright_violation
    .importzp CopyrightViolation

    lda #$10
    sta Sound2
    lda #LIGHTEST_PURPLE
    jsr one_color_lighten_palette
    lda CopyrightViolation
    beq @no_violation
    lda #$19
    ldyx #(copyright_violation-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte

@no_violation:
    ldx #60
    jmp wait_frames     ; wait for a few frames
.endproc            ; End of function check_copyright       ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


.proc sub_13BD31
    .export sub_13BD31, loc_13BD34
    .importzp byte_20

    jsr sub_13BD3B

loc_13BD34:
    lda #$20
    sta byte_20
    jmp darken_palette
.endproc            ; End of function sub_13BD31


; =============== S U B R O U T I N E =======================================


.proc sub_13BD3B
    .import store_palettes, one_color_palettes, Sound1

    jsr store_palettes
    lda #2
    sta Sound1
    lda #$14

loc_13BD45:
    pha
    lda #LIGHTEST_PURPLE
    jsr one_color_palettes
    lda #LIGHTEST_YELLOW
    jsr one_color_palettes
    lda #WHITE
    jsr one_color_palettes
    pla
    sec
    sbc #1
    bne loc_13BD45
    rts
.endproc            ; End of function sub_13BD3B


; =============== S U B R O U T I N E =======================================


.proc sub_13BD5C
    .import one_color_lighten_palette, clear_oam_sprite, home_camera, mmc3_bank_set,sub_CE6D, sub_E087
    .import copy_palettes, wait_nmi_processed, wait_frames, SpriteTable, Sound1
    .importzp Pointer, NMIFlags

    lda #9
    sta Sound1
    lda #MEDIUM_BLUE
    jsr one_color_lighten_palette
    jsr clear_oam_sprite
    jsr home_camera
    lda #$5D
    ldx #2
    jsr mmc3_bank_set   ; Set memory bank A - bank number X - mode
    jsr sub_CE6D
    lda #$5C
    ldx #2
    jsr mmc3_bank_set   ; Set memory bank A - bank number X - mode
    ldxa #byte_13BE1F
    stxa Pointer
    jsr sub_E087
    ldxa #Palette1
    jsr copy_palettes
    ldy #$16

loc_13BD91:
    tya
    pha
    ldx #8

loc_13BD95:
    jsr wait_nmi_processed
    lda #1
    sta SpriteTable + ANIM_SPRITE::ShiftY,X
    lda SpriteTable + ANIM_SPRITE::PosY,X
    and #$1F
    bne loc_13BDAA
    lda #$E8
    ldy #$FF
    bne loc_13BDAE

loc_13BDAA:
    lda #8
    ldy #0

loc_13BDAE:
    clc
    adc SpriteTable + ANIM_SPRITE::pFrame,X
    sta SpriteTable + ANIM_SPRITE::pFrame,X
    tya
    adc SpriteTable + ANIM_SPRITE::pFrame+1,X
    sta SpriteTable + ANIM_SPRITE::pFrame+1,X
    clc
    txa
    adc #8
    tax
    cpx #$28
    bcc loc_13BD95
    lda #8
    sta NMIFlags
    pla
    tay
    dey
    bne loc_13BD91
    jsr clear_oam_sprite
    jsr darken_palette
    ldx #90
    jmp wait_frames     ; wait for a few frames input: X - number of frames
.endproc            ; End of function sub_13BD5C


; =============== S U B R O U T I N E =======================================


.proc sub_13BDD9
    .import sub_EE0E,update_animation, bank14_8000, loc_149641, one_color_palettes_save, wait_frames, SpriteTable, Sound1

    lda #$11
    jsr sub_EE0E
    lda #3
    sta Sound1
    jsr update_animation
    ldx #8
    ldy #7

loc_13BDEA:
    lda byte_13BE4F,Y
    sta SpriteTable + ANIM_SPRITE::ShiftY,X
    dey
    lda byte_13BE4F,Y
    sta SpriteTable + ANIM_SPRITE::ShiftX,X
    clc
    txa
    adc #8
    tax
    dey
    bpl loc_13BDEA
    jsr bank14_8000
    jsr loc_149641
    lda #MEDIUM_BLUE
    jsr one_color_palettes_save
    ldx #90
    jmp wait_frames     ; wait for a few frames input: X - number of frames
.endproc            ; End of function sub_13BDD9


; =============== S U B R O U T I N E =======================================


.proc sub_13BE0F
    .import wait_change_music, wait_frames

    jsr loc_13BD34
    lda #$FF
    jsr wait_change_music
    ldx #90
    jsr wait_frames     ; wait for a few frames input: X - number of frames
    jmp sub_13B561
.endproc            ; End of function sub_13BE0F

; ---------------------------------------------------------------------------
byte_13BE1F:
    .byte $60, $E0, $40, $18, $68, $C8, $40, 0, $58, $B0, $40
    .byte 8, $60, $98, $40, $10

Palette1:
    .byte BLACK, LIGHT_INDIGO, LIGHTEST_GRAY, MEDIUM_BLUE   ; PALETTE0
    .byte BLACK, MEDIUM_GRAY, MEDIUM_GREEN, MEDIUM_BLUE     ; PALETTE1
    .byte BLACK, WHITE, DARK_GRAY, MEDIUM_BLUE              ; PALETTE2
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE              ; PALETTE3
    .byte BLACK, BLACK, DARK_BLUE, LIGHTEST_BLUE            ; PALETTE0
    .byte BLACK, BLACK, MEDIUM_VIOLET, LIGHTEST_INDIGO      ; PALETTE1
    .byte BLACK, BLACK, LIGHT_INDIGO, LIGHTEST_INDIGO       ; PALETTE2
    .byte BLACK, BLACK, MEDIUM_BLUE, LIGHTEST_INDIGO        ; PALETTE3

byte_13BE4F:
    .byte $FE, $FF, 2, $FF, $FF, $FE, 1, $FE


; =============== S U B R O U T I N E =======================================


.proc make_save
    .export make_save
    .import sram_write_enable, sram_read_enable
    .importzp pTileID, pDist, Pointer

    lda CurrentGame + PURE_SAVE::GameNumber
    jsr get_dist_save_addr ; Input: A - destination block number
                        ; Output: returns the destination address to pDist, returns $7400 - source address to pTileID
    jsr check_sum       ; Output: return check sum to Pointer
    jsr sram_write_enable
    sec 
    ldy #0
    lda (pTileID),Y
    sbc Pointer
    sta (pTileID),Y
    iny 
    lda (pTileID),Y
    sbc Pointer+1
    sta (pTileID),Y
    ldx #3

@next_block:
    ldy #0

@next_byte:
    lda (pTileID),Y
    sta (pDist),Y
    iny
    bne @next_byte
    inc pTileID+1
    inc pDist+1
    dex
    bne @next_block
    jmp sram_read_enable
.endproc            ; End of function make_save


; =============== S U B R O U T I N E =======================================


.proc get_save_block
    .export get_save_block
    .import sram_write_enable, sram_read_enable
    .importzp pDist, pTileID, Pointer

    jsr get_dist_save_addr  ; Input: A - destination block number
                            ; Output: returns the destination address to pDist
                            ;         returns $7400 - source address to pTileID
    jsr sram_write_enable
    ldx #3

@next_block:
    ldy #0

@next_byte:
    lda (pDist),Y       ; copy SRAM $7700-$79FF (game 1), $7A00-$7CFF (game 2), $7D00-$7FFF (game 3) to $7400-$76FF
    sta (pTileID),Y
    iny
    bne @next_byte
    inc pDist+1
    inc pTileID+1
    dex
    bne @next_block
    jsr sram_read_enable
    jsr check_sum       ; Output: return check sum to Pointer
    lda CurrentGame + PURE_SAVE::GameNumber
    and #$F0
    cmp #$B0
    bne @exit
    lda CurrentGame + PURE_SAVE::Active
    cmp #$E9
    bne @exit
    lda Pointer
    ora Pointer+1

@exit:
    rts
.endproc            ; End of function get_save_block


; =============== S U B R O U T I N E =======================================

; Input: A - destination block number
; Output: returns the destination address to pDist
;         returns $7400 - source address to pTileID

.proc get_dist_save_addr
    .export get_dist_save_addr, get_active_save
    .import Game1
    .importzp pDist, pTileID

    and #7
    sta pDist+1
    asl A
    adc pDist+1
    adc #>Game1
    sta pDist+1
    lda #0
    sta pDist

get_active_save:
    ldxa #CurrentGame
    stxa pTileID
    rts
.endproc            ; End of function get_dist_save_addr


; =============== S U B R O U T I N E =======================================

; Output: return check sum to Pointer

.proc check_sum
    .import get_active_save
    .importzp Pointer, pTileID

    jsr get_active_save ; returns the address $7400 in pTileID
    lda #0
    sta Pointer
    sta Pointer+1
    ldx #3

@next_block:
    ldy #0              ; APU program ???

@next_word:
    clc
    lda (pTileID),Y
    adc Pointer
    sta Pointer
    iny
    lda (pTileID),Y
    adc Pointer+1
    sta Pointer+1
    iny
    bne @next_word
    inc pTileID+1
    dex
    bne @next_block
    jmp get_active_save ; returns the address $7400 in pTileID
.endproc

