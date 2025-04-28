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

    lda #$F
    sta Stack
    lda #3
    ora BankMode
    sta BANK_SELECT
    ldx #9
    ldy #2

loc_C210:
    dey
    bne loc_C210
    bit byte_0
    jmp wait4
; End of function sub_C200


; =============== S U B R O U T I N E =======================================


sub_C218:
    sta IRQ_LATCH
    lda #2
    ora BankMode
    tax

wait4:
    ldy #4

@wait:
    dey
    bne @wait
    rts
; End of function sub_C218


; =============== S U B R O U T I N E =======================================


sub_C226:
    lda #$F
    sta Stack
    rts
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
    jsr load_character_data ; Copies the characteristics of the characters
    jsr wait_nmi_processed
    lda #$19
    ldyx #(sub_19A2B3-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    lda #0
    sta IRQCount
    lda #$FF            ; prepare enable Delta Modulation
    sta DMCflag
    lda #$F             ; disable Delta Modulation
    sta SND_CHN         ; pAPU Sound/Vertical Clock Signal Register (R)
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
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    ldx #0

@next_irq_handler:
    lda #<(sub_C226-1)
    sta InterruptTable,X
    inx
    lda #>(sub_C226-1)
    sta InterruptTable,X
    inx
    cpx #$1A
    bne @next_irq_handler
    lda #0
    sta InterruptTable,X
    inx
    sta InterruptTable,X
    lda #$F
    sta IRQCount

next_tilepack:
    jsr bank0_0

@next_row:
    jsr wait_nmi_processed
    ldx #0
    stx OffsetNMI_Data
    jsr tiled_area
    sty OffsetNMI_Data
    inc Row
    ldy #0
    lda (PointerTilePack),Y
    pha
    iny
    lda (PointerTilePack),Y
    pha
    iny
    tya
    jsr get_tile_pointer
    lda UnpackID
    cmp #0
    bne @no_end_marker
    jsr tiled_area
    jsr sub_C306
    pla
    tax
    pla
    cmp InterruptTable,X
    bcc @less0
    sta InterruptTable,X

@less0:
    lda UnpackID
    cmp #0
    bne @next_row
    rts
; ---------------------------------------------------------------------------

@no_end_marker:
    inc Row
    jsr clear_area
    jsr sub_C306
    pla
    tax
    pla
    cmp InterruptTable,X
    bcc @less
    sta InterruptTable,X

@less:
    jmp next_tilepack
; End of function sub_C26C


; =============== S U B R O U T I N E =======================================


sub_C306:
    .import wait_nmi_flags_reset, sub_19A31E, NMI_Data
    .importzp NMIFlags

    sty OffsetNMI_Data
    jsr prepare_attributes
    lda #0
    sta NMI_Data,X
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    lda #$19
    ldyx #(sub_19A31E-1)
    jsr bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                            ; input: A - bank number, YX - (subroutine address - 1)
                            ; Y - high byte, X - low byte

loc_C31F:
    jmp wait_nmi_flags_reset
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

    lda #$FF

loc_C408:
    sta Pointer
    jsr sram_write_enable
    lda #0

loc_C40F:
    pha
    tax
    lda Character + CHARACTER::field_0,X
    beq no_char
    lda Character + CHARACTER::NameOffset,X
    sta PointerTilePack
    lda Character + CHARACTER::NameOffset+1,X
    sta PointerTilePack+1
    ldy #1
    lda Character + CHARACTER::InitialStatus,X
    and Pointer
    sta (PointerTilePack),Y
    ldy #CHARACTER::Health

@health_pp:
    lda Character + CHARACTER::MaxHealth,X
    sta (PointerTilePack),Y
    inx
    iny
    cpy #CHARACTER::NameOffset
    bcc @health_pp

no_char:
    pla
    clc
    adc #$20
    bpl loc_C40F
    jsr sram_read_enable

loc_C43F:
    jsr load_character_data
    lda BankTable + BANK_TABLE::CPU_8K_8000
    pha
    jsr bank0_0
    ldxa #FrameOff
    stxa PointerTilePack
    jsr draw_tilepack
    bne loc_C458

loc_C455:
    jsr draw_tilepack_clear

loc_C458:
    lda #2
    jsr get_tile_pointer
    lda UnpackID        ; UnpackTable
    cmp #0
    bne loc_C455
    inc Row
    jsr draw_tilepack
    pla
    ldx #6
    jmp mmc3_bank_set   ; Set memory bank A - bank number, X - mode
; End of function draw_statistical_frame

; =============== S U B R O U T I N E =======================================


prepare_attributes:
    .importzp ChrCount, BlockIndex, Column, LoopAddr, NTAddr, AttributeOffset

    lda ChrCount
    lsr A
    adc #0
    tax
    lda Row
    and #$1E
    asl A
    asl A
    asl A
    sta BlockIndex
    lda Column
    adc #1
    lsr A
    ora BlockIndex
    sta BlockIndex
    tay
    jsr sram_write_enable
    lda #$FF

@next_byte:
    sta AttributeCopy,Y
    iny
    dex
    bne @next_byte
    jsr sram_read_enable
    ldx NMI_Data + NMI_DATA::PPU_Addr
    ldy NMI_Data + NMI_DATA::PPU_Addr+1
    tya
    clc
    and #3
    adc #3
    adc ChrCount
    lsr A
    lsr A
    sta LoopAddr
    tya
    and #$80
    sta NTAddr+1
    txa
    lsr A
    ror NTAddr+1
    lsr A
    ror NTAddr+1
    tya
    and #$1C
    ora NTAddr+1
    lsr A
    lsr A
    ora #$C0
    sta NTAddr+1
    ora #$F8
    sta AttributeOffset
    txa
    ora #3
    sta NTAddr
    tya
    and #$42
    lsr A
    lsr A
    adc #0
    eor #$FF
    adc #1
    clc
    adc BlockIndex
    tay
    ldx OffsetNMI_Data
    lda #WRITE_CHAR
    sta NMI_Data,X
    inx
    lda LoopAddr
    sta NMI_Data,X
    inx

@next_attr:
    lda NTAddr
    sta NMI_Data,X
    inx
    lda NTAddr+1
    sta NMI_Data,X
    inx
    lda AttributeCopy,Y
    and #3
    sta BlockIndex
    iny
    lda AttributeCopy,Y
    and #$C
    ora BlockIndex
    sta BlockIndex
    tya
    clc
    adc #$F
    tay
    lda AttributeCopy,Y
    and #$30
    ora BlockIndex
    sta BlockIndex
    iny
    lda AttributeCopy,Y
    and #$C0
    ora BlockIndex
    sta NMI_Data,X
    inx
    tya
    sec
    sbc #$F
    tay
    dec LoopAddr
    bne @no_last
    stx OffsetNMI_Data
    rts
; ---------------------------------------------------------------------------

@no_last:
    inc AttributeOffset
    beq @end_screen
    inc NTAddr+1
    jmp @next_attr
; ---------------------------------------------------------------------------

@end_screen:
    lda #4
    eor NTAddr
    sta NTAddr
    lda #$F8
    sta AttributeOffset
    and NTAddr+1
    sta NTAddr+1
    jmp @next_attr
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
    jsr get_character_pointer ; Input: A - charachter number, Output: Pointer (word) = High $74 Low $40 * A
    tya
    pha
    ldy #0

@next_tilepack:
    jsr copy_tilepack   ; Copies a tilepack in blocks of 5 bytes with offset correction by the value stored in Pointer
                        ; Input: X - index for SRAM19:6700 (destination),
                        ;        Y - index for C37A (source)
    cpy #$14
    bne @next_tilepack
    tya
    pha
    ldy #1
    lda (Pointer),Y
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
    tay
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
    lda #4
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
    sta $670F
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

get_character_pointer:
    .export get_character_pointer

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
; End of function get_character_pointer


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
    lda #WRITE_ROW
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
    .import wait_frames, ModeSRAM, Sound2

    jsr wait_nmi_processed
    lda #$33
    sta OffsetNMI_Data
    pha
    jsr tiled_area
    jsr add_spaces
    sty AttributeOffset
    pla
    tax
    lda #WRITE_ROW
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
    sta Sound2

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


delay_print_scroll:
    .export delay_print_scroll
    .importzp ByteCount

    lda #$33

loc_C7C3:
    clc
    adc #$29
    dex
    bne loc_C7C3
    stx ByteCount
    tax
    pha
    jsr print_scroll
    sta ByteCount
    pla
    tax
; End of function delay_print_scroll


; =============== S U B R O U T I N E =======================================


print_scroll:
    jsr wait_nmi_processed
    stx OffsetNMI_Data

loc_C7D9:
    lda NMI_Data,X
    beq loc_C7FD
    eor #5
    bne loc_C7F3
    ora ByteCount
    bne loc_C7E9
    jsr sub_C80E

loc_C7E9:
    txa
    clc
    adc #4
    adc NMI_Data + NMI_DATA::NumOfChr,X
    tax
    bcc loc_C7D9

loc_C7F3:
    jsr sub_C80E
    txa
    clc
    adc #5
    tax
    bcc loc_C7D9

loc_C7FD:
    sta ByteCount
    sec
    lda OffsetNMI_Data
    sbc #$29
    tax
    lda #$80
    sta NMIFlags
    cpx #$5C
    bcs print_scroll
    rts
; End of function print_scroll


; =============== S U B R O U T I N E =======================================


sub_C80E:
    sec
    lda NMI_Data + NMI_DATA::PPU_Addr+1,X
    sbc #$20
    sta NMI_Data + NMI_DATA::PPU_Addr+1,X
    lda NMI_Data + NMI_DATA::PPU_Addr,X
    sta AttributeOffset
    sbc #0
    sta NMI_Data + NMI_DATA::PPU_Addr,X
    eor AttributeOffset
    and #4
    beq locret_C83C
    sec
    lda NMI_Data + NMI_DATA::PPU_Addr+1,X
    sbc #$40
    sta NMI_Data + NMI_DATA::PPU_Addr+1,X
    lda NMI_Data + NMI_DATA::PPU_Addr,X
    sbc #4
    and #$F
    ora #$20
    sta NMI_Data + NMI_DATA::PPU_Addr,X

locret_C83C:
    rts
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
    lda #WRITE_ROW
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
    jsr mmc3_bank_set
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
    jsr mmc3_bank_set

loc_CAE1:
    jsr wait_nmi_processed
    lda #TEXT2STACK             ; chr_text2stack
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
    .importzp ButtonPressed, GamepadButtons
    .importzp byte_D, byte_1F, byte_20, ObjectNumWithChar, byte_22, byte_23, byte_24, byte_25
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
    jsr load_obj_data
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
    jsr available_objects
    jsr sub_EEF0
    lda byte_25
    bne loc_CB91
    lda ButtonPressed
    and #$70
    beq loc_CB8F
    jsr get_command
    and #8
    beq loc_CB8F
    lda #1

loc_CB8F:
    sta byte_1F

loc_CB91:
    jsr wait_nmi_processed
    lda byte_20
    bne new_place
    jsr set_characters_pos
    jsr prepare_anim
    jsr sub_CC2B        ; draw screen
    lda ObjectNumWithChar
    beq loc_CBAD
    jsr bank13_A000
    jsr sub_13A1C6
    bcc check_enemy

loc_CBAD:
    jsr bank13_A000
    lda #0
    ldy GamepadButtons
    sta GamepadButtons
    lda byte_22
    ora byte_23
    ora ObjectNumWithChar
    ora byte_20
    bne check_enemy
    tya
    and #$F0
    bmi pressA
    bne press_notA
    jsr sub_13A123
    jmp pressB
; ---------------------------------------------------------------------------

press_notA:
    jsr get_command
    and #$A0
    beq pressB
    bmi loc_CBDC
    jsr sub_13A82F
    jmp pressB
; ---------------------------------------------------------------------------

loc_CBDC:
    jsr sub_13A000
    jmp pressB
; ---------------------------------------------------------------------------

pressA:
    jsr command_menu

pressB:
    jsr bank14_8000
    jsr sub_149516

check_enemy:
    lda EnemyGroup
    beq no_enemy
    cmp #$A2
    beq main_battle
    jsr wait_nmi_processed
    lda CurrentMusic
    pha
    jsr start_battle
    pla
    bcs loc_CC14
    jsr wait_change_music
    lda ObjectNumWithChar
    beq loc_CC11
    jsr bank13_A000
    jsr sub_13AB53
    lda byte_20
    bne loc_CC14

loc_CC11:
    jmp draw
; ---------------------------------------------------------------------------

loc_CC14:
    jmp loc_CB5D
; ---------------------------------------------------------------------------

no_enemy:
    jmp loc_CB76
; ---------------------------------------------------------------------------

main_battle:
    jsr bank14_8000
    jsr sub_149779
    jsr start_battle
    bcs loc_CC14
    jsr bank14_8000
    jmp sub_1497A3
; End of function main


; =============== S U B R O U T I N E =======================================


sub_CC2B:
    .importzp OtherNMIFlags, FlagClearOAM300, NewView, byte_D5

    lda byte_1F
    cmp #7
    bcs loc_CC5D
    lda #$10
    sta NMIFlags
    jsr get_new_coordinate
    jsr check_load_map

@wait_location_draw:
    lda NMIFlags
    bne @wait_location_draw

@wait_characters_draw:
    lda OtherNMIFlags
    cmp #9
    bcs @wait_characters_draw
    sec
    ror FlagClearOAM300
    jsr check_tiles
    asl FlagClearOAM300
    jsr sub_D232
    lda #0
    sta NMI_Data,X
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags
    bne loc_CC83

loc_CC5D:
    jsr get_new_coordinate
    jsr check_load_map
    jsr sub_D232
    lda #0
    sta NMI_Data,X
    sta OffsetNMI_Data
    lda #$10
    sta NMIFlags
    lda byte_1F
    cmp #$F
    bcs loc_CC83

loc_CC77:
    lda NMIFlags
    bne loc_CC77
    sec
    ror FlagClearOAM300
    jsr check_tiles
    asl FlagClearOAM300

loc_CC83:
    lda NewView
    lsr A
    bcc loc_CC96
    jsr sub_D21C
    lda #0
    sta NMI_Data,X
    sta OffsetNMI_Data
    lda #$80
    sta NMIFlags

loc_CC96:
    bit NewView
    bmi locret_CC9C
    inc byte_D5

locret_CC9C:
    rts
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
    .import wait_press_button, Sound1
    .importzp MaskPPU

    lda #$FF
    jsr wait_change_music
    jsr sub_DA16
    lda #2
    sta Sound1
    lda #1
    ora MaskPPU
    sta MaskPPU
    ldx #8

loc_CCC6:
    jsr sub_EEE4
    dex
    bne loc_CCC6
    lda #$1E
    and MaskPPU
    sta MaskPPU
    jsr wait_press_button
    jmp loc_CD79
; ---------------------------------------------------------------------------

sub_CCD8:
    .export sub_CCD8
    .import sub_13BBD4, SpriteTable, Sound3, Sound4
    .importzp byte_F, NewView, ButtonPressed, byte_22, byte_25

    lda CurrentMusic
    pha
    lda #$FF
    sta byte_F
    jsr wait_change_music
    jsr redraw_screen
    lda #1
    sta Sound4
    jsr sub_CD9D
    ldx #5

loc_CCF0:
    jsr sub_CD8B
    lda NewView
    bmi sub_CCB1
    lda ButtonPressed
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
    asl SpriteTable + ANIM_SPRITE::ShiftX,X
    asl SpriteTable + ANIM_SPRITE::ShiftY,X
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
    sta Sound3
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
    jsr load_obj_data
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
    stx GamepadButtons
    stx byte_F
    jsr sub_CDAF
    pla
    jsr wait_change_music
    jmp loc_CB76
; End of function sub_CCB1


; =============== S U B R O U T I N E =======================================


sub_CD8B:
    jsr sub_CDAF
    jsr available_objects
    jsr wait_nmi_processed
    jsr set_characters_pos
    jsr prepare_anim
    jmp sub_CC2B
; End of function sub_CD8B


; =============== S U B R O U T I N E =======================================

sub_CD9D:
    jsr sram_write_enable
    lda CurrentGame + PURE_SAVE::GlobalY
    and #$F
    sta $6799
    ora #$40
    sta byte_22
    jmp sram_read_enable
; End of function sub_CD9D


; =============== S U B R O U T I N E =======================================

sub_CDAF:
    .export sub_CDAF

    stx byte_25
    lda byte_CDB7,X
    sta byte_1F
    rts
; End of function sub_CDAF

; ---------------------------------------------------------------------------
byte_CDB7:
    .byte 0, 0, 0, 0, 0
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

    pha
    lda CurrentMusic
    tax
    pla
    jsr wait_change_music
    lda #0
    sta GamepadButtons

loc_CDF1:
    bit GamepadButtons
    bvs loc_CDFA
    lda CurrentMusic
    bne loc_CDF1

loc_CDFA:
    lda #0
    sta GamepadButtons
    txa
    jmp wait_change_music
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

    ldxa #0
    stxa Pointer
    ldxa #$2000
    stxa pTileID
    lda #$10
    sta pDist

loc_CE81:
    ldxa Pointer
    ldy #READ           ; read_ppu
    jsr sub_CEB2        ; Input: XA - PPU address (X - high byte, A - low byte)
                        ;         Y - NMI Function ID
    ldxa pTileID
    ldy #WRITE_ROW      ; write_horizontal
    jsr sub_CEB2        ; Input: XA - PPU address (X - high byte, A - low byte)
                        ;         Y - NMI Function ID
    clc
    lda #$40
    adc Pointer
    sta Pointer
    lda #0
    adc Pointer+1
    sta Pointer+1
    clc 
    lda #$40
    adc pTileID
    sta pTileID
    lda #0
    adc pTileID+1
    sta pTileID+1
    dec pDist
    bne loc_CE81
    rts
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
    jmp mmc3_bank_set
; End of function bank13_A000

; =============== S U B R O U T I N E =======================================


bank17_A000:
    lda #$17
    ldx #7
    jmp mmc3_bank_set
; End of function bank17_A000

; =============== S U B R O U T I N E =======================================


bank14_8000:
    .export bank14_8000

    lda #$14
    ldx #6
    jmp mmc3_bank_set
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


load_obj_data:
    .import PalNMIBG, PalNMISpr, MapPalettes
    .importzp p4TileID, MapSectorID, Color_0C, Color_0E, BlockCount
    .importzp CoorY, MaxY, CoorX, MaxX, Tile4Count, ShiftCameraY
    .importzp StepX, StepY

    jsr copy_character_buffer
    lda #$14
    ldx #6
    jsr mmc3_bank_set
    lda #0
    sta p4TileID+1
    lda MapSectorID
    asl A
    asl A
    asl A
    rol p4TileID+1
    asl A
    rol p4TileID+1
    adc #<MapPalettes
    sta p4TileID
    lda p4TileID+1
    adc #>MapPalettes
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
    lda CoorY
    and #$C0
    sta MaxY
    lda CoorY+1
    sta MaxY+1
    lda #$40
    sta StepX
    lda #0
    sta StepY
    lda #$10
    sta BlockCount

@next_block:
    sec
    lda CoorX
    and #$C0
    sbc #$40
    sta MaxX
    lda CoorX+1
    sbc #0
    sta MaxX+1
    lda #$13
    sta Tile4Count
    jsr load_map
    dec BlockCount
    beq @last_block
    clc
    lda MaxY
    adc #$40
    sta MaxY
    lda MaxY+1
    adc #0
    sta MaxY+1
    jmp @next_block
; ---------------------------------------------------------------------------

@last_block:
    jsr get_shift_camerax ; ShiftCameraX = ((field_5 & 7)(field4_bits7_6 & C0)) >> 2
    ldy #0
    sty ShiftCameraY
    jmp unpack_obj_headers
; End of function load_obj_data

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
    lda CoorY
    and #$C0
    adc #$80
    sta MaxY
    lda CoorY+1
    adc #3
    sta MaxY+1
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
    lda CoorX
    and #$C0
    sta MaxX
    lda CoorX+1
    sta MaxX+1
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
    lda MaxY
    sbc #$40
    sta MaxY
    lda MaxY+1
    sbc #0
    sta MaxY+1
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
    sta NewView
    lda #0
    sta IRQCount
    sta GamepadButtons

locret_D04E:
    rts
; End of function draw_screen

; ---------------------------------------------------------------------------
    .byte $F0, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $20

; =============== S U B R O U T I N E =======================================


get_new_coordinate:
    lda NewView
    bmi no_move
    asl A
    asl A
    asl A
    tax
    clc
    lda CoorXY + CHANGE_COOR::AddX,X
    adc CoorX
    sta CoorX
    lda CoorXY + CHANGE_COOR::AddX+1,X
    adc CoorX+1
    sta CoorX+1
    clc
    lda CoorXY + CHANGE_COOR::AddY,X
    adc CoorY
    sta CoorY
    lda CoorXY + CHANGE_COOR::AddY+1,X
    adc CoorY+1
    sta CoorY+1
    clc
    lda CoorXY + CHANGE_COOR::AddY,X
    beq get_shift_camerax ; MaskCntrlPPU : ShiftCameraX = (CoorX & $7C0) >> 2
    bmi loc_D094
    lda ShiftCameraY
    adc #$20
    bcc loc_D09A
    bcs loc_D09C

loc_D094:
    lda ShiftCameraY
    adc #$F0
    bcs loc_D09C

loc_D09A:
    adc #$F0

loc_D09C:
    sta ShiftCameraY

get_shift_camerax:
    lda CoorX+1
    and #7
    sta MaskCntrlPPU
    lda CoorX
    and #$C0
    lsr MaskCntrlPPU
    ror A
    lsr MaskCntrlPPU
    ror A
    sta ShiftCameraX

no_move:
    rts

; =============== S U B R O U T I N E =======================================


check_load_map:
    jsr load_map_tile
    lda NewView
    bmi locret_D0C0
    jsr add_load_map
    lda NewView
    lsr A
    bcs loc_D0C1

locret_D0C0:
    rts
; ---------------------------------------------------------------------------

loc_D0C1:
    adc #0
    asl A
; End of function check_load_map


; =============== S U B R O U T I N E =======================================


add_load_map:
    and #6
    asl A
    asl A
    tax
    clc
    lda CoorX
    and #$C0
    adc AddMap + ADD_MAP::CoorX,X
    sta MaxX
    lda CoorX+1
    adc AddMap + ADD_MAP::CoorX+1,X
    sta MaxX+1
    clc
    lda CoorY
    and #$C0
    adc AddMap + ADD_MAP::CoorY,X
    sta MaxY
    lda CoorY+1
    adc AddMap + ADD_MAP::CoorY+1,X
    sta MaxY+1
    lda AddMap + ADD_MAP::StepX,X
    sta StepX
    lda AddMap + ADD_MAP::StepY,X
    sta StepY
    lda AddMap + ADD_MAP::Tiles,X
    sta Tile4Count
    jmp load_map
; End of function add_load_map

; ---------------------------------------------------------------------------
AddMap:
    add_map $FFC0,    0, $40,   0, $13
    add_map $440,     0,   0, $40, $10
    add_map $FFC0, $3C0, $40,   0, $13
    add_map $FFC0,    0,   0, $40, $10

; =============== S U B R O U T I N E =======================================


.proc load_map
    .importzp DataBank, FirstTileID, BankHighOffset, BankNum0Mask3, BankNum1Mask3, p4TileAttr
    .importzp BankNum0, BankNum1, OffScreen, Screen, Attribute_0, AttributeScr, ObjectScr

    jsr get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr $6200 or $6300
                        ; ObjectScr $6400 or $6500
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
    lda MaxX+1
    sta p4TileID
    lda MaxY+1
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
    jsr mmc3_bank_set
    lda BankNum1
    lsr A
    ora #1
    ldx #7
    jsr mmc3_bank_set

next_tile_and_attr:
    lda MaxX
    lsr A
    lsr A
    ora MaxY
    lsr A
    lsr A
    lsr A
    lsr A
    tax
    tay
    jsr sram_write_enable
    lda (p4TileID),Y
    eor FirstTileID
    ldy OffScreen
    sta (Screen),Y
    txa
    tay
    lda (p4TileAttr),Y
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
    sta (AttributeScr),Y
    lda #0
    sta (ObjectScr),Y
    jsr sram_read_enable
    dec Tile4Count
    beq exit
    lda StepX
    beq loc_D1F9
    inc OffScreen
    clc
    adc MaxX
    sta MaxX
    bcc jmp_next_tile_and_attr
    lda #0
    adc MaxX+1
    sta MaxX+1
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
    sta AttributeScr+1
    adc #2
    sta ObjectScr+1
    jmp next_quadrant
; ---------------------------------------------------------------------------

loc_D1F9:
    ldx StepY
    beq exit
    clc
    lda OffScreen
    adc #$10
    sta OffScreen
    clc
    txa
    adc MaxY
    sta MaxY
    bcc jmp_next_tile_and_attr
    lda #0
    adc MaxY+1
    sta MaxY+1
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
    lda NMIFlags
    bne sub_D21C
    lda NewView
    bmi loc_D22F
    and #7
    asl A
    asl A
    asl A
    tax
    lda byte_D284+7,X
    bpl loc_D23F

loc_D22F:
    ldx #0
    rts
; End of function sub_D21C


; =============== S U B R O U T I N E =======================================


sub_D232:
    lda NMIFlags
    bne sub_D232
    lda NewView
    bmi loc_D22F
    and #7
    asl A
    asl A
    asl A

loc_D23F:
    tax
    clc
    lda CoorX
    and #$C0
    adc byte_D284,X
    sta MaxX
    lda CoorX+1
    adc byte_D284+1,X
    sta MaxX+1
    clc
    lda CoorY
    and #$C0
    adc byte_D284+2,X
    sta MaxY
    lda CoorY+1
    adc byte_D284+3,X
    sta MaxY+1
    clc
    lda byte_D284+4,X
    adc ShiftCameraY
    bcs loc_D26C
    adc #$F0

loc_D26C:
    sta ScreenY
    lda byte_D284+6,X
    bmi loc_D281
    eor ScreenY
    and #$10
    bne loc_D27C
    lda byte_D284+5,X

loc_D27C:
    sta Add_Off_pAttr
    jmp write_tile_attr
; ---------------------------------------------------------------------------

loc_D281:
    jmp sub_D398
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
    .importzp AttributeScr

    jsr sub_D4B7
    lda #$11
    sta TilesNum
    ldx #0

@add_nmi_tiles:
    lda #WRITE_ROW
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
    lda (p4TileID),Y
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
    lda #WRITE_CHAR
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
    lda AttributeScr+1
    eor #1
    sta AttributeScr+1
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
    jsr sub_D4B7
    sec
    lda #$F0
    sbc ScreenY
    clc
    adc OffScreen
    sta OffScreen
    lda #$F
    sta TilesNum
    ldx #0
    lda #WRITE_COLUMN
    sta NMI_Data,X
    sta NMI_Data + NMI_DATA::Chr+$1E,X
    inx
    lda TilesNum
    asl A
    sta NMI_Data,X
    sta NMI_Data + NMI_DATA::Chr+$1E,X
    inx
    lda PPUAddr+1
    and #$FC
    sta NMI_Data,X
    sta NMI_Data + NMI_DATA::Chr+$1E,X
    inx
    lda PPUAddr
    and #$1E
    sta NMI_Data,X
    ora #1
    sta NMI_Data + NMI_DATA::Chr+$1E,X
    inx
    lda ScreenY
    sta PPUAddr

loc_D3DA:
    lda PPUAddr
    sec
    sbc #$10
    sta PPUAddr
    bcs loc_D3E9
    lda OffScreen
    adc #$10
    sta OffScreen

loc_D3E9:
    jsr get4tileID_pointer ; Gets a pointer to the quadrant of tiles in bank D.
                        ; Input: OffScreen - offset to screen area for Screen pointer ($6000, $6100)
                        ;        BankNum0Mask3, BankNum1Mask3 - masks
                        ; Output: p4TileID - pointer to the quadrant of tiles
    ldy #0
    lda (p4TileID),Y
    and #$3F
    eor FirstTileID
    sta NMI_Data,X
    iny
    lda (p4TileID),Y
    and #$3F
    eor FirstTileID
    sta NMI_Data + NMI_DATA::Chr+$1E,X
    iny
    lda (p4TileID),Y
    and #$3F
    eor FirstTileID
    sta NMI_Data + NMI_DATA::NumOfChr,X
    iny
    lda (p4TileID),Y
    and #$3F
    eor FirstTileID
    sta NMI_Data + NMI_DATA::Next+$1E,X
    inx
    inx
    dec TilesNum
    beq loc_D425
    clc
    lda OffScreen
    adc #$10
    sta OffScreen
    jmp loc_D3DA
; ---------------------------------------------------------------------------

loc_D425:
    lda #8
    sta TilesNum
    ldx #$44
    lda #7
    sta NMI_Data,X
    inx
    lda TilesNum
    sta NMI_Data,X
    inx
    lda ScreenY
    and #$10
    beq loc_D455
    sec
    lda Off_pAttr
    pha
    sbc #$10
    sta Off_pAttr
    lda #$20
    sta Add_Off_pAttr
    jsr write_attr
    pla
    sta Off_pAttr
    lda #$10
    sta Add_Off_pAttr
    bne loc_D45C

loc_D455:
    lda #$10
    sta Add_Off_pAttr

loc_D459:
    jsr write_attr

loc_D45C:
    dec TilesNum
    beq locret_D47E
    clc
    lda Off_pAttr
    adc #$20
    sta Off_pAttr
    clc
    lda PPUAttribute
    adc #8
    sta PPUAttribute
    bcc loc_D459
    sbc #$40
    sta PPUAttribute
    sec
    lda Off_pAttr
    sbc #$10
    sta Off_pAttr
    jmp loc_D459
; ---------------------------------------------------------------------------

locret_D47E:
    rts
; End of function sub_D398

; ---------------------------------------------------------------------------
EndRow:
    .byte $F

; =============== S U B R O U T I N E =======================================


write_attr:
    .importzp AttributeScr, Attribute_0

    lda PPUAttribute+1
    sta NMI_Data,X
    inx
    lda PPUAttribute
    sta NMI_Data,X
    inx
    ldy Off_pAttr
    lda (AttributeScr),Y
    and #3
    sta Attribute_0
    iny
    lda (AttributeScr),Y
    and #$C
    ora Attribute_0
    sta Attribute_0
    clc
    lda Off_pAttr
    adc Add_Off_pAttr
    tay
    lda (AttributeScr),Y
    and #$30
    ora Attribute_0
    sta Attribute_0
    iny
    lda (AttributeScr),Y
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
    jsr get_screen_pointers ; set base address Screen $6000 or $6100, AttributeScr $6200 or $6300
                        ; ObjectScr $6400 or $6500, OffScreen - offset
    lda MaxX+1
    and #7
    sta ScreenX
    lda MaxX
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
    sta p4TileID+1
    rts
; End of function get4tileID_pointer


; =============== S U B R O U T I N E =======================================

; set base address Screen $6000 or $6100
; AttributeScr  $6200 or $6300
; ObjectScr     $6400 or $6500
; OffScreen - offset

get_screen_pointers:
    .export get_screen_pointers
    .importzp ObjectScr

    lda MaxX+1
    and #7
    sta Screen+1
    lda MaxX
    lsr Screen+1
    ror A
    lsr Screen+1
    ror A
    lsr A
    lsr A
    ora MaxY
    sta OffScreen
    lda MaxY+1
    lsr A
    ror OffScreen
    lsr A
    ror OffScreen
    lda #0
    sta Screen
    sta AttributeScr
    sta ObjectScr
    lda Screen+1
    clc
    adc #$60
    sta Screen+1
    adc #2
    sta AttributeScr+1
    adc #2
    sta ObjectScr+1
    rts
; End of function get_screen_pointers


; =============== S U B R O U T I N E =======================================


get_map_palette:
    jsr load_data_bank  ; load data bank and get p4TileID
    ldy #0
    lda (p4TileID),Y
    and #$3F
    sta MapSectorID
    rts
; End of function get_map_palette


; =============== S U B R O U T I N E =======================================


load_data_bank:
    .importzp DataBank

    lda MaxY+1
    lsr A
    lsr A
    lsr A
    lsr A
    and #$E
    sta DataBank
    ora #1
    ldx #7
    jsr mmc3_bank_set
    lda MaxY+1
    lsr A
    lsr A
    and #7
    sta p4TileID+1
    lda MaxX+1
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
    .importzp ObjNumber

    clc
    lda CoorX+1
    adc #2
    sta MaxX+1
    clc
    lda CoorY
    adc #$C0
    sta MaxY
    lda CoorY+1
    adc #1
    sta MaxY+1
    jsr load_data_bank
    ldy #0
    lda (p4TileID),Y
    and #$3F
    cmp MapSectorID
    beq loc_D5F3
    lda Color_0C ; $1A
    ldx #3
    jsr mmc3_bank_set
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
    lda (p4TileID),Y
    and #$3F
    sta ObjNumber
    tax
    lda CHRTable_0,X    ; CHR personage table
    beq set_PPU0000

set_PPU1800:
    ldx #1
    jsr mmc3_bank_set

set_PPU0000:
    ldy #2
    lda (p4TileID),Y
    and #$3F
    ldx #2
    jsr mmc3_bank_set
    sta BankNum0
    and #3
    sta BankNum0Mask3
    iny
    lda (p4TileID),Y
    and #$3F
    ldx #3
    jsr mmc3_bank_set
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


copy_character_buffer:
    .export copy_character_buffer
    .importzp View, Dist, ObjOffset

    lda byte_20
    bpl loc_D697
    and #$F
    sta View
    lda Characters + OBJECT::CoorX
    and #$C0
    sta MaxX
    lda Characters + OBJECT::CoorX+1
    sta MaxX+1
    lda Characters + OBJECT::CoorY
    and #$C0
    sta MaxY
    lda Characters + OBJECT::CoorY+1
    sta MaxY+1
    jmp loc_D6CB
; ---------------------------------------------------------------------------

loc_D697:
    lda CurrentGame + PURE_SAVE::GlobalY
    and #$3F
    sta View
    clc
    lda CurrentGame + PURE_SAVE::GlobalX
    and #$C0
    sta CoorX
    adc #0
    sta MaxX
    lda CurrentGame + PURE_SAVE::GlobalX+1
    sta CoorX+1
    adc #2
    sta MaxX+1
    clc
    lda CurrentGame + PURE_SAVE::GlobalY
    and #$C0
    sta CoorY
    adc #$C0
    sta MaxY
    lda CurrentGame + PURE_SAVE::GlobalY+1
    sta CoorY+1
    adc #1
    sta MaxY+1
    jsr get_map_palette

loc_D6CB:
    jsr get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr $6200 or $6300
                        ; ObjectScr $6400 or $6500
                        ; OffScreen - offset
    jsr get_objects
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
    lda (ObjOffset),Y

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

set_music:
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
    lda View
    sta (Dist),Y
    eor #4
    sta View
    jsr loc_D7E2

loc_D738:
    jmp set_music
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
    jmp set_music
; End of function copy_character_buffer


; =============== S U B R O U T I N E =======================================


sub_D759:
    .export sub_D759

    pha
    ldx #0

loc_D75C:
    lda CurrentGame + PURE_SAVE::CharactersNum+1,X
    beq loc_D769
    inx
    cpx #3
    bcc loc_D75C
    pla
    rts
; End of function sub_D759


; =============== S U B R O U T I N E =======================================


sub_D768:
    pha

loc_D769:
    txa
    pha
    jsr get_buffer_offset
    jsr sub_D884
    jsr sram_write_enable
    pla
    tax
    pla
    sta CurrentGame + PURE_SAVE::CharactersNum+1,X
    jsr sub_D7DF
    ldy #$19
    lda View
    sta (Dist),Y
    ldy #0
    lda #$C
    sta (Dist),Y
    clc
    jmp sram_read_enable
; End of function sub_D768


; =============== S U B R O U T I N E =======================================


sub_D78D:
    .export sub_D78D

    ldx #0

loc_D78F:
    cmp CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_D79A
    inx
    cpx #4
    bcc loc_D78F
    rts
; ---------------------------------------------------------------------------

loc_D79A:
    jsr sram_write_enable

loc_D79D:
    cpx #3
    bcs loc_D7AC
    lda CurrentGame + PURE_SAVE::CharactersNum+1,X
    beq loc_D7AE
    sta CurrentGame + PURE_SAVE::CharactersNum,X
    inx
    bcc loc_D79D

loc_D7AC:
    lda #0

loc_D7AE:
    sta CurrentGame + PURE_SAVE::CharactersNum,X
    txa
    jsr get_buffer_offset
    jsr sub_DFBF
    jsr get_objects
    ldx #0

loc_D7BD:
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_D7CF
    jsr sub_D813
    lda #$C
    cpx #0
    bne loc_D7CF
    ldy #$1C
    lda (ObjOffset),Y

loc_D7CF:
    ldy #0
    sta (Dist),Y
    jsr get_dist_addr
    inx
    cpx #4
    bcc loc_D7BD
    clc
    jmp sram_read_enable
; End of function sub_D78D


; =============== S U B R O U T I N E =======================================


sub_D7DF:
    jsr sub_D813

loc_D7E2:
    ldy #4
    lda MaxX
    sta (Dist),Y
    iny
    lda MaxX+1
    sta (Dist),Y
    ldy #6
    lda MaxY
    sta (Dist),Y
    iny
    lda MaxY+1
    sta (Dist),Y
    ldy #$11
    lda OffScreen
    sta (Dist),Y
    iny
    lda ObjectScr
    sta (Dist),Y
    iny
    lda ObjectScr+1
    sta (Dist),Y
    lda View
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
    sta ObjOffset+1
    lda #<CurrentGame
    lsr ObjOffset+1
    ror A
    lsr ObjOffset+1
    ror A
    sta ObjOffset
    sta (Dist),Y
    iny
    lda ObjOffset+1
    adc #>CurrentGame
    sta ObjOffset+1
    sta (Dist),Y
    ldy #CHARACTER::field_1D
    lda (ObjOffset),Y
    ldy #$14
    pha
    and #$F0
    sta (Dist),Y
    ldy #8
    pla
    and #$F
    sta (Dist),Y

loc_D840:
    ldy #CHARACTER::field_1E
    lda (ObjOffset),Y
    ldy #$16
    sta (Dist),Y
    ldy #CHARACTER::field_1E+1
    lda (ObjOffset),Y
    ldy #$17
    sta (Dist),Y
    clc
    ldy #CHARACTER::InitialStatus
    lda (ObjOffset),Y
    bpl locret_D86B
    and #$80
    sta (ObjOffset),Y
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


get_buffer_offset:
    .export get_buffer_offset

    sta Dist+1
    lda #0
    lsr Dist+1
    ror A
    lsr Dist+1
    ror A
    lsr Dist+1
    ror A
    adc #<Characters
    sta Dist
    lda Dist+1
    adc #>Characters
    sta Dist+1
    rts
; End of function get_buffer_offset


; =============== S U B R O U T I N E =======================================


sub_D884:
    ldy #$15
    lda (Dist),Y
    sta View
    eor #4
    asl A
    asl A
    asl A
    tax
    ldy #4
    clc
    lda CoorXY + CHANGE_COOR::AddX,X
    adc (Dist),Y
    sta MaxX
    iny
    lda CoorXY + CHANGE_COOR::AddX+1,X
    adc (Dist),Y
    sta MaxX+1
    ldy #6
    clc
    lda CoorXY + CHANGE_COOR::AddY,X
    adc (Dist),Y
    sta MaxY
    iny
    lda CoorXY + CHANGE_COOR::AddY+1,X
    adc (Dist),Y
    sta MaxY+1
    jsr get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr $6200 or $6300
                        ; ObjectScr $6400 or $6500
                        ; OffScreen - offset
    jmp get_dist_addr
; End of function sub_D884


; =============== S U B R O U T I N E =======================================


sub_D8BA:
    jsr get_buffer_offset
    ldy #2
    lda (Dist),Y
    sta ObjOffset
    iny
    lda (Dist),Y
    sta ObjOffset+1
    rts
; End of function sub_D8BA


; =============== S U B R O U T I N E =======================================


sub_D8C9:
    .export sub_D8C9, loc_D8CE

    lda #7
    jsr sub_D78D

loc_D8CE:
    lda #6
    jmp sub_D78D
; End of function sub_D8C9


; =============== S U B R O U T I N E =======================================


sub_D8D3:
    .export sub_D8D3
    .importzp ItemCount, ObjectID, byte_47

    lda CurrentGame + PURE_SAVE::field_181
    bpl loc_D8DD
    lda #6
    jsr sub_D78D

loc_D8DD:
    lda CurrentGame + PURE_SAVE::field_1C1
    bpl loc_D8E7
    lda #7
    jsr sub_D78D

loc_D8E7:
    ldx #0
    stx ItemCount

loc_D8EB:
    jsr get_character_num
    bcs loc_D906
    txa
    jsr sub_D8BA
    jsr sram_write_enable
    jsr loc_D840
    bcs loc_D8FE
    inc ItemCount

loc_D8FE:
    jsr sram_read_enable
    inx
    cpx #4
    bcc loc_D8EB

loc_D906:
    stx ObjectID
    lda ItemCount
    beq loc_D90E
    clc
    rts
; ---------------------------------------------------------------------------

loc_D90E:
    jsr sub_D8C9
    jsr sram_write_enable
    lda #0
    sta CurrentGame + PURE_SAVE::Boy1 + CHARACTER::InitialStatus
    sta CurrentGame + PURE_SAVE::Boy1 + CHARACTER::PP
    sta CurrentGame + PURE_SAVE::Boy1 + CHARACTER::PP+1
    lda CurrentGame + PURE_SAVE::Boy1 + CHARACTER::MaxHealth
    sta CurrentGame + PURE_SAVE::Boy1 + CHARACTER::Health
    lda CurrentGame + PURE_SAVE::Boy1 + CHARACTER::MaxHealth+1
    sta CurrentGame + PURE_SAVE::Boy1 + CHARACTER::Health+1
    lda CurrentGame + PURE_SAVE::Cash
    lsr CurrentGame + PURE_SAVE::Cash + 1
    ror A
    adc #0
    sta CurrentGame + PURE_SAVE::Cash
    lda CurrentGame + PURE_SAVE::Cash + 1
    adc #0
    sta CurrentGame + PURE_SAVE::Cash + 1
    lda #1
    sta ItemCount
    lda #0
    sta ObjectNumWithChar
    sta byte_23
    ldx byte_47
    ldy byte_D96B,X
    ldx #3

loc_D950:
    lda byte_D96F,Y
    sta CurrentGame + PURE_SAVE::GlobalX,X
    dey
    dex
    bpl loc_D950
    lda CurrentGame + PURE_SAVE::GlobalY
    and #$F
    ora #$20
    sta byte_20
    eor #$60
    sta byte_22
    sec
    jmp sram_read_enable
; End of function sub_D8D3

; ---------------------------------------------------------------------------
byte_D96B:
    .byte 3, 3, 3, 7

byte_D96F:
    .byte $5C, $DF, 0, $24, $8B, $DF, $40, $DB

; =============== S U B R O U T I N E =======================================


sub_D977:
    .export sub_D977

    dec ObjectID
    bmi locret_D997
    beq locret_D997

loc_D97D:
    lda CurrentGame + PURE_SAVE::CharactersNum
    cmp #1
    beq loc_D98C
    jsr sub_D998
    bcs loc_D97D

loc_D989:
    jsr sub_D998

loc_D98C:
    lda #0
    jsr sub_D8BA
    ldy #1
    lda (ObjOffset),Y
    bmi loc_D989

locret_D997:
    rts
; End of function sub_D977


; =============== S U B R O U T I N E =======================================


sub_D998:
    jsr sram_write_enable
    ldx #0
    stx ItemCount

loc_D99F:
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    pha
    lda CurrentGame + PURE_SAVE::CharactersNum+1,X
    sta CurrentGame + PURE_SAVE::CharactersNum,X
    pla
    sta CurrentGame + PURE_SAVE::CharactersNum+1,X
    lda #2
    jsr sub_D9DE
    lda #3
    jsr sub_D9DE
    lda #8

loc_D9B9:
    pha
    jsr sub_D9DE
    pla
    clc
    adc #1
    cmp #$11
    bcc loc_D9B9
    lda #$16
    jsr sub_D9DE
    lda #$17
    jsr sub_D9DE
    clc
    lda ItemCount
    adc #$20
    sta ItemCount
    inx
    cpx ObjectID
    bcc loc_D99F
    jmp sram_read_enable
; End of function sub_D998


; =============== S U B R O U T I N E =======================================


sub_D9DE:
    clc
    adc ItemCount
    tay
    lda $6780,Y
    pha
    lda $67A0,Y
    sta $6780,Y
    pla
    sta $67A0,Y
    rts
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

    ldx #0

loc_D9FC:
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_DA10
    jsr get_character_pointer ; Input: A - Character number
                        ; Output: Pointer (word) = High $74 Low $40 * A
    ldy #$2C

loc_DA06:
    lda $73D8,Y
    sta (Pointer),Y
    iny
    cpy #$30
    bcc loc_DA06

loc_DA10:
    inx
    cpx #4
    bcc loc_D9FC
    rts
; End of function sub_D9FA


; =============== S U B R O U T I N E =======================================


sub_DA16:
    jsr wait_nmi_processed
    jsr update_animation
    ldx #0

loc_DA1E:
    jsr get_character_num
    bcs loc_DA3C
    txa
    jsr sub_D8BA
    ldy #1
    lda (ObjOffset),Y
    bmi loc_DA3C
    ldy #$10
    lda (Dist),Y
    tay
    lda #$80
    sta SpriteTable + ANIM_SPRITE::pFrame,Y
    lda #$81
    sta SpriteTable + ANIM_SPRITE::pFrame+1,Y

loc_DA3C:
    inx
    cpx #4
    bcc loc_DA1E
    lda #1
    sta NMIFlags
    jmp wait_nmi_processed
; End of function sub_DA16


; =============== S U B R O U T I N E =======================================


sub_DA48:
    .import sub_13BBC3, sub_13BB8C, sub_13A979, print_text
    .importzp CharNum, Item, Price, Experience, CharacterOffset

    lda ItemCount
    sta pTileID
    lda Experience
    sta Pointer
    lda Experience+1
    sta Pointer+1
    lda Experience+2
    sta AddrForJmp
    jsr divide
    lda pDist
    beq loc_DA61
    lda #1

loc_DA61:
    clc
    adc Pointer
    sta Experience
    lda #0
    adc Pointer+1
    sta Experience+1
    lda #0
    adc AddrForJmp
    sta Experience+2
    jsr sram_write_enable
    ldx #0

loc_DA77:
    jsr get_character_num
    bcs loc_DADD
    sta CharNum
    txa
    lsr A
    ror A
    ror A
    ror A
    sta CharacterOffset
    txa
    pha
    jsr sub_D8BA
    ldy #1
    lda (ObjOffset),Y
    bmi loc_DADB
    lda byte_47
    bne loc_DAD8
    ldy #$11
    clc
    lda Experience
    adc (ObjOffset),Y
    sta (ObjOffset),Y
    iny
    lda Experience+1
    adc (ObjOffset),Y
    sta (ObjOffset),Y
    iny
    lda Experience+2
    adc (ObjOffset),Y
    sta (ObjOffset),Y
    bcc loc_DAB9
    ldy #$11
    lda #$FF
    sta (ObjOffset),Y
    iny
    sta (ObjOffset),Y
    iny
    sta (ObjOffset),Y

loc_DAB9:
    ldy #$10
    lda (ObjOffset),Y
    jsr sub_DB40
    ldy #$11
    sec
    lda (ObjOffset),Y
    sbc pTileID
    iny
    lda (ObjOffset),Y
    sbc pTileID+1
    iny
    lda (ObjOffset),Y
    sbc TilepackMode
    bcc loc_DAD8
    jsr sub_DB6C
    bcc loc_DAB9

loc_DAD8:
    jsr sub_DC87

loc_DADB:
    pla
    tax

loc_DADD:
    inx
    cpx #4
    bcc loc_DA77
    jsr loc_C43F
    lda byte_47
    bne loc_DB30
    jsr sram_write_enable
    ldx #$12
    jsr sub_DC11
    ldx #$15
    jsr sub_DC11
    lda EnemyGroup
    beq loc_DB30
    sta Item
    jsr bank13_A000
    jsr sub_13BBC3
    lda #$FF
    sta Price
    lda Price+1
    ora #$1F

loc_DB0A:
    asl Price
    asl A
    bcc loc_DB0A
    jsr randomize
    and Price
    bne loc_DB30
    jsr sub_13BB8C
    ldx #0

loc_DB1B:
    jsr get_character_num
    bcs loc_DB2B
    sta CharNum
    txa
    pha
    jsr sub_13A979
    pla
    tax
    bcc loc_DB33

loc_DB2B:
    inx
    cpx #4
    bcc loc_DB1B

loc_DB30:
    jmp sram_read_enable
; ---------------------------------------------------------------------------

loc_DB33:
    jsr bank17_A000
    lda #6
    sta Sound2
    lda #PickedUp
    jmp print_text
; End of function sub_DA48


; =============== S U B R O U T I N E =======================================


sub_DB40:
    .export sub_DB40

    tax
    inx
    stx pTileID
    inx
    stx Pointer
    lda #0
    sta Pointer+1
    sta AddrForJmp
    jsr sub_F109
    jsr sub_F109
    jsr sub_DCDF
    ldy #0
    lda (pDist),Y
    sta pTileID
    jsr sub_F109
    lda Pointer+1
    sta pTileID
    lda AddrForJmp
    sta pTileID+1
    lda AddrForJmp+1
    sta TilepackMode
    rts
; End of function sub_DB40


; =============== S U B R O U T I N E =======================================


sub_DB6C:
    .importzp Sound, Auto

    ldy #$10
    lda (ObjOffset),Y
    cmp #$63
    bcc loc_DB75
    rts
; ---------------------------------------------------------------------------

loc_DB75:
    adc #1
    sta (ObjOffset),Y
    jsr loc_C43F
    jsr sram_write_enable
    lda #$FF
    jsr wait_change_music
    lda #$1F
    jsr wait_change_music
    lda #Advanced
    jsr print_text
    jsr sub_DCDF
    ldy #3

loc_DB93:
    jsr randomize
    lsr A
    lsr A
    lsr A
    lsr A
    lsr A
    lsr A
    clc
    adc (pDist),Y
    lsr A
    sta $55,Y
    iny
    cpy #8
    bcc loc_DB93
    ldy #$B

loc_DBAA:
    clc
    lda (ObjOffset),Y
    adc $4D,Y
    bcc loc_DBBC
    sbc $4D,Y
    eor #$FF
    sta $4D,Y
    lda #$FF

loc_DBBC:
    sta (ObjOffset),Y
    lda $4D,Y
    beq loc_DBCD
    tya
    pha
    clc
    adc #$7B
    jsr print_text
    pla
    tay

loc_DBCD:
    iny
    cpy #$10
    bcc loc_DBAA
    ldy #7
    lda Sound
    jsr sub_DC64
    ldy #9
    lda Auto
    jsr sub_DC64
    ldy #$E
    lda (ObjOffset),Y
    sta Pointer
    clc
    adc #$14
    bcc loc_DBED
    lda #$FF

loc_DBED:
    ldy #3
    jsr sub_DC3F
    lda #MaximumHPinc
    jsr sub_DC38
    lda CharNum
    cmp #3
    bcs loc_DC0F
    ldy #$F
    lda (ObjOffset),Y
    sta Pointer
    lsr A
    clc
    ldy #5
    jsr sub_DC3F
    lda #MaximumPPinc
    jsr sub_DC38

loc_DC0F:
    clc
    rts
; End of function sub_DB6C


; =============== S U B R O U T I N E =======================================


sub_DC11:
    .importzp Money

    clc
    lda Money
    adc CurrentGame + PURE_SAVE::field_0,X
    sta CurrentGame + PURE_SAVE::field_0,X
    lda Money+1
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

    ldx pCharacter+1
    beq locret_DC70
    jmp print_text
; End of function sub_DC38


; =============== S U B R O U T I N E =======================================


sub_DC3F:
    clc
    adc Pointer
    sta Pointer
    lda #0
    rol A
    sta Pointer+1
    sec
    lda Pointer
    sbc (ObjOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    tax
    iny
    lda Pointer+1
    sbc (ObjOffset),Y   ; BANK10:8000, BANK11:8000, BANK12:8000
    beq loc_DC5C
    ldx #8
    bcs loc_DC5C
    ldx #1

loc_DC5C:
    dey
    txa
    asl A
    jsr sub_DC71
    sta pCharacter+1
; End of function sub_DC3F


; =============== S U B R O U T I N E =======================================


sub_DC64:
    clc
    adc (ObjOffset),Y
    sta (ObjOffset),Y
    iny
    lda #0
    adc (ObjOffset),Y
    sta (ObjOffset),Y

locret_DC70:
    rts
; End of function sub_DC64


; =============== S U B R O U T I N E =======================================


sub_DC71:
    cmp #$10
    bcc loc_DC77
    lda #$10

loc_DC77:
    tax
    jsr randomize
    lsr A
    lsr A
    lsr A
    lsr A
    jsr multiply        ; Input: A, X - multipliers Output: A - result
    lsr A
    lsr A
    lsr A
    lsr A
    rts
; End of function sub_DC71


; =============== S U B R O U T I N E =======================================


sub_DC87:
    lda ObjectNumWithChar
    bne locret_DCCC
    jsr sub_DCDF
    ldy #2
    lda (pDist),Y
    beq locret_DCCC
    pha
    ldx #$C0

loc_DC97:
    stx Item
    jsr sub_DCE6
    pla
    pha
    tay
    lda (pDist),Y
    ldy #$10
    cmp (ObjOffset),Y
    bcs loc_DCC6
    jsr get_flag_bit
    and (ObjOffset),Y
    bne loc_DCC6
    jsr randomize
    and #$C0
    bne loc_DCC6
    lda (ObjOffset),Y
    ora FlagBit,X
    sta (ObjOffset),Y
    lda #9
    sta Sound2
    lda #NewPSIPower
    jsr print_text

loc_DCC6:
    ldx Item
    inx
    bne loc_DC97
    pla

locret_DCCC:
    rts
; End of function sub_DC87


; =============== S U B R O U T I N E =======================================


get_flag_bit:
    .export get_flag_bit

    lda Item
    clc
    adc #$C0
    ror A
    lsr A
    lsr A
    tay
    lda Item
    and #7
    tax
    lda FlagBit,X
    rts
; End of function get_flag_bit


; =============== S U B R O U T I N E =======================================


sub_DCDF:
    clc
    lda CharNum
    adc #$B8
    bcc loc_DCE8
; End of function sub_DCDF


; =============== S U B R O U T I N E =======================================


sub_DCE6:
    lda Item

loc_DCE8:
    asl A
    rol pDist+1
    asl A
    rol pDist+1
    asl A
    rol pDist+1
    clc
    adc #0
    sta pDist
    lda pDist+1
    and #7
    adc #$98
    sta pDist+1
    jmp set_bank0_0
; End of function sub_DCE6


; =============== S U B R O U T I N E =======================================


set_characters_pos:
    jsr get_objects
    jsr sram_write_enable

loc_DD07:
    ldy #0
    lda (Dist),Y
    asl A
    beq loc_DD2B
    jsr coordinate_compare
    bcs @next_character
    ldy #0
    lda (Dist),Y
    ora #$80
    sta (Dist),Y
    bmi loc_DD2B

@next_character:
    ldy #0
    lda (Dist),Y
    and #$3F
    sta (Dist),Y
    jsr obj_handler
    jsr set_object_on_screen

loc_DD2B:
    jsr get_dist_addr
    inc ObjectID
    bne loc_DD07
    lda byte_20
    bne loc_DD54
    lda CoorX
    and #$C0
    ora CurrentMusic
    ldx CoorX+1
    stxa CurrentGame + PURE_SAVE::GlobalX
    lda CoorY
    and #$C0
    ora $6795
    ldx CoorY+1
    stxa CurrentGame + PURE_SAVE::GlobalY

loc_DD54:
    jmp sram_read_enable
; End of function set_characters_pos


; =============== S U B R O U T I N E =======================================


get_objects:
    ldxa #Characters
    stxa Dist
    ldx #$FC
    stx ObjectID
    rts
; End of function get_objects


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


unpack_obj_headers:
    jsr get_obj
    jsr sram_write_enable

@next_record:
    jsr get_source
    jsr unpack_obj_header
    jsr get_obj_dist_addr
    dec ObjectID
    bne @next_record
    jmp sram_read_enable
; End of function unpack_obj_headers


; =============== S U B R O U T I N E =======================================


unpack_obj_header:
    .importzp Source

    ldy #1
    lda ObjNumber
    sta (Dist),Y
    lda ItemCount
    bne @object

@no_obj:
    ldy #0
    sta (Dist),Y
    rts
; ---------------------------------------------------------------------------

@object:
    ldy #0
    lda (Source),Y
    and #$3F
    beq @no_obj
    jsr save_obj_value
    ldy #2
    lda (Source),Y
    and #$3F
    ldy #$15
    sta (Dist),Y
    ldy #4
    lda (Source),Y
    ldy #$16
    sta (Dist),Y
    ldy #5
    lda (Source),Y
    ldy #$17
    sta (Dist),Y
    ldy #0
    lda (Source),Y
    and #$C0
    ldy #4
    sta (Dist),Y
    sta MaxX
    ldy #1
    lda (Source),Y
    ldy #5
    sta (Dist),Y
    sta MaxX+1
    ldy #2
    lda (Source),Y
    and #$C0
    ldy #6
    sta (Dist),Y
    sta MaxY
    ldy #3
    lda (Source),Y
    ldy #7
    sta (Dist),Y
    sta MaxY+1
    ldy #2
    lda Source
    sta (Dist),Y
    iny
    lda Source+1
    sta (Dist),Y
    jsr get_screen_pointers ; set base address Screen $6000 or $6100
                        ; AttributeScr $6200 or $6300
                        ; ObjectScr $6400 or $6500
                        ; OffScreen - offset
    ldy #$11
    lda OffScreen
    sta (Dist),Y
    iny
    lda ObjectScr
    sta (Dist),Y
    iny
    lda ObjectScr+1
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
; End of function unpack_obj_header


; =============== S U B R O U T I N E =======================================


save_obj_value:
    .export save_obj_value

    ldy #0
    sta (Dist),Y
    asl A
    asl A
    tax
    ldy #8
    lda $E107,X             ; ObjectHandler.value,X OBJECT_HANDLER
    sta (Dist),Y
    ldy #$14
    lda $E108,X             ; ObjectHandler.value+1,X
    sta (Dist),Y
    rts
; End of function save_obj_value


; =============== S U B R O U T I N E =======================================


get_obj:
    lda ObjNumber
    jsr set_obj_bank
    asl A
    tax
    lda $8000,X
    sta ObjOffset
    lda $8000+1,X
    sta ObjOffset+1
    lda #2
    sta ItemCount

reset_obj:
    ldxa #Objects
    stxa Dist
    ldx #$28
    stx ObjectID
    rts
; End of function get_obj


; =============== S U B R O U T I N E =======================================


get_source:
    ldy #1
    lda (ObjOffset),Y
    beq @last_record
    sta Source+1
    dey
    lda (ObjOffset),Y
    sta Source
    rts
; ---------------------------------------------------------------------------

@last_record:
    sta ItemCount
    rts
; End of function get_source


; =============== S U B R O U T I N E =======================================


get_obj_dist_addr:
    clc
    lda ObjOffset
    adc ItemCount
    sta ObjOffset
    lda ObjOffset+1
    adc #0
    sta ObjOffset+1
    jmp get_dist_addr
; End of function get_obj_dist_addr


; =============== S U B R O U T I N E =======================================


set_obj_bank:
    .export set_obj_bank

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
; End of function set_obj_bank


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


available_objects:
    jsr get_obj
    jsr sram_write_enable

next_obj:
    jsr get_source
    ldy #1
    lda (Dist),Y
    cmp ObjNumber
    beq same_obj
    ldy #0
    lda (Dist),Y
    asl A
    beq loc_DEB6
    jsr coordinate_compare
    bcs obj_here

loc_DEB6:
    jsr unpack_obj_header

same_obj:
    ldy #0
    lda (Dist),Y
    asl A
    beq obj_out
    jsr coordinate_compare
    bcs obj_here
    ldy #0
    lda (Dist),Y
    ora #$80
    sta (Dist),Y
    bmi obj_out

obj_here:
    ldy #0
    lda (Dist),Y
    and #$3F
    sta (Dist),Y

obj_out:
    jsr get_obj_dist_addr
    dec ObjectID
    bne next_obj
    jsr reset_obj

check_object:
    ldy #0
    lda (Dist),Y
    beq skip_object
    bmi skip_object
    jsr obj_handler
    jsr set_object_on_screen

skip_object:
    jsr get_dist_addr
    dec ObjectID
    bne check_object
    jmp sram_read_enable
; End of function available_objects


; =============== S U B R O U T I N E =======================================


set_object_on_screen:
    .importzp FieldPosition, CursorMode, TempX, TempY

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
    bpl @obj_active
    jmp @obj_noactive
; ---------------------------------------------------------------------------

@obj_active:
    clc
    lda CoorX
    adc #$60
    sta Pointer
    lda CoorX+1
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
    lda CoorY
    adc #$A4
    sta pTileID
    lda CoorY+1
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
    lda View
    bmi get_obj_id
    ldy #4
    lda TempX
    sta (Dist),Y
    iny
    lda TempX+1
    sta (Dist),Y
    ldy #6
    lda TempY
    sta (Dist),Y
    iny
    lda TempY+1
    sta (Dist),Y
    ldy #$11
    lda OffScreen
    sta (Dist),Y
    iny
    lda ObjectScr
    sta (Dist),Y
    iny
    lda ObjectScr+1
    sta (Dist),Y
    ldy OffScreen
    lda ObjectID
    sta (ObjectScr),Y

@obj_noactive:
    ldy pDist+1
    lda ObjectID
    eor (FieldPosition),Y
    beq set_obj
    rts
; ---------------------------------------------------------------------------

get_obj_id:
    ldy pDist+1
    lda ObjectID

set_obj:
    sta (FieldPosition),Y
    rts
; End of function set_object_on_screen


; =============== S U B R O U T I N E =======================================


sub_DFBF:
    ldy #$11
    lda (Dist),Y
    sta OffScreen
    iny
    lda (Dist),Y
    sta ObjectScr
    iny
    lda (Dist),Y
    sta ObjectScr+1
    lda #0
    ldy OffScreen
    sta (ObjectScr),Y
    ldy #0
    sta (Dist),Y
    rts
; End of function sub_DFBF


; =============== S U B R O U T I N E =======================================


prepare_anim:
    .importzp byte_E3

    lda CurrentGame + GAME_SAVE::Flags+$1F
    lsr A
    ldxa #Characters
    ldy #$2C
    bcc loc_DFEC
    ldxa #Objects
    ldy #$28

loc_DFEC:
    stxa Dist
    sty ObjectID
    lda #$18
    sta byte_E3
    lda #0
    sta SpriteTable + ANIM_SPRITE::Tiles
    ldx #8
    jsr sram_write_enable

next_object:
    ldy #0
    lda (Dist),Y
    beq no_object
    bmi no_object
    ldy #8
    lda (Dist),Y
    and #$3F
    beq no_object
    ldy #$14
    lda (Dist),Y
    and #$10
    beq loc_E01B
    txa
    ldx #0

loc_E01B:
    sta ItemCount
    ldy #$10
    txa
    sta (Dist),Y
    ldy #8

@copy_animation:
    lda (Dist),Y
    sta SpriteTable,X
    inx
    iny
    cpy #$E
    bcc @copy_animation
    clc
    lda OAM_Cache + OAM_TILE::Attr+$F8,X
    and #$40
    beq loc_E039
    lda #4

loc_E039:
    adc (Dist),Y
    sta SpriteTable,X
    inx
    iny
    lda #0
    adc (Dist),Y
    sta SpriteTable,X
    inx
    beq end_table
    lda ItemCount
    beq no_object
    tax

no_object:
    jsr get_dist_addr
    dec ObjectID
    bne next_object

@clear_table:
    lda #0
    sta SpriteTable,X
    clc
    txa
    adc #8
    tax
    bcc @clear_table

end_table:
    jmp sram_read_enable
; End of function prepare_anim


; =============== S U B R O U T I N E =======================================


check_tiles:
    ldx #0

loc_E067:
    lda SpriteTable,X
    and #$40
    beq loc_E07F
    sec
    lda SpriteTable + ANIM_SPRITE::pFrame,X
    sbc #4
    sta SpriteTable + ANIM_SPRITE::pFrame,X
    lda SpriteTable + ANIM_SPRITE::pFrame+1,X
    sbc #0
    sta SpriteTable + ANIM_SPRITE::pFrame+1,X

loc_E07F:
    clc
    txa
    adc #8
    tax
    bcc loc_E067
    rts
; End of function check_tiles


; =============== S U B R O U T I N E =======================================


sub_E087:
    .export sub_E087

    jsr get_objects
    ldx #4
    stx ObjectID
    lda #0
    sta AddrForJmp
    ldx #8

loc_E094:
    ldy #0
    lda (Dist),Y
    beq loc_E0E3
    bmi loc_E0E3
    ldy AddrForJmp
    lda (Pointer),Y
    sta SpriteTable + ANIM_SPRITE::PosX,X
    iny
    lda (Pointer),Y
    sta SpriteTable + ANIM_SPRITE::PosY,X
    iny
    lda (Pointer),Y
    sta AddrForJmp+1
    iny
    clc
    lda (Pointer),Y
    ldy #$16
    adc (Dist),Y
    sta SpriteTable + ANIM_SPRITE::pFrame,X
    iny
    lda #0
    adc (Dist),Y
    sta SpriteTable + ANIM_SPRITE::pFrame+1,X
    ldy #8
    lda (Dist),Y
    and #$3F
    asl A
    asl AddrForJmp+1
    ror A
    sta SpriteTable,X
    lda #$70
    asl AddrForJmp+1
    ror A
    sta SpriteTable + ANIM_SPRITE::TileID,X
    lda #0
    sta SpriteTable + ANIM_SPRITE::ShiftX,X
    sta SpriteTable + ANIM_SPRITE::ShiftY,X
    clc
    txa
    adc #8
    tax

loc_E0E3:
    clc
    lda #4
    adc AddrForJmp
    sta AddrForJmp
    jsr get_dist_addr
    dec ObjectID
    bne loc_E094
    rts
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


obj_handler:
    asl A
    asl A
    tax
    lda $E106,X            ; ObjectHandler.subroutine+1,X
    pha
    lda $E105,X            ;ObjectHandler,X
    pha
    rts
; End of function obj_handler

; ---------------------------------------------------------------------------
ObjectHandler:
    .word nullsub_3-1, 0
    .word door-1, $8800
    .word door-1, $8800
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
    .word hide_object-1, $C400
    .word hide_object-1, $C604
    .word hide_object-1, $4609
    .word hide_object-1, $4400
    .word sub_E71A-1, $C400
    .word sub_E71A-1, $C604
    .word sub_E71A-1, $4609
    .word sub_E71A-1, $4400
    .word sub_E756-1, $8804
    .word sub_E6F1-1, $C604
    .word loc_E7BE-1, $E602
    .word hide_object-1, $560A
    .word hide_object-1, $5604
    .word hide_object-1, $C608
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


coordinate_compare:
    ldy #4
    lda (Dist),Y
    sta TempX
    iny
    lda (Dist),Y
    sta TempX+1
    ldy #6
    lda (Dist),Y
    sta TempY
    iny
    lda (Dist),Y
    sta TempY+1

loc_E1D4:
    sec
    lda TempY
    sbc CoorY
    sta pTileID
    lda TempY+1
    sbc CoorY+1
    sta pTileID+1
    sec
    lda #$C0
    sbc pTileID
    lda #3
    sbc pTileID+1
    bcc locret_E20E
    lda CoorX
    sbc #$40
    sta Pointer
    lda CoorX+1
    sbc #0
    sta Pointer+1
    sec
    lda TempX
    sbc Pointer
    sta Pointer
    lda TempX+1
    sbc Pointer+1
    sta Pointer+1
    sec
    lda #$80
    sbc Pointer
    lda #4
    sbc Pointer+1

locret_E20E:
    rts
; End of function coordinate_compare


; =============== S U B R O U T I N E =======================================


sub_E20F:
    .export sub_E20F
    .importzp Tiles

    jsr get_objects
    ldy #OBJECT::View
    lda (Dist),Y
    asl A
    asl A
    asl A
    tax
    lda CoorXY + CHANGE_COOR::NewX,X
    asl A
    tax
    sta Tiles
    ldy #$11
    lda CoorXY + CHANGE_COOR::NewY+1,X
    asl A
    asl A
    asl A
    asl A
    clc
    adc (Dist),Y
    sta OffScreen
    iny
    lda (Dist),Y
    sta ObjectScr
    iny
    lda (Dist),Y
    sta ObjectScr+1
    clc
    lda OffScreen
    adc CoorXY + CHANGE_COOR::NewY,X
    tax
    eor OffScreen
    and #$F0
    beq loc_E258
    lda OffScreen
    and #$F0
    sta OffScreen
    txa
    and #$F
    ora OffScreen
    tax
    lda ObjectScr+1
    eor #1
    sta ObjectScr+1

loc_E258:
    stx OffScreen
    jsr interaction_object

source2dist:
    ldyx Source
    styx Dist
    rts
; End of function sub_E20F


; =============== S U B R O U T I N E =======================================


get_obj_pointer:
    .export get_obj_pointer

    lda ObjectNumWithChar
    and #$7F
    jsr get_obj_pntr
    asl ObjectNumWithChar
    ldx #0
    stx ObjectNumWithChar
    beq source2dist
; End of function get_obj_pointer


; =============== S U B R O U T I N E =======================================


interaction_object:
    ldy OffScreen
    lda (ObjectScr),Y
    beq nothing
    bmi loc_E282
    sec
    lda #$28
    sbc (ObjectScr),Y

loc_E282:
    clc
    adc #4
    tax

get_obj_pntr:
    sta Source+1
    lda #0
    lsr Source+1
    ror A
    lsr Source+1
    ror A
    lsr Source+1
    ror A
    adc #<Characters
    sta Source
    lda Source+1
    adc #>Characters
    sta Source+1
    ldy #OBJECT::Value2
    lda (Source),Y

nothing:
    rts
; End of function interaction_object


; =============== S U B R O U T I N E =======================================


set_oam:
    .export set_oam, loc_E2BF, loc_E2C2

    ldy #OBJECT::Value2
    lda (Dist),Y
    and #$20
    beq nothing
    jsr sram_write_enable
    clc
    lda Tiles
    adc #$20
    and #$38
    tax
    ldy #OBJECT::View
    lsr A
    lsr A
    lsr A
    sta (Dist),Y
    jsr sram_read_enable

loc_E2BF:
    lda CoorXY + CHANGE_COOR::NewX,X

loc_E2C2:
    clc
    ldy #OBJECT::CurFrame
    adc (Dist),Y
    sta Pointer
    lda #0
    iny
    adc (Dist),Y
    sta Pointer+1
    lda #$15
    ldx #6
    jsr mmc3_bank_set
    ldy #OBJECT::SpriteTabOff
    lda (Dist),Y
    tay
    lda SpriteTable + ANIM_SPRITE::Tiles,Y
    and #$3F
    sta Tiles
    beq nothing
    lda Pointer
    sta SpriteTable + ANIM_SPRITE::pFrame,Y
    lda Pointer+1
    sta SpriteTable + ANIM_SPRITE::pFrame+1,Y
    lda SpriteTable + ANIM_SPRITE::PosX,Y
    sta pDist
    lda SpriteTable + ANIM_SPRITE::PosY,Y
    sta pDist+1
    lda SpriteTable + ANIM_SPRITE::TileID,Y
    asl A
    asl A
    tax
    ldy #0
    lda (Pointer),Y
    sta pTileID
    iny
    lda (Pointer),Y
    sta pTileID+1
    iny
    lda (Pointer),Y
    sta FieldPosition
    iny
    lda (Pointer),Y
    sta CursorMode
    sec

loc_E315:
    bit FlagClearOAM300
    bvs loc_E315
    ror FlagClearOAM300
    ldy #0

loc_E31D:
    lda OAM_Cache,X
    cmp #$F0
    beq loc_E365
    clc
    lda (pTileID),Y
    adc pDist
    sta OAM_Cache + OAM_TILE::PosX,X
    iny
    clc
    lda (pTileID),Y
    adc pDist+1
    sta OAM_Cache,X
    iny
    lda (pTileID),Y
    sta Pointer
    lda CursorMode
    lsr Pointer
    bcc loc_E342
    lsr A
    lsr A

loc_E342:
    lsr Pointer
    bcc loc_E34A
    lsr A
    lsr A
    lsr A
    lsr A

loc_E34A:
    and #3
    asl Pointer
    asl Pointer
    ora Pointer
    sta OAM_Cache + OAM_TILE::Attr,X
    iny
    clc
    and #$10
    beq loc_E35D
    lda FieldPosition

loc_E35D:
    adc (pTileID),Y
    sta OAM_Cache + OAM_TILE::TileID,X
    iny
    bne loc_E369

loc_E365:
    iny
    iny
    iny
    iny

loc_E369:
    inx
    inx
    inx
    inx
    beq loc_E373
    dec Tiles
    bne loc_E31D

loc_E373:
    asl FlagClearOAM300
    rts
; End of function set_oam


; =============== S U B R O U T I N E =======================================


sub_E376:
    lda MaxY+1
    lsr A
    lsr A
    lsr A
    lsr A
    and #$E
    ora #1
    ldx #6
    jsr mmc3_bank_set
    lda MaxY+1
    lsr A
    lsr A
    and #7
    sta pDist+1
    lda MaxX+1
    and #$FC
    clc
    sta pDist
    lda pDist+1
    adc #$98
    sta pDist+1
    ldy #1
    lda (pDist),Y
    and #$3F
    ldy #1
    cmp (Dist),Y
    bne loc_E3AD
    lda ObjNumber
    jsr set_obj_bank
    clc
    rts
; ---------------------------------------------------------------------------

loc_E3AD:
    lda ObjNumber
    jsr set_obj_bank
    sec
    rts
; End of function sub_E376


; =============== S U B R O U T I N E =======================================


bank14_8000_ex:
    lda #$14
    ldx #6
    jsr mmc3_bank_set
    lda ObjectScr
    sta Screen
    lda View
    asl A
    tax
    lda ReturnTab+1,X
    pha
    lda ReturnTab,X
    pha
    rts
; End of function bank14_8000_ex

; ---------------------------------------------------------------------------
ReturnTab:
    .word sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
    .word loc_E4DC-1, loc_E403-1, loc_E466-1, loc_E490-1

; =============== S U B R O U T I N E =======================================


sub_E3DE:
    jsr sub_E506
    tax
    and #$30
    beq loc_E3EF
    and #$20
    beq loc_E400
    txa
    and #$1C
    bne loc_E400

loc_E3EF:
    ldx #$FF
    ldy #0
    jsr sub_E510
    tax
    and #$20
    beq loc_E425
    txa
    and #3
    beq loc_E425

loc_E400:
    jmp loc_E490
; ---------------------------------------------------------------------------

loc_E403:
    jsr sub_E506
    tax
    and #$30
    beq loc_E414
    and #$20
    beq loc_E400
    txa
    and #$13
    bne loc_E400

loc_E414:
    ldx #1
    ldy #0
    jsr sub_E510
    tax
    and #$20
    beq loc_E425
    txa
    and #$C
    bne loc_E400

loc_E425:
    jmp loc_E497
; End of function sub_E3DE


; =============== S U B R O U T I N E =======================================


sub_E428:
    jsr sub_E506
    and #$16
    bne loc_E490
    ldx #0
    ldy #$10
    jsr sub_E510
    and #9
    bne loc_E490
    beq loc_E497

loc_E43C:
    jsr sub_E506
    and #$14
    bne loc_E490
    ldx #0
    ldy #$10
    jsr sub_E510
    and #8
    bne loc_E490
    ldx #$FF
    ldy #0
    jsr sub_E510
    and #2
    bne loc_E490
    ldx #$FF
    ldy #$10
    jsr sub_E510
    and #1
    bne loc_E490
    beq loc_E497

loc_E466:
    jsr sub_E506
    and #$12
    bne loc_E490
    ldx #0
    ldy #$10
    jsr sub_E510
    and #1
    bne loc_E490
    ldx #1
    ldy #0
    jsr sub_E510
    and #4
    bne loc_E490
    ldx #1
    ldy #$10
    jsr sub_E510
    and #8
    bne loc_E490
    beq loc_E497

loc_E490:
    lda ObjNumber
    jsr set_obj_bank
    sec
    rts
; ---------------------------------------------------------------------------

loc_E497:
    lda ObjNumber
    jsr set_obj_bank
    clc
    rts
; End of function sub_E428


; =============== S U B R O U T I N E =======================================


sub_E49E:
    jsr sub_E506
    and #$19
    bne loc_E490
    ldx #0
    ldy #$F0
    jsr sub_E510
    and #6
    bne loc_E490
    beq loc_E497
; End of function sub_E49E


; =============== S U B R O U T I N E =======================================


sub_E4B2:
    jsr sub_E506
    and #$18
    bne loc_E490
    ldx #0
    ldy #$F0
    jsr sub_E510
    and #4
    bne loc_E490
    ldx #$FF
    ldy #0
    jsr sub_E510
    and #1
    bne loc_E490
    ldx #$FF
    ldy #$F0
    jsr sub_E510
    and #2
    bne loc_E490
    beq loc_E497

loc_E4DC:
    jsr sub_E506
    and #$11
    bne loc_E490
    ldx #0
    ldy #$F0
    jsr sub_E510
    and #2
    bne loc_E490
    ldx #1
    ldy #0
    jsr sub_E510
    and #8
    bne loc_E490
    ldx #1
    ldy #$F0
    jsr sub_E510
    and #4
    bne loc_E490
    beq loc_E497
; End of function sub_E4B2


; =============== S U B R O U T I N E =======================================


sub_E506:
    ldx #0
    ldy #0
    jsr sub_E510
    sta Tiles
    rts
; End of function sub_E506


; =============== S U B R O U T I N E =======================================


sub_E510:
    clc
    tya
    adc OffScreen
    sta Screen+1
    clc
    txa
    adc Screen+1
    tay
    eor Screen+1
    and #$F0
    beq loc_E52F
    lda Screen+1
    and #$F0
    sta Screen+1
    tya
    and #$F
    ora Screen+1
    tay
    lda #1

loc_E52F:
    eor ObjectScr+1
    clc
    adc #$FC
    sta Screen+1
    lda #0
    sta AttributeScr
    lda (Screen),Y
    bmi loc_E541
    lda BankNum0
; ---------------------------------------------------------------------------
    .byte $2C
; ---------------------------------------------------------------------------

loc_E541:
    lda BankNum1
    lsr A
    ror AttributeScr
    adc #$80
    sta AttributeScr+1
    lda (Screen),Y
    and #$7F
    tay
    lda (AttributeScr),Y
    rts
; End of function sub_E510


; =============== S U B R O U T I N E =======================================


sub_E552:
    jsr sub_E607
    ldy #$C
    lda CoorXY + CHANGE_COOR::NewY,X
    asl A
    sta (Dist),Y
    iny
    lda CoorXY + CHANGE_COOR::NewY+1,X
    asl A
    sta (Dist),Y
    jmp loc_E577
; End of function sub_E552


; =============== S U B R O U T I N E =======================================


sub_E567:
    jsr sub_E607
    ldy #$C
    lda CoorXY + CHANGE_COOR::NewY,X
    sta (Dist),Y
    iny
    lda CoorXY + CHANGE_COOR::NewY+1,X
    sta (Dist),Y

loc_E577:
    ldy #8
    lda (Dist),Y
    and #$3F
    ora #$40
    sta Pointer
    lda View
    lsr A
    and #$40
    eor Pointer
    sta (Dist),Y
    ldy #9
    lda #$38
    sta (Dist),Y
    ldy #$15
    lda (Dist),Y
    asl A
    asl A
    asl A
    tax
    lda CoorXY + CHANGE_COOR::NewX,X

add_offset:
    clc
    ldy #OBJECT::CurFrame
    adc (Dist),Y
    ldy #OBJECT::pFrame
    sta (Dist),Y
    lda #0
    ldy #OBJECT::CurFrame+1
    adc (Dist),Y
    ldy #OBJECT::pFrame+1
    sta (Dist),Y
    rts
; End of function sub_E567


; =============== S U B R O U T I N E =======================================


sub_E5AF:
    jsr sub_E5EF
    asl TempX
    rol TempX+1
    asl TempY
    rol TempY+1
    jmp loc_E5C0
; End of function sub_E5AF


; =============== S U B R O U T I N E =======================================


sub_E5BD:
    jsr sub_E5EF

loc_E5C0:
    clc
    ldy #4
    lda (Dist),Y
    adc TempX
    sta TempX
    and #$C0
    sta MaxX
    iny
    lda (Dist),Y
    adc TempX+1
    sta TempX+1
    sta MaxX+1
    clc
    ldy #6
    lda (Dist),Y
    adc TempY
    sta TempY
    and #$C0
    sta MaxY
    iny
    lda (Dist),Y
    adc TempY+1
    sta TempY+1
    sta MaxY+1
    jmp get_screen_pointers
; End of function sub_E5BD

; =============== S U B R O U T I N E =======================================


sub_E5EF:
    jsr sub_E607
    lda CoorXY + CHANGE_COOR::AddX,X
    sta TempX
    lda CoorXY + CHANGE_COOR::AddX+1,X
    sta TempX+1
    lda CoorXY + CHANGE_COOR::AddY,X
    sta TempY
    lda CoorXY + CHANGE_COOR::AddY+1,X
    sta TempY+1
    rts
; End of function sub_E5EF


; =============== S U B R O U T I N E =======================================


sub_E607:
    lda View
    asl A
    asl A
    asl A
    tax
    rts
; End of function sub_E607


; =============== S U B R O U T I N E =======================================


hide_show_object:
    jsr get_pntr
    ldy #OBJECT::Value2
    lda (Dist),Y
    and #$F
    tay
    lda (Source),Y
    iny
    cmp #5
    beq check_hide
    cmp #6
    beq check_show
    bne show

check_hide:
    jsr get_flags
    and FlagBit,X
    bne hide

show:
    clc
    rts
; ---------------------------------------------------------------------------

check_show:
    jsr get_flags
    and FlagBit,X
    bne show

hide:
    ldy #OBJECT::Type
    lda (Dist),Y
    ora #$80
    sta (Dist),Y
    sec
    rts
; End of function hide_show_object


; =============== S U B R O U T I N E =======================================


sub_E641:
    .export sub_E641, get_flags

    jsr get_pntr
    ldy #4

get_flags:
    lda (Source),Y
    and #7
    tax
    lda (Source),Y
    lsr A
    lsr A
    lsr A
    tay
    lda CurrentGame + GAME_SAVE::Flags,Y
    rts
; End of function sub_E641


; =============== S U B R O U T I N E =======================================


get_pntr:
    .export get_pntr

    ldy #2
    lda (Dist),Y
    sta Source
    iny
    lda (Dist),Y
    sta Source+1
    rts
; End of function get_pntr


; =============== S U B R O U T I N E =======================================


sub_E661:
    jsr sub_E641
    ora FlagBit,X
    bne loc_E672

loc_E669:
    jsr sub_E641
    ora FlagBit,X
    eor FlagBit,X

loc_E672:
    sta CurrentGame + GAME_SAVE::Flags,Y
    jmp hide_object
; End of function sub_E661


; =============== S U B R O U T I N E =======================================


sub_E678:
    ldy #$1B
    lda (Dist),Y
    bne loc_E694
    jmp reset_view
; End of function sub_E678


; =============== S U B R O U T I N E =======================================


door:
    ldy #$15
    lda (Dist),Y
    ora #$40
    ldy #$1B
    eor (Dist),Y
    and #$4F
    beq loc_E694
    jsr reset_view
    clc
    rts
; ---------------------------------------------------------------------------

loc_E694:
    jsr get_pntr
    ldy #4
    jsr enter
    jsr reset_view
    sec
    rts
; End of function door


; =============== S U B R O U T I N E =======================================


enter:
    .export enter, loc_E6A9

    store Source, Pointer

loc_E6A9:
    sec
    lda (Pointer),Y
    sbc #0
    sta CurrentGame + PURE_SAVE::GlobalX
    iny
    lda (Pointer),Y
    sbc #2
    sta CurrentGame + PURE_SAVE::GlobalX+1
    iny
    sec
    lda (Pointer),Y
    sbc #$C0
    sta CurrentGame + PURE_SAVE::GlobalY
    iny
    lda (Pointer),Y
    sbc #1
    sta CurrentGame + PURE_SAVE::GlobalY+1
    lda #$40
    sta byte_20
    rts
; End of function enter


; =============== S U B R O U T I N E =======================================


sub_E6CF:
    .importzp FuncID

    jsr door
    bcc @exit
    lda #1
    sta FuncID

@exit:
    rts
; End of function sub_E6CF


; =============== S U B R O U T I N E =======================================


sub_E6D9:
    jsr hide_show_object
    bcc loc_E6DF
    rts
; ---------------------------------------------------------------------------

loc_E6DF:
    jsr sub_E7FC
    and #$F0
    lsr A
    lsr A
    lsr A
    cmp #8
    bcs loc_E6FE
    jsr sub_E7DC
    jmp sub_E73D
; End of function sub_E6D9


; =============== S U B R O U T I N E =======================================


sub_E6F1:
    jsr hide_show_object
    bcc loc_E6F7
    rts
; ---------------------------------------------------------------------------

loc_E6F7:
    jsr sub_E7FC
    and #$F0
    bne hide_object

loc_E6FE:
    ldy #$C
    lda #$3D
    sta (Dist),Y
    iny
    lda #$EC
    sta (Dist),Y
    jsr sub_E73D
    ldy #9
    lda #$78
    sta (Dist),Y
    lda #0
    jsr add_offset
    jmp reset_view
; End of function sub_E6F1


; =============== S U B R O U T I N E =======================================


sub_E71A:
    jsr hide_show_object
    bcc hide_object
    rts
; ---------------------------------------------------------------------------

hide_object:
    jsr clear_shifts_object
    jsr sub_E73D
    jsr sub_E746
    lda #0
    jsr add_offset
; End of function sub_E71A


; =============== S U B R O U T I N E =======================================


reset_view:
    lda #$88
    sta View
    rts
; End of function reset_view


; =============== S U B R O U T I N E =======================================


clear_shifts_object:
    lda #0
    ldy #OBJECT::ShiftX
    sta (Dist),Y
    iny
    sta (Dist),Y
    rts
; End of function clear_shifts_object


; =============== S U B R O U T I N E =======================================


sub_E73D:
    ldy #OBJECT::Tiles
    lda (Dist),Y
    and #$3F
    sta (Dist),Y
    rts
; End of function sub_E73D


; =============== S U B R O U T I N E =======================================


sub_E746:
    ldy #OBJECT::TileID
    lda #$38
    sta (Dist),Y
    rts
; End of function sub_E746


; =============== S U B R O U T I N E =======================================


sub_E74D:
    ldy #8
    lda (Dist),Y
    ora #$40
    sta (Dist),Y
    rts
; End of function sub_E74D


; =============== S U B R O U T I N E =======================================


sub_E756:
    jsr clear_shifts_object
    jsr sub_E73D
    jsr sub_E746
    jsr get_pntr
    jsr sub_E772
    and FlagBit,X
    beq loc_E76C
    lda #4

loc_E76C:
    jsr add_offset
    jmp reset_view
; End of function sub_E756


; =============== S U B R O U T I N E =======================================


sub_E772:
    .export sub_E772

    ldy #6
    lda (Source),Y
    asl A
    ldy #7
    lda (Source),Y
    and #7
    tax
    lda (Source),Y
    ror A
    lsr A
    lsr A
    tay
    lda $7620,Y
    rts
; End of function sub_E772


; =============== S U B R O U T I N E =======================================


sub_E788:
    ldy #$1A
    lda (Dist),Y
    bne loc_E79C
    lda #1
    sta (Dist),Y
    ldy #$15
    lda (Dist),Y
    eor #4
    and #$F
    sta (Dist),Y

loc_E79C:
    ldy #$15
    lda (Dist),Y
    sta View
    jsr sub_E5AF
    jsr loc_E1D4
    bcc loc_E7B1
    lda #$F8
    sta byte_22
    jmp sub_E552
; ---------------------------------------------------------------------------

loc_E7B1:
    lda #0
    sta byte_22
    jmp loc_E965
; End of function sub_E788


; =============== S U B R O U T I N E =======================================


sub_E7B8:
    jsr hide_show_object
    bcc loc_E7BE
    rts
; ---------------------------------------------------------------------------

loc_E7BE:
    jsr sub_E7FC
    and #$E0
    lsr A
    lsr A
    bcc loc_E7D2

loc_E7C7:
    jsr hide_show_object
    bcc loc_E7CD
    rts
; ---------------------------------------------------------------------------

loc_E7CD:
    jsr sub_E7FC
    and #$F8

loc_E7D2:
    lsr A
    lsr A
    cmp #8
    bcs sub_E7F5
    ldy #$15
    sta (Dist),Y
; End of function sub_E7B8


; =============== S U B R O U T I N E =======================================


sub_E7DC:
    sta View
    jsr sub_E5BD
    jsr sub_E376
    bcs sub_E7F5
    jsr loc_E1D4
    bcc sub_E7F5
    jsr interaction_object
    bne sub_E7F5
    jsr bank14_8000_ex
    bcc loc_E7F9
; End of function sub_E7DC


; =============== S U B R O U T I N E =======================================


sub_E7F5:
    lda #$88
    sta View

loc_E7F9:
    jmp sub_E567
; End of function sub_E7F5


; =============== S U B R O U T I N E =======================================


sub_E7FC:
    lda byte_25
    bne loc_E803
    jmp randomize
; ---------------------------------------------------------------------------

loc_E803:
    pla
    pla
    jmp sub_E7F5
; End of function sub_E7FC


; =============== S U B R O U T I N E =======================================


sub_E808:
    jsr hide_show_object
    bcc sub_E7F5
    rts
; End of function sub_E808


; =============== S U B R O U T I N E =======================================


sub_E80E:
    jsr hide_show_object
    bcc loc_E814
    rts
; ---------------------------------------------------------------------------

loc_E814:
    jsr sub_E7FC
    and #$E0
    lsr A
    lsr A
    lsr A
    lsr A
    cmp #8
    bcs sub_E7F5
    ldy #$15
    sta (Dist),Y
    jsr sub_E7F5
    jmp sub_E74D
; End of function sub_E80E


; =============== S U B R O U T I N E =======================================


sub_E82B:
    cmp #0
    bne sub_E7F5
    sta byte_22
    ldy #$1D
    lda (Dist),Y
    and #$7F
    pha
    jsr save_obj_value
    pla
    jmp obj_handler
; End of function sub_E82B


; =============== S U B R O U T I N E =======================================


sub_E83F:
    ldy #$1A
    lda (Dist),Y
    bne loc_E86B
    ldy #$1E
    clc
    lda (Dist),Y
    sta Source
    adc #2
    sta (Dist),Y
    iny
    lda (Dist),Y
    sta Source+1
    adc #0
    sta (Dist),Y
    ldy #0
    lda (Source),Y
    cmp #$10
    bcc sub_E82B
    ldy #$19
    sta (Dist),Y
    ldy #1
    lda (Source),Y
    ldy #$1A

loc_E86B:
    sec
    sbc #1
    sta (Dist),Y
    bne loc_E88F
    ldy #$1E
    lda (Dist),Y
    sta Source
    iny
    lda (Dist),Y
    sta Source+1
    ldy #0
    lda (Source),Y
    cmp #$10
    bcs loc_E88F
    sec
    lda #$28
    sbc ObjectID
    clc
    adc #$84
    sta ObjectNumWithChar

loc_E88F:
    ldy #$19
    lda (Dist),Y
    tax
    and #$20
    beq loc_E8A2
    ldy #$1D
    lda (Dist),Y
    asl A
    asl A
    tay
    lda $E107,Y

loc_E8A2:
    ldy #8
    sta (Dist),Y
    txa
    and #8
    bne loc_E8B2
    ldy #$15
    txa
    and #7
    sta (Dist),Y

loc_E8B2:
    txa
    bmi loc_E8C1
    pha
    and #7
    sta View
    jsr sub_E5BD
    pla
    tax
    bpl loc_E8C5

loc_E8C1:
    lda #$88
    sta View

loc_E8C5:
    txa
    and #$40
    asl A
    ora #$70
    ora View
    sta byte_22
    jmp sub_E567
; End of function sub_E83F


; =============== S U B R O U T I N E =======================================


sub_E8D2:
    jsr hide_show_object
    bcc loc_E8D8
    rts
; ---------------------------------------------------------------------------

loc_E8D8:
    jsr sub_E7F5
    jmp loc_E8E1
; ---------------------------------------------------------------------------

loc_E8DE:
    jsr sub_EB92

loc_E8E1:
    jsr sub_E74D
    lda #$74
    bne loc_E900
; End of function sub_E8D2


; =============== S U B R O U T I N E =======================================


sub_E8E8:
    jsr hide_show_object
    bcc loc_E8EE
    rts
; ---------------------------------------------------------------------------

loc_E8EE:
    jsr sub_E7F5
    lda #$74
    bne loc_E900

loc_E8F5:
    jsr hide_show_object
    bcc loc_E8FB
    rts
; ---------------------------------------------------------------------------

loc_E8FB:
    jsr sub_E7F5
    lda #$72

loc_E900:
    ldx #1
    jmp mmc3_bank_set
; End of function sub_E8E8

; =============== S U B R O U T I N E =======================================


sub_E905:
    .importzp byte_C, byte_E7, ShiftX, ShiftY

    lda byte_23
    clc
    bne loc_E95B
    lda View
    bmi loc_E92F
    ldy #$1D
    lda (Dist),Y
    tax
    lda byte_C
    sta (Dist),Y
    txa
    ldy #$15
    sta (Dist),Y
    sta byte_C
    ldy #$19
    lda (Dist),Y
    tax
    lda View
    sta (Dist),Y
    txa
    sta View
    bmi loc_E92F
    jsr sub_E5BD

loc_E92F:
    jsr sub_E567
    jsr sub_EA24
    ldy #8
    lda (Dist),Y
    and #$F
    cmp #$A
    beq loc_E940
    rts
; ---------------------------------------------------------------------------

loc_E940:
    lda byte_D5
    asl A
    and #2
    ora #$70
    ldx #1
    jmp mmc3_bank_set
; ---------------------------------------------------------------------------

loc_E94C:
    lda #$88
    sta NewView
    lda #0
    sta byte_E7
    sta ShiftX
    sta ShiftY
    jsr clear_shifts_object

loc_E95B:
    lda #0
    sta View
    sta byte_23
    lda #$10
    bcs loc_E967

loc_E965:
    lda #$80

loc_E967:
    ldy #0
    sta (Dist),Y
    rts
; End of function sub_E905


; =============== S U B R O U T I N E =======================================


sub_E96C:
    lda byte_23
    asl A
    bne loc_E94C
    jsr sub_E9CD
    bmi loc_E9A9
    ldy #$15
    sta (Dist),Y
    sta byte_C

loc_E97C:
    sta View
    jsr sub_E5BD
    lda byte_25
    cmp #$28
    bcs loc_E9AD
    jsr sub_E9FA
    bcs loc_E9A9
    jsr bank14_8000_ex
    bcs loc_E9A9
    bit Tiles
    bpl loc_E9AD
    bvs loc_E99F
    lda View
    sbc #0
    and #$F
    bpl loc_E97C

loc_E99F:
    ldy #$15
    lda #0
    sta (Dist),Y
    sta byte_C
    bcc loc_E9AD

loc_E9A9:
    lda #$88
    sta View

loc_E9AD:
    jsr sub_E567
    jsr sub_EA24

loc_E9B3:
    lda View
    sta NewView
    ldy #9
    lda (Dist),Y
    and #$40
    ora byte_1F
    sta byte_E7
    ldy #$C
    lda (Dist),Y
    sta ShiftX
    iny
    lda (Dist),Y
    sta ShiftY
    rts
; End of function sub_E96C


; =============== S U B R O U T I N E =======================================


sub_E9CD:
    lda byte_22
    beq loc_E9E1
    bpl loc_E9D4
    rts
; ---------------------------------------------------------------------------

loc_E9D4:
    ldy #$19
    lda (Dist),Y
    tax
    lda byte_22
    sta (Dist),Y
    txa
    and #$8F
    rts
; ---------------------------------------------------------------------------

loc_E9E1:
    lda ButtonPressed
    and #$F
    tax
    lda byte_D
    bpl loc_E9F3
    and #$F
    cmp byte_EBDD,X
    beq loc_E9F7
    sta byte_D

loc_E9F3:
    lda byte_EBDD,X
    rts
; ---------------------------------------------------------------------------

loc_E9F7:
    lda #$88
    rts
; End of function sub_E9CD


; =============== S U B R O U T I N E =======================================


sub_E9FA:
    jsr interaction_object
    beq loc_EA22
    asl A
    lda View
    and #1
    beq loc_EA08
    bcs loc_EA1C

loc_EA08:
    lda byte_F
    bne loc_EA1A
    ldy #$1B
    lda View
    ora #$40
    sta (Source),Y
    bit ObjectNumWithChar
    bmi loc_EA1A
    stx ObjectNumWithChar

loc_EA1A:
    bcc locret_EA23

loc_EA1C:
    lda byte_22
    and #$10
    beq locret_EA23

loc_EA22:
    clc

locret_EA23:
    rts
; End of function sub_E9FA


; =============== S U B R O U T I N E =======================================


sub_EA24:
    jsr get_pntr
    ldy #1
    lda (Source),Y
    and #$40
    beq locret_EA37
    ldy #8
    lda (Dist),Y
    and #$3F
    sta (Dist),Y

locret_EA37:
    rts
; End of function sub_EA24


; =============== S U B R O U T I N E =======================================


sub_EA38:
    ldy #$1A
    lda (Dist),Y
    bne loc_EA7C
    lda ObjNumber
    jsr set_obj_bank
    asl A
    tax
    lda $8000,X
    sta Pointer
    lda $8001,X
    sta Pointer+1
    ldy #$1E
    lda (Dist),Y
    asl A
    tay
    lda (Pointer),Y
    sta Source
    iny
    lda (Pointer),Y
    sta Source+1
    ldy #$1F
    lda (Dist),Y
    tay
    lda (Source),Y
    cmp #$10
    bcc loc_EA9B
    pha
    iny
    lda (Source),Y
    tax
    iny
    tya
    ldy #$1F
    sta (Dist),Y
    ldy #$19
    pla
    sta (Dist),Y
    txa
    ldy #$1A

loc_EA7C:
    sec
    sbc #1
    sta (Dist),Y
    ldy #$19
    lda (Dist),Y
    bmi loc_EABB
    and #$F
    sta View
    ldy #$15
    sta (Dist),Y
    jsr sub_E5BD
    jsr loc_EB0B
    jsr add_offset
    jmp loc_E9B3
; ---------------------------------------------------------------------------

loc_EA9B:
    cmp #0
    bne loc_EAA1
    sta byte_23

loc_EAA1:
    iny
    jsr enter
    iny
    tya
    ldy #$1F
    sta (Dist),Y
    lda byte_23
    bne loc_EABB
    lda #$80
    sta byte_23
    jsr sub_D9FA
    ldx #0
    jsr sub_CDAF

loc_EABB:
    lda #$88
    sta View
    jsr loc_EB0B
    jmp loc_E9B3
; End of function sub_EA38


; =============== S U B R O U T I N E =======================================


sub_EAC5:
    lda View
    bmi sub_EB07
    ldy #$19
    lda (Dist),Y
    tax
    lda View
    sta (Dist),Y
    txa
    bmi sub_EB07
    sta View
    ldy #$15
    eor #4
    sta (Dist),Y
    ldy #6
    sec
    lda Characters + OBJECT::CoorY
    sbc (Dist),Y
    iny
    lda Characters + OBJECT::CoorY+1
    sbc (Dist),Y
    ldy #$14
    lda (Dist),Y
    bcs loc_EAF4
    ora #$10
; ---------------------------------------------------------------------------
    .byte $2C
; ---------------------------------------------------------------------------

loc_EAF4:
    and #$EF
    sta (Dist),Y
    jsr sub_E5BD
    jsr loc_EB0B
    cpx #$40
    bcc loc_EB04
    sbc #4

loc_EB04:
    jmp add_offset
; End of function sub_EAC5


; =============== S U B R O U T I N E =======================================


sub_EB07:
    lda #$88
    sta View

loc_EB0B:
    jsr sub_E607
    ldy #$C
    lda CoorXY + CHANGE_COOR::NewY,X
    sta (Dist),Y
    iny
    lda CoorXY + CHANGE_COOR::NewY+1,X
    sta (Dist),Y
    jsr sub_E73D
    jsr sub_E746
    lda View
    bmi locret_EB39
    ldy #$15
    lda (Dist),Y
    tax
    lda byte_EC35,X
    tax
    ldy #8
    and #$40
    ora (Dist),Y
    sta (Dist),Y
    txa
    and #$1F

locret_EB39:
    rts
; End of function sub_EB07


; =============== S U B R O U T I N E =======================================


sub_EB3A:
    jsr sub_E9CD
    bmi loc_EB70
    ldy #$15
    sta (Dist),Y
    sta NewView
    tax
    ldy #$1A
    lda (Dist),Y
    beq loc_EB68
    bmi loc_EB5B
    sec
    sbc #1
    sta (Dist),Y
    cmp #5
    bcs loc_EB68
    ldx #7
    bcc loc_EB68

loc_EB5B:
    pha
    clc
    adc #1
    sta (Dist),Y
    pla
    cmp #$FD
    bcs loc_EB68
    ldx #5

loc_EB68:
    stx View
    jsr sub_E5BD
    jmp loc_EB76
; ---------------------------------------------------------------------------

loc_EB70:
    lda #$88
    sta NewView
    sta View

loc_EB76:
    jsr sub_E567
    jsr sub_E74D
    lda NewView
    sta View
    jsr sub_E607
    lda byte_1F
    sta byte_E7
    lda CoorXY + CHANGE_COOR::NewY,X
    sta ShiftX
    lda CoorXY + CHANGE_COOR::NewY+1,X
    sta ShiftY
    rts
; End of function sub_EB3A


; =============== S U B R O U T I N E =======================================


sub_EB92:
    jsr sub_E9CD
    bmi loc_EBC0
    ldy #$15
    sta (Dist),Y
    sta View
    jsr sub_E5BD
    jsr sub_E9FA
    bcs loc_EBC0
    lda byte_22
    bne loc_EBC4
    lda #$14
    ldx #6
    jsr mmc3_bank_set
    lda ObjectScr
    sta Screen
    jsr sub_E506
    lda ObjNumber
    jsr set_obj_bank
    bit Tiles
    bvs loc_EBC4

loc_EBC0:
    lda #$88
    sta View

loc_EBC4:
    jsr sub_E567
    jmp loc_E9B3
; End of function sub_EB92


; =============== S U B R O U T I N E =======================================


sub_EBCA:
    jsr sub_E9CD
    sta View
    bmi loc_EBD4
    jsr sub_E5BD

loc_EBD4:
    jsr sub_E567
    jsr sub_E73D
    jmp loc_E9B3
; End of function sub_EBCA

; ---------------------------------------------------------------------------
    .export CoorXY, FlagBit

byte_EBDD:      .byte $88, 2, 6, $88, 4, 3, 5, $88, 0, 1, 7, $88, $88
                .byte $88, $88, $88

CoorXY:
    coordinate     0, $FFC0,   0, $FF00
    coordinate   $40, $FFC0,   0, $FF01
    coordinate   $40,     0,   8,     1
    coordinate   $40,   $40, $10,  $101
    coordinate     0,   $40, $10,  $100
    coordinate $FFC0,   $40, $10,  $1FF
    coordinate $FFC0,     0, $18,   $FF
    coordinate $FFC0, $FFC0,   0, $FFFF
    coordinate     0,     0, $10,     0

byte_EC35:      .byte $54, $14, $1C, 4, $44, 0, $C, $10, 0, $FF, 0, 1
                .byte $FF, 0, 1, 0, 0, $FF, 0, 1, 0, $FF, 0, 1, $FF, 0
                .byte 1, 0, 0, $FF, 0, 1, 0, 1, 0, $FF, 0, $FF, 0, 1
FlagBit:      .byte $80, $40, $20, $10, 8, 4, 2, 1

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

    lda #$C3
    jsr loc_C408
    ldx #30
    jsr wait_frames     ; wait for a few frames input: X - number of frames
    jsr sub_D8D3
    bcs loc_ECB6
    jsr sub_DA48
    clc

loc_ECB6:
    php
    jsr sub_D977
    ldx #$3C

loc_ECBC:
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    lda ButtonPressed
    bne loc_ECC6
    dex
    bne loc_ECBC

loc_ECC6:
    jsr wait_nmi_processed
    jsr darken_color
    jsr restore_palettes
    lda #$60
    ldx #0
    jsr mmc3_bank_set   ; Set memory bank A - bank number, X - mode
    lda #0
    sta MIRROR
    sta IRQCount
    sta PrintSize
    sta byte_71
    sta EnemyGroup
    sta ModeSRAM
    sta JmpInstr
    plp
    jmp wait_nmi        ; wait for NMI interrupt processing to complete
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
    sec
    lda #$59
    sbc CameraY
    sta IRQCount
    rts
; End of function sub_ED1A


; =============== S U B R O U T I N E =======================================


sub_ED22:
    clc
    lda #2
    adc byte_46
    jsr sub_C218
    bit byte_45
    bpl loc_ED6F

loc_ED2E:
    lda BankPPU_X000
    bpl loc_ED34
    lda #$7C

loc_ED34:
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankPPU_X400
    bpl loc_ED41
    lda #$7C

loc_ED41:
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankPPU_X800
    bpl loc_ED4E
    lda #$7C

loc_ED4E:
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankPPU_XC00
    bpl loc_ED5B
    lda #$7C

loc_ED5B:
    stx BANK_SELECT
    sta BANK_DATA
    rts
; ---------------------------------------------------------------------------

loc_ED62:
    sec
    lda #$23
    sbc byte_46
    asl A
    jsr sub_C218
    bit byte_45
    bvs loc_ED2E

loc_ED6F:
    lda BankPPU_X000
    and #$7F
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankPPU_X400
    and #$7F
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankPPU_X800
    and #$7F
    stx BANK_SELECT
    sta BANK_DATA
    inx
    lda BankPPU_XC00
    and #$7F
    stx BANK_SELECT
    sta BANK_DATA
    rts
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
    jsr wait4
    ldx #$24
    lda #$1F
    bit PPU_STATUS      ; PPU Status Register (R)
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
    stx PPU_ADDR        ; VRAM Address Register #2 (W2)
                        ;
                        ; Commonly used to specify the 16-bit address in VRAM to
                        ; access via $2007. However, this register controls VRAM
                        ; addressing bits, and therefore should be used with
                        ; knowledge of how it works, and when it works.
    sta PPU_ADDR        ; VRAM Address Register #2 (W2)
                        ;
                        ; Commonly used to specify the 16-bit address in VRAM to
                        ; access via $2007. However, this register controls VRAM
                        ; addressing bits, and therefore should be used with
                        ; knowledge of how it works, and when it works.
    rts
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

    pha
    jsr wait_nmi_processed
    pla
    ldx #$1F

@next_color:
    dex
    dex
    dex
    sta PalNMIBG,X
    dex
    bpl @next_color
    jmp one_frame
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

    jsr wait_nmi_processed
    lda #4
    eor CameraX
    sta CameraX
    jmp wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EEE4


; =============== S U B R O U T I N E =======================================


.proc sub_EEF0
    lda CurrentGame + GAME_SAVE::Flags+$1F
    and #$F0
    beq exit
    sta Pointer
    asl Pointer
    bcc exit
    jsr randomize
    and #$C0
    bne exit
    jsr store_palettes
    jsr bg_blackout
    ldx #$A

loc_EF0C:
    lda #7
    sta Sound1
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

    ldx #$F

@next_color:
    cpx #$E
    beq @skip
    sec
    lda PalNMIBG,X
    sbc #$10
    bcs @save_color
    lda #BLACK

@save_color:
    sta PalNMIBG,X

@skip:
    dex
    bpl @next_color
    jmp one_frame
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
    stx GamepadButtons

@loop:
    jsr randomize
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    lda GamepadButtons
    bne @button_pressed
    dey 
    bne @loop
    ldy #5
    lda (pCursor),Y
    eor OAM_Cache + OAM_TILE::TileID
    sta OAM_Cache + OAM_TILE::TileID
    lda ButtonPressed
    bne @button_hold
    ldy #$18
    sty pTileID+1
    bne @cursor_flashing

@button_hold:
    ldy #6
    sty pTileID+1

@button_pressed:
    ldx #0
    stx GamepadButtons
    tax
    ldy #4
    and #$F0
    and (pCursor),Y
    beq arrow_buttons
    sta Buttons
    lda #5
    sta Sound2

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
    sta Sound2

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
    sta Sound2
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

multiplication:
    .export multiplication

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
; End of function multiplication


; =============== S U B R O U T I N E =======================================


sub_F109:
    lda #0
    ldx #$18

loc_F10D:
    ror AddrForJmp
    ror Pointer+1
    ror Pointer
    bcc loc_F118
    clc
    adc pTileID

loc_F118:
    ror A
    dex
    bne loc_F10D
    sta AddrForJmp+1
    ror AddrForJmp
    ror Pointer+1
    ror Pointer
    rts
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


divide:
    .export divide

    lda pTileID

@div0:
    beq @div0
    lda #0
    ldx #$18
    rol Pointer
    rol Pointer+1
    rol AddrForJmp

@loop:
    rol A
    bcs @decrease
    cmp pTileID
    bcc @shift

@decrease:
    sbc pTileID
    sec

@shift:
    rol Pointer
    rol Pointer+1
    rol AddrForJmp
    dex
    bne @loop
    sta pDist
    rts
; End of function divide


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

    ldy #0
    sty Pointer
    sty Pointer+1
    sty AddrForJmp
    beq loc_F1C6

loc_F1AE:
    lda #0
    ldx #$18

loc_F1B2:
    ror AddrForJmp
    ror Pointer+1
    ror Pointer
    bcc loc_F1BC
    adc #9

loc_F1BC:
    ror A
    dex
    bne loc_F1B2
    ror AddrForJmp
    ror Pointer+1
    ror Pointer

loc_F1C6:
    lda $68,Y
    cmp #$BA
    bcs loc_F1D4
    cmp #$B0
    bcc loc_F1D4
    sbc #$B0
; ---------------------------------------------------------------------------
    .byte $2C
; ---------------------------------------------------------------------------

loc_F1D4:
    lda #0
    clc
    adc Pointer
    sta Pointer
    lda #0
    adc Pointer+1
    sta Pointer+1
    lda #0
    adc AddrForJmp
    sta AddrForJmp
    iny
    cpy #8
    bcc loc_F1AE
    rts
; End of function sub_F1A4


; =============== S U B R O U T I N E =======================================


randomize:
    .export randomize
    .importzp RandomNumber

    clc
    lda RandomNumber
    adc RandomNumber+1
    sta RandomNumber+1
    clc
    lda RandomNumber
    adc #$75
    sta RandomNumber
    lda RandomNumber+1
    adc #$63
    sta RandomNumber+1
    rts
; End of function randomize


; =============== S U B R O U T I N E =======================================


start_battle:
    .import sub_149630, clear_nametables, battle

    jsr bank17_A000
    jsr bank16          ; set memory bank $16 at $8000
    jsr get_enemy_group ; Input: EnemyGroup - ID enemy ?
                        ; Output: pCharacter - pointer to struct
                        ;         Pointer - offset for struct, offset zero page
    ldx #$2C
    ldy #9
    lda (pCharacter),Y
    and #$F0
    cmp #$50
    beq loc_F21C
    lsr A
    lsr A
    lsr A
    lsr A
    tax

loc_F21C:
    txa
    jsr check_music
    jsr bank14_8000
    jsr sub_149630      ; animation
    jsr bank16          ; set memory bank $16 at $8000
    jsr clear_oam_sprite
    jsr clear_nametables
    jsr sub_EC65
    jsr battle          ; main battle proc
    jsr sub_ECA3        ; clear screen
    rts
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


check_music:
    .export check_music
    .import NewMusic

    cmp CurrentMusic
    beq @exit
    sta NewMusic

@exit:
    rts
; End of function check_music


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

    inx

loc_F26C:
    txa
    pha
    jsr sub_F27C
    pla
    tax
    dex
    bne loc_F26C
    jsr sub_F27C
    jmp black1color_palette
; End of function sub_F26B


; =============== S U B R O U T I N E =======================================


sub_F27C:
    ldx #$2F

loc_F27E:
    txa
    pha
    and #$F
    lsr A
    tax
    lda byte_F296,X
    jsr color1_palette
    jsr wait_nmi
    jsr wait_nmi
    pla
    tax
    dex
    bne loc_F27E
    rts
; End of function sub_F27C

; ---------------------------------------------------------------------------
byte_F296:
    .byte $21, $22, $23, $24, $25, $24, $23, $22

; =============== S U B R O U T I N E =======================================


wait_A_B:
    .export wait_A_B

    ldx #0
    stx GamepadButtons

@loop:
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    lda GamepadButtons
    stx GamepadButtons
    and #$C0
    beq @loop
    rts
; End of function wait_A_B


; =============== S U B R O U T I N E =======================================

; trap function without return
; transfers control to a function whose address is selected from the table located after the call of this function;
; after the function execution is completed, the first function from the table is executed.
; Input: A - number of function in the table

script_low:
    .export script_low

    asl A               ; diff effects in the battle
    tay
    iny
    iny
    iny
    restore Pointer
    lda (Pointer),Y
    sta AddrForJmp
    iny
    lda (Pointer),Y
    sta AddrForJmp+1
    ldy #1
    sec
    lda (Pointer),Y
    sbc #1
    tax
    iny
    lda (Pointer),Y
    sbc #0
    pha
    txa
    pha
    jmp (AddrForJmp)    ; F6BF
; End of function script_low


; =============== S U B R O U T I N E =======================================

; trap function with no return
; transfers control to a function whose address is selected from the table located after the call of this function
; Input: A - number of function in the table

script_high:
    .export script_high

    asl A
    tay
    iny
    restore Pointer
    sec
    lda (Pointer),Y
    sbc #1
    tax
    iny
    lda (Pointer),Y
    sbc #0
    pha
    txa
    pha
    rts
; End of function script_high


; =============== S U B R O U T I N E =======================================


random_value:
    .export random_value

    save_registers
    save AddrForJmp
    save pTileID
    save pDist

    lda Pointer+1
    and #$FC
    pha
    ldx #6

@mul64:
    asl Pointer
    rol Pointer+1
    dex
    bne @mul64
    stx AddrForJmp
    txa
    pha
    save Pointer
    lda #100
    sta pTileID

loc_F320:
    jsr divide
    jsr randomize
    lsr A
    php
    tax
    lda MultiplierTable,X
    sta pTileID
    jsr multiplication      ; Input: Pointer - first multiplier, pTileID - second multiplier
                            ; Output: AddrForJmp, Pointer - result Pointer * pTileID
    plp
    bcs loc_F346
    pla
    adc Pointer
    sta Pointer
    pla
    adc Pointer+1
    sta Pointer+1
    pla
    adc AddrForJmp
    sta AddrForJmp
    jmp loc_F355
; ---------------------------------------------------------------------------

loc_F346:
    pla
    sbc Pointer
    sta Pointer
    pla
    sbc Pointer+1
    sta Pointer+1
    pla
    sbc AddrForJmp
    sta AddrForJmp

loc_F355:
    ldx #6

@div64:
    lsr AddrForJmp
    ror Pointer+1
    ror Pointer
    dex
    bne @div64
    pla
    ora Pointer+1
    sta Pointer+1

    restore pDist
    restore pTileID
    restore AddrForJmp
    restore_registers
    rts
; End of function random_value

; ---------------------------------------------------------------------------
MultiplierTable:
    .byte  0,    0,   0,   0,   0,  $C,  $C,  $C,  $C,  $C
    .byte  1,    1,   1,   1,   1,   1,   1,   1,   1,   1
    .byte  2,    2,   2,   2,   2,   2,   2,   2,   2,   2
    .byte  3,    3,   3,   3,   3,   3,   3,   3,   3,   3
    .byte  4,    4,   4,   4,   4,   4,   4,   4,   4,   4
    .byte  5,    5,   5,   5,   5,   5,   5,   5,   5, $14
    .byte  6,    6,   6,   6,   6,   6,   6,   6,   6, $15
    .byte  7,    7,   7,   7,   7,   7,   7,   7, $11, $11
    .byte  8,    8,   8,   8,   8,   8,   8,   8, $12, $12
    .byte  9,    9,   9,   9,   9,   9,   9,  $F,  $F,  $F
    .byte $A,   $A,  $A,  $A,  $A,  $A,  $D,  $D,  $D,  $D
    .byte $B,   $B,  $B,  $B,  $B,  $B,  $E,  $E,  $E,  $E
    .byte $10, $10, $10, $13, $13, $16, $17, $18

; =============== S U B R O U T I N E =======================================


get_speed:
    .export get_speed

    tax
    save Pointer
    stx Pointer
    lda #0
    sta Pointer+1
    jsr random_value
    lda Pointer+1
    beq loc_F415
    lda #$FF
    sta Pointer

loc_F415:
    ldx Pointer
    restore Pointer
    txa
    rts
; End of function get_speed


; =============== S U B R O U T I N E =======================================


play_sound:
    .export play_sound
    .import SoundEffects

    pha
    asl A
    asl A
    beq no_sound
    tax
    lda SoundEffects + SOUND_EFFECT::Sound,X
    sta pTileID+1
    lda SoundEffects + SOUND_EFFECT::Delay,X
    sta TilesCount
    lda SoundEffects + SOUND_EFFECT::NumSound,X
    cmp #0
    bne @sound2
    lda pTileID+1
    sta Sound1
    jmp sound
; ---------------------------------------------------------------------------

@sound2:
    cmp #1
    bne @sound3
    lda pTileID+1
    sta Sound2
    jmp sound
; ---------------------------------------------------------------------------

@sound3:
    cmp #2
    bne @sound4
    lda pTileID+1
    sta Sound3
    jmp sound
; ---------------------------------------------------------------------------

@sound4:
    lda pTileID+1
    sta Sound4

sound:
    ldx TilesCount
    jsr delay
    jsr bank16

no_sound:
    pla
    rts
; End of function play_sound


; =============== S U B R O U T I N E =======================================


long_delay:
    .export long_delay

    ldx #$F

@loop:
    txa
    pha
    lda #5
    sta Sound2
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
    jsr multiplication      ; Input: Pointer - first multiplier, pTileID - second multiplier
                            ; Output: AddrForJmp, Pointer - result Pointer * pTileID
    clc
    lda #<(EnemyGroups)
    adc Pointer
    sta pCharacter
    lda #>(EnemyGroups)
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
    lda #LOAD_PALETTES
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


black1color_palette:
    .export black1color_palette, color1_palette

    lda #BLACK

color1_palette:
    pha
    jsr wait_nmi_processed
    pla
    ldy #$1C

@next_color:
    sta PalNMIBG,Y
    dey
    dey
    dey
    dey
    bpl @next_color
    jsr set_nmi_id4
    jmp wait_nmi
; End of function black1color_palette


; =============== S U B R O U T I N E =======================================


frame:
    .import FramesList
    .export frame

    asl A
    sta Pointer
    txa
    pha
    tya
    pha
    jsr bank0
    ldy Pointer
    lda FramesList,Y
    sta Pointer
    lda FramesList+1,Y
    sta Pointer+1
    ldy #0
    lda (Pointer),Y
    sta TilepackMode
    iny
    ldx Column
    lda (Pointer),Y
    cmp #$FF
    beq loc_F4F4
    tax

loc_F4F4:
    stx AddrForJmp
    iny
    ldx Row
    lda (Pointer),Y
    cmp #$FF
    beq loc_F500
    tax

loc_F500:
    stx AddrForJmp+1

loc_F502:
    iny
    lda (Pointer),Y
    ldx #0
    cmp #$FC
    beq loc_F521
    ldx #1
    cmp #$FD
    beq loc_F521
    ldx #2
    cmp #$FE
    beq loc_F521
    cmp #$FF
    beq loc_F526
    jsr sub_F52E
    jmp loc_F502
; ---------------------------------------------------------------------------

loc_F521:
    stx TilesCount
    jmp loc_F502
; ---------------------------------------------------------------------------

loc_F526:
    jsr bank16
    pla
    tay
    pla
    tax
    rts
; End of function frame


; =============== S U B R O U T I N E =======================================


sub_F52E:
    tax
    iny
    lda (Pointer),Y
    sta pTileID
    iny
    lda (Pointer),Y
    sta pTileID+1

loc_F539:
    txa
    pha
    tya
    pha
    jsr wait_nmi_processed
    lda #0
    sta PrintSize
    lda AddrForJmp
    sta Column
    lda pTileID
    sta PointerTilePack
    lda pTileID+1
    sta PointerTilePack+1
    jsr sub_F562
    clc
    lda AddrForJmp+1
    adc TilepackMode
    sta AddrForJmp+1
    pla
    tay
    pla
    tax
    dex
    bne loc_F539
    rts
; End of function sub_F52E


; =============== S U B R O U T I N E =======================================


sub_F562:
    lda Pointer+1
    pha
    lda Pointer
    pha
    lda AddrForJmp
    pha
    lda pTileID+1
    pha
    lda pTileID
    pha
    lda TilesCount
    pha
    lda TilepackMode
    pha
    lda TilesCount
    beq loc_F58D
    cmp #1
    beq loc_F59E
    lda AddrForJmp+1
    sta Row
    pha
    jsr draw_tilepack
    pla
    sta AddrForJmp+1
    jmp loc_F5AC
; ---------------------------------------------------------------------------

loc_F58D:
    clc
    lda AddrForJmp+1
    adc TilepackMode
    sta Row
    pha
    jsr print_string
    pla
    sta AddrForJmp+1
    jmp loc_F5AC
; ---------------------------------------------------------------------------

loc_F59E:
    clc
    lda AddrForJmp+1
    adc TilepackMode
    sta Row
    pha
    jsr draw_tilepack_clear
    pla
    sta AddrForJmp+1

loc_F5AC:
    pla
    sta TilepackMode
    pla
    sta TilesCount
    pla
    sta pTileID
    pla
    sta pTileID+1
    pla
    sta AddrForJmp
    pla
    sta Pointer
    pla
    sta Pointer+1
    rts
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

    save_registers
    jsr draw_statistical_frame
    jsr print_state
    restore_registers
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


print_state:
    jsr wait_nmi_processed
    ldy #$E8
    sty pDist
    lda #$DF            ; CFE8
    sta pDist+1
    ldy $6707

loc_F622:
    sec
    lda pDist+1
    sbc #$10
    sta pDist+1
    dey
    bne loc_F622
    lda #0
    sta TilepackMode

loc_F630:
    jsr wait_nmi_processed
    ldy TilepackMode
    lda Character,Y
    beq loc_F660
    lda $611,Y
    and #6
    eor #6
    beq loc_F660
    ldx #2
    lda Character + CHARACTER::InitialStatus,Y
    and #$80
    bne loc_F655
    ldx #1
    jsr sub_F673
    bcc loc_F655
    ldx #0

loc_F655:
    txa
    jsr warning
    clc
    lda pDist
    adc #8
    sta pDist

loc_F660:
    clc
    lda pDist+1
    adc #$10
    sta pDist+1
    clc
    lda TilepackMode
    adc #$20
    sta TilepackMode
    cmp #$60
    bne loc_F630
    rts
; End of function print_state


; =============== S U B R O U T I N E =======================================


sub_F673:
    .export sub_F673

    tya
    pha
    lda Character + CHARACTER::NameOffset,Y
    sta Pointer
    lda Character + CHARACTER::NameOffset+1,Y
    sta Pointer+1
    lda Character + CHARACTER::MaxHealth,Y
    sta pTileID
    lda Character + CHARACTER::MaxHealth+1,Y
    sta pTileID+1
    ldy #3
    lda (Pointer),Y
    sta AddrForJmp
    iny
    lda (Pointer),Y
    and #3
    sta AddrForJmp+1
    lsr AddrForJmp+1
    ror AddrForJmp
    lsr AddrForJmp+1
    ror AddrForJmp
    pla
    tay
    sec
    lda pTileID
    sbc AddrForJmp
    lda pTileID+1
    sbc AddrForJmp+1
    rts
; End of function sub_F673


; =============== S U B R O U T I N E =======================================


warning:
    pha
    jsr wait_nmi_processed
    pla 
    jsr script_low

    .word set_nmi_flag,set_dark_tile,tile_blink,set_light_tile

set_nmi_flag:
    lda #1
    sta NMIFlags
    rts

set_dark_tile:
    .import stru_15970C

    lda #0
    ldyx #stru_15970C
    jmp set_anim_spite

tile_blink:
    ldx pDist
    lda SpriteTable,X
    pha
    lda #3
    ldyx #stru_15970C
    jsr set_anim_spite
    pla
    cmp #3
    beq @stop
    ldx #4

@blink:
    txa
    pha
    lda #0
    jsr change_tile_wait
    lda #3
    jsr change_tile_wait
    pla
    tax
    dex
    bne @blink

@stop:
    rts
; ---------------------------------------------------------------------------
set_light_tile:
.import stru_159710

    lda #3
    ldyx #stru_159710
    jmp set_anim_spite
; ---------------------------------------------------------------------------

set_anim_spite:
    stx Pointer
    sty Pointer+1
    ldx pDist
    sta SpriteTable,X
    lda #8
    sta SpriteTable + ANIM_SPRITE::TileID,X
    lda #$70
    sta SpriteTable + ANIM_SPRITE::PosX,X
    lda pDist+1
    sta SpriteTable + ANIM_SPRITE::PosY,X
    lda #0
    sta SpriteTable + ANIM_SPRITE::ShiftX,X
    sta SpriteTable + ANIM_SPRITE::ShiftY,X
    lda Pointer
    sta SpriteTable + ANIM_SPRITE::pFrame,X
    lda Pointer+1
    sta SpriteTable + ANIM_SPRITE::pFrame+1,X
    rts
; End of function warning


; =============== S U B R O U T I N E =======================================


change_tile_wait:
    ldx pDist
    sta SpriteTable,X
    lda #1
    sta NMIFlags
    ldx #8
    jmp delay
; End of function change_tile_wait


; =============== S U B R O U T I N E =======================================

; copies the palettes at the pointer Pointer offset at $400

copy_packed_tiles:
    .export copy_packed_tiles

    jsr wait_nmi_processed
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
    lda EnemyPos
    beq locret_F771
    jsr sub_F772

locret_F771:
    rts
; End of function sub_F76A


; =============== S U B R O U T I N E =======================================


sub_F772:
    lda Auto
    beq locret_F79E
    bit FlagClearOAM300
    bvs locret_F79E
    ldx #0
    lda GamepadButtons
    stx GamepadButtons
    and #$40
    beq locret_F79E
    txa
    sta Auto
    sta SpriteTable + ANIM_SPRITE::Tiles+$E0
    lda SpriteTable + ANIM_SPRITE::TileID+$E0
    asl A
    asl A
    tay
    lda #$F0
    sta OAM_Cache + OAM_TILE::PosY+0,Y
    sta OAM_Cache + OAM_TILE::PosY+4,Y
    sta OAM_Cache + OAM_TILE::PosY+8,Y
    sta OAM_Cache + OAM_TILE::PosY+$C,Y

locret_F79E:
    rts
; End of function sub_F772