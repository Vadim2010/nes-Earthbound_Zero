;--------------------------------------------------------
;                           VIEW
;--------------------------------------------------------
UP      = 0
RIGHT   = 2
DOWN    = 4
LEFT    = 6

;--------------------------------------------------------
;                       OBJECT TYPES
;--------------------------------------------------------
DOOR    = 1
STAIRS  = 3
HOLE    = 4


.macro entrance Type, CoorXIn, CoorYIn, ViewIn, Music, CoorXOut, CoorYOut, ViewOut
    .word CoorXIn|Type, CoorYIn|ViewIn, CoorXOut|Music, CoorYOut|ViewOut
.endmacro
