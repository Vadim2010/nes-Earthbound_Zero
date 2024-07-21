.include "structures.inc"

.segment "RAM"

.export SpriteTable, NMI_Data, PalNMIBG, PalNMISpr, PalBG, PalSpr, InterruptTable
.export byte_57E, byte_57F, byte_580, byte_581, byte_582, GameSlotCopy, unk_588, unk_589, unk_58A, unk_58B
.export byte_590, byte_591, byte_592, byte_593, unk_594, Character, byte_640, byte_650, byte_660, byte_670
.export Item1, Item2, Item3, Item4, byte_6C0, byte_6D0, byte_6E0, byte_6F0, PrintSize0, apu_76C
.export PulseTimer1, PulseCounter1, PulseTimer2, PulseCounter2, apu_786, PulseChannels, apu_78B, CurrentMusic
.export byte_790, byte_791, byte_792, byte_793, byte_79A, apu_79C, byte_79D, byte_79F, byte_7A0, byte_7A1
.export byte_7A3, byte_7A7, byte_7A8, byte_7A9, byte_7AC, byte_7B0, byte_7B4, byte_7B5, byte_7B6, byte_7B7
.export byte_7B8, byte_7BC, PulseSweep1, byte_7C1, byte_7C3, byte_7C7, apu_7C8, apu_7C9, apu_7CA, byte_7CC
.export byte_7CD, byte_7D1, byte_7D5, byte_7D6, byte_7D9, byte_7DA, byte_7DE, byte_7DF, byte_7E0, byte_7E2
.export byte_7E3, byte_7E4, byte_7E6, byte_7E7, byte_7E8, ModeSRAM, apu_7F0, byte_7F1, byte_7F3, byte_7F4
.export NewMusic, DMCflag, Noise, byte_7F9, byte_7FA, byte_7FB, byte_7FC, byte_7FD, apu_7FF

SpriteTable:        .res 256
NMI_Data:           .res 256

PalNMIBG:           .res 16
PalNMISpr:          .res 16
PalBG:              .res 16
PalSpr:             .res 16

InterruptTable:     .res 62

byte_57E:           .res 1
byte_57F:           .res 1
byte_580:           .res 1
byte_581:           .res 1

byte_582:           .res 2

GameSlotCopy:       .tag GAME_SLOT
unk_588:            .res 1
unk_589:            .res 1
unk_58A:            .res 1

unk_58B:            .res 5

byte_590:           .res 1
byte_591:           .res 1
byte_592:           .res 1
byte_593:           .res 1
unk_594:            .res 108

Character:          .tag CHARACTER

byte_640:           .res 16
byte_650:           .res 16
byte_660:           .res 16
byte_670:           .res 16

Item1:              .res 16
Item2:              .res 16
Item3:              .res 16
Item4:              .res 16

byte_6C0:           .res 16
byte_6D0:           .res 16
byte_6E0:           .res 16
byte_6F0:           .res 16

PrintSize0:         .res 108

apu_76C:            .res 20

PulseTimer1:        .res 1
PulseCounter1:      .res 3

PulseTimer2:        .res 1
PulseCounter2:      .res 1

apu_786:            .res 4

PulseChannels:      .res 1

apu_78B:            .res 1

CurrentMusic:       .res 4

byte_790:           .res 1
byte_791:           .res 1
byte_792:           .res 1
byte_793:           .res 7

byte_79A:           .res 2

apu_79C:            .res 1
byte_79D:           .res 2

byte_79F:           .res 1
byte_7A0:           .res 1
byte_7A1:           .res 2

byte_7A3:           .res 4

byte_7A7:           .res 1
byte_7A8:           .res 1

byte_7A9:           .res 3

byte_7AC:           .res 4

byte_7B0:           .res 4

byte_7B4:           .res 1
byte_7B5:           .res 1
byte_7B6:           .res 1
byte_7B7:           .res 1
byte_7B8:           .res 4

byte_7BC:           .res 4

PulseSweep1:        .res 1

byte_7C1:           .res 2

byte_7C3:           .res 4

byte_7C7:           .res 1
apu_7C8:            .res 1
apu_7C9:            .res 1
apu_7CA:            .res 2

byte_7CC:           .res 1
byte_7CD:           .res 4

byte_7D1:           .res 4

byte_7D5:           .res 1
byte_7D6:           .res 3

byte_7D9:           .res 1
byte_7DA:           .res 4

byte_7DE:           .res 1
byte_7DF:           .res 1
byte_7E0:           .res 2

byte_7E2:           .res 1
byte_7E3:           .res 1
byte_7E4:           .res 2

byte_7E6:           .res 1
byte_7E7:           .res 1
byte_7E8:           .res 7

ModeSRAM:           .res 1

apu_7F0:            .res 1
byte_7F1:           .res 2

byte_7F3:           .res 1
byte_7F4:           .res 1

NewMusic:           .res 2

DMCflag:            .res 1
Noise:              .res 1

byte_7F9:           .res 1
byte_7FA:           .res 1
byte_7FB:           .res 1
byte_7FC:           .res 1
byte_7FD:           .res 2

apu_7FF:            .res 1
