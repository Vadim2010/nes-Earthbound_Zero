.segment "IMG"
.incbin "../chr/tiles.chr"

.include "./def/header.asm"
.include "./def/mmc3.asm"
.include "./def/ppu.asm"
.include "./def/apu.asm"
.include "./def/palette.asm"

.include "./vectors/irq.asm"
.include "./vectors/reset.asm"
.include "./vectors/nmi.asm"

.include "./lib/macros.asm"
.include "./lib/banks.asm"
.include "./lib/sram.asm"
.include "./lib/ppu_lib.asm"
.include "./lib/apu_lib.asm"
.include "./lib/irq_handler.asm"
.include "./lib/gamepad.asm"
.include "./lib/delay.asm"
.include "./lib/unpack.asm"
.include "./lib/screen.asm"
.include "./lib/math.asm"

.include "sound.asm"
.include "intro.asm"
.include "start_game.asm"
.include "battle.asm"

; CB44
main:
    JSR sram_read_enable
    ;LDA #SRAM_WRITE_DISABLE|SRAM_ENABLE
    ;STA ModeSRAM
    set ModeSRAM, #(SRAM_WRITE_DISABLE|SRAM_ENABLE)
    JSR bank14_8000
    JSR game_intro              ; $9400 bank14
    ;LDA #0
    ;STA ModeSRAM
    set ModeSRAM, #(SRAM_WRITE_ENABLE|SRAM_DISABLE)

@new_place:
    JSR bank13_A000
    JSR routine_selector        ; execute a function from the table BANK13:BCFD

loc_CB5D:
    JSR sub_C542
    JSR sub_CEFC
    LDA #0
    STA byte_24
    LDA PointerTilePack06
    AND #$F
    EOR #$84
    STA byte_D

loc_CB70:
    JSR clear_oam_sprite
    JSR sub_CFAC

loc_CB76:
    JSR sub_DE99
    JSR sub_EEF0
    LDA byte_25
    BNE loc_CB91
    LDA ButtonPressed
    AND #$70
    BEQ loc_CB8F
    JSR sub_CC9D
    AND #8
    BEQ loc_CB8F
    LDA #1

loc_CB8F:
    STA byte_1F

loc_CB91:
    JSR wait_nmi_processed
    LDA byte_20
    BNE @new_place
    JSR sub_DD01
    JSR sub_DFDA
    JSR sub_CC2B                ; draw screen
    LDA byte_21
    BEQ loc_CBAD
    JSR bank13_A000
    JSR $A1C6
    BCC loc_CBEB

loc_CBAD:
    JSR bank13_A000
    LDA #0
    LDY Gamepad0Buttons
    STA Gamepad0Buttons
    LDA byte_22
    ORA byte_23
    ORA byte_21
    ORA byte_20
    BNE loc_CBEB
    TYA 
    AND #$F0
    BMI loc_CBE2
    BNE loc_CBCD
    JSR byte_A123
    JMP loc_CBE5
; ---------------------------------------------------------------------------

loc_CBCD:
    JSR sub_CC9D
    AND #$A0
    BEQ loc_CBE5
    BMI loc_CBDC
    JSR byte_A82F
    JMP loc_CBE5
; ---------------------------------------------------------------------------

loc_CBDC:
    JSR $A000
    JMP loc_CBE5
; ---------------------------------------------------------------------------

loc_CBE2:
    JSR byte_A178

loc_CBE5:
    JSR bank14_8000
    JSR $9516

loc_CBEB:
    LDA byte_48
    BEQ loc_CC17
    CMP #$A2
    BEQ loc_CC1A
    JSR wait_nmi_processed
    LDA NTAddrC
    PHA 
    JSR start_battle
    PLA 
    BCS loc_CC14
    JSR sub_FD28
    LDA byte_21
    BEQ loc_CC11
    JSR bank13_A000
    JSR $AB53
    LDA byte_20
    BNE loc_CC14

loc_CC11:
    JMP loc_CB70
; ---------------------------------------------------------------------------

loc_CC14:
    JMP loc_CB5D
; ---------------------------------------------------------------------------

loc_CC17:
    JMP loc_CB76
; ---------------------------------------------------------------------------

loc_CC1A:
    JSR bank14_8000
    JSR $9779
    JSR start_battle
    BCS loc_CC14
    JSR bank14_8000
    JMP $97A3

; F5F7
.proc set_jmp_addr
    STA AddrForJmp
    LDA #0
    ASL AddrForJmp
    ROL A
    ASL AddrForJmp
    ROL A
    ASL AddrForJmp
    ROL A
    STA AddrForJmp+1
    CLC
    LDA AddrForJmp
    ADC #0
    STA AddrForJmp
    LDA AddrForJmp+1
    ADC #$9E
    STA AddrForJmp+1
    RTS
.endproc



; F74C
; save JMP $F76A to $D7
.proc save_jmp_instr
    LDA #$6A
    STA JmpInstr+1
    LDA #$F7
    STA JmpInstr+2
    LDA #$4C
    STA JmpInstr
    RTS
.endproc

; F759
; clear first byte (JMP $F76A to $D7)
.proc clear_jmp_instr
    LDA #0
    STA JmpInstr
    JMP wait_nmi
.endproc



; FD28
.proc sub_FD28
    CMP NTAddrC
    BEQ loc_FD30
    STA byte_7F5

loc_FD30:
    JMP wait_nmi
.endproc


; FD4F
.proc sub_FD4F
    LDA #0
    STA Gamepad0Buttons

loc_FD53:
    LDA Gamepad0Buttons
    BEQ loc_FD53
    PHA 
    LDA #0
    STA Gamepad0Buttons
    PLA
    RTS
.endproc

; FD5E
.proc clear_oam_sprite
    JSR wait_nmi_processed
    SEC                         ; set carry flag
    ROR flag_clear_OAM_300
    LDX #0

loc_FD66:
    LDA #0
    STA $300,X
    LDA #$F0
    STA $200,X
    INX
    INX
    INX
    INX
    STA $200,X
    INX
    INX
    INX
    INX
    BNE loc_FD66
    ASL flag_clear_OAM_300
    RTS
.endproc

; FDC0
.proc sub_FDC0
    JSR wait_nmi_processed
    LDA byte_E7
    AND #$BF
    STA byte_E7
    LDA #0
    STA ShiftX
    STA ShiftY
    CLC

loc_FDD0:
    TAX
    LDA $301,X
    AND #$BF
    STA $301,X
    LDA #0
    STA $304,X
    STA $305,X
    TXA 
    ADC #8
    BCC loc_FDD0
    RTS
.endproc
