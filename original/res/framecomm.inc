;--------------------------------------------------------
;                    FRAME COMMANDS
;--------------------------------------------------------

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
