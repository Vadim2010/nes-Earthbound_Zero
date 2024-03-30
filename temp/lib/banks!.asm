.struct BANK_TABLE
    PPU_2K_1000 .byte
    PPU_2K_1800 .byte
    PPU_1K_0000 .byte
    PPU_1K_0400 .byte
    PPU_1K_0800 .byte
    PPU_1K_0C00 .byte
    CPU_8K_8000 .byte
    CPU_8K_A000 .byte
.endstruct

.segment "ZEROPAGE"
;.org 7                         ; in the original game 7
BankNum .res 1

;.org $EE                       ; in the original game $EE
BankRegister .res 1
BankMode .res 1                 ; mask for bank mode
BankTable .res BANK_TABLE

.segment "CODE"

; C322 bank0_0
.proc bank0:
    LDA #0
    LDX #6
    JMP mmc3_bank_set           ; set memory bank $0 at $8000
.endproc

; CED3
.proc bank13_A000
    LDA #$13
    LDX #7
    JMP mmc3_bank_set
.endproc

; CEDA
.proc bank17_A000
    LDA #$17
    LDX #7
    JMP mmc3_bank_set
.endproc

; CEE1
.proc bank14_8000
    LDA #$14
    LDX #6
    JMP mmc3_bank_set
.endproc

; CEE8
; set 6 memory banks for PPU
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
.proc set_ppu_banks:
    sta Pointer
    stx Pointer+1
    ldx #PPU_1K_1C00            ; select 1K CHR ROM page at 0C00h, 0800h, 0400h, 0000h,
                                ; and 2K CHR ROM page at 1800h, 1000h in PPU space
    ldy #5                      ; bank counter

@next_chr_bank:
    lda (Pointer),Y
    beq @no_chr_bank
    jsr mmc3_bank_set           ; set memory bank A - bank number X - mode

@no_chr_bank:
    dex                         ; next mode
    dey                         ; decrease bank counter
    bpl @next_chr_bank
    rts
.endproc

; E3B4
.proc bank14_8000_ex
    LDA #$14
    LDX #6
    JSR mmc3_bank_set           ; set memory bank $14 at $8000 
    LDA byte_A6
    STA byte_A2
    LDA byte_3E
    ASL A
    TAX 
    LDA $E3CD,X
    PHA 
    LDA $E3CC,X
    PHA
    RTS
.endproc

; E3CC
ReturnTab:
    .addr sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
    .addr loc_E4DC-1, loc_E403-1, loc_E466-1, loc_E490-1

; F239
; set memory bank $16 at $8000
.proc bank16
    PHA
    TXA
    PHA
    LDA #$16
    LDX #6
    JSR mmc3_bank_set           ; set memory bank $16 at $8000
    PLA
    TAX
    PLA
    RTS
.endproc

; F247
; set memory bank 0 $8000
.proc bank0
    PHA
    TXA
    PHA
    LDA #0
    LDX #6
    JSR mmc3_bank_set           ; set memory bank 0 $8000
    PLA
    TAX
    PLA
    RTS
.endproc


; FDF3
; changes the memory bank $A000, transfers the execution of the code
; after completion of which returns the original memory bank 
; input: A - bank number, YX - (subroutine address - 1)
; Y - high byte, X - low byte
.proc bank_A000_a:
    PHA
    LDA #$FE                    ; save return addres as Bank_A000_sp - 1
    PHA 
    LDA #$C
    PHA
    TYA
    PHA
    TXA
    PHA
    TSX
    LDA BankTable.CPU_8K_A000   ; load current memory bank number for $A000
    LDY $105,X                  ; load new memory bank number from stack ($105 + SP = A value at subroutine entry) 
    STA $105,X                  ; store current memory bank number into stack
    TYA 
    LDX #7
    JMP mmc3_bank_set           ; change memory bank

; global label to enter the memory bank setup procedure
; setup memory bank $A000 from stack
Bank_A000_sp:
    PLA
    LDX #7
    JMP mmc3_bank_set
.endproc

; FFC5
; setup memory bank $8000 or $C000 <- BankNum $A000 <- $1D
.proc bank_8000_1D_A000:
    LDA BankNum                 ; load memory bank number for $8000 or $C000
    LDX #6
    JSR mmc3_bank_set
    LDA #$1D                    ; select memory bank $1D for $A000
    LDX #7

; FFD0
; global label to enter the memory bank setup procedure
; input: A - bank number, X - mode
mmc3_bank_set:
    STX BankRegister            ; store offset (bank register)
    STA bankTable,X             ; store memory bank number to table
    TXA 
    ORA bankMode                ; mask for bank select
    STA BANK_SELECT             ; set bank mode
    LDA bankTable,X             ; get bank number
    STA BANK_DATA               ; set bank number
    RTS
.endproc
