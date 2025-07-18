.include "objects.inc"

; BANK $12
.segment "BANK_2"
; 0x15 records
off_128000:
    .word off_12802A, off_1283F4, off_1284E6, off_1284E8, off_1285AA
    .word off_128694, off_12883F, off_128959, off_128AEE, off_128B68
    .word off_128C2B, off_128CEB, off_128E19, off_128EB1, off_1290B6
    .word off_12932A, off_12932C, off_129600, off_129908, off_129B3C
    .word off_129DE4

off_12802A:
    .word byte_128054, byte_12805C, byte_128064, byte_12806C
    .word byte_128074, byte_12807C, byte_128084, byte_12808C
    .word byte_128094, byte_12809C, byte_1280D1, byte_1280F4
    .word byte_128120, byte_12812C, byte_12814A, byte_12819F
    .word byte_1281AB, byte_1281B7, byte_12827E, byte_128395
    .word 0

byte_128054:
    entrance DOOR, $D380, $2580, RIGHT, MUSIC_d, $2D40, $8E00, DOWN

byte_12805C:
    entrance DOOR, $CB80, $2580, RIGHT, MUSIC_a, $F440, $FA00, DOWN

byte_128064:
    entrance DOOR, $DB80, $2580, RIGHT, MUSIC_30, $B140, $7400, DOWN

byte_12806C:
    entrance DOOR, $B80, $3580, RIGHT, MUSIC_6, $B840, $3400, DOWN

byte_128074:
    entrance DOOR, $A00, $34C0, UP, MUSIC_SAME, $EC0, $5B00, DOWN

byte_12807C:
    entrance DOOR, $FB80, $2180, RIGHT, MUSIC_6, $F440, $7700, DOWN

byte_128084:
    entrance DOOR, $F840, $2180, LEFT, MUSIC_SAME, $E740, $2580, LEFT

byte_12808C:
    entrance DOOR, $E780, $2580, RIGHT, MUSIC_SAME, $F880, $2180, RIGHT

byte_128094:
    entrance DOOR, $DF80, $2180, RIGHT, MUSIC_12, $80, $4980, RIGHT

byte_12809C:
    .import PharmacistAnim

    npc NPC_1, $F980, $21C0, DOWN, PharmacistAnim
    .byte $A, $15, 8, $FE, 1
    .byte 9, $11, 8, $FF, 1, 0, 8, 0, 2, 0, $D, $45, $34, $27
    .byte $45, $34, $25, $45, $2E, $34, $12, $57, $26, 8, $6B
    .byte 2, 0, $27, 0, $34, $25, $1C, $2D, $34, $10, $57
    .byte 8, 1, 2, $5C, 6, 0

byte_1280D1:
    .import stru_15852C

    npc WALK_NPC, $E600, $2580, RIGHT, stru_15852C
    .byte $A, $C, 8, $61, 2
    .byte 0, $D, $45, $22, $27, $45, $22, $25, $45, $2E, $22
    .byte $12, $58, $1D, 8, $6B, 2, 0, 8, $62, 2, $10, $58
    .byte 0

byte_1280F4:
    npc WALK_NPC, $E680, $25C0, LEFT, stru_15852C
    .byte $A, $C, 8, $63, 2
    .byte 0, $D, $45, $2B, $27, $45, $2B, $25, $45, $2E, $2B
    .byte $12, $59, $1D, 8, $6B, 2, 0, 8, $64, 2, $27, 0, $2B
    .byte $25, $1D, $2D, $2B, $5C, 6, $10, $59, 0

byte_128120:
    .import stru_1584E8

    npc NPC_1, $D080, $2580, RIGHT, stru_1584E8
    .byte $A, $B, 8, $BB, 2, 0

byte_12812C:
    npc NPC_1, $C880, $2580, RIGHT, stru_1584E8
    .byte $A, $1D, $33, 2, $1A
    .byte $52, $80, $16, 8, $9A, 1, $55, 8, $64, 3, 0, 8, $9B
    .byte 2, 0, 8, $99, 1, 0

byte_12814A:
    .byte $D4, $C9, 2, $25, $C, $85, 5, $5C, $A, $E, 8, $8F
    .byte 1, 0, $D, $62, $41, $27, $62, $41, $25, $62, $2E
    .byte $41, 8, $8C, 1, 9, $1F, 1, $22, 8, $8D, 1, 8, $8E
    .byte 1, $3E, $8C, $81, 8, $83, 3, $3A, 1, $33, $3E, $91
    .byte $81, 1, $36, $3E, $98, $81, $42, 2, $41, $5A, $21
    .byte 4, $B4, $5A, $A, $10, $5C, 0, $34, 2, $36, 4, 3
    .byte $74, 1, $72, 3, $70, 1, 0, $74, 1, $72, 2, $70, 1
    .byte 0

byte_12819F:
    .import WaitressAnim

    npc NPC_1, $A40, $3500, DOWN, WaitressAnim
    .byte $A, $B, 8, $FC, 2, 0

byte_1281AB:
    npc WALK_NPC, $9C0, $3580, DOWN, stru_15852C
    .byte $A, $B, 8, $FD, 2, 0

byte_1281B7:
    .byte $14, $DE, $86, $21, 0, $80, 6, $FF, $40, $F, $3F
    .byte $12, $3E, $C7, $81, 0, $7E, 1, $F2, 8, $7A, 1, $F6
    .byte 8, $7E, 1, $F2, 8, $7A, 1, $F6, 8, $78, 1, $F4, 1
    .byte $7E, 1, $F2, 1, $7C, 1, $F2, 4, $7A, 1, $F6, 8, $7C
    .byte 1, $F0, 1, $7E, 1, $F2, 1, $78, 1, $F2, 4, $7A, 1
    .byte $F6, 8, $78, 1, $F4, 1, $7E, 1, $F2, 1, $7C, 1, $F2
    .byte 4, $7C, 1, $F0, 1, $7A, 1, $F6, 1, $78, 1, $F6, 4
    .byte $7E, 1, $F2, 8, $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7A
    .byte 1, $F6, 8, $7A, 1, $78, 1, $F4, 1, $7E, 3, $F2, 1
    .byte $7C, 2, $F0, 1, $7A, 3, $F6, 1, $78, 1, $7E, 1, $F6
    .byte 2, $F0, 1, $F2, 1, $F4, 1, $F6, 1, $F0, 1, $F2, 1
    .byte $F4, 1, $F6, 2, $77, 1, $75, 1, $73, 1, $71, 1, $77
    .byte 1, $75, 1, $73, 1, $71, 1, $F6, 1, $F0, 1, $F2, 1
    .byte $F4, 1, $F6, 1, $F0, 1, $F2, 1, $F4, 1, $F6, 2, $77
    .byte 1, $75, 1, $73, 1, $71, 1, $77, 1, $75, 1, $73, 1
    .byte $71, 1, $F6, 1, $F6, 1, 0

byte_12827E:
    .byte $54, $DF, $86, $21, $20, $80, 6, $7D, $A, $29, 8
    .byte $90, 1, 9, $11, 1, $14, 8, $91, 1, 8, $92, 1, $3E
    .byte $CF, $82, $10, $FF, $5A, 8, $5A, $15, 4, $F0, 4
    .byte $F0, 4, $50, $3F, $11, 0, $40, $50, $3E, $D8, $82
    .byte $11, $FF, 4, $F0, 4, $28, 8, $94, 1, 9, $3E, 8, $C1
    .byte 3, 1, $41, 8, $93, 1, $3E, $91, $83, $42, 2, $50
    .byte $11, $7D, $10, $C8, $3F, $13, $3E, $94, $83, 0, $36
    .byte 1, $F2, 1, $3E, 5, $F2, 1, 3, $7A, 1, $F6, 8, $7E
    .byte 1, $F2, 8, $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7C, 1
    .byte $F0, 1, $7A, 1, $F6, 1, $78, 1, $F6, 4, $7E, 1, $F2
    .byte 8, $78, 1, $F4, 1, $7A, 1, $F6, 1, $7C, 1, $F6, 4
    .byte $7E, 1, $F2, 8, $7C, 1, $F0, 1, $7A, 1, $F6, 1, $78
    .byte 1, $F6, 4, $78, 1, $F4, 1, $7E, 1, $F2, 1, $7C, 1
    .byte $F2, 4, $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7A, 1, $F6
    .byte 8, $7E, 1, $F2, 8, $7E, 1, $7C, 1, $F0, 1, $7A, 3
    .byte $F6, 1, $78, 2, $F4, 1, $7E, 3, $F2, 1, $7C, 1, $7A
    .byte 1, $F2, 2, $71, 1, $73, 1, $75, 1, $77, 1, $71, 1
    .byte $73, 1, $75, 1, $77, 1, $F2, 1, $F0, 1, $F6, 1, $F4
    .byte 1, $F2, 1, $F0, 1, $F6, 1, $F4, 1, $F2, 2, $71, 1
    .byte $73, 1, $75, 1, $77, 1, $71, 1, $73, 1, $75, 1, $77
    .byte 1, $F2, 1, $F0, 1, $F6, 1, $F4, 1, $F2, 1, $F0, 1
    .byte $F6, 1, $F4, 1, $F2, 2, $F2, 1, $F2, 2, 3, $72, 2
    .byte 3, 0

byte_128395:
    .byte $54, $DF, $86, $21, $60, $80, 6, 1, $40, $40, $3E
    .byte $D6, $83, 8, $F8, 1, $3E, $DF, $83, $5B, 2, 8, $C2
    .byte 3, $5B, 2, $3E, $E6, $83, $5B, 2, 8, $C3, 3, $5B
    .byte 2, 4, $1E, $42, 4, $40, $11, $7B, $10, $C9, $10
    .byte $CA, $10, $CB, $10, $CC, $10, $FF, $10, $8C, $10
    .byte $8E, $10, $8F, $44, $91, $3E, $F3, $83, 0, $75, 1
    .byte $76, 5, $70, 1, $F2, 1, 3, $33, 1, $31, 1, $32, 4
    .byte 3, $74, 1, $76, 3, $70, 1, $F6, 1, $F0, 1, $F6, 1
    .byte 3, 0

off_1283F4:
    .word byte_128426, byte_12842E, byte_128436, byte_12843E
    .word byte_128446, byte_12844E, byte_128456, byte_12845E
    .word byte_128466, byte_12846E, byte_128476, byte_12847E
    .word byte_128486, byte_12848E, byte_128496, byte_12849E
    .word byte_1284A6, byte_1284AE, byte_1284B6, byte_1284BE
    .word byte_1284C6, byte_1284CE, byte_1284D6, byte_1284DE
    .word 0

byte_128426:
    entrance DOOR, $3A40, $F1C0, UP, MUSIC_6, $4D80, $3F00, DOWN

byte_12842E:
    entrance DOOR, $3840, $D6C0, UP, MUSIC_SAME, $340, $D180, LEFT

byte_128436:
    entrance DOOR, $2840, $DAC0, UP, MUSIC_SAME, $340, $D980, LEFT

byte_12843E:
    entrance DOOR, $2740, $DDC0, UP, MUSIC_SAME, $1740, $B580, LEFT

byte_128446:
    entrance DOOR, $3240, $DDC0, UP, MUSIC_SAME, $340, $F180, LEFT

byte_12844E:
    entrance DOOR, $3840, $DCC0, UP, MUSIC_SAME, $B40, $D180, LEFT

byte_128456:
    entrance DOOR, $3A80, $DD80, RIGHT, MUSIC_SAME, $880, $D980, RIGHT

byte_12845E:
    entrance DOOR, $1740, $DFC0, UP, MUSIC_SAME, $B40, $E980, LEFT

byte_128466:
    entrance DOOR, $1340, $E180, LEFT, MUSIC_SAME, $F40, $BD80, LEFT

byte_12846E:
    entrance DOOR, $3680, $EA80, RIGHT, MUSIC_SAME, $880, $F180, RIGHT

byte_128476:
    entrance DOOR, $2A80, $EB80, RIGHT, MUSIC_SAME, $880, $F980, RIGHT

byte_12847E:
    entrance DOOR, $2740, $F2C0, UP, MUSIC_SAME, $1340, $D180, LEFT

byte_128486:
    entrance DOOR, $3880, $F880, RIGHT, MUSIC_SAME, $880, $B180, RIGHT

byte_12848E:
    entrance DOOR, $3540, $F6C0, UP, MUSIC_SAME, $740, $B580, LEFT

byte_128496:
    entrance DOOR, $3340, $F6C0, UP, MUSIC_SAME, $1340, $B180, LEFT

byte_12849E:
    entrance DOOR, $2580, $F780, RIGHT, MUSIC_SAME, $1880, $B180, RIGHT

byte_1284A6:
    entrance DOOR, $1F40, $EAC0, UP, MUSIC_SAME, $2340, $B180, LEFT

byte_1284AE:
    entrance DOOR, $1D40, $F0C0, UP, MUSIC_SAME, $3B40, $B180, LEFT

byte_1284B6:
    entrance DOOR, $4180, $DA80, RIGHT, MUSIC_SAME, $80, $E980, RIGHT

byte_1284BE:
    entrance DOOR, $4B80, $E180, RIGHT, MUSIC_SAME, $80, $B180, RIGHT

byte_1284C6:
    entrance DOOR, $5180, $EE80, RIGHT, MUSIC_SAME, $2C80, $B580, RIGHT

byte_1284CE:
    entrance DOOR, $4D40, $F2C0, UP, MUSIC_SAME, $2B40, $B180, LEFT

byte_1284D6:
    entrance DOOR, $4B80, $F780, RIGHT, MUSIC_SAME, $3080, $B180, RIGHT

byte_1284DE:
    entrance DOOR, $4840, $F980, LEFT, MUSIC_SAME, $340, $F980, LEFT

off_1284E6:
    .word 0

off_1284E8:
    .word byte_12850E, byte_128516, byte_12851E, byte_128526
    .word byte_12852E, byte_128536, byte_12853E, byte_128546
    .word byte_12854E, byte_128556, byte_12855E, byte_128566
    .word byte_12856E, byte_128576, byte_12857E, byte_128586
    .word byte_128592, byte_12859E, 0

byte_12850E:
    entrance DOOR, $B780, $2180, RIGHT, MUSIC_6, $BE00, $C980, DOWN

byte_128516:
    entrance DOOR, $B480, $2140, LEFT, MUSIC_SAME, $6F40, $2180, LEFT

byte_12851E:
    entrance DOOR, $B400, $21C0, LEFT, MUSIC_SAME, $7740, $2180, LEFT

byte_128526:
    entrance DOOR, $6F80, $2180, RIGHT, MUSIC_SAME, $B4C0, $2140, RIGHT

byte_12852E:
    entrance DOOR, $6C80, $2140, LEFT, MUSIC_SAME, $A380, $F480, LEFT

byte_128536:
    entrance DOOR, $6C00, $21C0, LEFT, MUSIC_SAME, $740, $2980, LEFT

byte_12853E:
    entrance DOOR, $7780, $2180, RIGHT, MUSIC_SAME, $B440, $21C0, RIGHT

byte_128546:
    entrance DOOR, $7480, $2140, LEFT, MUSIC_SAME, $9740, $2180, LEFT

byte_12854E:
    entrance DOOR, $7400, $21C0, LEFT, MUSIC_SAME, $F40, $2980, LEFT

byte_128556:
    entrance DOOR, $7F80, $2180, RIGHT, MUSIC_SAME, $9440, $FEC0, RIGHT

byte_12855E:
    entrance DOOR, $7C80, $2140, LEFT, MUSIC_SAME, $780, $2180, LEFT

byte_128566:
    entrance DOOR, $7C00, $21C0, LEFT, MUSIC_SAME, $9F40, $2180, LEFT

byte_12856E:
    entrance DOOR, $780, $2980, RIGHT, MUSIC_SAME, $6C40, $21C0, RIGHT

byte_128576:
    entrance DOOR, $480, $2940, LEFT, MUSIC_SAME, $740, $5180, LEFT

byte_12857E:
    entrance DOOR, $400, $29C0, LEFT, MUSIC_SAME, $F40, $4180, LEFT

byte_128586:
    .byte $E2, $B4, $82, $21, $4C, $86, $A, $B, 8, $67, 1, 0

byte_128592:
    .byte $DF, 4, $40, $29, 5, $F, $35, $B, 8, $62, 1, 0

byte_12859E:
    .byte $DF, $74, $40, $21, 5, $F, $35, $B, 8, $61, 1, 0

off_1285AA:
    .word byte_1285D6, byte_1285DE, byte_1285E6, byte_1285EE
    .word byte_1285F6, byte_1285FE, byte_128606, byte_12860E
    .word byte_128616, byte_12861E, byte_128626, byte_12862E
    .word byte_128636, byte_12863E, byte_128646, byte_12864E
    .word byte_12866C, byte_128674, byte_12867C, byte_128684
    .word byte_12868C, 0

byte_1285D6:
    entrance DOOR, $1C80, $6B80, RIGHT, MUSIC_6, $5580, $9600, DOWN

byte_1285DE:
    entrance DOOR, $1280, $6F80, RIGHT, MUSIC_SAME, $480, $D180, RIGHT

byte_1285E6:
    entrance DOOR, $D40, $6EC0, UP, MUSIC_SAME, $F40, $D180, LEFT

byte_1285EE:
    entrance DOOR, $B40, $6EC0, UP, MUSIC_SAME, $740, $E180, LEFT

byte_1285F6:
    entrance DOOR, $940, $6F80, LEFT, MUSIC_SAME, $740, $D980, LEFT

byte_1285FE:
    entrance DOOR, $1540, $69C0, UP, MUSIC_SAME, $740, $F980, LEFT

byte_128606:
    entrance DOOR, $1080, $6A80, RIGHT, MUSIC_SAME, $480, $E980, RIGHT

byte_12860E:
    entrance DOOR, $880, $6A80, RIGHT, MUSIC_SAME, $480, $F180, RIGHT

byte_128616:
    entrance DOOR, $640, $69C0, UP, MUSIC_SAME, $F40, $F980, LEFT

byte_12861E:
    entrance DOOR, $240, $6B80, LEFT, MUSIC_SAME, $F40, $B180, LEFT

byte_128626:
    entrance DOOR, $1A80, $6880, RIGHT, MUSIC_SAME, $1480, $B180, RIGHT

byte_12862E:
    entrance DOOR, $E40, $66C0, UP, MUSIC_SAME, $740, $B180, LEFT

byte_128636:
    entrance DOOR, $540, $6780, LEFT, MUSIC_SAME, $1F40, $B180, LEFT

byte_12863E:
    entrance DOOR, $1D80, $6780, RIGHT, MUSIC_SAME, $2480, $B180, RIGHT

byte_128646:
    entrance DOOR, $740, $63C0, UP, MUSIC_SAME, $2F40, $B180, LEFT

byte_12864E:
    .byte $D9, 8, $40, $63, $70, $88, $B, $1D, $25, $61, 8
    .byte $9A, 3, $27, 0, $1A, $25, $61, $2D, $1A, 8, $9B
    .byte 3, $5C, 6, 0, 8, $9D, 3, 0

byte_12866C:
    entrance STAIRS, $BF80, $2180, RIGHT, MUSIC_12, $A40, $2100, DOWN

byte_128674:
    .byte $E0, $BD, 0, $21, $88, $81, $10, 0

byte_12867C:
    .byte $E0, $BC, $80, $21, $88, $81, $47, 1

byte_128684:
    .byte $60, $BE, $C0, $21, $88, $81, $58, 2

byte_12868C:
    .byte $E0, 4, $80, $65, $88, $81, $41, $12

off_128694:
    .word byte_1286D6, byte_1286DE, byte_1286E6, byte_1286EE
    .word byte_1286F6, byte_1286FE, byte_128706, byte_12870E
    .word byte_128716, byte_12871E, byte_128726, byte_128741
    .word byte_12875A, byte_128761, byte_128768, byte_12876F
    .word byte_128776, byte_12877D, byte_128784, byte_12878B
    .word byte_128792, byte_128799, byte_1287A0, byte_1287A7
    .word byte_1287B2, byte_1287BB, byte_1287C4, byte_1287D6
    .word byte_1287E8, byte_1287FA, byte_12880C, byte_12881C
    .word 0

byte_1286D6:
    entrance DOOR, $3040, $CD80, LEFT, MUSIC_SAME, $2D40, $C880, LEFT

byte_1286DE:
    entrance DOOR, $2640, $C880, LEFT, MUSIC_SAME, $2340, $C880, LEFT

byte_1286E6:
    entrance DOOR, $2040, $C880, LEFT, MUSIC_SAME, $1D40, $C880, LEFT

byte_1286EE:
    entrance DOOR, $1740, $C880, LEFT, MUSIC_SAME, $1440, $C880, LEFT

byte_1286F6:
    entrance DOOR, $1040, $C880, LEFT, MUSIC_SAME, $740, $C880, LEFT

byte_1286FE:
    entrance DOOR, $240, $C880, LEFT, MUSIC_SAME, $3640, $C280, LEFT

byte_128706:
    entrance DOOR, $2B40, $C280, LEFT, MUSIC_SAME, $2840, $C280, LEFT

byte_12870E:
    entrance DOOR, $2880, $C280, RIGHT, MUSIC_SAME, $2B80, $C280, RIGHT

byte_128716:
    entrance DOOR, $1940, $C280, LEFT, MUSIC_SAME, $1640, $C280, LEFT

byte_12871E:
    entrance DOOR, $1680, $C280, RIGHT, MUSIC_SAME, $1980, $C280, RIGHT

byte_128726:
    .byte $6B, $20, 4, $BD, $60, $81, 5, $C0, $B, $17, 8, $44
    .byte 3, 8, 8, 2, $3E, $3E, $87, $10, $97, $3F, $1A, 0
    .byte $F4, 2, 0

byte_128741:
    .byte $5A, $3B, 0, $C0, $4C, $8A, $35, $14, $4F, $14, $4B
    .byte 4, $3E, $56, $87, $4C, 4, $3E, $59, $87, 0, $3C
    .byte $34, 3, 0

byte_12875A:
    .import stru_158A74

    npc STAT_NPC, $1E00, $C0C0, LEFT, stru_158A74
    end_script

byte_128761:
    .import stru_158A54

    npc STAT_NPC, $24C0, $C140, RIGHT, stru_158A54
    end_script

byte_128768:
    .import stru_158A94

    npc STAT_NPC, $2400, $C100, RIGHT, stru_158A94
    end_script

byte_12876F:
    npc STAT_NPC, $2280, $C0C0, RIGHT, stru_158A54
    end_script

byte_128776:
    npc STAT_NPC, $1A00, $C740, RIGHT, stru_158A74
    end_script

byte_12877D:
    npc STAT_NPC, $5C0, $C700, RIGHT, stru_158A54
    end_script

byte_128784:
    npc STAT_NPC, $2300, $C140, RIGHT, stru_158A74
    end_script

byte_12878B:
    npc STAT_NPC, $1F40, $C100, RIGHT, stru_158A54
    end_script

byte_128792:
    npc STAT_NPC, $1B00, $C740, RIGHT, stru_158A94
    end_script

byte_128799:
    npc STAT_NPC, $480, $C700, RIGHT, stru_158A54
    end_script

byte_1287A0:
    npc STAT_NPC, $1C80, $C140, RIGHT, stru_158A94
    end_script

byte_1287A7:
    .byte $5F, $20, $80, $BE, 5, $95, $35, $A, $10, $95, 0

byte_1287B2:
    .byte $94, $1F, $80, $BE, $B4, $8A, 6, $95, 0

byte_1287BB:
    .byte $14, $21, $86, $BE, $B4, $8A, 6, $95, 0

byte_1287C4:
    .byte $14, $1F, $82, $BC, $B4, $8A, 6, $97, $40, $11, $3E
    .byte $36, $88, $10, $98, $3F, $1B, 0

byte_1287D6:
    .byte $D4, $21, 0, $BC, $B4, $8A, 6, $98, $40, $11, $3E
    .byte $3C, $88, $10, $99, $3F, $1C, 0

byte_1287E8:
    .byte $D4, $1F, $84, $BC, $B4, $8A, 6, $99, $40, $11, $3E
    .byte $39, $88, $10, $9A, $3F, $1D, 0

byte_1287FA:
    .byte $54, $20, $C6, $BB, $B4, $8A, 6, $9A, $40, $11, $3E
    .byte $33, $88, $10, $9B, $3F, $1E, 0

byte_12880C:
    .byte $14, $21, $86, $BC, $B4, $8A, 6, $9B, $40, $F, $3E
    .byte $3C, $88, $3F, $1F, 0

byte_12881C:
    .byte $18, $21, $86, $BC, $40, $16, $69, $69, $69, $3D
    .byte $8B, $E0, $84, $C3, $3C, 5, $4E, $42, 6, $16, $10
    .byte $C0, 0, $F0, 2, 0, $F2, 2, 0, $F4, 2, 0, $F6, 2
    .byte 0

off_12883F:
    .word byte_128879, byte_128881, byte_128889, byte_128891
    .word byte_128899, byte_1288A1, byte_1288A9, byte_1288B1
    .word byte_1288B9, byte_1288C1, byte_1288C9, byte_1288D1
    .word byte_1288D9, byte_1288E1, byte_1288E9, byte_1288F1
    .word byte_1288F9, byte_128901, byte_128909, byte_128911
    .word byte_128919, byte_128921, byte_128929, byte_128931
    .word byte_128939, byte_128941, byte_128949, byte_128951
    .word 0

byte_128879:
    entrance DOOR, $440, $E980, LEFT, MUSIC_SAME, $1040, $6A80, LEFT

byte_128881:
    entrance DOOR, $440, $F180, LEFT, MUSIC_SAME, $840, $6A80, LEFT

byte_128889:
    entrance DOOR, $F80, $F980, RIGHT, MUSIC_SAME, $640, $6A00, DOWN

byte_128891:
    entrance DOOR, $780, $E180, RIGHT, MUSIC_SAME, $B40, $6F00, DOWN

byte_128899:
    entrance DOOR, $780, $F980, RIGHT, MUSIC_SAME, $1540, $6A00, DOWN

byte_1288A1:
    entrance DOOR, $440, $D180, LEFT, MUSIC_SAME, $1240, $6F80, LEFT

byte_1288A9:
    entrance DOOR, $F80, $D180, RIGHT, MUSIC_SAME, $D40, $6F00, DOWN

byte_1288B1:
    entrance DOOR, $780, $D980, RIGHT, MUSIC_SAME, $980, $6F80, RIGHT

byte_1288B9:
    entrance DOOR, $1F80, $B180, RIGHT, MUSIC_SAME, $580, $6780, RIGHT

byte_1288C1:
    entrance DOOR, $2440, $B180, LEFT, MUSIC_SAME, $1D40, $6780, LEFT

byte_1288C9:
    entrance DOOR, $2F80, $B180, RIGHT, MUSIC_SAME, $740, $6400, DOWN

byte_1288D1:
    entrance DOOR, $F80, $B180, RIGHT, MUSIC_SAME, $280, $6B80, RIGHT

byte_1288D9:
    entrance DOOR, $1440, $B180, LEFT, MUSIC_SAME, $1A40, $6880, LEFT

byte_1288E1:
    entrance DOOR, $780, $B180, RIGHT, MUSIC_SAME, $E40, $6700, DOWN

byte_1288E9:
    .byte $A0, $25, $40, $B1, $88, $81, $4E, 4

byte_1288F1:
    .byte $60, $2E, $40, $B1, $88, $81, $10, 5

byte_1288F9:
    .byte $20, $2E, $80, $B1, $88, $81, $3E, 6

byte_128901:
    .byte $A0, $1D, $80, $B1, $88, $81, $52, 7

byte_128909:
    .byte $E0, 5, 0, $B1, $88, $81, $3E, 8

byte_128911:
    .byte $60, $16, $80, $B1, $88, $81, $43, 9

byte_128919:
    .byte $60, $C, $C0, $B1, $88, $81, $28, $A

byte_128921:
    .byte $E0, $D, $80, $F9, $88, $81, $3E, $B

byte_128929:
    .byte $60, 5, 0, $E9, $88, $81, $A, $C

byte_128931:
    .byte $E0, 6, 0, $F9, $88, $81, $3E, $D

byte_128939:
    .byte $A0, 7, $C0, $D9, $88, $81, $3E, $E

byte_128941:
    .byte $A0, 6, $80, $E1, $88, $81, $50, $F

byte_128949:
    .byte $A0, 5, $40, $E1, $88, $81, $41, $10

byte_128951:
    .byte $A0, 5, $C0, $D1, $88, $81, $43, $11

off_128959:
    .word byte_1289A1, byte_1289A9, byte_1289B1, byte_1289B9
    .word byte_1289C1, byte_1289C9, byte_1289D1, byte_1289D9
    .word byte_1289E1, byte_1289E9, byte_1289F1, byte_1289F9
    .word byte_128A01, byte_128A09, byte_128A11, byte_128A19
    .word byte_128A21, byte_128A29, byte_128A65, byte_128A70
    .word byte_128A77, byte_128A7E, byte_128A86, byte_128A8E
    .word byte_128A96, byte_128A9E, byte_128AA6, byte_128AAE
    .word byte_128AB6, byte_128ABE, byte_128AC6, byte_128ACE
    .word byte_128AD6, byte_128ADE, byte_128AE6, 0

byte_1289A1:
    entrance DOOR, $380, $D180, RIGHT, MUSIC_SAME, $3840, $D700, DOWN

byte_1289A9:
    entrance DOOR, $380, $D980, RIGHT, MUSIC_SAME, $2840, $DB00, DOWN

byte_1289B1:
    entrance DOOR, $1780, $B580, RIGHT, MUSIC_SAME, $2740, $DE00, DOWN

byte_1289B9:
    entrance DOOR, $380, $F180, RIGHT, MUSIC_SAME, $3240, $DE00, DOWN

byte_1289C1:
    entrance DOOR, $B80, $D180, RIGHT, MUSIC_SAME, $3840, $DD00, DOWN

byte_1289C9:
    entrance DOOR, $840, $D980, LEFT, MUSIC_SAME, $3A40, $DD80, LEFT

byte_1289D1:
    entrance DOOR, $B80, $E980, RIGHT, MUSIC_SAME, $1740, $E000, DOWN

byte_1289D9:
    entrance DOOR, $F80, $BD80, RIGHT, MUSIC_SAME, $1380, $E180, RIGHT

byte_1289E1:
    entrance DOOR, $840, $F180, LEFT, MUSIC_SAME, $3640, $EA80, LEFT

byte_1289E9:
    entrance DOOR, $840, $F980, LEFT, MUSIC_SAME, $2A40, $EB80, LEFT

byte_1289F1:
    entrance DOOR, $1380, $D180, RIGHT, MUSIC_SAME, $2740, $F300, DOWN

byte_1289F9:
    entrance DOOR, $840, $B180, LEFT, MUSIC_SAME, $3840, $F880, LEFT

byte_128A01:
    entrance DOOR, $780, $B580, RIGHT, MUSIC_SAME, $3540, $F700, DOWN

byte_128A09:
    entrance DOOR, $1380, $B180, RIGHT, MUSIC_SAME, $3340, $F700, DOWN

byte_128A11:
    entrance DOOR, $1840, $B180, LEFT, MUSIC_SAME, $2540, $F780, LEFT

byte_128A19:
    entrance DOOR, $2380, $B180, RIGHT, MUSIC_SAME, $1F40, $EB00, DOWN

byte_128A21:
    entrance DOOR, $3B80, $B180, RIGHT, MUSIC_SAME, $1D40, $F100, DOWN

byte_128A29:
    .byte $9D, 9, $80, $BD, $50, $85, 5, $71, $B, $C, 1, $E
    .byte $40, $32, $12, $71, $13, 1, $32, $33, 3, $2F, $52
    .byte $80, $2F, 8, $24, 1, $3E, $5C, $8A, $5B, 9, $3E
    .byte $5F, $8A, $5B, 2, $17, $1E, $52, $10, $71, $3E, $64
    .byte $8A, 0, 8, $BA, 3, 0, $F0, 1, 3, $79, 6, $D9, 8
    .byte 3, 0

byte_128A65:
    .byte $99, 9, $C0, $BD, $60, $85, $B, $A, $3F, $11, 0

byte_128A70:
    .byte $19, $A, $40, $BD, $60, $85, 0

byte_128A77:
    .byte $19, 9, $40, $BD, $60, $85, 0

byte_128A7E:
    .byte $20, $12, $40, $D1, $88, $81, $23, $35

byte_128A86:
    .byte $E0, $11, $40, $B1, $88, $81, $41, $36

byte_128A8E:
    .byte $A0, 5, $80, $B5, $88, $81, $4E, $37

byte_128A96:
    .byte $E0, 3, $80, $B5, $88, $81, $50, $38

byte_128A9E:
    .byte $20, 2, $80, $B5, $88, $81, $4F, $39

byte_128AA6:
    .byte $20, $19, $80, $B1, $88, $81, $28, $3A

byte_128AAE:
    .byte $20, $39, 0, $B1, $88, $81, $23, $3B

byte_128AB6:
    .byte $20, $22, 0, $B1, $88, $81, $49, $3C

byte_128ABE:
    .byte $20, $11, $40, $B5, $88, $81, $41, $3D

byte_128AC6:
    .byte $60, 1, $80, $D9, $88, $81, $61, $3E

byte_128ACE:
    .byte $60, 2, $C0, $F1, $88, $81, $28, $3F

byte_128AD6:
    .byte $20, 9, $C0, $D1, $88, $81, $47, $40

byte_128ADE:
    .byte $A0, $A, $40, $D9, $88, $81, $68, $41

byte_128AE6:
    .byte $60, 1, $40, $D1, $88, $81, $51, $42

off_128AEE:
    .word byte_128B08, byte_128B10, byte_128B18, byte_128B20
    .word byte_128B28, byte_128B30, byte_128B38, byte_128B40
    .word byte_128B48, byte_128B50, byte_128B58, byte_128B60
    .word 0

byte_128B08:
    entrance DOOR, $40, $E980, LEFT, MUSIC_SAME, $4140, $DA80, LEFT

byte_128B10:
    entrance DOOR, $40, $B180, LEFT, MUSIC_SAME, $4B40, $E180, LEFT

byte_128B18:
    entrance DOOR, $2C40, $B580, LEFT, MUSIC_SAME, $5140, $EE80, LEFT

byte_128B20:
    entrance DOOR, $2B80, $B180, RIGHT, MUSIC_SAME, $4D40, $F300, DOWN

byte_128B28:
    entrance DOOR, $3040, $B180, LEFT, MUSIC_SAME, $4B40, $F780, LEFT

byte_128B30:
    entrance DOOR, $380, $F980, RIGHT, MUSIC_SAME, $4880, $F980, RIGHT

byte_128B38:
    .byte $20, $2A, $80, $B1, $88, $81, $23, $43

byte_128B40:
    .byte $A0, 2, 0, $F9, $88, $81, $28, $44

byte_128B48:
    .byte $60, $32, $80, $B1, $88, $81, $61, $45

byte_128B50:
    .byte $A0, $31, $40, $B1, $88, $81, $61, $46

byte_128B58:
    .byte $20, $32, $80, $B5, $88, $81, $1A, $47

byte_128B60:
    .byte $20, 3, $C0, $B1, $88, $81, $23, $48

off_128B68:
    .word byte_128B7A, byte_128B82, byte_128B8D, byte_128BC9
    .word byte_128BD2, byte_128BDB, byte_128BE4, byte_128C23
    .word 0

byte_128B7A:
    entrance DOOR, $DF40, $DCC0, UP, MUSIC_13, $FF40, $3740, DOWN

byte_128B82:
    .byte $9C, $E1, $C0, $DC, 6, $C9, $35, $A, $3F, 6, 0

byte_128B8D:
    .byte $94, $E1, 0, $DD, $40, $80, 6, 1, $40, $22, $3E
    .byte $B0, $8B, 8, $C0, 3, $3E, $B5, $8B, $11, $CC, $3E
    .byte $BA, $8B, $11, $CB, $3E, $BF, $8B, $11, $CA, $3E
    .byte $C4, $8B, 0, $72, 1, $F4, 1, 3, $74, 1, $F0, 2, 3
    .byte $76, 1, $F0, 2, 3, $76, 1, $F0, 2, 3, $70, 1, $72
    .byte 1, 0

byte_128BC9:
    .byte $5D, $E1, $40, $DD, $80, $81, 6, $CA, 0

byte_128BD2:
    .byte $9D, $E1, $40, $DD, $80, $81, 6, $CB, 0

byte_128BDB:
    .byte $DD, $E1, $40, $DD, $80, $81, 6, $CC, 0

byte_128BE4:
    .byte $6C, $DF, 0, $DD, $1C, $8B, 6, $C9, $40, $2D, $3E
    .byte $12, $8C, $3F, 2, $3E, $19, $8C, $11, $C9, $11, $FF
    .byte $43, 4, $2D, $43, 2, $2D, $19, 2, $53, 0, $42, 2
    .byte $2D, $3D, $52, $BD, $82, $F1, $3C, 7, $3E, $22, $8C
    .byte 0, $F2, 4, $72, 9, $F2, 4, 3, $F2, $14, $F4, 1, $76
    .byte 9, $F6, 4, 3, 0

byte_128C23:
    entrance DOOR, $EF40, $D0C0, UP, MUSIC_12, $340, $4980, LEFT

off_128C2B:
    .word byte_128C45, byte_128C4D, byte_128C55, byte_128C5D
    .word byte_128C65, byte_128C7D, byte_128C9F, byte_128CAA
    .word byte_128CB4, byte_128CBE, byte_128CC6, byte_128CCE
    .word 0

byte_128C45:
    entrance DOOR, $EF40, $D0C0, UP, MUSIC_15, $9740, $F980, LEFT

byte_128C4D:
    entrance DOOR, $E380, $2D80, RIGHT, MUSIC_SAME, $C340, $9D40, DOWN

byte_128C55:
    entrance DOOR, $F540, $9CC0, UP, MUSIC_SAME, $7540, $8380, DOWN

byte_128C5D:
    entrance DOOR, $7540, $8340, UP, MUSIC_SAME, $F540, $9D00, DOWN

byte_128C65:
    .byte $5F, $F0, 0, $9B, 5, $91, $35, $17, $12, $C0, $17
    .byte $11, $C0, $10, $C1, $10, $91, $10, $92, $11, $FE
    .byte $44, $90, 0

byte_128C7D:
    .byte $EB, $F0, $C0, $9A, $48, $8A, 6, $92, 2, $7D, $8C
    .byte $D, 0, $B, $11, 1, $13, $B, $21, 8, $61, 3, $5A
    .byte $2A, 4, $F0, $5A, $B, $10, $F1, 8, $40, 3, 3

byte_128C9F:
    .byte $1C, $F1, $C0, $9A, 6, $92, 2, $7D, $8C, $D, 0

byte_128CAA:
    .byte $58, $E2, 0, $2D, $A, 9, 8, $74, 1, 0

byte_128CB4:
    .byte $18, $E2, $C0, $2D, $A, 9, 8, $CA, 3, 0

byte_128CBE:
    entrance DOOR, $E240, $9140, UP, MUSIC_32, $C140, $A040, DOWN

byte_128CC6:
    .byte $E0, $72, $80, $83, $88, $81, $36, $20

byte_128CCE:
    .byte $58, $E2, $80, $94, $B, $1C, $5A, $1B, $5C, $12
    .byte $6A, 8, $E4, 3, $5A, $2B, 4, $F0, $10, $F0, 8, $40
    .byte 3, 8, $E5, 3, $5A, $B, 0

off_128CEB:
    .word byte_128D29, byte_128D31, byte_128D39, byte_128D41
    .word byte_128D49, byte_128D51, byte_128D59, byte_128D61
    .word byte_128D69, byte_128D71, byte_128D79, byte_128D81
    .word byte_128D89, byte_128D91, byte_128D99, byte_128DA1
    .word byte_128DA9, byte_128DB1, byte_128DB9, byte_128DC1
    .word byte_128DC9, byte_128DD1, byte_128DD9, byte_128DE1
    .word byte_128DE9, byte_128DF1, byte_128DF9, byte_128E01
    .word byte_128E09, byte_128E11, 0

byte_128D29:
    entrance STAIRS, $E680, $3E00, UP, MUSIC_6, $F940, $5400, DOWN

byte_128D31:
    entrance STAIRS, $E940, $3A00, UP, MUSIC_SAME, $F740, $3440, DOWN

byte_128D39:
    entrance STAIRS, $EA40, $3500, UP, MUSIC_SAME, $F540, $2F40, DOWN

byte_128D41:
    entrance STAIRS, $EE80, $3E00, UP, MUSIC_SAME, $F540, $3940, DOWN

byte_128D49:
    entrance STAIRS, $F140, $3E00, UP, MUSIC_SAME, $F680, $2740, DOWN

byte_128D51:
    entrance STAIRS, $F480, $3E00, UP, MUSIC_SAME, $FC40, $2C40, DOWN

byte_128D59:
    entrance STAIRS, $FF40, $3700, UP, MUSIC_b, $DF40, $DD00, DOWN

byte_128D61:
    entrance STAIRS, $F540, $3900, UP, MUSIC_SAME, $EE80, $3E40, DOWN

byte_128D69:
    entrance STAIRS, $F180, $3900, UP, MUSIC_SAME, $F240, $2340, DOWN

byte_128D71:
    entrance STAIRS, $F740, $3400, UP, MUSIC_SAME, $E940, $3A40, DOWN

byte_128D79:
    entrance STAIRS, $EF80, $3400, UP, MUSIC_SAME, $EB80, $2E40, DOWN

byte_128D81:
    entrance STAIRS, $FE40, $3100, UP, MUSIC_SAME, $EA80, $2640, DOWN

byte_128D89:
    entrance STAIRS, $FC40, $2C00, UP, MUSIC_SAME, $F480, $3E40, DOWN

byte_128D91:
    entrance STAIRS, $FB40, $2500, UP, MUSIC_SAME, $E780, $3040, DOWN

byte_128D99:
    entrance STAIRS, $F540, $2F00, UP, MUSIC_SAME, $EA40, $3540, DOWN

byte_128DA1:
    entrance STAIRS, $F440, $2D00, UP, MUSIC_SAME, $F540, $2640, DOWN

byte_128DA9:
    entrance STAIRS, $F740, $2D00, UP, MUSIC_SAME, $ED40, $2E40, DOWN

byte_128DB1:
    entrance STAIRS, $F680, $2700, UP, MUSIC_SAME, $F140, $3E40, DOWN

byte_128DB9:
    entrance STAIRS, $F540, $2600, UP, MUSIC_SAME, $F440, $2D40, DOWN

byte_128DC1:
    entrance STAIRS, $F240, $2300, UP, MUSIC_SAME, $F180, $3940, DOWN

byte_128DC9:
    entrance STAIRS, $EA80, $2600, UP, MUSIC_SAME, $FE40, $3140, DOWN

byte_128DD1:
    entrance STAIRS, $ED40, $2E00, UP, MUSIC_SAME, $F740, $2D40, DOWN

byte_128DD9:
    entrance STAIRS, $EB80, $2E00, UP, MUSIC_SAME, $EF80, $3440, DOWN

byte_128DE1:
    entrance STAIRS, $E780, $3000, UP, MUSIC_SAME, $FB40, $2540, DOWN

byte_128DE9:
    .byte $20, $E6, $40, $3B, $88, $81, $D, $21

byte_128DF1:
    .byte $A0, $E6, $80, $2C, $88, $81, $16, $22

byte_128DF9:
    .byte $20, $EE, $40, $28, $88, $81, $13, $23

byte_128E01:
    .byte $20, $F1, $40, $2C, $88, $81, $41, $24

byte_128E09:
    .byte $E0, $EF, $40, $3E, $88, $81, $23, $25

byte_128E11:
    .byte $60, $FA, $40, $3A, $88, $81, $49, $26

off_128E19:
    .word byte_128E27, byte_128E48, byte_128E57, byte_128E6C
    .word byte_128E84, byte_128EA6, 0

byte_128E27:
    .byte $E8, $EC, $46, $C3, $3C, $8B, 5, $2A, $35, $20, 8
    .byte $C4, 3, $33, 3, $1D, $52, $80, $1D, 8, $C6, 3, $49
    .byte 6, $10, $2A, $10, $72, 0, 8, $C5, 3, 0

byte_128E48:
    .byte $DF, $EC, $40, $C3, 6, $72, $35, $E, $11, $2A, $11
    .byte $72, $4C, 4, 0

byte_128E57:
    .byte $9B, $E8, $80, $C4, $35, $14, $10, $FE, $11, $72
    .byte $4C, 0, $3D, $4C, $3B, 4, $BF, $3C, 4, $4E, 0

byte_128E6C:
    .byte $DF, $ED, $C0, $C9, 5, $91, $35, $17, $12, $C0, $17
    .byte $11, $C0, $10, $C1, $10, $91, $10, $93, $11, $FE
    .byte $44, $90, 0

byte_128E84:
    .byte $AB, $EC, $80, $C9, $48, $8A, 6, $93, 2, $84, $8E
    .byte $D, 0, $B, $11, 1, $13, $B, $21, 8, $61, 3, $5A
    .byte $2A, 4, $F0, $5A, $B, $10, $F1, 8, $40, 3, 3

byte_128EA6:
    .byte $DC, $EC, $80, $C9, 6, $93, 2, $84, $8E, $D, 0

off_128EB1:
    .word byte_128EF5, byte_128EFD, byte_128F05, byte_128F0D
    .word byte_128F15, byte_128F1D, byte_128F25, byte_128F2D
    .word byte_128F35, byte_128F3D, byte_128F45, byte_128F4D
    .word byte_128F55, byte_128F5D, byte_128F65, byte_128F6D
    .word byte_128F75, byte_128F7D, byte_128F85, byte_128F8D
    .word byte_128F95, byte_128F9D, byte_128FA9, byte_128FB5
    .word byte_128FC1, byte_128FD6, byte_128FE2, byte_128FEE
    .word byte_12902D, byte_129064, byte_129070, byte_12907C
    .word byte_129084, 0

byte_128EF5:
    entrance DOOR, $9780, $A5C0, UP, MUSIC_SAME, $B40, $8580, LEFT

byte_128EFD:
    entrance DOOR, $A580, $A4C0, UP, MUSIC_SAME, $1340, $8580, LEFT

byte_128F05:
    entrance DOOR, $A680, $A4C0, UP, MUSIC_SAME, $1B40, $8580, LEFT

byte_128F0D:
    entrance DOOR, $A780, $A4C0, UP, MUSIC_SAME, $340, $8D80, LEFT

byte_128F15:
    entrance DOOR, $A380, $A4C0, UP, MUSIC_SAME, $B40, $8D80, LEFT

byte_128F1D:
    entrance DOOR, $A280, $A4C0, UP, MUSIC_SAME, $1340, $8D80, LEFT

byte_128F25:
    entrance DOOR, $A180, $A4C0, UP, MUSIC_SAME, $1B40, $8D80, LEFT

byte_128F2D:
    entrance DOOR, $9F80, $A6C0, UP, MUSIC_SAME, $340, $9580, LEFT

byte_128F35:
    entrance DOOR, $A080, $A6C0, UP, MUSIC_SAME, $B40, $9580, LEFT

byte_128F3D:
    entrance DOOR, $A180, $A6C0, UP, MUSIC_SAME, $1340, $9580, LEFT

byte_128F45:
    entrance DOOR, $A380, $A6C0, UP, MUSIC_SAME, $1B40, $9580, LEFT

byte_128F4D:
    entrance DOOR, $A480, $A6C0, UP, MUSIC_SAME, $340, $9D80, LEFT

byte_128F55:
    entrance DOOR, $A580, $A6C0, UP, MUSIC_SAME, $B40, $9D80, LEFT

byte_128F5D:
    entrance DOOR, $A380, $A8C0, UP, MUSIC_SAME, $1340, $9D80, LEFT

byte_128F65:
    entrance DOOR, $9D80, $A8C0, UP, MUSIC_SAME, $1B40, $9D80, LEFT

byte_128F6D:
    entrance DOOR, $9C80, $A9C0, UP, MUSIC_SAME, $740, $8580, LEFT

byte_128F75:
    entrance DOOR, $9B80, $AAC0, UP, MUSIC_SAME, $F40, $8580, LEFT

byte_128F7D:
    entrance DOOR, $9A80, $ABC0, UP, MUSIC_SAME, $1740, $8580, LEFT

byte_128F85:
    entrance DOOR, $9C80, $ABC0, UP, MUSIC_SAME, $1F40, $8580, LEFT

byte_128F8D:
    entrance DOOR, $9D80, $ABC0, UP, MUSIC_SAME, $740, $8D80, LEFT

byte_128F95:
    entrance DOOR, $9980, $ACC0, UP, MUSIC_SAME, $F40, $8D80, LEFT

byte_128F9D:
    .import stru_1587A4

    npc WALK_NPC, $9CC0, $A8C0, DOWN, stru_1587A4
    .byte $A, $B, 8, $82, 0, 0

byte_128FA9:
    .import stru_158804

    npc WALK_NPC, $A100, $A700, DOWN, stru_158804
    .byte $A, $B, 8, $B3, 0, 0

byte_128FB5:
    npc NPC_1, $9580, $AB40, DOWN, stru_158804
    .byte $A, $B, 8, $B4, 0, 0

byte_128FC1:
    .import stru_1587C4

    npc WALK_NPC, $9900, $A980, DOWN, stru_1587C4
    .byte $A, $14, 8, $B8, 0
    .byte 9, $11, 8, $B9, 0, 0, 8, $BA, 0, 0

byte_128FD6:
    .import stru_1588C0

    npc WALK_NPC, $9B40, $AC00, DOWN, stru_1588C0
    .byte $A, $B, 8, $BC, 0, 0

byte_128FE2:
    npc WALK_NPC, $A140, $AC80, DOWN, stru_158804
    .byte $A, $B, 8, $CF, 0, 0

byte_128FEE:
    .import stru_1587E4

    npc WALK_NPC, $9780, $A800, DOWN, stru_1587E4
    .byte $A, $13, $12, $49, $F
    .byte 8, $BF, 0, 0, 8, $D1, 0, 0, $C, 1, $3E, $12, $49
    .byte $1D, 8, $BF, 0, 0, 8, $D2, 0, $33, 2, $3B, $52, $80
    .byte $3B, 8, $D3, 0, $19, 2, $23, 0, $37, $25, $4B, $2D
    .byte $3E, $5C, 6, $10, $49, 0, 8, $4B, 2, 0, 8, $BE, 0, 0

byte_12902D:
    .byte $D3, $A1, $84, $A9, $E4, $87, $A, $36, $12, $4A
    .byte $F, 8, $D8, 0, 0, 8, $D4, 0, 9, $18, 8, $33, 0, 0
    .byte $33, 3, $33, $52, $80, $33, 8, $D6, 0, $19, 3, $23
    .byte 0, $2F, $25, $4C, $2D, $36, $5C, 6, $10, $4A, 0
    .byte 8, $4B, 2, 0, 8, $D5, 0, 0

byte_129064:
    npc WALK_NPC, $9900, $AD00, DOWN, stru_1587A4
    .byte $A, $B, 8, $D9, 0, 0

byte_129070:
    npc NPC_1, $9E40, $AAC0, DOWN, stru_158804
    .byte $A, $B, 8, $87, 0, 0

byte_12907C:
    entrance DOOR, $D940, $65C0, UP, MUSIC_12, $E340, $3980, LEFT

byte_129084:
    .byte $E1, $D8, 0, $66, $70, $88, 5, 1, $B, $E, 8, $2D
    .byte 3, 0, $A, $2D, 8, $FA, 1, 9, $1F, $12, $80, $1C
    .byte 8, $FB, 1, 0, 8, $CA, 0, 8, $FC, 1, $66, 8, $CB
    .byte 3, 9, $1F, 8, $FB, 1, $10, $80, 0, $70, 7, 3, 0

off_1290B6:
    .word byte_1290E8, byte_1290F0, byte_12911B, byte_129123
    .word byte_129148, byte_129150, byte_129158, byte_129160
    .word byte_129168, byte_1291BB, byte_1291FD, byte_129237
    .word byte_129243, byte_12924F, byte_12925D, byte_12926B
    .word byte_129279, byte_129287, byte_129295, byte_1292B6
    .word byte_1292BF, byte_1292C8, byte_1292DD, byte_1292F6
    .word 0

byte_1290E8:
    entrance DOOR, $F080, $8500, UP, MUSIC_6, $5240, $3A00, DOWN

byte_1290F0:
    .byte $98, $F2, $80, $80, $B, $F, $12, $E0, $B, 1, $2A
    .byte 8, $59, 0, 0, $C, 1, $2A, $12, $E0, $17, 1, $2A
    .byte 8, $6E, 0, $27, $58, $2A, 8, $2B, 2, $10, $87, $3D
    .byte $49, $A0, 4, $AA, $3C, 2, $4E, 0

byte_12911B:
    entrance DOOR, $F880, $8A00, UP, MUSIC_18, $1340, $A640, DOWN

byte_129123:
    .byte $98, $FD, $80, $88, $B, $F, $12, $E0, $B, 1, $24
    .byte 8, $59, 0, 0, $C, 1, $24, $12, $E0, $17, 1, $24
    .byte 8, $6E, 0, $11, $87, $3D, $49, $A0, 4, $AA, $3C
    .byte 2, $4E, 0

byte_129148:
    entrance DOOR, $F980, $8200, UP, MUSIC_6, $5980, $93C0, DOWN

byte_129150:
    entrance DOOR, $FF40, $7900, UP, MUSIC_8, $9E40, $6400, DOWN

byte_129158:
    entrance HOLE, $B240, $A5C0, UP, MUSIC_11, $7240, $8F00, DOWN

byte_129160:
    entrance DOOR, $AD00, $9A80, UP, MUSIC_1a, $900, $8940, LEFT

byte_129168:
    .byte $9B, $B2, $C0, $94, $36, $52, $35, $52, $11, 0, $12
    .byte $64, $16, $33, 7, $12, 1, $16, $10, 0, $10, $69
    .byte $12, $65, $22, $33, 7, $1E, 1, $22, $10, 0, $10
    .byte $6A, $12, $66, $2E, $33, 7, $2A, 1, $2E, $10, 0
    .byte $10, $6B, $12, $67, $3A, $33, 7, $36, 1, $3A, $10
    .byte 0, $10, $6C, $12, $68, $46, $33, 7, $42, 1, $46
    .byte $10, 0, $10, $6D, $12, 0, $4D, $11, 0, $10, $6E
    .byte $3D, $40, 3, $86, $85, 0

byte_1291BB:
    .byte $D8, $97, $C0, $97, $35, $2A, 8, $48, 3, $3A, 0
    .byte $27, $52, $80, $13, $51, $FF, $50, $F, $3A, 1, $27
    .byte $52, $80, $1D, $51, $FF, $50, $19, $3A, 2, $27, $52
    .byte $80, $27, $51, $FF, $50, $23, $5C, 7, 0, $D, $6F
    .byte $39, 8, $1A, 2, $25, $6F, $2E, $41, $25, $3E, $2D
    .byte $41, 0, $C, 1, $41, 8, $7D, 3, $10, $70, 0

byte_1291FD:
    .byte $DD, $97, $C4, $97, $D0, $89, 6, $70, $A, $39, 8
    .byte $DC, 0, 9, $11, 1, $17, 8, $DD, 0, $11, $70, 0, 8
    .byte $DE, 0, 9, $11, 8, $E0, 0, $1C, $11, $2B, $34, $28
    .byte $2C, $1F, 8, $E1, 0, $11, $70, 0, $2A, $2C, 8, $B7
    .byte 0, $11, $70, 0, 8, $E2, 0, $11, $70, 0

byte_129237:
    .import stru_1589DC

    npc WALK_NPC, $9740, $98C0, DOWN, stru_1589DC
    .byte $A, $B, 8, $7E, 0, 0

byte_129243:
    npc WALK_NPC, $96C0, $9840, DOWN, stru_1589DC
    .byte $A, $B, 8, $9E, 0, 0

byte_12924F:
    .byte $5D, $B5, $80, $94, $C4, $89, 6, $6D, $B, $D, 8
    .byte $6F, 3, 0

byte_12925D:
    .byte $5D, $B3, $80, $94, $C4, $89, 6, $69, $B, $D, 8
    .byte $6B, 3, 0

byte_12926B:
    .byte $DD, $B3, $C0, $94, $C4, $89, 6, $6A, $B, $D, 8
    .byte $6C, 3, 0

byte_129279:
    .byte $5D, $B4, $80, $94, $C4, $89, 6, $6B, $B, $D, 8
    .byte $6D, 3, 0

byte_129287:
    .byte $DD, $B4, $C0, $94, $C4, $89, 6, $6C, $B, $D, 8
    .byte $6E, 3, 0

byte_129295:
    .byte $58, $A4, $40, $9F, 2, $95, $92, 9, 0, $B, $20, $25
    .byte $6F, 8, $9A, 3, $27, 0, $1D, $25, $6F, $2D, $1D
    .byte 8, $9B, 3, $5C, 6, 3, 8, $9D, 3, 3

byte_1292B6:
    .byte $58, $AD, $40, $9E, 2, $95, $92, 9, 0

byte_1292BF:
    .byte $98, $AE, $80, $9F, 2, $95, $92, 9, 0

byte_1292C8:
    .import stru_158900

    npc NPC_1, $AB40, $9D00, DOWN, stru_158900
    .byte $A, $C, 8, $CA, 0, 0, $40
    .byte $11, $3E, $DA, $92, 0, $F4, 1, 0

byte_1292DD:
    npc NPC_1, $ABC0, $9D00, DOWN, stru_158900
    .byte $A, $C, 8, $CA, 0, 0, $40
    .byte $13, $3F, $15, $3E, $F1, $92, 0, $F4, 1, $7E, 4
    .byte 0

byte_1292F6:
    npc NPC_1, $AB80, $9D00, DOWN, stru_158900
    .byte $A, $1C, $12, $4C, $16
    .byte 8, $AB, 0, $4F, $2E, $3F, $16, $3E, $25, $93, 0
    .byte 8, $A9, 0, $10, $4B, 0, $C, 1, $2E, $12, $4B, $2E
    .byte $12, $4C, $27, 1, $2E, 8, $AA, 0, $10, $4C, 1, $10
    .byte 0, $F4, 2, $7E, 2, 0

off_12932A:
    .word 0

off_12932C:
    .word byte_129356, byte_12935E, byte_129366, byte_12936E
    .word byte_129376, byte_12937E, byte_129386, byte_12938E
    .word byte_129396, byte_1293F9, byte_12942B, byte_12945D
    .word byte_12948F, byte_1294C1, MagCoinClerk, MagRingClerk
    .word MagPendantClerk, byte_1295A9, byte_1295CB, byte_1295F4
    .word 0

byte_129356:
    entrance DOOR, $380, $8580, RIGHT, MUSIC_SAME, $B280, $9500, DOWN

byte_12935E:
    entrance DOOR, $B80, $8580, RIGHT, MUSIC_SAME, $9780, $A600, DOWN

byte_129366:
    entrance DOOR, $1380, $8580, RIGHT, MUSIC_SAME, $A580, $A500, DOWN

byte_12936E:
    entrance DOOR, $1B80, $8580, RIGHT, MUSIC_SAME, $A680, $A500, DOWN

byte_129376:
    entrance DOOR, $380, $8D80, RIGHT, MUSIC_SAME, $A780, $A500, DOWN

byte_12937E:
    entrance DOOR, $B80, $8D80, RIGHT, MUSIC_SAME, $A380, $A500, DOWN

byte_129386:
    entrance DOOR, $1380, $8D80, RIGHT, MUSIC_SAME, $A280, $A500, DOWN

byte_12938E:
    entrance DOOR, $1B80, $8D80, RIGHT, MUSIC_SAME, $A180, $A500, DOWN

byte_129396:
    .byte $D5, 1, 4, $85, $40, $81, 5, $64, $A, $31, 2, $96
    .byte $93, $32, $33, 7, $15, 8, $B7, 3, 0, $12, $6E, $1D
    .byte 8, $B6, 3, 1, $20, 8, $B8, 3, $19, 7, $53, 0, $51
    .byte $FF, $5A, $21, 4, $B4, $5A, 9, $42, 7, $31, $10
    .byte $64, 0, $33, 7, $36, 3, $11, 0, $12, $64, $3F, $10
    .byte 0, $10, $69, $12, $65, $46, $10, 0, $10, $6A, $12
    .byte $66, $4D, $10, 0, $10, $6B, $12, $67, $54, $10, 0
    .byte $10, $6C, $12, $68, $5B, $10, 0, $10, $6D, $12, 0
    .byte $62, $11, 0, $10, $6E, 3

byte_1293F9:
    .byte $95, 1, $44, $85, $40, $81, 5, $65, $A, $31, 2, $96
    .byte $93, $32, $33, 7, $15, 8, $B7, 3, 0, $12, $6E, $1D
    .byte 8, $B6, 3, 1, $20, 8, $B8, 3, $19, 7, $53, 0, $51
    .byte $FF, $5A, $21, 4, $B4, $5A, 9, $42, 7, $31, $10
    .byte $65, 0

byte_12942B:
    .byte $55, 1, $84, $85, $40, $81, 5, $66, $A, $31, 2, $96
    .byte $93, $32, $33, 7, $15, 8, $B7, 3, 0, $12, $6E, $1D
    .byte 8, $B6, 3, 1, $20, 8, $B8, 3, $19, 7, $53, 0, $51
    .byte $FF, $5A, $21, 4, $B4, $5A, 9, $42, 7, $31, $10
    .byte $66, 0

byte_12945D:
    .byte $15, 2, $44, $85, $40, $81, 5, $67, $A, $31, 2, $96
    .byte $93, $32, $33, 7, $15, 8, $B7, 3, 0, $12, $6E, $1D
    .byte 8, $B6, 3, 1, $20, 8, $B8, 3, $19, 7, $53, 0, $51
    .byte $FF, $5A, $21, 4, $B4, $5A, 9, $42, 7, $31, $10
    .byte $67, 0

byte_12948F:
    .byte $D5, 1, $84, $85, $40, $81, 5, $68, $A, $31, 2, $96
    .byte $93, $32, $33, 7, $15, 8, $B7, 3, 0, $12, $6E, $1D
    .byte 8, $B6, 3, 1, $20, 8, $B8, 3, $19, 7, $53, 0, $51
    .byte $FF, $5A, $21, 4, $B4, $5A, 9, $42, 7, $31, $10
    .byte $68, 0

byte_1294C1:
    .import stru_158944

    npc WALK_NPC, $A40, $8580, DOWN, stru_158944
    .byte $A, $12, $54, $19, $F
    .byte 8, $B2, 0, 0, 8, $AE, 0, 0

MagCoinClerk:
    .import stru_1589D8

    entity $1240, $8500, UP, stru_1589D8

    check_action TALK, CoinExit - MagCoinClerk
    print $3E1
CoinRepeat:
    set_flag FLAG0|BIT7
    find_item EMPTY, CoinList - MagCoinClerk
    clear_flag FLAG0|BIT7
CoinList:
    item_list MagicHerb, PeaceCoin, ProtectCoin, MagicCoin, CoinRefuse - MagCoinClerk
    check_flag FLAG0|BIT7, CoinBuy - MagCoinClerk
    print $23B
    clear_flag FLAG0|BIT7
    end_script
CoinBuy:
    pay CoinLess - MagCoinClerk
    print $23A
    confirm CoinStop - MagCoinClerk
    print $309
    play SOUND2, $B
    cash
    add_item CoinExit - MagCoinClerk
    print $3E3
    confirm CoinDontNeed - MagCoinClerk
    jump CoinRepeat - MagCoinClerk
CoinDontNeed:
    print $309
    end_script
CoinStop:
    get CoinExit - MagCoinClerk
CoinRefuse:
    print $30A
    clear_flag FLAG0|BIT7
    end_script
CoinLess:
    print $33A
CoinExit:
    end_script


MagRingClerk:
    .import stru_158A1C

    entity $1A40, $8500, UP, stru_158A1C

    check_action TALK, RingExit - MagRingClerk
    print $3E1
RingRepeat:
    set_flag FLAG0|BIT7
    find_item EMPTY, RingList - MagRingClerk
    clear_flag FLAG0|BIT7
RingList:
    item_list MagicHerb, BrassRing, SilverRing, GoldRing, RingRefuse - MagRingClerk
    check_flag FLAG0|BIT7, RingBuy - MagRingClerk
    print $23B
    clear_flag FLAG0|BIT7
    end_script
RingBuy:
    pay RingLess - MagRingClerk
    print $23A
    confirm RingStop - MagRingClerk
    print $309
    play SOUND2, $B
    cash
    add_item RingExit - MagRingClerk
    print $3E3
    confirm RingDontNeed - MagRingClerk
    jump RingRepeat - MagRingClerk
RingDontNeed:
    print $309
    end_script
RingStop:
    get RingExit - MagRingClerk
RingRefuse:
    print $30A
    clear_flag FLAG0|BIT7
    end_script
RingLess:
    print $33A
RingExit:
    end_script


MagPendantClerk:
    .import stru_158A20

    entity $240, $8D00, UP, stru_158A20

    check_action TALK, PendantExit - MagPendantClerk
    print $3E1
PendantRepeat:
    set_flag FLAG0|BIT7
    find_item EMPTY, PendantList - MagPendantClerk
    clear_flag FLAG0|BIT7
PendantList:
    item_list RepelRing, H2oPendant, FirePendant, EarthPendnt, PendantRefuse - MagPendantClerk
    check_flag FLAG0|BIT7, PendantBuy - MagPendantClerk
    print $23B
    clear_flag FLAG0|BIT7
    end_script
PendantBuy:
    pay PendantLess - MagPendantClerk
    print $23A
    confirm PendantStop - MagPendantClerk
    print $309
    play SOUND2, $B
    cash
    add_item PendantExit - MagPendantClerk
    print $3E3
    confirm PendantDontNeed - MagPendantClerk
    jump PendantRepeat - MagPendantClerk
PendantDontNeed:
    print $309
    end_script
PendantStop:
    get PendantExit - MagPendantClerk
PendantRefuse:
    print $30A
    clear_flag FLAG0|BIT7
    end_script
PendantLess:
    print $33A
PendantExit:
    end_script


byte_1295A9:
    .byte $D9, $A, 4, $8D, $D4, $89, $A, $21, 8, $8A, 0, 9
    .byte $1E, 8, $8C, 0, 9, $1A, 8, $91, 0, $55, 8, $A2, 2
    .byte 0, 8, $90, 0, 0, 8, $8B, 0, 0

byte_1295CB:
    .byte $99, $12, 4, $8D, $24, $8A, $A, $28, 8, $1F, 2, $3A
    .byte 1, $12, $18, $25, 1, $15, $3A, 0, $15, $53, 0, $51
    .byte $FF, $50, $17, $61, $FF, $60, $1B, $5C, 7, 8, $10
    .byte 3, 0, 8, $E, 3, 0

byte_1295F4:
    .byte $99, $1A, 4, $8D, $24, $8A, $A, $B, 8, $8F, 0, 0

off_129600:
    .word byte_12963E, byte_129646, byte_12964E, byte_129656
    .word byte_12965E, byte_129666, byte_12966E, byte_129676
    .word byte_12967E, byte_129686, byte_12968E, byte_129696
    .word byte_12969E, byte_1296A6, byte_1296AE, byte_1296BA
    .word byte_1296CF, byte_129700, byte_12970C, byte_12972A
    .word byte_12975F, byte_12978B, byte_129797, byte_1297A3
    .word byte_1297AF, byte_129819, byte_129825, byte_129833
    .word byte_129896, byte_1298A2, 0

byte_12963E:
    entrance DOOR, $380, $9580, RIGHT, MUSIC_SAME, $9F80, $A700, DOWN

byte_129646:
    entrance DOOR, $B80, $9580, RIGHT, MUSIC_SAME, $A080, $A700, DOWN

byte_12964E:
    entrance DOOR, $1380, $9580, RIGHT, MUSIC_SAME, $A180, $A700, DOWN

byte_129656:
    entrance DOOR, $1B80, $9580, RIGHT, MUSIC_SAME, $A380, $A700, DOWN

byte_12965E:
    entrance DOOR, $380, $9D80, RIGHT, MUSIC_SAME, $A480, $A700, DOWN

byte_129666:
    entrance DOOR, $B80, $9D80, RIGHT, MUSIC_SAME, $A580, $A700, DOWN

byte_12966E:
    entrance DOOR, $1380, $9D80, RIGHT, MUSIC_SAME, $A380, $A900, DOWN

byte_129676:
    entrance DOOR, $1B80, $9D80, RIGHT, MUSIC_SAME, $9D80, $A900, DOWN

byte_12967E:
    entrance DOOR, $780, $8580, RIGHT, MUSIC_SAME, $9C80, $AA00, DOWN

byte_129686:
    entrance DOOR, $F80, $8580, RIGHT, MUSIC_SAME, $9B80, $AB00, DOWN

byte_12968E:
    entrance DOOR, $1780, $8580, RIGHT, MUSIC_SAME, $9A80, $AC00, DOWN

byte_129696:
    entrance DOOR, $1F80, $8580, RIGHT, MUSIC_SAME, $9C80, $AC00, DOWN

byte_12969E:
    entrance DOOR, $780, $8D80, RIGHT, MUSIC_SAME, $9D80, $AC00, DOWN

byte_1296A6:
    entrance DOOR, $F80, $8D80, RIGHT, MUSIC_SAME, $9980, $AD00, DOWN

byte_1296AE:
    npc WALK_NPC, $240, $95C0, DOWN, stru_1587A4
    .byte $A, $B, 8, $99, 0, 0

byte_1296BA:
    .import stru_1588E0

    npc WALK_NPC, $A40, $9500, DOWN, stru_1588E0
    .byte $A, $14, 8, $7B, 0, 9
    .byte $11, 8, $7C, 0, 0, 8, $7D, 0, 0

byte_1296CF:
    .import stru_158824

    npc WALK_NPC, $1200, $9500, DOWN, stru_158824
    .byte $A, $30, $12, $4E, $F
    .byte 8, $77, 0, 0, $12, $4F, $21, 8, $74, 0, 9, $1D, 8
    .byte $75, 0, $10, $4E, 0, 8, $76, 0, 0, 8, $71, 0, 9
    .byte $2B, 8, $72, 0, 1, $2E, 8, $73, 0, $10, $50, 0

byte_129700:
    .import stru_1588A0

    npc WALK_NPC, $1A40, $9540, DOWN, stru_1588A0
    .byte $A, $B, 8, $93, 0, 0

byte_12970C:
    npc WALK_NPC, $200, $9DC0, DOWN, stru_1588E0
    .byte $A, $1D, 8, $78, 0, 9
    .byte $1A, $12, $50, $16, 8, $79, 0, $10, $4F, 0, 8, $2E
    .byte 2, 0, 8, $7A, 0, 0

byte_12972A:
    npc WALK_NPC, $9C0, $9D80, DOWN, stru_1587A4
    .byte $A, $34, $12, $60, $19
    .byte 8, $97, 2, 9, $15, $55, 8, $74, 2, 0, 8, $92, 0
    .byte 0, 8, $84, 0, 9, $31, 8, $85, 0, 9, $2D, 8, $88
    .byte 0, $55, 8, $75, 2, $10, $60, 0, 8, $89, 0, 0, 8
    .byte $86, 0, 0

byte_12975F:
    npc WALK_NPC, $12C0, $9DC0, DOWN, stru_1588E0
    .byte $A, $2B, $12, $51
    .byte $F, 8, $98, 0, 0, 8, $94, 0, 9, $19, 8, $96, 0, 1
    .byte $1C, 8, $97, 0, $27, 0, $28, $5C, 6, $25, $66, $2D
    .byte $2B, $10, $51, 0, 8, $4A, 2, 0

byte_12978B:
    npc WALK_NPC, $1A00, $9D40, DOWN, stru_158824
    .byte $A, $B, 8, $81, 0, 0

byte_129797:
    npc WALK_NPC, $640, $8580, DOWN, stru_1588E0
    .byte $A, $B, 8, $6F, 0, 0

byte_1297A3:
    npc WALK_NPC, $580, $8540, RIGHT, stru_1588C0
    .byte $A, $B, 8, $9B, 0, 0

byte_1297AF:
    npc NPC_1, $16C0, $8500, DOWN, stru_158824
    .byte $A, $69, 8, $9D, 0, $1B
    .byte $10, 8, $15, 0, 8, $C, 0, $3A, 0, $43, $1A, 7, $1B
    .byte 1, $1F, $57, 8, $45, 3, $3A, 1, $43, $1A, 7, $27
    .byte 1, $2B, $57, 8, $45, 3, $3A, 2, $43, $1A, 7, $33
    .byte 1, $37, $57, 8, $45, 3, $3A, 3, $43, $1A, 7, $3F
    .byte 1, $43, $57, 8, $45, 3, 8, $1E, 0, $37, $37, 3, $62
    .byte $62, $56, 8, $1B, 0, $37, $38, 3, $5B, $54, 8, $1D
    .byte 0, 8, $13, 0, 0, 8, $1C, 0, 8, $13, 0, $F, 8, $21
    .byte 0, 8, $13, 0, 0, 0

byte_129819:
    npc WALK_NPC, $1DC0, $8540, DOWN, stru_158804
    .byte $A, $B, 8, $80, 0, 0

byte_129825:
    npc WALK_NPC, $5C0, $8D80, RIGHT, stru_1588C0
    .byte $A, $D, 8, $A1, 0, $10, $53, 0

byte_129833:
    npc WALK_NPC, $E80, $8D80, DOWN, stru_1588E0
    .byte $A, $62, $12, $54, $F
    .byte 8, $DF, 0, 0, $12, $55, $25, 8, $67, 2, $27, 0, $21
    .byte $5C, 6, $25, 1, $2D, $62, $10, $54, 0, 8, $66, 2
    .byte 0, $12, $56, $3F, 8, $A7, 0, $27, 0, $3B, $5C, 6
    .byte $25, $6E, $2D, $62, $10, $55, 8, $68, 2, 1, $15
    .byte 8, $EB, 0, 0, 8, $A2, 0, 9, $5E, 8, $A3, 0, 9, $5A
    .byte $27, $6E, $56, 8, $A5, 0, $25, $6E, $2E, $62, $10
    .byte $56, 0, 8, $D9, 3, 0, 8, $A6, 0, 0, 8, $A4, 0, 0, 0

byte_129896:
    npc WALK_NPC, $1C0, $9580, DOWN, stru_158824
    .byte $A, $B, 8, $9A, 0, 0

byte_1298A2:
    npc NPC_1, $E40, $8540, DOWN, stru_158804
    .byte $A, $65, 8, $9C, 0, 9
    .byte $62, $37, $22, 3, $28, $56, $38, $5A, $20, $56, $26
    .byte 3, $1B, 1, $52, $2F, $4E, $5C, 6, $2E, $65, 8, $C7
    .byte 3, 9, $56, 1, $12, $39, $5E, $21, $56, $19, 1, $3A
    .byte 1, $33, $18, $56, $2D, $40, $5C, 6, $30, $65, 8
    .byte $DC, 3, 9, $56, 1, $28, $3A, 1, $4A, 8, $DD, 3, 9
    .byte $56, 1, $31, 8, $49, 2, 0, 8, $DE, 3, 0, 8, $6A
    .byte 3, 0, 8, $40, 2, 0, 8, $23, 3, 0, 8, $24, 3, 0, 8
    .byte $D, 2, 0

off_129908:
    .word byte_129956, byte_12995E, byte_129966, byte_12996E
    .word byte_129976, byte_12997E, byte_129986, byte_12998E
    .word byte_129996, byte_12999E, byte_1299A6, byte_1299AE
    .word byte_1299B6, byte_1299BE, byte_1299C6, byte_1299CE
    .word byte_1299D6, byte_1299DE, byte_1299E6, byte_1299EE
    .word byte_129A5E, byte_129A9A, byte_129AA6, byte_129ABC
    .word byte_129AC8, byte_129AD4, byte_129ADC, byte_129AE4
    .word byte_129AEC, byte_129AF4, byte_129AFC, byte_129B04
    .word byte_129B0C, byte_129B14, byte_129B1C, byte_129B24
    .word byte_129B2C, byte_129B34, 0

byte_129956:
    entrance DOOR, $940, $8940, RIGHT, MUSIC_9, $AD00, $9AC0, DOWN

byte_12995E:
    entrance DOOR, $540, $88C0, UP, MUSIC_SAME, $1F00, $9140, LEFT

byte_129966:
    entrance DOOR, $1F40, $9140, RIGHT, MUSIC_SAME, $540, $8900, DOWN

byte_12996E:
    entrance DOOR, $1DC0, $90C0, UP, MUSIC_SAME, $1700, $9140, LEFT

byte_129976:
    entrance DOOR, $1740, $9140, RIGHT, MUSIC_SAME, $1DC0, $9100, DOWN

byte_12997E:
    entrance DOOR, $240, $88C0, UP, MUSIC_SAME, $500, $9140, LEFT

byte_129986:
    entrance DOOR, $540, $9140, RIGHT, MUSIC_SAME, $240, $8900, DOWN

byte_12998E:
    entrance DOOR, $340, $90C0, UP, MUSIC_SAME, $1500, $8940, LEFT

byte_129996:
    entrance DOOR, $1540, $8940, RIGHT, MUSIC_SAME, $340, $9100, DOWN

byte_12999E:
    entrance DOOR, $240, $90C0, UP, MUSIC_SAME, $1F00, $8940, LEFT

byte_1299A6:
    entrance DOOR, $1F40, $8940, RIGHT, MUSIC_SAME, $240, $9100, DOWN

byte_1299AE:
    entrance DOOR, $1D40, $88C0, UP, MUSIC_SAME, $1300, $9940, LEFT

byte_1299B6:
    entrance DOOR, $1340, $9940, RIGHT, MUSIC_SAME, $1D40, $8900, DOWN

byte_1299BE:
    entrance DOOR, $1C40, $88C0, UP, MUSIC_SAME, $300, $9940, LEFT

byte_1299C6:
    entrance DOOR, $340, $9940, RIGHT, MUSIC_SAME, $1C40, $8900, DOWN

byte_1299CE:
    entrance DOOR, $1B40, $88C0, UP, MUSIC_SAME, $F00, $9140, LEFT

byte_1299D6:
    entrance DOOR, $F40, $9140, RIGHT, MUSIC_SAME, $1B40, $8900, DOWN

byte_1299DE:
    entrance DOOR, $1C0, $98C0, UP, MUSIC_SAME, $B00, $9940, LEFT

byte_1299E6:
    entrance DOOR, $B40, $9940, RIGHT, MUSIC_SAME, $1C0, $9900, DOWN

byte_1299EE:
    .import stru_158920

    npc NPC_1, $E80, $8940, RIGHT, stru_158920
    .byte $A, $6A, $65, $67, 8
    .byte $CB, 0, $19, 1, $53, 0, $61, $FF, $60, $11, $3A
    .byte 1, $27, $53, 0, $61, $FF, $60, $1A, $3A, 2, $27
    .byte $53, 0, $61, $FF, $60, $23, $5A, 1, 4, $FA, 4, $FA
    .byte 4, $FA, 4, $FA, 4, $FA, 4, $BE, 4, $5A, 8, $CC, 0
    .byte 4, $5A, $5A, $19, 4, $FA, 4, $FA, 4, $FA, 4, $FA
    .byte 4, $FA, 4, $BE, 4, $5A, 8, $CD, 0, $67, 8, $D3, 3
    .byte $67, 8, $D4, 3, $67, 8, $D5, 3, $67, $3E, $59, $9A
    .byte $3D, $C0, $FD, 6, $7E, $3C, 6, 0, 8, $C4, 0, 0, $56
    .byte 5, $16, 5, 3

byte_129A5E:
    .import stru_1589A4

    npc NPC_1, $FD80, $7E00, UP, stru_1589A4
    .byte $35, $24, $43, 7, $B
    .byte $3E, $83, $9A, 4, $50, 8, $DF, 3, $5A, 9, 4, $96
    .byte $10, $E0, $3D, $4B, $E2, $C0, $94, $3C, 6, $4E, $17
    .byte $1B, $7B, 0, $F0, 1, $F2, 1, $F0, 1, $F2, 1, $F4
    .byte 1, $F2, 1, $F4, 1, $F6, 1, $F4, 1, $F6, 1, $50, 1
    .byte 0

byte_129A9A:
    .import stru_158964

    npc WALK_NPC, $1D40, $9140, RIGHT, stru_158964
    .byte $A, $B, 8, $BD, 0, 0

byte_129AA6:
    .import stru_1589FC

    npc NPC_1, $E40, $89C0, RIGHT, stru_1589FC
    .byte $A, $15, $27, $6B, $F
    .byte 8, $C3, 0, 0, 8, $C2, 0, 8, $C3, 0, 0

byte_129ABC:
    npc WALK_NPC, $1E00, $9180, RIGHT, stru_158964
    .byte $A, $B, 8, $AD, 0, 0

byte_129AC8:
    npc NPC_1, $1440, $8900, DOWN, stru_1589FC
    .byte $A, $B, 8, $A8, 0, 0

byte_129AD4:
    .byte $A0, 9, 0, $99, $88, $81, $70, $27

byte_129ADC:
    .byte $20, 9, $80, $99, $88, $81, $43, $28

byte_129AE4:
    .byte $20, $A, 0, $99, $88, $81, $3E, $29

byte_129AEC:
    .byte $20, $A, $80, $99, $88, $81, 0, $2A

byte_129AF4:
    .byte $60, $11, 0, $99, $88, $81, $1F, $2B

byte_129AFC:
    .byte $E0, $11, 0, $99, $88, $81, $43, $2C

byte_129B04:
    .byte $60, $12, 0, $99, $88, $81, $3E, $2D

byte_129B0C:
    .byte $A0, $D, 0, $91, $88, $81, $18, $49

byte_129B14:
    .byte $E0, $D, 0, $91, $88, $81, $49, $49

byte_129B1C:
    .byte $20, $E, 0, $91, $88, $81, $52, $49

byte_129B24:
    .byte $A0, $D, $C0, $91, $88, $81, $28, $49

byte_129B2C:
    .byte $E0, $D, $C0, $91, $88, $81, $6D, $49

byte_129B34:
    .byte $20, $E, $C0, $91, $88, $81, $45, $49

off_129B3C:
    .word byte_129B86, byte_129C09, byte_129C11, byte_129C19
    .word byte_129C21, byte_129C29, byte_129C31, byte_129C39
    .word byte_129C41, byte_129C49, byte_129C51, byte_129C59
    .word byte_129C61, byte_129C69, byte_129C71, byte_129C79
    .word byte_129C81, byte_129C89, byte_129C91, byte_129C99
    .word byte_129CA1, byte_129CA9, byte_129CB1, byte_129CB9
    .word byte_129CC1, byte_129CC9, byte_129CD1, byte_129CF0
    .word byte_129CF8, byte_129D3C, byte_129D7C, byte_129DBC
    .word byte_129DC4, byte_129DCC, byte_129DD4, byte_129DDC
    .word 0

byte_129B86:
    .byte $5B, $85, $C0, $69, $36, $82, $35, $82, $11, 0, $12
    .byte $69, $F, 1, $1D, $12, $64, $1D, $43, 7, $19, $11
    .byte $64, 1, $1D, $10, 0, $10, $69, $12, $6A, $22, 1
    .byte $30, $12, $65, $30, $43, 7, $2C, $11, $65, 1, $30
    .byte $10, 0, $10, $6A, $12, $6B, $35, 1, $43, $12, $66
    .byte $43, $43, 7, $3F, $11, $66, 1, $43, $10, 0, $10
    .byte $6B, $12, $6C, $48, 1, $56, $12, $67, $56, $43, 7
    .byte $52, $11, $67, 1, $56, $10, 0, $10, $6C, $12, $6D
    .byte $5B, 1, $69, $12, $68, $69, $43, 7, $65, $11, $68
    .byte 1, $69, $10, 0, $10, $6D, $12, 0, $70, $11, 0, $10
    .byte $6E, $10, $77, $12, $87, $7C, $3D, $B1, $FB, $C4
    .byte $80, $4E, 0, $3D, $B1, $FD, $C4, $74, $4E, 0

byte_129C09:
    entrance DOOR, $7240, $8E80, UP, MUSIC_9, $B240, $A5C0, DOWN

byte_129C11:
    entrance HOLE, $7140, $8F80, UP, MUSIC_SAME, $7C40, $8F00, DOWN

byte_129C19:
    entrance DOOR, $7C40, $8E80, UP, MUSIC_SAME, $7140, $8F80, DOWN

byte_129C21:
    entrance HOLE, $7340, $8F80, UP, MUSIC_SAME, $8640, $8F00, DOWN

byte_129C29:
    entrance DOOR, $8640, $8E80, UP, MUSIC_SAME, $7340, $8F80, DOWN

byte_129C31:
    entrance HOLE, $7B40, $8F80, UP, MUSIC_SAME, $7240, $9600, DOWN

byte_129C39:
    entrance DOOR, $7240, $9580, UP, MUSIC_SAME, $7B40, $8F80, DOWN

byte_129C41:
    entrance HOLE, $7D40, $8F80, UP, MUSIC_SAME, $7C40, $9600, DOWN

byte_129C49:
    entrance DOOR, $7C40, $9580, UP, MUSIC_SAME, $7D40, $8F80, DOWN

byte_129C51:
    entrance HOLE, $8540, $8F80, UP, MUSIC_SAME, $8640, $9600, DOWN

byte_129C59:
    entrance DOOR, $8640, $9580, UP, MUSIC_SAME, $8540, $8F80, DOWN

byte_129C61:
    entrance HOLE, $8740, $8F80, UP, MUSIC_SAME, $7240, $9D00, DOWN

byte_129C69:
    entrance DOOR, $7240, $9C80, UP, MUSIC_SAME, $8740, $8F80, DOWN

byte_129C71:
    entrance HOLE, $8540, $9680, UP, MUSIC_SAME, $7C40, $9D00, DOWN

byte_129C79:
    entrance DOOR, $7C40, $9C80, UP, MUSIC_SAME, $8540, $9680, DOWN

byte_129C81:
    entrance HOLE, $8740, $9680, UP, MUSIC_SAME, $8640, $9D00, DOWN

byte_129C89:
    entrance DOOR, $8640, $9C80, UP, MUSIC_SAME, $8740, $9680, DOWN

byte_129C91:
    entrance HOLE, $7140, $9D80, UP, MUSIC_SAME, $7240, $A400, DOWN

byte_129C99:
    entrance DOOR, $7240, $A380, UP, MUSIC_SAME, $7140, $9D80, DOWN

byte_129CA1:
    entrance HOLE, $7340, $9D80, UP, MUSIC_SAME, $7C40, $A400, DOWN

byte_129CA9:
    entrance DOOR, $7C40, $A380, UP, MUSIC_SAME, $7340, $9D80, DOWN

byte_129CB1:
    entrance HOLE, $7B40, $9D80, UP, MUSIC_SAME, $8640, $A400, DOWN

byte_129CB9:
    entrance DOOR, $8640, $A380, UP, MUSIC_SAME, $7B40, $9D80, DOWN

byte_129CC1:
    entrance HOLE, $7D40, $9D80, UP, MUSIC_SAME, $8240, $6A00, DOWN

byte_129CC9:
    entrance DOOR, $8240, $6980, UP, MUSIC_SAME, $7D40, $9D80, DOWN

byte_129CD1:
    .byte $5B, $8B, $40, $6F, $35, $1B, $12, $75, $F, $3D
    .byte $40, $7F, 4, $86, 0, $44, $2F, $10, $75, $3D, $40
    .byte $7F, 4, $86, $3E, $ED, $9C, 0, $50, 1, 0

byte_129CF0:
    entrance DOOR, $7F40, $8580, UP, MUSIC_SAME, $8B40, $6F40, DOWN

byte_129CF8:
    .byte $5D, $85, $C4, $69, $40, $89, 5, $29, $A, $43, $14
    .byte 2, $16, 2, 5, $28, $15, 2, $14, 2, 8, $E7, 0, 9
    .byte $1D, 8, $E8, 0, 0, 8, $E9, 0, 9, $40, 8, $EA, 0
    .byte $10, $29, 0, $16, 2, 4, $30, 8, $E6, 0, 0, $16, 2
    .byte 3, $38, 8, $E5, 0, 0, $16, 2, 2, $40, 8, $E4, 0
    .byte 0, 8, $E3, 0, 0

byte_129D3C:
    .byte $59, $84, 0, $71, $C8, $89, $A, $23, $12, $81, $1F
    .byte $12, $F2, $10, 1, $1F, 8, $60, 3, $5A, $29, 4, $F0
    .byte $5A, $11, $10, $F2, 8, $40, 3, 0, 8, $CA, 0, 0, $B
    .byte $3F, $12, $81, $2F, $12, $F2, $10, 8, $32, 2, 0
    .byte $19, 1, $54, $19, $3C, 8, $97, 1, $44, $2E, $10
    .byte $81, 0, 8, $96, 1, 0

byte_129D7C:
    .byte $99, $84, 0, $71, $CC, $89, $A, $23, $12, $81, $1F
    .byte $12, $F2, $10, 1, $1F, 8, $60, 3, $5A, $29, 4, $F0
    .byte $5A, $11, $10, $F2, 8, $40, 3, 0, 8, $CA, 0, 0, $B
    .byte $3F, $12, $81, $2F, $12, $F2, $10, 8, $32, 2, 0
    .byte $19, 1, $54, $19, $3C, 8, $97, 1, $44, $2E, $10
    .byte $81, 0, 8, $96, 1, 0

byte_129DBC:
    .byte $A0, $86, $80, $6C, $88, $81, $3E, $2E

byte_129DC4:
    .byte $A0, $89, 0, $6D, $88, $81, $C, $2F

byte_129DCC:
    .byte $60, $85, 0, $73, $88, $81, $49, $30

byte_129DD4:
    .byte $60, $71, $C0, $A4, $88, $81, $3E, $31

byte_129DDC:
    .byte $60, $7F, $80, $86, $88, $81, $6B, $34

off_129DE4:
    .word 0, byte_129DFE, byte_129E21, byte_129E44, byte_129E7D
    .word byte_129EC2, byte_129F07, byte_129EA0, byte_129EA7
    .word byte_129EE5, byte_129EEC, byte_129F40, byte_129F5B

byte_129DFE:
    .byte $15, $E, $14, 1, $13, $71, $12, $10, 1, $80, 2, $82
    .byte $FE, $12, $C8, $12, $94, 1, 0, $6C, $45, $B9, $15
    .byte $28, $14, 1, $13, $31, $12, $4D, 0, $F, $9B, $46
    .byte $F2

byte_129E21:
    .byte $15, $E, $14, 1, $13, $71, $12, $10, 1, $80, 2, $82
    .byte $FE, $12, $C8, $12, $94, 1, 0, $6C, $45, $B9, $15
    .byte $28, $14, 1, $13, $31, $12, $F5, 0, $F, $A7, $46
    .byte $FA

byte_129E44:
    .byte $15, $E, $14, 1, $13, $71, $12, $10, 1, $80, 2, $82
    .byte $FE, $12, $C8, $12, $94, 1, 0, $6C, $45, $B9, $15
    .byte $28, $14, 1, $13, $31, $12, $B4, $12, $64, 1, $80
    .byte 2, $82, $82, $12, $6C, 1, 0, $D0, $45, $F2, $15
    .byte 8, $14, 1, $13, $D, $12, $16, 0, $A, $B7, $46, $F2

byte_129E7D:
    .byte $16, $4C, $17, $31, $10, 1, $11, $2A, 1, $40, $59
    .byte $86, $FE, $16, $C8, $16, $94, 1, 0, $6C, $C6, $73
    .byte $16, $F, $17, $71, $10, 1, $11, $F, 0, $F, $A7, $46
    .byte $F2

byte_129EA0:
    npc STAT_NPC, $A800, $F00, UP, $46A7
    .byte $FA

byte_129EA7:
    .import stru_158200

    npc STAT_NPC, $CB00, $8001, UP, stru_158200+2
    .byte $82, $12, $6C, 1, 0, $D0
    .byte $45, $F2, $15, 8, $14, 1, $13, $D, $12, $16, 0, $A
    .byte $B7, $46, $F2

byte_129EC2:
    .byte $16, $F4, $17, $31, $10, 1, $11, $2A, 1, $40, $59
    .byte $86, $FE, $16, $C8, $16, $94, 1, 0, $6C, $C6, $73
    .byte $16, $F, $17, $71, $10, 1, $11, $F, 0, $F, $A7, $46
    .byte $F2

byte_129EE5:
    .byte $16, $A8, 0, $F, $9B, $46, $F2

byte_129EEC:
    npc STAT_NPC, $2300, $8001, UP, stru_158200+2
    .byte $82, $12, $6C, 1, 0, $D0
    .byte $45, $F2, $15, 8, $14, 1, $13, $D, $12, $16, 0, $A
    .byte $B7, $46, $F2

byte_129F07:
    .byte $16, $16, $17, $D, $10, 1, $11, $A, 1, $40, $1D
    .byte $86, $82, $16, $6C, 1, 0, $B4, $C6, $CF, $16, $B3
    .byte $16, $64, $17, $31, $10, 1, $11, $2A, 1, $40, $59
    .byte $86, $FE, $16, $C8, $16, $94, 1, 0, $6C, $C6, $73
    .byte $16, $F, $17, $71, $10, 1, $11, $F, 0, $F, $A7, $46
    .byte $F2

byte_129F40:
    .byte $16, $16, $17, $D, $10, 1, $11, $A, 1, $40, $1D
    .byte $86, $82, $16, $6C, 1, 0, $B4, $C6, $CF, $16, $CB
    .byte 0, $F, $9B, $46, $F2

byte_129F5B:
    .byte $16, $16, $17, $D, $10, 1, $11, $A, 1, $40, $1D
    .byte $86, $82, $16, $6C, 1, 0, $B4, $C6, $CF, $16, $24
    .byte 0, $F, $A7, $46, $FA
