.include "structures.inc"

.segment "PURE_SAVE"

.export PureSave
.import CurrentGame

PureSave:
    .byte 0                 ; field_0
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
    .word 0                 ; Cash
    .word 0                 ; Account
    .byte 0                 ; field_14
    .word 0                 ; Transfer
    .byte 0                 ; field_17
    .byte $21               ; FightMsgSpd
    .byte 0                 ; field_19
    .byte 0, $6B, $84, $1C, $42; field_1A
    .byte $1E               ; field_1F
    .byte $AE, $AE, $AE, $AE, $AE, $AE, $AE, 0, 0, 0, 0, 0; field_20
    .byte 0, 0, 0, 0        ; field_20
    .byte 0                 ; field_30
    .byte 0                 ; field_31
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; field_32
    .byte 8, $20, $80       ; CmndBtn
    .byte $20               ; MsgSpdCheckbox
    
    .byte 0                 ; Boy1.field_0
    .byte 0                 ; Boy1.InitialStatus
    .byte 0                 ; Boy1.Flags
    .word 30                ; Boy1.MaxHealth
    .word 8                 ; Boy1.MaxPP
    .word 5                 ; Boy1.Offense
    .word 5                 ; Boy1.Defense
    .byte 5                 ; Boy1.Fight
    .byte 5                 ; Boy1.Speed
    .byte 5                 ; Boy1.Wisdom
    .byte 5                 ; Boy1.Strength
    .byte 5                 ; Boy1.Force
    .byte 1                 ; Boy1.Level
    .byte 0, 0, 0           ; Boy1.Exp
    .word 30                ; Boy1.Health
    .word 8                 ; Boy1.PP
    .word CurrentGame+PURE_SAVE::Boy1+CHARACTER::Name
    .byte 0                 ; Boy1.field_1A
    .byte 0                 ; Boy1.field_1B
    .byte 8                 ; Boy1.field_1C
    .byte $64               ; Boy1.field_1D
    .word $8000             ; Boy1.field_1E
    .byte $6E, 0, 0, 0, 0, 0, 0, 0; Boy1.Goods
    .byte 0, 0, 0, 0        ; Boy1.Items
    .byte $52, 8, $86, $2F  ; Boy1.field_2C
    .byte $40               ; Boy1.field_30
    .byte 0, 0, 0, 0, 0, 0, 0; Boy1.PSI
    .byte 0, 0, 0, 0, 0, 0, 0, 0; Boy1.Name
    
    .byte 0                 ; Girl.field_0
    .byte 0                 ; Girl.InitialStatus
    .byte 0                 ; Girl.Flags
    .word 26                ; Girl.MaxHealth
    .word 12                ; Girl.MaxPP
    .word 1                 ; Girl.Offense
    .word 3                 ; Girl.Defense
    .byte 1                 ; Girl.Fight
    .byte 3                 ; Girl.Speed
    .byte 7                 ; Girl.Wisdom
    .byte 3                 ; Girl.Strength
    .byte 8                 ; Girl.Force
    .byte 1                 ; Girl.Level
    .byte 0, 0, 0           ; Girl.Exp
    .word 26                ; Girl.Health
    .word 12                ; Girl.PP
    .word CurrentGame+PURE_SAVE::Girl+CHARACTER::Name
    .byte 0                 ; Girl.field_1A
    .byte 0                 ; Girl.field_1B
    .byte 8                 ; Girl.field_1C
    .byte $64               ; Girl.field_1D
    .word $8020             ; Girl.field_1E
    .byte 0, 0, 0, 0, 0, 0, 0, 0; Girl.Goods
    .byte 0, 0, 0, 0        ; Girl.Items
    .byte $52, 8, $86, $2F  ; Girl.field_2C
    .byte $40               ; Girl.field_30
    .byte $40, 0, 0, 0, 0, 0, 0; Girl.PSI
    .byte 0, 0, 0, 0, 0, 0, 0, 0; Girl.Name
    
    .byte 0                 ; Boy2.field_0
    .byte 0                 ; Boy2.InitialStatus
    .byte 0                 ; Boy2.Flags
    .word 28                ; Boy2.MaxHealth
    .word 0                 ; Boy2.MaxPP
    .word 4                 ; Boy2.Offense
    .word 2                 ; Boy2.Defense
    .byte 4                 ; Boy2.Fight
    .byte 2                 ; Boy2.Speed
    .byte 8                 ; Boy2.Wisdom
    .byte 4                 ; Boy2.Strength
    .byte 3                 ; Boy2.Force
    .byte 1                 ; Boy2.Level
    .byte 0, 0, 0           ; Boy2.Exp
    .word 28                ; Boy2.Health
    .word 0                 ; Boy2.PP
    .word CurrentGame+PURE_SAVE::Boy2+CHARACTER::Name
    .byte 0                 ; Boy2.field_1A
    .byte 0                 ; Boy2.field_1B
    .byte 8                 ; Boy2.field_1C
    .byte $64               ; Boy2.field_1D
    .word $8040             ; Boy2.field_1E
    .byte 0, 0, 0, 0, 0, 0, 0, 0; Boy2.Goods
    .byte 0, 0, 0, 0        ; Boy2.Items
    .byte $52, 8, $86, $2F  ; Boy2.field_2C
    .byte 0                 ; Boy2.field_30
    .byte 0, 0, 0, 0, 0, 0, 0; Boy2.PSI
    .byte 0, 0, 0, 0, 0, 0, 0, 0; Boy2.Name
    
    .byte 0                 ; Boy3.field_0
    .byte 0                 ; Boy3.InitialStatus
    .byte 0                 ; Boy3.Flags
    .word 134               ; Boy3.MaxHealth
    .word 0                 ; Boy3.MaxPP
    .word 86                ; Boy3.Offense
    .word 86                ; Boy3.Defense
    .byte 86                ; Boy3.Fight
    .byte $56               ; Boy3.Speed
    .byte 19                ; Boy3.Wisdom
    .byte 57                ; Boy3.Strength
    .byte 38                ; Boy3.Force
    .byte 18                ; Boy3.Level
    .byte $10, $E, 0        ; Boy3.Exp
    .word 134               ; Boy3.Health
    .word 0                 ; Boy3.PP
    .word CurrentGame+PURE_SAVE::Boy3+CHARACTER::Name
    .byte 0                 ; Boy3.field_1A
    .byte 0                 ; Boy3.field_1B
    .byte 8                 ; Boy3.field_1C
    .byte $64               ; Boy3.field_1D
    .word $8060             ; Boy3.field_1E
    .byte 0, 0, 0, 0, 0, 0, 0, 0; Boy3.Goods
    .byte 0, 0, 0, 0        ; Boy3.Items
    .byte $52, 8, $86, $2F  ; Boy3.field_2C
    .byte 0                 ; Boy3.field_30
    .byte 0, 0, 0, 0, 0, 0, 0; Boy3.PSI
    .byte 0, 0, 0, 0, 0, 0, 0, 0; Boy3.Name
    
    .byte 0, 0, 0, $20, 0, 0, 0, 9, 0, 9, 0, 9, 9, 2, 6, 4; field_140
    .byte 1, 0, 0, 0, $20, 0, 0, 0, $78, $75, 0, 0, 8, $64; field_140
    .byte $80, $80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52; field_140
    .byte 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0; field_140
    .byte $D0, $E9, $F0, $F0, $E9, 0, 0, 0, 0; field_178
    .byte 0, 0, $E7, 3, 0, 0, $E7, 3, $E7, 3, $FF, $FF, $FF; field_181
    .byte $FF, $FF, $63, $40, $42, $F, $E7, 3, 0, 0, $B8, $75; field_181
    .byte 0, 0, 8, $3A, $60, $81, 0, 0, 0, 0, 0, 0, 0, 0, 0; field_181
    .byte 0, 0, 0, $52, 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0; field_181
    .byte $C5, $D6, $C5, 0, 0, 0, 0, 0, 0; field_181
    .byte 0, 0, $32, 0, 0, 0, $1E, 0, $1E, 0, $1E, $1E, $1E; field_1C1
    .byte $1E, $1E, $63, $40, $42, $F, $1E, 0, 0, 0, $F8, $75; field_1C1
    .byte 0, 0, 8, $64, $40, $81, 0, 0, 0, 0, 0, 0, 0, 0, 0; field_1C1
    .byte 0, 0, 0, $52, 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0; field_1C1
    .byte $C6, $EC, $F9, $EE, $CD, $E1, $EE, 0; field_1C1
