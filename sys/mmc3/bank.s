.include "mmc3.inc"

.segment "BANK"

; FFC5
; setup memory bank $8000 or $C000 <- BankNum $A000 <- $1D
.proc bank_8000_1D_A000
    .export bank_8000_1D_A000
    .importzp BankNum

    lda BankNum                 ; load memory bank number for $8000 or $C000
    ldx #6
    jsr mmc3_bank_set
    lda #$1D                    ; select memory bank $1D for $A000
    ldx #7
.endproc

; FFD0
; global label to enter the memory bank setup procedure
; input: A - bank number, X - mode
.proc mmc3_bank_set
    .export mmc3_bank_set
    .importzp BankRegister, BankTable, BankMode
    stx BankRegister            ; store offset (bank register)
    sta BankTable,X             ; store memory bank number to table
    txa 
    ora BankMode                ; mask for bank select
    sta BANK_SELECT             ; set bank mode
    lda BankTable,X             ; get bank number
    sta BANK_DATA               ; set bank number
    rts
.endproc

; .ifdef C_SUPPORT

; .proc _farcall
    ; .export _farcall
    ; .import pusha, popa, callptr4
    ; .importzp prgbank, tmp4

    ; ;; store the current bank on the stack, switch to new bank

    ; ; push the current prg bank on the stack
    ; lda prgbank
    ; jsr pusha

    ; ; this setup for mmc3
    ; lda #(%00000110 | MMC3_CHR_A12)
    ; sta $8002 ; mmc3 bank select for PRG bank $8000
    
    ; ; select the new bank
    ; lda tmp4
    ; sta prgbank
    ; sta $8001 ; mmc3 bank set to prgbank

    ; ;; jump to wrapped call
    ; jsr callptr4

    ; ;; restore the previous prg bank and pop it  

    ; ; this setup for mmc3      
    ; lda #(%00000110 | MMC3_CHR_A12)
    ; sta $8002 ; mmc3 bank select for PRG bank $8000

    ; jsr popa
    ; sta prgbank
    ; sta $8001

    ; rts
; .endproc ; _farcall

; .endif ; .ifdef C_SUPPORT


; .proc farjsr_resolve ;receives a configured zp (ptrf) and a bank in "X"
; .export farjsr_resolve
    ; .importzp prgbank, ptrf, fara, farx

    ; ; push the current prg bank on the stack
    ; lda prgbank
    ; pha

    ; ; this setup for mmc3
    ; lda #(%00000110 | MMC3_CHR_A12)
    ; sta $8002 ; mmc3 bank select for PRG bank $8000

    ; ; switch to target bank
    ; lda farx
    ; sta prgbank
    ; sta $8001 ; mmc3 bank set to prgbank

    ; lda fara ; restore ax registers (preserved in farjsr)

    ; jsr farjsr_resolve_2 ; sets a return point into the stack

    ; sta fara ; restore a register

    ; ; this setup for mmc3      
    ; lda #(%00000110 | MMC3_CHR_A12)
    ; sta $8002 ; mmc3 bank select for PRG bank $8000

    ; ; restore previous bank
    ; pla
    ; sta prgbank
    ; sta $8001

    ; lda fara ; restore a register

    ; rts
; .endproc

; .proc farjsr_resolve_2   ; jumps to the farjsr target.
; .export farjsr_resolve_2 ; target will jsr back into farjsr_resolve where this was called from
    ; .importzp ptrf

    ; jmp (ptrf)
; .endproc

; .proc farjmp_resolve   ;receives a configured zp (ptrf) and a bank in "A"
; .export farjmp_resolve 
    ; .importzp ptrf, prgbank, fara

    ; ; this setup for mmc3
    ; lda #(%00000110 | MMC3_CHR_A12)
    ; sta $8002 ; mmc3 bank select for PRG bank $8000

    ; ; switch to target bank
    ; lda prgbank
    ; sta $8001 ; mmc3 bank set to prgbank

    ; lda fara

    ; jmp (ptrf)
; .endproc
