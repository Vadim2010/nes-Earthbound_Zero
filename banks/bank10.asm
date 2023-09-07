                ;.segment BANK10
                * =  $8000
off_108000:     .WORD off_108034, off_108038, off_1083F6, off_108609, off_108831
                                        ; DATA XREF: sub_DE29+7↑r
                                        ; sub_DE29+C↑r
                .WORD off_108BA9, off_108D92, off_108EE7, off_109003, off_10920C ; 0x1A records
                .WORD byte_109361, off_109628, off_109674, off_109764
                .WORD off_1098C2, off_109950, off_1099B0, off_1099CA, off_109A10
                .WORD off_109A1C, off_109A54, off_109B10, off_109B12, off_109B2C
                .WORD off_109CF9, off_109E73
off_108034:     .WORD 0, 0              ; DATA XREF: BANK10:off_108000↑o
off_108038:     .WORD byte_10807C, byte_108084, byte_10808C, byte_108094
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_10809A, byte_1080A0, byte_1080D0, byte_1080ED
                .WORD byte_108158, byte_108184, byte_108190, byte_1081C3
                .WORD byte_1081DD, byte_1081E8, byte_1081F3, byte_1081FE
                .WORD byte_108209, byte_108214, byte_10821F, byte_10822A
                .WORD byte_10825C, byte_108265, byte_108270, byte_10827C
                .WORD byte_108288, byte_108290, byte_1082BF, byte_1082E8
                .WORD byte_108357, byte_10837F, byte_10838D, byte_1083E2
                .WORD byte_1083EA, 0
byte_10807C:    .BYTE $41, $2C, $C0, $4E, $52, $B, $86, $21
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108084:    .BYTE $41, $2D, $C0, $8D, $52, $D3, $86, $25
                                        ; DATA XREF: BANK10:off_108038↑o
byte_10808C:    .BYTE $81, $4D, $C0, $3E, $4C, $3A, 4, $F2
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108094:    .BYTE $69, $2C, $80, $4E, $32, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_10809A:    .BYTE $69, $2C, $80, $4E, $E8, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_1080A0:    .BYTE $11, $2B, 4, $4F, $EC, $85, $A, $13, $12, $33, $F
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 8, $5C, 3, 0, 8, $AF, 2, 0, $B, $2F, $12, $33, $1A
                .BYTE 1, $2F, 8, $CF, 3, $27, 0, $2C, $25, $55, $2D, $2F
                .BYTE 8, $9B, 3, $5C, 6, $10, $33, 0, 8, $9D, 3, 0
byte_1080D0:    .BYTE $93, $36, 4, $54, $A8, $85, $A, $1C, $12, $B, $F
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 8, $23, 0, 0, $33, 5, $19, $52, $80, $19, 8, $4A
                .BYTE 3, 0, 8, $28, 2, 0
byte_1080ED:    .BYTE $14, $36, 4, $54, $80, $80, 6, $2D, $A, $6A, $19
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 5, $31, 0, $35, $33, 1, $31, $52, $80, $31, 8, $BB
                .BYTE 3, $19, 5, $31, 0, $29, $19, 1, $2D, $2D, $5C, 6
                .BYTE $19, 5, $2E, $2D, 1, $18, 8, $BC, 3, 0, 8, $42, 2
                .BYTE 0, 8, $14, 2, 0, $33, 1, $67, $52, $80, $67, 8, $C4
                .BYTE 2, 9, $44, 8, $66, 0, 0, 8, $67, 0, 9, $63, $12
                .BYTE $62, $50, 8, $56, 0, 0, 8, $68, 0, $27, 0, $5F, $5C
                .BYTE 6, $25, $68, $2D, $5F, $10, $62, 0, 8, $49, 2, 0
                .BYTE 8, $69, 0, 0, 8, $59, 2, 0
byte_108158:    .BYTE $10, $17, $84, $4E, $C, $86, $A, $2B, $27, $5F, $18
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 8, $5F, 0, 9, $14, 8, $61, 0, 0, 8, $60, 0, 0, $12
                .BYTE $C, $28, 8, $62, 0, 9, $24, 8, $64, 0, 0, 8, $63
                .BYTE 0, 0, 8, $5E, 0, 0
byte_108184:    .BYTE $A3, $1B, 0, $4C, $E8, $85, $B, $B, 8, $2D, 3, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108190:    .BYTE $52, $1B, 4, $4B, $88, $85, $A, $14, $12, $C, $10
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 8, $41, 3, 1, $21, 8, $6C, 2, 0, $D, $5F, $32, $27
                .BYTE $5F, $B, $25, $5F, $2E, $32, 8, $3F, 3, $5C, 8, 4
                .BYTE $B4, $5A, $25, 4, $F0, $5A, 6, $10, $F6, $10, $C
                .BYTE 8, $40, 3, 0
byte_1081C3:    .BYTE $12, $17, $C2, $4C, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE $A, $19, $12, $C, $16, 8, $41, 3, $5C, 8, 3, 8, $CA
                .BYTE 0, 3
byte_1081DD:    .BYTE $D2, $18, 4, $4F, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_1081E8:    .BYTE $52, $1A, 6, $4E, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_1081F3:    .BYTE $D2, $1A, 4, $4F, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_1081FE:    .BYTE $D2, $1C, $42, $4E, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108209:    .BYTE $92, $1F, $86, $4C, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108214:    .BYTE $12, $1C, $84, $52, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_10821F:    .BYTE $92, $17, $82, $52, $88, $85, 2, $C3, $81, $B, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_10822A:    .BYTE $94, $4D, 4, $3F, $EC, $85, 5, $7E, $A, $E, 8, $F8
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 0, 0, $D, $59, $23, 8, $F9, 0, $27, $59, $23, $2E
                .BYTE $23, $3E, $4E, $82, $44, 7, $10, $7E, $3E, $5B, $82
                .BYTE 0, $7E, 2, $F6, 1, $7A, 4, $F0, 1, $7E, 2, $F4, 1
                .BYTE 3, 0
byte_10825C:    .BYTE $5B, $2F, 0, $8C, $35, 8, $5A, $D, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108265:    .BYTE $5B, $2F, $C0, $8B, $35, $A, $36, $A, $5A, 6, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108270:    .BYTE $19, $21, $80, $51, $94, $81, $B, $B, 8, $A3, 3
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 0
byte_10827C:    .BYTE $19, $2D, 0, $50, $94, $81, $B, $B, 8, $AE, 3, 0
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108288:    .BYTE $81, 3, $82, $49, $4B, $EF, 4, $D1
                                        ; DATA XREF: BANK10:off_108038↑o
byte_108290:    .BYTE $58, 0, $86, $49, $36, $2E, $35, $2E, $12, $C8, $1A
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE $3D, $52, $DF, $86, $21, 0, $12, $7D, $B, $3D, $12
                .BYTE $DF, $86, $21, 0, $19, 1, $52, $FF, $11, $19, 2
                .BYTE $52, $FF, $11, $19, 4, $52, $FF, $11, $43, 4, $11
                .BYTE $3F, $1C, 0
byte_1082BF:    .BYTE $9B, 0, $86, $49, $35, $28, $11, $7C, $36, $C, $10
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE $7C, $3A, 0, $28, $52, $FF, $26, $50, $26, $3A, 1
                .BYTE $28, $52, $FF, $26, $50, $26, $3A, 2, $28, $52, $FF
                .BYTE $26, $50, $26, 1, $28, $3F, $1B, 0
byte_1082E8:    .BYTE $50, 1, 4, $49, $C, $86, $40, $18, $12, $7C, $10
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE $3E, $3B, $83, 1, $13, $3E, $49, $83, 8, $B0, 0
                .BYTE 1, $1D, $A, $52, 8, $B1, 0, $19, 1, $53, 0, $51
                .BYTE $FF, $50, $21, $61, $FF, $60, $25, $3A, 1, $43, $53
                .BYTE 0, $51, $FF, $50, $2E, $61, $FF, $60, $32, $3A, 2
                .BYTE $43, $53, 0, $51, $FF, $50, $3B, $61, $FF, $60, $3F
                .BYTE $5C, 7, $40, $52, $12, $7C, $4F, $3E, $42, $83, 1
                .BYTE $52, $3E, $50, $83, 0, $74, 3, $76, 3, $F0, 1, 3
                .BYTE $72, 3, $70, 3, $F4, 1, 0, $74, 2, $76, 2, $F6, 1
                .BYTE 3, $72, 2, $70, 2, $F4, 1, 0
byte_108357:    .BYTE $D4, 0, $46, $49, $60, $80, 6, 1, $40, $1F, $3E
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE $77, $83, 8, $BF, 3, $3E, $7A, $83, $10, $7B, $43
                .BYTE 2, $1F, $10, $7D, $3D, $12, $DF, $86, $21, 0, $F4
                .BYTE 1, 3, $72, 6, $F4, 1, 0
byte_10837F:    .BYTE $54, 2, $44, $49, $60, $80, 6, $7B, $A, $D, 8, $BF
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 0, 0
byte_10838D:    .BYTE $D9, 2, 0, $49, $70, $86, $A, $54, 8, $39, 3, 8
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE $14, 0, $1B, $13, 8, $15, 0, 8, $C, 0, $3A, 0, $2B
                .BYTE $57, 8, $45, 3, $3A, 1, $2B, $57, 8, $45, 3, $3A
                .BYTE 2, $2B, $57, 8, $45, 3, 8, $1E, 0, $37, $37, 3, $4A
                .BYTE $4A, $56, 8, $1B, 0, $37, $38, 3, $43, $3C, 8, $1D
                .BYTE 0, 8, $13, 0, 0, 8, $1C, 0, 8, $13, 0, $F, 8, $21
                .BYTE 0, 8, $13, 0, 0, 8, $65, 3, 0
byte_1083E2:    .BYTE $81, $EB, $82, $41, $46, $2F, 4, $64
                                        ; DATA XREF: BANK10:off_108038↑o
byte_1083EA:    .BYTE $E2, $EA, $44, $41, $4C, $86, $A, $B, 8, $D0, 3
                                        ; DATA XREF: BANK10:off_108038↑o
                .BYTE 0
off_1083F6:     .WORD byte_10843C, byte_108444, byte_10844C, byte_108454
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_10845C, byte_108464, byte_10846C, byte_10847F
                .WORD byte_1084A9, byte_1084BC, byte_1084CF, byte_1084F0
                .WORD byte_1084FC, byte_108508, byte_108520, byte_108533
                .WORD byte_108546, byte_108559, byte_108565, byte_108571
                .WORD byte_108583, byte_108595, byte_1085A1, byte_1085AD
                .WORD byte_1085B9, byte_1085C1, byte_1085CD, byte_1085D9
                .WORD byte_1085E5, byte_1085EB, byte_1085F1, byte_1085F7
                .WORD byte_1085FD, byte_108603, 0
byte_10843C:    .BYTE $81, $30, 0, $6C, $4F, 3, $86, $45
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_108444:    .BYTE $C1, $2E, 0, $6C, $4F, $AF, $86, $25
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_10844C:    .BYTE $C1, $31, 0, $69, $52, $97, $86, $ED
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_108454:    .BYTE $C1, $2F, 0, $6F, $52, $C7, $86, $FD
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_10845C:    .BYTE $C1, $2D, 0, $6C, $4F, 3, $86, $55
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_108464:    .BYTE $41, $27, $C0, $7B, $52, 3, $86, $31
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_10846C:    .BYTE $11, $32, $C2, $64, $28, $82, $A, $12, $12, $B, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $25, 0, 0, 8, $24, 0, 0
byte_10847F:    .BYTE $90, $35, $44, $6A, $28, $82, $A, $29, $12, $B, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $2C, 0, 0, 8, $26, 0, 9, $1A, 8, $27, 0, $3B
                .BYTE $26, 0, 8, $28, 0, 9, $23, 8, $29, 0, 0, 8, $2A
                .BYTE 0, 8, $2B, 0, 0
byte_1084A9:    .BYTE $11, $34, $84, $66, $88, $82, $A, $12, $12, $B, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $30, 0, 0, 8, $2F, 0, 0
byte_1084BC:    .BYTE $51, $35, $82, $69, $A8, $81, $A, $12, $12, $B, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $25, 0, 0, 8, $31, 0, 0
byte_1084CF:    .BYTE $D1, $31, $C6, $6C, $A8, $82, $A, $20, $12, $C, $D
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 1, $1D, $27, $5F, $1D, 8, $32, 0, 9, $19, 8, $33
                .BYTE 0, 0, 8, $34, 0, 0, 8, $35, 0, 0
byte_1084F0:    .BYTE $11, $2D, $82, $6D, $C8, $82, $A, $B, 8, $36, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 0
byte_1084FC:    .BYTE $91, $2C, 4, $71, $E8, $81, $A, $B, 8, $37, 0, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_108508:    .BYTE $51, $34, $84, $73, $A8, $81, $A, $17, $12, $B, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $25, 0, 0, 8, $38, 0, 9, $14, 8, $39, 0, 0
byte_108520:    .BYTE $91, $2F, $82, $69, $48, $82, $A, $12, $12, $D, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $3B, 0, 0, 8, $3A, 0, 0
byte_108533:    .BYTE $91, $2D, $82, $62, $E8, $81, $A, $12, $12, $B, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $2C, 0, 0, 8, $3D, 0, 0
byte_108546:    .BYTE $11, $34, $C2, $6D, $68, $82, $A, $12, $12, $D, $F
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 8, $25, 0, 0, 8, $3E, 0, 0
byte_108559:    .BYTE $11, $34, $44, $6E, $48, $82, $A, $B, 8, $3F, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 0
byte_108565:    .BYTE $91, $32, 4, $6C, $88, $82, $A, $B, 8, $5C, 0, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_108571:    .BYTE $D5, $32, $C6, $74, $28, $82, 5, $14, $A, $11, 8
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE $2D, 0, $44, $10, $10, $14, 0
byte_108583:    .BYTE $55, $35, $44, $75, $28, $82, 5, $15, $A, $11, 8
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE $2E, 0, $44, $10, $10, $15, 0
byte_108595:    .BYTE $51, $2E, 6, $6A, $68, $82, $A, $B, 8, $C5, 2, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085A1:    .BYTE $11, $2F, 2, $6D, $28, $82, $A, $B, 8, $C6, 2, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085AD:    .BYTE $D1, $2E, $84, $6F, 8, $82, $A, $B, 8, $C7, 2, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085B9:    .BYTE $41, $2F, $C0, $63, $52, $EB, $86, $41
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085C1:    .BYTE $99, $2A, $C0, $5E, $94, $81, $B, $B, 8, $A4, 3
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 0
byte_1085CD:    .BYTE $99, $2E, $40, $6C, $94, $81, $B, $B, 8, $A5, 3
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 0
byte_1085D9:    .BYTE $99, $30, $40, $5F, $94, $81, $B, $B, 8, $16, 2
                                        ; DATA XREF: BANK10:off_1083F6↑o
                .BYTE 0
byte_1085E5:    .BYTE $E9, $2D, $C0, $6D, $E9, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085EB:    .BYTE $69, $31, $C0, $6D, $E9, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085F1:    .BYTE $E9, $34, $C0, $6D, $E9, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085F7:    .BYTE $E9, $2D, $40, $6A, $E9, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_1085FD:    .BYTE $69, $31, $40, $6A, $E9, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
byte_108603:    .BYTE $E9, $34, $40, $6A, $E9, 0
                                        ; DATA XREF: BANK10:off_1083F6↑o
off_108609:     .WORD byte_108659, byte_108661, byte_108669, byte_108671
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_108679, byte_108681, byte_108689, byte_10869E
                .WORD byte_1086AA, byte_1086B6, byte_1086C2, byte_1086CE
                .WORD byte_1086E1, byte_1086ED, byte_1086F9, byte_108705
                .WORD byte_108711, byte_10874E, byte_10875A, byte_10876D
                .WORD byte_108779, byte_108785, byte_108798, byte_1087A4
                .WORD byte_1087B9, byte_1087C5, byte_1087D1, byte_1087DD
                .WORD byte_1087E9, byte_1087F5, byte_1087FB, byte_108801
                .WORD byte_108807, byte_10880D, byte_108813, byte_108819
                .WORD byte_10881F, byte_108825, byte_10882B, 0
byte_108659:    .BYTE $81, $58, 0, $73, $4F, 3, $86, $2D
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108661:    .BYTE $81, $5B, 0, $70, $52, 3, $86, $51
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108669:    .BYTE $C1, $5A, 0, $73, $52, $B7, $86, $F5
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108671:    .BYTE $C1, $58, 0, $70, $4F, 3, $86, $3D
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108679:    .BYTE $41, $5A, $40, $79, $4E, $C1, $44, $ED
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108681:    .BYTE $41, $50, $80, $53, $4F, $A4, $44, $F1
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108689:    .BYTE $51, $53, $42, $67, $28, $82, $A, $14, 8, $EC, 0
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 9, $11, 8, $ED, 0, 0, 8, $33, 0, 0
byte_10869E:    .BYTE $D1, $57, $46, $6F, $C8, $81, $A, $B, 8, $F6, 0
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1086AA:    .BYTE $11, $55, $86, $74, $A8, $81, $A, $B, 8, $F7, 0
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1086B6:    .BYTE $51, $56, $84, $77, $68, $82, $A, $B, 8, $FB, 0
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1086C2:    .BYTE $D1, $56, $82, $77, $E8, $81, $A, $B, 8, $FD, 0
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1086CE:    .BYTE $91, $5A, $84, $70, $88, $82, $A, $12, $12, $71
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE $F, 8, $BB, 0, 0, 8, $AE, 2, 0
byte_1086E1:    .BYTE $11, $5C, 4, $74, $48, $82, $A, $B, 8, $C8, 2, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_1086ED:    .BYTE $11, $5D, $82, $75, $68, $82, $A, $B, 8, $C9, 2
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1086F9:    .BYTE $91, $59, $86, $73, $A8, $82, $A, $B, 8, $CA, 2
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_108705:    .BYTE $D1, $5C, $86, $70, $C8, $82, $A, $B, 8, $CB, 2
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_108711:    .BYTE $11, $5A, $84, $71, $28, $82, $A, $3C, $12, $6F
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE $F, 8, $7C, 3, 0, 8, $77, 3, 9, $39, 8, $79, 3, 9
                .BYTE $19, 8, $7A, 3, 9, $1E, 8, $7B, 3, $27, 0, $35, $25
                .BYTE 2, $2D, $3C, $15, 4, $14, 4, $16, 4, $32, $2A, $5C
                .BYTE 6, $10, $6F, 0, 8, $60, 2, 0, 8, $CC, 2, 0
byte_10874E:    .BYTE $11, $54, 0, $6A, $68, $82, $A, $B, 8, $CD, 2, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_10875A:    .BYTE $D1, $55, $80, $6A, $28, $82, $A, $12, $12, $71
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE $F, 8, $BB, 0, 0, 8, $CE, 2, 0
byte_10876D:    .BYTE $11, $58, $44, $6B, $E8, $81, $A, $B, 8, $CF, 2
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_108779:    .BYTE $11, $57, $82, $70, $A8, $81, $A, $B, 8, $D0, 2
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_108785:    .BYTE $91, $58, $84, $73, $28, $82, $A, $12, $12, $71
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE $F, 8, $BB, 0, 0, 8, $D1, 2, 0
byte_108798:    .BYTE $11, $54, 6, $71, $48, $82, $A, $B, 8, $D2, 2, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_1087A4:    .BYTE $D1, $54, $84, $6D, $68, $82, $A, $14, 8, $D3, 2
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 9, $11, 8, $50, 3, 0, 8, $33, 0, 0
byte_1087B9:    .BYTE $D1, $53, 6, $70, 8, $82, $A, $B, 8, $D4, 2, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_1087C5:    .BYTE $59, $5B, $40, $70, $94, $81, $B, $B, 8, $EE, 0
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1087D1:    .BYTE $99, $52, $40, $67, $94, $81, $B, $B, 8, $AF, 3
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1087DD:    .BYTE $19, $5D, $40, $73, $94, $81, $B, $B, 8, $B5, 3
                                        ; DATA XREF: BANK10:off_108609↑o
                .BYTE 0
byte_1087E9:    .BYTE $59, $5A, 0, $74, $94, $81, $B, $B, 8, $AD, 3, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_1087F5:    .BYTE $E9, $55, $C0, $72, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_1087FB:    .BYTE $69, $59, $C0, $72, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108801:    .BYTE $E9, $5C, $C0, $72, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108807:    .BYTE $E9, $55, $40, $6F, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_10880D:    .BYTE $E9, $5C, $40, $6F, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108813:    .BYTE $E9, $55, $C0, $6B, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108819:    .BYTE $E9, $5C, $C0, $6B, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_10881F:    .BYTE $E9, $55, $40, $68, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_108825:    .BYTE $69, $59, $40, $68, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
byte_10882B:    .BYTE $E9, $5C, $40, $68, $EA, 0
                                        ; DATA XREF: BANK10:off_108609↑o
off_108831:     .WORD byte_10886B, byte_108873, byte_10887B, byte_108883
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_10888B, byte_108893, byte_10889B, byte_1088AE
                .WORD byte_1088BA, byte_1088C6, byte_1088D2, byte_1088DE
                .WORD byte_1088EA, byte_1088F6, byte_108902, byte_10890E
                .WORD byte_10891A, byte_10892D, byte_10895B, byte_10896E
                .WORD byte_108984, byte_1089B9, byte_108A17, byte_108AB9
                .WORD byte_108AF7, byte_108B40, byte_108B4E, byte_108B86
                .WORD 0
byte_10886B:    .BYTE $41, $66, $C0, $CD, $52, $B, $86, $29
                                        ; DATA XREF: BANK10:off_108831↑o
byte_108873:    .BYTE 1, $58, $40, $B2, $52, $9B, $86, $21
                                        ; DATA XREF: BANK10:off_108831↑o
byte_10887B:    .BYTE $41, $80, $80, $CF, $4F, $98, $44, $F1
                                        ; DATA XREF: BANK10:off_108831↑o
byte_108883:    .BYTE 1, $AF, 2, $F2, $C6, $C8, $44, $4B
                                        ; DATA XREF: BANK10:off_108831↑o
byte_10888B:    .BYTE $41, $AA, $86, $F2, $40, $BB, $86, $F1
                                        ; DATA XREF: BANK10:off_108831↑o
byte_108893:    .BYTE $81, $C3, $82, $F1, $86, $C2, $44, $48
                                        ; DATA XREF: BANK10:off_108831↑o
byte_10889B:    .BYTE $91, $81, 4, $D1, $A8, $81, $A, $12, $27, $62, $F
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 8, $37, 1, 0, 8, $3A, 1, 0
byte_1088AE:    .BYTE $51, $82, $C2, $D1, $28, $82, $A, $B, 8, $57, 1
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 0
byte_1088BA:    .BYTE $51, $7F, $84, $D1, $48, $82, $A, $B, 8, $D7, 2
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 0
byte_1088C6:    .BYTE $11, $69, 6, $DA, $A8, $82, $A, $B, 8, $4F, 1, 0
                                        ; DATA XREF: BANK10:off_108831↑o
byte_1088D2:    .BYTE $11, $6A, $82, $DC, $E8, $81, $A, $B, 8, $D8, 2
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 0
byte_1088DE:    .BYTE $11, $6D, $46, $DD, $88, $82, $A, $B, 8, $D9, 2
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 0
byte_1088EA:    .BYTE $11, $6D, 2, $DA, $48, $82, $A, $B, 8, $DA, 2, 0
                                        ; DATA XREF: BANK10:off_108831↑o
byte_1088F6:    .BYTE $50, $6E, $C0, $DE, $68, $82, $A, $B, 8, $DB, 2
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 0
byte_108902:    .BYTE $51, $68, $84, $E5, $28, $82, $A, $B, 8, $DC, 2
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 0
byte_10890E:    .BYTE $91, $6F, $84, $E5, 8, $82, $A, $B, 8, $DD, 2, 0
                                        ; DATA XREF: BANK10:off_108831↑o
byte_10891A:    .BYTE $51, $AB, $C2, $F2, $C8, $82, $A, $12, $12, $3B
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $F, 8, $9F, 2, 0, 8, $D7, 1, 0
byte_10892D:    .BYTE $53, $AD, $C6, $F2, $A8, $82, $A, $24, $12, $34
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $F, 8, $DB, 1, 0, 8, $D9, 1, 9, $21, $10, $34, $3E
                .BYTE $52, $89, 8, $56, 0, $10, $2B, $3F, $17, 0, 8, $DA
                .BYTE 1, 0, $30, 1, $36, 2, $76, 1, $F2, 1, 0
byte_10895B:    .BYTE $13, $AC, $C0, $F2, $48, $82, $A, $12, $33, 4, $F
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 8, $E2, 1, 0, 8, $E1, 1, 0
byte_10896E:    .BYTE $93, $AC, $46, $F2, $68, $82, $A, $15, $33, 2, $12
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $52, $80, $12, 8, $E7, 1, 0, 8, $E8, 1, 0
byte_108984:    .BYTE $10, $AE, 6, $F2, $E8, $82, $A, $19, $4F, $2C, $36
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $E, 1, $15, 8, $34, 2, $3E, $B4, $89, 0, 8, $1F
                .BYTE 3, 0, $D, $5A, $2F, $4F, $2C, 8, $B6, 2, $27, $5A
                .BYTE $2F, $25, $5A, $2E, $2F, $3E, $B4, $89, 0, 8, $34
                .BYTE 2, 0, $F0, 1, $7C, 1, 0
byte_1089B9:    .BYTE $D0, $AB, 2, $F2, $A8, $81, $A, $4D, 8, $E3, 1, 9
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $4A, $3E, 7, $8A, 8, $E4, 1, $3E, $10, $8A, $12
                .BYTE $35, $22, $3A, 2, $46, $64, 4, $78, $5A, $22, 0
                .BYTE $3A, 0, $46, $52, $40, $42, $52, $80, $46, $3A, 1
                .BYTE $46, $52, $80, $46, $3A, 2, $46, $52, $80, $46, $3A
                .BYTE 1, $46, $64, 4, $78, $5A, $22, $3F, $16, 0, 8, $DB
                .BYTE 0, 0, 8, $2F, 2, 0, 8, $E5, 1, 0, $32, 2, $30, 1
                .BYTE $32, 4, $F6, 1, 3, $74, 1, $76, 6, $F2, 1, 0
byte_108A17:    .BYTE $D4, $AE, 6, $F2, $60, $80, 6, 1, $40, $86, $3E
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $9E, $8A, 8, $E9, 1, 9, $17, 8, $EA, 1, 1, $1A, 8
                .BYTE $EB, 1, 8, $5A, 2, $19, 1, $51, $FF, $50, $1F, $44
                .BYTE $9D, $3E, $B6, $8A, 1, $62, 8, $F0, 1, $3E, $A5
                .BYTE $8A, $3A, 2, $39, $1A, 3, $39, $3E, $AA, $8A, $3E
                .BYTE $AD, $8A, 8, $F5, 1, $5A, $21, 4, $B4, $5A, $22
                .BYTE $3E, $B0, $8A, $42, 4, $86, $43, 3, $86, $10, $35
                .BYTE $19, 3, $31, 0, $86, $2E, $86, $26, 3, $5C, 1, $50
                .BYTE $19, 4, $2D, $86, 1, $50, 8, $EC, 1, 9, $69, 1, $2A
                .BYTE 8, $5D, 2, 9, $70, 1, $2A, 8, $F3, 1, 9, $77, 1
                .BYTE $2A, 8, $F4, 1, 9, $7E, 1, $2A, $3D, $46, $2C, 4
                .BYTE $4F, $3E, $B5, $8A, 0, $76, 4, $70, 1, $76, 2, 3
                .BYTE $70, 1, $76, 2, 3, $76, 1, 3, $F4, 1, 3, $74, 1
                .BYTE $F2, 1, 0, 0, $F6, 1, 3
byte_108AB9:    .BYTE $D4, $AE, 4, $F2, $C8, $81, 6, $2B, $40, $13, $3E
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $CD, $8A, 8, $9C, 2, $3E, $E6, $8A, 0, $76, 8, $F2
                .BYTE 1, $F4, 1, $F6, 1, $76, 3, $74, 2, $72, 1, $74, 1
                .BYTE $72, 2, $70, 1, $F6, 1, $F2, 1, 3, $34, 1, $32, 2
                .BYTE $30, 2, $32, 1, $30, 1, $32, 5, $12, 1, $14, 1, 3
byte_108AF7:    .BYTE $14, $C3, $82, $F1, $C8, $81, 6, $2B, $35, $37, 8
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $C2, 2, $3E, $2F, $8B, 8, $C3, 2, 1, $18, 8, $DE
                .BYTE 1, $55, 8, $DC, 1, 9, $15, 8, $DD, 1, $3A, 0, $30
                .BYTE $62, $30, $10, $63, 8, $30, 1, $11, $2B, $10, $2E
                .BYTE 0, 8, $1B, 1, $11, $2B, $10, $2E, 0, $36, 6, $30
                .BYTE 1, $32, 1, $F6, 1, $72, 2, $70, 1, $76, 3, $F4, 1
                .BYTE 0
byte_108B40:    .BYTE $94, $C1, 4, $F1, $C8, $81, 6, $2E, $A, $D, 8, $C8
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE 1, 0
byte_108B4E:    .BYTE $51, $C0, $C6, $F1, $C8, $81, $A, $37, $12, $63
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $34, $63, $34, 8, $DF, 1, 9, $30, $29, $2C, $27
                .BYTE 0, $24, 8, $D2, 1, $63, $34, $2D, $37, $1F, $5C
                .BYTE 6, $11, $63, 0, 8, $C7, 1, $63, $34, $28, $37, 0
                .BYTE 8, $86, 1, 0, 8, $D3, 1, 0, 8, $2F, 3, 0
byte_108B86:    .BYTE $19, $56, $80, $B2, $94, $81, $B, $22, 8, $1D, 2
                                        ; DATA XREF: BANK10:off_108831↑o
                .BYTE $12, $74, $10, 1, $22, 8, $1E, 2, $27, 0, $1F, $25
                .BYTE $63, $2D, $22, $5C, 6, $10, $74, 0, 8, $9D, 3, 0
off_108BA9:     .WORD byte_108BEB, byte_108BF3, byte_108BFB, byte_108C03
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_108C0B, byte_108C13, byte_108C26, byte_108C4F
                .WORD byte_108C5B, byte_108C67, byte_108C89, byte_108C95
                .WORD byte_108CA6, byte_108CCB, byte_108CD7, byte_108CE3
                .WORD byte_108CEF, byte_108CFB, byte_108D07, byte_108D13
                .WORD byte_108D28, byte_108D3D, byte_108D56, byte_108D5C
                .WORD byte_108D62, byte_108D68, byte_108D6E, byte_108D74
                .WORD byte_108D7A, byte_108D80, byte_108D86, byte_108D8C
                .WORD 0
byte_108BEB:    .BYTE $81, $6E, 0, $EF, $4F, $73, $86, $25
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108BF3:    .BYTE $81, $79, 0, $EB, $52, $B7, $86, $FD
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108BFB:    .BYTE $C1, $74, 0, $EF, $4F, $93, $86, $25
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108C03:    .BYTE $C1, $69, 0, $EF, $52, 3, $86, $41
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108C0B:    .BYTE $81, $BB, $82, $F1, $80, $AA, $82, $F2
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108C13:    .BYTE $91, $B9, $82, $F1, $E8, $81, $A, $12, $12, $3B
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE $F, 8, $A0, 2, 0, 8, $F9, 1, 0
byte_108C26:    .BYTE $52, $6C, $42, $EF, $A8, $81, $A, $28, $12, $36
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE $D, 1, $25, 8, $40, 1, 9, $17, 8, $41, 1, 1, $1A
                .BYTE 8, $42, 1, $5C, 6, $1D, $A7, 1, $28, $22, $1F, $10
                .BYTE $36, 0, 8, $43, 1, 0
byte_108C4F:    .BYTE $11, $6C, $46, $F4, $E8, $81, $A, $B, 8, $47, 1
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108C5B:    .BYTE $91, $70, $84, $F0, $28, $82, $A, $B, 8, $48, 1
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108C67:    .BYTE $D1, $71, 0, $EE, $68, $82, $A, $21, 8, $49, 1, 9
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE $1E, 8, $4A, 1, 9, $1A, $5A, $22, 8, $76, 3, $5A
                .BYTE 6, 0, 8, $4C, 1, 0, 8, $4B, 1, 0
byte_108C89:    .BYTE $11, $7A, $C2, $EB, $C8, $82, $A, $B, 8, $5D, 1
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108C95:    .BYTE $50, $6A, $C4, $F2, $C8, $82, $A, $10, 8, $56, 1
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE $3A, 0, $10, $59, 1, 0
byte_108CA6:    .BYTE $91, $75, 6, $F3, 8, $82, $A, $24, 8, $51, 1, 9
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE $21, 8, $52, 1, 8, $54, 1, $20, $21, $2C, $10, 8
                .BYTE $55, 1, $5C, 6, $25, $1B, $2D, $21, 0, 8, $53, 1
                .BYTE 0
byte_108CCB:    .BYTE $91, $6F, $84, $EF, $48, $82, $A, $B, 8, $DE, 2
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108CD7:    .BYTE $11, $77, $C6, $EE, $68, $82, $A, $B, 8, $DF, 2
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108CE3:    .BYTE $11, $78, $82, $EC, $28, $82, $A, $B, 8, $E0, 2
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108CEF:    .BYTE $D1, $6F, $80, $EC, $A8, $82, $A, $B, 8, $E1, 2
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108CFB:    .BYTE $91, $6E, $84, $F2, $88, $82, $A, $B, 8, $E2, 2
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108D07:    .BYTE $91, $70, $82, $EC, $28, $82, $A, $B, 8, $E3, 2
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0
byte_108D13:    .BYTE $91, $75, $86, $EF, $C8, $81, $A, $14, 8, $3D, 1
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 9, $11, 8, $3E, 1, 0, 8, $3F, 1, 0
byte_108D28:    .BYTE $D1, $70, $C2, $F2, $C8, $81, $A, $14, 8, $44, 1
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 9, $11, 8, $45, 1, 0, 8, $46, 1, 0
byte_108D3D:    .BYTE $50, $76, $44, $F1, $A8, $82, $B, $C, 8, $59, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
                .BYTE 0, $A, $12, 8, $CA, 0, 0, $C, 1, $18, 8, $4E, 1
                .BYTE 0
byte_108D56:    .BYTE $69, $6B, 0, $F1, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D5C:    .BYTE $E9, $6E, 0, $F1, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D62:    .BYTE $69, $72, 0, $F1, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D68:    .BYTE $E9, $75, 0, $F0, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D6E:    .BYTE $69, $79, 0, $F0, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D74:    .BYTE $69, $6B, $80, $ED, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D7A:    .BYTE $E9, $6E, $80, $ED, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D80:    .BYTE $69, $72, $80, $ED, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D86:    .BYTE $E9, $75, $80, $EC, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
byte_108D8C:    .BYTE $69, $79, $80, $EC, $EB, 0
                                        ; DATA XREF: BANK10:off_108BA9↑o
off_108D92:     .WORD byte_108DB4, byte_108DD8, byte_108DED, byte_108DF9
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_108E05, byte_108E1A, byte_108E53, byte_108E5F
                .WORD byte_108E91, byte_108E9F, byte_108EAB, byte_108EB7
                .WORD byte_108EC3, byte_108ECF, byte_108EDB, byte_108EE1
                .WORD 0
byte_108DB4:    .BYTE $18, $BE, $40, $C9, $36, $23, $35, $C, 8, $34, 3
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0, $D, $57, $18, 8, $36, 3, $3D, $4D, $B7, $86, $21
                .BYTE 0, $D, $56, $1D, 1, $20, $D, $55, $23, 8, $35, 3
                .BYTE 0
byte_108DD8:    .BYTE $D1, $B2, 2, $D6, $68, $83, $A, $14, 8, $5E, 1, 9
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE $11, 8, $5F, 1, 0, 8, $60, 1, 0
byte_108DED:    .BYTE $D1, $B6, $C4, $D9, $48, $83, $A, $B, 8, $68, 1
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0
byte_108DF9:    .BYTE $D1, $B7, $C6, $DB, $E8, $83, $A, $B, 8, $69, 1
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0
byte_108E05:    .BYTE $91, $BD, 4, $D8, 8, $83, $A, $14, 8, $6E, 1, 9
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE $11, 8, $6F, 1, 0, 8, $70, 1, 0
byte_108E1A:    .BYTE $D5, $B9, $42, $DC, $28, $83, 5, $31, $A, $38, $1D
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE $E8, 3, 8, $6A, 1, 9, $33, $29, $2F, 8, $6D, 1, $14
                .BYTE 3, $16, 3, 3, $23, 8, $5B, 3, $10, $31, 0, $16, 3
                .BYTE 2, $2B, 8, $5A, 3, 0, 8, $99, 2, 0, 8, $B0, 2, 0
                .BYTE 8, $6C, 1, $10, $31, 0
byte_108E53:    .BYTE $10, $BE, $44, $DC, $68, $83, $A, $B, 8, $71, 1
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0
byte_108E5F:    .BYTE $51, $BE, $42, $DD, $28, $83, $A, $31, $12, $F4
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE $18, $12, $84, $12, 8, $78, 1, 0, 8, $79, 1, $10
                .BYTE $84, 0, $12, $38, $1F, 8, $58, 2, 0, 8, $76, 1, $27
                .BYTE 0, $2E, $25, $57, $2D, $31, $5C, 6, $10, $38, 0
                .BYTE 8, $42, 2, 0
byte_108E91:    .BYTE $15, $BE, $44, $DD, 8, $83, 6, $F4, $A, $D, 8, $77
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 1, 0
byte_108E9F:    .BYTE $11, $B5, $C2, $DD, $C8, $83, $A, $B, 8, $E5, 2
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0
byte_108EAB:    .BYTE $D1, $B8, $46, $E0, $28, $83, $A, $B, 8, $E6, 2
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0
byte_108EB7:    .BYTE $D1, $B6, $84, $DE, $48, $84, $A, $B, 8, $E7, 2
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0
byte_108EC3:    .BYTE $51, $B5, $82, $E0, $48, $83, $A, $B, 8, $E8, 2
                                        ; DATA XREF: BANK10:off_108D92↑o
                .BYTE 0
byte_108ECF:    .BYTE $51, $B6, 6, $D6, $48, $83, $A, $B, 8, $E4, 2, 0
                                        ; DATA XREF: BANK10:off_108D92↑o
byte_108EDB:    .BYTE $E9, $B4, $40, $D6, $EC, 0
                                        ; DATA XREF: BANK10:off_108D92↑o
byte_108EE1:    .BYTE $69, $B5, 0, $E0, $EC, 0
                                        ; DATA XREF: BANK10:off_108D92↑o
off_108EE7:     .WORD byte_108F11, byte_108F19, byte_108F21, byte_108F29
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_108F31, byte_108F39, byte_108F4A, byte_108F56
                .WORD byte_108F6C, byte_108F78, byte_108F84, byte_108F90
                .WORD byte_108F9C, byte_108FAD, byte_108FBE, byte_108FCA
                .WORD byte_108FD6, byte_108FEB, byte_108FF7, byte_108FFD
                .WORD 0
byte_108F11:    .BYTE $81, $D7, $80, $F8, $40, $B4, $44, $F1
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108F19:    .BYTE $41, $E0, $C0, $F3, $4A, $B, $86, $41
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108F21:    .BYTE $41, $F4, $C0, $F9, $40, $CB, $86, $25
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108F29:    .BYTE $41, $E2, $C0, $F8, $40, $A3, $86, $25
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108F31:    .BYTE $41, $E3, $C0, $F8, $40, $EB, $86, $21
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108F39:    .BYTE $11, $E0, 6, $F6, $A8, $81, $A, $10, 8, $80, 1, $3A
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 0, $10, $59, 1, 0
byte_108F4A:    .BYTE $11, $E7, $86, $F8, $48, $82, $A, $B, 8, $82, 1
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 0
byte_108F56:    .BYTE $D1, $E7, $C2, $F9, $28, $82, $A, $15, $33, 2, $12
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE $52, $80, $12, 8, $84, 1, 0, 8, $83, 1, 0
byte_108F6C:    .BYTE $11, $E3, $C2, $F4, $48, $82, $A, $B, 8, $87, 1
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 0
byte_108F78:    .BYTE $92, $E1, $86, $F8, $A8, $82, $A, $B, 8, $9D, 1
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 0
byte_108F84:    .BYTE $11, $D8, $C4, $F8, $E8, $81, $A, $B, 8, $E9, 2
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 0
byte_108F90:    .BYTE $D1, $E8, $C2, $FA, $88, $82, $A, $B, 8, $EA, 2
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 0
byte_108F9C:    .BYTE $D1, $E2, $84, $F7, $28, $82, $A, $10, 8, $EB, 2
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE $3A, 0, $10, $59, 1, 0
byte_108FAD:    .BYTE $D1, $E4, $82, $F7, $A8, $81, $A, $10, 8, $EC, 2
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE $3A, 0, $10, $59, 1, 0
byte_108FBE:    .BYTE $91, $E6, 6, $F5, $68, $82, $A, $B, 8, $ED, 2, 0
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108FCA:    .BYTE $D1, $E5, 6, $FA, $28, $82, $A, $B, 8, $7B, 1, 0
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108FD6:    .BYTE $91, $E3, $44, $F9, $A8, $81, $A, $14, 8, $7D, 1
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 9, $11, 8, $7E, 1, 0, 8, $7F, 1, 0
byte_108FEB:    .BYTE $19, $EA, $C0, $F9, $94, $81, $B, $B, 8, $AB, 3
                                        ; DATA XREF: BANK10:off_108EE7↑o
                .BYTE 0
byte_108FF7:    .BYTE $A9, $E3, $80, $FA, $ED, 0
                                        ; DATA XREF: BANK10:off_108EE7↑o
byte_108FFD:    .BYTE $A9, $E6, $C0, $FB, $ED, 0
                                        ; DATA XREF: BANK10:off_108EE7↑o
off_109003:     .WORD byte_109017, byte_1090EE, byte_109104, byte_1091B9
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_1091C5, byte_1091D6, byte_1091F1, byte_1091F9
                .WORD byte_109201, 0
byte_109017:    .BYTE $D4, $7C, $44, $48, $D4, $8A, 5, $17, $D, $64, $34
                                        ; DATA XREF: BANK10:off_109003↑o
                .BYTE $15, 5, $27, $64, $21, $1F, $25, $64, $2E, $21, $14
                .BYTE 5, $16, 5, $A, $D, 8, $AA, 1, $10, $88, 0, $16, 5
                .BYTE 1, $30, $27, 0, $30, $25, $64, $2D, $30, $13, 5
                .BYTE 1, $21, 8, $51, 2, 0, $A, $C7, $12, $88, $3D, 8
                .BYTE $CE, 3, 0, $12, $3A, $C2, 8, $A7, 1, 9, $BE, 8, $4D
                .BYTE 2, $22, $9C, $9D, $9E, 0, $BE, $11, $89, $11, $8A
                .BYTE $11, $8B, $26, $9C, $5B, $10, $89, 1, $67, $26, $9D
                .BYTE $62, $10, $8A, 1, $67, $26, $9E, $67, $10, $8B, $15
                .BYTE 0, $14, 0, $3A, 1, $7B, $52, $80, $73, $14, 0, $3A
                .BYTE 2, $7B, $52, $80, $7B, $14, 0, $45, 8, $A8, 1, $29
                .BYTE $BA, $15, 6, $16, 0, 1, $C8, $27, 0, $94, $25, $64
                .BYTE $2D, $94, $14, 6, $13, 0, 1, $83, $16, 6, 1, $A3
                .BYTE $27, $64, $C7, $25, $64, $2E, $C7, $13, 6, 1, $94
                .BYTE 8, $3E, 2, $12, $89, $AD, $25, $9C, 1, $B6, $12
                .BYTE $8A, $B4, $25, $9D, 1, $B6, $25, $9E, $45, $28, $C7
                .BYTE 0, 8, $3F, 2, 0, 8, $A9, 1, 0, 8, $A6, 1, $10, $3A
                .BYTE 0, $5C, 6, $3E, $E9, $90, $3F, 2, $10, $17, 0, $30
                .BYTE 1, $14, 1, 0
byte_1090EE:    .BYTE $1E, $7E, 4, $49, $2C, $8B, 5, $18, $35, $15, $12
                                        ; DATA XREF: BANK10:off_109003↑o
                .BYTE $88, $15, $5A, $17, $48, 4, $10, $18, $10, $73, 0
byte_109104:    .BYTE $DE, $7C, 6, $48, $14, $8B, 5, $19, $40, $48, $12
                                        ; DATA XREF: BANK10:off_109003↑o
                .BYTE $89, $1F, $47, 6, $5A, $1E, $3E, $4D, $91, $4D, $3E
                .BYTE $B6, $91, $4C, 4, $5A, 8, $11, $17, 0, $12, $8A
                .BYTE $34, $47, 6, $5A, $1E, $3E, $84, $91, $4D, $3E, $B6
                .BYTE $91, $4C, 4, $5A, 8, $11, $17, 0, $12, $8B, $48
                .BYTE $47, 6, $5A, $1E, $3E, $9D, $91, $4D, $3E, $B6, $91
                .BYTE $4C, 4, $5A, 8, $11, $17, 0, $16, $33, $17, 5, $10
                .BYTE $A, $10, 2, $11, 2, $12, 4, $13, 2, $14, 4, $15
                .BYTE 2, $16, 4, $17, 2, $10, 4, $11, 2, $12, 4, $13, 2
                .BYTE $14, 4, $15, 2, $16, 4, $17, 2, $10, 1, $10, $43
                .BYTE $11, 5, $12, $B7, $13, 5, $14, $4C, $15, 5, $16
                .BYTE $7A, 3, $16, $D6, $15, $2E, $16, $32, $17, $A, $10
                .BYTE $40, $11, $D, $12, $C8, $12, $7A, $13, 8, $14, $19
                .BYTE $15, 8, $16, 5, 3, $16, $F, $17, 5, $10, $4C, $11
                .BYTE 5, $12, $C8, $12, $46, $13, $A, $14, $C3, $15, 5
                .BYTE $16, $54, $17, $7C, $16, $2A, 3, $16, $A, 0
byte_1091B9:    .BYTE $59, $7A, $80, $48, $94, $81, $B, $B, 8, $A5, 1
                                        ; DATA XREF: BANK10:off_109003↑o
                .BYTE 0
byte_1091C5:    .BYTE $1F, $7E, 0, $49, 6, $73, $35, $10, $11, $18, $11
                                        ; DATA XREF: BANK10:off_109003↑o
                .BYTE $73, $5A, 8, $4C, 0, 0
byte_1091D6:    .BYTE $5C, $9D, $40, $46, 6, $73, $35, $1A, $44, $6F, $10
                                        ; DATA XREF: BANK10:off_109003↑o
                .BYTE $78, $10, $90, $11, $73, $10, $17, $10, $19, $10
                .BYTE $1A, $5A, 8, $4C, 0, 0
byte_1091F1:    .BYTE $41, $C1, 0, $A0, $4B, $E2, $84, $91
                                        ; DATA XREF: BANK10:off_109003↑o
byte_1091F9:    .BYTE $41, $C3, 0, $9D, $40, $E3, $86, $2D
                                        ; DATA XREF: BANK10:off_109003↑o
byte_109201:    .BYTE $98, $C1, 0, $92, $36, $A, $35, $A, $44, $A2, 0
                                        ; DATA XREF: BANK10:off_109003↑o
off_10920C:     .WORD byte_109244, byte_10924C, byte_109254, byte_10925C
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_109264, byte_10926C, byte_109274, byte_109283
                .WORD byte_10928F, byte_10929B, byte_1092A7, byte_1092B3
                .WORD byte_1092BF, byte_1092CB, byte_1092D7, byte_1092E3
                .WORD byte_1092EF, byte_1092FB, byte_109307, byte_109313
                .WORD byte_10931F, byte_10932B, byte_109334, byte_10933D
                .WORD byte_109346, byte_10934F, byte_10935B, 0
byte_109244:    .BYTE $41, $B2, $C0, $6F, $40, $AF, $86, $F5
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_10924C:    .BYTE $41, $B3, $C0, $6F, $40, $B, $86, $45
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109254:    .BYTE $41, $E9, $C0, $5D, $52, $97, $86, $F9
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_10925C:    .BYTE $41, $B1, $C0, $73, $40, $DB, $86, $25
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109264:    .BYTE $41, $BA, $80, $67, $4F, $B4, $44, $F9
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_10926C:    .BYTE $81, $A8, $C0, $71, $40, $D7, $86, $21
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109274:    .BYTE $90, $AD, 6, $6E, $28, $84, $A, $E, 8, $B1, 1, 8
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 3, 0, 0
byte_109283:    .BYTE $D1, $AA, $42, $70, $C8, $83, $A, $B, 8, $B5, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_10928F:    .BYTE $51, $B4, $C4, $72, $48, $84, $A, $B, 8, $B3, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_10929B:    .BYTE $11, $AB, 0, $71, 8, $83, $A, $B, 8, $B6, 1, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_1092A7:    .BYTE $91, $AF, $86, $79, $C8, $83, $A, $B, 8, $B7, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_1092B3:    .BYTE $91, $B2, 6, $78, 8, $83, $A, $B, 8, $B8, 1, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_1092BF:    .BYTE $12, $AD, $40, $74, $E8, $83, $A, $B, 8, $BA, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_1092CB:    .BYTE $91, $AE, $40, $74, $A8, $83, $A, $B, 8, $B9, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_1092D7:    .BYTE $D2, $AD, 6, $75, $88, $83, $A, $B, 8, $BB, 1, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_1092E3:    .BYTE $91, $AE, $C4, $75, $A8, $83, $A, $B, 8, $BB, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_1092EF:    .BYTE $12, $AF, $84, $70, $C8, $83, $A, $B, 8, $BC, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_1092FB:    .BYTE $92, $AA, $82, $7A, 8, $83, $A, $B, 8, $C6, 1, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109307:    .BYTE $50, $BD, $C4, $75, 8, $83, $A, $B, 8, $B2, 1, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109313:    .BYTE $91, $B2, $C2, $70, 8, $83, $A, $B, 8, $B4, 1, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_10931F:    .BYTE $91, $A8, $44, $73, $C8, $83, $A, $B, 8, $B0, 1
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_10932B:    .BYTE $5B, $AD, $80, $6D, $35, 8, $5A, 8, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109334:    .BYTE $5B, $AD, $C0, $6D, $35, 8, $5A, $30, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_10933D:    .BYTE $5B, $BD, 0, $76, $35, 8, $5A, 6, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109346:    .BYTE $1B, $BD, 0, $76, $35, 8, $5A, $30, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_10934F:    .BYTE $19, $BD, $C0, $75, $94, $81, $B, $B, 8, $B2, 3
                                        ; DATA XREF: BANK10:off_10920C↑o
                .BYTE 0
byte_10935B:    .BYTE $A9, $AC, $80, $6F, $EE, 0
                                        ; DATA XREF: BANK10:off_10920C↑o
byte_109361:    .BYTE $B1, $93, $B9, $93, $C1, $93, $C9, $93, $D1, $93
                                        ; DATA XREF: BANK10:off_108000↑o
                .BYTE $D9, $93, $E1, $93, $E9, $93, $F5, $93, 1, $94, $D
                .BYTE $94, $19, $94, $3E, $94, $6E, $94, $8A, $94, $96
                .BYTE $94, $C6, $94, $E2, $94, $FE, $94, $1A, $95, $36
                .BYTE $95, $52, $95, $6E, $95, $7A, $95, $86, $95, $92
                .BYTE $95, $9E, $95, $BD, $95, $CD, $95, $D4, $95, $E0
                .BYTE $95, $EC, $95, $F8, $95, 4, $96, $A, $96, $10, $96
                .BYTE $16, $96, $1C, $96, $22, $96, 0, 0, $81, $C5, 0
                .BYTE $46, $4F, $B, $86, $55, $C1, $C8, 0, $4B, $E2, $AE
                .BYTE 6, $F2, $C1, $C7, 0, $46, $4F, $B, $86, $2D, $C1
                .BYTE $C1, 0, $4B, $52, $AF, $86, $FD, $C1, $C2, 0, $4B
                .BYTE $52, $BF, $86, $FD, $41, $B8, $C0, $33, $4F, $B
                .BYTE $86, $35, $81, $C2, 0, $48, $52, $C3, $86, $F1, $11
                .BYTE $D0, $C4, $42, $84, $87, $A, $B, 8, $CA, 1, 0, $91
                .BYTE $CB, $C4, $43, $5C, $87, $A, $B, 8, $CB, 1
                .BYTE 0, $91, $CB, $86, $46, $84, $87, $A, $B, 8, $CC
                .BYTE 1, 0, $51, $C4, $82, $49, $BC, $86, $A, $B, 8, $CD
                .BYTE 1, 0, $D1, $C5, $86, $4A, $3C, $87, $A, $24, $33
                .BYTE 2, $21, $52, $80, $21, $33, 1, $21, $52, $80, $21
                .BYTE 8, $CE, 1, 9, $1D, 8, $CF, 1, 0, 8, $D0, 1, 0, 8
                .BYTE $CF, 1, 0, $91, $C9, $C6, $4B, $3C, $87, $A, $2F
                .BYTE $1D, $B0, 4, 8, $D1, 1, 9, $2C, $29, $28, $27, 0
                .BYTE $1F, $5C, 6, $25, $5A, $2D, $2F, 8, $D2, 1, 0, 8
                .BYTE $C7, 1, $1D, $B0, 4, $28, $2F, 0, 8, $86, 1, 0, 8
                .BYTE $D3, 1, 0, $11, $CB, $C2, $48, $5C, $87, $A, $1B
                .BYTE $33, 4, $F, 8, $5B, 2, 0, 8, $D4, 1, 9, $18, 8, $D5
                .BYTE 1, 0, 8, $D6, 1, 0, $D1, $D1, $C4, $49, $BC, $86
                .BYTE $A, $B, 8, $FD, 1, 0, $D4, $C8, $44, $4B, $FC, $86
                .BYTE 6, $1A, $A, $27, $1D, $C8, 0, 8, $AB, 1, 9, $24
                .BYTE $29, $20, 8, $AD, 1, $3E, $BE, $94, $11, $1A, $3E
                .BYTE $C5, $94, 0, 8, $E0, 1, 0, 8, $AE, 1, 0, $76, 4
                .BYTE $F2, 1, $76, 4, 3, 0, $D1, $C7, $40, $4C, $9C, $86
                .BYTE $A, $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0
                .BYTE 8, $69, 3, 0, 8, $F2, 2, $44, $9E, 0, $11, $C9, $42
                .BYTE $49, $9C, $86, $A, $1B, $33, 4, $16, $52, $80, $12
                .BYTE 8, $68, 3, 0, 8, $69, 3, 0, 8, $F3, 2, $44, $9E
                .BYTE 0, $D1, $C7, 6, $47, $9C, $86, $A, $1B, $33, 4, $16
                .BYTE $52, $80, $12, 8, $68, 3, 0, 8, $69, 3, 0, 8, $F4
                .BYTE 2, $44, $9E, 0, $D1, $C0, $82, $4B, $9C, $86, $A
                .BYTE $1B, $33, 4, $16, $52, $80, $12, 8, $68, 3, 0, 8
                .BYTE $69, 3, 0, 8, $F5, 2, $44, $9E, 0, $91, $C1, 6, $4C
                .BYTE $9C, $86, $A, $1B, $33, 4, $16, $52, $80, $12, 8
                .BYTE $68, 3, 0, 8, $69, 3, 0, 8, $F6, 2, $44, $9E, 0
                .BYTE $11, $C4, $84, $46, $9C, $86, $A, $1B, $33, 4, $16
                .BYTE $52, $80, $12, 8, $68, 3, 0, 8, $69, 3, 0, 8, $F7
                .BYTE 2, $44, $9E, 0, $51, $C3, 4, $3F, $BC, $86, $A, $B
                .BYTE 8, $F8, 2, 0, $91, $C7, $C0, $42, $DC, $86, $A, $B
                .BYTE 8, $F9, 2, 0, $91, $CA, $84, $3E, $3C, $87, $A, $B
                .BYTE 8, $FA, 2, 0, $11, $D1, $C6, $40, $9C, $86, $A, $B
                .BYTE 8, $C9, 1, 0, $D4, $C8, $86, $4B, $1C, $87, 6, $2B
                .BYTE $35, $D, $3E, $AC, $95, 0, $36, $14, $30, 1, $31
                .BYTE $A, $30, 1, $36, $F, $30, 1, $10, 1, $16, 1, 3, $90
                .BYTE $C8, 0, $30, $FC, $86, $A, $F, 8, $F1, 2, $55, 8
                .BYTE $55, 3, 0, $E5, $C8, $C0, $4A, $7C, $87, 0, $99
                .BYTE $C2, $40, $3F, $94, $81, $B, $B, 8, $A6, 3, 0, $99
                .BYTE $CE, $40, $43, $94, $81, $B, $B, 8, $A7, 3, 0, $59
                .BYTE $C2, $40, $48, $94, $81, $B, $B, 8, $B4, 3, 0, $19
                .BYTE $B8, 0, $34, $94, $81, $B, $B
                .BYTE 8, $18, 2, 0, $29, $C2, 0, $4A, $EF, 0, $A9, $C5
                .BYTE 0, $4A, $EF, 0, $29, $C9, 0, $4A, $EF, 0, $29, $C2
                .BYTE $80, $46, $EF, 0, $A9, $C5, $80, $46, $EF, 0, $29
                .BYTE $C9, $80, $46, $EF, 0
off_109628:     .WORD byte_109634, byte_109642, byte_109650, byte_10965C
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_109668, 0
byte_109634:    .BYTE $54, $43, $C6, $65, $C8, $81, 5, $77, $A, $D, 8
                                        ; DATA XREF: BANK10:off_109628↑o
                .BYTE $F5, 0, 0
byte_109642:    .BYTE $54, $43, 6, $66, $C8, $81, 5, $77, $A, $D, 8, $F5
                                        ; DATA XREF: BANK10:off_109628↑o
                .BYTE 0, 0
byte_109650:    .BYTE $D9, $2E, $C0, $7C, $94, $81, $B, $B, 8, $A8, 3
                                        ; DATA XREF: BANK10:off_109628↑o
                .BYTE 0
byte_10965C:    .BYTE $19, $42, $40, $65, $94, $81, $B, $B, 8, $A9, 3
                                        ; DATA XREF: BANK10:off_109628↑o
                .BYTE 0
byte_109668:    .BYTE $99, $34, $C0, $42, $94, $81, $B, $B, 8, $AA, 3
                                        ; DATA XREF: BANK10:off_109628↑o
                .BYTE 0
off_109674:     .WORD byte_109688, byte_109690, byte_109698, byte_1096A0
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_1096A8, byte_1096C2, byte_1096D4, byte_1096E6
                .WORD byte_1096F8, 0
byte_109688:    .BYTE $84, $36, $80, $8D, $91, $C7, 6, $21
                                        ; DATA XREF: BANK10:off_109674↑o
byte_109690:    .BYTE $81, $CF, $82, $21, $40, $C4, $C2, $22
                                        ; DATA XREF: BANK10:off_109674↑o
byte_109698:    .BYTE $81, $C7, $C0, $20, $8D, $36, $84, $8D
                                        ; DATA XREF: BANK10:off_109674↑o
byte_1096A0:    .BYTE 1, $C4, $C6, $22, $40, $CF, $86, $21
                                        ; DATA XREF: BANK10:off_109674↑o
byte_1096A8:    .BYTE $21, $CD, $C0, $21, $58, $85, 5, $1B, $B, $16, 8
                                        ; DATA XREF: BANK10:off_109674↑o
                .BYTE $7E, 3, $10, $1F, $10, $1B, $3F, 8, $3E, $BF, $96
                .BYTE 0, $50, 1, 0
byte_1096C2:    .BYTE $A1, $CD, $40, $21, $58, $85, 5, $1C, $B, $11, 8
                                        ; DATA XREF: BANK10:off_109674↑o
                .BYTE $7E, 3, $44, $10, $10, $1C, 0
byte_1096D4:    .BYTE $61, $CE, $40, $21, $58, $85, 5, $1D, $B, $11, 8
                                        ; DATA XREF: BANK10:off_109674↑o
                .BYTE $7E, 3, $44, $10, $10, $1D, 0
byte_1096E6:    .BYTE $E1, $CE, $C0, $21, $58, $85, 5, $1E, $B, $11, 8
                                        ; DATA XREF: BANK10:off_109674↑o
                .BYTE $7E, 3, $44, $10, $10, $1E, 0
byte_1096F8:    .BYTE $14, $CD, $C4, $21, $80, $80, 6, $1F, $A, $49, 8
                                        ; DATA XREF: BANK10:off_109674↑o
                .BYTE $65, 0, 9, $14, 8, $66, 0, 1, $31, 8, $67, 0, 9
                .BYTE $2E, 8, $68, 0, $27, 0, $29, $25, $68, $2D, $54
                .BYTE $5C, 6, $10, $62, 1, $31, 8, $49, 2, 1, $31, 8, $69
                .BYTE 0, 8, $48, 2, $5A, $21, 4, $B4, $5A, $11, $3E, $4D
                .BYTE $97, 8, $66, 3, $3E, $58, $97, $42, 5, $54, $11
                .BYTE $1F, 0, $40, $54, $3E, $61, $97, $5A, $1D, 4, $B4
                .BYTE $5A, $11, 0, $31, 1, $32, 8, $F6, 1, $F2, 1, $F6
                .BYTE 1, 3, $34, 1, $76, 1, $70, 1, $F2, 1, 0, $F4, 1
                .BYTE 0
off_109764:     .WORD byte_10979C, byte_1097B3, byte_1097C4, byte_1097E3
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_1097EA, byte_1097F1, byte_1097F8, byte_1097FF
                .WORD byte_109806, byte_10980D, byte_109814, byte_10981B
                .WORD byte_109822, byte_109829, byte_109830, byte_109837
                .WORD byte_10983E, byte_109845, byte_10984C, byte_109853
                .WORD byte_10985A, byte_109861, byte_109868, byte_109888
                .WORD byte_10989C, byte_1098A7, byte_1098B6, 0
byte_10979C:    .BYTE $98, $2F, $C0, $3C, $36, $16, $35, $16, $12, $D
                                        ; DATA XREF: BANK10:off_109764↑o
                .BYTE $11, $3D, $40, $7B, $86, $21, 0, $3D, $6E, $7B, $86
                .BYTE $21, 0
byte_1097B3:    .BYTE $D9, $30, $C0, $36, $68, $88, $B, $10, 8, $62, 3
                                        ; DATA XREF: BANK10:off_109764↑o
                .BYTE $12, $D, $10, $3F, 2, 0
byte_1097C4:    .BYTE $15, $30, $44, $36, $C4, $87, 6, $D, $40, $1B, 8
                                        ; DATA XREF: BANK10:off_109764↑o
                .BYTE $5D, 3, $3E, $E0, $97, $5A, $26, 4, $F0, $5A, $12
                .BYTE $10, $F5, 8, $40, 3, 0, $F4, 1, 0
byte_1097E3:    .BYTE $19, $2A, 0, $36, $9C, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_1097EA:    .BYTE $99, $2A, $40, $36, $9C, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_1097F1:    .BYTE $E2, $1B, $46, $3B, $78, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_1097F8:    .BYTE $E2, $1C, $C6, $3B, $78, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_1097FF:    .BYTE $62, $1B, $42, $3C, $78, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109806:    .BYTE $E2, $1B, 4, $3C, $78, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_10980D:    .BYTE $11, $22, $42, $3C, $44, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109814:    .BYTE $51, $22, $C6, $3C, $44, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_10981B:    .BYTE $91, $20, $44, $3D, $44, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109822:    .BYTE $D1, $21, $82, $3C, $44, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109829:    .BYTE $99, $2E, 0, $38, $98, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109830:    .BYTE $19, $2E, $40, $38, $98, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109837:    .BYTE $19, $2F, $40, $38, $98, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_10983E:    .BYTE $D9, $2D, $40, $39, $98, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109845:    .BYTE $12, $25, $44, $38, $C4, $87, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_10984C:    .BYTE $52, $25, 2, $39, $C4, $87, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109853:    .BYTE $91, $24, $42, $39, $C4, $87, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_10985A:    .BYTE $D2, $25, $44, $39, $C4, $87, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109861:    .BYTE $64, $1F, $80, $40, $64, $88, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_109868:    .BYTE $54, $1F, 4, $41, $C4, $87, 5, $21, $35, $C, 1, $E
                                        ; DATA XREF: BANK10:off_109764↑o
                .BYTE $A, $1F, 8, $6D, 0, $27, $56, $1F, 8, $42, 3, $25
                .BYTE $56, $2E, $1F, $3B, $26, $10, $21, 0
byte_109888:    .BYTE $5D, $1F, $C0, $40, $6C, $88, 5, $20, $B, $C, 1
                                        ; DATA XREF: BANK10:off_109764↑o
                .BYTE $E, $35, $13, 8, $67, 3, $10, $20, 0
byte_10989C:    .BYTE $5F, $1F, 0, $41, 6, $21, $35, $A, $5A, 6, 0
                                        ; DATA XREF: BANK10:off_109764↑o
byte_1098A7:    .BYTE $5B, $1F, $40, $40, $35, $E, $12, $D, $C, $5A, $12
                                        ; DATA XREF: BANK10:off_109764↑o
                .BYTE 0, $5A, $11, 0
byte_1098B6:    .BYTE $59, $2F, 0, $3D, $94, $81, $B, $B, 8, $17, 2, 0
                                        ; DATA XREF: BANK10:off_109764↑o
off_1098C2:     .WORD byte_1098CA, byte_1098D2, byte_10990E, 0
                                        ; DATA XREF: BANK10:off_108000↑o
byte_1098CA:    .BYTE $41, $52, $C0, $39, $B1, $F0, $44, $85
                                        ; DATA XREF: BANK10:off_1098C2↑o
byte_1098D2:    .BYTE $90, $3F, $C6, $34, $C8, $81, $A, $24, $12, $D, $1C
                                        ; DATA XREF: BANK10:off_1098C2↑o
                .BYTE $4F, $20, 8, $71, 3, $3F, 2, $36, $18, $3E, 2, $99
                .BYTE 0, $3E, 9, $99, 0, 8, $70, 3, 0, 8, $71, 3, 0, $40
                .BYTE $2F, $36, $2C, $3E, 2, $99, 0, $3E, 9, $99, 0, $F2
                .BYTE 1, $7E, 2, $78, 1, 0, $7A, 2, $78, 1, 0
byte_10990E:    .BYTE $90, $3F, 6, $35, $C8, $81, $A, $2A, $12, $D, $1F
                                        ; DATA XREF: BANK10:off_1098C2↑o
                .BYTE $4F, $23, 8, $B9, 3, 8, $72, 3, $3F, 1, $36, $1B
                .BYTE $3E, $44, $99, 0, $3E, $4B, $99, 0, 8, $70, 3, 0
                .BYTE 8, $B9, 3, 8, $72, 3, 0, $40, $35, $36, $32, $3E
                .BYTE $44, $99, 0, $3E, $4B, $99, 0, $F2, 1, $7E, 3, $7C
                .BYTE 1, 0, $7A, 1, $7C, 1, 0
off_109950:     .WORD byte_10995E, byte_109966, byte_10996E, byte_109979
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_10999C, byte_1099A4, 0
byte_10995E:    .BYTE $81, $6C, $C2, $73, $40, 2, $82, $FE
                                        ; DATA XREF: BANK10:off_109950↑o
byte_109966:    .BYTE $81, $59, $80, $93, $B1, $F9, $44, $82
                                        ; DATA XREF: BANK10:off_109950↑o
byte_10996E:    .BYTE $9F, $48, $C0, $53, 5, $85, 2, $79, $99, $B, 0
                                        ; DATA XREF: BANK10:off_109950↑o
byte_109979:    .BYTE $DF, $48, $C0, $53, 5, $85, 2, $79, $99, $B, 0, $35
                                        ; DATA XREF: BANK10:off_109950↑o
                .BYTE $22, 8, $9B, 1, $27, 0, $1F, $25, $59, 8, $5E, 2
                .BYTE $5C, 6, $2D, $22, $10, $85, 3, 8, $9D, 3, 3
byte_10999C:    .BYTE $81, $55, $C0, $95, $4C, $1C, $86, $6B
                                        ; DATA XREF: BANK10:off_109950↑o
byte_1099A4:    .BYTE $59, $55, 0, $96, $94, $81, $B, $B, 8, $C9, 3, 0
                                        ; DATA XREF: BANK10:off_109950↑o
off_1099B0:     .WORD byte_1099B6, byte_1099BE, 0
                                        ; DATA XREF: BANK10:off_108000↑o
byte_1099B6:    .BYTE $81, $6C, $C0, $B8, $80, $59, $86, $FE
                                        ; DATA XREF: BANK10:off_1099B0↑o
byte_1099BE:    .BYTE $99, $77, $40, $D0, $94, $81, $B, $B, 8, $B0, 3
                                        ; DATA XREF: BANK10:off_1099B0↑o
                .BYTE 0
off_1099CA:     .WORD byte_1099D8, byte_1099E0, byte_1099E8, byte_1099F0
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_1099F8, byte_109A04, 0
byte_1099D8:    .BYTE $81, $B4, $C2, $CF, $40, 2, $82, $82
                                        ; DATA XREF: BANK10:off_1099CA↑o
byte_1099E0:    .BYTE $C1, $A9, 0, $D5, $52, $97, $86, $F5
                                        ; DATA XREF: BANK10:off_1099CA↑o
byte_1099E8:    .BYTE $C1, $A9, 0, $DB, $51, 3, $86, $39
                                        ; DATA XREF: BANK10:off_1099CA↑o
byte_1099F0:    .BYTE $41, $AA, $80, $CF, $4F, $A4, $44, $F9
                                        ; DATA XREF: BANK10:off_1099CA↑o
byte_1099F8:    .BYTE $99, $AB, $40, $D5, $94, $81, $B, $B, 8, $B1, 3
                                        ; DATA XREF: BANK10:off_1099CA↑o
                .BYTE 0
byte_109A04:    .BYTE $59, $BD, 0, $D1, $94, $81, $B, $B, 8, $B3, 3, 0
                                        ; DATA XREF: BANK10:off_1099CA↑o
off_109A10:     .WORD byte_109A14, 0    ; DATA XREF: BANK10:off_108000↑o
byte_109A14:    .BYTE $81, $D0, $C0, $F1, $80, $1D, $86, $82
                                        ; DATA XREF: BANK10:off_109A10↑o
off_109A1C:     .WORD byte_109A28, byte_109A30, byte_109A39, byte_109A42
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_109A4B, 0
byte_109A28:    .BYTE $41, $9E, $C0, $63, $71, $FF, $44, $79
                                        ; DATA XREF: BANK10:off_109A1C↑o
byte_109A30:    .BYTE $1B, $61, 0, $4B, $35, 8, $5A, 6, 0
                                        ; DATA XREF: BANK10:off_109A1C↑o
byte_109A39:    .BYTE $1B, $61, $40, $4B, $35, 8, $5A, 6, 0
                                        ; DATA XREF: BANK10:off_109A1C↑o
byte_109A42:    .BYTE $9B, $61, 0, $4B, $35, 8, $5A, 8, 0
                                        ; DATA XREF: BANK10:off_109A1C↑o
byte_109A4B:    .BYTE $9B, $61, $40, $4B, $35, 8, $5A, 8, 0
                                        ; DATA XREF: BANK10:off_109A1C↑o
off_109A54:     .WORD byte_109A6E, byte_109A76, byte_109A81, byte_109A8D
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_109A99, byte_109AA5, byte_109ABD, byte_109AC9
                .WORD byte_109AE5, byte_109AF4, byte_109AFC, byte_109B04
                .WORD 0
byte_109A6E:    .BYTE $84, $9E, $80, $44, $58, $14, 4, $73
                                        ; DATA XREF: BANK10:off_109A54↑o
byte_109A76:    .BYTE $5C, $9D, $40, $46, 5, $78, $35, $A, $44, $6F, 0
                                        ; DATA XREF: BANK10:off_109A54↑o
byte_109A81:    .BYTE $D9, $68, 0, $3F, $64, $85, $A, $B, 8, $9E, 1, 0
                                        ; DATA XREF: BANK10:off_109A54↑o
byte_109A8D:    .BYTE $59, $A3, 0, $41, $64, $85, $A, $B, 8, $9F, 1, 0
                                        ; DATA XREF: BANK10:off_109A54↑o
byte_109A99:    .BYTE $19, $70, $40, $49, $64, $85, $A, $B, 8, $A0, 1
                                        ; DATA XREF: BANK10:off_109A54↑o
                .BYTE 0
byte_109AA5:    .BYTE $99, $85, 0, $40, $64, $85, $A, $17, 8, $A1, 1, 9
                                        ; DATA XREF: BANK10:off_109A54↑o
                .BYTE $11, 8, $A2, 1, 0, 8, $A3, 1, 1, $B, 0, 0
byte_109ABD:    .BYTE $19, $8B, 0, $4D, $64, $85, $A, $B, 8, $A4, 1, 0
                                        ; DATA XREF: BANK10:off_109A54↑o
byte_109AC9:    .BYTE $98, $6F, $40, $43, $B, $A, 8, $59, 0, 0, $C, 1
                                        ; DATA XREF: BANK10:off_109A54↑o
                .BYTE $1B, 8, $5E, 3, $5A, $28, 4, $F0, $5A, 8, $10, $F3
                .BYTE 8, $40, 3, 0
byte_109AE5:    .BYTE $5F, $A9, $40, $41, 5, $3B, $35, $E, $68, 8, $A1
                                        ; DATA XREF: BANK10:off_109A54↑o
                .BYTE 2, $10, $3B, 0
byte_109AF4:    .BYTE 1, 2, $86, $FE, $46, $6C, $C6, $73
                                        ; DATA XREF: BANK10:off_109A54↑o
byte_109AFC:    .BYTE $C1, $59, $82, $FE, $86, $6C, 4, $B9
                                        ; DATA XREF: BANK10:off_109A54↑o
byte_109B04:    .BYTE $19, $16, $C0, $FE, $64, $85, $A, $B, 8, $E2, 3
                                        ; DATA XREF: BANK10:off_109A54↑o
                .BYTE 0
off_109B10:     .WORD 0                 ; DATA XREF: BANK10:off_108000↑o
off_109B12:     .WORD byte_109B18, byte_109B20, 0
                                        ; DATA XREF: BANK10:off_108000↑o
byte_109B18:    .BYTE $41, $F9, $C0, $53, $93, $E6, $44, $3E
                                        ; DATA XREF: BANK10:off_109B12↑o
byte_109B20:    .BYTE $19, $D8, $80, $4E, $94, $81, $B, $B, 8, $AC, 3
                                        ; DATA XREF: BANK10:off_109B12↑o
                .BYTE 0
off_109B2C:     .WORD byte_109B60, byte_109B68, byte_109B70, byte_109B78
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_109B80, byte_109B88, byte_109B90, byte_109B98
                .WORD byte_109BA0, byte_109BA8, byte_109BB0, byte_109BB8
                .WORD byte_109BC0, byte_109BC8, byte_109BD0, byte_109BD8
                .WORD byte_109BE0, byte_109C2C, byte_109C3A, byte_109C7F
                .WORD byte_109CB7, byte_109CC5, byte_109CD3, byte_109CE1
                .WORD byte_109CED, 0
byte_109B60:    .BYTE $81, $C7, $82, $FD, $C6, $2F, $44, $6F
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109B68:    .BYTE $83, $C4, $46, $FD, $80, $C0, $82, $21
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109B70:    .BYTE 1, $C6, $C0, $FC, $40, 3, $86, $21
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109B78:    .BYTE $81, 3, $82, $21, 0, $C6, 4, $FD
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109B80:    .BYTE $81, 3, $82, $51, $86, $5B, $44, $70
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109B88:    .BYTE $41, 0, $86, $51, $40, $A7, $86, $F5
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109B90:    .BYTE $81, $A7, $82, $F5, $80, 0, $82, $51
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109B98:    .BYTE $81, $B7, $82, $FD, $86, $79, $44, $EB
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BA0:    .BYTE $83, $B4, $46, $FD, $80, 4, $82, $55
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BA8:    .BYTE $81, $B5, $C0, $FC, $40, $93, $86, $21
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BB0:    .BYTE $81, $93, $82, $21, $80, $B5, 4, $FD
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BB8:    .BYTE $81, $BF, $82, $FD, $C6, $C2, $44, $4B
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BC0:    .BYTE $83, $BC, $46, $FD, $80, $D4, $82, $25
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BC8:    .BYTE $81, $BD, $C0, $FC, $40, $B7, $86, $25
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BD0:    .BYTE $81, $B, $82, $49, $80, $D5, 4, $25
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BD8:    .BYTE $81, $B, $82, $51, $40, $D6, 4, $25
                                        ; DATA XREF: BANK10:off_109B2C↑o
byte_109BE0:    .BYTE $10, 1, 4, $21, $C8, $84, $1D, $19, 0, 2, $E0, $9B
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE $E, 0, $A, $4B, 8, $D, 3, 9, $3E, $29, $48, $3A
                .BYTE 1, $1E, $18, $3C, 1, $21, $3A, 0, $21, $52, $80
                .BYTE $42, $50, $2F, $52, 3, $2F, 8, $F, 3, $28, $4B, 3
                .BYTE $51, $FF, $50, $2F, $53, $FC, $1F, $5C, 7, 8, $10
                .BYTE 3, 3, $28, $4B, 8, $E, 3, 3, $28, $4B, 8, $19, 2
                .BYTE 3, 8, $3F, 2, 3
byte_109C2C:    .BYTE $10, $91, 4, $21, $C8, $84, $1D, $3C, 0, 2, $E0
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE $9B, $E, 0
byte_109C3A:    .BYTE $10, $A5, 4, $F5, $C8, $84, $A, $44, $58, $32, $32
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE 8, $F1, 0, 9, $40, $58, $32, $32, $29, $44, $3A
                .BYTE 0, $39, $52, $80, $39, $53, $FC, $51, $FF, $50, $1D
                .BYTE $3A, 1, $39, $52, $80, $39, $53, $FC, $51, $FF, $50
                .BYTE $29, $3A, 2, $39, $52, $80, $39, $53, $FC, $51, $FF
                .BYTE $50, $35, $5C, 7, $1F, 8, $F3, 0, 0, 8, $F4, 0, 0
                .BYTE 0
byte_109C7F:    .BYTE $50, $C5, 4, $FD, $88, $84, $1D, $7D, 0, 2, $7F
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE $9C, $E, 0, $A, $37, 8, $1A, 3, $18, $34, $52, $80
                .BYTE $1A, 1, $30, 8, $19, 3, 9, $2C, $29, $28, $53, 0
                .BYTE $1F, 8, $B, 3, 3, 8, $3A, 3, 3, 8, $C, 3, 3, 8, $A4
                .BYTE 2, 3, 8, $A3, 2, 3
byte_109CB7:    .BYTE $10, $B5, 4, $FD, $88, $84, $1D, $2C, 1, 2, $7F
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE $9C, $E, 0
byte_109CC5:    .BYTE $10, $BD, 2, $FD, $88, $84, $1D, $E0, 1, 2, $7F
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE $9C, $E, 0
byte_109CD3:    .BYTE $10, 2, 4, $51, $88, $84, $1D, $BE, 0, 2, $7F, $9C
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE $E, 0
byte_109CE1:    .BYTE $11, $B5, $C6, $FD, $2C, $85, $A, $B, 8, $A5, 2
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE 0
byte_109CED:    .BYTE $91, $B5, $C2, $FD, $A8, $84, $A, $B, 8, $A6, 2
                                        ; DATA XREF: BANK10:off_109B2C↑o
                .BYTE 0
off_109CF9:     .WORD byte_109D33, byte_109D3B, byte_109D43, byte_109D4B
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_109D53, byte_109D5B, byte_109D63, byte_109D6B
                .WORD byte_109D73, byte_109D7B, byte_109D83, byte_109D8B
                .WORD byte_109D93, byte_109D9B, byte_109DA3, byte_109DAB
                .WORD byte_109DB3, byte_109DDC, byte_109DEA, byte_109DF8
                .WORD byte_109E06, byte_109E1F, byte_109E2B, byte_109E37
                .WORD byte_109E43, byte_109E4F, byte_109E5B, byte_109E67
                .WORD 0
byte_109D33:    .BYTE $81, $97, $82, $ED, $C6, $31, $44, $69
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D3B:    .BYTE $83, $94, $46, $ED, $80, 0, $82, $29
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D43:    .BYTE $81, $B3, $82, $21, $80, 1, 4, $29
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D4B:    .BYTE $81, $D3, $82, $21, $40, 2, 4, $29
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D53:    .BYTE $81, $AF, $82, $F5, $70, $B2, 4, $70
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D5B:    .BYTE $81, $AC, $46, $F5, $40, $87, $86, $25
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D63:    .BYTE 1, $AC, $C6, $F5, $40, $6F, $86, $25
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D6B:    .BYTE $81, $B7, $82, $F5, $C6, $5A, $44, $73
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D73:    .BYTE $83, $B4, $46, $F5, $80, $C0, $82, $FD
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D7B:    .BYTE $81, $BB, $82, $21, $80, $C1, 4, $FD
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D83:    .BYTE $81, $DB, $82, $21, $40, $C2, 4, $FD
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D8B:    .BYTE $43, $9C, $86, $F1, $C0, $C0, $42, $FD
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D93:    .BYTE $81, $AF, $82, $FD, $C6, $C1, $44, $4B
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109D9B:    .BYTE $83, $AC, $46, $FD, $80, $7C, $82, $25
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109DA3:    .BYTE $81, 3, $82, $41, $C6, $69, $44, $EF
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109DAB:    .BYTE $83, 0, $46, $41, $80, 4, $82, $35
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109DB3:    .BYTE $11, $96, 4, $ED, $C8, $82, $1D, $27, 0, 2, $B3
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE $9D, $E, 0, $A, $28, $45, 8, $15, 3, 9, $25, $29
                .BYTE $21, 8, $17, 3, $55, $1F, 8, $18, 3, 3, 8, $3A, 3
                .BYTE 3, 8, $16, 3, 3
byte_109DDC:    .BYTE $11, 2, 4, $41, $C8, $82, $1D, $64, 0, 2, $B3, $9D
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE $E, 0
byte_109DEA:    .BYTE $11, $AE, 4, $FD, $C8, $82, $1D, $A5, 0, 2, $B3
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE $9D, $E, 0
byte_109DF8:    .BYTE $11, $B6, 4, $F5, $C8, $82, $1D, $41, 0, 2, $B3
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE $9D, $E, 0
byte_109E06:    .BYTE $51, $AD, 4, $F5, $28, $82, $A, $18, 8, $1C, 3, 9
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE $15, 8, $17, 3, $55, 8, $1D, 3, 0, 8, $1E, 3, 0
byte_109E1F:    .BYTE $51, $95, $84, $ED, $88, $82, $A, $B, 8, $A7, 2
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE 0
byte_109E2B:    .BYTE $51, 1, $82, $41, $68, $82, $A, $B, 8, $A8, 2, 0
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109E37:    .BYTE $D1, $95, $86, $ED, $28, $82, $A, $B, 8, $AD, 2
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE 0
byte_109E43:    .BYTE $51, $B5, $82, $F5, $28, $82, $A, $B, 8, $AC, 2
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE 0
byte_109E4F:    .BYTE $11, $9D, 4, $F1, $A8, $81, $A, $B, 8, $A9, 2, 0
                                        ; DATA XREF: BANK10:off_109CF9↑o
byte_109E5B:    .BYTE $51, $9E, $86, $F1, $A8, $82, $A, $B, 8, $AA, 2
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE 0
byte_109E67:    .BYTE $11, $9F, $C6, $F1, $28, $82, $A, $B, 8, $AB, 2
                                        ; DATA XREF: BANK10:off_109CF9↑o
                .BYTE 0
off_109E73:     .WORD byte_109EAB, byte_109EB3, byte_109EBB, byte_109EC3
                                        ; DATA XREF: BANK10:off_108000↑o
                .WORD byte_109ECB, byte_109ED3, byte_109EDB, byte_109EE3
                .WORD byte_109EEB, byte_109EF3, byte_109EFB, byte_109F03
                .WORD byte_109F0B, byte_109F13, byte_109F1B, byte_109F23
                .WORD byte_109F2B, byte_109F33, byte_109F3B, byte_109F43
                .WORD byte_109F4B, byte_109F53, byte_109F5B, byte_109F63
                .WORD byte_109F86, byte_109F91, byte_109FB6, 0
byte_109EAB:    .BYTE $81, 8, $46, $31, $40, $B, $86, $39
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EB3:    .BYTE $43, 8, $86, $39, $C0, 8, $42, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EBB:    .BYTE $81, $B, $82, $39, $C0, 8, $42, $31
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EC3:    .BYTE $81, 9, $C0, $38, $40, $73, $86, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109ECB:    .BYTE $41, $A, $C0, $38, $40, $9F, $86, $FD
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109ED3:    .BYTE $81, 3, $82, $39, $C6, $A9, $44, $DB
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EDB:    .BYTE $83, 0, $46, $39, $80, $C, $82, $35
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EE3:    .BYTE $81, $97, $82, $F5, $C6, $A9, $44, $D5
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EEB:    .BYTE 1, $96, $C0, $F4, $40, 7, $86, $4D
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EF3:    .BYTE $83, $94, $46, $F5, $80, $C, $82, $4D
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109EFB:    .BYTE $81, $AB, $82, $21, $80, $C1, 4, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F03:    .BYTE $81, $C1, $C0, $20, $40, $AB, $86, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F0B:    .BYTE $81, $CB, $82, $21, $40, $C2, 4, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F13:    .BYTE $41, $C2, $C0, $20, $40, $CB, $86, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F1B:    .BYTE $43, $C0, $86, $21, $C0, $C4, $42, $FD
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F23:    .BYTE $43, 0, $86, $29, $C0, $94, $42, $ED
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F2B:    .BYTE $81, 1, $C0, $28, $40, $B3, $86, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F33:    .BYTE $41, 2, $C0, $28, $40, $D3, $86, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F3B:    .BYTE $81, $EB, $82, $21, $4A, $E3, 4, $F9
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F43:    .BYTE $81, $E8, $46, $21, $40, $E3, $86, $29
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F4B:    .BYTE 1, $E8, $C6, $21, $40, $E3, $86, $31
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F53:    .BYTE $81, $E3, $82, $29, $C0, $E8, $42, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F5B:    .BYTE $81, $E3, $82, $31, $40, $E8, $C2, $21
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F63:    .BYTE $90, $E9, 0, $21, $A8, $85, $A, $22, $1D, $7D, 0
                                        ; DATA XREF: BANK10:off_109E73↑o
                .BYTE $45, 8, $15, 3, 9, $1F, $29, $1B, 8, $17, 3, $55
                .BYTE 8, $18, 3, 0, 8, $3A, 3, 0, 8, $16, 3, 0
byte_109F86:    .BYTE $DF, 8, $40, $31, 5, $30, $35, $A, $3F, $19, 0
                                        ; DATA XREF: BANK10:off_109E73↑o
byte_109F91:    .BYTE $1D, $A, $40, $31, $74, $86, 5, $30, $40, $18, $5A
                                        ; DATA XREF: BANK10:off_109E73↑o
                .BYTE $10, $3E, $AA, $9F, $44, $A0, $10, $F8, $10, $30
                .BYTE $3E, $B5, $9F, 0, $7F, 2, $7D, 2, $7B, 2, $79, 2
                .BYTE $7E, 4, 3, 0
byte_109FB6:    .BYTE $14, 2, 0, $39, $68, $85, 5, $7A, $A, $2C, $1D, 6
                                        ; DATA XREF: BANK10:off_109E73↑o
                .BYTE 0, $45, 8, $15, 3, 9, $29, $29, $25, 8, $17, 3, 8
                .BYTE $61, 1, $55, $1F, 8, $2B, 3, $44, $69, $10, $7A
                .BYTE 0, 8, $3A, 3, 0, 8, $16, 3, 0
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
