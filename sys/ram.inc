.struct OAM_TILE
    PosY            .byte
    TileID          .byte
    Attr            .byte
    PosX            .byte
.endstruct

.struct ANIM_SPRITE
    Tiles           .byte
    TileID          .byte
    PosX            .byte
    PosY            .byte
    field_4         .byte
    field_5         .byte
    pFrame          .word
.endstruct

.struct NMI_DATA
    NMI_ID          .byte
    NumOfChr        .byte
    PPU_Addr        .word
    Chr             .byte
    Next            .byte
.endstruct

Stack               = $0100
OAM_Cache           = $0200
SpriteTable         = $0300
NMI_Data            = $0400

PalNMIBG            = $0500
PalNMISpr           = $0510
PalBG               = $0520
PalSpr              = $0530

InterruptTable      = $0540

byte_580            = $0580

stru_584            = $0584
unk_588             = $0588
unk_589             = $0589
unk_58A             = $058A

byte_590            = $0590
byte_591            = $0591
byte_592            = $0592
byte_593            = $0593
unk_594             = $0594

byte_600            = $0600
byte_601            = $0601
unk_602             = $0602
byte_603            = $0603
byte_604            = $0604
byte_605            = $0605
byte_606            = $0606
byte_607            = $0607
byte_608            = $0608
byte_609            = $0609
byte_60A            = $060A
byte_60B            = $060B
byte_60C            = $060C
byte_60D            = $060D
byte_60E            = $060E
byte_60F            = $060F
byte_610            = $0610
byte_611            = $0611

pPPUTab             = $0618

byte_61A            = $061A

byte_61C            = $061C
byte_61D            = $061D
byte_61E            = $061E

byte_620            = $0620
byte_621            = $0621

byte_640            = $0640
byte_641            = $0641

byte_660            = $0660
byte_661            = $0661

byte_680            = $0680

byte_683            = $0683
byte_684            = $0684

byte_68C            = $068C

byte_6A0            = $06A0

byte_6C0            = $06C0

byte_6E0            = $06E0

apu_76C             = $076C

PulseTimer1         = $0780
PulseCounter1       = $0781

PulseTimer2         = $0784
PulseCounter2       = $0785

apu_786             = $0786

PulseChannels       = $078A

apu_78B             = $078B

CurrentMusic             = $078C

byte_790            = $0790
byte_791            = $0791
byte_792            = $0792
byte_793            = $0793

byte_79A            = $079A

apu_79C             = $079C
byte_79D            = $079D

byte_79F            = $079F
byte_7A0            = $07A0
byte_7A1            = $07A1

byte_7A7            = $07A7
byte_7A8            = $07A8

byte_7AC            = $07AC

byte_7B0            = $07B0

byte_7B4            = $07B4
byte_7B5            = $07B5
byte_7B6            = $07B6
byte_7B7            = $07B7
byte_7B8            = $07B8

byte_7BC            = $07BC

PulseSweep1         = $07C0

byte_7C1            = $07C1

byte_7C3            = $07C3

byte_7C7            = $07C7
apu_7C8             = $07C8
apu_7C9             = $07C9
apu_7CA             = $07CA

byte_7CC            = $07CC
byte_7CD            = $07CD

byte_7D1            = $07D1

byte_7D5            = $07D5
byte_7D6            = $07D6

byte_7D9            = $07D9
byte_7DA            = $07DA

byte_7DE            = $07DE
byte_7DF            = $07DF
byte_7E0            = $07E0

byte_7E2            = $07E2
byte_7E3            = $07E3
byte_7E4            = $07E4

byte_7E6            = $07E6
byte_7E7            = $07E7
byte_7E8            = $07E8

ModeSRAM            = $07EF

apu_7F0             = $07F0
byte_7F1            = $07F1

byte_7F3            = $07F3
byte_7F4            = $07F4

NewMusic             = $07F5

DMCflag             = $07F7
Noise               = $07F8

byte_7F9            = $07F9
byte_7FA            = $07FA
byte_7FB            = $07FB
byte_7FC            = $07FC
byte_7FD            = $07FD

apu_7FF             = $07FF