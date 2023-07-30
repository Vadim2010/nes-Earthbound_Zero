.segment "ZEROPAGE"
;.org $E5
    NMIFlags: .res 1
;.org $EA                       ; in the original game $EA
    NMIReady: .res 1
;    palette_init: .res 1
;    scroll_y: .res 1

.segment "CODE"

; F79F
nmi:
    BIT PPU_STATUS
    BIT NMIReady
    BPL @NMIGo
    RTI

@NMIGo:	
    save_registers              ; save registers on the stack

    ; initialize sprite RAM and transfer data
    LDX #0
    LDA #2                      ; oam >> 8
    STX OAM_ADDR                ; 8-bit address in SPR-RAM to access via OAM_DMA ($2004).
    STA OAM_DMA                 ; Transfers 256 bytes of memory into SPR-RAM. The address
                                ; read from is $100*N, where N is the value written.
    LDY Offset400
    LDA OtherNMIFlags           ; get raw flags
    BEQ @no_other_flags
    LDA NMIFlags                ; get NMI flags
    BNE get_function            ; have flags set
    BEQ @no_flags

@no_other_flags:
    LDA NMIFlags                ; get NMI flags
    BEQ @no_flags
    AND #$7F
    STA OtherNMIFlags           ; keep flags except bit 7

get_function:
    LDA NMI_ID,Y                ; get NMI function ID (order number in the ReturnTable)? get next
    BEQ @end_of_record
    BMI @no_functions
    ASL A                       ; get offset for ReturnTable
    TAX
    LDA ReturnTable + 1,X       ; store the high address of the subprogram on the stack
    PHA
    LDA ReturnTable,X           ; store the low address - 1 of the subprogram on the stack
    PHA
    RTS                         ; execute the subprogram

@no_functions:
    AND #$7F
    STA NMI_ID,Y
    BNE @no_flags

@end_of_record:
    STA NMIFlags

@no_flags:
    LDX byte_EC
    BEQ loc_F827
    LDA #$FF
    STA IRQ_LATCH
    STA IRQ_RELOAD
    LDA #0
    STA PPU_ADDR
    STA PPU_ADDR
    LDA #$10
    STA PPU_ADDR
    STA PPU_ADDR
    LDA #0
    STA PPU_ADDR
    STA PPU_ADDR
    LDA #$10
    STA PPU_ADDR
    STA PPU_ADDR
    LDA #0
    STA PPU_ADDR
    STA PPU_ADDR
    STX IRQ_LATCH
    STX IRQ_RELOAD
    STX IRQ_ENABLE              ; enable MMC3 interrupts
    STX byte_EB
    STA InterruptOffset
    CLI

loc_F827:
    LDA VerticalScrollPPU
    LDX HorizontalScrollPPU
    STA PPU_SCROLL              ; set vertical scroll
    STX PPU_SCROLL              ; set horizontal scroll

    LDA CntrlPPU
    LDX MaskPPU
    STA PPU_CTRL
    STX PPU_MASK

    STY Offset400               ; set offset of next record
    LDA #$80
    STA NMIReady
    LDA BankRegister
    PHA                         ; save BankRegister into stack
    LDA BankTable.CPU_8K_8000
    PHA                         ; save number of memory bank into stack $8000
    LDA BankTable.CPU_8K_A000
    PHA                         ; save number of memory bank into stack $A000
    LDA CHRBank
    BEQ @no_chr_bank
    LSR A
    AND #3
    ORA #$44
    LDX #2
    JSR mmc3_bank_set           ; set memory bank A - bank number X - mode
    LDX #3
    JSR mmc3_bank_set           ; set memory bank A - bank number X - mode
    DEC CHRBank

@no_chr_bank:
    JSR bank_8000_1D_A000       ; set banks: BankNum to $8000, 1D to $A000
    JSR $8000                   ; Bank 0x1C
    LDA byte_E2
    BMI @restore_bank
    LDA byte_E7
    AND #$3F
    STA byte_E1
    LDA OtherNMIFlags
    BNE @other_flags
    JSR sub_FC96
    JMP @restore_bank

@other_flags:
    CLC
    SBC byte_E1
    BCS loc_F885
    LDX OtherNMIFlags
    DEX
    STX byte_E1
    LDA #0

loc_F885:
    STA OtherNMIFlags
    JSR sub_FA81

@restore_bank:
    PLA                         ; 13
    LDX #7                      ; A000
    JSR mmc3_bank_set           ; Set memory bank A - bank number X - mode
    PLA                         ; 14
    LDX #6                      ; 8000
    JSR mmc3_bank_set           ; Set memory bank A - bank number X - mode
    PLA                         ; 7
    STA BankRegister
    ORA BankMode
    STA BANK_SELECT
    JSR gamepad_input
    LDA GamePad0Status
    ORA byte_DA
    STA byte_DA
    LDA byte_DD
    ORA byte_DB
    STA byte_DB
    JSR handle_game_logic
    LDA byte_D7
    BEQ @end_nmi
    JSR byte_D7

@end_nmi:
    ;lda #0
    ;sta NMIReady
    set NMIReady, #0
    restore_registers           ;restore registers from the stack
    RTI

; F8C1
ReturnTable:
    .addr get_function-1, sub_F8D7-1, sub_F8DB-1, sub_F8E5-1, load_palettes-1
    .addr sub_F916-1, sub_F923-1, write_ppu_chars-1, fill_ppu-1, read_ppu-1
    .addr sub_F99F-1

; F8D7
.proc sub_F8D7:
    INY
    JMP get_function
.endproc

; F8DB
.proc sub_F8DB:
    INY
    TYA
    SEC
    ADC NMI_ID,Y
    TAY 
    JMP get_function
.endproc

; F8E5
.proc sub_F8E5:
    INY
    LDA NMI_ID,Y
    TAY 
    JMP get_function
.endproc

; F8ED load_palettes: ; in the ppu.asm

; F916
.proc sub_F916
    JSR sub_F9EF
    LDA NMI_ID,Y
    CMP #5
    BEQ sub_F916
    JMP get_function
.endproc

; F923
.proc sub_F923:
    LDA CntrlPPU
    ORA #PPU_CTRL_INCREMENT_MODE
    STA PPU_CTRL

loc_F92A:
    JSR sub_F9EF
    LDA NMI_ID,Y
    CMP #6
    BEQ loc_F92A
    LDA CntrlPPU
    STA PPU_CTRL
    JMP get_function
.endproc

; F93C
.proc write_ppu_chars
    INY
    LDX NMI_ID,Y                ; get number of characters
    INY

@next_char:
    LDA NMI_ID,Y                ; get & load PPU address NT (Nametable)
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y                ; get char
    STA PPU_DATA                ; write char
    INY
    DEX
    BNE @next_char
    JMP get_function
.endproc

; F95C
.proc fill_ppu
    INY
    LDX NMI_ID,Y                ; get number of characters
    INY
    LDA NMI_ID,Y                ; get & load PPU address NT (Nametable)
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y                ; get char
    INY

@write_ppu:
    STA PPU_DATA
    DEX
    BNE @write_ppu
    JMP get_function
.endproc

; F97C
.proc read_ppu
    INY
    LDX NMI_ID,Y                ; get number of characters
    INY
    LDA NMI_ID,Y                ; get & load PPU address NT (Nametable)
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR
    INY
    LDA PPU_DATA                ; load value from ppu

@get_next_char:
    LDA PPU_DATA                ; load value from ppu
    STA NMI_ID,Y                ; save value into NMI_ID table
    INY
    DEX
    BNE @get_next_char
    JMP get_function
.endproc

; F99F
.proc sub_F99F
    LDA BankRegister
    PHA                         ; store bank register into stack
    LDA BankTable.PPU_1K_0800
    PHA                         ; store chr bank $X800 into the stack
    LDA BankTable.PPU_1K_0C00
    PHA                         ; store chr bank $XC00 into the stack
    INY
    LDA NMI_ID,Y                ; get chr bank number
    LDX #4                      ; select mode 1K $X800
    JSR mmc3_bank_set           ; set PPU memory bank
    CLC
    ADC #1                      ; next chr bank number
    LDX #5                      ; select mode 1K $XC00
    JSR mmc3_bank_set           ; set PPU memory bank
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR                ; set high byte PPU address
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR                ; set low byte PPU address
    INY
    LDA PPU_DATA                ; get PPU data
    LDX #0

@next_data:
    LDA PPU_DATA                ; get PPU data
    STA $110,X                  ; save the read value into the stack
    INX
    CPX #$40
    BCC @next_data              ; repeat for $40 (64) values
    PLA                         ; restore chr bank $XC00 from the stack
    LDX #5                      ; select mode 1K $XC00
    JSR mmc3_bank_set           ; set PPU memory bank
    PLA                         ; restore chr bank $X800 from the stack
    LDX #4                      ; select mode 1K $X800
    JSR mmc3_bank_set           ; set PPU memory bank
    PLA                         ; restore bank register from the stack
    STA BankRegister
    ORA BankMode
    STA BANK_SELECT
    JMP get_function
.endproc

; F9EF
.proc sub_F9EF
    INY
    LDX NMI_ID,Y            ; get bitfield value
    STX Bitfield            ; save bitfield value
    INY
    LDA NMI_ID,Y            ; get & load PPU address NT (Nametable)
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR
    INY
    LSR Bitfield
    BCC loc_FA0F
    LDA NMI_ID,Y
    STA PPU_DATA
    INY

loc_FA0F:
    LSR Bitfield
    BCC loc_FA21
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY

loc_FA21:
    LSR Bitfield
    BCC loc_FA41
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY

loc_FA41:
    LDX Bitfield
    BEQ locret_FA80

loc_FA45:
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    DEX
    BNE loc_FA45

locret_FA80:
    RTS
.endproc

; FA81
sub_FA81:
    LDA #$15
    LDX #6
    JSR mmc3_bank_set   ; set memory bank 15 at $8000
    LDA #0
    STA byte_CE
    STA byte_CF
    LDX byte_E1
    BIT byte_E7
    BVC loc_FAB8
    LDY #0

loc_FA96:
    CLC
    LDA ($E8),Y
    ADC byte_CE
    STA byte_CE
    INY
    CLC
    LDA ($E8),Y
    ADC byte_CF
    STA byte_CF
    INY
    DEX
    BPL loc_FA96
    CLC
    TYA
    ADC byte_E8
    STA byte_E8
    LDA #0
    ADC byte_E9
    STA byte_E9
    JMP loc_FAC9

loc_FAB8:
    CLC
    LDA byte_E8
    ADC byte_CE
    STA byte_CE
    CLC
    LDA byte_E9
    ADC byte_CF
    STA byte_CF
    DEX
    BPL loc_FAB8

loc_FAC9:
    CLC
    LDA byte_CE
    BMI loc_FAD6
    ADC VerticalScrollPPU
    STA VerticalScrollPPU
    BCC loc_FAE2
    BCS loc_FADC

loc_FAD6:
    ADC VerticalScrollPPU
    STA VerticalScrollPPU
    BCS loc_FAE2

loc_FADC:
    LDA CntrlPPU
    EOR #1
    STA CntrlPPU

loc_FAE2:
    CLC
    LDA byte_CF
    BMI loc_FAEF
    ADC #$10
    ADC HorizontalScrollPPU
    BCC loc_FAF3
    BCS loc_FAF5

loc_FAEF:
    ADC HorizontalScrollPPU
    BCS loc_FAF5

loc_FAF3:
    ADC #$F0

loc_FAF5:
    STA HorizontalScrollPPU
    LDA byte_E2
    AND #$3F ; '?'
    EOR #$20 ; ' '
    STA byte_E2
    LDA #0
    STA byte_CC
    STA byte_E4
    LDA #8
    STA byte_CD
    LDX #$10

loc_FB0B:
    LDY byte_CC
    LDA $300,Y
    AND #$3F
    BNE loc_FB17
    JMP loc_FC5C

loc_FB17:
    STA GamePadBit0
    STX byte_C2
    LDA $301,Y
    AND #$C0
    STA GamePadBit1
    TXA
    LSR A
    LSR A
    ORA GamePadBit1
    STA $301,Y
    SEC
    LDA #0
    SBC byte_CE
    STA byte_C8
    SEC
    LDA #0
    SBC byte_CF
    STA byte_CA
    LDX byte_E1
    BIT GamePadBit1
    BVC loc_FB70
    LDA $304,Y
    STA byte_C4
    LDA $305,Y
    STA byte_C5
    LDY #0

loc_FB4A:
    CLC
    LDA ($C4),Y
    ADC byte_C8
    STA byte_C8
    INY
    CLC
    LDA ($C4),Y
    ADC byte_CA
    STA byte_CA
    INY
    DEX
    BPL loc_FB4A
    CLC
    TYA
    ADC byte_C4
    LDY byte_CC
    STA $304,Y
    LDA #0
    ADC byte_C5
    STA $305,Y
    JMP loc_FB83

loc_FB70:
    CLC
    LDA $304,Y
    ADC byte_C8
    STA byte_C8
    CLC
    LDA $305,Y
    ADC byte_CA
    STA byte_CA
    DEX
    BPL loc_FB70

loc_FB83:
    LDX byte_C2
    CLC
    LDA byte_C8
    BMI loc_FB96
    ADC $302,Y
    STA byte_C8
    STA $302,Y
    BCC loc_FBA8
    BCS loc_FBA0

loc_FB96:
    ADC $302,Y
    STA byte_C8
    STA $302,Y
    BCS loc_FBA8

loc_FBA0:
    LDA $300,Y
    EOR #$80
    STA $300,Y

loc_FBA8:
    CLC
    LDA byte_CA
    BMI loc_FBB9
    ADC $303,Y
    STA byte_CA
    STA $303,Y
    BCC loc_FBCB
    BCS loc_FBC3

loc_FBB9:
    ADC $303,Y
    STA byte_CA
    STA $303,Y
    BCS loc_FBCB

loc_FBC3:
    LDA $301,Y
    EOR #$80
    STA $301,Y

loc_FBCB:
    LDA $300,Y
    AND #$80
    STA byte_C9
    LDA $301,Y
    AND #$80
    STA byte_CB
    LDA $306,Y
    STA byte_C6
    LDA $307,Y
    STA byte_C7
    LDY #0
    LDA ($C6),Y
    STA byte_C4
    INY
    LDA ($C6),Y
    STA byte_C5
    INY
    LDA ($C6),Y
    STA byte_C2
    INY
    LDA ($C6),Y
    STA Bitfield
    LDY #0

loc_FBFA:
    LDA ($C4),Y
    INY
    CLC
    ADC byte_C8
    STA $203,X
    ROR A
    EOR byte_C9
    BMI loc_FC1F
    LDA ($C4),Y
    CLC
    ADC byte_CA
    STA oam,X
    ROR A
    EOR byte_CB
    BMI loc_FC1B
    CMP #$F0
    BCC loc_FC25
    BCS loc_FC1F

loc_FC1B:
    CMP #$F9
    BCS loc_FC25

loc_FC1F:
    INY
    INY
    INY
    JMP loc_FC58

loc_FC25:
    INY
    LDA ($C4),Y
    STA GamePadBit1
    LDA Bitfield
    LSR GamePadBit1
    BCC loc_FC32
    LSR A
    LSR A

loc_FC32:
    LSR GamePadBit1
    BCC loc_FC3A
    LSR A
    LSR A
    LSR A
    LSR A

loc_FC3A:
    AND #3
    ASL GamePadBit1
    ASL GamePadBit1
    ORA GamePadBit1
    STA $202,X
    INY
    AND #$10
    BEQ loc_FC4C
    LDA byte_C2

loc_FC4C:
    ADC ($C4),Y
    STA $201,X
    INY
    INX
    INX
    INX
    INX
    BEQ locret_FC95

loc_FC58:
    DEC GamePadBit0
    BNE loc_FBFA

loc_FC5C:
    CLC
    LDA byte_CD
    BMI loc_FC6E
    ADC byte_CC
    STA byte_CC
    BEQ sub_FC8A
    CMP byte_E3
    BEQ loc_FC79
    JMP loc_FB0B

loc_FC6E:
    ADC byte_CC
    STA byte_CC
    CMP byte_E3
    BCC sub_FC8A
    JMP loc_FB0B

loc_FC79:
    STX byte_E4
    LDA byte_E2
    AND #$20 ; ' '
    BNE loc_FC87
    LDA #$F8
    STA byte_CC
    STA byte_CD

loc_FC87:
    JMP loc_FB0B

; FC8A clear_sprites

; FC96
sub_FC96:
    LDA byte_E2
    EOR #$40
    STA byte_E2
    LDY #$FC
    LDX byte_E4
    BNE loc_FCE7
    RTS

sub_FCA3:
    LDA oam,X
    PHA
    LDA oam,Y
    STA oam,X
    PLA
    STA oam,Y
    INX
    INY
    LDA oam,X
    PHA
    LDA oam,Y
    STA oam,X
    PLA
    STA oam,Y
    INX
    INY
    LDA oam,X
    PHA
    LDA oam,Y
    STA oam,X
    PLA
    STA oam,Y
    INX
    INY
    LDA oam,X
    PHA
    LDA oam,Y
    STA oam,X
    PLA
    STA oam,Y
    INX
    TYA
    SEC
    SBC #7
    TAY

loc_FCE7:
    STY GamePadBit0
    CPX GamePadBit0
    BCC loc_FCA3
    RTS

; FE4B
; Subroutine to process gamepad 1 input and perform bitwise operations
.proc gamepad_input
    LDX #1

@ReadGamepad:
    SEC                         ; set carry flag

@SetControllerStrobe:
    PHP                         ; push processor status register on the stack
    LDA #1                      ; reset joysticks, write first $01 then $00 into $4016
    STA GAMEPAD_REGISTER1
    LDA #0
    STA GAMEPAD_REGISTER1

    LDY #8                      ; initialize Y to 8 (number of bits to process)

@ReadControllerData:
    LDA GAMEPAD_REGISTER1,X     ; read the controller data at $4016 + X (NES input registers)
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
    STA GamePad0Status,X
    CLC                         ; clear carry flag
    BCC @SetControllerStrobe

@HandleController2:
    CMP GamePad0Status,X        ; compare the data with the previously stored data
    BEQ @SkipControllerUpdate   ; if equal, skip the controller update
    LDA $DE,X

@SkipControllerUpdate:
    TAY
    EOR $DE,X
    AND GamePad0Status,X
    STA GamePad0Status,X
    STY $DE,X
    DEX 
    BPL @ReadGamepad
    RTS 
.endproc

; FE86
; subroutine to handle game logic and control flow
.proc handle_game_logic
    LDA GamePad0Status
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
