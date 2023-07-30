; list where used: nmi, irq
; Macro to store registers on the stack
.macro save_registers
    PHA  			; Save accumulator (A) on the stack
    TXA  			; Transfer index X to accumulator (A)
    PHA  			; Save index X on the stack
    TYA  			; Transfer index Y to accumulator (A)
    PHA  			; Save index Y on the stack
.endmacro

; list where used: nmi, irq
; Macro to restore registers from the stack
.macro restore_registers
    PLA  			; Restore index Y from the stack
    TAY  			; Transfer accumulator (A) to index Y
    PLA  			; Restore index X from the stack
    TAX  			; Transfer accumulator (A) to index X
    PLA  			; Restore accumulator (A) from the stack
.endmacro

; list where used: reset
; this is like a x = y call where x is set to the value of y
.macro set set_var, from
    LDA from
    STA set_var
.endmacro
