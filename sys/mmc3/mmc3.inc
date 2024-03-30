BANK_SELECT          = $8000
; 7  bit  0
; ---- ----
; CPxx xRRR
; ||    |||
; ||    +++- Specify which bank register to update on next write to Bank Data register
; ||           000: R0: Select 2 KB CHR bank at PPU $0000-$07FF (or $1000-$17FF)
; ||           001: R1: Select 2 KB CHR bank at PPU $0800-$0FFF (or $1800-$1FFF)
; ||           010: R2: Select 1 KB CHR bank at PPU $1000-$13FF (or $0000-$03FF)
; ||           011: R3: Select 1 KB CHR bank at PPU $1400-$17FF (or $0400-$07FF)
; ||           100: R4: Select 1 KB CHR bank at PPU $1800-$1BFF (or $0800-$0BFF)
; ||           101: R5: Select 1 KB CHR bank at PPU $1C00-$1FFF (or $0C00-$0FFF)
; ||           110: R6: Select 8 KB PRG ROM bank at $8000-$9FFF (or $C000-$DFFF)
; ||           111: R7: Select 8 KB PRG ROM bank at $A000-$BFFF
; |+-------- PRG ROM bank mode (0: $8000-$9FFF swappable,
; |                                $C000-$DFFF fixed to second-last bank;
; |                             1: $C000-$DFFF swappable,
; |                                $8000-$9FFF fixed to second-last bank)
; +--------- CHR A12 inversion (0: two 2 KB banks at $0000-$0FFF,
                                 ; four 1 KB banks at $1000-$1FFF;
                              ; 1: two 2 KB banks at $1000-$1FFF,
                                 ; four 1 KB banks at $0000-$0FFF)

; CHR Banks
; CHR map mode      $8000.D7 = 0    $8000.D7 = 1
;   PPU Bank            Value of MMC3 register
; $0000-$03FF           R0              R2
; $0400-$07FF           R0              R3
; $0800-$0BFF           R1              R4
; $0C00-$0FFF           R1              R5
; $1000-$13FF           R2              R0
; $1400-$17FF           R3              R0
; $1800-$1BFF           R4              R1
; $1C00-$1FFF           R5              R1
; 2KB banks may only select even numbered CHR banks. (The lowest bit is ignored.)

; PRG Banks
; Bit 6 of the last value written to $8000 swaps the PRG windows at $8000 and $C000. The MMC3 uses one map if bit 6 was cleared to 0 (value & $40 == $00) and another if set to 1 (value & $40 == $40).

; PRG map mode      $8000.D6 = 0    $8000.D6 = 1
;   CPU Bank          Value of MMC3 register
; $8000-$9FFF           R6             (-2)
; $A000-$BFFF           R7              R7
; $C000-$DFFF          (-2)             R6
; $E000-$FFFF          (-1)            (-1)
; (-1) : the last bank
; (-2) : the second last bank
; Because the values in R6, R7, and $8000 are unspecified at power on, the reset vector must point into $E000-$FFFF, and code must initialize these before jumping out of $E000-$FFFF.

CHR_2K_X000          = $00
CHR_2K_X800          = $01
CHR_1K_X000          = $02
CHR_1K_X400          = $03
CHR_1K_X800          = $04
CHR_1K_XC00          = $05
PRG_8K_8000_C000     = $06
PRG_8K_A000          = $07
PRG_SWAP_8000        = $00 << 6
PRG_SWAP_C000        = $01 << 6
CHR_2K_0XXX_1K_1XXX  = $00 << 7
CHR_2K_1XXX_1K_0XXX  = $01 << 7

BANK_DATA            = $8001
; 7  bit  0
; ---- ----
; DDDD DDDD
; |||| ||||
; ++++-++++- New bank value, based on last value written to Bank select register (mentioned above)

MIRROR               = $A000
; 7  bit  0
; ---- ----
; xxxx xxxM
;         |
;         +- Nametable mirroring (0: vertical; 1: horizontal)

SRAM_MODE            = $A001
; 7  bit  0
; ---- ----
; RWxx xxxx
; ||
; |+-------- Write protection (0: allow writes; 1: deny writes)
; +--------- PRG RAM chip enable (0: disable; 1: enable)
; Disabling PRG RAM through bit 7 causes reads from the PRG RAM region to return open bus.

; Though these bits are functional on the MMC3, their main purpose is to write-protect save RAM during power-off.
; Many emulators choose not to implement them as part of iNES Mapper 4 to avoid an incompatibility with the MMC6.

SRAM_WRITE_ENABLE    = $00
SRAM_DISABLE         = $00
SRAM_WRITE_DISABLE   = $40
SRAM_ENABLE          = $80

IRQ_LATCH            = $C000
; 7  bit  0
; ---- ----
; DDDD DDDD
; |||| ||||
; ++++-++++- IRQ latch value
; This register specifies the IRQ counter reload value. When the IRQ counter is zero (or a reload is requested through $C001),
; this value will be copied to the IRQ counter at the NEXT rising edge of the PPU address, presumably at PPU cycle 260 of the current scanline.

IRQ_RELOAD           = $C001
; Writing any value to this register clears the MMC3 IRQ counter immediately,
; and then reloads it at the NEXT rising edge of the PPU address, presumably at PPU cycle 260 of the current scanline.

IRQ_DISABLE          = $E000
; Writing any value to this register will disable MMC3 interrupts AND acknowledge any pending interrupts.

IRQ_ENABLE           = $E001
; Writing any value to this register will enable MMC3 interrupts.
