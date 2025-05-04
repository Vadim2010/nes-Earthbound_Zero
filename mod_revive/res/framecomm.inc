;--------------------------------------------------------
;                    FRAME NAMES
;--------------------------------------------------------
BATTLE_LOG      = 0
STATISTIC       = 1
BATTLE_MENU1    = 2
CLEAR2          = 3
EMPTY_STRING    = 4
STRU_8CC8       = 5
STRU_8CD0       = 6
CLEAR1          = 7
STRU_8CE0       = 8
EMPTY_STRING2   = 9
NAME            = 10
SELECT_TARGET   = 11
TARGET_NAME     = 12
FR_CURSOR       = 13
BIG_SELECT      = 14
LIST            = 15
CANT_NOW1       = 16
CANT_NOW        = 17
FR_ARROW        = 18
BATTLE_MENU2    = 19
CANT            = 20

;--------------------------------------------------------
;                     ROW COMMANDS
;--------------------------------------------------------
.macro down Column, Row
    .byte 1, Column, Row
.endmacro

.macro up Column, Row
    .byte $FF, Column, Row
.endmacro

.macro line Offset
    .byte $FE, 1
    .word Offset
.endmacro

.macro lines Number, Offset
    .byte $FD, Number
    .word Offset
.endmacro

.macro next Number, Offset
    .byte Number
    .word Offset
.endmacro

.macro end_mark
    .byte $FF
.endmacro

;--------------------------------------------------------
;                   COLUMN COMMANDS
;--------------------------------------------------------
.macro end_frame
    .byte 0
.endmacro

.macro end_row
    .byte 1
.endmacro

.macro frame_offset Offset
    .byte 4
    .word Offset
.endmacro

.macro tile_position Column, Row
    .byte $20, Column, Row
.endmacro

.macro tile_pointer Offset
    .byte $21
    .word Offset
.endmacro

.macro fill Symbol, Number
    .byte $22, Symbol, Number
.endmacro

.macro convert Offset, Index, Size
    .byte $23
    .word Offset
    .byte Index, Size
.endmacro

.macro left
    .byte $24
.endmacro

.macro right
    .byte $25
.endmacro
