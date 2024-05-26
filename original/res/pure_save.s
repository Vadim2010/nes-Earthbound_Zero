.include "sram.inc"

.segment "PURE_SAVE"

PureSave:       .byte 0                 ; field_0
                .byte 0                 ; field_1
                .byte $B0               ; GameNumber
                .byte $E9               ; Active
                .word $852              ; GlobalX
                .word $2F84             ; GlobalY
                .byte 1, 0, 0, 0        ; CharactersNum
                .byte $52               ; field_C
                .byte 8                 ; field_D
                .byte $86               ; field_E
                .byte $2F               ; field_F
                .word 0                 ; cash
                .word 0                 ; field_12
                .byte 0                 ; field_14
                .byte 0                 ; field_15
                .byte 0                 ; field_16
                .byte 0                 ; field_17
                .byte $21               ; field_18
                .byte 0                 ; field_19
                .byte 0, $6B, $84, $1C, $42; field_1A
                .byte $1E               ; field_1F
                .byte $AE, $AE, $AE, $AE, $AE, $AE, $AE, 0, 0, 0, 0, 0; field_20
                .byte 0, 0, 0, 0        ; field_20
                .byte 0                 ; field_30
                .byte 0                 ; field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; field_32
                .byte 8, $20, $80       ; field_3C
                .byte $20               ; field_3F
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $1E, 0, 8, 0, 5, 0, 5, 0, 5, 5, 5, 5, 5; Characters.msg_list
                .byte 1                 ; Characters.Level
                .byte 0                 ; Characters.Exp
                .byte 0                 ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $1E               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte 8                 ; Characters.PP
                .byte 0                 ; Characters.field_17
                .word Boy1Name             ; Characters.NameOffset
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte 0                 ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte $6E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte $40               ; Characters.field_30
                .byte 0, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $1A, 0, $C, 0, 1, 0, 3, 0, 1, 3, 7, 3, 8; Characters.msg_list
                .byte 1                 ; Characters.Level
                .byte 0                 ; Characters.Exp
                .byte 0                 ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $1A               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte $C                ; Characters.PP
                .byte 0                 ; Characters.field_17
                .word GirlName             ; Characters.NameOffset
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte $20               ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte $40               ; Characters.field_30
                .byte $40, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $1C, 0, 0, 0, 4, 0, 2, 0, 4, 2, 8, 4, 3; Characters.msg_list
                .byte 1                 ; Characters.Level
                .byte 0                 ; Characters.Exp
                .byte 0                 ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $1C               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte 0                 ; Characters.PP
                .byte 0                 ; Characters.field_17
                .word Boy2Name             ; Characters.NameOffset
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte $40               ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte 0                 ; Characters.field_30
                .byte 0, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $86, 0, 0, 0, $56, 0, $56, 0, $56, $56, $13; Characters.msg_list
                .byte $39, $26          ; Characters.msg_list
                .byte $12               ; Characters.Level
                .byte $10               ; Characters.Exp
                .byte $E                ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $86               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte 0                 ; Characters.PP
                .byte 0                 ; Characters.field_17
                .word Boy3Name          ; Characters.NameOffset
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte $60               ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte 0                 ; Characters.field_30
                .byte 0, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0, 0, 0, $20, 0, 0, 0, 9, 0, 9, 0, 9, 9, 2, 6, 4; field_140
                .byte 1, 0, 0, 0, $20, 0, 0, 0, $78, $75, 0, 0, 8, $64; field_140
                .byte $80, $80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52; field_140
                .byte 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0; field_140
                .byte $D0, $E9, $F0, $F0, $E9, 0, 0, 0, 0, 0, 0, $E7, 3; field_178
                .byte 0, 0, $E7, 3, $E7, 3, $FF, $FF, $FF, $FF, $FF, $63; field_178
                .byte $40, $42, $F, $E7, 3, 0, 0, $B8, $75, 0, 0, 8, $3A; field_178
                .byte $60, $81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52; field_178
                .byte 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0, $C5, $D6, $C5; field_178
                .byte 0, 0, 0, 0, 0, 0, 0, 0, $32, 0, 0, 0, $1E, 0, $1E; field_178
                .byte 0, $1E, $1E, $1E, $1E, $1E, $63, $40, $42, $F, $1E; field_178
                .byte 0, 0, 0, $F8, $75, 0, 0, 8, $64, $40, $81, 0, 0; field_178
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86, $2F, 0; field_178
                .byte 0, 0, 0, 0, 0, 0, 0, $C6, $EC, $F9, $EE, $CD, $E1; field_178
                .byte $EE, 0            ; field_178
