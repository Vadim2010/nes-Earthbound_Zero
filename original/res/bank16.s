.segment "DATA_BANK_6"

; ===========================================================================

; Segment type: Pure code
;.segment BANK16
;* =  $8000
; ENEMY <0, 0, 0, $12C, $12C, $12C, $12C, $64, $64, $64, $64, $64, 0, EnemyNameList, 0, 0, 0, 0>
    .import EnemyNameList

    .byte 0, 0, 0
    .word $12C, $12C, $12C, $12C
    .byte $64, $64, $64, $64, $64
    .byte 0, 0, 0, 0, 0, 0, 0, 0
    .word EnemyNameList
    .word 0, 0
    .byte 0, 0

BigWoodoh:
    .import sBigWoodoh

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $24               ; field_2
    .word $1446             ; field_3
    .word $C00              ; field_5
    .word $812              ; field_7
    .word $832              ; field_9
    .byte $14               ; field_B
    .byte $17               ; field_C
    .byte $3C               ; field_D
    .byte $3C               ; field_E
    .byte $12               ; field_F
    .byte 1, $34, $41, $41, 1, 1, 1, 1; field_10
    .word sBigWoodoh        ; name
    .word $64               ; field_1A
    .word $8C               ; field_1C
    .byte $48               ; field_1E
    .byte $20               ; field_1F

Dragon:
    .import sDragon

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $128A             ; field_3
    .word $C8               ; field_5
    .word $B4               ; field_7
    .word $4C8              ; field_9
    .byte $3C               ; field_B
    .byte $3C               ; field_C
    .byte $14               ; field_D
    .byte $64               ; field_E
    .byte $3C               ; field_F
    .byte $6C, $A, $6C, 1, $A, 1, 1, $83; field_10
    .word sDragon           ; name
    .word $1F4              ; field_1A
    .word $4B0              ; field_1C
    .byte 0                 ; field_1E
    .byte $21               ; field_1F

R7038:
    .import sR7038

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $F6               ; field_2
    .word $17E8             ; field_3
    .word $1400             ; field_5
    .word $258              ; field_7
    .word $FE8              ; field_9
    .byte $28               ; field_B
    .byte $32               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sR7038            ; name
    .word $1AE              ; field_1A
    .word $65               ; field_1C
    .byte 0                 ; field_1E
    .byte $22               ; field_1F

Elephant:
    .import sElephant

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $1846             ; field_3
    .word 0                 ; field_5
    .word $14               ; field_7
    .word $422              ; field_9
    .byte $1E               ; field_B
    .byte $A                ; field_C
    .byte 5                 ; field_D
    .byte $1E               ; field_E
    .byte 8                 ; field_F
    .byte 5, 5, 5, 1, 1, 1, 1, 1; field_10
    .word sElephant         ; name
    .word $3C               ; field_1A
    .word $63               ; field_1C
    .byte 0                 ; field_1E
    .byte $23               ; field_1F

Bear:
    .import sBear

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $2050             ; field_3
    .word 0                 ; field_5
    .word $2A               ; field_7
    .word $440              ; field_9
    .byte $1E               ; field_B
    .byte $1C               ; field_C
    .byte $14               ; field_D
    .byte $28               ; field_E
    .byte $A                ; field_F
    .byte 1, 1, 1, 4, 5, $4F, 1, 1; field_10
    .word sBear             ; name
    .word $46               ; field_1A
    .word $FA               ; field_1C
    .byte 0                 ; field_1E
    .byte $2B               ; field_1F

BigFoot:
    .import sBigFoot

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $20               ; field_2
    .word $185A             ; field_3
    .word $32               ; field_5
    .word $32               ; field_7
    .word $45A              ; field_9
    .byte $32               ; field_B
    .byte $26               ; field_C
    .byte $1E               ; field_D
    .byte $3C               ; field_E
    .byte $F                ; field_F
    .byte $F, $D, $C, $C, $C, $C, $C, $C; field_10
    .word sBigFoot          ; name
    .word $96               ; field_1A
    .word $30               ; field_1C
    .byte 0                 ; field_1E
    .byte $25               ; field_1F

MadTruck:
    .import sMadTruck

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $203C             ; field_3
    .word 0                 ; field_5
    .word $16               ; field_7
    .word $1828             ; field_9
    .byte $26               ; field_B
    .byte $23               ; field_C
    .byte $23               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 6, 6, 6, 6, 6, 6, $32, $32; field_10
    .word sMadTruck         ; name
    .word $39               ; field_1A
    .word $1E               ; field_1C
    .byte 0                 ; field_1E
    .byte $26               ; field_1F

OldRobot:
    .import sOldRobot

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $283C             ; field_3
    .word $1E               ; field_5
    .word $30               ; field_7
    .word $C48              ; field_9
    .byte $19               ; field_B
    .byte $14               ; field_C
    .byte $14               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, $12, $12, $53, 1, 1, 1, 1; field_10
    .word sOldRobot         ; name
    .word $36               ; field_1A
    .word $26               ; field_1C
    .byte 0                 ; field_1E
    .byte $27               ; field_1F

Megaborg:
    .import sMegaborg

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $20A0             ; field_3
    .word $3C               ; field_5
    .word $50               ; field_7
    .word $CAA              ; field_9
    .byte $3C               ; field_B
    .byte $32               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $12, $13, $12, $12, $12, $12, $12, 1; field_10
    .word sMegaborg         ; name
    .word $C5               ; field_1A
    .word $6D               ; field_1C
    .byte 0                 ; field_1E
    .byte $28               ; field_1F

Gargoyle:
    .import sGargoyle

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 4                 ; field_2
    .word $30B4             ; field_3
    .word $3C               ; field_5
    .word $405A             ; field_7
    .word $8A0              ; field_9
    .byte $50               ; field_B
    .byte $46               ; field_C
    .byte $46               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $A, 1, $B, $A, 1, $B, 1, $3E; field_10
    .word sGargoyle         ; name
    .word $6E               ; field_1A
    .word $56               ; field_1C
    .byte 0                 ; field_1E
    .byte $29               ; field_1F

Gabilan:
    .import sGabilan

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $2064             ; field_3
    .word 0                 ; field_5
    .word $3E               ; field_7
    .word $864              ; field_9
    .byte $32               ; field_B
    .byte $44               ; field_C
    .byte $46               ; field_D
    .byte $F                ; field_E
    .byte $F                ; field_F
    .byte 1, $3F, $3F, 1, 2, 1, 1, $34; field_10
    .word sGabilan          ; name
    .word $46               ; field_1A
    .word $2B               ; field_1C
    .byte 0                 ; field_1E
    .byte $2A               ; field_1F

Gorilla:
    .import sGorilla

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4828             ; field_3
    .word 0                 ; field_5
    .word $14               ; field_7
    .word $41A              ; field_9
    .byte $23               ; field_B
    .byte $F                ; field_C
    .byte 5                 ; field_D
    .byte $A                ; field_E
    .byte $14               ; field_F
    .byte $4B, 1, 1, $28, 1, 1, 1, 1; field_10
    .word sGorilla          ; name
    .word $17               ; field_1A
    .word $34               ; field_1C
    .byte 0                 ; field_1E
    .byte $32               ; field_1F

Bison:
    .import sBison

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $30A0             ; field_3
    .word 0                 ; field_5
    .word $46               ; field_7
    .word $4A0              ; field_9
    .byte $32               ; field_B
    .byte $32               ; field_C
    .byte $50               ; field_D
    .byte $50               ; field_E
    .byte $50               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 2; field_10
    .word sBison            ; name
    .word $BA               ; field_1A
    .word $53               ; field_1C
    .byte 0                 ; field_1E
    .byte $2C               ; field_1F

Tiger:
    .import sTiger

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $2823             ; field_3
    .word 0                 ; field_5
    .word $1A               ; field_7
    .word $418              ; field_9
    .byte $28               ; field_B
    .byte $14               ; field_C
    .byte 5                 ; field_D
    .byte $A                ; field_E
    .byte $14               ; field_F
    .byte 3, 2, 2, 3, 3, 3, 3, 2; field_10
    .word sTiger            ; name
    .word $18               ; field_1A
    .word $2F               ; field_1C
    .byte 0                 ; field_1E
    .byte $2D               ; field_1F

MadCar:
    .import sMadCar

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $4028             ; field_3
    .word 0                 ; field_5
    .word $14               ; field_7
    .word $1826             ; field_9
    .byte $2D               ; field_B
    .byte $28               ; field_C
    .byte $23               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 6, 6, 6, 6, 6, 6, 6, $32; field_10
    .word sMadCar           ; name
    .word $37               ; field_1A
    .word $20               ; field_1C
    .byte 0                 ; field_1E
    .byte $2E               ; field_1F

RaebYddet:
    .import sRaebYddet

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4828             ; field_3
    .word 0                 ; field_5
    .word $16               ; field_7
    .word $826              ; field_9
    .byte $19               ; field_B
    .byte $19               ; field_C
    .byte $12               ; field_D
    .byte $19               ; field_E
    .byte $12               ; field_F
    .byte $49, $49, 1, 1, 1, 1, 1, 1; field_10
    .word sRaebYddet        ; name
    .word $19               ; field_1A
    .word $1B               ; field_1C
    .byte 0                 ; field_1E
    .byte $2F               ; field_1F

MagicSnail:
    .import sMagicSnail

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 8                 ; field_2
    .word $4432             ; field_3
    .word 0                 ; field_5
    .word $14               ; field_7
    .word $85A              ; field_9
    .byte $14               ; field_B
    .byte $12               ; field_C
    .byte $12               ; field_D
    .byte $28               ; field_E
    .byte $12               ; field_F
    .byte 1, $5D, 1, 1, 1, 1, 1, 1; field_10
    .word sMagicSnail       ; name
    .word $2A               ; field_1A
    .word $1C               ; field_1C
    .byte 0                 ; field_1E
    .byte $30               ; field_1F

Titanees:
    .import sTitanees

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $C                ; field_2
    .word $4882             ; field_3
    .word $28               ; field_5
    .word $36               ; field_7
    .word $8C8              ; field_9
    .byte $1E               ; field_B
    .byte $3A               ; field_C
    .byte $50               ; field_D
    .byte $3C               ; field_E
    .byte $A                ; field_F
    .byte $44, $44, $44, 1, 1, 1, 1, 1; field_10
    .word sTitanees         ; name
    .word $4E               ; field_1A
    .word $32               ; field_1C
    .byte 0                 ; field_1E
    .byte $33               ; field_1F

Giegue:
    .import sGiegue

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $1C23             ; field_3
    .word $3C00             ; field_5
    .word $F                ; field_7
    .word $814              ; field_9
    .byte $14               ; field_B
    .byte $64               ; field_C
    .byte $E                ; field_D
    .byte $A                ; field_E
    .byte $17               ; field_F
    .byte 8, 8, 8, 8, 8, 8, 8, 8; field_10
    .word sGiegue           ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $24               ; field_1F

Eagle:
    .import sEagle

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4C2D             ; field_3
    .word 0                 ; field_5
    .word $4020             ; field_7
    .word $42C              ; field_9
    .byte $14               ; field_B
    .byte $3C               ; field_C
    .byte $1E               ; field_D
    .byte $14               ; field_E
    .byte $28               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sEagle            ; name
    .word $24               ; field_1A
    .word $1E               ; field_1C
    .byte 0                 ; field_1E
    .byte $35               ; field_1F

Wolf:
    .import sWolf

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4432             ; field_3
    .word 0                 ; field_5
    .word $1E               ; field_7
    .word $42E              ; field_9
    .byte $19               ; field_B
    .byte $1E               ; field_C
    .byte $1E               ; field_D
    .byte $1E               ; field_E
    .byte $1E               ; field_F
    .byte 3, 3, 3, 3, 3, 3, 3, 3; field_10
    .word sWolf             ; name
    .word $22               ; field_1A
    .word $1F               ; field_1C
    .byte 0                 ; field_1E
    .byte $36               ; field_1F

Seagull:
    .import sSeagull

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4C5A             ; field_3
    .word 0                 ; field_5
    .word $2044             ; field_7
    .word $45A              ; field_9
    .byte $32               ; field_B
    .byte $46               ; field_C
    .byte $28               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte $4B, $4C, 1, $53, 1, 1, 1, 1; field_10
    .word sSeagull          ; name
    .word $64               ; field_1A
    .word $2C               ; field_1C
    .byte 0                 ; field_1E
    .byte $37               ; field_1F

Alligator:
    .import sAlligator

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $401E             ; field_3
    .word 0                 ; field_5
    .word $12               ; field_7
    .word $416              ; field_9
    .byte $A                ; field_B
    .byte $F                ; field_C
    .byte $A                ; field_D
    .byte $F                ; field_E
    .byte 5                 ; field_F
    .byte $5D, $5D, 1, 1, 1, 1, 1, 1; field_10
    .word sAlligator        ; name
    .word $15               ; field_1A
    .word $12               ; field_1C
    .byte 0                 ; field_1E
    .byte $31               ; field_1F

EnergyRobot:
    .import sEnergyRobot

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $A050             ; field_3
    .word 0                 ; field_5
    .word $43C              ; field_7
    .word $C5A              ; field_9
    .byte $14               ; field_B
    .byte $14               ; field_C
    .byte $28               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $53, $2E, $2E, $2E, $2E, 1, 1, 1; field_10
    .word sEnergyRobot      ; name
    .word $CA               ; field_1A
    .word $46               ; field_1C
    .byte 0                 ; field_1E
    .byte $2C               ; field_1F

TheFish:
    .import sTheFish

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $62               ; field_2
    .word $5841             ; field_3
    .word 0                 ; field_5
    .word $26               ; field_7
    .word $83C              ; field_9
    .byte $2D               ; field_B
    .byte $1E               ; field_C
    .byte $14               ; field_D
    .byte $28               ; field_E
    .byte $28               ; field_F
    .byte 2, 2, 2, 2, 2, 2, 2, 2; field_10
    .word sTheFish          ; name
    .word $8C               ; field_1A
    .word $B4               ; field_1C
    .byte 0                 ; field_1E
    .byte $2E               ; field_1F

Fugitive:
    .import sFugitive

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $543C             ; field_3
    .word 0                 ; field_5
    .word $20               ; field_7
    .word $2D               ; field_9
    .byte $14               ; field_B
    .byte $16               ; field_C
    .byte 6                 ; field_D
    .byte $12               ; field_E
    .byte 8                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sFugitive         ; name
    .word $3C               ; field_1A
    .word $15E              ; field_1C
    .byte 0                 ; field_1E
    .byte $35               ; field_1F

BBsBoss:
    .import sBBsBoss

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $586C             ; field_3
    .word 0                 ; field_5
    .word $39               ; field_7
    .word $33               ; field_9
    .byte $32               ; field_B
    .byte $51               ; field_C
    .byte $12               ; field_D
    .byte $36               ; field_E
    .byte $24               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sBBsBoss          ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $37               ; field_1F

Barbot:
    .import sBarbot

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $D6               ; field_2
    .word $503C             ; field_3
    .word $28               ; field_5
    .word $18               ; field_7
    .word $C24              ; field_9
    .byte $1E               ; field_B
    .byte $23               ; field_C
    .byte $23               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, 1, 1, $15, 1, 1, 1, 1; field_10
    .word sBarbot           ; name
    .word $20               ; field_1A
    .word $2D               ; field_1C
    .byte 0                 ; field_1E
    .byte $31               ; field_1F

Nancy:
    .import sNancy

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $B4               ; field_2
    .word $5078             ; field_3
    .word $3C               ; field_5
    .word $3E               ; field_7
    .word $CAA              ; field_9
    .byte $32               ; field_B
    .byte $48               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $6B, 1, $36, $F, $6B, 1, 1, 1; field_10
    .word sNancy            ; name
    .word $44               ; field_1A
    .word $32               ; field_1C
    .byte 0                 ; field_1E
    .byte $32               ; field_1F

Starman:
    .import sStarman

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $5050             ; field_3
    .word $32               ; field_5
    .word $2D               ; field_7
    .word $850              ; field_9
    .byte $1E               ; field_B
    .byte $28               ; field_C
    .byte $3C               ; field_D
    .byte $28               ; field_E
    .byte $23               ; field_F
    .byte $12, $12, $38, 1, 1, $53, $53, $15; field_10
    .word sStarman          ; name
    .word $A5               ; field_1A
    .word $44               ; field_1C
    .byte $49               ; field_1E
    .byte $33               ; field_1F

Ullrich:
    .import sUllrich

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $10               ; field_2
    .word $5828             ; field_3
    .word $3C               ; field_5
    .word $2012             ; field_7
    .word $828              ; field_9
    .byte $28               ; field_B
    .byte $1E               ; field_C
    .byte $1E               ; field_D
    .byte $A                ; field_E
    .byte $14               ; field_F
    .byte $17, $17, $17, $17, $17, $17, $17, $17; field_10
    .word sUllrich          ; name
    .word $41               ; field_1A
    .word $32               ; field_1C
    .byte 0                 ; field_1E
    .byte $36               ; field_1F

Cerebrum:
    .import sCerebrum

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $54C8             ; field_3
    .word $B4               ; field_5
    .word $3C               ; field_7
    .word $918              ; field_9
    .byte $78               ; field_B
    .byte $78               ; field_C
    .byte $50               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $12, $13, $82, $A, $36, $30, $38, $18; field_10
    .word sCerebrum         ; name
    .word $59               ; field_1A
    .word $50               ; field_1C
    .byte 0                 ; field_1E
    .byte $38               ; field_1F

Mook:
    .import sMook

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 4                 ; field_2
    .word $5055             ; field_3
    .word $50               ; field_5
    .word $32               ; field_7
    .word $86E              ; field_9
    .byte $32               ; field_B
    .byte $28               ; field_C
    .byte $64               ; field_D
    .byte $1E               ; field_E
    .byte $1E               ; field_F
    .byte $C, $D, $42, $29, $1D, $31, $44, $45; field_10
    .word sMook             ; name
    .word $A6               ; field_1A
    .word $2A               ; field_1C
    .byte 0                 ; field_1E
    .byte $34               ; field_1F

Armor:
    .import sArmor

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $5078             ; field_3
    .word $2864             ; field_5
    .word $1044             ; field_7
    .word $896              ; field_9
    .byte $32               ; field_B
    .byte $3C               ; field_C
    .byte $32               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, $18, 1, 1, 1, 1, 1, 1; field_10
    .word sArmor            ; name
    .word $C8               ; field_1A
    .word $12C              ; field_1C
    .byte 0                 ; field_1E
    .byte $2F               ; field_1F

Woodoh:
    .import sWoodoh

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $24               ; field_2
    .word $5028             ; field_3
    .word 0                 ; field_5
    .word $14               ; field_7
    .word $826              ; field_9
    .byte $19               ; field_B
    .byte $19               ; field_C
    .byte $1E               ; field_D
    .byte $28               ; field_E
    .byte $14               ; field_F
    .byte $4A, $4A, $4A, $62, 1, 1, 1, 1; field_10
    .word sWoodoh           ; name
    .word $28               ; field_1A
    .word $26               ; field_1C
    .byte 0                 ; field_1E
    .byte $30               ; field_1F

Wally:
    .import sWally

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $8814             ; field_3
    .word 0                 ; field_5
    .word 8                 ; field_7
    .word $C                ; field_9
    .byte 6                 ; field_B
    .byte 4                 ; field_C
    .byte 1                 ; field_D
    .byte 1                 ; field_E
    .byte 2                 ; field_F
    .byte $28, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sWally            ; name
    .word 5                 ; field_1A
    .word $14               ; field_1C
    .byte 0                 ; field_1E
    .byte $39               ; field_1F

TheHippie:
    .import sTheHippie

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $7019             ; field_3
    .word 0                 ; field_5
    .word 8                 ; field_7
    .word $E                ; field_9
    .byte 3                 ; field_B
    .byte 6                 ; field_C
    .byte 1                 ; field_D
    .byte 1                 ; field_E
    .byte 3                 ; field_F
    .byte $3C, $50, $28, 1, 1, 1, 1, 1; field_10
    .word sTheHippie        ; name
    .word 6                 ; field_1A
    .word $23               ; field_1C
    .byte 0                 ; field_1E
    .byte $39               ; field_1F

BagLady:
    .import sBagLady

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $745A             ; field_3
    .word 0                 ; field_5
    .word $C                ; field_7
    .word $26               ; field_9
    .byte $14               ; field_B
    .byte $28               ; field_C
    .byte $1E               ; field_D
    .byte $1E               ; field_E
    .byte $A                ; field_F
    .byte 2, 2, 2, $22, 1, 1, 1, 1; field_10
    .word sBagLady          ; name
    .word $3F               ; field_1A
    .word $96               ; field_1C
    .byte $3F               ; field_1E
    .byte $3A               ; field_1F

BBGang:
    .import sBBGang

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $8C50             ; field_3
    .word 0                 ; field_5
    .word $3C               ; field_7
    .word $7D               ; field_9
    .byte $28               ; field_B
    .byte $28               ; field_C
    .byte $14               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte $23, $23, 2, 2, 1, 1, 1, 1; field_10
    .word sBBGang           ; name
    .word $48               ; field_1A
    .word $3C               ; field_1C
    .byte $22               ; field_1E
    .byte $3B               ; field_1F

DrDistorto:
    .import sDrDistorto

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $743C             ; field_3
    .word 0                 ; field_5
    .word $26               ; field_7
    .word $30               ; field_9
    .byte $19               ; field_B
    .byte $2D               ; field_C
    .byte $1E               ; field_D
    .byte $1E               ; field_E
    .byte $1E               ; field_F
    .byte $48, $28, 1, 1, 1, 1, 1, 1; field_10
    .word sDrDistorto       ; name
    .word $2D               ; field_1A
    .word $28               ; field_1C
    .byte 0                 ; field_1E
    .byte $3F               ; field_1F

GangZombie1:
    .import sGangZombie

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $840C             ; field_3
    .word $6A               ; field_5
    .word $D                ; field_7
    .word $D                ; field_9
    .byte 9                 ; field_B
    .byte 9                 ; field_C
    .byte 2                 ; field_D
    .byte 6                 ; field_E
    .byte 4                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sGangZombie       ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $3F               ; field_1F

GangZombie2:
    .import sGangZombie

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $7422             ; field_3
    .word 0                 ; field_5
    .word $12               ; field_7
    .word $1014             ; field_9
    .byte 8                 ; field_B
    .byte 8                 ; field_C
    .byte 5                 ; field_D
    .byte $28               ; field_E
    .byte 5                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sGangZombie       ; name
    .word $C                ; field_1A
    .word $20               ; field_1C
    .byte 0                 ; field_1E
    .byte $3C               ; field_1F

PseudoZombi:
    .import sPseudoZombi

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $841E             ; field_3
    .word 0                 ; field_5
    .word $10               ; field_7
    .word $1010             ; field_9
    .byte $A                ; field_B
    .byte $C                ; field_C
    .byte 5                 ; field_D
    .byte $28               ; field_E
    .byte 7                 ; field_F
    .byte 4, 3, 5, 4, 3, 5, 4, 3; field_10
    .word sPseudoZombi      ; name
    .word 8                 ; field_1A
    .word $C                ; field_1C
    .byte 0                 ; field_1E
    .byte $3C               ; field_1F

Crow:
    .import sCrow

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $8816             ; field_3
    .word 0                 ; field_5
    .word $2008             ; field_7
    .word $40C              ; field_9
    .byte 8                 ; field_B
    .byte $C                ; field_C
    .byte 1                 ; field_D
    .byte 5                 ; field_E
    .byte $A                ; field_F
    .byte $4B, $4C, $4C, 1, 1, 1, 1, 1; field_10
    .word sCrow             ; name
    .word 3                 ; field_1A
    .word 4                 ; field_1C
    .byte 0                 ; field_1E
    .byte $3E               ; field_1F

Snake:
    .import sSnake

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $8412             ; field_3
    .word 0                 ; field_5
    .word 6                 ; field_7
    .word $408              ; field_9
    .byte 5                 ; field_B
    .byte $A                ; field_C
    .byte 1                 ; field_D
    .byte $A                ; field_E
    .byte 1                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sSnake            ; name
    .word 2                 ; field_1A
    .word 8                 ; field_1C
    .byte $3E               ; field_1E
    .byte $3D               ; field_1F

Hyena:
    .import sHyena

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $901E             ; field_3
    .word 0                 ; field_5
    .word $A                ; field_7
    .word $410              ; field_9
    .byte $A                ; field_B
    .byte $16               ; field_C
    .byte $12               ; field_D
    .byte $A                ; field_E
    .byte 5                 ; field_F
    .byte $4F, $4F, $4F, $48, 3, 3, 3, 3; field_10
    .word sHyena            ; name
    .word $C                ; field_1A
    .word $14               ; field_1C
    .byte 0                 ; field_1E
    .byte $3E               ; field_1F

Cougar:
    .import sCougar

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $9C2A             ; field_3
    .word 0                 ; field_5
    .word $1C               ; field_7
    .word $428              ; field_9
    .byte $23               ; field_B
    .byte $4E               ; field_C
    .byte $1E               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte 4, 4, 4, 4, 4, 4, 4, 4; field_10
    .word sCougar           ; name
    .word $20               ; field_1A
    .word $19               ; field_1C
    .byte 0                 ; field_1E
    .byte $3D               ; field_1F

Centipede:
    .import sCentipede

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 1                 ; field_2
    .word $840C             ; field_3
    .word $2400             ; field_5
    .word 4                 ; field_7
    .word $40C              ; field_9
    .byte 3                 ; field_B
    .byte $11               ; field_C
    .byte $28               ; field_D
    .byte $14               ; field_E
    .byte 1                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sCentipede        ; name
    .word 1                 ; field_1A
    .word 1                 ; field_1C
    .byte 0                 ; field_1E
    .byte $3A               ; field_1F

DustBall:
    .import sDustBall

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $944E             ; field_3
    .word 0                 ; field_5
    .word $828              ; field_7
    .word $1C78             ; field_9
    .byte $1E               ; field_B
    .byte $32               ; field_C
    .byte $32               ; field_D
    .byte $3C               ; field_E
    .byte $14               ; field_F
    .byte $4F, $4F, $4F, $4F, $4F, $4F, $4F, $4F; field_10
    .word sDustBall         ; name
    .word $50               ; field_1A
    .word $64               ; field_1C
    .byte 0                 ; field_1E
    .byte $3B               ; field_1F

Fly:
    .import sFly

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 1                 ; field_2
    .word $A00A             ; field_3
    .word 0                 ; field_5
    .word $8001             ; field_7
    .word $428              ; field_9
    .byte $20               ; field_B
    .byte $28               ; field_C
    .byte $A                ; field_D
    .byte 1                 ; field_E
    .byte $28               ; field_F
    .byte $49, $49, $49, 1, $48, 1, 1, 1; field_10
    .word sFly              ; name
    .word 1                 ; field_1A
    .word 1                 ; field_1C
    .byte 0                 ; field_1E
    .byte $2B               ; field_1F

Spider:
    .import sSpider

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 1                 ; field_2
    .word $A850             ; field_3
    .word 0                 ; field_5
    .word $2D               ; field_7
    .word $45F              ; field_9
    .byte $3C               ; field_B
    .byte $50               ; field_C
    .byte $50               ; field_D
    .byte $3C               ; field_E
    .byte $F                ; field_F
    .byte $49, $3D, $3D, $49, $49, 1, 1, $23; field_10
    .word sSpider           ; name
    .word $30               ; field_1A
    .word $28               ; field_1C
    .byte 0                 ; field_1E
    .byte $2A               ; field_1F

Scorpion:
    .import sScorpion

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 1                 ; field_2
    .word $A44B             ; field_3
    .word 0                 ; field_5
    .word $3C               ; field_7
    .word $450              ; field_9
    .byte $28               ; field_B
    .byte $3C               ; field_C
    .byte $50               ; field_D
    .byte $3C               ; field_E
    .byte $F                ; field_F
    .byte $3D, $3D, $3D, 3, 3, 3, 3, 3; field_10
    .word sScorpion         ; name
    .word $32               ; field_1A
    .word $24               ; field_1C
    .byte 0                 ; field_1E
    .byte $3D               ; field_1F

Rope:
    .import sRope

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $AC50             ; field_3
    .word 0                 ; field_5
    .word $23               ; field_7
    .word $1432             ; field_9
    .byte $32               ; field_B
    .byte $1E               ; field_C
    .byte 5                 ; field_D
    .byte $50               ; field_E
    .byte $50               ; field_F
    .byte $47, $47, 1, 1, 1, 1, 1, 1; field_10
    .word sRope             ; name
    .word $30               ; field_1A
    .word $50               ; field_1C
    .byte $28               ; field_1E
    .byte $3F               ; field_1F

FireBall:
    .import sFireBall

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $C0               ; field_2
    .word $AC3A             ; field_3
    .word $2032             ; field_5
    .word $4018             ; field_7
    .word $83A              ; field_9
    .byte $23               ; field_B
    .byte $28               ; field_C
    .byte $1E               ; field_D
    .byte $32               ; field_E
    .byte $1E               ; field_F
    .byte 9, 9, 9, 9, 9, 9, 9, 9; field_10
    .word sFireBall         ; name
    .word $3D               ; field_1A
    .word $23               ; field_1C
    .byte 0                 ; field_1E
    .byte $39               ; field_1F

Watcher:
    .import sWatcher

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $E41E             ; field_3
    .word 0                 ; field_5
    .word $10               ; field_7
    .word $818              ; field_9
    .byte $19               ; field_B
    .byte $1E               ; field_C
    .byte $14               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sWatcher          ; name
    .word $1E               ; field_1A
    .word $14               ; field_1C
    .byte 0                 ; field_1E
    .byte $27               ; field_1F

Groucho:
    .import sGroucho

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $A423             ; field_3
    .word 0                 ; field_5
    .word $400C             ; field_7
    .word $828              ; field_9
    .byte $14               ; field_B
    .byte $14               ; field_C
    .byte $14               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte $51, $51, $51, $51, 1, 1, 1, 1; field_10
    .word sGroucho          ; name
    .word 3                 ; field_1A
    .word $C                ; field_1C
    .byte 0                 ; field_1E
    .byte $26               ; field_1F

Ghost:
    .import sGhost

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $A414             ; field_3
    .word 0                 ; field_5
    .word $400C             ; field_7
    .word $1C18             ; field_9
    .byte 6                 ; field_B
    .byte $16               ; field_C
    .byte 5                 ; field_D
    .byte $28               ; field_E
    .byte $F                ; field_F
    .byte $48, $48, 1, 1, 1, 1, 1, 1; field_10
    .word sGhost            ; name
    .word 5                 ; field_1A
    .word $A                ; field_1C
    .byte 0                 ; field_1E
    .byte $3A               ; field_1F

LilSaucer:
    .import sLilSaucer

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $D6               ; field_2
    .word $A420             ; field_3
    .word $14               ; field_5
    .word $8014             ; field_7
    .word $C1E              ; field_9
    .byte $F                ; field_B
    .byte $14               ; field_C
    .byte $12               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, $36, 1, 1, $38, 1, 1, 1; field_10
    .word sLilSaucer        ; name
    .word $1E               ; field_1A
    .word $16               ; field_1C
    .byte 0                 ; field_1E
    .byte $28               ; field_1F

MrBat:
    .import sMrBat

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $AC14             ; field_3
    .word 0                 ; field_5
    .word $8008             ; field_7
    .word $40A              ; field_9
    .byte 8                 ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte 4                 ; field_E
    .byte 8                 ; field_F
    .byte $54, $54, $54, 1, 1, 1, 1, 1; field_10
    .word sMrBat            ; name
    .word 4                 ; field_1A
    .word 7                 ; field_1C
    .byte 0                 ; field_1E
    .byte $29               ; field_1F

StarmanJr:
    .import sStarmanJr

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $F6               ; field_2
    .word $A034             ; field_3
    .word $10               ; field_5
    .word $4020             ; field_7
    .word $834              ; field_9
    .byte $23               ; field_B
    .byte $14               ; field_C
    .byte $12               ; field_D
    .byte $1E               ; field_E
    .byte $1E               ; field_F
    .byte $12, $12, $15, 1, 1, 1, 1, $53; field_10
    .word sStarmanJr        ; name
    .word $1E               ; field_1A
    .word 5                 ; field_1C
    .byte 0                 ; field_1E
    .byte $3C               ; field_1F

Skunk:
    .import sSkunk

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $A828             ; field_3
    .word 0                 ; field_5
    .word $1A               ; field_7
    .word $430              ; field_9
    .byte $34               ; field_B
    .byte $1E               ; field_C
    .byte $1E               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte 1, 1, 1, 1, $46, 1, 1, 1; field_10
    .word sSkunk            ; name
    .word $20               ; field_1A
    .word $20               ; field_1C
    .byte 0                 ; field_1E
    .byte $2D               ; field_1F

Shroudley:
    .import sShroudley

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $485A             ; field_3
    .word 0                 ; field_5
    .word $2A               ; field_7
    .word $1080             ; field_9
    .byte $19               ; field_B
    .byte $23               ; field_C
    .byte $37               ; field_D
    .byte $46               ; field_E
    .byte $A                ; field_F
    .byte $34, $34, 7, 1, 1, 1, 1, 1; field_10
    .word sShroudley        ; name
    .word $3A               ; field_1A
    .word $22               ; field_1C
    .byte 0                 ; field_1E
    .byte $34               ; field_1F

Rat:
    .import sRat

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $A80A             ; field_3
    .word 0                 ; field_5
    .word 4                 ; field_7
    .word $408              ; field_9
    .byte 6                 ; field_B
    .byte 5                 ; field_C
    .byte 1                 ; field_D
    .byte 3                 ; field_E
    .byte 7                 ; field_F
    .byte $23, $23, $23, 3, 3, 3, 3, 3; field_10
    .word sRat              ; name
    .word 3                 ; field_1A
    .word 2                 ; field_1C
    .byte 0                 ; field_1E
    .byte $3E               ; field_1F

Bomber:
    .import sBomber

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $C4               ; field_2
    .word $A43C             ; field_3
    .word 0                 ; field_5
    .word $A                ; field_7
    .word $C40              ; field_9
    .byte $14               ; field_B
    .byte $23               ; field_C
    .byte $1E               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $46, $46, $46, $10, $10, 1, 1, 1; field_10
    .word sBomber           ; name
    .word $38               ; field_1A
    .word $20               ; field_1C
    .byte $23               ; field_1E
    .byte $3B               ; field_1F

Doll1:
    .import sDoll

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B004             ; field_3
    .word 0                 ; field_5
    .word 3                 ; field_7
    .word $1405             ; field_9
    .byte 1                 ; field_B
    .byte 5                 ; field_C
    .byte 3                 ; field_D
    .byte 3                 ; field_E
    .byte 3                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sDoll             ; name
    .word 1                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $38               ; field_1F

Doll2:
    .import sDoll

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $C40C             ; field_3
    .word 0                 ; field_5
    .word $4004             ; field_7
    .word $1405             ; field_9
    .byte 3                 ; field_B
    .byte 5                 ; field_C
    .byte 1                 ; field_D
    .byte 1                 ; field_E
    .byte 1                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sDoll             ; name
    .word $A                ; field_1A
    .word $32               ; field_1C
    .byte 0                 ; field_1E
    .byte $38               ; field_1F

Lamp:
    .import sLamp

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $D406             ; field_3
    .word 0                 ; field_5
    .word $4003             ; field_7
    .word $1405             ; field_9
    .byte 1                 ; field_B
    .byte 5                 ; field_C
    .byte 3                 ; field_D
    .byte 3                 ; field_E
    .byte 3                 ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sLamp             ; name
    .word 1                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $38               ; field_1F

BionicCenti1:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sBionicCenti      ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

BionicCenti2:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sBionicCenti      ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

BionicCenti3:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 1                 ; field_2
    .word $8823             ; field_3
    .word $2400             ; field_5
    .word $10               ; field_7
    .word $420              ; field_9
    .byte $F                ; field_B
    .byte $1C               ; field_C
    .byte $3C               ; field_D
    .byte $1E               ; field_E
    .byte $1E               ; field_F
    .byte 1, $3D, $3D, 1, 1, 1, 1, 1; field_10
    .word sBionicCenti      ; name
    .word $12               ; field_1A
    .word $E                ; field_1C
    .byte 0                 ; field_1E
    .byte $3A               ; field_1F

BionicScorp:
    .import sBionicScorp

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 1                 ; field_2
    .word $A864             ; field_3
    .word 0                 ; field_5
    .word $3C               ; field_7
    .word $496              ; field_9
    .byte $28               ; field_B
    .byte $46               ; field_C
    .byte $50               ; field_D
    .byte $3C               ; field_E
    .byte $3C               ; field_F
    .byte $3D, $3E, $3D, $3E, 1, 1, 1, 1; field_10
    .word sBionicScorp      ; name
    .word $3D               ; field_1A
    .word $38               ; field_1C
    .byte 0                 ; field_1E
    .byte $3D               ; field_1F

RedSnake1:
    .import sRedSnake

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sRedSnake         ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

RedSnake2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sRedSnake         ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

RedSnake3:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $8496             ; field_3
    .word 0                 ; field_5
    .word $32               ; field_7
    .word $4A0              ; field_9
    .byte $5A               ; field_B
    .byte $64               ; field_C
    .byte $3C               ; field_D
    .byte $3C               ; field_E
    .byte $28               ; field_F
    .byte $48, $48, $48, $48, $48, $48, 1, 1; field_10
    .word sRedSnake         ; name
    .word $1F4              ; field_1A
    .word $14A              ; field_1C
    .byte $2F               ; field_1E
    .byte $3D               ; field_1F

LoneWolf:
    .import sLoneWolf

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $20               ; field_2
    .word $4850             ; field_3
    .word 0                 ; field_5
    .word $3C               ; field_7
    .word $496              ; field_9
    .byte $32               ; field_B
    .byte $3C               ; field_C
    .byte $1E               ; field_D
    .byte $1E               ; field_E
    .byte $3C               ; field_F
    .byte 3, 3, 3, 3, 3, 3, 3, 3; field_10
    .word sLoneWolf         ; name
    .word $64               ; field_1A
    .word $29               ; field_1C
    .byte 0                 ; field_1E
    .byte $36               ; field_1F

PolarBear:
    .import sPolarBear

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $20               ; field_2
    .word $2464             ; field_3
    .word 0                 ; field_5
    .word $34               ; field_7
    .word $4B4              ; field_9
    .byte $1E               ; field_B
    .byte $28               ; field_C
    .byte $1E               ; field_D
    .byte $28               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 4, 5, $4F, 1, 1; field_10
    .word sPolarBear        ; name
    .word $A0               ; field_1A
    .word $32               ; field_1C
    .byte 0                 ; field_1E
    .byte $2B               ; field_1F

Rattlesnake1:
    .import sRattlesnake

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $A046             ; field_3
    .word $64               ; field_5
    .word $41               ; field_7
    .word $43C              ; field_9
    .byte $37               ; field_B
    .byte $2D               ; field_C
    .byte $1E               ; field_D
    .byte $1E               ; field_E
    .byte $2D               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sRattlesnake      ; name
    .word $60               ; field_1A
    .word $25               ; field_1C
    .byte 0                 ; field_1E
    .byte $3C               ; field_1F

Rattlesnake2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $A046             ; field_3
    .word $64               ; field_5
    .word $3C               ; field_7
    .word $437              ; field_9
    .byte $28               ; field_B
    .byte $37               ; field_C
    .byte $28               ; field_D
    .byte $28               ; field_E
    .byte $3C               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sRattlesnake      ; name
    .word $62               ; field_1A
    .word $22               ; field_1C
    .byte 0                 ; field_1E
    .byte $2C               ; field_1F

Rattlesnake3:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $5F               ; field_3
    .word $64               ; field_5
    .word $46               ; field_7
    .word $5A               ; field_9
    .byte $32               ; field_B
    .byte $32               ; field_C
    .byte $1E               ; field_D
    .byte $1E               ; field_E
    .byte $28               ; field_F
    .byte $37, $3D, $3D, 1, 1, 1, 1, 1; field_10
    .word sRattlesnake      ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

Rattlesnake4:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sRattlesnake      ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

Rattlesnake5:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 8                 ; field_2
    .word $8864             ; field_3
    .word $2C00             ; field_5
    .word $41               ; field_7
    .word $480              ; field_9
    .byte $3C               ; field_B
    .byte $50               ; field_C
    .byte $50               ; field_D
    .byte $3C               ; field_E
    .byte $14               ; field_F
    .byte $5D, $5D, $5D, 7, 1, 1, 1, 1; field_10
    .word sRattlesnake      ; name
    .word $39               ; field_1A
    .word $36               ; field_1C
    .byte 0                 ; field_1E
    .byte $3D               ; field_1F

Tarantula:
    .import sTarantula

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 1                 ; field_2
    .word $A478             ; field_3
    .word 0                 ; field_5
    .word $54               ; field_7
    .word $4A0              ; field_9
    .byte $46               ; field_B
    .byte $50               ; field_C
    .byte $50               ; field_D
    .byte $3C               ; field_E
    .byte $F                ; field_F
    .byte $49, $49, $3D, $3D, $3D, $3D, 1, 1; field_10
    .word sTarantula        ; name
    .word $CD               ; field_1A
    .word $55               ; field_1C
    .byte 0                 ; field_1E
    .byte $2A               ; field_1F

Crocodile:
    .import sCrocodile

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4478             ; field_3
    .word 0                 ; field_5
    .word $50               ; field_7
    .word $496              ; field_9
    .byte $28               ; field_B
    .byte $1E               ; field_C
    .byte $28               ; field_D
    .byte $50               ; field_E
    .byte $14               ; field_F
    .byte $5D, $5D, 1, 1, 1, 1, 1, 1; field_10
    .word sCrocodile        ; name
    .word $AC               ; field_1A
    .word $58               ; field_1C
    .byte 0                 ; field_1E
    .byte $31               ; field_1F

Buffalo1:
    .import sBuffalo

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $A05A             ; field_3
    .word $64               ; field_5
    .word $46               ; field_7
    .word $43C              ; field_9
    .byte $3C               ; field_B
    .byte $50               ; field_C
    .byte $50               ; field_D
    .byte $50               ; field_E
    .byte $50               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sBuffalo          ; name
    .word $4E               ; field_1A
    .word $24               ; field_1C
    .byte 0                 ; field_1E
    .byte $2C               ; field_1F

Buffalo2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $3096             ; field_3
    .word 0                 ; field_5
    .word $44               ; field_7
    .word $496              ; field_9
    .byte $3C               ; field_B
    .byte $2B               ; field_C
    .byte $28               ; field_D
    .byte $28               ; field_E
    .byte $14               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sBuffalo          ; name
    .word $67               ; field_1A
    .word $5F               ; field_1C
    .byte 0                 ; field_1E
    .byte $2C               ; field_1F

BionicBat1:
    .import sBionicBat

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sBionicBat        ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

BionicBat2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $A032             ; field_3
    .word 0                 ; field_5
    .word $8022             ; field_7
    .word $440              ; field_9
    .byte $14               ; field_B
    .byte $23               ; field_C
    .byte $32               ; field_D
    .byte $3C               ; field_E
    .byte $1E               ; field_F
    .byte $49, $49, $54, $54, 1, 1, 1, $3E; field_10
    .word sBionicBat        ; name
    .word $28               ; field_1A
    .word $22               ; field_1C
    .byte 0                 ; field_1E
    .byte $29               ; field_1F

StrayDog:
    .import sStrayDog

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4C10             ; field_3
    .word $3000             ; field_5
    .word 8                 ; field_7
    .word $40A              ; field_9
    .byte 8                 ; field_B
    .byte $C                ; field_C
    .byte 2                 ; field_D
    .byte 5                 ; field_E
    .byte 8                 ; field_F
    .byte 3, 3, 3, 3, 3, 3, 3, 3; field_10
    .word sStrayDog         ; name
    .word 4                 ; field_1A
    .word $A                ; field_1C
    .byte $1B               ; field_1E
    .byte $36               ; field_1F

PsychoCar:
    .import sPsychoCar

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $4428             ; field_3
    .word 0                 ; field_5
    .word $12               ; field_7
    .word $1828             ; field_9
    .byte $2D               ; field_B
    .byte $28               ; field_C
    .byte $23               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 6, $32, 6, 6, 6, 6, 6, 6; field_10
    .word sPsychoCar        ; name
    .word $3D               ; field_1A
    .word $2D               ; field_1C
    .byte 0                 ; field_1E
    .byte $2E               ; field_1F

PsychoTruck:
    .import sPsychoTruck

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $243A             ; field_3
    .word 0                 ; field_5
    .word $14               ; field_7
    .word $1828             ; field_9
    .byte $1E               ; field_B
    .byte $20               ; field_C
    .byte $23               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 6, 6, $32, $32, 6, 6, 6, $32; field_10
    .word sPsychoTruck      ; name
    .word $22               ; field_1A
    .word $1B               ; field_1C
    .byte 0                 ; field_1E
    .byte $26               ; field_1F

ManiacTruck:
    .import sManiacTruck

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $2C50             ; field_3
    .word 0                 ; field_5
    .word $22               ; field_7
    .word $1830             ; field_9
    .byte $2D               ; field_B
    .byte $23               ; field_C
    .byte $23               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $32, $32, 6, 6, $32, 6, 6, $32; field_10
    .word sManiacTruck      ; name
    .word $4B               ; field_1A
    .word $3A               ; field_1C
    .byte 0                 ; field_1E
    .byte $26               ; field_1F

AlarmGhost:
    .import sAlarmGhost

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $AC64             ; field_3
    .word 0                 ; field_5
    .word $401E             ; field_7
    .word $1CA0             ; field_9
    .byte $32               ; field_B
    .byte $5A               ; field_C
    .byte $32               ; field_D
    .byte $3C               ; field_E
    .byte $1E               ; field_F
    .byte $49, $49, $49, $49, 1, 1, 1, 1; field_10
    .word sAlarmGhost       ; name
    .word $50               ; field_1A
    .word $1B               ; field_1C
    .byte 0                 ; field_1E
    .byte $3A               ; field_1F

Foureyes1:
    .import sFoureyes

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sFoureyes         ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

Foureyes2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $F428             ; field_3
    .word 0                 ; field_5
    .word $2016             ; field_7
    .word $820              ; field_9
    .byte $14               ; field_B
    .byte $28               ; field_C
    .byte $14               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte $5D, $5D, $5D, 1, 1, 1, 1, 1; field_10
    .word sFoureyes         ; name
    .word $20               ; field_1A
    .word $1A               ; field_1C
    .byte 0                 ; field_1E
    .byte $27               ; field_1F

Dadseyes:
    .import sDadseyes

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $E428             ; field_3
    .word $400              ; field_5
    .word $2014             ; field_7
    .word $820              ; field_9
    .byte $14               ; field_B
    .byte $14               ; field_C
    .byte $14               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte $28, $28, $28, 1, 1, 1, 1, 1; field_10
    .word sDadseyes         ; name
    .word $23               ; field_1A
    .word $35               ; field_1C
    .byte 0                 ; field_1E
    .byte $27               ; field_1F

Momseyes:
    .import sMomseyes

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $E428             ; field_3
    .word $800              ; field_5
    .word $4018             ; field_7
    .word $814              ; field_9
    .byte $32               ; field_B
    .byte $32               ; field_C
    .byte $14               ; field_D
    .byte $14               ; field_E
    .byte $14               ; field_F
    .byte 2, 2, 2, 2, 2, 2, 2, 2; field_10
    .word sMomseyes         ; name
    .word $23               ; field_1A
    .word $22               ; field_1C
    .byte 0                 ; field_1E
    .byte $27               ; field_1F

SkyYddet1:
    .import sSkyYddet

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $48B4             ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sSkyYddet         ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $2F               ; field_1F

SkyYddet2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4CB4             ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sSkyYddet         ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $2F               ; field_1F

SkyYddet3:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $4C4A             ; field_3
    .word $4000             ; field_5
    .word $4018             ; field_7
    .word $832              ; field_9
    .byte $14               ; field_B
    .byte $1E               ; field_C
    .byte $14               ; field_D
    .byte $32               ; field_E
    .byte $14               ; field_F
    .byte $4F, $4F, $4F, $4F, $4F, $4F, 7, 7; field_10
    .word sSkyYddet         ; name
    .word $28               ; field_1A
    .word $17               ; field_1C
    .byte $49               ; field_1E
    .byte $2F               ; field_1F

GigaBorg1:
    .import sGigaBorg

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $2CB4             ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sGigaBorg         ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte $28               ; field_1F

GigaBorg2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $2CB4             ; field_3
    .word $50               ; field_5
    .word $64               ; field_7
    .word $CB4              ; field_9
    .byte $50               ; field_B
    .byte $3C               ; field_C
    .byte $50               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $12, $15, $12, $12, $13, $12, $12, $12; field_10
    .word sGigaBorg         ; name
    .word $62               ; field_1A
    .word $8F               ; field_1C
    .byte $25               ; field_1E
    .byte $28               ; field_1F

OmegaBorg:
    .import sOmegaBorg

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $28E6             ; field_3
    .word $96               ; field_5
    .word $96               ; field_7
    .word $CC8              ; field_9
    .byte $C8               ; field_B
    .byte $64               ; field_C
    .byte $5A               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $15, $13, $13, $A, $A, $83, 1, $E; field_10
    .word sOmegaBorg        ; name
    .word $B4               ; field_1A
    .word $CD               ; field_1C
    .byte 0                 ; field_1E
    .byte $28               ; field_1F

Scrapper:
    .import sScrapper

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $86               ; field_2
    .word $2046             ; field_3
    .word $1C1E             ; field_5
    .word $1A               ; field_7
    .word $C4C              ; field_9
    .byte $19               ; field_B
    .byte $14               ; field_C
    .byte $14               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $53, $53, 1, 1, 1, $12, $12, $12; field_10
    .word sScrapper         ; name
    .word $41               ; field_1A
    .word $26               ; field_1C
    .byte $25               ; field_1E
    .byte $27               ; field_1F

UltraBarbot:
    .import sUltraBarbot

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $D4               ; field_2
    .word $5850             ; field_3
    .word $32               ; field_5
    .word $36               ; field_7
    .word $C50              ; field_9
    .byte $1E               ; field_B
    .byte $32               ; field_C
    .byte $28               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, $15, 1, 1, 1, 1, 1, 1; field_10
    .word sUltraBarbot      ; name
    .word $DC               ; field_1A
    .word $57               ; field_1C
    .byte $26               ; field_1E
    .byte $31               ; field_1F

OmegaSaucer:
    .import sOmegaSaucer

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $A441             ; field_3
    .word $32               ; field_5
    .word $8C2A             ; field_7
    .word $C32              ; field_9
    .byte $14               ; field_B
    .byte $3C               ; field_C
    .byte $28               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $12, 1, $38, 1, 1, 1, 1, 1; field_10
    .word sOmegaSaucer      ; name
    .word $52               ; field_1A
    .word $39               ; field_1C
    .byte 0                 ; field_1E
    .byte $28               ; field_1F

Kelly:
    .import sKelly

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $86               ; field_2
    .word $5878             ; field_3
    .word $3450             ; field_5
    .word $50               ; field_7
    .word $C96              ; field_9
    .byte $32               ; field_B
    .byte $46               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $6B, $62, $31, 1, $6B, 1, 1, 1; field_10
    .word sKelly            ; name
    .word $66               ; field_1A
    .word $58               ; field_1C
    .byte 0                 ; field_1E
    .byte $32               ; field_1F

StarMiner:
    .import sStarMiner

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $A0C8             ; field_3
    .word 0                 ; field_5
    .word $8C               ; field_7
    .word $CC8              ; field_9
    .byte $64               ; field_B
    .byte $64               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $46, $10, $46, $10, $10, $10, $10, 1; field_10
    .word sStarMiner        ; name
    .word $D1               ; field_1A
    .word $8A               ; field_1C
    .byte $24               ; field_1E
    .byte $3B               ; field_1F

SuperEnergy:
    .import sSuperEnergy

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $84               ; field_2
    .word $A878             ; field_3
    .word 0                 ; field_5
    .word $432              ; field_7
    .word $C78              ; field_9
    .byte $1E               ; field_B
    .byte $23               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $2E, $2E, $2E, $2E, 1, 1, 1, 1; field_10
    .word sSuperEnergy      ; name
    .word $E6               ; field_1A
    .word $104              ; field_1C
    .byte 0                 ; field_1E
    .byte $2C               ; field_1F

Juana:
    .import sJuana

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $5D2C             ; field_3
    .word $38C8             ; field_5
    .word $C8               ; field_7
    .word $CFA              ; field_9
    .byte $C8               ; field_B
    .byte $78               ; field_C
    .byte $64               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $18, $83, $A, $6B, $B, $15, 1, 1; field_10
    .word sJuana            ; name
    .word $10E              ; field_1A
    .word $16A              ; field_1C
    .byte $49               ; field_1E
    .byte $32               ; field_1F

BlueStarman:
    .import sBlueStarman

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $5864             ; field_3
    .word $50               ; field_5
    .word $4A               ; field_7
    .word $878              ; field_9
    .byte $28               ; field_B
    .byte $2A               ; field_C
    .byte $3C               ; field_D
    .byte $32               ; field_E
    .byte $2D               ; field_F
    .byte $12, $13, $38, $53, $53, $15, 1, 1; field_10
    .word sBlueStarman      ; name
    .word $96               ; field_1A
    .word $5B               ; field_1C
    .byte 0                 ; field_1E
    .byte $33               ; field_1F

Rockoyle:
    .import sRockoyle

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 4                 ; field_2
    .word $3478             ; field_3
    .word $3C               ; field_5
    .word $4046             ; field_7
    .word $896              ; field_9
    .byte $3C               ; field_B
    .byte $41               ; field_C
    .byte $78               ; field_D
    .byte $1E               ; field_E
    .byte $64               ; field_F
    .byte $D, $40, $E, $F, 1, 1, 1, 1; field_10
    .word sRockoyle         ; name
    .word $A2               ; field_1A
    .word $5D               ; field_1C
    .byte 0                 ; field_1E
    .byte $29               ; field_1F

Titanian:
    .import sTitanian

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $C                ; field_2
    .word $4D40             ; field_3
    .word 0                 ; field_5
    .word $64               ; field_7
    .word $9A4              ; field_9
    .byte $3C               ; field_B
    .byte $46               ; field_C
    .byte $C8               ; field_D
    .byte $50               ; field_E
    .byte $19               ; field_F
    .byte $62, $62, $62, 1, 1, 1, 1, $3E; field_10
    .word sTitanian         ; name
    .word $B4               ; field_1A
    .word $82               ; field_1C
    .byte 0                 ; field_1E
    .byte $33               ; field_1F

OhMook:
    .import sOhMook

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $24               ; field_2
    .word $54A0             ; field_3
    .word $FA               ; field_5
    .word $3C               ; field_7
    .word $88C              ; field_9
    .byte $64               ; field_B
    .byte $41               ; field_C
    .byte $FA               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte $A, $D, $42, $4B, $2B, $1D, $31, $36; field_10
    .word sOhMook           ; name
    .word $AF               ; field_1A
    .word $6E               ; field_1C
    .byte 0                 ; field_1E
    .byte $34               ; field_1F

Zombie1:
    .import sZombie

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $B4               ; field_3
    .word $78               ; field_5
    .word $23               ; field_7
    .word $14               ; field_9
    .byte $32               ; field_B
    .byte 5                 ; field_C
    .byte 5                 ; field_D
    .byte $2D               ; field_E
    .byte $1E               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sZombie           ; name
    .word 0                 ; field_1A
    .word 0                 ; field_1C
    .byte 0                 ; field_1E
    .byte 0                 ; field_1F

Zombie2:

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $8846             ; field_3
    .word $32               ; field_5
    .word $32               ; field_7
    .word $1050             ; field_9
    .byte $2D               ; field_B
    .byte $30               ; field_C
    .byte $50               ; field_D
    .byte $3C               ; field_E
    .byte $F                ; field_F
    .byte $42, $42, $42, $4C, $4C, $4C, $4C, 1; field_10
    .word sZombie           ; name
    .word $30               ; field_1A
    .word $2B               ; field_1C
    .byte 0                 ; field_1E
    .byte $3C               ; field_1F

NastyZombie:
    .import sNastyZombie

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $80               ; field_2
    .word $785A             ; field_3
    .word 0                 ; field_5
    .word $3E               ; field_7
    .word $105A             ; field_9
    .byte $1E               ; field_B
    .byte $1E               ; field_C
    .byte $32               ; field_D
    .byte $3C               ; field_E
    .byte $14               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sNastyZombie      ; name
    .word $36               ; field_1A
    .word $3A               ; field_1C
    .byte 0                 ; field_1E
    .byte $3C               ; field_1F

SilverWolf:
    .import sSilverWolf

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $20               ; field_2
    .word $4850             ; field_3
    .word 0                 ; field_5
    .word $2C               ; field_7
    .word $44C              ; field_9
    .byte $28               ; field_B
    .byte $2A               ; field_C
    .byte $1E               ; field_D
    .byte $1E               ; field_E
    .byte $19               ; field_F
    .byte 3, 3, 3, 3, 3, 3, 3, 3; field_10
    .word sSilverWolf       ; name
    .word $42               ; field_1A
    .word $2B               ; field_1C
    .byte 0                 ; field_1E
    .byte $36               ; field_1F

R7037:
    .import sR7037

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $FE               ; field_2
    .word $13E8             ; field_3
    .word $1000             ; field_5
    .word $12C              ; field_7
    .word $E58              ; field_9
    .byte $64               ; field_B
    .byte $64               ; field_C
    .byte $28               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sR7037            ; name
    .word $CD               ; field_1A
    .word $47               ; field_1C
    .byte 0                 ; field_1E
    .byte $22               ; field_1F

GrizzlyBear:
    .import sGrizzlyBear

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $2954             ; field_3
    .word 0                 ; field_5
    .word $A0               ; field_7
    .word $554              ; field_9
    .byte $64               ; field_B
    .byte $64               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $19               ; field_F
    .byte 2, 2, 2, 4, 5, 2, 2, 7; field_10
    .word sGrizzlyBear      ; name
    .word $FA               ; field_1A
    .word $41               ; field_1C
    .byte 0                 ; field_1E
    .byte $2B               ; field_1F

R7038XX:
    .import sR7038XX

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte $F6               ; field_2
    .word $1FE8             ; field_3
    .word $1800             ; field_5
    .word $384              ; field_7
    .word $FE8              ; field_9
    .byte $3C               ; field_B
    .byte $3C               ; field_C
    .byte $3C               ; field_D
    .byte $64               ; field_E
    .byte $64               ; field_F
    .byte 1, 1, 1, 1, 1, 1, 1, 1; field_10
    .word sR7038XX          ; name
    .word $226              ; field_1A
    .word $B4               ; field_1C
    .byte 0                 ; field_1E
    .byte $22               ; field_1F

LastStarman:
    .import sLastStarman

    .byte 0                 ; field_0
    .byte 0                 ; field_1
    .byte 0                 ; field_2
    .word $5878             ; field_3
    .word $64               ; field_5
    .word $5A               ; field_7
    .word $88C              ; field_9
    .byte $46               ; field_B
    .byte $3C               ; field_C
    .byte $3C               ; field_D
    .byte $50               ; field_E
    .byte $32               ; field_F
    .byte $13, $13, $38, $15, 1, 1, $53, $53; field_10
    .word sLastStarman      ; name
    .word $14A              ; field_1A
    .word $185              ; field_1C
    .byte $49               ; field_1E
    .byte $33               ; field_1F

.export byte_168F40
byte_168F40:
    .byte $C, 0, 0, 0, $D, 0, 0, 0, $E, 0, 0, 0, 0, $D, 0
    .byte 0, 0, $E, 0, 0, 0, $B, $11, 0, 0, 8, $E, $14, $B
    .byte $11, 0, 0, 8, $12, 0, 0, 7, $11, 0, 0, 8, $E, $14
    .byte 0, 5, $D, $15, 0, 6, $B, $10, $15, 2, 9, $10, $17
    .byte $B, $10, 0, 0, 7, $C, $15, 0, $C, $15, 0, 0, $A
    .byte $12, 0, 0, 2, 7, $10, $15, 3, $C, $15, 0, 0, 8, $12
    .byte 0, 0, 5, $D, $15
; struc_168F98
                .byte $FF, 0, 0, 0, $FF, 0, $FF, 0, 3, $30
                .byte $3F, 0, $FF, 0, $FF, 0, $FF, 0, 2, $2C
                .byte $3F, 1, $3F, 2, $FF, 0, $FF, 0, 7, $2C
                .byte $2C, 0, $FF, 0, $FF, 0, $FF, 0, 2, $2B
                .byte $2C, 1, $2C, 2, $FF, 0, $FF, 0, 7, $2B
                .byte $30, 0, $FF, 0, $FF, 0, $FF, 0, 2, $2B
                .byte $30, 1, $30, 2, $FF, 0, $FF, 0, 7, $2B
                .byte $58, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3E
                .byte $24, 0, $FF, 0, $FF, 0, $FF, 0, 2, $2A
                .byte $25, 0, $FF, 0, $FF, 0, $FF, 0, 2, $4B
                .byte $26, 0, $FF, 0, $FF, 0, $FF, 0, 2, $28
                .byte $2D, 0, $FF, 0, $FF, 0, $FF, 0, 2, $26
                .byte $3B, 0, $FF, 0, $FF, 0, $FF, 0, 2, $27
                .byte $3B, 1, $3B, 2, $FF, 0, $FF, 0, 7, $27
                .byte $3B, 1, $3B, 2, $3B, 3, $FF, 0, $A, $27
                .byte $3B, 1, $3B, 2, $3B, 3, $3B, 4, $C, $27
                .byte $2B, 0, $FF, 0, $FF, 0, $FF, 0, 2, $3C
                .byte $2A, 0, $FF, 0, $FF, 0, $FF, 0, 2, $3C
                .byte 4, 0, $FF, 0, $FF, 0, $FF, 0, 0, $36
                .byte $E, 0, $FF, 0, $FF, 0, $FF, 0, 0, $30
                .byte $C, 0, $FF, 0, $FF, 0, $FF, 0, 1, $37
                .byte $2E, 1, $2E, 2, $FF, 0, $FF, 0, 8, $26
                .byte $2E, 1, $2E, 2, $2E, 3, $FF, 0, $B, $26
                .byte $17, 0, $FF, 0, $FF, 0, $FF, 0, 1, $39
                .byte $17, 1, $17, 2, $FF, 0, $FF, 0, 8, $39
                .byte $32, 1, $32, $82, $32, $83, $32, $84, $C, $21
                .byte $32, 1, $32, 2, $32, $83, $32, $84, $C, $21
                .byte $46, 0, $FF, 0, $FF, 0, $FF, 0, 2, $21
                .byte $3A, 0, $FF, 0, $FF, 0, $FF, 0, 2, $30
                .byte $3A, 1, $3A, 2, $FF, 0, $FF, 0, 7, $30
                .byte $1C, 0, $FF, 0, $FF, 0, $FF, 0, 2, $30
                .byte $1C, 0, $3A, 0, $FF, 0, $FF, 0, 7, $30
                .byte $3A, 1, $1C, 0, $3A, 2, $FF, 0, $A, $30
                .byte $3A, 1, $3A, 2, $1C, 0, $3A, 3, $C, $30
                .byte $10, 0, $FF, 0, $FF, 0, $FF, 0, 1, $31
                .byte $10, 0, $63, $80, $FF, 0, $FF, 0, 8, $31
                .byte 1, 0, $FF, 0, $FF, 0, $FF, 0, 0, $31
                .byte $23, 1, $23, $82, $23, $83, $FF, 0, $A, $36
                .byte $11, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3B
                .byte $11, 1, $11, 2, $FF, 0, $FF, 0, 8, $3B
                .byte $37, 0, $FF, 0, $FF, 0, $FF, 0, 2, $20
                .byte $60, 0, $FF, 0, $FF, 0, $FF, 0, 2, $20
                .byte $5F, 0, $37, 0, $60, 0, $FF, 0, $A, $20
                .byte $5F, 0, $FF, 0, $FF, 0, $FF, 0, 2, $20
                .byte $5E, 0, $FF, 0, $FF, 0, $FF, 0, 2, $20
                .byte $FF, 0, $38, 0, $FF, 0, $FF, 0, 4, $20
                .byte 2, 0, $FF, 0, $FF, 0, $FF, 0, 0, $36
                .byte $19, 0, $FF, 0, $FF, 0, $FF, 0, 2, $35
                .byte 5, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3D
                .byte $FF, 0, $14, 0, $FF, 0, $FF, 0, 3, $3A
                .byte $FF, 0, $14, 1, $14, 2, $FF, 0, $14, $3A
                .byte $FF, 0, $14, 1, $14, 2, $14, 3, $15, $3A
                .byte $3D, 0, $FF, 0, $FF, 0, $FF, 0, 2, $3C
                .byte $3D, 1, $3D, 2, $FF, 0, $FF, 0, 7, $3C
                .byte $2F, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3C
                .byte $2F, 1, $2F, 2, $FF, 0, $FF, 0, 8, $3C
                .byte $2F, 0, $3D, 0, $FF, 0, $FF, 0, $11, $3C
                .byte $2F, 0, $3D, 0, $FF, 0, $FF, 0, $11, $3C
                .byte $15, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3E
                .byte $15, 1, $15, 2, $FF, 0, $FF, 0, 8, $3E
                .byte $F, 0, $FF, 0, $FF, 0, $FF, 0, 1, $41
                .byte $F, 0, 7, 0, $FF, 0, $FF, 0, 8, $41
                .byte $59, 0, $FF, 0, $FF, 0, $FF, 0, 1, $40
                .byte $FF, 0, $5A, 0, $FF, 0, $FF, 0, 3, $40
                .byte $FF, 0, $5B, 0, $FF, 0, $FF, 0, 3, $44
                .byte 8, 0, $FF, 0, $FF, 0, $FF, 0, 1, $32
                .byte $67, 0, $FF, 0, $FF, 0, $FF, 0, 1, $33
                .byte $28, 0, 8, 0, $FF, 0, $FF, 0, $E, $32
                .byte $28, 0, $67, 0, $FF, 0, $FF, 0, $E, $33
                .byte $40, 0, $FF, 0, $FF, 0, $FF, 0, 2, $25
                .byte $36, 0, $FF, 0, $FF, 0, $FF, 0, 2, $26
                .byte $4A, 0, $FF, 0, $FF, 0, $FF, 0, 2, $31
                .byte $39, 0, $FF, 0, $FF, 0, $FF, 0, 2, $24
                .byte $39, 1, $39, 2, $FF, 0, $FF, 0, 7, $24
                .byte $39, 1, $39, 2, $39, 3, $FF, 0, $A, $24
                .byte $22, 0, $FF, 0, $FF, 0, $FF, 0, 2, $34
                .byte $22, 1, $22, 2, $FF, 0, $FF, 0, 7, $34
                .byte $31, 0, $FF, 0, $FF, 0, $FF, 0, 1, $35
                .byte $57, 1, $57, 2, $FF, 0, $FF, 0, 7, $25
                .byte $57, 1, $57, 2, $57, $83, $57, $84, $C, $25
                .byte $39, $81, $39, $82, $5C, 0, $39, $83, $C, $34
                .byte $73, $80, $39, $80, $5C, 0, $22, $80, $C, $34
                .byte $73, 1, $73, 2, $FF, 0, $FF, 0, 7, $34
                .byte $73, 0, $74, 0, $FF, 0, $FF, 0, 7, $34
                .byte $57, $80, $31, $81, $5C, 0, $31, $82, $12, $35
                .byte $75, 1, $75, 2, $75, 3, $FF, 0, $B, $3E
                .byte $75, 1, $75, 2, $75, 3, $75, 4, $D, $3E
                .byte $4B, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3E
                .byte $4C, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3D
                .byte 6, 0, $FF, 0, $FF, 0, $FF, 0, 0, $27
                .byte $69, 1, $69, 2, $FF, 0, $FF, 0, 7, $33
                .byte $69, 1, $69, 2, $69, 3, $FF, 0, $A, $33
                .byte $68, 0, $FF, 0, $FF, 0, $FF, 0, 2, $33
                .byte $69, 1, $68, 0, $69, 2, $FF, 0, $A, $33
                .byte $69, 1, $69, 2, $68, 0, $69, 3, $C, $33
                .byte $68, 0, $1E, 0, $FF, 0, $FF, 0, 7, $38
                .byte $1E, 1, $68, 0, $1E, 2, $FF, 0, $A, $38
                .byte $68, 0, $18, 0, $FF, 0, $FF, 0, $E, $33
                .byte $12, 0, $FF, 0, $FF, 0, $FF, 0, 1, $32
                .byte $12, 1, $12, 2, $FF, 0, $FF, 0, 8, $32
                .byte $1D, 0, $FF, 0, $FF, 0, $FF, 0, 2, $32
                .byte $1D, 0, $18, 0, $FF, 0, $FF, 0, $E, $32
                .byte $33, 1, $33, $82, $33, $83, $FF, 0, $A, $20
                .byte $B, 0, $FF, 0, $FF, 0, $FF, 0, 1, $36
                .byte $B, 1, $B, 2, $FF, 0, $FF, 0, 8, $36
                .byte $1E, 0, $FF, 0, $FF, 0, $FF, 0, 2, $30
                .byte $51, 0, $FF, 0, $FF, 0, $FF, 0, 2, $30
                .byte $52, 1, $52, $82, $52, $83, $FF, 0, $A, $21
                .byte $34, 0, $FF, 0, $FF, 0, $FF, 0, 2, $31
                .byte $34, 1, $34, 2, $FF, 3, $FF, 0, 7, $31
                .byte $47, 0, $34, 1, $34, 2, $FF, 0, $A, $31
                .byte $76, 0, $FF, 0, $FF, 0, $FF, 0, $40, $30
                .byte $6A, 0, $FF, 0, $FF, 0, $FF, 0, 2, $32
                .byte $6A, 0, $18, 0, $FF, 0, $FF, 0, $E, $32
                .byte $FF, 0, $21, 0, $FF, 0, $FF, 0, 4, $3A
                .byte $FF, 0, $21, 1, $21, 2, $FF, 0, 5, $3A
                .byte $FF, 0, $21, 1, $21, 2, $21, 3, 6, $3A
                .byte $53, 0, $FF, 0, $FF, 0, $FF, 0, 1, $39
                .byte $53, 1, $53, 2, $FF, 0, $FF, 0, 8, $39
                .byte $53, 1, $53, 2, $53, 3, $FF, 0, $B, $39
                .byte $D, 0, $FF, 0, $FF, 0, $FF, 0, 0, $2F
                .byte $D, 1, $D, 2, $FF, 0, $FF, 0, 9, $2F
                .byte $55, 1, $55, 2, $FF, 0, $FF, 0, 9, $3D
                .byte $55, 1, $55, 2, $55, 3, $FF, 0, $13, $3D
                .byte $16, 1, $16, 2, $FF, 0, $FF, 0, 8, $2D
                .byte $16, 1, $16, 2, $16, 3, $FF, 0, $B, $2D
                .byte $6E, 0, $FF, 0, $FF, 0, $FF, 0, 2, $39
                .byte $6E, 1, $6E, 2, $FF, 0, $FF, 0, 7, $39
                .byte $6E, 1, $6E, 2, $6E, 3, $FF, 0, $A, $39
                .byte $77, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3D
                .byte $20, 0, $FF, 0, $FF, 0, $FF, 0, 2, $3A
                .byte $70, 0, $FF, 0, $FF, 0, $FF, 0, 1, $38
                .byte $70, 1, $70, 2, $FF, 0, $FF, 0, 8, $38
                .byte $A, 0, $FF, 0, $FF, 0, $FF, 0, 0, $37
                .byte $A, 1, $A, 2, $FF, 0, $FF, 0, 9, $37
                .byte $6F, 1, $6F, 2, $FF, 0, $FF, 0, 9, $37
                .byte $6F, 1, $6F, 2, $6F, 3, $FF, 0, $13, $37
                .byte 9, 0, $FF, 0, $FF, 0, $FF, 0, 1, $32
                .byte 9, 1, 9, 2, $FF, 0, $FF, 0, 8, $32
                .byte 9, 0, $6C, 0, $FF, 0, $FF, 0, 8, $32
                .byte $FF, 0, $71, 0, $FF, 0, $FF, 0, 4, $3A
                .byte $FF, 0, $71, 1, $71, 2, $FF, 0, 5, $3A
                .byte $FF, 0, $71, 1, $71, 2, $71, 3, 6, $3A
                .byte $FF, 0, $71, 1, $71, 2, $71, 3, 6, $3A
                .byte $78, 0, $FF, 0, $FF, 0, $FF, 0, $60, $3F
                .byte 3, 0, $FF, 0, $FF, 0, $FF, 0, $80, $36
                .byte $6B, 0, $FF, 0, $FF, 0, $FF, 0, 2, $3C
                .byte $6D, 0, $FF, 0, $FF, 0, $FF, 0, 2, $32
                .byte $6D, 0, $6C, 0, $FF, 0, $FF, 0, $E, $32
                .byte $65, 0, $FF, 0, $FF, 0, $FF, 0, 1, $30
                .byte $65, 1, $65, 2, $FF, 0, $FF, 0, 8, $30
                .byte $66, 0, $FF, 0, $FF, 0, $FF, 0, 1, $30
                .byte $66, 0, $65, 0, $FF, 0, $FF, 0, 8, $30
                .byte $79, 1, $79, 2, $79, 3, $FF, 0, $A, $30
                .byte $79, 1, $79, 2, $79, 3, $79, 4, $C, $30
                .byte $79, 1, $79, 2, $79, 3, $79, 4, $C, $30
                .byte $FF, 0, $1A, 0, $35, 0, $FF, 0, 5, $23
                .byte $1B, 0, $FF, 0, $FF, 0, $FF, 0, $22, $47
                .byte $27, 0, $FF, 0, $FF, 0, $FF, 0, 2, $4B
                .byte $42, 0, $FF, 0, $FF, 0, $FF, 0, 2, $3F
                .byte $43, 0, $FF, 0, $FF, 0, $FF, 0, 2, $36
                .byte $1F, 0, $FF, 0, $FF, 0, $FF, 0, 1, $39
                .byte $13, 0, $FF, 0, $FF, 0, $FF, 0, $A0, $59
                .byte $FF, 0, $3E, 0, $FF, 0, $FF, 0, 3, $3F
                .byte $3C, 0, $FF, 0, $FF, 0, $FF, 0, 1, $3E

.export off_16960A
off_16960A:
    .word byte_16962A, byte_16962A, byte_16966D, byte_1696A0
    .word byte_1696D3, byte_1696FA, byte_16962A, byte_169719
    .word byte_169734, byte_16974F, byte_16976A, byte_16977D
    .word byte_16978C, byte_16979B, byte_1697AA, byte_1697B5

byte_16962A:    .byte 8, 8, 0, 0, 1, 2, 3, 4, 5, 6, 7, $10, $11, $12, $13
                .byte $14, $15, $16, $17, $20, $21, $22, $23, $24, $25
                .byte $26, $27, $30, $31, $32, $33, $34, $35, $36, $37
                .byte 8, 9, $A, $B, $C, $D, $E, $F, $18, $19, $1A, $1B
                .byte $1C, $1D, $1E, $1F, $28, $29, $2A, $2B, $2C, $2D
                .byte $2E, $2F, $38, $39, $3A, $3B, $3C, $3D, $3E, $3F
byte_16966D:    .byte 8, 6, 0, 0, 1, 2, 3, 4, 5, $10, $11, $12, $13, $14
                .byte $15, $20, $21, $22, $23, $24, $25, $30, $31, $32
                .byte $33, $34, $35, 6, 7, 8, 9, $A, $B, $16, $17, $18
                .byte $19, $1A, $1B, $26, $27, $28, $29, $2A, $2B, $36
                .byte $37, $38, $39, $3A, $3B
byte_1696A0:    .byte 6, 8, 2, 0, 1, 2, 3, 4, 5, 6, 7, $10, $11, $12, $13
                .byte $14, $15, $16, $17, $20, $21, $22, $23, $24, $25
                .byte $26, $27, $30, $31, $32, $33, $34, $35, $36, $37
                .byte 8, 9, $A, $B, $28, $29, $2A, $2B, $18, $19, $1A
                .byte $1B, $38, $39, $3A, $3B
byte_1696D3:    .byte 6, 6, 2, 7, 8, 9, $A, $B, $C, $17, $18, $19, $1A
                .byte $1B, $1C, $27, $28, $29, $2A, $2B, $2C, $37, $38
                .byte $39, $3A, $3B, $3C, $D, $E, $F, $2D, $2E, $2F, $1D
                .byte $1E, $1F, $3D, $3E, $3F
byte_1696FA:    .byte 7, 4, 1, 0, 1, 2, 3, $10, $11, $12, $13, $20, $21
                .byte $22, $23, $30, $31, $32, $33, 4, 5, 6, $14, $15
                .byte $16, $24, $25, $26, $34, $35, $36
byte_169719:    .byte 6, 4, 2, 0, 1, 2, 3, $10, $11, $12, $13, $20, $21
                .byte $22, $23, $30, $31, $32, $33, 4, 5, $24, $25, $14
                .byte $15, $34, $35
byte_169734:    .byte 6, 4, 2, 6, 7, 8, 9, $16, $17, $18, $19, $26, $27
                .byte $28, $29, $36, $37, $38, $39, $A, $B, $2A, $2B, $1A
                .byte $1B, $3A, $3B
byte_16974F:    .byte 4, 6, 4, 0, 1, 2, 3, 4, 5, $10, $11, $12, $13, $14
                .byte $15, $20, $21, $22, $23, $24, $25, $30, $31, $32
                .byte $33, $34, $35
byte_16976A:    .byte 4, 4, 4, $C, $D, $E, $F, $1C, $1D, $1E, $1F, $2C
                .byte $2D, $2E, $2F, $3C, $3D, $3E, $3F
byte_16977D:    .byte 4, 3, 4, 7, 8, 9, $17, $18, $19, $27, $28, $29, $37
                .byte $38, $39
byte_16978C:    .byte 4, 3, 4, $A, $B, $C, $1A, $1B, $1C, $2A, $2B, $2C
                .byte $3A, $3B, $3C
byte_16979B:    .byte 4, 3, 4, $D, $E, $F, $1D, $1E, $1F, $2D, $2E, $2F
                .byte $3D, $3E, $3F
byte_1697AA:    .byte 2, 4, 3, $C, $D, $E, $F, $1C, $1D, $1E, $1F
byte_1697B5:    .byte 4, 4, 3, $2C, $2D, $2E, $2F, $3C, $3D, $3E, $3F
                .byte $2C, $2D, $2E, $2F, $3C, $3D, $3E, $3F, 0, 0, 0
                .byte 4, $40, $97, 4, $44, $97, 5, $48, $97, 4, $4C, $97
                .byte $10, $50, $97, $18, $54, $97, 9, $58, $97, 7, $5C
                .byte $97, 5, $60, $97, 4, $64, $97, 4, $68, $97, 7, $6C
                .byte $97, 1, $70, $97, 8, $74, $97, $22, $78, $97, 8
                .byte $7C, $97, $D, $99, $E, $99, $44, $99, $57, $99, $6B
                .byte $99, $73, $99, $7B, $99, $85, $99, $A6, $99, $CD
                .byte $99, $E7, $99, $F0, $99, $15, $9A, $25, $9A, $2E
                .byte $9A, $41, $9A, $4D, $9A, $56, $9A, $62, $9A, $7C
                .byte $9A, $8F, $9A, $A2, $9A, $E6, $9A, $BA, $9A, $CA
                .byte $9A, $55, $9E, $69, $9E, $71, $9B, $B9, $99, $7C
                .byte $9B, $8D, $9B, $9E, $9B, $B6, $9E, $B6, $9E, 1, $9C
                .byte $D, $9C, $B6, $9E, $BC, $9B, $B6, $9E, $B6, $9E
                .byte $AB, $9B, $D3, $9C, $E0, $9C, $E9, $9C, $F4, $9C
                .byte 7, $9D, $18, $9D, $1E, $9D, $75, $9E, $E, $9B, $14
                .byte $9C, $B6, $9E, $2E, $9C, $B6, $9E, $C3, $9D, $D5
                .byte $9D, $E0, $9D, $EB, $9D, $B6, $9E, $B6, $9E, $44
                .byte $9C, $CF, $9B, $71, $9C, $24, $9B, $30, $9B, $46
                .byte $9B, $4D, $9B, $54, $9B, $83, $9C, $98, $9C, $39
                .byte $9E, $C7, $9C, $F9, $9D, $87, $9E, $89, $9E, $8B
                .byte $9E, $3E, $9E, $B6, $9E, $B6, $9E, $41, $9E, $44
                .byte $9E, $97, $9E, $B6, $9E, $F, $9E, $A3, $9E, $B6
                .byte $9E, $B6, $9E, $B6, $9E, $B6, $9E, $15, $9E, $B6
                .byte $9E, $72, $9D, $1B, $9E, $B5, $9B, $AB, $9E, $84
                .byte $9D, $62, $9C, $B6, $9E, $BD, $9C, $8F, $9D, $9A
                .byte $9D, $A5, $9D, $2E, $9E, $F9, $99, $B6, $9E, $72
                .byte $9A, $85, $9A, $87, $9B, $E1, $9B, $1D, $9B, $A7
                .byte $9C, $AF, $9E, $B6, $9E, $2D, $9D, $36, $9D, $3F
                .byte $9D, $48, $9D, $51, $9D, $AD, $9D, 6, $9B, $47, $9E
                .byte $4E, $9E, $5B, $9D, $64, $9D, $7D, $9D, $E0, $99
                .byte $B6, $9E, $B6, $9E, $B8, $9C, $B6, $9E, $E6, $9B
                .byte $D3, $9A, $6B, $9D, 3, $9A, $B8, $9D, $B6, $9E, $5F
                .byte $9E, 0, $51, $80
                .byte $1B, $99, $73, $1B, $99, $74, $3A, $99, $72, $2E
                .byte $99, $66, 0, $68, 4, $80, $B7, $9E, $81, $BA, $9E
                .byte $73, $BF, $9E, $12, $60, 0, $40, 6, 0, $69, 3, $68
                .byte 4, $1B, $68, $B, $61, 0, $40, 6, 0, $69, 8, $68
                .byte 5, $1B, $62, $3C, $40, 6, 0, $51, $66, 0, $68, 4
                .byte $90, $1F, $99, $80, $56, $99, $66, 0, $68, 7, $90
                .byte $1F, $99, 0, $51, $66, 0, $68, 8, $60, 0, $80, $B7
                .byte $9E, $81, $BA, $9E, $73, $BF, $9E, $12, $40, 6, 0
                .byte $51, $66, 0, $68, 9, $A0, $5C, $99, $51, $66, 0
                .byte $68, $A, $A0, $5C, $99, $51, $66, 0, $68, $13, $62
                .byte $F, $A0, $5E, $99, $51, $69, 3, $68, $15, $80, $9A
                .byte $99, $73, $A0, $99, $1B, $62, $C8, $40, 6, $40, $E
                .byte $68, $14, 0, $90, $B7, $9E, $A0, $95, $99, $90, $BF
                .byte $9E, $A0, $95, $99, $63, 0, $52, $69, $14, $68, $16
                .byte $B4, $80, $B6, $99, $13, $62, $4B, $40, 6, $56, 0
                .byte 0, $52, $68, $5A, $B4, $80, $CA, $99, $8D, $C8, $99
                .byte $40, $29, $A0, $CA, $99, $68, $12, $56, 0, 0, $67
                .byte 5, $20, $2C, $62, $14, $52, $B4, $80, $DD, $99, $64
                .byte $40, $17, $40, 6, $56, 0, 0, $67, 5, $31, $61, $A0
                .byte $D1, $99, $67, 5, $20, $2D, $62, $3C, $A0, $D3, $99
                .byte $67, 5, $20, $2E, $62, $64, $A0, $D3, $99, $67, 5
                .byte $32, $22, $90, $F4, $99, $C0, $22, 0, $67, 5, $20
                .byte $2F, $A0, $A, $9A, $52, $B4, $80, $12, $9A, $17
                .byte $40, 9, $56, 0, 0, $67, 7, $20, $28, $62, $A, $51
                .byte $80, $B7, $9E, $64, $20, $18
                .byte $40, 6, 0, $67, 7, $20, $29, $62, $28, $A0, $1B
                .byte $9A, $67, 7, $20, $2B, $62, $50, $52, $B4, $80, $3E
                .byte $9A, $64, $20, $18, $40, 6, $56, 0, 0, $67, 7, $20
                .byte $2A, $51, $80, $B7, $9E, $18, $40, $A, 0, $67, 8
                .byte $31, $23, $62, $3C, $A0, $D3, $99, $67, 8, $31, $24
                .byte $90, $A, $9A, $62, $1F, $40, $F, 0, $67, 6, $20
                .byte $30, $62, $1E, $51, $80, $B7, $9E, $64, 2, $1A, $40
                .byte 6, 0, $67, 6, $32, $25, $90, $66, $9A, $C0, $25
                .byte 0, $67, 6, $20, $31, $62, $50, $A0, $68, $9A, $67
                .byte 6, $32, $26, $90, $80, $9A, $C0, $26, 0, $67, 6
                .byte $20, $33, $62, $B4, $52, $B4, $80, $9F, $9A, $64
                .byte 2, $1A, $40, 6, $56, 0, 0, $67, 6, $20, $32, $51
                .byte $80, $B7, $9E, $75, $B4, $9A, $1A, $79, $C4, $9E
                .byte $40, 9, 0, $68, $52, $54, $A0, $AD, $9A, $67, 4
                .byte $20, $34, $62, $A, $51, $80, $B7, $9E, $64, $10
                .byte $19, $40, 6, 0, $67, 4, $20, $35, $62, $32, $A0
                .byte $C0, $9A, $67, 4, $20, $36, $62, $3C, $52, $B4, $80
                .byte $E3, $9A, $64, $10, $19, $40, 6, $56, 0, 0, $67
                .byte 1, $32, $19, $90, $F0, $9A, $C0, $19, 0, $52, $B4
                .byte $80, $FE, $9A, $12, $79, 1, $9B, $87, 1, $9B, $40
                .byte 9, $56, 0, 0, $68, $12, $A0, $FE, $9A, $67, 1, $30
                .byte $1A, $90, $F0, $9A, 0, $67, $D, $20, $1C, $51, $80
                .byte $B7, $9E, $13, $79, $C4, $9E, $40, $12, 0, $67, 0
                .byte $30, $1F, $A0, $12, $9B, $66, 0, $68, $1A, $51, $80
                .byte $B7, $9E, $13, $40, $12, 0, $69, $D, $51, $68, $2C
                .byte $51, $80, $B7, $9E, $13, $78, $C4, $9E, $79, $C4
                .byte $9E, $7A, $C4, $9E, $40, $14, 0, $69, $D, $68, $76
                .byte $A0, $35, $9B, $67, $D, $20, $18, $A0, $35, $9B
                .byte $67, $D, $20, $19, $52, $B4, $80, $69, $9B, $13
                .byte $78, $6C, $9B, $79, $6C, $9B, $7A, $6C, $9B, $40
                .byte $14, $56, 0, 0, $68, $12, $A0, $69, $9B, $67, 0
                .byte $20, $20, $51, $80, $B7, $9E, $40, 3, 0, $67, 0
                .byte $20, $21, $51, $80, $B7, $9E, $40, 4, 0, $68, $28
                .byte $54, $A0, $81, $9B, $67, 0, $20, $22, $53, $B4, $80
                .byte $9B, $9B, $7C, $9B, $9B, $40, 4, $56, 0, 0, $67
                .byte 0, $20, $23, $51, $80, $B7, $9E, $62, $14, $40, 2
                .byte 0, $62, $19, $54, $68, $2A, $62, $14, $40, $11, 0
                .byte $66, 0, $62, $14, $40, $10, 0, $67, $D, $20, $24
                .byte $62, $28, $51, $80, $B7, $9E, $13, $79, $C4, $9E
                .byte $64, 4, $40, 7, 0, $67, 0, $31, $21, $51, $80, $B7
                .byte $9E, $73, $BF, $9E, $13, $79, $C4, $9E, $40, $13
                .byte 0, $68, $1D, $A0, $C0, $9B, $52, $67, $D, $20, $25
                .byte $B4, $62, $28, $80, $F9, $9B, $13, $79, $FC, $9B
                .byte $64, 4, $40, 7, $56, 0, 0, $68, $12, $A0, $F9, $9B
                .byte $68, $32, $62, $1E, $51, $80, $B7, $9E, $13, $40
                .byte 8, 0, $68, $33, $62, $14, $A0, 5, $9C, $52, $66
                .byte 0, $68, $4A, $B4, $80, $2B, $9C, $12, $62, $1E, $40
                .byte 6
                .byte $80, $2B, $9C, $62, $14, $40, 8, $40, $1D, $56, 0
                .byte 0, $51, $66, 0, $68, 4, $80, $B7, $9E, $73, $BF
                .byte $9E, $13, $79, $C4, $9E, $68, $4C, $40, $B, $40
                .byte $C, 0, $67, 0, $30, $70, $51, $80, $B7, $9E, $68
                .byte $18, $13, $88, $59, $9C, $68, $35, $62, $19, $40
                .byte 8, 0, $68, $36, $68, $37, $62, $14, $40, $11, 0
                .byte $67, 0, $31, $1B, $51, $79, $C4, $9E, $68, $5F, $40
                .byte $B, $40, $C, 0, $67, 0, $31, $20, $51, $80, $B7
                .byte $9E, $73, $BF, $9E, $13, $79, $C4, $9E, $40, $1C
                .byte 0, $67, $D, $20, $1A, $51, $80, $B7, $9E, $13, $78
                .byte $C4, $9E, $79, $C4, $9E, $7A, $C4, $9E, $40, $15
                .byte 0, $67, $D, $20, $1B, $51, $80, $B7, $9E, $13, $79
                .byte $C4, $9E, $40, $16, 0, $67, 0, $32, $1E, $51, $80
                .byte $B7, $9E, $13, $79, $C4, $9E, $40, $16, $C0, $1E
                .byte 0, $68, $77, $A0, $AB, $9C, $68, 4, $51, $80, $B7
                .byte $9E, $13, $40, $1E, 0, $67, 0, $31, $28, $51, $80
                .byte $B7, $9E, $12, $40, $1B, 0, $67, 0, $20, 8, $62
                .byte $1E, $51, $80, $B7, $9E, $40, 0, 0, $67, 0, $20
                .byte 9, $62, $50, $A0, $D9, $9C, $67, 0, $20, $A, $51
                .byte $80, $B7, $9E, $40, 5, 0, $67, 0, $20, $B, $62, $32
                .byte $53, $B4, $80, 4, $9D, $7C, 4, $9D, $40, 0, $56
                .byte 0, 0, $67, 0, $20, $C, $53, $B4, $80, $15, $9D, $7C
                .byte $15, $9D, $40, 5, $56, 0, 0, $51, $68, $3F, $A0
                .byte $ED, $9C, $67, 0, $32, $49, $62, $14, $54, $80, $B7
                .byte $9E, $40, 1, $C1, $49, 0, $67, 0, $31, $3C, $62
                .byte $A, $A0, $D9, $9C, $67, 0, $31, $3D, $62, $14, $A0
                .byte $D9, $9C, $67, 0, $31, $3E, $62, $1E, $A0, $D9, $9C
                .byte $67, 0, $31, $40, $62, $64, $A0, $D9, $9C, $67, 0
                .byte $33, 1, $90, $43, $9D, $C2, 1, 0, $67, 0, $31, $3F
                .byte $62, $3C, $A0, $D9, $9C, $67, 0, $31, $41, $A0, $ED
                .byte $9C, $67, 0, $31, $47, $A0, $3A, $9D, $67, 0, $20
                .byte $10, $51, $80, $B7, $9E, $40, $1F, 0, $67, 0, $31
                .byte $43, $A0, $76, $9D, $67, 0, $31, $48, $51, $80, $B7
                .byte $9E, $40, $23, 0, $67, 0, $20, $11, $51, $80, $B7
                .byte $9E, $40, $21, 0, $67, 0, $20, $13, $51, $80, $B7
                .byte $9E, $40, $20, 0, $67, 0, $20, $14, $51, $40, $25
                .byte 0, $67, 0, $30, $42, $51, $80, $B7, $9E, $40, $22
                .byte 0, $67, 0, $20, $12, $51, $80, $B7, $9E, $40, $26
                .byte 0, $67, $D, $20, $1F, $51, $80, $B7, $9E, $78, $D1
                .byte $9D, $78, $C4, $9E, $13, $40, $17, 0, $67, 0, $20
                .byte $17, $51, $80, $B7, $9E, $40, $1A, 0, $67, 0, $20
                .byte $15, $51, $80, $B7, $9E, $40, $19, 0, $67, 0, $20
                .byte $16, $53, $B4, $80, $F6, $9D, $40, $19, $56, 0, 0
                .byte $55, $68, $43, $78, $C, $9E, $7B, $C, $9E, $B4, $86
                .byte 9, $9E, $69, $11, $11, $56, 0, 0, $68, $44, 0, $68
                .byte $59, $54, $40, $18, 0, $68, $5B, $54, $40, $18, 0
                .byte $67, $C, $20, $26, $7B, $2B, $9E
                .byte $55, $B4, $86, $28, $9E, $16, $56, 0, 0, $68, $90
                .byte 0, $67, 0, $20, $1E, $51, $80, $B7, $9E, $40, $24
                .byte 0, $69, $13, $68, $45, 0, $68, $30, 0, $68, $34
                .byte 0, $68, $57, 0, $67, 0, $30, $1C, $68, $72, 0, $67
                .byte 0, $30, $1D, $68, $73, 0, $69, 8, $68, $1E, $90
                .byte $51, $9A, $40, $E, 0, $69, 8, $68, $1E, $90, $A
                .byte $9A, $40, $E, 0, $69, 5, $68, $1F, $62, $1E, $90
                .byte $D3, $99, $40, $E, 0, $67, $D, $20, $1D, $51, $80
                .byte $B7, $9E, $78, $83, $9E, $78, $C4, $9E, $13, $40
                .byte $27, 0, $14, 0, $15, 0, $51, $80, $E, $99, $73, $E
                .byte $99, $69, $B, $40, $28, 0, $68, $58, $54, $69, $11
                .byte $11, $51, $62, $46, $40, $D, 0, $66, 0, $68, $66
                .byte $54, $40, $2A, 0, $10, $68, 3, 0, $51, $80, $B7
                .byte $9E, $65, 0, 0, 0, $68, $11, 0, $69, $B, $68, 6
                .byte 0, $69, $13, $68, $50, 0, $68, $12, 0

.export byte_169EC7
byte_169EC7:
    .byte $2A, $AA, 0, $A2, $A, $22, $81, $11, $4A, $20, $15
    .byte 4, $A0, $89, $40, $AA, $A8, $A2, 2, 0, $20, 2, 1
    .byte 1, $89, $58, $28, $AA, $15, $54, $A5, $40, $80, $44
byte_169EE9:    .byte 0
byte_169EEA:    .byte 0
byte_169EEB:    .byte 0, 0, 1, $A, 0, 0, 0, 1, 0, 0, 0, 5, 0, 0, 0, 3
                .byte $3C, 0, 0, 4, $3C, 0, 1, 2, $3C, 0, 2, 1, $3C, 0
                .byte 0, 2, $14, 0, 1, 3, 0, 0, 1, 7, 0, 0, 1, $C, 0, 0
                .byte 3, 1, $B4, 0, 3, 2, $50, 0, 1, 5, 0, 0, 1, 1, 0
                .byte 0, 1, 4, 0, 0, 0, 8, 0, 0, 3, 2, 0, 0, 1, $F, 0
                .byte 0, 3, 3, $8C, 0, 2, 3, $3C, 0, 5, 8, 2, 3, $FE, $FD
                .byte $FE, 3, 2, $FD, 3, $14, 0, $FE, 0, $FF, 0, 0, 0
                .byte 1, 0, 2, 0, 2, 0, 1, 0, 0, 0, $FF, 0, $FE, 3, 8
                .byte 2, 6, $FE, $FA, $FE, 6, 2, $FA, 2, 4, 9, 2, $C0
                .byte $5E, $C, $13, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4
                .byte 5, 6, 7, 8, 1, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 2, $C0
                .byte $5E, $10, $13, $91, 5, 2, 4, $C, 2, $C0, $5E, 6
                .byte $13, 2, 4, $C, 2, $C8, $5E, 6, $13, $80, 5, 1, 1
                .byte 0, 0, $C5, $5E, 7, $11, $B1, $9F, 1

.export byte_169FB2, byte_169FB4
byte_169FB2:
    .byte 7, $13
byte_169FB4:
    .byte $12, $14, $16, $18
; end of 'BANK16'