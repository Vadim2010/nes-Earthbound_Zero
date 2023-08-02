.segment "CODE"

; 14 9400
.proc game_intro
    JSR bank13_A000
    JSR intro

loc_149406:
    JSR sub_FD5E
    JSR clear_nametables
    JSR chr_5E_5F_to_sram ; copy chr banks $5E, $5F (wall??) in SRAM $6C00-$73FF
    JSR wait_int_processed
    LDA #$19
    ;LDX #$8A
    ;LDY #$A2
    ldxy #($A28B - 1)   ; procedure bank $19
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code
                        ; after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    JSR sub_EEC8
    ;LDA #$35
    ;LDX #$62
    ldax #$6235         ; SRAM address for CHR banks $6235
    JSR set_ppu_banks   ; set 6 memory banks for PPU
                        ; Pointer = XA address (X - high and A - low byte)
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
    ;LDA #$3B
    ;LDX #$62
    ldax #$623B         ; SRAM address for palettes $623B
    JSR copy_palettes

loc_14942C:
    LDX #$C
    JSR sub_149505
    JSR sub_1494D7
    JSR game_menu
    LDA #0
    STA byte_D6
    LDY byte_82
    LDA (byte_84),Y
    ASL A
    TAX
    LDA off_14944D+1,X
    PHA
    LDA off_14944D,X
    PHA
    TYA
    LSR A
    LSR A
    RTS
.endproc

; ---------------------------------------------------------------------------
off_14944D:     .addr sub_13BE88-1, sub_14948C-1, sub_149472-1, sub_149455-1


; 14 9D60
.proc intro
    JSR sub_FD5E
    JSR clear_nametables
    LDA CntrlPPU
    AND #$FC                    ; select nametable $2000
    LDX #0
    LDY #0
    STA CntrlPPU
    STX VerticalScrollPPU       ; no screen scrolling
    STY HorizontalScrollPPU
    ; LDA #$63
    ; LDX #$9E
    ldax #CHRBanks0             ; #$9E63 bnk 14
    JSR set_ppu_banks           ; char table address bank14 $9E63
    ; LDA #$6F
    ; STA Pointer
    ; LDA #$9E
    ; STA Pointer+1             ; palette address bank14 $9E6F
    store Palette0, Pointer
    JSR preload_palettes
    JSR reduce_palette
    LDA #$16
    CMP apu_78C
    BEQ loc_149D93
    STA apu_7F5

loc_149D93:
    ; LDX #$AF
    ; LDY #$9E
    ldxy #$9EAF
    JSR copy_packed_tiles       ; copies the palettes at the pointer Pointer offset at $400
    ; LDA #$C4
    ; LDX #$9E
    ldax #IntroNintendo         ; $9EC4
    JSR pulsing
    ; LDX #$AF
    ; LDY #$9E
    ldxy #$9EAF
    JSR copy_packed_tiles       ; copies the palettes at the pointer Pointer offset at $400
    ; LDA #$EA
    ; LDX #$9E
    ldax #IntroItoi             ; $9EEA
    JSR pulsing
    ; LDA #$8F
    ; STA Pointer
    ; LDA #$9E
    ; STA Pointer+1             ; palette address bank14 $9E6F
    store Palette1, Pointer
    JSR preload_palettes
    JSR reduce_palette
    ; LDA #$69
    ; LDX #$9E
    ldax #CHRBanks1             ; #$9E69 bnk 14
    JSR set_ppu_banks           ; set 6 memory banks for PPU
                                ; Pointer = XA address (X - high and A - low byte)
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
    ; LDA #$18
    ; LDX #$9F
    ldax #IntroMain             ; $9F18
    JSR load_tilemap_inc
    LDA #0
    STA Pointer
    LDA #$10
    STA byte_3E0
    LDA #0
    STA byte_3E1
    STA byte_3E4
    STA byte_3E5
    LDA #$58
    STA byte_3E2
    LDA #$57
    STA byte_3E3
    LDA #0
    STA byte_DA

loc_149DED:
    CLC 
    LDA Pointer
    ADC #$B0
    STA byte_3E6
    LDA #0
    ADC #$96
    STA byte_3E7
    LDA #$A
    STA NMIFlags
    CLC 
    LDA Pointer
    ADC #4
    CMP #$1C
    BNE loc_149E0B
    LDA #0

loc_149E0B:
    STA Pointer

loc_149E0D:
    LDA byte_DA
    AND #$10
    BNE loc_149E1B
    LDA NMIFlags
    ORA OtherNMIFlags
    BNE loc_149E0D
    BEQ loc_149DED

loc_149E1B:
    LDX #0
    STX byte_DA
    JSR reduce_palette
    LDA #$19
    ; LDX #$FF
    ; LDY #$9F
    ldxy #($A000 - 1)   ; procedure bank $19
    JSR bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                        ; input: A - bank number, YX - (subroutine address - 1)
                        ; Y - high byte, X - low byte
    RTS
.endproc

; 9E2C
; creates the effect of smoothly increasing the brightness of the image,
; then holds for a while at maximum brightness, smoothly decreases brightness to black, clears Nametables
.proc pulsing
    JSR load_tilemap_inc
    LDX #$FF
    JSR pause
    LDX #$40
    JSR pause
    JSR reduce_palette
    LDX #$40
    JSR pause
    JMP clear_nametables
.endproc

; 9E44
.proc load_tilemap_inc
    STA PointerTilePack
    STX PointerTilePack+1

loc_149E48:
    JSR sub_C6D2
    DEC PosY
    CMP #0
    BNE loc_149E48
    JMP increase_palette        ; increase the brightness of colors in the palette
.endproc

; 9E54
.proc pause
    JSR wait_nmi                ; wait for NMI interrupt processing to complete
    LDA ButtonPressed
    AND #$10
    EOR #$10
    BEQ @end
    DEX
    BNE pause

@end:
    RTS
.endproc

; 9E63 title, 9E69 intro main
CHRBanks0:
    .BYTE $42, $72, $7C, $7C, $40, $41
CHRBanks1:
    .BYTE $42, $72, $7C, $41, $D8, $D9
          
; 9E6F      .BYTE $F, $28, $30, $18
;           .BYTE $F, $21, $30, $12
;           .BYTE $F, $16, $30, $12
;           .BYTE $F, $3A, $30, $12
;           .BYTE $F, $21, $30, $12
;           .BYTE $F, $21, $30, $12
;           .BYTE $F, $21, $30, $12
;           .BYTE $F, $21, $30, $12
; 9E8F      .BYTE $F, $21, $30, $16
;           .BYTE $F, $21, $30, $16
;           .BYTE $F, $21, $30, $16
;           .BYTE $F, $21, $30, $16
;           .BYTE $F, $21, $30, $12
;           .BYTE $F, $21, $30, $12
;           .BYTE $F, $21, $30, $12
;           .BYTE $F, $21, $30, $12
Palette0:
    .BYTE BLACK, LIGHT_YELLOW,   WHITE, MEDIUM_YELLOW;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, MEDIUM_RED,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHTEST_GREEN, WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;

Palette1:
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_RED;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_RED;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_RED;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_RED;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;
    .BYTE BLACK, LIGHT_BLUE,     WHITE, MEDIUM_INDIGO;

; 9EAF
    .BYTE 8, $40, $23, $C0, $AA, 0
; 9EB5
    .BYTE 7, 4, $23, $D2, $40, $23, $D3, $10, $23, $DA, 4
    .BYTE $23, $DB, 1, 0

; 9EC4 by Nintendo
IntroNintendo:
    .BYTE $20, $D, $B, $C8, $C9, $CA, $CB, $CD, $CE, $CF, 1     ; $218D
    .BYTE $20, $D, $C, $D8, 1                                   ; $21AD
    .BYTE $20, $13, $C, $DF, 1                                  ; $21B3
    .BYTE $20, $D, $D, $22, $CC, $13, 1                         ; $21CD $CC * $13
    .BYTE $20, $D, $F, $E3, $E4, $E5, $E6, $E7, $E8, 0          ; $220D

; 9EEA by ITOI
IntroItoi:
    .BYTE $20, $D, $B, $D9, $DA, $DB, $DC, $DD, $DE, $CE, $CF, 1; $218D
    .BYTE $20, $D, $C, $D8, 1                                   ; $21AD
    .BYTE $20, $14, $C, $DF, 1                                  ; $21B4
    .BYTE $20, 0, $D, $22, $CC, $15, 1                          ; $21C0 $CC * $15
    .BYTE $20, 8, $F, $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA    ; $2208
    .BYTE $FB, $FC, $FD, $FE, $FF, 0
; 9F18 intro
IntroMain:
    .BYTE $20, 8, 7, $90, $91, $92, $93, $94, $95, $96, $97     ; $2108
    .BYTE $98, $99, $9A, $9B, $9C, 1
    .BYTE $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9      ; $2128
    .BYTE $AA, $AB, $AC, 1
    .BYTE $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9      ; $2148
    .BYTE $BA, $BB, $BC, $BD, $BE, $BF, 1
    .BYTE $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8, $C9      ; $2168
    .BYTE $CA, $CB, $CC, $CD, $CE, $CF, 1
    .BYTE $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $D9      ; $2188
    .BYTE $DA, $DB, $DC, $DD, $DE, 1
    .BYTE $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $E8, $E9,     ; $21A8
    .BYTE $EA, $EB, $EC, $ED, $EE, 1
    .BYTE $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $F8, $F9      ; $21C8
    .BYTE $FA, $FB, $FC, $FD, $FE, 1
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $9F, $9F, $9F      ; $21E8
    .BYTE $9F, $9D, $9E, $AD, $AE, 1
; 
    .BYTE $20, 7, $17, $43, $44, $45, $46, $47, $70, $69
    .BYTE $6A, $6B, $6C, $6D, $6E, $6F, $53, $54, $55, $56
    .BYTE $57, 0