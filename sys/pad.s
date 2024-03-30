.include "nes.inc"

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
    .importzp TileCount, Attribute, Gamepad0Status, ButtonPressed0

    ldx #1

@read_gamepad:
    sec                         ; set carry flag

@set_pad_strobe:
    php                         ; push processor status register on the stack
    lda #1                      ; reset joysticks, write first $01 then $00 into $4016
    sta IO_JOY1
    lda #0
    sta IO_JOY1
    ldy #8                      ; initialize Y to 8 (number of bits to process)

@read_pad_data:
    lda IO_JOY1,X               ; read the controller data at $4016 + X (NES input registers)
    lsr A                       ; shift the data right to get the next bit
    rol TileCount
    lsr A
    rol Attribute
    dey 
    bne @read_pad_data     ; loop until all 8 bits are read
    lda TileCount
    ora Attribute
    plp                         ; pull the original processor status register
    bcc @handle_pad2
    sta Gamepad0Status,X
    clc                         ; clear carry flag
    bcc @set_pad_strobe

@handle_pad2:
    cmp Gamepad0Status,X        ; compare the data with the previously stored data
    beq @skip_pad_update   ; if equal, skip the controller update
    lda ButtonPressed0,X

@skip_pad_update:
    tay
    eor ButtonPressed0,X
    and Gamepad0Status,X
    sta Gamepad0Status,X
    sty ButtonPressed0,X
    dex 
    bpl @read_gamepad
    rts 
.endproc

; FE86
; subroutine to handle game logic and control flow
.proc handle_game_logic
    .export handle_game_logic
    .importzp Gamepad0Status, byte_D0, byte_D1, byte_D2, byte_D3

    LDA Gamepad0Status
    BNE @check_next_state
    LDA byte_D3
    CMP #$2A
    BCC @next_state
    RTS

@check_next_state:
    LDA #0
    STA byte_D3

@next_state:
    INC byte_D0
    BNE @exit
    INC byte_D3
    INC byte_D1
    BNE @exit
    INC byte_D2

@exit:
    RTS
.endproc
