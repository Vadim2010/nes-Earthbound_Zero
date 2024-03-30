.include "nes.inc"
.include "ram.inc"
.include "mmc3/bank.inc"
.include "mmc3/mmc3.inc"
.include "mmc3/sram.inc"
.include "palette.inc"

.segment "PRG_FIXED"

Samples:
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $B6, $42, 4, 0
    .byte 0, 0, 0, 0, $20, $49, $B5, $AA, $AA, $4A, $24, 1
    .byte $51, $DA, $B6, $AA, $6D, $F7, $FF, $FF, $FF, $FF
    .byte $FF, $F6, $76, $DB, $AB, $55, $A5, $44, $10, $20
    .byte 0, 0, 4, 8, $90, $28, $51, $AA, $5A, $B5, $6D, $7B
    .byte $F7, $EE, $DD, $B7, $77, $5B, $5B, $B5, $52
    .byte $49, $12, $12, 9, $12, $22, $49, $48, $A5, $2A, $55
    .byte $65, $B5, $B5, $AD, $B6, $6D, $DB, $B6, $6D, $DB
    .byte $B6, $B5, $AD, $D6, $AA, $2A, $55, $4A, $A5, $24
    .byte $49, $2A, 9, $95, $A2, $54, $49, $53, $B5, $44, $6A
    .byte $D5, $6A, $AD, $D6, $44, 0, $AB, $6A, $D5, $44, $44
    .byte $AD, $44, $44, $44, $54, $44, $95, $44, $52, 0, 0
byte_C080:
    .byte $FF, $B7, $20, $B, 0, 0, 0, 0, $C0, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, 0, 0, 0, 0, 0, 0, $C0, $B
    .byte 0, 0, $80, $FD, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $17, 0, 0, 0, 0, 0, 0, 0, $F0, $FF, $FF, $FF
    .byte $FF, $FF, $7E, $51, $ED, $44, $81, $10, 1, $82, $18
    .byte $2B, $42, $53, $81
    .byte $6F, $D8, $DB, $EB, $E7, $BF, $EB, $1F, $FB, $95
    .byte $24, $48, 0, 2, 0, $E0, $C5, $C0, $BF, $F8, $FF
    .byte $FF, $BA, $E, $7E, $C4, $50, $68, $2A, $56, 2, $6F
    .byte $77, $4E, $F8, $45, $95, $20, $56, $50, $63, $3F
    .byte $F4, $FF, $F0, $9D, $F8, $21, $B2, $20, $8E, $D
    .byte $18, $CF, $82, $AF, $8A, $E3, $3F, $78, $FD, $18
    .byte $CE, 2
    .byte $87, $58, $E0, $C4, $47, $E9, $DF, $F1, $53, $3B
    .byte $8A, $97, $38, 8, $A9, 3, $DE, $E2, $F8, $F, $9E
    .byte $EC, $89, $B2, 7, $38, $E2, $63, $F1, $E3, $C3, $7B
    .byte $42, $AF, $28, $8E, $2A, $8E, $42, $83, $5A, $1D
    .byte $FA, $B1, $EB, $AB, $D6, $62, $DA, $A1, $E2, $D0
    .byte $34, $9C, $85, $8E, $AE, $C4, $7A, $72, $1D, $A6
    .byte $55, $1C
    .byte $B9, $52, $3D, $8B, $9E, $9D, $4E, $96, $2A, $B
    .byte $E2, $A8, $A4, $95, $2D, $BB, $72, $AD, $F4, $91
    .byte $5A, $8B, $52, $25, $4E, $9C, $5A, $79, $6A, $D7
    .byte $A4, $8E, $9C, $74, $B0, $A2, $B4, $89, $67, $35
    .byte $6D, $2B, $37, $B6, $45, $A5, $A9, $C5, $A4, $42
    .byte $34, $26, $54, $44, $44, 4, $44, 0, $4A, $44, 0
    .byte 0, 0, 0
byte_C180:
    .byte 0, $ED, $BA, $98, $76, $78, $97, $AB, $CD, $A7, $47
    .byte $76, $48, $45, $66, $77, $89, $FC, $97, $64, $FC
    .byte $97, $65, $FC, $86, 1, $23, $45, $67, $89, $AB, $CD
    .byte $EF, $FE, $A9, $ED, $FD, $79, $BD, $FE, $D9, $45
    .byte $78, $99, $AA, $BB, $CC, $DD, $EF, $7A, $DE, $FF
    .byte $EF, $FD, $DF, $FE, $EF, $EF, $FD, $EF, $FE, $DF
    .byte $FF, $EE
    .byte $EE, $FF, $EF, $FF, $FF, $FF, $EF, $EF, $FF, $FF
    .byte $EF, $FF, $FF, $FF, $EF, $EF, $FF, $BF, $FF, $EE
    .byte $EE, $ED, $ED, $DD, $BB, $BB, $AA, $AA, $99, $98
    .byte $87, $76, $65, $54, $44, $33, $22, $22, $22, $22
    .byte $22, $22, $22, $11, $11, $11, $11, $11, $11, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF

; =============== S U B R O U T I N E =======================================


sub_C200:
    .importzp BankMode, byte_0

                LDA     #$F
                STA     Stack
                LDA     #3
                ORA     BankMode
                STA     $8000
                LDX     #9
                LDY     #2

loc_C210:
                DEY
                BNE     loc_C210
                BIT     byte_0
                JMP     wait4
; End of function sub_C200


; =============== S U B R O U T I N E =======================================


sub_C218:
                STA     $C000
                LDA     #2
                ORA     BankMode
                TAX

wait4:
                LDY     #4

@wait:
                DEY
                BNE     @wait
                RTS
; End of function sub_C218


; =============== S U B R O U T I N E =======================================


sub_C226:
                LDA     #$F
                STA     Stack
                RTS
; End of function sub_C226

; ---------------------------------------------------------------------------
TypeTable:
    .byte 0, 1, 2, 3, 8, 9, $96, $97, $98, $99, $9A, $9B, $9C
    .byte $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $2A, $2B
    .byte $2C, $2D, $2E, $AA, $AB, $AC, $AD, $AE, $93, 4, 5
    .byte 6, 7, $E, $F, $D6, $D7, $D8, $D9, $DA, $DB, $DC
    .byte $DD, $DE, $DF, $E0, $E1, $E2, $E3, $E4, $6A, $6B
    .byte $6C, $6D, $6E, $EA, $EB, $EC, $ED, $EE, $D3

; =============== S U B R O U T I N E =======================================


sub_C26C:
    .export sub_C26C
    .import wait_nmi_processed, bank_A000_a, wait_nmi
    .importzp PointerTilePack, IRQCount, OffsetNMI_Data, Row, UnpackID

                LDA     #$D9
                LDX     #$91            ; 91D9
                STA     PointerTilePack
                STX     PointerTilePack+1

loc_C274:
                JSR     load_character_data ; Copies the characteristics of the characters
                JSR     wait_nmi_processed
                LDA     #$19
                LDX     #$B2
                LDY     #$A2            ; BANK19:A2B3
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                LDA     #0
                STA     IRQCount
                LDA     #$FF            ; prepare enable Delta Modulation
                STA     DMCflag
                LDA     #$F             ; disable Delta Modulation
                STA     SND_CHN         ; pAPU Sound/Vertical Clock Signal Register (R)
                                        ;
                                        ;    D6: Vertical Clock Signal IRQ Availability
                                        ;    D4: Delta Modulation
                                        ;    D3: Noise
                                        ;    D2: Triangle
                                        ;    D1: Pulse #2
                                        ;    D0: Pulse #1
                                        ; ---------------------------------------------
                                        ; pAPU Channel Control (W)
                                        ;
                                        ;    D4: Delta Modulation
                                        ;    D3: Noise
                                        ;    D2: Triangle
                                        ;    D1: Pulse #2
                                        ;    D0: Pulse #1
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDX     #0

@next_irq_handler:
                LDA     #$25
                STA     InterruptTable,X ; C226-1 for irq
                INX
                LDA     #$C2
                STA     InterruptTable,X
                INX
                CPX     #$1A
                BNE     @next_irq_handler
                LDA     #0
                STA     InterruptTable,X
                INX
                STA     InterruptTable,X
                LDA     #$F
                STA     IRQCount

next_tilepack:
                JSR     bank0_0

@next_row:
                JSR     wait_nmi_processed
                LDX     #0
                STX     OffsetNMI_Data
                JSR     tiled_area
                STY     OffsetNMI_Data
                INC     Row
                LDY     #0
                LDA     (PointerTilePack),Y
                PHA
                INY
                LDA     (PointerTilePack),Y
                PHA
                INY
                TYA
                JSR     get_tile_pointer
                LDA     UnpackID        ; UnpackTable
                CMP     #0
                BNE     @no_end_marker
                JSR     tiled_area
                JSR     sub_C306
                PLA
                TAX
                PLA
                CMP     InterruptTable,X
                BCC     @less0
                STA     InterruptTable,X

@less0:
                LDA     UnpackID        ; UnpackTable
                CMP     #0
                BNE     @next_row
                RTS
; ---------------------------------------------------------------------------

@no_end_marker:
                INC     Row
                JSR     clear_area
                JSR     sub_C306
                PLA                     ; get offset from tilepack
                TAX
                PLA                     ; get low byte irq handler - 1
                CMP     InterruptTable,X
                BCC     @less
                STA     InterruptTable,X

@less:
                JMP     next_tilepack
; End of function sub_C26C


; =============== S U B R O U T I N E =======================================


sub_C306:
    .import wait_nmi_flags_reset
    .importzp NMIFlags

                STY     OffsetNMI_Data
                JSR     prepare_attributes
                LDA     #0
                STA     NMI_Data,X        ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                LDA     #$19
                LDX     #$1D
                LDY     #$A3            ; BANK19:A31E
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte

loc_C31F:
                JMP     wait_nmi_flags_reset
; End of function sub_C306


; =============== S U B R O U T I N E =======================================


bank0_0:
    .import mmc3_bank_set

                LDA     #0
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank0_0               ; A - bank number
                                        ; X - mode
; ---------------------------------------------------------------------------
TilePack:       .byte $20, 1, $17 ; command to set the initial position of tile output
                .byte $21
                .word $924B ; InfoFrame ; command to load packed tiles at the specified offset
                .byte 1                 ; end row
                .byte $25, $16          ; low byte irq handler, offset to InterruptTable
                .byte $21
                .word $6710 ; InfoCharacter ; command to load packed tiles at the specified offset
                .byte 0                 ; end tilepack mark
                .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable
                .byte $FB               ; \
                .byte $22, $FC, $1C ; command to fill with a single repeating tile
                .byte $FD               ; /
EndTileMark:    .byte 0                 ; end tilepack mark
stru_C33E:      .byte $20, 1, $15 ; command to set the initial position of tile output
                .byte $21
                .word $924B ; InfoFrame ; command to load packed tiles at the specified offset
                .byte 1                 ; end row
                .byte $25, $14          ; low byte irq handler, offset to InterruptTable
                .byte $21
                .word $6710 ; InfoCharacter ; command to load packed tiles at the specified offset
                .byte 1                 ; end row
                .byte $25, $16          ; low byte irq handler, offset to InterruptTable
                .byte $21
                .word $672E ; command to load packed tiles at the specified offset
                .byte 0                 ; end tilepack mark
                .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable
                .byte $FB               ; \
                .byte $22, $FC, $1C ; command to fill with a single repeating tile
                .byte $FD               ; /
                .byte 0                 ; end tilepack mark
stru_C359:      .byte $20, 1, $13 ; DATA XREF: ROM:off_C616↓o
                                        ; command to set the initial position of tile output
                .byte $21
                .word $924B ; InfoFrame ; command to load packed tiles at the specified offset
                .byte 1                 ; end row
                .byte $25, $12          ; low byte irq handler, offset to InterruptTable
                .byte $21
                .word $6710 ; InfoCharacter ; command to load packed tiles at the specified offset
                .byte 1                 ; end row
                .byte $25, $14          ; low byte irq handler, offset to InterruptTable
                .byte $21
                .word $672E ; command to load packed tiles at the specified offset
                .byte 1                 ; end row
                .byte $25, $16          ; low byte irq handler, offset to InterruptTable
                .byte $21
                .word $674C ; command to load packed tiles at the specified offset
                .byte 0                 ; end tilepack mark
                .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable
                .byte $FB               ; \
                .byte $22, $FC, $1C ; command to fill with a single repeating tile
                .byte $FD               ; /
                .byte 0                 ; end tilepack mark
CharacterInfo:  .byte $24, $A0          ; copy_tilepack↓r ...
                                        ; low byte irq handler - 1, offset to InterruptTable
stru_C37C:      .byte $23
                .word $38
                .byte 0, 7 ; character name base addr (7440, 7480, 74C0, 7500) + $38
                .byte $23
                .word $10
                .byte 1, 3 ; character level base addr (7440, 7480, 74C0, 7500) + $10
                .byte $23
                .word $14
                .byte 2, 4 ; character health base addr (7440, 7480, 74C0, 7500) + $14
                .byte $23
                .word $16
                .byte 2, 4 ; character PP base addr (7440, 7480, 74C0, 7500) + $16
                .byte $23
                .word $11
                .byte 3, 8 ; character experience base addr (7440, 7480, 74C0, 7500) + $11
                .byte $A0               ;
                .byte $25               ; |
                .byte 0
byte_C398:      .byte 1
                .byte 4
                .word $A0A0 ; command to load packed tiles at the specified offset
                .byte $21 ; !           ; command to load packed tiles at the specified offset
ExclamationMark:.byte $A0, $A1, 0       ;  !

; =============== S U B R O U T I N E =======================================


out_msg_frame:
    .export out_msg_frame

                LDA     #$6A            ; low byte irq handler - 1, offset to InterruptTable
                LDX     #$92

loc_C3A4:
                STA     PointerTilePack
                STX     PointerTilePack+1
                LDA     IRQCount
                BEQ     loc_C3AF
                JMP     next_tilepack
; ---------------------------------------------------------------------------

loc_C3AF:
                JMP     loc_C274
; End of function out_msg_frame


; =============== S U B R O U T I N E =======================================


goods_psi:
    .export goods_psi

                LDA     #$9B            ; 929B
                LDX     #$92
                JMP     loc_C3A4
; End of function goods_psi


; =============== S U B R O U T I N E =======================================


sub_C3B9:
    .export sub_C3B9

                LDA     #$CF            ; 92CF
                LDX     #$92
                JMP     loc_C3A4
; End of function sub_C3B9


; =============== S U B R O U T I N E =======================================


sub_C3C0:
    .export sub_C3C0

                LDA     #0              ; 9300
                LDX     #$93
                JMP     loc_C3A4
; End of function sub_C3C0


; =============== S U B R O U T I N E =======================================


sub_C3C7:
    .export sub_C3C7

                LDA     #$17            ; 9317
                LDX     #$93
                JMP     loc_C3A4
; End of function sub_C3C7


; =============== S U B R O U T I N E =======================================


sub_C3CE:
    .export sub_C3CE

                LDA     #$5F ; '_'      ; 935F
                LDX     #$93
                JMP     loc_C3A4
; End of function sub_C3CE


; =============== S U B R O U T I N E =======================================


sub_C3D5:
    .export sub_C3D5

                JSR     load_character_data ; Copies the characteristics of the characters
                LDA     #$48 ; 'H'      ; 9248
                LDX     #$92
                JMP     loc_C3A4
; End of function sub_C3D5


; =============== S U B R O U T I N E =======================================


sub_C3DF:
    .export sub_C3DF

                LDA     #$6A ; 'j'      ; 936A
                LDX     #$93
                JMP     loc_C3A4
; End of function sub_C3DF


; =============== S U B R O U T I N E =======================================


state:
    .export state

                LDA     #$8D            ; 938D
                LDX     #$93
                JMP     loc_C3A4
; End of function state


; =============== S U B R O U T I N E =======================================


setup:
    .export setup

                LDA     #$1E            ; 951E
                LDX     #$95
                JMP     loc_C3A4
; End of function setup


; =============== S U B R O U T I N E =======================================


sub_C3F4:
    .export sub_C3F4
    .import sub_FDC0

                PHP

loc_C3F5:
                JSR     draw_screen
                JSR     sub_FDC0
                LDA     #1
                STA     NMIFlags
                LDA     #0
                STA     DMCflag
                PLP
                RTS
; End of function sub_C3F4


; =============== S U B R O U T I N E =======================================


draw_statistical_frame:
    .import sram_write_enable, sram_read_enable
    .importzp Pointer, BankTable

                LDA     #$FF

loc_C408:
                STA     Pointer
                JSR     sram_write_enable
                LDA     #0

loc_C40F:
                PHA
                TAX
                LDA     $600,X
                BEQ     loc_C436
                LDA     pPPUTab,X
                STA     PointerTilePack
                LDA     pPPUTab+1,X
                STA     PointerTilePack+1
                LDY     #1
                LDA     $601,X
                AND     Pointer
                STA     (PointerTilePack),Y
                LDY     #$14

loc_C42B:
                LDA     $603,X
                STA     (PointerTilePack),Y
                INX
                INY
                CPY     #$18
                BCC     loc_C42B

loc_C436:
                PLA
                CLC
                ADC     #$20
                BPL     loc_C40F
                JSR     sram_read_enable

loc_C43F:
                JSR     load_character_data ; Copies the characteristics of the characters
                LDA     BankTable + BANK_TABLE::CPU_8K_8000
                PHA
                JSR     bank0_0
                LDA     #$48
                LDX     #$92
                STA     PointerTilePack ; 9248
                STX     PointerTilePack+1
                JSR     sub_C6D2
                BNE     loc_C458

loc_C455:
                JSR     loc_C6DB

loc_C458:
                LDA     #2
                JSR     get_tile_pointer
                LDA     UnpackID        ; UnpackTable
                CMP     #0
                BNE     loc_C455
                INC     Row
                JSR     sub_C6D2
                PLA
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function draw_statistical_frame ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


prepare_attributes:
    .importzp ChrCount, BlockIndex, Column, LoopAddr, NTAddr, AttributeOffset

                LDA     ChrCount
                LSR     A
                ADC     #0
                TAX
                LDA     Row
                AND     #$1E
                ASL     A
                ASL     A
                ASL     A
                STA     BlockIndex
                LDA     Column
                ADC     #1
                LSR     A
                ORA     BlockIndex
                STA     BlockIndex
                TAY
                JSR     sram_write_enable
                LDA     #$FF

@next_byte:
                STA     AttributeCopy,Y
                INY
                DEX
                BNE     @next_byte
                JSR     sram_read_enable
                LDX     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                LDY     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                TYA
                CLC
                AND     #3
                ADC     #3
                ADC     ChrCount
                LSR     A
                LSR     A
                STA     LoopAddr        ; ROM:C84F, ROM:C881
                TYA
                AND     #$80
                STA     NTAddr+1
                TXA
                LSR     A
                ROR     NTAddr+1
                LSR     A
                ROR     NTAddr+1
                TYA
                AND     #$1C
                ORA     NTAddr+1
                LSR     A
                LSR     A
                ORA     #$C0
                STA     NTAddr+1
                ORA     #$F8
                STA     AttributeOffset
                TXA
                ORA     #3
                STA     NTAddr
                TYA
                AND     #$42 ; 'B'
                LSR     A
                LSR     A
                ADC     #0
                EOR     #$FF
                ADC     #1
                CLC
                ADC     BlockIndex
                TAY
                LDX     OffsetNMI_Data
                LDA     #7              ; write_ppu_chars
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     LoopAddr        ; ROM:C84F, ROM:C881
                STA     NMI_Data,X        ; NMITable
                INX

@next_attr:
                LDA     NTAddr
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     NTAddr+1
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     AttributeCopy,Y
                AND     #3              ; left top attribute
                STA     BlockIndex
                INY
                LDA     AttributeCopy,Y
                AND     #$C             ; right top attribute
                ORA     BlockIndex
                STA     BlockIndex
                TYA
                CLC
                ADC     #$F             ; get offset left bottom attribute
                TAY
                LDA     AttributeCopy,Y
                AND     #$30 ; '0'      ; left bottom attribute
                ORA     BlockIndex
                STA     BlockIndex
                INY
                LDA     AttributeCopy,Y
                AND     #$C0            ; right bottom attribute
                ORA     BlockIndex
                STA     NMI_Data,X        ; NMITable
                INX
                TYA
                SEC
                SBC     #$F
                TAY
                DEC     LoopAddr        ; ROM:C84F, ROM:C881
                BNE     @no_last
                STX     OffsetNMI_Data
                RTS
; ---------------------------------------------------------------------------

@no_last:
                INC     AttributeOffset
                BEQ     @end_screen
                INC     NTAddr+1
                JMP     @next_attr
; ---------------------------------------------------------------------------

@end_screen:
                LDA     #4
                EOR     NTAddr
                STA     NTAddr
                LDA     #$F8
                STA     AttributeOffset
                AND     NTAddr+1
                STA     NTAddr+1
                JMP     @next_attr
; End of function prepare_attributes


; =============== S U B R O U T I N E =======================================

; Copies the characteristics of the characters

load_character_data:
                JSR     sram_write_enable
                LDX     #$10
                LDY     #0
                STY     Counter

next_character:
                JSR     get_characters_num
                BCS     no_character
                INC     Counter
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                TYA
                PHA
                LDY     #0

@next_tilepack:
                JSR     copy_tilepack   ; Copies a tilepack in blocks of 5 bytes with offset correction by the value stored in Pointer
                                        ; Input: X - index for SRAM19:6700 (destination),
                                        ;        Y - index for C37A (source)
                CPY     #$14            ; Name, level, health, PP
                BNE     @next_tilepack
                TYA
                PHA                     ; store index $14 into the stack
                LDY     #1
                LDA     (Pointer),Y     ; SRAM19:7441
                LDY     #$E

loc_C56A:
                ASL     A
                BCC     loc_C592
                PLA
                TYA
                PHA
                LDY     #0

loc_C572:
                LDA     byte_C398,Y
                STA     $6700,X
                INX
                INY
                CPY     #5
                BNE     loc_C572
                PLA
                TAY
                LDA     Condition,Y
                STA     $6700,X
                INX
                LDA     Condition+1,Y
                STA     $6700,X
                INX
                LDY     #$1B
                BNE     next_byte

loc_C592:
                DEY
                DEY
                BPL     loc_C56A
                PLA
                TAY                     ; restore index $14 from the stack and copy Exp
                JSR     copy_tilepack   ; Copies a tilepack in blocks of 5 bytes with offset correction by the value stored in Pointer
                                        ; Input: X - index for SRAM19:6700 (destination),
                                        ;        Y - index for C37A (source)

next_byte:
                LDA     CharacterInfo,Y
                STA     $6700,X
                INX
                INY
                CPY     #$1E
                BNE     next_byte
                PLA
                TAY
                LDA     Counter
                CMP     #3
                BCS     loc_C5B5

no_character:
                INY
                CPY     #4
                BCC     next_character

loc_C5B5:
                LDA     #0
                STA     $6704
                STA     $6705
                STA     $6706
                SEC
                LDA     #3
                SBC     Counter
                TAX
                LDY     #0

loc_C5C9:
                JSR     get_characters_num
                BCS     loc_C5D6
                STA     $6704,X
                INX
                CPX     #3
                BCS     loc_C5DB

loc_C5D6:
                INY
                CPY     #4
                BCC     loc_C5C9

loc_C5DB:
                LDA     Counter
                ASL     A
                TAX
                LDA     #4
                STA     $6700
                STA     $670A
                CPX     #4
                BCS     loc_C5EE
                LDA     #0

loc_C5EE:
                STA     $670D
                LDA     off_C616,X
                STA     $6701
                LDA     off_C616+1,X
                STA     $6702
                LDA     $6713
                STA     $670B
                LDA     $6714
                STA     $670C
                LDA     #$9D
                STA     $670E
                LDA     #$C3
                STA     $670F     ; C39D
                JMP     sram_read_enable
; End of function load_character_data

; ---------------------------------------------------------------------------
off_C616:       .word EndTileMark, TilePack, stru_C33E, stru_C359
Condition:      .word $8629, $8622, $861B, $8614, $860D, $8606, $85FF, $85F8
                ; .word sCold, sPoison, sPuzzld, sConfsd, sAsleep, sParlzd, sStone, sFaintd

; =============== S U B R O U T I N E =======================================


get_characters_num:
                SEC
                LDA     $7408,Y         ; CurrentPlayer.PureSave.CharactersNum,Y
                BEQ     @exit
                CMP     #6

@exit:
                RTS
; End of function get_characters_num


; =============== S U B R O U T I N E =======================================

; Copies a tilepack in blocks of 5 bytes with offset correction by the value stored in Pointer
; Input: X - index for SRAM19:6700 (destination),
;        Y - index for C37A (source)

copy_tilepack:
                LDA     CharacterInfo,Y
                STA     $6700,X
                INX
                INY
                LDA     CharacterInfo,Y
                STA     $6700,X
                INX
                INY
                LDA     CharacterInfo,Y
                STA     $6700,X
                INX
                INY
                CLC
                LDA     CharacterInfo,Y
                ADC     Pointer
                STA     $6700,X
                INX
                INY
                LDA     CharacterInfo,Y
                ADC     Pointer+1
                STA     $6700,X
                INX
                INY
                RTS
; End of function copy_tilepack


; =============== S U B R O U T I N E =======================================

; Input: A -
; Output: Pointer (word) = High $74 Low $40 * A

get_sram_pointer:
    .export get_sram_pointer

                STA     Pointer+1
                LDA     #0
                LSR     Pointer+1
                ROR     A
                LSR     Pointer+1
                ROR     A
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$74 ; 't'
                STA     Pointer+1
                RTS
; End of function get_sram_pointer


; =============== S U B R O U T I N E =======================================


write_tiles:
    .export write_tiles

                JSR     sub_C6D2
                BNE     loc_C682

loc_C67F:
                JSR     loc_C6DB

loc_C682:
                CMP     #0
                BNE     loc_C67F
                INC     Row
                JMP     sub_C6D2
; End of function write_tiles


; =============== S U B R O U T I N E =======================================


sub_C68B:
    .export sub_C68B

                PHA
                JSR     wait_nmi_processed
                JSR     nt_calc         ; Calculate Name table address
                                        ; Input: CameraX, CameraY, Column, Row
                                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
                LDA     #5              ; write_horizontal
                STA     NMI_Data + NMI_DATA::NMI_ID   ; NMITable
                LDA     #1
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     NTAddr
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                LDA     NTAddr+1
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                PLA
                STA     NMI_Data + NMI_DATA::Chr      ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::Next     ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_C68B


; =============== S U B R O U T I N E =======================================


add_spaces:
    .importzp byte_70

                LDA     byte_70
                CLC
                SBC     ChrCount
                BCC     loc_C6CF
                TAY

@next_space:
                LDA     #$A0
                JSR     add_tile
                DEY
                BPL     @next_space
                LDY     OffsetNMI_Data
                LDA     NMI_Data + NMI_DATA::NumOfChr,Y ; NMITable
                BEQ     loc_C6CF
                TXA
                TAY

loc_C6CF:
                STY     OffsetNMI_Data
                RTS
; End of function add_spaces


; =============== S U B R O U T I N E =======================================


sub_C6D2:
    .export sub_C6D2, loc_C6DB

                JSR     wait_nmi_processed
                LDX     #0
                STX     OffsetNMI_Data
                BEQ     loc_C6E8

loc_C6DB:
                JSR     wait_nmi_processed
                LDX     #0
                STX     OffsetNMI_Data
                JSR     clear_area
                JSR     add_spaces

loc_C6E8:
                JSR     tiled_area
                JSR     add_spaces
                LDA     #0
                STA     NMI_Data,Y        ; save marker end of block
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags

loc_C6F9:
                JSR     get_text_row_pointer
                LDA     UnpackID        ; UnpackTable
                CMP     #1
                BNE     @end_block
                INC     Row
                INC     Row

@end_block:
                RTS
; End of function sub_C6D2


; =============== S U B R O U T I N E =======================================


print_string:
    .export print_string
    .import wait_frames

                JSR     wait_nmi_processed
                LDA     #$33
                STA     OffsetNMI_Data
                PHA
                JSR     tiled_area
                JSR     add_spaces
                STY     AttributeOffset
                PLA
                TAX
                LDA     #5
                STA     NMI_Data + NMI_DATA::NMI_ID   ; NMITable
                LDA     #1
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable

loc_C723:
                LDA     #0
                STA     NMI_Data,Y        ; NMITable
                CPX     AttributeOffset
                BCS     loc_C6F9
                LDA     #8
                STA     NMI_Data,Y        ; NMITable
                LDA     NMI_Data + NMI_DATA::NumOfChr,X ; NMITable
                STA     ChrCount
                STA     NMI_Data + NMI_DATA::NumOfChr,Y ; NMITable
                LDA     #$A0
                STA     NMI_Data + NMI_DATA::Chr,Y    ; NMITable
                CLC
                LDA     NMI_Data + NMI_DATA::PPU_Addr+1,X ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                ADC     #$20 ; ' '
                STA     NMI_Data + NMI_DATA::PPU_Addr+1,Y ; NMITable
                LDA     NMI_Data + NMI_DATA::PPU_Addr,X ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                ADC     #0
                STA     NMI_Data + NMI_DATA::PPU_Addr,Y ; NMITable
                TXA
                CLC
                ADC     #4
                TAX
                TYA
                CLC
                ADC     #5
                TAY

next_char:
                LDA     NMI_Data,X        ; copy symol from NMI records to field char
                STA     NMI_Data + NMI_DATA::Chr      ; NMITable
                CMP     #$A0
                BEQ     @print_char
                LDA     ModeSRAM
                BMI     @print_char
                EOR     #1
                STA     ModeSRAM
                LSR     A
                BCC     @print_char
                LDA     #$E
                STA     $7F1

@print_char:
                LDA     #0
                STA     NMI_Data + NMI_DATA::Next     ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                JSR     wait_nmi_processed ; print one symbol
                BIT     ModeSRAM
                BVC     next_nt_addr
                TXA
                PHA
                LDA     NMI_Data + NMI_DATA::Chr      ; NMITable
                LDX     #$28 ; '('
                CMP     #$AE
                BEQ     loc_C79F
                CMP     #$AC
                BEQ     loc_C79F
                LDX     #3

loc_C79F:
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                PLA
                TAX

next_nt_addr:
                INC     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                INX
                DEC     ChrCount
                BNE     next_char
                JMP     loc_C723
; End of function print_string


; =============== S U B R O U T I N E =======================================

; Move $A4 chars from $432-4D6 to $45B-4FF

move_chars:
    .export move_chars

                CMP     #1
                BNE     @exit
                PHA
                LDX     #$A4

@next_char:
                LDA     $432,X
                STA     $45B,X
                DEX
                BNE     @next_char
                PLA

@exit:
                RTS
; End of function move_chars


; =============== S U B R O U T I N E =======================================


sub_C7C1:
    .export sub_C7C1
    .importzp ByteCount

                LDA     #$33

loc_C7C3:
                CLC
                ADC     #$29
                DEX
                BNE     loc_C7C3
                STX     ByteCount
                TAX
                PHA
                JSR     sub_C7D4
                STA     ByteCount
                PLA
                TAX
; End of function sub_C7C1


; =============== S U B R O U T I N E =======================================


sub_C7D4:
                JSR     wait_nmi_processed
                STX     OffsetNMI_Data

loc_C7D9:
                LDA     NMI_Data,X        ; NMITable
                BEQ     loc_C7FD
                EOR     #5
                BNE     loc_C7F3
                ORA     ByteCount
                BNE     loc_C7E9
                JSR     sub_C80E

loc_C7E9:
                TXA
                CLC
                ADC     #4
                ADC     NMI_Data + NMI_DATA::NumOfChr,X ; NMITable
                TAX
                BCC     loc_C7D9

loc_C7F3:
                JSR     sub_C80E
                TXA
                CLC
                ADC     #5
                TAX
                BCC     loc_C7D9

loc_C7FD:
                STA     ByteCount
                SEC
                LDA     OffsetNMI_Data
                SBC     #$29 ; ')'
                TAX
                LDA     #$80
                STA     NMIFlags
                CPX     #$5C ; '\'
                BCS     sub_C7D4
                RTS
; End of function sub_C7D4


; =============== S U B R O U T I N E =======================================


sub_C80E:
                SEC
                LDA     NMI_Data + NMI_DATA::PPU_Addr+1,X ; NMITable
                SBC     #$20 ; ' '
                STA     NMI_Data + NMI_DATA::PPU_Addr+1,X ; NMITable
                LDA     NMI_Data + NMI_DATA::PPU_Addr,X ; NMITable
                STA     AttributeOffset
                SBC     #0
                STA     NMI_Data + NMI_DATA::PPU_Addr,X ; NMITable
                EOR     AttributeOffset
                AND     #4
                BEQ     locret_C83C
                SEC
                LDA     NMI_Data + NMI_DATA::PPU_Addr+1,X ; NMITable
                SBC     #$40 ; '@'
                STA     NMI_Data + NMI_DATA::PPU_Addr+1,X ; NMITable
                LDA     NMI_Data + NMI_DATA::PPU_Addr,X ; NMITable
                SBC     #4
                AND     #$F
                ORA     #$20 ; ' '
                STA     NMI_Data + NMI_DATA::PPU_Addr,X ; NMITable

locret_C83C:
                RTS
; End of function sub_C80E


; =============== S U B R O U T I N E =======================================


tiled_area:
    .importzp byte_71

                JSR     nt_calc         ; Calculate Name table address
                                        ; Input: CameraX, CameraY, Column, Row
                                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
                LDA     byte_71
                STA     ByteCount
                LDX     OffsetNMI_Data
                LDY     #0
                STY     ChrCount
                TYA
                PHA
                JSR     write_rows_header

@next_byte:
                DEC     ByteCount
                BPL     @black_tile
                LDA     (PointerTilePack),Y ; 0x149EC4 + Y = 0, 4 = $20, $C8
                                        ; SRAM19:6095, 91D9
                JSR     get_type        ; returns a tile or function ID:
                                        ; input: A - byte, Y - current block index
                                        ; output: BlockIndex - next block index
                                        ; A - tile ID or function ID (0 - 9)
                                        ; TypeTable
                BCS     @tile
                LDY     #$4F ; 'O'
                STY     LoopAddr        ; ROM:C84F, ROM:C881
                LDY     #$C8
                STY     LoopAddr+1      ; ROM:C84F, ROM:C881
                JMP     jmp_handler     ; UnpackTable
; ---------------------------------------------------------------------------

@black_tile:                            ; CODE XREF: tiled_area+14↑j
                LDA     #$A0

@tile:                                  ; CODE XREF: tiled_area+1B↑j
                JSR     add_tile
                JMP     @next_byte
; End of function tiled_area


; =============== S U B R O U T I N E =======================================


clear_area:
                DEC     Row
                JSR     nt_calc         ; Calculate Name table address
                                        ; Input: CameraX, CameraY, Column, Row
                                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
                LDA     byte_71
                STA     ByteCount
                LDX     OffsetNMI_Data
                LDY     #0
                STY     ChrCount
                TYA
                PHA
                JSR     write_rows_header

next_byte1:
                DEC     ByteCount
                BPL     @black_tile
                LDA     (PointerTilePack),Y
                JSR     get_type_ex     ; returns a tile or function ID:
                                        ; input: A - byte, Y - current block index
                                        ; output: BlockIndex - next block index
                                        ; A - tile ID or function ID (0 - 9)
                BCS     @save_tile
                ORA     #$80
                LDY     #$81
                STY     LoopAddr        ; ROM:C84F, ROM:C881
                LDY     #$C8
                STY     LoopAddr+1      ; ROM:C84F, ROM:C881
                JMP     jmp_handler     ; UnpackTable
; ---------------------------------------------------------------------------

@black_tile:
                LDA     #$A0

@save_tile:
                JSR     add_tile
                JMP     next_byte1
; ---------------------------------------------------------------------------

jmp_handler:
                STA     UnpackID        ; UnpackTable
                ASL     A
                TAY
                LDA     UnpackTable+1,Y
                PHA
                LDA     UnpackTable,Y
                PHA
                RTS
; End of function clear_area

; ---------------------------------------------------------------------------
UnpackTable:    .word restore_pointer-1, restore_pointer-1, restore_pointer-1
                .word restore_pointer-1, set_tile_pos-1, check_pointer-1
                .word fill_tile-1, sub_C950-1, set_pointer-1, get_block_index-1

; =============== S U B R O U T I N E =======================================


set_pointer:
                LDY     BlockIndex

set_new_pointer:
                LDA     (PointerTilePack),Y
                PHA
                INY
                LDA     (PointerTilePack),Y
                STA     PointerTilePack+1
                PLA
                STA     PointerTilePack
                LDY     #0
                JMP     (LoopAddr)      ; ROM:C84F, ROM:C881
; End of function set_pointer


; =============== S U B R O U T I N E =======================================


check_pointer:
                LDY     BlockIndex
                BEQ     restore_pointer
                LDA     PointerTilePack
                PHA
                LDA     PointerTilePack+1
                PHA
                TYA
                PHA
                BNE     set_new_pointer

restore_pointer:
                PLA
                BEQ     @end_tile_pack
                TAY
                INY
                INY
                PLA
                STA     PointerTilePack+1
                PLA
                STA     PointerTilePack
                JMP     (LoopAddr)      ; ROM:C84F, ROM:C881
; ---------------------------------------------------------------------------

@end_tile_pack:
                LDY     OffsetNMI_Data
                LDA     NMI_Data + NMI_DATA::NumOfChr,Y ; NMITable
                BEQ     @first
                TXA
                TAY

@first:
                LDA     UnpackID        ; UnpackTable
                BPL     @no_tile
                INC     Row
                RTS
; ---------------------------------------------------------------------------

@no_tile:
                LDA     BlockIndex
                JSR     get_tile_pointer
                LDA     UnpackID        ; UnpackTable
                RTS
; End of function check_pointer


; =============== S U B R O U T I N E =======================================


set_tile_pos:
                LDY     BlockIndex
                LDA     (PointerTilePack),Y ; word74 = 0x149EC4 + Y = 1 = $D
                STA     Column
                INY
                LDA     (PointerTilePack),Y ; word74 = 0x149EC4 + Y = 2 = $B
                STA     Row
                INY
                STY     BlockIndex      ; Y = 3
                BCC     loc_C91B
                DEC     Row

loc_C91B:
                LDY     OffsetNMI_Data
                LDA     NMI_Data + NMI_DATA::NumOfChr,Y ; NMITable
                BNE     loc_C924
                LDX     OffsetNMI_Data

loc_C924:
                JSR     nt_calc         ; Calculate Name table address
                                        ; Input: CameraX, CameraY, Column, Row
                                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
                JSR     write_rows_header
                LDY     BlockIndex
                JMP     (LoopAddr)      ; ROM:C84F, ROM:C881
; End of function set_tile_pos


; =============== S U B R O U T I N E =======================================


fill_tile:
                LDY     BlockIndex
                LDA     (PointerTilePack),Y
                BCC     @save_tile_id
                LDA     #$A0

@save_tile_id:
                STA     UnpackID        ; UnpackTable
                INY
                LDA     (PointerTilePack),Y
                INY
                STY     BlockIndex
                TAY

@next_tile:
                DEY
                BMI     @end
                LDA     UnpackID        ; UnpackTable
                JSR     add_tile
                JMP     @next_tile
; ---------------------------------------------------------------------------

@end:
                LDY     BlockIndex
                JMP     (LoopAddr)      ; ROM:C84F, ROM:C881
; End of function fill_tile


; =============== S U B R O U T I N E =======================================


sub_C950:
    .importzp pTileID, TilepackMode, TilesCount, AddrForJmp

                LDY     BlockIndex
                LDA     (PointerTilePack),Y
                STA     pTileID
                INY
                LDA     (PointerTilePack),Y
                STA     pTileID+1
                INY
                LDA     (PointerTilePack),Y
                STA     TilepackMode
                INY
                LDA     (PointerTilePack),Y
                STA     TilesCount
                INY
                TYA
                PHA
                LDY     TilepackMode
                BEQ     @mode0
                LDA     #0
                STA     Pointer
                STA     Pointer+1
                STA     AddrForJmp
                DEY

@next_byte:
                LDA     (pTileID),Y
                STA     Pointer,Y
                DEY
                BPL     @next_byte
                TXA
                PHA
                JSR     num2str         ; convert number to string (tile)
                                        ; Input: AddrForJmp Pointer+1 Pointer - bytes of number
                                        ; Output: $68-6F - string
                PLA
                TAX
                LDA     TilesCount
                BNE     @string_size
                SEC
                LDA     #8
                SBC     AddrForJmp+1
                STA     TilesCount
                LDA     AddrForJmp+1
                BPL     @tile_offset

@string_size:
                SEC
                LDA     #8
                SBC     TilesCount

@tile_offset:
                CLC
                ADC     #$68
                STA     pTileID
                LDA     #0
                ADC     #0
                STA     pTileID+1

@mode0:
                LDY     #0

loc_C9A5:
                LDA     UnpackID        ; UnpackTable
                BMI     loc_C9B2
                LDA     (pTileID),Y
                JSR     get_type        ; returns a tile or function ID:
                                        ; input: A - byte, Y - current block index
                                        ; output: BlockIndex - next block index
                                        ; A - tile ID or function ID (0 - 9)
                                        ; TypeTable
                BCS     tile
                BCC     loc_C9C0

loc_C9B2:
                LDA     (pTileID),Y
                JSR     get_type_ex     ; returns a tile or function ID:
                                        ; input: A - byte, Y - current block index
                                        ; output: BlockIndex - next block index
                                        ; A - tile ID or function ID (0 - 9)
                BCS     tile
                BCC     loc_C9C0

loc_C9BB:
                LDA     #$A0
                JSR     add_tile

loc_C9C0:
                DEC     TilesCount
                BPL     loc_C9BB
                BMI     loc_C9CD

tile:
                JSR     add_tile
                DEC     TilesCount
                BNE     loc_C9A5

loc_C9CD:
                PLA
                TAY
                JMP     (LoopAddr)      ; ROM:C84F, ROM:C881
; End of function sub_C950


; =============== S U B R O U T I N E =======================================


get_block_index:
                LDY     BlockIndex
                JMP     (LoopAddr)      ; ROM:C84F, ROM:C881
; End of function get_block_index


; =============== S U B R O U T I N E =======================================

; Calculate Name table address
; Input: CameraX, CameraY, Column, Row
; Output: NTAddr address for screen tile position (Column, Row + 1)

nt_calc:
    .export nt_calc
    .importzp CntrlPPU, CameraX, CameraY

                LDA     CntrlPPU        ; PPU_CTRL
                LSR     A
                LSR     A               ; check work with Nametables $2000,$2400 or $2800, $2C00
                LDA     CameraY
                ROR     A
                CLC
                ADC     #8
                STA     NTAddr+1
                LDA     Row
                ADC     #1
                ASL     A
                ASL     A
                CLC
                ADC     NTAddr+1
                BVS     loc_C9F1
                SEC
                SBC     #8

loc_C9F1:
                ASL     A
                AND     #$F8
                STA     NTAddr+1
                LDA     #2
                ROL     A
                ASL     A
                ASL     NTAddr+1
                ROL     A
                ASL     NTAddr+1
                ROL     A
                STA     NTAddr
                LDA     CntrlPPU        ; PPU_CTRL
                LSR     A
                LDA     CameraX
                ROR     A
                LSR     A
                LSR     A
                CLC
                ADC     Column

loc_CA0D:
                TAY
                AND     #$20 ; ' '
                LSR     A
                LSR     A
                LSR     A
                ADC     NTAddr
                STA     NTAddr
                TYA

loc_CA18:
                AND     #$1F
                ADC     NTAddr+1
                STA     NTAddr+1
                RTS
; End of function nt_calc


; =============== S U B R O U T I N E =======================================


add_tile:
                STA     NMI_Data,X        ; NMITable
                INX
                TXA

loc_CA24:
                LDX     OffsetNMI_Data
                INC     NMI_Data + NMI_DATA::NumOfChr,X ; NMITable
                TAX
                INC     ChrCount
                INC     AttributeOffset
                BEQ     loc_CA31
                RTS
; ---------------------------------------------------------------------------

loc_CA31:
                LDA     NTAddr+1
                AND     #$E0
                STA     NTAddr+1
                LDA     NTAddr
                EOR     #4
                STA     NTAddr
; End of function add_tile


; =============== S U B R O U T I N E =======================================


write_rows_header:
                STX     OffsetNMI_Data
                LDA     #5              ; write_horizontal F916 function ID

loc_CA41:                               ; NMITable
                STA     NMI_Data,X
                INX
                LDA     #0
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     NTAddr
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     NTAddr+1
                STA     NMI_Data,X        ; NMITable
                INX
                ORA     #$E0
                STA     AttributeOffset
                RTS
; End of function write_rows_header


; =============== S U B R O U T I N E =======================================

; returns a tile or function ID:
; input: A - byte, Y - current block index
; output: BlockIndex - next block index
; A - tile ID or function ID (0 - 9)
; TypeTable

get_type:
                INY
                STY     BlockIndex      ; index = 0, 4, 5, 6, 7, ..., B
                CMP     #$40
                BCS     exit
                TAY
                LDA     TypeTable,Y
                LDY     BlockIndex
                CMP     #$80
                BCS     exit
                CMP     #$20 
                BCS     loc_CA79
                CMP     #$A
                BCS     @no_procedure
                RTS
; ---------------------------------------------------------------------------

@no_procedure:
                ORA     #$D0
                RTS
; ---------------------------------------------------------------------------

loc_CA79:
                ORA     #$80

exit:
                RTS
; End of function get_type


; =============== S U B R O U T I N E =======================================

; returns a tile or function ID:
; input: A - byte, Y - current block index
; output: BlockIndex - next block index
; A - tile ID or function ID (0 - 9)

get_type_ex:
                INY
                STY     BlockIndex
                CMP     #$40
                BCS     @black_tile
                TAY
                LDA     TypeTable,Y
                LDY     BlockIndex
                CMP     #$80
                BCS     @line
                CMP     #$20
                BCS     @arrow
                CMP     #$A
                BCS     @frame
                RTS
; ---------------------------------------------------------------------------

@frame:
                ORA     #$D0
                RTS
; ---------------------------------------------------------------------------

@arrow:
                LDA     #$FF
                RTS
; ---------------------------------------------------------------------------

@line:
                LDA     #$FE
                RTS
; ---------------------------------------------------------------------------

@black_tile:
                LDA     #$A0
                RTS
; End of function get_type_ex


; =============== S U B R O U T I N E =======================================


text2stack:
    .export text2stack
    .importzp byte_73, CHRText

                LDA     byte_73
                BPL     loc_CAA9
                STA     PointerTilePack+1
                RTS
; ---------------------------------------------------------------------------

loc_CAA9:
                CMP     #$7F
                BCS     loc_CAE1
                TAX
                LDA     PointerTilePack
                ASL     PointerTilePack
                ROL     byte_73
                ADC     PointerTilePack
                STA     PointerTilePack
                TXA
                ADC     byte_73
                ADC     #$80
                STA     PointerTilePack+1
                LDA     #$7F
                STA     byte_73
                LDA     BankTable + BANK_TABLE::CPU_8K_8000
                PHA
                LDA     #$18
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDY     #0
                LDA     (PointerTilePack),Y
                STA     CHRText + CHR_TXT_OFFSET::PPU_LOW
                INY
                LDA     (PointerTilePack),Y
                STA     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
                INY
                LDA     (PointerTilePack),Y
                STA     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
                PLA
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode

loc_CAE1:
                JSR     wait_nmi_processed
                LDA     #$A             ; chr_text2stack
                STA     NMI_Data + NMI_DATA::NMI_ID   ; NMITable
                LDA     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
                LSR     A
                LDA     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
                ROR     A
                SEC
                ROR     A
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
                AND     #3
                ORA     #8
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                LDA     CHRText + CHR_TXT_OFFSET::PPU_LOW
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::Chr      ; NMITable
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                LDA     #$10
                STA     PointerTilePack ; stack $110
                LDA     #1
                STA     PointerTilePack+1
                JMP     wait_nmi_processed
; End of function text2stack


; =============== S U B R O U T I N E =======================================


get_text_row_pointer:
                LDA     PointerTilePack+1
                BPL     loc_CB21
                STA     byte_73
                RTS
; ---------------------------------------------------------------------------

loc_CB21:
                SEC
                LDA     PointerTilePack
                SBC     #$10
                CLC
                ADC     CHRText + CHR_TXT_OFFSET::PPU_LOW
                STA     CHRText + CHR_TXT_OFFSET::PPU_LOW
                LDA     #0
                ADC     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
                STA     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
                LDA     #0
                ADC     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
                STA     CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
                RTS
; End of function get_text_row_pointer


; =============== S U B R O U T I N E =======================================


get_tile_pointer:
                CLC
                ADC     PointerTilePack
                STA     PointerTilePack
                LDA     #0
                ADC     PointerTilePack+1
                STA     PointerTilePack+1
                RTS
; End of function get_tile_pointer


; =============== S U B R O U T I N E =======================================


main:
    .export main
    .import game_intro, routine_selector, clear_oam_sprite, sub_FD28
    .import sub_13A1C6, sub_13A123, sub_13A82F, sub_13A000, sub_13A178, sub_13AB53
    .import sub_149516, sub_149779, sub_1497A3
    .importzp ButtonPressed0, Gamepad0Buttons
    .importzp byte_D, byte_1F, byte_20, byte_21, byte_22, byte_23, byte_24, byte_25
    .importzp byte_48

                JSR     sram_read_enable
                LDA     #SRAM_WRITE_DISABLE|SRAM_ENABLE
                STA     ModeSRAM
                JSR     bank14_8000
                JSR     game_intro
                LDA     #SRAM_WRITE_ENABLE|SRAM_DISABLE
                STA     ModeSRAM

new_place:
                JSR     bank13_A000
                JSR     routine_selector ; execute a function from the table BANK13:BCFD

loc_CB5D:
                JSR     load_character_data ; Copies the characteristics of the characters
                JSR     sub_CEFC
                LDA     #0
                STA     byte_24
                LDA     $7406           ; CurrentPlayer.PureSave.GlobalY
                AND     #$F
                EOR     #$84
                STA     byte_D

draw:
                JSR     clear_oam_sprite
                JSR     draw_screen     ; load room

loc_CB76:
                JSR     sub_DE99
                JSR     sub_EEF0
                LDA     byte_25
                BNE     loc_CB91
                LDA     ButtonPressed0
                AND     #$70
                BEQ     loc_CB8F
                JSR     sub_CC9D
                AND     #8
                BEQ     loc_CB8F
                LDA     #1

loc_CB8F:
                STA     byte_1F

loc_CB91:
                JSR     wait_nmi_processed
                LDA     byte_20
                BNE     new_place
                JSR     sub_DD01
                JSR     sub_DFDA
                JSR     sub_CC2B        ; draw screen
                LDA     byte_21
                BEQ     loc_CBAD
                JSR     bank13_A000
                JSR     sub_13A1C6
                BCC     loc_CBEB

loc_CBAD:
                JSR     bank13_A000
                LDA     #0
                LDY     Gamepad0Buttons
                STA     Gamepad0Buttons
                LDA     byte_22
                ORA     byte_23
                ORA     byte_21
                ORA     byte_20
                BNE     loc_CBEB
                TYA
                AND     #$F0
                BMI     loc_CBE2
                BNE     loc_CBCD
                JSR     sub_13A123
                JMP     loc_CBE5
; ---------------------------------------------------------------------------

loc_CBCD:
                JSR     sub_CC9D
                AND     #$A0
                BEQ     loc_CBE5
                BMI     loc_CBDC
                JSR     sub_13A82F
                JMP     loc_CBE5
; ---------------------------------------------------------------------------

loc_CBDC:
                JSR     sub_13A000
                JMP     loc_CBE5
; ---------------------------------------------------------------------------

loc_CBE2:
                JSR     sub_13A178

loc_CBE5:
                JSR     bank14_8000
                JSR     sub_149516

loc_CBEB:
                LDA     byte_48
                BEQ     loc_CC17
                CMP     #$A2
                BEQ     loc_CC1A
                JSR     wait_nmi_processed
                LDA     apu_78C
                PHA
                JSR     start_battle
                PLA
                BCS     loc_CC14
                JSR     sub_FD28
                LDA     byte_21
                BEQ     loc_CC11
                JSR     bank13_A000
                JSR     sub_13AB53
                LDA     byte_20
                BNE     loc_CC14

loc_CC11:
                JMP     draw
; ---------------------------------------------------------------------------

loc_CC14:
                JMP     loc_CB5D
; ---------------------------------------------------------------------------

loc_CC17:
                JMP     loc_CB76
; ---------------------------------------------------------------------------

loc_CC1A:
                JSR     bank14_8000
                JSR     sub_149779
                JSR     start_battle
                BCS     loc_CC14
                JSR     bank14_8000
                JMP     sub_1497A3
; End of function main


; =============== S U B R O U T I N E =======================================


sub_CC2B:
    .importzp OtherNMIFlags, FlagClearOAM300, byte_A0, byte_D5

                LDA     byte_1F
                CMP     #7
                BCS     loc_CC5D
                LDA     #$10
                STA     NMIFlags
                JSR     sub_D05E
                JSR     sub_D0B1

@wait_location_draw:
                LDA     NMIFlags
                BNE     @wait_location_draw

@wait_characters_draw:
                LDA     OtherNMIFlags
                CMP     #9
                BCS     @wait_characters_draw
                SEC
                ROR     FlagClearOAM300
                JSR     sub_E065
                ASL     FlagClearOAM300
                JSR     sub_D232
                LDA     #0
                STA     NMI_Data,X        ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                BNE     loc_CC83

loc_CC5D:
                JSR     sub_D05E
                JSR     sub_D0B1
                JSR     sub_D232
                LDA     #0
                STA     NMI_Data,X        ; NMITable
                STA     OffsetNMI_Data
                LDA     #$10
                STA     NMIFlags
                LDA     byte_1F
                CMP     #$F
                BCS     loc_CC83

loc_CC77:
                LDA     NMIFlags
                BNE     loc_CC77
                SEC
                ROR     FlagClearOAM300
                JSR     sub_E065
                ASL     FlagClearOAM300

loc_CC83:
                LDA     byte_A0
                LSR     A
                BCC     loc_CC96
                JSR     sub_D21C
                LDA     #0
                STA     NMI_Data,X        ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags

loc_CC96:
                BIT     byte_A0
                BMI     locret_CC9C
                INC     byte_D5

locret_CC9C:
                RTS
; End of function sub_CC2B


; =============== S U B R O U T I N E =======================================


sub_CC9D:
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAX
                LDY     byte_CCA9,X
                LDA     $743C,Y         ; CurrentPlayer.PureSave.field_3C,Y
                RTS
; End of function sub_CC9D

; ---------------------------------------------------------------------------
byte_CCA9:      .byte 0, 1, 2, 1, 0, 0, 0, 0

; =============== S U B R O U T I N E =======================================


sub_CCB1:
    .import wait_press_button
    .importzp MaskPPU

                LDA     #$FF
                JSR     sub_FD28
                JSR     sub_DA16
                LDA     #2
                STA     apu_7F0
                LDA     #1
                ORA     MaskPPU
                STA     MaskPPU
                LDX     #8

loc_CCC6:
                JSR     sub_EEE4
                DEX
                BNE     loc_CCC6
                LDA     #$1E
                AND     MaskPPU
                STA     MaskPPU
                JSR     wait_press_button
                JMP     loc_CD79
; ---------------------------------------------------------------------------

sub_CCD8:
    .export sub_CCD8
    .import sub_13BBD4
    .importzp byte_F, byte_A0, ButtonPressed0, byte_22, byte_25

    LDA $78C            ; apu_78C
    PHA
    LDA #$FF
    STA byte_F
    JSR sub_FD28
    JSR sub_C3F4
    LDA #1
    STA $7F4            ; byte_7F4
    JSR sub_CD9D
    LDX #5

loc_CCF0:
    JSR sub_CD8B
    LDA byte_A0
    BMI sub_CCB1
    LDA ButtonPressed0
    AND #$F
    TAX
    LDA $EBDD,X         ; byte_EBDD,X
    BMI loc_CD0C
    ORA #$40
    TAX
    EOR byte_22
    CMP #4
    BEQ loc_CD0C
    STX byte_22

loc_CD0C:
    LDX byte_25
    INX
    CPX #$2D
    BCC loc_CCF0
    JSR wait_nmi_processed
    LDA #$20

loc_CD18:
    TAX
    ASL SpriteTable + ANIM_SPRITE::field_4,X
    ASL SpriteTable + ANIM_SPRITE::field_5,X
    SEC
    SBC #8
    BNE loc_CD18
    LDA #$A

loc_CD26:
    PHA
    JSR     sub_CC2B
    JSR     wait_nmi_processed
    PLA
    SEC
    SBC     #1
    BNE     loc_CD26
    LDA     #1
    STA     $7F3
    LDA     #$22 ; '"'
    JSR     one_color_palettes_save
    JSR     bank13_A000
    JSR     sram_write_enable
    JSR     sub_13BBD4
    JSR     sub_D9FA
    PLA
    LDA     $7404           ; CurrentGame + GAME_SAVE::PureSave.GlobalX
    TAX
    AND     #$3F ; '?'
    PHA
    TXA
    AND     #$C0
    STA     $7404           ; CurrentGame + GAME_SAVE::PureSave.GlobalX
    JSR     sub_D8C9
    LDX     #$14
    JSR     wait_frames     ; wait for a few frames
                            ; input: X - number of frames
    JSR     load_character_data ; Copies the characteristics of the characters
    JSR     sub_CEFC
    JSR     clear_oam_sprite
    JSR     draw_screen
    JSR     sub_CD9D
    LDX     #$2C ; ','

loc_CD70:
                JSR     sub_CD8B
                LDX     byte_25
                DEX
                DEX
                BPL     loc_CD70

loc_CD79:
                LDX     #0
                STX     byte_22
                STX     Gamepad0Buttons
                STX     byte_F
                JSR     sub_CDAF
                PLA
                JSR     sub_FD28
                JMP     loc_CB76
; End of function sub_CCB1


; =============== S U B R O U T I N E =======================================


sub_CD8B:
                JSR     sub_CDAF
                JSR     sub_DE99
                JSR     wait_nmi_processed
                JSR     sub_DD01
                JSR     sub_DFDA
                JMP     sub_CC2B
; End of function sub_CD8B


; =============== S U B R O U T I N E =======================================


sub_CD9D:
                JSR     sram_write_enable
                LDA     $7406           ; CurrentGame + GAME_SAVE::PureSave.GlobalY
                AND     #$F
                STA     $6799
                ORA     #$40 ; '@'
                STA     byte_22
                JMP     sram_read_enable
; End of function sub_CD9D


; =============== S U B R O U T I N E =======================================


sub_CDAF:
    .export sub_CDAF

                STX     byte_25
                LDA     byte_CDB7,X
                STA     byte_1F
                RTS
; End of function sub_CDAF

; ---------------------------------------------------------------------------
byte_CDB7:      .byte 0, 0, 0, 0, 0
                .byte 1, 1, 1, 1, 1
                .byte 2, 2, 2, 2, 3
                .byte 3, 3, 3, 3, 3
                .byte 5, 5, 5, 5, 5
                .byte 5, 5, 5, 7, 7
                .byte 7, 7, 7, 7, 7
                .byte 7, 7, 7, 7, 7
                .byte $F, $F, $F, $F, $F

; =============== S U B R O U T I N E =======================================


sub_CDE4:
    .export sub_CDE4

                PHA
                LDA     apu_78C
                TAX
                PLA
                JSR     sub_FD28
                LDA     #0
                STA     Gamepad0Buttons

loc_CDF1:
                BIT     Gamepad0Buttons
                BVS     loc_CDFA
                LDA     apu_78C
                BNE     loc_CDF1

loc_CDFA:
                LDA     #0
                STA     Gamepad0Buttons
                TXA
                JMP     sub_FD28
; End of function sub_CDE4


; =============== S U B R O U T I N E =======================================

; copy chr banks $5E, $5F (wall??) in SRAM $6C00-$73FF

chr_5E_5F_to_sram:
    .export chr_5E_5F_to_sram, loc_CE08

                LDY     #$5E
                LDA     #0
                LDX     #$6C            ; 6C00

loc_CE08:
                STA     Pointer
                STX     Pointer+1
                JSR     wait_nmi_processed
                TYA
                LDX     #1
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #9              ; read_ppu function ID
                LDX     #$40 ; '@'      ; record size
                STA     NMI_Data + NMI_DATA::NMI_ID   ; NMITable
                STX     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     #0
                LDX     #$18
                STX     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     #0
                STA     $444        ; pNMI_Data ($400) + NMI_Data header size (4) + record size ($40)
                LDX     #$20 ; ' '

@next_block:
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                JSR     wait_nmi_processed
                JSR     sram_write_enable
                LDY     #0

@next_chr:
                LDA     NMI_Data + NMI_DATA::Chr,Y    ; NMITable
                STA     (Pointer),Y
                INY
                CPY     #$40 ; '@'
                BCC     @next_chr
                JSR     sram_read_enable
                CLC
                TYA
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                CLC
                TYA
                ADC     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     #0
                ADC     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                DEX
                BNE     @next_block
                RTS
; End of function chr_5E_5F_to_sram


; =============== S U B R O U T I N E =======================================


sub_CE6D:
    .export sub_CE6D
    .importzp pDist

                LDA     #0
                LDX     #0
                STA     Pointer
                STX     Pointer+1
                LDA     #0
                LDX     #$20
                STA     pTileID
                STX     pTileID+1
                LDA     #$10
                STA     pDist

loc_CE81:
                LDA     Pointer
                LDX     Pointer+1
                LDY     #9              ; read_ppu
                JSR     sub_CEB2        ; Input: XA - PPU address (X - high byte, A - low byte)
                                        ;         Y - NMI Function ID
                LDA     pTileID
                LDX     pTileID+1
                LDY     #5              ; write_horizontal
                JSR     sub_CEB2        ; Input: XA - PPU address (X - high byte, A - low byte)
                                        ;         Y - NMI Function ID
                CLC
                LDA     #$40 ; '@'
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                CLC
                LDA     #$40 ; '@'
                ADC     pTileID
                STA     pTileID
                LDA     #0
                ADC     pTileID+1
                STA     pTileID+1
                DEC     pDist
                BNE     loc_CE81
                RTS
; End of function sub_CE6D


; =============== S U B R O U T I N E =======================================

; Input: XA - PPU address (X - high byte, A - low byte)
;         Y - NMI Function ID

sub_CEB2:
                PHA
                JSR     wait_nmi_processed
                PLA
                STA     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                STX     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                STY     NMI_Data + NMI_DATA::NMI_ID   ; NMITable
                LDA     #$40 ; '@'
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     #0
                STA     $444
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_CEB2


; =============== S U B R O U T I N E =======================================


bank13_A000:
    .export bank13_A000

                LDA     #$13
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank13_A000           ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


bank17_A000:
                LDA     #$17
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank17_A000           ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


bank14_8000:
    .export bank14_8000

                LDA     #$14
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank14_8000           ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================

; set 6 memory banks for PPU
; pPPUTable = XA address (X - high and A - low byte)
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

set_ppu_banks:
    .export set_ppu_banks

                STA     Pointer
                STX     Pointer+1
                LDX     #CHR_1K_XC00    ; Select 1K CHR ROM page at 0C00h, 0800h, 0400h, 0000h,
                                        ; and 2K CHR ROM page at 1800h, 1000h in PPU space
                LDY     #5

@next_chr_bank:
                LDA     (Pointer),Y
                BEQ     @no_chr_bank
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode

@no_chr_bank:
                DEX
                DEY
                BPL     @next_chr_bank
                RTS
; End of function set_ppu_banks


; =============== S U B R O U T I N E =======================================


sub_CEFC:
    .importzp p4TileID, MapSectorID, chr_bank_color_0C, color_0E, BlockCount
    .importzp HighGlobalY, HighGlobalY_plus1_carry, LowGlobalYC0, MaskORA
    .importzp HighGlobalX, HighGlobalX_plus2, LowGlobalXC0, LowGlobalXC0_0
    .importzp Tile4Count, ShiftCameraY
    .importzp byte_AE, byte_AF

                JSR     sub_D674
                LDA     #$14            ; BANK14:8000
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     p4TileID+1
                LDA     MapSectorID
                ASL     A
                ASL     A
                ASL     A
                ROL     p4TileID+1
                ASL     A
                ROL     p4TileID+1
                ADC     #0
                STA     p4TileID
                LDA     p4TileID+1
                ADC     #$90
                STA     p4TileID+1
                JSR     wait_nmi_processed
                LDY     #$F

loc_CF23:
                LDA     (p4TileID),Y    ; BANK14:91EF
                BPL     loc_CF2A
                JSR     get_save_field

loc_CF2A:
                STA     PalNMIBG,Y
                DEY
                BPL     loc_CF23
                LDY     #$F

@next_color:
                LDA     SpritePallete,Y
                STA     PalNMISpr,Y
                DEY
                BPL     @next_color
                LDX     PalNMIBG+$C
                LDY     PalNMIBG+$E
                STX     chr_bank_color_0C ; $1A
                STY     color_0E        ; $40
                LDX     #BLACK
                LDY     #WHITE

loc_CF49:
                STX     PalNMIBG+$C
                STY     PalNMIBG+$E
                JSR     load_map_tile
                LDA     LowGlobalYC0
                AND     #$C0
                STA     MaskORA
                LDA     HighGlobalY
                STA     HighGlobalY_plus1_carry
                LDA     #$40
                STA     byte_AE
                LDA     #0
                STA     byte_AF
                LDA     #$10
                STA     BlockCount

@next_block:
                SEC
                LDA     LowGlobalXC0
                AND     #$C0
                SBC     #$40
                STA     LowGlobalXC0_0
                LDA     HighGlobalX
                SBC     #0
                STA     HighGlobalX_plus2
                LDA     #$13
                STA     Tile4Count
                JSR     load_map
                DEC     BlockCount
                BEQ     @last_block
                CLC
                LDA     MaskORA
                ADC     #$40
                STA     MaskORA
                LDA     HighGlobalY_plus1_carry
                ADC     #0
                STA     HighGlobalY_plus1_carry
                JMP     @next_block
; ---------------------------------------------------------------------------

@last_block:
                JSR     get_shift_camerax ; ShiftCameraX = ((field_5 & 7)(field4_bits7_6 & C0)) >> 2
                LDY     #0
                STY     ShiftCameraY
                JMP     sub_DD72
; End of function sub_CEFC

; ---------------------------------------------------------------------------
SpritePallete:  .byte BLACK, BLACK, DARK_GRAY, WHITE; PALETTE0
                .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE; PALETTE1
                .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE; PALETTE2
                .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE; PALETTE3

; =============== S U B R O U T I N E =======================================


draw_screen:
    .export draw_screen
    .importzp ShiftCameraX, MaskCntrlPPU, ScreenY, Add_Off_pAttr

                JSR     wait_nmi_processed
                CLC
                LDA     ShiftCameraX    ; start X - for the game screen
                ORA     #8
                TAX
                LDY     ShiftCameraY
                LDA     CntrlPPU        ; PPU_CTRL
                AND     #$FC
                ORA     MaskCntrlPPU
                STA     CntrlPPU        ; PPU_CTRL
                STX     CameraX         ; $18
                STY     CameraY
                STY     ScreenY
                CLC
                LDA     LowGlobalYC0
                AND     #$C0
                ADC     #$80
                STA     MaskORA
                LDA     HighGlobalY
                ADC     #3
                STA     HighGlobalY_plus1_carry
                LDA     #$F
                STA     BlockCount

next_block:
                CLC
                LDA     ScreenY
                ADC     #$F0
                BCS     loc_CFE1
                ADC     #$F0

loc_CFE1:
                STA     ScreenY
                LDA     LowGlobalXC0
                AND     #$C0
                STA     LowGlobalXC0_0
                LDA     HighGlobalX
                STA     HighGlobalX_plus2
                LDX     BlockCount
                LDA     locret_D04E,X   ; get value from the table D04F
                EOR     ScreenY
                AND     #$10
                BNE     loc_CFFB
                LDA     locret_D04E,X

loc_CFFB:
                STA     Add_Off_pAttr
                JSR     wait_nmi_processed
                JSR     write_tile_attr
                LDA     #0
                STA     NMI_Data,X        ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                DEC     BlockCount
                BEQ     last_block
                LDA     BlockCount
                ASL     A
                TAX
                JSR     wait_nmi_flags_reset
                LDA     #LIGHT_REDVIOLET
                STA     PalSpr+$E,X
                SEC
                LDA     MaskORA

loc_D021:
                SBC     #$40
                STA     MaskORA
                LDA     HighGlobalY_plus1_carry
                SBC     #0
                STA     HighGlobalY_plus1_carry
                JMP     next_block
; ---------------------------------------------------------------------------

last_block:
                JSR     wait_nmi_processed
                JSR     load_map_tile
                LDA     #4              ; load_palettes ID
                STA     NMI_Data + NMI_DATA::NMI_ID   ; NMITable

loc_D039:
                LDA     #0
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                LDA     #$88
                STA     byte_A0
                LDA     #0
                STA     IRQCount
                STA     Gamepad0Buttons

locret_D04E:
                RTS
; End of function draw_screen

; ---------------------------------------------------------------------------
                .byte $F0, $10, $10, $10, $10, $10, $10, $10, $10, $10
                .byte $10, $10, $10, $10, $20

; =============== S U B R O U T I N E =======================================


sub_D05E:
                LDA     byte_A0
                BMI     locret_D0B0
                ASL     A
                ASL     A
                ASL     A
                TAX
                CLC
                LDA     byte_EBED,X
                ADC     LowGlobalXC0
                STA     LowGlobalXC0
                LDA     byte_EBEE,X
                ADC     HighGlobalX
                STA     HighGlobalX
                CLC
                LDA     byte_EBEF,X
                ADC     LowGlobalYC0
                STA     LowGlobalYC0
                LDA     byte_EBF0,X
                ADC     HighGlobalY
                STA     HighGlobalY
                CLC
                LDA     byte_EBEF,X
                BEQ     get_shift_camerax ; ShiftCameraX = ((field_5 & 7)(field4_bits7_6 & C0)) >> 2
                BMI     loc_D094
                LDA     ShiftCameraY
                ADC     #$20 ; ' '
                BCC     loc_D09A
                BCS     loc_D09C

loc_D094:
                LDA     ShiftCameraY
                ADC     #$F0
                BCS     loc_D09C

loc_D09A:
                ADC     #$F0

loc_D09C:
                STA     ShiftCameraY
; End of function sub_D05E


; =============== S U B R O U T I N E =======================================

; ShiftCameraX = ((field_5 & 7)(field4_bits7_6 & C0)) >> 2

get_shift_camerax:
                LDA     HighGlobalX
                AND     #7
                STA     MaskCntrlPPU
                LDA     LowGlobalXC0
                AND     #$C0
                LSR     MaskCntrlPPU
                ROR     A
                LSR     MaskCntrlPPU
                ROR     A
                STA     ShiftCameraX

locret_D0B0:
                RTS
; End of function get_shift_camerax


; =============== S U B R O U T I N E =======================================


sub_D0B1:
                JSR     load_map_tile
                LDA     byte_A0
                BMI     locret_D0C0
                JSR     sub_D0C4
                LDA     byte_A0
                LSR     A
                BCS     loc_D0C1

locret_D0C0:
                RTS
; ---------------------------------------------------------------------------

loc_D0C1:
                ADC     #0
                ASL     A
; End of function sub_D0B1


; =============== S U B R O U T I N E =======================================


sub_D0C4:
                AND     #6
                ASL     A
                ASL     A
                TAX
                CLC
                LDA     LowGlobalXC0
                AND     #$C0
                ADC     byte_D0FD,X
                STA     LowGlobalXC0_0
                LDA     HighGlobalX
                ADC     byte_D0FD+1,X
                STA     HighGlobalX_plus2
                CLC
                LDA     LowGlobalYC0
                AND     #$C0
                ADC     byte_D0FD+2,X
                STA     MaskORA
                LDA     HighGlobalY
                ADC     byte_D0FD+3,X
                STA     HighGlobalY_plus1_carry
                LDA     byte_D0FD+4,X
                STA     byte_AE
                LDA     byte_D0FD+5,X
                STA     byte_AF
                LDA     byte_D0FD+6,X
                STA     Tile4Count
                JMP     load_map
; End of function sub_D0C4

; ---------------------------------------------------------------------------
byte_D0FD:      .byte $C0, $FF, 0, 0, $40, 0, $13, 0, $40, 4, 0, 0, 0
                .byte $40, $10, 0, $C0, $FF, $C0, 3, $40, 0, $13, 0, $C0
                .byte $FF, 0, 0, 0, $40, $10, 0

; =============== S U B R O U T I N E =======================================


.proc load_map
    .importzp DataBank, FirstTileID, BankHighOffset, BankNum0Mask3, BankNum1Mask3, p4TileAttr
    .importzp BankNum0, BankNum1, OffScreen, Screen, Attribute_0, AttributeScr0, AttributeScr1

                JSR     get_screen_pointers ; set base address Screen $6000 or $6100
                                        ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset

next_quadrant:
                JSR     load_data_bank
                LDY     #0
                LDA     (p4TileID),Y    ; BANK03:BC08 BANK03:BB0C
                AND     #$3F ; '?'
                CMP     MapSectorID
                BEQ     @get_map_tile_id
                LDA     color_0E        ; $40
                JMP     @get_pointer_quadrant
; ---------------------------------------------------------------------------

@get_map_tile_id:
                LDA     DataBank
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                CLC
                LDA     HighGlobalX_plus2
                STA     p4TileID
                LDA     HighGlobalY_plus1_carry
                AND     #$1F
                ADC     #$80
                STA     p4TileID+1
                LDY     #0
                LDA     (p4TileID),Y    ; BANK02:9008, BANK02:9108, BANK02:9208, BANK02:9308
                BPL     @get_pointer_quadrant
                JSR     get_save_field

@get_pointer_quadrant:
                TAX
                AND     #$40
                ASL     A
                STA     FirstTileID
                LSR     A
                LSR     A
                STA     BankHighOffset
                BEQ     @low_bank
                LDA     BankNum1Mask3
; ---------------------------------------------------------------------------
                .byte $2C
; ---------------------------------------------------------------------------

@low_bank:
                LDA     BankNum0Mask3
                STA     p4TileID+1
                TXA
                ASL     A
                ASL     A
                ASL     A
                ROL     p4TileID+1
                ASL     A
                ROL     p4TileID+1
                STA     p4TileID
                STA     p4TileAttr
                LDA     p4TileID+1
                ADC     #$80
                ADC     BankHighOffset
                STA     p4TileID+1
                ADC     #$10
                STA     p4TileAttr+1
                LDA     BankNum0
                LSR     A
                ORA     #1
                LDX     #6
                JSR     mmc3_bank_set   ; load map BANK0D:8000
                LDA     BankNum1
                LSR     A
                ORA     #1
                LDX     #7
                JSR     mmc3_bank_set   ; load map BANK0D:A000

next_tile_and_attr:
                LDA     LowGlobalXC0_0
                LSR     A
                LSR     A
                ORA     MaskORA
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAX
                TAY
                JSR     sram_write_enable
                LDA     (p4TileID),Y    ; BANK0D:A800 BANK0D:8420 BANK0D:A900 BANK0D:A920 BANK0D:8760
                EOR     FirstTileID
                LDY     OffScreen
                STA     (Screen),Y
                TXA
                TAY
                LDA     (p4TileAttr),Y  ; BANK0D:B800 BANK0D:9420 BANK0D:B900 BANK0D:B920 BANK0D:9760
                AND     #$C0
                STA     Attribute_0
                LSR     A
                LSR     A
                ORA     Attribute_0
                LSR     A
                LSR     A
                ORA     Attribute_0
                LSR     A
                LSR     A
                ORA     Attribute_0
                LDY     OffScreen
                STA     (AttributeScr0),Y
                LDA     #0
                STA     (AttributeScr1),Y
                JSR     sram_read_enable
                DEC     Tile4Count
                BEQ     exit
                LDA     byte_AE
                BEQ     loc_D1F9
                INC     OffScreen
                CLC
                ADC     LowGlobalXC0_0
                STA     LowGlobalXC0_0
                BCC     jmp_next_tile_and_attr
                LDA     #0
                ADC     HighGlobalX_plus2
                STA     HighGlobalX_plus2
                AND     #3
                BNE     jmp_next_quadrant
                LDA     OffScreen
                SEC
                SBC     #$10
                STA     OffScreen
                LDA     Screen+1
                EOR     #1
                STA     Screen+1
                CLC
                ADC     #2
                STA     AttributeScr0+1
                ADC     #2
                STA     AttributeScr1+1
                JMP     next_quadrant
; ---------------------------------------------------------------------------

loc_D1F9:
                LDX     byte_AF
                BEQ     exit
                CLC
                LDA     OffScreen
                ADC     #$10
                STA     OffScreen
                CLC
                TXA
                ADC     MaskORA
                STA     MaskORA
                BCC     jmp_next_tile_and_attr
                LDA     #0
                ADC     HighGlobalY_plus1_carry
                STA     HighGlobalY_plus1_carry
                JMP     next_quadrant
; ---------------------------------------------------------------------------

jmp_next_tile_and_attr:
                JMP     next_tile_and_attr
; ---------------------------------------------------------------------------

jmp_next_quadrant:
                JMP     next_quadrant
; ---------------------------------------------------------------------------

exit:
                RTS
.endproc            ; End of function load_map


; =============== S U B R O U T I N E =======================================


sub_D21C:
                LDA     NMIFlags
                BNE     sub_D21C
                LDA     byte_A0
                BMI     loc_D22F
                AND     #7
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     byte_D284+7,X
                BPL     loc_D23F

loc_D22F:
                LDX     #0
                RTS
; End of function sub_D21C


; =============== S U B R O U T I N E =======================================


sub_D232:
                LDA     NMIFlags
                BNE     sub_D232
                LDA     byte_A0
                BMI     loc_D22F
                AND     #7
                ASL     A
                ASL     A
                ASL     A

loc_D23F:
                TAX
                CLC
                LDA     LowGlobalXC0
                AND     #$C0
                ADC     byte_D284,X
                STA     LowGlobalXC0_0
                LDA     HighGlobalX
                ADC     byte_D284+1,X
                STA     HighGlobalX_plus2
                CLC
                LDA     LowGlobalYC0
                AND     #$C0
                ADC     byte_D284+2,X
                STA     MaskORA
                LDA     HighGlobalY
                ADC     byte_D284+3,X
                STA     HighGlobalY_plus1_carry
                CLC
                LDA     byte_D284+4,X
                ADC     ShiftCameraY
                BCS     loc_D26C
                ADC     #$F0

loc_D26C:
                STA     ScreenY
                LDA     byte_D284+6,X
                BMI     loc_D281
                EOR     ScreenY
                AND     #$10
                BNE     loc_D27C
                LDA     byte_D284+5,X

loc_D27C:
                STA     Add_Off_pAttr
                JMP     write_tile_attr
; ---------------------------------------------------------------------------

loc_D281:
                JMP     sub_D398
; End of function sub_D232

; ---------------------------------------------------------------------------
byte_D284:      .byte 0, 0,   0, 0, $10, $F0, $10, $88
                .byte 0, 0,   0, 0, $10, $F0, $10, $10
                .byte 0, 4,   0, 0, $10,   0, $FF, $88
                .byte 0, 0, $80, 3, $F0, $20,   0, $10
                .byte 0, 0, $80, 3, $F0, $20,   0, $88
                .byte 0, 0, $80, 3, $F0, $20,   0, $30
                .byte 0, 0,   0, 0, $10,   0, $FF, $88
                .byte 0, 0,   0, 0, $10, $F0, $10, $30

; =============== S U B R O U T I N E =======================================


write_tile_attr:
    .importzp TilesNum, PPUAddr, FirstTileID, OffScreen, Screen, PPUAttribute, Off_pAttr
    .importzp AttributeScr0

                JSR     sub_D4B7
                LDA     #$11
                STA     TilesNum
                LDX     #0

loc_D2CD:
                LDA     #5              ; write_horizontal ID
                STA     NMI_Data,X        ; NMITable
                STA     NMI_Data + NMI_DATA::NMI_ID+$2A,X ; NMITable
                INX
                LDA     TilesNum
                ASL     A
                STA     NMI_Data,X        ; NMITable
                STA     NMI_Data + NMI_DATA::NMI_ID+$2A,X ; NMITable
                INX
                LDA     PPUAddr+1
                STA     NMI_Data,X        ; NMITable
                STA     NMI_Data + NMI_DATA::NMI_ID+$2A,X ; NMITable
                INX
                LDA     PPUAddr
                STA     NMI_Data,X        ; NMITable
                ORA     #$20
                STA     NMI_Data + NMI_DATA::NMI_ID+$2A,X ; NMITable
                INX

@add_tiles:
                JSR     get4tileID_pointer ; Gets a pointer to the quadrant of tiles in bank D.
                                        ; Input: OffScreen - offset to screen area for Screen pointer ($6000, $6100)
                                        ;        BankNum0Mask3, BankNum1Mask3 - masks
                                        ; Output: p4TileID - pointer to the quadrant of tiles
                LDY     #0
                LDA     (p4TileID),Y    ; BANK0D:9200(BANK0D:B200) BANK0D:B400(BANK0D:9400)
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data,X        ; lelft top tile
                INY
                LDA     (p4TileID),Y
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::NumOfChr,X ; right top tile
                INY
                LDA     (p4TileID),Y
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::NMI_ID+$2A,X ; left bottom tile
                INY
                LDA     (p4TileID),Y
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::NumOfChr+$2A,X ; right bottom tile
                INX
                INX
                DEC     TilesNum
                BEQ     @last_tile
                INC     OffScreen
                LDA     OffScreen
                BIT     EndRow
                BNE     @add_tiles
                SEC
                SBC     #$10
                STA     OffScreen
                LDA     Screen+1
                EOR     #1
                STA     Screen+1
                LDA     PPUAddr
                AND     #$E0
                STA     PPUAddr
                LDA     PPUAddr+1
                EOR     #4
                STA     PPUAddr+1
                SEC
                LDA     #$11
                SBC     TilesNum
                ASL     A
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                STA     NMI_Data + NMI_DATA::NumOfChr+$2A ; NMITable
                JMP     loc_D2CD
; ---------------------------------------------------------------------------

@last_tile:
                LDA     #9
                STA     TilesNum
                LDX     #$54 ; 'T'
                LDA     #7              ; write_ppu_chars
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     TilesNum
                STA     NMI_Data,X        ; NMITable
                INX

@next_attr:
                JSR     write_attr
                DEC     TilesNum
                BEQ     @exit
                INC     PPUAttribute
                CLC
                LDA     Off_pAttr
                ADC     #2
                STA     Off_pAttr
                BIT     EndRow
                BNE     @next_attr
                SEC
                SBC     #$10
                STA     Off_pAttr
                LDA     AttributeScr0+1
                EOR     #1
                STA     AttributeScr0+1
                SEC
                LDA     PPUAttribute
                SBC     #8
                STA     PPUAttribute
                LDA     PPUAttribute+1
                EOR     #4
                STA     PPUAttribute+1
                JMP     @next_attr
; ---------------------------------------------------------------------------

@exit:
                RTS
; End of function write_tile_attr


; =============== S U B R O U T I N E =======================================


sub_D398:
                JSR     sub_D4B7
                SEC
                LDA     #$F0
                SBC     ScreenY
                CLC
                ADC     OffScreen
                STA     OffScreen
                LDA     #$F
                STA     TilesNum
                LDX     #0
                LDA     #6
                STA     NMI_Data,X        ; NMITable
                STA     NMI_Data + NMI_DATA::Chr+$1E,X ; NMITable
                INX
                LDA     TilesNum
                ASL     A
                STA     NMI_Data,X        ; NMITable
                STA     NMI_Data + NMI_DATA::Chr+$1E,X ; NMITable
                INX
                LDA     PPUAddr+1
                AND     #$FC
                STA     NMI_Data,X        ; NMITable
                STA     NMI_Data + NMI_DATA::Chr+$1E,X ; NMITable
                INX
                LDA     PPUAddr
                AND     #$1E
                STA     NMI_Data,X        ; NMITable
                ORA     #1
                STA     NMI_Data + NMI_DATA::Chr+$1E,X ; NMITable
                INX
                LDA     ScreenY
                STA     PPUAddr

loc_D3DA:
                LDA     PPUAddr
                SEC
                SBC     #$10
                STA     PPUAddr
                BCS     loc_D3E9
                LDA     OffScreen
                ADC     #$10
                STA     OffScreen

loc_D3E9:
                JSR     get4tileID_pointer ; Gets a pointer to the quadrant of tiles in bank D.
                                        ; Input: OffScreen - offset to screen area for Screen pointer ($6000, $6100)
                                        ;        BankNum0Mask3, BankNum1Mask3 - masks
                                        ; Output: p4TileID - pointer to the quadrant of tiles
                LDY     #0
                LDA     (p4TileID),Y
                AND     #$3F ; '?'
                EOR     FirstTileID
                STA     NMI_Data,X        ; NMITable
                INY
                LDA     (p4TileID),Y
                AND     #$3F ; '?'
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::Chr+$1E,X ; NMITable
                INY
                LDA     (p4TileID),Y
                AND     #$3F ; '?'
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::NumOfChr,X ; NMITable
                INY
                LDA     (p4TileID),Y
                AND     #$3F ; '?'
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::Next+$1E,X ; NMITable
                INX
                INX
                DEC     TilesNum
                BEQ     loc_D425
                CLC
                LDA     OffScreen
                ADC     #$10
                STA     OffScreen
                JMP     loc_D3DA
; ---------------------------------------------------------------------------

loc_D425:
                LDA     #8
                STA     TilesNum
                LDX     #$44 ; 'D'
                LDA     #7
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     TilesNum
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     ScreenY
                AND     #$10
                BEQ     loc_D455
                SEC
                LDA     Off_pAttr
                PHA
                SBC     #$10
                STA     Off_pAttr
                LDA     #$20 ; ' '
                STA     Add_Off_pAttr
                JSR     write_attr
                PLA
                STA     Off_pAttr
                LDA     #$10
                STA     Add_Off_pAttr
                BNE     loc_D45C

loc_D455:
                LDA     #$10
                STA     Add_Off_pAttr

loc_D459:
                JSR     write_attr

loc_D45C:
                DEC     TilesNum
                BEQ     locret_D47E
                CLC
                LDA     Off_pAttr
                ADC     #$20 ; ' '
                STA     Off_pAttr
                CLC
                LDA     PPUAttribute
                ADC     #8
                STA     PPUAttribute
                BCC     loc_D459
                SBC     #$40 ; '@'
                STA     PPUAttribute
                SEC
                LDA     Off_pAttr
                SBC     #$10
                STA     Off_pAttr
                JMP     loc_D459
; ---------------------------------------------------------------------------

locret_D47E:
                RTS
; End of function sub_D398

; ---------------------------------------------------------------------------
EndRow:         .byte $F

; =============== S U B R O U T I N E =======================================


write_attr:
    .importzp AttributeScr0, Attribute_0

                LDA     PPUAttribute+1
                STA     NMI_Data,X        ; NMITable
                INX
                LDA     PPUAttribute
                STA     NMI_Data,X        ; NMITable
                INX
                LDY     Off_pAttr
                LDA     (AttributeScr0),Y
                AND     #3
                STA     Attribute_0
                INY
                LDA     (AttributeScr0),Y
                AND     #$C
                ORA     Attribute_0
                STA     Attribute_0
                CLC
                LDA     Off_pAttr
                ADC     Add_Off_pAttr
                TAY
                LDA     (AttributeScr0),Y
                AND     #$30 ; '0'
                ORA     Attribute_0
                STA     Attribute_0
                INY
                LDA     (AttributeScr0),Y
                AND     #$C0
                ORA     Attribute_0
                STA     NMI_Data,X        ; NMITable
                INX
                RTS
; End of function write_attr


; =============== S U B R O U T I N E =======================================


sub_D4B7:
    .importzp BankNum0, BankNum1, ScreenX, StartX

                LDA     BankNum0        ; $19 >> 1 || 1 = $D
                LSR     A
                ORA     #1
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     BankNum1        ; $1A >> 1 || 1 = $D
                LSR     A
                ORA     #1
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JSR     get_screen_pointers ; set base address Screen $6000 or $6100
                                        ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset
                LDA     HighGlobalX_plus2
                AND     #7
                STA     ScreenX
                LDA     LowGlobalXC0_0
                LSR     ScreenX
                ROR     A
                LSR     ScreenX
                ROR     A
                STA     StartX
                LDA     ScreenY
                EOR     OffScreen
                AND     #$10
                BNE     loc_D4ED
                LDA     OffScreen
                AND     #$EE
                JMP     loc_D4F6
; ---------------------------------------------------------------------------

loc_D4ED:
                SEC
                LDA     OffScreen
                SBC     #$10
                ORA     #$10
                AND     #$FE

loc_D4F6:
                BIT     Add_Off_pAttr
                BPL     loc_D501
                LDX     #$20 ; ' '
                STX     Add_Off_pAttr
                SEC
                SBC     #$10

loc_D501:
                STA     Off_pAttr
                LDA     ScreenY
                AND     #$F0
                STA     PPUAddr
                LDA     ScreenX
                ASL     PPUAddr
                ROL     A
                ASL     PPUAddr
                ROL     A
                ORA     #$20 ; ' '
                STA     PPUAddr+1
                ORA     #3
                STA     PPUAttribute+1
                LDA     StartX
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                ORA     PPUAddr
                STA     PPUAddr
                LSR     A
                LSR     A
                AND     #7
                STA     PPUAttribute
                LDA     ScreenY
                LSR     A
                LSR     A
                AND     #$38 ; '8'
                ORA     #$C0
                ORA     PPUAttribute
                STA     PPUAttribute
                RTS
; End of function sub_D4B7


; =============== S U B R O U T I N E =======================================

; Gets a pointer to the quadrant of tiles in bank D.
; Input: OffScreen - offset to screen area for Screen pointer ($6000, $6100)
;        BankNum0Mask3, BankNum1Mask3 - masks
; Output: p4TileID - pointer to the quadrant of tiles

get4tileID_pointer:
    .importzp BankHighOffset, BankNum0Mask3, BankNum1Mask3

                LDY     OffScreen
                LDA     (Screen),Y
                AND     #$80
                LSR     A
                STA     FirstTileID
                LSR     A
                STA     BankHighOffset
                BEQ     loc_D548
                LDA     BankNum1Mask3
; ---------------------------------------------------------------------------
                .byte $2C
; ---------------------------------------------------------------------------

loc_D548:
                LDA     BankNum0Mask3
                STA     p4TileID+1
                LDA     (Screen),Y
                ASL     A
                ASL     A
                ROL     p4TileID+1
                STA     p4TileID
                LDA     p4TileID+1
                ADC     #$90
                ADC     BankHighOffset
                STA     p4TileID+1      ; BANK0D:9200
                RTS
; End of function get4tileID_pointer


; =============== S U B R O U T I N E =======================================

; set base address Screen $6000 or $6100
; AttributeScr0 $6200 or $6300
; AttributeScr1 $6400 or $6500
; OffScreen - offset

get_screen_pointers:
    .export get_screen_pointers
    .importzp AttributeScr1

                LDA     HighGlobalX_plus2
                AND     #7
                STA     Screen+1
                LDA     LowGlobalXC0_0
                LSR     Screen+1
                ROR     A
                LSR     Screen+1
                ROR     A
                LSR     A
                LSR     A
                ORA     MaskORA
                STA     OffScreen
                LDA     HighGlobalY_plus1_carry
                LSR     A
                ROR     OffScreen
                LSR     A
                ROR     OffScreen
                LDA     #0
                STA     Screen
                STA     AttributeScr0
                STA     AttributeScr1
                LDA     Screen+1
                CLC
                ADC     #$60 ; '`'
                STA     Screen+1
                ADC     #2
                STA     AttributeScr0+1
                ADC     #2
                STA     AttributeScr1+1
                RTS
; End of function get_screen_pointers


; =============== S U B R O U T I N E =======================================


get_map_sector_id:
                JSR     load_data_bank  ; load data bank and get p4TileID
                LDY     #0
                LDA     (p4TileID),Y    ; BANK03:BC08
                AND     #$3F ; '?'
                STA     MapSectorID
                RTS
; End of function get_map_sector_id


; =============== S U B R O U T I N E =======================================


load_data_bank:
    .importzp DataBank

                LDA     HighGlobalY_plus1_carry
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                AND     #$E
                STA     DataBank
                ORA     #1
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     HighGlobalY_plus1_carry
                LSR     A
                LSR     A
                AND     #7
                STA     p4TileID+1
                LDA     HighGlobalX_plus2
                AND     #$FC
                CLC
                STA     p4TileID
                LDA     p4TileID+1
                ADC     #$B8
                STA     p4TileID+1      ; BANK03:BC08, BANK03:BB08
                                        ; BANK03:BE08
                RTS
; End of function load_data_bank


; =============== S U B R O U T I N E =======================================


load_map_tile:
    .importzp MsgNumber

                CLC
                LDA     HighGlobalX
                ADC     #2
                STA     HighGlobalX_plus2
                CLC
                LDA     LowGlobalYC0
                ADC     #$C0
                STA     MaskORA
                LDA     HighGlobalY
                ADC     #1
                STA     HighGlobalY_plus1_carry
                JSR     load_data_bank
                LDY     #0
                LDA     (p4TileID),Y    ; BANK03:BC08
                                        ; BANK03:BE08
                AND     #$3F ; '?'
                CMP     MapSectorID
                BEQ     loc_D5F3
                LDA     chr_bank_color_0C ; $1A
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                STA     BankNum1
                AND     #3
                STA     BankNum1Mask3
                RTS
; ---------------------------------------------------------------------------

loc_D5F3:
                LDA     byte_23
                BEQ     loc_D5FF
                BPL     set_PPU1800
                AND     #$7F
                STA     byte_23
                BPL     set_PPU0000

loc_D5FF:
                LDY     #1
                LDA     (p4TileID),Y    ; BANK03:BC09
                AND     #$3F
                STA     MsgNumber
                TAX
                LDA     CHRTable_0,X    ; CHR personage table
                BEQ     set_PPU0000

set_PPU1800:
                LDX     #1
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode

set_PPU0000:
                LDY     #2
                LDA     (p4TileID),Y
                AND     #$3F ; '?'
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                STA     BankNum0
                AND     #3
                STA     BankNum0Mask3
                INY
                LDA     (p4TileID),Y
                AND     #$3F ; '?'
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                STA     BankNum1
                AND     #3
                STA     BankNum1Mask3
                RTS
; End of function load_map_tile

; ---------------------------------------------------------------------------
CHRTable_0:     .byte 0, $68, $62, $62, $62, $62, $64, $62, $74, $64, $6A
                .byte $62, $66, $6C, $62, 0, 0, 0, 0, 0, $66, 0, $6A, $66 ; CHR personage table
                .byte $62, $68, $64, $68, $6E, $66, $66, $66, $62, $62
                .byte $62, $66, $64, $6E, $62, $64, $66, $74, $6C, $66
                .byte 0, 0, $68, $6C, $72, 0, $66, 0, 0, 0, $6A, 0, $6C
                .byte $6E, $6C, $6E, $6C, $6E, $6E, 0

; =============== S U B R O U T I N E =======================================


sub_D674:
    .export sub_D674
    .importzp LowGlobalY3F, Dist, MsgOffset

                LDA     byte_20
                BPL     loc_D697
                AND     #$F
                STA     LowGlobalY3F
                LDA     $6784
                AND     #$C0
                STA     LowGlobalXC0_0
                LDA     $6785
                STA     HighGlobalX_plus2
                LDA     $6786
                AND     #$C0
                STA     MaskORA
                LDA     $6787
                STA     HighGlobalY_plus1_carry
                JMP     loc_D6CB
; ---------------------------------------------------------------------------

loc_D697:
                LDA     $7406           ; CurrentPlayer.PureSave.GlobalY
                AND     #$3F ; '?'
                STA     LowGlobalY3F
                CLC
                LDA     $7404           ; CurrentPlayer.PureSave.GlobalX
                AND     #$C0
                STA     LowGlobalXC0
                ADC     #0
                STA     LowGlobalXC0_0
                LDA     $7405           ; CurrentPlayer.PureSave.GlobalX+1
                STA     HighGlobalX
                ADC     #2
                STA     HighGlobalX_plus2
                CLC
                LDA     $7406           ; CurrentPlayer.PureSave.GlobalY
                AND     #$C0
                STA     LowGlobalYC0
                ADC     #$C0
                STA     MaskORA
                LDA     $7407           ; CurrentPlayer.PureSave.GlobalY+1
                STA     HighGlobalY
                ADC     #1
                STA     HighGlobalY_plus1_carry
                JSR     get_map_sector_id

loc_D6CB:
                JSR     get_screen_pointers ; set base address Screen $6000 or $6100
                                        ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset
                JSR     get_characters_buffer
                JSR     sram_write_enable
                LDA     byte_23
                BNE     loc_D71B
                LDX     #0

loc_D6DA:
                LDA     $7408,X         ; CurrentPlayer.PureSave.CharactersNum,X
                BEQ     loc_D6F2
                JSR     sub_D7DF
                LDY     #$19
                LDA     #$88
                STA     (Dist),Y
                LDA     #$C
                CPX     #0
                BNE     loc_D6F2
                LDY     #$1C
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000

loc_D6F2:
                LDY     #0
                STA     (Dist),Y
                LDA     byte_20
                AND     #$C0
                BEQ     loc_D73B
                JSR     get_dist_addr
                INX
                CPX     #4
                BCC     loc_D6DA

loc_D704:
                LDA     $7404           ; CurrentGame + GAME_SAVE::PureSave.GlobalX
                AND     #$3F ; '?'
                BEQ     loc_D70E
                JSR     sub_FD28

loc_D70E:
                LDA     #0
                STA     byte_20
                LDA     byte_22
                AND     #$CF
                STA     byte_22
                JMP     sram_read_enable
; ---------------------------------------------------------------------------

loc_D71B:
                JSR     loc_D7E2
                LDY     #0
                LDA     (Dist),Y
                AND     #$3F ; '?'
                CMP     #$D
                BNE     loc_D738
                JSR     sub_D884
                LDY     #$19
                LDA     LowGlobalY3F
                STA     (Dist),Y
                EOR     #4
                STA     LowGlobalY3F
                JSR     loc_D7E2

loc_D738:
                JMP     loc_D704
; ---------------------------------------------------------------------------

loc_D73B:
                LDA     $7409,X         ; CurrentPlayer.PureSave.CharactersNum+1,X
                BEQ     loc_D745
                JSR     sub_D768
                BCC     loc_D751

loc_D745:
                JSR     get_dist_addr
                JSR     sram_write_enable
                LDY     #0
                LDA     #0
                STA     (Dist),Y

loc_D751:
                INX
                CPX     #3
                BCC     loc_D73B
                JMP     loc_D704
; End of function sub_D674


; =============== S U B R O U T I N E =======================================


sub_D759:
    .export sub_D759

                PHA
                LDX     #0

loc_D75C:
                LDA     $7409,X
                BEQ     loc_D769
                INX
                CPX     #3
                BCC     loc_D75C
                PLA
                RTS
; End of function sub_D759


; =============== S U B R O U T I N E =======================================


sub_D768:
                PHA

loc_D769:
                TXA
                PHA
                JSR     sub_D86C
                JSR     sub_D884
                JSR     sram_write_enable
                PLA
                TAX
                PLA
                STA     $7409,X         ; CurrentPlayer.PureSave.CharactersNum+1,X
                JSR     sub_D7DF
                LDY     #$19
                LDA     LowGlobalY3F
                STA     (Dist),Y
                LDY     #0
                LDA     #$C
                STA     (Dist),Y
                CLC
                JMP     sram_read_enable
; End of function sub_D768


; =============== S U B R O U T I N E =======================================


sub_D78D:
    .export sub_D78D

                LDX     #0

loc_D78F:
                CMP     $7408,X
                BEQ     loc_D79A
                INX
                CPX     #4
                BCC     loc_D78F
                RTS
; ---------------------------------------------------------------------------

loc_D79A:
                JSR     sram_write_enable

loc_D79D:
                CPX     #3
                BCS     loc_D7AC
                LDA     $7409,X
                BEQ     loc_D7AE
                STA     $7408,X
                INX
                BCC     loc_D79D

loc_D7AC:
                LDA     #0

loc_D7AE:
                STA     $7408,X
                TXA
                JSR     sub_D86C
                JSR     sub_DFBF
                JSR     get_characters_buffer
                LDX     #0

loc_D7BD:
                LDA     $7408,X
                BEQ     loc_D7CF
                JSR     sub_D813
                LDA     #$C
                CPX     #0
                BNE     loc_D7CF
                LDY     #$1C
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000

loc_D7CF:
                LDY     #0
                STA     (Dist),Y
                JSR     get_dist_addr
                INX
                CPX     #4
                BCC     loc_D7BD
                CLC
                JMP     sram_read_enable
; End of function sub_D78D


; =============== S U B R O U T I N E =======================================


sub_D7DF:
                JSR     sub_D813

loc_D7E2:
                LDY     #4
                LDA     LowGlobalXC0_0
                STA     (Dist),Y
                INY
                LDA     HighGlobalX_plus2
                STA     (Dist),Y
                LDY     #6
                LDA     MaskORA
                STA     (Dist),Y
                INY
                LDA     HighGlobalY_plus1_carry
                STA     (Dist),Y
                LDY     #$11
                LDA     OffScreen
                STA     (Dist),Y
                INY
                LDA     AttributeScr1
                STA     (Dist),Y
                INY
                LDA     AttributeScr1+1
                STA     (Dist),Y
                LDA     LowGlobalY3F
                LDY     #$15
                STA     (Dist),Y
                LDY     #$1D
                STA     (Dist),Y
                RTS
; End of function sub_D7DF


; =============== S U B R O U T I N E =======================================


sub_D813:
                LDY     #2
                AND     #7
                STA     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                LDA     #0
                LSR     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                ROR     A
                LSR     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                ROR     A
                STA     MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     (Dist),Y
                INY
                LDA     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                ADC     #$74 ; 't'
                STA     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     (Dist),Y
                LDY     #$1D
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                LDY     #$14
                PHA
                AND     #$F0
                STA     (Dist),Y
                LDY     #8
                PLA
                AND     #$F
                STA     (Dist),Y

loc_D840:
                LDY     #$1E
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                LDY     #$16
                STA     (Dist),Y
                LDY     #$1F
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                LDY     #$17
                STA     (Dist),Y
                CLC
                LDY     #1
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BPL     locret_D86B
                AND     #$80
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                LDY     #$16
                LDA     (Dist),Y
                ADC     #$A0
                STA     (Dist),Y
                INY
                LDA     (Dist),Y
                ADC     #0
                STA     (Dist),Y
                SEC

locret_D86B:
                RTS
; End of function sub_D813


; =============== S U B R O U T I N E =======================================


sub_D86C:
    .export sub_D86C

                STA     Dist+1
                LDA     #0
                LSR     Dist+1
                ROR     A
                LSR     Dist+1
                ROR     A
                LSR     Dist+1
                ROR     A
                ADC     #$80
                STA     Dist
                LDA     Dist+1
                ADC     #$67
                STA     Dist+1
                RTS
; End of function sub_D86C


; =============== S U B R O U T I N E =======================================


sub_D884:
                LDY     #$15
                LDA     (Dist),Y
                STA     LowGlobalY3F
                EOR     #4
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDY     #4
                CLC
                LDA     byte_EBED,X
                ADC     (Dist),Y
                STA     LowGlobalXC0_0
                INY
                LDA     byte_EBEE,X
                ADC     (Dist),Y
                STA     HighGlobalX_plus2
                LDY     #6
                CLC
                LDA     byte_EBEF,X
                ADC     (Dist),Y
                STA     MaskORA
                INY
                LDA     byte_EBF0,X
                ADC     (Dist),Y
                STA     HighGlobalY_plus1_carry
                JSR     get_screen_pointers ; set base address Screen $6000 or $6100
                                        ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset
                JMP     get_dist_addr
; End of function sub_D884


; =============== S U B R O U T I N E =======================================


sub_D8BA:
                JSR     sub_D86C
                LDY     #2
                LDA     (Dist),Y
                STA     MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
                INY
                LDA     (Dist),Y
                STA     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                RTS
; End of function sub_D8BA


; =============== S U B R O U T I N E =======================================


sub_D8C9:
    .export sub_D8C9, loc_D8CE

                LDA     #7
                JSR     sub_D78D

loc_D8CE:
                LDA     #6
                JMP     sub_D78D
; End of function sub_D8C9


; =============== S U B R O U T I N E =======================================


sub_D8D3:
    .export sub_D8D3
    .importzp ItemCount, SaveNum, byte_47

                LDA     $7581           ; CurrentGame + GAME_SAVE::PureSave.field_178+9
                BPL     loc_D8DD
                LDA     #6
                JSR     sub_D78D

loc_D8DD:
                LDA     $75C1           ; CurrentGame + GAME_SAVE::PureSave.field_178+$49
                BPL     loc_D8E7
                LDA     #7
                JSR     sub_D78D

loc_D8E7:
                LDX     #0
                STX     ItemCount

loc_D8EB:
                JSR     sub_D9F1
                BCS     loc_D906
                TXA
                JSR     sub_D8BA
                JSR     sram_write_enable
                JSR     loc_D840
                BCS     loc_D8FE
                INC     ItemCount

loc_D8FE:
                JSR     sram_read_enable
                INX
                CPX     #4
                BCC     loc_D8EB

loc_D906:
                STX     SaveNum
                LDA     ItemCount
                BEQ     loc_D90E
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_D90E:
                JSR     sub_D8C9
                JSR     sram_write_enable
                LDA     #0
                STA     $7441           ; CurrentGame + GAME_SAVE::PureSave.Characters.msg_list
                STA     $7456           ; CurrentGame + GAME_SAVE::PureSave.Characters.PP
                STA     $7457           ; CurrentGame + GAME_SAVE::PureSave.Characters.field_17
                LDA     $7443           ; CurrentGame + GAME_SAVE::PureSave.Characters.msg_list+2
                STA     $7454           ; CurrentGame + GAME_SAVE::PureSave.Characters.Health
                LDA     $7444           ; CurrentGame + GAME_SAVE::PureSave.Characters.msg_list+3
                STA     $7455           ; CurrentGame + GAME_SAVE::PureSave.Characters.field_15
                LDA     $7410           ; CurrentGame + GAME_SAVE::PureSave.cash
                LSR     $7411           ; CurrentGame + GAME_SAVE::PureSave.cash+1
                ROR     A
                ADC     #0
                STA     $7410           ; CurrentGame + GAME_SAVE::PureSave.cash
                LDA     $7411           ; CurrentGame + GAME_SAVE::PureSave.cash+1
                ADC     #0
                STA     $7411           ; CurrentGame + GAME_SAVE::PureSave.cash+1
                LDA     #1
                STA     ItemCount
                LDA     #0
                STA     byte_21
                STA     byte_23
                LDX     byte_47
                LDY     byte_D96B,X
                LDX     #3

loc_D950:
                LDA     byte_D96F,Y
                STA     $7404,X
                DEY
                DEX
                BPL     loc_D950
                LDA     $7406           ; CurrentGame + GAME_SAVE::PureSave.GlobalY
                AND     #$F
                ORA     #$20
                STA     byte_20
                EOR     #$60
                STA     byte_22
                SEC
                JMP     sram_read_enable
; End of function sub_D8D3

; ---------------------------------------------------------------------------
byte_D96B:      .byte 3, 3, 3, 7
byte_D96F:      .byte $5C, $DF, 0, $24, $8B, $DF, $40, $DB

; =============== S U B R O U T I N E =======================================


sub_D977:
    .export sub_D977

                DEC     SaveNum
                BMI     locret_D997
                BEQ     locret_D997

loc_D97D:
                LDA     $7408           ; CurrentGame + GAME_SAVE::PureSave.CharactersNum
                CMP     #1
                BEQ     loc_D98C
                JSR     sub_D998
                BCS     loc_D97D

loc_D989:
                JSR     sub_D998

loc_D98C:
                LDA     #0
                JSR     sub_D8BA
                LDY     #1
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BMI     loc_D989

locret_D997:
                RTS
; End of function sub_D977


; =============== S U B R O U T I N E =======================================


sub_D998:
                JSR     sram_write_enable
                LDX     #0
                STX     ItemCount

loc_D99F:
                LDA     $7408,X
                PHA
                LDA     $7409,X
                STA     $7408,X
                PLA
                STA     $7409,X
                LDA     #2
                JSR     sub_D9DE
                LDA     #3
                JSR     sub_D9DE
                LDA     #8

loc_D9B9:
                PHA
                JSR     sub_D9DE
                PLA
                CLC
                ADC     #1
                CMP     #$11
                BCC     loc_D9B9
                LDA     #$16
                JSR     sub_D9DE
                LDA     #$17
                JSR     sub_D9DE
                CLC
                LDA     ItemCount
                ADC     #$20 ; ' '
                STA     ItemCount
                INX
                CPX     SaveNum
                BCC     loc_D99F
                JMP     sram_read_enable
; End of function sub_D998


; =============== S U B R O U T I N E =======================================


sub_D9DE:
                CLC
                ADC     ItemCount
                TAY
                LDA     $6780,Y
                PHA
                LDA     $67A0,Y
                STA     $6780,Y
                PLA
                STA     $67A0,Y
                RTS
; End of function sub_D9DE


; =============== S U B R O U T I N E =======================================


sub_D9F1:
    .export sub_D9F1

                SEC
                LDA     $7408,X         ; CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
                BEQ     locret_D9F9
                CMP     #6

locret_D9F9:
                RTS
; End of function sub_D9F1


; =============== S U B R O U T I N E =======================================


sub_D9FA:
    .export sub_D9FA

                LDX     #0

loc_D9FC:
                LDA     $7408,X         ; CurrentGame + GAME_SAVE::PureSave.CharactersNum,X
                BEQ     loc_DA10
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                LDY     #$2C ; ','

loc_DA06:
                LDA     $73D8,Y
                STA     (Pointer),Y
                INY
                CPY     #$30 ; '0'
                BCC     loc_DA06

loc_DA10:
                INX
                CPX     #4
                BCC     loc_D9FC
                RTS
; End of function sub_D9FA


; =============== S U B R O U T I N E =======================================


sub_DA16:
                JSR     wait_nmi_processed
                JSR     sub_FDC0
                LDX     #0

loc_DA1E:
                JSR     sub_D9F1
                BCS     loc_DA3C
                TXA
                JSR     sub_D8BA
                LDY     #1
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BMI     loc_DA3C
                LDY     #$10
                LDA     (Dist),Y
                TAY
                LDA     #$80
                STA     SpriteTable + ANIM_SPRITE::pFrame,Y
                LDA     #$81
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,Y

loc_DA3C:
                INX
                CPX     #4
                BCC     loc_DA1E
                LDA     #1
                STA     NMIFlags
                JMP     wait_nmi_processed
; End of function sub_DA16


; =============== S U B R O U T I N E =======================================


sub_DA48:
    .import sub_13BBC3, sub_13BB8C, sub_13A979, sub_17A3F8
    .importzp byte_28, byte_29, word_2A, byte_49, byte_4A, byte_4B, byte_53

                LDA     ItemCount
                STA     pTileID
                LDA     byte_49
                STA     Pointer
                LDA     byte_4A
                STA     Pointer+1
                LDA     byte_4B
                STA     AddrForJmp
                JSR     sub_F13D
                LDA     pDist
                BEQ     loc_DA61
                LDA     #1

loc_DA61:
                CLC
                ADC     Pointer
                STA     byte_49
                LDA     #0
                ADC     Pointer+1
                STA     byte_4A
                LDA     #0
                ADC     AddrForJmp
                STA     byte_4B
                JSR     sram_write_enable
                LDX     #0

loc_DA77:
                JSR     sub_D9F1
                BCS     loc_DADD
                STA     byte_28
                TXA
                LSR     A
                ROR     A
                ROR     A
                ROR     A
                STA     byte_53
                TXA
                PHA
                JSR     sub_D8BA
                LDY     #1
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BMI     loc_DADB
                LDA     byte_47
                BNE     loc_DAD8
                LDY     #$11
                CLC
                LDA     byte_49
                ADC     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                INY
                LDA     byte_4A
                ADC     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                INY
                LDA     byte_4B
                ADC     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BCC     loc_DAB9
                LDY     #$11
                LDA     #$FF
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                INY
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                INY
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000

loc_DAB9:                               ; CODE XREF: sub_DA48+63↑j
                                        ; sub_DA48+8E↓j
                LDY     #$10
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                JSR     sub_DB40
                LDY     #$11
                SEC
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                SBC     pTileID
                INY
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                SBC     pTileID+1
                INY
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                SBC     TilepackMode
                BCC     loc_DAD8
                JSR     sub_DB6C
                BCC     loc_DAB9

loc_DAD8:
                JSR     sub_DC87

loc_DADB:
                PLA
                TAX

loc_DADD:
                INX
                CPX     #4
                BCC     loc_DA77
                JSR     loc_C43F
                LDA     byte_47
                BNE     loc_DB30
                JSR     sram_write_enable
                LDX     #$12
                JSR     sub_DC11
                LDX     #$15
                JSR     sub_DC11
                LDA     byte_48
                BEQ     loc_DB30
                STA     byte_29
                JSR     bank13_A000
                JSR     sub_13BBC3
                LDA     #$FF
                STA     word_2A
                LDA     word_2A+1
                ORA     #$1F

loc_DB0A:
                ASL     word_2A
                ASL     A
                BCC     loc_DB0A
                JSR     sub_F1ED
                AND     word_2A
                BNE     loc_DB30
                JSR     sub_13BB8C
                LDX     #0

loc_DB1B:
                JSR     sub_D9F1
                BCS     loc_DB2B
                STA     byte_28
                TXA
                PHA
                JSR     sub_13A979
                PLA
                TAX
                BCC     loc_DB33

loc_DB2B:
                INX
                CPX     #4
                BCC     loc_DB1B

loc_DB30:
                JMP     sram_read_enable
; ---------------------------------------------------------------------------

loc_DB33:
                JSR     bank17_A000
                LDA     #6
                STA     $7F1
                LDA     #$8C
                JMP     sub_17A3F8
; End of function sub_DA48


; =============== S U B R O U T I N E =======================================


sub_DB40:
    .export sub_DB40

                TAX
                INX
                STX     pTileID
                INX
                STX     Pointer
                LDA     #0
                STA     Pointer+1
                STA     AddrForJmp
                JSR     sub_F109
                JSR     sub_F109
                JSR     sub_DCDF
                LDY     #0
                LDA     (pDist),Y
                STA     pTileID
                JSR     sub_F109
                LDA     Pointer+1
                STA     pTileID
                LDA     AddrForJmp
                STA     pTileID+1
                LDA     AddrForJmp+1
                STA     TilepackMode
                RTS
; End of function sub_DB40


; =============== S U B R O U T I N E =======================================


sub_DB6C:
    .importzp byte_58, byte_59

                LDY     #$10
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                CMP     #$63 ; 'c'
                BCC     loc_DB75
                RTS
; ---------------------------------------------------------------------------

loc_DB75:
                ADC     #1
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                JSR     loc_C43F
                JSR     sram_write_enable
                LDA     #$FF
                JSR     sub_FD28
                LDA     #$1F
                JSR     sub_FD28
                LDA     #$82
                JSR     sub_17A3F8
                JSR     sub_DCDF
                LDY     #3

loc_DB93:
                JSR     sub_F1ED
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                CLC
                ADC     (pDist),Y
                LSR     A
                STA     $55,Y
                INY
                CPY     #8
                BCC     loc_DB93
                LDY     #$B

loc_DBAA:
                CLC
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                ADC     $4D,Y
                BCC     loc_DBBC
                SBC     $4D,Y
                EOR     #$FF
                STA     $4D,Y
                LDA     #$FF

loc_DBBC:
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                LDA     $4D,Y
                BEQ     loc_DBCD
                TYA
                PHA
                CLC
                ADC     #$7B ; '{'
                JSR     sub_17A3F8
                PLA
                TAY

loc_DBCD:
                INY
                CPY     #$10
                BCC     loc_DBAA
                LDY     #7
                LDA     byte_58
                JSR     sub_DC64
                LDY     #9
                LDA     byte_59
                JSR     sub_DC64
                LDY     #$E
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     Pointer
                CLC
                ADC     #$14
                BCC     loc_DBED
                LDA     #$FF

loc_DBED:
                LDY     #3
                JSR     sub_DC3F
                LDA     #$84
                JSR     sub_DC38
                LDA     byte_28
                CMP     #3
                BCS     loc_DC0F
                LDY     #$F
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     Pointer
                LSR     A
                CLC
                LDY     #5
                JSR     sub_DC3F
                LDA     #$85
                JSR     sub_DC38

loc_DC0F:
                CLC
                RTS
; End of function sub_DB6C


; =============== S U B R O U T I N E =======================================


sub_DC11:
    .importzp byte_4C, byte_4D

                CLC
                LDA     byte_4C
                ADC     $7400,X
                STA     $7400,X
                LDA     byte_4D
                ADC     $7401,X
                STA     $7401,X
                LDA     #0
                ADC     $7402,X
                STA     $7402,X
                BCC     locret_DC37
                LDA     #$FF
                STA     $7400,X
                STA     $7401,X
                STA     $7402,X

locret_DC37:
                RTS
; End of function sub_DC11


; =============== S U B R O U T I N E =======================================


sub_DC38:
    .importzp pCharacter

                LDX     pCharacter+1
                BEQ     locret_DC70
                JMP     sub_17A3F8
; End of function sub_DC38


; =============== S U B R O U T I N E =======================================


sub_DC3F:
                CLC
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ROL     A
                STA     Pointer+1
                SEC
                LDA     Pointer
                SBC     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                TAX
                INY
                LDA     Pointer+1
                SBC     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BEQ     loc_DC5C
                LDX     #8
                BCS     loc_DC5C
                LDX     #1

loc_DC5C:
                DEY
                TXA
                ASL     A
                JSR     sub_DC71
                STA     pCharacter+1
; End of function sub_DC3F


; =============== S U B R O U T I N E =======================================


sub_DC64:
                CLC
                ADC     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                INY
                LDA     #0
                ADC     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000

locret_DC70:
                RTS
; End of function sub_DC64


; =============== S U B R O U T I N E =======================================


sub_DC71:
                CMP     #$10
                BCC     loc_DC77
                LDA     #$10

loc_DC77:
                TAX
                JSR     sub_F1ED
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                RTS
; End of function sub_DC71


; =============== S U B R O U T I N E =======================================


sub_DC87:
                LDA     byte_21
                BNE     locret_DCCC
                JSR     sub_DCDF
                LDY     #2
                LDA     (pDist),Y
                BEQ     locret_DCCC
                PHA
                LDX     #$C0

loc_DC97:
                STX     byte_29
                JSR     sub_DCE6
                PLA
                PHA
                TAY
                LDA     (pDist),Y
                LDY     #$10
                CMP     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BCS     loc_DCC6
                JSR     sub_DCCD
                AND     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BNE     loc_DCC6
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_DCC6
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                ORA     byte_EC5D,X
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                LDA     #9
                STA     $7F1
                LDA     #$83
                JSR     sub_17A3F8

loc_DCC6:
                LDX     byte_29
                INX
                BNE     loc_DC97
                PLA

locret_DCCC:
                RTS
; End of function sub_DC87


; =============== S U B R O U T I N E =======================================


sub_DCCD:
    .export sub_DCCD

                LDA     byte_29
                CLC
                ADC     #$C0
                ROR     A
                LSR     A
                LSR     A
                TAY
                LDA     byte_29
                AND     #7
                TAX
                LDA     byte_EC5D,X
                RTS
; End of function sub_DCCD


; =============== S U B R O U T I N E =======================================


sub_DCDF:
                CLC
                LDA     byte_28
                ADC     #$B8
                BCC     loc_DCE8
; End of function sub_DCDF


; =============== S U B R O U T I N E =======================================


sub_DCE6:
                LDA     byte_29

loc_DCE8:
                ASL     A
                ROL     pDist+1
                ASL     A
                ROL     pDist+1
                ASL     A
                ROL     pDist+1
                CLC
                ADC     #0
                STA     pDist
                LDA     pDist+1
                AND     #7
                ADC     #$98
                STA     pDist+1
                JMP     sub_DE8B
; End of function sub_DCE6


; =============== S U B R O U T I N E =======================================


sub_DD01:
                JSR     get_characters_buffer
                JSR     sram_write_enable

loc_DD07:
                LDY     #0
                LDA     (Dist),Y
                ASL     A
                BEQ     loc_DD2B
                JSR     sub_E1BE
                BCS     loc_DD1D
                LDY     #0
                LDA     (Dist),Y
                ORA     #$80
                STA     (Dist),Y
                BMI     loc_DD2B

loc_DD1D:
                LDY     #0
                LDA     (Dist),Y
                AND     #$3F ; '?'
                STA     (Dist),Y
                JSR     sub_E0F9
                JSR     sub_DEF9

loc_DD2B:
                JSR     get_dist_addr
                INC     SaveNum
                BNE     loc_DD07
                LDA     byte_20
                BNE     loc_DD54
                LDA     LowGlobalXC0
                AND     #$C0
                ORA     apu_78C
                LDX     HighGlobalX
                STA     $7404           ; CurrentPlayer.PureSave.GlobalX
                STX     $7405           ; CurrentPlayer.PureSave.GlobalX+1
                LDA     LowGlobalYC0
                AND     #$C0
                ORA     $6795
                LDX     HighGlobalY
                STA     $7406           ; CurrentPlayer.PureSave.GlobalY
                STX     $7407           ; CurrentPlayer.PureSave.GlobalY+1

loc_DD54:
                JMP     sram_read_enable
; End of function sub_DD01


; =============== S U B R O U T I N E =======================================


get_characters_buffer:
                LDA     #$80
                LDX     #$67 ; 'g'      ; SRAM19:6780 6780
                STA     Dist
                STX     Dist+1
                LDX     #$FC
                STX     SaveNum
                RTS
; End of function get_characters_buffer


; =============== S U B R O U T I N E =======================================


get_dist_addr:
                CLC
                LDA     Dist
                ADC     #$20 ; ' '
                STA     Dist
                LDA     Dist+1
                ADC     #0
                STA     Dist+1
                RTS
; End of function get_dist_addr


; =============== S U B R O U T I N E =======================================


sub_DD72:
                JSR     sub_DE29
                JSR     sram_write_enable

@next_record:
                JSR     get_source
                JSR     sub_DD88
                JSR     get_msg_dist_addr
                DEC     SaveNum
                BNE     @next_record
                JMP     sram_read_enable
; End of function sub_DD72


; =============== S U B R O U T I N E =======================================


sub_DD88:
    .importzp Source

                LDY     #1
                LDA     MsgNumber
                STA     (Dist),Y
                LDA     ItemCount
                BNE     @item

@no_msg:
                LDY     #0
                STA     (Dist),Y
                RTS
; ---------------------------------------------------------------------------

@item:
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$3F
                BEQ     @no_msg
                JSR     sub_DE13
                LDY     #2
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$3F
                LDY     #$15
                STA     (Dist),Y
                LDY     #4
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #$16
                STA     (Dist),Y
                LDY     #5
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #$17
                STA     (Dist),Y
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$C0
                LDY     #4
                STA     (Dist),Y
                STA     LowGlobalXC0_0
                LDY     #1
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #5
                STA     (Dist),Y
                STA     HighGlobalX_plus2
                LDY     #2
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$C0
                LDY     #6
                STA     (Dist),Y
                STA     MaskORA
                LDY     #3
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #7
                STA     (Dist),Y
                STA     HighGlobalY_plus1_carry
                LDY     #2
                LDA     Source          ; byte_109EAB, byte_109EB3
                STA     (Dist),Y
                INY
                LDA     Source+1        ; byte_109EAB, byte_109EB3
                STA     (Dist),Y
                JSR     get_screen_pointers ; set base address Screen $6000 or $6100
                                        ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset
                LDY     #$11
                LDA     OffScreen
                STA     (Dist),Y
                INY
                LDA     AttributeScr1
                STA     (Dist),Y
                INY
                LDA     AttributeScr1+1
                STA     (Dist),Y
                LDY     #$18
                LDX     #8
                LDA     #0

@clear:
                STA     (Dist),Y
                INY
                DEX
                BNE     @clear
                RTS
; End of function sub_DD88


; =============== S U B R O U T I N E =======================================


sub_DE13:
    .export sub_DE13

                LDY     #0
                STA     (Dist),Y
                ASL     A
                ASL     A
                TAX
                LDY     #8
                LDA     $E107,X             ; stru_E105.value,X
                STA     (Dist),Y
                LDY     #$14
                LDA     $E108,X             ; stru_E105.value+1,X
                STA     (Dist),Y
                RTS
; End of function sub_DE13


; =============== S U B R O U T I N E =======================================


sub_DE29:
                LDA     MsgNumber
                JSR     set_msg_bank
                ASL     A
                TAX
                LDA     $8000,X    ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
                LDA     $8000+1,X  ; 0x1A records
                STA     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                LDA     #2
                STA     ItemCount

loc_DE3E:
                LDA     #0
                LDX     #$68 ; 'h'      ; SRAM19:6800
                STA     Dist
                STX     Dist+1
                LDX     #$28 ; '('
                STX     SaveNum
                RTS
; End of function sub_DE29


; =============== S U B R O U T I N E =======================================


get_source:
                LDY     #1
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                BEQ     @last_record
                STA     Source+1        ; byte_109EAB, byte_109EB3
                DEY
                LDA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                STA     Source          ; byte_109EAB, byte_109EB3
                RTS
; ---------------------------------------------------------------------------

@last_record:
                STA     ItemCount
                RTS
; End of function get_source


; =============== S U B R O U T I N E =======================================


get_msg_dist_addr:
                CLC
                LDA     MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
                ADC     ItemCount
                STA     MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
                LDA     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                ADC     #0
                STA     MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
                JMP     get_dist_addr
; End of function get_msg_dist_addr


; =============== S U B R O U T I N E =======================================


set_msg_bank:
    .export set_msg_bank

                CMP     #$2B
                BCC     @bank11         ; A < 2B; C = 0
                LDX     #$12            ; BANK12:8000
                SBC     #$2B            ; A -= 2B + C
                                        ; get the index of the text in the memory bank
                BCS     @set_bank       ; A > 2B

@bank11:
                CMP     #$1A
                BCC     @bank10         ; A < 1A; C = 0
                LDX     #$11            ; BANK $11 $8000
                SBC     #$1A            ; get the index of the text in the memory bank
                BCS     @set_bank

@bank10:
                LDX     #$10            ; BANK10:8000

@set_bank:                              ; set_msg_bank+12↑j
                PHA                     ; save text index into the stack
                TXA
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                RTS
; End of function set_msg_bank


; =============== S U B R O U T I N E =======================================


sub_DE8B:
    .export sub_DE8B

                LDX     #6
                LDA     #0
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_DE8B              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_DE92:
                LDX     #6
                LDA     #0
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_DE92              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_DE99:
                JSR     sub_DE29
                JSR     sram_write_enable

loc_DE9F:
                JSR     get_source
                LDY     #1
                LDA     (Dist),Y
                CMP     MsgNumber
                BEQ     loc_DEB9
                LDY     #0
                LDA     (Dist),Y
                ASL     A
                BEQ     loc_DEB6
                JSR     sub_E1BE
                BCS     loc_DECF

loc_DEB6:
                JSR     sub_DD88

loc_DEB9:
                LDY     #0
                LDA     (Dist),Y
                ASL     A
                BEQ     loc_DED7
                JSR     sub_E1BE
                BCS     loc_DECF
                LDY     #0
                LDA     (Dist),Y
                ORA     #$80
                STA     (Dist),Y
                BMI     loc_DED7

loc_DECF:
                LDY     #0
                LDA     (Dist),Y
                AND     #$3F ; '?'
                STA     (Dist),Y

loc_DED7:
                JSR     get_msg_dist_addr
                DEC     SaveNum
                BNE     loc_DE9F
                JSR     loc_DE3E

loc_DEE1:
                LDY     #0
                LDA     (Dist),Y
                BEQ     loc_DEEF
                BMI     loc_DEEF
                JSR     sub_E0F9
                JSR     sub_DEF9

loc_DEEF:
                JSR     get_dist_addr
                DEC     SaveNum
                BNE     loc_DEE1
                JMP     sram_read_enable
; End of function sub_DE99


; =============== S U B R O U T I N E =======================================


sub_DEF9:
    .importzp FieldPosition, CursorMode, byte_3A, byte_3B, byte_3C, byte_3D

                LDY     #$11
                LDA     (Dist),Y
                STA     pDist+1
                INY
                LDA     (Dist),Y
                STA     FieldPosition
                INY
                LDA     (Dist),Y
                STA     CursorMode
                LDY     #0
                LDA     (Dist),Y
                BPL     loc_DF12
                JMP     loc_DFAF
; ---------------------------------------------------------------------------

loc_DF12:
                CLC
                LDA     LowGlobalXC0
                ADC     #$60 ; '`'
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
                LDY     #8
                LDA     Pointer+1
                AND     #4
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     (Dist),Y
                STA     (Dist),Y
                INY
                LDA     pTileID+1
                AND     #4
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     (Dist),Y
                STA     (Dist),Y
                INY
                LDA     Pointer
                LSR     Pointer+1
                ROR     A
                LSR     Pointer+1
                ROR     A
                STA     (Dist),Y
                INY
                LDA     pTileID
                LSR     pTileID+1
                ROR     A
                LSR     pTileID+1
                ROR     A
                STA     (Dist),Y
                LDA     LowGlobalY3F
                BMI     loc_DFB8
                LDY     #4
                LDA     byte_3A
                STA     (Dist),Y
                INY
                LDA     byte_3B
                STA     (Dist),Y
                LDY     #6
                LDA     byte_3C
                STA     (Dist),Y
                INY
                LDA     byte_3D
                STA     (Dist),Y
                LDY     #$11
                LDA     OffScreen
                STA     (Dist),Y
                INY
                LDA     AttributeScr1
                STA     (Dist),Y
                INY
                LDA     AttributeScr1+1
                STA     (Dist),Y
                LDY     OffScreen
                LDA     SaveNum
                STA     (AttributeScr1),Y

loc_DFAF:
                LDY     pDist+1
                LDA     SaveNum
                EOR     (FieldPosition),Y
                BEQ     loc_DFBC
                RTS
; ---------------------------------------------------------------------------

loc_DFB8:
                LDY     pDist+1
                LDA     SaveNum

loc_DFBC:
                STA     (FieldPosition),Y
                RTS
; End of function sub_DEF9


; =============== S U B R O U T I N E =======================================


sub_DFBF:
                LDY     #$11
                LDA     (Dist),Y
                STA     OffScreen
                INY
                LDA     (Dist),Y
                STA     AttributeScr1
                INY
                LDA     (Dist),Y
                STA     AttributeScr1+1
                LDA     #0
                LDY     OffScreen
                STA     (AttributeScr1),Y
                LDY     #0
                STA     (Dist),Y
                RTS
; End of function sub_DFBF


; =============== S U B R O U T I N E =======================================


sub_DFDA:
    .importzp byte_E3

                LDA     $761F           ; CurrentGame + GAME_SAVE::field_21F
                LSR     A
                LDA     #$80
                LDX     #$67
                LDY     #$2C
                BCC     loc_DFEC
                LDA     #0
                LDX     #$68
                LDY     #$28

loc_DFEC:
                STA     Dist
                STX     Dist+1
                STY     SaveNum
                LDA     #$18
                STA     byte_E3
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::Tiles
                LDX     #8
                JSR     sram_write_enable

loc_E000:
                LDY     #0
                LDA     ($30),Y
                BEQ     loc_E04F
                BMI     loc_E04F
                LDY     #8
                LDA     ($30),Y
                AND     #$3F
                BEQ     loc_E04F
                LDY     #$14
                LDA     ($30),Y
                AND     #$10
                BEQ     loc_E01B
                TXA
                LDX     #0

loc_E01B:
                STA     ItemCount
                LDY     #$10
                TXA
                STA     ($30),Y
                LDY     #8

loc_E024:
                LDA     (Dist),Y
                STA     SpriteTable,X
                INX
                INY
                CPY     #$E
                BCC     loc_E024
                CLC
                LDA     OAM_Cache + OAM_TILE::Attr+$F8,X
                AND     #$40
                BEQ     loc_E039
                LDA     #4

loc_E039:
                ADC     (Dist),Y
                STA     SpriteTable,X
                INX
                INY
                LDA     #0
                ADC     (Dist),Y
                STA     SpriteTable,X
                INX
                BEQ     loc_E062
                LDA     ItemCount
                BEQ     loc_E04F
                TAX

loc_E04F:
                JSR     get_dist_addr
                DEC     SaveNum
                BNE     loc_E000

loc_E056:
                LDA     #0
                STA     SpriteTable,X
                CLC
                TXA
                ADC     #8
                TAX
                BCC     loc_E056

loc_E062:
                JMP     sram_read_enable
; End of function sub_DFDA


; =============== S U B R O U T I N E =======================================


sub_E065:
                LDX     #0

loc_E067:
                LDA     SpriteTable,X
                AND     #$40
                BEQ     loc_E07F
                SEC
                LDA     SpriteTable + ANIM_SPRITE::pFrame,X
                SBC     #4
                STA     SpriteTable + ANIM_SPRITE::pFrame,X
                LDA     SpriteTable + ANIM_SPRITE::pFrame+1,X
                SBC     #0
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X

loc_E07F:
                CLC
                TXA
                ADC     #8
                TAX
                BCC     loc_E067
                RTS
; End of function sub_E065


; =============== S U B R O U T I N E =======================================


sub_E087:
    .export sub_E087

                JSR     get_characters_buffer
                LDX     #4
                STX     SaveNum
                LDA     #0
                STA     AddrForJmp
                LDX     #8

loc_E094:
                LDY     #0
                LDA     (Dist),Y
                BEQ     loc_E0E3
                BMI     loc_E0E3
                LDY     AddrForJmp
                LDA     (Pointer),Y
                STA     SpriteTable + ANIM_SPRITE::PosX,X
                INY
                LDA     (Pointer),Y
                STA     SpriteTable + ANIM_SPRITE::PosY,X
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                INY
                CLC
                LDA     (Pointer),Y
                LDY     #$16
                ADC     (Dist),Y
                STA     SpriteTable + ANIM_SPRITE::pFrame,X
                INY
                LDA     #0
                ADC     (Dist),Y
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F ; '?'
                ASL     A
                ASL     AddrForJmp+1
                ROR     A
                STA     SpriteTable,X
                LDA     #$70 ; 'p'
                ASL     AddrForJmp+1
                ROR     A
                STA     SpriteTable + ANIM_SPRITE::TileID,X
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                CLC
                TXA
                ADC     #8
                TAX

loc_E0E3:
                CLC
                LDA     #4
                ADC     AddrForJmp
                STA     AddrForJmp
                JSR     get_dist_addr
                DEC     SaveNum
                BNE     loc_E094
                RTS
; End of function sub_E087


; =============== S U B R O U T I N E =======================================


get_save_field:
    .export get_save_field

                AND     #$3F
                TAX
                LDA     $7400,X
                RTS
; End of function get_save_field


; =============== S U B R O U T I N E =======================================


sub_E0F9:
                ASL     A
                ASL     A
                TAX
                LDA     $E106,X            ; stru_E105.subroutine+1,X
                PHA
                LDA     $E105,X            ;stru_E105,X
                PHA
                RTS
; End of function sub_E0F9

; ---------------------------------------------------------------------------
stru_E105:      .word nullsub_3-1, 0
                .word sub_E681-1, $8800
                .word sub_E681-1, $8800
                .word sub_E6CF-1, $8800
                .word sub_E678-1, $800
                .word nullsub_3-1, 0
                .word nullsub_3-1, 0
                .word sub_E83F-1, $A604
                .word sub_E96C-1, $6004
                .word sub_EB3A-1, $2009
                .word sub_EB92-1, $2009
                .word loc_E8DE-1, $2009
                .word sub_E905-1, $6004
                .word sub_EA38-1, $2009
                .word sub_EAC5-1, $2009
                .word sub_EBCA-1, $2004
                .word sub_E7F5-1, $E604
                .word loc_E7CD-1, $E604
                .word loc_E7BE-1, $E604
                .word loc_E814-1, $E604
                .word sub_E808-1, $E604
                .word loc_E7C7-1, $E604
                .word sub_E7B8-1, $E604
                .word sub_E80E-1, $E604
                .word loc_E720-1, $C400
                .word loc_E720-1, $C604
                .word loc_E720-1, $4609
                .word loc_E720-1, $4400
                .word sub_E71A-1, $C400
                .word sub_E71A-1, $C604
                .word sub_E71A-1, $4609
                .word sub_E71A-1, $4400
                .word sub_E756-1, $8804
                .word sub_E6F1-1, $C604
                .word loc_E7BE-1, $E602
                .word loc_E720-1, $560A
                .word loc_E720-1, $5604
                .word loc_E720-1, $C608
                .word sub_E788-1, $A604
                .word sub_E6D9-1, $C604
                .word sub_E8D2-1, $4609
                .word sub_E661-1, $4500
                .word loc_E669-1, $4500
                .word loc_E8F5-1, $C60A
                .word sub_E8E8-1, $4609
                .word sub_E71A-1, $4604

nullsub_3:
    RTS

; =============== S U B R O U T I N E =======================================


sub_E1BE:
                LDY     #4
                LDA     (Dist),Y
                STA     byte_3A
                INY
                LDA     (Dist),Y
                STA     byte_3B
                LDY     #6
                LDA     (Dist),Y
                STA     byte_3C
                INY
                LDA     (Dist),Y
                STA     byte_3D

loc_E1D4:
                SEC
                LDA     byte_3C
                SBC     LowGlobalYC0
                STA     pTileID
                LDA     byte_3D
                SBC     HighGlobalY
                STA     pTileID+1
                SEC
                LDA     #$C0
                SBC     pTileID
                LDA     #3
                SBC     pTileID+1
                BCC     locret_E20E
                LDA     LowGlobalXC0
                SBC     #$40 ; '@'
                STA     Pointer
                LDA     HighGlobalX
                SBC     #0
                STA     Pointer+1
                SEC
                LDA     byte_3A
                SBC     Pointer
                STA     Pointer
                LDA     byte_3B
                SBC     Pointer+1
                STA     Pointer+1
                SEC
                LDA     #$80
                SBC     Pointer
                LDA     #4
                SBC     Pointer+1

locret_E20E:
                RTS
; End of function sub_E1BE


; =============== S U B R O U T I N E =======================================


sub_E20F:
    .export sub_E20F
    .importzp byte_3F

                JSR     get_characters_buffer
                LDY     #$15
                LDA     (Dist),Y
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     byte_EBF1,X
                ASL     A
                TAX
                STA     byte_3F
                LDY     #$11
                LDA     word_EBF3+1,X
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                CLC
                ADC     (Dist),Y
                STA     OffScreen
                INY
                LDA     (Dist),Y
                STA     AttributeScr1
                INY
                LDA     (Dist),Y
                STA     AttributeScr1+1
                CLC
                LDA     OffScreen
                ADC     word_EBF3,X
                TAX
                EOR     OffScreen
                AND     #$F0
                BEQ     loc_E258
                LDA     OffScreen
                AND     #$F0
                STA     OffScreen
                TXA
                AND     #$F
                ORA     OffScreen
                TAX
                LDA     AttributeScr1+1
                EOR     #1
                STA     AttributeScr1+1

loc_E258:
                STX     OffScreen
                JSR     sub_E275

loc_E25D:
                LDX     Source          ; byte_109EAB, byte_109EB3
                LDY     Source+1        ; byte_109EAB, byte_109EB3
                STX     Dist
                STY     Dist+1
                RTS
; End of function sub_E20F


; =============== S U B R O U T I N E =======================================


sub_E266:
    .export sub_E266

                LDA     byte_21
                AND     #$7F
                JSR     loc_E286
                ASL     byte_21
                LDX     #0
                STX     byte_21
                BEQ     loc_E25D
; End of function sub_E266


; =============== S U B R O U T I N E =======================================


sub_E275:
                LDY     OffScreen
                LDA     (AttributeScr1),Y
                BEQ     locret_E2A1
                BMI     loc_E282
                SEC
                LDA     #$28
                SBC     (AttributeScr1),Y

loc_E282:
                CLC
                ADC     #4
                TAX

loc_E286:
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDA     #0
                LSR     Source+1        ; byte_109EAB, byte_109EB3
                ROR     A
                LSR     Source+1        ; byte_109EAB, byte_109EB3
                ROR     A
                LSR     Source+1        ; byte_109EAB, byte_109EB3
                ROR     A
                ADC     #$80
                STA     Source          ; byte_109EAB, byte_109EB3
                LDA     Source+1        ; byte_109EAB, byte_109EB3
                ADC     #$67 ; 'g'
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDY     #$14
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3

locret_E2A1:
                RTS
; End of function sub_E275


; =============== S U B R O U T I N E =======================================


sub_E2A2:
    .export sub_E2A2, loc_E2BF, loc_E2C2

                LDY     #$14
                LDA     (Dist),Y
                AND     #$20
                BEQ     locret_E2A1
                JSR     sram_write_enable
                CLC
                LDA     byte_3F
                ADC     #$20
                AND     #$38
                TAX
                LDY     #$15
                LSR     A
                LSR     A
                LSR     A
                STA     (Dist),Y
                JSR     sram_read_enable

loc_E2BF:
                LDA     byte_EBF1,X

loc_E2C2:
                CLC
                LDY     #$16
                ADC     (Dist),Y
                STA     Pointer
                LDA     #0
                INY
                ADC     (Dist),Y
                STA     Pointer+1
                LDA     #$15
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDY     #$10
                LDA     (Dist),Y
                TAY
                LDA     SpriteTable,Y
                AND     #$3F
                STA     byte_3F
                BEQ     locret_E2A1
                LDA     Pointer
                STA     SpriteTable + ANIM_SPRITE::pFrame,Y
                LDA     Pointer+1
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,Y
                LDA     SpriteTable + ANIM_SPRITE::PosX,Y
                STA     pDist
                LDA     SpriteTable + ANIM_SPRITE::PosY,Y
                STA     pDist+1
                LDA     SpriteTable + ANIM_SPRITE::TileID,Y
                ASL     A
                ASL     A
                TAX
                LDY     #0
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1
                INY
                LDA     (Pointer),Y
                STA     FieldPosition
                INY
                LDA     (Pointer),Y
                STA     CursorMode
                SEC

loc_E315:
                BIT     FlagClearOAM300
                BVS     loc_E315
                ROR     FlagClearOAM300
                LDY     #0

loc_E31D:
                LDA     OAM_Cache,X
                CMP     #$F0
                BEQ     loc_E365
                CLC
                LDA     (pTileID),Y
                ADC     pDist
                STA     OAM_Cache + OAM_TILE::PosX,X
                INY
                CLC
                LDA     (pTileID),Y
                ADC     pDist+1
                STA     OAM_Cache,X
                INY
                LDA     (pTileID),Y
                STA     Pointer
                LDA     CursorMode
                LSR     Pointer
                BCC     loc_E342
                LSR     A
                LSR     A

loc_E342:
                LSR     Pointer
                BCC     loc_E34A
                LSR     A
                LSR     A
                LSR     A
                LSR     A

loc_E34A:
                AND     #3
                ASL     Pointer
                ASL     Pointer
                ORA     Pointer
                STA     OAM_Cache + OAM_TILE::Attr,X
                INY
                CLC
                AND     #$10
                BEQ     loc_E35D
                LDA     FieldPosition

loc_E35D:
                ADC     (pTileID),Y
                STA     OAM_Cache + OAM_TILE::TileID,X
                INY
                BNE     loc_E369

loc_E365:
                INY
                INY
                INY
                INY

loc_E369:
                INX
                INX
                INX
                INX
                BEQ     loc_E373
                DEC     byte_3F
                BNE     loc_E31D

loc_E373:
                ASL     FlagClearOAM300
                RTS
; End of function sub_E2A2


; =============== S U B R O U T I N E =======================================


sub_E376:
                LDA     HighGlobalY_plus1_carry
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                AND     #$E
                ORA     #1
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     HighGlobalY_plus1_carry
                LSR     A
                LSR     A
                AND     #7
                STA     pDist+1
                LDA     HighGlobalX_plus2
                AND     #$FC
                CLC
                STA     pDist
                LDA     pDist+1
                ADC     #$98
                STA     pDist+1
                LDY     #1
                LDA     (pDist),Y
                AND     #$3F ; '?'
                LDY     #1
                CMP     (Dist),Y
                BNE     loc_E3AD
                LDA     MsgNumber
                JSR     set_msg_bank
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E3AD:
                LDA     MsgNumber
                JSR     set_msg_bank
                SEC
                RTS
; End of function sub_E376


; =============== S U B R O U T I N E =======================================


bank14_8000_ex:
                LDA     #$14
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     AttributeScr1
                STA     Screen
                LDA     LowGlobalY3F
                ASL     A
                TAX
                LDA     ReturnTab+1,X
                PHA
                LDA     ReturnTab,X
                PHA
                RTS
; End of function bank14_8000_ex

; ---------------------------------------------------------------------------
ReturnTab:      .word sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
                .word loc_E4DC-1, loc_E403-1, loc_E466-1, loc_E490-1

; =============== S U B R O U T I N E =======================================


sub_E3DE:
                JSR     sub_E506
                TAX
                AND     #$30
                BEQ     loc_E3EF
                AND     #$20
                BEQ     loc_E400
                TXA
                AND     #$1C
                BNE     loc_E400

loc_E3EF:
                LDX     #$FF
                LDY     #0
                JSR     sub_E510
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E425
                TXA
                AND     #3
                BEQ     loc_E425

loc_E400:
                JMP     loc_E490
; ---------------------------------------------------------------------------

loc_E403:
                JSR     sub_E506
                TAX
                AND     #$30
                BEQ     loc_E414
                AND     #$20
                BEQ     loc_E400
                TXA
                AND     #$13
                BNE     loc_E400

loc_E414:
                LDX     #1
                LDY     #0
                JSR     sub_E510
                TAX
                AND     #$20
                BEQ     loc_E425
                TXA
                AND     #$C
                BNE     loc_E400

loc_E425:
                JMP     loc_E497
; End of function sub_E3DE


; =============== S U B R O U T I N E =======================================


sub_E428:
                JSR     sub_E506
                AND     #$16
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     sub_E510
                AND     #9
                BNE     loc_E490
                BEQ     loc_E497

loc_E43C:
                JSR     sub_E506
                AND     #$14
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     sub_E510
                AND     #8
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     sub_E510
                AND     #2
                BNE     loc_E490
                LDX     #$FF
                LDY     #$10
                JSR     sub_E510
                AND     #1
                BNE     loc_E490
                BEQ     loc_E497

loc_E466:
                JSR     sub_E506
                AND     #$12
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     sub_E510
                AND     #1
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     sub_E510
                AND     #4
                BNE     loc_E490
                LDX     #1
                LDY     #$10
                JSR     sub_E510
                AND     #8
                BNE     loc_E490
                BEQ     loc_E497

loc_E490:
                LDA     MsgNumber
                JSR     set_msg_bank
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_E497:
                LDA     MsgNumber
                JSR     set_msg_bank
                CLC
                RTS
; End of function sub_E428


; =============== S U B R O U T I N E =======================================


sub_E49E:
                JSR     sub_E506
                AND     #$19
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     sub_E510
                AND     #6
                BNE     loc_E490
                BEQ     loc_E497
; End of function sub_E49E


; =============== S U B R O U T I N E =======================================


sub_E4B2:
                JSR     sub_E506
                AND     #$18
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     sub_E510
                AND     #4
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     sub_E510
                AND     #1
                BNE     loc_E490
                LDX     #$FF
                LDY     #$F0
                JSR     sub_E510
                AND     #2
                BNE     loc_E490
                BEQ     loc_E497

loc_E4DC:
                JSR     sub_E506
                AND     #$11
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     sub_E510
                AND     #2
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     sub_E510
                AND     #8
                BNE     loc_E490
                LDX     #1
                LDY     #$F0
                JSR     sub_E510
                AND     #4
                BNE     loc_E490
                BEQ     loc_E497
; End of function sub_E4B2


; =============== S U B R O U T I N E =======================================


sub_E506:
                LDX     #0
                LDY     #0
                JSR     sub_E510
                STA     byte_3F
                RTS
; End of function sub_E506


; =============== S U B R O U T I N E =======================================


sub_E510:
                CLC
                TYA
                ADC     OffScreen
                STA     Screen+1
                CLC
                TXA
                ADC     Screen+1
                TAY
                EOR     Screen+1
                AND     #$F0
                BEQ     loc_E52F
                LDA     Screen+1
                AND     #$F0
                STA     Screen+1
                TYA
                AND     #$F
                ORA     Screen+1
                TAY
                LDA     #1

loc_E52F:
                EOR     AttributeScr1+1
                CLC
                ADC     #$FC
                STA     Screen+1
                LDA     #0
                STA     AttributeScr0
                LDA     (Screen),Y
                BMI     loc_E541
                LDA     BankNum0
; ---------------------------------------------------------------------------
                .byte $2C ; ,
; ---------------------------------------------------------------------------

loc_E541:
                LDA     BankNum1
                LSR     A
                ROR     AttributeScr0
                ADC     #$80
                STA     AttributeScr0+1
                LDA     (Screen),Y
                AND     #$7F
                TAY
                LDA     (AttributeScr0),Y
                RTS
; End of function sub_E510


; =============== S U B R O U T I N E =======================================


sub_E552:
                JSR     sub_E607
                LDY     #$C
                LDA     word_EBF3,X
                ASL     A
                STA     (Dist),Y
                INY
                LDA     word_EBF3+1,X
                ASL     A
                STA     (Dist),Y
                JMP     loc_E577
; End of function sub_E552


; =============== S U B R O U T I N E =======================================


sub_E567:
                JSR     sub_E607
                LDY     #$C
                LDA     word_EBF3,X
                STA     (Dist),Y
                INY
                LDA     word_EBF3+1,X
                STA     (Dist),Y

loc_E577:
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F ; '?'
                ORA     #$40 ; '@'
                STA     Pointer
                LDA     LowGlobalY3F
                LSR     A
                AND     #$40 ; '@'
                EOR     Pointer
                STA     (Dist),Y
                LDY     #9
                LDA     #$38 ; '8'
                STA     (Dist),Y
                LDY     #$15
                LDA     (Dist),Y
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     byte_EBF1,X

loc_E59B:
                CLC
                LDY     #$16
                ADC     (Dist),Y
                LDY     #$E
                STA     (Dist),Y
                LDA     #0
                LDY     #$17
                ADC     (Dist),Y
                LDY     #$F
                STA     (Dist),Y
                RTS
; End of function sub_E567


; =============== S U B R O U T I N E =======================================


sub_E5AF:
                JSR     sub_E5EF
                ASL     byte_3A
                ROL     byte_3B
                ASL     byte_3C
                ROL     byte_3D
                JMP     loc_E5C0
; End of function sub_E5AF


; =============== S U B R O U T I N E =======================================


sub_E5BD:
                JSR     sub_E5EF

loc_E5C0:
                CLC
                LDY     #4
                LDA     (Dist),Y
                ADC     byte_3A
                STA     byte_3A
                AND     #$C0
                STA     LowGlobalXC0_0
                INY
                LDA     (Dist),Y
                ADC     byte_3B
                STA     byte_3B
                STA     HighGlobalX_plus2
                CLC
                LDY     #6
                LDA     (Dist),Y
                ADC     byte_3C
                STA     byte_3C
                AND     #$C0
                STA     MaskORA
                INY
                LDA     (Dist),Y
                ADC     byte_3D
                STA     byte_3D
                STA     HighGlobalY_plus1_carry
                JMP     get_screen_pointers ; set base address Screen $6000 or $6100
; End of function sub_E5BD              ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset

; =============== S U B R O U T I N E =======================================


sub_E5EF:
                JSR     sub_E607
                LDA     byte_EBED,X
                STA     byte_3A
                LDA     byte_EBEE,X
                STA     byte_3B
                LDA     byte_EBEF,X
                STA     byte_3C
                LDA     byte_EBF0,X
                STA     byte_3D
                RTS
; End of function sub_E5EF


; =============== S U B R O U T I N E =======================================


sub_E607:
                LDA     LowGlobalY3F
                ASL     A
                ASL     A
                ASL     A
                TAX
                RTS
; End of function sub_E607


; =============== S U B R O U T I N E =======================================


sub_E60E:
                JSR     sub_E655
                LDY     #$14
                LDA     (Dist),Y
                AND     #$F
                TAY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                INY
                CMP     #5
                BEQ     loc_E625
                CMP     #6
                BEQ     loc_E62F
                BNE     loc_E62D

loc_E625:
                JSR     loc_E646
                AND     byte_EC5D,X
                BNE     loc_E637

loc_E62D:
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E62F:
                JSR     loc_E646
                AND     byte_EC5D,X
                BNE     loc_E62D

loc_E637:
                LDY     #0
                LDA     (Dist),Y
                ORA     #$80
                STA     (Dist),Y
                SEC
                RTS
; End of function sub_E60E


; =============== S U B R O U T I N E =======================================


sub_E641:
    .export sub_E641, loc_E646

                JSR     sub_E655
                LDY     #4

loc_E646:
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #7
                TAX
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     $7600,Y
                RTS
; End of function sub_E641


; =============== S U B R O U T I N E =======================================


sub_E655:
    .export sub_E655

                LDY     #2
                LDA     (Dist),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                INY
                LDA     (Dist),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                RTS
; End of function sub_E655


; =============== S U B R O U T I N E =======================================


sub_E661:
                JSR     sub_E641
                ORA     byte_EC5D,X
                BNE     loc_E672

loc_E669:
                JSR     sub_E641
                ORA     byte_EC5D,X
                EOR     byte_EC5D,X

loc_E672:
                STA     $7600,Y
                JMP     loc_E720
; End of function sub_E661


; =============== S U B R O U T I N E =======================================


sub_E678:
                LDY     #$1B
                LDA     (Dist),Y
                BNE     loc_E694
                JMP     sub_E72E
; End of function sub_E678


; =============== S U B R O U T I N E =======================================


sub_E681:
                LDY     #$15
                LDA     (Dist),Y
                ORA     #$40
                LDY     #$1B
                EOR     (Dist),Y
                AND     #$4F
                BEQ     loc_E694
                JSR     sub_E72E
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E694:
                JSR     sub_E655
                LDY     #4
                JSR     sub_E6A1
                JSR     sub_E72E
                SEC
                RTS
; End of function sub_E681


; =============== S U B R O U T I N E =======================================


sub_E6A1:
    .export sub_E6A1, loc_E6A9

                LDA     Source          ; byte_109EAB, byte_109EB3
                STA     Pointer
                LDA     Source+1        ; byte_109EAB, byte_109EB3
                STA     Pointer+1

loc_E6A9:
                SEC
                LDA     (Pointer),Y
                SBC     #0
                STA     $7404           ; CurrentGame + GAME_SAVE::PureSave.GlobalX
                INY
                LDA     (Pointer),Y
                SBC     #2
                STA     $7405           ; CurrentGame + GAME_SAVE::PureSave.GlobalX+1
                INY
                SEC
                LDA     (Pointer),Y
                SBC     #$C0
                STA     $7406           ; CurrentGame + GAME_SAVE::PureSave.GlobalY
                INY
                LDA     (Pointer),Y
                SBC     #1
                STA     $7407           ; CurrentGame + GAME_SAVE::PureSave.GlobalY+1
                LDA     #$40 ; '@'
                STA     byte_20
                RTS
; End of function sub_E6A1


; =============== S U B R O U T I N E =======================================


sub_E6CF:
    .importzp FuncID

                JSR     sub_E681
                BCC     @exit
                LDA     #1              ; sub_13BD0D
                STA     FuncID          ; ID from table BANK13:BCFD (RoutineTable)

@exit:
                RTS
; End of function sub_E6CF


; =============== S U B R O U T I N E =======================================


sub_E6D9:
                JSR     sub_E60E
                BCC     loc_E6DF
                RTS
; ---------------------------------------------------------------------------

loc_E6DF:
                JSR     sub_E7FC
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                CMP     #8
                BCS     loc_E6FE
                JSR     sub_E7DC
                JMP     sub_E73D
; End of function sub_E6D9


; =============== S U B R O U T I N E =======================================


sub_E6F1:
                JSR     sub_E60E
                BCC     loc_E6F7
                RTS
; ---------------------------------------------------------------------------

loc_E6F7:
                JSR     sub_E7FC
                AND     #$F0
                BNE     loc_E720

loc_E6FE:
                LDY     #$C
                LDA     #$3D
                STA     (Dist),Y
                INY
                LDA     #$EC
                STA     (Dist),Y
                JSR     sub_E73D
                LDY     #9
                LDA     #$78
                STA     (Dist),Y
                LDA     #0
                JSR     loc_E59B
                JMP     sub_E72E
; End of function sub_E6F1


; =============== S U B R O U T I N E =======================================


sub_E71A:
                JSR     sub_E60E
                BCC     loc_E720
                RTS
; ---------------------------------------------------------------------------

loc_E720:
                JSR     sub_E733
                JSR     sub_E73D
                JSR     sub_E746
                LDA     #0
                JSR     loc_E59B
; End of function sub_E71A


; =============== S U B R O U T I N E =======================================


sub_E72E:
                LDA     #$88
                STA     LowGlobalY3F
                RTS
; End of function sub_E72E


; =============== S U B R O U T I N E =======================================


sub_E733:
                LDA     #0
                LDY     #$C
                STA     (Dist),Y
                INY
                STA     (Dist),Y
                RTS
; End of function sub_E733


; =============== S U B R O U T I N E =======================================


sub_E73D:
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F
                STA     (Dist),Y
                RTS
; End of function sub_E73D


; =============== S U B R O U T I N E =======================================


sub_E746:
                LDY     #9
                LDA     #$38
                STA     (Dist),Y
                RTS
; End of function sub_E746


; =============== S U B R O U T I N E =======================================


sub_E74D:
                LDY     #8
                LDA     (Dist),Y
                ORA     #$40
                STA     (Dist),Y
                RTS
; End of function sub_E74D


; =============== S U B R O U T I N E =======================================


sub_E756:
                JSR     sub_E733
                JSR     sub_E73D
                JSR     sub_E746
                JSR     sub_E655
                JSR     sub_E772
                AND     byte_EC5D,X
                BEQ     loc_E76C
                LDA     #4

loc_E76C:
                JSR     loc_E59B
                JMP     sub_E72E
; End of function sub_E756


; =============== S U B R O U T I N E =======================================


sub_E772:
    .export sub_E772

                LDY     #6
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                ASL     A
                LDY     #7
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #7
                TAX
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                ROR     A
                LSR     A
                LSR     A
                TAY
                LDA     $7620,Y
                RTS
; End of function sub_E772


; =============== S U B R O U T I N E =======================================


sub_E788:
                LDY     #$1A
                LDA     ($30),Y
                BNE     loc_E79C
                LDA     #1
                STA     ($30),Y
                LDY     #$15
                LDA     ($30),Y
                EOR     #4
                AND     #$F
                STA     ($30),Y

loc_E79C:
                LDY     #$15
                LDA     ($30),Y
                STA     LowGlobalY3F
                JSR     sub_E5AF
                JSR     loc_E1D4
                BCC     loc_E7B1
                LDA     #$F8
                STA     byte_22
                JMP     sub_E552
; ---------------------------------------------------------------------------

loc_E7B1:
                LDA     #0
                STA     byte_22
                JMP     loc_E965
; End of function sub_E788


; =============== S U B R O U T I N E =======================================


sub_E7B8:
                JSR     sub_E60E
                BCC     loc_E7BE
                RTS
; ---------------------------------------------------------------------------

loc_E7BE:
                JSR     sub_E7FC
                AND     #$E0
                LSR     A
                LSR     A
                BCC     loc_E7D2

loc_E7C7:
                JSR     sub_E60E
                BCC     loc_E7CD
                RTS
; ---------------------------------------------------------------------------

loc_E7CD:
                JSR     sub_E7FC
                AND     #$F8

loc_E7D2:
                LSR     A
                LSR     A
                CMP     #8
                BCS     sub_E7F5
                LDY     #$15
                STA     (Dist),Y
; End of function sub_E7B8


; =============== S U B R O U T I N E =======================================


sub_E7DC:
                STA     LowGlobalY3F
                JSR     sub_E5BD
                JSR     sub_E376
                BCS     sub_E7F5
                JSR     loc_E1D4
                BCC     sub_E7F5
                JSR     sub_E275
                BNE     sub_E7F5
                JSR     bank14_8000_ex
                BCC     loc_E7F9
; End of function sub_E7DC


; =============== S U B R O U T I N E =======================================


sub_E7F5:
                LDA     #$88
                STA     LowGlobalY3F

loc_E7F9:
                JMP     sub_E567
; End of function sub_E7F5


; =============== S U B R O U T I N E =======================================


sub_E7FC:
                LDA     byte_25
                BNE     loc_E803
                JMP     sub_F1ED
; ---------------------------------------------------------------------------

loc_E803:
                PLA
                PLA
                JMP     sub_E7F5
; End of function sub_E7FC


; =============== S U B R O U T I N E =======================================


sub_E808:
                JSR     sub_E60E
                BCC     sub_E7F5
                RTS
; End of function sub_E808


; =============== S U B R O U T I N E =======================================


sub_E80E:
                JSR     sub_E60E
                BCC     loc_E814
                RTS
; ---------------------------------------------------------------------------

loc_E814:
                JSR     sub_E7FC
                AND     #$E0
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                CMP     #8
                BCS     sub_E7F5
                LDY     #$15
                STA     (Dist),Y
                JSR     sub_E7F5
                JMP     sub_E74D
; End of function sub_E80E


; =============== S U B R O U T I N E =======================================


sub_E82B:
                CMP     #0
                BNE     sub_E7F5
                STA     byte_22
                LDY     #$1D
                LDA     (Dist),Y
                AND     #$7F
                PHA
                JSR     sub_DE13
                PLA
                JMP     sub_E0F9
; End of function sub_E82B


; =============== S U B R O U T I N E =======================================


sub_E83F:
                LDY     #$1A
                LDA     (Dist),Y
                BNE     loc_E86B
                LDY     #$1E
                CLC
                LDA     (Dist),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                ADC     #2
                STA     (Dist),Y
                INY
                LDA     (Dist),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                ADC     #0
                STA     (Dist),Y
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CMP     #$10
                BCC     sub_E82B
                LDY     #$19
                STA     (Dist),Y
                LDY     #1
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #$1A

loc_E86B:
                SEC
                SBC     #1
                STA     (Dist),Y
                BNE     loc_E88F
                LDY     #$1E
                LDA     (Dist),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                INY
                LDA     (Dist),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CMP     #$10
                BCS     loc_E88F
                SEC
                LDA     #$28 ; '('
                SBC     SaveNum
                CLC
                ADC     #$84
                STA     byte_21

loc_E88F:
                LDY     #$19
                LDA     (Dist),Y
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E8A2
                LDY     #$1D
                LDA     (Dist),Y
                ASL     A
                ASL     A
                TAY
                LDA     $E107,Y

loc_E8A2:
                LDY     #8
                STA     (Dist),Y
                TXA
                AND     #8
                BNE     loc_E8B2
                LDY     #$15
                TXA
                AND     #7
                STA     (Dist),Y

loc_E8B2:
                TXA
                BMI     loc_E8C1
                PHA
                AND     #7
                STA     LowGlobalY3F
                JSR     sub_E5BD
                PLA
                TAX
                BPL     loc_E8C5

loc_E8C1:
                LDA     #$88
                STA     LowGlobalY3F

loc_E8C5:
                TXA
                AND     #$40
                ASL     A
                ORA     #$70
                ORA     LowGlobalY3F
                STA     byte_22
                JMP     sub_E567
; End of function sub_E83F


; =============== S U B R O U T I N E =======================================


sub_E8D2:
                JSR     sub_E60E
                BCC     loc_E8D8
                RTS
; ---------------------------------------------------------------------------

loc_E8D8:
                JSR     sub_E7F5
                JMP     loc_E8E1
; ---------------------------------------------------------------------------

loc_E8DE:
                JSR     sub_EB92

loc_E8E1:
                JSR     sub_E74D
                LDA     #$74
                BNE     loc_E900
; End of function sub_E8D2


; =============== S U B R O U T I N E =======================================


sub_E8E8:
                JSR     sub_E60E
                BCC     loc_E8EE
                RTS
; ---------------------------------------------------------------------------

loc_E8EE:
                JSR     sub_E7F5
                LDA     #$74
                BNE     loc_E900

loc_E8F5:
                JSR     sub_E60E
                BCC     loc_E8FB
                RTS
; ---------------------------------------------------------------------------

loc_E8FB:
                JSR     sub_E7F5
                LDA     #$72

loc_E900:
                LDX     #1
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_E8E8              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_E905:
    .importzp byte_C, byte_E7, ShiftX, ShiftY

                LDA     byte_23
                CLC
                BNE     loc_E95B
                LDA     LowGlobalY3F
                BMI     loc_E92F
                LDY     #$1D
                LDA     (Dist),Y
                TAX
                LDA     byte_C
                STA     (Dist),Y
                TXA
                LDY     #$15
                STA     (Dist),Y
                STA     byte_C
                LDY     #$19
                LDA     (Dist),Y
                TAX
                LDA     LowGlobalY3F
                STA     (Dist),Y
                TXA
                STA     LowGlobalY3F
                BMI     loc_E92F
                JSR     sub_E5BD

loc_E92F:
                JSR     sub_E567
                JSR     sub_EA24
                LDY     #8
                LDA     (Dist),Y
                AND     #$F
                CMP     #$A
                BEQ     loc_E940
                RTS
; ---------------------------------------------------------------------------

loc_E940:
                LDA     byte_D5
                ASL     A
                AND     #2
                ORA     #$70
                LDX     #1
                JMP     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
; ---------------------------------------------------------------------------

loc_E94C:
                LDA     #$88
                STA     byte_A0
                LDA     #0
                STA     byte_E7
                STA     ShiftX
                STA     ShiftY
                JSR     sub_E733

loc_E95B:
                LDA     #0
                STA     LowGlobalY3F
                STA     byte_23
                LDA     #$10
                BCS     loc_E967

loc_E965:
                LDA     #$80

loc_E967:
                LDY     #0
                STA     (Dist),Y
                RTS
; End of function sub_E905


; =============== S U B R O U T I N E =======================================


sub_E96C:
                LDA     byte_23
                ASL     A
                BNE     loc_E94C
                JSR     sub_E9CD
                BMI     loc_E9A9
                LDY     #$15
                STA     (Dist),Y
                STA     byte_C

loc_E97C:
                STA     LowGlobalY3F
                JSR     sub_E5BD
                LDA     byte_25
                CMP     #$28
                BCS     loc_E9AD
                JSR     sub_E9FA
                BCS     loc_E9A9
                JSR     bank14_8000_ex
                BCS     loc_E9A9
                BIT     byte_3F
                BPL     loc_E9AD
                BVS     loc_E99F
                LDA     LowGlobalY3F
                SBC     #0
                AND     #$F
                BPL     loc_E97C

loc_E99F:
                LDY     #$15
                LDA     #0
                STA     (Dist),Y
                STA     byte_C
                BCC     loc_E9AD

loc_E9A9:
                LDA     #$88
                STA     LowGlobalY3F

loc_E9AD:
                JSR     sub_E567
                JSR     sub_EA24

loc_E9B3:
                LDA     LowGlobalY3F
                STA     byte_A0
                LDY     #9
                LDA     (Dist),Y
                AND     #$40
                ORA     byte_1F
                STA     byte_E7
                LDY     #$C
                LDA     (Dist),Y
                STA     ShiftX
                INY
                LDA     (Dist),Y
                STA     ShiftY
                RTS
; End of function sub_E96C


; =============== S U B R O U T I N E =======================================


sub_E9CD:
                LDA     byte_22
                BEQ     loc_E9E1
                BPL     loc_E9D4
                RTS
; ---------------------------------------------------------------------------

loc_E9D4:
                LDY     #$19
                LDA     (Dist),Y
                TAX
                LDA     byte_22
                STA     (Dist),Y
                TXA
                AND     #$8F
                RTS
; ---------------------------------------------------------------------------

loc_E9E1:
                LDA     ButtonPressed0
                AND     #$F
                TAX
                LDA     byte_D
                BPL     loc_E9F3
                AND     #$F
                CMP     byte_EBDD,X
                BEQ     loc_E9F7
                STA     byte_D

loc_E9F3:
                LDA     byte_EBDD,X
                RTS
; ---------------------------------------------------------------------------

loc_E9F7:
                LDA     #$88
                RTS
; End of function sub_E9CD


; =============== S U B R O U T I N E =======================================


sub_E9FA:
                JSR     sub_E275
                BEQ     loc_EA22
                ASL     A
                LDA     LowGlobalY3F
                AND     #1
                BEQ     loc_EA08
                BCS     loc_EA1C

loc_EA08:
                LDA     byte_F
                BNE     loc_EA1A
                LDY     #$1B
                LDA     LowGlobalY3F
                ORA     #$40
                STA     (Source),Y      ; byte_109EAB, byte_109EB3
                BIT     byte_21
                BMI     loc_EA1A
                STX     byte_21

loc_EA1A:
                BCC     locret_EA23

loc_EA1C:
                LDA     byte_22
                AND     #$10
                BEQ     locret_EA23

loc_EA22:
                CLC

locret_EA23:
                RTS
; End of function sub_E9FA


; =============== S U B R O U T I N E =======================================


sub_EA24:
                JSR     sub_E655
                LDY     #1
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$40
                BEQ     locret_EA37
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F
                STA     (Dist),Y

locret_EA37:
                RTS
; End of function sub_EA24


; =============== S U B R O U T I N E =======================================


sub_EA38:
                LDY     #$1A
                LDA     (Dist),Y
                BNE     loc_EA7C
                LDA     MsgNumber
                JSR     set_msg_bank
                ASL     A
                TAX
                LDA     $8000,X
                STA     Pointer
                LDA     $8001,X
                STA     Pointer+1
                LDY     #$1E
                LDA     (Dist),Y
                ASL     A
                TAY
                LDA     (Pointer),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                INY
                LDA     (Pointer),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDY     #$1F
                LDA     (Dist),Y
                TAY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CMP     #$10
                BCC     loc_EA9B
                PHA
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                TYA
                LDY     #$1F
                STA     (Dist),Y
                LDY     #$19
                PLA
                STA     (Dist),Y
                TXA
                LDY     #$1A

loc_EA7C:
                SEC
                SBC     #1
                STA     (Dist),Y
                LDY     #$19
                LDA     (Dist),Y
                BMI     loc_EABB
                AND     #$F
                STA     LowGlobalY3F
                LDY     #$15
                STA     (Dist),Y
                JSR     sub_E5BD
                JSR     loc_EB0B
                JSR     loc_E59B
                JMP     loc_E9B3
; ---------------------------------------------------------------------------

loc_EA9B:
                CMP     #0
                BNE     loc_EAA1
                STA     byte_23

loc_EAA1:
                INY
                JSR     sub_E6A1
                INY
                TYA
                LDY     #$1F
                STA     (Dist),Y
                LDA     byte_23
                BNE     loc_EABB
                LDA     #$80
                STA     byte_23
                JSR     sub_D9FA
                LDX     #0
                JSR     sub_CDAF

loc_EABB:
                LDA     #$88
                STA     LowGlobalY3F
                JSR     loc_EB0B
                JMP     loc_E9B3
; End of function sub_EA38


; =============== S U B R O U T I N E =======================================


sub_EAC5:
                LDA     LowGlobalY3F
                BMI     sub_EB07
                LDY     #$19
                LDA     (Dist),Y
                TAX
                LDA     LowGlobalY3F
                STA     (Dist),Y
                TXA
                BMI     sub_EB07
                STA     LowGlobalY3F
                LDY     #$15
                EOR     #4
                STA     (Dist),Y
                LDY     #6
                SEC
                LDA     $6786
                SBC     (Dist),Y
                INY
                LDA     $6787
                SBC     (Dist),Y
                LDY     #$14
                LDA     (Dist),Y
                BCS     loc_EAF4
                ORA     #$10
; ---------------------------------------------------------------------------
                .byte $2C
; ---------------------------------------------------------------------------

loc_EAF4:
                AND     #$EF
                STA     (Dist),Y
                JSR     sub_E5BD
                JSR     loc_EB0B
                CPX     #$40
                BCC     loc_EB04
                SBC     #4

loc_EB04:
                JMP     loc_E59B
; End of function sub_EAC5


; =============== S U B R O U T I N E =======================================


sub_EB07:
                LDA     #$88
                STA     LowGlobalY3F

loc_EB0B:
                JSR     sub_E607
                LDY     #$C
                LDA     word_EBF3,X
                STA     (Dist),Y
                INY
                LDA     word_EBF3+1,X
                STA     (Dist),Y
                JSR     sub_E73D
                JSR     sub_E746
                LDA     LowGlobalY3F
                BMI     locret_EB39
                LDY     #$15
                LDA     (Dist),Y
                TAX
                LDA     byte_EC35,X
                TAX
                LDY     #8
                AND     #$40
                ORA     (Dist),Y
                STA     (Dist),Y
                TXA
                AND     #$1F

locret_EB39:
                RTS
; End of function sub_EB07


; =============== S U B R O U T I N E =======================================


sub_EB3A:
                JSR     sub_E9CD
                BMI     loc_EB70
                LDY     #$15
                STA     (Dist),Y
                STA     byte_A0
                TAX
                LDY     #$1A
                LDA     (Dist),Y
                BEQ     loc_EB68
                BMI     loc_EB5B
                SEC
                SBC     #1
                STA     (Dist),Y
                CMP     #5
                BCS     loc_EB68
                LDX     #7
                BCC     loc_EB68

loc_EB5B:
                PHA
                CLC
                ADC     #1
                STA     (Dist),Y
                PLA
                CMP     #$FD
                BCS     loc_EB68
                LDX     #5

loc_EB68:
                STX     LowGlobalY3F
                JSR     sub_E5BD
                JMP     loc_EB76
; ---------------------------------------------------------------------------

loc_EB70:
                LDA     #$88
                STA     byte_A0
                STA     LowGlobalY3F

loc_EB76:
                JSR     sub_E567
                JSR     sub_E74D
                LDA     byte_A0
                STA     LowGlobalY3F
                JSR     sub_E607
                LDA     byte_1F
                STA     byte_E7
                LDA     word_EBF3,X
                STA     ShiftX
                LDA     word_EBF3+1,X
                STA     ShiftY
                RTS
; End of function sub_EB3A


; =============== S U B R O U T I N E =======================================


sub_EB92:
                JSR     sub_E9CD
                BMI     loc_EBC0
                LDY     #$15
                STA     (Dist),Y
                STA     LowGlobalY3F
                JSR     sub_E5BD
                JSR     sub_E9FA
                BCS     loc_EBC0
                LDA     byte_22
                BNE     loc_EBC4
                LDA     #$14
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     AttributeScr1
                STA     Screen
                JSR     sub_E506
                LDA     MsgNumber
                JSR     set_msg_bank
                BIT     byte_3F
                BVS     loc_EBC4

loc_EBC0:
                LDA     #$88
                STA     LowGlobalY3F

loc_EBC4:
                JSR     sub_E567
                JMP     loc_E9B3
; End of function sub_EB92


; =============== S U B R O U T I N E =======================================


sub_EBCA:
                JSR     sub_E9CD
                STA     LowGlobalY3F
                BMI     loc_EBD4
                JSR     sub_E5BD

loc_EBD4:
                JSR     sub_E567
                JSR     sub_E73D
                JMP     loc_E9B3
; End of function sub_EBCA

; ---------------------------------------------------------------------------
    .export byte_EBF1, byte_EC5D

byte_EBDD:      .byte $88, 2, 6, $88, 4, 3, 5, $88, 0, 1, 7, $88, $88
                .byte $88, $88, $88
byte_EBED:      .byte 0
byte_EBEE:      .byte 0
byte_EBEF:      .byte $C0
byte_EBF0:      .byte $FF
byte_EBF1:      .byte 0, 0
word_EBF3:      .word $FF00, $40, $FFC0, 0, $FF01, $40, 0, 8, 1, $40, $40
                .word $10, $101, 0, $40, $10, $100, $FFC0, $40, $10, $1FF
                .word $FFC0, 0, $18, $FF, $FFC0, $FFC0, 0, $FFFF, 0, 0
                .word $10, 0
byte_EC35:      .byte $54, $14, $1C, 4, $44, 0, $C, $10, 0, $FF, 0, 1
                .byte $FF, 0, 1, 0, 0, $FF, 0, 1, 0, $FF, 0, 1, $FF, 0
                .byte 1, 0, 0, $FF, 0, 1, 0, 1, 0, $FF, 0, $FF, 0, 1
byte_EC5D:      .byte $80, $40, $20, $10, 8, 4, 2, 1

; =============== S U B R O U T I N E =======================================


sub_EC65:
    .importzp BankPPU_X000, BankPPU_X400, BankPPU_X800, BankPPU_XC00
    .importzp byte_45, byte_46

                JSR     darken_palette
                LDX     #0
                LDY     #8
                JSR     set_camera
                LDA     #$EC            ; ECEC
                LDX     #$EC
                JSR     set_ppu_banks   ; set 6 memory banks for PPU
                                        ; pPPUTable = XA address (X - high and A - low byte)
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
                LDA     #1
                STA     $A000           ; horizontal mirroring
                LDA     #$80
                STA     ModeSRAM
                LDA     #$7C ; '|'
                STA     BankPPU_X000
                STA     BankPPU_X400
                STA     BankPPU_X800
                STA     BankPPU_XC00
                LDA     #0
                STA     byte_46
                LDA     #0
                STA     byte_45
                LDX     #9

@next_byte:
                LDA     IRQTable,X
                STA     InterruptTable,X
                DEX
                BPL     @next_byte
                JSR     sub_ED1A
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EC65


; =============== S U B R O U T I N E =======================================


sub_ECA3:
    .importzp JmpInstr

                LDA     #$C3
                JSR     loc_C408
                LDX     #$1E
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                JSR     sub_D8D3
                BCS     loc_ECB6
                JSR     sub_DA48
                CLC

loc_ECB6:
                PHP
                JSR     sub_D977
                LDX     #$3C ; '<'

loc_ECBC:
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     ButtonPressed0
                BNE     loc_ECC6
                DEX
                BNE     loc_ECBC

loc_ECC6:
                JSR     wait_nmi_processed
                JSR     darken_color
                JSR     restore_palettes
                LDA     #$60 ; '`'
                LDX     #0
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     $A000
                STA     IRQCount
                STA     byte_70
                STA     byte_71
                STA     byte_48
                STA     ModeSRAM
                STA     JmpInstr
                PLP
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_ECA3

; ---------------------------------------------------------------------------
CHRTable:       .byte $78, 0, $7C, $7D, $7E, $7F
IRQTable:       .word sub_ED22-1, loc_ED62-1, sub_ED22-1, load_fonts-1, 0

; =============== S U B R O U T I N E =======================================


shift_down_window:
    .export shift_down_window, shift_up_window

                LDX     #$FC            ; shift down
; ---------------------------------------------------------------------------
                .byte $2C               ; mask LDX #4 BIT $04A2 instruction
; ---------------------------------------------------------------------------

shift_up_window:
                LDX     #4              ; shift up
                JSR     wait_nmi_processed
                STX     ShiftY          ; $E9 <- 4 shift up or $FC shift down
                LDX     #$14

@next_shift:
                LDA     #1              ; shift up or down window
                STA     NMIFlags
                JSR     wait_nmi_processed
                JSR     sub_ED1A
                DEX
                BNE     @next_shift
                LDA     #0
                STA     ShiftY
                RTS
; End of function shift_down_window


; =============== S U B R O U T I N E =======================================


sub_ED1A:
                SEC
                LDA     #$59
                SBC     CameraY
                STA     IRQCount
                RTS
; End of function sub_ED1A


; =============== S U B R O U T I N E =======================================


sub_ED22:
                CLC
                LDA     #2
                ADC     byte_46
                JSR     sub_C218
                BIT     byte_45
                BPL     loc_ED6F

loc_ED2E:
                LDA     BankPPU_X000
                BPL     loc_ED34
                LDA     #$7C

loc_ED34:
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X400
                BPL     loc_ED41
                LDA     #$7C

loc_ED41:
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X800
                BPL     loc_ED4E
                LDA     #$7C

loc_ED4E:
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_XC00
                BPL     loc_ED5B
                LDA     #$7C

loc_ED5B:
                STX     $8000
                STA     $8001
                RTS
; ---------------------------------------------------------------------------

loc_ED62:
                SEC
                LDA     #$23
                SBC     byte_46
                ASL     A
                JSR     sub_C218
                BIT     byte_45
                BVS     loc_ED2E

loc_ED6F:
                LDA     BankPPU_X000
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X400
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X800
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_XC00
                AND     #$7F
                STX     $8000
                STA     $8001
                RTS
; End of function sub_ED22


; =============== S U B R O U T I N E =======================================


load_fonts:
    .export locret_EDCA
    .importzp byte_44

                LDA     byte_44
                STA     byte_46
                LDA     #$C8
                JSR     sub_C218
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                LDA     BankTable + BANK_TABLE::PPU_1K_0000
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable + BANK_TABLE::PPU_1K_0400
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable + BANK_TABLE::PPU_1K_0800
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable + BANK_TABLE::PPU_1K_0C00
                STX     $8000
                STA     $8001

locret_EDCA:
                RTS
; End of function load_fonts


; =============== S U B R O U T I N E =======================================


sub_EDCB:
                JSR     wait4
                LDX     #$24
                LDA     #$1F
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                RTS
; End of function sub_EDCB


; =============== S U B R O U T I N E =======================================


darken_palette:
    .export darken_palette, darken_color

                JSR     store_palettes

darken_color:
                LDY     #5

@next_reduce:
                LDX     #$1F

@next_color:
                SEC
                LDA     PalNMIBG,X
                SBC     #$10            ; reduce color brightness
                BCS     @save_color
                LDA     #BLACK          ; color black, if get min value

@save_color:
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                TYA
                TAX
                JSR     wait_palette_to_PPU
                DEY
                CPY     #1
                BNE     @next_reduce
                RTS
; End of function darken_palette


; =============== S U B R O U T I N E =======================================


one_color_palettes_save:
    .export one_color_palettes_save, one_color_palettes

                PHA
                JSR     store_palettes
                PLA

one_color_palettes:
                LDX     #$1F

@next_color:
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                JMP     one_frame
; End of function one_color_palettes_save


; =============== S U B R O U T I N E =======================================


sub_EE0E:
    .export sub_EE0E

                PHA
                JSR     wait_nmi_processed
                PLA
                LDX     #$1F

@next_color:
                DEX
                DEX
                DEX
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                JMP     one_frame
; End of function sub_EE0E


; =============== S U B R O U T I N E =======================================


one_color_lighten_palette:
    .export one_color_lighten_palette

                PHA
                JSR     wait_nmi_processed
                PLA
                LDX     #$1F

@next_color:
                STA     PalBG,X
                DEX
                BPL     @next_color
                BMI     lighten_color
; End of function one_color_lighten_palette


; =============== S U B R O U T I N E =======================================

; increase the brightness of colors in the palette

lighten_palette:
    .export lighten_palette

                JSR     wait_nmi_processed

lighten_color:
                LDY     #5

@next_increase:
                LDX     #$1F

@next_color:
                SEC
                LDA     PalNMIBG,X
                SBC     PalBG,X
                BEQ     @no_change
                AND     #$F
                BNE     @low_tetrad_different
                BCS     @color_above
                LDA     PalNMIBG,X
                ADC     #$10
                BPL     @save_color

@low_tetrad_different:
                LDA     PalBG,X
                AND     #$F
                CMP     #$D
                BCC     @lowE

@color_above:
                LDA     PalNMIBG,X
                SBC     #$10
                BCS     @save_color
                LDA     #$F
                BPL     @save_color

@lowE:
                PHA
                LDA     PalNMIBG,X
                AND     #$30
                STA     PalNMIBG,X
                PLA
                ORA     PalNMIBG,X

@save_color:
                STA     PalNMIBG,X

@no_change:
                DEX
                BPL     @next_color
                TYA
                TAX
                JSR     wait_palette_to_PPU
                DEY
                CPY     #1
                BNE     @next_increase
                RTS
; End of function lighten_palette


; =============== S U B R O U T I N E =======================================


restore_palettes:
    .export restore_palettes

                JSR     wait_nmi_processed
                LDX     #$1F

@next_color:
                LDA     PalBG,X
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                RTS
; End of function restore_palettes


; =============== S U B R O U T I N E =======================================


store_palettes:
    .export store_palettes

                JSR     wait_nmi_processed
                LDX     #$1F

@next_color:
                LDA     PalNMIBG,X
                STA     PalBG,X
                DEX
                BPL     @next_color
                RTS
; End of function store_palettes


; =============== S U B R O U T I N E =======================================


copy_palettes:
    .export copy_palettes, back_palettes, one_frame

                STA     Pointer
                STX     Pointer+1
                JSR     wait_nmi_processed
                LDY     #$1F

@next_color:
                LDA     (Pointer),Y
                STA     PalNMIBG,Y
                DEY
                BPL     @next_color
                BMI     one_frame

back_palettes:
                JSR     restore_palettes

one_frame:
                LDX     #1

wait_palette_to_PPU:
                LDA     #4              ; load_palettes function ID
                STA     NMI_Data + NMI_DATA::NMI_ID   ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                JMP     wait_frames     ; wait for a few frames
; End of function copy_palettes         ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


home_camera:
    .export home_camera, set_camera

                LDX     #0
                LDY     #0

set_camera:
                JSR     wait_nmi_processed
                LDA     #0
                STA     ShiftX
                STA     ShiftY
                STA     IRQCount
                LDA     #$FC
                AND     CntrlPPU        ; PPU_CTRL
                STA     CntrlPPU        ; PPU_CTRL
                STX     CameraX
                STY     CameraY
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function home_camera


; =============== S U B R O U T I N E =======================================


sub_EEE4:
    .export sub_EEE4

                JSR     wait_nmi_processed
                LDA     #4
                EOR     CameraX
                STA     CameraX
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EEE4


; =============== S U B R O U T I N E =======================================


.proc sub_EEF0
                LDA     $761F           ; CurrentGame + GAME_SAVE::field_21F
                AND     #$F0
                BEQ     exit
                STA     Pointer
                ASL     Pointer
                BCC     exit
                JSR     sub_F1ED
                AND     #$C0
                BNE     exit
                JSR     store_palettes
                JSR     bg_blackout
                LDX     #$A

loc_EF0C:
                LDA     #7
                STA     apu_7F0
                JSR     sub_EEE4
                DEX
                BNE     loc_EF0C
                JSR     back_palettes

exit:
                RTS
.endproc            ; End of function sub_EEF0


; =============== S U B R O U T I N E =======================================


bg_blackout:
    .export bg_blackout

                LDX     #$F

@next_color:
                CPX     #$E
                BEQ     @skip
                SEC
                LDA     PalNMIBG,X
                SBC     #$10
                BCS     @save_color
                LDA     #BLACK

@save_color:
                STA     PalNMIBG,X

@skip:
                DEX
                BPL     @next_color
                JMP     one_frame
; End of function bg_blackout


; =============== S U B R O U T I N E =======================================


cursor_update:
    .export cursor_update, short_cursor_update, loc_EF4B, loc_EF7C
    .importzp pCursor, pStr, CurrentX, CurrentY, CurrentFieldPosition, Buttons, byte_D6

                LDY     #8
                LDA     (pCursor),Y
                STA     pStr
                INY
                LDA     (pCursor),Y
                STA     pStr+1

short_cursor_update:
                LDY     #6
                LDA     (pCursor),Y
                STA     Column
                LDY     #7
                LDA     (pCursor),Y
                STA     Row

loc_EF4B:
                LDY     #0
                LDA     (pCursor),Y
                STA     CurrentX
                TAX
                LDY     #1
                LDA     (pCursor),Y
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                STA     CurrentFieldPosition
                LDY     #0
                STY     CurrentY

loc_EF5F:
                LDA     (pStr),Y
                BNE     loc_EF6D
                INY
                CPY     CurrentFieldPosition
                BCC     loc_EF5F
                STA     CurrentFieldPosition
                STA     Buttons
                RTS
; ---------------------------------------------------------------------------

loc_EF6D:
                STY     CurrentFieldPosition
                TYA

loc_EF70:
                CMP     CurrentX
                BCC     loc_EF7A
                SBC     CurrentX
                INC     CurrentY
                BCS     loc_EF70

loc_EF7A:
                STA     CurrentX

loc_EF7C:
                JSR     wait_nmi_processed
                LDY     #$18
                STY     pTileID+1
                LDA     #0
                STA     OAM_Cache + OAM_TILE::Attr

set_cursor_pos:
                LDY     #5
                LDA     (pCursor),Y
                STA     OAM_Cache + OAM_TILE::TileID
                LDY     #2
                LDA     (pCursor),Y
                LDX     CurrentX
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Column
                ASL     A
                ASL     A
                ASL     A
                STA     OAM_Cache + OAM_TILE::PosX
                LDY     #3
                LDA     (pCursor),Y
                LDX     CurrentY
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Row
                ASL     A
                ASL     A
                ASL     A
                CLC
                ADC     #7
                STA     OAM_Cache + OAM_TILE::PosY
                LDY     pTileID+1

@cursor_flashing:
                LDX     #0
                STX     Gamepad0Buttons

@loop:
                JSR     sub_F1ED
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     Gamepad0Buttons
                BNE     @button_pressed
                DEY
                BNE     @loop
                LDY     #5
                LDA     (pCursor),Y
                EOR     OAM_Cache + OAM_TILE::TileID      ; switch cursor Tile
                STA     OAM_Cache + OAM_TILE::TileID
                LDA     ButtonPressed0
                BNE     @button_hold
                LDY     #$18
                STY     pTileID+1
                BNE     @cursor_flashing

@button_hold:
                LDY     #6
                STY     pTileID+1

@button_pressed:
                LDX     #0
                STX     Gamepad0Buttons
                TAX
                LDY     #4
                AND     #$F0
                AND     (pCursor),Y     ; ButtonMask
                BEQ     arrow_buttons
                STA     Buttons
                LDA     #5
                STA     $7F1

off_cursor:
                LDA     #$F0
                STA     OAM_Cache + OAM_TILE::PosY
                RTS
; ---------------------------------------------------------------------------

arrow_buttons:
                TXA
                AND     #$F
                STA     Buttons
                TAY
                LDX     CursorModeTab,Y
                BMI     set_cursor_pos
                LDA     CurrentX
                STA     pDist
                LDA     CurrentY
                STA     pDist+1
                STX     CursorMode

cursor_pos:
                CLC
                LDA     CursorShiftTab+1,X
                ADC     pDist+1
                LDY     #1
                CMP     (pCursor),Y
                BCS     out_area
                STA     pDist+1
                STA     Pointer
                CLC
                LDA     CursorShiftTab,X
                ADC     pDist           ; get new cursor position X
                LDY     #0
                CMP     (pCursor),Y
                BCS     out_area
                STA     pDist
                STA     FieldPosition
                LDA     (pCursor),Y
                LDX     Pointer
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     FieldPosition
                STA     FieldPosition
                TAY
                LDA     (pStr),Y        ; get a tile ID or mark at this position
                BEQ     menu_area
                LDA     pDist
                STA     CurrentX
                LDA     pDist+1
                STA     CurrentY
                LDA     FieldPosition
                STA     CurrentFieldPosition
                LDA     #$D
                STA     $7F1

no_command_button:
                JMP     set_cursor_pos
; ---------------------------------------------------------------------------

out_area:
                LDY     #4
                LDA     Buttons
                AND     (pCursor),Y
                BEQ     no_command_button
                STA     Buttons
                LDA     #$D
                STA     $7F1
                JMP     off_cursor
; ---------------------------------------------------------------------------

menu_area:
                LDX     CursorMode
                LDY     #1
                LDA     byte_D6
                BEQ     loc_F071
                INX
                DEY

loc_F071:
                LDA     CursorShiftTab,X
                BEQ     loc_F0AB

loc_F076:
                STA     FieldPosition
                SEC
                LDA     pDist,Y
                SBC     CurrentX,Y
                EOR     #$FF
                BPL     loc_F08E
                CLC
                ADC     CurrentX,Y
                STA     pDist,Y
                BPL     loc_F0A1
                BMI     outX

loc_F08E:
                SEC
                ADC     CurrentX,Y
                STA     pDist,Y
                CMP     (pCursor),Y
                BCC     loc_F0A1

outX:
                LDA     #0
                CMP     FieldPosition
                BNE     loc_F076
                BEQ     out_area

loc_F0A1:
                TYA
                EOR     #1
                TAY
                LDA     CurrentX,Y
                STA     pDist,Y

loc_F0AB:
                LDX     CursorMode
                JMP     cursor_pos
; End of function cursor_update


; =============== S U B R O U T I N E =======================================

; get position of cursor and set cursor tile
; Input: A - tile ID
; Output: PosX, PosY

get_cursor_pos:
    .export get_cursor_pos

                PHA
                LDY     #2
                LDA     (pCursor),Y
                LDX     CurrentX
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Column
                STA     Column
                LDY     #3
                LDA     (pCursor),Y
                LDX     CurrentY
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Row
                STA     Row
                PLA
                JMP     sub_C68B
; End of function get_cursor_pos

; ---------------------------------------------------------------------------
byte_F0D1:      .byte 1, 2, 3, 4, 5, 6, 7, 8
CursorModeTab:  .byte $88, 2, 6, $88, 4, $88, $88, $88, 0, $88, $88, $88
                .byte $88, $88, $88, $88
CursorShiftTab: .byte 0, $FF, 1, 0, 0, 1, $FF, 0

; =============== S U B R O U T I N E =======================================

; Input: Pointer - first multiplier
;        pTileID - second multiplier
; Output: AddrForJmp, Pointer - result Pointer * pTileID

get_offset:
    .export get_offset

                LDA     #0
                LDX     #$10

loc_F0F5:
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F0FE
                CLC
                ADC     pTileID

loc_F0FE:
                ROR     A
                DEX
                BNE     loc_F0F5
                STA     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                RTS
; End of function get_offset


; =============== S U B R O U T I N E =======================================


sub_F109:
                LDA     #0
                LDX     #$18

loc_F10D:
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F118
                CLC
                ADC     pTileID

loc_F118:
                ROR     A
                DEX
                BNE     loc_F10D
                STA     AddrForJmp+1
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                RTS
; End of function sub_F109


; =============== S U B R O U T I N E =======================================

; Input: A, X - multipliers
; Output: A - result

multiply:
                STA     Pointer
                STX     pTileID
                LDA     #0
                LDX     #8

@loop:
                ROR     Pointer
                BCC     @even
                CLC
                ADC     pTileID

@even:
                ROR     A
                DEX
                BNE     @loop
                TAX
                LDA     Pointer
                ROR     A
                RTS
; End of function multiply


; =============== S U B R O U T I N E =======================================


sub_F13D:
    .export sub_F13D

                LDA     pTileID

loc_F13F:
                BEQ     loc_F13F
                LDA     #0
                LDX     #$18
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp

loc_F14B:
                ROL     A
                BCS     loc_F152
                CMP     pTileID
                BCC     loc_F155

loc_F152:
                SBC     pTileID
                SEC

loc_F155:
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp
                DEX
                BNE     loc_F14B
                STA     pDist
                RTS
; End of function sub_F13D


; =============== S U B R O U T I N E =======================================

; convert number to string (tile)
; Input: AddrForJmp Pointer+1 Pointer - bytes of number
; Output: $68-6F - string

num2str:
                LDY     #8

@next_digital:
                DEY
                LDA     #0
                LDX     #$18
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp

@next_shift:
                ROL     A
                CMP     #$A
                BCC     @decimal
                SBC     #$A

@decimal:
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp
                DEX
                BNE     @next_shift
                TAX
                LDA     NumberTiles,X
                STA     pDist,Y         ; write digital tile
                LDA     Pointer
                ORA     Pointer+1
                ORA     AddrForJmp
                BNE     @next_digital
                STY     AddrForJmp+1
                LDA     #$A0            ; space symbol
                BNE     @next_space

@write_space:
                STA     pDist,Y

@next_space:
                DEY
                BPL     @write_space
                RTS
; End of function num2str

; ---------------------------------------------------------------------------
NumberTiles:    .byte $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9

; =============== S U B R O U T I N E =======================================


sub_F1A4:
    .export sub_F1A4

                LDY     #0
                STY     Pointer
                STY     Pointer+1
                STY     AddrForJmp
                BEQ     loc_F1C6

loc_F1AE:
                LDA     #0
                LDX     #$18

loc_F1B2:
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F1BC
                ADC     #9

loc_F1BC:
                ROR     A
                DEX
                BNE     loc_F1B2
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer

loc_F1C6:
                LDA     $68,Y
                CMP     #$BA
                BCS     loc_F1D4
                CMP     #$B0
                BCC     loc_F1D4
                SBC     #$B0
; ---------------------------------------------------------------------------
                .byte $2C ; ,
; ---------------------------------------------------------------------------

loc_F1D4:
                LDA     #0
                CLC
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                LDA     #0
                ADC     AddrForJmp
                STA     AddrForJmp
                INY
                CPY     #8
                BCC     loc_F1AE
                RTS
; End of function sub_F1A4


; =============== S U B R O U T I N E =======================================


sub_F1ED:
    .export sub_F1ED
    .importzp byte_26, byte_27

                CLC
                LDA     byte_26
                ADC     byte_27
                STA     byte_27
                CLC
                LDA     byte_26
                ADC     #$75
                STA     byte_26
                LDA     byte_27
                ADC     #$63
                STA     byte_27
                RTS
; End of function sub_F1ED


; =============== S U B R O U T I N E =======================================


start_battle:
    .import sub_149630, clear_nametables, battle

                JSR     bank17_A000
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     get_enemy_pointer ; Input: byte_48 - ID enemy ?
                                        ; Output: pCharacter - pointer to struct
                                        ;         Pointer - offset for struct, offset zero page
                LDX     #$2C
                LDY     #9
                LDA     (pCharacter),Y  ; BANK16:95E1, BANK16:8FF1
                AND     #$F0
                CMP     #$50
                BEQ     loc_F21C
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAX

loc_F21C:
                TXA
                JSR     sub_F255
                JSR     bank14_8000
                JSR     sub_149630      ; animation
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     clear_oam_sprite
                JSR     clear_nametables
                JSR     sub_EC65
                JSR     battle          ; main battle proc
                JSR     sub_ECA3        ; clear screen
                RTS
; End of function start_battle


; =============== S U B R O U T I N E =======================================

; set memory bank $16 at $8000

bank16:
    .export bank16

                PHA
                TXA
                PHA
                LDA     #$16
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                TAX
                PLA
                RTS
; End of function bank16


; =============== S U B R O U T I N E =======================================

; set memory bank 0 at $8000

bank0:
    .export bank0

                PHA
                TXA
                PHA
                LDA     #0
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                TAX
                PLA
                RTS
; End of function bank0


; =============== S U B R O U T I N E =======================================


sub_F255:
    .export sub_F255

                CMP     apu_78C
                BEQ     @exit
                STA     apu_7F5

@exit:
                RTS
; End of function sub_F255


; =============== S U B R O U T I N E =======================================


delay:
    .export delay

                TXA
                BEQ     locret_F26A
                PHA
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     delay

locret_F26A:
                RTS
; End of function delay


; =============== S U B R O U T I N E =======================================


sub_F26B:
    .export sub_F26B

                INX

loc_F26C:
                TXA
                PHA
                JSR     sub_F27C
                PLA
                TAX
                DEX
                BNE     loc_F26C
                JSR     sub_F27C
                JMP     sub_F4B6
; End of function sub_F26B


; =============== S U B R O U T I N E =======================================


sub_F27C:
                LDX     #$2F

loc_F27E:
                TXA
                PHA
                AND     #$F
                LSR     A
                TAX
                LDA     byte_F296,X
                JSR     loc_F4B8
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     loc_F27E
                RTS
; End of function sub_F27C

; ---------------------------------------------------------------------------
byte_F296:      .byte $21, $22, $23, $24, $25, $24, $23, $22

; =============== S U B R O U T I N E =======================================


wait_A_B:
    .export wait_A_B

                LDX     #0
                STX     Gamepad0Buttons

@loop:
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     Gamepad0Buttons
                STX     Gamepad0Buttons
                AND     #$C0
                BEQ     @loop
                RTS
; End of function wait_A_B


; =============== S U B R O U T I N E =======================================

; trap function without return
; transfers control to a function whose address is selected from the table located after the call of this function;
; after the function execution is completed, the first function from the table is executed.
; Input: A - number of function in the table

sub_F2AE:
    .export sub_F2AE

                ASL     A               ; diff effects in the battle
                TAY
                INY
                INY
                INY
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                LDY     #1
                SEC
                LDA     (Pointer),Y
                SBC     #1
                TAX
                INY
                LDA     (Pointer),Y
                SBC     #0
                PHA
                TXA
                PHA
                JMP     (AddrForJmp)    ; F6BF
; End of function sub_F2AE


; =============== S U B R O U T I N E =======================================

; trap function with no return
; transfers control to a function whose address is selected from the table located after the call of this function
; Input: A - number of function in the table

sub_F2D5:
    .export sub_F2D5

                ASL     A
                TAY
                INY
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                SEC
                LDA     (Pointer),Y     ; BANK17:ADB1
                SBC     #1
                TAX
                INY
                LDA     (Pointer),Y
                SBC     #0
                PHA
                TXA
                PHA
                RTS
; End of function sub_F2D5


; =============== S U B R O U T I N E =======================================


sub_F2ED:
    .export sub_F2ED

                PHA
                TXA
                PHA
                TYA
                PHA
                LDA     AddrForJmp+1
                PHA
                LDA     AddrForJmp
                PHA
                LDA     pTileID+1
                PHA
                LDA     pTileID
                PHA
                LDA     pDist+1
                PHA
                LDA     pDist
                PHA
                LDA     Pointer+1
                AND     #$FC
                PHA
                LDX     #6

loc_F30B:
                ASL     Pointer
                ROL     Pointer+1
                DEX
                BNE     loc_F30B
                STX     AddrForJmp
                TXA
                PHA
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     #$64 ; 'd'
                STA     pTileID

loc_F320:
                JSR     sub_F13D
                JSR     sub_F1ED
                LSR     A
                PHP
                TAX
                LDA     byte_F37D,X
                STA     pTileID
                JSR     get_offset      ; Input: Pointer - first multiplier
                                        ;        pTileID - second multiplier
                                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
                PLP
                BCS     loc_F346
                PLA
                ADC     Pointer
                STA     Pointer
                PLA
                ADC     Pointer+1
                STA     Pointer+1
                PLA
                ADC     AddrForJmp
                STA     AddrForJmp
                JMP     loc_F355
; ---------------------------------------------------------------------------

loc_F346:
                PLA
                SBC     Pointer
                STA     Pointer
                PLA
                SBC     Pointer+1
                STA     Pointer+1
                PLA
                SBC     AddrForJmp
                STA     AddrForJmp

loc_F355:
                LDX     #6

loc_F357:
                LSR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                DEX
                BNE     loc_F357
                PLA
                ORA     Pointer+1
                STA     Pointer+1
                PLA
                STA     pDist
                PLA
                STA     pDist+1
                PLA
                STA     pTileID
                PLA
                STA     pTileID+1
                PLA
                STA     AddrForJmp
                PLA
                STA     AddrForJmp+1
                PLA
                TAY
                PLA
                TAX
                PLA
                RTS
; End of function sub_F2ED

; ---------------------------------------------------------------------------
byte_F37D:      .byte  0,  0,  0,   0,   0
                .byte $C, $C, $C,  $C,  $C
                .byte  1,  1,  1,   1,   1
                .byte  1,  1,  1,   1,   1
                .byte  2,  2,  2,   2,   2
                .byte  2,  2,  2,   2,   2
                .byte  3,  3,  3,   3,   3
                .byte  3,  3,  3,   3,   3
                .byte  4,  4,  4,   4,   4
                .byte  4,  4,  4,   4,   4
                .byte  5,  5,  5,   5,   5
                .byte  5,  5,  5,   5, $14
                .byte  6,  6,  6,   6,   6
                .byte  6,  6,  6,   6, $15
                .byte  7,  7,  7,   7,   7
                .byte  7,  7,  7, $11, $11
                .byte  8,  8,  8,   8,   8
                .byte  8,  8,  8, $12, $12
                .byte  9,  9,  9,   9,   9
                .byte  9,  9, $F,  $F,  $F
                .byte $A, $A, $A,  $A,  $A
                .byte $A, $D, $D,  $D,  $D
                .byte $B, $B, $B,  $B,  $B
                .byte $B, $E, $E,  $E,  $E
                .byte $10, $10, $10, $13, $13, $16, $17, $18

; =============== S U B R O U T I N E =======================================


sub_F3FD:
    .export sub_F3FD

                TAX
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                STX     Pointer
                LDA     #0
                STA     Pointer+1
                JSR     sub_F2ED
                LDA     Pointer+1
                BEQ     loc_F415
                LDA     #$FF
                STA     Pointer

loc_F415:
                LDX     Pointer
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                TXA
                RTS
; End of function sub_F3FD


; =============== S U B R O U T I N E =======================================


sub_F41F:
    .export sub_F41F

                PHA
                ASL     A
                ASL     A
                BEQ     loc_F463
                TAX
                LDA     $9EEA,X
                STA     pTileID+1
                LDA     $9EEB,X
                STA     TilesCount
                LDA     $9EE9,X
                CMP     #0
                BNE     loc_F43E
                LDA     pTileID+1
                STA     apu_7F0
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F43E:
                CMP     #1
                BNE     loc_F44A
                LDA     pTileID+1
                STA     $7F1
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F44A:
                CMP     #2
                BNE     loc_F456
                LDA     pTileID+1
                STA     $7F3
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F456:
                LDA     pTileID+1
                STA     byte_7F4

loc_F45B:
                LDX     TilesCount
                JSR     delay
                JSR     bank16          ; set memory bank $16 at $8000

loc_F463:
                PLA
                RTS
; End of function sub_F41F


; =============== S U B R O U T I N E =======================================


long_delay:
    .export long_delay

                LDX     #$F

@loop:
                TXA
                PHA
                LDA     #5
                STA     $7F1
                LDX     #2
                JSR     delay
                PLA
                TAX
                DEX
                BNE     @loop
                RTS
; End of function long_delay


; =============== S U B R O U T I N E =======================================

; Input: byte_48 - ID enemy ?
; Output: pCharacter - pointer to struct
;         Pointer - offset for struct, offset zero page

get_enemy_pointer:
    .export get_enemy_pointer

                LDA     byte_48         ; A0
                STA     Pointer
                LDA     #0
                STA     Pointer+1
                LDA     #$A
                STA     pTileID
                JSR     get_offset      ; Input: Pointer - first multiplier
                                        ;        pTileID - second multiplier
                                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
                CLC
                LDA     #$98            ; BANK16:8F98
                ADC     Pointer
                STA     pCharacter      ; BANK16:95D8
                LDA     #$8F
                ADC     Pointer+1
                STA     pCharacter+1    ; BANK16:8FE8
                RTS
; End of function get_enemy_pointer


; =============== S U B R O U T I N E =======================================


preload_palettes:
    .export preload_palettes

                JSR     wait_nmi_processed
                LDY     #$1F

@next_color:
                LDA     (Pointer),Y
                STA     PalNMIBG,Y
                DEY
                BPL     @next_color

set_nmi_id4:
                LDA     #4              ; ReturnTable
                STA     NMI_Data + NMI_DATA::NMI_ID   ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function preload_palettes


; =============== S U B R O U T I N E =======================================


sub_F4B6:
    .export sub_F4B6, loc_F4B8

                LDA     #BLACK

loc_F4B8:
                PHA
                JSR     wait_nmi_processed
                PLA
                LDY     #$1C

@next_color:
                STA     PalNMIBG,Y
                DEY
                DEY
                DEY
                DEY
                BPL     @next_color
                JSR     set_nmi_id4
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_F4B6


; =============== S U B R O U T I N E =======================================


sub_F4CE:
    .export sub_F4CE

                ASL     A
                STA     Pointer
                TXA
                PHA
                TYA
                PHA
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     Pointer
                LDA     $8C00,Y
                STA     Pointer
                LDA     $8C00+1,Y
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     TilepackMode
                INY
                LDX     Column
                LDA     (Pointer),Y
                CMP     #$FF
                BEQ     loc_F4F4
                TAX

loc_F4F4:
                STX     AddrForJmp
                INY
                LDX     Row
                LDA     (Pointer),Y
                CMP     #$FF
                BEQ     loc_F500
                TAX

loc_F500:
                STX     AddrForJmp+1

loc_F502:
                INY
                LDA     (Pointer),Y
                LDX     #0
                CMP     #$FC
                BEQ     loc_F521
                LDX     #1
                CMP     #$FD
                BEQ     loc_F521
                LDX     #2
                CMP     #$FE
                BEQ     loc_F521
                CMP     #$FF
                BEQ     loc_F526
                JSR     sub_F52E
                JMP     loc_F502
; ---------------------------------------------------------------------------

loc_F521:
                STX     TilesCount
                JMP     loc_F502
; ---------------------------------------------------------------------------

loc_F526:
                JSR     bank16          ; set memory bank $16 at $8000
                PLA
                TAY
                PLA
                TAX
                RTS
; End of function sub_F4CE


; =============== S U B R O U T I N E =======================================


sub_F52E:
                TAX
                INY
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1

loc_F539:
                TXA
                PHA
                TYA
                PHA
                JSR     wait_nmi_processed
                LDA     #0
                STA     byte_70
                LDA     AddrForJmp
                STA     Column
                LDA     pTileID
                STA     PointerTilePack
                LDA     pTileID+1
                STA     PointerTilePack+1
                JSR     sub_F562
                CLC
                LDA     AddrForJmp+1
                ADC     TilepackMode
                STA     AddrForJmp+1
                PLA
                TAY
                PLA
                TAX
                DEX
                BNE     loc_F539
                RTS
; End of function sub_F52E


; =============== S U B R O U T I N E =======================================


sub_F562:
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     AddrForJmp
                PHA
                LDA     pTileID+1
                PHA
                LDA     pTileID
                PHA
                LDA     TilesCount
                PHA
                LDA     TilepackMode
                PHA
                LDA     TilesCount
                BEQ     loc_F58D
                CMP     #1
                BEQ     loc_F59E
                LDA     AddrForJmp+1
                STA     Row
                PHA
                JSR     sub_C6D2
                PLA
                STA     AddrForJmp+1
                JMP     loc_F5AC
; ---------------------------------------------------------------------------

loc_F58D:
                CLC
                LDA     AddrForJmp+1
                ADC     TilepackMode
                STA     Row
                PHA
                JSR     print_string
                PLA
                STA     AddrForJmp+1
                JMP     loc_F5AC
; ---------------------------------------------------------------------------

loc_F59E:
                CLC
                LDA     AddrForJmp+1
                ADC     TilepackMode
                STA     Row
                PHA
                JSR     loc_C6DB
                PLA
                STA     AddrForJmp+1

loc_F5AC:
                PLA
                STA     TilepackMode
                PLA
                STA     TilesCount
                PLA
                STA     pTileID
                PLA
                STA     pTileID+1
                PLA
                STA     AddrForJmp
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                RTS
; End of function sub_F562


; =============== S U B R O U T I N E =======================================


sub_F5C2:
    .export sub_F5C2
    .importzp byte_5A

                LDA     byte_5A
                PHA
                JSR     sub_F765
                LDA     #$DF
                STA     pStr
                LDA     #$F5
                STA     pStr+1
                LDA     #$DF
                STA     pCursor
                LDA     #$F5
                STA     pCursor+1
                JSR     loc_EF4B
                PLA
                STA     byte_5A
                RTS
; End of function sub_F5C2

; ---------------------------------------------------------------------------
                .byte 1, 1, 0, 0, $C0, $5D

; =============== S U B R O U T I N E =======================================


statistical_frame:
    .export statistical_frame

                PHA
                TXA
                PHA
                TYA
                PHA
                JSR     draw_statistical_frame
                JSR     sub_F614
                PLA
                TAY
                PLA
                TAX
                PLA
                SEC
                RTS
; End of function statistical_frame


; =============== S U B R O U T I N E =======================================


set_jmp_addr:
    .export set_jmp_addr

                STA     AddrForJmp
                LDA     #0
                ASL     AddrForJmp
                ROL     A
                ASL     AddrForJmp
                ROL     A
                ASL     AddrForJmp
                ROL     A
                STA     AddrForJmp+1
                CLC
                LDA     AddrForJmp
                ADC     #0
                STA     AddrForJmp
                LDA     AddrForJmp+1

loc_F60F:
                ADC     #$9E
                STA     AddrForJmp+1
                RTS
; End of function set_jmp_addr


; =============== S U B R O U T I N E =======================================


sub_F614:
                JSR     wait_nmi_processed
                LDY     #$E8
                STY     pDist
                LDA     #$DF            ; CFE8
                STA     pDist+1
                LDY     $6707

loc_F622:
                SEC
                LDA     pDist+1
                SBC     #$10
                STA     pDist+1
                DEY
                BNE     loc_F622
                LDA     #0
                STA     TilepackMode

loc_F630:
                JSR     wait_nmi_processed
                LDY     TilepackMode
                LDA     $600,Y
                BEQ     loc_F660
                LDA     $611,Y
                AND     #6
                EOR     #6
                BEQ     loc_F660
                LDX     #2
                LDA     $601,Y
                AND     #$80
                BNE     loc_F655
                LDX     #1
                JSR     sub_F673
                BCC     loc_F655
                LDX     #0

loc_F655:
                TXA
                JSR     sub_F6AA
                CLC
                LDA     pDist
                ADC     #8
                STA     pDist

loc_F660:
                CLC
                LDA     pDist+1
                ADC     #$10
                STA     pDist+1
                CLC
                LDA     TilepackMode
                ADC     #$20
                STA     TilepackMode
                CMP     #$60
                BNE     loc_F630
                RTS
; End of function sub_F614


; =============== S U B R O U T I N E =======================================


sub_F673:
    .export sub_F673

                TYA
                PHA
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDA     $603,Y
                STA     pTileID
                LDA     $604,Y
                STA     pTileID+1
                LDY     #3
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                AND     #3
                STA     AddrForJmp+1
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                PLA
                TAY
                SEC
                LDA     pTileID
                SBC     AddrForJmp
                LDA     pTileID+1
                SBC     AddrForJmp+1
                RTS
; End of function sub_F673


; =============== S U B R O U T I N E =======================================


sub_F6AA:
    .importzp apu_BF, TileX, byte_A9

                PHA
                JSR     wait_nmi_processed
                PLA
                JSR     sub_F2AE        ; trap function without return
                                        ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
                TSX
                INC     apu_BF,X
                INC     TileX,X
                INC     BankTable,X
                INC     byte_A9,X       ; trap F6BA: LDA #$01
                                        ;            STA NMIFlags
                                        ;            RTS
                ORA     (pStr+1,X)
                SBC     Pointer
                LDA     #0
                LDX     #$C
                LDY     #$97
                JMP     loc_F6F9
; ---------------------------------------------------------------------------
                LDX     pDist
                LDA     SpriteTable,X
                PHA
                LDA     #3
                LDX     #$C
                LDY     #$97
                JSR     loc_F6F9
                PLA
                CMP     #3
                BEQ     locret_F6EF
                LDX     #4

loc_F6DE:
                TXA
                PHA
                LDA     #0
                JSR     sub_F724
                LDA     #3
                JSR     sub_F724
                PLA
                TAX
                DEX
                BNE     loc_F6DE

locret_F6EF:
                RTS
; ---------------------------------------------------------------------------
                LDA     #3
                LDX     #$10
                LDY     #$97
                JMP     loc_F6F9
; ---------------------------------------------------------------------------

loc_F6F9:
                STX     Pointer
                STY     Pointer+1
                LDX     pDist
                STA     SpriteTable,X
                LDA     #8
                STA     SpriteTable + ANIM_SPRITE::TileID,X
                LDA     #$70 ; 'p'
                STA     SpriteTable + ANIM_SPRITE::PosX,X
                LDA     pDist+1
                STA     SpriteTable + ANIM_SPRITE::PosY,X
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                LDA     Pointer
                STA     SpriteTable + ANIM_SPRITE::pFrame,X ; BANK16:970C
                LDA     Pointer+1
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X
                RTS
; End of function sub_F6AA


; =============== S U B R O U T I N E =======================================


sub_F724:
                LDX     pDist
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                LDX     #8
                JMP     delay
; End of function sub_F724


; =============== S U B R O U T I N E =======================================

; copies the palettes at the pointer Pointer offset at $400

copy_packed_tiles:
    .export copy_packed_tiles

                JSR     wait_nmi_processed ; copies 32 bytes of a packed tile map at $400
                                        ; input YX - pointer to the packed fragment
                                        ; Y - high byte, X - low byte
                STX     Pointer
                STY     Pointer+1
                LDY     #$1F

@next_byte:
                LDA     (Pointer),Y
                STA     NMI_Data,Y        ; NMITable
                DEY
                BPL     @next_byte
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     OffsetNMI_Data
                RTS
; End of function copy_packed_tiles


; =============== S U B R O U T I N E =======================================

; save JMP ROM:F76A to $D7

save_jmp_instr:
    .export save_jmp_instr

                LDA     #$6A
                STA     JmpInstr+1
                LDA     #$F7
                STA     JmpInstr+2
                LDA     #$4C
                STA     JmpInstr
                RTS
; End of function save_jmp_instr


; =============== S U B R O U T I N E =======================================


clear_jmp_instr:
    .export clear_jmp_instr

                LDA     #0
                STA     JmpInstr
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function clear_jmp_instr


; =============== S U B R O U T I N E =======================================


sub_F760:
    .export sub_F760

                LDA     #1
                STA     byte_5A
                RTS
; End of function sub_F760


; =============== S U B R O U T I N E =======================================


sub_F765:
    .export sub_F765

                LDA     #0
                STA     byte_5A
                RTS
; End of function sub_F765


; =============== S U B R O U T I N E =======================================


sub_F76A:
                LDA     byte_5A
                BEQ     locret_F771
                JSR     sub_F772

locret_F771:
                RTS
; End of function sub_F76A


; =============== S U B R O U T I N E =======================================


sub_F772:
                LDA     byte_59
                BEQ     locret_F79E
                BIT     FlagClearOAM300
                BVS     locret_F79E
                LDX     #0
                LDA     Gamepad0Buttons
                STX     Gamepad0Buttons
                AND     #$40
                BEQ     locret_F79E
                TXA
                STA     byte_59
                STA     SpriteTable + ANIM_SPRITE::Tiles+$E0
                LDA     SpriteTable + ANIM_SPRITE::TileID+$E0
                ASL     A
                ASL     A
                TAY
                LDA     #$F0
                STA     OAM_Cache,Y
                STA     OAM_Cache + OAM_TILE::PosY+4,Y
                STA     OAM_Cache + OAM_TILE::PosY+8,Y
                STA     OAM_Cache + OAM_TILE::PosY+$C,Y

locret_F79E:
                RTS
; End of function sub_F772