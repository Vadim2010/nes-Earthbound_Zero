.include "mmc3/bank.inc"
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
    LDA BankTable + BANK_TABLE::CPU_8K_A000   ; load current memory bank number for $A000
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
