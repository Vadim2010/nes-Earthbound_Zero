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
    field_4         .byte
    field_5         .byte
    pFrame          .word
.endstruct

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
    field_1         .byte
    field_2         .byte
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
    field_1E        .byte
    field_1F        .byte
    Goods           .res 8
    Items           .res 4
    field_2C        .res 4
    field_30        .byte
    field_31        .res 7
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
    field_200       .res 20
    field_214       .byte
    field_215       .byte
    field_216       .byte
    field_217       .byte
    field_218       .byte
    field_219       .byte
    field_21A       .byte
    field_21B       .byte
    field_21C       .byte
    field_21D       .byte
    field_21E       .byte
    field_21F       .byte
    field_220       .res 64
    field_260       .res 32
    field_280       .byte
    field_281       .res 7
    field_288       .byte
    Food            .res 7
    field_290       .res 32
    field_2B0       .res 32
    field_2D0       .res 48
.endstruct

;offsets ??? into dialogs
;$0058
;$0059
;$005A
;$005B
;$005C
;$005D

Stack               = $0100
OAM_Cache           = $0200

Screen0             = $6000
Screen1             = $6100
AttributeScreen0    = $6200
AttributeScreen1    = $6300
AttributeScreen2    = $6400
AttributeScreen3    = $6500
AttributeCopy       = $6600

Frames              = $6700
;$6704
Counter             = $6707
;$670A
InfoCharacter       = $6710

Buffer              = $6780

byte_6800           = $6800
