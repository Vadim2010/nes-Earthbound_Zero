.segment "ZEROPAGE"
byte_0:         .BYTE 0     
byte_1:         .BYTE 0     
byte_2:         .BYTE 0,0,0,0

CopyrightViolation: .res 1
BankNum: .res 1
CHRBank: .res 1

byte_9:         .BYTE 0     
byte_A:         .BYTE 0     
byte_B:         .BYTE 0     
byte_C:         .BYTE 0     
byte_D:         .BYTE 0     
byte_E:         .BYTE 0     
byte_F:         .BYTE 0     
byte_10:        .BYTE 0     
byte_11:        .BYTE 0     
byte_12:        .BYTE 0     
byte_13:        .BYTE 0     
byte_14:        .BYTE 0     
byte_15:        .BYTE 0     
byte_16:        .BYTE 0     
byte_17:        .BYTE 0     
byte_18:        .BYTE 0     
byte_19:        .BYTE 0     
byte_1A:        .BYTE 0     
byte_1B:        .BYTE 0     
byte_1C:        .BYTE 0     
byte_1D:        .BYTE 0     
byte_1E:        .BYTE 0     
byte_1F:        .BYTE 0     
byte_20:        .BYTE 0     
byte_21:        .BYTE 0     
byte_22:        .BYTE 0     
byte_23:        .BYTE 0     
byte_24:        .BYTE 0     
byte_25:        .BYTE 0     
byte_26:        .BYTE 0     
byte_27:        .BYTE 0     
byte_28:        .BYTE 0     
byte_29:        .BYTE 0     
byte_2A:        .BYTE 0     
byte_2B:        .BYTE 0,0,0,0,0

Dist: .addr
Source: .addr

byte_34:        .BYTE 0,0
byte_36:        .BYTE 0     

ItemCount: .res 1

byte_38:        .BYTE 0     
byte_39:        .BYTE 0     
byte_3A:        .BYTE 0     
byte_3B:        .BYTE 0     
byte_3C:        .BYTE 0     
byte_3D:        .BYTE 0     
byte_3E:        .BYTE 0     
byte_3F:        .BYTE 0  

BankPPU_X000: .res 1
BankPPU_X400: .res 1
BankPPU_X800: .res 1
BankPPU_XC00: .res 1

byte_41:        .BYTE 0     
byte_42:        .BYTE 0     
byte_43:        .BYTE 0     
byte_44:        .BYTE 0     
byte_45:        .BYTE 0     
byte_46:        .BYTE 0     
byte_47:        .BYTE 0     
byte_48:        .BYTE 0     
byte_49:        .BYTE 0     
byte_4A:        .BYTE 0     
byte_4B:        .BYTE 0     
byte_4C:        .BYTE 0     
byte_4D:        .BYTE 0,0,0,0,0,0     
byte_53:        .BYTE 0,0,0,0,0     
byte_58:        .BYTE 0     
byte_59:        .BYTE 0     
byte_5A:        .BYTE 0     
byte_5C:        .BYTE 0     
byte_5D:        .BYTE 0,0

Pointer: .addr                       ; $60 byte for multiply (F125)
AddrForJmp: .addr                    ; for F2AE
pTileID: .addr                       ; $64 byte for multiply (F125)

byte_66:        .BYTE 0     
byte_67:        .BYTE 0     
byte_68:        .BYTE 0     
byte_69:        .BYTE 0     
byte_6A:        .BYTE 0     
byte_6B:        .BYTE 0,0,0,0,0     
byte_70:        .BYTE 0     
byte_71:        .BYTE 0     

UnpackID: .res 1

byte_73:        .BYTE 0

PointerTilePack: .addr
PosX: .res 1
PosY: .res 1
NTAddr: .addr
BlockIndex: .res 1
SpriteTabOff: .res 1
LoopAddr: .addr
ChrCount: .res 1

byte_7F:        .BYTE 0     

CHRBank0:        .BYTE 0     
CHRBank1:        .BYTE 0     
CHRBank2:        .BYTE 0     
CHRBank3:        .BYTE 0     

FuncID: .res 1

CHRBank5:        .BYTE 0     
CHRBank6:        .BYTE 0     
CHRBank7:        .BYTE 0     
CHRBank8:        .BYTE 0     
CHRBank9:        .BYTE 0,0     
CHRBankB:        .BYTE 0     
CHRBankC:        .BYTE 0     
CHRBankD:        .BYTE 0     
CHRBankE:        .BYTE 0     
CHRBankF:        .BYTE 0     
byte_90:        .BYTE 0     

TilesNum: .res 1

byte_92:        .BYTE 0     
byte_93:        .BYTE 0     
byte_94:        .BYTE 0,0,0     
byte_97:        .BYTE 0     
byte_98:        .BYTE 0     
byte_99:        .BYTE 0     
byte_9A:        .BYTE 0     
byte_9B:        .BYTE 0,0     
byte_9D:        .BYTE 0,0,0     
byte_A0:        .BYTE 0     
byte_A1:        .BYTE 0     
byte_A2:        .BYTE 0     
byte_A3:        .BYTE 0     
byte_A4:        .BYTE 0     
byte_A5:        .BYTE 0     
byte_A6:        .BYTE 0     
byte_A7:        .BYTE 0     
byte_A8:        .BYTE 0,0     
byte_AA:        .BYTE 0     
byte_AB:        .BYTE 0     
byte_AC:        .BYTE 0     
byte_AD:        .BYTE 0     
byte_AE:        .BYTE 0     
byte_AF:        .BYTE 0,0,0,0,0,0,0,0,0,0

TileCount: .res 1
Attribute: .res 1
TileID: .res 1
Bitfield: .res 1
pOAMSprite: .addr
pFrame: .addr
TileX: .res 1

byte_C9:        .BYTE 0     

TileY: .res 1

byte_CB:        .BYTE 0     

SpriteTabOffset: .res 1
SpriteTabStep: .res 1

byte_CE:        .BYTE 0     
byte_CF:        .BYTE 0     
byte_D0:        .BYTE 0     
byte_D1:        .BYTE 0     
byte_D2:        .BYTE 0     
byte_D3:        .BYTE 0,0   
byte_D5:        .BYTE 0     
byte_D6:        .BYTE 0     

JmpInstr: .res 3				; jump istruction

Gamepad0Buttons: .res 1
Gamepad1Buttons: .res 1
Gamepad0Status: .res 1
Gamepad1Status: .res 1
ButtonPressed0: .res 1
ButtonPressed1: .res 1
OtherNMIFlags: .res 1

byte_E1:        .BYTE 0

flag_clear_OAM_300: .res 1       ; set 7 bit before clear OAM & $300, clear 7 bit after

byte_E3:        .BYTE 0
byte_E4:        .BYTE 0

NMIFlags: .res 1
OffsetNMI_ID: .res 1

byte_E7:        .BYTE 0     

ShiftX: .res 1
ShiftY: .res 1
NMIReady: .res 1
IRQLatch: .res 1
IRQCount: .res 1
InterruptOffset: .res 1
BankRegister: .res 1
BankMode: .res 1
BankTable: .res 8                ; BANK_TABLE <?>

byte_F8:        .BYTE 0,0,0,0

CameraY: .res 1
CameraX: .res 1 
MaskPPU: .res 1
CntrlPPU: .res 1

.segment "STACK"
Stack: .res 256

.segment "OAM"
OAM: .res 256

.segment "DATA"
SpriteTable: .res 256

; $400
NMI_ID: .res 256

; $500
PalNMIBG:   .res 16
PalNMISpr:  .res 16
PalBG:      .res 16
PalSpr:     .res 16

InterruptTable: .res 96

byte_600: .res 256
byte_700: .res 140

NTAddrC: .res 99
 
ModeSRAM: .res 1

byte_7F0:       .BYTE 0
byte_7F1:       .BYTE 0,0
byte_7F3:       .BYTE 0   
byte_7F4:       .BYTE 0   
byte_7F5:       .BYTE 0,0 
byte_7F7:       .BYTE 0,0,0,0,0,0,0,0,0 