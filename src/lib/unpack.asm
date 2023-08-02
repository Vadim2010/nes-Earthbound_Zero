.segment "CODE"

; C22C:
byte_C22C:
    .BYTE   0,   1,   2,   3,   8,   9, $96, $97, $98, $99, $9A, $9B, $9C, $9D, $9E, $9F
    .BYTE $A0, $A1, $A2, $A3, $A4, $2A, $2B, $2C, $2D, $2E, $AA, $AB, $AC, $AD, $AE, $93
    .BYTE   4,   5,   6,   7,  $E,  $F, $D6, $D7, $D8, $D9, $DA, $DB, $DC, $DD, $DE, $DF
    .BYTE $E0, $E1, $E2, $E3, $E4, $6A, $6B, $6C, $6D, $6E, $EA, $EB, $EC, $ED, $EE, $D3

; C6D2
.proc sub_C6D2
    JSR wait_int_processed
    LDX #0
    STX OffsetNMI_ID
    BEQ loc_C6E8

loc_C6DB:
    JSR wait_int_processed
    LDX #0
    STX OffsetNMI_ID
    JSR sub_C86D
    JSR sub_C6B6

loc_C6E8:
    JSR sub_C83D
    JSR sub_C6B6
    LDA #0
    STA NMI_ID,Y                ; save marker end of block
    STA OffsetNMI_ID
    LDA #$80
    STA NMIFlags                ; set flag for NMI

loc_C6F9:
    JSR sub_CB1A
    LDA word_72
    CMP #1
    BNE @end_block
    INC PosY
    INC PosY

@end_block:
    RTS
.endproc

; C83D
.proc sub_C83D
    JSR nt_calc
    LDA byte_71
    STA byte_7F
    LDX OffsetNMI_ID
    LDY #0
    STY byte_7E
    TYA
    PHA
    JSR sub_CA3D

next_byte:
    DEC byte_7F
    BPL loc_C865
    LDA (PointerTilePack),Y
    JSR get_type
    BCS @tile
    LDY #<next_byte             ; $4F
    STY LoopAddr
    LDY #>next_byte             ; $C8
    STY LoopAddr+1
    JMP loc_C8A1
; ---------------------------------------------------------------------------

loc_C865:
    LDA #$A0

@tile:
    JSR sub_CA1F
    JMP next_byte
.endproc

; C86D
.proc sub_C86D
    DEC PosY
    JSR nt_calc
    LDA byte_71
    STA byte_7F
    LDX OffsetNMI_ID
    LDY #0
    STY byte_7E
    TYA
    PHA
    JSR sub_CA3D

loc_C881:
    DEC byte_7F
    BPL loc_C899
    LDA (PointerTilePack),Y
    JSR sub_CA7C
    BCS loc_C89B
    ORA #$80
    LDY #$81
    STY LoopAddr
    LDY #$C8
    STY LoopAddr+1
    JMP loc_C8A1
; ---------------------------------------------------------------------------

loc_C899:
    LDA #$A0

loc_C89B:
    JSR sub_CA1F
    JMP loc_C881
; ---------------------------------------------------------------------------

loc_C8A1:
    STA word_72
    ASL A
    TAY
    LDA $C8AF,Y
    PHA
    LDA $C8AE,Y
    PHA
    RTS
.endproc

; ---------------------------------------------------------------------------
; C8AE
                .addr loc_C8E2-1, loc_C8E2-1, loc_C8E2-1, loc_C8E2-1, sub_C909-1
                .addr sub_C8D4-1, sub_C92F-1, sub_C950-1, sub_C8C2-1, sub_C9D2-1

; =============== S U B R O U T I N E =======================================


sub_C8C2:                               ; DATA XREF: ROM:C8AE↑o
                LDY     BlockIndex

loc_C8C4:                               ; CODE XREF: sub_C8D4+C↓j
                LDA     (PointerTilePack),Y
                PHA
                INY
                LDA     (PointerTilePack),Y
                STA     PointerTilePack+1
                PLA
                STA     PointerTilePack
                LDY     #0
                JMP     (LoopAddr)
; End of function sub_C8C2

.proc sub_C8D4
    LDY BlockIndex
    BEQ loc_C8E2
    LDA PointerTilePack
    PHA
    LDA PointerTilePack+1
    PHA
    TYA
    PHA
    BNE loc_C8C4

loc_C8E2:
    PLA
    BEQ loc_C8F1
    TAY
    INY
    INY
    PLA
    STA PointerTilePack+1
    PLA
    STA PointerTilePack
    JMP (LoopAddr)
; ---------------------------------------------------------------------------

loc_C8F1:
    LDY OffsetNMI_ID
    LDA $401,Y
    BEQ loc_C8FA
    TXA
    TAY

loc_C8FA:
    LDA word_72
    BPL loc_C901
    INC PosY
    RTS
; ---------------------------------------------------------------------------

loc_C901:
    LDA BlockIndex
    JSR get_tile_pointer
    LDA word_72
    RTS
.endproc


; =============== S U B R O U T I N E =======================================


.proc sub_C909:
    LDY BlockIndex              ; get block index
    LDA (PointerTilePack),Y     ; get tile position X
    STA PosX                    ; save tile position X
    INY                         ; increment index
    LDA (PointerTilePack),Y     ; get tile position Y
    STA PosY                    ; save tile position Y
    INY                         ; increment index
    STY BlockIndex              ; save block index
    BCC loc_C91B
    DEC PosY

loc_C91B:
    LDY OffsetNMI_ID
    LDA $401,Y
    BNE loc_C924
    LDX OffsetNMI_ID

loc_C924:
    JSR nt_calc
    JSR sub_CA3D
    LDY BlockIndex
    JMP (LoopAddr)
.endproc


; =============== S U B R O U T I N E =======================================


sub_C92F:                               ; DATA XREF: ROM:C8AE↑o
                LDY     BlockIndex
                LDA     (PointerTilePack),Y
                BCC     loc_C937
                LDA     #$A0

loc_C937:                               ; CODE XREF: sub_C92F+4↑j
                STA     word_72
                INY
                LDA     (PointerTilePack),Y
                INY
                STY     BlockIndex
                TAY

loc_C940:                               ; CODE XREF: sub_C92F+19↓j
                DEY
                BMI     loc_C94B
                LDA     word_72
                JSR     sub_CA1F
                JMP     loc_C940
; ---------------------------------------------------------------------------

loc_C94B:                               ; CODE XREF: sub_C92F+12↑j
                LDY     BlockIndex
                JMP     (LoopAddr)
; End of function sub_C92F


; =============== S U B R O U T I N E =======================================


sub_C950:                               ; DATA XREF: ROM:C8AE↑o
                LDY     BlockIndex
                LDA     (PointerTilePack),Y
                STA     byte_64
                INY
                LDA     (PointerTilePack),Y
                STA     byte_65
                INY
                LDA     (PointerTilePack),Y
                STA     byte_66
                INY
                LDA     (PointerTilePack),Y
                STA     byte_67
                INY
                TYA
                PHA
                LDY     byte_66
                BEQ     loc_C9A3
                LDA     #0
                STA     Pointer
                STA     Pointer+1
                STA     AddrForJmp
                DEY

loc_C975:                               ; CODE XREF: sub_C950+2B↓j
                LDA     ($64),Y
                STA     $60,Y
                DEY
                BPL     loc_C975
                TXA
                PHA
                JSR     sub_F161
                PLA
                TAX
                LDA     byte_67
                BNE     loc_C993
                SEC
                LDA     #8
                SBC     AddrForJmp+1
                STA     byte_67
                LDA     AddrForJmp+1
                BPL     loc_C998

loc_C993:                               ; CODE XREF: sub_C950+36↑j
                SEC
                LDA     #8
                SBC     byte_67

loc_C998:                               ; CODE XREF: sub_C950+41↑j
                CLC
                ADC     #$68 ; 'h'
                STA     byte_64
                LDA     #0
                ADC     #0
                STA     byte_65

loc_C9A3:                               ; CODE XREF: sub_C950+1A↑j
                LDY     #0

loc_C9A5:                               ; CODE XREF: sub_C950+7B↓j
                LDA     word_72
                BMI     loc_C9B2
                LDA     ($64),Y
                JSR     get_type
                BCS     loc_C9C6
                BCC     loc_C9C0

loc_C9B2:                               ; CODE XREF: sub_C950+57↑j
                LDA     ($64),Y
                JSR     sub_CA7C
                BCS     loc_C9C6
                BCC     loc_C9C0

loc_C9BB:                               ; CODE XREF: sub_C950+72↓j
                LDA     #$A0
                JSR     sub_CA1F

loc_C9C0:                               ; CODE XREF: sub_C950+60↑j
                                        ; sub_C950+69↑j
                DEC     byte_67
                BPL     loc_C9BB
                BMI     loc_C9CD

loc_C9C6:                               ; CODE XREF: sub_C950+5E↑j
                                        ; sub_C950+67↑j
                JSR     sub_CA1F
                DEC     byte_67
                BNE     loc_C9A5

loc_C9CD:                               ; CODE XREF: sub_C950+74↑j
                PLA
                TAY
                JMP     (LoopAddr)
; End of function sub_C950


; =============== S U B R O U T I N E =======================================


sub_C9D2:                               ; DATA XREF: ROM:C8AE↑o
                LDY     BlockIndex
                JMP     (LoopAddr)
; End of function sub_C9D2

; C9D7
.proc nt_calc:
    LDA CntrlPPU
    LSR A
    LSR A
    LDA HorizontalScrollPPU
    ROR A
    CLC
    ADC #8
    STA NTAddr+1
    LDA PosY
    ADC #1
    ASL A
    ASL A
    CLC
    ADC NTAddr+1
    BVS loc_C9F1
    SEC
    SBC #8

loc_C9F1:
    ASL A
    AND #$F8
    STA NTAddr+1
    LDA #2
    ROL A
    ASL A
    ASL NTAddr+1
    ROL A
    ASL NTAddr+1
    ROL A
    STA NTAddr
    LDA CntrlPPU
    LSR A
    LDA VerticalScrollPPU
    ROR A
    LSR A
    LSR A
    CLC
    ADC PosX
    TAY
    AND #$20
    LSR A
    LSR A
    LSR A
    ADC NTAddr
    STA NTAddr
    TYA
    AND #$1F
    ADC NTAddr+1
    STA NTAddr+1
    RTS
.endproc

; CA1F
.proc sub_CA1F
    STA NMI_ID,X                ; save tile
    INX                         ; increment index
    TXA
    LDX OffsetNMI_ID
    INC $401,X                  ; inctement number of chars
    TAX
    INC byte_7E
    INC byte_7B
    BEQ loc_CA31
    RTS
; ---------------------------------------------------------------------------

loc_CA31:
    LDA NTAddr+1
    AND #$E0
    STA NTAddr+1
    LDA NTAddr
    EOR #4
    STA NTAddr
.endproc

; CA3D
.proc sub_CA3D
    STX OffsetNMI_ID
    LDA #5
    STA NMI_ID,X
    INX
    LDA #0
    STA NMI_ID,X
    INX
    LDA NTAddr
    STA NMI_ID,X
    INX
    LDA NTAddr+1
    STA NMI_ID,X
    INX
    ORA #$E0
    STA byte_7B
    RTS
.endproc

; CA5C
; returns a tile or function ID:
; input: A - byte, Y - current block index
; output: BlockIndex - next block index A - tile ID or function ID (0 - 9)
.proc get_type
    INY
    STY BlockIndex
    CMP #$40
    BCS locret_CA7B
    TAY
    LDA $C22C,Y
    LDY BlockIndex
    CMP #$80
    BCS locret_CA7B
    CMP #$20
    BCS loc_CA79
    CMP #$A
    BCS loc_CA76
    RTS
; ---------------------------------------------------------------------------

loc_CA76:
    ORA #$D0
    RTS
; ---------------------------------------------------------------------------

loc_CA79:
    ORA #$80

locret_CA7B:
    RTS
.endproc

sub_CA7C:                               ; CODE XREF: sub_C86D+1A↑p
                                        ; sub_C950+64↑p
                INY
                STY     BlockIndex
                CMP     #$40 ; '@'
                BCS     loc_CA9F
                TAY
                LDA     $C22C,Y
                LDY     BlockIndex
                CMP     #$80
                BCS     loc_CA9C
                CMP     #$20 ; ' '
                BCS     loc_CA99
                CMP     #$A
                BCS     loc_CA96
                RTS
; ---------------------------------------------------------------------------

loc_CA96:                               ; CODE XREF: sub_CA7C+17↑j
                ORA     #$D0
                RTS
; ---------------------------------------------------------------------------

loc_CA99:                               ; CODE XREF: sub_CA7C+13↑j
                LDA     #$FF
                RTS
; ---------------------------------------------------------------------------

loc_CA9C:                               ; CODE XREF: sub_CA7C+F↑j
                LDA     #$FE
                RTS
; ---------------------------------------------------------------------------

loc_CA9F:                               ; CODE XREF: sub_CA7C+5↑j
                LDA     #$A0
                RTS
; End of function sub_CA7C


; =============== S U B R O U T I N E =======================================


sub_CAA2:
                LDA     word_72+1
                BPL     loc_CAA9
                STA     PointerTilePack+1
                RTS
; ---------------------------------------------------------------------------

loc_CAA9:                               ; CODE XREF: sub_CAA2+2↑j
                CMP     #$7F
                BCS     loc_CAE1
                TAX
                LDA     PointerTilePack
                ASL     PointerTilePack
                ROL     word_72+1
                ADC     PointerTilePack
                STA     PointerTilePack
                TXA
                ADC     word_72+1
                ADC     #$80
                STA     PointerTilePack+1
                LDA     #$7F
                STA     word_72+1
                LDA     BankTable.CPU_8K_8000
                PHA
                LDA     #$18
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDY     #0
                LDA     (PointerTilePack),Y
                STA     byte_9
                INY
                LDA     (PointerTilePack),Y
                STA     byte_A
                INY
                LDA     (PointerTilePack),Y
                STA     byte_B
                PLA
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode

loc_CAE1:                               ; CODE XREF: sub_CAA2+9↑j
                JSR     wait_int_processed
                LDA     #$A
                STA     NMI_ID
                LDA     byte_B
                LSR     A
                LDA     byte_A
                ROR     A
                SEC
                ROR     A
                STA     num_of_chr
                LDA     byte_A
                AND     #3
                ORA     #8
                STA     PPU_addr
                LDA     byte_9
                STA     PPU_addr+1
                LDA     #0
                STA     chr
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                LDA     #$10
                STA     PointerTilePack
                LDA     #1
                STA     PointerTilePack+1
                JMP     wait_int_processed
; End of function sub_CAA2


; =============== S U B R O U T I N E =======================================


sub_CB1A:                               ; CODE XREF: sub_C6DB:loc_C6F9↑p
                LDA     PointerTilePack+1
                BPL     loc_CB21
                STA     word_72+1
                RTS
; ---------------------------------------------------------------------------

loc_CB21:                               ; CODE XREF: sub_CB1A+2↑j
                SEC
                LDA     PointerTilePack
                SBC     #$10
                CLC
                ADC     byte_9
                STA     byte_9
                LDA     #0
                ADC     byte_A
                STA     byte_A
                LDA     #0
                ADC     byte_B
                STA     byte_B
                RTS
; End of function sub_CB1A

; CB38
; input: A - size block output: PointerTilePack += size block
.proc get_tile_pointer
    CLC
    ADC PointerTilePack
    STA PointerTilePack
    LDA #0
    ADC PointerTilePack+1
    STA PointerTilePack+1
    RTS
.endproc
