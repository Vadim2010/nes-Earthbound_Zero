PPU_CTRL             = $2000
CTRL_NAMETABLE_2000  = $00
CTRL_NAMETABLE_2400  = $01
CTRL_NAMETABLE_2800  = $02
CTRL_NAMETABLE_2C00  = $03
CTRL_INCREMENT_1     = $00 << 2
CTRL_INCREMENT_32    = $01 << 2
CTRL_SPRITE_0000     = $00 << 3
CTRL_SPRITE_1000     = $01 << 3
CTRL_BG_0000         = $00 << 4
CTRL_BG_1000         = $01 << 4
CTRL_SPRITE_8x8      = $00 << 5
CTRL_SPRITE_8x16     = $01 << 5
; leave bit 6 off to avoid shorting the PPU
CTRL_NMI_DISABLE     = $00 << 7
CTRL_NMI_ENABLE      = $01 << 7

PPU_MASK	         = $2001
MASK_GRAYSCALE       = $01
MASK_SHOW_LEFT_BG    = $01 << 1
MASK_SHOW_LEFT_SPRITE= $01 << 2
MASK_HIDE_BG         = $00 << 3
MASK_SHOW_BG         = $01 << 3
MASK_HIDE_SPRITE     = $00 << 4
MASK_SHOW_SPRITE     = $01 << 4
MASK_EMPHASIZE_RED   = $01 << 5
MASK_EMPHASIZE_GREEN = $01 << 6
MASK_EMPHASIZE_BLUE  = $01 << 7

PPU_STATUS	         = $2002
STATUS_SPRITE_0      = $01 << 6
STATUS_VBLANK_START  = $01 << 7

OAM_ADDR             = $2003
; do not use OAM_DATA at $2004, use OAM_DMA instead

PPU_SCROLL           = $2005 ; write twice for x and y
PPU_ADDR             = $2006 ; write twice (low, high) to set PPU ADDRESS
PPU_DATA             = $2007 ; write to the PPU, increments 

PL1_VOL              = $4000
PL1_SWEEP            = $4001
PL1_LO               = $4002
PL1_HI               = $4003

PL2_VOL              = $4004
PL2_SWEEP            = $4005
PL2_LO               = $4006
PL2_HI               = $4007

TRI_LINEAR           = $4008
TRI_LO               = $400A
TRI_HI               = $400B

NOISE_VOL            = $400C
NOISE_LO             = $400E
NOISE_HI             = $400F

DMC_FREQ             = $4010
DMC_CNTR             = $4011
DMC_START            = $4012
DMC_LEN              = $4013

OAM_DMA              = $4014
SND_CHN              = $4015
IO_JOY1              = $4016
IO_JOY2              = $4017
FRAME_CNT            = $4017
