.struct OAM_TILE
    PosY            .byte
    TileID          .byte
    Attr            .byte
    PosX            .byte
.endstruct

.struct CHARACTER
    field_0         .byte
    msg_list        .byte 15
    Level           .byte
    Exp             .byte
    field_12        .byte
    field_13        .byte
    Health          .byte
    field_15        .byte
    PP              .byte
    field_17        .byte
    field_18        .byte
    field_19        .byte
    field_1A        .byte
    field_1B        .byte
    field_1C        .byte
    field_1D        .byte
    field_1E        .byte
    field_1F        .byte
    field_20        .byte 16
    field_30        .byte
    field_31        .byte 7
    Name            .byte 8
.endstruct

.struct PURE_SAVE
    field_0         .byte
    field_1         .byte
    GameNumber      .byte
    Active          .byte
    GlobalX         .word
    GlobalY         .word
    CharactersNum   .byte 4
    field_C         .byte
    field_D         .byte
    field_E         .byte
    field_F         .byte
    cash            .word
    field_12        .word
    field_14        .byte
    field_15        .byte
    field_16        .byte
    field_17        .byte
    field_18        .byte
    field_19        .byte
    field_1A        .byte 5
    field_1F        .byte
    field_20        .byte 16
    field_30        .byte
    field_31        .byte
    field_32        .byte 10
    field_3C        .byte 3
    field_3F        .byte
    Characters      .tag CHARACTER 4
    field_140       .byte 56
    field_178       .byte 136
.endstruct

.struct GAME_SAVE
    PureSave        .tag PURE_SAVE
    field_200       .byte 20
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
    field_220       .byte 64
    field_260       .byte 32
    field_280       .byte
    field_281       .byte 7
    field_288       .byte
    Food            .byte 7
    field_290       .byte 32
    field_2B0       .byte 32
    field_2D0       .byte 48
.endstruct

.segment "PRGRAM"

.org $7400
CurrentGame:        .tag GAME_SAVE
Game1:              .tag GAME_SAVE
Game2:              .tag GAME_SAVE
Game3:              .tag GAME_SAVE