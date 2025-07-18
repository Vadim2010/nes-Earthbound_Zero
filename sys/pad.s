.include "nes.inc"
.include "macros.inc"

; .segment "ZEROPAGE"
    ; gamepad_press: .res 1
    ; gamepad_last_press: .res 1
    ; gamepad_new_press: .res 1
    ; gamepad_release: .res 1

.segment "PAD"

; FE4B
; subroutine to process gamepad 1 input and perform bitwise operations
.proc gamepad_input
    .export gamepad_input
    .importzp TileCount, Attribute, GamepadStatus, ButtonPressed

    ldx #1

@read_gamepad:
    sec                         ; set carry flag

@set_pad_strobe:
    php                         ; push processor status register on the stack
    set IO_JOY1, #1                      ; reset joysticks, write first $01 then $00 into $4016
    set IO_JOY1, #0
    ldy #8                      ; initialize Y to 8 (number of bits to process)

@read_pad_data:
    lda IO_JOY1,X               ; read the controller data at $4016 + X (NES input registers)
    lsr A                       ; shift the data right to get the next bit
    rol TileCount
    lsr A
    rol Attribute
    dey 
    bne @read_pad_data          ; loop until all 8 bits are read
    lda TileCount
    ora Attribute
    plp                         ; pull the original processor status register
    bcc @handle_pad2
    sta GamepadStatus,X
    clc                         ; clear carry flag
    bcc @set_pad_strobe

@handle_pad2:
    cmp GamepadStatus,X        ; compare the data with the previously stored data
    beq @skip_pad_update        ; if equal, skip the controller update
    lda ButtonPressed,X

@skip_pad_update:
    tay
    eor ButtonPressed,X
    and GamepadStatus,X
    sta GamepadStatus,X
    sty ButtonPressed,X
    dex 
    bpl @read_gamepad
    rts 
.endproc

; FE86
; subroutine to handle game logic and control flow
.proc handle_game_logic
    .export handle_game_logic
    .importzp GamepadStatus, byte_D0, byte_D1, byte_D2, byte_D3

    lda GamepadStatus
    bne @check_next_state
    lda byte_D3
    cmp #$2A
    bcc @next_state
    rts

@check_next_state:
    set byte_D3, #0

@next_state:
    inc byte_D0
    bne @exit
    inc byte_D3
    inc byte_D1
    bne @exit
    inc byte_D2

@exit:
    rts
.endproc
