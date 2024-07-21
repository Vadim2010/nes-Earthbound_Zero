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

; load 16-bit argument into register pair XA
; X - high byte, A - low byte
.macro ldxa arg
    .if (.match (.left (1, {arg}), #))
        ; immediate mode
        lda #<(.right (.tcount ({arg})-1, {arg}))
        ldx #>(.right (.tcount ({arg})-1, {arg}))
    .else
        ; assume absolute or zero page
        lda arg
        ldx 1+(arg)
    .endif
.endmacro

; store register pair XA into 16-bit argument
; X - high byte, A - low byte
.macro stxa arg
    .if (.match (.left (1, {arg}), #))
        ; immediate mode
        sta #<(.right (.tcount ({arg})-1, {arg}))
        stx #>(.right (.tcount ({arg})-1, {arg}))
    .else
        ; assume absolute or zero page
        sta arg
        stx 1+(arg)
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

; store register pair YX into 16-bit argument
; Y - high byte, X - low byte
.macro styx arg
    .if (.match (.left (1, {arg}), #))
        ; immediate mode
        stx #<(.right (.tcount ({arg})-1, {arg}))
        sty #>(.right (.tcount ({arg})-1, {arg}))
    .else
        ; assume absolute or zero page
        stx arg
        sty 1+(arg)
    .endif
.endmacro

; store a 16-bit address in memory using A register
; Input: 16-bit address (16-bit value), destination memory location (16-bit value)
.macro store addr, dest
    .if (.match (.left (1, {addr}), #))
        lda #<(.mid (1, .tcount ({addr})-1, {addr}))
        sta dest
        lda #>(.mid (1, .tcount ({addr})-1, {addr}))
        sta dest+1
    .else
        lda addr
        sta dest
        lda addr+1
        sta dest+1
    .endif
.endmacro

; store a 16-bit address in memory using Y register
; Input: 16-bit address (16-bit value), destination memory location (16-bit value)
.macro storey addr, dest
    .if (.match (.left (1, {addr}), #))
        ldy #<(.mid (1, .tcount ({addr})-1, {addr}))
        sty dest
        ldy #>(.mid (1, .tcount ({addr})-1, {addr}))
        sty dest+1
    .else
        ldy addr
        sty dest
        ldy addr+1
        sty dest+1
    .endif
.endmacro

; store a 16-bit address in memory using X register
; Input: 16-bit address (16-bit value), destination memory location (16-bit value)
.macro storex addr, dest
    .if (.match (.left (1, {addr}), #))
        ldx #<(.mid (1, .tcount ({addr})-1, {addr}))
        stx dest
        ldx #>(.mid (1, .tcount ({addr})-1, {addr}))
        stx dest+1
    .else
        ldx addr
        stx dest
        ldx addr+1
        stx dest+1
    .endif
.endmacro