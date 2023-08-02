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

; load 16-bit argument into register pair XA
; X - high byte, A - low byte
.macro ldax arg
    .if (.match (.left (1, {arg}), #))
        ; immediate mode
        LDA #<(.right (.tcount ({arg})-1, {arg}))
        LDX #>(.right (.tcount ({arg})-1, {arg}))
    .else
        ; assume absolute or zero page
        LDA arg
        LDX 1+(arg)
    .endif
.endmacro

; load 16-bit argument into register pair YX
; Y - high byte, X - low byte
.macro ldxy arg
    .if (.match (.left (1, {arg}), #))
        ; immediate mode
        LDX #<(.right (.tcount ({arg})-1, {arg}))
        LDY #>(.right (.tcount ({arg})-1, {arg}))
    .else
        ; assume absolute or zero page
        LDX arg
        LDY 1+(arg)
    .endif
.endmacro

; store a 16-bit address in memory
; Input: 16-bit address (16-bit value), destination memory location (16-bit value)
.macro store addr, dest
    LDA #<(addr)
    STA dest
    LDA #>(addr)
    STA dest+1
.endmacro
