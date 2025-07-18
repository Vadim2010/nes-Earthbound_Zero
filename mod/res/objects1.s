.include "objects.inc"

; BANK $10
.segment "BANK_0"
; 0x1A records
off_108000:
    .word off_108034, off_108038, off_1083F6, off_108609, off_108831
    .word off_108BA9, off_108D92, off_108EE7, off_109003, off_10920C
    .word byte_109361, off_109628, off_109674, off_109764
    .word off_1098C2, off_109950, off_1099B0, off_1099CA, off_109A10
    .word off_109A1C, off_109A54, off_109B10, off_109B12, off_109B2C
    .word off_109CF9, Home

off_108034:
    .word 0, 0

off_108038:
    .word byte_10807C, byte_108084, byte_10808C, byte_108094
    .word byte_10809A, Dog, byte_1080D0, byte_1080ED
    .word byte_108158, byte_108184, byte_108190, byte_1081C3
    .word byte_1081DD, byte_1081E8, byte_1081F3, byte_1081FE
    .word byte_108209, byte_108214, byte_10821F, byte_10822A
    .word byte_10825C, byte_108265, byte_108270, byte_10827C
    .word byte_108288, byte_108290, byte_1082BF, byte_1082E8
    .word byte_108357, byte_10837F, byte_10838D, byte_1083E2
    .word byte_1083EA, 0

byte_10807C:
    entrance DOOR, $2C40, $4EC0, UP, MUSIC_12, $B40, $2180, LEFT

byte_108084:
    entrance DOOR, $2D40, $8DC0, UP, MUSIC_12, $D340, $2580, LEFT

byte_10808C:
    entrance DOOR, $4D80, $3EC0, UP, MUSIC_c, $3A40, $F200, DOWN

byte_108094:
    .byte $69, $2C, $80, $4E, $32, 0

byte_10809A:
    .byte $69, $2C, $80, $4E, $E8, 0

Dog:
    .import AnimDog

    npc WALK_NPC, $2B00, $4F00, DOWN, AnimDog

    check_action TALK, DogAction - Dog
    check_flag FLAG6|BIT4, DogCheck - Dog
    print $35C
    end_script
DogCheck:
    print $2AF
    end_script
DogAction:
    check_action CHECK, DogExit - Dog
    check_flag FLAG6|BIT4, DogKey - Dog
    jump DogExit - Dog
DogKey:
    print $3CF
    find_item EMPTY, DogFull - Dog
    select_item $55
    add_item DogExit - Dog
    print $39B
    play SOUND2, 6
    set_flag FLAG6|BIT4
    end_script
DogFull:
    print $39D
DogExit:
    end_script

byte_1080D0:
    .byte $93, $36, 4, $54, $A8, $85, $A, $1C, $12, $B, $F
    .byte 8, $23, 0, 0, $33, 5, $19, $52, $80, $19, 8, $4A
    .byte 3, 0, 8, $28, 2, 0

byte_1080ED:
    .byte $14, $36, 4, $54, $80, $80, 6, $2D, $A, $6A, $19
    .byte 5, $31, 0, $35, $33, 1, $31, $52, $80, $31, 8, $BB
    .byte 3, $19, 5, $31, 0, $29, $19, 1, $2D, $2D, $5C, 6
    .byte $19, 5, $2E, $2D, 1, $18, 8, $BC, 3, 0, 8, $42, 2
    .byte 0, 8, $14, 2, 0, $33, 1, $67, $52, $80, $67, 8, $C4
    .byte 2, 9, $44, 8, $66, 0, 0, 8, $67, 0, 9, $63, $12
    .byte $62, $50, 8, $56, 0, 0, 8, $68, 0, $27, 0, $5F, $5C
    .byte 6, $25, $68, $2D, $5F, $10, $62, 0, 8, $49, 2, 0
    .byte 8, $69, 0, 0, 8, $59, 2, 0

byte_108158:
    .import stru_15860C

    npc NPC_1, $1700, $4E80, DOWN, stru_15860C
    .byte $A, $2B, $27, $5F, $18
    .byte 8, $5F, 0, 9, $14, 8, $61, 0, 0, 8, $60, 0, 0, $12
    .byte $C, $28, 8, $62, 0, 9, $24, 8, $64, 0, 0, 8, $63
    .byte 0, 0, 8, $5E, 0, 0

byte_108184:
    .byte $A3, $1B, 0, $4C, $E8, $85, $B, $B, 8, $2D, 3, 0

byte_108190:
    .import stru_158588

    npc STAT_NPC, $1B40, $4B00, DOWN, stru_158588
    .byte $A, $14, $12, $C, $10
    .byte 8, $41, 3, 1, $21, 8, $6C, 2, 0, $D, $5F, $32, $27
    .byte $5F, $B, $25, $5F, $2E, $32, 8, $3F, 3, $5C, 8, 4
    .byte $B4, $5A, $25, 4, $F0, $5A, 6, $10, $F6, $10, $C
    .byte 8, $40, 3, 0

byte_1081C3:
    npc STAT_NPC, $1700, $4CC0, RIGHT, stru_158588
    .byte 2, $C3, $81, $B, 0
    .byte $A, $19, $12, $C, $16, 8, $41, 3, $5C, 8, 3, 8, $CA
    .byte 0, 3

byte_1081DD:
    npc STAT_NPC, $18C0, $4F00, DOWN, stru_158588
    .byte 2, $C3, $81, $B, 0

byte_1081E8:
    npc STAT_NPC, $1A40, $4E00, LEFT, stru_158588
    .byte 2, $C3, $81, $B, 0

byte_1081F3:
    npc STAT_NPC, $1AC0, $4F00, DOWN, stru_158588
    .byte 2, $C3, $81, $B, 0

byte_1081FE:
    npc STAT_NPC, $1CC0, $4E40, RIGHT, stru_158588
    .byte 2, $C3, $81, $B, 0

byte_108209:
    npc STAT_NPC, $1F80, $4C80, LEFT, stru_158588
    .byte 2, $C3, $81, $B, 0

byte_108214:
    npc STAT_NPC, $1C00, $5280, DOWN, stru_158588
    .byte 2, $C3, $81, $B, 0

byte_10821F:
    npc STAT_NPC, $1780, $5280, RIGHT, stru_158588
    .byte 2, $C3, $81, $B, 0

byte_10822A:
    .byte $94, $4D, 4, $3F, $EC, $85, 5, $7E, $A, $E, 8, $F8
    .byte 0, 0, $D, $59, $23, 8, $F9, 0, $27, $59, $23, $2E
    .byte $23, $3E, $4E, $82, $44, 7, $10, $7E, $3E, $5B, $82
    .byte 0, $7E, 2, $F6, 1, $7A, 4, $F0, 1, $7E, 2, $F4, 1
    .byte 3, 0

byte_10825C:
    .byte $5B, $2F, 0, $8C, $35, 8, $5A, $D, 0

byte_108265:
    .byte $5B, $2F, $C0, $8B, $35, $A, $36, $A, $5A, 6, 0

byte_108270:
    .byte $19, $21, $80, $51, $94, $81, $B, $B, 8, $A3, 3
    .byte 0

byte_10827C:
    .byte $19, $2D, 0, $50, $94, $81, $B, $B, 8, $AE, 3, 0

byte_108288:
    entrance DOOR, $380, $4980, RIGHT, MUSIC_b, $EF40, $D100, DOWN

byte_108290:
    .byte $58, 0, $86, $49, $36, $2E, $35, $2E, $12, $C8, $1A
    .byte $3D, $52, $DF, $86, $21, 0, $12, $7D, $B, $3D, $12
    .byte $DF, $86, $21, 0, $19, 1, $52, $FF, $11, $19, 2
    .byte $52, $FF, $11, $19, 4, $52, $FF, $11, $43, 4, $11
    .byte $3F, $1C, 0

byte_1082BF:
    .byte $9B, 0, $86, $49, $35, $28, $11, $7C, $36, $C, $10
    .byte $7C, $3A, 0, $28, $52, $FF, $26, $50, $26, $3A, 1
    .byte $28, $52, $FF, $26, $50, $26, $3A, 2, $28, $52, $FF
    .byte $26, $50, $26, 1, $28, $3F, $1B, 0

byte_1082E8:
    npc NPC_1, $140, $4900, DOWN, stru_15860C
    .byte $40, $18, $12, $7C, $10
    .byte $3E, $3B, $83, 1, $13, $3E, $49, $83, 8, $B0, 0
    .byte 1, $1D, $A, $52, 8, $B1, 0, $19, 1, $53, 0, $51
    .byte $FF, $50, $21, $61, $FF, $60, $25, $3A, 1, $43, $53
    .byte 0, $51, $FF, $50, $2E, $61, $FF, $60, $32, $3A, 2
    .byte $43, $53, 0, $51, $FF, $50, $3B, $61, $FF, $60, $3F
    .byte $5C, 7, $40, $52, $12, $7C, $4F, $3E, $42, $83, 1
    .byte $52, $3E, $50, $83, 0, $74, 3, $76, 3, $F0, 1, 3
    .byte $72, 3, $70, 3, $F4, 1, 0, $74, 2, $76, 2, $F6, 1
    .byte 3, $72, 2, $70, 2, $F4, 1, 0

byte_108357:
    .byte $D4, 0, $46, $49, $60, $80, 6, 1, $40, $1F, $3E
    .byte $77, $83, 8, $BF, 3, $3E, $7A, $83, $10, $7B, $43
    .byte 2, $1F, $10, $7D, $3D, $12, $DF, $86, $21, 0, $F4
    .byte 1, 3, $72, 6, $F4, 1, 0

byte_10837F:
    .byte $54, 2, $44, $49, $60, $80, 6, $7B, $A, $D, 8, $BF
    .byte 0, 0

byte_10838D:
    .byte $D9, 2, 0, $49, $70, $86, $A, $54, 8, $39, 3, 8
    .byte $14, 0, $1B, $13, 8, $15, 0, 8, $C, 0, $3A, 0, $2B
    .byte $57, 8, $45, 3, $3A, 1, $2B, $57, 8, $45, 3, $3A
    .byte 2, $2B, $57, 8, $45, 3, 8, $1E, 0, $37, $37, 3, $4A
    .byte $4A, $56, 8, $1B, 0, $37, $38, 3, $43, $3C, 8, $1D
    .byte 0, 8, $13, 0, 0, 8, $1C, 0, 8, $13, 0, $F, 8, $21
    .byte 0, 8, $13, 0, 0, 8, $65, 3, 0

byte_1083E2:
    entrance DOOR, $EB80, $4180, RIGHT, MUSIC_6, $2F40, $6400, DOWN

byte_1083EA:
    .byte $E2, $EA, $44, $41, $4C, $86, $A, $B, 8, $D0, 3, 0

off_1083F6:
    .word PodMallIn, PodCityHallIn, PodHotelIn, PodHospitalIn
    .word PodCafeIn, byte_108464, PodNPC1, PodNPC2
    .word PodNPC3, PodNPC4, PodNPC5, PodNPC6
    .word PodNPC7, PodNPC8, PodNPC9, PodNPC10
    .word PodNPC11, PodNPC12, PodNPC13, byte_108571
    .word byte_108583, PodNPC14, PodNPC15, PodNPC16
    .word byte_1085B9, CanaryVillageSign, PodCityHallSign, PodSign
    .word byte_1085E5, byte_1085EB, byte_1085F1, byte_1085F7
    .word byte_1085FD, byte_108603, 0

PodMallIn:
    entrance DOOR, $3080, $6C00, UP, MUSIC_f, $340, $4580, LEFT

PodCityHallIn:
    entrance DOOR, $2EC0, $6C00, UP, MUSIC_f, $AF40, $2580, LEFT

PodHotelIn:
    entrance DOOR, $31C0, $6900, UP, MUSIC_12, $9740, $ED80, LEFT

PodHospitalIn:
    entrance DOOR, $2FC0, $6F00, UP, MUSIC_12, $C740, $FD80, LEFT

PodCafeIn:
    entrance DOOR, $2DC0, $6C00, UP, MUSIC_f, $340, $5580, LEFT

byte_108464:
    entrance DOOR, $2740, $7BC0, UP, MUSIC_12, $340, $3180, LEFT

PodNPC1:
    .import stru_158228

    npc WALK_NPC, $3200, $64C0, RIGHT, stru_158228

    check_action TALK, PodNPC1Exit - PodNPC1
    check_flag FLAG1|BIT4, PodNPC1Msg - PodNPC1
    print $25
    end_script
PodNPC1Msg:
    print $24
PodNPC1Exit:
    end_script

PodNPC2:
    npc NPC_1, $3580, $6A40, DOWN, stru_158228
    .byte $A, $29, $12, $B, $F
    .byte 8, $2C, 0, 0, 8, $26, 0, 9, $1A, 8, $27, 0, $3B
    .byte $26, 0, 8, $28, 0, 9, $23, 8, $29, 0, 0, 8, $2A
    .byte 0, 8, $2B, 0, 0

PodNPC3:
    .import stru_158288

    npc WALK_NPC, $3400, $6680, DOWN, stru_158288
    .byte $A, $12, $12, $B, $F
    .byte 8, $30, 0, 0, 8, $2F, 0, 0

PodNPC4:
    .import stru_1581A8

    npc WALK_NPC, $3540, $6980, RIGHT, stru_1581A8
    .byte $A, $12, $12, $B, $F
    .byte 8, $25, 0, 0, 8, $31, 0, 0

PodNPC5:
    .import stru_1582A8

    npc WALK_NPC, $31C0, $6CC0, LEFT, stru_1582A8
    .byte $A, $20, $12, $C, $D
    .byte 1, $1D, $27, $5F, $1D, 8, $32, 0, 9, $19, 8, $33
    .byte 0, 0, 8, $34, 0, 0, 8, $35, 0, 0

PodNPC6:
    .import ReceptionistAnim

    npc WALK_NPC, $2D00, $6D80, RIGHT, ReceptionistAnim
    .byte $A, $B, 8, $36, 0, 0

PodNPC7:
    .import stru_1581E8

    npc WALK_NPC, $2C80, $7100, DOWN, stru_1581E8
    .byte $A, $B, 8, $37, 0, 0

PodNPC8:
    npc WALK_NPC, $3440, $7380, DOWN, stru_1581A8
    .byte $A, $17, $12, $B, $F
    .byte 8, $25, 0, 0, 8, $38, 0, 9, $14, 8, $39, 0, 0

PodNPC9:
    .import stru_158248

    npc WALK_NPC, $2F80, $6980, RIGHT, stru_158248
    .byte $A, $12, $12, $D, $F
    .byte 8, $3B, 0, 0, 8, $3A, 0, 0

PodNPC10:
    npc WALK_NPC, $2D80, $6280, RIGHT, stru_1581E8
    .byte $A, $12, $12, $B, $F
    .byte 8, $2C, 0, 0, 8, $3D, 0, 0

PodNPC11:
    .import stru_158268

    npc WALK_NPC, $3400, $6DC0, RIGHT, stru_158268
    .byte $A, $12, $12, $D, $F
    .byte 8, $25, 0, 0, 8, $3E, 0, 0

PodNPC12:
    npc WALK_NPC, $3400, $6E40, DOWN, stru_158248
    .byte $A, $B, 8, $3F, 0, 0

PodNPC13:
    npc WALK_NPC, $3280, $6C00, DOWN, stru_158288
    .byte $A, $B, 8, $5C, 0, 0

byte_108571:
    .byte $D5, $32, $C6, $74, $28, $82, 5, $14, $A, $11, 8
    .byte $2D, 0, $44, $10, $10, $14, 0

byte_108583:
    .byte $55, $35, $44, $75, $28, $82, 5, $15, $A, $11, 8
    .byte $2E, 0, $44, $10, $10, $15, 0

PodNPC14:
    npc WALK_NPC, $2E40, $6A00, LEFT, stru_158268
    .byte $A, $B, 8, $C5, 2, 0

PodNPC15:
    npc WALK_NPC, $2F00, $6D00, RIGHT, stru_158228
    .byte $A, $B, 8, $C6, 2, 0

PodNPC16:
    .import stru_158208

    npc WALK_NPC, $2EC0, $6F80, DOWN, stru_158208
    .byte $A, $B, 8, $C7, 2, 0

byte_1085B9:
    entrance DOOR, $2F40, $63C0, UP, MUSIC_12, $EB40, $4180, LEFT

CanaryVillageSign:
    .byte $99, $2A, $C0, $5E, $94, $81, $B, $B, 8, $A4, 3, 0

PodCityHallSign:
    .byte $99, $2E, $40, $6C, $94, $81, $B, $B, 8, $A5, 3, 0

PodSign:
    .byte $99, $30, $40, $5F, $94, $81, $B, $B, 8, $16, 2, 0

byte_1085E5:
    .byte $E9, $2D, $C0, $6D, $E9, 0

byte_1085EB:
    .byte $69, $31, $C0, $6D, $E9, 0

byte_1085F1:
    .byte $E9, $34, $C0, $6D, $E9, 0

byte_1085F7:
    .byte $E9, $2D, $40, $6A, $E9, 0

byte_1085FD:
    .byte $69, $31, $40, $6A, $E9, 0

byte_108603:
    .byte $E9, $34, $40, $6A, $E9, 0

off_108609:
    .word byte_108659, byte_108661, byte_108669, byte_108671
    .word byte_108679, byte_108681, byte_108689, byte_10869E
    .word byte_1086AA, byte_1086B6, byte_1086C2, byte_1086CE
    .word byte_1086E1, byte_1086ED, byte_1086F9, byte_108705
    .word byte_108711, byte_10874E, byte_10875A, byte_10876D
    .word byte_108779, byte_108785, byte_108798, byte_1087A4
    .word byte_1087B9, byte_1087C5, byte_1087D1, byte_1087DD
    .word byte_1087E9, byte_1087F5, byte_1087FB, byte_108801
    .word byte_108807, byte_10880D, byte_108813, byte_108819
    .word byte_10881F, byte_108825, byte_10882B, 0

byte_108659:
    entrance DOOR, $5880, $7300, UP, MUSIC_f, $340, $2D80, LEFT

byte_108661:
    entrance DOOR, $5B80, $7000, UP, MUSIC_12, $340, $5180, LEFT

byte_108669:
    entrance DOOR, $5AC0, $7300, UP, MUSIC_12, $B740, $F580, LEFT

byte_108671:
    entrance DOOR, $58C0, $7000, UP, MUSIC_f, $340, $3D80, LEFT

byte_108679:
    entrance DOOR, $5A40, $7940, UP, MUSIC_e, $C140, $ED40, DOWN

byte_108681:
    entrance DOOR, $5040, $5380, UP, MUSIC_f, $A440, $F140, DOWN

byte_108689:
    npc WALK_NPC, $5340, $6740, RIGHT, stru_158228
    .byte $A, $14, 8, $EC, 0
    .byte 9, $11, 8, $ED, 0, 0, 8, $33, 0, 0

byte_10869E:
    .import stru_1581C8

    npc WALK_NPC, $57C0, $6F40, LEFT, stru_1581C8
    .byte $A, $B, 8, $F6, 0, 0

byte_1086AA:
    npc WALK_NPC, $5500, $7480, LEFT, stru_1581A8
    .byte $A, $B, 8, $F7, 0, 0

byte_1086B6:
    npc WALK_NPC, $5640, $7780, DOWN, stru_158268
    .byte $A, $B, 8, $FB, 0, 0

byte_1086C2:
    npc WALK_NPC, $56C0, $7780, RIGHT, stru_1581E8
    .byte $A, $B, 8, $FD, 0, 0

byte_1086CE:
    npc WALK_NPC, $5A80, $7080, DOWN, stru_158288
    .byte $A, $12, $12, $71
    .byte $F, 8, $BB, 0, 0, 8, $AE, 2, 0

byte_1086E1:
    npc WALK_NPC, $5C00, $7400, DOWN, stru_158248
    .byte $A, $B, 8, $C8, 2, 0

byte_1086ED:
    npc WALK_NPC, $5D00, $7580, RIGHT, stru_158268
    .byte $A, $B, 8, $C9, 2, 0

byte_1086F9:
    npc WALK_NPC, $5980, $7380, LEFT, stru_1582A8
    .byte $A, $B, 8, $CA, 2, 0

byte_108705:
    npc WALK_NPC, $5CC0, $7080, LEFT, ReceptionistAnim
    .byte $A, $B, 8, $CB, 2, 0

byte_108711:
    npc WALK_NPC, $5A00, $7180, DOWN, stru_158228
    .byte $A, $3C, $12, $6F
    .byte $F, 8, $7C, 3, 0, 8, $77, 3, 9, $39, 8, $79, 3, 9
    .byte $19, 8, $7A, 3, 9, $1E, 8, $7B, 3, $27, 0, $35, $25
    .byte 2, $2D, $3C, $15, 4, $14, 4, $16, 4, $32, $2A, $5C
    .byte 6, $10, $6F, 0, 8, $60, 2, 0, 8, $CC, 2, 0

byte_10874E:
    npc WALK_NPC, $5400, $6A00, UP, stru_158268
    .byte $A, $B, 8, $CD, 2, 0

byte_10875A:
    npc WALK_NPC, $55C0, $6A80, UP, stru_158228
    .byte $A, $12, $12, $71
    .byte $F, 8, $BB, 0, 0, 8, $CE, 2, 0

byte_10876D:
    npc WALK_NPC, $5800, $6B40, DOWN, stru_1581E8
    .byte $A, $B, 8, $CF, 2, 0

byte_108779:
    npc WALK_NPC, $5700, $7080, RIGHT, stru_1581A8
    .byte $A, $B, 8, $D0, 2, 0

byte_108785:
    npc WALK_NPC, $5880, $7380, DOWN, stru_158228
    .byte $A, $12, $12, $71
    .byte $F, 8, $BB, 0, 0, 8, $D1, 2, 0

byte_108798:
    npc WALK_NPC, $5400, $7100, LEFT, stru_158248
    .byte $A, $B, 8, $D2, 2, 0

byte_1087A4:
    npc WALK_NPC, $54C0, $6D80, DOWN, stru_158268
    .byte $A, $14, 8, $D3, 2
    .byte 9, $11, 8, $50, 3, 0, 8, $33, 0, 0

byte_1087B9:
    npc WALK_NPC, $53C0, $7000, LEFT, stru_158208
    .byte $A, $B, 8, $D4, 2, 0

byte_1087C5:
    .byte $59, $5B, $40, $70, $94, $81, $B, $B, 8, $EE, 0
    .byte 0

byte_1087D1:
    .byte $99, $52, $40, $67, $94, $81, $B, $B, 8, $AF, 3
    .byte 0

byte_1087DD:
    .byte $19, $5D, $40, $73, $94, $81, $B, $B, 8, $B5, 3
    .byte 0

byte_1087E9:
    .byte $59, $5A, 0, $74, $94, $81, $B, $B, 8, $AD, 3, 0

byte_1087F5:
    .byte $E9, $55, $C0, $72, $EA, 0

byte_1087FB:
    .byte $69, $59, $C0, $72, $EA, 0

byte_108801:
    .byte $E9, $5C, $C0, $72, $EA, 0

byte_108807:
    .byte $E9, $55, $40, $6F, $EA, 0

byte_10880D:
    .byte $E9, $5C, $40, $6F, $EA, 0

byte_108813:
    .byte $E9, $55, $C0, $6B, $EA, 0

byte_108819:
    .byte $E9, $5C, $C0, $6B, $EA, 0

byte_10881F:
    .byte $E9, $55, $40, $68, $EA, 0

byte_108825:
    .byte $69, $59, $40, $68, $EA, 0

byte_10882B:
    .byte $E9, $5C, $40, $68, $EA, 0

off_108831:
    .word byte_10886B, byte_108873, byte_10887B, byte_108883
    .word byte_10888B, byte_108893, byte_10889B, byte_1088AE
    .word byte_1088BA, byte_1088C6, byte_1088D2, byte_1088DE
    .word byte_1088EA, byte_1088F6, byte_108902, byte_10890E
    .word byte_10891A, byte_10892D, byte_10895B, byte_10896E
    .word byte_108984, byte_1089B9, byte_108A17, byte_108AB9
    .word byte_108AF7, byte_108B40, byte_108B4E, byte_108B86
    .word 0

byte_10886B:
    entrance DOOR, $6640, $CDC0, UP, MUSIC_12, $B40, $2980, LEFT

byte_108873:
    entrance DOOR, $5800, $B240, UP, MUSIC_12, $9B40, $2180, LEFT

byte_10887B:
    entrance DOOR, $8040, $CF80, UP, MUSIC_f, $9840, $F140, DOWN

byte_108883:
    entrance DOOR, $AF00, $F200, RIGHT, MUSIC_6, $C8C0, $4B40, DOWN

byte_10888B:
    entrance DOOR, $AA40, $F280, LEFT, MUSIC_SAME, $BB40, $F180, LEFT

byte_108893:
    entrance DOOR, $C380, $F180, RIGHT, MUSIC_6, $C280, $4840, DOWN

byte_10889B:
    npc WALK_NPC, $8180, $D100, DOWN, stru_1581A8
    .byte $A, $12, $27, $62, $F
    .byte 8, $37, 1, 0, 8, $3A, 1, 0

byte_1088AE:
    npc WALK_NPC, $8240, $D1C0, RIGHT, stru_158228
    .byte $A, $B, 8, $57, 1, 0

byte_1088BA:
    npc WALK_NPC, $7F40, $D180, DOWN, stru_158248
    .byte $A, $B, 8, $D7, 2, 0

byte_1088C6:
    npc WALK_NPC, $6900, $DA00, LEFT, stru_1582A8
    .byte $A, $B, 8, $4F, 1, 0

byte_1088D2:
    npc WALK_NPC, $6A00, $DC80, RIGHT, stru_1581E8
    .byte $A, $B, 8, $D8, 2, 0

byte_1088DE:
    npc WALK_NPC, $6D00, $DD40, LEFT, stru_158288
    .byte $A, $B, 8, $D9, 2, 0

byte_1088EA:
    npc WALK_NPC, $6D00, $DA00, RIGHT, stru_158248
    .byte $A, $B, 8, $DA, 2, 0

byte_1088F6:
    .byte $50, $6E, $C0, $DE, $68, $82, $A, $B, 8, $DB, 2
    .byte 0

byte_108902:
    npc WALK_NPC, $6840, $E580, DOWN, stru_158228
    .byte $A, $B, 8, $DC, 2, 0

byte_10890E:
    npc WALK_NPC, $6F80, $E580, DOWN, stru_158208
    .byte $A, $B, 8, $DD, 2, 0

byte_10891A:
    npc WALK_NPC, $AB40, $F2C0, RIGHT, ReceptionistAnim
    .byte $A, $12, $12, $3B
    .byte $F, 8, $9F, 2, 0, 8, $D7, 1, 0

byte_10892D:
    .byte $53, $AD, $C6, $F2, $A8, $82, $A, $24, $12, $34
    .byte $F, 8, $DB, 1, 0, 8, $D9, 1, 9, $21, $10, $34, $3E
    .byte $52, $89, 8, $56, 0, $10, $2B, $3F, $17, 0, 8, $DA
    .byte 1, 0, $30, 1, $36, 2, $76, 1, $F2, 1, 0

byte_10895B:
    .byte $13, $AC, $C0, $F2, $48, $82, $A, $12, $33, 4, $F
    .byte 8, $E2, 1, 0, 8, $E1, 1, 0

byte_10896E:
    .byte $93, $AC, $46, $F2, $68, $82, $A, $15, $33, 2, $12
    .byte $52, $80, $12, 8, $E7, 1, 0, 8, $E8, 1, 0

byte_108984:
    .import ServicemanAnim

    npc NPC_1, $AE00, $F200, LEFT, ServicemanAnim
    .byte $A, $19, $4F, $2C, $36
    .byte $E, 1, $15, 8, $34, 2, $3E, $B4, $89, 0, 8, $1F
    .byte 3, 0, $D, $5A, $2F, $4F, $2C, 8, $B6, 2, $27, $5A
    .byte $2F, $25, $5A, $2E, $2F, $3E, $B4, $89, 0, 8, $34
    .byte 2, 0, $F0, 1, $7C, 1, 0

byte_1089B9:
    npc NPC_1, $ABC0, $F200, RIGHT, stru_1581A8
    .byte $A, $4D, 8, $E3, 1, 9
    .byte $4A, $3E, 7, $8A, 8, $E4, 1, $3E, $10, $8A, $12
    .byte $35, $22, $3A, 2, $46, $64, 4, $78, $5A, $22, 0
    .byte $3A, 0, $46, $52, $40, $42, $52, $80, $46, $3A, 1
    .byte $46, $52, $80, $46, $3A, 2, $46, $52, $80, $46, $3A
    .byte 1, $46, $64, 4, $78, $5A, $22, $3F, $16, 0, 8, $DB
    .byte 0, 0, 8, $2F, 2, 0, 8, $E5, 1, 0, $32, 2, $30, 1
    .byte $32, 4, $F6, 1, 3, $74, 1, $76, 6, $F2, 1, 0

byte_108A17:
    .byte $D4, $AE, 6, $F2, $60, $80, 6, 1, $40, $86, $3E
    .byte $9E, $8A, 8, $E9, 1, 9, $17, 8, $EA, 1, 1, $1A, 8
    .byte $EB, 1, 8, $5A, 2, $19, 1, $51, $FF, $50, $1F, $44
    .byte $9D, $3E, $B6, $8A, 1, $62, 8, $F0, 1, $3E, $A5
    .byte $8A, $3A, 2, $39, $1A, 3, $39, $3E, $AA, $8A, $3E
    .byte $AD, $8A, 8, $F5, 1, $5A, $21, 4, $B4, $5A, $22
    .byte $3E, $B0, $8A, $42, 4, $86, $43, 3, $86, $10, $35
    .byte $19, 3, $31, 0, $86, $2E, $86, $26, 3, $5C, 1, $50
    .byte $19, 4, $2D, $86, 1, $50, 8, $EC, 1, 9, $69, 1, $2A
    .byte 8, $5D, 2, 9, $70, 1, $2A, 8, $F3, 1, 9, $77, 1
    .byte $2A, 8, $F4, 1, 9, $7E, 1, $2A, $3D, $46, $2C, 4
    .byte $4F, $3E, $B5, $8A, 0, $76, 4, $70, 1, $76, 2, 3
    .byte $70, 1, $76, 2, 3, $76, 1, 3, $F4, 1, 3, $74, 1
    .byte $F2, 1, 0, 0, $F6, 1, 3

byte_108AB9:
    .byte $D4, $AE, 4, $F2, $C8, $81, 6, $2B, $40, $13, $3E
    .byte $CD, $8A, 8, $9C, 2, $3E, $E6, $8A, 0, $76, 8, $F2
    .byte 1, $F4, 1, $F6, 1, $76, 3, $74, 2, $72, 1, $74, 1
    .byte $72, 2, $70, 1, $F6, 1, $F2, 1, 3, $34, 1, $32, 2
    .byte $30, 2, $32, 1, $30, 1, $32, 5, $12, 1, $14, 1, 3

byte_108AF7:
    .byte $14, $C3, $82, $F1, $C8, $81, 6, $2B, $35, $37, 8
    .byte $C2, 2, $3E, $2F, $8B, 8, $C3, 2, 1, $18, 8, $DE
    .byte 1, $55, 8, $DC, 1, 9, $15, 8, $DD, 1, $3A, 0, $30
    .byte $62, $30, $10, $63, 8, $30, 1, $11, $2B, $10, $2E
    .byte 0, 8, $1B, 1, $11, $2B, $10, $2E, 0, $36, 6, $30
    .byte 1, $32, 1, $F6, 1, $72, 2, $70, 1, $76, 3, $F4, 1
    .byte 0

byte_108B40:
    .byte $94, $C1, 4, $F1, $C8, $81, 6, $2E, $A, $D, 8, $C8
    .byte 1, 0

byte_108B4E:
    npc WALK_NPC, $C040, $F1C0, LEFT, stru_1581C8
    .byte $A, $37, $12, $63
    .byte $34, $63, $34, 8, $DF, 1, 9, $30, $29, $2C, $27
    .byte 0, $24, 8, $D2, 1, $63, $34, $2D, $37, $1F, $5C
    .byte 6, $11, $63, 0, 8, $C7, 1, $63, $34, $28, $37, 0
    .byte 8, $86, 1, 0, 8, $D3, 1, 0, 8, $2F, 3, 0

byte_108B86:
    .byte $19, $56, $80, $B2, $94, $81, $B, $22, 8, $1D, 2
    .byte $12, $74, $10, 1, $22, 8, $1E, 2, $27, 0, $1F, $25
    .byte $63, $2D, $22, $5C, 6, $10, $74, 0, 8, $9D, 3, 0

off_108BA9:
    .word byte_108BEB, byte_108BF3, byte_108BFB, byte_108C03
    .word byte_108C0B, byte_108C13, byte_108C26, byte_108C4F
    .word byte_108C5B, byte_108C67, byte_108C89, byte_108C95
    .word byte_108CA6, byte_108CCB, byte_108CD7, byte_108CE3
    .word byte_108CEF, byte_108CFB, byte_108D07, byte_108D13
    .word byte_108D28, byte_108D3D, byte_108D56, byte_108D5C
    .word byte_108D62, byte_108D68, byte_108D6E, byte_108D74
    .word byte_108D7A, byte_108D80, byte_108D86, byte_108D8C
    .word 0

byte_108BEB:
    entrance DOOR, $6E80, $EF00, UP, MUSIC_f, $7340, $2580, LEFT

byte_108BF3:
    entrance DOOR, $7980, $EB00, UP, MUSIC_12, $B740, $FD80, LEFT

byte_108BFB:
    entrance DOOR, $74C0, $EF00, UP, MUSIC_f, $9340, $2580, LEFT

byte_108C03:
    entrance DOOR, $69C0, $EF00, UP, MUSIC_12, $340, $4180, LEFT

byte_108C0B:
    entrance DOOR, $BB80, $F180, RIGHT, MUSIC_SAME, $AA80, $F280, RIGHT

byte_108C13:
    npc WALK_NPC, $B980, $F180, RIGHT, stru_1581E8
    .byte $A, $12, $12, $3B
    .byte $F, 8, $A0, 2, 0, 8, $F9, 1, 0

byte_108C26:
    npc STAT_NPC, $6C40, $EF40, RIGHT, stru_1581A8
    .byte $A, $28, $12, $36
    .byte $D, 1, $25, 8, $40, 1, 9, $17, 8, $41, 1, 1, $1A
    .byte 8, $42, 1, $5C, 6, $1D, $A7, 1, $28, $22, $1F, $10
    .byte $36, 0, 8, $43, 1, 0

byte_108C4F:
    npc WALK_NPC, $6C00, $F440, LEFT, stru_1581E8
    .byte $A, $B, 8, $47, 1, 0

byte_108C5B:
    npc WALK_NPC, $7080, $F080, DOWN, stru_158228
    .byte $A, $B, 8, $48, 1, 0

byte_108C67:
    npc WALK_NPC, $71C0, $EE00, UP, stru_158268
    .byte $A, $21, 8, $49, 1, 9
    .byte $1E, 8, $4A, 1, 9, $1A, $5A, $22, 8, $76, 3, $5A
    .byte 6, 0, 8, $4C, 1, 0, 8, $4B, 1, 0

byte_108C89:
    npc WALK_NPC, $7A00, $EBC0, RIGHT, ReceptionistAnim
    .byte $A, $B, 8, $5D, 1, 0

byte_108C95:
    npc NPC_1, $6A40, $F2C0, DOWN, ReceptionistAnim
    .byte $A, $10, 8, $56, 1
    .byte $3A, 0, $10, $59, 1, 0

byte_108CA6:
    npc WALK_NPC, $7580, $F300, LEFT, stru_158208
    .byte $A, $24, 8, $51, 1, 9
    .byte $21, 8, $52, 1, 8, $54, 1, $20, $21, $2C, $10, 8
    .byte $55, 1, $5C, 6, $25, $1B, $2D, $21, 0, 8, $53, 1, 0

byte_108CCB:
    npc WALK_NPC, $6F80, $EF80, DOWN, stru_158248
    .byte $A, $B, 8, $DE, 2, 0

byte_108CD7:
    npc WALK_NPC, $7700, $EEC0, LEFT, stru_158268
    .byte $A, $B, 8, $DF, 2, 0

byte_108CE3:
    npc WALK_NPC, $7800, $EC80, RIGHT, stru_158228
    .byte $A, $B, 8, $E0, 2, 0

byte_108CEF:
    npc WALK_NPC, $6FC0, $EC80, UP, stru_1582A8
    .byte $A, $B, 8, $E1, 2, 0

byte_108CFB:
    npc WALK_NPC, $6E80, $F280, DOWN, stru_158288
    .byte $A, $B, 8, $E2, 2, 0

byte_108D07:
    npc WALK_NPC, $7080, $EC80, RIGHT, stru_158228
    .byte $A, $B, 8, $E3, 2, 0

byte_108D13:
    npc WALK_NPC, $7580, $EF80, LEFT, stru_1581C8
    .byte $A, $14, 8, $3D, 1
    .byte 9, $11, 8, $3E, 1, 0, 8, $3F, 1, 0

byte_108D28:
    npc WALK_NPC, $70C0, $F2C0, RIGHT, stru_1581C8
    .byte $A, $14, 8, $44, 1
    .byte 9, $11, 8, $45, 1, 0, 8, $46, 1, 0

byte_108D3D:
    npc NPC_1, $7640, $F140, DOWN, stru_1582A8
    .byte $B, $C, 8, $59, 0
    .byte 0, $A, $12, 8, $CA, 0, 0, $C, 1, $18, 8, $4E, 1, 0

byte_108D56:
    .byte $69, $6B, 0, $F1, $EB, 0

byte_108D5C:
    .byte $E9, $6E, 0, $F1, $EB, 0

byte_108D62:
    .byte $69, $72, 0, $F1, $EB, 0

byte_108D68:
    .byte $E9, $75, 0, $F0, $EB, 0

byte_108D6E:
    .byte $69, $79, 0, $F0, $EB, 0

byte_108D74:
    .byte $69, $6B, $80, $ED, $EB, 0

byte_108D7A:
    .byte $E9, $6E, $80, $ED, $EB, 0

byte_108D80:
    .byte $69, $72, $80, $ED, $EB, 0

byte_108D86:
    .byte $E9, $75, $80, $EC, $EB, 0

byte_108D8C:
    .byte $69, $79, $80, $EC, $EB, 0

off_108D92:
    .word byte_108DB4, byte_108DD8, byte_108DED, byte_108DF9
    .word byte_108E05, byte_108E1A, byte_108E53, byte_108E5F
    .word byte_108E91, byte_108E9F, byte_108EAB, byte_108EB7
    .word byte_108EC3, byte_108ECF, byte_108EDB, byte_108EE1
    .word 0

byte_108DB4:
    .byte $18, $BE, $40, $C9, $36, $23, $35, $C, 8, $34, 3
    .byte 0, $D, $57, $18, 8, $36, 3, $3D, $4D, $B7, $86, $21
    .byte 0, $D, $56, $1D, 1, $20, $D, $55, $23, 8, $35, 3
    .byte 0

byte_108DD8:
    .import stru_158368

    npc WALK_NPC, $B2C0, $D600, RIGHT, stru_158368
    .byte $A, $14, 8, $5E, 1, 9
    .byte $11, 8, $5F, 1, 0, 8, $60, 1, 0

byte_108DED:
    .import stru_158348

    npc WALK_NPC, $B6C0, $D9C0, DOWN, stru_158348
    .byte $A, $B, 8, $68, 1, 0

byte_108DF9:
    .import stru_1583E8

    npc WALK_NPC, $B7C0, $DBC0, LEFT, stru_1583E8
    .byte $A, $B, 8, $69, 1, 0

byte_108E05:
    .import stru_158308

    npc WALK_NPC, $BD80, $D800, DOWN, stru_158308
    .byte $A, $14, 8, $6E, 1, 9
    .byte $11, 8, $6F, 1, 0, 8, $70, 1, 0

byte_108E1A:
    .byte $D5, $B9, $42, $DC, $28, $83, 5, $31, $A, $38, $1D
    .byte $E8, 3, 8, $6A, 1, 9, $33, $29, $2F, 8, $6D, 1, $14
    .byte 3, $16, 3, 3, $23, 8, $5B, 3, $10, $31, 0, $16, 3
    .byte 2, $2B, 8, $5A, 3, 0, 8, $99, 2, 0, 8, $B0, 2, 0
    .byte 8, $6C, 1, $10, $31, 0

byte_108E53:
    npc NPC_1, $BE00, $DC40, DOWN, stru_158368
    .byte $A, $B, 8, $71, 1, 0

byte_108E5F:
    .import stru_158328

    npc WALK_NPC, $BE40, $DD40, RIGHT, stru_158328
    .byte $A, $31, $12, $F4
    .byte $18, $12, $84, $12, 8, $78, 1, 0, 8, $79, 1, $10
    .byte $84, 0, $12, $38, $1F, 8, $58, 2, 0, 8, $76, 1, $27
    .byte 0, $2E, $25, $57, $2D, $31, $5C, 6, $10, $38, 0
    .byte 8, $42, 2, 0

byte_108E91:
    .byte $15, $BE, $44, $DD, 8, $83, 6, $F4, $A, $D, 8, $77
    .byte 1, 0

byte_108E9F:
    .import stru_1583C8

    npc WALK_NPC, $B500, $DDC0, RIGHT, stru_1583C8
    .byte $A, $B, 8, $E5, 2, 0

byte_108EAB:
    npc WALK_NPC, $B8C0, $E040, LEFT, stru_158328
    .byte $A, $B, 8, $E6, 2, 0

byte_108EB7:
    .import stru_158448

    npc WALK_NPC, $B6C0, $DE80, DOWN, stru_158448
    .byte $A, $B, 8, $E7, 2, 0

byte_108EC3:
    npc WALK_NPC, $B540, $E080, RIGHT, stru_158348
    .byte $A, $B, 8, $E8, 2, 0

byte_108ECF:
    npc WALK_NPC, $B640, $D600, LEFT, stru_158348
    .byte $A, $B, 8, $E4, 2, 0

byte_108EDB:
    .byte $E9, $B4, $40, $D6, $EC, 0

byte_108EE1:
    .byte $69, $B5, 0, $E0, $EC, 0

off_108EE7:
    .word byte_108F11, byte_108F19, byte_108F21, byte_108F29
    .word byte_108F31, byte_108F39, byte_108F4A, byte_108F56
    .word byte_108F6C, byte_108F78, byte_108F84, byte_108F90
    .word byte_108F9C, byte_108FAD, byte_108FBE, byte_108FCA
    .word byte_108FD6, byte_108FEB, byte_108FF7, byte_108FFD
    .word 0

byte_108F11:
    entrance DOOR, $D780, $F880, UP, MUSIC_SAME, $B440, $F140, DOWN

byte_108F19:
    entrance DOOR, $E040, $F3C0, UP, MUSIC_a, $B40, $4180, LEFT

byte_108F21:
    entrance DOOR, $F440, $F9C0, UP, MUSIC_SAME, $CB40, $2580, LEFT

byte_108F29:
    entrance DOOR, $E240, $F8C0, UP, MUSIC_SAME, $A340, $2580, LEFT

byte_108F31:
    entrance DOOR, $E340, $F8C0, UP, MUSIC_SAME, $EB40, $2180, LEFT

byte_108F39:
    npc WALK_NPC, $E000, $F600, LEFT, stru_1581A8
    .byte $A, $10, 8, $80, 1, $3A
    .byte 0, $10, $59, 1, 0

byte_108F4A:
    npc WALK_NPC, $E700, $F880, LEFT, stru_158248
    .byte $A, $B, 8, $82, 1, 0

byte_108F56:
    npc WALK_NPC, $E7C0, $F9C0, RIGHT, stru_158228
    .byte $A, $15, $33, 2, $12
    .byte $52, $80, $12, 8, $84, 1, 0, 8, $83, 1, 0

byte_108F6C:
    npc WALK_NPC, $E300, $F4C0, RIGHT, stru_158248
    .byte $A, $B, 8, $87, 1, 0

byte_108F78:
    npc STAT_NPC, $E180, $F880, LEFT, stru_1582A8
    .byte $A, $B, 8, $9D, 1, 0

byte_108F84:
    npc WALK_NPC, $D800, $F8C0, DOWN, stru_1581E8
    .byte $A, $B, 8, $E9, 2, 0

byte_108F90:
    npc WALK_NPC, $E8C0, $FAC0, RIGHT, stru_158288
    .byte $A, $B, 8, $EA, 2, 0

byte_108F9C:
    npc WALK_NPC, $E2C0, $F780, DOWN, stru_158228
    .byte $A, $10, 8, $EB, 2
    .byte $3A, 0, $10, $59, 1, 0

byte_108FAD:
    npc WALK_NPC, $E4C0, $F780, RIGHT, stru_1581A8
    .byte $A, $10, 8, $EC, 2
    .byte $3A, 0, $10, $59, 1, 0

byte_108FBE:
    npc WALK_NPC, $E680, $F500, LEFT, stru_158268
    .byte $A, $B, 8, $ED, 2, 0

byte_108FCA:
    npc WALK_NPC, $E5C0, $FA00, LEFT, stru_158228
    .byte $A, $B, 8, $7B, 1, 0

byte_108FD6:
    npc WALK_NPC, $E380, $F940, DOWN, stru_1581A8
    .byte $A, $14, 8, $7D, 1
    .byte 9, $11, 8, $7E, 1, 0, 8, $7F, 1, 0

byte_108FEB:
    .byte $19, $EA, $C0, $F9, $94, $81, $B, $B, 8, $AB, 3
    .byte 0

byte_108FF7:
    .byte $A9, $E3, $80, $FA, $ED, 0

byte_108FFD:
    .byte $A9, $E6, $C0, $FB, $ED, 0

off_109003:
    .word Pilot, Tank, Plain, DesertSign, byte_1091C5, R7037
    .word byte_1091F1, byte_1091F9, byte_109201, 0

Pilot:
    .import PilotAnim

    npc STAT_NPC2, $7CC0, $4840, DOWN, PilotAnim

    .byte 5, $17

    use_item TicketStub, NoTicket - Pilot
    reset_count 5
Stub:
    find_item TicketStub, NoStub - Pilot
    cash
    select_item TicketStub
    remove_item NoStub - Pilot
    inc_count 5
    cmp_count 5, 10, Stub - Pilot
    print $1AA
    set_flag FLAG11|BIT7
    end_script
NoStub:
    cmp_count 5, 1, NotEnough - Pilot
    find_item EMPTY, NotEnough - Pilot
    select_item TicketStub
    add_item NotEnough - Pilot
    dec_count 5
    jump NoStub - Pilot
NotEnough:
    print $251
    end_script
NoTicket:
    check_action TALK, PilotExit - Pilot
    check_flag FLAG11|BIT7, NotTank - Pilot
    print $3CE
    end_script
NotTank:
    check_flag FLAG7|BIT5, OneMine - Pilot
    print $1A7
    confirm RefuseRide - Pilot
    print $24D
    item_list FlightplanA, FlightplanB, FlightplanC, EMPTY, RefuseRide - Pilot
    clear_flag FLAG11|BIT6
    clear_flag FLAG11|BIT5
    clear_flag FLAG11|BIT4
    buying_item FlightplanA, FlightB - Pilot
    set_flag FLAG11|BIT6
    jump Offer - Pilot
FlightB:
    buying_item FlightplanB, FlightC - Pilot
    set_flag FLAG11|BIT5
    jump Offer - Pilot
FlightC:
    buying_item FlightplanC, Offer - Pilot
    set_flag FLAG11|BIT4
Offer:
    reset_count 0
    inc_count 0
    sel_char 1, FlightCost - Pilot
    check_status $80, Char2 - Pilot
    inc_count 0
Char2:
    sel_char 2, FlightCost - Pilot
    check_status $80, FlightCost - Pilot
    inc_count 0
FlightCost:
    total_price
    print $1A8
    pay LessMoney - Pilot
    reset_count 6
AddTicket:
    cmp_count 0, 1, GetAllTickets - Pilot
    find_item EMPTY, SubTicket - Pilot
    select_item TicketStub
    add_item SubTicket - Pilot
    inc_count 6
    dec_count 0
    jump AddTicket - Pilot
SubTicket:
    cmp_count 6, 1, NoSpace - Pilot
    find_item TicketStub, PilotExit - Pilot
    select_item TicketStub
    remove_item PilotExit - Pilot
    dec_count 6
    jump SubTicket - Pilot
NoSpace:
    print $23E
    check_flag FLAG11|BIT6, SubFlightB - Pilot
    select_item FlightplanA
    jump FinalOffer - Pilot
SubFlightB:
    check_flag FLAG11|BIT5, SubFlightC - Pilot
    select_item FlightplanB
    jump FinalOffer - Pilot
SubFlightC:
    select_item FlightplanC
FinalOffer:
    total_price
    get PilotExit - Pilot
    end_script
LessMoney:
    print $23F
    end_script
RefuseRide:
    print $1A9
    end_script
OneMine:
    print $1A6
    set_flag FLAG7|BIT5
PilotExit:
    end_script
GetAllTickets:
    play SOUND2, 6
    move Boarding
    another 2
    set_flag FLAG2|BIT0
    end_script
Boarding:
    .byte $30, 1, $14, 1, 0

Tank:
    .byte $1E, $7E, 4, $49, $2C, $8B, 5, $18, $35, $15, $12
    .byte $88, $15, $5A, $17, $48, 4, $10, $18, $10, $73, 0

Plain:
    .byte $DE, $7C, 6, $48, $14, $8B, 5, $19, $40, $48, $12
    .byte $89, $1F, $47, 6, $5A, $1E, $3E, $4D, $91, $4D, $3E
    .byte $B6, $91, $4C, 4, $5A, 8, $11, $17, 0, $12, $8A
    .byte $34, $47, 6, $5A, $1E, $3E, $84, $91, $4D, $3E, $B6
    .byte $91, $4C, 4, $5A, 8, $11, $17, 0, $12, $8B, $48
    .byte $47, 6, $5A, $1E, $3E, $9D, $91, $4D, $3E, $B6, $91
    .byte $4C, 4, $5A, 8, $11, $17, 0, $16, $33, $17, 5, $10
    .byte $A, $10, 2, $11, 2, $12, 4, $13, 2, $14, 4, $15
    .byte 2, $16, 4, $17, 2, $10, 4, $11, 2, $12, 4, $13, 2
    .byte $14, 4, $15, 2, $16, 4, $17, 2, $10, 1, $10, $43
    .byte $11, 5, $12, $B7, $13, 5, $14, $4C, $15, 5, $16
    .byte $7A, 3, $16, $D6, $15, $2E, $16, $32, $17, $A, $10
    .byte $40, $11, $D, $12, $C8, $12, $7A, $13, 8, $14, $19
    .byte $15, 8, $16, 5, 3, $16, $F, $17, 5, $10, $4C, $11
    .byte 5, $12, $C8, $12, $46, $13, $A, $14, $C3, $15, 5
    .byte $16, $54, $17, $7C, $16, $2A, 3, $16, $A, 0

DesertSign:
    .byte $59, $7A, $80, $48, $94, $81, $B, $B, 8, $A5, 1
    .byte 0

byte_1091C5:
    .byte $1F, $7E, 0, $49, 6, $73, $35, $10, $11, $18, $11
    .byte $73, $5A, 8, $4C, 0, 0

R7037:
    .byte $5C, $9D, $40, $46, 6, $73, $35, $1A, $44, $6F, $10
    .byte $78, $10, $90, $11, $73, $10, $17, $10, $19, $10
    .byte $1A, $5A, 8, $4C, 0, 0

byte_1091F1:
    entrance DOOR, $C140, $A000, UP, MUSIC_b, $E240, $9180, DOWN

byte_1091F9:
    entrance DOOR, $C340, $9D00, UP, MUSIC_SAME, $E340, $2D80, LEFT

byte_109201:
    .byte $98, $C1, 0, $92, $36, $A, $35, $A, $44, $A2, 0

off_10920C:
    .word byte_109244, byte_10924C, byte_109254, byte_10925C
    .word byte_109264, byte_10926C, byte_109274, byte_109283
    .word byte_10928F, byte_10929B, byte_1092A7, byte_1092B3
    .word byte_1092BF, byte_1092CB, byte_1092D7, byte_1092E3
    .word byte_1092EF, byte_1092FB, byte_109307, byte_109313
    .word byte_10931F, byte_10932B, byte_109334, byte_10933D
    .word byte_109346, byte_10934F, byte_10935B, 0

byte_109244:
    entrance DOOR, $B240, $6FC0, UP, MUSIC_SAME, $AF40, $F580, LEFT

byte_10924C:
    entrance DOOR, $B340, $6FC0, UP, MUSIC_SAME, $B40, $4580, LEFT

byte_109254:
    entrance DOOR, $E940, $5DC0, UP, MUSIC_12, $9740, $F980, LEFT

byte_10925C:
    entrance DOOR, $B140, $73C0, UP, MUSIC_SAME, $DB40, $2580, LEFT

byte_109264:
    entrance DOOR, $BA40, $6780, UP, MUSIC_f, $B440, $F940, DOWN

byte_10926C:
    entrance DOOR, $A880, $71C0, UP, MUSIC_SAME, $D740, $2180, LEFT

byte_109274:
    .import stru_158428

    npc NPC_1, $AD80, $6E00, LEFT, stru_158428
    .byte $A, $E, 8, $B1, 1, 8, 3, 0, 0

byte_109283:
    npc WALK_NPC, $AAC0, $7040, RIGHT, stru_1583C8
    .byte $A, $B, 8, $B5, 1, 0

byte_10928F:
    npc WALK_NPC, $B440, $72C0, DOWN, stru_158448
    .byte $A, $B, 8, $B3, 1, 0

byte_10929B:
    npc WALK_NPC, $AB00, $7100, UP, stru_158308
    .byte $A, $B, 8, $B6, 1, 0

byte_1092A7:
    npc WALK_NPC, $AF80, $7980, LEFT, stru_1583C8
    .byte $A, $B, 8, $B7, 1, 0

byte_1092B3:
    npc WALK_NPC, $B280, $7800, LEFT, stru_158308
    .byte $A, $B, 8, $B8, 1, 0

byte_1092BF:
    npc STAT_NPC, $AD00, $7440, UP, stru_1583E8
    .byte $A, $B, 8, $BA, 1, 0

byte_1092CB:
    .import stru_1583A8

    npc WALK_NPC, $AE80, $7440, UP, stru_1583A8
    .byte $A, $B, 8, $B9, 1, 0

byte_1092D7:
    .import stru_158388

    npc STAT_NPC, $ADC0, $7500, LEFT, stru_158388
    .byte $A, $B, 8, $BB, 1, 0

byte_1092E3:
    npc WALK_NPC, $AE80, $75C0, DOWN, stru_1583A8
    .byte $A, $B, 8, $BB, 1, 0

byte_1092EF:
    npc STAT_NPC, $AF00, $7080, DOWN, stru_1583C8
    .byte $A, $B, 8, $BC, 1, 0

byte_1092FB:
    npc STAT_NPC, $AA80, $7A80, RIGHT, stru_158308
    .byte $A, $B, 8, $C6, 1, 0

byte_109307:
    npc NPC_1, $BD40, $75C0, DOWN, stru_158308
    .byte $A, $B, 8, $B2, 1, 0

byte_109313:
    npc WALK_NPC, $B280, $70C0, RIGHT, stru_158308
    .byte $A, $B, 8, $B4, 1, 0

byte_10931F:
    npc WALK_NPC, $A880, $7340, DOWN, stru_1583C8
    .byte $A, $B, 8, $B0, 1, 0

byte_10932B:
    .byte $5B, $AD, $80, $6D, $35, 8, $5A, 8, 0

byte_109334:
    .byte $5B, $AD, $C0, $6D, $35, 8, $5A, $30, 0

byte_10933D:
    .byte $5B, $BD, 0, $76, $35, 8, $5A, 6, 0

byte_109346:
    .byte $1B, $BD, 0, $76, $35, 8, $5A, $30, 0

byte_10934F:
    .byte $19, $BD, $C0, $75, $94, $81, $B, $B, 8, $B2, 3
    .byte 0

byte_10935B:
    .byte $A9, $AC, $80, $6F, $EE, 0

byte_109361:
    .word stru_1093B1, stru_1093B9, stru_1093C1, stru_1093C9
    .word stru_1093D1, stru_1093D9, stru_1093E1, stru_1093E9
    .word stru_1093F5, stru_109401, stru_10940D, stru_109419
    .word stru_10943E, stru_10946E, stru_10948A, stru_109496
    .word stru_1094C6, stru_1094E2, stru_1094FE, stru_10951A
    .word stru_109536, stru_109552, stru_10956E, stru_10957A
    .word stru_109586, stru_109592, stru_10959E, stru_1095BD
    .word stru_1095CD, stru_1095D4, stru_1095E0, stru_1095EC
    .word stru_1095F8, stru_109604, stru_10960A, stru_109610
    .word stru_109616, stru_10961C, stru_109622, 0

stru_1093B1:
    entrance DOOR, $C580, $4600, UP, MUSIC_f, $B40, $5580, LEFT

stru_1093B9:
    entrance DOOR, $C8C0, $4B00, UP, MUSIC_22, $AEC0, $F200, LEFT

stru_1093C1:
    entrance DOOR, $C7C0, $4600, UP, MUSIC_f, $B40, $2D80, LEFT

stru_1093C9:
    entrance DOOR, $C1C0, $4B00, UP, MUSIC_12, $AF40, $FD80, LEFT

stru_1093D1:
    entrance DOOR, $C2C0, $4B00, UP, MUSIC_12, $BF40, $FD80, LEFT

stru_1093D9:
    entrance DOOR, $B840, $33C0, UP, MUSIC_f, $B40, $3580, LEFT

stru_1093E1:
    entrance DOOR, $C280, $4800, UP, MUSIC_12, $C340, $F180, LEFT

stru_1093E9:
    .import stru_158784

    npc WALK_NPC, $D000, $42C0, DOWN, stru_158784
    .byte $A, $B, 8, $CA, 1, 0

stru_1093F5:
    .import stru_15875C

    npc WALK_NPC, $CB80, $43C0, DOWN, stru_15875C
    .byte $A, $B, 8, $CB, 1, 0

stru_109401:
    npc WALK_NPC, $CB80, $4680, LEFT, stru_158784
    .byte $A, $B, 8, $CC, 1, 0

stru_10940D:
    .import stru_1586BC

    npc WALK_NPC, $C440, $4980, RIGHT, stru_1586BC
    .byte $A, $B, 8, $CD, 1, 0

stru_109419:
    .import stru_15873C

    npc WALK_NPC, $C5C0, $4A80, LEFT, stru_15873C
    .byte $A, $24, $33, 2, $21, $52, $80, $21, $33, 1, $21, $52
    .byte $80, $21, 8, $CE, 1, 9, $1D, 8, $CF, 1, 0, 8, $D0
    .byte 1, 0, 8, $CF, 1, 0

stru_10943E:
    npc WALK_NPC, $C980, $4BC0, LEFT, stru_15873C
    .byte $A, $2F, $1D, $B0, 4, 8, $D1, 1, 9, $2C, $29, $28, $27
    .byte 0, $1F, $5C, 6, $25, $5A, $2D, $2F, 8, $D2, 1, 0
    .byte 8, $C7, 1, $1D, $B0, 4, $28, $2F, 0, 8, $86, 1, 0
    .byte 8, $D3, 1, 0

stru_10946E:
    npc WALK_NPC, $CB00, $48C0, RIGHT, stru_15875C
    .byte $A, $1B, $33, 4, $F, 8, $5B, 2, 0, 8, $D4, 1, 9, $18
    .byte 8, $D5, 1, 0, 8, $D6, 1, 0

stru_10948A:
    npc WALK_NPC, $D1C0, $49C0, DOWN, stru_1586BC
    .byte $A, $B, 8, $FD, 1, 0

stru_109496:
    .byte $D4, $C8, $44, $4B, $FC, $86
    .byte 6, $1A, $A, $27, $1D, $C8, 0, 8, $AB, 1, 9, $24
    .byte $29, $20, 8, $AD, 1, $3E, $BE, $94, $11, $1A, $3E
    .byte $C5, $94, 0, 8, $E0, 1, 0, 8, $AE, 1, 0, $76, 4
    .byte $F2, 1, $76, 4, 3, 0

stru_1094C6:
    .import stru_15869C

    npc WALK_NPC, $C7C0, $4C40, UP, stru_15869C
    .byte $A, $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0, 8
    .byte $69, 3, 0, 8, $F2, 2, $44, $9E, 0

stru_1094E2:
    npc WALK_NPC, $C900, $4940, RIGHT, stru_15869C
    .byte $A, $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0, 8
    .byte $69, 3, 0, 8, $F3, 2, $44, $9E, 0

stru_1094FE:
    npc WALK_NPC, $C7C0, $4700, LEFT, stru_15869C
    .byte $A, $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0, 8
    .byte $69, 3, 0, 8, $F4, 2, $44, $9E, 0

stru_10951A:
    npc WALK_NPC, $C0C0, $4B80, RIGHT, stru_15869C
    .byte $A, $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0, 8
    .byte $69, 3, 0, 8, $F5, 2, $44, $9E, 0

stru_109536:
    npc WALK_NPC, $C180, $4C00, LEFT, stru_15869C
    .byte $A, $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0, 8
    .byte $69, 3, 0, 8, $F6, 2, $44, $9E, 0

stru_109552:
    npc WALK_NPC, $C400, $4680, DOWN, stru_15869C
    .byte $A, $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0, 8
    .byte $69, 3, 0, 8, $F7, 2, $44, $9E, 0

stru_10956E:
    npc WALK_NPC, $C340, $3F00, DOWN, stru_1586BC
    .byte $A, $B, 8, $F8, 2, 0

stru_10957A:
    .import stru_1586DC

    npc WALK_NPC, $C780, $42C0, UP, stru_1586DC
    .byte $A, $B, 8, $F9, 2, 0

stru_109586:
    npc WALK_NPC, $CA80, $3E80, DOWN, stru_15873C
    .byte $A, $B, 8, $FA, 2, 0

stru_109592:
    npc WALK_NPC, $D100, $40C0, LEFT, stru_15869C
    .byte $A, $B, 8, $C9, 1, 0

stru_10959E:
    .byte $D4, $C8, $86, $4B, $1C, $87, 6, $2B
    .byte $35, $D, $3E, $AC, $95, 0, $36, $14, $30, 1, $31
    .byte $A, $30, 1, $36, $F, $30, 1, $10, 1, $16, 1, 3

stru_1095BD:
    .import stru_1586FC

    npc NPC_1, $C880, $3000, UP, stru_1586FC
    .byte $A, $F, 8, $F1, 2, $55, 8, $55, 3, 0

stru_1095CD:
    .byte $E5, $C8, $C0, $4A, $7C, $87, 0

stru_1095D4:
    .byte $99, $C2, $40, $3F, $94, $81, $B, $B, 8, $A6, 3, 0

stru_1095E0:
    .byte $99, $CE, $40, $43, $94, $81, $B, $B, 8, $A7, 3, 0

stru_1095EC:
    .byte $59, $C2, $40, $48, $94, $81, $B, $B, 8, $B4, 3, 0

stru_1095F8:
    .byte $19, $B8, 0, $34, $94, $81, $B, $B, 8, $18, 2, 0

stru_109604:
    .byte $29, $C2, 0, $4A, $EF, 0

stru_10960A:
    .byte $A9, $C5, 0, $4A, $EF, 0

stru_109610:
    .byte $29, $C9, 0, $4A, $EF, 0

stru_109616:
    .byte $29, $C2, $80, $46, $EF, 0

stru_10961C:
    .byte $A9, $C5, $80, $46, $EF, 0

stru_109622:
    .byte $29, $C9, $80, $46, $EF, 0

off_109628:
    .word byte_109634, byte_109642, byte_109650, byte_10965C
    .word byte_109668, 0

byte_109634:
    .byte $54, $43, $C6, $65, $C8, $81, 5, $77, $A, $D, 8
    .byte $F5, 0, 0

byte_109642:
    .byte $54, $43, 6, $66, $C8, $81, 5, $77, $A, $D, 8, $F5
    .byte 0, 0

byte_109650:
    .byte $D9, $2E, $C0, $7C, $94, $81, $B, $B, 8, $A8, 3
    .byte 0

byte_10965C:
    .byte $19, $42, $40, $65, $94, $81, $B, $B, 8, $A9, 3
    .byte 0

byte_109668:
    .byte $99, $34, $C0, $42, $94, $81, $B, $B, 8, $AA, 3
    .byte 0

off_109674:
    .word byte_109688, byte_109690, byte_109698, byte_1096A0
    .word byte_1096A8, byte_1096C2, byte_1096D4, byte_1096E6
    .word byte_1096F8, 0

byte_109688:
    entrance HOLE, $3680, $8D80, UP, MUSIC_11, $C780, $2100, LEFT

byte_109690:
    entrance DOOR, $CF80, $2180, RIGHT, MUSIC_SAME, $C440, $22C0, RIGHT

byte_109698:
    entrance DOOR, $C780, $20C0, UP, MUSIC_d, $3680, $8D80, DOWN

byte_1096A0:
    entrance DOOR, $C400, $22C0, LEFT, MUSIC_SAME, $CF40, $2180, LEFT

byte_1096A8:
    .byte $21, $CD, $C0, $21, $58, $85, 5, $1B, $B, $16, 8
    .byte $7E, 3, $10, $1F, $10, $1B, $3F, 8, $3E, $BF, $96
    .byte 0, $50, 1, 0

byte_1096C2:
    .byte $A1, $CD, $40, $21, $58, $85, 5, $1C, $B, $11, 8
    .byte $7E, 3, $44, $10, $10, $1C, 0

byte_1096D4:
    .byte $61, $CE, $40, $21, $58, $85, 5, $1D, $B, $11, 8
    .byte $7E, 3, $44, $10, $10, $1D, 0

byte_1096E6:
    .byte $E1, $CE, $C0, $21, $58, $85, 5, $1E, $B, $11, 8
    .byte $7E, 3, $44, $10, $10, $1E, 0

byte_1096F8:
    .byte $14, $CD, $C4, $21, $80, $80, 6, $1F, $A, $49, 8
    .byte $65, 0, 9, $14, 8, $66, 0, 1, $31, 8, $67, 0, 9
    .byte $2E, 8, $68, 0, $27, 0, $29, $25, $68, $2D, $54
    .byte $5C, 6, $10, $62, 1, $31, 8, $49, 2, 1, $31, 8, $69
    .byte 0, 8, $48, 2, $5A, $21, 4, $B4, $5A, $11, $3E, $4D
    .byte $97, 8, $66, 3, $3E, $58, $97, $42, 5, $54, $11
    .byte $1F, 0, $40, $54, $3E, $61, $97, $5A, $1D, 4, $B4
    .byte $5A, $11, 0, $31, 1, $32, 8, $F6, 1, $F2, 1, $F6
    .byte 1, 3, $34, 1, $76, 1, $70, 1, $F2, 1, 0, $F4, 1
    .byte 0

off_109764:
    .word byte_10979C, byte_1097B3, byte_1097C4, byte_1097E3
    .word byte_1097EA, byte_1097F1, byte_1097F8, byte_1097FF
    .word byte_109806, byte_10980D, byte_109814, byte_10981B
    .word byte_109822, byte_109829, byte_109830, byte_109837
    .word byte_10983E, byte_109845, byte_10984C, byte_109853
    .word byte_10985A, byte_109861, byte_109868, byte_109888
    .word byte_10989C, byte_1098A7, byte_1098B6, 0

byte_10979C:
    .byte $98, $2F, $C0, $3C, $36, $16, $35, $16, $12, $D
    .byte $11, $3D, $40, $7B, $86, $21, 0, $3D, $6E, $7B, $86
    .byte $21, 0

byte_1097B3:
    .byte $D9, $30, $C0, $36, $68, $88, $B, $10, 8, $62, 3
    .byte $12, $D, $10, $3F, 2, 0

byte_1097C4:
    .byte $15, $30, $44, $36, $C4, $87, 6, $D, $40, $1B, 8
    .byte $5D, 3, $3E, $E0, $97, $5A, $26, 4, $F0, $5A, $12
    .byte $10, $F5, 8, $40, 3, 0, $F4, 1, 0

byte_1097E3:
    .byte $19, $2A, 0, $36, $9C, $88, 0

byte_1097EA:
    .byte $99, $2A, $40, $36, $9C, $88, 0

byte_1097F1:
    .byte $E2, $1B, $46, $3B, $78, $88, 0

byte_1097F8:
    .byte $E2, $1C, $C6, $3B, $78, $88, 0

byte_1097FF:
    .byte $62, $1B, $42, $3C, $78, $88, 0

byte_109806:
    .byte $E2, $1B, 4, $3C, $78, $88, 0

byte_10980D:
    .import stru_158844

    npc WALK_NPC, $2200, $3C40, RIGHT, stru_158844
    end_script

byte_109814:
    npc WALK_NPC, $2240, $3CC0, LEFT, stru_158844
    end_script

byte_10981B:
    npc WALK_NPC, $2080, $3D40, DOWN, stru_158844
    end_script

byte_109822:
    npc WALK_NPC, $21C0, $3C80, RIGHT, stru_158844
    end_script

byte_109829:
    .byte $99, $2E, 0, $38, $98, $88, 0

byte_109830:
    .byte $19, $2E, $40, $38, $98, $88, 0

byte_109837:
    .byte $19, $2F, $40, $38, $98, $88, 0

byte_10983E:
    .byte $D9, $2D, $40, $39, $98, $88, 0

byte_109845:
    npc STAT_NPC, $2500, $3840, DOWN, stru_1587C4
    end_script

byte_10984C:
    npc STAT_NPC, $2540, $3900, RIGHT, stru_1587C4
    end_script

byte_109853:
    .import stru_1587C4

    npc WALK_NPC, $2480, $3940, RIGHT, stru_1587C4
    end_script

byte_10985A:
    npc STAT_NPC, $25C0, $3940, DOWN, stru_1587C4
    end_script

byte_109861:
    .byte $64, $1F, $80, $40, $64, $88, 0

byte_109868:
    .byte $54, $1F, 4, $41, $C4, $87, 5, $21, $35, $C, 1, $E
    .byte $A, $1F, 8, $6D, 0, $27, $56, $1F, 8, $42, 3, $25
    .byte $56, $2E, $1F, $3B, $26, $10, $21, 0

byte_109888:
    .byte $5D, $1F, $C0, $40, $6C, $88, 5, $20, $B, $C, 1
    .byte $E, $35, $13, 8, $67, 3, $10, $20, 0

byte_10989C:
    .byte $5F, $1F, 0, $41, 6, $21, $35, $A, $5A, 6, 0

byte_1098A7:
    .byte $5B, $1F, $40, $40, $35, $E, $12, $D, $C, $5A, $12
    .byte 0, $5A, $11, 0

byte_1098B6:
    .byte $59, $2F, 0, $3D, $94, $81, $B, $B, 8, $17, 2, 0

off_1098C2:
    .word byte_1098CA, byte_1098D2, byte_10990E, 0

byte_1098CA:
    entrance DOOR, $5240, $39C0, UP, MUSIC_31, $F080, $8540, DOWN

byte_1098D2:
    npc NPC_1, $3F80, $34C0, LEFT, stru_1581C8
    .byte $A, $24, $12, $D, $1C
    .byte $4F, $20, 8, $71, 3, $3F, 2, $36, $18, $3E, 2, $99
    .byte 0, $3E, 9, $99, 0, 8, $70, 3, 0, 8, $71, 3, 0, $40
    .byte $2F, $36, $2C, $3E, 2, $99, 0, $3E, 9, $99, 0, $F2
    .byte 1, $7E, 2, $78, 1, 0, $7A, 2, $78, 1, 0

byte_10990E:
    npc NPC_1, $3F80, $3500, LEFT, stru_1581C8
    .byte $A, $2A, $12, $D, $1F
    .byte $4F, $23, 8, $B9, 3, 8, $72, 3, $3F, 1, $36, $1B
    .byte $3E, $44, $99, 0, $3E, $4B, $99, 0, 8, $70, 3, 0
    .byte 8, $B9, 3, 8, $72, 3, 0, $40, $35, $36, $32, $3E
    .byte $44, $99, 0, $3E, $4B, $99, 0, $F2, 1, $7E, 3, $7C
    .byte 1, 0, $7A, 1, $7C, 1, 0

off_109950:
    .word byte_10995E, byte_109966, byte_10996E, byte_109979
    .word byte_10999C, byte_1099A4, 0

byte_10995E:
    entrance DOOR, $6C80, $73C0, RIGHT, MUSIC_SAME, $240, $FE80, RIGHT

byte_109966:
    entrance DOOR, $5980, $9380, UP, MUSIC_31, $F980, $8240, DOWN

byte_10996E:
    .byte $9F, $48, $C0, $53, 5, $85, 2, $79, $99, $B, 0

byte_109979:
    .byte $DF, $48, $C0, $53, 5, $85, 2, $79, $99, $B, 0, $35
    .byte $22, 8, $9B, 1, $27, 0, $1F, $25, $59, 8, $5E, 2
    .byte $5C, 6, $2D, $22, $10, $85, 3, 8, $9D, 3, 3

byte_10999C:
    entrance DOOR, $5580, $95C0, UP, MUSIC_c, $1C40, $6B80, LEFT

byte_1099A4:
    .byte $59, $55, 0, $96, $94, $81, $B, $B, 8, $C9, 3, 0
off_1099B0:
     .word byte_1099B6, byte_1099BE, 0

byte_1099B6:
    entrance DOOR, $6C80, $B8C0, UP, MUSIC_SAME, $5980, $FE80, LEFT

byte_1099BE:
    .byte $99, $77, $40, $D0, $94, $81, $B, $B, 8, $B0, 3
    .byte 0

off_1099CA:
    .word byte_1099D8, byte_1099E0, byte_1099E8, byte_1099F0
    .word byte_1099F8, byte_109A04, 0

byte_1099D8:
    entrance DOOR, $B480, $CFC0, RIGHT, MUSIC_SAME, $240, $8280, RIGHT

byte_1099E0:
    entrance DOOR, $A9C0, $D500, UP, MUSIC_12, $9740, $F580, LEFT

byte_1099E8:
    entrance DOOR, $A9C0, $DB00, UP, MUSIC_11, $340, $3980, LEFT

byte_1099F0:
    entrance DOOR, $AA40, $CF80, UP, MUSIC_f, $A440, $F940, DOWN

byte_1099F8:
    .byte $99, $AB, $40, $D5, $94, $81, $B, $B, 8, $B1, 3
    .byte 0

byte_109A04:
    .byte $59, $BD, 0, $D1, $94, $81, $B, $B, 8, $B3, 3, 0

off_109A10:
     .word byte_109A14, 0

byte_109A14:
    entrance DOOR, $D080, $F1C0, UP, MUSIC_SAME, $1D80, $8280, LEFT

off_109A1C:
    .word byte_109A28, byte_109A30, byte_109A39, byte_109A42
    .word byte_109A4B, 0

byte_109A28:
    entrance DOOR, $9E40, $63C0, UP, MUSIC_31, $FF40, $7940, DOWN

byte_109A30:
    .byte $1B, $61, 0, $4B, $35, 8, $5A, 6, 0

byte_109A39:
    .byte $1B, $61, $40, $4B, $35, 8, $5A, 6, 0

byte_109A42:
    .byte $9B, $61, 0, $4B, $35, 8, $5A, 8, 0

byte_109A4B:
    .byte $9B, $61, $40, $4B, $35, 8, $5A, 8, 0

off_109A54:
    .word byte_109A6E, byte_109A76, byte_109A81, byte_109A8D
    .word byte_109A99, byte_109AA5, byte_109ABD, byte_109AC9
    .word byte_109AE5, byte_109AF4, byte_109AFC, byte_109B04
    .word 0

byte_109A6E:
    entrance HOLE, $9E80, $4480, UP, MUSIC_18, $1440, $7300, DOWN

byte_109A76:
    .byte $5C, $9D, $40, $46, 5, $78, $35, $A, $44, $6F, 0

byte_109A81:
    .byte $D9, $68, 0, $3F, $64, $85, $A, $B, 8, $9E, 1, 0

byte_109A8D:
    .byte $59, $A3, 0, $41, $64, $85, $A, $B, 8, $9F, 1, 0

byte_109A99:
    .byte $19, $70, $40, $49, $64, $85, $A, $B, 8, $A0, 1
    .byte 0

byte_109AA5:
    .byte $99, $85, 0, $40, $64, $85, $A, $17, 8, $A1, 1, 9
    .byte $11, 8, $A2, 1, 0, 8, $A3, 1, 1, $B, 0, 0

byte_109ABD:
    .byte $19, $8B, 0, $4D, $64, $85, $A, $B, 8, $A4, 1, 0

byte_109AC9:
    .byte $98, $6F, $40, $43, $B, $A, 8, $59, 0, 0, $C, 1
    .byte $1B, 8, $5E, 3, $5A, $28, 4, $F0, $5A, 8, $10, $F3
    .byte 8, $40, 3, 0

byte_109AE5:
    .byte $5F, $A9, $40, $41, 5, $3B, $35, $E, $68, 8, $A1
    .byte 2, $10, $3B, 0

byte_109AF4:
    entrance DOOR, $200, $FE80, LEFT, MUSIC_6, $6C40, $73C0, LEFT

byte_109AFC:
    entrance DOOR, $59C0, $FE80, RIGHT, MUSIC_6, $6C80, $B900, DOWN

byte_109B04:
    .byte $19, $16, $C0, $FE, $64, $85, $A, $B, 8, $E2, 3
    .byte 0

off_109B10:
    .word 0

off_109B12:
    .word byte_109B18, byte_109B20, 0

byte_109B18:
    entrance DOOR, $F940, $53C0, UP, MUSIC_13, $E680, $3E40, DOWN

byte_109B20:
    .byte $19, $D8, $80, $4E, $94, $81, $B, $B, 8, $AC, 3, 0

off_109B2C:
    .word PodHospitalOut, PodHospitalUp, PodDoctorIn, PodDoctorOut
    .word byte_109B80, byte_109B88, byte_109B90, byte_109B98
    .word byte_109BA0, byte_109BA8, byte_109BB0, byte_109BB8
    .word byte_109BC0, byte_109BC8, byte_109BD0, byte_109BD8
    .word PodDoctor, byte_109C2C, byte_109C3A, PodNurse
    .word byte_109CB7, byte_109CC5, byte_109CD3, byte_109CE1
    .word byte_109CED, 0

PodHospitalOut:
    entrance DOOR, $C780, $FD80, RIGHT, MUSIC_6, $2FC0, $6F40, DOWN

PodHospitalUp:
    entrance STAIRS, $C480, $FD40, LEFT, MUSIC_SAME, $C080, $2180, RIGHT

PodDoctorIn:
    entrance DOOR, $C600, $FCC0, UP, MUSIC_SAME, $340, $2180, LEFT

PodDoctorOut:
    entrance DOOR, $380, $2180, RIGHT, MUSIC_SAME, $C600, $FD00, DOWN

byte_109B80:
    entrance DOOR, $380, $5180, RIGHT, MUSIC_6, $5B80, $7040, DOWN

byte_109B88:
    entrance DOOR, $40, $5180, LEFT, MUSIC_SAME, $A740, $F580, LEFT

byte_109B90:
    entrance DOOR, $A780, $F580, RIGHT, MUSIC_SAME, $80, $5180, RIGHT

byte_109B98:
    entrance DOOR, $B780, $FD80, RIGHT, MUSIC_6, $7980, $EB40, DOWN

byte_109BA0:
    entrance STAIRS, $B480, $FD40, LEFT, MUSIC_SAME, $480, $5580, RIGHT

byte_109BA8:
    entrance DOOR, $B580, $FCC0, UP, MUSIC_SAME, $9340, $2180, LEFT

byte_109BB0:
    entrance DOOR, $9380, $2180, RIGHT, MUSIC_SAME, $B580, $FD00, DOWN

byte_109BB8:
    entrance DOOR, $BF80, $FD80, RIGHT, MUSIC_6, $C2C0, $4B40, DOWN

byte_109BC0:
    entrance STAIRS, $BC80, $FD40, LEFT, MUSIC_SAME, $D480, $2580, RIGHT

byte_109BC8:
    entrance DOOR, $BD80, $FCC0, UP, MUSIC_SAME, $B740, $2580, LEFT

byte_109BD0:
    entrance DOOR, $B80, $4980, RIGHT, MUSIC_SAME, $D580, $2500, DOWN

byte_109BD8:
    entrance DOOR, $B80, $5180, RIGHT, MUSIC_SAME, $D640, $2500, DOWN

PodDoctor:
    .import DoctorAnim

    npc NPC_1, $100, $2100, DOWN, DoctorAnim
    .byte $1D, $19, 0, 2, $E0, $9B
    .byte $E, 0, $A, $4B, 8, $D, 3, 9, $3E, $29, $48, $3A
    .byte 1, $1E, $18, $3C, 1, $21, $3A, 0, $21, $52, $80
    .byte $42, $50, $2F, $52, 3, $2F, 8, $F, 3, $28, $4B, 3
    .byte $51, $FF, $50, $2F, $53, $FC, $1F, $5C, 7, 8, $10
    .byte 3, 3, $28, $4B, 8, $E, 3, 3, $28, $4B, 8, $19, 2
    .byte 3, 8, $3F, 2, 3

byte_109C2C:
    npc NPC_1, $9100, $2100, DOWN, DoctorAnim
    .byte $1D, $3C, 0, 2, $E0, $9B, $E, 0

byte_109C3A:
    npc NPC_1, $A500, $F500, DOWN, DoctorAnim
    .byte $A, $44, $58, $32, $32
    .byte 8, $F1, 0, 9, $40, $58, $32, $32, $29, $44, $3A
    .byte 0, $39, $52, $80, $39, $53, $FC, $51, $FF, $50, $1D
    .byte $3A, 1, $39, $52, $80, $39, $53, $FC, $51, $FF, $50
    .byte $29, $3A, 2, $39, $52, $80, $39, $53, $FC, $51, $FF
    .byte $50, $35, $5C, 7, $1F, 8, $F3, 0, 0, 8, $F4, 0, 0, 0

PodNurse:
    .import NurseAnim

    npc NPC_1, $C540, $FD00, DOWN, NurseAnim

    price 125
    call PodNurse, PodNurseCall - PodNurse
    end_script
PodNurseCall:
    check_action TALK, PodNurseExit - PodNurse
    print $31A
    .byte $18, $34, $52, $80
    .byte $1A, 1, $30, 8, $19, 3, 9, $2C, $29, $28, $53, 0
    .byte $1F, 8, $B, 3, 3, 8, $3A, 3, 3, 8, $C, 3, 3, 8, $A4
    .byte 2, 3, 8, $A3, 2
PodNurseExit:
    return

byte_109CB7:
    npc NPC_1, $B500, $FD00, DOWN, NurseAnim
    .byte $1D, $2C, 1, 2, $7F, $9C, $E, 0

byte_109CC5:
    npc NPC_1, $BD00, $FD00, RIGHT, NurseAnim
    .byte $1D, $E0, 1, 2, $7F, $9C, $E, 0

byte_109CD3:
    npc NPC_1, $200, $5100, DOWN, NurseAnim
    .byte $1D, $BE, 0, 2, $7F, $9C, $E, 0

byte_109CE1:
    .import stru_15852C

    npc WALK_NPC, $B500, $FDC0, LEFT, stru_15852C
    .byte $A, $B, 8, $A5, 2, 0

byte_109CED:
    .import PharmacistAnim

    npc WALK_NPC, $B580, $FDC0, RIGHT, PharmacistAnim
    .byte $A, $B, 8, $A6, 2, 0

off_109CF9:
    .word PodHotelOut, PodHotelUp, PodHotelRoom1Out, PodHotelRoom2Out
    .word byte_109D53, byte_109D5B, byte_109D63, byte_109D6B
    .word byte_109D73, byte_109D7B, byte_109D83, byte_109D8B
    .word byte_109D93, byte_109D9B, byte_109DA3, byte_109DAB
    .word PodHotelOwner, byte_109DDC, byte_109DEA, byte_109DF8
    .word byte_109E06, PodHotelNPC1, byte_109E2B, PodHotelNPC2
    .word byte_109E43, byte_109E4F, byte_109E5B, byte_109E67
    .word 0

PodHotelOut:
    entrance DOOR, $9780, $ED80, RIGHT, MUSIC_6, $31C0, $6940, DOWN

PodHotelUp:
    entrance STAIRS, $9480, $ED40, LEFT, MUSIC_SAME, $80, $2980, RIGHT

PodHotelRoom1Out:
    entrance DOOR, $B380, $2180, RIGHT, MUSIC_SAME, $180, $2900, DOWN

PodHotelRoom2Out:
    entrance DOOR, $D380, $2180, RIGHT, MUSIC_SAME, $240, $2900, DOWN

byte_109D53:
    entrance DOOR, $AF80, $F580, RIGHT, MUSIC_30, $B240, $7000, DOWN

byte_109D5B:
    entrance DOOR, $AC80, $F540, LEFT, MUSIC_SAME, $8740, $2580, LEFT

byte_109D63:
    entrance DOOR, $AC00, $F5C0, LEFT, MUSIC_SAME, $6F40, $2580, LEFT

byte_109D6B:
    entrance DOOR, $B780, $F580, RIGHT, MUSIC_6, $5AC0, $7340, DOWN

byte_109D73:
    entrance STAIRS, $B480, $F540, LEFT, MUSIC_SAME, $C080, $FD80, RIGHT

byte_109D7B:
    entrance DOOR, $BB80, $2180, RIGHT, MUSIC_SAME, $C180, $FD00, DOWN

byte_109D83:
    entrance DOOR, $DB80, $2180, RIGHT, MUSIC_SAME, $C240, $FD00, DOWN

byte_109D8B:
    entrance STAIRS, $9C40, $F180, LEFT, MUSIC_SAME, $C0C0, $FD40, RIGHT

byte_109D93:
    entrance DOOR, $AF80, $FD80, RIGHT, MUSIC_6, $C1C0, $4B40, DOWN

byte_109D9B:
    entrance STAIRS, $AC80, $FD40, LEFT, MUSIC_SAME, $7C80, $2580, RIGHT

byte_109DA3:
    entrance DOOR, $380, $4180, RIGHT, MUSIC_6, $69C0, $EF40, DOWN

byte_109DAB:
    entrance STAIRS, $80, $4140, LEFT, MUSIC_SAME, $480, $3580, RIGHT

PodHotelOwner:
    npc WALK_NPC, $9600, $ED00, DOWN, ReceptionistAnim
    .byte $1D, $27, 0, 2, $B3
    .byte $9D, $E, 0, $A, $28, $45, 8, $15, 3, 9, $25, $29
    .byte $21, 8, $17, 3, $55, $1F, 8, $18, 3, 3, 8, $3A, 3
    .byte 3, 8, $16, 3, 3

byte_109DDC:
    npc WALK_NPC, $200, $4100, DOWN, ReceptionistAnim
    .byte $1D, $64, 0, 2, $B3, $9D, $E, 0

byte_109DEA:
    npc WALK_NPC, $AE00, $FD00, DOWN, ReceptionistAnim
    .byte $1D, $A5, 0, 2, $B3, $9D, $E, 0

byte_109DF8:
    npc WALK_NPC, $B600, $F500, DOWN, ReceptionistAnim
    .byte $1D, $41, 0, 2, $B3, $9D, $E, 0

byte_109E06:
    npc WALK_NPC, $AD40, $F500, DOWN, stru_158228
    .byte $A, $18, 8, $1C, 3, 9
    .byte $15, 8, $17, 3, $55, 8, $1D, 3, 0, 8, $1E, 3, 0

PodHotelNPC1:
    npc WALK_NPC, $9540, $ED80, DOWN, stru_158288
    .byte $A, $B, 8, $A7, 2, 0

byte_109E2B:
    npc WALK_NPC, $140, $4180, RIGHT, stru_158268
    .byte $A, $B, 8, $A8, 2, 0

PodHotelNPC2:
    npc WALK_NPC, $95C0, $ED80, LEFT, stru_158228
    .byte $A, $B, 8, $AD, 2, 0

byte_109E43:
    npc WALK_NPC, $B540, $F580, RIGHT, stru_158228
    .byte $A, $B, 8, $AC, 2, 0

byte_109E4F:
    npc WALK_NPC, $9D00, $F100, DOWN, stru_1581A8
    .byte $A, $B, 8, $A9, 2, 0

byte_109E5B:
    npc WALK_NPC, $9E40, $F180, LEFT, stru_1582A8
    .byte $A, $B, 8, $AA, 2, 0

byte_109E67:
    npc WALK_NPC, $9F00, $F1C0, LEFT, stru_158228
    .byte $A, $B, 8, $AB, 2, 0

Home:
    .word OwnRoomOut, DownStairs2_1, OwnRoomIn, SistersRoom1In
    .word SistersRoom2In, byte_109ED3, byte_109EDB, byte_109EE3
    .word byte_109EEB, byte_109EF3, PodHospitalRoom1Out, PodHospitalRoom1In
    .word PodHospitalRoom2Out, PodHospitalRoom2In, PodHospitalDown, PodHotelDown
    .word PodHotelRoom1In, PodHotelRoom2In, byte_109F3B, byte_109F43
    .word byte_109F4B, byte_109F53, byte_109F5B, byte_109F63
    .word byte_109F86, byte_109F91, byte_109FB6, 0

OwnRoomOut:
    entrance DOOR, $880, $3140, LEFT, MUSIC_SAME, $B40, $3980, LEFT

DownStairs2_1:
    entrance STAIRS, $840, $3980, LEFT, MUSIC_SAME, $8C0, $2140, RIGHT

OwnRoomIn:
    entrance DOOR, $B80, $3980, RIGHT, MUSIC_SAME, $8C0, $3140, RIGHT

SistersRoom1In:
    entrance DOOR, $980, $38C0, UP, MUSIC_SAME, $7340, $2180, LEFT

SistersRoom2In:
    entrance DOOR, $A40, $38C0, UP, MUSIC_SAME, $9F40, $FD80, LEFT

byte_109ED3:
    entrance DOOR, $380, $3980, RIGHT, MUSIC_6, $A9C0, $DB40, DOWN

byte_109EDB:
    entrance STAIRS, $80, $3940, LEFT, MUSIC_SAME, $C80, $3580, RIGHT

byte_109EE3:
    entrance DOOR, $9780, $F580, RIGHT, MUSIC_6, $A9C0, $D540, DOWN

byte_109EEB:
    entrance DOOR, $9600, $F4C0, UP, MUSIC_SAME, $740, $4D80, LEFT

byte_109EF3:
    entrance STAIRS, $9480, $F540, LEFT, MUSIC_SAME, $C80, $4D80, RIGHT

PodHospitalRoom1Out:
    entrance DOOR, $AB80, $2180, RIGHT, MUSIC_SAME, $C180, $2100, DOWN

PodHospitalRoom1In:
    entrance DOOR, $C180, $20C0, UP, MUSIC_SAME, $AB40, $2180, LEFT

PodHospitalRoom2Out:
    entrance DOOR, $CB80, $2180, RIGHT, MUSIC_SAME, $C240, $2100, DOWN

PodHospitalRoom2In:
    entrance DOOR, $C240, $20C0, UP, MUSIC_SAME, $CB40, $2180, LEFT

PodHospitalDown:
    entrance STAIRS, $C040, $2180, LEFT, MUSIC_SAME, $C4C0, $FD40, RIGHT

PodHotelDown:
    entrance STAIRS, $40, $2980, LEFT, MUSIC_SAME, $94C0, $ED40, RIGHT

PodHotelRoom1In:
    entrance DOOR, $180, $28C0, UP, MUSIC_SAME, $B340, $2180, LEFT

PodHotelRoom2In:
    entrance DOOR, $240, $28C0, UP, MUSIC_SAME, $D340, $2180, LEFT

byte_109F3B:
    entrance DOOR, $EB80, $2180, RIGHT, MUSIC_a, $E340, $F900, DOWN

byte_109F43:
    entrance DOOR, $E880, $2140, LEFT, MUSIC_SAME, $E340, $2980, LEFT

byte_109F4B:
    entrance DOOR, $E800, $21C0, LEFT, MUSIC_SAME, $E340, $3180, LEFT

byte_109F53:
    entrance DOOR, $E380, $2980, RIGHT, MUSIC_SAME, $E8C0, $2140, RIGHT

byte_109F5B:
    entrance DOOR, $E380, $3180, RIGHT, MUSIC_SAME, $E840, $21C0, RIGHT

byte_109F63:
    .import stru_1585A8

    npc NPC_1, $E980, $2100, UP, stru_1585A8
    .byte $A, $22, $1D, $7D, 0
    .byte $45, 8, $15, 3, 9, $1F, $29, $1B, 8, $17, 3, $55
    .byte 8, $18, 3, 0, 8, $3A, 3, 0, 8, $16, 3, 0

byte_109F86:
    .byte $DF, 8, $40, $31, 5, $30, $35, $A, $3F, $19, 0

byte_109F91:
    .byte $1D, $A, $40, $31, $74, $86, 5, $30, $40, $18, $5A
    .byte $10, $3E, $AA, $9F, $44, $A0, $10, $F8, $10, $30
    .byte $3E, $B5, $9F, 0, $7F, 2, $7D, 2, $7B, 2, $79, 2
    .byte $7E, 4, 3, 0

byte_109FB6:
    .byte $14, 2, 0, $39, $68, $85, 5, $7A, $A, $2C, $1D, 6
    .byte 0, $45, 8, $15, 3, 9, $29, $29, $25, 8, $17, 3, 8
    .byte $61, 1, $55, $1F, 8, $2B, 3, $44, $69, $10, $7A
    .byte 0, 8, $3A, 3, 0, 8, $16, 3, 0
