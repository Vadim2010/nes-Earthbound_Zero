.segment "HEADER"

; this header is to set up a NROM mapper 000 with fixed banks (no bank switching)
    .byte 'N', 'E', 'S', $1A   ; these bytes always start off an ines file
    .byte $10                   ; PRG size in 16k units
    .byte $20                   ; CHR size in 8k units

;============================================================================================
; iNES flag 6
; 7654 3210
; |||| ||||
; |||| |||+- Mirroring: 0: horizontal (vertical arrangement) (CIRAM A10 = PPU A11)
; |||| |||              1: vertical (horizontal arrangement) (CIRAM A10 = PPU A10)
; |||| ||+-- 1: Cartridge contains battery-backed PRG RAM ($6000-7FFF) or other persistent memory
; |||| |+--- 1: 512-byte trainer at $7000-$71FF (stored before PRG data)
; |||| 
; ||||+---- 1: Ignore mirroring control or above mirroring bit; instead provide four-screen VRAM
; ++++----- Lower nybble of mapper number
;============================================================================================
  .byte %01000010                   ; NROM mapper 0, other mappers have more complicated values here (MMC3 = 0x42)
  .byte $0, $0, $0, $0, $0, $0
; this is about as basic as the header gets.  

.segment "RODATA"
.org $FFE0
    .byte 'EARTH BOUND 1.00',0
    .byte 0, 0, 0, 3, 0, 1, $F, 1, 0

.segment "VECTORS" ; THIS IS THE LAST 6 BYTES OF THE FILE, USED AS ADDRESSES FOR INTERRUPTS
    .word nmi
    .word reset
    .word irq
