.include "mmc3/bank.inc"
.include "..\res\structures.inc"

.segment "FAR_CALL"

; FDF3
; changes the memory bank $A000, transfers the execution of the code
; after completion of which returns the original memory bank 
; input: A - bank number, YX - (subroutine address - 1)
; Y - high byte, X - low byte
.proc bank_A000_a
    .export bank_A000_a
    .import mmc3_bank_set
    .importzp BankTable

    pha
    lda #>(Bank_A000_sp-1)  ; #$FE save return addres as Bank_A000_sp - 1
    pha 
    lda #<(Bank_A000_sp-1)  ; #$C
    pha
    tya
    pha
    txa
    pha
    tsx
    lda BankTable + BANK_TABLE::CPU_8K_A000   ; load current memory bank number for $A000
    ldy Stack+5,X                  ; load new memory bank number from stack ($105 + SP = A value at subroutine entry) 
    sta Stack+5,X                  ; store current memory bank number into stack
    tya 
    ldx #7
    jmp mmc3_bank_set           ; change memory bank

; global label to enter the memory bank setup procedure
; setup memory bank $A000 from stack
Bank_A000_sp:
    pla
    ldx #7
    jmp mmc3_bank_set
.endproc
