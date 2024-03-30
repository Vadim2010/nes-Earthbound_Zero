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
    LDA #2                      ; OAM >> 8
    STX OAM_ADDR                ; 8-bit address in SPR-RAM to access via OAM_DMA ($2004).
    STA OAM_DMA                 ; Transfers 256 bytes of memory into SPR-RAM. The address
                                ; read from is $100*N, where N is the value written.
    LDY OffsetNMI_ID
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
    LDA NMI_ID,Y                ; get NMI function ID (order number in the NMITable)? get next
    BEQ @end_of_record
    BMI @no_functions
    ASL A                       ; get offset for NMITable
    TAX
    LDA NMITable + 1,X          ; store the high address of the subprogram on the stack
    PHA
    LDA NMITable,X              ; store the low address - 1 of the subprogram on the stack
    PHA
    RTS                         ; execute the subprogram

@no_functions:
    AND #$7F
    STA NMI_ID,Y
    BNE @no_flags

@end_of_record:
    STA NMIFlags

@no_flags:
    LDX IRQCount
    BEQ @no_irq
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
    STX IRQLatch
    STA InterruptOffset
    CLI

@no_irq:
    LDA CameraX
    LDX CameraY
    STA PPU_SCROLL              ; set horizontal scroll
    STX PPU_SCROLL              ; set vertical scroll

    LDA CntrlPPU
    LDX MaskPPU
    STA PPU_CTRL
    STX PPU_MASK

    STY OffsetNMI_ID            ; set offset of next record
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
    LDA flag_clear_OAM_300
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
    JSR draw_sprite

@restore_bank:
    PLA                         ; restore bank number from the stack 13
    LDX #7                      ; A000
    JSR mmc3_bank_set           ; Set memory bank A - bank number X - mode
    PLA                         ; restore bank number from the stack 14
    LDX #6                      ; 8000
    JSR mmc3_bank_set           ; Set memory bank A - bank number X - mode
    PLA                         ; restore bank register from the stack 7
    STA BankRegister
    ORA BankMode
    STA BANK_SELECT             ; restore mode ?

    JSR gamepad_input
    LDA Gamepad0Status
    ORA Gamepad0Buttons
    STA Gamepad0Buttons
    LDA Gamepad1Status
    ORA Gamepad1Buttons
    STA Gamepad1Buttons
    JSR handle_game_logic
    LDA JmpInstr
    BEQ @end_nmi
    JSR JmpInstr

@end_nmi:
    ;LDA #0
    ;STA NMIReady
    set NMIReady, #0
    restore_registers           ;restore registers from the stack
    RTI

; F8C1
NMITable:
    .addr get_function-1, sub_F8D7-1, sub_F8DB-1, sub_F8E5-1, load_palettes-1
    .addr write_horizontal-1, write_vertical-1, write_ppu_chars-1, fill_ppu-1, read_ppu-1
    .addr print-1

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

; F8ED load_palettes ; in the ppu_lib.asm

; F916
.proc write_horizontal
    JSR write_nt_block
    LDA NMI_ID,Y
    CMP #5
    BEQ write_horizontal
    JMP get_function
.endproc

; F923
.proc write_vertical:
    LDA CntrlPPU
    ORA #PPU_CTRL_INCREMENT_MODE
    STA PPU_CTRL

@next_block:
    JSR write_nt_block
    LDA NMI_ID,Y
    CMP #6
    BEQ @next_block
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

; F95C fill_ppu ; in the ppu_lib.asm

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
.proc print
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
.proc write_nt_block
    INY
    LDX NMI_ID,Y                ; get number of char
    STX Bitfield                ; save bitfield value
    INY
    LDA NMI_ID,Y                ; get & load PPU address NT (Nametable)
    STA PPU_ADDR
    INY
    LDA NMI_ID,Y
    STA PPU_ADDR
    INY
    LSR Bitfield
    BCC @clear_bit0
    LDA NMI_ID,Y
    STA PPU_DATA
    INY

@clear_bit0:
    LSR Bitfield
    BCC @clear_bit1
    LDA NMI_ID,Y
    STA PPU_DATA
    INY
    LDA NMI_ID,Y
    STA PPU_DATA
    INY

@clear_bit1:
    LSR Bitfield
    BCC @clear_bit2
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

@clear_bit2:
    LDX Bitfield
    BEQ @end_block

@next_block:
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
    BNE @next_block

@end_block:
    RTS
.endproc

; FA81
draw_sprite:
    LDA #$15
    LDX #6
    JSR mmc3_bank_set           ; set memory bank 15 at $8000
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
    ADC ShiftX
    STA ShiftX
    LDA #0
    ADC ShiftY
    STA ShiftY
    JMP loc_FAC9

loc_FAB8:
    CLC
    LDA ShiftX
    ADC byte_CE
    STA byte_CE
    CLC
    LDA ShiftY
    ADC byte_CF
    STA byte_CF
    DEX
    BPL loc_FAB8

loc_FAC9:
    CLC
    LDA byte_CE
    BMI loc_FAD6
    ADC CameraX
    STA CameraX
    BCC loc_FAE2
    BCS @switch_scroll_mode

loc_FAD6:
    ADC CameraX
    STA CameraX
    BCS loc_FAE2

@switch_scroll_mode:
    LDA CntrlPPU
    EOR #1
    STA CntrlPPU

loc_FAE2:
    CLC
    LDA byte_CF
    BMI loc_FAEF
    ADC #$10
    ADC CameraY
    BCC loc_FAF3
    BCS loc_FAF5

loc_FAEF:
    ADC CameraY
    BCS loc_FAF5

loc_FAF3:
    ADC #$F0

loc_FAF5:
    STA CameraY
    LDA flag_clear_OAM_300
    AND #$3F
    EOR #$20
    STA flag_clear_OAM_300
    LDA #0
    STA SpriteTabOffset
    STA byte_E4
    LDA #8
    STA SpriteTabStep
    LDX #$10

loc_FB0B:
    LDY SpriteTabOffset
    LDA $300,Y
    AND #$3F
    BNE loc_FB17
    JMP loc_FC5C

loc_FB17:
    STA TileCount
    STX TileID
    LDA $301,Y
    AND #$C0
    STA Attribute
    TXA
    LSR A
    LSR A
    ORA Attribute
    STA $301,Y
    SEC
    LDA #0
    SBC byte_CE
    STA TileX
    SEC
    LDA #0
    SBC byte_CF
    STA DeltaY
    LDX byte_E1
    BIT Attribute
    BVC loc_FB70
    LDA $304,Y
    STA DeltaTileID
    LDA $305,Y
    STA DeltaTileID+1
    LDY #0

loc_FB4A:
    CLC
    LDA (pSprite),Y
    ADC TileX
    STA TileX
    INY
    CLC
    LDA (pSprite),Y
    ADC DeltaY
    STA DeltaY
    INY
    DEX
    BPL loc_FB4A
    CLC
    TYA
    ADC DeltaTileID
    LDY SpriteTabOffset
    STA $304,Y
    LDA #0
    ADC DeltaTileID+1
    STA $305,Y
    JMP loc_FB83

loc_FB70:
    CLC
    LDA $304,Y
    ADC TileX
    STA TileX
    CLC
    LDA $305,Y
    ADC DeltaY
    STA DeltaY
    DEX
    BPL loc_FB70

loc_FB83:
    LDX TileID
    CLC
    LDA TileX
    BMI loc_FB96
    ADC $302,Y
    STA TileX
    STA $302,Y
    BCC loc_FBA8
    BCS loc_FBA0

loc_FB96:
    ADC $302,Y
    STA TileX
    STA $302,Y
    BCS loc_FBA8

loc_FBA0:
    LDA $300,Y
    EOR #$80
    STA $300,Y

loc_FBA8:
    CLC
    LDA DeltaY
    BMI loc_FBB9
    ADC $303,Y
    STA DeltaY
    STA $303,Y
    BCC loc_FBCB
    BCS loc_FBC3

loc_FBB9:
    ADC $303,Y
    STA DeltaY
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
    STA DeltaTileID
    INY
    LDA ($C6),Y
    STA DeltaTileID+1
    INY
    LDA ($C6),Y
    STA TileID
    INY
    LDA ($C6),Y
    STA Bitfield
    LDY #0

@next_tile:
    LDA (pSprite),Y
    INY
    CLC
    ADC TileX
    STA OAM.PosX,X              ; $203
    ROR A
    EOR byte_C9
    BMI loc_FC1F
    LDA (pSprite),Y
    CLC
    ADC DeltaY
    STA OAM.PosY,X
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
    LDA (pSprite),Y
    STA Attribute
    LDA Bitfield
    LSR Attribute
    BCC @palette_no_bit0
    LSR A
    LSR A

@palette_no_bit0:
    LSR Attribute
    BCC @palette_no_bit1
    LSR A
    LSR A
    LSR A
    LSR A

@palette_no_bit1:
    AND #3
    ASL Attribute
    ASL Attribute
    ORA Attribute
    STA $202,X
    INY
    AND #$10
    BEQ loc_FC4C
    LDA TileID

loc_FC4C:
    ADC (pSprite),Y
    STA $201,X
    INY
    INX
    INX
    INX
    INX
    BEQ locret_FC95

loc_FC58:
    DEC TileCount
    BNE @next_tile

loc_FC5C:
    CLC
    LDA SpriteTabStep
    BMI loc_FC6E
    ADC SpriteTabOffset
    STA SpriteTabOffset
    BEQ sub_FC8A
    CMP byte_E3
    BEQ loc_FC79
    JMP loc_FB0B

loc_FC6E:
    ADC SpriteTabOffset
    STA SpriteTabOffset
    CMP byte_E3
    BCC sub_FC8A
    JMP loc_FB0B

loc_FC79:
    STX byte_E4
    LDA flag_clear_OAM_300
    AND #$20 ; ' '
    BNE loc_FC87
    LDA #$F8
    STA SpriteTabOffset
    STA SpriteTabStep

loc_FC87:
    JMP loc_FB0B

; FC8A oam_offscreen

; FC96
sub_FC96:
    LDA flag_clear_OAM_300
    EOR #$40
    STA flag_clear_OAM_300
    LDY #$FC
    LDX byte_E4
    BNE loc_FCE7
    RTS

sub_FCA3:
    LDA OAM,X
    PHA
    LDA OAM,Y
    STA OAM,X
    PLA
    STA OAM,Y
    INX
    INY
    LDA OAM,X
    PHA
    LDA OAM,Y
    STA OAM,X
    PLA
    STA OAM,Y
    INX
    INY
    LDA OAM,X
    PHA
    LDA OAM,Y
    STA OAM,X
    PLA
    STA OAM,Y
    INX
    INY
    LDA OAM,X
    PHA
    LDA OAM,Y
    STA OAM,X
    PLA
    STA OAM,Y
    INX
    TYA
    SEC
    SBC #7
    TAY

loc_FCE7:
    STY TileCount
    CPX TileCount
    BCC sub_FCA3
    RTS

; FE4B gamepad_input in gamepad_lib.asm
