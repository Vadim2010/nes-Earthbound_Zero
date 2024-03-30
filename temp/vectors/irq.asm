.segment "CODE"
; FE13
irq:
    save_registers              ; store registers onto the stack

    LDA BankRegister
    PHA                         ; store bank table offset (bank memory register)
    JSR interrupt_handler
    PLA                         ; restore bank table offset (bank memory register)
    ORA BankMode
    STA BANK_SELECT
    LDX InterruptOffset
    INX 
    INX 
    STX InterruptOffset
    LDA InterruptTable+1,X
    BNE @no_irq_disable
    STA IRQ_DISABLE             ; disable MMC3 interrupts and acknowledge any pending interrupts
    STA IRQLatch

@no_irq_disable:
    restore_registers           ; restore registers from the stack
    RTI

; FE3A
.proc interrupt_handler:
    STA IRQ_DISABLE             ; disable MMC3 interrupts and acknowledge any pending interrupts
    LDX InterruptOffset
    LDA InterruptTable+1,X
    PHA                         ; store the high address of the subprogram on the stack 
    LDA InterruptTable,X
    PHA                         ; store the low address of the subprogram on the stack
    STA IRQ_ENABLE              ; enable MMC3 interrupts
    RTS                         ; return from subroutine (execute the subprogram)
.endproc
