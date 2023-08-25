.segment "ZEROPAGE"
    gamepad_press: .res 1
    gamepad_last_press: .res 1
    gamepad_new_press: .res 1
    gamepad_release: .res 1

.segment "CODE"

; FE4B
; subroutine to process gamepad 1 input and perform bitwise operations
.proc gamepad_input
    LDX #1

@ReadGamepad:
    SEC                         ; set carry flag

@SetControllerStrobe:
    PHP                         ; push processor status register on the stack
    LDA #1                      ; reset joysticks, write first $01 then $00 into $4016
    STA GAMEPAD_REGISTER0
    LDA #0
    STA GAMEPAD_REGISTER0

    LDY #8                      ; initialize Y to 8 (number of bits to process)

@ReadControllerData:
    LDA GAMEPAD_REGISTER0,X     ; read the controller data at $4016 + X (NES input registers)
    LSR A                       ; shift the data right to get the next bit
    ROL GamePadBit0
    LSR A
    ROL GamePadBit1
    DEY 
    BNE @ReadControllerData     ; loop until all 8 bits are read
    LDA GamePadBit0
    ORA GamePadBit1
    PLP                         ; pull the original processor status register
    BCC @HandleController2
    STA Gamepad0Status,X
    CLC                         ; clear carry flag
    BCC @SetControllerStrobe

@HandleController2:
    CMP Gamepad0Status,X        ; compare the data with the previously stored data
    BEQ @SkipControllerUpdate   ; if equal, skip the controller update
    LDA $DE,X

@SkipControllerUpdate:
    TAY
    EOR $DE,X
    AND Gamepad0Status,X
    STA Gamepad0Status,X
    STY $DE,X
    DEX 
    BPL @ReadGamepad
    RTS 
.endproc

; FE86
; subroutine to handle game logic and control flow
.proc handle_game_logic
    LDA Gamepad0Status
    BNE @CheckNextState
    LDA byte_D3
    CMP #$2A
    BCC @NextState
    RTS

@CheckNextState:
    LDA #0
    STA byte_D3

@NextState:
    INC byte_D0
    BNE @exit
    INC byte_D3
    INC byte_D1
    BNE @exit
    INC byte_D2

@exit:
    RTS
.endproc
