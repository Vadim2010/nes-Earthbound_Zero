.include "ram.inc"
.include "mmc3\bank.inc"
.include "..\res\sram.inc"
.include "palette.inc"

.segment "PRG_BANK_9"
; ===========================================================================

; Segment type: Pure code
;.segment BANK19
;* =  $A000

; =============== S U B R O U T I N E =======================================


check_copyrights:
    .import wait_nmi_processed
    .importzp CameraX, CameraY, CntrlPPU, NMIFlags, OffsetNMI_Data, Pointer, CopyrightViolation

                LDA     CameraY
                CMP     #0
                BNE     @violation
                LDA     CameraX
                CMP     #0
                BNE     @violation
                LDA     CntrlPPU        ; PPU_CTRL
                CMP     #$88
                BNE     @violation
                JSR     wait_nmi_processed
                LDA     #9
                LDX     #$12
                STA     NMI_Data + NMI_DATA::NMI_ID ; read_ppu function ID
                STX     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     #7
                LDX     #$23
                STX     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::Chr+$12 ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                JSR     wait_nmi_processed
                LDX     #0

@next_id:
                LDA     NMI_Data + NMI_DATA::Chr,X  ; compare screen tiles ID with tiles ID at the table
                CMP     CopyrightIDTiles,X
                BNE     @violation
                INX
                CPX     #$12
                BCC     @next_id
                LDA     #$10
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::PPU_Addr+$12 ; NMITable
                LDA     #$D8            ; A0D8
                STA     Pointer
                LDA     #$A0
                STA     Pointer+1
                LDA     #$43
                LDX     #5
                JSR     compare_tiles   ; сompare screen tiles to detect copyright infringement
                                        ; input: A - address of PPU >> 8
                                        ;        X - number of blocks of 16 bytes
                                        ; output: set Z flag if no violations are detected
                BNE     @violation
                LDA     #$69
                LDX     #8
                JSR     compare_tiles   ; сompare screen tiles to detect copyright infringement
                                        ; input: A - address of PPU >> 8
                                        ;        X - number of blocks of 16 bytes
                                        ; output: set Z flag if no violations are detected
                BNE     @violation
                LDA     #$53
                LDX     #5
                JSR     compare_tiles   ; сompare screen tiles to detect copyright infringement
                                        ; input: A - address of PPU >> 8
                                        ;        X - number of blocks of 16 bytes
                                        ; output: set Z flag if no violations are detected
                BNE     @violation
                RTS
; ---------------------------------------------------------------------------

@violation:
                LDA     #$E5
                STA     CopyrightViolation
                RTS
; End of function check_copyrights


; =============== S U B R O U T I N E =======================================

; сompare screen tiles to detect copyright infringement
; input: A - address of PPU >> 8
;        X - number of blocks of 16 bytes
; output: set Z flag if no violations are detected

compare_tiles:
                PHA
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                PLA
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable

@next_compare:
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                JSR     wait_nmi_processed
                LDY     #0

@compare:
                LDA     NMI_Data + NMI_DATA::Chr,Y  ; NMITable
                CMP     (Pointer),Y
                BNE     @violation
                INY
                CPY     #$10
                BCC     @compare
                CLC
                LDA     #$10
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                DEX
                BEQ     @violation
                CLC
                LDA     #$10
                ADC     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     #0
                ADC     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                BCC     @next_compare

@violation:
                RTS
; End of function compare_tiles

; ---------------------------------------------------------------------------
CopyrightIDTiles:
    .byte $43, $44, $45, $46, $47, $70, $69, $6A, $6B, $6C
    .byte $6D, $6E, $6F, $53, $54, $55, $56, $57
CopyrightTiles:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $38, $44, $BA, $A2, $BA ; PPU $430
    .byte $44, $38
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $5E, $52, $5E, $42
    .byte $5E, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $F7, $94, $F7, $90
    .byte $F7, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $82, $82, $82, $82
    .byte $B2, $10
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $F7, $94, $F7, $10
    .byte $F7, 0
ItoiTiles:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $3A, $22, $3B, $A ; PPU $690
    .byte $3A, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BB, $92, $92, $92
    .byte $BB, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BB, $22, $BB, $A0
    .byte $BB, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BB, $29, $A9, $B9
    .byte $A9, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $B8, $28, $28, $28
    .byte $38, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $EE, $44, $44, $44
    .byte $E4, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $EE, $A4, $A4, $A4
    .byte $EE, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $BC, $A4, $A4, $A4
    .byte $BC, 0
NintendoTiles:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $10, $12, $23, $23, $42 ; PPU $530
    .byte $42, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $5D, $49, $C9, $C9
    .byte $5D, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $2E, $A4, $E4, $64
    .byte $24, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $E9, $8D, $EF, $8B
    .byte $E9, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $67, $55, $55, $55
    .byte $67, 0

; =============== S U B R O U T I N E =======================================


copyright_violation:
    .import darken_palette, update_animation, clear_oam_sprite, clear_nametables, wait_change_music, mmc3_bank_set
    .import text2stack, loc_C6DB
    .importzp IRQCount, PointerTilePack, Row, Column, byte_70, byte_71, byte_73

                JSR     darken_palette
                JSR     update_animation
                JSR     clear_oam_sprite
                JSR     clear_nametables

loc_19A204:
                JSR     wait_nmi_processed
                LDA     #0
                STA     IRQCount
                STA     CameraX
                STA     CameraY
                LDA     #$FF
                JSR     wait_change_music

loc_19A214:
                LDA     #$7E
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #$7F
                LDX     #5
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #$F4
                STA     PointerTilePack
                LDA     #6
                STA     byte_73
                LDA     #2
                STA     Column
                LDA     #2
                STA     Row
                LDA     #0
                STA     byte_70
                STA     byte_71

loc_19A238:
                JSR     text2stack
                JSR     loc_C6DB
                CMP     #0
                BEQ     loc_19A24A
                LDY     #0
                LDA     (PointerTilePack),Y
                CMP     #0
                BNE     loc_19A238

loc_19A24A:
                JSR     wait_nmi_processed
                LDX     #$1F

@next_color:
                LDA     ViolationPalette,X
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                LDA     #4
                STA     NMI_Data + NMI_DATA::NMI_ID ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags

infinite_loop:
                JMP     infinite_loop
; End of function copyright_violation

; ---------------------------------------------------------------------------
ViolationPalette:
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY; PALETTE0
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY; PALETTE1
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY; PALETTE2
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_GRAY; PALETTE3
    .byte BLACK, BLACK, DARK_GRAY, WHITE; PALETTE0
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE; PALETTE1
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE; PALETTE2
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE; PALETTE3

; =============== S U B R O U T I N E =======================================

; copy bank 19 $B800-$BFFF in sram $6000-$67FF

copy_to_sram:
    .import sram_write_enable, sram_read_enable
    .importzp pTileID

                LDA     #0
                LDX     #$B8            ; BANK19:B800
                STA     Pointer
                STX     Pointer+1
                LDA     #0
                LDX     #$60 ; '`'      ; SRAM19:6000
                STA     pTileID
                STX     pTileID+1
                JSR     sram_write_enable
                LDX     #8

@next_block:
                LDY     #0

@next_byte:
                LDA     (Pointer),Y
                STA     (pTileID),Y
                INY
                BNE     @next_byte
                INC     Pointer+1
                INC     pTileID+1
                DEX
                BNE     @next_block
                JMP     sram_read_enable
; End of function copy_to_sram


; =============== S U B R O U T I N E =======================================


sub_19A2B3:
    .import get_screen_pointers
    .importzp LowGlobalXC0, LowGlobalXC0_0, HighGlobalX, HighGlobalX_plus2, LowGlobalYC0, MaskORA
    .importzp HighGlobalY, HighGlobalY_plus1_carry, OffScreen, BlockIndex, AttributeOffset
    .importzp AttributeScr0

                CLC
                LDA     LowGlobalXC0
                ADC     #$40
                AND     #$80
                STA     LowGlobalXC0_0
                LDA     HighGlobalX
                ADC     #0
                STA     HighGlobalX_plus2
                LDA     LowGlobalYC0
                STA     MaskORA
                LDA     HighGlobalY
                STA     HighGlobalY_plus1_carry
                JSR     get_screen_pointers ; set base address Screen $6000 or $6100
                                        ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset
                LDA     LowGlobalXC0
                ASL     A
                ASL     A
                ROL     A
                AND     #1
                TAX
                LDY     OffScreen
                LDA     #$10
                STA     BlockIndex
                JSR     sram_write_enable

@next_block:
                TYA                     ; 1 block - 4 screen rows, 1 attr row
                ORA     #$F0
                STA     AttributeOffset

@next_attribute:
                LDA     (AttributeScr0),Y
                STA     AttributeCopy,X
                INY
                INX
                INC     AttributeOffset
                BNE     @next_attribute
                TYA
                SEC
                SBC     #$10
                TAY
                LDA     AttributeScr0+1
                EOR     #1
                STA     AttributeScr0+1
                LDA     OffScreen
                AND     #$F
                BEQ     @no_attr_tail
                STA     AttributeOffset

@next_attr_tail:
                LDA     (AttributeScr0),Y
                STA     AttributeCopy,X
                INY
                INX
                DEC     AttributeOffset
                BNE     @next_attr_tail

@no_attr_tail:
                TYA
                CLC
                ADC     #$10
                TAY
                LDA     AttributeScr0+1
                EOR     #1
                STA     AttributeScr0+1
                DEC     BlockIndex
                BNE     @next_block
                JMP     sram_read_enable
; End of function sub_19A2B3


; =============== S U B R O U T I N E =======================================


sub_19A31E:
    .importzp FlagClearOAM300, NTAddr, ChrCount, LoopAddr

                SEC
                ROR     FlagClearOAM300
                LDA     Column
                ASL     A
                ASL     A
                ASL     A
                STA     NTAddr
                CLC
                LDA     Column
                ADC     ChrCount
                ASL     A
                ASL     A
                ASL     A
                SEC
                SBC     #4
                STA     NTAddr+1        ; 7408
                LDA     Row
                CLC
                AND     #$1E
                ASL     A
                ASL     A
                ASL     A
                STA     LoopAddr        ; ROM:C84F, ROM:C881
                CLC
                ADC     #$C
                STA     LoopAddr+1      ; ROM:C84F, ROM:C881
                LDX     #0

loc_19A346:
                LDA     OAM_Cache,X
                CMP     LoopAddr+1      ; ROM:C84F, ROM:C881
                BCS     loc_19A365
                ADC     #4
                CMP     LoopAddr        ; ROM:C84F, ROM:C881
                BCC     loc_19A365
                LDA     OAM_Cache + OAM_TILE::PosX,X
                CMP     NTAddr+1
                BCS     loc_19A365
                ADC     #4
                CMP     NTAddr
                BCC     loc_19A365
                LDA     #$F0
                STA     OAM_Cache,X

loc_19A365:
                INX
                INX
                INX
                INX
                BNE     loc_19A346
                ASL     FlagClearOAM300
                RTS
; End of function sub_19A31E


; =============== S U B R O U T I N E =======================================


sub_19A36E:
    .import setup, cursor_update, loc_EF7C
    .importzp byte_D6, pCursor, Buttons, CurrentFieldPosition

                JSR     setup
                LDY     #0

loc_19A373:
                TYA
                PHA
                JSR     sub_19A3CD
                PLA
                TAY
                INY
                CPY     #4
                BCC     loc_19A373
                LDA     #1
                STA     byte_D6
                LDA     #$FA
                LDX     #$A3            ; BANK19:A3FA
                STA     pCursor
                STX     pCursor+1
                JSR     cursor_update

loc_19A38E:
                BIT     Buttons
                BPL     loc_19A3C8
                LDA     CurrentFieldPosition
                TAX
                LSR     A
                LSR     A
                LSR     A
                TAY
                JSR     sram_write_enable
                LDA     byte_19A408,X
                STA     $743C,Y            ; CurrentPlayer.PureSave.field_3C,Y
                CPY     #3
                BNE     loc_19A3B0
                TXA
                AND     #7
                TAX
                LDA     byte_19A428,X
                STA     $7418               ; CurrentPlayer.PureSave.field_18

loc_19A3B0:
                JSR     sram_read_enable
                LDA     Column
                PHA
                LDA     Row
                PHA
                JSR     sub_19A3CD
                PLA
                STA     Row
                PLA
                STA     Column
                JSR     loc_EF7C
                JMP     loc_19A38E
; ---------------------------------------------------------------------------

loc_19A3C8:
                LDA     #0
                STA     byte_D6
                RTS
; End of function sub_19A36E


; =============== S U B R O U T I N E =======================================


sub_19A3CD:
    .import sub_C68B

                TYA
                ASL     A
                ASL     A
                ADC     #$D
                STA     Row
                LDA     $743C,Y            ; CurrentPlayer.PureSave.field_3C,Y
                STA     Pointer
                LDA     byte_19A404,Y
                STA     Pointer+1
                LDX     #5

loc_19A3E0:
                STX     Column
                LDA     #$94
                ASL     Pointer
                ADC     #0
                ASL     Pointer+1
                BCC     loc_19A3EF
                JSR     sub_C68B

loc_19A3EF:
                CLC
                LDA     Column
                ADC     #4
                TAX
                CPX     #$19
                BCC     loc_19A3E0
                RTS
; End of function sub_19A3CD

; ---------------------------------------------------------------------------
    ; CURSOR <8, 4, 4, 4, $C0, $3A, 4, $D, byte_19A408>
    .byte 8, 4, 4, 4, $C0, $3A, 4, $D
    .word byte_19A408
byte_19A404:
    .byte $A8, $A8, $A8, $F8
byte_19A408:
    .byte $80, 0, $20, 0
    .byte 8, 0, 0, 0
    .byte $80, 0, $20, 0
    .byte 8, 0, 0, 0
    .byte $80, 0, $20, 0
    .byte 8, 0, 0, 0
    .byte $80, $40, $20, $10
    .byte 8, 0, 0, 0
byte_19A428:
    .byte $41, $31, $21, $11, 1

; =============== S U B R O U T I N E =======================================


sub_19A42D:
    .importzp BankTable, AddrForJmp

                LDA     BankTable + BANK_TABLE::CPU_8K_8000
                PHA
                LDX     #0

loc_19A432:
                STX     Pointer
                LDA     byte_19A48F,X
                BMI     loc_19A47A
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                LDX     #$80
                STA     pTileID
                STX     pTileID+1
                LDA     #0
                STA     Pointer+1
                STA     AddrForJmp
                LDX     #$20

loc_19A44E:
                LDY     #0

loc_19A450:
                CLC
                LDA     (pTileID),Y
                ADC     Pointer+1
                STA     Pointer+1
                LDA     #0
                ADC     AddrForJmp
                STA     AddrForJmp
                INY
                BNE     loc_19A450
                INC     pTileID+1
                DEX
                BNE     loc_19A44E
                LDX     Pointer
                INX
                LDA     byte_19A48F,X
                CMP     AddrForJmp
                NOP
                NOP
                INX
                LDA     byte_19A48F,X
                CMP     Pointer+1
                NOP
                NOP
                INX
                BNE     loc_19A432

loc_19A47A:
                PLA
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_19A42D            ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_19A480:
                JSR     darken_palette
                JSR     update_animation
                JSR     clear_oam_sprite
                JSR     clear_nametables
                JMP     loc_19A204
; End of function sub_19A480

; ---------------------------------------------------------------------------
byte_19A48F:
    .byte $13, $2C, $95, $14, $B, $82, $17, $ED, $EB, $19
    .byte $C7, $A8, $1C, $AC, $D5, $1E, $1C, $CF, $1F, $36
    .byte $FA, $FF, $57, $38

; =============== S U B R O U T I N E =======================================


sub_19A4A7:
    .import bank_A000_a, bank14_8000
    .importzp EnemyGroup

                LDA     $7419           ; CurrentPlayer.PureSave.field_19
                BEQ     locret_19A4CB
                LDY     EnemyGroup
                LDX     byte_19A504,Y
                LDA     byte_19A4F2,X
                CMP     Boy1Lvl           ; CurrentPlayer.PureSave.Characters.Level
                BCS     locret_19A4CB
                JSR     sram_write_enable
                DEC     $7419           ; CurrentPlayer.PureSave.field_19
                JSR     sram_read_enable
                LDA     #0
                STA     EnemyGroup
                LDA     $7419           ; CurrentPlayer.PureSave.field_19
                BEQ     loc_19A4CC

locret_19A4CB:
                RTS
; ---------------------------------------------------------------------------

loc_19A4CC:
                LDA     #$D1
                STA     PointerTilePack
                LDA     #6
                STA     byte_73
                LDA     #$13
                LDX     #$19
                LDY     #$AD            ; BANK13:AD1A
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                LDA     #$13
                LDX     #$2F ; '/'
                LDY     #$AB            ; BANK13:AB30
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                LDA     #$13
                LDX     #$F3
                LDY     #$C3            ; ROM:C3F4 BANK13
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JMP     bank14_8000
; End of function sub_19A4A7

; ---------------------------------------------------------------------------
byte_19A4F2:
    .byte 0, 3, 5, 7, $A, $C, $10, $12, $13, $15, $17, $1A
    .byte $1C, $1E, $23, $24, $25, $FF
byte_19A504:
    .byte 0, 1, 3, 1, 3, 1, 3, 3, 1, 3, 1, 1, 7, 1, 1, 2, $11
    .byte $11, $11, $11, 2, 2, 3, 3, $11, 3, 3, 3, 3, 3, 3
    .byte $11, 3, $11, 3, 3, $11, 3, 6, $11, 6, 6, $11, 8
    .byte 4, $11, $11, $11, 4, 4, 4, 4, 5, 5, 5, 4, 5, 5, 4
    .byte 4, 4, 5, 5, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $11, 6, 8, 8, $11, $11, $11, 7, 7, 7, 7, 7, $11
    .byte 6, 6, $11, $11, 6, $11, 2, 9, $11, $11, $11, 9, 9
    .byte $11, 9, 9, $11, $11, 9, $A, $A, $A, $A, $A, $A, $A
    .byte $A, $11, $11, $11, $B, $B, $B, $B, $B, $D, $D, $B
    .byte $B, $B, $B, $B, $11, $11, $11, $B, $11, $11, $11
    .byte $11, $11, $11, $11, $B, $B, $C, $C, $C, $C, $C, $11
    .byte $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
    .byte $E, $E, $E, $E, $E, $F, $F, $F, $F, $10, $10, $10
    .byte $10, $10, $10, $10, $10, $10, $10, $10, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

; =============== S U B R O U T I N E =======================================


sub_19A5CC:
    .import one_color_palettes_save, back_palettes, wait_frames
    .importzp byte_2C, Dist

                JSR     sub_19A81A
                LDA     #0
                STA     byte_2C
                LDA     #$13
                LDX     #$F3
                LDY     #$C3            ; ROM:C3F4 BANK13
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                LDA     #$6A ; 'j'
                LDX     #1
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JSR     wait_nmi_processed
                LDX     #$DF

loc_19A5E8:
                LDA     SpriteTable,X
                STA     SpriteTable + ANIM_SPRITE::Tiles+$20,X
                DEX
                CPX     #$FF
                BNE     loc_19A5E8
                LDX     #$1F

loc_19A5F5:
                LDA     stru_19A6A1,X
                STA     SpriteTable,X
                DEX
                BPL     loc_19A5F5
                CLC
                LDA     LowGlobalXC0
                ADC     #$60
                STA     Pointer
                LDA     HighGlobalX
                ADC     #0
                STA     Pointer+1
                SEC
                LDY     #4
                LDA     (Dist),Y
                SBC     Pointer
                STA     Pointer
                INY
                LDA     (Dist),Y
                SBC     Pointer+1
                STA     Pointer+1
                LSR     Pointer+1
                ROR     Pointer
                LSR     Pointer+1
                ROR     Pointer
                CLC
                LDA     LowGlobalYC0
                ADC     #$A4
                STA     pTileID
                LDA     HighGlobalY
                ADC     #0
                STA     pTileID+1
                SEC
                LDY     #6
                LDA     (Dist),Y
                SBC     pTileID
                STA     pTileID
                INY
                LDA     (Dist),Y
                SBC     pTileID+1
                STA     pTileID+1
                LSR     pTileID+1
                ROR     pTileID
                LSR     pTileID+1
                ROR     pTileID
                LDA     Pointer
                STA     SpriteTable + ANIM_SPRITE::PosX
                STA     SpriteTable + ANIM_SPRITE::PosX+8
                STA     SpriteTable + ANIM_SPRITE::PosX+$10
                STA     SpriteTable + ANIM_SPRITE::PosX+$18
                LDA     pTileID
                STA     SpriteTable + ANIM_SPRITE::PosY
                STA     SpriteTable + ANIM_SPRITE::PosY+8
                STA     SpriteTable + ANIM_SPRITE::PosY+$10
                STA     SpriteTable + ANIM_SPRITE::PosY+$18
                LDA     #$5A
                STA     NMIFlags
                LDA     #$30
                JSR     one_color_palettes_save
                JSR     wait_nmi_processed
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4
                STA     SpriteTable + ANIM_SPRITE::field_5
                STA     SpriteTable + ANIM_SPRITE::Tiles+8
                STA     SpriteTable + ANIM_SPRITE::Tiles+$10
                STA     SpriteTable + ANIM_SPRITE::Tiles+$18
                LDA     Pointer
                STA     SpriteTable + ANIM_SPRITE::PosX
                LDA     pTileID
                STA     SpriteTable + ANIM_SPRITE::PosY
                LDA     #$FC
                STA     SpriteTable + ANIM_SPRITE::pFrame
                LDA     #$99
                STA     SpriteTable + ANIM_SPRITE::pFrame+1
                LDA     #1
                STA     NMIFlags
                JSR     back_palettes
                LDX     #$3C
                JMP     wait_frames     ; wait for a few frames
; End of function sub_19A5CC            ; input: X - number of frames

; ---------------------------------------------------------------------------
stru_19A6A1:
    .byte 4, 0, $32, $32, 1, 1
    .word $99F8                 ; ANIM_SPRITE <4, 0, $32, $32, 1, 1, FRAME.pSprite+$99F8>
    .byte 4, 0, $42, $32, 1, $FF
    .word $99F8                 ; ANIM_SPRITE <4, 0, $42, $32, 1, $FF, FRAME.pSprite+$99F8>
    .byte 4, 0, $32, $42, $FF, 1
    .word $99F8                 ; ANIM_SPRITE <4, 0, $32, $42, $FF, 1, FRAME.pSprite+$99F8>
    .byte 4, 0, $42, $42, $FF, $FF
    .word $99F8                 ; ANIM_SPRITE <4, 0, $42, $42, $FF, $FF, FRAME.pSprite+$99F8>

nullsub_7:
    RTS

; =============== S U B R O U T I N E =======================================


sub_19A6C2:
                JSR     sub_19A42D
                JSR     update_animation
                LDA     #$FF
                JSR     wait_change_music
                LDX     #$3C
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                LDA     #$23
                STA     NewMusic
                LDA     #$F8
                LDX     #$FF
                JSR     sub_19A75E
                LDA     #$10
                LDX     #0
                JSR     sub_19A75E
                JSR     sub_19A7AD
                JSR     sub_19A7AD
                JSR     sub_19A71F
                JSR     sub_19A723
                JSR     sub_19A71F
                JSR     sub_19A723
                JSR     sub_19A7AD
                JSR     sub_19A727
                JSR     sub_19A72B
                JSR     sub_19A727
                JSR     sub_19A72B
                JSR     wait_nmi_processed
                LDX     #$60
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                JSR     sub_19A71F
                JSR     sub_19A723
                JSR     sub_19A71F
                JSR     loc_19A7B0
                LDX     #$78
                JMP     wait_frames     ; wait for a few frames
; End of function sub_19A6C2            ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


sub_19A71F:
                LDY     #0
                BPL     loc_19A72D
; End of function sub_19A71F


; =============== S U B R O U T I N E =======================================


sub_19A723:
                LDY     #8
                BPL     loc_19A72D
; End of function sub_19A723


; =============== S U B R O U T I N E =======================================


sub_19A727:
                LDY     #$10
                BPL     loc_19A72D
; End of function sub_19A727


; =============== S U B R O U T I N E =======================================


sub_19A72B:
                LDY     #$18

loc_19A72D:
                LDA     byte_19A73E,Y
                LDX     byte_19A73E+1,Y
                JSR     loc_19A7B4
                INY
                INY
                TYA
                AND     #7
                BNE     loc_19A72D
                RTS
; End of function sub_19A72B

; ---------------------------------------------------------------------------
byte_19A73E:
    .byte 1, 0, $FF, 0, 1, 0, $FF, 0, 1, $FF, $FF, 0, 1, 1
    .byte $FF, 0, 0, $FF, 0, $FF, 0, $FF, 0, $FF, 1, 1, $FF
    .byte 1, 1, 1, $FF, 1

; =============== S U B R O U T I N E =======================================


sub_19A75E:
                STA     Pointer
                STX     Pointer+1
                LDX     #8

loc_19A764:
                JSR     sub_19A77A
                LDA     #$30
                STA     NMIFlags
                JSR     sub_19A7A7
                CPX     #$20
                BCC     loc_19A764
                JSR     wait_nmi_processed
                LDA     #$30
                STA     NMIFlags
                RTS
; End of function sub_19A75E


; =============== S U B R O U T I N E =======================================


sub_19A77A:
                JSR     wait_nmi_processed
                CLC
                LDA     Pointer
                ADC     SpriteTable + ANIM_SPRITE::pFrame,X
                STA     SpriteTable + ANIM_SPRITE::pFrame,X
                LDA     Pointer+1
                ADC     SpriteTable + ANIM_SPRITE::pFrame+1,X
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X
                RTS
; End of function sub_19A77A


; =============== S U B R O U T I N E =======================================


sub_19A78F:
                CPX     #$20
                BCS     sub_19A79E
                LDA     pTileID
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                LDA     pTileID+1
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                RTS
; End of function sub_19A78F


; =============== S U B R O U T I N E =======================================


sub_19A79E:
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                RTS
; End of function sub_19A79E


; =============== S U B R O U T I N E =======================================


sub_19A7A7:
                CLC
                TXA
                ADC     #8
                TAX
                RTS
; End of function sub_19A7A7


; =============== S U B R O U T I N E =======================================


sub_19A7AD:
                JSR     loc_19A7B0

loc_19A7B0:
                LDA     #0
                LDX     #0

loc_19A7B4:
                STA     pTileID
                STX     pTileID+1
                JSR     loc_19A7BB

loc_19A7BB:
                LDA     #4
                LDX     #0
                STA     Pointer
                STX     Pointer+1
                LDX     #8

loc_19A7C5:
                JSR     sub_19A77A
                JSR     sub_19A78F
                JSR     sub_19A7A7
                BCC     loc_19A7C5
                LDA     #2
                STA     NMIFlags
                LDX     #8

loc_19A7D6:
                JSR     wait_nmi_processed
                JSR     sub_19A79E
                JSR     sub_19A7A7
                BCC     loc_19A7D6
                LDA     #$16
                STA     NMIFlags
                LDA     #$FC
                LDX     #$FF
                STA     Pointer
                STX     Pointer+1
                LDX     #8

loc_19A7EF:
                JSR     sub_19A77A
                JSR     sub_19A7A7
                BCC     loc_19A7EF
                LDA     #$18
                STA     NMIFlags
                RTS
; End of function sub_19A7AD


; =============== S U B R O U T I N E =======================================


sub_19A7FC:
    .importzp byte_4E, byte_4F, CharacterOffset

                LDY     CharacterOffset
                SEC
                LDA     byte_605,Y
                SBC     byte_4E
                STA     byte_605,Y
                LDA     byte_606,Y
                SBC     byte_4F
                STA     byte_606,Y
                BCS     locret_19A819
                LDA     #0
                STA     byte_605,Y
                STA     byte_606,Y

locret_19A819:
                RTS
; End of function sub_19A7FC


; =============== S U B R O U T I N E =======================================


sub_19A81A:
                LDA     BankTable + BANK_TABLE::CPU_8K_8000
                PHA
                LDX     #0

loc_19A81F:
                STX     Pointer
                LDA     byte_19A88C,X
                BMI     loc_19A867
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                LDX     #$80
                STA     pTileID
                STX     pTileID+1
                LDA     #0
                STA     Pointer+1
                STA     AddrForJmp
                LDX     #$20

loc_19A83B:
                LDY     #0

loc_19A83D:
                CLC
                LDA     (pTileID),Y
                ADC     Pointer+1
                STA     Pointer+1
                LDA     #0
                ADC     AddrForJmp
                STA     AddrForJmp
                INY
                BNE     loc_19A83D
                INC     pTileID+1
                DEX
                BNE     loc_19A83B
                LDX     Pointer
                INX
                LDA     byte_19A88C,X
                CMP     AddrForJmp
                NOP
                NOP
                INX
                LDA     byte_19A88C,X
                CMP     Pointer+1
                NOP
                NOP
                INX
                BNE     loc_19A81F

loc_19A867:
                PLA
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_19A81A            ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_19A86D:
                JSR     darken_palette
                JSR     update_animation
                JSR     clear_oam_sprite
                JSR     clear_nametables
                JSR     wait_nmi_processed
                LDA     #0
                STA     IRQCount
                STA     CameraX
                STA     CameraY
                LDA     #$FF
                JSR     wait_change_music
                JMP     loc_19A214
; End of function sub_19A86D

; ---------------------------------------------------------------------------
byte_19A88C:
    .byte $13, $2C, $95, $14, $B, $82, $17, $ED, $EB, $19
    .byte $C7, $A8, $1C, $AC, $D5, $1E, $1C, $CF, $1F, $36
    .byte $FA, $FF, $57, $38
