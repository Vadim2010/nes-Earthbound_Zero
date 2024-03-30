.segment "CODE"

.proc sub_C218:
    STA $C000
    LDA #2
    ORA BankMode
    TAX

loc_C220:
    LDY #4

loc_C222:
    DEY
    BNE loc_C222
    RTS
.endproc

.proc sub_ED22
    CLC
    LDA #2
    ADC byte_46
    JSR sub_C218
    BIT byte_45
    BPL loc_ED6F

loc_ED2E:
    LDA BankPPU_X000
    BPL loc_ED34
    LDA #$7C

loc_ED34:
    STX BANK_SELECT
    STA BANK_DATA
    INX 
    LDA BankPPU_X400
    BPL loc_ED41
    LDA #$7C

loc_ED41:
    STX BANK_SELECT
    STA BANK_DATA
    INX
    LDA BankPPU_X800
    BPL loc_ED4E
    LDA #$7C

loc_ED4E:
    STX BANK_SELECT
    STA BANK_DATA
    INX
    LDA BankPPU_XC00
    BPL loc_ED5B
    LDA #$7C

loc_ED5B:
    STX BANK_SELECT
    STA BANK_DATA
    RTS
; ---------------------------------------------------------------------------
loc_ED62:
    SEC
    LDA #$23
    SBC byte_46
    ASL A
    JSR sub_C218
    BIT byte_45
    BVS loc_ED2E

loc_ED6F:
    LDA BankPPU_X000
    AND #$7F
    STX BANK_SELECT
    STA BANK_DATA
    INX
    LDA BankPPU_X400
    AND #$7F
    STX BANK_SELECT
    STA BANK_DATA
    INX
    LDA BankPPU_X800
    AND #$7F
    STX BANK_SELECT
    STA BANK_DATA
    INX
    LDA BankPPU_XC00
    AND #$7F
    STX BANK_SELECT
    STA BANK_DATA
    RTS
.endproc

; ED9B
.proc banks_ppu
    LDA byte_44
    STA byte_46
    LDA #$C8                    ; bank PPU $C8
    JSR sub_C218
    STA IRQ_DISABLE             ; Disable MMC3 interrupts and acknowledge any pending interrupts
    LDA BankTable.PPU_1K_0000
    STX BANK_SELECT
    STA BANK_DATA
    INX 
    LDA BankTable.PPU_1K_0400
    STX BANK_SELECT
    STA BANK_DATA
    INX 
    LDA BankTable.PPU_1K_0800
    STX BANK_SELECT
    STA BANK_DATA
    INX 
    LDA BankTable.PPU_1K_0C00
    STX BANK_SELECT
    STA BANK_DATA
    RTS
.endproc
