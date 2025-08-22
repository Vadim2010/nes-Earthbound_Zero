.struct OAM_TILE
    PosY            .byte
    TileID          .byte
    Attr            .byte
    PosX            .byte
.endstruct

.struct ANIM_SPRITE
    Tiles           .byte
    TileID          .byte
    PosX            .byte
    PosY            .byte
    ShiftX          .byte
    ShiftY          .byte
    pFrame          .word
.endstruct

.macro animation_sprite Tiles, TileID, PosX, PosY, ShiftX, ShiftY, pFrame
    .byte Tiles, TileID, PosX, PosY, ShiftX, ShiftY
    .word pFrame
.endmacro

.struct NMI_DATA
    NMI_ID          .byte
    NumOfChr        .byte
    PPU_Addr        .word
    Chr             .byte
    Next            .byte
.endstruct

.struct GAME_SLOT
    field_0         .byte
    field_1         .byte
    field_2         .byte
    field_3         .byte
.endstruct

.struct CHARACTER
    field_0         .byte
    Status          .byte
    Flags           .byte
    MaxHealth       .word
    MaxPP           .word
    Offense         .word
    Defense         .word
    Fight           .byte
    Speed           .byte
    Wisdom          .byte
    Strength        .byte
    Force           .byte
    Level           .byte
    Exp             .res 3
    Health          .word
    PP              .word
    NameOffset      .word
    field_1A        .byte
    field_1B        .byte
    field_1C        .byte
    field_1D        .byte
    Frame           .word
    Goods           .res 8
    Items           .res 4
    field_2C        .res 4
    PSI             .res 8
    Name            .res 8
.endstruct

.struct PURE_SAVE
    field_0         .byte
    field_1         .byte
    GameNumber      .byte
    Active          .byte
    GlobalX         .word
    GlobalY         .word
    CharactersNum   .res 4
    field_C         .byte
    field_D         .byte
    field_E         .byte
    field_F         .byte
    Cash            .word
    Account         .word
    field_14        .byte
    Transfer        .word
    field_17        .byte
    FightMsgSpd     .byte
    field_19        .byte
    field_1A        .res 5
    field_1F        .byte
    field_20        .res 16
    field_30        .byte
    field_31        .byte
    field_32        .res 10
    CmndBtn         .res 3
    MsgSpdCheckbox  .byte
    Boy1            .tag CHARACTER
    Girl            .tag CHARACTER
    Boy2            .tag CHARACTER
    Boy3            .tag CHARACTER
    field_140       .res 56
    field_178       .res 9
    field_181       .res 64
    field_1C1       .res 63
.endstruct

.struct GAME_SAVE
    PureSave        .tag PURE_SAVE
    Flags           .res 32
    Boxes           .res 64
    Counters        .res 32
    field_280       .byte
    field_281       .res 7
    field_288       .byte
    Food            .res 7
    field_290       .res 32
    Storage         .res 80
.endstruct

.struct OBJECT
    Type            .byte
    Number          .byte
    Pointer         .word
    CoorX           .word
    CoorY           .word
    Tiles           .byte
    TileID          .byte
    PosX            .byte
    PosY            .byte
    ShiftX          .byte
    ShiftY          .byte
    pFrame          .word
    SpriteTabOff    .byte
    OffScreen       .byte
    ObjectScr       .word
    Value2          .byte
    View            .byte
    CurFrame        .word
    field_18        .byte
    field_19        .byte
    field_1A        .byte
    field_1B        .byte
    ObjOffset       .byte
    OldType         .byte
    field_1E        .word
.endstruct

.struct CHANGE_COOR
    AddX            .word
    AddY            .word
    NewX            .word
    NewY            .word
.endstruct

.macro coordinate addX, addY, newX, newY
    .word addX, addY, newX, newY
.endmacro

.struct ADD_MAP
    CoorX           .word
    CoorY           .word
    StepX           .byte
    StepY           .byte
    Tiles           .word
.endstruct

.macro add_map CoorX, CoorY, StepX, StepY, Tiles
    .word CoorX, CoorY
    .byte StepX, StepY
    .word Tiles
.endmacro

.struct ITEM
    Name            .addr
    Flags           .byte
    Equipment       .byte
    Action          .byte
    BattleAction    .byte
    Price           .word
.endstruct

.struct BATTLE
    EnemyGroup      .byte
    Status          .byte
    Flags           .byte
    Health          .word
    PP              .word
    Offense         .word
    Defense         .word
    Fight           .byte
    Speed           .byte
    Wisdom          .byte
    Strength        .byte
    Force           .byte
    Scripts         .res 8
    PointerChr      .word
    Letter          .byte
    field_1B        .byte
    TargetOff       .byte
    Script          .byte
    Resist          .byte
    field_1F        .byte
.endstruct

.struct ENEMY
    field_0         .byte
    Status          .byte
    Flags           .byte
    HP              .word
    PP              .word
    Offense         .word
    Defense         .word
    Fight           .byte
    Speed           .byte
    Wisdom          .byte
    Strength        .byte
    Force           .byte
    Attacks         .res 8
    Name            .word
    Experience      .word
    Money           .word
    Item            .byte
    TilePage        .byte
.endstruct

.struct SOUND_EFFECT
    NumSound       .byte
    Sound          .byte
    Delay          .byte
    field_3        .byte
.endstruct

.macro sound_effect NumSound, Sound, Delay
    .byte NumSound, Sound, Delay, 0
.endmacro

.struct CURSOR
    MaxX            .byte
    MaxY            .byte
    TileX           .byte
    TileY           .byte
    ButtonsMask     .byte
    TileIDOAM       .byte
    Column          .byte
    Row             .byte
    pStruct         .word
.endstruct

.macro cursor_short MaxX, MaxY, TileX, TileY, ButtonsMask, TileIDOAM, Column, Row
    .byte MaxX, MaxY, TileX, TileY, ButtonsMask, TileIDOAM, Column, Row
.endmacro

.macro cursor MaxX, MaxY, TileX, TileY, ButtonsMask, TileIDOAM, Column, Row, pStruct
    .byte MaxX, MaxY, TileX, TileY, ButtonsMask, TileIDOAM, Column, Row
    .word pStruct
.endmacro

;--------------------------------------------------------
;                     WORLD OBJECTS
;--------------------------------------------------------
; $20
.struct BOX
    Type_X          .word
    Direction_Y     .word
    AnimPntr        .word
    ItemID          .byte
    BoxID           .byte
.endstruct

;offsets ??? into dialogs
;$0058
;$0059
;$005A
;$005B
;$005C
;$005D

.enum
    Empty                   ; $00
    SingLullaby
    Pos
    DrewNear
    Attack
    TankGun
    Dodged
    ContinuousAttack
    Bit
    Scratched
    Charged
    SMAAAASH
    Suffered
    YOUWIN
    Lose
    Defeated
    Hurt                    ; $10
    Gone
    NoEffect
    RanOut
    Exhausted
    LastBlow
    Form
    Surrounded
    MotherCall
    Tturned
    Spit
    Blinded
    Bound
    StrangeCry
    Exploded
    Burst
    OFFENSEinc              ; $20
    OFFENSEdec
    DEFENSEinc
    SPEEDinc
    Offense
    Defense
    FIGHTdec
    DEFENSEdec
    DarlingSmile
    FIGHTinc
    Rage
    SPEEDdec
    Confused
    CriedOut
    Sowed
    EXPinc
    Started                 ; $30
    TankBroken
    Uttered
    DirtyWords
    Grins
    Believed
    WasntConvinced
    MadeAngry
    Critical
    Senses
    SoConfused
    PutSleep
    IsAsleep
    RecoverPP
    RecoverHP
    Energy
    HoweverNoOne            ; $40
    Silence
    Joined
    RanAway
    DidntWork
    Tripped
    CantMove
    Turned
    Snatched
    CannotMove
    Puffed
    WasPoisoned
    Dehydrated
    Blocked
    WasBound
    Shielded
    Miss                    ; $50
    PSIBlocked
    Bounced
    BouncedBack
    NotenoughPPs
    WasNoEffect
    Wheeze
    Meditating
    Said
    Ready
    Sang
    IsGuarding
    Approached
    Dissipated
    Regained
    Itchy
    CanMove                 ; $60
    WakeUp
    Brought
    USEd
    Ttried
    CcantUse
    Circumstances
    SomethingStrange
    DayDreaming
    Destroyed
    CHECKed
    AgainstFire
    AgainstFreeze
    AgainstThunder
    AgainstBeam
    WeakSprays
    AsthmaAttackPass        ; $70
    RecoveredStone
    ILoveYou
    IHateYou
    AsthmaAttack
    WasBroken
    WickedSeed
    Gas
    TurnedIntoStone
    RegainedSenses
    Quiet
    Beaten
    WasDestroyed
    Dust
    DidntMove
    PileJunk
    Vanished                ; $80
    TookAway
    Advanced
    NewPSIPower
    MaximumHPinc
    MaximumPPinc
    FIGHTInc
    SPEEDInc
    WISDOMinc
    STRENGTHinc
    FORCEinc
    EscapedRope
    PickedUp
    WasntConfused
    WokeUp
    ZAP
    ItNoEffect              ; $90
    BecameEmpty
    Lingers
    Defeat
    Improved
    Huge
    Grateful
    YourGreat
    GeorgeStole
    Descendants
    GoHomeNow
    Foolish
    YouAlone
    FallSleep
    StopSinging
    STOPSinging
    STOP                    ; $A0
    STOPIT
    Puny
    TheSONG
    STOPIt
    Exclamation
    Stop
    Acclamation
    Points
    BeDefeated
    IWill
    MeetAgain
.endenum

Stack               = $0100
OAM_Cache           = $0200

Screen0             = $6000
Screen1             = $6100
AttributeScreen0    = $6200
AttributeScreen1    = $6300
ActiveObject0       = $6400
ActiveObject1       = $6500
AttributeCopy       = $6600

Frames              = $6700
;$6704
Counter             = $6707
;$670A
InfoCharacter       = $6710

Characters          = $6780

Objects             = $6800
