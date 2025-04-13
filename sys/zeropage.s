.include "mmc3/bank.inc"

.segment "ZEROPAGE"

.exportzp IRQLatch, BankRegister, BankTable, BankNum, BankMode, InterruptOffset
.exportzp OffsetNMI_Data, NMIFlags, NMIReady, OtherNMIFlags, CHRBank, CameraX, CameraY, CntrlPPU, FlagClearOAM300
.exportzp GamepadButtons, GamepadStatus, ButtonPressed
.exportzp byte_D0, byte_D1, byte_D2, byte_D3, byte_D5, byte_D6
.exportzp IRQCount, JmpInstr, MaskPPU, Bitfield
.exportzp byte_C9, byte_CB, byte_CE, byte_CF, byte_E1, byte_E3, byte_E4, byte_E7, ShiftX, ShiftY
.exportzp CameraX, CameraY, SpriteTabOffset, SpriteTabStep, StartX, Source, ShiftCameraX, ShiftCameraY, ScreenX, ScreenY, Screen
.exportzp ObjectID, TileCount, TileID, pTileID, p4TileID, p4TileAttr, TileX, TileY, Attribute, pOAMSprite, pFrame, pStr, pDist
.exportzp pCursor, pCharacter, FuncID, Dist, Row, Column
.exportzp byte_C, byte_D, byte_F, byte_1F, byte_20, ObjectNumWithChar, byte_22, byte_23, byte_24, byte_25, RandomNumber
.exportzp CharNum, Item, WaitPressed, byte_2D, byte_34, ScriptOffset, TempX, TempY, Tiles, NewView, byte_A9, StepX, StepY
.exportzp byte_44, byte_45, byte_46, byte_47, EnemyGroup, Experience, Money, Value
.exportzp StackPointer, MsgCounter, CharacterOffset, TargetOffset, BossID, Flags, Sound, Auto, EnemyPos, EnemyCount
.exportzp pBattleScript, byte_6C, byte_6D, byte_6E, PrintSize, byte_71, DialogPage
.exportzp Pointer, CursorPosition
.exportzp byte_0, Price
.exportzp Color_0C, Color_0E
.exportzp TilepackMode, TilesCount, TilesNum, UnpackID, Tile4Count, PointerTilePack
.exportzp apu_BF
.exportzp PPUAttribute, PPUAddr, Off_pAttr, OffScreen, NTAddr, ObjOffset, ObjNumber, MaxY, MaskCntrlPPU
.exportzp MapSectorID, CoorY, View, CoorX, MaxX
.exportzp LoopAddr, ItemCount, FirstTileID, FieldPosition
.exportzp DataBank, CursorMode, CurrentX, CurrentY, CHRText, ByteCount, Buttons, BlockIndex, ChrCount, BlockCount
.exportzp CopyrightViolation, BankPPU_X000, BankPPU_X400, BankPPU_X800, BankPPU_XC00, BankNum0, BankNum1, BankNum0Mask3, BankNum1Mask3
.exportzp Attribute_0, AttributeScr, ObjectScr, AttributeOffset, AddrForJmp, Add_Off_pAttr
.exportzp BankHighOffset, NamePos
.exportzp byte_B4, byte_B6, byte_B7, byte_BA, apu_B0, apu_BB, apu_BC, apu_BD, PointerAPU, APURegisterNum, APU_DM_CR

byte_0:             .res 1
byte_1:             .res 5

CopyrightViolation: .res 1
BankNum:            .res 1
CHRBank:            .res 1
CHRText:            .tag CHR_TXT_OFFSET

byte_C:             .res 1
byte_D:             .res 1

FuncID:             .res 1

byte_F:             .res 1

BankNum0:           .res 1
BankNum0Mask3:      .res 1
BankNum1:           .res 1
BankNum1Mask3:      .res 1
MapSectorID:        .res 1
ObjNumber:          .res 1
Color_0E:           .res 1
Color_0C:           .res 1
CoorX:              .res 2
CoorY:              .res 2
ShiftCameraX:       .res 1
ShiftCameraY:       .res 1
MaskCntrlPPU:       .res 1

byte_1F:            .res 1
byte_20:            .res 1
ObjectNumWithChar:  .res 1
byte_22:            .res 1
byte_23:            .res 1
byte_24:            .res 1
byte_25:            .res 1
RandomNumber:       .res 2
CharNum:            .res 1
Item:               .res 1
Price:              .res 2
WaitPressed:        .res 1
byte_2D:            .res 3

Dist:               .res 2
Source:             .res 2

byte_34:            .res 1
ScriptOffset:       .res 1

ObjectID:           .res 1
ItemCount:          .res 1
ObjOffset:          .res 2

TempX:              .res 2
TempY:              .res 2
View:               .res 1

Tiles:              .res 1

BankPPU_X000:       .res 1
BankPPU_X400:       .res 1
BankPPU_X800:       .res 1
BankPPU_XC00:       .res 1

byte_44:            .res 1
byte_45:            .res 1
byte_46:            .res 1
byte_47:            .res 1

EnemyGroup:         .res 1
Experience:         .res 3
Money:              .res 2
Value:              .res 2
StackPointer:       .res 2
MsgCounter:         .res 1
CharacterOffset:    .res 1
TargetOffset:       .res 1
NamePos:            .res 1
BossID:             .res 1

Flags:              .res 1
Sound:              .res 1
Auto:               .res 1

EnemyPos:           .res 1

EnemyCount:         .res 1

pCharacter:         .res 2

pBattleScript:      .res 2

Pointer:            .res 2                    ; $60 byte for multiply (F125)
AddrForJmp:         .res 2                    ; for F2AE
pTileID:            .res 2                    ; $64 byte for multiply (F125)
TilepackMode:       .res 1
TilesCount:         .res 1
pDist:              .res 2
FieldPosition:      .res 1
CursorMode:         .res 1

byte_6C:            .res 1
byte_6D:            .res 1
byte_6E:            .res 2
PrintSize:          .res 1
byte_71:            .res 1

UnpackID:           .res 1

DialogPage:         .res 1

PointerTilePack:    .res 2
Column:             .res 1
Row:                .res 1
NTAddr:             .res 2
BlockIndex:         .res 1
AttributeOffset:    .res 1
LoopAddr:           .res 2
ChrCount:           .res 1
ByteCount:          .res 1
pCursor:            .res 2
CursorPosition:     .res 1
Buttons:            .res 1
pStr:               .res 2
CurrentX:           .res 1
CurrentY:           .res 1
p4TileID:           .res 2
p4TileAttr:         .res 2
PPUAddr:            .res 2
PPUAttribute:       .res 2
Attribute_0:        .res 1
TilesNum:           .res 1
Off_pAttr:          .res 1
Add_Off_pAttr:      .res 1
DataBank:           .res 1

algn_95:            .res 1

BankHighOffset:     .res 1
FirstTileID:        .res 1
StartX:             .res 1
ScreenY:            .res 1
ScreenX:            .res 1
BlockCount:         .res 1

byte_9C:            .res 1
byte_9D:            .res 3
NewView:            .res 1

OffScreen:          .res 1
Screen:             .res 2
AttributeScr:       .res 2
ObjectScr:          .res 2
Tile4Count:         .res 1

byte_A9:            .res 1

MaxX:               .res 2
MaxY:               .res 2

StepX:              .res 1
StepY:              .res 1

apu_B0:             .res 1
APU_DM_CR:          .res 1
PointerAPU:         .res 2

byte_B4:            .res 1
byte_B5:            .res 1
byte_B6:            .res 1
byte_B7:            .res 1
byte_B8:            .res 1
byte_B9:            .res 1
byte_BA:            .res 1

apu_BB:             .res 1
apu_BC:             .res 1
apu_BD:             .res 1

APURegisterNum:     .res 1

apu_BF:             .res 1

TileCount:          .res 1
Attribute:          .res 1
TileID:             .res 1
Bitfield:           .res 1
pOAMSprite:         .res 2
pFrame:             .res 2
TileX:              .res 1

byte_C9:            .res 1

TileY:              .res 1

byte_CB:            .res 1

SpriteTabOffset:    .res 1
SpriteTabStep:      .res 1

byte_CE:            .res 1
byte_CF:            .res 1
byte_D0:            .res 1
byte_D1:            .res 1
byte_D2:            .res 1
byte_D3:            .res 2
byte_D5:            .res 1
byte_D6:            .res 1

JmpInstr:           .res 3      ; jump istruction

GamepadButtons:     .res 2
GamepadStatus:      .res 2
ButtonPressed:      .res 2
OtherNMIFlags:      .res 1

byte_E1:            .res 1

FlagClearOAM300:    .res 1       ; set 7 bit before clear OAM & $300, clear 7 bit after

byte_E3:            .res 1
byte_E4:            .res 1

NMIFlags:           .res 1
OffsetNMI_Data:     .res 1

byte_E7:            .res 1

ShiftX:             .res 1
ShiftY:             .res 1
NMIReady:           .res 1
IRQLatch:           .res 1
IRQCount:           .res 1
InterruptOffset:    .res 1
BankRegister:       .res 1
BankMode:           .res 1
BankTable:          .tag BANK_TABLE ;.res 8 BANK_TABLE <?>

byte_F8:            .res 4

CameraY:            .res 1
CameraX:            .res 1 
MaskPPU:            .res 1
CntrlPPU:           .res 1
