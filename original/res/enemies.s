.segment "BANK_6"

;--------------------------------------------------------
;                    ENEMY_FLAGS
;--------------------------------------------------------
NO_RESIST               = $00
SPRAY_VULNERABLE        = $01
RESIST_PK_BEAM          = $02
IMMUNE_SLEEP_DEFDOWN    = $04
ENEMY_FLAGS_8           = $08
RESIST_PK_THUNDER       = $10
RESIST_PK_FREEZE        = $20
RESIST_PK_FIRE          = $40
IMMUNE_STATUS_EFFECTS   = $80

; HP, PP, Offense, Defense maximum possible value of 1023
;--------------------------------------------------------
;                       HP fields
;--------------------------------------------------------

COLOR0                  = $00 << 10
COLOR1                  = $01 << 10
COLOR2                  = $02 << 10
COLOR3                  = $03 << 10

TILE0                   = $00 << 12
TILE1                   = $01 << 12
TILE2                   = $02 << 12
TILE4                   = $04 << 12
TILE8                   = $08 << 12

;--------------------------------------------------------
;                       PP fields
;--------------------------------------------------------

EXTRA0                  = $00 << 10
EXTRA1                  = $01 << 10
EXTRA2                  = $02 << 10
EXTRA4                  = $04 << 10
EXTRA8                  = $08 << 10
EXTRA16                 = $10 << 10
EXTRA32                 = $20 << 10

;--------------------------------------------------------
;                   Offense fields
;--------------------------------------------------------
NONE_ACT                = $00 << 10
EXPLODE                 = $01 << 10
BURST                   = $02 << 10

ALTITUDE0               = $00 << 13
ALTITUDE1               = $01 << 13
ALTITUDE2               = $02 << 13
ALTITUDE4               = $04 << 13

;--------------------------------------------------------
;                   Defense fields
;--------------------------------------------------------

MSG0                    = $00 << 10
MSG1                    = $01 << 10
MSG2                    = $02 << 10
MSG3                    = $03 << 10
MSG4                    = $04 << 10
MSG5                    = $05 << 10
MSG6                    = $06 << 10
MSG7                    = $07 << 10

;--------------------------------------------------------
;                   Enemy properties
;--------------------------------------------------------

HIDE                    = $80

;--------------------------------------------------------
;                     Enemy names
;--------------------------------------------------------

.enum
    Unknown
    BigWoodoh
    Dragon
    R7038
    Elephant
    Bear
    BigFoot
    MadTruck
    OldRobot
    Megaborg
    Gargoyle
    Gabilan
    Gorilla
    Bison
    Tiger
    MadCar
    RaebYddet
    MagicSnail
    Titanees
    Giegue
    Eagle
    Wolf
    Seagull
    Alligator
    EnergyRobot
    TheFish
    Fugitive
    BBsBoss
    Barbot
    Nancy
    Starman
    Ullrich
    Cerebrum
    Mook
    Armor
    Woodoh
    Wally
    TheHippie
    BagLady
    BBGang
    DrDistorto
    GangZombie1
    GangZombie
    PseudoZombi
    Crow
    Snake
    Hyena
    Cougar
    Centipede
    DustBall
    Fly
    Spider
    Scorpion
    Rope
    FireBall
    Watcher
    Groucho
    Ghost
    LilSaucer
    MrBat
    StarmanJr
    Skunk
    Shroudley
    Rat
    Bomber
    Doll1
    Doll
    Lamp
    BionicCenti1
    BionicCenti2
    BionicCenti
    BionicScorp
    RedSnake1
    RedSnake2
    RedSnake
    LoneWolf
    PolarBear
    Rattlesnake1
    Rattlesnake2
    Rattlesnake3
    Rattlesnake4
    Rattlesnake
    Tarantula
    Crocodile
    Buffalo1
    Buffalo
    BionicBat1
    BionicBat
    StrayDog
    PsychoCar
    PsychoTruck
    ManiacTruck
    AlarmGhost
    Foureyes1
    Foureyes
    Dadseyes
    Momseyes
    SkyYddet1
    SkyYddet2
    SkyYddet
    GigaBorg1
    GigaBorg
    OmegaBorg
    Scrapper
    UltraBarbot
    OmegaSaucer
    Kelly
    StarMiner
    SuperEnergy
    Juana
    BlueStarman
    Rockoyle
    Titanian
    OhMook
    Zombie1
    Zombie
    NastyZombie
    SilverWolf
    R7037
    GrizzlyBear
    R7038XX
    LastStarman
    NO_ENEMY            = $FF
.endenum

; ENEMY <0, 0, 0, $12C, $12C, $12C, $12C, $64, $64, $64, $64, $64, 0, EnemyNameList, 0, 0, 0, 0>
    .import EnemyNameList

.export EnemyList
EnemyList:
;Unknown:
    .byte 0, 0, NO_RESIST
    .word 300, 300, 300, 300
    .byte 100, 100, 100, 100, 100
    .byte 0, 0, 0, 0, 0, 0, 0, 0
    .word EnemyNameList
    .word 0, 0
    .byte 0, 0

;BigWoodoh:
    .import sBigWoodoh

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|RESIST_PK_FREEZE ; Flags
    .word 70|COLOR1|TILE1   ; HP
    .word EXTRA1|EXTRA2     ; PP
    .word 18|BURST          ; Offense
    .word 50|MSG2           ; Defense
    .byte 20                ; Fight
    .byte 23                ; Speed
    .byte 60                ; Wisdom
    .byte 60                ; Strength
    .byte 18                ; Force
    .byte 1, 52, 65, 65, 1, 1, 1, 1; Attacks
    .word sBigWoodoh        ; Name
    .word 100               ; Experience
    .word 140               ; Money
    .byte 72                ; Item
    .byte $20               ; TilePage

;Dragon:
    .import sDragon

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 650|TILE1         ; HP
    .word 200               ; PP
    .word 180               ; Offense
    .word 200|MSG1          ; Defense
    .byte 60                ; Fight
    .byte 60                ; Speed
    .byte 20                ; Wisdom
    .byte 100               ; Strength
    .byte 60                ; Force
    .byte 108, 10, 108, 1, 10, 1, 1, 131; Attacks
    .word sDragon           ; Name
    .word 500               ; Experience
    .word 1200              ; Money
    .byte 0                 ; Item
    .byte $21               ; TilePage

;R7038:
    .import sR7038

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS   ; Flags
    .word 1000|COLOR1|TILE1 ; HP
    .word EXTRA4|EXTRA1     ; PP
    .word 600               ; Offense
    .word 1000|MSG3         ; Defense
    .byte 40                ; Fight
    .byte 50                ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sR7038            ; Name
    .word 430               ; Experience
    .word 101               ; Money
    .byte 0                 ; Item
    .byte $22               ; TilePage

;Elephant:
    .import sElephant

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 70|COLOR2|TILE1   ; HP
    .word 0                 ; PP
    .word 20                ; Offense
    .word 34|MSG1           ; Defense
    .byte 30                ; Fight
    .byte 10                ; Speed
    .byte 5                 ; Wisdom
    .byte 30                ; Strength
    .byte 8                 ; Force
    .byte 5, 5, 5, 1, 1, 1, 1, 1; Attacks
    .word sElephant         ; Name
    .word 60                ; Experience
    .word 99                ; Money
    .byte 0                 ; Item
    .byte $23               ; TilePage

;Bear:
    .import sBear

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 80|TILE2          ; HP
    .word 0                 ; PP
    .word 42                ; Offense
    .word 64|MSG1           ; Defense
    .byte 30                ; Fight
    .byte 28                ; Speed
    .byte 20                ; Wisdom
    .byte 40                ; Strength
    .byte 10                ; Force
    .byte 1, 1, 1, 4, 5, 79, 1, 1; Attacks
    .word sBear             ; Name
    .word 70                ; Experience
    .word 250               ; Money
    .byte 0                 ; Item
    .byte $2B               ; TilePage

;BigFoot:
    .import sBigFoot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_FREEZE  ; Flags
    .word 90|COLOR2|TILE1   ; HP
    .word 50                ; PP
    .word 50                ; Offense
    .word 90|MSG1           ; Defense
    .byte 50                ; Fight
    .byte 38                ; Speed
    .byte 30                ; Wisdom
    .byte 60                ; Strength
    .byte 15                ; Force
    .byte 15, 13, 12, 12, 12, 12, 12, 12; Attacks
    .word sBigFoot          ; Name
    .word 150               ; Experience
    .word 48                ; Money
    .byte 0                 ; Item
    .byte $25               ; TilePage

;MadTruck:
    .import sMadTruck

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS    ; Flags
    .word 60|TILE2          ; HP
    .word 0                 ; PP
    .word 22                ; Offense
    .word 40|MSG6           ; Defense
    .byte 38                ; Fight
    .byte 35                ; Speed
    .byte 35                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 6, 6, 6, 6, 6, 6, 50, 50 ; Attacks
    .word sMadTruck         ; Name
    .word 57                ; Experience
    .word 30                ; Money
    .byte 0                 ; Item
    .byte $26               ; TilePage

;OldRobot:
    .import sOldRobot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS    ; Flags
    .word 60|COLOR2|TILE2   ; HP
    .word 30                ; PP
    .word 48                ; Offense
    .word 72|MSG3           ; Defense
    .byte 25                ; Fight
    .byte 20                ; Speed
    .byte 20                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 18, 18, 83, 1, 1, 1, 1; Attacks
    .word sOldRobot         ; Name
    .word 54                ; Experience
    .word 38                ; Money
    .byte 0                 ; Item
    .byte $27               ; TilePage

;Megaborg:
    .import sMegaborg

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 160|TILE2         ; HP
    .word 60                ; PP
    .word 80                ; Offense
    .word 170|MSG3          ; Defense
    .byte 60                ; Fight
    .byte 50                ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 18, 19, 18, 18, 18, 18, 18, 1; Attacks
    .word sMegaborg         ; Name
    .word 197               ; Experience
    .word 109               ; Money
    .byte 0                 ; Item
    .byte $28               ; TilePage

;Gargoyle:
    .import sGargoyle

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN  ; Flags
    .word 180|TILE2|TILE1   ; HP
    .word 60                ; PP
    .word 90|ALTITUDE2      ; Offense
    .word 160|MSG2          ; Defense
    .byte 80                ; Fight
    .byte 70                ; Speed
    .byte 70                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 10, 1, 11, 10, 1, 11, 1, 62; Attacks
    .word sGargoyle         ; Name
    .word 110               ; Experience
    .word 86                ; Money
    .byte 0                 ; Item
    .byte $29               ; TilePage

;Gabilan:
    .import sGabilan

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 100|TILE2         ; HP
    .word 0                 ; PP
    .word 62                ; Offense
    .word 100|MSG2          ; Defense
    .byte 50                ; Fight
    .byte 68                ; Speed
    .byte 70                ; Wisdom
    .byte 15                ; Strength
    .byte 15                ; Force
    .byte 1, 63, 63, 1, 2, 1, 1, 52; Attacks
    .word sGabilan          ; Name
    .word 70                ; Experience
    .word 43                ; Money
    .byte 0                 ; Item
    .byte $2A               ; TilePage

;Gorilla:
    .import sGorilla

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 40|COLOR2|TILE4   ; HP
    .word 0                 ; PP
    .word 20                ; Offense
    .word 26|MSG1           ; Defense
    .byte 35                ; Fight
    .byte 15                ; Speed
    .byte 5                 ; Wisdom
    .byte 10                ; Strength
    .byte 20                ; Force
    .byte 75, 1, 1, 40, 1, 1, 1, 1; Attacks
    .word sGorilla          ; Name
    .word 23                ; Experience
    .word 52                ; Money
    .byte 0                 ; Item
    .byte $32               ; TilePage

;Bison:
    .import sBison

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 160|TILE2|TILE1   ; HP
    .word 0                 ; PP
    .word 70                ; Offense
    .word 160|MSG1          ; Defense
    .byte 50                ; Fight
    .byte 50                ; Speed
    .byte 80                ; Wisdom
    .byte 80                ; Strength
    .byte 80                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 2; Attacks
    .word sBison            ; Name
    .word 186               ; Experience
    .word 83                ; Money
    .byte 0                 ; Item
    .byte $2C               ; TilePage

;Tiger:
    .import sTiger

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 35|COLOR2|TILE2   ; HP
    .word 0                 ; PP
    .word 26                ; Offense
    .word 24|MSG1           ; Defense
    .byte 40                ; Fight
    .byte 20                ; Speed
    .byte 5                 ; Wisdom
    .byte 10                ; Strength
    .byte 20                ; Force
    .byte 3, 2, 2, 3, 3, 3, 3, 2; Attacks
    .word sTiger            ; Name
    .word 24                ; Experience
    .word 47                ; Money
    .byte 0                 ; Item
    .byte $2D               ; TilePage

;MadCar:
    .import sMadCar

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS    ; Flags
    .word 40|TILE4          ; HP
    .word 0                 ; PP
    .word 20                ; Offense
    .word 38|MSG6           ; Defense
    .byte 45                ; Fight
    .byte 40                ; Speed
    .byte 35                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 6, 6, 6, 6, 6, 6, 6, 50; Attacks
    .word sMadCar           ; Name
    .word 55                ; Experience
    .word 32                ; Money
    .byte 0                 ; Item
    .byte $2E               ; TilePage

;RaebYddet:
    .import sRaebYddet

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 40|COLOR2|TILE4   ; HP
    .word 0                 ; PP
    .word 22                ; Offense
    .word 38|MSG2           ; Defense
    .byte 25                ; Fight
    .byte 25                ; Speed
    .byte 18                ; Wisdom
    .byte 25                ; Strength
    .byte 18                ; Force
    .byte 73, 73, 1, 1, 1, 1, 1, 1; Attacks
    .word sRaebYddet        ; Name
    .word 25                ; Experience
    .word 27                ; Money
    .byte 0                 ; Item
    .byte $2F               ; TilePage

;MagicSnail:
    .import sMagicSnail

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte ENEMY_FLAGS_8     ; Flags
    .word 50|COLOR1|TILE4   ; HP
    .word 0                 ; PP
    .word 20                ; Offense
    .word 90|MSG2           ; Defense
    .byte 20                ; Fight
    .byte 18                ; Speed
    .byte 18                ; Wisdom
    .byte 40                ; Strength
    .byte 18                ; Force
    .byte 1, 93, 1, 1, 1, 1, 1, 1; Attacks
    .word sMagicSnail       ; Name
    .word 42                ; Experience
    .word 28                ; Money
    .byte 0                 ; Item
    .byte $30               ; TilePage

;Titanees:
    .import sTitanees

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8    ; Flags
    .word 130|COLOR2|TILE4  ; HP
    .word 40                ; PP
    .word 54                ; Offense
    .word 200|MSG2          ; Defense
    .byte 30                ; Fight
    .byte 58                ; Speed
    .byte 80                ; Wisdom
    .byte 60                ; Strength
    .byte 10                ; Force
    .byte 68, 68, 68, 1, 1, 1, 1, 1; Attacks
    .word sTitanees         ; Name
    .word 78                ; Experience
    .word 50                ; Money
    .byte 0                 ; Item
    .byte $33               ; TilePage

;Giegue:
    .import sGiegue

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 35|COLOR3|TILE1   ; HP
    .word EXTRA8|EXTRA4|EXTRA2|EXTRA1 ; PP
    .word 15                ; Offense
    .word 20|MSG2           ; Defense
    .byte 20                ; Fight
    .byte 100               ; Speed
    .byte 14                ; Wisdom
    .byte 10                ; Strength
    .byte 23                ; Force
    .byte 8, 8, 8, 8, 8, 8, 8, 8; Attacks
    .word sGiegue           ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $24               ; TilePage

;Eagle:
    .import sEagle

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 45|COLOR3|TILE4   ; HP
    .word 0                 ; PP
    .word 32|ALTITUDE2      ; Offense
    .word 44|MSG1           ; Defense
    .byte 20                ; Fight
    .byte 60                ; Speed
    .byte 30                ; Wisdom
    .byte 20                ; Strength
    .byte 40                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sEagle            ; Name
    .word 36                ; Experience
    .word 30                ; Money
    .byte 0                 ; Item
    .byte $35               ; TilePage

;Wolf:
    .import sWolf

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 50|COLOR1|TILE4   ; HP
    .word 0                 ; PP
    .word 30                ; Offense
    .word 46|MSG1           ; Defense
    .byte 25                ; Fight
    .byte 30                ; Speed
    .byte 30                ; Wisdom
    .byte 30                ; Strength
    .byte 30                ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sWolf             ; Name
    .word 34                ; Experience
    .word 31                ; Money
    .byte 0                 ; Item
    .byte $36               ; TilePage

;Seagull:
    .import sSeagull

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 90|COLOR3|TILE4   ; HP
    .word 0                 ; PP
    .word 68|ALTITUDE1      ; Offense
    .word 90|MSG1           ; Defense
    .byte 50                ; Fight
    .byte 70                ; Speed
    .byte 40                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 75, 76, 1, 83, 1, 1, 1, 1; Attacks
    .word sSeagull          ; Name
    .word 100               ; Experience
    .word 44                ; Money
    .byte 0                 ; Item
    .byte $37               ; TilePage

;Alligator:
    .import sAlligator

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 30|TILE4          ; HP
    .word 0                 ; PP
    .word 18                ; Offense
    .word 22|MSG1           ; Defense
    .byte 10                ; Fight
    .byte 15                ; Speed
    .byte 10                ; Wisdom
    .byte 15                ; Strength
    .byte 5                 ; Force
    .byte 93, 93, 1, 1, 1, 1, 1, 1; Attacks
    .word sAlligator        ; Name
    .word 21                ; Experience
    .word 18                ; Money
    .byte 0                 ; Item
    .byte $31               ; TilePage

;EnergyRobot:
    .import sEnergyRobot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS    ; Flags
    .word 80|TILE8|TILE2    ; HP
    .word 0                 ; PP
    .word 60|EXPLODE        ; Offense
    .word 90|MSG3           ; Defense
    .byte 20                ; Fight
    .byte 20                ; Speed
    .byte 40                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 83, 46, 46, 46, 46, 1, 1, 1; Attacks
    .word sEnergyRobot      ; Name
    .word 202               ; Experience
    .word 70                ; Money
    .byte 0                 ; Item
    .byte $2C               ; TilePage

;TheFish:
    .import sTheFish

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|RESIST_PK_FREEZE|RESIST_PK_FIRE    ; Flags
    .word 65|COLOR2|TILE4|TILE1   ; HP
    .word 0                 ; PP
    .word 38                ; Offense
    .word 60|MSG2           ; Defense
    .byte 45                ; Fight
    .byte 30                ; Speed
    .byte 20                ; Wisdom
    .byte 40                ; Strength
    .byte 40                ; Force
    .byte 2, 2, 2, 2, 2, 2, 2, 2; Attacks
    .word sTheFish          ; Name
    .word 140               ; Experience
    .word 180               ; Money
    .byte 0                 ; Item
    .byte $2E               ; TilePage

;Fugitive:
    .import sFugitive

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 60|COLOR1|TILE4|TILE1   ; HP
    .word 0                 ; PP
    .word 32                ; Offense
    .word 45                ; Defense
    .byte 20                ; Fight
    .byte 22                ; Speed
    .byte 6                 ; Wisdom
    .byte 18                ; Strength
    .byte 8                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sFugitive         ; Name
    .word 60                ; Experience
    .word 350               ; Money
    .byte 0                 ; Item
    .byte $35               ; TilePage

;BBsBoss:
    .import sBBsBoss

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 108|COLOR2|TILE4|TILE1  ; HP
    .word 0                 ; PP
    .word 57                ; Offense
    .word 51                ; Defense
    .byte 50                ; Fight
    .byte 81                ; Speed
    .byte 18                ; Wisdom
    .byte 54                ; Strength
    .byte 36                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBBsBoss          ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $37               ; TilePage

;Barbot:
    .import sBarbot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|RESIST_PK_THUNDER|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS    ; Flags
    .word 60|TILE4|TILE1          ; HP
    .word 40                ; PP
    .word 24                ; Offense
    .word 36|MSG3           ; Defense
    .byte 30                ; Fight
    .byte 35                ; Speed
    .byte 35                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 1, 1, 21, 1, 1, 1, 1; Attacks
    .word sBarbot           ; Name
    .word 32                ; Experience
    .word 45                ; Money
    .byte 0                 ; Item
    .byte $31               ; TilePage

;Nancy:
    .import sNancy

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|RESIST_PK_THUNDER|RESIST_PK_FREEZE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 120|TILE4|TILE1         ; HP
    .word 60                ; PP
    .word 62                ; Offense
    .word 170|MSG3          ; Defense
    .byte 50                ; Fight
    .byte 72                ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 107, 1, 54, 15, 107, 1, 1, 1; Attacks
    .word sNancy            ; Name
    .word 68                ; Experience
    .word 50                ; Money
    .byte 0                 ; Item
    .byte $32               ; TilePage

;Starman:
    .import sStarman

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 80|TILE4|TILE1          ; HP
    .word 50                ; PP
    .word 45                ; Offense
    .word 80|MSG2           ; Defense
    .byte 30                ; Fight
    .byte 40                ; Speed
    .byte 60                ; Wisdom
    .byte 40                ; Strength
    .byte 35                ; Force
    .byte 18, 18, 56, 1, 1, 83, 83, 21; Attacks
    .word sStarman          ; Name
    .word 165               ; Experience
    .word 68                ; Money
    .byte 73                ; Item
    .byte $33               ; TilePage

;Ullrich:
    .import sUllrich

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_THUNDER ; Flags
    .word 40|COLOR2|TILE4|TILE1   ; HP
    .word 60                ; PP
    .word 18|ALTITUDE1      ; Offense
    .word 40|MSG2           ; Defense
    .byte 40                ; Fight
    .byte 30                ; Speed
    .byte 30                ; Wisdom
    .byte 10                ; Strength
    .byte 20                ; Force
    .byte 23, 23, 23, 23, 23, 23, 23, 23; Attacks
    .word sUllrich          ; Name
    .word 65                ; Experience
    .word 50                ; Money
    .byte 0                 ; Item
    .byte $36               ; TilePage

;Cerebrum:
    .import sCerebrum

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 200|COLOR1|TILE4|TILE1  ; HP
    .word 180               ; PP
    .word 60                ; Offense
    .word 280|MSG2          ; Defense
    .byte 120               ; Fight
    .byte 120               ; Speed
    .byte 80                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 18, 19, 130, 10, 54, 48, 56, 24; Attacks
    .word sCerebrum         ; Name
    .word 89                ; Experience
    .word 80                ; Money
    .byte 0                 ; Item
    .byte $38               ; TilePage

;Mook:
    .import sMook

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN  ; Flags
    .word 85|TILE4|TILE1    ; HP
    .word 80                ; PP
    .word 50                ; Offense
    .word 110|MSG2          ; Defense
    .byte 50                ; Fight
    .byte 40                ; Speed
    .byte 100               ; Wisdom
    .byte 30                ; Strength
    .byte 30                ; Force
    .byte 12, 13, 66, 41, 29, 49, 68, 69; Attacks
    .word sMook             ; Name
    .word 166               ; Experience
    .word 42                ; Money
    .byte 0                 ; Item
    .byte $34               ; TilePage

;Armor:
    .import sArmor

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 120|TILE4|TILE1   ; HP
    .word 100|EXTRA8|EXTRA2 ; PP
    .word 68|4096           ; Offense
    .word 150|MSG2          ; Defense
    .byte 50                ; Fight
    .byte 60                ; Speed
    .byte 50                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 24, 1, 1, 1, 1, 1, 1; Attacks
    .word sArmor            ; Name
    .word 200               ; Experience
    .word 300               ; Money
    .byte 0                 ; Item
    .byte $2F               ; TilePage

;Woodoh:
    .import sWoodoh

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|RESIST_PK_FREEZE ; Flags
    .word 40|TILE4|TILE1          ; HP
    .word 0                 ; PP
    .word 20                ; Offense
    .word 38|MSG2           ; Defense
    .byte 25                ; Fight
    .byte 25                ; Speed
    .byte 30                ; Wisdom
    .byte 40                ; Strength
    .byte 20                ; Force
    .byte 74, 74, 74, 98, 1, 1, 1, 1; Attacks
    .word sWoodoh           ; Name
    .word 40                ; Experience
    .word 38                ; Money
    .byte 0                 ; Item
    .byte $30               ; TilePage

;Wally:
    .import sWally

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 20|COLOR2|TILE8   ; HP
    .word 0                 ; PP
    .word 8                 ; Offense
    .word 12                ; Defense
    .byte 6                 ; Fight
    .byte 4                 ; Speed
    .byte 1                 ; Wisdom
    .byte 1                 ; Strength
    .byte 2                 ; Force
    .byte 40, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sWally            ; Name
    .word 5                 ; Experience
    .word 20                ; Money
    .byte 0                 ; Item
    .byte $39               ; TilePage

;TheHippie:
    .import sTheHippie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 25|TILE4|TILE2|TILE1          ; HP
    .word 0                 ; PP
    .word 8                 ; Offense
    .word 14                ; Defense
    .byte 3                 ; Fight
    .byte 6                 ; Speed
    .byte 1                 ; Wisdom
    .byte 1                 ; Strength
    .byte 3                 ; Force
    .byte 60, 80, 40, 1, 1, 1, 1, 1; Attacks
    .word sTheHippie        ; Name
    .word 6                 ; Experience
    .word 35                ; Money
    .byte 0                 ; Item
    .byte $39               ; TilePage

;BagLady:
    .import sBagLady

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 90|COLOR1|TILE4|TILE2|TILE1   ; HP
    .word 0                 ; PP
    .word 12                ; Offense
    .word 38                ; Defense
    .byte 20                ; Fight
    .byte 40                ; Speed
    .byte 30                ; Wisdom
    .byte 30                ; Strength
    .byte 10                ; Force
    .byte 2, 2, 2, 34, 1, 1, 1, 1; Attacks
    .word sBagLady          ; Name
    .word 63                ; Experience
    .word 150               ; Money
    .byte 63                ; Item
    .byte $3A               ; TilePage

;BBGang:
    .import sBBGang

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 80|COLOR3|TILE8   ; HP
    .word 0                 ; PP
    .word 60                ; Offense
    .word 125               ; Defense
    .byte 40                ; Fight
    .byte 40                ; Speed
    .byte 20                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 35, 35, 2, 2, 1, 1, 1, 1; Attacks
    .word sBBGang           ; Name
    .word 72                ; Experience
    .word 60                ; Money
    .byte 34                ; Item
    .byte $3B               ; TilePage

;DrDistorto:
    .import sDrDistorto

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 60|COLOR1|TILE4|TILE2|TILE1   ; HP
    .word 0                 ; PP
    .word 38                ; Offense
    .word 48                ; Defense
    .byte 25                ; Fight
    .byte 45                ; Speed
    .byte 30                ; Wisdom
    .byte 30                ; Strength
    .byte 30                ; Force
    .byte 72, 40, 1, 1, 1, 1, 1, 1; Attacks
    .word sDrDistorto       ; Name
    .word 45                ; Experience
    .word 40                ; Money
    .byte 0                 ; Item
    .byte $3F               ; TilePage

;GangZombie1:
    .import sGangZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 12|COLOR1|TILE8   ; HP
    .word 106               ; PP
    .word 13                ; Offense
    .word 13                ; Defense
    .byte 9                 ; Fight
    .byte 9                 ; Speed
    .byte 2                 ; Wisdom
    .byte 6                 ; Strength
    .byte 4                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sGangZombie       ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $3F               ; TilePage

;GangZombie:
    .import sGangZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 34|COLOR1|TILE4|TILE2|TILE1   ; HP
    .word 0                 ; PP
    .word 18                ; Offense
    .word 20|MSG4           ; Defense
    .byte 8                 ; Fight
    .byte 8                 ; Speed
    .byte 5                 ; Wisdom
    .byte 40                ; Strength
    .byte 5                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sGangZombie       ; Name
    .word 12                ; Experience
    .word 32                ; Money
    .byte 0                 ; Item
    .byte $3C               ; TilePage

;PseudoZombi:
    .import sPseudoZombi

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 30|COLOR1|TILE8   ; HP
    .word 0                 ; PP
    .word 16                ; Offense
    .word 16|MSG4           ; Defense
    .byte 10                ; Fight
    .byte 12                ; Speed
    .byte 5                 ; Wisdom
    .byte 40                ; Strength
    .byte 7                 ; Force
    .byte 4, 3, 5, 4, 3, 5, 4, 3; Attacks
    .word sPseudoZombi      ; Name
    .word 8                 ; Experience
    .word 12                ; Money
    .byte 0                 ; Item
    .byte $3C               ; TilePage

;Crow:
    .import sCrow

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 22|COLOR2|TILE8   ; HP
    .word 0                 ; PP
    .word 8|ALTITUDE1       ; Offense
    .word 12|MSG1           ; Defense
    .byte 8                 ; Fight
    .byte 12                ; Speed
    .byte 1                 ; Wisdom
    .byte 5                 ; Strength
    .byte 10                ; Force
    .byte 75, 76, 76, 1, 1, 1, 1, 1; Attacks
    .word sCrow             ; Name
    .word 3                 ; Experience
    .word 4                 ; Money
    .byte 0                 ; Item
    .byte $3E               ; TilePage

;Snake:
    .import sSnake

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 18|COLOR1|TILE8   ; HP
    .word 0                 ; PP
    .word 6                 ; Offense
    .word 8|MSG1            ; Defense
    .byte 5                 ; Fight
    .byte 10                ; Speed
    .byte 1                 ; Wisdom
    .byte 10                ; Strength
    .byte 1                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sSnake            ; Name
    .word 2                 ; Experience
    .word 8                 ; Money
    .byte 62                ; Item
    .byte $3D               ; TilePage

;Hyena:
    .import sHyena

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 30|TILE8|TILE1    ; HP
    .word 0                 ; PP
    .word 10                ; Offense
    .word 16|MSG1           ; Defense
    .byte 10                ; Fight
    .byte 22                ; Speed
    .byte 18                ; Wisdom
    .byte 10                ; Strength
    .byte 5                 ; Force
    .byte 79, 79, 79, 72, 3, 3, 3, 3; Attacks
    .word sHyena            ; Name
    .word 12                ; Experience
    .word 20                ; Money
    .byte 0                 ; Item
    .byte $3E               ; TilePage

;Cougar:
    .import sCougar

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 42|COLOR3|TILE8|TILE1   ; HP
    .word 0                 ; PP
    .word 28                ; Offense
    .word 40|MSG1           ; Defense
    .byte 35                ; Fight
    .byte 78                ; Speed
    .byte 30                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 4, 4, 4, 4, 4, 4, 4, 4; Attacks
    .word sCougar           ; Name
    .word 32                ; Experience
    .word 25                ; Money
    .byte 0                 ; Item
    .byte $3D               ; TilePage

;Centipede:
    .import sCentipede

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte SPRAY_VULNERABLE  ; Flags
    .word 12|COLOR1|TILE8   ; HP
    .word EXTRA8|EXTRA1     ; PP
    .word 4                 ; Offense
    .word 12|MSG1           ; Defense
    .byte 3                 ; Fight
    .byte 17                ; Speed
    .byte 40                ; Wisdom
    .byte 20                ; Strength
    .byte 1                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sCentipede        ; Name
    .word 1                 ; Experience
    .word 1                 ; Money
    .byte 0                 ; Item
    .byte $3A               ; TilePage

;DustBall:
    .import sDustBall

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 78|COLOR1|TILE8|TILE1   ; HP
    .word 0                 ; PP
    .word 40|BURST          ; Offense
    .word 120|MSG7          ; Defense
    .byte 30                ; Fight
    .byte 50                ; Speed
    .byte 50                ; Wisdom
    .byte 60                ; Strength
    .byte 20                ; Force
    .byte 79, 79, 79, 79, 79, 79, 79, 79; Attacks
    .word sDustBall         ; Name
    .word 80                ; Experience
    .word 100               ; Money
    .byte 0                 ; Item
    .byte $3B               ; TilePage

;Fly:
    .import sFly

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte SPRAY_VULNERABLE  ; Flags
    .word 10|TILE8|TILE2          ; HP
    .word 0                 ; PP
    .word 1|ALTITUDE4       ; Offense
    .word 40|MSG1           ; Defense
    .byte 32                ; Fight
    .byte 40                ; Speed
    .byte 10                ; Wisdom
    .byte 1                 ; Strength
    .byte 40                ; Force
    .byte 73, 73, 73, 1, 72, 1, 1, 1; Attacks
    .word sFly              ; Name
    .word 1                 ; Experience
    .word 1                 ; Money
    .byte 0                 ; Item
    .byte $2B               ; TilePage

;Spider:
    .import sSpider

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte SPRAY_VULNERABLE  ; Flags
    .word 80|COLOR2|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 45                ; Offense
    .word 95|MSG1           ; Defense
    .byte 60                ; Fight
    .byte 80                ; Speed
    .byte 80                ; Wisdom
    .byte 60                ; Strength
    .byte 15                ; Force
    .byte 73, 61, 61, 73, 73, 1, 1, 35; Attacks
    .word sSpider           ; Name
    .word 48                ; Experience
    .word 40                ; Money
    .byte 0                 ; Item
    .byte $2A               ; TilePage

;Scorpion:
    .import sScorpion

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte SPRAY_VULNERABLE  ; Flags
    .word 75|COLOR1|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 60                ; Offense
    .word 80|MSG1           ; Defense
    .byte 40                ; Fight
    .byte 60                ; Speed
    .byte 80                ; Wisdom
    .byte 60                ; Strength
    .byte 15                ; Force
    .byte 61, 61, 61, 3, 3, 3, 3, 3; Attacks
    .word sScorpion         ; Name
    .word 50                ; Experience
    .word 36                ; Money
    .byte 0                 ; Item
    .byte $3D               ; TilePage

;Rope:
    .import sRope

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 80|COLOR3|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 35                ; Offense
    .word 50|MSG5           ; Defense
    .byte 50                ; Fight
    .byte 30                ; Speed
    .byte 5                 ; Wisdom
    .byte 80                ; Strength
    .byte 80                ; Force
    .byte 71, 71, 1, 1, 1, 1, 1, 1; Attacks
    .word sRope             ; Name
    .word 48                ; Experience
    .word 80                ; Money
    .byte 40                ; Item
    .byte $3F               ; TilePage

;FireBall:
    .import sFireBall

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 58|COLOR3|TILE8|TILE2   ; HP
    .word EXTRA8|50         ; PP
    .word 24|ALTITUDE2      ; Offense
    .word 58|MSG2           ; Defense
    .byte 35                ; Fight
    .byte 40                ; Speed
    .byte 30                ; Wisdom
    .byte 50                ; Strength
    .byte 30                ; Force
    .byte 9, 9, 9, 9, 9, 9, 9, 9; Attacks
    .word sFireBall         ; Name
    .word 61                ; Experience
    .word 35                ; Money
    .byte 0                 ; Item
    .byte $39               ; TilePage

;Watcher:
    .import sWatcher

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 30|COLOR1|TILE8|TILE4|TILE2   ; HP
    .word 0                 ; PP
    .word 16                ; Offense
    .word 24|MSG2           ; Defense
    .byte 25                ; Fight
    .byte 30                ; Speed
    .byte 20                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sWatcher          ; Name
    .word 30                ; Experience
    .word 20                ; Money
    .byte 0                 ; Item
    .byte $27               ; TilePage

;Groucho:
    .import sGroucho

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 35|COLOR1|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 12|ALTITUDE2      ; Offense
    .word 40|MSG2           ; Defense
    .byte 20                ; Fight
    .byte 20                ; Speed
    .byte 20                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 81, 81, 81, 81, 1, 1, 1, 1; Attacks
    .word sGroucho          ; Name
    .word 3                 ; Experience
    .word 12                ; Money
    .byte 0                 ; Item
    .byte $26               ; TilePage

;Ghost:
    .import sGhost

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 20|COLOR1|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 12|ALTITUDE2      ; Offense
    .word 24|MSG7           ; Defense
    .byte 6                 ; Fight
    .byte 22                ; Speed
    .byte 5                 ; Wisdom
    .byte 40                ; Strength
    .byte 15                ; Force
    .byte 72, 72, 1, 1, 1, 1, 1, 1; Attacks
    .word sGhost            ; Name
    .word 5                 ; Experience
    .word 10                ; Money
    .byte 0                 ; Item
    .byte $3A               ; TilePage

;LilSaucer:
    .import sLilSaucer

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|RESIST_PK_THUNDER|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 32|COLOR1|TILE8|TILE2   ; HP
    .word 20                ; PP
    .word 20|ALTITUDE4      ; Offense
    .word 30|MSG3           ; Defense
    .byte 15                ; Fight
    .byte 20                ; Speed
    .byte 18                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 54, 1, 1, 56, 1, 1, 1; Attacks
    .word sLilSaucer        ; Name
    .word 30                ; Experience
    .word 22                ; Money
    .byte 0                 ; Item
    .byte $28               ; TilePage

;MrBat:
    .import sMrBat

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 20|COLOR3|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 8|ALTITUDE4       ; Offense
    .word 10|MSG1           ; Defense
    .byte 8                 ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 4                 ; Strength
    .byte 8                 ; Force
    .byte 84, 84, 84, 1, 1, 1, 1, 1; Attacks
    .word sMrBat            ; Name
    .word 4                 ; Experience
    .word 7                 ; Money
    .byte 0                 ; Item
    .byte $29               ; TilePage

;StarmanJr:
    .import sStarmanJr

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 52|TILE8|TILE2          ; HP
    .word 16                ; PP
    .word 32|ALTITUDE2      ; Offense
    .word 52|MSG2           ; Defense
    .byte 35                ; Fight
    .byte 20                ; Speed
    .byte 18                ; Wisdom
    .byte 30                ; Strength
    .byte 30                ; Force
    .byte 18, 18, 21, 1, 1, 1, 1, 83; Attacks
    .word sStarmanJr        ; Name
    .word 30                ; Experience
    .word 5                 ; Money
    .byte 0                 ; Item
    .byte $3C               ; TilePage

;Skunk:
    .import sSkunk

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 40|COLOR2|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 26                ; Offense
    .word 48|MSG1           ; Defense
    .byte 52                ; Fight
    .byte 30                ; Speed
    .byte 30                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 1, 1, 1, 1, 70, 1, 1, 1; Attacks
    .word sSkunk            ; Name
    .word 32                ; Experience
    .word 32                ; Money
    .byte 0                 ; Item
    .byte $2D               ; TilePage

;Shroudley:
    .import sShroudley

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 90|COLOR2|TILE4   ; HP
    .word 0                 ; PP
    .word 42                ; Offense
    .word 128|MSG4          ; Defense
    .byte 25                ; Fight
    .byte 35                ; Speed
    .byte 55                ; Wisdom
    .byte 70                ; Strength
    .byte 10                ; Force
    .byte 52, 52, 7, 1, 1, 1, 1, 1; Attacks
    .word sShroudley        ; Name
    .word 58                ; Experience
    .word 34                ; Money
    .byte 0                 ; Item
    .byte $34               ; TilePage

;Rat:
    .import sRat

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 10|COLOR2|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 4                 ; Offense
    .word 8|MSG1            ; Defense
    .byte 6                 ; Fight
    .byte 5                 ; Speed
    .byte 1                 ; Wisdom
    .byte 3                 ; Strength
    .byte 7                 ; Force
    .byte 35, 35, 35, 3, 3, 3, 3, 3; Attacks
    .word sRat              ; Name
    .word 3                 ; Experience
    .word 2                 ; Money
    .byte 0                 ; Item
    .byte $3E               ; TilePage

;Bomber:
    .import sBomber

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 60|COLOR1|TILE8|TILE2   ; HP
    .word 0                 ; PP
    .word 10                ; Offense
    .word 64|MSG3           ; Defense
    .byte 20                ; Fight
    .byte 35                ; Speed
    .byte 30                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 70, 70, 70, 16, 16, 1, 1, 1; Attacks
    .word sBomber           ; Name
    .word 56                ; Experience
    .word 32                ; Money
    .byte 35                ; Item
    .byte $3B               ; TilePage

;Doll1:
    .import sDoll

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 4|TILE8|TILE2|TILE1 ; HP
    .word 0                 ; PP
    .word 3                 ; Offense
    .word 5|MSG5            ; Defense
    .byte 1                 ; Fight
    .byte 5                 ; Speed
    .byte 3                 ; Wisdom
    .byte 3                 ; Strength
    .byte 3                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sDoll             ; Name
    .word 1                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $38               ; TilePage

;Doll:
    .import sDoll

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 12|COLOR1|TILE8|TILE4   ; HP
    .word 0                 ; PP
    .word 4|ALTITUDE2       ; Offense
    .word 5|MSG5            ; Defense
    .byte 3                 ; Fight
    .byte 5                 ; Speed
    .byte 1                 ; Wisdom
    .byte 1                 ; Strength
    .byte 1                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sDoll             ; Name
    .word 10                ; Experience
    .word 50                ; Money
    .byte 0                 ; Item
    .byte $38               ; TilePage

;Lamp:
    .import sLamp

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 6|COLOR1|TILE8|TILE4|TILE1    ; HP
    .word 0                 ; PP
    .word 3|ALTITUDE2       ; Offense
    .word 5|MSG5            ; Defense
    .byte 1                 ; Fight
    .byte 5                 ; Speed
    .byte 3                 ; Wisdom
    .byte 3                 ; Strength
    .byte 3                 ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sLamp             ; Name
    .word 1                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $38               ; TilePage

;BionicCenti1:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBionicCenti      ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;BionicCenti2:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBionicCenti      ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;BionicCenti:
    .import sBionicCenti

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte SPRAY_VULNERABLE  ; Flags
    .word 35|COLOR2|TILE8   ; HP
    .word EXTRA8|EXTRA1     ; PP
    .word 16                ; Offense
    .word 32|MSG1           ; Defense
    .byte 15                ; Fight
    .byte 28                ; Speed
    .byte 60                ; Wisdom
    .byte 30                ; Strength
    .byte 30                ; Force
    .byte 1, 61, 61, 1, 1, 1, 1, 1; Attacks
    .word sBionicCenti      ; Name
    .word 18                ; Experience
    .word 14                ; Money
    .byte 0                 ; Item
    .byte $3A               ; TilePage

;BionicScorp:
    .import sBionicScorp

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte SPRAY_VULNERABLE  ; Flags
    .word 100|COLOR2|TILE8|TILE2  ; HP
    .word 0                 ; PP
    .word 60                ; Offense
    .word 150|MSG1          ; Defense
    .byte 40                ; Fight
    .byte 70                ; Speed
    .byte 80                ; Wisdom
    .byte 60                ; Strength
    .byte 60                ; Force
    .byte 61, 62, 61, 62, 1, 1, 1, 1; Attacks
    .word sBionicScorp      ; Name
    .word 61                ; Experience
    .word 56                ; Money
    .byte 0                 ; Item
    .byte $3D               ; TilePage

;RedSnake1:
    .import sRedSnake

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRedSnake         ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;RedSnake2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRedSnake         ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;RedSnake:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 150|COLOR1|TILE8  ; HP
    .word 0                 ; PP
    .word 50                ; Offense
    .word 160|MSG1          ; Defense
    .byte 90                ; Fight
    .byte 100               ; Speed
    .byte 60                ; Wisdom
    .byte 60                ; Strength
    .byte 40                ; Force
    .byte 72, 72, 72, 72, 72, 72, 1, 1; Attacks
    .word sRedSnake         ; Name
    .word 500               ; Experience
    .word 330               ; Money
    .byte 47                ; Item
    .byte $3D               ; TilePage

;LoneWolf:
    .import sLoneWolf

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_FREEZE  ; Flags
    .word 80|COLOR2|TILE4   ; HP
    .word 0                 ; PP
    .word 60                ; Offense
    .word 150|MSG1          ; Defense
    .byte 50                ; Fight
    .byte 60                ; Speed
    .byte 30                ; Wisdom
    .byte 30                ; Strength
    .byte 60                ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sLoneWolf         ; Name
    .word 100               ; Experience
    .word 41                ; Money
    .byte 0                 ; Item
    .byte $36               ; TilePage

;PolarBear:
    .import sPolarBear

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_FREEZE  ; Flags
    .word 100|COLOR1|TILE2  ; HP
    .word 0                 ; PP
    .word 52                ; Offense
    .word 180|MSG1          ; Defense
    .byte 30                ; Fight
    .byte 40                ; Speed
    .byte 30                ; Wisdom
    .byte 40                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 4, 5, 79, 1, 1; Attacks
    .word sPolarBear        ; Name
    .word 160               ; Experience
    .word 50                ; Money
    .byte 0                 ; Item
    .byte $2B               ; TilePage

;Rattlesnake1:
    .import sRattlesnake

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 70|TILE8|TILE2          ; HP
    .word 100               ; PP
    .word 65                ; Offense
    .word 60|MSG1           ; Defense
    .byte 55                ; Fight
    .byte 45                ; Speed
    .byte 30                ; Wisdom
    .byte 30                ; Strength
    .byte 45                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; Name
    .word 96                ; Experience
    .word 37                ; Money
    .byte 0                 ; Item
    .byte $3C               ; TilePage

;Rattlesnake2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 70|TILE8|TILE2          ; HP
    .word 100               ; PP
    .word 60                ; Offense
    .word 55|MSG1           ; Defense
    .byte 40                ; Fight
    .byte 55                ; Speed
    .byte 40                ; Wisdom
    .byte 40                ; Strength
    .byte 60                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; Name
    .word 98                ; Experience
    .word 34                ; Money
    .byte 0                 ; Item
    .byte $2C               ; TilePage

;Rattlesnake3:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 95                ; HP
    .word 100               ; PP
    .word 70                ; Offense
    .word 90                ; Defense
    .byte 50                ; Fight
    .byte 50                ; Speed
    .byte 30                ; Wisdom
    .byte 30                ; Strength
    .byte 40                ; Force
    .byte 55, 61, 61, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;Rattlesnake4:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;Rattlesnake:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte ENEMY_FLAGS_8     ; Flags
    .word 100|COLOR2|TILE8  ; HP
    .word EXTRA8|EXTRA2|EXTRA1 ; PP
    .word 65                ; Offense
    .word 128|MSG1          ; Defense
    .byte 60                ; Fight
    .byte 80                ; Speed
    .byte 80                ; Wisdom
    .byte 60                ; Strength
    .byte 20                ; Force
    .byte 93, 93, 93, 7, 1, 1, 1, 1; Attacks
    .word sRattlesnake      ; Name
    .word 57                ; Experience
    .word 54                ; Money
    .byte 0                 ; Item
    .byte $3D               ; TilePage

;Tarantula:
    .import sTarantula

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte SPRAY_VULNERABLE  ; Flags
    .word 120|COLOR1|TILE8|TILE2  ; HP
    .word 0                 ; PP
    .word 84                ; Offense
    .word 160|MSG1          ; Defense
    .byte 70                ; Fight
    .byte 80                ; Speed
    .byte 80                ; Wisdom
    .byte 60                ; Strength
    .byte 15                ; Force
    .byte 73, 73, 61, 61, 61, 61, 1, 1; Attacks
    .word sTarantula        ; Name
    .word 205               ; Experience
    .word 85                ; Money
    .byte 0                 ; Item
    .byte $2A               ; TilePage

;Crocodile:
    .import sCrocodile

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 120|COLOR1|TILE4  ; HP
    .word 0                 ; PP
    .word 80                ; Offense
    .word 150|MSG1          ; Defense
    .byte 40                ; Fight
    .byte 30                ; Speed
    .byte 40                ; Wisdom
    .byte 80                ; Strength
    .byte 20                ; Force
    .byte 93, 93, 1, 1, 1, 1, 1, 1; Attacks
    .word sCrocodile        ; Name
    .word 172               ; Experience
    .word 88                ; Money
    .byte 0                 ; Item
    .byte $31               ; TilePage

;Buffalo1:
    .import sBuffalo

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 90|TILE8|TILE2          ; HP
    .word 100               ; PP
    .word 70                ; Offense
    .word 60|MSG1           ; Defense
    .byte 60                ; Fight
    .byte 80                ; Speed
    .byte 80                ; Wisdom
    .byte 80                ; Strength
    .byte 80                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBuffalo          ; Name
    .word 78                ; Experience
    .word 36                ; Money
    .byte 0                 ; Item
    .byte $2C               ; TilePage

;Buffalo:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 150|TILE2|TILE1   ; HP
    .word 0                 ; PP
    .word 68                ; Offense
    .word 150|MSG1          ; Defense
    .byte 60                ; Fight
    .byte 43                ; Speed
    .byte 40                ; Wisdom
    .byte 40                ; Strength
    .byte 20                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBuffalo          ; Name
    .word 103               ; Experience
    .word 95                ; Money
    .byte 0                 ; Item
    .byte $2C               ; TilePage

;BionicBat1:
    .import sBionicBat

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sBionicBat        ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;BionicBat:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 50|TILE8|TILE2          ; HP
    .word 0                 ; PP
    .word 34|ALTITUDE4      ; Offense
    .word 64|MSG1           ; Defense
    .byte 20                ; Fight
    .byte 35                ; Speed
    .byte 50                ; Wisdom
    .byte 60                ; Strength
    .byte 30                ; Force
    .byte 73, 73, 84, 84, 1, 1, 1, 62; Attacks
    .word sBionicBat        ; Name
    .word 40                ; Experience
    .word 34                ; Money
    .byte 0                 ; Item
    .byte $29               ; TilePage

;StrayDog:
    .import sStrayDog

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 16|COLOR3|TILE4   ; HP
    .word EXTRA8|EXTRA4     ; PP
    .word 8                 ; Offense
    .word 10|MSG1           ; Defense
    .byte 8                 ; Fight
    .byte 12                ; Speed
    .byte 2                 ; Wisdom
    .byte 5                 ; Strength
    .byte 8                 ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sStrayDog         ; Name
    .word 4                 ; Experience
    .word 10                ; Money
    .byte 27                ; Item
    .byte $36               ; TilePage

;PsychoCar:
    .import sPsychoCar

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 40|COLOR1|TILE4   ; HP
    .word 0                 ; PP
    .word 18                ; Offense
    .word 40|MSG6           ; Defense
    .byte 45                ; Fight
    .byte 40                ; Speed
    .byte 35                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 6, 50, 6, 6, 6, 6, 6, 6; Attacks
    .word sPsychoCar        ; Name
    .word 61                ; Experience
    .word 45                ; Money
    .byte 0                 ; Item
    .byte $2E               ; TilePage

;PsychoTruck:
    .import sPsychoTruck

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 58|COLOR1|TILE2   ; HP
    .word 0                 ; PP
    .word 20                ; Offense
    .word 40|MSG6           ; Defense
    .byte 30                ; Fight
    .byte 32                ; Speed
    .byte 35                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 6, 6, 50, 50, 6, 6, 6, 50; Attacks
    .word sPsychoTruck      ; Name
    .word 34                ; Experience
    .word 27                ; Money
    .byte 0                 ; Item
    .byte $26               ; TilePage

;ManiacTruck:
    .import sManiacTruck

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 80|COLOR3|TILE2   ; HP
    .word 0                 ; PP
    .word 34                ; Offense
    .word 48|MSG6           ; Defense
    .byte 45                ; Fight
    .byte 35                ; Speed
    .byte 35                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 50, 50, 6, 6, 50, 6, 6, 50; Attacks
    .word sManiacTruck      ; Name
    .word 75                ; Experience
    .word 58                ; Money
    .byte 0                 ; Item
    .byte $26               ; TilePage

;AlarmGhost:
    .import sAlarmGhost

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 100|COLOR3|TILE8|TILE2  ; HP
    .word 0                 ; PP
    .word 30|ALTITUDE2      ; Offense
    .word 160|MSG7          ; Defense
    .byte 50                ; Fight
    .byte 90                ; Speed
    .byte 50                ; Wisdom
    .byte 60                ; Strength
    .byte 30                ; Force
    .byte 73, 73, 73, 73, 1, 1, 1, 1; Attacks
    .word sAlarmGhost       ; Name
    .word 80                ; Experience
    .word 27                ; Money
    .byte 0                 ; Item
    .byte $3A               ; TilePage

;Foureyes1:
    .import sFoureyes

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sFoureyes         ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;Foureyes:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 40|COLOR1|TILE8|TILE4|TILE2|TILE1   ; HP
    .word 0                 ; PP
    .word 22|ALTITUDE1      ; Offense
    .word 32|MSG2           ; Defense
    .byte 20                ; Fight
    .byte 40                ; Speed
    .byte 20                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 93, 93, 93, 1, 1, 1, 1, 1; Attacks
    .word sFoureyes         ; Name
    .word 32                ; Experience
    .word 26                ; Money
    .byte 0                 ; Item
    .byte $27               ; TilePage

;Dadseyes:
    .import sDadseyes

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 40|COLOR1|TILE8|TILE4|TILE2   ; HP
    .word EXTRA1            ; PP
    .word 20|ALTITUDE1      ; Offense
    .word 32|MSG2           ; Defense
    .byte 20                ; Fight
    .byte 20                ; Speed
    .byte 20                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 40, 40, 40, 1, 1, 1, 1, 1; Attacks
    .word sDadseyes         ; Name
    .word 35                ; Experience
    .word 53                ; Money
    .byte 0                 ; Item
    .byte $27               ; TilePage

;Momseyes:
    .import sMomseyes

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 40|COLOR1|TILE8|TILE4|TILE2   ; HP
    .word EXTRA2            ; PP
    .word 24|ALTITUDE2      ; Offense
    .word 20|MSG2           ; Defense
    .byte 50                ; Fight
    .byte 50                ; Speed
    .byte 20                ; Wisdom
    .byte 20                ; Strength
    .byte 20                ; Force
    .byte 2, 2, 2, 2, 2, 2, 2, 2; Attacks
    .word sMomseyes         ; Name
    .word 35                ; Experience
    .word 34                ; Money
    .byte 0                 ; Item
    .byte $27               ; TilePage

;SkyYddet1:
    .import sSkyYddet

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180|COLOR2|TILE4  ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sSkyYddet         ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $2F               ; TilePage

;SkyYddet2:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180|COLOR3|TILE4  ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sSkyYddet         ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $2F               ; TilePage

;SkyYddet:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 74|COLOR3|TILE4   ; HP
    .word EXTRA16           ; PP
    .word 24|ALTITUDE2      ; Offense
    .word 50|MSG2           ; Defense
    .byte 20                ; Fight
    .byte 30                ; Speed
    .byte 20                ; Wisdom
    .byte 50                ; Strength
    .byte 20                ; Force
    .byte 79, 79, 79, 79, 79, 79, 7, 7; Attacks
    .word sSkyYddet         ; Name
    .word 40                ; Experience
    .word 23                ; Money
    .byte 73                ; Item
    .byte $2F               ; TilePage

;GigaBorg1:
    .import sGigaBorg

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180|COLOR3|TILE2  ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sGigaBorg         ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte $28               ; TilePage

;GigaBorg:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 180|COLOR3|TILE2  ; HP
    .word 80                ; PP
    .word 100               ; Offense
    .word 180|MSG3          ; Defense
    .byte 80                ; Fight
    .byte 60                ; Speed
    .byte 80                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 18, 21, 18, 18, 19, 18, 18, 18; Attacks
    .word sGigaBorg         ; Name
    .word 98                ; Experience
    .word 143               ; Money
    .byte 37                ; Item
    .byte $28               ; TilePage

;OmegaBorg:
    .import sOmegaBorg

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 230|COLOR2|TILE2  ; HP
    .word 150               ; PP
    .word 150               ; Offense
    .word 200|MSG3          ; Defense
    .byte 200               ; Fight
    .byte 100               ; Speed
    .byte 90                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 21, 19, 19, 10, 10, 131, 1, 14; Attacks
    .word sOmegaBorg        ; Name
    .word 180               ; Experience
    .word 205               ; Money
    .byte 0                 ; Item
    .byte $28               ; TilePage

;Scrapper:
    .import sScrapper

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS ; Flags
    .word 70|TILE2          ; HP
    .word 30|EXTRA4|EXTRA2|EXTRA1 ; PP
    .word 26                ; Offense
    .word 76|MSG3           ; Defense
    .byte 25                ; Fight
    .byte 20                ; Speed
    .byte 20                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 83, 83, 1, 1, 1, 18, 18, 18; Attacks
    .word sScrapper         ; Name
    .word 65                ; Experience
    .word 38                ; Money
    .byte 37                ; Item
    .byte $27               ; TilePage

;UltraBarbot:
    .import sUltraBarbot

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|RESIST_PK_THUNDER|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 80|COLOR2|TILE4|TILE1   ; HP
    .word 50                ; PP
    .word 54                ; Offense
    .word 80|MSG3           ; Defense
    .byte 30                ; Fight
    .byte 50                ; Speed
    .byte 40                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 21, 1, 1, 1, 1, 1, 1; Attacks
    .word sUltraBarbot      ; Name
    .word 220               ; Experience
    .word 87                ; Money
    .byte 38                ; Item
    .byte $31               ; TilePage

;OmegaSaucer:
    .import sOmegaSaucer

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 65|COLOR1|TILE8|TILE2   ; HP
    .word 50                ; PP
    .word 42|3072|ALTITUDE4 ; Offense
    .word 50|MSG3           ; Defense
    .byte 20                ; Fight
    .byte 60                ; Speed
    .byte 40                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 18, 1, 56, 1, 1, 1, 1, 1; Attacks
    .word sOmegaSaucer      ; Name
    .word 82                ; Experience
    .word 57                ; Money
    .byte 0                 ; Item
    .byte $28               ; TilePage

;Kelly:
    .import sKelly

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS ; Flags
    .word 120|COLOR2|TILE4|TILE1  ; HP
    .word 80|EXTRA8|EXTRA4|EXTRA1 ; PP
    .word 80                ; Offense
    .word 150|MSG3          ; Defense
    .byte 50                ; Fight
    .byte 70                ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 107, 98, 49, 1, 107, 1, 1, 1; Attacks
    .word sKelly            ; Name
    .word 102               ; Experience
    .word 88                ; Money
    .byte 0                 ; Item
    .byte $32               ; TilePage

;StarMiner:
    .import sStarMiner

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 200|TILE8|TILE2         ; HP
    .word 0                 ; PP
    .word 140               ; Offense
    .word 200|MSG3          ; Defense
    .byte 100               ; Fight
    .byte 100               ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 70, 16, 70, 16, 16, 16, 16, 1; Attacks
    .word sStarMiner        ; Name
    .word 209               ; Experience
    .word 138               ; Money
    .byte 36                ; Item
    .byte $3B               ; TilePage

;SuperEnergy:
    .import sSuperEnergy

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 120|COLOR2|TILE8|TILE2  ; HP
    .word 0                 ; PP
    .word 50|EXPLODE        ; Offense
    .word 120|MSG3          ; Defense
    .byte 30                ; Fight
    .byte 35                ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 46, 46, 46, 46, 1, 1, 1, 1; Attacks
    .word sSuperEnergy      ; Name
    .word 230               ; Experience
    .word 260               ; Money
    .byte 0                 ; Item
    .byte $2C               ; TilePage

;Juana:
    .import sJuana

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 300|COLOR3|TILE4|TILE1  ; HP
    .word 200|EXTRA8|EXTRA4|EXTRA2 ; PP
    .word 200               ; Offense
    .word 250|MSG3          ; Defense
    .byte 200               ; Fight
    .byte 120               ; Speed
    .byte 100               ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 24, 131, 10, 107, 11, 21, 1, 1; Attacks
    .word sJuana            ; Name
    .word 270               ; Experience
    .word 362               ; Money
    .byte 73                ; Item
    .byte $32               ; TilePage

;BlueStarman:
    .import sBlueStarman

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 100|COLOR2|TILE4|TILE1  ; HP
    .word 80                ; PP
    .word 74                ; Offense
    .word 120|MSG2          ; Defense
    .byte 40                ; Fight
    .byte 42                ; Speed
    .byte 60                ; Wisdom
    .byte 50                ; Strength
    .byte 45                ; Force
    .byte 18, 19, 56, 83, 83, 21, 1, 1; Attacks
    .word sBlueStarman      ; Name
    .word 150               ; Experience
    .word 91                ; Money
    .byte 0                 ; Item
    .byte $33               ; TilePage

;Rockoyle:
    .import sRockoyle

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN ; Flags
    .word 120|COLOR1|TILE2|TILE1 ; HP
    .word 60                ; PP
    .word 70|ALTITUDE2      ; Offense
    .word 150|MSG2          ; Defense
    .byte 60                ; Fight
    .byte 65                ; Speed
    .byte 120               ; Wisdom
    .byte 30                ; Strength
    .byte 100               ; Force
    .byte 13, 64, 14, 15, 1, 1, 1, 1; Attacks
    .word sRockoyle         ; Name
    .word 162               ; Experience
    .word 93                ; Money
    .byte 0                 ; Item
    .byte $29               ; TilePage

;Titanian:
    .import sTitanian

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8 ; Flags
    .word 320|COLOR3|TILE4  ; HP
    .word 0                 ; PP
    .word 100               ; Offense
    .word 420|MSG2          ; Defense
    .byte 60                ; Fight
    .byte 70                ; Speed
    .byte 200               ; Wisdom
    .byte 80                ; Strength
    .byte 25                ; Force
    .byte 98, 98, 98, 1, 1, 1, 1, 62; Attacks
    .word sTitanian         ; Name
    .word 180               ; Experience
    .word 130               ; Money
    .byte 0                 ; Item
    .byte $33               ; TilePage

;OhMook:
    .import sOhMook

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_SLEEP_DEFDOWN|RESIST_PK_FREEZE ; Flags
    .word 160|COLOR1|TILE4|TILE1  ; HP
    .word 250               ; PP
    .word 60                ; Offense
    .word 140|MSG2          ; Defense
    .byte 100               ; Fight
    .byte 65                ; Speed
    .byte 250               ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 10, 13, 66, 75, 43, 29, 49, 54; Attacks
    .word sOhMook           ; Name
    .word 175               ; Experience
    .word 110               ; Money
    .byte 0                 ; Item
    .byte $34               ; TilePage

;Zombie1:
    .import sZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 180               ; HP
    .word 120               ; PP
    .word 35                ; Offense
    .word 20                ; Defense
    .byte 50                ; Fight
    .byte 5                 ; Speed
    .byte 5                 ; Wisdom
    .byte 45                ; Strength
    .byte 30                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sZombie           ; Name
    .word 0                 ; Experience
    .word 0                 ; Money
    .byte 0                 ; Item
    .byte 0                 ; TilePage

;Zombie:

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 70|COLOR2|TILE8   ; HP
    .word 50                ; PP
    .word 50                ; Offense
    .word 80|MSG4           ; Defense
    .byte 45                ; Fight
    .byte 48                ; Speed
    .byte 80                ; Wisdom
    .byte 60                ; Strength
    .byte 15                ; Force
    .byte 66, 66, 66, 76, 76, 76, 76, 1; Attacks
    .word sZombie           ; Name
    .word 48                ; Experience
    .word 43                ; Money
    .byte 0                 ; Item
    .byte $3C               ; TilePage

;NastyZombie:
    .import sNastyZombie

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte IMMUNE_STATUS_EFFECTS ; Flags
    .word 90|COLOR2|TILE4|TILE2|TILE1   ; HP
    .word 0                 ; PP
    .word 62                ; Offense
    .word 90|MSG4           ; Defense
    .byte 30                ; Fight
    .byte 30                ; Speed
    .byte 50                ; Wisdom
    .byte 60                ; Strength
    .byte 20                ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sNastyZombie      ; Name
    .word 54                ; Experience
    .word 58                ; Money
    .byte 0                 ; Item
    .byte $3C               ; TilePage

;SilverWolf:
    .import sSilverWolf

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_FREEZE  ; Flags
    .word 80|COLOR2|TILE4   ; HP
    .word 0                 ; PP
    .word 44                ; Offense
    .word 76|MSG1           ; Defense
    .byte 40                ; Fight
    .byte 42                ; Speed
    .byte 30                ; Wisdom
    .byte 30                ; Strength
    .byte 25                ; Force
    .byte 3, 3, 3, 3, 3, 3, 3, 3; Attacks
    .word sSilverWolf       ; Name
    .word 66                ; Experience
    .word 43                ; Money
    .byte 0                 ; Item
    .byte $36               ; TilePage

;R7037:
    .import sR7037

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|ENEMY_FLAGS_8|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS ; Flags
    .word 1000|TILE1        ; HP
    .word EXTRA4            ; PP
    .word 300               ; Offense
    .word 600|MSG3          ; Defense
    .byte 100               ; Fight
    .byte 100               ; Speed
    .byte 40                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sR7037            ; Name
    .word 205               ; Experience
    .word 71                ; Money
    .byte 0                 ; Item
    .byte $22               ; TilePage

;GrizzlyBear:
    .import sGrizzlyBear

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 340|COLOR2|TILE2  ; HP
    .word 0                 ; PP
    .word 160               ; Offense
    .word 340|MSG1          ; Defense
    .byte 100               ; Fight
    .byte 100               ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 25                ; Force
    .byte 2, 2, 2, 4, 5, 2, 2, 7; Attacks
    .word sGrizzlyBear      ; Name
    .word 250               ; Experience
    .word 65                ; Money
    .byte 0                 ; Item
    .byte $2B               ; TilePage

;R7038XX:
    .import sR7038XX

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte RESIST_PK_BEAM|IMMUNE_SLEEP_DEFDOWN|RESIST_PK_THUNDER|RESIST_PK_FREEZE|RESIST_PK_FIRE|IMMUNE_STATUS_EFFECTS  ; Flags
    .word 1000|COLOR3|TILE1 ; HP
    .word EXTRA4|EXTRA2     ; PP
    .word 900               ; Offense
    .word 1000|MSG3         ; Defense
    .byte 60                ; Fight
    .byte 60                ; Speed
    .byte 60                ; Wisdom
    .byte 100               ; Strength
    .byte 100               ; Force
    .byte 1, 1, 1, 1, 1, 1, 1, 1; Attacks
    .word sR7038XX          ; Name
    .word 550               ; Experience
    .word 180               ; Money
    .byte 0                 ; Item
    .byte $22               ; TilePage

;LastStarman:
    .import sLastStarman

    .byte 0                 ; field_0
    .byte 0                 ; InitialStatus
    .byte NO_RESIST         ; Flags
    .word 120|COLOR2|TILE4|TILE1  ; HP
    .word 100               ; PP
    .word 90                ; Offense
    .word 140|MSG2          ; Defense
    .byte 70                ; Fight
    .byte 60                ; Speed
    .byte 60                ; Wisdom
    .byte 80                ; Strength
    .byte 50                ; Force
    .byte 19, 19, 56, 21, 1, 1, 83, 83; Attacks
    .word sLastStarman      ; Name
    .word 330               ; Experience
    .word 389               ; Money
    .byte 73                ; Item
    .byte $33               ; TilePage

.export byte_168F40
byte_168F40:
    .byte $C, 0, 0, 0, $D, 0, 0, 0, $E, 0, 0, 0, 0, $D, 0
    .byte 0, 0, $E, 0, 0, 0, $B, $11, 0, 0, 8, $E, $14, $B
    .byte $11, 0, 0, 8, $12, 0, 0, 7, $11, 0, 0, 8, $E, $14
    .byte 0, 5, $D, $15, 0, 6, $B, $10, $15, 2, 9, $10, $17
    .byte $B, $10, 0, 0, 7, $C, $15, 0, $C, $15, 0, 0, $A
    .byte $12, 0, 0, 2, 7, $10, $15, 3, $C, $15, 0, 0, 8, $12
    .byte 0, 0, 5, $D, $15

.export EnemyGroups
EnemyGroups:
    .byte NO_ENEMY, 0, Unknown, 0, NO_ENEMY, 0, NO_ENEMY, 0, 3, $30
    .byte Rat, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $2C
    .byte Rat, 1, Rat, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $2C
    .byte Crow, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $2B
    .byte Crow, 1, Crow, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $2B
    .byte Centipede, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $2B
    .byte Centipede, 1, Centipede, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $2B
    .byte StrayDog, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3E
    .byte Wally, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $2A
    .byte TheHippie, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $4B
    .byte BagLady, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $28
    .byte Snake, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $26
    .byte MrBat, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $27
    .byte MrBat, 1, MrBat, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $27
    .byte MrBat, 1, MrBat, 2, MrBat, 3, NO_ENEMY, 0, $A, $27
    .byte MrBat, 1, MrBat, 2, MrBat, 3, MrBat, 4, $C, $27
    .byte PseudoZombi, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $3C
    .byte GangZombie, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $3C
    .byte Elephant, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 0, $36
    .byte Tiger, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 0, $30
    .byte Gorilla, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $37
    .byte Hyena, 1, Hyena, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $26
    .byte Hyena, 1, Hyena, 2, Hyena, 3, NO_ENEMY, 0, $B, $26
    .byte Alligator, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $39
    .byte Alligator, 1, Alligator, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $39
    .byte Fly, 1, Fly, 2|HIDE, Fly, 3|HIDE, Fly, 4|HIDE, $C, $21
    .byte Fly, 1, Fly, 2, Fly, 3|HIDE, Fly, 4|HIDE, $C, $21
    .byte BionicCenti, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $21
    .byte LilSaucer, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $30
    .byte LilSaucer, 1, LilSaucer, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $30
    .byte Barbot, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $30
    .byte Barbot, 0, LilSaucer, 0, NO_ENEMY, 0, NO_ENEMY, 0, 7, $30
    .byte LilSaucer, 1, Barbot, 0, LilSaucer, 2, NO_ENEMY, 0, $A, $30
    .byte LilSaucer, 1, LilSaucer, 2, Barbot, 0, LilSaucer, 3, $C, $30
    .byte RaebYddet, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $31
    .byte RaebYddet, 0, SkyYddet, HIDE, NO_ENEMY, 0, NO_ENEMY, 0, 8, $31
    .byte BigWoodoh, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 0, $31
    .byte Woodoh, 1, Woodoh, 2|HIDE, Woodoh, 3|HIDE, NO_ENEMY, 0, $A, $36
    .byte MagicSnail, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3B
    .byte MagicSnail, 1, MagicSnail, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $3B
    .byte Watcher, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $20
    .byte Momseyes, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $20
    .byte Dadseyes, 0, Watcher, 0, Momseyes, 0, NO_ENEMY, 0, $A, $20
    .byte Dadseyes, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $20
    .byte Foureyes, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $20
    .byte NO_ENEMY, 0, Groucho, 0, NO_ENEMY, 0, NO_ENEMY, 0, 4, $20
    .byte Dragon, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 0, $36
    .byte TheFish, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $35
    .byte Bear, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3D
    .byte NO_ENEMY, 0, Eagle, 0, NO_ENEMY, 0, NO_ENEMY, 0, 3, $3A
    .byte NO_ENEMY, 0, Eagle, 1, Eagle, 2, NO_ENEMY, 0, $14, $3A
    .byte NO_ENEMY, 0, Eagle, 1, Eagle, 2, Eagle, 3, $15, $3A
    .byte Skunk, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $3C
    .byte Skunk, 1, Skunk, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $3C
    .byte Cougar, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3C
    .byte Cougar, 1, Cougar, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $3C
    .byte Cougar, 0, Skunk, 0, NO_ENEMY, 0, NO_ENEMY, 0, $11, $3C
    .byte Cougar, 0, Skunk, 0, NO_ENEMY, 0, NO_ENEMY, 0, $11, $3C
    .byte Wolf, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3E
    .byte Wolf, 1, Wolf, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $3E
    .byte MadCar, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $41
    .byte MadCar, 0, MadTruck, 0, NO_ENEMY, 0, NO_ENEMY, 0, 8, $41
    .byte PsychoCar, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $40
    .byte NO_ENEMY, 0, PsychoTruck, 0, NO_ENEMY, 0, NO_ENEMY, 0, 3, $40
    .byte NO_ENEMY, 0, ManiacTruck, 0, NO_ENEMY, 0, NO_ENEMY, 0, 3, $44
    .byte OldRobot, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $32
    .byte Scrapper, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $33
    .byte DrDistorto, 0, OldRobot, 0, NO_ENEMY, 0, NO_ENEMY, 0, $E, $32
    .byte DrDistorto, 0, Scrapper, 0, NO_ENEMY, 0, NO_ENEMY, 0, $E, $33
    .byte Bomber, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $25
    .byte FireBall, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $26
    .byte RedSnake, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $31
    .byte Ghost, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $24
    .byte Ghost, 1, Ghost, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $24
    .byte Ghost, 1, Ghost, 2, Ghost, 3, NO_ENEMY, 0, $A, $24
    .byte Armor, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $34
    .byte Armor, 1, Armor, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $34
    .byte DustBall, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $35
    .byte BionicBat, 1, BionicBat, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $25
    .byte BionicBat, 1, BionicBat, 2, BionicBat, 3|HIDE, BionicBat, 4|HIDE, $C, $25
    .byte Ghost, 1|HIDE, Ghost, 2|HIDE, AlarmGhost, 0, Ghost, 3|HIDE, $C, $34
    .byte Zombie, HIDE, Ghost, HIDE, AlarmGhost, 0, Armor, HIDE, $C, $34
    .byte Zombie, 1, Zombie, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $34
    .byte Zombie, 0, NastyZombie, 0, NO_ENEMY, 0, NO_ENEMY, 0, 7, $34
    .byte BionicBat, HIDE, DustBall, 1|HIDE, AlarmGhost, 0, DustBall, 2|HIDE, $12, $35
    .byte SilverWolf, 1, SilverWolf, 2, SilverWolf, 3, NO_ENEMY, 0, $B, $3E
    .byte SilverWolf, 1, SilverWolf, 2, SilverWolf, 3, SilverWolf, 4, $D, $3E
    .byte LoneWolf, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3E
    .byte PolarBear, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3D
    .byte BigFoot, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 0, $27
    .byte OmegaSaucer, 1, OmegaSaucer, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $33
    .byte OmegaSaucer, 1, OmegaSaucer, 2, OmegaSaucer, 3, NO_ENEMY, 0, $A, $33
    .byte UltraBarbot, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $33
    .byte OmegaSaucer, 1, UltraBarbot, 0, OmegaSaucer, 2, NO_ENEMY, 0, $A, $33
    .byte OmegaSaucer, 1, OmegaSaucer, 2, UltraBarbot, 0, OmegaSaucer, 3, $C, $33
    .byte UltraBarbot, 0, Starman, 0, NO_ENEMY, 0, NO_ENEMY, 0, 7, $38
    .byte Starman, 1, UltraBarbot, 0, Starman, 2, NO_ENEMY, 0, $A, $38
    .byte UltraBarbot, 0, EnergyRobot, 0, NO_ENEMY, 0, NO_ENEMY, 0, $E, $33
    .byte Titanees, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $32
    .byte Titanees, 1, Titanees, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $32
    .byte Nancy, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $32
    .byte Nancy, 0, EnergyRobot, 0, NO_ENEMY, 0, NO_ENEMY, 0, $E, $32
    .byte Spider, 1, Spider, 2|HIDE, Spider, 3|HIDE, NO_ENEMY, 0, $A, $20
    .byte Gabilan, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $36
    .byte Gabilan, 1, Gabilan, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $36
    .byte Starman, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $30
    .byte Rattlesnake, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $30
    .byte Tarantula, 1, Tarantula, 2|HIDE, Tarantula, 3|HIDE, NO_ENEMY, 0, $A, $21
    .byte Scorpion, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $31
    .byte Scorpion, 1, Scorpion, 2, NO_ENEMY, 3, NO_ENEMY, 0, 7, $31
    .byte BionicScorp, 0, Scorpion, 1, Scorpion, 2, NO_ENEMY, 0, $A, $31
    .byte R7037, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, $40, $30
    .byte Kelly, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $32
    .byte Kelly, 0, EnergyRobot, 0, NO_ENEMY, 0, NO_ENEMY, 0, $E, $32
    .byte NO_ENEMY, 0, Mook, 0, NO_ENEMY, 0, NO_ENEMY, 0, 4, $3A
    .byte NO_ENEMY, 0, Mook, 1, Mook, 2, NO_ENEMY, 0, 5, $3A
    .byte NO_ENEMY, 0, Mook, 1, Mook, 2, Mook, 3, 6, $3A
    .byte Crocodile, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $39
    .byte Crocodile, 1, Crocodile, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $39
    .byte Crocodile, 1, Crocodile, 2, Crocodile, 3, NO_ENEMY, 0, $B, $39
    .byte Bison, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 0, $2F
    .byte Bison, 1, Bison, 2, NO_ENEMY, 0, NO_ENEMY, 0, 9, $2F
    .byte Buffalo, 1, Buffalo, 2, NO_ENEMY, 0, NO_ENEMY, 0, 9, $3D
    .byte Buffalo, 1, Buffalo, 2, Buffalo, 3, NO_ENEMY, 0, $13, $3D
    .byte Seagull, 1, Seagull, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $2D
    .byte Seagull, 1, Seagull, 2, Seagull, 3, NO_ENEMY, 0, $B, $2D
    .byte BlueStarman, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $39
    .byte BlueStarman, 1, BlueStarman, 2, NO_ENEMY, 0, NO_ENEMY, 0, 7, $39
    .byte BlueStarman, 1, BlueStarman, 2, BlueStarman, 3, NO_ENEMY, 0, $A, $39
    .byte GrizzlyBear, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3D
    .byte Cerebrum, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $3A
    .byte Titanian, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $38
    .byte Titanian, 1, Titanian, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $38
    .byte Gargoyle, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 0, $37
    .byte Gargoyle, 1, Gargoyle, 2, NO_ENEMY, 0, NO_ENEMY, 0, 9, $37
    .byte Rockoyle, 1, Rockoyle, 2, NO_ENEMY, 0, NO_ENEMY, 0, 9, $37
    .byte Rockoyle, 1, Rockoyle, 2, Rockoyle, 3, NO_ENEMY, 0, $13, $37
    .byte Megaborg, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $32
    .byte Megaborg, 1, Megaborg, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $32
    .byte Megaborg, 0, SuperEnergy, 0, NO_ENEMY, 0, NO_ENEMY, 0, 8, $32
    .byte NO_ENEMY, 0, OhMook, 0, NO_ENEMY, 0, NO_ENEMY, 0, 4, $3A
    .byte NO_ENEMY, 0, OhMook, 1, OhMook, 2, NO_ENEMY, 0, 5, $3A
    .byte NO_ENEMY, 0, OhMook, 1, OhMook, 2, OhMook, 3, 6, $3A
    .byte NO_ENEMY, 0, OhMook, 1, OhMook, 2, OhMook, 3, 6, $3A
    .byte R7038XX, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, $60, $3F
    .byte R7038, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, $80, $36
    .byte StarMiner, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $3C
    .byte Juana, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $32
    .byte Juana, 0, SuperEnergy, 0, NO_ENEMY, 0, NO_ENEMY, 0, $E, $32
    .byte GigaBorg, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $30
    .byte GigaBorg, 1, GigaBorg, 2, NO_ENEMY, 0, NO_ENEMY, 0, 8, $30
    .byte OmegaBorg, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $30
    .byte OmegaBorg, 0, GigaBorg, 0, NO_ENEMY, 0, NO_ENEMY, 0, 8, $30
    .byte LastStarman, 1, LastStarman, 2, LastStarman, 3, NO_ENEMY, 0, $A, $30
    .byte LastStarman, 1, LastStarman, 2, LastStarman, 3, LastStarman, 4, $C, $30
    .byte LastStarman, 1, LastStarman, 2, LastStarman, 3, LastStarman, 4, $C, $30
    .byte NO_ENEMY, 0, Fugitive, 0, Rope, 0, NO_ENEMY, 0, 5, $23
    .byte BBsBoss, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, $22, $47
    .byte BBGang, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $4B
    .byte Doll, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $3F
    .byte Lamp, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 2, $36
    .byte Ullrich, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $39
    .byte Giegue, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, $A0, $59
    .byte NO_ENEMY, 0, Shroudley, 0, NO_ENEMY, 0, NO_ENEMY, 0, 3, $3F
    .byte StarmanJr, 0, NO_ENEMY, 0, NO_ENEMY, 0, NO_ENEMY, 0, 1, $3E

.export off_16960A
off_16960A:
    .word byte_16962A, byte_16962A, byte_16966D, byte_1696A0
    .word byte_1696D3, byte_1696FA, byte_16962A, byte_169719
    .word byte_169734, byte_16974F, byte_16976A, byte_16977D
    .word byte_16978C, byte_16979B, byte_1697AA, byte_1697B5

byte_16962A:
    .byte 8, 8, 0, 0, 1, 2, 3, 4, 5, 6, 7, $10, $11, $12, $13
    .byte $14, $15, $16, $17, $20, $21, $22, $23, $24, $25
    .byte $26, $27, $30, $31, $32, $33, $34, $35, $36, $37
    .byte 8, 9, $A, $B, $C, $D, $E, $F, $18, $19, $1A, $1B
    .byte $1C, $1D, $1E, $1F, $28, $29, $2A, $2B, $2C, $2D
    .byte $2E, $2F, $38, $39, $3A, $3B, $3C, $3D, $3E, $3F

byte_16966D:
    .byte 8, 6, 0, 0, 1, 2, 3, 4, 5, $10, $11, $12, $13, $14
    .byte $15, $20, $21, $22, $23, $24, $25, $30, $31, $32
    .byte $33, $34, $35, 6, 7, 8, 9, $A, $B, $16, $17, $18
    .byte $19, $1A, $1B, $26, $27, $28, $29, $2A, $2B, $36
    .byte $37, $38, $39, $3A, $3B

byte_1696A0:
    .byte 6, 8, 2, 0, 1, 2, 3, 4, 5, 6, 7, $10, $11, $12, $13
    .byte $14, $15, $16, $17, $20, $21, $22, $23, $24, $25
    .byte $26, $27, $30, $31, $32, $33, $34, $35, $36, $37
    .byte 8, 9, $A, $B, $28, $29, $2A, $2B, $18, $19, $1A
    .byte $1B, $38, $39, $3A, $3B

byte_1696D3:
    .byte 6, 6, 2, 7, 8, 9, $A, $B, $C, $17, $18, $19, $1A
    .byte $1B, $1C, $27, $28, $29, $2A, $2B, $2C, $37, $38
    .byte $39, $3A, $3B, $3C, $D, $E, $F, $2D, $2E, $2F, $1D
    .byte $1E, $1F, $3D, $3E, $3F

byte_1696FA:
    .byte 7, 4, 1, 0, 1, 2, 3, $10, $11, $12, $13, $20, $21
    .byte $22, $23, $30, $31, $32, $33, 4, 5, 6
    .byte $14, $15, $16, $24, $25, $26, $34, $35, $36

byte_169719:
    .byte 6, 4, 2, 0, 1, 2, 3, $10, $11, $12, $13, $20, $21
    .byte $22, $23, $30, $31, $32, $33, 4, 5, $24, $25, $14
    .byte $15, $34, $35

byte_169734:
    .byte 6, 4, 2, 6, 7, 8, 9, $16, $17, $18, $19, $26, $27
    .byte $28, $29, $36, $37, $38, $39, $A, $B, $2A, $2B, $1A
    .byte $1B, $3A, $3B

byte_16974F:
    .byte 4, 6, 4, 0, 1, 2, 3, 4, 5, $10, $11, $12, $13, $14
    .byte $15, $20, $21, $22, $23, $24, $25, $30, $31, $32
    .byte $33, $34, $35

byte_16976A:
    .byte 4, 4, 4, $C, $D, $E, $F, $1C, $1D, $1E, $1F, $2C
    .byte $2D, $2E, $2F, $3C, $3D, $3E, $3F

byte_16977D:
    .byte 4, 3, 4, 7, 8, 9, $17, $18, $19, $27, $28, $29, $37
    .byte $38, $39

byte_16978C:
    .byte 4, 3, 4, $A, $B, $C, $1A, $1B, $1C, $2A, $2B, $2C
    .byte $3A, $3B, $3C

byte_16979B:
    .byte 4, 3, 4, $D, $E, $F, $1D, $1E, $1F, $2D, $2E, $2F
    .byte $3D, $3E, $3F

byte_1697AA:
    .byte 2, 4, 3, $C, $D, $E, $F, $1C, $1D, $1E, $1F

byte_1697B5:
    .byte 4, 4, 3, $2C, $2D, $2E, $2F, $3C, $3D, $3E, $3F
    .byte $2C, $2D, $2E, $2F, $3C, $3D, $3E, $3F, 0, 0, 0
    .byte 4, $40, $97, 4, $44, $97, 5, $48, $97, 4, $4C, $97
    .byte $10, $50, $97, $18, $54, $97, 9, $58, $97, 7, $5C
    .byte $97, 5, $60, $97, 4, $64, $97, 4, $68, $97, 7, $6C
    .byte $97, 1, $70, $97, 8, $74, $97, $22, $78, $97, 8
    .byte $7C, $97

.export BattleScripts
BattleScripts:
    .word End,byte_16990E,byte_169944,byte_169957,byte_16996B,byte_169973,byte_16997B,byte_169985
    .word byte_1699A6,byte_1699CD,byte_1699E7,byte_1699F0,byte_169A15,byte_169A25,byte_169A2E,byte_169A41
    .word byte_169A4D,byte_169A56,byte_169A62,byte_169A7C,byte_169A8F,byte_169AA2,byte_169AE6,byte_169ABA
    .word byte_169ACA,byte_169E55,byte_169E69,byte_169B71,byte_1699B9,byte_169B7C,byte_169B8D,byte_169B9E
    .word EndScript,EndScript,byte_169C01,byte_169C0D,EndScript,byte_169BBC,EndScript,EndScript
    .word byte_169BAB,byte_169CD3,byte_169CE0,byte_169CE9,byte_169CF4,byte_169D07,byte_169D18,byte_169D1E
    .word byte_169E75,byte_169B0E,byte_169C14,EndScript,byte_169C2E,EndScript,byte_169DC3,byte_169DD5
    .word byte_169DE0,byte_169DEB,EndScript,EndScript,byte_169C44,byte_169BCF,byte_169C71,byte_169B24
    .word byte_169B30,byte_169B46,byte_169B4D,byte_169B54,byte_169C83,byte_169C98,byte_169E39,byte_169CC7
    .word byte_169DF9,byte_169E87,byte_169E89,byte_169E8B,byte_169E3E,EndScript,EndScript,byte_169E41
    .word byte_169E44,byte_169E97,EndScript,byte_169E0F,byte_169EA3,EndScript,EndScript,EndScript
    .word EndScript,byte_169E15,EndScript,byte_169D72,byte_169E1B,byte_169BB5,byte_169EAB,byte_169D84
    .word byte_169C62,EndScript,byte_169CBD,byte_169D8F,byte_169D9A,byte_169DA5,byte_169E2E,byte_1699F9
    .word EndScript,byte_169A72,byte_169A85,byte_169B87,byte_169BE1,byte_169B1D,byte_169CA7,byte_169EAF
    .word EndScript,byte_169D2D,byte_169D36,byte_169D3F,byte_169D48,byte_169D51,byte_169DAD,byte_169B06
    .word byte_169E47,byte_169E4E,byte_169D5B,byte_169D64,byte_169D7D,byte_1699E0,EndScript,EndScript
    .word byte_169CB8,EndScript,byte_169BE6,byte_169AD3,byte_169D6B,byte_169A03,byte_169DB8,EndScript, byte_169E5F

End:
    .byte 0

byte_16990E:
    .byte $51, $80, $1B, $99, $73, $1B, $99, $74, $3A, $99, $72, $2E
    .byte $99, $66, 0, $68, 4, $80, $B7, $9E, $81, $BA, $9E
    .byte $73, $BF, $9E, $12, $60, 0, $40, 6, 0, $69, 3, $68
    .byte 4, $1B, $68, $B, $61, 0, $40, 6, 0, $69, 8, $68
    .byte 5, $1B, $62, $3C, $40, 6, 0

byte_169944:
    .byte $51, $66, 0, $68, 4, $90, $1F, $99, $80, $56, $99, $66, 0, $68, 7, $90
    .byte $1F, $99, 0

byte_169957:
    .byte $51, $66, 0, $68, 8, $60, 0, $80, $B7
    .byte $9E, $81, $BA, $9E, $73, $BF, $9E, $12, $40, 6, 0

byte_16996B:
    .byte $51, $66, 0, $68, 9, $A0, $5C, $99

byte_169973:
    .byte $51, $66, 0, $68, $A, $A0, $5C, $99

byte_16997B:
    .byte $51, $66, 0, $68, $13, $62, $F, $A0, $5E, $99

byte_169985:
    .byte $51, $69, 3, $68, $15, $80, $9A, $99, $73, $A0, $99, $1B, $62, $C8, $40, 6, $40, $E
    .byte $68, $14, 0, $90, $B7, $9E, $A0, $95, $99, $90, $BF, $9E, $A0, $95, $99

byte_1699A6:
    .byte $63, 0, $52, $69, $14, $68, $16
    .byte $B4, $80, $B6, $99, $13, $62, $4B, $40, 6, $56, 0, 0

byte_1699B9:
    .byte $52, $68, $5A, $B4, $80, $CA, $99, $8D, $C8, $99
    .byte $40, $29, $A0, $CA, $99, $68, $12, $56, 0, 0

byte_1699CD:
    .byte $67, 5, $20, $2C, $62, $14, $52, $B4, $80, $DD, $99, $64
    .byte $40, $17, $40, 6, $56, 0, 0

byte_1699E0:
    .byte $67, 5, $31, $61, $A0, $D1, $99

byte_1699E7:
    .byte $67, 5, $20, $2D, $62, $3C, $A0, $D3, $99

byte_1699F0:
    .byte $67, 5, $20, $2E, $62, $64, $A0, $D3, $99

byte_1699F9:
    .byte $67, 5, $32, $22, $90, $F4, $99, $C0, $22, 0

byte_169A03:
    .byte $67, 5, $20, $2F, $A0, $A, $9A, $52, $B4, $80, $12, $9A, $17, $40, 9, $56, 0, 0

byte_169A15:
    .byte $67, 7, $20, $28, $62, $A, $51
    .byte $80, $B7, $9E, $64, $20, $18, $40, 6, 0

byte_169A25:
    .byte $67, 7, $20, $29, $62, $28, $A0, $1B, $9A

byte_169A2E:
    .byte $67, 7, $20, $2B, $62, $50, $52, $B4, $80, $3E
    .byte $9A, $64, $20, $18, $40, 6, $56, 0, 0

byte_169A41:
    .byte $67, 7, $20, $2A, $51, $80, $B7, $9E, $18, $40, $A, 0

byte_169A4D:
    .byte $67, 8, $31, $23, $62, $3C, $A0, $D3, $99

byte_169A56:
    .byte $67, 8, $31, $24, $90, $A, $9A, $62, $1F, $40, $F, 0

byte_169A62:
    .byte $67, 6, $20, $30, $62, $1E, $51, $80, $B7, $9E, $64, 2, $1A, $40, 6, 0

byte_169A72:
    .byte $67, 6, $32, $25, $90, $66, $9A, $C0, $25, 0

byte_169A7C:
    .byte $67, 6, $20, $31, $62, $50, $A0, $68, $9A

byte_169A85:
    .byte $67, 6, $32, $26, $90, $80, $9A, $C0, $26, 0

byte_169A8F:
    .byte $67, 6, $20, $33, $62, $B4, $52, $B4, $80, $9F, $9A, $64
    .byte 2, $1A, $40, 6, $56, 0, 0

byte_169AA2:
    .byte $67, 6, $20, $32, $51, $80, $B7, $9E, $75, $B4, $9A, $1A, $79, $C4, $9E
    .byte $40, 9, 0, $68, $52, $54, $A0, $AD, $9A

byte_169ABA:
    .byte $67, 4, $20, $34, $62, $A, $51, $80, $B7, $9E, $64, $10, $19, $40, 6, 0

byte_169ACA:
    .byte $67, 4, $20, $35, $62, $32, $A0, $C0, $9A

byte_169AD3:
    .byte $67, 4, $20, $36, $62, $3C, $52, $B4, $80
    .byte $E3, $9A, $64, $10, $19, $40, 6, $56, 0, 0

byte_169AE6:
    .byte $67, 1, $32, $19, $90, $F0, $9A, $C0, $19, 0, $52, $B4
    .byte $80, $FE, $9A, $12, $79, 1, $9B, $87, 1, $9B, $40
    .byte 9, $56, 0, 0, $68, $12, $A0, $FE, $9A

byte_169B06:
    .byte $67, 1, $30, $1A, $90, $F0, $9A, 0

 byte_169B0E:
    .byte $67, $D, $20, $1C, $51, $80, $B7, $9E, $13, $79, $C4, $9E, $40, $12, 0

byte_169B1D:
    .byte $67, 0, $30, $1F, $A0, $12, $9B

byte_169B24:
    .byte $66,  0,$68,$1A,$51,$80,$B7,$9E
    .byte $13,$40,$12,  0

byte_169B30:
    .byte $69, $D,$51,$68,$2C,$51,$80,$B7
    .byte $9E,$13,$78,$C4,$9E,$79,$C4,$9E
    .byte $7A,$C4,$9E,$40,$14,  0

byte_169B46:
    .byte $69, $D,$68,$76,$A0,$35,$9B

byte_169B4D:
    .byte $67, $D,$20,$18,$A0,$35,$9B

byte_169B54:
    .byte $67, $D,$20,$19,$52,$B4,$80,$69
    .byte $9B,$13,$78,$6C,$9B,$79,$6C,$9B
    .byte $7A,$6C,$9B,$40,$14,$56,  0,  0
    .byte $68,$12,$A0,$69,$9B

byte_169B71:
    .byte $67,  0,$20,$20,$51,$80,$B7,$9E
    .byte $40,  3,  0

byte_169B7C:
    .byte $67,  0,$20,$21,$51,$80,$B7,$9E
    .byte $40,  4,  0

byte_169B87:
    .byte $68,$28,$54,$A0,$81,$9B

byte_169B8D:
    .byte $67,  0,$20,$22,$53,$B4,$80,$9B
    .byte $9B,$7C,$9B,$9B,$40,  4,$56, 0, 0

byte_169B9E:
    .byte $67,  0,$20,$23,$51,$80,$B7,$9E
    .byte $62,$14,$40,  2,  0

byte_169BAB:
    .byte $62,$19
    .byte $54
    .byte $68,$2A           ; msg sRage
    .byte $62,$14
    .byte $40,$11
    .byte 0

byte_169BB5:
    .byte $66,  0,$62,$14,$40,$10,  0

byte_169BBC:
    .byte $67, $D,$20,$24,$62,$28,$51,$80
    .byte $B7,$9E,$13,$79,$C4,$9E,$64,  4
    .byte $40,  7,  0

byte_169BCF:
    .byte $67,  0,$31,$21,$51,$80,$B7,$9E
    .byte $73,$BF,$9E,$13,$79,$C4,$9E,$40
    .byte $13,  0

byte_169BE1:
    .byte $68,$1D,$A0,$C0,$9B

byte_169BE6:
    .byte $52,$67, $D,$20,$25,$B4,$62,$28
    .byte $80,$F9,$9B,$13,$79,$FC,$9B,$64
    .byte   4,$40,  7,$56,  0,  0,$68,$12
    .byte $A0,$F9,$9B

byte_169C01:
    .byte $68,$32,$62,$1E,$51,$80,$B7,$9E
    .byte $13,$40,  8,  0

byte_169C0D:
    .byte $68,$33,$62,$14,$A0,  5,$9C

byte_169C14:
    .byte $52,$66,  0,$68,$4A,$B4,$80,$2B
    .byte $9C,$12,$62,$1E,$40,  6,$80,$2B
    .byte $9C,$62,$14,$40,  8,$40,$1D,$56
    .byte   0,  0

byte_169C2E:
    .byte $51,$66,  0,$68,  4,$80,$B7,$9E
    .byte $73,$BF,$9E,$13,$79,$C4,$9E,$68
    .byte $4C,$40, $B,$40, $C,  0

byte_169C44:
    .byte $67,  0,$30,$70,$51,$80,$B7,$9E
    .byte $68,$18,$13,$88,$59,$9C,$68,$35
    .byte $62,$19,$40,  8,  0,$68,$36,$68
    .byte $37,$62,$14,$40,$11,  0

byte_169C62:
    .byte $67,  0,$31,$1B,$51,$79,$C4,$9E
    .byte $68,$5F,$40, $B,$40, $C,  0

byte_169C71:
    .byte $67,  0,$31,$20,$51,$80,$B7,$9E
    .byte $73,$BF,$9E,$13,$79,$C4,$9E,$40
    .byte $1C,  0

byte_169C83:
    .byte $67, $D,$20,$1A,$51,$80,$B7,$9E
    .byte $13,$78,$C4,$9E,$79,$C4,$9E,$7A
    .byte $C4,$9E,$40,$15,  0

byte_169C98:
    .byte $67, $D,$20,$1B,$51,$80,$B7,$9E
    .byte $13,$79,$C4,$9E,$40,$16,  0

byte_169CA7:
    .byte $67,  0,$32,$1E,$51,$80,$B7,$9E
    .byte $13,$79,$C4,$9E,$40,$16,$C0,$1E
    .byte   0

byte_169CB8:
    .byte $68,$77,$A0,$AB,$9C

byte_169CBD:
    .byte $68,  4,$51,$80,$B7,$9E,$13,$40
    .byte $1E,  0

byte_169CC7:
    .byte $67,  0,$31,$28,$51,$80,$B7,$9E
    .byte $12,$40,$1B,  0

byte_169CD3:
    .byte $67,  0,$20,  8,$62,$1E,$51,$80
    .byte $B7,$9E,$40,  0,  0

byte_169CE0:
    .byte $67,  0,$20,  9,$62,$50,$A0,$D9
    .byte $9C

byte_169CE9:
    .byte $67,  0,$20, $A,$51,$80,$B7,$9E
    .byte $40,  5,  0

byte_169CF4:
    .byte $67,  0,$20, $B,$62,$32,$53,$B4
    .byte $80,  4,$9D,$7C,  4,$9D,$40,  0
    .byte $56,  0,  0

byte_169D07:
    .byte $67,  0,$20, $C,$53,$B4,$80,$15
    .byte $9D,$7C,$15,$9D,$40,  5,$56,  0
    .byte   0

byte_169D18:
    .byte $51,$68,$3F,$A0,$ED,$9C

byte_169D1E:
    .byte $67,  0,$32,$49,$62,$14,$54,$80
    .byte $B7,$9E,$40,  1,$C1,$49,  0

byte_169D2D:
    .byte $67,  0,$31,$3C,$62, $A,$A0,$D9
    .byte $9C

byte_169D36:
    .byte $67,  0,$31,$3D,$62,$14,$A0,$D9
    .byte $9C

byte_169D3F:
    .byte $67,  0,$31,$3E,$62,$1E,$A0,$D9
    .byte $9C

byte_169D48:
    .byte $67,  0,$31,$40,$62,$64,$A0,$D9
    .byte $9C

byte_169D51:
    .byte $67,  0,$33,  1,$90,$43,$9D,$C2
    .byte   1,  0

byte_169D5B:
    .byte $67,  0,$31,$3F,$62,$3C,$A0,$D9
    .byte $9C

byte_169D64:
    .byte $67,  0,$31,$41,$A0,$ED,$9C

byte_169D6B:
    .byte $67,  0,$31,$47,$A0,$3A,$9D

byte_169D72:
    .byte $67,  0,$20,$10,$51,$80,$B7,$9E
    .byte $40,$1F,  0

byte_169D7D:
    .byte $67,  0,$31,$43,$A0,$76,$9D

byte_169D84:
    .byte $67,  0,$31,$48,$51,$80,$B7,$9E
    .byte $40,$23,  0

byte_169D8F:
    .byte $67,  0,$20,$11,$51,$80,$B7,$9E
    .byte $40,$21,  0

byte_169D9A:
    .byte $67,  0,$20,$13,$51,$80,$B7,$9E
    .byte $40,$20,  0

byte_169DA5:
    .byte $67,  0,$20,$14,$51,$40,$25,  0

byte_169DAD:
    .byte $67,  0,$30,$42,$51,$80,$B7,$9E
    .byte $40,$22,  0

byte_169DB8:
    .byte $67,  0,$20,$12,$51,$80,$B7,$9E
    .byte $40,$26,  0

byte_169DC3:
    .byte $67, $D,$20,$1F,$51,$80,$B7,$9E
    .byte $78,$D1,$9D,$78,$C4,$9E,$13,$40
    .byte $17,  0

byte_169DD5:
    .byte $67,  0,$20,$17,$51,$80,$B7,$9E
    .byte $40,$1A,  0

byte_169DE0:
    .byte $67,  0,$20,$15,$51,$80,$B7,$9E
    .byte $40,$19,  0

byte_169DEB:
    .byte $67,  0,$20,$16,$53,$B4,$80,$F6
    .byte $9D,$40,$19,$56,  0,  0

byte_169DF9:
    .byte $55,$68,$43,$78, $C,$9E,$7B, $C
    .byte $9E,$B4,$86,  9,$9E,$69,$11,$11
    .byte $56,  0,  0,$68,$44,  0

byte_169E0F:
    .byte $68,$59,$54,$40,$18,  0

byte_169E15:
    .byte $68,$5B,$54,$40,$18,  0

byte_169E1B:
    .byte $67, $C,$20,$26,$7B,$2B,$9E,$55
    .byte $B4,$86,$28,$9E,$16,$56,  0,  0
    .byte $68,$90,  0

byte_169E2E:
    .byte $67,  0,$20,$1E,$51,$80,$B7,$9E
    .byte $40,$24,  0

byte_169E39:
    .byte $69,$13,$68,$45,  0

byte_169E3E:
    .byte $68,$30,  0

byte_169E41:
    .byte $68,$34,  0

byte_169E44:
    .byte $68,$57,  0

byte_169E47:
    .byte $67,  0,$30,$1C,$68,$72,  0

byte_169E4E:
    .byte $67,  0,$30,$1D,$68,$73,  0

byte_169E55:
    .byte $69,  8,$68,$1E,$90,$51,$9A,$40
    .byte  $E,  0

byte_169E5F:
    .byte $69,  8,$68,$1E,$90, $A,$9A,$40
    .byte  $E,  0

byte_169E69:
    .byte $69,  5,$68,$1F,$62,$1E,$90,$D3
    .byte $99,$40, $E,  0

byte_169E75:
    .byte $67, $D,$20,$1D,$51,$80,$B7,$9E
    .byte $78,$83,$9E,$78,$C4,$9E,$13,$40
    .byte $27,  0

byte_169E87:
    .byte $14,  0

byte_169E89:
    .byte $15,  0

byte_169E8B:
    .byte $51,$80, $E,$99,$73, $E,$99,$69
    .byte  $B,$40,$28,  0

byte_169E97:
    .byte $68,$58,$54,$69,$11,$11,$51,$62
    .byte $46,$40, $D,  0

byte_169EA3:
    .byte $66,  0,$68,$66,$54,$40,$2A,  0

byte_169EAB:
    .byte $10
    .byte $68,  3
    .byte 0

byte_169EAF:
    .byte $51,$80,$B7,$9E,$65,  0,  0

EndScript:
    .byte 0
    .byte $68, $11, 0, $69, $B, $68, 6, 0, $69, $13, $68, $50, 0, $68, $12, 0

.export BattleAction
BattleAction:
    .byte $2A, $AA, 0, $A2, $A, $22, $81, $11, $4A, $20, $15
    .byte 4, $A0, $89, $40, $AA, $A8, $A2, 2, 0, $20, 2, 1
    .byte 1, $89, $58, $28, $AA, $15, $54, $A5, $40, $80, $44

byte_169EE9:
    .byte 0

byte_169EEA:
    .byte 0

byte_169EEB:
    .byte 0, 0, 1, $A, 0, 0, 0, 1, 0, 0, 0, 5, 0, 0, 0, 3
    .byte $3C, 0, 0, 4, $3C, 0, 1, 2, $3C, 0, 2, 1, $3C, 0
    .byte 0, 2, $14, 0, 1, 3, 0, 0, 1, 7, 0, 0, 1, $C, 0, 0
    .byte 3, 1, $B4, 0, 3, 2, $50, 0, 1, 5, 0, 0, 1, 1, 0
    .byte 0, 1, 4, 0, 0, 0, 8, 0, 0, 3, 2, 0, 0, 1, $F, 0
    .byte 0, 3, 3, $8C, 0, 2, 3, $3C, 0, 5, 8, 2, 3, $FE, $FD
    .byte $FE, 3, 2, $FD, 3, $14, 0, $FE, 0, $FF, 0, 0, 0
    .byte 1, 0, 2, 0, 2, 0, 1, 0, 0, 0, $FF, 0, $FE, 3, 8
    .byte 2, 6, $FE, $FA, $FE, 6, 2, $FA

.export stru_169F6B, byte_169F73, byte_169F7B, byte_169F83, stru_169F8B
stru_169F6B:
    .byte 2, 4, 9, 2, $C0, $5E, $C, $13

byte_169F73:
    .byte 1, 2, 3, 4, 5, 6, 7, 0

byte_169F7B:
    .byte 1, 2, 3, 4, 5, 6, 7, 8

byte_169F83:
    .byte 1, 0, 0, 0, 0, 0, 0, 0

.export stru_169F95, stru_169F9D, stru_169FA7
stru_169F8B:
    .byte 1, 4, 0, 2, $C0, $5E, $10, $13, $91, 5
stru_169F95:
    .byte 2, 4, $C, 2, $C0, $5E, 6, $13
stru_169F9D:
    .byte 2, 4, $C, 2, $C8, $5E, 6, $13, $80, 5
stru_169FA7:
    .byte 1, 1, 0, 0, $C5, $5E, 7, $11, $B1, $9F, 1

.export byte_169FB2, byte_169FB4
byte_169FB2:
    .byte 7, $13
byte_169FB4:
    .byte $12, $14, $16, $18
; end of 'BANK16'