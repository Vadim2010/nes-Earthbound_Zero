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
    entrance DOOR, $C140, $ED00, UP, 6, $5A40, $7980, DOWN

byte_118064:
    entrance DOOR, $BD80, $EDC0, UP, 0, $9B40, $F580, LEFT

byte_11806C:
    entrance DOOR, $BE80, $EDC0, UP, 0, $B340, $F580, LEFT

byte_118074:
    entrance DOOR, $BF40, $EDC0, UP, 0, $B340, $FD80, LEFT

byte_11807C:
    entrance DOOR, $C380, $EDC0, UP, 0, $AB40, $F580, LEFT

byte_118084:
    entrance DOOR, $C480, $EDC0, UP, 0, $A340, $FD80, LEFT

byte_11808C:
    .byte $58, $C5, $C0, $ED, $36, $25, $35, $15, $12, $5B
    .byte $11, $3D, $40, $C7, $86, $F1, 0, 8, $4B, 3, 0, $D
    .byte $55, $1A, 1, $22, $D, $56, $1F, 1, $22, $D, $57
    .byte $25, 8, $35, 3, 0

byte_1180B2:
    entrance STAIRS, $BC80, $EE40, LEFT, 0, $BE80, $F580, RIGHT

byte_1180BA:
    entrance STAIRS, $BE40, $F580, LEFT, 0, $BCC0, $EE40, RIGHT

byte_1180C2:
    entrance DOOR, $BF80, $F4C0, UP, 0, $B340, $ED80, LEFT

byte_1180CA:
    entrance DOOR, $C080, $F4C0, UP, 0, $BB40, $F580, LEFT

byte_1180D2:
    entrance DOOR, $C180, $F4C0, UP, 0, $BB40, $FD80, LEFT

byte_1180DA:
    entrance DOOR, $C280, $F4C0, UP, 0, $DF40, $2580, LEFT

byte_1180E2:
    entrance DOOR, $C380, $F4C0, UP, 0, $9B40, $ED80, LEFT

byte_1180EA:
    entrance DOOR, $C440, $F4C0, UP, 0, $F40, $5580, LEFT

byte_1180F2:
    .byte $58, $C5, $42, $F5, $36, $27, $35, $17, $12, $3C
    .byte $11, $3D, $C0, $1A, 4, $5C, 0, 8, $63, 3, $10, $5B
    .byte 0, $D, $55, $1C, 1, $24, $D, $56, $21, 1, $24, $D
    .byte $57, $27, 8, $35, 3, 0

byte_11811A:
    entrance STAIRS, $C040, $FD80, LEFT, 0, $B4C0, $F540, RIGHT

byte_118122:
    entrance DOOR, $C180, $FCC0, UP, 0, $BB40, $2180, LEFT

byte_11812A:
    entrance DOOR, $C240, $FCC0, UP, 0, $DB40, $2180, LEFT

byte_118132:
    entrance STAIRS, $C080, $FD40, LEFT, 0, $9C80, $F180, RIGHT

byte_11813A:
    .byte $D1, $C5, $82, $EE, $28, $83, $A, $B, 8, $18, 1
    .byte 0

byte_118146:
    .byte $51, $C3, $86, $F5, 8, $83, $A, $19, $33, 3, $16
    .byte $52, $80, $12, 8, 1, 1, 0, 8, $15, 2, 0, 8, 0, 1
    .byte 0

byte_118160:
    .byte $D1, $C3, $C2, $F5, $88, $83, $A, $12, $33, 3, $F
    .byte 8, $57, 0, 0, 8, 2, 1, 0

byte_118173:
    .byte $D1, $BE, $C6, $EE, $48, $83, $A, $14, 8, $19, 1
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
    entrance DOOR, $B80, $2180, RIGHT, 6, $2C40, $4F00, DOWN

byte_11824A:
    entrance STAIRS, $880, $2140, LEFT, 0, $880, $3980, RIGHT

byte_118252:
    .byte $58, $A, $C0, $20, $36, $24, $D, $55, $14, 8, $36
    .byte 3, $5B, 8, $3D, $51, $BF, $86, $21, 0, $D, $56, $19
    .byte 1, $1C, $D, $57, $1F, 8, $35, 3, $35, $24, 8, $34
    .byte 3, 0

byte_118277:
    entrance DOOR, $7380, $2180, RIGHT, 0, $980, $3900, DOWN

byte_11827F:
    entrance DOOR, $9F80, $FD80, RIGHT, 0, $A40, $3900, DOWN

byte_118287:
    entrance DOOR, $B80, $2980, RIGHT, 6, $6640, $CE00, DOWN

byte_11828F:
    entrance DOOR, $380, $3180, RIGHT, 6, $2740, $7C00, DOWN

byte_118297:
    entrance DOOR, $B80, $4180, RIGHT, $A, $E040, $F400, DOWN

byte_11829F:
    entrance DOOR, $9B80, $2180, RIGHT, 6, $5800, $B280, DOWN

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
    .byte $D1, $72, $82, $21, $2C, $86, $A, $2D, $12, $26
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
    .byte $50, $99, $84, $21, $C, $86, $A, $13, $12, $41, $F
    .byte 8, $38, 1, 0, 8, $58, 1, 0, $D, $63, $31, $25, $63
    .byte $2E, $37, 8, $5A, 1, $25, $44, $5C, 6, $2D, $2D
    .byte 4, $28, $27, 0, $2A, 1, $1D, $10, $41, 0, 8, $58
    .byte 1, 0, $C, 1, $37, 8, $50, 2, 0

byte_1184D1:
    .byte $51, $9A, $82, $21, 8, $83, $A, $33, $12, $41, $30
    .byte $1D, $A, 0, 8, $5C, 1, 9, $2C, $27, 0, $28, $25
    .byte $44, $1D, $A, 0, $29, $24, $5C, 6, $25, $44, $2D
    .byte $33, 0, 8, $5F, 2, 0, 8, $60, 2, 0, 8, $A, 3, 0
    .byte 8, $59, 1, 0

byte_118505:
    .byte $11, 1, 2, $31, $C, $86, $1D, $1E, 0, 2, 5, $85
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
    .byte $11, 9, 2, $29, $C, $86, $1D, $4B, 0, 2, $7D, $85
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
    .byte $11, 9, 2, $41, $C, $86, $1D, $58, 0, 2, $7D, $85
    .byte $E, 0

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
    entrance DOOR, $E380, $3980, RIGHT, 6, $D940, $6600, DOWN

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
    entrance DOOR, $9F80, $2180, RIGHT, 0, $7C40, $21C0, RIGHT

byte_11869F:
    entrance DOOR, $9C80, $2140, LEFT, 0, $C780, $F880, LEFT

byte_1186A7:
    entrance DOOR, $9C00, $21C0, LEFT, 0, $BB80, $EC80, LEFT

byte_1186AF:
    entrance DOOR, $8740, $2140, RIGHT, 0, $C40, $41C0, RIGHT

byte_1186B7:
    entrance DOOR, $87C0, $21C0, RIGHT, 0, $94C0, $2140, RIGHT

byte_1186BF:
    entrance DOOR, $A780, $2180, RIGHT, 0, $440, $21C0, RIGHT

byte_1186C7:
    entrance DOOR, $A440, $2180, LEFT, 0, $F40, $3180, LEFT

byte_1186CF:
    entrance DOOR, $8F40, $2140, RIGHT, 0, $CC0, $4140, RIGHT

byte_1186D7:
    entrance DOOR, $8FC0, $21C0, RIGHT, 0, $9440, $21C0, RIGHT

byte_1186DF:
    entrance DOOR, $F80, $2180, RIGHT, 0, $9D40, $EFC0, RIGHT

byte_1186E7:
    entrance DOOR, $C80, $2140, LEFT, 0, $AF80, $F880, LEFT

byte_1186EF:
    entrance DOOR, $C00, $21C0, LEFT, 0, $AF80, $EC80, LEFT

byte_1186F7:
    entrance DOOR, $780, $3980, RIGHT, 0, $B540, $EFC0, RIGHT

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
    entrance DOOR, $9780, $2180, RIGHT, 0, $74C0, $2140, RIGHT

byte_11875D:
    entrance DOOR, $9480, $2140, LEFT, 0, $8780, $21C0, LEFT

byte_118765:
    entrance DOOR, $9400, $21C0, LEFT, 0, $8F80, $21C0, LEFT

byte_11876D:
    entrance DOOR, $F80, $2980, RIGHT, 0, $7440, $21C0, RIGHT

byte_118775:
    entrance DOOR, $C80, $2940, LEFT, 0, $A380, $EC80, LEFT

byte_11877D:
    entrance DOOR, $C00, $29C0, LEFT, 0, $F40, $5180, LEFT

byte_118785:
    entrance DOOR, $F80, $5180, RIGHT, 0, $C40, $29C0, RIGHT

byte_11878D:
    entrance DOOR, $C80, $5140, LEFT, 0, $740, $4180, LEFT

byte_118795:
    entrance DOOR, $C00, $51C0, LEFT, 0, $F40, $3980, LEFT

byte_11879D:
    entrance DOOR, $AF80, $2180, RIGHT, 0, $480, $3180, RIGHT

byte_1187A5:
    entrance DOOR, $F80, $4980, RIGHT, 0, $C140, $FBC0, RIGHT

byte_1187AD:
    entrance DOOR, $780, $4980, RIGHT, 0, $A940, $EFC0, RIGHT

byte_1187B5:
    entrance DOOR, $F80, $3980, RIGHT, 0, $C40, $51C0, RIGHT

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
    entrance DOOR, $A3C0, $F480, RIGHT, 0, $6CC0, $2140, RIGHT

byte_118827:
    entrance DOOR, $9400, $FEC0, LEFT, 0, $7F40, $2180, LEFT

byte_11882F:
    entrance DOOR, $7C0, $2180, RIGHT, 0, $7CC0, $2140, RIGHT

byte_118837:
    entrance DOOR, $400, $21C0, LEFT, 0, $A740, $2180, LEFT

byte_11883F:
    entrance DOOR, $780, $5180, RIGHT, 0, $4C0, $2940, RIGHT

byte_118847:
    entrance DOOR, $F80, $4180, RIGHT, 0, $440, $29C0, RIGHT

byte_11884F:
    entrance DOOR, $C00, $41C0, LEFT, 0, $8700, $2140, LEFT

byte_118857:
    entrance DOOR, $C80, $4140, LEFT, 0, $8F00, $2140, LEFT

byte_11885F:
    entrance DOOR, $A3C0, $EC80, RIGHT, 0, $CC0, $2940, RIGHT

byte_118867:
    entrance DOOR, $9D00, $EFC0, LEFT, 0, $F40, $2180, LEFT

byte_11886F:
    entrance DOOR, $F80, $3180, RIGHT, 0, $A480, $2180, RIGHT

byte_118877:
    entrance DOOR, $C7C0, $F880, RIGHT, 0, $9CC0, $2140, RIGHT

byte_11887F:
    entrance DOOR, $C100, $FBC0, LEFT, 0, $F40, $4980, LEFT

byte_118887:
    entrance DOOR, $BBC0, $EC80, RIGHT, 0, $9C40, $21C0, RIGHT

byte_11888F:
    entrance DOOR, $B500, $EFC0, LEFT, 0, $740, $3980, LEFT

byte_118897:
    entrance DOOR, $440, $3180, LEFT, 0, $AF40, $2180, LEFT

byte_11889F:
    entrance DOOR, $780, $3180, RIGHT, 0, $A440, $FFC0, RIGHT

byte_1188A7:
    entrance DOOR, $A400, $FFC0, LEFT, 0, $740, $3180, LEFT

byte_1188AF:
    entrance DOOR, $AFC0, $F880, RIGHT, 0, $CC0, $2140, RIGHT

byte_1188B7:
    entrance DOOR, $AFC0, $EC80, RIGHT, 0, $C40, $21C0, RIGHT

byte_1188BF:
    entrance DOOR, $A900, $EFC0, LEFT, 0, $740, $4980, LEFT

byte_1188C7:
    entrance DOOR, $780, $4180, RIGHT, 0, $CC0, $5140, RIGHT

byte_1188CF:
    .byte $20, 6, $40, $41, $88, $81, $41, $18

byte_1188D7:
    .byte $1F, $9B, $80, $FA, 5, $F, $35, $B, 8, $66, 1, 0

byte_1188E3:
    .byte $5F, $B6, $C0, $EF, 5, $F, $35, $B, 8, $64, 1, 0

byte_1188EF:
    .byte $1F, $A9, $80, $FC, 5, $F, $35, $B, 8, $65, 1, 0

off_1188FB:
    .word byte_118929, byte_118931, byte_118939, byte_118941
    .word byte_118949, byte_118951, byte_118959, byte_118961
    .word byte_118969, byte_118971, byte_118979, byte_118981
    .word byte_118989, byte_1189D5, byte_1189E0, byte_1189EB
    .word byte_1189F6, byte_118A02, byte_118A0E, byte_118A5A
    .word byte_118A65, byte_118A70, 0

byte_118929:
    entrance DOOR, $380, $5580, RIGHT, 6, $2DC0, $6C40, DOWN

byte_118931:
    entrance DOOR, $380, $3D80, RIGHT, 6, $58C0, $7040, DOWN

byte_118939:
    entrance DOOR, $9380, $2580, RIGHT, 6, $74C0, $EF40, DOWN

byte_118941:
    entrance DOOR, $B80, $2D80, RIGHT, 6, $C7C0, $4640, DOWN

byte_118949:
    entrance STAIRS, $880, $3D40, LEFT, 0, $80, $4580, RIGHT

byte_118951:
    entrance STAIRS, $840, $3D80, LEFT, 0, $78C0, $2540, RIGHT

byte_118959:
    entrance STAIRS, $A880, $2540, LEFT, 0, $80, $2D80, RIGHT

byte_118961:
    entrance STAIRS, $A840, $2580, LEFT, 0, $C0, $4D40, RIGHT

byte_118969:
    entrance STAIRS, $880, $4D40, LEFT, 0, $7080, $2580, RIGHT

byte_118971:
    entrance STAIRS, $840, $4D80, LEFT, 0, $8C0, $2540, RIGHT

byte_118979:
    entrance STAIRS, $B880, $2540, LEFT, 0, $880, $5580, RIGHT

byte_118981:
    entrance STAIRS, $B840, $2580, LEFT, 0, $C0C0, $2540, RIGHT

byte_118989:
    .byte $91, 1, 4, $55, $68, $84, 2, $89, $89, $B, 0, $A
    .byte $4B, 8, $B1, 2, $10, 0, $27, 0, $17, $11, 0, $22
    .byte $3C, $3D, $3F, 0, $42, $12, 0, $26, 8, $3C, 3, $11
    .byte 0, 3, $29, $48, 8, $3A, 2, 9, $40, 8, $B2, 2, $5C
    .byte $B, $1F, $2D, $4B, 8, $E3, 3, 9, $3C, 1, $10, 8
    .byte 9, 3, 3, $28, $4B, 8, 8, 3, $11, 0, 3, 8, $3B, 3
    .byte 3

byte_1189D5:
    .byte $91, 9, 4, $2D, $68, $84, 2, $89, $89, $B, 0

byte_1189E0:
    .byte $91, 1, 4, $3D, $68, $84, 2, $89, $89, $B, 0

byte_1189EB:
    .byte $91, $91, 4, $25, $68, $84, 2, $89, $89, $B, 0

byte_1189F6:
    .byte $11, 2, $C2, $55, $68, $84, $A, $B, 8, $BD, 2, 0

byte_118A02:
    .byte $11, $91, $82, $25, $68, $84, $A, $B, 8, $BE, 2
    .byte 0

byte_118A0E:
    .byte $11, $AA, 4, $25, $A8, $84, 2, $E, $8A, $B, 0, $A
    .byte $4B, 8, 6, 3, $10, 0, $27, 0, $17, $11, 0, $22, $43
    .byte $42, $41, $19, $42, $12, 0, $26, 8, $3B, 2, $11
    .byte 0, 3, $29, $48, 8, $3A, 2, 9, $40, 8, 9, 3, $5C
    .byte $B, $1F, $2D, $4B, 8, $E3, 3, 9, $3C, 1, $10, 8
    .byte 9, 3, 3, $28, $4B, 8, $A, 3, $11, 0, 3, 8, $3A, 3
    .byte 3

byte_118A5A:
    .byte $11, $BA, 4, $25, $A8, $84, 2, $E, $8A, $B, 0

byte_118A65:
    .byte $11, $A, 4, $4D, $A8, $84, 2, $E, $8A, $B, 0

byte_118A70:
    .byte $11, $A, 4, $3D, $A8, $84, 2, $E, $8A, $B, 0

off_118A7B:
    .word byte_118AA7, byte_118AAF, byte_118AB7, byte_118ABF
    .word byte_118AC7, byte_118ACF, byte_118AD7, byte_118ADF
    .word byte_118AE7, byte_118AEF, byte_118AF7, byte_118AFF
    .word byte_118B46, byte_118B8D, byte_118BD4, byte_118C1B
    .word byte_118C62, byte_118C6E, byte_118CB5, byte_118D09
    .word byte_118D7E, 0

byte_118AA7:
    entrance STAIRS, $80, $4D40, LEFT, 0, $A880, $2580, RIGHT

byte_118AAF:
    entrance STAIRS, $40, $4D80, LEFT, 0, $C0, $2540, RIGHT

byte_118AB7:
    entrance STAIRS, $80, $2540, LEFT, 0, $80, $4D80, RIGHT

byte_118ABF:
    entrance STAIRS, $40, $2580, LEFT, 0, $C0, $3540, RIGHT

byte_118AC7:
    entrance STAIRS, $880, $2540, LEFT, 0, $880, $4D80, RIGHT

byte_118ACF:
    entrance STAIRS, $840, $2580, LEFT, 0, $B0C0, $2540, RIGHT

byte_118AD7:
    entrance STAIRS, $B080, $2540, LEFT, 0, $880, $2580, RIGHT

byte_118ADF:
    entrance STAIRS, $B880, $F940, LEFT, 0, $C080, $2580, RIGHT

byte_118AE7:
    entrance STAIRS, $B040, $2580, LEFT, 0, $C0, $6D40, RIGHT

byte_118AEF:
    entrance STAIRS, $80, $6D40, LEFT, 0, $B080, $2580, RIGHT

byte_118AF7:
    entrance DOOR, $B80, $4580, RIGHT, $30, $B340, $7000, DOWN

byte_118AFF:
    .byte $11, $A, 4, $45, $68, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $47, $41, $15, $F, $3D
    .byte $12, 0, $21, 8, $3B, 2, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, $A, 3
    .byte $11, 0, 0, 8, $3A, 3, 0

byte_118B46:
    .byte $11, 2, 4, $4D, $E8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $11, $12, $18, 0, $3D
    .byte $12, 0, $21, 8, $3C, 3, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, 8, 3
    .byte $11, 0, 0, 8, $3B, 3, 0

byte_118B8D:
    .byte $11, 2, 4, $25, $C8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $3C, $47, $40, 0, $3D
    .byte $12, 0, $21, 8, $3B, 2, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, $A, 3
    .byte $11, 0, 0, 8, $3A, 3, 0

byte_118BD4:
    .byte $11, $A, 4, $25, $E8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $12, $18, 0, 0, $3D
    .byte $12, 0, $21, 8, $3C, 3, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, 8, 3
    .byte $11, 0, 0, 8, $3B, 3, 0

byte_118C1B:
    .byte $11, $B2, 4, $25, $C8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $3C, $47, $40, $45
    .byte $3D, $12, 0, $21, 8, $3B, 2, $11, 0, 0, $29, $43
    .byte 8, $3A, 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46
    .byte 8, $E3, 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8
    .byte $A, 3, $11, 0, 0, 8, $3A, 3, 0

byte_118C62:
    .byte $91, $B2, 4, $25, $E8, $82, $A, $B, 8, $BF, 2, 0

byte_118C6E:
    .byte $11, $BA, 4, $F9, $C8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $5A, $A, $28, $B, $3D
    .byte $12, 0, $21, 8, $3B, 2, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, $A, 3
    .byte $11, 0, 0, 8, $3A, 3, 0

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

byte_118D7E:
    .byte $11, 2, 4, $6D, $C8, $82, $A, $46, 8, $8B, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $23, $25, $26, 0, $3D
    .byte $12, 0, $21, 8, $3B, 2, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, $A, 3
    .byte $11, 0, 0, 8, $3A, 3, 0

off_118DC5:
    .word byte_118DED, byte_118DF5, byte_118DFD, byte_118E05
    .word byte_118E0D, byte_118E15, byte_118E1D, byte_118E25
    .word byte_118E2D, byte_118E7D, byte_118EC4, byte_118ED0
    .word byte_118EDC, byte_118EE8, byte_118F16, byte_118F22
    .word byte_118F4E, byte_118F7A, byte_118FA6, 0

byte_118DED:
    entrance STAIRS, $80, $3540, LEFT, 0, $80, $2580, RIGHT

byte_118DF5:
    entrance STAIRS, $C080, $2540, LEFT, 0, $B880, $2580, RIGHT

byte_118DFD:
    entrance STAIRS, $C040, $2580, LEFT, 0, $B8C0, $F940, RIGHT

byte_118E05:
    entrance DOOR, $9840, $F100, UP, 6, $8040, $CFC0, DOWN

byte_118E0D:
    entrance DOOR, $A440, $F100, UP, 6, $5040, $53C0, DOWN

byte_118E15:
    entrance DOOR, $B440, $F100, UP, $A, $D780, $F8C0, DOWN

byte_118E1D:
    entrance DOOR, $A440, $F900, UP, 6, $AA40, $CFC0, DOWN

byte_118E25:
    entrance DOOR, $B440, $F900, UP, 8, $BA40, $67C0, DOWN

byte_118E2D:
    .byte $11, 2, 4, $35, $E8, $82, $A, $4F, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $6D, $E, $28, 4, $46
    .byte $26, 2, $21, 8, 7, 3, $11, 0, 0, $12, 0, $2A, 8
    .byte $3C, 3, $11, 0, 0, $29, $4C, 8, $3A, 2, 9, $44, 8
    .byte 9, 3, $5C, $B, $1F, $2D, $4F, 8, $E3, 3, 9, $40
    .byte 1, $B, 8, 9, 3, 0, $28, $4F, 8, 8, 3, $11, 0, 0
    .byte 8, $3B, 3, 0

byte_118E7D:
    .byte $11, $C2, 4, $25, $C8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $3C, $47, $40, $45
    .byte $3D, $12, 0, $21, 8, $3B, 2, $11, 0, 0, $29, $43
    .byte 8, $3A, 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46
    .byte 8, $E3, 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8
    .byte $A, 3, $11, 0, 0, 8, $3A, 3, 0

byte_118EC4:
    .byte $51, $A3, $C4, $F1, $C8, $82, $A, $B, 8, $2D, 1
    .byte 0

byte_118ED0:
    .byte $51, $B4, $80, $F2, $A8, $82, $A, $B, 8, $7C, 1
    .byte 0

byte_118EDC:
    .byte $11, $B4, $82, $F2, $A8, $81, $A, $B, 8, $39, 1
    .byte 0

byte_118EE8:
    .byte $54, $99, $C6, $F1, $88, $82, 5, $2F, $A, $28, 8
    .byte $73, 3, 9, $25, 8, $74, 3, $27, 0, $21, $5C, 6, $25
    .byte $62, $2D, $28, $3E, $11, $8F, $10, $2F, 0, 8, $49
    .byte 2, 0, 8, $75, 3, 0, $76, 4, $70, 2, 0

byte_118F16:
    .byte $50, $B7, $44, $FA, $C8, $82, $A, $B, 8, $C1, 2
    .byte 0

byte_118F22:
    .byte $50, $A7, $46, $F2, $C8, $82, $A, $2B, $12, $71
    .byte $D, 1, $11, 8, $39, 2, 0, 8, $2F, 1, $22, $90, $91
    .byte $92, 0, $28, $45, 8, $34, 1, 9, $28, $29, $24, $4A
    .byte 0, 8, $3F, 2, 0, 8, $76, 0, 0

byte_118F4E:
    .byte $50, $9B, $46, $F2, $C8, $82, $A, $2B, $12, $71
    .byte $D, 1, $11, 8, $39, 2, 0, 8, $2F, 1, $22, $93, $96
    .byte $97, 0, $28, $45, 8, $34, 1, 9, $28, $29, $24, $4A
    .byte 0, 8, $3F, 2, 0, 8, $76, 0, 0

byte_118F7A:
    .byte $50, $A7, $46, $FA, $C8, $82, $A, $2B, $12, $71
    .byte $D, 1, $11, 8, $39, 2, 0, 8, $2F, 1, $22, $94, $98
    .byte $99, 0, $28, $45, 8, $34, 1, 9, $28, $29, $24, $4A
    .byte 0, 8, $3F, 2, 0, 8, $76, 0, 0

byte_118FA6:
    .byte $50, $B7, $46, $F2, $C8, $82, $A, $2E, $12, $71
    .byte $D, 1, $11, 8, $39, 2, 0, 8, $7A, 1, 8, $2F, 1, $22
    .byte $95, $9A, $9B, 0, $2B, $45, 8, $34, 1, 9, $2B, $29
    .byte $27, $4A, 0, 8, $3F, 2, 0, 8, $76, 0, 0

off_118FD5:
    .word byte_119017, byte_11901F, byte_119027, byte_11902F
    .word byte_119037, byte_11903F, byte_119047, byte_11904F
    .word byte_119057, byte_11905F, byte_119067, byte_11906F
    .word byte_119077, byte_11907F, byte_119087, byte_119090
    .word byte_119099, byte_1190A2, byte_1190AB, byte_1190B4
    .word byte_1190BD, byte_1190C6, byte_1190CF, byte_1190DA
    .word byte_1190E5, byte_1190F0, byte_119130, byte_119177
    .word byte_1191BE, byte_119219, byte_119235, byte_11927C
    .word 0

byte_119017:
    entrance DOOR, $380, $4580, RIGHT, 6, $3080, $6C40, DOWN

byte_11901F:
    entrance STAIRS, $40, $4580, LEFT, 0, $8C0, $3D40, RIGHT

byte_119027:
    entrance STAIRS, $7880, $2540, LEFT, 0, $880, $3D80, RIGHT

byte_11902F:
    entrance STAIRS, $7840, $2580, LEFT, 0, $88C0, $2540, RIGHT

byte_119037:
    entrance STAIRS, $8880, $2540, LEFT, 0, $7880, $2580, RIGHT

byte_11903F:
    entrance STAIRS, $8840, $2580, LEFT, 0, $98C0, $2540, RIGHT

byte_119047:
    entrance STAIRS, $9880, $2540, LEFT, 0, $8880, $2580, RIGHT

byte_11904F:
    entrance DOOR, $380, $2D80, RIGHT, 6, $5880, $7340, DOWN

byte_119057:
    entrance STAIRS, $40, $2D80, LEFT, 0, $A8C0, $2540, RIGHT

byte_11905F:
    entrance DOOR, $7380, $2580, RIGHT, 6, $6E80, $EF40, DOWN

byte_119067:
    entrance STAIRS, $7040, $2580, LEFT, 0, $8C0, $4D40, RIGHT

byte_11906F:
    entrance DOOR, $B80, $5580, RIGHT, 6, $C580, $4640, DOWN

byte_119077:
    entrance STAIRS, $840, $5580, LEFT, 0, $B8C0, $2540, RIGHT

byte_11907F:
    entrance DOOR, $A380, $2580, RIGHT, $A, $E240, $F900, DOWN

byte_119087:
    .byte $98, $A, $C0, $54, 2, 9, $8D, 9, 0

byte_119090:
    .byte $98, 2, $C0, $2C, 2, 9, $8D, 9, 0

byte_119099:
    .byte $98, $72, $C0, $24, 2, 9, $8D, 9, 0

byte_1190A2:
    .byte $98, 2, $C0, $44, 2, 9, $8D, 9, 0

byte_1190AB:
    .byte $18, 9, $C0, $54, 2, $B5, $8C, 9, 0

byte_1190B4:
    .byte $18, 1, $C0, $2C, 2, $B5, $8C, 9, 0

byte_1190BD:
    .byte $18, $71, $C0, $24, 2, $B5, $8C, 9, 0

byte_1190C6:
    .byte $18, 1, $C0, $44, 2, $B5, $8C, 9, 0

byte_1190CF:
    .byte $D0, 9, 4, $55, $E8, $82, 2, $F0, $90, $B, 0

byte_1190DA:
    .byte $D0, 1, 4, $45, $E8, $82, 2, $F0, $90, $B, 0

byte_1190E5:
    .byte $D0, 1, 4, $2D, $E8, $82, 2, $F0, $90, $B, 0

byte_1190F0:
    .byte $D0, $71, 4, $25, $E8, $82, 2, $F0, $90, $B, 0, $A
    .byte $3F, 8, $58, 0, 9, $33, 8, $29, 2, $20, $33, $2C
    .byte $3C, $32, $32, $1E, $A, 0, $3A, 8, $2A, 2, 9, $31
    .byte $28, $2B, $1F, 8, $5B, 0, 3, $2D, $3F, 8, $49, 2
    .byte 3, $2D, $3F, 8, $5A, 0, 8, $5B, 0, 3, $2D, $3F, 8
    .byte $3E, 3, 3

byte_119130:
    .byte $11, $7A, 4, $25, $E8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $10, $17, $11, 0, $3D
    .byte $12, 0, $21, 8, $3C, 3, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, 8, 3
    .byte $11, 0, 0, 8, $3B, 3, 0

byte_119177:
    .byte $11, $8A, 4, $25, $E8, $82, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $3C, $47, $40, 0, $3D
    .byte $12, 0, $21, 8, $3C, 3, $11, 0, 0, $29, $43, 8, $3A
    .byte 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46, 8, $E3
    .byte 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8, 8, 3
    .byte $11, 0, 0, 8, $3B, 3, 0

byte_1191BE:
    .byte $10, $9A, 0, $25, $C8, $82, $A, $5A, $12, $C, $F
    .byte 8, $4D, 0, 0, $12, $42, $16, 8, $53, 0, 0, 8, $4D
    .byte 0, 8, $4E, 0, 9, $57, $25, $5F, 8, $4F, 0, 9, $43
    .byte $29, $3F, $27, 0, $37, $5C, $B, $1F, $25, $5F, $2D
    .byte 0, $10, $42, 8, $51, 0, 0, $25, $5F, $28, $5A, 8
    .byte $3B, 2, 0, 8, $3D, 2, 0, 8, $52, 0, $27, 0, $53
    .byte $5C, $B, $1F, $25, $5F, $2D, 0, $10, $42, 0, 8, $4A
    .byte 2, 0, 8, $50, 0, 0

byte_119219:
    .byte $91, $9A, 4, $25, $E8, $82, $A, $1B, $12, $D, $18
    .byte 8, $55, 0, 9, $14, 8, $56, 0, 0, 8, $57, 0, 0, 8
    .byte $54, 0, 0

byte_119235:
    .byte $11, $A2, 4, $25, $A8, $81, $A, $46, 8, 6, 3, $10
    .byte 0, $27, 0, $12, $11, 0, $22, $47, $44, $41, $14
    .byte $3D, $12, 0, $21, 8, $3B, 2, $11, 0, 0, $29, $43
    .byte 8, $3A, 2, 9, $3B, 8, 9, 3, $5C, $B, $1F, $2D, $46
    .byte 8, $E3, 3, 9, $37, 1, $B, 8, 9, 3, 0, $28, $46, 8
    .byte $A, 3, $11, 0, 0, 8, $3A, 3, 0

byte_11927C:
    .byte $18, $A1, $C0, $24, 2, $B5, $8C, 9, 0

off_119285:
    .word byte_1192AB, byte_1192B3, byte_1192BB, byte_1192C3
    .word byte_1192CB, byte_1192D3, byte_1192DB, byte_1192E3
    .word byte_1192EB, byte_1192F3, byte_1192FB, byte_119303
    .word byte_11930B, byte_119313, byte_11931B, byte_119323
    .word byte_11932B, byte_119377, 0

byte_1192AB:
    entrance DOOR, $B780, $2580, RIGHT, 0, $BD80, $FD00, DOWN

byte_1192B3:
    entrance DOOR, $9780, $2580, RIGHT, 0, $7E40, $2500, DOWN

byte_1192BB:
    entrance STAIRS, $440, $3580, LEFT, 0, $C0, $4140, RIGHT

byte_1192C3:
    entrance DOOR, $580, $34C0, UP, 0, $740, $3D80, LEFT

byte_1192CB:
    entrance DOOR, $640, $34C0, UP, 0, $740, $4580, LEFT

byte_1192D3:
    entrance STAIRS, $480, $3540, LEFT, 0, $C80, $4580, RIGHT

byte_1192DB:
    entrance DOOR, $780, $2580, RIGHT, 0, $580, $5500, DOWN

byte_1192E3:
    entrance DOOR, $780, $2D80, RIGHT, 0, $640, $5500, DOWN

byte_1192EB:
    entrance DOOR, $780, $4D80, RIGHT, 0, $9600, $F500, DOWN

byte_1192F3:
    entrance STAIRS, $C40, $4D80, LEFT, 0, $94C0, $F540, RIGHT

byte_1192FB:
    entrance DOOR, $D80, $4CC0, UP, 0, $F40, $2580, LEFT

byte_119303:
    entrance DOOR, $E40, $4CC0, UP, 0, $F40, $2D80, LEFT

byte_11930B:
    entrance DOOR, $F80, $2580, RIGHT, 0, $D80, $4D00, DOWN

byte_119313:
    entrance DOOR, $F80, $2D80, RIGHT, 0, $E40, $4D00, DOWN

byte_11931B:
    entrance DOOR, $F80, $3D80, RIGHT, 0, $D80, $3500, DOWN

byte_119323:
    entrance DOOR, $7780, $2580, RIGHT, 0, $E40, $3500, DOWN

byte_11932B:
    .byte $10, $B5, 4, $25, $C8, $84, $1D, $5C, 0, 2, $2B
    .byte $93, $E, 0, $A, $4B, 8, $D, 3, 9, $3E, $29, $48
    .byte $3A, 1, $1E, $18, $3C, 1, $21, $3A, 0, $21, $52
    .byte $80, $42, $50, $2F, $52, 3, $2F, 8, $F, 3, $28, $4B
    .byte 3, $51, $FF, $50, $2F, $53, $FC, $1F, $5C, 7, 8
    .byte $10, 3, 3, $28, $4B, 8, $E, 3, 3, $28, $4B, 8, $19
    .byte 2, 3, 8, $3F, 2, 3

byte_119377:
    .byte $10, 5, 4, $4D, $C8, $84, $1D, $4E, 0, 2, $2B, $93
    .byte $E, 0

off_119385:
    .word byte_11939B, byte_1193A3, byte_1193AB, byte_1193C2
    .word byte_1193CA, byte_1193D2, byte_1193DA, byte_1193ED
    .word byte_119474, byte_1194A7, 0

byte_11939B:
    entrance DOOR, $AF80, $2580, RIGHT, 6, $2EC0, $6C40, DOWN

byte_1193A3:
    entrance STAIRS, $AC80, $2540, LEFT, 0, $CC80, $2580, RIGHT

byte_1193AB:
    .byte $58, $CC, $86, $25, $36, $16, $35, $16, $12, $2C
    .byte $F, $11, $2C, $10, $2D, $5B, 8, $3D, $C0, $AC, $42
    .byte $25, 0

byte_1193C2:
    entrance STAIRS, $D440, $2580, LEFT, 0, $BCC0, $FD40, RIGHT

byte_1193CA:
    entrance DOOR, $D580, $24C0, UP, 0, $B40, $4980, LEFT

byte_1193D2:
    entrance DOOR, $D640, $24C0, UP, 0, $B40, $5180, LEFT

byte_1193DA:
    .byte $10, $AE, 4, $25, $28, $83, $A, $12, $12, $D, $F
    .byte 8, $4B, 0, 0, 8, $96, 2, 0

byte_1193ED:
    .byte $50, $CE, $44, $25, $68, $83, $A, $77, $33, 5, $46
    .byte $52, $80, $10, 1, $17, 8, $70, 2, $3E, $71, $94
    .byte 0, $33, 1, $46, $52, $80, $3F, $1D, $64, 0, 8, $43
    .byte 0, $5C, 6, $28, $77, $1F, $10, $B, $3E, $65, $94
    .byte 8, $46, 0, 9, $32, 8, $47, 0, $10, $5E, $10, $B
    .byte $3F, 9, $3E, $70, $94, 0, 8, $71, 2, $3E, $71, $94
    .byte 0, $12, $D, $50, 8, $4A, 0, $3E, $71, $94, 0, $12
    .byte $B, $5A, 8, $49, 0, $3E, $71, $94, 0, $12, $5D, $64
    .byte 8, $40, 0, $3E, $71, $94, 0, 8, $40, 0, 8, $41, 0
    .byte 9, $6C, 8, $42, 0, 8, $49, 0, $3E, $71, $94, $10
    .byte $5D, 0, $36, 2, $34, 2, $32, 3, $72, 1, $F6, 6, 3
    .byte 0, $F4, 1, 0

byte_119474:
    .byte $10, $CD, 4, $25, $48, $83, $A, $32, $12, $D, $F
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
    entrance DOOR, $DF80, $2580, RIGHT, 0, $C280, $F500, DOWN

byte_119503:
    entrance DOOR, $200, $8280, LEFT, 6, $B440, $CFC0, LEFT

byte_11950B:
    entrance DOOR, $1DC0, $8280, RIGHT, $A, $D080, $F200, DOWN

byte_119513:
    entrance DOOR, $F440, $76C0, UP, $F, $FB40, $2180, LEFT

byte_11951B:
    entrance DOOR, $EC0, $5AC0, UP, 0, $A00, $3500, DOWN

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
    entrance STAIRS, $7C40, $2580, LEFT, 0, $ACC0, $FD40, RIGHT

byte_119680:
    entrance DOOR, $7D80, $24C0, UP, 0, $8F40, $2580, LEFT

byte_119688:
    entrance DOOR, $7E40, $24C0, UP, 0, $9740, $2580, LEFT

byte_119690:
    entrance DOOR, $8F80, $2580, RIGHT, 0, $7D80, $2500, DOWN

byte_119698:
    entrance DOOR, $780, $3D80, RIGHT, 0, $580, $3500, DOWN

byte_1196A0:
    entrance DOOR, $780, $4580, RIGHT, 0, $640, $3500, DOWN

byte_1196A8:
    entrance STAIRS, $C40, $4580, LEFT, 0, $4C0, $3540, RIGHT

byte_1196B0:
    entrance DOOR, $8780, $2580, RIGHT, 0, $ACC0, $F540, RIGHT

byte_1196B8:
    entrance DOOR, $6F80, $2580, RIGHT, 0, $AC40, $F5C0, RIGHT

byte_1196C0:
    entrance STAIRS, $C40, $3580, LEFT, 0, $C0, $3940, RIGHT

byte_1196C8:
    entrance DOOR, $D80, $34C0, UP, 0, $F40, $3D80, LEFT

byte_1196D0:
    entrance DOOR, $E40, $34C0, UP, 0, $7740, $2580, LEFT

byte_1196D8:
    entrance STAIRS, $440, $5580, LEFT, 0, $B4C0, $FD40, RIGHT

byte_1196E0:
    entrance DOOR, $580, $54C0, UP, 0, $740, $2580, LEFT

byte_1196E8:
    entrance DOOR, $640, $54C0, UP, 0, $740, $2D80, LEFT

byte_1196F0:
    .byte $D1, $7E, $82, $25, $A8, $82, $A, $B, 8, $B5, 2
    .byte 0

byte_1196FC:
    .byte $51, $8D, $C2, $25, $E8, $81, $A, $B, 8, $58, 3
    .byte 0

byte_119708:
    .byte $91, 5, $C4, $3D, $88, $82, $A, $10, 8, $56, 3, $3A
    .byte 0, $10, $59, 1, 0

byte_119719:
    .byte $11, 6, $46, $45, $28, $82, $A, $B, 8, $57, 3, 0

byte_119725:
    .byte $11, $D, 4, $45, $A8, $81, $A, $B, 8, $A9, 2, 0

byte_119731:
    .byte $11, $E, $42, $45, $28, $82, $A, $B, 8, $B7, 2, 0

byte_11973D:
    .byte $11, $F, $C4, $45, $48, $82, $A, $B, 8, $B8, 2, 0

off_119749:
    .word byte_119781, byte_119789, byte_119791, byte_119799
    .word byte_1197A1, byte_1197A9, byte_1197B1, byte_1197B9
    .word byte_1197C1, byte_1197D0, byte_1197E4, byte_1197F6
    .word byte_119810, byte_119825, byte_119831, byte_11983D
    .word byte_119849, byte_119855, byte_119866, byte_119872
    .word byte_11987E, byte_11988A, byte_119896, byte_1198A2
    .word byte_1198AE, byte_1198BA, byte_1198C6, 0

byte_119781:
    entrance DOOR, $F80, $5580, RIGHT, 0, $C440, $F500, DOWN

byte_119789:
    entrance DOOR, $9B80, $F580, RIGHT, 0, $BD80, $EE00, DOWN

byte_119791:
    entrance DOOR, $B380, $F580, RIGHT, 0, $BE80, $EE00, DOWN

byte_119799:
    entrance DOOR, $B380, $ED80, RIGHT, 0, $BF80, $F500, DOWN

byte_1197A1:
    entrance DOOR, $BB80, $F580, RIGHT, 0, $C080, $F500, DOWN

byte_1197A9:
    entrance DOOR, $B380, $FD80, RIGHT, 0, $BF40, $EE00, DOWN

byte_1197B1:
    entrance DOOR, $BB80, $FD80, RIGHT, 0, $C180, $F500, DOWN

byte_1197B9:
    entrance DOOR, $C780, $F180, RIGHT, 0, $C540, $EE00, DOWN

byte_1197C1:
    .byte $10, $D, 4, $55, $88, $83, $A, $E, 8, $EF, 2, $3E
    .byte $F3, $97, 0

byte_1197D0:
    .byte $90, $C, $84, $55, $A8, $83, $A, $13, 8, $F0, 2
    .byte $3E, $F3, $97, $3A, 0, $13, $59, 1, 0

byte_1197E4:
    .byte $D0, $D, 4, $55, $C8, $83, $A, $E, 8, $D5, 2, $3E
    .byte $F3, $97, 0, $F4, 1, 0

byte_1197F6:
    .byte $91, $99, $C2, $F5, $C8, $83, $A, $19, $33, 3, $16
    .byte $52, $80, $12, 8, 5, 1, 0, 8, $95, 1, 0, 8, 4, 1
    .byte 0

byte_119810:
    .byte $D1, $99, 2, $F5, $A8, $83, $A, $14, 8, 6, 1, 9
    .byte $11, 8, 7, 1, 0, 8, 8, 1, 0

byte_119825:
    .byte $91, $9B, $C2, $F5, $C8, $83, $A, $B, 8, $D6, 2
    .byte 0

byte_119831:
    .byte $51, $B0, $C4, $F5, $C8, $83, $A, $B, 8, $FB, 2
    .byte 0

byte_11983D:
    .byte $D1, $B2, 4, $F5, $28, $84, $A, $B, 8, $FE, 2, 0

byte_119849:
    .byte $D1, $B2, $86, $F5, $A8, $83, $A, $B, 8, $FF, 2
    .byte 0

byte_119855:
    .byte $11, $B2, $C2, $ED, $E8, $83, $A, $10, 8, 9, 1, 9
    .byte $D, 8, $A, 1, 0

byte_119866:
    .byte $91, $B1, 6, $ED, $28, $84, $A, $B, 8, $B, 1, 0

byte_119872:
    .byte $D1, $B0, $C4, $ED, 8, $83, $A, $B, 8, 0, 3, 0

byte_11987E:
    .byte $91, $B9, $C6, $F5, $48, $84, $A, $B, 8, $C, 1, 0

byte_11988A:
    .byte $11, $B9, $C4, $F5, $28, $84, $A, $B, 8, 1, 3, 0

byte_119896:
    .byte $D1, $B9, 2, $F5, $C8, $83, $A, $B, 8, 2, 3, 0

byte_1198A2:
    .byte $91, $B1, 6, $FD, $48, $84, $A, $B, 8, 3, 3, 0

byte_1198AE:
    .byte $D1, $B1, $C2, $FD, $C8, $83, $A, $B, 8, 4, 3, 0

byte_1198BA:
    .byte $D1, $B2, $C4, $FD, 8, $83, $A, $B, 8, 5, 3, 0

byte_1198C6:
    .byte $D0, $C5, $42, $F1, 8, $84, $A, $3B, $12, $3C, $F
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
    entrance DOOR, $9B80, $ED80, RIGHT, 0, $C380, $F500, DOWN

byte_119941:
    entrance DOOR, $AB80, $F580, RIGHT, 0, $C380, $EE00, DOWN

byte_119949:
    entrance DOOR, $E780, $2180, RIGHT, 0, $C380, $EE00, DOWN

byte_119951:
    entrance DOOR, $A380, $FD80, RIGHT, 0, $C480, $EE00, DOWN

byte_119959:
    entrance DOOR, $9780, $F980, RIGHT, 6, $E940, $5E00, DOWN

byte_119961:
    .byte $58, $94, $86, $F9, $36, $16, $35, $16, $12, $8C
    .byte $11, $3D, $5B, $BF, $86, $F9, 0, $3D, $52, $BF, $86
    .byte $F9, 0

byte_119978:
    entrance DOOR, $BF80, $F980, RIGHT, $12, $9480, $F980, RIGHT

byte_119980:
    entrance DOOR, $BD80, $F8C0, UP, $12, $BF40, $F180, LEFT

byte_119988:
    .byte $98, $BF, $82, $F1, $36, $16, $35, $16, $12, $8C
    .byte $11, $3D, $9B, $BD, 4, $F9, 0, $3D, $92, $BD, 4
    .byte $F9, 0

byte_11999F:
    entrance DOOR, $D780, $2180, RIGHT, $30, $A880, $7200, DOWN

MysteriousTeacher:
    .byte $94, $A9, 4, $F5, $A8, $84, 6, $46, $A, $71, $12
    .byte $43, $14, 8, $2C, 1, 9, $6E, 1, $1C, 8, $26, 1, 9
    .byte $6E, 8, $28, 1, $10, 0, $27, 0, $23, $11, 0, $10
    .byte $43, $22, $6C, $A7, $1E, $A6, $68, $12, 0, $37, 8
    .byte $3E, 2, 8, $2B, 1, $11, 0, 0, $29, $5F, $26, $A7
    .byte $48, 8, $1C, 2, 8, $23, 2, $3D, $40, $E5, $82, $21
    .byte 0, $26, $A6, $57, 8, $1C, 2, 8, $23, 2, $5B, 9, 8
    .byte $75, 1, 0, $2D, $71, $5C, 6, 8, $2B, 1, 0, 8, $3D
    .byte 2, 8, $2B, 1, $11, 0, 0, 8, $2B, 1, $11, 0, 0, 8
    .byte $29, 1, 0

byte_119A0A:
    .byte $14, $AB, $82, $F5, $40, $80, 6, $24, $35, $23, $3E
    .byte $2E, $9A, 8, $72, 1, $3E, $35, $9A, $42, 3, $23
    .byte $10, $76, $10, $46, $11, $24, $3D, $40, $E5, $82
    .byte $21, $3C, 3, 0, $3E, 4, $36, 4, $F4, 1, 3, $F4, 1
    .byte $7A, 2, $F6, 1, 0

byte_119A3C:
    .byte $11, $A1, 2, $FD, $88, $84, $A, $25, 8, $EE, 2, $5C
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
    .byte $CA, 0, 0, $40, $23, $4F, $1E, $3E, $BA, $9A, 8
    .byte 6, 2, $3F, $F, $3E, $BD, $9A, 0, $11, $8F, $3E, $C0
    .byte $9A, 0, $72, 4, 3, $F6, 1, 0, $72, 3, 0

byte_119AC3:
    .byte $54, $BE, $44, $F9, $40, $80, 6, $8E, $A, $E, 8
    .byte $CA, 0, 0, $40, $47, $3E, $B, $9B, 8, $25, 1, $3E
    .byte $14, $9B, $19, 4, $31, 0, $2B, $2E, $2E, $26, 3
    .byte $25, 1, $19, $19, 3, $2D, $2B, 1, $19, $19, 3, $53
    .byte 0, $51, $FF, $50, $2F, $61, $FF, $60, $33, $5A, $21
    .byte 4, $B4, $5A, $1B, $42, 3, $62, $11, $8E, $3F, $E
    .byte $3E, $19, $9B, 0, $75, 1, $76, 3, $77, 1, $F4, 1
    .byte 3, $74, 1, $76, 1, 3, 0

byte_119B1A:
    .byte $DD, $BC, $40, $F9, $4C, $85, 6, $C8, $B, $E, 8
    .byte $DA, 3, 0, $A, $1E, $12, $8D, $17, 8, $CA, 0, 0
    .byte 8, $F7, 1, $10, $8D, $3F, $E, 0

byte_119B39:
    .byte $D1, $D5, $44, $21, $2C, $85, $A, $B, 8, $BD, 1
    .byte 0

byte_119B45:
    .byte $51, $D6, $C4, $21, $C, $85, $A, $B, 8, $BE, 1, 0

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
    entrance DOOR, $7980, $20C0, UP, 0, $9F40, $2580, LEFT

byte_119BD3:
    entrance DOOR, $7A40, $20C0, UP, 0, $BF40, $2580, LEFT

byte_119BDB:
    entrance STAIRS, $7880, $2140, LEFT, 0, $A480, $ED80, RIGHT

byte_119BE3:
    entrance STAIRS, $A440, $ED80, LEFT, 0, $78C0, $2140, RIGHT

byte_119BEB:
    entrance DOOR, $A580, $ECC0, UP, 0, $8340, $2180, LEFT

byte_119BF3:
    entrance DOOR, $A640, $ECC0, UP, 0, $A740, $2580, LEFT

byte_119BFB:
    entrance STAIRS, $A480, $ED40, LEFT, 0, $A080, $2180, RIGHT

byte_119C03:
    entrance STAIRS, $A040, $2180, LEFT, 0, $A4C0, $ED40, RIGHT

byte_119C0B:
    entrance DOOR, $A180, $20C0, UP, 0, $C740, $2580, LEFT

byte_119C13:
    entrance DOOR, $A240, $20C0, UP, 0, $8B40, $2180, LEFT

byte_119C1B:
    entrance DOOR, $9F80, $2580, RIGHT, 0, $7980, $2100, DOWN

byte_119C23:
    entrance DOOR, $BF80, $2580, RIGHT, 0, $7A40, $2100, DOWN

byte_119C2B:
    entrance DOOR, $8380, $2180, RIGHT, 0, $A580, $ED00, DOWN

byte_119C33:
    entrance DOOR, $A780, $2580, RIGHT, 0, $A640, $ED00, DOWN

byte_119C3B:
    entrance DOOR, $C780, $2580, RIGHT, 0, $A180, $2100, DOWN

byte_119C43:
    entrance DOOR, $8B80, $2180, RIGHT, 0, $A240, $2100, DOWN

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
    entrance STAIRS, $1AC0, $5BC0, UP, 0, $C500, $F540, LEFT

byte_119CDC:
    entrance HOLE, $F40, $7580, UP, 0, $2B40, $A200, DOWN

byte_119CE4:
    entrance HOLE, $1340, $A640, UP, $31, $F880, $8A40, DOWN

byte_119CEC:
    entrance DOOR, $1440, $72C0, UP, 8, $9E80, $44C0, DOWN

byte_119CF4:
    entrance DOOR, $2B40, $A1C0, UP, 0, $F40, $75C0, DOWN

byte_119CFC:
    .byte $A1, $1B, $C0, $5B, $70, $88, 5, $27, $B, $E, 8
    .byte $2D, 3, 0, $A, $2F, $12, $44, $29, 8, $1E, 1, 9
    .byte $25, 8, $1F, 1, $10, $28, $10, $27, $3F, 6, $3E
    .byte $2C, $9D, 0, 8, $CA, 0, 0, 8, $1D, 1, $10, $44, 0
    .byte 0, $50, 1, 0

byte_119D2F:
    .byte $94, $1B, $C4, $5B, $40, $80, 6, $28, $A, $20, 8
    .byte $20, 1, $27, $61, $2B, 8, $23, 1, $5A, $21, 4, $B4
    .byte $5A, $E, $3E, $5B, $9D, $10, $24, $11, $28, $40
    .byte $2B, $3E, $66, $9D, $5A, $1D, 4, $B4, $5A, $E, 0
    .byte $34, 2, $36, 3, $30, 1, $10, 1, $16, 1, 3, $F4, 1
    .byte 0

byte_119D69:
    .byte $51, $16, $80, $73, $C4, $87, $A, $B, 8, $77, 2
    .byte 0

byte_119D75:
    .byte $51, $18, $82, $A4, $C4, $87, $A, $14, 8, $78, 2
    .byte 9, $11, 8, $79, 2, 0, 8, $7A, 2, 0

byte_119D8A:
    .byte $91, $1B, $44, $A6, $C4, $87, $A, $14, 8, $7B, 2
    .byte 9, $11, 8, $7C, 2, 0, 8, $7D, 2, 0

byte_119D9F:
    .byte $92, $13, $42, $AC, $C4, $87, $A, $21, $12, $45
    .byte $F, 8, $DC, 0, 0, 8, $7E, 2, $27, 0, $1E, $25, $4E
    .byte $2D, $21, $5C, 6, $10, $45, 0, 8, $3E, 2, 0

byte_119DC1:
    .byte $51, $B, $46, $A5, $C4, $87, $A, $B, 8, $7F, 2, 0

byte_119DCD:
    .byte $11, 7, $40, $7A, $C4, $87, $A, $B, 8, $80, 2, 0

byte_119DD9:
    .byte $D1, $29, $46, $A2, $C4, $87, $A, $B, 8, $81, 2
    .byte 0

byte_119DE5:
    .byte $51, $B, $42, $7B, $C4, $87, $A, $14, 8, $82, 2
    .byte 9, $11, 8, $83, 2, 0, 8, $56, 0, 0

byte_119DFA:
    .byte $51, $1A, $C4, $A4, $C4, $87, $A, $B, 8, $85, 2
    .byte 0

byte_119E06:
    .byte $51, $1F, $44, $A6, $C4, $87, $A, $B, 8, $86, 2
    .byte 0

byte_119E12:
    .byte $51, $10, $42, $78, $C4, $87, $A, $14, 8, $87, 2
    .byte 9, $11, 8, $88, 2, 0, 8, $89, 2, 0

byte_119E27:
    .byte $51, $11, $40, $A2, $C4, $87, $A, $B, 8, $8A, 2
    .byte 0

byte_119E33:
    .byte $91, $10, $84, $A4, $C4, $87, $A, $B, 8, $8B, 2
    .byte 0

byte_119E3F:
    .byte $91, $1C, $86, $A8, $C4, $87, $A, $B, 8, $8C, 2
    .byte 0

byte_119E4B:
    .byte $51, $12, $82, $76, $C4, $87, $A, $B, 8, $8D, 2
    .byte 0

byte_119E57:
    .byte $D1, $1D, $44, $A4, $C4, $87, $A, $B, 8, $8E, 2
    .byte 0

byte_119E63:
    .byte $51, $12, 6, $AA, $C4, $87, $A, $B, 8, $8F, 2, 0

byte_119E6F:
    .byte $11, $17, $44, $A6, $C4, $87, $A, $B, 8, $90, 2
    .byte 0

byte_119E7B:
    .byte $51, $19, $42, $A5, $C4, $87, $A, $B, 8, $91, 2
    .byte 0

byte_119E87:
    .byte $91, $18, $40, $A5, $44, $88, $A, $B, 8, $92, 2
    .byte 0

byte_119E93:
    .byte $20, $1B, $40, $A2, $88, $81, $49, $1D

byte_119E9B:
    .byte $A0, $23, $80, $A8, $88, $81, $49, $1E

byte_119EA3:
    .byte $60, 4, $C0, $AC, $88, $81, $49, $1F
