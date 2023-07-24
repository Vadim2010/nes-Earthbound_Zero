BANK_SELECT = $8000
BANK_DATA = $8001

MIRROR = $A000
SRAM = $A001

IRQ_LATCH = $C000
IRQ_RELOAD = $C001
IRQ_DISABLE = $E000
IRQ_ENABLE = $E001

; Define masks for low and high register values
MMC3_LOW_MASK   = $FE  ; %11111110 (bit 0 is 0, all others are 1)
MMC3_HIGH_MASK  = $FF  ; %11111111 (all bits are 1)

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


; E3B4
.proc bank14_8000_ex
    lda #$14
    ldx #6
    jsr mmc3_bank_set   ; set memory bank $14 at $8000 
    lda byte_A6
    sta byte_A2
    lda byte_3E
    asl A
    tax 
    lda $E3CD,X
    pha 
    lda $E3CC,X
    pha
    rts
.endproc

; E3CC
ReturnTab:
	.addr sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
    .addr loc_E4DC-1, loc_E403-1, loc_E466-1, loc_E490-1

; ED9B
.proc banks_ppu
    lda byte_44
    sta byte_46
    lda #$C8					; bank PPU $C8
    jsr sub_C218
    sta IRQ_DISABLE           	; Disable MMC3 interrupts and acknowledge any pending interrupts
    lda BankTable.PPU_1K_0000
    stx BANK_SELECT
    sta BANK_DATA
    inx 
    lda BankTable.PPU_1K_0400
    stx BANK_SELECT
    sta BANK_DATA
    inx 
    lda BankTable.PPU_1K_0800
    stx BANK_SELECT
    sta BANK_DATA
    inx 
    lda BankTable.PPU_1K_0C00
    stx BANK_SELECT
    sta BANK_DATA
    rts
.endproc

; F239
; set memory bank $16 at $8000
.proc bank16
    pha
    txa
    pha
    lda     #$16
    ldx     #6
    jsr     mmc3_bank_set   ; set memory bank $16 at $8000
    pla
    tax
    pla
    rts
.endproc

; F247
; set memory bank 0 $8000
.proc bank0
    pha
    txa
    pha
    lda #0
    ldx #6
    jsr mmc3_bank_set   ; set memory bank 0 $8000
    pla
    tax
    pla
    rts
.endproc


; FDF3
; changes the memory bank $A000, transfers the execution of the code
; after completion of which returns the original memory bank 
; input: A - bank number, YX - (subroutine address - 1)
; Y - high byte, X - low byte
.proc bank_A000:
    pha
    lda #$FE					; save return addres as Bank_A000_sp - 1
    pha 
    lda #$C
    pha
    tya
    pha
    txa
    pha
    tsx
    lda BankTable.CPU_8K_A000	; load current memory bank number for $A000
    ldy $105,X					; load new memory bank number from stack ($105 + SP = A value at subroutine entry) 
    sta $105,X					; store current memory bank number into stack
    tya 
    ldx #7
    jmp mmc3_bank_set			; change memory bank
	
; global label to enter the memory bank setup procedure
; setup memory bank $A000 from stack
Bank_A000_sp:
    pla
    ldx #7
    jmp mmc3_bank_set
.endproc

; FFC5
; setup memory bank $8000 or $C000 <- BankNum $A000 <- $1D
.proc bank_8000_1D_A000:
    lda BankNum					; load memory bank number for $8000 or $C000
    ldx #6
    jsr mmc3_bank_set
    lda #$1D					; select memory bank $1D for $A000
    ldx #7

; FFD0
; global label to enter the memory bank setup procedure
; input: A - bank number, X - mode
mmc3_bank_set:						
    stx BankTableOffset 		; store offset (bank register)
    sta bankTable,X     		; store memory bank number to table
    txa 
    ora bankMode				; mask for bank select
    sta BANK_SELECT       		; set bank mode
    lda bankTable,X  			; get bank number
    sta BANK_DATA       		; set bank number
    rts
.endproc

.segment "ZEROPAGE"
;.org 7							; in the original game 7
BankNum .res 1							

;.org $EE						; in the original game $EE
BankTableOffset .res 1 
BankMode .res 1					; mask for bank mode
BankTable .res 8