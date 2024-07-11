.include "macros.inc"
.include "nes.inc"
.include "mmc3/mmc3.inc"

.segment "IRQ"

; FE13
.proc irq
    .export irq
    .import InterruptTable
    .importzp IRQLatch, BankRegister, BankMode, InterruptOffset

    save_registers              ; store registers onto the stack

    lda BankRegister
    pha                         ; store bank table offset (bank memory register)
    jsr interrupt_handler
    pla                         ; restore bank table offset (bank memory register)
    ora BankMode
    sta BANK_SELECT
    ldx InterruptOffset
    inx 
    inx 
    stx InterruptOffset
    lda InterruptTable+1,X
    bne @no_irq_disable
    sta IRQ_DISABLE             ; disable MMC3 interrupts and acknowledge any pending interrupts
    sta IRQLatch

@no_irq_disable:
    restore_registers           ; restore registers from the stack

    rti
.endproc

; FE3A
.proc interrupt_handler
    .import InterruptTable
    .importzp InterruptOffset

    sta IRQ_DISABLE             ; disable MMC3 interrupts and acknowledge any pending interrupts
    ldx InterruptOffset
    lda InterruptTable+1,X
    pha                         ; store the high address of the subprogram on the stack 
    lda InterruptTable,X
    pha                         ; store the low address of the subprogram on the stack
    sta IRQ_ENABLE              ; enable MMC3 interrupts
    rts                         ; return from subroutine (execute the subprogram)
.endproc

