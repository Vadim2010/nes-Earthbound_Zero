;======================================================================================
; 7  bit  0
; ---- ----
; CPMx xRRR
; |||   |||
; |||   +++- Specify which bank register to update on next write to Bank Data register
; |||          000: R0: Select 2 KB CHR bank at PPU $0000-$07FF (or $1000-$17FF)
; |||          001: R1: Select 2 KB CHR bank at PPU $0800-$0FFF (or $1800-$1FFF)
; |||          010: R2: Select 1 KB CHR bank at PPU $1000-$13FF (or $0000-$03FF)
; |||          011: R3: Select 1 KB CHR bank at PPU $1400-$17FF (or $0400-$07FF)
; |||          100: R4: Select 1 KB CHR bank at PPU $1800-$1BFF (or $0800-$0BFF)
; |||          101: R5: Select 1 KB CHR bank at PPU $1C00-$1FFF (or $0C00-$0FFF)
; |||          110: R6: Select 8 KB PRG ROM bank at $8000-$9FFF (or $C000-$DFFF)
; |||          111: R7: Select 8 KB PRG ROM bank at $A000-$BFFF
; ||+------- Nothing on the MMC3, see MMC6
; |+-------- PRG ROM bank mode (0: $8000-$9FFF swappable,
; |                                $C000-$DFFF fixed to second-last bank;
; |                             1: $C000-$DFFF swappable,
; |                                $8000-$9FFF fixed to second-last bank)
; +--------- CHR A12 inversion (0: two 2 KB banks at $0000-$0FFF,
;                                  four 1 KB banks at $1000-$1FFF;
;                               1: two 2 KB banks at $1000-$1FFF,
;                                  four 1 KB banks at $0000-$0FFF)
;======================================================================================
; Bank Modes
CHR_12_INVERSION    = %10000000
PRG_SWAP_C000       = %01000000
PRG_SWAP_8000       = %00000000
; Bank Select
PPU_2K_0000         = %00000000
PPU_2K_0800         = %00000001
PPU_1K_1000         = %00000010
PPU_1K_1400         = %00000011
PPU_1K_1800         = %00000100
PPU_1K_1C00         = %00000101
PRG_8K_8000         = %00000110
PRG_8K_A000         = %00000111
PRG_8K_C000         = %01000110
PPU_2K_1000         = %10000000
PPU_2K_1800         = %10000001
PPU_1K_0000         = %10000010
PPU_1K_0400         = %10000011
PPU_1K_0800         = %10000100
PPU_1K_0C00         = %10000101

BANK_SELECT = $8000

;======================================================================================
; 7  bit  0
; ---- ----
; DDDD DDDD
; |||| ||||
; ++++-++++- New bank value, based on last value written to Bank select register
;======================================================================================
BANK_DATA   = $8001

;======================================================================================
; 7  bit  0
; ---- ----
; xxxx xxxM
;         |
;         +- Nametable mirroring (0: vertical; 1: horizontal)
;======================================================================================
MIRROR      = $A000

;======================================================================================
; 7  bit  0
; ---- ----
; RWXX xxxx
; ||||
; ||++------ Nothing on the MMC3, see MMC6
; |+-------- Write protection (0: allow writes; 1: deny writes)
; +--------- PRG RAM chip enable (0: disable; 1: enable)
;======================================================================================
SRAM_WRITE_ENABLE:  = %00000000
SRAM_WRITE_DISABLE: = %01000000
SRAM_DISABLE:       = %00000000
SRAM_ENABLE:        = %10000000

SRAM        = $A001

;======================================================================================
; 7  bit  0
; ---- ----
; DDDD DDDD
; |||| ||||
; ++++-++++- IRQ latch value
;======================================================================================
IRQ_LATCH   = $C000

IRQ_RELOAD  = $C001
IRQ_DISABLE = $E000
IRQ_ENABLE  = $E001

; Define masks for low and high register values
MMC3_LOW_MASK   = $FE   ; %11111110 (bit 0 is 0, all others are 1)
MMC3_HIGH_MASK  = $FF   ; %11111111 (all bits are 1)

.struct BANK_TABLE
    PPU_2K_1000 .byte
    PPU_2K_1800 .byte
    PPU_1K_0000 .byte
    PPU_1K_0400 .byte
    PPU_1K_0800 .byte
    PPU_1K_0C00 .byte
    CPU_8K_8000 .byte
    CPU_8K_A000 .byte
.endstruct

.segment "CODE"
; C322 bank0_0
.proc bank0:
    LDA #0
    LDX #6
    JMP mmc3_bank_set           ; set memory bank $0 at $8000
.endproc

; E3B4
.proc bank14_8000_ex
    LDA #$14
    LDX #6
    JSR mmc3_bank_set           ; set memory bank $14 at $8000 
    LDA byte_A6
    STA byte_A2
    LDA byte_3E
    ASL A
    TAX 
    LDA $E3CD,X
    PHA 
    LDA $E3CC,X
    PHA
    RTS
.endproc

; E3CC
ReturnTab:
	.addr sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
	.addr loc_E4DC-1, loc_E403-1, loc_E466-1, loc_E490-1

; F239
; set memory bank $16 at $8000
.proc bank16
    PHA
    TXA
    PHA
    LDA #$16
    LDX #6
    JSR mmc3_bank_set           ; set memory bank $16 at $8000
    PLA
    TAX
    PLA
    RTS
.endproc

; F247
; set memory bank 0 $8000
.proc bank0
    PHA
    TXA
    PHA
    LDA #0
    LDX #6
    JSR mmc3_bank_set           ; set memory bank 0 $8000
    PLA
    TAX
    PLA
    RTS
.endproc


; FDF3
; changes the memory bank $A000, transfers the execution of the code
; after completion of which returns the original memory bank 
; input: A - bank number, YX - (subroutine address - 1)
; Y - high byte, X - low byte
.proc bank_A000:
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
    LDA BankTable.CPU_8K_A000   ; load current memory bank number for $A000
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

; FFC5
; setup memory bank $8000 or $C000 <- BankNum $A000 <- $1D
.proc bank_8000_1D_A000:
    LDA BankNum                 ; load memory bank number for $8000 or $C000
    LDX #6
    JSR mmc3_bank_set
    LDA #$1D                    ; select memory bank $1D for $A000
    LDX #7

; FFD0
; global label to enter the memory bank setup procedure
; input: A - bank number, X - mode
mmc3_bank_set:
    STX BankRegister         ; store offset (bank register)
    STA bankTable,X             ; store memory bank number to table
    TXA 
    ORA bankMode                ; mask for bank select
    STA BANK_SELECT             ; set bank mode
    LDA bankTable,X             ; get bank number
    STA BANK_DATA               ; set bank number
    RTS
.endproc

.segment "ZEROPAGE"
;.org 7                         ; in the original game 7
BankNum .res 1

;.org $EE                       ; in the original game $EE
BankRegister .res 1
BankMode .res 1                 ; mask for bank mode
BankTable .res 8