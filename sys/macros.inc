; list where used: nmi, irq

; Macro to store registers on the stack
.macro save_registers
    pha                         ; Save accumulator (A) on the stack
    txa                         ; Transfer index X to accumulator (A)
    pha                         ; Save index X on the stack
    tya                         ; Transfer index Y to accumulator (A)
    pha                         ; Save index Y on the stack
.endmacro

; list where used: nmi, irq
; Macro to restore registers from the stack
.macro restore_registers
    pla                         ; Restore index Y from the stack
    tay                         ; Transfer accumulator (A) to index Y
    pla                         ; Restore index X from the stack
    tax                         ; Transfer accumulator (A) to index X
    pla                         ; Restore accumulator (A) from the stack
.endmacro

; list where used: reset
; this is like a x = y call where x is set to the value of y
.macro set set_var, from
    lda from
    sta set_var
.endmacro

; load 16-bit argument into register pair AX
; A - high byte, X - low byte
.macro ldax arg
    .if (.match (.left (1, {arg}), #))
        ; immediate mode
        lda #>(.right (.tcount ({arg})-1, {arg}))
        ldx #<(.right (.tcount ({arg})-1, {arg}))
    .else
        ; assume absolute or zero page
        lda arg
        ldx 1+(arg)
    .endif
.endmacro

; load 16-bit argument into register pair YX
; Y - high byte, X - low byte
.macro ldyx arg
    .if (.match (.left (1, {arg}), #))
        ; immediate mode
        ldx #<(.right (.tcount ({arg})-1, {arg}))
        ldy #>(.right (.tcount ({arg})-1, {arg}))
    .else
        ; assume absolute or zero page
        ldx arg
        ldy 1+(arg)
    .endif
.endmacro

; store a 16-bit address in memory
; Input: 16-bit address (16-bit value), destination memory location (16-bit value)
.macro store addr, dest
    lda #<(addr)
    sta dest
    lda #>(addr)
    sta dest+1
.endmacro
