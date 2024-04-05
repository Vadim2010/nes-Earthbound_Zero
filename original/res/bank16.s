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
    .byte 0                 ; InitialStatus
    .byte $24               ; Flags
    .word $1446             ; HP
    .word $C00              ; PP
    .word $812              ; Offense
    .word $832              ; Defense
    .byte $14               ; Fight
    .byte $17               ; Speed
    .byte $3C               ; Wisdom
    .byte $3C               ; Strength
    .byte $12               ; Force
    .byte 1, $34, $41, $41, 1, 1, 1, 1; Attacks
    .word sBigWoodoh        ; name
    .word $64               ; Experience
    .word $8C               ; Money
    .byte $48               ; Item
    .byte $20               ; Tile

Dragon:
    .import sDragon

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $128A             ; HP
    .word $C8               ; PP
    .word $B4               ; Offense
    .word $4C8              ; Defense
    .byte $3C               ; Fight
    .byte $3C               ; Speed
    .byte $14               ; Wisdom
    .byte $64               ; Strength
    .byte $3C               ; Force
    .byte $6C, $A, $6C, 1, $A, 1, 1, $83; Attacks
    .word sDragon           ; name
    .word $1F4              ; Experience
    .word $4B0              ; Money
    .byte 0                 ; Item
    .byte $21               ; Tile

R7038:
    .import sR7038

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $F6               ; Flags
    .word $17E8             ; HP
    .word $1400             ; PP
    .word $258              ; Offense
    .word $FE8              ; Defense
    .byte $28               ; Fight
    .byte $32               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sR7038            ; name
    .word $1AE              ; Experience
    .word $65               ; Money
    .byte 0                 ; Item
    .byte $22               ; Tile

Elephant:
    .import sElephant

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $1846             ; HP
    .word 0                 ; PP
    .word $14               ; Offense
    .word $422              ; Defense
    .byte $1E               ; Fight
    .byte $A                ; Speed
    .byte 5                 ; Wisdom
    .byte $1E               ; Strength
    .byte 8                 ; Force
    .byte 5, 5, 5, 1, 1, 1, 1, 1; Attacks
    .word sElephant         ; name
    .word $3C               ; Experience
    .word $63               ; Money
    .byte 0                 ; Item
    .byte $23               ; Tile

Bear:
    .import sBear

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $2050             ; HP
    .word 0                 ; PP
    .word $2A               ; Offense
    .word $440              ; Defense
    .byte $1E               ; Fight
    .byte $1C               ; Speed
    .byte $14               ; Wisdom
    .byte $28               ; Strength
    .byte $A                ; Force
    .byte 1, 1, 1, 4, 5, $4F, 1, 1; Attacks
    .word sBear             ; name
    .word $46               ; Experience
    .word $FA               ; Money
    .byte 0                 ; Item
    .byte $2B               ; Tile

BigFoot:
    .import sBigFoot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $20               ; Flags
    .word $185A             ; HP
    .word $32               ; PP
    .word $32               ; Offense
    .word $45A              ; Defense
    .byte $32               ; Fight
    .byte $26               ; Speed
    .byte $1E               ; Wisdom
    .byte $3C               ; Strength
    .byte $F                ; Force
    .byte $F, $D, $C, $C, $C, $C, $C, $C; Attacks
    .word sBigFoot          ; name
    .word $96               ; Experience
    .word $30               ; Money
    .byte 0                 ; Item
    .byte $25               ; Tile

MadTruck:
    .import sMadTruck

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $203C             ; HP
    .word 0                 ; PP
    .word $16               ; Offense
    .word $1828             ; Defense
    .byte $26               ; Fight
    .byte $23               ; Speed
    .byte $23               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 6, 6, 6, 6, 6, 6, $32, $32; Attacks
    .word sMadTruck         ; name
    .word $39               ; Experience
    .word $1E               ; Money
    .byte 0                 ; Item
    .byte $26               ; Tile

OldRobot:
    .import sOldRobot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $283C             ; HP
    .word $1E               ; PP
    .word $30               ; Offense
    .word $C48              ; Defense
    .byte $19               ; Fight
    .byte $14               ; Speed
    .byte $14               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, $12, $12, $53, 1, 1, 1, 1; Attacks
    .word sOldRobot         ; name
    .word $36               ; Experience
    .word $26               ; Money
    .byte 0                 ; Item
    .byte $27               ; Tile

Megaborg:
    .import sMegaborg

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $20A0             ; HP
    .word $3C               ; PP
    .word $50               ; Offense
    .word $CAA              ; Defense
    .byte $3C               ; Fight
    .byte $32               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $12, $13, $12, $12, $12, $12, $12, 1; Attacks
    .word sMegaborg         ; name
    .word $C5               ; Experience
    .word $6D               ; Money
    .byte 0                 ; Item
    .byte $28               ; Tile

Gargoyle:
    .import sGargoyle

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 4                 ; Flags
    .word $30B4             ; HP
    .word $3C               ; PP
    .word $405A             ; Offense
    .word $8A0              ; Defense
    .byte $50               ; Fight
    .byte $46               ; Speed
    .byte $46               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $A, 1, $B, $A, 1, $B, 1, $3E; Attacks
    .word sGargoyle         ; name
    .word $6E               ; Experience
    .word $56               ; Money
    .byte 0                 ; Item
    .byte $29               ; Tile

Gabilan:
    .import sGabilan

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $2064             ; HP
    .word 0                 ; PP
    .word $3E               ; Offense
    .word $864              ; Defense
    .byte $32               ; Fight
    .byte $44               ; Speed
    .byte $46               ; Wisdom
    .byte $F                ; Strength
    .byte $F                ; Force
    .byte 1, $3F, $3F, 1, 2, 1, 1, $34; Attacks
    .word sGabilan          ; name
    .word $46               ; Experience
    .word $2B               ; Money
    .byte 0                 ; Item
    .byte $2A               ; Tile

Gorilla:
    .import sGorilla

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4828             ; HP
    .word 0                 ; PP
    .word $14               ; Offense
    .word $41A              ; Defense
    .byte $23               ; Fight
    .byte $F                ; Speed
    .byte 5                 ; Wisdom
    .byte $A                ; Strength
    .byte $14               ; Force
    .byte $4B, 1, 1, $28, 1, 1, 1, 1; Attacks
    .word sGorilla          ; name
    .word $17               ; Experience
    .word $34               ; Money
    .byte 0                 ; Item
    .byte $32               ; Tile

Bison:
    .import sBison

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $30A0             ; HP
    .word 0                 ; PP
    .word $46               ; Offense
    .word $4A0              ; Defense
    .byte $32               ; Fight
    .byte $32               ; Speed
    .byte $50               ; Wisdom
    .byte $50               ; Strength
    .byte $50               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 2; Attacks
    .word sBison            ; name
    .word $BA               ; Experience
    .word $53               ; Money
    .byte 0                 ; Item
    .byte $2C               ; Tile

Tiger:
    .import sTiger

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $2823             ; HP
    .word 0                 ; PP
    .word $1A               ; Offense
    .word $418              ; Defense
    .byte $28               ; Fight
    .byte $14               ; Speed
    .byte 5                 ; Wisdom
    .byte $A                ; Strength
    .byte $14               ; Force
    .byte 3, 2, 2, 3, 3, 3, 3, 2; Attacks
    .word sTiger            ; name
    .word $18               ; Experience
    .word $2F               ; Money
    .byte 0                 ; Item
    .byte $2D               ; Tile

MadCar:
    .import sMadCar

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $4028             ; HP
    .word 0                 ; PP
    .word $14               ; Offense
    .word $1826             ; Defense
    .byte $2D               ; Fight
    .byte $28               ; Speed
    .byte $23               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 6, 6, 6, 6, 6, 6, 6, $32; Attacks
    .word sMadCar           ; name
    .word $37               ; Experience
    .word $20               ; Money
    .byte 0                 ; Item
    .byte $2E               ; Tile

RaebYddet:
    .import sRaebYddet

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4828             ; HP
    .word 0                 ; PP
    .word $16               ; Offense
    .word $826              ; Defense
    .byte $19               ; Fight
    .byte $19               ; Speed
    .byte $12               ; Wisdom
    .byte $19               ; Strength
    .byte $12               ; Force
    .byte $49, $49, 1, 1, 1, 1, 1, 1; Attacks
    .word sRaebYddet        ; name
    .word $19               ; Experience
    .word $1B               ; Money
    .byte 0                 ; Item
    .byte $2F               ; Tile

MagicSnail:
    .import sMagicSnail

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 8                 ; Flags
    .word $4432             ; HP
    .word 0                 ; PP
    .word $14               ; Offense
    .word $85A              ; Defense
    .byte $14               ; Fight
    .byte $12               ; Speed
    .byte $12               ; Wisdom
    .byte $28               ; Strength
    .byte $12               ; Force
    .byte 1, $5D, 1, 1, 1, 1, 1, 1; Attacks
    .word sMagicSnail       ; name
    .word $2A               ; Experience
    .word $1C               ; Money
    .byte 0                 ; Item
    .byte $30               ; Tile

Titanees:
    .import sTitanees

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $C                ; Flags
    .word $4882             ; HP
    .word $28               ; PP
    .word $36               ; Offense
    .word $8C8              ; Defense
    .byte $1E               ; Fight
    .byte $3A               ; Speed
    .byte $50               ; Wisdom
    .byte $3C               ; Strength
    .byte $A                ; Force
    .byte $44, $44, $44, 1, 1, 1, 1, 1; Attacks
    .word sTitanees         ; name
    .word $4E               ; Experience
    .word $32               ; Money
    .byte 0                 ; Item
    .byte $33               ; Tile

Giegue:
    .import sGiegue

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $1C23             ; HP
    .word $3C00             ; PP
    .word $F                ; Offense
    .word $814              ; Defense
    .byte $14               ; Fight
    .byte $64               ; Speed
    .byte $E                ; Wisdom
    .byte $A                ; Strength
    .byte $17               ; Force
    .byte 8, 8, 8, 8, 8, 8, 8, 8; Attacks
    .word sGiegue           ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $24               ; Tile

Eagle:
    .import sEagle

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4C2D             ; HP
    .word 0                 ; PP
    .word $4020             ; Offense
    .word $42C              ; Defense
    .byte $14               ; Fight
    .byte $3C               ; Speed
    .byte $1E               ; Wisdom
    .byte $14               ; Strength
    .byte $28               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sEagle            ; name
    .word $24               ; Experience
    .word $1E               ; Money
    .byte 0                 ; Item
    .byte $35               ; Tile

Wolf:
    .import sWolf

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4432             ; HP
    .word 0                 ; PP
    .word $1E               ; Offense
    .word $42E              ; Defense
    .byte $19               ; Fight
    .byte $1E               ; Speed
    .byte $1E               ; Wisdom
    .byte $1E               ; Strength
    .byte $1E               ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sWolf             ; name
    .word $22               ; Experience
    .word $1F               ; Money
    .byte 0                 ; Item
    .byte $36               ; Tile

Seagull:
    .import sSeagull

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4C5A             ; HP
    .word 0                 ; PP
    .word $2044             ; Offense
    .word $45A              ; Defense
    .byte $32               ; Fight
    .byte $46               ; Speed
    .byte $28               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte $4B, $4C, 1, $53, 1, 1, 1, 1; Attacks
    .word sSeagull          ; name
    .word $64               ; Experience
    .word $2C               ; Money
    .byte 0                 ; Item
    .byte $37               ; Tile

Alligator:
    .import sAlligator

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $401E             ; HP
    .word 0                 ; PP
    .word $12               ; Offense
    .word $416              ; Defense
    .byte $A                ; Fight
    .byte $F                ; Speed
    .byte $A                ; Wisdom
    .byte $F                ; Strength
    .byte 5                 ; Force
    .byte $5D, $5D, 1, 1, 1, 1, 1, 1; Attacks
    .word sAlligator        ; name
    .word $15               ; Experience
    .word $12               ; Money
    .byte 0                 ; Item
    .byte $31               ; Tile

EnergyRobot:
    .import sEnergyRobot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $A050             ; HP
    .word 0                 ; PP
    .word $43C              ; Offense
    .word $C5A              ; Defense
    .byte $14               ; Fight
    .byte $14               ; Speed
    .byte $28               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $53, $2E, $2E, $2E, $2E, 1, 1, 1; Attacks
    .word sEnergyRobot      ; name
    .word $CA               ; Experience
    .word $46               ; Money
    .byte 0                 ; Item
    .byte $2C               ; Tile

TheFish:
    .import sTheFish

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $62               ; Flags
    .word $5841             ; HP
    .word 0                 ; PP
    .word $26               ; Offense
    .word $83C              ; Defense
    .byte $2D               ; Fight
    .byte $1E               ; Speed
    .byte $14               ; Wisdom
    .byte $28               ; Strength
    .byte $28               ; Force
    .byte 2, 2, 2, 2, 2, 2, 2, 2; Attacks
    .word sTheFish          ; name
    .word $8C               ; Experience
    .word $B4               ; Money
    .byte 0                 ; Item
    .byte $2E               ; Tile

Fugitive:
    .import sFugitive

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $543C             ; HP
    .word 0                 ; PP
    .word $20               ; Offense
    .word $2D               ; Defense
    .byte $14               ; Fight
    .byte $16               ; Speed
    .byte 6                 ; Wisdom
    .byte $12               ; Strength
    .byte 8                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sFugitive         ; name
    .word $3C               ; Experience
    .word $15E              ; Money
    .byte 0                 ; Item
    .byte $35               ; Tile

BBsBoss:
    .import sBBsBoss

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $586C             ; HP
    .word 0                 ; PP
    .word $39               ; Offense
    .word $33               ; Defense
    .byte $32               ; Fight
    .byte $51               ; Speed
    .byte $12               ; Wisdom
    .byte $36               ; Strength
    .byte $24               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBBsBoss          ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $37               ; Tile

Barbot:
    .import sBarbot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $D6               ; Flags
    .word $503C             ; HP
    .word $28               ; PP
    .word $18               ; Offense
    .word $C24              ; Defense
    .byte $1E               ; Fight
    .byte $23               ; Speed
    .byte $23               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, 1, 1, $15, 1, 1, 1, 1; Attacks
    .word sBarbot           ; name
    .word $20               ; Experience
    .word $2D               ; Money
    .byte 0                 ; Item
    .byte $31               ; Tile

Nancy:
    .import sNancy

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $B4               ; Flags
    .word $5078             ; HP
    .word $3C               ; PP
    .word $3E               ; Offense
    .word $CAA              ; Defense
    .byte $32               ; Fight
    .byte $48               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $6B, 1, $36, $F, $6B, 1, 1, 1; Attacks
    .word sNancy            ; name
    .word $44               ; Experience
    .word $32               ; Money
    .byte 0                 ; Item
    .byte $32               ; Tile

Starman:
    .import sStarman

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $5050             ; HP
    .word $32               ; PP
    .word $2D               ; Offense
    .word $850              ; Defense
    .byte $1E               ; Fight
    .byte $28               ; Speed
    .byte $3C               ; Wisdom
    .byte $28               ; Strength
    .byte $23               ; Force
    .byte $12, $12, $38, 1, 1, $53, $53, $15; Attacks
    .word sStarman          ; name
    .word $A5               ; Experience
    .word $44               ; Money
    .byte $49               ; Item
    .byte $33               ; Tile

Ullrich:
    .import sUllrich

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $10               ; Flags
    .word $5828             ; HP
    .word $3C               ; PP
    .word $2012             ; Offense
    .word $828              ; Defense
    .byte $28               ; Fight
    .byte $1E               ; Speed
    .byte $1E               ; Wisdom
    .byte $A                ; Strength
    .byte $14               ; Force
    .byte $17, $17, $17, $17, $17, $17, $17, $17; Attacks
    .word sUllrich          ; name
    .word $41               ; Experience
    .word $32               ; Money
    .byte 0                 ; Item
    .byte $36               ; Tile

Cerebrum:
    .import sCerebrum

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $54C8             ; HP
    .word $B4               ; PP
    .word $3C               ; Offense
    .word $918              ; Defense
    .byte $78               ; Fight
    .byte $78               ; Speed
    .byte $50               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $12, $13, $82, $A, $36, $30, $38, $18; Attacks
    .word sCerebrum         ; name
    .word $59               ; Experience
    .word $50               ; Money
    .byte 0                 ; Item
    .byte $38               ; Tile

Mook:
    .import sMook

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 4                 ; Flags
    .word $5055             ; HP
    .word $50               ; PP
    .word $32               ; Offense
    .word $86E              ; Defense
    .byte $32               ; Fight
    .byte $28               ; Speed
    .byte $64               ; Wisdom
    .byte $1E               ; Strength
    .byte $1E               ; Force
    .byte $C, $D, $42, $29, $1D, $31, $44, $45; Attacks
    .word sMook             ; name
    .word $A6               ; Experience
    .word $2A               ; Money
    .byte 0                 ; Item
    .byte $34               ; Tile

Armor:
    .import sArmor

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $5078             ; HP
    .word $2864             ; PP
    .word $1044             ; Offense
    .word $896              ; Defense
    .byte $32               ; Fight
    .byte $3C               ; Speed
    .byte $32               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, $18, 1, 1, 1, 1, 1, 1; Attacks
    .word sArmor            ; name
    .word $C8               ; Experience
    .word $12C              ; Money
    .byte 0                 ; Item
    .byte $2F               ; Tile

Woodoh:
    .import sWoodoh

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $24               ; Flags
    .word $5028             ; HP
    .word 0                 ; PP
    .word $14               ; Offense
    .word $826              ; Defense
    .byte $19               ; Fight
    .byte $19               ; Speed
    .byte $1E               ; Wisdom
    .byte $28               ; Strength
    .byte $14               ; Force
    .byte $4A, $4A, $4A, $62, 1, 1, 1, 1; Attacks
    .word sWoodoh           ; name
    .word $28               ; Experience
    .word $26               ; Money
    .byte 0                 ; Item
    .byte $30               ; Tile

Wally:
    .import sWally

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $8814             ; HP
    .word 0                 ; PP
    .word 8                 ; Offense
    .word $C                ; Defense
    .byte 6                 ; Fight
    .byte 4                 ; Speed
    .byte 1                 ; Wisdom
    .byte 1                 ; Strength
    .byte 2                 ; Force
    .byte $28, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sWally            ; name
    .word 5                 ; Experience
    .word $14               ; Money
    .byte 0                 ; Item
    .byte $39               ; Tile

TheHippie:
    .import sTheHippie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $7019             ; HP
    .word 0                 ; PP
    .word 8                 ; Offense
    .word $E                ; Defense
    .byte 3                 ; Fight
    .byte 6                 ; Speed
    .byte 1                 ; Wisdom
    .byte 1                 ; Strength
    .byte 3                 ; Force
    .byte $3C, $50, $28, 1, 1, 1, 1, 1; Attacks
    .word sTheHippie        ; name
    .word 6                 ; Experience
    .word $23               ; Money
    .byte 0                 ; Item
    .byte $39               ; Tile

BagLady:
    .import sBagLady

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $745A             ; HP
    .word 0                 ; PP
    .word $C                ; Offense
    .word $26               ; Defense
    .byte $14               ; Fight
    .byte $28               ; Speed
    .byte $1E               ; Wisdom
    .byte $1E               ; Strength
    .byte $A                ; Force
    .byte 2, 2, 2, $22, 1, 1, 1, 1; Attacks
    .word sBagLady          ; name
    .word $3F               ; Experience
    .word $96               ; Money
    .byte $3F               ; Item
    .byte $3A               ; Tile

BBGang:
    .import sBBGang

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $8C50             ; HP
    .word 0                 ; PP
    .word $3C               ; Offense
    .word $7D               ; Defense
    .byte $28               ; Fight
    .byte $28               ; Speed
    .byte $14               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte $23, $23, 2, 2, 1, 1, 1, 1; Attacks
    .word sBBGang           ; name
    .word $48               ; Experience
    .word $3C               ; Money
    .byte $22               ; Item
    .byte $3B               ; Tile

DrDistorto:
    .import sDrDistorto

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $743C             ; HP
    .word 0                 ; PP
    .word $26               ; Offense
    .word $30               ; Defense
    .byte $19               ; Fight
    .byte $2D               ; Speed
    .byte $1E               ; Wisdom
    .byte $1E               ; Strength
    .byte $1E               ; Force
    .byte $48, $28, 1, 1, 1, 1, 1, 1; Attacks
    .word sDrDistorto       ; name
    .word $2D               ; Experience
    .word $28               ; Money
    .byte 0                 ; Item
    .byte $3F               ; Tile

GangZombie1:
    .import sGangZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $840C             ; HP
    .word $6A               ; PP
    .word $D                ; Offense
    .word $D                ; Defense
    .byte 9                 ; Fight
    .byte 9                 ; Speed
    .byte 2                 ; Wisdom
    .byte 6                 ; Strength
    .byte 4                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sGangZombie       ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $3F               ; Tile

GangZombie2:
    .import sGangZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $7422             ; HP
    .word 0                 ; PP
    .word $12               ; Offense
    .word $1014             ; Defense
    .byte 8                 ; Fight
    .byte 8                 ; Speed
    .byte 5                 ; Wisdom
    .byte $28               ; Strength
    .byte 5                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sGangZombie       ; name
    .word $C                ; Experience
    .word $20               ; Money
    .byte 0                 ; Item
    .byte $3C               ; Tile

PseudoZombi:
    .import sPseudoZombi

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $841E             ; HP
    .word 0                 ; PP
    .word $10               ; Offense
    .word $1010             ; Defense
    .byte $A                ; Fight
    .byte $C                ; Speed
    .byte 5                 ; Wisdom
    .byte $28               ; Strength
    .byte 7                 ; Force
    .byte 4, 3, 5, 4, 3, 5, 4, 3; Attacks
    .word sPseudoZombi      ; name
    .word 8                 ; Experience
    .word $C                ; Money
    .byte 0                 ; Item
    .byte $3C               ; Tile

Crow:
    .import sCrow

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $8816             ; HP
    .word 0                 ; PP
    .word $2008             ; Offense
    .word $40C              ; Defense
    .byte 8                 ; Fight
    .byte $C                ; Speed
    .byte 1                 ; Wisdom
    .byte 5                 ; Strength
    .byte $A                ; Force
    .byte $4B, $4C, $4C, 1, 1, 1, 1, 1; Attacks
    .word sCrow             ; name
    .word 3                 ; Experience
    .word 4                 ; Money
    .byte 0                 ; Item
    .byte $3E               ; Tile

Snake:
    .import sSnake

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $8412             ; HP
    .word 0                 ; PP
    .word 6                 ; Offense
    .word $408              ; Defense
    .byte 5                 ; Fight
    .byte $A                ; Speed
    .byte 1                 ; Wisdom
    .byte $A                ; Strength
    .byte 1                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sSnake            ; name
    .word 2                 ; Experience
    .word 8                 ; Money
    .byte $3E               ; Item
    .byte $3D               ; Tile

Hyena:
    .import sHyena

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $901E             ; HP
    .word 0                 ; PP
    .word $A                ; Offense
    .word $410              ; Defense
    .byte $A                ; Fight
    .byte $16               ; Speed
    .byte $12               ; Wisdom
    .byte $A                ; Strength
    .byte 5                 ; Force
    .byte $4F, $4F, $4F, $48, 3, 3, 3, 3; Attacks
    .word sHyena            ; name
    .word $C                ; Experience
    .word $14               ; Money
    .byte 0                 ; Item
    .byte $3E               ; Tile

Cougar:
    .import sCougar

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $9C2A             ; HP
    .word 0                 ; PP
    .word $1C               ; Offense
    .word $428              ; Defense
    .byte $23               ; Fight
    .byte $4E               ; Speed
    .byte $1E               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte 4, 4, 4, 4, 4, 4, 4, 4; Attacks
    .word sCougar           ; name
    .word $20               ; Experience
    .word $19               ; Money
    .byte 0                 ; Item
    .byte $3D               ; Tile

Centipede:
    .import sCentipede

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 1                 ; Flags
    .word $840C             ; HP
    .word $2400             ; PP
    .word 4                 ; Offense
    .word $40C              ; Defense
    .byte 3                 ; Fight
    .byte $11               ; Speed
    .byte $28               ; Wisdom
    .byte $14               ; Strength
    .byte 1                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sCentipede        ; name
    .word 1                 ; Experience
    .word 1                 ; Money
    .byte 0                 ; Item
    .byte $3A               ; Tile

DustBall:
    .import sDustBall

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $944E             ; HP
    .word 0                 ; PP
    .word $828              ; Offense
    .word $1C78             ; Defense
    .byte $1E               ; Fight
    .byte $32               ; Speed
    .byte $32               ; Wisdom
    .byte $3C               ; Strength
    .byte $14               ; Force
    .byte $4F, $4F, $4F, $4F, $4F, $4F, $4F, $4F; Attacks
    .word sDustBall         ; name
    .word $50               ; Experience
    .word $64               ; Money
    .byte 0                 ; Item
    .byte $3B               ; Tile

Fly:
    .import sFly

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 1                 ; Flags
    .word $A00A             ; HP
    .word 0                 ; PP
    .word $8001             ; Offense
    .word $428              ; Defense
    .byte $20               ; Fight
    .byte $28               ; Speed
    .byte $A                ; Wisdom
    .byte 1                 ; Strength
    .byte $28               ; Force
    .byte $49, $49, $49, 1, $48, 1, 1, 1; Attacks
    .word sFly              ; name
    .word 1                 ; Experience
    .word 1                 ; Money
    .byte 0                 ; Item
    .byte $2B               ; Tile

Spider:
    .import sSpider

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 1                 ; Flags
    .word $A850             ; HP
    .word 0                 ; PP
    .word $2D               ; Offense
    .word $45F              ; Defense
    .byte $3C               ; Fight
    .byte $50               ; Speed
    .byte $50               ; Wisdom
    .byte $3C               ; Strength
    .byte $F                ; Force
    .byte $49, $3D, $3D, $49, $49, 1, 1, $23; Attacks
    .word sSpider           ; name
    .word $30               ; Experience
    .word $28               ; Money
    .byte 0                 ; Item
    .byte $2A               ; Tile

Scorpion:
    .import sScorpion

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 1                 ; Flags
    .word $A44B             ; HP
    .word 0                 ; PP
    .word $3C               ; Offense
    .word $450              ; Defense
    .byte $28               ; Fight
    .byte $3C               ; Speed
    .byte $50               ; Wisdom
    .byte $3C               ; Strength
    .byte $F                ; Force
    .byte $3D, $3D, $3D, 3, 3, 3, 3, 3; Attacks
    .word sScorpion         ; name
    .word $32               ; Experience
    .word $24               ; Money
    .byte 0                 ; Item
    .byte $3D               ; Tile

Rope:
    .import sRope

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $AC50             ; HP
    .word 0                 ; PP
    .word $23               ; Offense
    .word $1432             ; Defense
    .byte $32               ; Fight
    .byte $1E               ; Speed
    .byte 5                 ; Wisdom
    .byte $50               ; Strength
    .byte $50               ; Force
    .byte $47, $47, 1, 1, 1, 1, 1, 1; Attacks
    .word sRope             ; name
    .word $30               ; Experience
    .word $50               ; Money
    .byte $28               ; Item
    .byte $3F               ; Tile

FireBall:
    .import sFireBall

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $C0               ; Flags
    .word $AC3A             ; HP
    .word $2032             ; PP
    .word $4018             ; Offense
    .word $83A              ; Defense
    .byte $23               ; Fight
    .byte $28               ; Speed
    .byte $1E               ; Wisdom
    .byte $32               ; Strength
    .byte $1E               ; Force
    .byte 9, 9, 9, 9, 9, 9, 9, 9; Attacks
    .word sFireBall         ; name
    .word $3D               ; Experience
    .word $23               ; Money
    .byte 0                 ; Item
    .byte $39               ; Tile

Watcher:
    .import sWatcher

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $E41E             ; HP
    .word 0                 ; PP
    .word $10               ; Offense
    .word $818              ; Defense
    .byte $19               ; Fight
    .byte $1E               ; Speed
    .byte $14               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sWatcher          ; name
    .word $1E               ; Experience
    .word $14               ; Money
    .byte 0                 ; Item
    .byte $27               ; Tile

Groucho:
    .import sGroucho

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $A423             ; HP
    .word 0                 ; PP
    .word $400C             ; Offense
    .word $828              ; Defense
    .byte $14               ; Fight
    .byte $14               ; Speed
    .byte $14               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte $51, $51, $51, $51, 1, 1, 1, 1; Attacks
    .word sGroucho          ; name
    .word 3                 ; Experience
    .word $C                ; Money
    .byte 0                 ; Item
    .byte $26               ; Tile

Ghost:
    .import sGhost

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $A414             ; HP
    .word 0                 ; PP
    .word $400C             ; Offense
    .word $1C18             ; Defense
    .byte 6                 ; Fight
    .byte $16               ; Speed
    .byte 5                 ; Wisdom
    .byte $28               ; Strength
    .byte $F                ; Force
    .byte $48, $48, 1, 1, 1, 1, 1, 1; Attacks
    .word sGhost            ; name
    .word 5                 ; Experience
    .word $A                ; Money
    .byte 0                 ; Item
    .byte $3A               ; Tile

LilSaucer:
    .import sLilSaucer

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $D6               ; Flags
    .word $A420             ; HP
    .word $14               ; PP
    .word $8014             ; Offense
    .word $C1E              ; Defense
    .byte $F                ; Fight
    .byte $14               ; Speed
    .byte $12               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, $36, 1, 1, $38, 1, 1, 1; Attacks
    .word sLilSaucer        ; name
    .word $1E               ; Experience
    .word $16               ; Money
    .byte 0                 ; Item
    .byte $28               ; Tile

MrBat:
    .import sMrBat

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $AC14             ; HP
    .word 0                 ; PP
    .word $8008             ; Offense
    .word $40A              ; Defense
    .byte 8                 ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 4                 ; Strength
    .byte 8                 ; Force
    .byte $54, $54, $54, 1, 1, 1, 1, 1; Attacks
    .word sMrBat            ; name
    .word 4                 ; Experience
    .word 7                 ; Money
    .byte 0                 ; Item
    .byte $29               ; Tile

StarmanJr:
    .import sStarmanJr

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $F6               ; Flags
    .word $A034             ; HP
    .word $10               ; PP
    .word $4020             ; Offense
    .word $834              ; Defense
    .byte $23               ; Fight
    .byte $14               ; Speed
    .byte $12               ; Wisdom
    .byte $1E               ; Strength
    .byte $1E               ; Force
    .byte $12, $12, $15, 1, 1, 1, 1, $53; Attacks
    .word sStarmanJr        ; name
    .word $1E               ; Experience
    .word 5                 ; Money
    .byte 0                 ; Item
    .byte $3C               ; Tile

Skunk:
    .import sSkunk

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $A828             ; HP
    .word 0                 ; PP
    .word $1A               ; Offense
    .word $430              ; Defense
    .byte $34               ; Fight
    .byte $1E               ; Speed
    .byte $1E               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte 1, 1, 1, 1, $46, 1, 1, 1; Attacks
    .word sSkunk            ; name
    .word $20               ; Experience
    .word $20               ; Money
    .byte 0                 ; Item
    .byte $2D               ; Tile

Shroudley:
    .import sShroudley

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $485A             ; HP
    .word 0                 ; PP
    .word $2A               ; Offense
    .word $1080             ; Defense
    .byte $19               ; Fight
    .byte $23               ; Speed
    .byte $37               ; Wisdom
    .byte $46               ; Strength
    .byte $A                ; Force
    .byte $34, $34, 7, 1, 1, 1, 1, 1; Attacks
    .word sShroudley        ; name
    .word $3A               ; Experience
    .word $22               ; Money
    .byte 0                 ; Item
    .byte $34               ; Tile

Rat:
    .import sRat

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $A80A             ; HP
    .word 0                 ; PP
    .word 4                 ; Offense
    .word $408              ; Defense
    .byte 6                 ; Fight
    .byte 5                 ; Speed
    .byte 1                 ; Wisdom
    .byte 3                 ; Strength
    .byte 7                 ; Force
    .byte $23, $23, $23, 3, 3, 3, 3, 3; Attacks
    .word sRat              ; name
    .word 3                 ; Experience
    .word 2                 ; Money
    .byte 0                 ; Item
    .byte $3E               ; Tile

Bomber:
    .import sBomber

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $C4               ; Flags
    .word $A43C             ; HP
    .word 0                 ; PP
    .word $A                ; Offense
    .word $C40              ; Defense
    .byte $14               ; Fight
    .byte $23               ; Speed
    .byte $1E               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $46, $46, $46, $10, $10, 1, 1, 1; Attacks
    .word sBomber           ; name
    .word $38               ; Experience
    .word $20               ; Money
    .byte $23               ; Item
    .byte $3B               ; Tile

Doll1:
    .import sDoll

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B004             ; HP
    .word 0                 ; PP
    .word 3                 ; Offense
    .word $1405             ; Defense
    .byte 1                 ; Fight
    .byte 5                 ; Speed
    .byte 3                 ; Wisdom
    .byte 3                 ; Strength
    .byte 3                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sDoll             ; name
    .word 1                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $38               ; Tile

Doll2:
    .import sDoll

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $C40C             ; HP
    .word 0                 ; PP
    .word $4004             ; Offense
    .word $1405             ; Defense
    .byte 3                 ; Fight
    .byte 5                 ; Speed
    .byte 1                 ; Wisdom
    .byte 1                 ; Strength
    .byte 1                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sDoll             ; name
    .word $A                ; Experience
    .word $32               ; Money
    .byte 0                 ; Item
    .byte $38               ; Tile

Lamp:
    .import sLamp

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $D406             ; HP
    .word 0                 ; PP
    .word $4003             ; Offense
    .word $1405             ; Defense
    .byte 1                 ; Fight
    .byte 5                 ; Speed
    .byte 3                 ; Wisdom
    .byte 3                 ; Strength
    .byte 3                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sLamp             ; name
    .word 1                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $38               ; Tile

BionicCenti1:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBionicCenti      ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

BionicCenti2:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBionicCenti      ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

BionicCenti3:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 1                 ; Flags
    .word $8823             ; HP
    .word $2400             ; PP
    .word $10               ; Offense
    .word $420              ; Defense
    .byte $F                ; Fight
    .byte $1C               ; Speed
    .byte $3C               ; Wisdom
    .byte $1E               ; Strength
    .byte $1E               ; Force
    .byte 1, $3D, $3D, 1, 1, 1, 1, 1; Attacks
    .word sBionicCenti      ; name
    .word $12               ; Experience
    .word $E                ; Money
    .byte 0                 ; Item
    .byte $3A               ; Tile

BionicScorp:
    .import sBionicScorp

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 1                 ; Flags
    .word $A864             ; HP
    .word 0                 ; PP
    .word $3C               ; Offense
    .word $496              ; Defense
    .byte $28               ; Fight
    .byte $46               ; Speed
    .byte $50               ; Wisdom
    .byte $3C               ; Strength
    .byte $3C               ; Force
    .byte $3D, $3E, $3D, $3E, 1, 1, 1, 1; Attacks
    .word sBionicScorp      ; name
    .word $3D               ; Experience
    .word $38               ; Money
    .byte 0                 ; Item
    .byte $3D               ; Tile

RedSnake1:
    .import sRedSnake

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRedSnake         ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

RedSnake2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRedSnake         ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

RedSnake3:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $8496             ; HP
    .word 0                 ; PP
    .word $32               ; Offense
    .word $4A0              ; Defense
    .byte $5A               ; Fight
    .byte $64               ; Speed
    .byte $3C               ; Wisdom
    .byte $3C               ; Strength
    .byte $28               ; Force
    .byte $48, $48, $48, $48, $48, $48, 1, 1; Attacks
    .word sRedSnake         ; name
    .word $1F4              ; Experience
    .word $14A              ; Money
    .byte $2F               ; Item
    .byte $3D               ; Tile

LoneWolf:
    .import sLoneWolf

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $20               ; Flags
    .word $4850             ; HP
    .word 0                 ; PP
    .word $3C               ; Offense
    .word $496              ; Defense
    .byte $32               ; Fight
    .byte $3C               ; Speed
    .byte $1E               ; Wisdom
    .byte $1E               ; Strength
    .byte $3C               ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sLoneWolf         ; name
    .word $64               ; Experience
    .word $29               ; Money
    .byte 0                 ; Item
    .byte $36               ; Tile

PolarBear:
    .import sPolarBear

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $20               ; Flags
    .word $2464             ; HP
    .word 0                 ; PP
    .word $34               ; Offense
    .word $4B4              ; Defense
    .byte $1E               ; Fight
    .byte $28               ; Speed
    .byte $1E               ; Wisdom
    .byte $28               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 4, 5, $4F, 1, 1; Attacks
    .word sPolarBear        ; name
    .word $A0               ; Experience
    .word $32               ; Money
    .byte 0                 ; Item
    .byte $2B               ; Tile

Rattlesnake1:
    .import sRattlesnake

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $A046             ; HP
    .word $64               ; PP
    .word $41               ; Offense
    .word $43C              ; Defense
    .byte $37               ; Fight
    .byte $2D               ; Speed
    .byte $1E               ; Wisdom
    .byte $1E               ; Strength
    .byte $2D               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; name
    .word $60               ; Experience
    .word $25               ; Money
    .byte 0                 ; Item
    .byte $3C               ; Tile

Rattlesnake2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $A046             ; HP
    .word $64               ; PP
    .word $3C               ; Offense
    .word $437              ; Defense
    .byte $28               ; Fight
    .byte $37               ; Speed
    .byte $28               ; Wisdom
    .byte $28               ; Strength
    .byte $3C               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; name
    .word $62               ; Experience
    .word $22               ; Money
    .byte 0                 ; Item
    .byte $2C               ; Tile

Rattlesnake3:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $5F               ; HP
    .word $64               ; PP
    .word $46               ; Offense
    .word $5A               ; Defense
    .byte $32               ; Fight
    .byte $32               ; Speed
    .byte $1E               ; Wisdom
    .byte $1E               ; Strength
    .byte $28               ; Force
    .byte $37, $3D, $3D, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

Rattlesnake4:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

Rattlesnake5:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 8                 ; Flags
    .word $8864             ; HP
    .word $2C00             ; PP
    .word $41               ; Offense
    .word $480              ; Defense
    .byte $3C               ; Fight
    .byte $50               ; Speed
    .byte $50               ; Wisdom
    .byte $3C               ; Strength
    .byte $14               ; Force
    .byte $5D, $5D, $5D, 7, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; name
    .word $39               ; Experience
    .word $36               ; Money
    .byte 0                 ; Item
    .byte $3D               ; Tile

Tarantula:
    .import sTarantula

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 1                 ; Flags
    .word $A478             ; HP
    .word 0                 ; PP
    .word $54               ; Offense
    .word $4A0              ; Defense
    .byte $46               ; Fight
    .byte $50               ; Speed
    .byte $50               ; Wisdom
    .byte $3C               ; Strength
    .byte $F                ; Force
    .byte $49, $49, $3D, $3D, $3D, $3D, 1, 1; Attacks
    .word sTarantula        ; name
    .word $CD               ; Experience
    .word $55               ; Money
    .byte 0                 ; Item
    .byte $2A               ; Tile

Crocodile:
    .import sCrocodile

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4478             ; HP
    .word 0                 ; PP
    .word $50               ; Offense
    .word $496              ; Defense
    .byte $28               ; Fight
    .byte $1E               ; Speed
    .byte $28               ; Wisdom
    .byte $50               ; Strength
    .byte $14               ; Force
    .byte $5D, $5D, 1, 1, 1, 1, 1, 1; Attacks
    .word sCrocodile        ; name
    .word $AC               ; Experience
    .word $58               ; Money
    .byte 0                 ; Item
    .byte $31               ; Tile

Buffalo1:
    .import sBuffalo

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $A05A             ; HP
    .word $64               ; PP
    .word $46               ; Offense
    .word $43C              ; Defense
    .byte $3C               ; Fight
    .byte $50               ; Speed
    .byte $50               ; Wisdom
    .byte $50               ; Strength
    .byte $50               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBuffalo          ; name
    .word $4E               ; Experience
    .word $24               ; Money
    .byte 0                 ; Item
    .byte $2C               ; Tile

Buffalo2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $3096             ; HP
    .word 0                 ; PP
    .word $44               ; Offense
    .word $496              ; Defense
    .byte $3C               ; Fight
    .byte $2B               ; Speed
    .byte $28               ; Wisdom
    .byte $28               ; Strength
    .byte $14               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBuffalo          ; name
    .word $67               ; Experience
    .word $5F               ; Money
    .byte 0                 ; Item
    .byte $2C               ; Tile

BionicBat1:
    .import sBionicBat

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBionicBat        ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

BionicBat2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $A032             ; HP
    .word 0                 ; PP
    .word $8022             ; Offense
    .word $440              ; Defense
    .byte $14               ; Fight
    .byte $23               ; Speed
    .byte $32               ; Wisdom
    .byte $3C               ; Strength
    .byte $1E               ; Force
    .byte $49, $49, $54, $54, 1, 1, 1, $3E; Attacks
    .word sBionicBat        ; name
    .word $28               ; Experience
    .word $22               ; Money
    .byte 0                 ; Item
    .byte $29               ; Tile

StrayDog:
    .import sStrayDog

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4C10             ; HP
    .word $3000             ; PP
    .word 8                 ; Offense
    .word $40A              ; Defense
    .byte 8                 ; Fight
    .byte $C                ; Speed
    .byte 2                 ; Wisdom
    .byte 5                 ; Strength
    .byte 8                 ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sStrayDog         ; name
    .word 4                 ; Experience
    .word $A                ; Money
    .byte $1B               ; Item
    .byte $36               ; Tile

PsychoCar:
    .import sPsychoCar

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $4428             ; HP
    .word 0                 ; PP
    .word $12               ; Offense
    .word $1828             ; Defense
    .byte $2D               ; Fight
    .byte $28               ; Speed
    .byte $23               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 6, $32, 6, 6, 6, 6, 6, 6; Attacks
    .word sPsychoCar        ; name
    .word $3D               ; Experience
    .word $2D               ; Money
    .byte 0                 ; Item
    .byte $2E               ; Tile

PsychoTruck:
    .import sPsychoTruck

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $243A             ; HP
    .word 0                 ; PP
    .word $14               ; Offense
    .word $1828             ; Defense
    .byte $1E               ; Fight
    .byte $20               ; Speed
    .byte $23               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 6, 6, $32, $32, 6, 6, 6, $32; Attacks
    .word sPsychoTruck      ; name
    .word $22               ; Experience
    .word $1B               ; Money
    .byte 0                 ; Item
    .byte $26               ; Tile

ManiacTruck:
    .import sManiacTruck

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $2C50             ; HP
    .word 0                 ; PP
    .word $22               ; Offense
    .word $1830             ; Defense
    .byte $2D               ; Fight
    .byte $23               ; Speed
    .byte $23               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $32, $32, 6, 6, $32, 6, 6, $32; Attacks
    .word sManiacTruck      ; name
    .word $4B               ; Experience
    .word $3A               ; Money
    .byte 0                 ; Item
    .byte $26               ; Tile

AlarmGhost:
    .import sAlarmGhost

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $AC64             ; HP
    .word 0                 ; PP
    .word $401E             ; Offense
    .word $1CA0             ; Defense
    .byte $32               ; Fight
    .byte $5A               ; Speed
    .byte $32               ; Wisdom
    .byte $3C               ; Strength
    .byte $1E               ; Force
    .byte $49, $49, $49, $49, 1, 1, 1, 1; Attacks
    .word sAlarmGhost       ; name
    .word $50               ; Experience
    .word $1B               ; Money
    .byte 0                 ; Item
    .byte $3A               ; Tile

Foureyes1:
    .import sFoureyes

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sFoureyes         ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

Foureyes2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $F428             ; HP
    .word 0                 ; PP
    .word $2016             ; Offense
    .word $820              ; Defense
    .byte $14               ; Fight
    .byte $28               ; Speed
    .byte $14               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte $5D, $5D, $5D, 1, 1, 1, 1, 1; Attacks
    .word sFoureyes         ; name
    .word $20               ; Experience
    .word $1A               ; Money
    .byte 0                 ; Item
    .byte $27               ; Tile

Dadseyes:
    .import sDadseyes

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $E428             ; HP
    .word $400              ; PP
    .word $2014             ; Offense
    .word $820              ; Defense
    .byte $14               ; Fight
    .byte $14               ; Speed
    .byte $14               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte $28, $28, $28, 1, 1, 1, 1, 1; Attacks
    .word sDadseyes         ; name
    .word $23               ; Experience
    .word $35               ; Money
    .byte 0                 ; Item
    .byte $27               ; Tile

Momseyes:
    .import sMomseyes

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $E428             ; HP
    .word $800              ; PP
    .word $4018             ; Offense
    .word $814              ; Defense
    .byte $32               ; Fight
    .byte $32               ; Speed
    .byte $14               ; Wisdom
    .byte $14               ; Strength
    .byte $14               ; Force
    .byte 2, 2, 2, 2, 2, 2, 2, 2; Attacks
    .word sMomseyes         ; name
    .word $23               ; Experience
    .word $22               ; Money
    .byte 0                 ; Item
    .byte $27               ; Tile

SkyYddet1:
    .import sSkyYddet

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $48B4             ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sSkyYddet         ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $2F               ; Tile

SkyYddet2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4CB4             ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sSkyYddet         ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $2F               ; Tile

SkyYddet3:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $4C4A             ; HP
    .word $4000             ; PP
    .word $4018             ; Offense
    .word $832              ; Defense
    .byte $14               ; Fight
    .byte $1E               ; Speed
    .byte $14               ; Wisdom
    .byte $32               ; Strength
    .byte $14               ; Force
    .byte $4F, $4F, $4F, $4F, $4F, $4F, 7, 7; Attacks
    .word sSkyYddet         ; name
    .word $28               ; Experience
    .word $17               ; Money
    .byte $49               ; Item
    .byte $2F               ; Tile

GigaBorg1:
    .import sGigaBorg

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $2CB4             ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sGigaBorg         ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $28               ; Tile

GigaBorg2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $2CB4             ; HP
    .word $50               ; PP
    .word $64               ; Offense
    .word $CB4              ; Defense
    .byte $50               ; Fight
    .byte $3C               ; Speed
    .byte $50               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $12, $15, $12, $12, $13, $12, $12, $12; Attacks
    .word sGigaBorg         ; name
    .word $62               ; Experience
    .word $8F               ; Money
    .byte $25               ; Item
    .byte $28               ; Tile

OmegaBorg:
    .import sOmegaBorg

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $28E6             ; HP
    .word $96               ; PP
    .word $96               ; Offense
    .word $CC8              ; Defense
    .byte $C8               ; Fight
    .byte $64               ; Speed
    .byte $5A               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $15, $13, $13, $A, $A, $83, 1, $E; Attacks
    .word sOmegaBorg        ; name
    .word $B4               ; Experience
    .word $CD               ; Money
    .byte 0                 ; Item
    .byte $28               ; Tile

Scrapper:
    .import sScrapper

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $86               ; Flags
    .word $2046             ; HP
    .word $1C1E             ; PP
    .word $1A               ; Offense
    .word $C4C              ; Defense
    .byte $19               ; Fight
    .byte $14               ; Speed
    .byte $14               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $53, $53, 1, 1, 1, $12, $12, $12; Attacks
    .word sScrapper         ; name
    .word $41               ; Experience
    .word $26               ; Money
    .byte $25               ; Item
    .byte $27               ; Tile

UltraBarbot:
    .import sUltraBarbot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $D4               ; Flags
    .word $5850             ; HP
    .word $32               ; PP
    .word $36               ; Offense
    .word $C50              ; Defense
    .byte $1E               ; Fight
    .byte $32               ; Speed
    .byte $28               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, $15, 1, 1, 1, 1, 1, 1; Attacks
    .word sUltraBarbot      ; name
    .word $DC               ; Experience
    .word $57               ; Money
    .byte $26               ; Item
    .byte $31               ; Tile

OmegaSaucer:
    .import sOmegaSaucer

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $A441             ; HP
    .word $32               ; PP
    .word $8C2A             ; Offense
    .word $C32              ; Defense
    .byte $14               ; Fight
    .byte $3C               ; Speed
    .byte $28               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $12, 1, $38, 1, 1, 1, 1, 1; Attacks
    .word sOmegaSaucer      ; name
    .word $52               ; Experience
    .word $39               ; Money
    .byte 0                 ; Item
    .byte $28               ; Tile

Kelly:
    .import sKelly

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $86               ; Flags
    .word $5878             ; HP
    .word $3450             ; PP
    .word $50               ; Offense
    .word $C96              ; Defense
    .byte $32               ; Fight
    .byte $46               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $6B, $62, $31, 1, $6B, 1, 1, 1; Attacks
    .word sKelly            ; name
    .word $66               ; Experience
    .word $58               ; Money
    .byte 0                 ; Item
    .byte $32               ; Tile

StarMiner:
    .import sStarMiner

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $A0C8             ; HP
    .word 0                 ; PP
    .word $8C               ; Offense
    .word $CC8              ; Defense
    .byte $64               ; Fight
    .byte $64               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $46, $10, $46, $10, $10, $10, $10, 1; Attacks
    .word sStarMiner        ; name
    .word $D1               ; Experience
    .word $8A               ; Money
    .byte $24               ; Item
    .byte $3B               ; Tile

SuperEnergy:
    .import sSuperEnergy

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $84               ; Flags
    .word $A878             ; HP
    .word 0                 ; PP
    .word $432              ; Offense
    .word $C78              ; Defense
    .byte $1E               ; Fight
    .byte $23               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $2E, $2E, $2E, $2E, 1, 1, 1, 1; Attacks
    .word sSuperEnergy      ; name
    .word $E6               ; Experience
    .word $104              ; Money
    .byte 0                 ; Item
    .byte $2C               ; Tile

Juana:
    .import sJuana

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $5D2C             ; HP
    .word $38C8             ; PP
    .word $C8               ; Offense
    .word $CFA              ; Defense
    .byte $C8               ; Fight
    .byte $78               ; Speed
    .byte $64               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $18, $83, $A, $6B, $B, $15, 1, 1; Attacks
    .word sJuana            ; name
    .word $10E              ; Experience
    .word $16A              ; Money
    .byte $49               ; Item
    .byte $32               ; Tile

BlueStarman:
    .import sBlueStarman

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $5864             ; HP
    .word $50               ; PP
    .word $4A               ; Offense
    .word $878              ; Defense
    .byte $28               ; Fight
    .byte $2A               ; Speed
    .byte $3C               ; Wisdom
    .byte $32               ; Strength
    .byte $2D               ; Force
    .byte $12, $13, $38, $53, $53, $15, 1, 1; Attacks
    .word sBlueStarman      ; name
    .word $96               ; Experience
    .word $5B               ; Money
    .byte 0                 ; Item
    .byte $33               ; Tile

Rockoyle:
    .import sRockoyle

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 4                 ; Flags
    .word $3478             ; HP
    .word $3C               ; PP
    .word $4046             ; Offense
    .word $896              ; Defense
    .byte $3C               ; Fight
    .byte $41               ; Speed
    .byte $78               ; Wisdom
    .byte $1E               ; Strength
    .byte $64               ; Force
    .byte $D, $40, $E, $F, 1, 1, 1, 1; Attacks
    .word sRockoyle         ; name
    .word $A2               ; Experience
    .word $5D               ; Money
    .byte 0                 ; Item
    .byte $29               ; Tile

Titanian:
    .import sTitanian

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $C                ; Flags
    .word $4D40             ; HP
    .word 0                 ; PP
    .word $64               ; Offense
    .word $9A4              ; Defense
    .byte $3C               ; Fight
    .byte $46               ; Speed
    .byte $C8               ; Wisdom
    .byte $50               ; Strength
    .byte $19               ; Force
    .byte $62, $62, $62, 1, 1, 1, 1, $3E; Attacks
    .word sTitanian         ; name
    .word $B4               ; Experience
    .word $82               ; Money
    .byte 0                 ; Item
    .byte $33               ; Tile

OhMook:
    .import sOhMook

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $24               ; Flags
    .word $54A0             ; HP
    .word $FA               ; PP
    .word $3C               ; Offense
    .word $88C              ; Defense
    .byte $64               ; Fight
    .byte $41               ; Speed
    .byte $FA               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte $A, $D, $42, $4B, $2B, $1D, $31, $36; Attacks
    .word sOhMook           ; name
    .word $AF               ; Experience
    .word $6E               ; Money
    .byte 0                 ; Item
    .byte $34               ; Tile

Zombie1:
    .import sZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $B4               ; HP
    .word $78               ; PP
    .word $23               ; Offense
    .word $14               ; Defense
    .byte $32               ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte $2D               ; Strength
    .byte $1E               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sZombie           ; name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; Tile

Zombie2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $8846             ; HP
    .word $32               ; PP
    .word $32               ; Offense
    .word $1050             ; Defense
    .byte $2D               ; Fight
    .byte $30               ; Speed
    .byte $50               ; Wisdom
    .byte $3C               ; Strength
    .byte $F                ; Force
    .byte $42, $42, $42, $4C, $4C, $4C, $4C, 1; Attacks
    .word sZombie           ; name
    .word $30               ; Experience
    .word $2B               ; Money
    .byte 0                 ; Item
    .byte $3C               ; Tile

NastyZombie:
    .import sNastyZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $80               ; Flags
    .word $785A             ; HP
    .word 0                 ; PP
    .word $3E               ; Offense
    .word $105A             ; Defense
    .byte $1E               ; Fight
    .byte $1E               ; Speed
    .byte $32               ; Wisdom
    .byte $3C               ; Strength
    .byte $14               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sNastyZombie      ; name
    .word $36               ; Experience
    .word $3A               ; Money
    .byte 0                 ; Item
    .byte $3C               ; Tile

SilverWolf:
    .import sSilverWolf

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $20               ; Flags
    .word $4850             ; HP
    .word 0                 ; PP
    .word $2C               ; Offense
    .word $44C              ; Defense
    .byte $28               ; Fight
    .byte $2A               ; Speed
    .byte $1E               ; Wisdom
    .byte $1E               ; Strength
    .byte $19               ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sSilverWolf       ; name
    .word $42               ; Experience
    .word $2B               ; Money
    .byte 0                 ; Item
    .byte $36               ; Tile

R7037:
    .import sR7037

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $FE               ; Flags
    .word $13E8             ; HP
    .word $1000             ; PP
    .word $12C              ; Offense
    .word $E58              ; Defense
    .byte $64               ; Fight
    .byte $64               ; Speed
    .byte $28               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sR7037            ; name
    .word $CD               ; Experience
    .word $47               ; Money
    .byte 0                 ; Item
    .byte $22               ; Tile

GrizzlyBear:
    .import sGrizzlyBear

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $2954             ; HP
    .word 0                 ; PP
    .word $A0               ; Offense
    .word $554              ; Defense
    .byte $64               ; Fight
    .byte $64               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $19               ; Force
    .byte 2, 2, 2, 4, 5, 2, 2, 7; Attacks
    .word sGrizzlyBear      ; name
    .word $FA               ; Experience
    .word $41               ; Money
    .byte 0                 ; Item
    .byte $2B               ; Tile

R7038XX:
    .import sR7038XX

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte $F6               ; Flags
    .word $1FE8             ; HP
    .word $1800             ; PP
    .word $384              ; Offense
    .word $FE8              ; Defense
    .byte $3C               ; Fight
    .byte $3C               ; Speed
    .byte $3C               ; Wisdom
    .byte $64               ; Strength
    .byte $64               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sR7038XX          ; name
    .word $226              ; Experience
    .word $B4               ; Money
    .byte 0                 ; Item
    .byte $22               ; Tile

LastStarman:
    .import sLastStarman

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte 0                 ; Flags
    .word $5878             ; HP
    .word $64               ; PP
    .word $5A               ; Offense
    .word $88C              ; Defense
    .byte $46               ; Fight
    .byte $3C               ; Speed
    .byte $3C               ; Wisdom
    .byte $50               ; Strength
    .byte $32               ; Force
    .byte $13, $13, $38, $15, 1, 1, $53, $53; Attacks
    .word sLastStarman      ; name
    .word $14A              ; Experience
    .word $185              ; Money
    .byte $49               ; Item
    .byte $33               ; Tile

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