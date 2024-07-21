.include "nes.inc"
.include "nmi.inc"
.include "macros.inc"
.include "mmc3\bank.inc"
.include "mmc3\mmc3.inc"
.include "palette.inc"
.include "..\res\structures.inc"
.include "..\res\charmap.inc"
.include "..\res\framecomm.inc"

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
                STA     BANK_SELECT
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
                STA     IRQ_LATCH
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
    .byte   0,   1,   2,   3,   8,   9, $96, $97, $98, $99, $9A, $9B, $9C, $9D, $9E, $9F
    .byte $A0, $A1, $A2, $A3, $A4, $2A, $2B, $2C, $2D, $2E, $AA, $AB, $AC, $AD, $AE, $93
    .byte   4,   5,   6,   7,  $E,  $F, $D6, $D7, $D8, $D9, $DA, $DB, $DC, $DD, $DE, $DF
    .byte $E0, $E1, $E2, $E3, $E4, $6A, $6B, $6C, $6D, $6E, $EA, $EB, $EC, $ED, $EE, $D3

; =============== S U B R O U T I N E =======================================


sub_C26C:
    .export sub_C26C
    .import wait_nmi_processed, bank_A000_a, wait_nmi, sub_19A2B3, CommandMenu, DMCflag, InterruptTable
    .importzp PointerTilePack, IRQCount, OffsetNMI_Data, Row, UnpackID

                ldxa #CommandMenu
                stxa PointerTilePack

loc_C274:
                JSR     load_character_data ; Copies the characteristics of the characters
                JSR     wait_nmi_processed
                LDA     #$19
                ldyx #(sub_19A2B3-1)
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
                LDA     #<(sub_C226-1)      ; #$25
                STA     InterruptTable,X ; C226-1 for irq
                INX
                LDA     #>(sub_C226-1)      ; #$C2
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
    .import wait_nmi_flags_reset, sub_19A31E, NMI_Data
    .importzp NMIFlags

                STY     OffsetNMI_Data
                JSR     prepare_attributes
                LDA     #0
                STA     NMI_Data,X
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                LDA     #$19
                ldyx #(sub_19A31E-1)
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte

loc_C31F:
                JMP     wait_nmi_flags_reset
; End of function sub_C306


; =============== S U B R O U T I N E =======================================


bank0_0:
    .import mmc3_bank_set

    lda #0
    ldx #6
    jmp mmc3_bank_set   ; Set memory BANK0 $8000
; End of function bank0_0
; ---------------------------------------------------------------------------
.import InfoFrame

TilePack:
    tile_position 1, 23
    tile_pointer InfoFrame
    end_row

                .byte $25, $16          ; low byte irq handler, offset to InterruptTable
    tile_pointer InfoCharacter
    end_frame

                .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, $1C
    .byte FRAME_BOTTOM_RIGHT

EndTileMark:
    end_frame

stru_C33E:
    tile_position 1, 21
    tile_pointer InfoFrame
    end_row

                .byte $25, $14          ; low byte irq handler, offset to InterruptTable
    tile_pointer InfoCharacter
    end_row
                .byte $25, $16          ; low byte irq handler, offset to InterruptTable
    tile_pointer $672E ; command to load packed tiles at the specified offset
    end_frame

                .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, $1C
    .byte FRAME_BOTTOM_RIGHT
    end_frame

stru_C359:
    tile_position 1, 19
    tile_pointer InfoFrame
    end_row

                .byte $25, $12          ; low byte irq handler, offset to InterruptTable
    tile_pointer InfoCharacter
    end_row

                .byte $25, $14          ; low byte irq handler, offset to InterruptTable
    tile_pointer $672E ; command to load packed tiles at the specified offset
    end_row

                .byte $25, $16          ; low byte irq handler, offset to InterruptTable
    tile_pointer $674C ; command to load packed tiles at the specified offset
    end_frame

                .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, $1C
    .byte FRAME_BOTTOM_RIGHT
    end_frame

CharacterInfo:
    left
    .byte " "

    convert CHARACTER::Name, 0, 7       ; character name base addr (7440, 7480, 74C0, 7500) + $38
    convert CHARACTER::Level, 1, 3      ; character level base addr (7440, 7480, 74C0, 7500) + $10
    convert CHARACTER::Health, 2, 4     ; character health base addr (7440, 7480, 74C0, 7500) + $14
    convert CHARACTER::PP, 2, 4         ; character PP base addr (7440, 7480, 74C0, 7500) + $16
    convert CHARACTER::Exp, 3, 8        ; character experience base addr (7440, 7480, 74C0, 7500) + $11
    .byte " "
    right
    end_frame

byte_C398:      .byte 1
                .byte 4
                .word $A0A0 ; command to load packed tiles at the specified offset
                .byte $21 ; !           ; command to load packed tiles at the specified offset
ExclamationMark:
    .byte " !"
    end_frame

; =============== S U B R O U T I N E =======================================


out_msg_frame:
    .export out_msg_frame
    .import MsgFrame

    ldxa #MsgFrame

out_frame:
    stxa PointerTilePack
    lda IRQCount
    beq loc_C3AF
    jmp next_tilepack
; ---------------------------------------------------------------------------

loc_C3AF:
    jmp loc_C274
; End of function out_msg_frame


; =============== S U B R O U T I N E =======================================


goods_psi_frame:
    .export goods_psi_frame
    .import stru_929B

    ldxa #stru_929B
    jmp out_frame
; End of function goods_psi_frame


; =============== S U B R O U T I N E =======================================


sub_C3B9:
    .export sub_C3B9
    .import stru_92CF

    ldxa #stru_92CF
    jmp out_frame
; End of function sub_C3B9


; =============== S U B R O U T I N E =======================================


sub_C3C0:
    .export sub_C3C0
    .import byte_9300

    ldxa #byte_9300
    jmp out_frame
; End of function sub_C3C0


; =============== S U B R O U T I N E =======================================


draw_goods_menu:
    .export draw_goods_menu
    .import GoodsMenu

    ldxa #GoodsMenu
    jmp out_frame
; End of function draw_goods_menu


; =============== S U B R O U T I N E =======================================


sub_C3CE:
    .export sub_C3CE
    .import byte_935F

    ldxa #byte_935F
    jmp out_frame
; End of function sub_C3CE


; =============== S U B R O U T I N E =======================================


sub_C3D5:
    .export sub_C3D5

    jsr load_character_data ; Copies the characteristics of the characters
    ldxa #FrameOff
    jmp out_frame
; End of function sub_C3D5


; =============== S U B R O U T I N E =======================================


sub_C3DF:
    .export sub_C3DF
    .import stru_936A

    ldxa #stru_936A
    jmp out_frame
; End of function sub_C3DF


; =============== S U B R O U T I N E =======================================


state:
    .export state
    .import StateFrame

    ldxa #StateFrame
    jmp out_frame
; End of function state


; =============== S U B R O U T I N E =======================================


setup:
    .export setup
    .import Setup

    ldxa #Setup
    jmp out_frame
; End of function setup


; =============== S U B R O U T I N E =======================================


redraw_screen:
    .export redraw_screen
    .import update_animation

    php
    jsr draw_screen
    jsr update_animation
    lda #1
    sta NMIFlags
    lda #0
    sta DMCflag
    plp
    rts
; End of function redraw_screen


; =============== S U B R O U T I N E =======================================


draw_statistical_frame:
    .import sram_write_enable, sram_read_enable, FrameOff, Character
    .importzp Pointer, BankTable

                LDA     #$FF

loc_C408:
                STA     Pointer
                JSR     sram_write_enable
                LDA     #0

loc_C40F:
                PHA
                TAX
                LDA     Character,X
                BEQ     loc_C436
                LDA     Character + CHARACTER::NameOffset,X
                STA     PointerTilePack
                LDA     Character + CHARACTER::NameOffset+1,X
                STA     PointerTilePack+1
                LDY     #1
                LDA     Character + CHARACTER::field_1,X
                AND     Pointer
                STA     (PointerTilePack),Y
                LDY     #$14

loc_C42B:
                LDA     Character + CHARACTER::MaxHealth,X
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
                ldxa #FrameOff
                stxa PointerTilePack
                JSR     draw_tilepack
                BNE     loc_C458

loc_C455:
                JSR     draw_tilepack_clear

loc_C458:
                LDA     #2
                JSR     get_tile_pointer
                LDA     UnpackID        ; UnpackTable
                CMP     #0
                BNE     loc_C455
                INC     Row
                JSR     draw_tilepack
                PLA
                LDX     #6
                JMP     mmc3_bank_set   ; Set memory bank A - bank number, X - mode
; End of function draw_statistical_frame

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
                LDX     NMI_Data + NMI_DATA::PPU_Addr
                LDY     NMI_Data + NMI_DATA::PPU_Addr+1
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
                AND     #$42
                LSR     A
                LSR     A
                ADC     #0
                EOR     #$FF
                ADC     #1
                CLC
                ADC     BlockIndex
                TAY
                LDX     OffsetNMI_Data
                LDA     #WRITE_CHAR     ; #7  write_ppu_chars
                STA     NMI_Data,X
                INX
                LDA     LoopAddr        ; ROM:C84F, ROM:C881
                STA     NMI_Data,X
                INX

@next_attr:
                LDA     NTAddr
                STA     NMI_Data,X
                INX
                LDA     NTAddr+1
                STA     NMI_Data,X
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
                AND     #$30            ; left bottom attribute
                ORA     BlockIndex
                STA     BlockIndex
                INY
                LDA     AttributeCopy,Y
                AND     #$C0            ; right bottom attribute
                ORA     BlockIndex
                STA     NMI_Data,X
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

    jsr sram_write_enable
    ldx #$10
    ldy #0
    sty Counter

next_character:
    jsr get_characters_num
    bcs no_character
    inc Counter
    jsr get_sram_pointer ; Input: A - charachter number, Output: Pointer (word) = High $74 Low $40 * A
    tya
    pha
    ldy #0

@next_tilepack:
    jsr copy_tilepack   ; Copies a tilepack in blocks of 5 bytes with offset correction by the value stored in Pointer
                        ; Input: X - index for SRAM19:6700 (destination),
                        ;        Y - index for C37A (source)
    cpy #$14            ; Name, level, health, PP
    bne @next_tilepack
    tya
    pha                 ; store index $14 into the stack
    ldy #1
    lda (Pointer),Y     ; SRAM19:7441
    ldy #$E

loc_C56A:
    asl A
    bcc loc_C592
    pla
    tya
    pha
    ldy #0

loc_C572:
    lda byte_C398,Y
    sta Frames,X
    inx
    iny
    cpy #5
    bne loc_C572
    pla
    tay
    lda Condition,Y
    sta Frames,X
    inx
    lda Condition+1,Y
    sta Frames,X
    inx
    ldy #$1B
    bne next_byte

loc_C592:
    dey
    dey
    bpl loc_C56A
    pla
    tay                 ; restore index $14 from the stack and copy Exp
    jsr copy_tilepack   ; Copies a tilepack in blocks of 5 bytes with offset correction by the value stored in Pointer
                        ; Input: X - index for SRAM19:6700 (destination), Y - index for C37A (source)

next_byte:
    lda CharacterInfo,Y
    sta Frames,X
    inx
    iny
    cpy #$1E
    bne next_byte
    pla
    tay
    lda Counter
    cmp #3
    bcs loc_C5B5

no_character:
    iny
    cpy #4
    bcc next_character

loc_C5B5:
    lda #0
    sta $6704
    sta $6705
    sta $6706
    sec
    lda #3
    sbc Counter
    tax
    ldy #0

loc_C5C9:
    jsr get_characters_num
    bcs loc_C5D6
    sta $6704,X
    inx
    cpx #3
    bcs loc_C5DB

loc_C5D6:
    iny
    cpy #4
    bcc loc_C5C9

loc_C5DB:
    lda Counter
    asl A
    tax
    lda #4          ; frame_offset
    sta Frames
    sta $670A
    cpx #4
    bcs loc_C5EE
    lda #0

loc_C5EE:
    sta $670D
    lda off_C616,X
    sta $6701
    lda off_C616+1,X
    sta $6702
    lda $6713
    sta $670B
    lda $6714
    sta $670C
    lda #<(ExclamationMark)
    sta $670E
    lda #>(ExclamationMark)
    sta $670F     ; C39D
    jmp sram_read_enable
; End of function load_character_data

; ---------------------------------------------------------------------------
off_C616:
    .word EndTileMark, TilePack, stru_C33E, stru_C359

.import sCold, sPoison, sPuzzld, sConfsd, sAsleep, sParlzd, sStone, sFaintd
Condition:
    .word sCold, sPoison, sPuzzld, sConfsd, sAsleep, sParlzd, sStone, sFaintd

; =============== S U B R O U T I N E =======================================


get_characters_num:
    .import CurrentGame

    sec
    lda CurrentGame + PURE_SAVE::CharactersNum,Y
    beq @exit
    cmp #6

@exit:
    rts
; End of function get_characters_num


; =============== S U B R O U T I N E =======================================

; Copies a tilepack in blocks of 5 bytes with offset correction by the value stored in Pointer
; Input: X - index for SRAM19:6700 (destination),
;        Y - index for C37A (source)

copy_tilepack:
    lda CharacterInfo,Y
    sta Frames,X
    inx
    iny
    lda CharacterInfo,Y
    sta Frames,X
    inx
    iny
    lda CharacterInfo,Y
    sta Frames,X
    inx
    iny
    clc
    lda CharacterInfo,Y
    adc Pointer
    sta Frames,X
    inx
    iny
    lda CharacterInfo,Y
    adc Pointer+1
    sta Frames,X
    inx
    iny
    rts
; End of function copy_tilepack


; =============== S U B R O U T I N E =======================================

; Input: A - Character number
; Output: Pointer (word) = High $74 Low $40 * A

get_sram_pointer:
    .export get_sram_pointer

    sta Pointer+1
    lda #0
    lsr Pointer+1
    ror A
    lsr Pointer+1
    ror A
    adc #<CurrentGame
    sta Pointer
    lda Pointer+1
    adc #>CurrentGame
    sta Pointer+1
    rts
; End of function get_sram_pointer


; =============== S U B R O U T I N E =======================================


write_tiles:
    .export write_tiles

    jsr draw_tilepack
    bne loc_C682

loc_C67F:
    jsr draw_tilepack_clear

loc_C682:
    cmp #0
    bne loc_C67F
    inc Row
    jmp draw_tilepack
; End of function write_tiles


; =============== S U B R O U T I N E =======================================


draw_symbol:
    .export draw_symbol

    pha
    jsr wait_nmi_processed
    jsr nt_calc         ; Calculate Name table address Input: CameraX, CameraY, Column, Row
                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
    lda #WRITE_ROW      ; #5              ; write_horizontal
    sta NMI_Data + NMI_DATA::NMI_ID
    lda #1
    sta NMI_Data + NMI_DATA::NumOfChr
    lda NTAddr
    sta NMI_Data + NMI_DATA::PPU_Addr
    lda NTAddr+1
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    pla
    sta NMI_Data + NMI_DATA::Chr
    lda #0
    sta NMI_Data + NMI_DATA::Next
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    rts
; End of function draw_symbol


; =============== S U B R O U T I N E =======================================


add_spaces:
    .importzp PrintSize

    lda PrintSize
    clc
    sbc ChrCount
    bcc loc_C6CF
    tay

@next_space:
    lda #$A0
    jsr add_tile
    dey
    bpl @next_space
    ldy OffsetNMI_Data
    lda NMI_Data + NMI_DATA::NumOfChr,Y
    beq loc_C6CF
    txa
    tay

loc_C6CF:
    sty OffsetNMI_Data
    rts
; End of function add_spaces


; =============== S U B R O U T I N E =======================================


draw_tilepack:
    .export draw_tilepack, draw_tilepack_clear

    jsr wait_nmi_processed
    ldx #0
    stx OffsetNMI_Data
    beq tiles2nmi

draw_tilepack_clear:
    jsr wait_nmi_processed
    ldx #0
    stx OffsetNMI_Data
    jsr clear_area
    jsr add_spaces

tiles2nmi:
    jsr tiled_area
    jsr add_spaces
    lda #0
    sta NMI_Data,Y        ; save marker end of block
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags

check_last_row:
    jsr get_text_row_pointer
    lda UnpackID
    cmp #1
    bne @end_block
    inc Row
    inc Row

@end_block:
    rts
; End of function draw_tilepack


; =============== S U B R O U T I N E =======================================


print_string:
    .export print_string
    .import wait_frames, ModeSRAM, byte_7F1

    jsr wait_nmi_processed
    lda #$33
    sta OffsetNMI_Data
    pha
    jsr tiled_area
    jsr add_spaces
    sty AttributeOffset
    pla
    tax
    lda #WRITE_ROW      ; #5
    sta NMI_Data + NMI_DATA::NMI_ID
    lda #1
    sta NMI_Data + NMI_DATA::NumOfChr

loc_C723:
    lda #0
    sta NMI_Data,Y
    cpx AttributeOffset
    bcs check_last_row
    lda #8
    sta NMI_Data,Y
    lda NMI_Data + NMI_DATA::NumOfChr,X
    sta ChrCount
    sta NMI_Data + NMI_DATA::NumOfChr,Y
    lda #$A0
    sta NMI_Data + NMI_DATA::Chr,Y
    clc
    lda NMI_Data + NMI_DATA::PPU_Addr+1,X
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    adc #$20
    sta NMI_Data + NMI_DATA::PPU_Addr+1,Y
    lda NMI_Data + NMI_DATA::PPU_Addr,X
    sta NMI_Data + NMI_DATA::PPU_Addr
    adc #0
    sta NMI_Data + NMI_DATA::PPU_Addr,Y
    txa
    clc
    adc #4
    tax
    tya
    clc
    adc #5
    tay

next_char:
    lda NMI_Data,X        ; copy symol from NMI records to field char
    sta NMI_Data + NMI_DATA::Chr
    cmp #$A0
    beq @print_char
    lda ModeSRAM
    bmi @print_char
    eor #1
    sta ModeSRAM
    lsr A
    bcc @print_char
    lda #$E
    sta byte_7F1

@print_char:
    lda #0
    sta NMI_Data + NMI_DATA::Next
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    jsr wait_nmi_processed ; print one symbol
    bit ModeSRAM
    bvc next_nt_addr
    txa
    pha
    lda NMI_Data + NMI_DATA::Chr
    ldx #$28
    cmp #$AE
    beq loc_C79F
    cmp #$AC
    beq loc_C79F
    ldx #3

loc_C79F:
    jsr wait_frames     ; wait for a few frames input: X - number of frames
    pla
    tax

next_nt_addr:
    inc NMI_Data + NMI_DATA::PPU_Addr+1
    inx
    dec ChrCount
    bne next_char
    jmp loc_C723
; End of function print_string


; =============== S U B R O U T I N E =======================================

; Move $A4 chars from $432-4D6 to $45B-4FF

move_chars:
    .export move_chars

    cmp #1
    bne @exit
    pha
    ldx #$A4

@next_char:
    lda $432,X
    sta $45B,X
    dex
    bne @next_char
    pla

@exit:
    rts
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
                LDA     NMI_Data,X
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
                ADC     NMI_Data + NMI_DATA::NumOfChr,X
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
                SBC     #$29
                TAX
                LDA     #$80
                STA     NMIFlags
                CPX     #$5C
                BCS     sub_C7D4
                RTS
; End of function sub_C7D4


; =============== S U B R O U T I N E =======================================


sub_C80E:
                SEC
                LDA     NMI_Data + NMI_DATA::PPU_Addr+1,X
                SBC     #$20
                STA     NMI_Data + NMI_DATA::PPU_Addr+1,X
                LDA     NMI_Data + NMI_DATA::PPU_Addr,X
                STA     AttributeOffset
                SBC     #0
                STA     NMI_Data + NMI_DATA::PPU_Addr,X
                EOR     AttributeOffset
                AND     #4
                BEQ     locret_C83C
                SEC
                LDA     NMI_Data + NMI_DATA::PPU_Addr+1,X
                SBC     #$40
                STA     NMI_Data + NMI_DATA::PPU_Addr+1,X
                LDA     NMI_Data + NMI_DATA::PPU_Addr,X
                SBC     #4
                AND     #$F
                ORA     #$20
                STA     NMI_Data + NMI_DATA::PPU_Addr,X

locret_C83C:
                RTS
; End of function sub_C80E


; =============== S U B R O U T I N E =======================================


tiled_area:
    .importzp byte_71

    jsr nt_calc         ; Calculate Name table address
                        ; Input: CameraX, CameraY, Column, Row
                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
    lda byte_71
    sta ByteCount
    ldx OffsetNMI_Data
    ldy #0
    sty ChrCount
    tya
    pha
    jsr write_rows_header

@next_byte:
    dec ByteCount
    bpl @black_tile
    lda (PointerTilePack),Y
    jsr get_type
    bcs @tile
    storey #@next_byte, LoopAddr
    jmp jmp_handler
; ---------------------------------------------------------------------------

@black_tile:
    lda #$A0

@tile:
    jsr add_tile
    jmp @next_byte
; End of function tiled_area


; =============== S U B R O U T I N E =======================================


clear_area:
    dec Row
    jsr nt_calc
    lda byte_71
    sta ByteCount
    ldx OffsetNMI_Data
    ldy #0
    sty ChrCount
    tya
    pha
    jsr write_rows_header

next_byte1:
    dec ByteCount
    bpl @black_tile
    lda (PointerTilePack),Y
    jsr get_type_ex     ; returns a tile or function ID:
                        ; input: A - byte, Y - current block index
                        ; output: BlockIndex - next block index
                        ; A - tile ID or function ID (0 - 9)
    bcs @save_tile
    ora #$80
    storey #next_byte1, LoopAddr
    jmp jmp_handler     ; UnpackTable
; ---------------------------------------------------------------------------

@black_tile:
    lda #$A0

@save_tile:
    jsr add_tile
    jmp next_byte1
; ---------------------------------------------------------------------------

jmp_handler:
    sta UnpackID
    asl A
    tay
    lda UnpackTable+1,Y
    pha
    lda UnpackTable,Y
    pha
    rts
; End of function clear_area

; ---------------------------------------------------------------------------
UnpackTable:
    .word restore_pointer-1, restore_pointer-1, restore_pointer-1
    .word restore_pointer-1, set_tile_pos-1, check_pointer-1
    .word fill_tile-1, sub_C950-1, set_pointer-1, get_block_index-1

; =============== S U B R O U T I N E =======================================


set_pointer:
    ldy BlockIndex

set_new_pointer:
    lda (PointerTilePack),Y
    pha
    iny
    lda (PointerTilePack),Y
    sta PointerTilePack+1
    pla
    sta PointerTilePack
    ldy #0
    jmp (LoopAddr)
; End of function set_pointer


; =============== S U B R O U T I N E =======================================


check_pointer:
    ldy BlockIndex
    beq restore_pointer
    lda PointerTilePack
    pha
    lda PointerTilePack+1
    pha
    tya
    pha
    bne set_new_pointer

restore_pointer:
    pla
    beq @end_tile_pack
    tay
    iny
    iny
    pla
    sta PointerTilePack+1
    pla
    sta PointerTilePack
    jmp (LoopAddr)
; ---------------------------------------------------------------------------

@end_tile_pack:
    ldy OffsetNMI_Data
    lda NMI_Data + NMI_DATA::NumOfChr,Y
    beq @first
    txa
    tay

@first:
    lda UnpackID
    bpl @no_tile
    inc Row
    rts
; ---------------------------------------------------------------------------

@no_tile:
    lda BlockIndex
    jsr get_tile_pointer
    lda UnpackID
    rts
; End of function check_pointer


; =============== S U B R O U T I N E =======================================


set_tile_pos:
    ldy BlockIndex
    lda (PointerTilePack),Y
    sta Column
    iny
    lda (PointerTilePack),Y
    sta Row
    iny
    sty BlockIndex
    bcc @less_buf_size
    dec Row

@less_buf_size:
    ldy OffsetNMI_Data
    lda NMI_Data + NMI_DATA::NumOfChr,Y
    bne @write_header
    ldx OffsetNMI_Data

@write_header:
    jsr nt_calc         ; Calculate Name table address
                        ; Input: CameraX, CameraY, Column, Row
                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
    jsr write_rows_header
    ldy BlockIndex
    jmp (LoopAddr)
; End of function set_tile_pos


; =============== S U B R O U T I N E =======================================


fill_tile:
    ldy BlockIndex
    lda (PointerTilePack),Y
    bcc @save_tile_id
    lda #$A0

@save_tile_id:
    sta UnpackID
    iny
    lda (PointerTilePack),Y
    iny
    sty BlockIndex
    tay

@next_tile:
    dey
    bmi @end
    lda UnpackID
    jsr add_tile
    jmp @next_tile
; ---------------------------------------------------------------------------

@end:
    ldy BlockIndex
    jmp (LoopAddr)
; End of function fill_tile


; =============== S U B R O U T I N E =======================================


sub_C950:
    .importzp pTileID, TilepackMode, TilesCount, AddrForJmp

    ldy BlockIndex
    lda (PointerTilePack),Y
    sta pTileID
    iny
    lda (PointerTilePack),Y
    sta pTileID+1
    iny
    lda (PointerTilePack),Y
    sta TilepackMode
    iny
    lda (PointerTilePack),Y
    sta TilesCount
    iny
    tya
    pha
    ldy TilepackMode
    beq @mode0
    lda #0
    sta Pointer
    sta Pointer+1
    sta AddrForJmp
    dey

@next_byte:
    lda (pTileID),Y
    sta Pointer,Y
    dey
    bpl @next_byte
    txa
    pha
    jsr num2str         ; convert number to string (tile)
                        ; Input: AddrForJmp Pointer+1 Pointer - bytes of number
                        ; Output: $68-6F - string
    pla
    tax
    lda TilesCount
    bne @string_size
    sec
    lda #8
    sbc AddrForJmp+1
    sta TilesCount
    lda AddrForJmp+1
    bpl @tile_offset

@string_size:
    sec
    lda #8
    sbc TilesCount

@tile_offset:
    clc
    adc #$68
    sta pTileID
    lda #0
    adc #0
    sta pTileID+1

@mode0:
    ldy #0

next_tile:
    lda UnpackID        ; UnpackTable
    bmi loc_C9B2
    lda (pTileID),Y
    jsr get_type        ; returns a tile or function ID:
                        ; input: A - byte, Y - current block index
                        ; output: BlockIndex - next block index
                        ; A - tile ID or function ID (0 - 9) TypeTable
    bcs tile
    bcc loc_C9C0

loc_C9B2:
    lda (pTileID),Y
    jsr get_type_ex     ; returns a tile or function ID:
                        ; input: A - byte, Y - current block index
                        ; output: BlockIndex - next block index
                        ; A - tile ID or function ID (0 - 9)
    bcs tile
    bcc loc_C9C0

loc_C9BB:
    lda #$A0
    jsr add_tile

loc_C9C0:
    dec TilesCount
    bpl loc_C9BB
    bmi loc_C9CD

tile:
    jsr add_tile
    dec TilesCount
    bne next_tile

loc_C9CD:
    pla
    tay
    jmp (LoopAddr)
; End of function sub_C950


; =============== S U B R O U T I N E =======================================


get_block_index:
    ldy BlockIndex
    jmp (LoopAddr)
; End of function get_block_index


; =============== S U B R O U T I N E =======================================

; Calculate Name table address
; Input: CameraX, CameraY, Column, Row
; Output: NTAddr address for screen tile position (Column, Row + 1)

nt_calc:
    .export nt_calc
    .importzp CntrlPPU, CameraX, CameraY

    lda CntrlPPU
    lsr A
    lsr A               ; check work with Nametables $2000,$2400 or $2800, $2C00
    lda CameraY
    ror A
    clc
    adc #8
    sta NTAddr+1
    lda Row
    adc #1
    asl A
    asl A
    clc
    adc NTAddr+1
    bvs loc_C9F1
    sec
    sbc #8

loc_C9F1:
    asl A
    and #$F8
    sta NTAddr+1
    lda #2
    rol A
    asl A
    asl NTAddr+1
    rol A
    asl NTAddr+1
    rol A
    sta NTAddr
    lda CntrlPPU
    lsr A
    lda CameraX
    ror A
    lsr A
    lsr A
    clc
    adc Column
    tay
    and #$20
    lsr A
    lsr A
    lsr A
    adc NTAddr
    sta NTAddr
    tya
    and #$1F
    adc NTAddr+1
    sta NTAddr+1
    rts
; End of function nt_calc


; =============== S U B R O U T I N E =======================================


add_tile:
    sta NMI_Data,X
    inx
    txa
    ldx OffsetNMI_Data
    inc NMI_Data + NMI_DATA::NumOfChr,X
    tax
    inc ChrCount
    inc AttributeOffset
    beq loc_CA31
    rts
; ---------------------------------------------------------------------------

loc_CA31:
    lda NTAddr+1
    and #$E0
    sta NTAddr+1
    lda NTAddr
    eor #4
    sta NTAddr
; End of function add_tile


; =============== S U B R O U T I N E =======================================


write_rows_header:
    stx OffsetNMI_Data
    lda #WRITE_ROW      ; #5 write_horizontal function ID
    sta NMI_Data,X
    inx
    lda #0
    sta NMI_Data,X
    inx
    lda NTAddr
    sta NMI_Data,X
    inx
    lda NTAddr+1
    sta NMI_Data,X
    inx
    ora #$E0
    sta AttributeOffset
    rts
; End of function write_rows_header


; =============== S U B R O U T I N E =======================================

; returns a tile or function ID:
; input: A - byte, Y - current block index
; output: BlockIndex - next block index
; A - tile ID or function ID (0 - 9)
; TypeTable

get_type:
    iny
    sty BlockIndex      ; index = 0, 4, 5, 6, 7, ..., B
    cmp #$40
    bcs exit
    tay
    lda TypeTable,Y
    ldy BlockIndex
    cmp #$80
    bcs exit
    cmp #$20 
    bcs loc_CA79
    cmp #$A
    bcs @no_procedure
    rts
; ---------------------------------------------------------------------------

@no_procedure:
    ora #$D0
    rts
; ---------------------------------------------------------------------------

loc_CA79:
    ora #$80

exit:
    rts
; End of function get_type


; =============== S U B R O U T I N E =======================================

; returns a tile or function ID:
; input: A - byte, Y - current block index
; output: BlockIndex - next block index
; A - tile ID or function ID (0 - 9)

get_type_ex:
    iny
    sty BlockIndex
    cmp #$40
    bcs @black_tile
    tay
    lda TypeTable,Y
    ldy BlockIndex
    cmp #$80
    bcs @line
    cmp #$20
    bcs @arrow
    cmp #$A
    bcs @frame
    rts
; ---------------------------------------------------------------------------

@frame:
    ora #$D0
    rts
; ---------------------------------------------------------------------------

@arrow:
    lda #$FF
    rts
; ---------------------------------------------------------------------------

@line:
    lda #$FE
    rts
; ---------------------------------------------------------------------------

@black_tile:
    lda #$A0
    rts
; End of function get_type_ex


; =============== S U B R O U T I N E =======================================


text2stack:
    .export text2stack
    .importzp DialogPage, CHRText

    lda DialogPage
    bpl loc_CAA9
    sta PointerTilePack+1
    rts
; ---------------------------------------------------------------------------

loc_CAA9:
    cmp #$7F
    bcs loc_CAE1
    tax
    lda PointerTilePack
    asl PointerTilePack
    rol DialogPage
    adc PointerTilePack
    sta PointerTilePack
    txa
    adc DialogPage
    adc #$80
    sta PointerTilePack+1
    lda #$7F
    sta DialogPage
    lda BankTable + BANK_TABLE::CPU_8K_8000
    pha
    lda #$18
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    ldy #0
    lda (PointerTilePack),Y
    sta CHRText + CHR_TXT_OFFSET::PPU_LOW
    iny
    lda (PointerTilePack),Y
    sta CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
    iny
    lda (PointerTilePack),Y
    sta CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
    pla
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode

loc_CAE1:
    jsr wait_nmi_processed
    lda #$A             ; chr_text2stack
    sta NMI_Data + NMI_DATA::NMI_ID
    lda CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
    lsr A
    lda CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
    ror A
    sec
    ror A
    sta NMI_Data + NMI_DATA::NumOfChr
    lda CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
    and #3
    ora #8
    sta NMI_Data + NMI_DATA::PPU_Addr
    lda CHRText + CHR_TXT_OFFSET::PPU_LOW
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    lda #0
    sta NMI_Data + NMI_DATA::Chr
    lda #0
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    lda #$10
    sta PointerTilePack ; stack $110
    lda #1
    sta PointerTilePack+1
    jmp wait_nmi_processed
; End of function text2stack


; =============== S U B R O U T I N E =======================================


get_text_row_pointer:
    lda PointerTilePack+1
    bpl loc_CB21
    sta DialogPage
    rts
; ---------------------------------------------------------------------------

loc_CB21:
    sec
    lda PointerTilePack
    sbc #$10
    clc
    adc CHRText + CHR_TXT_OFFSET::PPU_LOW
    sta CHRText + CHR_TXT_OFFSET::PPU_LOW
    lda #0
    adc CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
    sta CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH
    lda #0
    adc CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
    sta CHRText + CHR_TXT_OFFSET::BANK_PPU_HIGH+1
    rts
; End of function get_text_row_pointer


; =============== S U B R O U T I N E =======================================


get_tile_pointer:
    clc
    adc PointerTilePack
    sta PointerTilePack
    lda #0
    adc PointerTilePack+1
    sta PointerTilePack+1
    rts
; End of function get_tile_pointer


; =============== S U B R O U T I N E =======================================


main:
    .export main
    .import game_intro, routine_selector, clear_oam_sprite, wait_change_music
    .import sub_13A1C6, sub_13A123, sub_13A82F, sub_13A000, command_menu, sub_13AB53
    .import sub_149516, sub_149779, sub_1497A3, CurrentMusic
    .importzp ButtonPressed0, Gamepad0Buttons
    .importzp byte_D, byte_1F, byte_20, byte_21, byte_22, byte_23, byte_24, byte_25
    .importzp EnemyGroup

    jsr sram_read_enable
    lda #SRAM_WRITE_DISABLE|SRAM_ENABLE
    sta ModeSRAM
    jsr bank14_8000
    jsr game_intro
    lda #SRAM_WRITE_ENABLE|SRAM_DISABLE
    sta ModeSRAM

new_place:
    jsr bank13_A000
    jsr routine_selector ; execute a function from the table BANK13:BCFD

loc_CB5D:
    jsr load_character_data ; Copies the characteristics of the characters
    jsr sub_CEFC
    lda #0
    sta byte_24
    lda CurrentGame + PURE_SAVE::GlobalY
    and #$F
    eor #$84
    sta byte_D

draw:
    jsr clear_oam_sprite
    jsr draw_screen     ; load room

loc_CB76:
    jsr sub_DE99
    jsr sub_EEF0
    lda byte_25
    bne loc_CB91
    lda ButtonPressed0
    and #$70
    beq loc_CB8F
    jsr get_command
    and #8
    beq loc_CB8F
    lda #1

loc_CB8F:
                sta     byte_1F

loc_CB91:
                jsr     wait_nmi_processed
                lda     byte_20
                bne     new_place
                jsr     sub_DD01
                jsr     sub_DFDA
                jsr     sub_CC2B        ; draw screen
                lda     byte_21
                beq     loc_CBAD
                jsr     bank13_A000
                jsr     sub_13A1C6
                bcc     loc_CBEB

loc_CBAD:
                jsr     bank13_A000
                lda     #0
                ldy     Gamepad0Buttons
                sta     Gamepad0Buttons
                lda     byte_22
                ora     byte_23
                ora     byte_21
                ora     byte_20
                bne     loc_CBEB
                tya
                and     #$F0
                bmi     loc_CBE2
                bne     loc_CBCD
                jsr     sub_13A123
                jmp     loc_CBE5
; ---------------------------------------------------------------------------

loc_CBCD:
                jsr     get_command
                and     #$A0
                beq     loc_CBE5
                bmi     loc_CBDC
                jsr     sub_13A82F
                jmp     loc_CBE5
; ---------------------------------------------------------------------------

loc_CBDC:
                jsr     sub_13A000
                jmp     loc_CBE5
; ---------------------------------------------------------------------------

loc_CBE2:
                jsr     command_menu

loc_CBE5:
                jsr     bank14_8000
                jsr     sub_149516

loc_CBEB:
                lda     EnemyGroup
                beq     no_enemy
                cmp     #$A2
                beq     loc_CC1A
                jsr     wait_nmi_processed
                lda     CurrentMusic
                pha
                jsr     start_battle
                pla
                bcs     loc_CC14
                jsr     wait_change_music
                lda     byte_21
                beq     loc_CC11
                jsr     bank13_A000
                jsr     sub_13AB53
                lda     byte_20
                bne     loc_CC14

loc_CC11:
                jmp     draw
; ---------------------------------------------------------------------------

loc_CC14:
                jmp     loc_CB5D
; ---------------------------------------------------------------------------

no_enemy:
                jmp     loc_CB76
; ---------------------------------------------------------------------------

loc_CC1A:
                jsr     bank14_8000
                jsr     sub_149779
                jsr     start_battle
                bcs     loc_CC14
                jsr     bank14_8000
                jmp     sub_1497A3
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
                STA     NMI_Data,X
                STA     OffsetNMI_Data
                LDA     #$80
                STA     NMIFlags
                BNE     loc_CC83

loc_CC5D:
                JSR     sub_D05E
                JSR     sub_D0B1
                JSR     sub_D232
                LDA     #0
                STA     NMI_Data,X
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
                STA     NMI_Data,X
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


get_command:
    lsr A
    lsr A
    lsr A
    lsr A
    tax
    ldy CmndBtn,X
    lda CurrentGame + PURE_SAVE::CmndBtn,Y
    rts
; End of function get_command

; ---------------------------------------------------------------------------
CmndBtn:
    .byte 0, 1, 2, 1, 0, 0, 0, 0

; =============== S U B R O U T I N E =======================================


sub_CCB1:
    .import wait_press_button, apu_7F0
    .importzp MaskPPU

                LDA     #$FF
                JSR     wait_change_music
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
    .import sub_13BBD4, SpriteTable, byte_7F3, byte_7F4
    .importzp byte_F, byte_A0, ButtonPressed0, byte_22, byte_25

    lda CurrentMusic
    pha
    lda #$FF
    sta byte_F
    jsr wait_change_music
    jsr redraw_screen
    lda #1
    sta byte_7F4
    jsr sub_CD9D
    ldx #5

loc_CCF0:
    jsr sub_CD8B
    lda byte_A0
    bmi sub_CCB1
    lda ButtonPressed0
    and #$F
    tax
    lda $EBDD,X         ; byte_EBDD,X
    bmi loc_CD0C
    ora #$40
    tax
    eor byte_22
    cmp #4
    beq loc_CD0C
    stx byte_22

loc_CD0C:
    ldx byte_25
    inx
    cpx #$2D
    bcc loc_CCF0
    jsr wait_nmi_processed
    lda #$20

loc_CD18:
    tax
    asl SpriteTable + ANIM_SPRITE::field_4,X
    asl SpriteTable + ANIM_SPRITE::field_5,X
    sec
    sbc #8
    bne loc_CD18
    lda #$A

loc_CD26:
    pha
    jsr sub_CC2B
    jsr wait_nmi_processed
    pla
    sec
    sbc #1
    bne loc_CD26
    lda #1
    sta byte_7F3
    lda #$22
    jsr one_color_palettes_save
    jsr bank13_A000
    jsr sram_write_enable
    jsr sub_13BBD4
    jsr sub_D9FA
    pla
    lda CurrentGame + PURE_SAVE::GlobalX
    tax
    and #$3F
    pha
    txa
    and #$C0
    sta CurrentGame + PURE_SAVE::GlobalX
    jsr sub_D8C9
    ldx #20
    jsr wait_frames     ; wait for a few frames input: X - number of frames
    jsr load_character_data ; Copies the characteristics of the characters
    jsr sub_CEFC
    jsr clear_oam_sprite
    jsr draw_screen
    jsr sub_CD9D
    ldx #$2C

loc_CD70:
    jsr sub_CD8B
    ldx byte_25
    dex
    dex
    bpl loc_CD70

loc_CD79:
    ldx #0
    stx byte_22
    stx Gamepad0Buttons
    stx byte_F
    jsr sub_CDAF
    pla
    jsr wait_change_music
    jmp loc_CB76
; End of function sub_CCB1


; =============== S U B R O U T I N E =======================================


sub_CD8B:
    jsr sub_CDAF
    jsr sub_DE99
    jsr wait_nmi_processed
    jsr sub_DD01
    jsr sub_DFDA
    jmp sub_CC2B
; End of function sub_CD8B


; =============== S U B R O U T I N E =======================================


sub_CD9D:
                JSR     sram_write_enable
                LDA     CurrentGame + PURE_SAVE::GlobalY
                AND     #$F
                STA     $6799
                ORA     #$40
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
                LDA     CurrentMusic
                TAX
                PLA
                JSR     wait_change_music
                LDA     #0
                STA     Gamepad0Buttons

loc_CDF1:
                BIT     Gamepad0Buttons
                BVS     loc_CDFA
                LDA     CurrentMusic
                BNE     loc_CDF1

loc_CDFA:
                LDA     #0
                STA     Gamepad0Buttons
                TXA
                JMP     wait_change_music
; End of function sub_CDE4


; =============== S U B R O U T I N E =======================================

; copy chr banks $5E, $5F in SRAM $6C00-$73FF

chr_5E_5F_to_sram:
    .export chr_5E_5F_to_sram, chr2sram
    .import __FRAMES_RUN__

    ldy #$5E
    ldxa #__FRAMES_RUN__

chr2sram:
    stxa Pointer
    jsr wait_nmi_processed
    tya
    ldx #1
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda #READ           ; #9 read_ppu function ID
    ldx #$40            ; record size
    sta NMI_Data + NMI_DATA::NMI_ID
    stx NMI_Data + NMI_DATA::NumOfChr
    lda #0
    ldx #$18
    stx NMI_Data + NMI_DATA::PPU_Addr
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    lda #0
    sta $444            ; pNMI_Data ($400) + NMI_Data header size (4) + record size ($40)
    ldx #$20            ; number of blocks

@next_block:
    lda #0
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    jsr wait_nmi_processed
    jsr sram_write_enable
    ldy #0

@next_chr:
    lda NMI_Data + NMI_DATA::Chr,Y
    sta (Pointer),Y
    iny
    cpy #$40
    bcc @next_chr
    jsr sram_read_enable
    clc
    tya
    adc Pointer
    sta Pointer
    lda #0
    adc Pointer+1
    sta Pointer+1
    clc
    tya
    adc NMI_Data + NMI_DATA::PPU_Addr+1
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    lda #0
    adc NMI_Data + NMI_DATA::PPU_Addr
    sta NMI_Data + NMI_DATA::PPU_Addr
    dex
    bne @next_block
    rts
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
                LDA     #$40
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                CLC
                LDA     #$40
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
    pha
    jsr wait_nmi_processed
    pla
    sta NMI_Data + NMI_DATA::PPU_Addr+1
    stx NMI_Data + NMI_DATA::PPU_Addr
    sty NMI_Data + NMI_DATA::NMI_ID
    lda #$40
    sta NMI_Data + NMI_DATA::NumOfChr
    lda #0
    sta $444
    lda #0
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    rts
; End of function sub_CEB2


; =============== S U B R O U T I N E =======================================


bank13_A000:
    .export bank13_A000

    lda #$13
    ldx #7
    jmp mmc3_bank_set   ; Set memory bank
; End of function bank13_A000

; =============== S U B R O U T I N E =======================================


bank17_A000:
    lda #$17
    ldx #7
    jmp mmc3_bank_set   ; Set memory bank
; End of function bank17_A000

; =============== S U B R O U T I N E =======================================


bank14_8000:
    .export bank14_8000

    lda #$14
    ldx #6
    jmp mmc3_bank_set   ; Set memory bank
; End of function bank14_8000

; =============== S U B R O U T I N E =======================================

; set 6 memory banks for PPU
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

set_ppu_banks:
    .export set_ppu_banks

    stxa Pointer
    ldx #CHR_1K_XC00    ; Select 1K CHR ROM page at 0C00h, 0800h, 0400h, 0000h,
                        ; and 2K CHR ROM page at 1800h, 1000h in PPU space
    ldy #5

@next_chr_bank:
    lda (Pointer),Y
    beq @no_chr_bank
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode

@no_chr_bank:
    dex
    dey
    bpl @next_chr_bank
    rts
; End of function set_ppu_banks


; =============== S U B R O U T I N E =======================================


sub_CEFC:
    .import PalNMIBG, PalNMISpr
    .importzp p4TileID, MapSectorID, Color_0C, Color_0E, BlockCount
    .importzp HighGlobalY, HighGlobalY_plus1_carry, LowGlobalYC0, MaskORA
    .importzp HighGlobalX, HighGlobalX_plus2, LowGlobalXC0, LowGlobalXC0_0
    .importzp Tile4Count, ShiftCameraY
    .importzp byte_AE, byte_AF

    jsr sub_D674
    lda #$14
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda #0
    sta p4TileID+1
    lda MapSectorID
    asl A
    asl A
    asl A
    rol p4TileID+1
    asl A
    rol p4TileID+1
    adc #0
    sta p4TileID
    lda p4TileID+1
    adc #$90
    sta p4TileID+1
    jsr wait_nmi_processed
    ldy #$F

@get_bg_color:
    lda (p4TileID),Y
    bpl @save_bg_color
    jsr get_save_field

@save_bg_color:
    sta PalNMIBG,Y
    dey
    bpl @get_bg_color
    ldy #$F

@next_color:
    lda SpritePallete,Y
    sta PalNMISpr,Y
    dey
    bpl @next_color
    ldx PalNMIBG+$C
    ldy PalNMIBG+$E
    stx Color_0C
    sty Color_0E
    ldx #BLACK
    ldy #WHITE
    stx PalNMIBG+$C
    sty PalNMIBG+$E
    jsr load_map_tile
    lda LowGlobalYC0
    and #$C0
    sta MaskORA
    lda HighGlobalY
    sta HighGlobalY_plus1_carry
    lda #$40
    sta byte_AE
    lda #0
    sta byte_AF
    lda #$10
    sta BlockCount

@next_block:
    sec
    lda LowGlobalXC0
    and #$C0
    sbc #$40
    sta LowGlobalXC0_0
    lda HighGlobalX
    sbc #0
    sta HighGlobalX_plus2
    lda #$13
    sta Tile4Count
    jsr load_map
    dec BlockCount
    beq @last_block
    clc
    lda MaskORA
    adc #$40
    sta MaskORA
    lda HighGlobalY_plus1_carry
    adc #0
    sta HighGlobalY_plus1_carry
    jmp @next_block
; ---------------------------------------------------------------------------

@last_block:
    jsr get_shift_camerax ; ShiftCameraX = ((field_5 & 7)(field4_bits7_6 & C0)) >> 2
    ldy #0
    sty ShiftCameraY
    jmp sub_DD72
; End of function sub_CEFC

; ---------------------------------------------------------------------------
SpritePallete:
    .byte BLACK, BLACK, DARK_GRAY, WHITE                ; PALETTE0
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE     ; PALETTE1
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE   ; PALETTE2
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE  ; PALETTE3

; =============== S U B R O U T I N E =======================================


draw_screen:
    .export draw_screen
    .import PalSpr
    .importzp ShiftCameraX, MaskCntrlPPU, ScreenY, Add_Off_pAttr

    jsr wait_nmi_processed
    clc
    lda ShiftCameraX    ; start X - for the game screen
    ora #8
    tax
    ldy ShiftCameraY
    lda CntrlPPU
    and #$FC
    ora MaskCntrlPPU
    sta CntrlPPU
    stx CameraX
    sty CameraY
    sty ScreenY
    clc
    lda LowGlobalYC0
    and #$C0
    adc #$80
    sta MaskORA
    lda HighGlobalY
    adc #3
    sta HighGlobalY_plus1_carry
    lda #$F
    sta BlockCount

next_block:
    clc
    lda ScreenY
    adc #$F0
    bcs loc_CFE1
    adc #$F0

loc_CFE1:
    sta ScreenY
    lda LowGlobalXC0
    and #$C0
    sta LowGlobalXC0_0
    lda HighGlobalX
    sta HighGlobalX_plus2
    ldx BlockCount
    lda locret_D04E,X   ; get value from the table D04F
    eor ScreenY
    and #$10
    bne loc_CFFB
    lda locret_D04E,X

loc_CFFB:
    sta Add_Off_pAttr
    jsr wait_nmi_processed
    jsr write_tile_attr
    lda #0
    sta NMI_Data,X
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    dec BlockCount
    beq last_block
    lda BlockCount
    asl A
    tax
    jsr wait_nmi_flags_reset
    lda #LIGHT_REDVIOLET
    sta PalSpr+$E,X
    sec
    lda MaskORA
    sbc #$40
    sta MaskORA
    lda HighGlobalY_plus1_carry
    sbc #0
    sta HighGlobalY_plus1_carry
    jmp next_block
; ---------------------------------------------------------------------------

last_block:
    jsr wait_nmi_processed
    jsr load_map_tile
    lda #LOAD_PALETTES      ; #4 load_palettes ID
    sta NMI_Data + NMI_DATA::NMI_ID
    lda #0
    sta NMI_Data + NMI_DATA::NumOfChr
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    lda #$88
    sta byte_A0
    lda #0
    sta IRQCount
    sta Gamepad0Buttons

locret_D04E:
    rts
; End of function draw_screen

; ---------------------------------------------------------------------------
    .byte $F0, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $20

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
    lda HighGlobalX
    and #7
    sta MaskCntrlPPU
    lda LowGlobalXC0
    and #$C0
    lsr MaskCntrlPPU
    ror A
    lsr MaskCntrlPPU
    ror A
    sta ShiftCameraX

locret_D0B0:
    rts
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

    jsr get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr0 $6200 or $6300
                        ; AttributeScr1 $6400 or $6500
                        ; OffScreen - offset

next_quadrant:
    jsr load_data_bank
    ldy #0
    lda (p4TileID),Y    ; BANK03:BC08 BANK03:BB0C
    and #$3F
    cmp MapSectorID
    beq @get_map_tile_id
    lda Color_0E        ; $40
    jmp @get_pointer_quadrant
; ---------------------------------------------------------------------------

@get_map_tile_id:
    lda DataBank
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    clc
    lda HighGlobalX_plus2
    sta p4TileID
    lda HighGlobalY_plus1_carry
    and #$1F
    adc #$80
    sta p4TileID+1
    ldy #0
    lda (p4TileID),Y    ; BANK02:9008, BANK02:9108, BANK02:9208, BANK02:9308
    bpl @get_pointer_quadrant
    jsr get_save_field

@get_pointer_quadrant:
    tax
    and #$40
    asl A
    sta FirstTileID
    lsr A
    lsr A
    sta BankHighOffset
    beq @low_bank
    lda BankNum1Mask3
; ---------------------------------------------------------------------------
    .byte $2C
; ---------------------------------------------------------------------------

@low_bank:
    lda BankNum0Mask3
    sta p4TileID+1
    txa
    asl A
    asl A
    asl A
    rol p4TileID+1
    asl A
    rol p4TileID+1
    sta p4TileID
    sta p4TileAttr
    lda p4TileID+1
    adc #$80
    adc BankHighOffset
    sta p4TileID+1
    adc #$10
    sta p4TileAttr+1
    lda BankNum0
    lsr A
    ora #1
    ldx #6
    jsr mmc3_bank_set   ; load map BANK0D:8000
    lda BankNum1
    lsr A
    ora #1
    ldx #7
    jsr mmc3_bank_set   ; load map BANK0D:A000

next_tile_and_attr:
    lda LowGlobalXC0_0
    lsr A
    lsr A
    ora MaskORA
    lsr A
    lsr A
    lsr A
    lsr A
    tax
    tay
    jsr sram_write_enable
    lda (p4TileID),Y    ; BANK0D:A800 BANK0D:8420 BANK0D:A900 BANK0D:A920 BANK0D:8760
    eor FirstTileID
    ldy OffScreen
    sta (Screen),Y
    txa
    tay
    lda (p4TileAttr),Y  ; BANK0D:B800 BANK0D:9420 BANK0D:B900 BANK0D:B920 BANK0D:9760
    and #$C0
    sta Attribute_0
    lsr A
    lsr A
    ora Attribute_0
    lsr A
    lsr A
    ora Attribute_0
    lsr A
    lsr A
    ora Attribute_0
    ldy OffScreen
    sta (AttributeScr0),Y
    lda #0
    sta (AttributeScr1),Y
    jsr sram_read_enable
    dec Tile4Count
    beq exit
    lda byte_AE
    beq loc_D1F9
    inc OffScreen
    clc
    adc LowGlobalXC0_0
    sta LowGlobalXC0_0
    bcc jmp_next_tile_and_attr
    lda #0
    adc HighGlobalX_plus2
    sta HighGlobalX_plus2
    and #3
    bne jmp_next_quadrant
    lda OffScreen
    sec
    sbc #$10
    sta OffScreen
    lda Screen+1
    eor #1
    sta Screen+1
    clc
    adc #2
    sta AttributeScr0+1
    adc #2
    sta AttributeScr1+1
    jmp next_quadrant
; ---------------------------------------------------------------------------

loc_D1F9:
    ldx byte_AF
    beq exit
    clc
    lda OffScreen
    adc #$10
    sta OffScreen
    clc
    txa
    adc MaskORA
    sta MaskORA
    bcc jmp_next_tile_and_attr
    lda #0
    adc HighGlobalY_plus1_carry
    sta HighGlobalY_plus1_carry
    jmp next_quadrant
; ---------------------------------------------------------------------------

jmp_next_tile_and_attr:
    jmp next_tile_and_attr
; ---------------------------------------------------------------------------

jmp_next_quadrant:
    jmp next_quadrant
; ---------------------------------------------------------------------------

exit:
    rts
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
byte_D284:
    .byte 0, 0,   0, 0, $10, $F0, $10, $88
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

    jsr sub_D4B7
    lda #$11
    sta TilesNum
    ldx #0

@add_nmi_tiles:
    lda #WRITE_ROW          ; #5 write_horizontal ID
    sta NMI_Data,X
    sta NMI_Data + NMI_DATA::NMI_ID+$2A,X
    inx
    lda TilesNum
    asl A
    sta NMI_Data,X
    sta NMI_Data + NMI_DATA::NMI_ID+$2A,X
    inx
    lda PPUAddr+1
    sta NMI_Data,X
    sta NMI_Data + NMI_DATA::NMI_ID+$2A,X
    inx
    lda PPUAddr
    sta NMI_Data,X
    ora #$20
    sta NMI_Data + NMI_DATA::NMI_ID+$2A,X
    inx

@add_tiles:
    jsr get4tileID_pointer ; Gets a pointer to the quadrant of tiles in bank D.
                        ; Input: OffScreen - offset to screen area for Screen pointer ($6000, $6100)
                        ;        BankNum0Mask3, BankNum1Mask3 - masks
                        ; Output: p4TileID - pointer to the quadrant of tiles
    ldy #0
    lda (p4TileID),Y    ; BANK0D:9200(BANK0D:B200) BANK0D:B400(BANK0D:9400)
    and #$3F
    eor FirstTileID
    sta NMI_Data,X        ; lelft top tile
    iny
    lda (p4TileID),Y
    and #$3F
    eor FirstTileID
    sta NMI_Data + NMI_DATA::NumOfChr,X ; right top tile
    iny
    lda (p4TileID),Y
    and #$3F
    eor FirstTileID
    sta NMI_Data + NMI_DATA::NMI_ID+$2A,X ; left bottom tile
    iny
    lda (p4TileID),Y
    and #$3F
    eor FirstTileID
    sta NMI_Data + NMI_DATA::NumOfChr+$2A,X ; right bottom tile
    inx
    inx
    dec TilesNum
    beq @last_tile
    inc OffScreen
    lda OffScreen
    bit EndRow
    bne @add_tiles
    sec
    sbc #$10
    sta OffScreen
    lda Screen+1
    eor #1
    sta Screen+1
    lda PPUAddr
    and #$E0
    sta PPUAddr
    lda PPUAddr+1
    eor #4
    sta PPUAddr+1
    sec
    lda #$11
    sbc TilesNum
    asl A
    sta NMI_Data + NMI_DATA::NumOfChr
    sta NMI_Data + NMI_DATA::NumOfChr+$2A
    jmp @add_nmi_tiles
; ---------------------------------------------------------------------------

@last_tile:
    lda #9
    sta TilesNum
    ldx #$54
    lda #WRITE_CHAR         ; #7 write_ppu_chars
    sta NMI_Data,X
    inx
    lda TilesNum
    sta NMI_Data,X
    inx

@next_attr:
    jsr write_attr
    dec TilesNum
    beq @exit
    inc PPUAttribute
    clc
    lda Off_pAttr
    adc #2
    sta Off_pAttr
    bit EndRow
    bne @next_attr
    sec
    sbc #$10
    sta Off_pAttr
    lda AttributeScr0+1
    eor #1
    sta AttributeScr0+1
    sec
    lda PPUAttribute
    sbc #8
    sta PPUAttribute
    lda PPUAttribute+1
    eor #4
    sta PPUAttribute+1
    jmp @next_attr
; ---------------------------------------------------------------------------

@exit:
    rts
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
                LDA     #WRITE_COLUMN               ; #6
                STA     NMI_Data,X
                STA     NMI_Data + NMI_DATA::Chr+$1E,X
                INX
                LDA     TilesNum
                ASL     A
                STA     NMI_Data,X
                STA     NMI_Data + NMI_DATA::Chr+$1E,X
                INX
                LDA     PPUAddr+1
                AND     #$FC
                STA     NMI_Data,X
                STA     NMI_Data + NMI_DATA::Chr+$1E,X
                INX
                LDA     PPUAddr
                AND     #$1E
                STA     NMI_Data,X
                ORA     #1
                STA     NMI_Data + NMI_DATA::Chr+$1E,X
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
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data,X
                INY
                LDA     (p4TileID),Y
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::Chr+$1E,X
                INY
                LDA     (p4TileID),Y
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::NumOfChr,X
                INY
                LDA     (p4TileID),Y
                AND     #$3F
                EOR     FirstTileID
                STA     NMI_Data + NMI_DATA::Next+$1E,X
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
                LDX     #$44
                LDA     #7
                STA     NMI_Data,X
                INX
                LDA     TilesNum
                STA     NMI_Data,X
                INX
                LDA     ScreenY
                AND     #$10
                BEQ     loc_D455
                SEC
                LDA     Off_pAttr
                PHA
                SBC     #$10
                STA     Off_pAttr
                LDA     #$20
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
                ADC     #$20
                STA     Off_pAttr
                CLC
                LDA     PPUAttribute
                ADC     #8
                STA     PPUAttribute
                BCC     loc_D459
                SBC     #$40
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
EndRow:
    .byte $F

; =============== S U B R O U T I N E =======================================


write_attr:
    .importzp AttributeScr0, Attribute_0

    lda PPUAttribute+1
    sta NMI_Data,X
    inx
    lda PPUAttribute
    sta NMI_Data,X
    inx
    ldy Off_pAttr
    lda (AttributeScr0),Y
    and #3
    sta Attribute_0
    iny
    lda (AttributeScr0),Y
    and #$C
    ora Attribute_0
    sta Attribute_0
    clc
    lda Off_pAttr
    adc Add_Off_pAttr
    tay
    lda (AttributeScr0),Y
    and #$30
    ora Attribute_0
    sta Attribute_0
    iny
    lda (AttributeScr0),Y
    and #$C0
    ora Attribute_0
    sta NMI_Data,X
    inx
    rts
; End of function write_attr


; =============== S U B R O U T I N E =======================================


sub_D4B7:
    .importzp BankNum0, BankNum1, ScreenX, StartX

    lda BankNum0        ; $19 >> 1 || 1 = $D
    lsr A
    ora #1
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda BankNum1        ; $1A >> 1 || 1 = $D
    lsr A
    ora #1
    ldx #7
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    jsr get_screen_pointers ; set base address Screen $6000 or $6100, AttributeScr0 $6200 or $6300
                        ; AttributeScr1 $6400 or $6500, OffScreen - offset
    lda HighGlobalX_plus2
    and #7
    sta ScreenX
    lda LowGlobalXC0_0
    lsr ScreenX
    ror A
    lsr ScreenX
    ror A
    sta StartX
    lda ScreenY
    eor OffScreen
    and #$10
    bne loc_D4ED
    lda OffScreen
    and #$EE
    jmp loc_D4F6
; ---------------------------------------------------------------------------

loc_D4ED:
    sec
    lda OffScreen
    sbc #$10
    ora #$10
    and #$FE

loc_D4F6:
    bit Add_Off_pAttr
    bpl loc_D501
    ldx #$20
    stx Add_Off_pAttr
    sec
    sbc #$10

loc_D501:
    sta Off_pAttr
    lda ScreenY
    and #$F0
    sta PPUAddr
    lda ScreenX
    asl PPUAddr
    rol A
    asl PPUAddr
    rol A
    ora #$20
    sta PPUAddr+1
    ora #3
    sta PPUAttribute+1
    lda StartX
    and #$F0
    lsr A
    lsr A
    lsr A
    ora PPUAddr
    sta PPUAddr
    lsr A
    lsr A
    and #7
    sta PPUAttribute
    lda ScreenY
    lsr A
    lsr A
    and #$38
    ora #$C0
    ora PPUAttribute
    sta PPUAttribute
    rts
; End of function sub_D4B7


; =============== S U B R O U T I N E =======================================

; Gets a pointer to the quadrant of tiles in bank D.
; Input: OffScreen - offset to screen area for Screen pointer ($6000, $6100)
;        BankNum0Mask3, BankNum1Mask3 - masks
; Output: p4TileID - pointer to the quadrant of tiles

get4tileID_pointer:
    .importzp BankHighOffset, BankNum0Mask3, BankNum1Mask3

    ldy OffScreen
    lda (Screen),Y
    and #$80
    lsr A
    sta FirstTileID
    lsr A
    sta BankHighOffset
    beq loc_D548
    lda BankNum1Mask3
; ---------------------------------------------------------------------------
    .byte $2C
; ---------------------------------------------------------------------------

loc_D548:
    lda BankNum0Mask3
    sta p4TileID+1
    lda (Screen),Y
    asl A
    asl A
    rol p4TileID+1
    sta p4TileID
    lda p4TileID+1
    adc #$90
    adc BankHighOffset
    sta p4TileID+1      ; BANK0D:9200
    rts
; End of function get4tileID_pointer


; =============== S U B R O U T I N E =======================================

; set base address Screen $6000 or $6100
; AttributeScr0 $6200 or $6300
; AttributeScr1 $6400 or $6500
; OffScreen - offset

get_screen_pointers:
    .export get_screen_pointers
    .importzp AttributeScr1

    lda HighGlobalX_plus2
    and #7
    sta Screen+1
    lda LowGlobalXC0_0
    lsr Screen+1
    ror A
    lsr Screen+1
    ror A
    lsr A
    lsr A
    ora MaskORA
    sta OffScreen
    lda HighGlobalY_plus1_carry
    lsr A
    ror OffScreen
    lsr A
    ror OffScreen
    lda #0
    sta Screen
    sta AttributeScr0
    sta AttributeScr1
    lda Screen+1
    clc
    adc #$60
    sta Screen+1
    adc #2
    sta AttributeScr0+1
    adc #2
    sta AttributeScr1+1
    rts
; End of function get_screen_pointers


; =============== S U B R O U T I N E =======================================


get_map_sector_id:
    jsr load_data_bank  ; load data bank and get p4TileID
    ldy #0
    lda (p4TileID),Y    ; BANK03:BC08
    and #$3F
    sta MapSectorID
    rts
; End of function get_map_sector_id


; =============== S U B R O U T I N E =======================================


load_data_bank:
    .importzp DataBank

    lda HighGlobalY_plus1_carry
    lsr A
    lsr A
    lsr A
    lsr A
    and #$E
    sta DataBank
    ora #1
    ldx #7
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda HighGlobalY_plus1_carry
    lsr A
    lsr A
    and #7
    sta p4TileID+1
    lda HighGlobalX_plus2
    and #$FC
    clc
    sta p4TileID
    lda p4TileID+1
    adc #$B8
    sta p4TileID+1
    rts
; End of function load_data_bank


; =============== S U B R O U T I N E =======================================


load_map_tile:
    .importzp MsgNumber

    clc
    lda HighGlobalX
    adc #2
    sta HighGlobalX_plus2
    clc
    lda LowGlobalYC0
    adc #$C0
    sta MaskORA
    lda HighGlobalY
    adc #1
    sta HighGlobalY_plus1_carry
    jsr load_data_bank
    ldy #0
    lda (p4TileID),Y
    and #$3F
    cmp MapSectorID
    beq loc_D5F3
    lda Color_0C ; $1A
    ldx #3
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    sta BankNum1
    and #3
    sta BankNum1Mask3
    rts
; ---------------------------------------------------------------------------

loc_D5F3:
    lda byte_23
    beq loc_D5FF
    bpl set_PPU1800
    and #$7F
    sta byte_23
    bpl set_PPU0000

loc_D5FF:
    ldy #1
    lda (p4TileID),Y    ; BANK03:BC09
    and #$3F
    sta MsgNumber
    tax
    lda CHRTable_0,X    ; CHR personage table
    beq set_PPU0000

set_PPU1800:
    ldx #1
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode

set_PPU0000:
    ldy #2
    lda (p4TileID),Y
    and #$3F
    ldx #2
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    sta BankNum0
    and #3
    sta BankNum0Mask3
    iny
    lda (p4TileID),Y
    and #$3F
    ldx #3
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    sta BankNum1
    and #3
    sta BankNum1Mask3
    rts
; End of function load_map_tile

; ---------------------------------------------------------------------------
CHRTable_0:
    .byte   0, $68, $62, $62, $62, $62, $64, $62, $74, $64, $6A, $62, $66, $6C, $62,   0 ; CHR personage table
    .byte   0,   0,   0,   0, $66,   0, $6A, $66, $62, $68, $64, $68, $6E, $66, $66, $66
    .byte $62, $62, $62, $66, $64, $6E, $62, $64, $66, $74, $6C, $66,   0,   0, $68, $6C
    .byte $72,   0, $66,   0,   0,   0, $6A,   0, $6C, $6E, $6C, $6E, $6C, $6E, $6E,   0

; =============== S U B R O U T I N E =======================================


sub_D674:
    .export sub_D674
    .importzp LowGlobalY3F, Dist, MsgOffset

    lda byte_20
    bpl loc_D697
    and #$F
    sta LowGlobalY3F
    lda $6784
    and #$C0
    sta LowGlobalXC0_0
    lda $6785
    sta HighGlobalX_plus2
    lda $6786
    and #$C0
    sta MaskORA
    lda $6787
    sta HighGlobalY_plus1_carry
    jmp loc_D6CB
; ---------------------------------------------------------------------------

loc_D697:
    lda CurrentGame + PURE_SAVE::GlobalY
    and #$3F
    sta LowGlobalY3F
    clc
    lda CurrentGame + PURE_SAVE::GlobalX
    and #$C0
    sta LowGlobalXC0
    adc #0
    sta LowGlobalXC0_0
    lda CurrentGame + PURE_SAVE::GlobalX+1
    sta HighGlobalX
    adc #2
    sta HighGlobalX_plus2
    clc
    lda CurrentGame + PURE_SAVE::GlobalY
    and #$C0
    sta LowGlobalYC0
    adc #$C0
    sta MaskORA
    lda CurrentGame + PURE_SAVE::GlobalY+1
    sta HighGlobalY
    adc #1
    sta HighGlobalY_plus1_carry
    jsr get_map_sector_id

loc_D6CB:
    jsr get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr0 $6200 or $6300
                        ; AttributeScr1 $6400 or $6500
                        ; OffScreen - offset
    jsr get_characters_buffer
    jsr sram_write_enable
    lda byte_23
    bne loc_D71B
    ldx #0

loc_D6DA:
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_D6F2
    jsr sub_D7DF
    ldy #$19
    lda #$88
    sta (Dist),Y
    lda #$C
    cpx #0
    bne loc_D6F2
    ldy #CHARACTER::field_1C
    lda (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000

loc_D6F2:
    ldy #0
    sta (Dist),Y
    lda byte_20
    and #$C0
    beq loc_D73B
    jsr get_dist_addr
    inx
    cpx #4
    bcc loc_D6DA

loc_D704:
    lda CurrentGame + PURE_SAVE::GlobalX
    and #$3F
    beq loc_D70E
    jsr wait_change_music

loc_D70E:
    lda #0
    sta byte_20
    lda byte_22
    and #$CF
    sta byte_22
    jmp sram_read_enable
; ---------------------------------------------------------------------------

loc_D71B:
    jsr loc_D7E2
    ldy #0
    lda (Dist),Y
    and #$3F
    cmp #$D
    bne loc_D738
    jsr sub_D884
    ldy #$19
    lda LowGlobalY3F
    sta (Dist),Y
    eor #4
    sta LowGlobalY3F
    jsr loc_D7E2

loc_D738:
    jmp loc_D704
; ---------------------------------------------------------------------------

loc_D73B:
    lda CurrentGame + PURE_SAVE::CharactersNum+1,X
    beq loc_D745
    jsr sub_D768
    bcc loc_D751

loc_D745:
    jsr get_dist_addr
    jsr sram_write_enable
    ldy #0
    lda #0
    sta (Dist),Y

loc_D751:
    inx
    cpx #3
    bcc loc_D73B
    jmp loc_D704
; End of function sub_D674


; =============== S U B R O U T I N E =======================================


sub_D759:
    .export sub_D759

                PHA
                LDX     #0

loc_D75C:
                LDA     CurrentGame + PURE_SAVE::CharactersNum+1,X
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
                STA     CurrentGame + PURE_SAVE::CharactersNum+1,X
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
                CMP     CurrentGame + PURE_SAVE::CharactersNum,X
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
                LDA     CurrentGame + PURE_SAVE::CharactersNum+1,X
                BEQ     loc_D7AE
                STA     CurrentGame + PURE_SAVE::CharactersNum,X
                INX
                BCC     loc_D79D

loc_D7AC:
                LDA     #0

loc_D7AE:
                STA     CurrentGame + PURE_SAVE::CharactersNum,X
                TXA
                JSR     sub_D86C
                JSR     sub_DFBF
                JSR     get_characters_buffer
                LDX     #0

loc_D7BD:
                LDA     CurrentGame + PURE_SAVE::CharactersNum,X
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
    jsr sub_D813

loc_D7E2:
    ldy #4
    lda LowGlobalXC0_0
    sta (Dist),Y
    iny
    lda HighGlobalX_plus2
    sta (Dist),Y
    ldy #6
    lda MaskORA
    sta (Dist),Y
    iny
    lda HighGlobalY_plus1_carry
    sta (Dist),Y
    ldy #$11
    lda OffScreen
    sta (Dist),Y
    iny
    lda AttributeScr1
    sta (Dist),Y
    iny
    lda AttributeScr1+1
    sta (Dist),Y
    lda LowGlobalY3F
    ldy #$15
    sta (Dist),Y
    ldy #$1D
    sta (Dist),Y
    rts
; End of function sub_D7DF


; =============== S U B R O U T I N E =======================================


sub_D813:
    ldy #2
    and #7
    sta MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
    lda #<CurrentGame   ; #0
    lsr MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
    ror A
    lsr MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
    ror A
    sta MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
    sta (Dist),Y
    iny
    lda MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
    adc #>CurrentGame   ; #$74
    sta MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
    sta (Dist),Y
    ldy #CHARACTER::field_1D    ; #$1D
    lda (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    ldy #$14
    pha
    and #$F0
    sta (Dist),Y
    ldy #8
    pla
    and #$F
    sta (Dist),Y

loc_D840:
    ldy #CHARACTER::field_1E    ; #$1E
    lda (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    ldy #$16
    sta (Dist),Y
    ldy #CHARACTER::field_1E+1  ; #$1F
    lda (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    ldy #$17
    sta (Dist),Y
    clc
    ldy #CHARACTER::field_1    ; #1
    lda (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    bpl locret_D86B
    and #$80
    sta (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    ldy #$16
    lda (Dist),Y
    adc #$A0
    sta (Dist),Y
    iny
    lda (Dist),Y
    adc #0
    sta (Dist),Y
    sec

locret_D86B:
    rts
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

                LDA     CurrentGame + PURE_SAVE::field_181
                BPL     loc_D8DD
                LDA     #6
                JSR     sub_D78D

loc_D8DD:
                LDA     CurrentGame + PURE_SAVE::field_1C1
                BPL     loc_D8E7
                LDA     #7
                JSR     sub_D78D

loc_D8E7:
                LDX     #0
                STX     ItemCount

loc_D8EB:
                JSR     get_character_num
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
                STA     CurrentGame + PURE_SAVE::Boy1 + CHARACTER::field_1
                STA     CurrentGame + PURE_SAVE::Boy1 + CHARACTER::PP
                STA     CurrentGame + PURE_SAVE::Boy1 + CHARACTER::PP+1
                LDA     CurrentGame + PURE_SAVE::Boy1 + CHARACTER::MaxHealth
                STA     CurrentGame + PURE_SAVE::Boy1 + CHARACTER::Health
                LDA     CurrentGame + PURE_SAVE::Boy1 + CHARACTER::MaxHealth+1
                STA     CurrentGame + PURE_SAVE::Boy1 + CHARACTER::Health+1
                LDA     CurrentGame + PURE_SAVE::Cash
                LSR     CurrentGame + PURE_SAVE::Cash + 1
                ROR     A
                ADC     #0
                STA     CurrentGame + PURE_SAVE::Cash
                LDA     CurrentGame + PURE_SAVE::Cash + 1
                ADC     #0
                STA     CurrentGame + PURE_SAVE::Cash + 1
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
                STA     CurrentGame + PURE_SAVE::GlobalX,X
                DEY
                DEX
                BPL     loc_D950
                LDA     CurrentGame + PURE_SAVE::GlobalY
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
                LDA     CurrentGame + PURE_SAVE::CharactersNum
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
                LDA     CurrentGame + PURE_SAVE::CharactersNum,X
                PHA
                LDA     CurrentGame + PURE_SAVE::CharactersNum+1,X
                STA     CurrentGame + PURE_SAVE::CharactersNum,X
                PLA
                STA     CurrentGame + PURE_SAVE::CharactersNum+1,X
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
                ADC     #$20
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


get_character_num:
    .export get_character_num

    sec
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq @no_character
    cmp #6

@no_character:
    rts
; End of function get_character_num


; =============== S U B R O U T I N E =======================================


sub_D9FA:
    .export sub_D9FA

                LDX     #0

loc_D9FC:
                LDA     CurrentGame + PURE_SAVE::CharactersNum,X
                BEQ     loc_DA10
                JSR     get_sram_pointer ; Input: A - Character number
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                LDY     #$2C

loc_DA06:
                LDA     $73D8,Y
                STA     (Pointer),Y
                INY
                CPY     #$30
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
                JSR     update_animation
                LDX     #0

loc_DA1E:
                JSR     get_character_num
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
    .importzp CharNum, Item, Price, byte_49, byte_4A, byte_4B, CharacterOffset

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
                JSR     get_character_num
                BCS     loc_DADD
                STA     CharNum
                TXA
                LSR     A
                ROR     A
                ROR     A
                ROR     A
                STA     CharacterOffset
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

loc_DAB9:
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
                LDA     EnemyGroup
                BEQ     loc_DB30
                STA     Item
                JSR     bank13_A000
                JSR     sub_13BBC3
                LDA     #$FF
                STA     Price
                LDA     Price+1
                ORA     #$1F

loc_DB0A:
                ASL     Price
                ASL     A
                BCC     loc_DB0A
                JSR     sub_F1ED
                AND     Price
                BNE     loc_DB30
                JSR     sub_13BB8C
                LDX     #0

loc_DB1B:
                JSR     get_character_num
                BCS     loc_DB2B
                STA     CharNum
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
                STA     byte_7F1
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
                CMP     #$63
                BCC     loc_DB75
                RTS
; ---------------------------------------------------------------------------

loc_DB75:
                ADC     #1
                STA     (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
                JSR     loc_C43F
                JSR     sram_write_enable
                LDA     #$FF
                JSR     wait_change_music
                LDA     #$1F
                JSR     wait_change_music
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
                ADC     #$7B
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
                LDA     CharNum
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

    clc
    lda byte_4C
    adc CurrentGame + PURE_SAVE::field_0,X
    sta CurrentGame + PURE_SAVE::field_0,X
    lda byte_4D
    adc CurrentGame + PURE_SAVE::field_1,X
    sta CurrentGame + PURE_SAVE::field_1,X
    lda #0
    adc CurrentGame + PURE_SAVE::GameNumber,X
    sta CurrentGame + PURE_SAVE::GameNumber,X
    bcc locret_DC37
    lda #$FF
    sta CurrentGame + PURE_SAVE::field_0,X
    sta CurrentGame + PURE_SAVE::field_1,X
    sta CurrentGame + PURE_SAVE::GameNumber,X

locret_DC37:
    rts
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
                JSR     multiply        ; Input: A, X - multipliers Output: A - result
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
                STX     Item
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
                STA     byte_7F1
                LDA     #$83
                JSR     sub_17A3F8

loc_DCC6:
                LDX     Item
                INX
                BNE     loc_DC97
                PLA

locret_DCCC:
                RTS
; End of function sub_DC87


; =============== S U B R O U T I N E =======================================


sub_DCCD:
    .export sub_DCCD

                LDA     Item
                CLC
                ADC     #$C0
                ROR     A
                LSR     A
                LSR     A
                TAY
                LDA     Item
                AND     #7
                TAX
                LDA     byte_EC5D,X
                RTS
; End of function sub_DCCD


; =============== S U B R O U T I N E =======================================


sub_DCDF:
                CLC
                LDA     CharNum
                ADC     #$B8
                BCC     loc_DCE8
; End of function sub_DCDF


; =============== S U B R O U T I N E =======================================


sub_DCE6:
                LDA     Item

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
                JMP     set_bank0_0
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
                AND     #$3F
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
                ORA     CurrentMusic
                LDX     HighGlobalX
                stxa    CurrentGame + PURE_SAVE::GlobalX
                LDA     LowGlobalYC0
                AND     #$C0
                ORA     $6795
                LDX     HighGlobalY
                stxa    CurrentGame + PURE_SAVE::GlobalY

loc_DD54:
                JMP     sram_read_enable
; End of function sub_DD01


; =============== S U B R O U T I N E =======================================


get_characters_buffer:
    ldxa #Buffer
    stxa Dist
    ldx #$FC
    stx SaveNum
    rts
; End of function get_characters_buffer


; =============== S U B R O U T I N E =======================================


get_dist_addr:
    clc
    lda Dist
    adc #$20
    sta Dist
    lda Dist+1
    adc #0
    sta Dist+1
    rts
; End of function get_dist_addr


; =============== S U B R O U T I N E =======================================


sub_DD72:
    jsr sub_DE29
    jsr sram_write_enable

@next_record:
    jsr get_source
    jsr sub_DD88
    jsr get_msg_dist_addr
    dec SaveNum
    bne @next_record
    jmp sram_read_enable
; End of function sub_DD72


; =============== S U B R O U T I N E =======================================


sub_DD88:
    .importzp Source

    ldy #1
    lda MsgNumber
    sta (Dist),Y
    lda ItemCount
    bne @item

@no_msg:
    ldy #0
    sta (Dist),Y
    rts
; ---------------------------------------------------------------------------

@item:
    ldy #0
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    and #$3F
    beq @no_msg
    jsr sub_DE13
    ldy #2
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    and #$3F
    ldy #$15
    sta (Dist),Y
    ldy #4
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    ldy #$16
    sta (Dist),Y
    ldy #5
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    ldy #$17
    sta (Dist),Y
    ldy #0
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    and #$C0
    ldy #4
    sta (Dist),Y
    sta LowGlobalXC0_0
    ldy #1
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    ldy #5
    sta (Dist),Y
    sta HighGlobalX_plus2
    ldy #2
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    and #$C0
    ldy #6
    sta (Dist),Y
    sta MaskORA
    ldy #3
    lda (Source),Y      ; byte_109EAB, byte_109EB3
    ldy #7
    sta (Dist),Y
    sta HighGlobalY_plus1_carry
    ldy #2
    lda Source          ; byte_109EAB, byte_109EB3
    sta (Dist),Y
    iny
    lda Source+1        ; byte_109EAB, byte_109EB3
    sta (Dist),Y
    jsr get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr0 $6200 or $6300
                        ; AttributeScr1 $6400 or $6500
                        ; OffScreen - offset
    ldy #$11
    lda OffScreen
    sta (Dist),Y
    iny
    lda AttributeScr1
    sta (Dist),Y
    iny
    lda AttributeScr1+1
    sta (Dist),Y
    ldy #$18
    ldx #8
    lda #0

@clear:
    sta (Dist),Y
    iny
    dex
    bne @clear
    rts
; End of function sub_DD88


; =============== S U B R O U T I N E =======================================


sub_DE13:
    .export sub_DE13

    ldy #0
    sta (Dist),Y
    asl A
    asl A
    tax
    ldy #8
    lda $E107,X             ; stru_E105.value,X
    sta (Dist),Y
    ldy #$14
    lda $E108,X             ; stru_E105.value+1,X
    sta (Dist),Y
    rts
; End of function sub_DE13


; =============== S U B R O U T I N E =======================================


sub_DE29:
    lda MsgNumber
    jsr set_msg_bank
    asl A
    tax
    lda $8000,X     ; BANK10:8000, BANK11:8000, BANK12:8000
    sta MsgOffset   ; BANK10:8000, BANK11:8000, BANK12:8000
    lda $8000+1,X   ; 0x1A records
    sta MsgOffset+1 ; BANK10:8000, BANK11:8000, BANK12:8000
    lda #2
    sta ItemCount

loc_DE3E:
    ldxa #byte_6800
    stxa Dist
    ldx #$28
    stx SaveNum
    rts
; End of function sub_DE29


; =============== S U B R O U T I N E =======================================


get_source:
    ldy #1
    lda (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    beq @last_record
    sta Source+1        ; byte_109EAB, byte_109EB3
    dey
    lda (MsgOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    sta Source          ; byte_109EAB, byte_109EB3
    rts
; ---------------------------------------------------------------------------

@last_record:
    sta ItemCount
    rts
; End of function get_source


; =============== S U B R O U T I N E =======================================


get_msg_dist_addr:
    clc
    lda MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
    adc ItemCount
    sta MsgOffset       ; BANK10:8000, BANK11:8000, BANK12:8000
    lda MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
    adc #0
    sta MsgOffset+1     ; BANK10:8000, BANK11:8000, BANK12:8000
    jmp get_dist_addr
; End of function get_msg_dist_addr


; =============== S U B R O U T I N E =======================================


set_msg_bank:
    .export set_msg_bank

    cmp #$2B
    bcc @bank11         ; A < 2B; C = 0
    ldx #$12            ; BANK12:8000
    sbc #$2B            ; A -= 2B + C get the index of the text in the memory bank
    bcs @set_bank       ; A > 2B

@bank11:
    cmp #$1A
    bcc @bank10         ; A < 1A; C = 0
    ldx #$11            ; BANK $11 $8000
    sbc #$1A            ; get the index of the text in the memory bank
    bcs @set_bank

@bank10:
    ldx #$10            ; BANK10:8000

@set_bank:
    pha                 ; save text index into the stack
    txa
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    pla
    rts
; End of function set_msg_bank


; =============== S U B R O U T I N E =======================================


set_bank0_0:
    .export set_bank0_0

    ldx #6
    lda #0
    jmp mmc3_bank_set   ; Set memory bank 0
; End of function set_bank0_0

; =============== S U B R O U T I N E =======================================


set_bank0_1:
    ldx #6
    lda #0
    jmp mmc3_bank_set   ; Set memory bank 0
; End of function set_bank0_1

; =============== S U B R O U T I N E =======================================


sub_DE99:
    jsr sub_DE29
    jsr sram_write_enable

loc_DE9F:
    jsr get_source
    ldy #1
    lda (Dist),Y
    cmp MsgNumber
    beq loc_DEB9
    ldy #0
    lda (Dist),Y
    asl A
    beq loc_DEB6
    jsr sub_E1BE
    bcs loc_DECF

loc_DEB6:
    jsr sub_DD88

loc_DEB9:
    ldy #0
    lda (Dist),Y
    asl A
    beq loc_DED7
    jsr sub_E1BE
    bcs loc_DECF
    ldy #0
    lda (Dist),Y
    ora #$80
    sta (Dist),Y
    bmi loc_DED7

loc_DECF:
    ldy #0
    lda (Dist),Y
    and #$3F
    sta (Dist),Y

loc_DED7:
    jsr get_msg_dist_addr
    dec SaveNum
    bne loc_DE9F
    jsr loc_DE3E

loc_DEE1:
    ldy #0
    lda (Dist),Y
    beq loc_DEEF
    bmi loc_DEEF
    jsr sub_E0F9
    jsr sub_DEF9

loc_DEEF:
    jsr get_dist_addr
    dec SaveNum
    bne loc_DEE1
    jmp sram_read_enable
; End of function sub_DE99


; =============== S U B R O U T I N E =======================================


sub_DEF9:
    .importzp FieldPosition, CursorMode, byte_3A, byte_3B, byte_3C, byte_3D

    ldy #$11
    lda (Dist),Y
    sta pDist+1
    iny
    lda (Dist),Y
    sta FieldPosition
    iny
    lda (Dist),Y
    sta CursorMode
    ldy #0
    lda (Dist),Y
    bpl loc_DF12
    jmp loc_DFAF
; ---------------------------------------------------------------------------

loc_DF12:
    clc
    lda LowGlobalXC0
    adc #$60
    sta Pointer
    lda HighGlobalX
    adc #0
    sta Pointer+1
    sec
    ldy #4
    lda (Dist),Y
    sbc Pointer
    sta Pointer
    iny
    lda (Dist),Y
    sbc Pointer+1
    sta Pointer+1
    clc
    lda LowGlobalYC0
    adc #$A4
    sta pTileID
    lda HighGlobalY
    adc #0
    sta pTileID+1
    sec
    ldy #6
    lda (Dist),Y
    sbc pTileID
    sta pTileID
    iny
    lda (Dist),Y
    sbc pTileID+1
    sta pTileID+1
    ldy #8
    lda Pointer+1
    and #4
    asl A
    asl A
    asl A
    asl A
    asl A
    ora (Dist),Y
    sta (Dist),Y
    iny
    lda pTileID+1
    and #4
    asl A
    asl A
    asl A
    asl A
    asl A
    ora (Dist),Y
    sta (Dist),Y
    iny
    lda Pointer
    lsr Pointer+1
    ror A
    lsr Pointer+1
    ror A
    sta (Dist),Y
    iny
    lda pTileID
    lsr pTileID+1
    ror A
    lsr pTileID+1
    ror A
    sta (Dist),Y
    lda LowGlobalY3F
    bmi loc_DFB8
    ldy #4
    lda byte_3A
    sta (Dist),Y
    iny
    lda byte_3B
    sta (Dist),Y
    ldy #6
    lda byte_3C
    sta (Dist),Y
    iny
    lda byte_3D
    sta (Dist),Y
    ldy #$11
    lda OffScreen
    sta (Dist),Y
    iny
    lda AttributeScr1
    sta (Dist),Y
    iny
    lda AttributeScr1+1
    sta (Dist),Y
    ldy OffScreen
    lda SaveNum
    sta (AttributeScr1),Y

loc_DFAF:
    ldy pDist+1
    lda SaveNum
    eor (FieldPosition),Y
    beq loc_DFBC
    rts
; ---------------------------------------------------------------------------

loc_DFB8:
    ldy pDist+1
    lda SaveNum

loc_DFBC:
    sta (FieldPosition),Y
    rts
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

                LDA     CurrentGame + GAME_SAVE::field_21F
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

    and #$3F
    tax
    lda CurrentGame,X
    rts
; End of function get_save_field


; =============== S U B R O U T I N E =======================================


sub_E0F9:
    asl A
    asl A
    tax
    lda $E106,X            ; stru_E105.subroutine+1,X
    pha
    lda $E105,X            ;stru_E105,X
    pha
    rts
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
    rts

; =============== S U B R O U T I N E =======================================


sub_E1BE:
    ldy #4
    lda (Dist),Y
    sta byte_3A
    iny
    lda (Dist),Y
    sta byte_3B
    ldy #6
    lda (Dist),Y
    sta byte_3C
    iny
    lda (Dist),Y
    sta byte_3D

loc_E1D4:
    sec
    lda byte_3C
    sbc LowGlobalYC0
    sta pTileID
    lda byte_3D
    sbc HighGlobalY
    sta pTileID+1
    sec
    lda #$C0
    sbc pTileID
    lda #3
    sbc pTileID+1
    bcc locret_E20E
    lda LowGlobalXC0
    sbc #$40
    sta Pointer
    lda HighGlobalX
    sbc #0
    sta Pointer+1
    sec
    lda byte_3A
    sbc Pointer
    sta Pointer
    lda byte_3B
    sbc Pointer+1
    sta Pointer+1
    sec
    lda #$80
    sbc Pointer
    lda #4
    sbc Pointer+1

locret_E20E:
    rts
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
                ADC     #<Buffer        ; #$80
                STA     Source          ; byte_109EAB, byte_109EB3
                LDA     Source+1        ; byte_109EAB, byte_109EB3
                ADC     #>Buffer        ; #$67
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
                JSR     mmc3_bank_set   ; Set memory bank A - bank number, X - mode
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
                JSR     mmc3_bank_set   ; Set memory bank A - bank number, X - mode
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
                AND     #$3F
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
                JSR     mmc3_bank_set   ; Set memory bank A - bank number, X - mode
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
ReturnTab:
    .word sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
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
                AND     #$20
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
                .byte $2C
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
                AND     #$3F
                ORA     #$40
                STA     Pointer
                LDA     LowGlobalY3F
                LSR     A
                AND     #$40
                EOR     Pointer
                STA     (Dist),Y
                LDY     #9
                LDA     #$38
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
                STA     CurrentGame + PURE_SAVE::GlobalX
                INY
                LDA     (Pointer),Y
                SBC     #2
                STA     CurrentGame + PURE_SAVE::GlobalX+1
                INY
                SEC
                LDA     (Pointer),Y
                SBC     #$C0
                STA     CurrentGame + PURE_SAVE::GlobalY
                INY
                LDA     (Pointer),Y
                SBC     #1
                STA     CurrentGame + PURE_SAVE::GlobalY+1
                LDA     #$40
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
                LDA     #$28
                SBC     SaveNum
                CLC
                ADC     #$84
                STA     byte_21

loc_E88F:
                LDY     #$19
                LDA     (Dist),Y
                TAX
                AND     #$20
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
; End of function sub_E8E8

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

    jsr darken_palette
    ldx #0
    ldy #8
    jsr set_camera
    ldxa #CHRTable
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
    lda #1
    sta MIRROR           ; horizontal mirroring
    lda #$80
    sta ModeSRAM
    lda #$7C
    sta BankPPU_X000
    sta BankPPU_X400
    sta BankPPU_X800
    sta BankPPU_XC00
    lda #0
    sta byte_46
    lda #0
    sta byte_45
    ldx #9

@next_byte:
    lda IRQTable,X
    sta InterruptTable,X
    dex
    bpl @next_byte
    jsr sub_ED1A
    jmp wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EC65


; =============== S U B R O U T I N E =======================================


sub_ECA3:
    .importzp JmpInstr

                LDA     #$C3
                JSR     loc_C408
                LDX     #30
                JSR     wait_frames     ; wait for a few frames input: X - number of frames
                JSR     sub_D8D3
                BCS     loc_ECB6
                JSR     sub_DA48
                CLC

loc_ECB6:
                PHP
                JSR     sub_D977
                LDX     #$3C

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
                LDA     #$60
                LDX     #0
                JSR     mmc3_bank_set   ; Set memory bank A - bank number, X - mode
                LDA     #0
                STA     MIRROR
                STA     IRQCount
                STA     PrintSize
                STA     byte_71
                STA     EnemyGroup
                STA     ModeSRAM
                STA     JmpInstr
                PLP
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_ECA3

; ---------------------------------------------------------------------------
CHRTable:
    .byte $78, 0, $7C, $7D, $7E, $7F

IRQTable:
    .word sub_ED22-1, loc_ED62-1, sub_ED22-1, load_fonts-1, 0

; =============== S U B R O U T I N E =======================================


shift_down_window:
    .export shift_down_window, shift_up_window

    ldx #$FC            ; shift down
; ---------------------------------------------------------------------------
    .byte $2C           ; mask LDX #4 BIT $04A2 instruction
; ---------------------------------------------------------------------------

shift_up_window:
    ldx #4              ; shift up
    jsr wait_nmi_processed
    stx ShiftY          ; $E9 <- 4 shift up or $FC shift down
    ldx #$14

@next_shift:
    lda #1              ; shift up or down window
    sta NMIFlags
    jsr wait_nmi_processed
    jsr sub_ED1A
    dex
    bne @next_shift
    lda #0
    sta ShiftY
    rts
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
                STX     BANK_SELECT
                STA     BANK_DATA
                INX
                LDA     BankPPU_X400
                BPL     loc_ED41
                LDA     #$7C

loc_ED41:
                STX     BANK_SELECT
                STA     BANK_DATA
                INX
                LDA     BankPPU_X800
                BPL     loc_ED4E
                LDA     #$7C

loc_ED4E:
                STX     BANK_SELECT
                STA     BANK_DATA
                INX
                LDA     BankPPU_XC00
                BPL     loc_ED5B
                LDA     #$7C

loc_ED5B:
                STX     BANK_SELECT
                STA     BANK_DATA
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
                STX     BANK_SELECT
                STA     BANK_DATA
                INX
                LDA     BankPPU_X400
                AND     #$7F
                STX     BANK_SELECT
                STA     BANK_DATA
                INX
                LDA     BankPPU_X800
                AND     #$7F
                STX     BANK_SELECT
                STA     BANK_DATA
                INX
                LDA     BankPPU_XC00
                AND     #$7F
                STX     BANK_SELECT
                STA     BANK_DATA
                RTS
; End of function sub_ED22


; =============== S U B R O U T I N E =======================================


load_fonts:
    .export locret_EDCA
    .importzp byte_44

    lda byte_44
    sta byte_46
    lda #$C8
    jsr sub_C218
    sta IRQ_DISABLE           ; Disable MMC3 interrupts and acknowledge any pending interrupts
    lda BankTable + BANK_TABLE::PPU_1K_0000
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankTable + BANK_TABLE::PPU_1K_0400
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankTable + BANK_TABLE::PPU_1K_0800
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankTable + BANK_TABLE::PPU_1K_0C00
    stx BANK_SELECT
    sta BANK_DATA

locret_EDCA:
    rts
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

    jsr store_palettes

darken_color:
    ldy #5

@next_reduce:
    ldx #$1F

@next_color:
    sec
    lda PalNMIBG,X
    sbc #$10            ; reduce color brightness
    bcs @save_color
    lda #BLACK          ; color black, if get min value

@save_color:
    sta PalNMIBG,X
    dex
    bpl @next_color
    tya
    tax
    jsr wait_palette_to_PPU
    dey
    cpy #1
    bne @next_reduce
    rts
; End of function darken_palette


; =============== S U B R O U T I N E =======================================


one_color_palettes_save:
    .export one_color_palettes_save, one_color_palettes

    pha
    jsr store_palettes
    pla

one_color_palettes:
    ldx #$1F

@next_color:
    sta PalNMIBG,X
    dex
    bpl @next_color
    jmp one_frame
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
    .import PalBG

    pha
    jsr wait_nmi_processed
    pla
    ldx #$1F

@next_color:
    sta PalBG,X
    dex
    bpl @next_color
    bmi lighten_color
; End of function one_color_lighten_palette


; =============== S U B R O U T I N E =======================================

; increase the brightness of colors in the palette

lighten_palette:
    .export lighten_palette

    jsr wait_nmi_processed

lighten_color:
    ldy #5

@next_increase:
    ldx #$1F

@next_color:
    sec
    lda PalNMIBG,X
    sbc PalBG,X
    beq @no_change
    and #$F
    bne @low_tetrad_different
    bcs @color_above
    lda PalNMIBG,X
    adc #$10
    bpl @save_color

@low_tetrad_different:
    lda PalBG,X
    and #$F
    cmp #$D
    bcc @lowE

@color_above:
    lda PalNMIBG,X
    sbc #$10
    bcs @save_color
    lda #$F
    bpl @save_color

@lowE:
    pha
    lda PalNMIBG,X
    and #$30
    sta PalNMIBG,X
    pla
    ora PalNMIBG,X

@save_color:
    sta PalNMIBG,X

@no_change:
    dex
    bpl @next_color
    tya
    tax
    jsr wait_palette_to_PPU
    dey
    cpy #1
    bne @next_increase
    rts
; End of function lighten_palette


; =============== S U B R O U T I N E =======================================


restore_palettes:
    .export restore_palettes

    jsr wait_nmi_processed
    ldx #$1F

@next_color:
    lda PalBG,X
    sta PalNMIBG,X
    dex
    bpl @next_color
    rts
; End of function restore_palettes


; =============== S U B R O U T I N E =======================================


store_palettes:
    .export store_palettes

    jsr wait_nmi_processed
    ldx #$1F

@next_color:
    lda PalNMIBG,X
    sta PalBG,X
    dex
    bpl @next_color
    rts
; End of function store_palettes


; =============== S U B R O U T I N E =======================================


copy_palettes:
    .export copy_palettes, back_palettes, one_frame

    stxa Pointer
    jsr wait_nmi_processed
    ldy #$1F

@next_color:
    lda (Pointer),Y
    sta PalNMIBG,Y
    dey
    bpl @next_color
    bmi one_frame

back_palettes:
    jsr restore_palettes

one_frame:
    ldx #1

wait_palette_to_PPU:
    lda #LOAD_PALETTES              ; #4 load_palettes function ID
    sta NMI_Data + NMI_DATA::NMI_ID
    lda #0
    sta NMI_Data + NMI_DATA::NumOfChr
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    jmp wait_frames     ; wait for a few frames X - number of frames
; End of function copy_palettes


; =============== S U B R O U T I N E =======================================


home_camera:
    .export home_camera, set_camera

    ldx #0
    ldy #0

set_camera:
    jsr wait_nmi_processed
    lda #0
    sta ShiftX
    sta ShiftY
    sta IRQCount
    lda #$FC
    and CntrlPPU
    sta CntrlPPU
    stx CameraX
    sty CameraY
    jmp wait_nmi        ; wait for NMI interrupt processing to complete
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
    lda CurrentGame + GAME_SAVE::field_21F
    and #$F0
    beq exit
    sta Pointer
    asl Pointer
    bcc exit
    jsr sub_F1ED
    and #$C0
    bne exit
    jsr store_palettes
    jsr bg_blackout
    ldx #$A

loc_EF0C:
    lda #7
    sta apu_7F0
    jsr sub_EEE4
    dex
    bne loc_EF0C
    jsr back_palettes

exit:
    rts
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
    .importzp pCursor, pStr, CurrentX, CurrentY, CursorPosition, Buttons, byte_D6

    ldy #8
    lda (pCursor),Y
    sta pStr
    iny
    lda (pCursor),Y
    sta pStr+1

short_cursor_update:
    ldy #6
    lda (pCursor),Y
    sta Column
    ldy #7
    lda (pCursor),Y
    sta Row

loc_EF4B:
    ldy #0
    lda (pCursor),Y
    sta CurrentX
    tax
    ldy #1
    lda (pCursor),Y
    jsr multiply        ; Input: A, X - multipliers Output: A - result
    sta CursorPosition
    ldy #0
    sty CurrentY

loc_EF5F:
    lda (pStr),Y
    bne loc_EF6D
    iny
    cpy CursorPosition
    bcc loc_EF5F
    sta CursorPosition
    sta Buttons
    rts
; ---------------------------------------------------------------------------

loc_EF6D:
    sty CursorPosition
    tya

loc_EF70:
    cmp CurrentX
    bcc loc_EF7A
    sbc CurrentX
    inc CurrentY
    bcs loc_EF70

loc_EF7A:
    sta CurrentX

loc_EF7C:
    jsr wait_nmi_processed
    ldy #$18
    sty pTileID+1
    lda #0
    sta OAM_Cache + OAM_TILE::Attr

set_cursor_pos:
    ldy #5
    lda (pCursor),Y
    sta OAM_Cache + OAM_TILE::TileID
    ldy #2
    lda (pCursor),Y
    ldx CurrentX
    jsr multiply        ; Input: A, X - multipliers Output: A - result
    clc
    adc Column
    asl A
    asl A
    asl A
    sta OAM_Cache + OAM_TILE::PosX
    ldy #3
    lda (pCursor),Y
    ldx CurrentY
    jsr multiply        ; Input: A, X - multipliers Output: A - result
    clc
    adc Row
    asl A
    asl A
    asl A
    clc
    adc #7
    sta OAM_Cache + OAM_TILE::PosY
    ldy pTileID+1

@cursor_flashing:
    ldx #0
    stx Gamepad0Buttons

@loop:
    jsr sub_F1ED
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    lda Gamepad0Buttons
    bne @button_pressed
    dey 
    bne @loop
    ldy #5
    lda (pCursor),Y
    eor OAM_Cache + OAM_TILE::TileID
    sta OAM_Cache + OAM_TILE::TileID
    lda ButtonPressed0
    bne @button_hold
    ldy #$18
    sty pTileID+1
    bne @cursor_flashing

@button_hold:
    ldy #6
    sty pTileID+1

@button_pressed:
    ldx #0
    stx Gamepad0Buttons
    tax
    ldy #4
    and #$F0
    and (pCursor),Y
    beq arrow_buttons
    sta Buttons
    lda #5
    sta byte_7F1

off_cursor:
    lda #$F0
    sta OAM_Cache + OAM_TILE::PosY
    rts
; ---------------------------------------------------------------------------

arrow_buttons:
    txa
    and #$F
    sta Buttons
    tay
    ldx CursorModeTab,Y
    bmi set_cursor_pos
    lda CurrentX
    sta pDist
    lda CurrentY
    sta pDist+1
    stx CursorMode

cursor_pos:
    clc
    lda CursorShiftTab+1,X
    adc pDist+1
    ldy #1
    cmp (pCursor),Y
    bcs out_area
    sta pDist+1
    sta Pointer
    clc
    lda CursorShiftTab,X
    adc pDist           ; get new cursor position X
    ldy #0
    cmp (pCursor),Y
    bcs out_area
    sta pDist
    sta FieldPosition
    lda (pCursor),Y
    ldx Pointer
    jsr multiply        ; Input: A, X - multipliers Output: A - result
    clc 
    adc FieldPosition
    sta FieldPosition
    tay
    lda (pStr),Y        ; get a tile ID or mark at this position
    beq menu_area
    lda pDist
    sta CurrentX
    lda pDist+1
    sta CurrentY
    lda FieldPosition
    sta CursorPosition
    lda #$D
    sta byte_7F1

no_command_button:
    jmp set_cursor_pos
; ---------------------------------------------------------------------------

out_area:
    ldy #4
    lda Buttons
    and (pCursor),Y
    beq no_command_button
    sta Buttons
    lda #$D
    sta byte_7F1
    jmp off_cursor
; ---------------------------------------------------------------------------

menu_area:
    ldx CursorMode
    ldy #1
    lda byte_D6
    beq loc_F071
    inx
    dey

loc_F071:
    lda CursorShiftTab,X
    beq loc_F0AB

loc_F076:
    sta FieldPosition
    sec
    lda pDist,Y
    sbc CurrentX,Y
    eor #$FF
    bpl loc_F08E
    clc
    adc CurrentX,Y
    sta pDist,Y
    bpl loc_F0A1
    bmi outX

loc_F08E:
    sec
    adc CurrentX,Y
    sta pDist,Y
    cmp (pCursor),Y
    bcc loc_F0A1

outX:
    lda #0
    cmp FieldPosition
    bne loc_F076
    beq out_area

loc_F0A1:
    tya
    eor #1
    tay
    lda CurrentX,Y
    sta pDist,Y

loc_F0AB:
    ldx CursorMode
    jmp cursor_pos
; End of function cursor_update


; =============== S U B R O U T I N E =======================================

; get position of cursor and set cursor tile
; Input: A - tile ID
; Output: PosX, PosY

get_cursor_pos:
    .export get_cursor_pos

    pha
    ldy #2
    lda (pCursor),Y
    ldx CurrentX
    jsr multiply        ; Input: A, X - multipliers Output: A - result
    clc
    adc Column
    sta Column
    ldy #3
    lda (pCursor),Y
    ldx CurrentY
    jsr multiply        ; Input: A, X - multipliers Output: A - result
    clc
    adc Row
    sta Row
    pla
    jmp draw_symbol
; End of function get_cursor_pos

; ---------------------------------------------------------------------------
.export byte_F0D1
byte_F0D1:
    .byte 1, 2, 3, 4, 5, 6, 7, 8

CursorModeTab:
    .byte $88, 2, 6, $88, 4, $88, $88, $88, 0, $88, $88, $88, $88, $88, $88, $88

CursorShiftTab:
    .byte 0, $FF, 1, 0, 0, 1, $FF, 0

; =============== S U B R O U T I N E =======================================

; Input: Pointer - first multiplier
;        pTileID - second multiplier
; Output: AddrForJmp, Pointer - result Pointer * pTileID

get_offset:
    .export get_offset

    lda #0
    ldx #$10

loc_F0F5:
    ror Pointer+1
    ror Pointer
    bcc loc_F0FE
    clc
    adc pTileID

loc_F0FE:
    ror A
    dex
    bne loc_F0F5
    sta AddrForJmp
    ror Pointer+1
    ror Pointer
    rts
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
    sta Pointer
    stx pTileID
    lda #0
    ldx #8

@loop:
    ror Pointer
    bcc @even
    clc
    adc pTileID

@even:
    ror A
    dex
    bne @loop
    tax
    lda Pointer
    ror A
    rts
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
    ldy #8

@next_digital:
    dey
    lda #0
    ldx #$18
    rol Pointer
    rol Pointer+1
    rol AddrForJmp

@next_shift:
    rol A
    cmp #$A
    bcc @decimal
    sbc #$A

@decimal:
    rol Pointer
    rol Pointer+1
    rol AddrForJmp
    dex
    bne @next_shift
    tax
    lda NumberTiles,X
    sta pDist,Y         ; write digital tile
    lda Pointer
    ora Pointer+1
    ora AddrForJmp
    bne @next_digital
    sty AddrForJmp+1
    lda #$A0            ; space symbol
    bne @next_space

@write_space:
    sta pDist,Y

@next_space:
    dey
    bpl @write_space
    rts
; End of function num2str

; ---------------------------------------------------------------------------
NumberTiles:
    .byte "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"

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
                .byte $2C
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
                JSR     get_enemy_group ; Input: EnemyGroup - ID enemy ?
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
                JSR     CheckMusic
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

    pha
    txa
    pha
    lda #$16
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number,  X - mode
    pla
    tax
    pla
    rts
; End of function bank16


; =============== S U B R O U T I N E =======================================

; set memory bank 0 at $8000

bank0:
    .export bank0

    pha
    txa
    pha
    lda #0
    ldx #6
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    pla
    tax
    pla
    rts
; End of function bank0


; =============== S U B R O U T I N E =======================================


CheckMusic:
    .export CheckMusic
    .import NewMusic

    cmp CurrentMusic
    beq @exit
    sta NewMusic

@exit:
    rts
; End of function CheckMusic


; =============== S U B R O U T I N E =======================================


delay:
    .export delay

    txa
    beq locret_F26A
    pha
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    pla
    tax
    dex
    bne delay

locret_F26A:
    rts
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
                JSR     wait_nmi
                JSR     wait_nmi
                PLA
                TAX
                DEX
                BNE     loc_F27E
                RTS
; End of function sub_F27C

; ---------------------------------------------------------------------------
byte_F296:
    .byte $21, $22, $23, $24, $25, $24, $23, $22

; =============== S U B R O U T I N E =======================================


wait_A_B:
    .export wait_A_B

    ldx #0
    stx Gamepad0Buttons

@loop:
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    lda Gamepad0Buttons
    stx Gamepad0Buttons
    and #$C0
    beq @loop
    rts
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
                LDA     #$64
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
                STA     byte_7F1
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

    ldx #$F

@loop:
    txa
    pha
    lda #5
    sta byte_7F1
    ldx #2
    jsr delay
    pla
    tax
    dex
    bne @loop
    rts
; End of function long_delay


; =============== S U B R O U T I N E =======================================

; Input: EnemyGroup
; Output: pCharacter - pointer to structure
;         Pointer - offset in the array of structures

get_enemy_group:
    .export get_enemy_group
    .import EnemyGroups

    lda EnemyGroup
    sta Pointer
    lda #0
    sta Pointer+1
    lda #$A
    sta pTileID
    jsr get_offset      ; Input: Pointer - first multiplier
                        ;        pTileID - second multiplier
                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
    clc
    lda #<(EnemyGroups)    ; #$98            ; BANK16:8F98
    adc Pointer
    sta pCharacter
    lda #>(EnemyGroups)    ; #$8F
    adc Pointer+1
    sta pCharacter+1
    rts
; End of function get_enemy_group


; =============== S U B R O U T I N E =======================================


preload_palettes:
    .export preload_palettes

    jsr wait_nmi_processed
    ldy #$1F

@next_color:
    lda (Pointer),Y
    sta PalNMIBG,Y
    dey
    bpl @next_color

set_nmi_id4:
    lda #LOAD_PALETTES                  ; #4
    sta NMI_Data + NMI_DATA::NMI_ID
    lda #0
    sta NMI_Data + NMI_DATA::NumOfChr
    lda #0
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    rts
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


frame:
    .import FramesList
    .export frame

                ASL     A
                STA     Pointer
                TXA
                PHA
                TYA
                PHA
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     Pointer
                LDA     FramesList,Y
                STA     Pointer
                LDA     FramesList+1,Y
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
; End of function frame


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
                STA     PrintSize
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
                JSR     draw_tilepack
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
                JSR     draw_tilepack_clear
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
    .importzp EnemyPos

    lda EnemyPos
    pha
    jsr sub_F765
    store #byte_F5DF, pStr
    store #byte_F5DF, pCursor
    jsr loc_EF4B
    pla
    sta EnemyPos
    rts
; End of function sub_F5C2

; ---------------------------------------------------------------------------
byte_F5DF:
    .byte 1, 1, 0, 0, $C0, $5D

; =============== S U B R O U T I N E =======================================


statistical_frame:
    .export statistical_frame

    pha
    txa
    pha
    tya
    pha
    jsr draw_statistical_frame
    jsr sub_F614
    pla
    tay
    pla
    tax
    pla
    sec
    rts
; End of function statistical_frame


; =============== S U B R O U T I N E =======================================


set_jmp_addr:
    .export set_jmp_addr

    sta AddrForJmp
    lda #0
    asl AddrForJmp
    rol A
    asl AddrForJmp
    rol A
    asl AddrForJmp
    rol A
    sta AddrForJmp+1
    clc
    lda AddrForJmp
    adc #0
    sta AddrForJmp
    lda AddrForJmp+1

loc_F60F:
    adc #$9E
    sta AddrForJmp+1
    rts
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
                LDA     Character,Y
                BEQ     loc_F660
                LDA     $611,Y
                AND     #6
                EOR     #6
                BEQ     loc_F660
                LDX     #2
                LDA     Character + CHARACTER::field_1,Y
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
                LDA     Character + CHARACTER::NameOffset,Y
                STA     Pointer
                LDA     Character + CHARACTER::NameOffset+1,Y
                STA     Pointer+1
                LDA     Character + CHARACTER::MaxHealth,Y
                STA     pTileID
                LDA     Character + CHARACTER::MaxHealth+1,Y
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

    .word sub_F6BA,sub_F6BF,sub_F6C8,sub_F6F0

sub_F6BA:
    LDA     #1
    STA     NMIFlags
    RTS

sub_F6BF:
    LDA     #0
    LDX     #$C
    LDY     #$97
    JMP     sub_F6F9

sub_F6C8:
                LDX     pDist
                LDA     SpriteTable,X
                PHA
                LDA     #3
                LDX     #$C
                LDY     #$97
                JSR     sub_F6F9
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
sub_F6F0:
                LDA     #3
                LDX     #$10
                LDY     #$97
                JMP     sub_F6F9
; ---------------------------------------------------------------------------

sub_F6F9:
                STX     Pointer
                STY     Pointer+1
                LDX     pDist
                STA     SpriteTable,X
                LDA     #8
                STA     SpriteTable + ANIM_SPRITE::TileID,X
                LDA     #$70
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

    jsr wait_nmi_processed  ; copies 32 bytes of a packed tile map at $400
                            ; input YX - pointer to the packed fragment
    styx Pointer
    ldy #$1F

@next_byte:
    lda (Pointer),Y
    sta NMI_Data,Y
    dey
    bpl @next_byte
    lda #$80
    sta NMIFlags
    lda #0
    sta OffsetNMI_Data
    rts
; End of function copy_packed_tiles


; =============== S U B R O U T I N E =======================================

; save JMP ROM:F76A to $D7

save_jmp_instr:
    .export save_jmp_instr

    store #sub_F76A, JmpInstr+1
    set JmpInstr, #$4C
    rts
; End of function save_jmp_instr


; =============== S U B R O U T I N E =======================================


clear_jmp_instr:
    .export clear_jmp_instr

    lda #0
    sta JmpInstr
    jmp wait_nmi        ; wait for NMI interrupt processing to complete
; End of function clear_jmp_instr


; =============== S U B R O U T I N E =======================================


sub_F760:
    .export sub_F760

    lda #1
    sta EnemyPos
    rts
; End of function sub_F760


; =============== S U B R O U T I N E =======================================


sub_F765:
    .export sub_F765

    lda #0
    sta EnemyPos
    rts
; End of function sub_F765


; =============== S U B R O U T I N E =======================================


sub_F76A:
                LDA     EnemyPos
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