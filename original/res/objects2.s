.include "objects.inc"

; BANK $11
.segment "BANK_1"
; 0x11 records
off_118000:
    .word off_118022, off_118208, off_118675, off_11872F, off_1187E9
    .word off_1188FB, off_118A7B, off_118DC5, off_118FD5, off_119285
    .word off_119385, off_1194D5, off_11964A, off_119749, off_11990B
    .word off_119B86, off_119C96

off_118022:
    .word byte_11805C, byte_118064, byte_11806C, byte_118074
    .word byte_11807C, byte_118084, byte_11808C, byte_1180B2
    .word byte_1180BA, byte_1180C2, byte_1180CA, byte_1180D2
    .word byte_1180DA, byte_1180E2, byte_1180EA, byte_1180F2
    .word byte_11811A, byte_118122, byte_11812A, byte_118132
    .word byte_11813A, byte_118146, byte_118160, byte_118173
    .word byte_118188, byte_11819D, byte_1181D2, byte_1181EE
    .word 0

byte_11805C:
    entrance DOOR, $C140, $ED00, UP, MUSIC_6, $5A40, $7980, DOWN

byte_118064:
    entrance DOOR, $BD80, $EDC0, UP, MUSIC_SAME, $9B40, $F580, LEFT

byte_11806C:
    entrance DOOR, $BE80, $EDC0, UP, MUSIC_SAME, $B340, $F580, LEFT

byte_118074:
    entrance DOOR, $BF40, $EDC0, UP, MUSIC_SAME, $B340, $FD80, LEFT

byte_11807C:
    entrance DOOR, $C380, $EDC0, UP, MUSIC_SAME, $AB40, $F580, LEFT

byte_118084:
    entrance DOOR, $C480, $EDC0, UP, MUSIC_SAME, $A340, $FD80, LEFT

byte_11808C:
    .byte $58, $C5, $C0, $ED, $36, $25, $35, $15, $12, $5B
    .byte $11, $3D, $40, $C7, $86, $F1, 0, 8, $4B, 3, 0, $D
    .byte $55, $1A, 1, $22, $D, $56, $1F, 1, $22, $D, $57
    .byte $25, 8, $35, 3, 0

byte_1180B2:
    entrance STAIRS, $BC80, $EE40, LEFT, MUSIC_SAME, $BE80, $F580, RIGHT

byte_1180BA:
    entrance STAIRS, $BE40, $F580, LEFT, MUSIC_SAME, $BCC0, $EE40, RIGHT

byte_1180C2:
    entrance DOOR, $BF80, $F4C0, UP, MUSIC_SAME, $B340, $ED80, LEFT

byte_1180CA:
    entrance DOOR, $C080, $F4C0, UP, MUSIC_SAME, $BB40, $F580, LEFT

byte_1180D2:
    entrance DOOR, $C180, $F4C0, UP, MUSIC_SAME, $BB40, $FD80, LEFT

byte_1180DA:
    entrance DOOR, $C280, $F4C0, UP, MUSIC_SAME, $DF40, $2580, LEFT

byte_1180E2:
    entrance DOOR, $C380, $F4C0, UP, MUSIC_SAME, $9B40, $ED80, LEFT

byte_1180EA:
    entrance DOOR, $C440, $F4C0, UP, MUSIC_SAME, $F40, $5580, LEFT

byte_1180F2:
    .byte $58, $C5, $42, $F5, $36, $27, $35, $17, $12, $3C
    .byte $11, $3D, $C0, $1A, 4, $5C, 0, 8, $63, 3, $10, $5B
    .byte 0, $D, $55, $1C, 1, $24, $D, $56, $21, 1, $24, $D
    .byte $57, $27, 8, $35, 3, 0

byte_11811A:
    entrance STAIRS, $C040, $FD80, LEFT, MUSIC_SAME, $B4C0, $F540, RIGHT

byte_118122:
    entrance DOOR, $C180, $FCC0, UP, MUSIC_SAME, $BB40, $2180, LEFT

byte_11812A:
    entrance DOOR, $C240, $FCC0, UP, MUSIC_SAME, $DB40, $2180, LEFT

byte_118132:
    entrance STAIRS, $C080, $FD40, LEFT, MUSIC_SAME, $9C80, $F180, RIGHT

byte_11813A:
    .import stru_158328

    npc WALK_NPC, $C5C0, $EE80, RIGHT, stru_158328
    .byte $A, $B, 8, $18, 1, 0

byte_118146:
    .import stru_158308

    npc WALK_NPC, $C340, $F580, LEFT, stru_158308
    .byte $A, $19, $33, 3, $16
    .byte $52, $80, $12, 8, 1, 1, 0, 8, $15, 2, 0, 8, 0, 1, 0

byte_118160:
    .import stru_158388

    npc WALK_NPC, $C3C0, $F5C0, RIGHT, stru_158388
    .byte $A, $12, $33, 3, $F
    .byte 8, $57, 0, 0, 8, 2, 1, 0

byte_118173:
    .import stru_158348

    npc WALK_NPC, $BEC0, $EEC0, LEFT, stru_158348
    .byte $A, $14, 8, $19, 1
    .byte 9, $11, 8, $1A, 1, 0, 8, $1B, 1, 0

byte_118188:
    .byte $54, $C5, $46, $EE, 8, $84, 6, $23, $35, $D, $3E
    .byte $96, $81, 0, $36, $22, $16, 1, $12, 1, 3

byte_11819D:
    .byte $D4, $BE, $80, $F5, 8, $84, 6, $23, $35, $1D, $3E
    .byte $BB, $81, 8, $51, 3, $3E, $C0, $81, 8, $52, 3, $3E
    .byte $CD, $81, $10, $3C, $11, $23, 0, $30, 1, $32, $A
    .byte 3, $32, $F, $F6, 1, $72, 1, $52, 1, $56, 1, $76
    .byte 1, 3, $74, 1, $76, 9, 0

byte_1181D2:
    .byte $D4, $C4, $42, $F5, $40, $80, 6, $24, $35, $10, 8
    .byte $53, 3, $3E, $E3, $81, 0, $36, $F, $34, 1, $36, $A
    .byte $16, 1, $12, 1, 3

byte_1181EE:
    .byte $14, $BD, $46, $EE, $40, $80, 6, $24, $35, $10, 8
    .byte $54, 3, $3E, $FF, $81, 0, $32, $1A, $30, 1, $10
    .byte 1, $16, 1, 3

off_118208:
    .word byte_118242, byte_11824A, byte_118252, byte_118277
    .word byte_11827F, byte_118287, byte_11828F, byte_118297
    .word byte_11829F, byte_1182A7, byte_1182CC, byte_1182F9
    .word byte_118325, byte_11838A, byte_1183B8, byte_118426
    .word byte_118458, byte_118471, byte_118499, byte_1184D1
    .word byte_118505, byte_11857D, byte_1185F5, byte_118603
    .word byte_118610, byte_11861D, byte_118651, byte_118659
    .word 0

byte_118242:
    entrance DOOR, $B80, $2180, RIGHT, MUSIC_6, $2C40, $4F00, DOWN

byte_11824A:
    entrance STAIRS, $880, $2140, LEFT, MUSIC_SAME, $880, $3980, RIGHT

byte_118252:
    .byte $58, $A, $C0, $20, $36, $24, $D, $55, $14, 8, $36
    .byte 3, $5B, 8, $3D, $51, $BF, $86, $21, 0, $D, $56, $19
    .byte 1, $1C, $D, $57, $1F, 8, $35, 3, $35, $24, 8, $34
    .byte 3, 0

byte_118277:
    entrance DOOR, $7380, $2180, RIGHT, MUSIC_SAME, $980, $3900, DOWN

byte_11827F:
    entrance DOOR, $9F80, $FD80, RIGHT, MUSIC_SAME, $A40, $3900, DOWN

byte_118287:
    entrance DOOR, $B80, $2980, RIGHT, MUSIC_6, $6640, $CE00, DOWN

byte_11828F:
    entrance DOOR, $380, $3180, RIGHT, MUSIC_6, $2740, $7C00, DOWN

byte_118297:
    entrance DOOR, $B80, $4180, RIGHT, MUSIC_a, $E040, $F400, DOWN

byte_11829F:
    entrance DOOR, $9B80, $2180, RIGHT, MUSIC_6, $5800, $B280, DOWN

byte_1182A7:
    .byte $54, $B, $86, $21, $C8, $85, 5, $A, $A, $18, 8, 9
    .byte 0, $12, $40, $12, 1, $1F, $5A, $2F, 8, $94, 2, 0
    .byte $40, $1F, $3E, $C7, $82, $10, $A, 0, $76, 4, $F4
    .byte 1, 0

byte_1182CC:
    .byte $55, $A, $84, $21, $C8, $85, 6, $A, $A, $2C, $12
    .byte $32, $29, $19, 1, $52, $80, $25, $54, 5, $1A, 8
    .byte $B, 0, 1, $1D, 8, $A, 0, 8, $24, 2, $55, 8, $D, 0
    .byte 0, 8, $EE, 1, 0, 8, 9, 0, 0

byte_1182F9:
    .byte $15, $9D, $82, $FD, $7C, $86, 5, $32, $A, $2B, $12
    .byte $25, $28, $12, $26, $21, 8, 4, 0, $27, 0, $1D, $5C
    .byte 6, $25, $3C, $2D, $2B, 0, 8, $49, 2, 0, 8, 2, 0
    .byte 8, 3, 0, 0, 8, 1, 0, 0

byte_118325:
    .byte $D5, 9, $44, $21, $7C, $86, 6, $32, $A, $64, 8, $BD
    .byte 3, 8, $34, 2, $37, $22, 3, $2B, $59, $38, $5D, $20
    .byte $59, $26, 3, $1E, 1, $55, $2F, $51, $5C, 6, $2E
    .byte $64, 8, $36, 2, 9, $59, 1, $15, $39, $61, $21, $59
    .byte $19, 1, $3A, 1, $36, $18, $59, $2D, $43, $5C, 6
    .byte $30, $64, 8, $38, 2, 9, $59, 1, $2B, $3A, 1, $4D
    .byte 8, $12, 2, 9, $59, 1, $34, 8, $49, 2, 0, 8, $25
    .byte 3, 0, 8, $6A, 3, 0, 8, $37, 2, 0, 8, $23, 3, 0, 8
    .byte $24, 3, 0

byte_11838A:
    .import stru_15862C

    npc WALK_NPC, $72C0, $2180, RIGHT, stru_15862C
    .byte $A, $2D, $12, $26
    .byte $2A, $12, $F7, $26, $12, $32, $15, 8, 8, 0, 0, 8
    .byte 4, 0, $27, 0, $22, $5C, 6, $25, $3C, $2D, $2D, 0
    .byte 8, $49, 2, 0, 8, 6, 0, 0, 8, $93, 2, 0

byte_1183B8:
    .byte $D9, $A, 0, $21, $70, $86, $A, $6D, 8, $39, 3, $12
    .byte $26, $12, $5A, $12, 1, $14, $5A, $10, $12, $40, $5D
    .byte 8, $14, 0, $1B, $1F, 8, $15, 0, 8, $C, 0, $3A, 0
    .byte $37, $57, 8, $45, 3, $3A, 1, $37, $57, 8, $45, 3
    .byte $3A, 2, $37, $57, 8, $45, 3, 8, $1E, 0, $37, $37
    .byte 3, $56, $56, $56, 8, $1B, 0, $37, $38, 3, $4F, $48
    .byte 8, $1D, 0, 8, $13, 0, 0, 8, $1C, 0, 8, $13, 0, $F
    .byte 8, $21, 0, 8, $13, 0, 0, 8, $14, 0, 8, $E, 0, 8
    .byte $13, 0, $10, $40, $12, $26, $6D, $3F, 9, 0

byte_118426:
    .byte $A7, $71, $C0, $21, $6C, $86, 5, $26, $35, $C, 1
    .byte $11, $B, $2D, 8, $2D, 3, $11, $F8, $11, $30, $44
    .byte $9F, $10, $30, $10, $26, $10, $25, $5A, $12, $3E
    .byte $54, $84, 8, $22, 2, $12, $40, $2A, $10, $A, $3E
    .byte $57, $84, 0, $50, 1, 3, 0

byte_118458:
    .byte $9D, $72, $C0, $20, $6C, $86, 6, $26, $B, $18, 8
    .byte $2C, 3, $5A, $24, 4, $F0, $5A, $12, $10, $F7, 8
    .byte $40, 3, 0

byte_118471:
    .byte $67, $9E, $40, $FD, $74, $86, 5, $25, $35, $C, 1
    .byte $11, $B, $23, 8, $2D, 3, $3E, $95, $84, $11, $F8
    .byte $11, $30, $44, $A0, $10, $F8, $10, $30, $10, $25
    .byte $3E, $98, $84, 0, $F0, 1, 3, 0

byte_118499:
    .import OldManAnim

    npc NPC_1, $9940, $2180, DOWN, OldManAnim
    .byte $A, $13, $12, $41, $F
    .byte 8, $38, 1, 0, 8, $58, 1, 0, $D, $63, $31, $25, $63
    .byte $2E, $37, 8, $5A, 1, $25, $44, $5C, 6, $2D, $2D
    .byte 4, $28, $27, 0, $2A, 1, $1D, $10, $41, 0, 8, $58
    .byte 1, 0, $C, 1, $37, 8, $50, 2, 0

byte_1184D1:
    npc WALK_NPC, $9A40, $2180, RIGHT, stru_158308
    .byte $A, $33, $12, $41, $30
    .byte $1D, $A, 0, 8, $5C, 1, 9, $2C, $27, 0, $28, $25
    .byte $44, $1D, $A, 0, $29, $24, $5C, 6, $25, $44, $2D
    .byte $33, 0, 8, $5F, 2, 0, 8, $60, 2, 0, 8, $A, 3, 0
    .byte 8, $59, 1, 0

byte_118505:
    npc WALK_NPC, $100, $3100, RIGHT, OldManAnim
    .byte $1D, $1E, 0, 2, 5, $85
    .byte $E, 0, $A, $77, 8, $B5, 0, $37, $BE, 3, $40, $6A
    .byte $32, $3C, 8, $14, 3, 9, $6A, $29, $6E, $3A, 1, $28
    .byte $18, $68, 1, $2B, $3A, 0, $77, $52, $80, $72, $60
    .byte $36, $28, $77, 8, $F, 3, 3, $61, $FF, $60, $36, 8
    .byte $3D, 3, $5C, 7, 3, 8, $14, 3, 9, $6A, $29, $6E, $3A
    .byte 1, $51, 8, $4D, 3, $18, $68, 1, $54, $3A, 0, $77
    .byte $52, $80, $72, $52, $40, $60, $28, $77, 8, $4F, 3
    .byte 3, 8, $3D, 3, $5C, 7, $53, $BF, 3, $28, $77, 8, $13
    .byte 3, 3, 8, $3D, 2, 3, $28, $77, 8, $1B, 2, 3

byte_11857D:
    npc WALK_NPC, $900, $2900, RIGHT, OldManAnim
    .byte $1D, $4B, 0, 2, $7D, $85
    .byte $E, 0, $A, $77, 8, $12, 3, $37, $BE, 3, $40, $6A
    .byte $32, $3C, 8, $14, 3, 9, $6A, $29, $6E, $3A, 1, $28
    .byte $18, $68, 1, $2B, $3A, 0, $77, $52, $80, $72, $60
    .byte $36, $28, $77, 8, $F, 3, 3, $61, $FF, $60, $36, 8
    .byte $3D, 3, $5C, 7, 3, 8, $14, 3, 9, $6A, $29, $6E, $3A
    .byte 1, $51, 8, $4D, 3, $18, $68, 1, $54, $3A, 0, $77
    .byte $52, $80, $72, $52, $40, $60, $28, $77, 8, $4F, 3
    .byte 3, 8, $3D, 3, $5C, 7, $53, $BF, 3, $28, $77, 8, $13
    .byte 3, 3, 8, $3D, 2, 3, $28, $77, 8, $1B, 2, 3

byte_1185F5:
    npc WALK_NPC, $900, $4100, RIGHT, OldManAnim
    .byte $1D, $58, 0, 2, $7D, $85, $E, 0

byte_118603:
    .byte $D9, 2, 0, $31, $70, $86, $A, $C, 2, 9, $8D, $28
    .byte 0

byte_118610:
    .byte $D9, $A, 0, $29, $70, $86, $A, $C, 2, 9, $8D, $28
    .byte 0

byte_11861D:
    .byte $D9, $A, 0, $41, $70, $86, $A, $33, $12, $80, $10
    .byte 2, 9, $8D, $28, 0, 8, $14, 0, 1, $18, 8, $89, 1
    .byte 8, $88, 1, 9, $15, 8, $8A, 1, 1, $25, 8, $FC, 1
    .byte $66, 8, $CB, 3, 9, $22, 8, $8B, 1, 8, $13, 0, $10
    .byte $80, 0

byte_118651:
    entrance DOOR, $E380, $3980, RIGHT, MUSIC_6, $D940, $6600, DOWN

byte_118659:
    .byte $95, $E2, $44, $39, $80, $80, 6, $2D, $A, $1B, $12
    .byte $86, $F, 1, $12, 8, $BC, 2, 8, $21, 1, $55, 8, $76
    .byte 2, $10, $86, 0

off_118675:
    .word byte_118697, byte_11869F, byte_1186A7, byte_1186AF
    .word byte_1186B7, byte_1186BF, byte_1186C7, byte_1186CF
    .word byte_1186D7, byte_1186DF, byte_1186E7, byte_1186EF
    .word byte_1186F7, byte_1186FF, byte_118707, byte_118712
    .word 0

byte_118697:
    entrance DOOR, $9F80, $2180, RIGHT, MUSIC_SAME, $7C40, $21C0, RIGHT

byte_11869F:
    entrance DOOR, $9C80, $2140, LEFT, MUSIC_SAME, $C780, $F880, LEFT

byte_1186A7:
    entrance DOOR, $9C00, $21C0, LEFT, MUSIC_SAME, $BB80, $EC80, LEFT

byte_1186AF:
    entrance DOOR, $8740, $2140, RIGHT, MUSIC_SAME, $C40, $41C0, RIGHT

byte_1186B7:
    entrance DOOR, $87C0, $21C0, RIGHT, MUSIC_SAME, $94C0, $2140, RIGHT

byte_1186BF:
    entrance DOOR, $A780, $2180, RIGHT, MUSIC_SAME, $440, $21C0, RIGHT

byte_1186C7:
    entrance DOOR, $A440, $2180, LEFT, MUSIC_SAME, $F40, $3180, LEFT

byte_1186CF:
    entrance DOOR, $8F40, $2140, RIGHT, MUSIC_SAME, $CC0, $4140, RIGHT

byte_1186D7:
    entrance DOOR, $8FC0, $21C0, RIGHT, MUSIC_SAME, $9440, $21C0, RIGHT

byte_1186DF:
    entrance DOOR, $F80, $2180, RIGHT, MUSIC_SAME, $9D40, $EFC0, RIGHT

byte_1186E7:
    entrance DOOR, $C80, $2140, LEFT, MUSIC_SAME, $AF80, $F880, LEFT

byte_1186EF:
    entrance DOOR, $C00, $21C0, LEFT, MUSIC_SAME, $AF80, $EC80, LEFT

byte_1186F7:
    entrance DOOR, $780, $3980, RIGHT, MUSIC_SAME, $B540, $EFC0, RIGHT

byte_1186FF:
    .byte $E0, 5, $80, $39, $88, $81, $41, 3

byte_118707:
    .byte $19, 5, 0, $39, $84, $89, $B, $A, $3F, $F, 0

byte_118712:
    .byte $59, 5, 0, $39, $88, $89, $B, $A, 1, $C, $40, $1C
    .byte 8, $5F, 3, $5A, $27, 4, $F0, $5A, $D, $10, $F4, $10
    .byte $F, 8, $40, 3, 0

off_11872F:
    .word byte_118755, byte_11875D, byte_118765, byte_11876D
    .word byte_118775, byte_11877D, byte_118785, byte_11878D
    .word byte_118795, byte_11879D, byte_1187A5, byte_1187AD
    .word byte_1187B5, byte_1187BD, byte_1187C9, byte_1187D1
    .word byte_1187D9, byte_1187E1, 0

byte_118755:
    entrance DOOR, $9780, $2180, RIGHT, MUSIC_SAME, $74C0, $2140, RIGHT

byte_11875D:
    entrance DOOR, $9480, $2140, LEFT, MUSIC_SAME, $8780, $21C0, LEFT

byte_118765:
    entrance DOOR, $9400, $21C0, LEFT, MUSIC_SAME, $8F80, $21C0, LEFT

byte_11876D:
    entrance DOOR, $F80, $2980, RIGHT, MUSIC_SAME, $7440, $21C0, RIGHT

byte_118775:
    entrance DOOR, $C80, $2940, LEFT, MUSIC_SAME, $A380, $EC80, LEFT

byte_11877D:
    entrance DOOR, $C00, $29C0, LEFT, MUSIC_SAME, $F40, $5180, LEFT

byte_118785:
    entrance DOOR, $F80, $5180, RIGHT, MUSIC_SAME, $C40, $29C0, RIGHT

byte_11878D:
    entrance DOOR, $C80, $5140, LEFT, MUSIC_SAME, $740, $4180, LEFT

byte_118795:
    entrance DOOR, $C00, $51C0, LEFT, MUSIC_SAME, $F40, $3980, LEFT

byte_11879D:
    entrance DOOR, $AF80, $2180, RIGHT, MUSIC_SAME, $480, $3180, RIGHT

byte_1187A5:
    entrance DOOR, $F80, $4980, RIGHT, MUSIC_SAME, $C140, $FBC0, RIGHT

byte_1187AD:
    entrance DOOR, $780, $4980, RIGHT, MUSIC_SAME, $A940, $EFC0, RIGHT

byte_1187B5:
    entrance DOOR, $F80, $3980, RIGHT, MUSIC_SAME, $C40, $51C0, RIGHT

byte_1187BD:
    .byte $DF, $C, $40, $51, 5, $F, $35, $B, 8, $63, 1, 0

byte_1187C9:
    .byte $A0, $D, 0, $29, $88, $81, $43, $14

byte_1187D1:
    .byte $60, 6, $C0, $49, $88, $81, $47, $15

byte_1187D9:
    .byte $E0, $E, $C0, $39, $88, $81, $43, $16

byte_1187E1:
    .byte $A0, $C, $C0, $49, $88, $81, 0, $17

off_1187E9:
    .word byte_11881F, byte_118827, byte_11882F, byte_118837
    .word byte_11883F, byte_118847, byte_11884F, byte_118857
    .word byte_11885F, byte_118867, byte_11886F, byte_118877
    .word byte_11887F, byte_118887, byte_11888F, byte_118897
    .word byte_11889F, byte_1188A7, byte_1188AF, byte_1188B7
    .word byte_1188BF, byte_1188C7, byte_1188CF, byte_1188D7
    .word byte_1188E3, byte_1188EF, 0

byte_11881F:
    entrance DOOR, $A3C0, $F480, RIGHT, MUSIC_SAME, $6CC0, $2140, RIGHT

byte_118827:
    entrance DOOR, $9400, $FEC0, LEFT, MUSIC_SAME, $7F40, $2180, LEFT

byte_11882F:
    entrance DOOR, $7C0, $2180, RIGHT, MUSIC_SAME, $7CC0, $2140, RIGHT

byte_118837:
    entrance DOOR, $400, $21C0, LEFT, MUSIC_SAME, $A740, $2180, LEFT

byte_11883F:
    entrance DOOR, $780, $5180, RIGHT, MUSIC_SAME, $4C0, $2940, RIGHT

byte_118847:
    entrance DOOR, $F80, $4180, RIGHT, MUSIC_SAME, $440, $29C0, RIGHT

byte_11884F:
    entrance DOOR, $C00, $41C0, LEFT, MUSIC_SAME, $8700, $2140, LEFT

byte_118857:
    entrance DOOR, $C80, $4140, LEFT, MUSIC_SAME, $8F00, $2140, LEFT

byte_11885F:
    entrance DOOR, $A3C0, $EC80, RIGHT, MUSIC_SAME, $CC0, $2940, RIGHT

byte_118867:
    entrance DOOR, $9D00, $EFC0, LEFT, MUSIC_SAME, $F40, $2180, LEFT

byte_11886F:
    entrance DOOR, $F80, $3180, RIGHT, MUSIC_SAME, $A480, $2180, RIGHT

byte_118877:
    entrance DOOR, $C7C0, $F880, RIGHT, MUSIC_SAME, $9CC0, $2140, RIGHT

byte_11887F:
    entrance DOOR, $C100, $FBC0, LEFT, MUSIC_SAME, $F40, $4980, LEFT

byte_118887:
    entrance DOOR, $BBC0, $EC80, RIGHT, MUSIC_SAME, $9C40, $21C0, RIGHT

byte_11888F:
    entrance DOOR, $B500, $EFC0, LEFT, MUSIC_SAME, $740, $3980, LEFT

byte_118897:
    entrance DOOR, $440, $3180, LEFT, MUSIC_SAME, $AF40, $2180, LEFT

byte_11889F:
    entrance DOOR, $780, $3180, RIGHT, MUSIC_SAME, $A440, $FFC0, RIGHT

byte_1188A7:
    entrance DOOR, $A400, $FFC0, LEFT, MUSIC_SAME, $740, $3180, LEFT

byte_1188AF:
    entrance DOOR, $AFC0, $F880, RIGHT, MUSIC_SAME, $CC0, $2140, RIGHT

byte_1188B7:
    entrance DOOR, $AFC0, $EC80, RIGHT, MUSIC_SAME, $C40, $21C0, RIGHT

byte_1188BF:
    entrance DOOR, $A900, $EFC0, LEFT, MUSIC_SAME, $740, $4980, LEFT

byte_1188C7:
    entrance DOOR, $780, $4180, RIGHT, MUSIC_SAME, $CC0, $5140, RIGHT

byte_1188CF:
    .byte $20, 6, $40, $41, $88, $81, $41, $18

byte_1188D7:
    .byte $1F, $9B, $80, $FA, 5, $F, $35, $B, 8, $66, 1, 0

byte_1188E3:
    .byte $5F, $B6, $C0, $EF, 5, $F, $35, $B, 8, $64, 1, 0

byte_1188EF:
    .byte $1F, $A9, $80, $FC, 5, $F, $35, $B, 8, $65, 1, 0

off_1188FB:
    .word PodCafeOut, MerCafeOut, ReinCafeOut, byte_118941
    .word PodMallDown1, PodMallUp2, MerMallDown1, MerMallUp2
    .word ReinMallDown1, ReinMallUp2, byte_118979, byte_118981
    .word PodCafeClerk, byte_1189D5, MerCafeClerk, ReinCafeClerk
    .word PodCafeNPC, ReinCafeNPC, MerDrugsClerk, byte_118A5A
    .word ReinDrugsClerk, PodDrugsClerk, 0

PodCafeOut:
    entrance DOOR, $380, $5580, RIGHT, MUSIC_6, $2DC0, $6C40, DOWN

MerCafeOut:
    entrance DOOR, $380, $3D80, RIGHT, MUSIC_6, $58C0, $7040, DOWN

ReinCafeOut:
    entrance DOOR, $9380, $2580, RIGHT, MUSIC_6, $74C0, $EF40, DOWN

byte_118941:
    entrance DOOR, $B80, $2D80, RIGHT, MUSIC_6, $C7C0, $4640, DOWN

PodMallDown1:
    entrance STAIRS, $880, $3D40, LEFT, MUSIC_SAME, $80, $4580, RIGHT

PodMallUp2:
    entrance STAIRS, $840, $3D80, LEFT, MUSIC_SAME, $78C0, $2540, RIGHT

MerMallDown1:
    entrance STAIRS, $A880, $2540, LEFT, MUSIC_SAME, $80, $2D80, RIGHT

MerMallUp2:
    entrance STAIRS, $A840, $2580, LEFT, MUSIC_SAME, $C0, $4D40, RIGHT

ReinMallDown1:
    entrance STAIRS, $880, $4D40, LEFT, MUSIC_SAME, $7080, $2580, RIGHT

ReinMallUp2:
    entrance STAIRS, $840, $4D80, LEFT, MUSIC_SAME, $8C0, $2540, RIGHT

byte_118979:
    entrance STAIRS, $B880, $2540, LEFT, MUSIC_SAME, $880, $5580, RIGHT

byte_118981:
    entrance STAIRS, $B840, $2580, LEFT, MUSIC_SAME, $C0C0, $2540, RIGHT

PodCafeClerk:
    .import WaitressAnim

    npc WALK_NPC, $180, $5500, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script
Cafe:
    check_action TALK, CafeExit - PodCafeClerk
    print $2B1
CafeRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, CafeList - PodCafeClerk
    clear_flag FLAG00|BIT7
CafeList:
    item_list OrangeJuice, FrenchFries, Hamburger, EMPTY, CafeDontNeed - PodCafeClerk
    check_flag FLAG00|BIT7, CafeBuy - PodCafeClerk
    print $33C
    clear_flag FLAG00|BIT7
    return
CafeBuy:
    pay CafeLessMoney - PodCafeClerk
    print $23A
    confirm CafeRefuse - PodCafeClerk
    print $2B2
    play SOUND2, $B
    cash
    add_item CafeExit - PodCafeClerk
    print $3E3
    confirm CafeStopVisit - PodCafeClerk
    jump CafeRepeat - PodCafeClerk
CafeStopVisit:
    print $309
    return
CafeRefuse:
    get CafeExit - PodCafeClerk
CafeDontNeed:
    print $308
    clear_flag FLAG00|BIT7
    return
CafeLessMoney:
    print $33B
CafeExit:
    return

byte_1189D5:
    npc WALK_NPC, $980, $2D00, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script


MerCafeClerk:
    npc WALK_NPC, $180, $3D00, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script

ReinCafeClerk:
    npc WALK_NPC, $9180, $2500, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script

PodCafeNPC:
    npc WALK_NPC, $200, $55C0, RIGHT, WaitressAnim

    check_action TALK, CafeNPCExit - PodCafeNPC
    print $2BD
CafeNPCExit:
    end_script

ReinCafeNPC:
    npc WALK_NPC, $9100, $2580, RIGHT, WaitressAnim

    check_action TALK, RCafeNPCExit - ReinCafeNPC
    print $2BE
RCafeNPCExit:
    end_script

MerDrugsClerk:
    .import PharmacistAnim

    npc WALK_NPC, $AA00, $2500, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script
Drugs:
    check_action TALK, DrugsExit - MerDrugsClerk
    print $306
DrugsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, DrugsList - MerDrugsClerk
    clear_flag FLAG00|BIT7
DrugsList:
    item_list Antidote, AsthmaSpray, LifeUpCream, Insecticide, DrugsDontNeed - MerDrugsClerk
    check_flag FLAG00|BIT7, DrugsBuy - MerDrugsClerk
    print $23B
    clear_flag FLAG00|BIT7
    return
DrugsBuy:
    pay DrugsLessMoney - MerDrugsClerk
    print $23A
    confirm DrugsRefuse - MerDrugsClerk
    print $309
    play SOUND2, $B
    cash
    add_item DrugsExit - MerDrugsClerk
    print $3E3
    confirm DrugsStopVisit - MerDrugsClerk
    jump DrugsRepeat - MerDrugsClerk
DrugsStopVisit:
    print $309
    return
DrugsRefuse:
    get DrugsExit - MerDrugsClerk
DrugsDontNeed:
    print $30A
    clear_flag FLAG00|BIT7
    return
DrugsLessMoney:
    print $33A
DrugsExit:
    return

byte_118A5A:
    npc WALK_NPC, $BA00, $2500, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script

ReinDrugsClerk:
    npc WALK_NPC, $A00, $4D00, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script

PodDrugsClerk:
    npc WALK_NPC, $A00, $3D00, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script

off_118A7B:
    .word MerMallDown2, MerMallUp3, MerMallDown3, MerMallUp4
    .word ReinMallDown2, ReinMallUp3, ReinMallDown3, byte_118ADF
    .word ReinMallUp4, ReinMallDown4, byte_118AF7, YounStoreClerk
    .word MerSportsClerk, MerFoodsClerk, ReinSportsClerk, ReinFoodsClerk
    .word ReinFoodsNPC, EllVarietyClerk, byte_118CB5, byte_118D09
    .word ReinWeaponClerk, 0

MerMallDown2:
    entrance STAIRS, $80, $4D40, LEFT, MUSIC_SAME, $A880, $2580, RIGHT

MerMallUp3:
    entrance STAIRS, $40, $4D80, LEFT, MUSIC_SAME, $C0, $2540, RIGHT

MerMallDown3:
    entrance STAIRS, $80, $2540, LEFT, MUSIC_SAME, $80, $4D80, RIGHT

MerMallUp4:
    entrance STAIRS, $40, $2580, LEFT, MUSIC_SAME, $C0, $3540, RIGHT

ReinMallDown2:
    entrance STAIRS, $880, $2540, LEFT, MUSIC_SAME, $880, $4D80, RIGHT

ReinMallUp3:
    entrance STAIRS, $840, $2580, LEFT, MUSIC_SAME, $B0C0, $2540, RIGHT

ReinMallDown3:
    entrance STAIRS, $B080, $2540, LEFT, MUSIC_SAME, $880, $2580, RIGHT

byte_118ADF:
    entrance STAIRS, $B880, $F940, LEFT, MUSIC_SAME, $C080, $2580, RIGHT

ReinMallUp4:
    entrance STAIRS, $B040, $2580, LEFT, MUSIC_SAME, $C0, $6D40, RIGHT

ReinMallDown4:
    entrance STAIRS, $80, $6D40, LEFT, MUSIC_SAME, $B080, $2580, RIGHT

byte_118AF7:
    entrance DOOR, $B80, $4580, RIGHT, MUSIC_30, $B340, $7000, DOWN

YounStoreClerk:
    .import stru_158268

    npc WALK_NPC, $A00, $4500, DOWN, stru_158268

    check_action TALK, YounStoreExit - YounStoreClerk
    print $306
YounStoreRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, YounStoreList - YounStoreClerk
    clear_flag FLAG00|BIT7
YounStoreList:
    item_list Bread, LifeUpCream, NonstickPan, AirGun, YounStoreRefuse - YounStoreClerk
    check_flag FLAG00|BIT7, YounStoreBuy - YounStoreClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
YounStoreBuy:
    pay YounStoreLess - YounStoreClerk
    print $23A
    confirm @NotConfirm - YounStoreClerk
    print $309
    play SOUND2, $B
    cash
    add_item YounStoreExit - YounStoreClerk
    print $3E3
    confirm @StopBuying - YounStoreClerk
    jump YounStoreRepeat - YounStoreClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get YounStoreExit - YounStoreClerk
YounStoreRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
YounStoreLess:
    print $33A
YounStoreExit:
    end_script

MerSportsClerk:
    .import ServicemanAnim

    npc WALK_NPC, $200, $4D00, DOWN, ServicemanAnim

    check_action TALK, MerSportsExit - MerSportsClerk
    print $306
MerSportsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, MerSportsList - MerSportsClerk
    clear_flag FLAG00|BIT7
MerSportsList:
    item_list WoodenBat, AluminumBat, Boomerang, EMPTY, MerSportsRefuse - MerSportsClerk
    check_flag FLAG00|BIT7, MerSportsBuy - MerSportsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
MerSportsBuy:
    pay MerSportsLess - MerSportsClerk
    print $23A
    confirm @NotConfirm - MerSportsClerk
    print $309
    play SOUND2, $B
    cash
    add_item MerSportsExit - MerSportsClerk
    print $3E3
    confirm @StopBuying - MerSportsClerk
    jump MerSportsRepeat - MerSportsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get MerSportsExit - MerSportsClerk
MerSportsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
MerSportsLess:
    print $33B
MerSportsExit:
    end_script

MerFoodsClerk:
    .import ReceptionistAnim

    npc WALK_NPC, $200, $2500, DOWN, ReceptionistAnim

    check_action TALK, MerFoodsExit - MerFoodsClerk
    print $306
MerFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, MerFoodsList - MerFoodsClerk
    clear_flag FLAG00|BIT7
MerFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, EMPTY, MerFoodsRefuse - MerFoodsClerk
    check_flag FLAG00|BIT7, MerFoodsBuy - MerFoodsClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
MerFoodsBuy:
    pay MerFoodsLess - MerFoodsClerk
    print $23A
    confirm @NotConfirm - MerFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item MerFoodsExit - MerFoodsClerk
    print $3E3
    confirm @StopBuying - MerFoodsClerk
    jump MerFoodsRepeat - MerFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get MerFoodsExit - MerFoodsClerk
MerFoodsRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
MerFoodsLess:
    print $33A
MerFoodsExit:
    end_script

ReinSportsClerk:
    npc WALK_NPC, $A00, $2500, DOWN, ServicemanAnim

    check_action TALK, ReinSportsExit - ReinSportsClerk
    print $306
ReinSportsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, ReinSportsList - ReinSportsClerk
    clear_flag FLAG00|BIT7
ReinSportsList:
    item_list AluminumBat, Boomerang, EMPTY, EMPTY, ReinSportsRefuse - ReinSportsClerk
    check_flag FLAG00|BIT7, ReinSportsBuy - ReinSportsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
ReinSportsBuy:
    pay ReinSportsLess - ReinSportsClerk
    print $23A
    confirm @NotConfirm - ReinSportsClerk
    print $309
    play SOUND2, $B
    cash
    add_item ReinSportsExit - ReinSportsClerk
    print $3E3
    confirm @StopBuying - ReinSportsClerk
    jump ReinSportsRepeat - ReinSportsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get ReinSportsExit - ReinSportsClerk
ReinSportsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
ReinSportsLess:
    print $33B
ReinSportsExit:
    end_script


ReinFoodsClerk:
    npc WALK_NPC, $B200, $2500, DOWN, ReceptionistAnim

    check_action TALK, ReinFoodsExit - ReinFoodsClerk
    print $306
ReinFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, ReinFoodsList - ReinFoodsClerk
    clear_flag FLAG00|BIT7
ReinFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, BerryTofu, ReinFoodsRefuse - ReinFoodsClerk
    check_flag FLAG00|BIT7, ReinFoodsBuy - ReinFoodsClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
ReinFoodsBuy:
    pay ReinFoodsLess - ReinFoodsClerk
    print $23A
    confirm @NotConfirm - ReinFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item ReinFoodsExit - ReinFoodsClerk
    print $3E3
    confirm @StopBuying - ReinFoodsClerk
    jump ReinFoodsRepeat - ReinFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get ReinFoodsExit - ReinFoodsClerk
ReinFoodsRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
ReinFoodsLess:
    print $33A
ReinFoodsExit:
    end_script


ReinFoodsNPC:
    npc WALK_NPC, $B280, $2500, DOWN, ServicemanAnim
    .byte $A, $B, 8, $BF, 2, 0

EllVarietyClerk:
    npc WALK_NPC, $BA00, $F900, DOWN, ReceptionistAnim

    check_action TALK, EllVarietyExit - EllVarietyClerk
    print $306
EllVarietyRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, EllVarietyList - EllVarietyClerk
    clear_flag FLAG00|BIT7
EllVarietyList:
    item_list Ticket, ButterKnife, Rope, SurvKnife, EllVarietyRefuse - EllVarietyClerk
    check_flag FLAG00|BIT7, EllVarietyBuy - EllVarietyClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
EllVarietyBuy:
    pay EllVarietyLess - EllVarietyClerk
    print $23A
    confirm @NotConfirm - EllVarietyClerk
    print $309
    play SOUND2, $B
    cash
    add_item EllVarietyExit - EllVarietyClerk
    print $3E3
    confirm @StopBuying - EllVarietyClerk
    jump EllVarietyRepeat - EllVarietyClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get EllVarietyExit - EllVarietyClerk
EllVarietyRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
EllVarietyLess:
    print $33A
EllVarietyExit:
    end_script


byte_118CB5:
    .byte $18, 9, $C0, $44, 2, $B5, $8C, 9, 0, $D, $6E, $4E
    .byte 8, $26, 3, $37, $32, 3, $2F, $4A, 8, $33, 3, 8, $46
    .byte 2, $1C, $4A, $2B, $2B, $28, $25, $1F, 8, $2B, 3
    .byte 3, $2A, $53, 8, $D7, 3, 3, 8, $27, 3, 3, 8, $33
    .byte 3, 8, $47, 2, $1C, $4A, $29, $46, $2A, $40, $1F
    .byte 8, $2B, 3, 3, $28, $53, 8, $2A, 3, 3, 8, $29, 3
    .byte 3, 8, $2B, 3, 3, $B, $53, 8, $D6, 3, 3

byte_118D09:
    .byte $98, $A, $C0, $44, 2, 9, $8D, 9, 0, $D, 2, $20, 8
    .byte $EF, 1, $13, 4, $16, 4, 1, $17, 1, $28, $25, 2, 8
    .byte $C2, 6, $2E, 0, 1, $28, $A, $74, $1D, 1, 0, $29
    .byte $71, $1F, 8, $39, 3, 8, $14, 0, $1B, $33, 8, $15
    .byte 0, 8, $C, 0, $3A, 0, $4B, $57, 8, $45, 3, $3A, 1
    .byte $4B, $57, 8, $45, 3, $3A, 2, $4B, $57, 8, $45, 3
    .byte 8, $1E, 0, $37, $37, 3, $6A, $6A, $56, 8, $1B, 0
    .byte $37, $38, 3, $63, $5C, 8, $1D, 0, 8, $13, 0, 3, 8
    .byte $1C, 0, 8, $13, 0, $F, 8, $21, 0, 8, $13, 0, 3, 8
    .byte $65, 3, 3

ReinWeaponClerk:
    npc WALK_NPC, $200, $6D00, DOWN, ReceptionistAnim

    check_action TALK, ReinWeaponExit - ReinWeaponClerk
    print $38B
ReinWeaponRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, ReinWeaponList - ReinWeaponClerk
    clear_flag FLAG00|BIT7
ReinWeaponList:
    item_list Bomb, LaserBeam, PlasmaBeam, EMPTY, ReinWeaponRefuse - ReinWeaponClerk
    check_flag FLAG00|BIT7, ReinWeaponBuy - ReinWeaponClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
ReinWeaponBuy:
    pay ReinWeaponLess - ReinWeaponClerk
    print $23A
    confirm @NotConfirm - ReinWeaponClerk
    print $309
    play SOUND2, $B
    cash
    add_item ReinWeaponExit - ReinWeaponClerk
    print $3E3
    confirm @StopBuying - ReinWeaponClerk
    jump ReinWeaponRepeat - ReinWeaponClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get ReinWeaponExit - ReinWeaponClerk
ReinWeaponRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
ReinWeaponLess:
    print $33A
ReinWeaponExit:
    end_script


off_118DC5:
    .word byte_118DED, byte_118DF5, byte_118DFD, byte_118E05
    .word byte_118E0D, byte_118E15, byte_118E1D, byte_118E25
    .word MerVarietyClerk, EllFoodsClerk, byte_118EC4, byte_118ED0
    .word byte_118EDC, byte_118EE8, byte_118F16, UnionStationClerk
    .word ReinStationClerk, SpookStationClerk, SnowStationClerk, 0

byte_118DED:
    entrance STAIRS, $80, $3540, LEFT, MUSIC_SAME, $80, $2580, RIGHT

byte_118DF5:
    entrance STAIRS, $C080, $2540, LEFT, MUSIC_SAME, $B880, $2580, RIGHT

byte_118DFD:
    entrance STAIRS, $C040, $2580, LEFT, MUSIC_SAME, $B8C0, $F940, RIGHT

byte_118E05:
    entrance DOOR, $9840, $F100, UP, MUSIC_6, $8040, $CFC0, DOWN

byte_118E0D:
    entrance DOOR, $A440, $F100, UP, MUSIC_6, $5040, $53C0, DOWN

byte_118E15:
    entrance DOOR, $B440, $F100, UP, MUSIC_a, $D780, $F8C0, DOWN

byte_118E1D:
    entrance DOOR, $A440, $F900, UP, MUSIC_6, $AA40, $CFC0, DOWN

byte_118E25:
    entrance DOOR, $B440, $F900, UP, MUSIC_8, $BA40, $67C0, DOWN

MerVarietyClerk:
    npc WALK_NPC, $200, $3500, DOWN, ServicemanAnim

    check_action TALK, MerVarietyExit - MerVarietyClerk
    print $306
MerVarietyRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, MerVarietyList - MerVarietyClerk
    clear_flag FLAG00|BIT7
MerVarietyList:
    item_list Ruler, StunGun, Rope, RepelRing, MerVarietyRefuse - MerVarietyClerk
    buying_item PhoneCard, MerVarCard - MerVarietyClerk
    print $307
    clear_flag FLAG00|BIT7
    end_script
MerVarCard:
    check_flag FLAG00|BIT7, MerVarietyBuy - MerVarietyClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
MerVarietyBuy:
    pay MerVarietyLess - MerVarietyClerk
    print $23A
    confirm @NotConfirm - MerVarietyClerk
    print $309
    play SOUND2, $B
    cash
    add_item MerVarietyExit - MerVarietyClerk
    print $3E3
    confirm @StopBuying - MerVarietyClerk
    jump MerVarietyRepeat - MerVarietyClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get MerVarietyExit - MerVarietyClerk
MerVarietyRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
MerVarietyLess:
    print $33B
MerVarietyExit:
    end_script


EllFoodsClerk:
    npc WALK_NPC, $C200, $2500, DOWN, ReceptionistAnim

    check_action TALK, EllFoodsExit - EllFoodsClerk
    print $306
EllFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, EllFoodsList - EllFoodsClerk
    clear_flag FLAG00|BIT7
EllFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, BerryTofu, EllFoodsRefuse - EllFoodsClerk
    check_flag FLAG00|BIT7, EllFoodsBuy - EllFoodsClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
EllFoodsBuy:
    pay EllFoodsLess - EllFoodsClerk
    print $23A
    confirm @NotConfirm - EllFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item EllFoodsExit - EllFoodsClerk
    print $3E3
    confirm @StopBuying - EllFoodsClerk
    jump EllFoodsRepeat - EllFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get EllFoodsExit - EllFoodsClerk
EllFoodsRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
EllFoodsLess:
    print $33A
EllFoodsExit:
    end_script


byte_118EC4:
    npc WALK_NPC, $A340, $F1C0, DOWN, ReceptionistAnim
    .byte $A, $B, 8, $2D, 1, 0

byte_118ED0:
    .import stru_1582A8

    npc WALK_NPC, $B440, $F280, UP, stru_1582A8
    .byte $A, $B, 8, $7C, 1, 0

byte_118EDC:
    .import stru_1581A8

    npc WALK_NPC, $B400, $F280, RIGHT, stru_1581A8
    .byte $A, $B, 8, $39, 1, 0

byte_118EE8:
    .byte $54, $99, $C6, $F1, $88, $82, 5, $2F, $A, $28, 8
    .byte $73, 3, 9, $25, 8, $74, 3, $27, 0, $21, $5C, 6, $25
    .byte $62, $2D, $28, $3E, $11, $8F, $10, $2F, 0, 8, $49
    .byte 2, 0, 8, $75, 3, 0, $76, 4, $70, 2, 0

byte_118F16:
    npc NPC_1, $B740, $FA40, DOWN, ReceptionistAnim
    .byte $A, $B, 8, $C1, 2, 0

UnionStationClerk:
    npc NPC_1, $A740, $F240, LEFT, ReceptionistAnim

    check_action TALK, UnionStationExit - UnionStationClerk
    check_flag FLAG0E|BIT6, UnRock - UnionStationClerk
    jump UnBuyTicket - UnionStationClerk
UnRock:
    print $239
    end_script
UnBuyTicket:
    print $12F
    item_list Reindeer2, Spookane2, Snowman2, EMPTY, UnRefuse - UnionStationClerk
    total_price
    print $134
    confirm UnRefuse - UnionStationClerk
    pay UnLessMoney - UnionStationClerk
    train_ride
    end_script
UnLessMoney:
    print $23F
    end_script
UnRefuse:
    print $76
UnionStationExit:
    end_script

ReinStationClerk:
    npc NPC_1, $9B40, $F240, LEFT, ReceptionistAnim

    check_action TALK, ReinStationExit - ReinStationClerk
    check_flag FLAG0E|BIT6, ReinRock - ReinStationClerk
    jump ReinBuyTicket - ReinStationClerk
ReinRock:
    print $239
    end_script
ReinBuyTicket:
    print $12F
    item_list Union1, Spookane3, Snowman3, EMPTY, ReinRefuse - ReinStationClerk
    total_price
    print $134
    confirm ReinRefuse - ReinStationClerk
    pay ReinLessMoney - ReinStationClerk
    train_ride
    end_script
ReinLessMoney:
    print $23F
    end_script
ReinRefuse:
    print $76
ReinStationExit:
    end_script


SpookStationClerk:
    npc NPC_1, $A740, $FA40, LEFT, ReceptionistAnim

    check_action TALK, SpookStationExit - SpookStationClerk
    check_flag FLAG0E|BIT6, SpookRock - SpookStationClerk
    jump SpookBuyTicket - SpookStationClerk
SpookRock:
    print $239
    end_script
SpookBuyTicket:
    print $12F
    item_list Union2, Reindeer3, Snowman4, EMPTY, SpookRefuse - SpookStationClerk
    total_price
    print $134
    confirm SpookRefuse - SpookStationClerk
    pay SpookLessMoney - SpookStationClerk
    train_ride
    end_script
SpookLessMoney:
    print $23F
    end_script
SpookRefuse:
    print $76
SpookStationExit:
    end_script


SnowStationClerk:
    npc NPC_1, $B740, $F240, LEFT, ReceptionistAnim

    check_action TALK, SnowStationExit - SnowStationClerk
    check_flag FLAG0E|BIT6, SnowRock - SnowStationClerk
    jump SnowBuyTicket - SnowStationClerk
SnowRock:
    print $239
    end_script
SnowBuyTicket:
    print $17A
    print $12F
    item_list Union3, Reindeer4, Spookane4, EMPTY, SnowRefuse - SnowStationClerk
    total_price
    print $134
    confirm SnowRefuse - SnowStationClerk
    pay SnowLessMoney - SnowStationClerk
    train_ride
    end_script
SnowLessMoney:
    print $23F
    end_script
SnowRefuse:
    print $76
SnowStationExit:
    end_script


off_118FD5:
    .word PodMallOut, PodMallUp1, PodMallDown2, PodMallUp3
    .word PodMallDown3, PodMallUp4, PodMallDown4, byte_11904F
    .word byte_119057, byte_11905F, byte_119067, byte_11906F
    .word byte_119077, byte_11907F, byte_119087, byte_119090
    .word byte_119099, PodPhone, byte_1190AB, byte_1190B4
    .word byte_1190BD, PodATM, byte_1190CF, PodServiceNPC
    .word MerServiceClerk, ReinServiceClerk, PodSportsClerk, PodFoodsClerk
    .word PodPetClerk, PodPetNPC, SnowStoreClerk, byte_11927C
    .word 0

PodMallOut:
    entrance DOOR, $380, $4580, RIGHT, MUSIC_6, $3080, $6C40, DOWN

PodMallUp1:
    entrance STAIRS, $40, $4580, LEFT, MUSIC_SAME, $8C0, $3D40, RIGHT

PodMallDown2:
    entrance STAIRS, $7880, $2540, LEFT, MUSIC_SAME, $880, $3D80, RIGHT

PodMallUp3:
    entrance STAIRS, $7840, $2580, LEFT, MUSIC_SAME, $88C0, $2540, RIGHT

PodMallDown3:
    entrance STAIRS, $8880, $2540, LEFT, MUSIC_SAME, $7880, $2580, RIGHT

PodMallUp4:
    entrance STAIRS, $8840, $2580, LEFT, MUSIC_SAME, $98C0, $2540, RIGHT

PodMallDown4:
    entrance STAIRS, $9880, $2540, LEFT, MUSIC_SAME, $8880, $2580, RIGHT

byte_11904F:
    entrance DOOR, $380, $2D80, RIGHT, MUSIC_6, $5880, $7340, DOWN

byte_119057:
    entrance STAIRS, $40, $2D80, LEFT, MUSIC_SAME, $A8C0, $2540, RIGHT

byte_11905F:
    entrance DOOR, $7380, $2580, RIGHT, MUSIC_6, $6E80, $EF40, DOWN

byte_119067:
    entrance STAIRS, $7040, $2580, LEFT, MUSIC_SAME, $8C0, $4D40, RIGHT

byte_11906F:
    entrance DOOR, $B80, $5580, RIGHT, MUSIC_6, $C580, $4640, DOWN

byte_119077:
    entrance STAIRS, $840, $5580, LEFT, MUSIC_SAME, $B8C0, $2540, RIGHT

byte_11907F:
    entrance DOOR, $A380, $2580, RIGHT, MUSIC_a, $E240, $F900, DOWN

byte_119087:
    .byte $98, $A, $C0, $54, 2, 9, $8D, 9, 0

byte_119090:
    .byte $98, 2, $C0, $2C, 2, 9, $8D, 9, 0

byte_119099:
    .byte $98, $72, $C0, $24, 2, 9, $8D, 9, 0

PodPhone:
    .byte $98, 2, $C0, $44, 2, 9, $8D, 9, 0

byte_1190AB:
    .byte $18, 9, $C0, $54, 2, $B5, $8C, 9, 0

byte_1190B4:
    .byte $18, 1, $C0, $2C, 2, $B5, $8C, 9, 0

byte_1190BD:
    .byte $18, $71, $C0, $24, 2, $B5, $8C, 9, 0

PodATM:
    .byte $18, 1, $C0, $44, 2, $B5, $8C, 9, 0

byte_1190CF:
    npc NPC_1, $9C0, $5500, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script

PodServiceNPC:
    npc NPC_1, $1C0, $4500, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script

MerServiceClerk:
    npc NPC_1, $1C0, $2D00, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script

ReinServiceClerk:
    npc NPC_1, $71C0, $2500, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script
Service:
    check_action TALK, ServiceExit - ReinServiceClerk
    print $58
    confirm ServiceNo - ReinServiceClerk
    print $229
    choose ServiceNo - ReinServiceClerk
    unsellable Unsell - ReinServiceClerk
    percent 50
    not_less 10, CantBuy - ReinServiceClerk
    print $22A
    confirm ServiceRefuse - ReinServiceClerk
    get ServiceHeavy - ReinServiceClerk
    cash
    print $5B
    return
ServiceHeavy:
    add_item ServiceExit - ReinServiceClerk
    print $249
    return
ServiceRefuse:
    add_item ServiceExit - ReinServiceClerk
ServiceNo:
    print $5A
    print $5B
    return
CantBuy:
    add_item ServiceExit - ReinServiceClerk
Unsell:
    print $33E
ServiceExit:
    return

PodSportsClerk:
    npc WALK_NPC, $7A00, $2500, DOWN, ServicemanAnim

    check_action TALK, PodSportsExit - PodSportsClerk
    print $306
PodSportsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, PodSportsList - PodSportsClerk
    clear_flag FLAG00|BIT7
PodSportsList:
    item_list PlasticBat, Slingshot, WoodenBat, EMPTY, PodSportsRefuse - PodSportsClerk
    check_flag FLAG00|BIT7, PodSportsBuy - PodSportsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
PodSportsBuy:
    pay PodSportsLess - PodSportsClerk
    print $23A
    confirm @NotConfirm - PodSportsClerk
    print $309
    play SOUND2, $B
    cash
    add_item PodSportsExit - PodSportsClerk
    print $3E3
    confirm @StopBuying - PodSportsClerk
    jump PodSportsRepeat - PodSportsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get PodSportsExit - PodSportsClerk
PodSportsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
PodSportsLess:
    print $33B
PodSportsExit:
    end_script


PodFoodsClerk:
    npc WALK_NPC, $8A00, $2500, DOWN, ServicemanAnim

    check_action TALK, PodFoodsExit - PodFoodsClerk
    print $306
PodFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, PodFoodsList - PodFoodsClerk
    clear_flag FLAG00|BIT7
PodFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, EMPTY, PodFoodsRefuse - PodFoodsClerk
    check_flag FLAG00|BIT7, PodFoodsBuy - PodFoodsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
PodFoodsBuy:
    pay PodFoodsLess - PodFoodsClerk
    print $23A
    confirm @NotConfirm - PodFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item PodFoodsExit - PodFoodsClerk
    print $3E3
    confirm @StopBuying - PodFoodsClerk
    jump PodFoodsRepeat - PodFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get PodFoodsExit - PodFoodsClerk
PodFoodsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
PodFoodsLess:
    print $33B
PodFoodsExit:
    end_script


PodPetClerk:
    npc NPC_1, $9A00, $2500, UP, ReceptionistAnim

    check_action TALK, PodPetExit - PodPetClerk
    check_flag FLAG01|BIT3, EscapeAnimals - PodPetClerk
    print $4D
    end_script
EscapeAnimals:
    check_flag FLAG08|BIT5, NoCanary - PodPetClerk
    print $53
    end_script
NoCanary:
    print $4D
    print $4E
    confirm BuyRefuse - PodPetClerk
    select_item CanaryChick
    print $4F
    confirm Trade - PodPetClerk
    pay NoMoney - PodPetClerk
    find_item EMPTY, NoEmty - PodPetClerk
    play SOUND2, $B
    cash
    select_item CanaryChick
    add_item 0
    set_flag FLAG08|BIT5
    print $51
    end_script
NoEmty:
    select_item CanaryChick
    get PodPetExit - PodPetClerk
    print $23B
    end_script
NoMoney:
    print $23D
    end_script
Trade:
    print $52
    find_item EMPTY, Shame - PodPetClerk
    play SOUND2, $B
    cash
    select_item CanaryChick
    add_item 0
    set_flag FLAG08|BIT5
    end_script
Shame:
    print $24A
    end_script
BuyRefuse:
    print $50
PodPetExit:
    end_script


PodPetNPC:
    npc WALK_NPC, $9A80, $2500, DOWN, ServicemanAnim

    check_action TALK, PetNPCExit - PodPetNPC
    check_flag FLAG01|BIT2, ContolAnimals - PodPetNPC
    print $55
    confirm PetRefuse - PodPetNPC
    print $56
    end_script
PetRefuse:
    print $57
    end_script
ContolAnimals:
    print $54
PetNPCExit:
    end_script

SnowStoreClerk:
    npc WALK_NPC, $A200, $2500, DOWN, stru_1581A8

    check_action TALK, SnowStoreExit - SnowStoreClerk
    print $306
SnowStoreRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, SnowStoreList - SnowStoreClerk
    clear_flag FLAG00|BIT7
SnowStoreList:
    item_list Bread, Mouthwash, LifeUpCream, FryingPan, SnowStoreRefuse - SnowStoreClerk
    check_flag FLAG00|BIT7, SnowStoreBuy - SnowStoreClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
SnowStoreBuy:
    pay SnowStoreLess - SnowStoreClerk
    print $23A
    confirm @NotConfirm - SnowStoreClerk
    print $309
    play SOUND2, $B
    cash
    add_item SnowStoreExit - SnowStoreClerk
    print $3E3
    confirm @StopBuying - SnowStoreClerk
    jump SnowStoreRepeat - SnowStoreClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get SnowStoreExit - SnowStoreClerk
SnowStoreRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
SnowStoreLess:
    print $33A
SnowStoreExit:
    end_script


byte_11927C:
    .byte $18, $A1, $C0, $24, 2, $B5, $8C, 9, 0

off_119285:
    .word EllDoctorOut, EllHotelRoom2Out, ReinHotelDown1, ReinHotelRoom1In
    .word ReinHotelRoom2In, ReinHotelUp2, ReinHospitalRoom1Out, ReinHospitalRoom2Out
    .word SpookDoctorOut, SpookHospitalDown, SpookHospitalRoom1In, SpookHospitalRoom2In
    .word SpookHospitalRoom1Out, SpookHospitalRoom2Out, SpookHotelRoom1Out, SpookHotelRoom2Out
    .word EllDoctor, SpookDoctor, 0

EllDoctorOut:
    entrance DOOR, $B780, $2580, RIGHT, MUSIC_SAME, $BD80, $FD00, DOWN

EllHotelRoom2Out:
    entrance DOOR, $9780, $2580, RIGHT, MUSIC_SAME, $7E40, $2500, DOWN

ReinHotelDown1:
    entrance STAIRS, $440, $3580, LEFT, MUSIC_SAME, $C0, $4140, RIGHT

ReinHotelRoom1In:
    entrance DOOR, $580, $34C0, UP, MUSIC_SAME, $740, $3D80, LEFT

ReinHotelRoom2In:
    entrance DOOR, $640, $34C0, UP, MUSIC_SAME, $740, $4580, LEFT

ReinHotelUp2:
    entrance STAIRS, $480, $3540, LEFT, MUSIC_SAME, $C80, $4580, RIGHT

ReinHospitalRoom1Out:
    entrance DOOR, $780, $2580, RIGHT, MUSIC_SAME, $580, $5500, DOWN

ReinHospitalRoom2Out:
    entrance DOOR, $780, $2D80, RIGHT, MUSIC_SAME, $640, $5500, DOWN

SpookDoctorOut:
    entrance DOOR, $780, $4D80, RIGHT, MUSIC_SAME, $9600, $F500, DOWN

SpookHospitalDown:
    entrance STAIRS, $C40, $4D80, LEFT, MUSIC_SAME, $94C0, $F540, RIGHT

SpookHospitalRoom1In:
    entrance DOOR, $D80, $4CC0, UP, MUSIC_SAME, $F40, $2580, LEFT

SpookHospitalRoom2In:
    entrance DOOR, $E40, $4CC0, UP, MUSIC_SAME, $F40, $2D80, LEFT

SpookHospitalRoom1Out:
    entrance DOOR, $F80, $2580, RIGHT, MUSIC_SAME, $D80, $4D00, DOWN

SpookHospitalRoom2Out:
    entrance DOOR, $F80, $2D80, RIGHT, MUSIC_SAME, $E40, $4D00, DOWN

SpookHotelRoom1Out:
    entrance DOOR, $F80, $3D80, RIGHT, MUSIC_SAME, $D80, $3500, DOWN

SpookHotelRoom2Out:
    entrance DOOR, $7780, $2580, RIGHT, MUSIC_SAME, $E40, $3500, DOWN

EllDoctor:
    .import DoctorAnim

    npc NPC_1, $B500, $2500, DOWN, DoctorAnim

    price 92
    call EllDoctor, EllDoctorCall - EllDoctor
    end_script
EllDoctorCall:
    check_action TALK, EllDoctorExit - EllDoctor
    print $30D
    confirm EllDoctorRefuse - EllDoctor
    pay EllDoctorLess - EllDoctor
    sel_char 1, EllDoctorChar - EllDoctor
    choose_char EllDoctorChoose1 - EllDoctor
    jump EllDoctorStatus - EllDoctor
EllDoctorChar:
    sel_char 0, EllDoctorStatus - EllDoctor
EllDoctorStatus:
    check_status $80, EllDoctorFainted - EllDoctor
    max_hp EllDoctorHeal - EllDoctor
    check_status 3, EllDoctorHeal - EllDoctor
    print $30F
    get EllDoctorExit - EllDoctor
    return
EllDoctorHeal:
    heal $FF
    max_hp EllDoctorHeal - EllDoctor
    clear_status $FC
    cash
    play SOUND2, 7
    print $310
    return
EllDoctorChoose1:
    get EllDoctorExit - EllDoctor
EllDoctorRefuse:
    print $30E
    return
EllDoctorFainted:
    get EllDoctorExit - EllDoctor
    print $219
    return
EllDoctorLess:
    print $23F
EllDoctorExit:
    return

SpookDoctor:
    npc NPC_1, $500, $4D00, DOWN, DoctorAnim

    price 78
    call EllDoctor, EllDoctorCall - EllDoctor
    end_script

off_119385:
    .word PodCityHallOut, PodCityHallUp, PodCityHallDown, EllHospitalDown
    .word EllHospitalRoom1In, EllHospitalRoom2In, PodCityHallNPC, PodMayor
    .word PodMayorSecretary, byte_1194A7, 0

PodCityHallOut:
    entrance DOOR, $AF80, $2580, RIGHT, MUSIC_6, $2EC0, $6C40, DOWN

PodCityHallUp:
    entrance STAIRS, $AC80, $2540, LEFT, MUSIC_SAME, $CC80, $2580, RIGHT

PodCityHallDown:
    .byte $58, $CC, $86, $25

    check_view PodCityHallExit - PodCityHallDown
    approach PodCityHallExit - PodCityHallDown
    check_flag FLAG05|BIT3, PodDown - PodCityHallDown
    clear_flag FLAG05|BIT3
    set_flag FLAG05|BIT2
PodDown:
    play SOUND1, 8
    teleport $ACC0, $2542
PodCityHallExit:
    end_script

EllHospitalDown:
    entrance STAIRS, $D440, $2580, LEFT, MUSIC_SAME, $BCC0, $FD40, RIGHT

EllHospitalRoom1In:
    entrance DOOR, $D580, $24C0, UP, MUSIC_SAME, $B40, $4980, LEFT

EllHospitalRoom2In:
    entrance DOOR, $D640, $24C0, UP, MUSIC_SAME, $B40, $5180, LEFT

PodCityHallNPC:
    npc NPC_1, $AE00, $2500, DOWN, stru_158328

    check_action TALK, ExitCityHallNPC - PodCityHallNPC
    check_flag FLAG01|BIT2, CityHallMsg - PodCityHallNPC
    print $4B
    end_script
CityHallMsg:
    print $296
ExitCityHallNPC:
    end_script

PodMayor:
    .import MayorAnim

    npc NPC_1, $CE40, $2540, DOWN, MayorAnim

    check_action TALK, Exit1Mayor - PodMayor
    check_char 5, Alone - PodMayor
    check_status $80, Rest - PodMayor
    jump CheckChar1 - PodMayor
Rest:
    print $270
    move byte_119471
    end_script
CheckChar1:
    check_char 1, Alone - PodMayor
    check_status $80, Char1Fainted - PodMayor
    price 100
    print $43
    play SOUND2, 6
    get Exit1Mayor - PodMayor
    cash
    set_flag FLAG01|BIT4
    move byte_119465
    print $46
    confirm Anyway - PodMayor
Anyway:
    print $47
    set_flag FLAG0B|BIT1
    set_flag FLAG01|BIT4
    another 9
    move byte_119470
    end_script
Char1Fainted:
    print $271
    move byte_119471
    end_script
Alone:
    check_flag FLAG01|BIT2, Hero - PodMayor
    print $4A
    move byte_119471
    end_script
Hero:
    check_flag FLAG01|BIT4, TownHelp - PodMayor
    print $49
    move byte_119471
    end_script
TownHelp:
    check_flag FLAG0B|BIT2, Child - PodMayor
    print $40
    move byte_119471
    end_script
Child:
    print $40
    print $41
    confirm Anyway2 - PodMayor
Anyway2:
    print $42
    print $49
    move byte_119471
    set_flag FLAG0B|BIT2
Exit1Mayor:
    end_script
byte_119465:
    .byte $36, 2, $34, 2, $32, 3, $72, 1, $F6, 6, 3
byte_119470:
    .byte 0
byte_119471:
    .byte $F4, 1, 0

PodMayorSecretary:
    npc NPC_1, $CD00, $2500, DOWN, stru_158348
    .byte $A, $32, $12, $D, $F
    .byte 8, $73, 2, 0, $12, $5F, $27, 8, $4C, 0, $27, 0, $23
    .byte $5C, 6, $25, $56, $2D, $32, $10, $5F, $11, $21, 0
    .byte 8, $4B, 2, 0, $12, $5E, $2F, 8, $48, 0, 1, $15, 8
    .byte $95, 2, 0

byte_1194A7:
    .byte $14, $CE, $C2, $25, $80, $80, 6, $2C, $40, $1C, $19
    .byte 5, $23, 3, $13, $25, 3, $2E, $26, $10, $2C, $43
    .byte 5, $26, $3E, $CE, $94, 0, $A, $26, 8, $6A, 0, 9
    .byte $23, 8, $6C, 0, 0, $70, 1, $72, 2, $F6, 1, 0

off_1194D5:
    .word byte_1194FB, byte_119503, byte_11950B, byte_119513
    .word byte_11951B, byte_119523, byte_11952A, byte_119531
    .word byte_11953E, byte_11954B, byte_119564, byte_11957B
    .word byte_119590, byte_1195A9, byte_1195C9, byte_1195E5
    .word byte_119605, byte_119621, 0

byte_1194FB:
    entrance DOOR, $DF80, $2580, RIGHT, MUSIC_SAME, $C280, $F500, DOWN

byte_119503:
    entrance DOOR, $200, $8280, LEFT, MUSIC_6, $B440, $CFC0, LEFT

byte_11950B:
    entrance DOOR, $1DC0, $8280, RIGHT, MUSIC_a, $D080, $F200, DOWN

byte_119513:
    entrance DOOR, $F440, $76C0, UP, MUSIC_f, $FB40, $2180, LEFT

byte_11951B:
    entrance DOOR, $EC0, $5AC0, UP, MUSIC_SAME, $A00, $3500, DOWN

byte_119523:
    .byte $19, $DD, 0, $25, $84, $89, 0

byte_11952A:
    .byte $59, $DD, 0, $25, $88, $89, 0

byte_119531:
    .byte $58, 6, $80, $5A, $B, $C, 8, $7F, 3, 8, $80, 3, 0

byte_11953E:
    .byte $58, $C, $80, $5A, $B, $C, 8, $7F, 3, 8, $80, 3
    .byte 0

byte_11954B:
    .byte $58, 9, $80, $5A, $B, $18, $12, $79, $10, 8, $7F
    .byte 3, 8, $80, 3, 0, 8, $7F, 3, 8, $81, 3, $3F, $A, 0

byte_119564:
    .byte $5D, $A, $80, $59, $8C, $89, 6, 1, $40, $11, $3E
    .byte $76, $95, 4, $5A, $3F, $B, 0, $F0, 1, $78, 2, 0

byte_11957B:
    .byte $5D, $A, 0, $59, $94, $89, 6, 1, $40, $11, $3F, $C
    .byte $5B, 9, $3E, $8D, $95, 0, $7C, 8, 0

byte_119590:
    .byte $5D, $A, 0, $59, $9C, $89, 6, 1, $40, $12, $3E, $A3
    .byte $95, $10, $79, $3E, $A6, $95, 0, $7C, 8, 3, $F0
    .byte 1, 0

byte_1195A9:
    .byte $6D, $A, 0, $5B, $94, $89, 6, $79, $B, $E, 8, $BA
    .byte 3, 0, $35, $1C, 8, $9C, 1, $46, 0, $3F, $E, $5B
    .byte 9, $3E, $C6, $95, 0, $78, 7, 0

byte_1195C9:
    .byte $5D, $A, 0, $5B, $9C, $89, 6, 1, $40, $17, $3E, $E1
    .byte $95, $4C, 0, $3D, 6, $F4, $C4, $77, $3E, $E4, $95
    .byte 0, $78, 7, 3, 0

byte_1195E5:
    .byte $2D, $F4, $C0, $77, $94, $89, 6, $79, $B, $E, 8
    .byte $BA, 3, 0, $35, $1C, 8, $9C, 1, $46, 0, $3F, $10
    .byte $5B, 9, $3E, 2, $96, 0, $78, 7, 0

byte_119605:
    .byte $1D, $F4, $C0, $77, $9C, $89, 6, 1, $40, $17, $3E
    .byte $1D, $96, $4C, 0, $3D, $4F, $A, 4, $5B, $3E, $20
    .byte $96, 0, $78, 7, 3, 0

byte_119621:
    .byte $58, $E1, $80, $25, $35, $28, $12, $C0, $11, $11
    .byte $C0, $11, $FE, $10, $C1, $10, $93, 8, $E, 2, $37
    .byte $38, 3, $1B, $1B, 1, $24, 8, $D8, 3, 9, $24, 8, $10
    .byte 2, $F, 8, $F, 2, $41, 0

off_11964A:
    .word byte_119678, byte_119680, byte_119688, byte_119690
    .word byte_119698, byte_1196A0, byte_1196A8, byte_1196B0
    .word byte_1196B8, byte_1196C0, byte_1196C8, byte_1196D0
    .word byte_1196D8, byte_1196E0, byte_1196E8, byte_1196F0
    .word byte_1196FC, byte_119708, byte_119719, byte_119725
    .word byte_119731, byte_11973D, 0

byte_119678:
    entrance STAIRS, $7C40, $2580, LEFT, MUSIC_SAME, $ACC0, $FD40, RIGHT

byte_119680:
    entrance DOOR, $7D80, $24C0, UP, MUSIC_SAME, $8F40, $2580, LEFT

byte_119688:
    entrance DOOR, $7E40, $24C0, UP, MUSIC_SAME, $9740, $2580, LEFT

byte_119690:
    entrance DOOR, $8F80, $2580, RIGHT, MUSIC_SAME, $7D80, $2500, DOWN

byte_119698:
    entrance DOOR, $780, $3D80, RIGHT, MUSIC_SAME, $580, $3500, DOWN

byte_1196A0:
    entrance DOOR, $780, $4580, RIGHT, MUSIC_SAME, $640, $3500, DOWN

byte_1196A8:
    entrance STAIRS, $C40, $4580, LEFT, MUSIC_SAME, $4C0, $3540, RIGHT

byte_1196B0:
    entrance DOOR, $8780, $2580, RIGHT, MUSIC_SAME, $ACC0, $F540, RIGHT

byte_1196B8:
    entrance DOOR, $6F80, $2580, RIGHT, MUSIC_SAME, $AC40, $F5C0, RIGHT

byte_1196C0:
    entrance STAIRS, $C40, $3580, LEFT, MUSIC_SAME, $C0, $3940, RIGHT

byte_1196C8:
    entrance DOOR, $D80, $34C0, UP, MUSIC_SAME, $F40, $3D80, LEFT

byte_1196D0:
    entrance DOOR, $E40, $34C0, UP, MUSIC_SAME, $7740, $2580, LEFT

byte_1196D8:
    entrance STAIRS, $440, $5580, LEFT, MUSIC_SAME, $B4C0, $FD40, RIGHT

byte_1196E0:
    entrance DOOR, $580, $54C0, UP, MUSIC_SAME, $740, $2580, LEFT

byte_1196E8:
    entrance DOOR, $640, $54C0, UP, MUSIC_SAME, $740, $2D80, LEFT

byte_1196F0:
    npc WALK_NPC, $7EC0, $2580, RIGHT, stru_1582A8
    .byte $A, $B, 8, $B5, 2, 0

byte_1196FC:
    .import stru_1581E8

    npc WALK_NPC, $8D40, $25C0, RIGHT, stru_1581E8
    .byte $A, $B, 8, $58, 3, 0

byte_119708:
    .import stru_158288

    npc WALK_NPC, $580, $3DC0, DOWN, stru_158288
    .byte $A, $10, 8, $56, 3, $3A
    .byte 0, $10, $59, 1, 0

byte_119719:
    .import stru_158228

    npc WALK_NPC, $600, $4540, LEFT, stru_158228
    .byte $A, $B, 8, $57, 3, 0

byte_119725:
    npc WALK_NPC, $D00, $4500, DOWN, stru_1581A8
    .byte $A, $B, 8, $A9, 2, 0

byte_119731:
    npc WALK_NPC, $E00, $4540, RIGHT, stru_158228
    .byte $A, $B, 8, $B7, 2, 0

byte_11973D:
    .import stru_158248

    npc WALK_NPC, $F00, $45C0, DOWN, stru_158248
    .byte $A, $B, 8, $B8, 2, 0

off_119749:
    .word byte_119781, byte_119789, byte_119791, byte_119799
    .word byte_1197A1, byte_1197A9, byte_1197B1, byte_1197B9
    .word byte_1197C1, byte_1197D0, byte_1197E4, byte_1197F6
    .word byte_119810, byte_119825, byte_119831, byte_11983D
    .word byte_119849, byte_119855, byte_119866, byte_119872
    .word byte_11987E, byte_11988A, byte_119896, byte_1198A2
    .word byte_1198AE, byte_1198BA, byte_1198C6, 0

byte_119781:
    entrance DOOR, $F80, $5580, RIGHT, MUSIC_SAME, $C440, $F500, DOWN

byte_119789:
    entrance DOOR, $9B80, $F580, RIGHT, MUSIC_SAME, $BD80, $EE00, DOWN

byte_119791:
    entrance DOOR, $B380, $F580, RIGHT, MUSIC_SAME, $BE80, $EE00, DOWN

byte_119799:
    entrance DOOR, $B380, $ED80, RIGHT, MUSIC_SAME, $BF80, $F500, DOWN

byte_1197A1:
    entrance DOOR, $BB80, $F580, RIGHT, MUSIC_SAME, $C080, $F500, DOWN

byte_1197A9:
    entrance DOOR, $B380, $FD80, RIGHT, MUSIC_SAME, $BF40, $EE00, DOWN

byte_1197B1:
    entrance DOOR, $BB80, $FD80, RIGHT, MUSIC_SAME, $C180, $F500, DOWN

byte_1197B9:
    entrance DOOR, $C780, $F180, RIGHT, MUSIC_SAME, $C540, $EE00, DOWN

byte_1197C1:
    npc NPC_1, $D00, $5500, DOWN, stru_158388
    .byte $A, $E, 8, $EF, 2, $3E, $F3, $97, 0

byte_1197D0:
    .import stru_1583A8

    npc NPC_1, $C80, $5580, DOWN, stru_1583A8
    .byte $A, $13, 8, $F0, 2
    .byte $3E, $F3, $97, $3A, 0, $13, $59, 1, 0

byte_1197E4:
    .import stru_1583C8

    npc NPC_1, $DC0, $5500, DOWN, stru_1583C8
    .byte $A, $E, 8, $D5, 2, $3E
    .byte $F3, $97, 0, $F4, 1, 0

byte_1197F6:
    npc WALK_NPC, $9980, $F5C0, RIGHT, stru_1583C8
    .byte $A, $19, $33, 3, $16
    .byte $52, $80, $12, 8, 5, 1, 0, 8, $95, 1, 0, 8, 4, 1, 0

byte_119810:
    npc WALK_NPC, $99C0, $F500, RIGHT, stru_1583A8
    .byte $A, $14, 8, 6, 1, 9
    .byte $11, 8, 7, 1, 0, 8, 8, 1, 0

byte_119825:
    npc WALK_NPC, $9B80, $F5C0, RIGHT, stru_1583C8
    .byte $A, $B, 8, $D6, 2, 0

byte_119831:
    npc WALK_NPC, $B040, $F5C0, DOWN, stru_1583C8
    .byte $A, $B, 8, $FB, 2, 0

byte_11983D:
    .import stru_158428

    npc WALK_NPC, $B2C0, $F500, DOWN, stru_158428
    .byte $A, $B, 8, $FE, 2, 0

byte_119849:
    npc WALK_NPC, $B2C0, $F580, LEFT, stru_1583A8
    .byte $A, $B, 8, $FF, 2, 0

byte_119855:
    .import stru_1583E8

    npc WALK_NPC, $B200, $EDC0, RIGHT, stru_1583E8
    .byte $A, $10, 8, 9, 1, 9
    .byte $D, 8, $A, 1, 0

byte_119866:
    npc WALK_NPC, $B180, $ED00, LEFT, stru_158428
    .byte $A, $B, 8, $B, 1, 0

byte_119872:
    npc WALK_NPC, $B0C0, $EDC0, DOWN, stru_158308
    .byte $A, $B, 8, 0, 3, 0

byte_11987E:
    .import stru_158448

    npc WALK_NPC, $B980, $F5C0, LEFT, stru_158448
    .byte $A, $B, 8, $C, 1, 0

byte_11988A:
    npc WALK_NPC, $B900, $F5C0, DOWN, stru_158428
    .byte $A, $B, 8, 1, 3, 0

byte_119896:
    npc WALK_NPC, $B9C0, $F500, RIGHT, stru_1583C8
    .byte $A, $B, 8, 2, 3, 0

byte_1198A2:
    npc WALK_NPC, $B180, $FD00, LEFT, stru_158448
    .byte $A, $B, 8, 3, 3, 0

byte_1198AE:
    npc WALK_NPC, $B1C0, $FDC0, RIGHT, stru_1583C8
    .byte $A, $B, 8, 4, 3, 0

byte_1198BA:
    npc WALK_NPC, $B2C0, $FDC0, DOWN, stru_158308
    .byte $A, $B, 8, 5, 3, 0

byte_1198C6:
    .import stru_158408

    npc NPC_1, $C5C0, $F140, RIGHT, stru_158408
    .byte $A, $3B, $12, $3C, $F
    .byte 8, $17, 1, 0, 8, $D, 1, 9, $38, 8, $69, 2, 9, $34
    .byte 8, $F, 1, 9, $22, 8, $11, 1, 0, 8, $12, 1, 9, $30
    .byte 8, $14, 1, $3E, 2, $99, $10, $23, 0, 8, $15, 1, 0
    .byte 8, $10, 1, 0, 8, $17, 1, 0, $34, 1, $32, 6, $12
    .byte 1, $14, 1, 3

off_11990B:
    .word byte_119939, byte_119941, byte_119949, byte_119951
    .word byte_119959, byte_119961, byte_119978, byte_119980
    .word byte_119988, byte_11999F, MysteriousTeacher, byte_119A0A
    .word byte_119A3C, byte_119A62, byte_119A96, byte_119AC3
    .word byte_119B1A, byte_119B39, byte_119B45, byte_119B51
    .word byte_119B76, byte_119B7E, 0

byte_119939:
    entrance DOOR, $9B80, $ED80, RIGHT, MUSIC_SAME, $C380, $F500, DOWN

byte_119941:
    entrance DOOR, $AB80, $F580, RIGHT, MUSIC_SAME, $C380, $EE00, DOWN

byte_119949:
    entrance DOOR, $E780, $2180, RIGHT, MUSIC_SAME, $C380, $EE00, DOWN

byte_119951:
    entrance DOOR, $A380, $FD80, RIGHT, MUSIC_SAME, $C480, $EE00, DOWN

byte_119959:
    entrance DOOR, $9780, $F980, RIGHT, MUSIC_6, $E940, $5E00, DOWN

byte_119961:
    .byte $58, $94, $86, $F9, $36, $16, $35, $16, $12, $8C
    .byte $11, $3D, $5B, $BF, $86, $F9, 0, $3D, $52, $BF, $86
    .byte $F9, 0

byte_119978:
    entrance DOOR, $BF80, $F980, RIGHT, MUSIC_12, $9480, $F980, RIGHT

byte_119980:
    entrance DOOR, $BD80, $F8C0, UP, MUSIC_12, $BF40, $F180, LEFT

byte_119988:
    .byte $98, $BF, $82, $F1, $36, $16, $35, $16, $12, $8C
    .byte $11, $3D, $9B, $BD, 4, $F9, 0, $3D, $92, $BD, 4
    .byte $F9, 0

byte_11999F:
    entrance DOOR, $D780, $2180, RIGHT, MUSIC_30, $A880, $7200, DOWN

MysteriousTeacher:
    npc STAT_NPC2, $A980, $F500, DOWN, PharmacistAnim

    .byte 6, $46
    check_action TALK, MystTeachExit - MysteriousTeacher
    check_flag FLAG08|BIT4, Meet - MysteriousTeacher
    print $12C
    confirm NotLook - MysteriousTeacher
    jump RepeatBuy - MysteriousTeacher
Meet:
    print $126
    confirm NotLook - MysteriousTeacher
    print $128
RepeatBuy:
    set_flag FLAG00|BIT7
    find_item EMPTY, MystList - MysteriousTeacher
    clear_flag FLAG00|BIT7
MystList:
    set_flag FLAG08|BIT4
    item_list LastWeapon, SuperBomb, StkyMachine, RealRocket, MystRefuse - MysteriousTeacher
    check_flag FLAG00|BIT7, MystBuy - MysteriousTeacher
    print $23E
    print $12B
    clear_flag FLAG00|BIT7
    end_script
MystBuy:
    pay MystLess - MysteriousTeacher
    buying_item RealRocket, NotRocket - MysteriousTeacher
    print $21C
    print $223
    play SOUND1, 9
    print $175
    end_script
NotRocket:
    add_item MystTeachExit - MysteriousTeacher
    play SOUND2, 6
    print $12B
    end_script
MystLess:
    print $23D
    print $12B
    clear_flag FLAG00|BIT7
    end_script
MystRefuse:
    print $12B
    clear_flag FLAG00|BIT7
    end_script
NotLook:
    print $129
MystTeachExit:
    end_script

byte_119A0A:
    .byte $14, $AB, $82, $F5, $40, $80, 6, $24, $35, $23
    .byte $3E
    .word byte_119A2E
    .byte 8, $72, 1
    .byte $3E
    .word byte_119A35
    .byte $42, 3, $23
    .byte $10, $76, $10, $46, $11, $24, $3D, $40, $E5, $82
    .byte $21, $3C, 3, 0
byte_119A2E:
    .byte $3E, 4, $36, 4, $F4, 1, 3
byte_119A35:
    .byte $F4, 1, $7A, 2, $F6, 1, 0

byte_119A3C:
    .import NurseAnim

    npc WALK_NPC, $A100, $FD00, RIGHT, NurseAnim
    .byte $A, $25, 8, $EE, 2, $5C
    .byte 7, $3A, 0, $25, $52, $80, $15, $51, $50, $3A, 1
    .byte $25, $52, $80, $1D, $51, $50, $3A, 2, $25, $52, $80
    .byte $25, $51, $50, 0

byte_119A62:
    .byte $D4, $95, 4, $F9, $A8, $84, 5, $8F, $A, $33, $12
    .byte $7F, $2E, 8, 7, 2, $37, $65, 2, $26, $2A, 8, $43
    .byte 2, $27, 0, $22, $25, $41, $2D, $33, $5C, 6, 0, 8
    .byte $4B, 2, 0, 8, $44, 2, $55, 8, $46, 3, 0, 8, 4, 2
    .byte $10, $7F, 0

byte_119A96:
    .byte $14, $BD, $46, $F9, $A8, $84, 6, $8F, $A, $E, 8
    .byte $CA, 0, 0, $40, $23, $4F, $1E
    .byte $3E
    .word byte_119ABA
    .byte 8, 6, 2, $3F, $F
    .byte $3E
    .word byte_119ABD
    .byte 0, $11, $8F
    .byte $3E
    .word byte_119AC0
    .byte 0
byte_119ABA:
    .byte $72, 4, 3
byte_119ABD:
    .byte $F6, 1, 0
byte_119AC0:
    .byte $72, 3, 0

byte_119AC3:
    .byte $54, $BE, $44, $F9, $40, $80, 6, $8E, $A, $E, 8
    .byte $CA, 0, 0, $40, $47
    .byte $3E
    .word byte_119B0B
    .byte 8, $25, 1
    .byte $3E
    .word byte_119B14
    .byte $19, 4, $31, 0, $2B, $2E, $2E, $26, 3
    .byte $25, 1, $19, $19, 3, $2D, $2B, 1, $19, $19, 3, $53
    .byte 0, $51, $FF, $50, $2F, $61, $FF, $60, $33, $5A, $21
    .byte 4, $B4, $5A, $1B, $42, 3, $62, $11, $8E, $3F, $E
    .byte $3E
    .word byte_119B19
    .byte 0
byte_119B0B:
    .byte $75, 1, $76, 3, $77, 1, $F4, 1, 3
byte_119B14:
    .byte $74, 1, $76, 1, 3
byte_119B19:
    .byte 0

byte_119B1A:
    .byte $DD, $BC, $40, $F9, $4C, $85, 6, $C8, $B, $E, 8
    .byte $DA, 3, 0, $A, $1E, $12, $8D, $17, 8, $CA, 0, 0
    .byte 8, $F7, 1, $10, $8D, $3F, $E, 0

byte_119B39:
    .import stru_15852C

    npc WALK_NPC, $D5C0, $2140, DOWN, stru_15852C
    .byte $A, $B, 8, $BD, 1, 0

byte_119B45:
    .import stru_15850C

    npc WALK_NPC, $D640, $21C0, DOWN, stru_15850C
    .byte $A, $B, 8, $BE, 1, 0

byte_119B51:
    .byte $D9, $D4, $40, $21, 8, $85, $A, $C, 8, $C0, 1, 0
    .byte $C, 1, $24, $12, $94, $16, 8, $D2, 3, 0, 8, $C1
    .byte 1, $5F, $10, $EE, $5A, $21, 4, $B4, $10, $94, $5A
    .byte $30, 0

byte_119B76:
    .byte $E0, $99, 0, $ED, $88, $81, $17, $32

byte_119B7E:
    .byte $E0, $9A, $C0, $ED, $88, $81, $10, $33

off_119B86:
    .word byte_119BB4, byte_119BCB, byte_119BD3, byte_119BDB
    .word byte_119BE3, byte_119BEB, byte_119BF3, byte_119BFB
    .word byte_119C03, byte_119C0B, byte_119C13, byte_119C1B
    .word byte_119C23, byte_119C2B, byte_119C33, byte_119C3B
    .word byte_119C43, byte_119C4B, byte_119C53, byte_119C5B
    .word byte_119C63, capsule, 0

byte_119BB4:
    .byte $98, $7B, $82, $21, $36, $16, $35, $16, $12, $D
    .byte $11, $3D, $80, $2F, 4, $3D, 0, $3D, $91, $2F, 4
    .byte $3D, 0

byte_119BCB:
    entrance DOOR, $7980, $20C0, UP, MUSIC_SAME, $9F40, $2580, LEFT

byte_119BD3:
    entrance DOOR, $7A40, $20C0, UP, MUSIC_SAME, $BF40, $2580, LEFT

byte_119BDB:
    entrance STAIRS, $7880, $2140, LEFT, MUSIC_SAME, $A480, $ED80, RIGHT

byte_119BE3:
    entrance STAIRS, $A440, $ED80, LEFT, MUSIC_SAME, $78C0, $2140, RIGHT

byte_119BEB:
    entrance DOOR, $A580, $ECC0, UP, MUSIC_SAME, $8340, $2180, LEFT

byte_119BF3:
    entrance DOOR, $A640, $ECC0, UP, MUSIC_SAME, $A740, $2580, LEFT

byte_119BFB:
    entrance STAIRS, $A480, $ED40, LEFT, MUSIC_SAME, $A080, $2180, RIGHT

byte_119C03:
    entrance STAIRS, $A040, $2180, LEFT, MUSIC_SAME, $A4C0, $ED40, RIGHT

byte_119C0B:
    entrance DOOR, $A180, $20C0, UP, MUSIC_SAME, $C740, $2580, LEFT

byte_119C13:
    entrance DOOR, $A240, $20C0, UP, MUSIC_SAME, $8B40, $2180, LEFT

byte_119C1B:
    entrance DOOR, $9F80, $2580, RIGHT, MUSIC_SAME, $7980, $2100, DOWN

byte_119C23:
    entrance DOOR, $BF80, $2580, RIGHT, MUSIC_SAME, $7A40, $2100, DOWN

byte_119C2B:
    entrance DOOR, $8380, $2180, RIGHT, MUSIC_SAME, $A580, $ED00, DOWN

byte_119C33:
    entrance DOOR, $A780, $2580, RIGHT, MUSIC_SAME, $A640, $ED00, DOWN

byte_119C3B:
    entrance DOOR, $C780, $2580, RIGHT, MUSIC_SAME, $A180, $2100, DOWN

byte_119C43:
    entrance DOOR, $8B80, $2180, RIGHT, MUSIC_SAME, $A240, $2100, DOWN

byte_119C4B:
    .byte $60, $9D, $80, $25, $88, $81, $43, $19

byte_119C53:
    .byte $20, $BD, $80, $25, $88, $81, $28, $1A

byte_119C5B:
    .byte $E0, $A5, $80, $25, $88, $81, $47, $1B

byte_119C63:
    .byte $A0, $8A, $80, $21, $88, $81, $41, $1C

capsule:
    .byte $21, $C6, $80, $25, $F4, $8A, 5, $D, $B, $24, 8
    .byte $82, 3, $44, $A4, $5B, 9
    .byte $3E
    .word capsule_away
    .byte 8, $CC, 3, $17, $1C, 0, $17, $1D, 0, $10, $D, $5A, $12
    .byte $3E
    .word capsule_end
    .byte 0
capsule_away:
    .byte $70, 6, $54, 1, 3
capsule_end:
    .byte 0

off_119C96:
    .word byte_119CD4, byte_119CDC, byte_119CE4, byte_119CEC
    .word byte_119CF4, byte_119CFC, byte_119D2F, byte_119D69
    .word byte_119D75, byte_119D8A, byte_119D9F, byte_119DC1
    .word byte_119DCD, byte_119DD9, byte_119DE5, byte_119DFA
    .word byte_119E06, byte_119E12, byte_119E27, byte_119E33
    .word byte_119E3F, byte_119E4B, byte_119E57, byte_119E63
    .word byte_119E6F, byte_119E7B, byte_119E87, byte_119E93
    .word byte_119E9B, byte_119EA3, 0

byte_119CD4:
    entrance STAIRS, $1AC0, $5BC0, UP, MUSIC_SAME, $C500, $F540, LEFT

byte_119CDC:
    entrance HOLE, $F40, $7580, UP, MUSIC_SAME, $2B40, $A200, DOWN

byte_119CE4:
    entrance HOLE, $1340, $A640, UP, MUSIC_31, $F880, $8A40, DOWN

byte_119CEC:
    entrance DOOR, $1440, $72C0, UP, MUSIC_8, $9E80, $44C0, DOWN

byte_119CF4:
    entrance DOOR, $2B40, $A1C0, UP, MUSIC_SAME, $F40, $75C0, DOWN

byte_119CFC:
    .byte $A1, $1B, $C0, $5B, $70, $88, 5, $27, $B, $E, 8
    .byte $2D, 3, 0, $A, $2F, $12, $44, $29, 8, $1E, 1, 9
    .byte $25, 8, $1F, 1, $10, $28, $10, $27, $3F, 6
    .byte $3E
    .word byte_119D2C
    .byte 0, 8, $CA, 0, 0, 8, $1D, 1, $10, $44, 0
    .byte 0
byte_119D2C:
    .byte $50, 1, 0

byte_119D2F:
    .byte $94, $1B, $C4, $5B, $40, $80, 6, $28, $A, $20, 8
    .byte $20, 1, $27, $61, $2B, 8, $23, 1, $5A, $21, 4, $B4
    .byte $5A, $E
    .byte $3E
    .word byte_119D5B
    .byte $10, $24, $11, $28, $40, $2B
    .byte $3E
    .word byte_119D66
    .byte $5A, $1D, 4, $B4, $5A, $E, 0
byte_119D5B:
    .byte $34, 2, $36, 3, $30, 1, $10, 1, $16, 1, 3
byte_119D66:
    .byte $F4, 1, 0

byte_119D69:
    .import stru_1587C4

    npc WALK_NPC, $1640, $7380, UP, stru_1587C4
    .byte $A, $B, 8, $77, 2, 0

byte_119D75:
    npc WALK_NPC, $1840, $A480, RIGHT, stru_1587C4
    .byte $A, $14, 8, $78, 2
    .byte 9, $11, 8, $79, 2, 0, 8, $7A, 2, 0

byte_119D8A:
    npc WALK_NPC, $1B80, $A640, DOWN, stru_1587C4
    .byte $A, $14, 8, $7B, 2
    .byte 9, $11, 8, $7C, 2, 0, 8, $7D, 2, 0

byte_119D9F:
    npc STAT_NPC, $1380, $AC40, RIGHT, stru_1587C4
    .byte $A, $21, $12, $45
    .byte $F, 8, $DC, 0, 0, 8, $7E, 2, $27, 0, $1E, $25, $4E
    .byte $2D, $21, $5C, 6, $10, $45, 0, 8, $3E, 2, 0

byte_119DC1:
    npc WALK_NPC, $B40, $A540, LEFT, stru_1587C4
    .byte $A, $B, 8, $7F, 2, 0

byte_119DCD:
    npc WALK_NPC, $700, $7A40, UP, stru_1587C4
    .byte $A, $B, 8, $80, 2, 0

byte_119DD9:
    npc WALK_NPC, $29C0, $A240, LEFT, stru_1587C4
    .byte $A, $B, 8, $81, 2, 0

byte_119DE5:
    npc WALK_NPC, $B40, $7B40, RIGHT, stru_1587C4
    .byte $A, $14, 8, $82, 2
    .byte 9, $11, 8, $83, 2, 0, 8, $56, 0, 0

byte_119DFA:
    npc WALK_NPC, $1A40, $A4C0, DOWN, stru_1587C4
    .byte $A, $B, 8, $85, 2, 0

byte_119E06:
    npc WALK_NPC, $1F40, $A640, DOWN, stru_1587C4
    .byte $A, $B, 8, $86, 2, 0

byte_119E12:
    npc WALK_NPC, $1040, $7840, RIGHT, stru_1587C4
    .byte $A, $14, 8, $87, 2
    .byte 9, $11, 8, $88, 2, 0, 8, $89, 2, 0

byte_119E27:
    npc WALK_NPC, $1140, $A240, UP, stru_1587C4
    .byte $A, $B, 8, $8A, 2, 0

byte_119E33:
    npc WALK_NPC, $1080, $A480, DOWN, stru_1587C4
    .byte $A, $B, 8, $8B, 2, 0

byte_119E3F:
    npc WALK_NPC, $1C80, $A880, LEFT, stru_1587C4
    .byte $A, $B, 8, $8C, 2, 0

byte_119E4B:
    npc WALK_NPC, $1240, $7680, RIGHT, stru_1587C4
    .byte $A, $B, 8, $8D, 2, 0

byte_119E57:
    npc WALK_NPC, $1DC0, $A440, DOWN, stru_1587C4
    .byte $A, $B, 8, $8E, 2, 0

byte_119E63:
    npc WALK_NPC, $1240, $AA00, LEFT, stru_1587C4
    .byte $A, $B, 8, $8F, 2, 0

byte_119E6F:
    npc WALK_NPC, $1700, $A640, DOWN, stru_1587C4
    .byte $A, $B, 8, $90, 2, 0

byte_119E7B:
    npc WALK_NPC, $1940, $A540, RIGHT, stru_1587C4
    .byte $A, $B, 8, $91, 2, 0

byte_119E87:
    .import stru_158844

    npc WALK_NPC, $1880, $A540, UP, stru_158844
    .byte $A, $B, 8, $92, 2, 0

byte_119E93:
    .byte $20, $1B, $40, $A2, $88, $81, $49, $1D

byte_119E9B:
    .byte $A0, $23, $80, $A8, $88, $81, $49, $1E

byte_119EA3:
    .byte $60, 4, $C0, $AC, $88, $81, $49, $1F
