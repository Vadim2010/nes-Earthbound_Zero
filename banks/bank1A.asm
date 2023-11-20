; ===========================================================================

; Segment type: Pure code
    ;.segment BANK1A
    * =  $A000

; =============== S U B R O U T I N E =======================================


sub_1AA000:
    LDX     #$78 ; 'x'
    JSR     wait_frames     ; wait for a few frames
                ; input: X - number of frames
    JSR     sub_1AA0B1
    JSR     wait_nmi_processed
    LDA     #0
    STA     $A000
    LDA     #0
    STA     IRQCount
    LDA     byte_E7
    AND     #$BF
    STA     byte_E7
    LDA     #0
    STA     ShiftX
    STA     ShiftY
    LDA     CntrlPPU        ; PPU_CTRL
    AND     #$FC
    LDX     #$10
    LDY     #8
    STA     CntrlPPU        ; PPU_CTRL
    STX     CameraX
    STY     CameraY
    LDA     #$FF
    JSR     sub_FD28
    LDA     #$1B
    STA     BankNum
    JSR     wait_nmi        ; wait for NMI interrupt processing to complete
    LDA     #$D3
    STA     BankPPU_X000
    LDA     #$A2
    STA     BankPPU_X400

loc_1AA042:                 ; CODE XREF: sub_1AA000+57↓j
    LDY     #0
    LDA     (BankPPU_X000),Y
    BEQ     loc_1AA05A
    JSR     sub_1AA05D
    CLC
    TYA
    ADC     BankPPU_X000
    STA     BankPPU_X000
    LDA     #0
    ADC     BankPPU_X400
    STA     BankPPU_X400
    JMP     loc_1AA042
; ---------------------------------------------------------------------------

loc_1AA05A:
    JMP     loc_1AA05A
; End of function sub_1AA000


; =============== S U B R O U T I N E =======================================


sub_1AA05D:                 ; CODE XREF: sub_1AA000+48↑p
    ASL     A
    TAX
    LDA     off_1AA068+1,X
    PHA
    LDA     off_1AA068,X
    PHA
    RTS
; End of function sub_1AA05D

; ---------------------------------------------------------------------------
off_1AA068:
    .word loc_1AA05A-1, sub_1AA090-1, sub_1AA0A0-1, sub_1AA0B1-1
    .word loc_1AA0CD-1, loc_1AA0F3-1, sub_1AA0EF-1, sub_1AA152-1
    .word loc_1AA206-1, sub_1AA18A-1, sub_1AA1C4-1, sub_1AA1F0-1
    .word loc_1AA0E5-1, sub_1AA0BD-1, sub_1AA1F8-1, sub_1AA1FF-1
    .word sub_1AA215-1, sub_1AA226-1, sub_1AA29A-1, sub_1AA2BD-1

; =============== S U B R O U T I N E =======================================


sub_1AA090:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    TAX

loc_1AA094:                 ; CODE XREF: sub_1AA090+C↓j
    JSR     wait_nmi_processed
    LDA     #1
    STA     NMIFlags
    DEX
    BNE     loc_1AA094
    INY
    RTS
; End of function sub_1AA090


; =============== S U B R O U T I N E =======================================


sub_1AA0A0:                 ; DATA XREF: BANK1A:off_1AA068↑o
    LDA     #0
    STA     Gamepad0Buttons
    INY
    LDA     (BankPPU_X000),Y

loc_1AA0A7:                 ; CODE XREF: sub_1AA0A0+9↓j
    BIT     Gamepad0Buttons
    BEQ     loc_1AA0A7
    LDA     #0
    STA     Gamepad0Buttons
    INY
    RTS
; End of function sub_1AA0A0


; =============== S U B R O U T I N E =======================================


sub_1AA0B1:                 ; CODE XREF: sub_1AA000+5↑p
                ; DATA XREF: BANK1A:off_1AA068↑o
    JSR     darken_palette
    JSR     clear_oam_sprite
    JSR     clear_nametables
    LDY     #1
    RTS
; End of function sub_1AA0B1


; =============== S U B R O U T I N E =======================================


sub_1AA0BD:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    LDX     #4
    JSR     mmc3_bank_set   ; Set memory bank
                ; A - bank number
                ; X - mode
    INY
    LDA     (BankPPU_X000),Y
    LDX     #5
    JSR     mmc3_bank_set   ; Set memory bank
                ; A - bank number
                ; X - mode

loc_1AA0CD:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    LDX     #2
    JSR     mmc3_bank_set   ; Set memory bank
                ; A - bank number
                ; X - mode
    INY
    LDA     (BankPPU_X000),Y
    LDX     #3
    JSR     mmc3_bank_set   ; Set memory bank
                ; A - bank number
                ; X - mode
    INY
    LDA     (BankPPU_X000),Y
    LDX     #0
    JSR     mmc3_bank_set   ; Set memory bank
                ; A - bank number
                ; X - mode

loc_1AA0E5:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    LDX     #1
    JSR     mmc3_bank_set   ; Set memory bank
                ; A - bank number
                ; X - mode
    INY
    RTS
; End of function sub_1AA0BD


; =============== S U B R O U T I N E =======================================


sub_1AA0EF:                 ; DATA XREF: BANK1A:off_1AA068↑o
    LDA     #8
    BNE     loc_1AA0F5

loc_1AA0F3:                 ; DATA XREF: BANK1A:off_1AA068↑o
    LDA     #$20 ; ' '

loc_1AA0F5:                 ; CODE XREF: sub_1AA0EF+2↑j
    STA     BankPPU_XC00
    JSR     wait_nmi_processed
    LDA     #5
    STA     NMI_ID.NMI_ID   ; NMITable
    LDY     #4
    LDA     (BankPPU_X000),Y
    STA     BankPPU_X800
    DEY
    LDA     (BankPPU_X000),Y
    STA     NMI_ID.num_of_chr ; NMITable
    DEY
    LDA     (BankPPU_X000),Y
    STA     NMI_ID.PPU_addr ; NMITable
    DEY
    LDA     (BankPPU_X000),Y
    STA     NMI_ID.PPU_addr+1 ; NMITable
    LDY     #5

loc_1AA119:                 ; CODE XREF: sub_1AA0EF+5F↓j
    LDX     #0

loc_1AA11B:                 ; CODE XREF: sub_1AA0EF+3A↓j
    LDA     (BankPPU_X000),Y
    STA     NMI_ID.chr,X    ; NMITable
    INY
    BNE     loc_1AA125
    INC     BankPPU_X400

loc_1AA125:                 ; CODE XREF: sub_1AA0EF+32↑j
    INX
    CPX     NMI_ID.num_of_chr ; NMITable
    BNE     loc_1AA11B
    LDA     #0
    STA     NMI_ID.chr,X    ; NMITable
    STA     OffsetNMI_ID
    LDA     #$80
    STA     NMIFlags
    DEC     BankPPU_X800
    BEQ     locret_1AA151
    JSR     wait_nmi_processed
    CLC
    LDA     BankPPU_XC00
    ADC     NMI_ID.PPU_addr+1 ; NMITable
    STA     NMI_ID.PPU_addr+1 ; NMITable
    LDA     #0
    ADC     NMI_ID.PPU_addr ; NMITable
    STA     NMI_ID.PPU_addr ; NMITable
    JMP     loc_1AA119
; ---------------------------------------------------------------------------

locret_1AA151:              ; CODE XREF: sub_1AA0EF+49↑j
    RTS
; End of function sub_1AA0EF


; =============== S U B R O U T I N E =======================================


sub_1AA152:                 ; DATA XREF: BANK1A:off_1AA068↑o
    JSR     wait_nmi_processed
    LDY     #$10
    LDX     #$F

loc_1AA159:                 ; CODE XREF: sub_1AA152+14↓j
    LDA     (BankPPU_X000),Y
    STA     PalNMIBG,X
    LDA     SpritePalette,X
    STA     PalNMISpr,X
    DEY
    DEX
    BPL     loc_1AA159
    LDA     PalNMIBG
    STA     PalNMISpr
    STA     PalNMISpr+4
    STA     PalNMISpr+8
    STA     PalNMISpr+$C
    LDA     #4
    STA     NMI_ID.NMI_ID   ; NMITable
    LDA     #0
    STA     NMI_ID.num_of_chr ; NMITable
    STA     OffsetNMI_ID
    LDA     #$80
    STA     NMIFlags
    LDY     #$11
    RTS
; End of function sub_1AA152


; =============== S U B R O U T I N E =======================================


sub_1AA18A:                 ; DATA XREF: BANK1A:off_1AA068↑o
    JSR     wait_nmi_processed
    INY
    LDA     (BankPPU_X000),Y
    ASL     A
    ASL     A
    ASL     A
    TAX
    LDA     (BankPPU_X000),Y
    AND     #$80
    STA     SpriteTable.TileID,X
    INY
    LDA     (BankPPU_X000),Y
    STA     SpriteTable,X
    INY
    LDA     (BankPPU_X000),Y
    STA     SpriteTable.PosX,X
    INY
    LDA     (BankPPU_X000),Y
    STA     SpriteTable.PosY,X
    INY
    LDA     (BankPPU_X000),Y
    STA     SpriteTable.pFrame,X
    INY
    LDA     (BankPPU_X000),Y
    STA     SpriteTable.pFrame+1,X
    LDA     #0
    STA     SpriteTable.field_4,X
    STA     SpriteTable.field_5,X
    LDY     #7
    RTS
; End of function sub_1AA18A


; =============== S U B R O U T I N E =======================================


sub_1AA1C4:                 ; DATA XREF: BANK1A:off_1AA068↑o
    JSR     wait_nmi_processed
    INY
    LDA     (BankPPU_X000),Y
    ASL     A
    ASL     A
    ASL     A
    TAX
    CLC
    INY
    LDA     (BankPPU_X000),Y
    ADC     SpriteTable.pFrame,X
    STA     SpriteTable.pFrame,X
    INY
    LDA     (BankPPU_X000),Y
    ADC     SpriteTable.pFrame+1,X
    STA     SpriteTable.pFrame+1,X
    INY
    LDA     (BankPPU_X000),Y
    STA     SpriteTable.field_4,X
    INY
    LDA     (BankPPU_X000),Y
    STA     SpriteTable.field_5,X
    LDY     #6
    RTS
; End of function sub_1AA1C4


; =============== S U B R O U T I N E =======================================


sub_1AA1F0:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    JSR     sub_FD28
    INY
    RTS
; End of function sub_1AA1F0


; =============== S U B R O U T I N E =======================================


sub_1AA1F8:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    STA     byte_47
    INY
    RTS
; End of function sub_1AA1F8


; =============== S U B R O U T I N E =======================================


sub_1AA1FF:                 ; DATA XREF: BANK1A:off_1AA068↑o
    DEC     byte_47
    BNE     loc_1AA206
    LDY     #3
    RTS
; ---------------------------------------------------------------------------

loc_1AA206:                 ; CODE XREF: sub_1AA1FF+2↑j
                ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    PHA
    INY
    LDA     (BankPPU_X000),Y
    STA     BankPPU_X400
    PLA
    STA     BankPPU_X000
    LDY     #0
    RTS
; End of function sub_1AA1FF


; =============== S U B R O U T I N E =======================================


sub_1AA215:                 ; DATA XREF: BANK1A:off_1AA068↑o
    JSR     wait_nmi_processed
    INY
    LDA     (BankPPU_X000),Y
    ASL     A
    ASL     A
    ASL     A
    TAX
    LDA     #0
    STA     SpriteTable,X
    INY
    RTS
; End of function sub_1AA215


; =============== S U B R O U T I N E =======================================


sub_1AA226:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    STA     PointerTilePack
    INY
    LDA     (BankPPU_X000),Y
    STA     byte_73
    LDA     #2
    STA     Column
    LDA     #$13
    STA     Row
    LDA     #$1C
    STA     byte_70
    LDA     #0
    STA     byte_71

loc_1AA240:                 ; CODE XREF: sub_1AA226+2A↓j
    JSR     text2stack
    JSR     loc_C6DB
    CMP     #0
    BEQ     loc_1AA252
    LDY     #0
    LDA     (PointerTilePack),Y
    CMP     #0
    BNE     loc_1AA240

loc_1AA252:                 ; CODE XREF: sub_1AA226+22↑j
    JSR     wait_nmi_processed
    LDA     #8
    STA     NMI_ID.NMI_ID   ; NMITable
    LDA     #7
    STA     NMI_ID.num_of_chr ; NMITable
    LDA     #$E9
    STA     NMI_ID.PPU_addr+1 ; NMITable
    LDA     #$23 ; '#'
    STA     NMI_ID.PPU_addr ; NMITable
    LDA     #$FF
    STA     NMI_ID.chr      ; NMITable
    LDA     #0
    STA     NMI_ID.next     ; NMITable
    LDX     #2

loc_1AA275:                 ; CODE XREF: sub_1AA226+6E↓j
    LDA     #0
    STA     OffsetNMI_ID
    LDA     #$80
    STA     NMIFlags
    DEX
    BEQ     loc_1AA297
    JSR     wait_nmi_processed
    CLC
    LDA     #8
    ADC     NMI_ID.PPU_addr+1 ; NMITable
    STA     NMI_ID.PPU_addr+1 ; NMITable
    LDA     #0
    ADC     NMI_ID.PPU_addr ; NMITable
    STA     NMI_ID.PPU_addr ; NMITable
    JMP     loc_1AA275
; ---------------------------------------------------------------------------

loc_1AA297:                 ; CODE XREF: sub_1AA226+58↑j
    LDY     #3
    RTS
; End of function sub_1AA226


; =============== S U B R O U T I N E =======================================


sub_1AA29A:                 ; DATA XREF: BANK1A:off_1AA068↑o
    INY
    LDA     (BankPPU_X000),Y
    STA     PointerTilePack
    INY
    LDA     (BankPPU_X000),Y
    STA     byte_73
    INY
    LDA     (BankPPU_X000),Y
    STA     Column
    INY
    LDA     (BankPPU_X000),Y
    STA     Row
    LDA     #0
    STA     byte_70
    STA     byte_71
    JSR     text2stack
    JSR     loc_C6DB
    LDY     #5
    RTS
; End of function sub_1AA29A


; =============== S U B R O U T I N E =======================================


sub_1AA2BD:                 ; DATA XREF: BANK1A:off_1AA068↑o
    JSR     back_palettes
    LDY     #1
    RTS
; End of function sub_1AA2BD

; ---------------------------------------------------------------------------
SpritePalette:  .byte BLACK, BLACK, DARK_GRAY, WHITE; PALETTE0
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE; PALETTE1
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE; PALETTE2
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE; PALETTE3
    .byte 1, $78, $B, $2D, 1, $78, $D, $7E, $7F, $A, 9, $D0
    .byte $D4, 5, $88, $20, $14, $10, $2E, $2E, 9, $D, $55
    .byte $4D, $4E, $4E, $4E, $4F, $55, $4D, $4E, $4F, $4D
    .byte $4E, $4E, $59, $A, $2E, $2E, $2E, 9, $E, $56, $4F
    .byte $50, $51, $62, $66, $56, $4F, $50, $51, $4F, $51
    .byte $51, $59, 8, $2E, $2E, $B, $55, $4D, $4E, $59, $4E
    .byte $58, $40, $40, $55, $4E, $4E, $59, $4D, $4E, $E
    .byte 3, 6, $2E, $2E, 9, $56, $4F, $51, $59, $51, $59
    .byte $76, $76, $56, $4D, $51, $59, $4F, $51, 6, $2E, $2E
    .byte $2E, $2E, 7, 2, $12, $55, $4D, $51, $5A, $6D, $6D
    .byte $57, $4E, $50, $51, $50, $51, $A, $2E, $2E, $2E
    .byte $2E, $2E, $2E, 7, $56, $4E, $5A, $6D, $6E, $6E, $6D
    .byte $57, $53, $54, $53, $54, 8, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $B, $51, $5A, $36, $37, $6E, $6E, $36, $37
    .byte $6D, $6D, $6D, $6D, $E, $A, $2E, $2E, $2E, $2E, $B
    .byte $13, $5A, $6D, $38, $39, $6E, $6E, $38, $39, $6E
    .byte $6D, $6E, $6E, $10, 8, $2E, $2E, $B, $C, $4D, $4E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $55, $4D, $A, $2E, $10, $F, $4F, $51, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2D, $2D, $2E, $2E, $2E
    .byte $2E, $56, $4F, $10, $C, $4D, $4E, $4E, $59, $2E
    .byte $2E, $2E, $2E, $2E, $2D, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $4E, $59, $55, $4D, $4F, $51, $51, $59, $2E
    .byte $2E, $2E, $2D, $2D, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $51, $59, $56, $4E, $4D, $4E, $4E, $4E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $55, $4D, $4E, $58, $4F, $51, $50, $51, $2E
    .byte $2E, $2E, $2E, $2D, $2D, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $56, $4F, $51, $59, $4E, $4E, $4E, $59, $2E
    .byte $2E, $2E, $2E, $2D, $2D, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $55, $4D, $55, $4D, $50, $51, $51, $59, $2E
    .byte $2E, $2D, $2E, $2E, $2D, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $56, $4F, $56, $4E, 6, $CA, $23, 5, 4, 0, 0
    .byte 0, 0, 0, 0, $80, $80, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 9, 0, 4, $70, $60, 0, $80, 9, 1, 4, $60
    .byte $60, $20, $80, 9, 2, 4, $50, $60, $40, $80, 9, 3
    .byte 4, $60, $30, $58, $9A, 9, 4, 4, $60, $10, $D4, $9A
    .byte 9, 5, 4, $80, $20, $F4, $9A, 9, 6, 4, $50, $2F, $C
    .byte $9B, 9, 7, 4, $70, $2F, $3C, $9B, 9, 8, 4, $90, $30
    .byte $DC, $9A, 9, 9, 4, $40, $40, $4C, $9B, 9, $A, 4
    .byte $80, $40, $7C, $9B, $11, $FF, 6, 7, $F, $38, $18
    .byte $17, $F, $38, $18, $28, $F, $38, 0, $27, $F, $38
    .byte $30, $22, 1, $F0, 1, $3C, $E, 2, $A, 1, 4, 0, 0
    .byte $FF, 1, 8, $A, 1, $FC, $FF, 0, $FF, 1, 8, $F, $A5
    .byte $A4, $A, 1, 0, 0, 0, 0, 1, $30, $A, 9, 4
    .byte 0, 1, 0, $A, $A, 4, 0, $FF, 0, 1, 8, $A, 9, $FC
    .byte $FF, 1, 0, $A, $A, $FC, $FF, $FF, 0, 1, 8, $A, 9
    .byte 0, 0, 0, 0, $A, $A, 0, 0, 0, 0, 1, $10, $A, 0, 4
    .byte 0, 0, $FF, $A, 2, 4, 0, 0, $FF, 1, 8, $A, 0, $FC
    .byte $FF, 0, $FF, $A, 2, $FC, $FF, 0, $FF, 1, 8, $A, 0
    .byte 0, 0, 0, 0, $A, 2, 0, 0, 0, 0, 1, $B4, 3, 1, $1E
    .byte 4, $1A, 0, $D0, $D2, 5, $88, $20, $14, $10, 5, $3F
    .byte $3F, $3F, $3F, 4, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, 5, $3F, $3F, $3F, $3F, 4, 5, $3F, $3F, $3F
    .byte $3F, 4, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, 5
    .byte $3F, $3F, $3F, $3F, 4, 5, $3F, $3F, $3F, $3F, 4
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, 5, $3F, $3F
    .byte $3F, $3F, 4, 5, $3F, $3F, $3F, $3F, 4, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, 5, $3F, $3F, $3F, $3F
    .byte 4, 5, $3F, $3F, $3F, $3F, 4, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, 5, $3F, $3F, $3F, $3F, 4, 5
    .byte $3F, $3F, $3F, $3F, 4, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, 5, $3F, $3F, $3F, $3F, 4, 5, $3F, $3F
    .byte $3F, $3D, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, $34, $3F
    .byte $3F, $3F, 4, 5, $3F, $3F, $3D, $14, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $33, $34, $3F
    .byte $3F, 4, 5, $3F, $3D, $14, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $33, $34, $3F
    .byte 4, 5, $3D, $14, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $33, $34, 4, 5
    .byte $14, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $33, 4, 3, 6
    .byte 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8
    .byte 1, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $2C, $2D, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $2C, $2D, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $2E, $2F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $2E, $2F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $2C, $2D
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $2C, $2D, $3F, $3F
    .byte 6, $CA, $23, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 4, $70, $50
    .byte 0, $80, 9, 1, 4, $90, $60, $20, $80, 9, 2, 4, $60
    .byte $60, $40, $80, 9, 3, 9, $70, $30, $B0, $9A, $11
    .byte 0, 7, 7, $F, 4, 3, $23, $F, 4, $27, $30, $F, 4, 5
    .byte $30, $F, 4, $30, $34, 1, $F0, 1, $3C, $E, 7, $A
    .byte 3, 4, 0, 0, 0, 1, 8, $A, 3, $FC, $FF, 0, 0, 1, 8
    .byte $F, $B0, $A6
    .byte $A, 3, $C, 0, 0, 0, 1, 8, $A, 3, $FC, $FF, 0, 0
    .byte 1, 8, $E, 7, $A, 3, 4, 0, 0, 0, 1, 8, $A, 3, $FC
    .byte $FF, 0, 0, 1, 8, $F, $D5, $A6, $A, 3, 8, 0, 0, $FF
    .byte 1, $10, $A, 3, 0, 0, 0, 0, 1, $B4, 3, 1, $1E, 4
    .byte 8, 0, $D0, $D4, 5, $88, $20, $14, $10, $2E, $2E
    .byte $27, $28, $39, $3A, 5, 5, 7, 8, 5, $3B, 5, 5, $3D
    .byte $3E, $2E, $2E, $27, $28, $25, $D, $29, $2A, $22
    .byte $23, $23, $A, $B, $C, 8, $3F, $23, $23, $3C, $20
    .byte $2E, $2E, $29, $2A, $27, $28, $2B, $2C, $11, $2D
    .byte $E, $B, $1C, $1D, $F, $10, $2D, $12, $14, $21, $27
    .byte $28, $29, $2A, $29, $2A, $27, $28, $11, $2D, $26
    .byte $2D, $2D, $2D, $12, $1E, $2D, $12, $24, $13, $29
    .byte $2A, $2B, $2C, $29, $2A, $29, $2A, $11, $15, $26
    .byte $2D, $18, $19, $12, $1F, $15, $16, $17, $2E, $29
    .byte $2A, $2E, $2E, $2B, $2C, $2B, $2C, $2E, $2E, $11
    .byte $15, $1A, $1B, $16, $17, $2E, $2E, $2E, $2E, $2B
    .byte $2C, $2E, $2E, $27, $28, $27, $28, $25, $D, $2E
    .byte $2E, $25, $D, $2E, $2E, $25, $D, $25, $D, $27, $28
    .byte $27, $28, $29, $2A, $29, $2A, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $25, $D, $2E, $29, $2A
    .byte $29, $2A, $2B, $2C, $29, $2A, $2E, $2E, $25, $D
    .byte $2E, $2E, $25, $D, $2E, $2E, $27, $28, $29, $2A
    .byte $29, $2A, $27, $28, $2B, $2C, $2E, $2E, $2E, $2E
    .byte $25, $D, $2E, $2E, $2E, $2E, $29, $2A, $2B, $2C
    .byte $2B, $2C, $29, $2A, $2E, $2E, $2E, $2E, $25, $D
    .byte $25, $D, $2E, $2E, $25, $D, $29, $2A, $2E, $2E, $27
    .byte $28, $2B, $2C, $25, $D, $2E, $2E, $2E, $25, $D, $2E
    .byte $2E, $2E, $2E, $2E, $2B, $2C, $27, $28, $29, $2A
    .byte $D, $2E, $25, $D, $25, $D, $25, $D, $2E, $25, $D
    .byte $2E, $2E, $25, $D, $2E, $29, $2A, $29, $2A, $25
    .byte $D, $2E, $2E, $2E, $25, $D, $2E, $25, $D, $25, $D
    .byte $25, $D, $25, $D, $2B, $2C, $2B, $2C, $25, $D, $2E
    .byte $2E, $25, $D, $2E, $2E, $25, $D, $2E, $2E, $25, $D
    .byte $2E, $2E, $25, $D, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, 6, $CA, $23, 5, 4
    .byte $AA, $FF, $FF, $FF, $A8, $AA, $AF, $AD, $AF, $A2
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
    .byte 9, 0, 4, $60, $30, $10, $80, 9, 1, 4, $50, $30, $38
    .byte $80, 9, 2, 4, $70, $20, $48, $80, 9, 3, 4, $60, $50
    .byte $4C, $9B, 9, 4, 4, $70, $50, $9C, $9B, 9, 5, 4, $40
    .byte $30, $AC, $9B, 9, 6, 4, $80, $30, $84, $9B, 9, 7
    .byte 4, $80, $20, $DC, $9A, 9, 8, 4, $40, $40, $E4, $9A
    .byte 9, 9, 4, $30, $50, $C, $9B, 9, $A, 4, $90, $50, $3C
    .byte $9B, 9, $B, 4, $90, $60, $7C, $9B, $11, 1, 7, 7
    .byte $F, $3A, $18, $38, $F, $3A, 0, $20, $F, $3A, $25
    .byte $1A, $F
    .byte $3A, $30, $12, 1, $F0, 1, $3C, $E, 2, $A, 4, 4, 0
    .byte $FF, 1, $A, 5, 4, 0, 0, 0, $A, 6, 4, 0, $FF, 0, 1
    .byte 8, $A, 3, 8, 0, 0, 0, $A, 4, $E4, $FF, $FF, 1, $A
    .byte 5, 4, 0, 0, 0, $A, 6, $FC, $FF, $FF, 0, 1, 8, $A
    .byte 4, 4, 0, $FF, $FF, $A, 5, $FC, $FF, 0, 0, $A, 6
    .byte 4, 0, 1, 0, 1, 8, $A, 3, 8, 0, 0, 0, $A, 4, 4, 0
    .byte $FF, $FF, $A, 5, $FC, $FF, 0, 0, $A, 6, $FC, $FF
    .byte 1, 0, 1, 8, $A, 4, $FC, $FF, 1, 1, $A, 5, 4, 0, 0
    .byte 0, $A, 6, 4, 0, $FF, 0, 1, 8, $A, 3, $F8, $FF, 0
    .byte 0, $A, 4, $FC, $FF, 1, 1, $A, 5, 4, 0, 0, 0, $A
    .byte 6, $FC, $FF, $FF, 0, 1, 8, $A, 4, $1C, 0, 1, $FF
    .byte $A, 5, $FC, $FF, 0, 0, $A, 6, 4, 0, 1, 0, 1, 8, $A
    .byte 3, $F8, $FF, 0, 0, $A, 4, $FC, $FF, 1, $FF, $A, 5
    .byte $FC, $FF, 0, 0, $A, 6, $FC, $FF, 1, 0, 1, 8, $F
    .byte $CC, $A8, $A, 4, 0, 0, 0, 0, $A, 5, 0, 0, 0, 0, $A
    .byte 6, 0, 0, 0, 0, 1, $B4, 3, 1, $1E, 4, 9, 1, $D0, $D2
    .byte 5, $88, $20, $14, $10, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $B, $E, $19, $1A, $2D, $6E, $6E, $6E, $77, $78
    .byte $6E, $69, $6A, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte 9, $11, $19, $2D, $2E, $6E, $6E, $6E, $79, $7A, $44
    .byte $6B, $6C, $2E, $2E, $2E, $2E, $2E, $2E, $2E, 7, 3
    .byte 6, 5, $2E, $6E, $6E, $45, $46, $43, $43, $47, $6E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, 5, $6E, $48, $49, $4A, $46, $4B, $4C, $6E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $B, $4D, $5C, $5D, $6D, $4E, $4F, $60, $6E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte 9, $51, $7B, $7B, $7B, $52, $5E, $61, $6E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $B, $E, $51
    .byte $7B, $7C, $7D, $52, $5F, $53, $6E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $B, $C, $18, $19, $54, $55
    .byte $7E, $7F, $56, $57, $6E, $6E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $B, $E, $19, $11, $10, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $B, $19, $11, $19, $13, $1A, $2E, $2E, $2F
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $B, $C, $C
    .byte $E, $E, $11, $13, $2D, $2E, $2E, $2E, $2E, $2F, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $B, $10, $E, $E, $10, $11
    .byte $1A, $2D, $2E, $2E, $2E, $2E, $2F, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, 9, $E, $11, $10, $13, $1A, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2F, $2E, $2E, 7, $11, $13, $1A, $2D, $2D, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2F, $2E, $2E, $2E
    .byte $2E, $2E, $B
    .byte $18, $2D, $2D, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2F, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $B, $19
    .byte $19, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2F, $2E, $2E, $2E, $2E, 6, $CA, $23, 5
    .byte 4, 0, 0, 0, $FC, $FB, 0, 0, 0, $FF, $FF, 0, 0, 0
    .byte $88, 0, 0, 0, 0, $A0, $A, 9, 0, 4, $A0, $40, $18
    .byte $80, 9, 1, 4, $90, $40, $28, $80, 9, 2, 4, $80, $40
    .byte $48, $80, $11, 2, 7, 7, $F, $20, $20, $10, $F, $20
    .byte $20, $10, $F, $20, $20, $28, $F, $20, $30, $3B, 1
    .byte $F0, 1, $3C, $A, 1, $10, 0, 0, 0, 1, $10, $A, 1
    .byte $F0, $FF, 0, 0, 1, $10, $A, 1, $10, 0, 0, 0, 1, $20
    .byte $A, 1, $F8, $FF, 0, $FF, 1, 8, $A, 1, 4, 0, 0, $FF
    .byte $A, 0, $E8, $FF, 0, 0, $A, 2, $F8, $FF, 0, 0, 1
    .byte 8, $A, 1, 0, 0, 0, 0, 1, $B4, 3, 1, $1E, 4, $1A
    .byte $19, $D0, $D4, 5, $88, $20, $14, $10, $3F, $3F, $3F
    .byte 4, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, 5, $3F, $3F, $3F, $3F, $3F, $3F, 4, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, 5, $3F, $3F, $3F, $3F, $3F, $3F, 4, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte 5, $3F, $3F, $3F, $3F, $3F, $3F, 4, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, 5, $3F
    .byte $3F, $3F, $3F, $3F, $3F, 4, $3F, $3F, 6, 7, 7, 7
    .byte 7, 7, 7, 8, $3F, $3F, 5, $3F, $3F, $3F, $3F, $3F
    .byte $3F, 4, $3F, $3F, 9, $3E, $3E, $3E, $3E, $3E, $3E
    .byte $A, $3F, $3F, 5, $3F, $3F, $3F, $3F, $3F, $3F, 4
    .byte $3F, $3F, $B, $C, $C, $C, $C, $C, $C, $D, $3F, $E
    .byte $F, $10, $3F, $3F, $45, $3F, $3D, 1, 2, 2, 2, 2
    .byte 2, 2, 2, 2, 2, 2, 2, $11, $12, $13, $3F, $3F, $46
    .byte $3D, $14, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $30, $31, $32, $34, $3F, $47
    .byte $14, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $20, $21, $3F, $3F, $33, $34, $14
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $22, $23, $3F, $3F, $3F, $33, $3F
    .byte $3F, $79, $7A, $79, $7A, $3F, $3F, $7D, $24, $3F
    .byte $3F, $3F, $3F, $20, $21, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $7B, $7C, $7B, $7C, $3F, $3F, $7E, $25, $3F
    .byte $3F, $3F, $3F, $22, $23, $3F, $3F, $3F, $3F, $79
    .byte $7A, $3F, $3F, $79, $7A, $79, $7A, $3F, $7D, $24
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $20, $21, $7B
    .byte $7C, $79, $7A, $7B, $7C, $7B, $7C, $3F, $7E, $25
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $22, $23, $3F
    .byte $3F, $7B, $7C, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, 6, $CA
    .byte $23, 5, 4, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 4, $30
    .byte $40, 8, $80, 9, 1, 4, $60, $30, $20, $9A, 9, 2, 4
    .byte $50, $30, $40, $9A, 9, 3, 4, $60, $30, $28, $9A
    .byte 9, 4, 4, $70, $30, $38, $9A, 9, 5, 4, $58, $40, $30
    .byte $9A, 9, 6, 4, $68, $40, $48, $9A, 9, 7, 4, $80, $60
    .byte $84, $9B, 9, 8, 4, $90, $60, $BC, $9B, $11, 3, 7
    .byte 7, $F, $38, $18, $1C, $F, $38, $10, $3B, $F, $38
    .byte $25, $1A, $F, $38, $30, 0, 1, $F0, 1, $3C, $E, 2
    .byte $A, 1, 4, 0, 0, $FF, $A, 2, 4, 0, 0, 0, $A, 3, 4
    .byte 0, 0, 0, $A, 4, 4, 0, 0, 0, $A, 5, 4, 0, 0, 0, $A
    .byte 6, 4, 0, 0, 0, 1, $20, $A, 1, $FC, $FF, 0, 1, 1
    .byte $20, $A, 1, 0, 0, 0, 0, $A, 2, $FC, $FF, 0, 0, $A
    .byte 3, $FC, $FF, 0, 0, $A, 4, $FC, $FF, 0, 0, $A, 5
    .byte $FC, $FF, 0, 0, $A, 6, $FC, $FF, 0, 0, 1, $20, $F
    .byte $29, $AD, $A, 1, 4, 0, 0, $FF, $A, 2, 4, 0, 0, 0
    .byte $A, 3, 4, 0, 0, 0, $A, 4, 4, 0, 0, 0, $A, 5, 4, 0
    .byte 0, 0, $A, 6, 4, 0, 0, 0, 1, $20, $A, 1, 0, 0, 0
    .byte 0, 1, $B4, 3, 1, $1E, 4, 2, 0, $D0, $D2, 5, $88
    .byte $20, $14, $10, $6E, $6E, $69, $6A, $69, $6A, $67
    .byte $68, $6E, $6E, $63, $46, $43, $43, $47, $6E, $69
    .byte $6A, $67, $68, $6E, $6E, $6B, $6C, $6B, $6C, $69
    .byte $6A, $6E, $48, $49, $4A, $46, $4B, $4C, $6E, $6B
    .byte $6C, $69, $6A, $6E, $6E, $75, $76, $6E, $6E, $69
    .byte $6A, $4D, $49, $62, $62, $4E, $4F, $60, $6E, $6E
    .byte $6E, $69, $6A, $6E, $6E, $77, $78, $6E, $6E, $6B
    .byte $6C, $51, $54, $54, $54, $52, $5E, $61, $6E, $67
    .byte $68, $6B, $6C, $6E, $6F, $6E, $6E, $6E, $6E, $6E
    .byte $6F, $51, $54, $7E, $7F, $52, $5F, $53, $6E, $69
    .byte $6A, $6E, $6E, $6F, $6E, $6E, $6E, $6E, $6E, $6F
    .byte $6E, $51, $55, $5A, $5B, $56, $57, $6E, $6E, $6B
    .byte $6C, $6E, $6E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $36, $2D, $3A, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2F, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $36, $2D, $3A, $2E, $2E, $2E, $2E
    .byte $2F, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $30, $2D, $33, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2F, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $36, $2D, $3A, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2E, $2F, $2E, $2F, $2E
    .byte $2E, $2E, $36, $37, $2E, $2E, $2F, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $2E, $2E, $2F, $2E, $2E, $2E, $2E
    .byte $2E, $3B, $2D, $2D, $3A, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $C, $C, 7, 9, 9, $A, $2E, $2E, $3B
    .byte $2D, $37, $2E, $2E, $2E, $2E, $2F, 7, 9, 9, 9, $C
    .byte $C, 8, 9
    .byte 9, $B, $2E, $2E, $2E, $32, $2D, $31, $2E, $2F, $2F
    .byte $2E, 8, 9, 9, 9, $27, $28, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $36, $2D, $3A, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $29, $2A, $2E, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, $36, $2D, $3A, $2E, $2E, $2E, $2E
    .byte $2E, $2E, $2E, 6, $CA, $23, 5, 4, $C8, $8A, $55
    .byte $55, $AA, $22, 8, 5, 5, $22, $80, $20, 0, $20, 8
    .byte $20, 0, 0, $A, 0, 9, 0, 4, $70, $60, 0, $80, 9, 1
    .byte 4, $70, $20, $10, $9A, 9, 2, 4, $60, $20, $70, $9A
    .byte 9, 3, 4, $80, $20, $70, $9A, 9, 4, 4, $30, $40, $88
    .byte $9A, 9, 5, 4, $A0, $60, $A8, $9A, $11, 4, 7, 7, $F
    .byte $3A, $18, $38, $F, $3A, 0, $20, $F, $3A, $24, $1A
    .byte $F, $3A, $30, $12, 1, $F0, 1, $3C, $A, 1, 4, 0, 0
    .byte 1, $A, 4, 4, 0, 1, 0, 1, 8, $A, 1, $FC, $FF, 0, 1
    .byte $A, 4, $FC, $FF, 1, 0, 1, 8, $A, 1, 0, 0, 0, 0, $A
    .byte 4, $14, 0, $FF, 0, 1, 8, $A, 4, $FC, $FF, $FF, 0
    .byte 1, 8, $A, 0, 4, 0, 0, $FF, $A, 4, $F4, $FF, 1, 0
    .byte 1, 8, $A, 0, $FC, $FF, 0, $FF, $A, 4, $FC, $FF, 1
    .byte 0, 1, 8, $A, 0, 4, 0, 0, $FF, $A, 4, $14, 0, $FF
    .byte 0, 1, 8, $A, 0, $FC, $FF, 0, $FF, $A, 4, $FC, $FF
    .byte $FF, 0, 1, 8, $A, 0, 0, 0, 0, 0, $A, 4, $F4, $FF
    .byte 1, 0, 1, 8, $A, 4, $FC, $FF, 1, 0, 1, 8, $E, 3, $A
    .byte 4, $14, 0, $FF, 0, 1, 8, $A, 4, $FC, $FF, $FF, 0
    .byte 1, 8, $A, 4, $F4, $FF, 1, 0, 1, 8, $A, 4, $FC, $FF
    .byte 1, 0, 1, 8, $F, $D8, $AF, $A, 4, 0, 0, 0, 0, 1, $B4
    .byte 3, 1, $1E, 4, $14, 0, $D0, $D2, 5, $88, $20, $14
    .byte $10, $3F, $A, $3F, $3F, 4, $A, $3F, 4, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $A, $3F, $3F, 4, $A, $3F, 4, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $A, $16, $17, 4, $A, $3F, 4, $3F, $13, $3F, $3F
    .byte $13, $3F, $3F, $13, $3F, $3F, $13, $3F, $3F, $A
    .byte $18, $19, 4, $A, $3F, 4, $3F, $14, $3F, $3F, $14
    .byte $3F, $3F, $14, $3F, $3F, $14, $3F, $3F, $A, $1A
    .byte $1B, 4, $A, $3F, 4, $3F, $14, $3F, $3F, $14, $3F
    .byte $3F, $14, $3F, $3F, $14, $3F, $3F, $A, $1A, $1B
    .byte 4, $A, $3F, 4, $3F, $15, $3F, $3F, $15, $3F, $3F
    .byte $15, $3F, $3F, $15, $3F, $3F, $A, $1C, $1D, 4, $A
    .byte $3F, 4, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $A, $1E, $3F, 4, $A, 8, 1, 2
    .byte 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, $3F, $A, $3F, $3F
    .byte 4, $A, 9, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F
    .byte $3F, $3F, $A, $3F, 8, 1, $B, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $A, 8, 9, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $A, 9, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $A
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, 8, $B, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, 9, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, 6, $CA, $23, 5, 4
    .byte $40, 0, $50, $50, $50, $44, 0, 5, 5, 5, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 9, 0, 4, $70, $50, $A0, $9A
    .byte 9, 1, $28, $88, $30, $AC, $9A, $11, 5, 7, 7, $F
    .byte $38, $18, 0, $F, $38, $24, $2B, $F, $12, $31, 2
    .byte $F, $21, $30, 0, 1, $F0, 1, $3C, $E, 3, $A, 0, 4
    .byte 0, 0, 0, 1, $10, $A, 0, $FC, $FF, 0, 0, 1, $30, $F
    .byte $91, $B1, $A, 0, 4, 0, 0, 0, 1, $10, $A, 0, $FC
    .byte $FF, 0, 0, 1, $B4, 3, 1, $1E, 4, $19, $1A, $D0, $D2
    .byte 5, $88, $20, $14, $10, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $44, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $44, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $44, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $44, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $44, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $44, $7F, $7F, $5C, $5D, $7F, $7F, $7F, $7F
    .byte $5C, $5D, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $44, $7F, $7F, $5E, $5F, $7F, $7F, $7F, $7F
    .byte $5E, $5F, $4E, $4F, $7F, $7F, $7F, $7F, 8, $7F, $7D
    .byte $41, $42, $42, $42, $42, $42, $42, $42, $42, $42
    .byte $42, $51, $52, $3F, $3F, $3F, 9, $A, 1, 2, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $70
    .byte $71, $3F, $3F, $3F, $B, $C, 2, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $66, $68, $7F, $7F, $7F
    .byte $3F, $3F, $3F, $D, $E, $3F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $69, $6B, $7F, $7F, $7F, $3F
    .byte $10, $11, $F, $3F, $3F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $3F
    .byte $12, $13, $14, $15, $3F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, 1, $16, $17, $18, $19, $3F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $7F, 2, $3F, $3F, $3F, $3F, $3F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte $3F, $3F, $3F, $3F, $3F, $3F, $7F, $7F, $7F, $7F
    .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F
    .byte 6, $CA, $23, 5, 4, 0, 0, 0, 0, 0, 0, 0, $44, 0, $11
    .byte 0, 0, 0, $88, $22, 0, 0, 0, 0, 0, 9, 0, 4, $30, $50
    .byte $50, $9A, 9, 1, 2, $50, $50, $5C, $9A, $11, 6, 7
    .byte 7, $F, $37, $18, $31, $F, $37, $10, $3B, $F, $37
    .byte $30, $24, $F, $37, $30, $27, 1, $F0, 1, $3C, $E
    .byte 3, $A, 0, 4, 0, 0, 0, 1, $50, $A, 0, $FC, $FF, 0
    .byte 0, 1, $60, $F, $42, $B3, $A, 0, 4, 0, 0, 0, 1, $50
    .byte $A, 0, $FC, $FF, 0, 0, 7, 2, $11, $C, $C, 2, $11
    .byte $C, $C, 2, $11, $C, $C, 2, $11, 2, $C, 1, $B4, $C
    .byte $60, 9, 2, $84, $C8, $80, $EC, $9B, $E, $A, $A, 2
    .byte 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4, $F
    .byte $81, $B3, $A, 2, 8, 0, 0, 0, 1, $5A, $A, 2, $F8
    .byte $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0, 1, 4, $A, 2
    .byte $FC, $FF, 2, 0, 1, 4, $F, $A4, $B3, $10, 2, 1, $78
    .byte $C, $68, 9, 2, $84, $C8, $80, $B0, $85, $E, $A, $A
    .byte 2, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4
    .byte $F, $C6, $B3, $A, 2, 8, 0, 0, 0, 1, $5A, $A, 2, $F8
    .byte $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0, 1, 4, $A, 2
    .byte $FC, $FF, 2, 0, 1, 4, $F, $E9, $B3, $10, 2, 1, $78
    .byte 9, 2, $84, $B8, $80, $90, $85, 9, 3, $84, $C8, $80
    .byte $14, $86, 9, 4, $84, $D8, $80, $90, $85, $E, $A
    .byte $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, $A, 4, 4, 0
    .byte 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF
    .byte 2, 0, $A, 4, $FC, $FF, 2, 0, 1, 4, $F, $17, $B4
    .byte $A, 2, 8, 0, 0, 0, $A, 3, 8, 0, 0, 0, $A, 4, 8, 0
    .byte 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $A, 3, $F8
    .byte $FF, 0, 0, $A, 4, $F8, $FF, 0, 0, $E, $A, $A, 2
    .byte 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, $A, 4, 4, 0, 2, 0
    .byte 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2
    .byte 0, $A, 4, $FC, $FF, 2, 0, 1, 4, $F, $6A, $B4, $10
    .byte 2, $10, 3, $10, 4, 1, $78, $C, $64, 9, 2, $84, $C8
    .byte $80, $10, $84, $E, $A, $A, 2, 4, 0, 2, 0, 1, 4, $A
    .byte 2, $FC, $FF, 2, 0, 1, 4, $F, $A8, $B4, $A, 2, 8
    .byte 0, 0, 0, 1, $5A
    .byte $A, 2, $F8, $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0
    .byte 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4, $F, $CB, $B4
    .byte $10, 2, 1, $78, 9, 2, $84, $B0, $80, $B0, $83, 9
    .byte 3, $84, $C0, $80, $D0, $83, 9, 4, $84, $D0, $80
    .byte $F0, $83, 9, 5, $84, $E0, $80, $10, $83, $E, $A
    .byte $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, $A, 4, 4, 0
    .byte 2, 0, $A, 5, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2
    .byte 0, $A, 3, $FC, $FF, 2, 0, $A, 4, $FC, $FF, 2, 0
    .byte $A, 5, $FC, $FF, 2, 0, 1, 4, $F, 0, $B5, $A, 2, 8
    .byte 0, 0, 0, $A, 3, 8, 0, 0, 0, $A, 4, 8, 0, 0, 0, $A
    .byte 5, 8, 0, 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $A
    .byte 3, $F8, $FF, 0, 0, $A, 4, $F8, $FF, 0, 0, $A, 5
    .byte $F8, $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0, $A, 3
    .byte 4, 0, 2, 0, $A, 4, 4, 0, 2, 0, $A, 5, 4, 0, 2, 0
    .byte 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2
    .byte 0, $A, 4, $FC, $FF, 2, 0, $A, 5, $FC, $FF, 2, 0
    .byte 1, 4, $F, $6B, $B5, $10, 2, $10, 3, $10, 4, $10
    .byte 5, 1, $78, 9, 2, $84, $C0, $80, $70, $83, 9, 3, $84
    .byte $D0, $80, $30, $83, $E, $A, $A, 2, 4, 0, 2, 0, $A
    .byte 3, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3
    .byte $FC, $FF, 2, 0, 1, 4, $F, $BC, $B5, $A, 2, 8, 0
    .byte 0, 0, $A, 3, 8, 0, 0, 0, 1, $5A, $A, 2, $F8, $FF
    .byte 0, 0, $A, 3, $F8, $FF, 0, 0, $E, $A, $A, 2, 4, 0
    .byte 2, 0, $A, 3, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2
    .byte 0, $A, 3, $FC, $FF, 2, 0, 1, 4, $F, $F7, $B5, $10
    .byte 2, $10, 3, 1, $78, $C, $62, 9, 2, $84, $C8, $80
    .byte $D0, $81, $E, $A, $A, 2, 4, 0, 2, 0, 1, 4, $A, 2
    .byte $FC, $FF, 2, 0, 1, 4, $F, $27, $B6, $A, 2, 8, 0
    .byte 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $E, $A, $A
    .byte 2, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4
    .byte $F, $4A, $B6, $10, 2, 1, $78, 9, 2, $84, $B8, $80
    .byte $30, $82, 9, 3, $84, $C8, $80, $50, $82, 9, 4, $84
    .byte $D8, $80, $B0, $81, $E, $A, $A, 2, 4, 0, 2, 0, $A
    .byte 3, 4, 0, 2, 0, $A, 4, 4, 0, 2, 0, 1, 4, $A, 2, $FC
    .byte $FF, 2, 0, $A, 3, $FC, $FF, 2, 0, $A, 4, $FC, $FF
    .byte 2, 0, 1, 4, $F, $78, $B6, $A, 2, 8, 0, 0, 0, $A
    .byte 3, 8, 0, 0, 0, $A, 4, 8, 0, 0, 0, 1, $5A, $A, 2
    .byte $F8, $FF, 0, 0, $A, 3, $F8, $FF, 0, 0
    .byte $A, 4, $F8, $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0
    .byte $A, 3, 4, 0, 2, 0, $A, 4, 4, 0, 2, 0, 1, 4, $A, 2
    .byte $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2, 0, $A, 4, $FC
    .byte $FF, 2, 0, 1, 4, $F, $CB, $B6, $10, 2, $10, 3, $10
    .byte 4, 1, $78, 9, 2, $84, $B8, $80, $70, $82, 9, 3, $84
    .byte $C8, $80, $90, $82, 9, 4, $84, $D8, $80, $10, $82
    .byte $E, $A, $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, $A
    .byte 4, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3
    .byte $FC, $FF, 2, 0, $A, 4, $FC, $FF, 2, 0, 1, 4, $F
    .byte $15, $B7, $A, 2, 8, 0, 0, 0, $A, 3, 8, 0, 0, 0, $A
    .byte 4, 8, 0, 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $A
    .byte 3, $F8, $FF, 0, 0, $A, 4, $F8, $FF, 0, 0, $E, $A
    .byte $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, $A, 4, 4, 0
    .byte 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF
    .byte 2, 0, $A, 4, $FC, $FF, 2, 0, 1, 4, $F, $68, $B7
    .byte $10, 2, $10, 3, $10, 4, 1, $78, $C, $66, 9, 2, $84
    .byte $C8, $80, $B0, $84, $E, $A, $A, 2, 4, 0, 2, 0, 1
    .byte 4, $A, 2, $FC, $FF, 2, 0, 1, 4, $F, $A6, $B7, $A
    .byte 2, 8, 0, 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $E
    .byte $A, $A, 2, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2
    .byte 0, 1, 4, $F, $C9, $B7, $10, 2, 1, $78, 9, 2, $84
    .byte $C0, $80, $90, $84, 9, 3, $84, $D0, $80, $D0, $84
    .byte $E, $A, $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, 1
    .byte 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2, 0
    .byte 1, 4, $F, $F0, $B7, $A, 2, 8, 0, 0, 0, $A, 3, 8
    .byte 0, 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $A, 3, $F8
    .byte $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0, $A, 3, 4, 0
    .byte 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF
    .byte 2, 0, 1, 4, $F, $2B, $B8, $10, 2, $10, 3, 1, $78
    .byte 9, 2, $84, $C8, $80, $70, $84, $E, $A, $A, 2, 4
    .byte 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4, $F, $59
    .byte $B8, $A, 2, 8, 0, 0, 0, 1, $5A, $A, 2, $F8, $FF
    .byte 0, 0, $E, $A, $A, 2, 4, 0, 2, 0, 1, 4, $A, 2, $FC
    .byte $FF, 2, 0, 1, 4, $F, $7C, $B8, $10, 2, 1, $78, $C
    .byte $6A, 9, 2, $84, $C8, $80, 4, $87, $E, $A, $A, 2
    .byte 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4, $F
    .byte $9E, $B8, $A, 2, 8, 0, 0, 0, 1, $5A, $A, 2, $F8
    .byte $FF, 0, 0, $E, $A, $A, 2
    .byte 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4, $F
    .byte $C1, $B8, $10, 2, 1, $78, $C, $6C, 9, 2, $84, $B0
    .byte $80, $CC, $87, 9, 3, $84, $C0, $80, $CC, $87, 9
    .byte 4, $84, $D0, $80, $4C, $88, 9, 5, $84, $E0, $80
    .byte $CC, $87, $E, $A, $A, 2, 4, 0, 2, 0, $A, 3, 4, 0
    .byte 2, 0, $A, 4, 4, 0, 2, 0, $A, 5, 4, 0, 2, 0, 1, 4
    .byte $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2, 0, $A
    .byte 4, $FC, $FF, 2, 0, $A, 5, $FC, $FF, 2, 0, 1, 4, $F
    .byte $F8, $B8, $A, 2, 8, 0, 0, 0, $A, 3, 8, 0, 0, 0, $A
    .byte 4, 8, 0, 0, 0, $A, 5, 8, 0, 0, 0, 1, $5A, $A, 2
    .byte $F8, $FF, 0, 0, $A, 3, $F8, $FF, 0, 0, $A, 4, $F8
    .byte $FF, 0, 0, $A, 5, $F8, $FF, 0, 0, $E, $A, $A, 2
    .byte 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, $A, 4, 4, 0, 2, 0
    .byte $A, 5, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, $A
    .byte 3, $FC, $FF, 2, 0, $A, 4, $FC, $FF, 2, 0, $A, 5
    .byte $FC, $FF, 2, 0, 1, 4, $F, $63, $B9, $10, 2, $10
    .byte 3, $10, 4, $10, 5, 1, $78, 9, 2, $84, $C0, $80, $AC
    .byte $87, 9, 3, $84, $D0, $80, $C, $88, $E, $A, $A, 2
    .byte 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, 1, 4, $A, 2, $FC
    .byte $FF, 2, 0, $A, 3, $FC, $FF, 2, 0, 1, 4, $F, $B4
    .byte $B9, $A, 2, 8, 0, 0, 0, $A, 3, 8, 0, 0, 0, 1, $5A
    .byte $A, 2, $F8, $FF, 0, 0, $A, 3, $F8, $FF, 0, 0, $E
    .byte $A, $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, 1, 4, $A
    .byte 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2, 0, 1, 4, $F
    .byte $EF, $B9, $10, 2, $10, 3, 1, $78, $C, $6E, 9, 2
    .byte $84, $C0, $80, 8, $89, 9, 3, $84, $D0, $80, $6C
    .byte $89, $E, $A, $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0
    .byte 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2
    .byte 0, 1, 4, $F, $26, $BA, $A, 2, 8, 0, 0, 0, $A, 3
    .byte 8, 0, 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $A, 3
    .byte $F8, $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0, $A, 3
    .byte 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, $A, 3, $FC
    .byte $FF, 2, 0, 1, 4, $F, $61, $BA, $10, 2, $10, 3, 1
    .byte $78, 9, 2, $84, $C8, $80, $4C, $89, $E, $A, $A, 2
    .byte 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4, $F
    .byte $8F, $BA, $A, 2, 8, 0, 0, 0, 1, $5A, $A, 2, $F8
    .byte $FF, 0, 0, $E, $A, $A, 2, 4, 0, 2, 0, 1, 4, $A, 2
    .byte $FC, $FF, 2, 0, 1, 4, $F
    .byte $B2, $BA, $10, 2, 1, $78, 9, 2, $84, $C0, $80, $48
    .byte $81, 9, 3, $84, $D0, $80, $48, $81, 9, 4, $84, $B8
    .byte $90, $48, $81, 9, 5, $84, $C8, $90, $48, $81, 9
    .byte 6, $84, $D8, $90, $48, $81, $E, $A, $A, 2, 4, 0
    .byte 2, 0, $A, 3, 4, 0, 2, 0, $A, 4, 4, 0, 2, 0, $A, 5
    .byte 4, 0, 2, 0, $A, 6, 4, 0, 2, 0, 1, 4, $A, 2, $FC
    .byte $FF, 2, 0, $A, 3, $FC, $FF, 2, 0, $A, 4, $FC, $FF
    .byte 2, 0, $A, 5, $FC, $FF, 2, 0, $A, 6, $FC, $FF, 2
    .byte 0, 1, 4, $F, $EE, $BA, $A, 2, 8, 0, 0, 0, $A, 3
    .byte 8, 0, 0, 0, $A, 4, 8, 0, 0, 0, $A, 5, 8, 0, 0, 0
    .byte $A, 6, 8, 0, 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0
    .byte $A, 3, $F8, $FF, 0, 0, $A, 4, $F8, $FF, 0, 0, $A
    .byte 5, $F8, $FF, 0, 0, $A, 6, $F8, $FF, 0, 0, $E, $A
    .byte $A, 2, 4, 0, 2, 0, $A, 3, 4, 0, 2, 0, $A, 4, 4, 0
    .byte 2, 0, $A, 5, 4, 0, 2, 0, $A, 6, 4, 0, 2, 0, 1, 4
    .byte $A, 2, $FC, $FF, 2, 0, $A, 3, $FC, $FF, 2, 0, $A
    .byte 4, $FC, $FF, 2, 0, $A, 5, $FC, $FF, 2, 0, $A, 6
    .byte $FC, $FF, 2, 0, 1, 4, $F, $71, $BB, $10, 2, $10
    .byte 3, $10, 4, $10, 5, $10, 6, 1, $78, 9, 2, $84, $C8
    .byte $80, $28, $89, $E, $A, $A, 2, 4, 0, 2, 0, 1, 4, $A
    .byte 2, $FC, $FF, 2, 0, 1, 4, $F, $C9, $BB, $A, 2, 8
    .byte 0, 0, 0, 1, $5A, $A, 2, $F8, $FF, 0, 0, $E, $A, $A
    .byte 2, 4, 0, 2, 0, 1, 4, $A, 2, $FC, $FF, 2, 0, 1, 4
    .byte $F, $EC, $BB, $10, 2, 1, $78, $C, $60, 9, 2, $84
    .byte $B0, $80, $48, $80, 9, 3, $84, $C0, $80, 8, $80
    .byte 9, 4, $84, $D0, $80, $28, $80, 9, 5, $84, $E0, $80
    .byte $CC, $9B, $E, $A, $A, 2, 4, 0, 1, 0, $A, 3, 4, 0
    .byte 1, 0, $A, 4, 4, 0, 1, 0, $A, 5, 4, 0, 1, 0, 1, 8
    .byte $A, 2, $FC, $FF, 1, 0, $A, 3, $FC, $FF, 1, 0, $A
    .byte 4, $FC, $FF, 1, 0, $A, 5, $FC, $FF, 1, 0, 1, 8, $F
    .byte $23, $BC, $A, 2, 8, 0, 0, 0, $A, 3, 8, 0, 0, 0, $A
    .byte 4, 8, 0, 0, 0, $A, 5, 8, 0, 0, 0, 1, $F0, 1, $8C
    .byte 3, 1, $3C, $B, $33, 1, $60, $D, $4A, $4B, $48, $49
    .byte $D0, $D2, 5, $8A, $21, 5, 1, 1, 2, 3, 4, 5, $12
    .byte 9, 7, 8, $C, 7, $F, $12, $30, $16, $F, $10, $30
    .byte 0, $F, $17, $28, $16, $F, $38, $30, 0, 1, $78, 3
    .byte 1, $1E, 5, $6A, $21, 8, 1, 6, 7, 8, 9, $A, $B, $C
    .byte $D, $12, 9, 7, 8, $B, $12, $A, 7, 8, $D, $13, 1
    .byte $78
    .byte 3, 1, $1E, 5, $6A, $21, 9, 1, $E, $F, $10, $11, $12
    .byte $13, $14, $15, $16, $12, $B, 7, 8, $B, $12, $C, 7
    .byte 8, $D, $13, 1, $78, 3, 1, $1E, 5, $6A, $21, 8, 1
    .byte $E, $F, $17, $18, $19, $1A, $1B, $1C, $12, $D, 7
    .byte 8, $B, $12, $E, 7, 8, $D, $13, 1, $78, 3, 1, $1E
    .byte 5, $6A, $21, $B, 1, $1D, $1E, $1F, 3, $C, $20, $21
    .byte $22, $23, $15, $16, $12, $F, 7, 8, $B, $12, $10
    .byte 7, 8, $D, $13, 1, $78, 3, 1, $1E, 5, $8A, $21, 8
    .byte 1, $24, $25, $26, $27, $28, 9, $29, $2A, $12, $11
    .byte 7, 8, $C, $13, 1, $78, 3, 1, $1E, 5, $4A, $21, 7
    .byte 1, $11, $2B, $2C, $2D, $2E, $2F, $30, $12, $12, 7
    .byte 8, $A, $12, $13, 7, 8, $C, $12, $14, 7, 8, $E, $13
    .byte 1, $B4, 3, 1, $1E, 5, $2A, $21, $A, 1, $31, $32
    .byte $1E, $33, $34, $35, $36, $37, $38, $1C, $12, $15
    .byte 7, 8, 9, $12, $16, 7, 8, $B, $12, $17, 7, 8, $D
    .byte $12, $18, 7, 8, $F, $13, 1, $F0, 3, 1, $1E, 5, $EA
    .byte $20, 7, 1, $39, $3A, $3B, $3C, $3D, 4, $3E, $12
    .byte $19, 7, 8, 7, $12, $1A, 7, 8, 9, $12, $1B, 7, 8
    .byte $B, $12, $1C, 7, 8, $D, $12, $1D, 7, 8, $F, $12
    .byte $1E, 7, 8, $11, $13, 1, $B4, 1, $B4, 3, 1, $1E, 5
    .byte $8A, $21, $B, 1, $32, $4A, $4B, $4C, $4D, $4E, $4F
    .byte $50, $51, $52, $3F, $12, $1F, 7, 8, $C, $13, 1, $78
    .byte 3, 1, $1E, 5, $4A, $21, 6, 1, $53, $54, $55, $56
    .byte $57, $15, $12, $20, 7, 8, $A, $12, $21, 7, 8, $C
    .byte $12, $22, 7, 8, $E, $13, 1, $B4, 3, 1, $1E, 5, $CA
    .byte $20, 9, 1, $58, $59, $5A, $5B, $5C, $5D, $5E, $5F
    .byte $60, $12, $23, 7, 8, 6, $12, $24, 7, 8, 8, $12, $25
    .byte 7, 8, $A, $12, $26, 7, 8, $C, $12, $27, 7, 8, $E
    .byte $12, $28, 7, 8, $10, $12, $29, 7, 8, $12, $13, 1
    .byte $F0, 1, $B4, 3, 1, $1E, 5, $8A, $21, 5, 1, $11, $12
    .byte $13, $14, $3F, $12, $2A, 7, 8, $C, $13, 1, $78, 3
    .byte 1, $1E, 5, $8A, $21, $A, 1, $40, $41, $42, $43, $44
    .byte $45, $46, $47, $48, $49, $12, $2B, 7, 8, $C, $13
    .byte 1, $78, 3, 1, $1E, 5, $8A, $21, 8, 1, $F0, $F1, $F2
    .byte $F3, $F4, $F5, $F6, $F7, 6, $DA, $23, 3, 1, $A, $A
    .byte $A, $12, 8, 7, 8, $C, $13, 1, $F0, 1, $90, 3, 1
    .byte $1E, 5, $4D, $21, $A, 3, $72, $73, $74, $75, $76
    .byte $77, $78, $79, $7A, $7B, $82, $83, $84, $85, $86
    .byte $87, $88, $89, $8A, $8B, 0, $7D, $7E, $7E, $7E, $7E
    .byte $7E, $7E, $7F, 0, 5, $A9, $21, $12, 1, $61, $62
    .byte $63, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C
    .byte $6D, $6E, $6F, $70, $71, $7C, 5, $E, $22, 9, 3, 0
    .byte $90, $91, $92, $93, $94, $95, 0, 0, 0
    .byte $96, $97, $98, $99, $9A, $9B, 0, 0, $9C, $9D, $9E
    .byte $9F, $8C, $8D, $8E, $80, $81, 6, $E3, $23, 3, 1
    .byte $FF, $FF, $FF, 7, $F, $12, $30, 0, $F, $10, $30
    .byte 0, $F, $17, $28, $16, $F, $38, $30, 0, 1, $F0, 1
    .byte $F0, 1, $F0, 3, 1, $B4, $D, $7E, $7F, $D6, $D7, $D0
    .byte $D2, 5, $8C, $20, $C, $10, 0, 0, 0, 0, 2, 3, 4, 5
    .byte 6, 0, 0, 0, 0, 0, 0, 0, $12, $13, $14, $15, $16
    .byte $17, 0, 0, 0, 0, 0, $21, $22, $23, $24, $25, $26
    .byte $27, 0, 0, 0, 0, $30, $31, $32, $33, $34, $35, $36
    .byte $37, 0, 0, 0, 0, $40, $41, $42, $43, $44, $45, $46
    .byte $47, 0, 0, 0, 0, $50, $51, $52, $53, $54, $55, $56
    .byte $57, 0, 0, 0, 0, $60, $61, $62, $63, $64, $65, $66
    .byte $67, 0, 0, 0, 0, $70, $71, $72, $73, $74, $75, $76
    .byte $77, 0, 0, 0, 0, 8, 9, $A, $B, $C, $D, $E, $F, 0
    .byte 0, 0, 0, $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte 0, 0, 0, 0, $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte 0, 0, 0, 0, $38, $39, $3A, $3B, $3C, $3D, $3E, $3F
    .byte 0, 0, 0, 0, $48, $49, $4A, $4B, $4C, $4D, $4E, 0
    .byte 0, 0, 0, 0, $58, $59, $5A, $5B, $5C, $5D, $5E, 0
    .byte 0, 0, 0, 0, $68, $69, $6A, $6B, $6C, $6D, $6E, 0
    .byte 0, 0, 0, 0, $78, $79, $7A, $7B, $7C, $7D, $7E, $7F
    .byte 0, 0, $11, 7, 7, 7, $F, $18, $38, 8, $F, $18, $38
    .byte 8, $F, $18, $38, 8, $F, $18, $30, 8, 0, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
; end of 'BANK1A'
