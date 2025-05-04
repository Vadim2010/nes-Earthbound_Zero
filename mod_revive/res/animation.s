.segment "BANK_5"

; ===========================================================================

;.segment BANK15
;* =  $8000

; ATTRIBUTE
VERTICAL_FLIP       = 1 << 7
HORIZONTAL_FLIP     = 1 << 6
BACKGROUND          = 1 << 5
FOREGROUND          = 0 << 5
TILE_OFFSET         = 1 << 4

TRANSPARENT         = $00
COLOR_1             = $01
COLOR_2             = $02
COLOR_3             = $03

.macro frame pSprite, TileID, field_3
    .word pSprite
    .byte TileID, field_3
.endmacro

.export AnimBoy1, AnimGirl, AnimBoy2, AnimBoy3

AnimBoy1:
    frame MoveUp, 0, $1D
    frame MoveUpRight, 0, $1D
    frame MoveRight, 0, $1D
    frame MoveDownRight, 0, $1D
    frame MoveDown, 0, $1D
    frame MoveDownLeft, 0, $1D
    frame MoveLeft, 0, $1D
    frame MoveUpLeft, 0, $1D

AnimGirl:
    frame MoveUp, $40, $1A
    frame MoveUpRight, $40, $1A
    frame MoveRight, $40, $1A
    frame MoveDownRight, $40, $1A
    frame MoveDown, $40, $1A
    frame MoveDownLeft, $40, $1A
    frame MoveLeft, $40, $1A
    frame MoveUpLeft, $40, $1A

AnimBoy2:
    frame MoveUp1, $20, $15
    frame MoveUpRight1, $20, $15
    frame MoveRight1, $20, $15
    frame MoveDownRight1, $20, $15
    frame MoveDown1, $20, $15
    frame MoveDownLeft1, $20, $15
    frame MoveLeft1, $20, $15
    frame MoveUpLeft1, $20, $15

AnimBoy3:
    frame MoveUp2, $60, $15
    frame MoveUpRight2, $60, $15
    frame MoveRight2, $60, $15
    frame MoveDownRight2, $60, $15
    frame MoveDown2, $60, $15
    frame MoveDownLeft2, $60, $15
    frame MoveLeft2, $60, $15
    frame MoveUpLeft2, $60, $15


    frame MoveUp, 8, $19
    frame MoveUpRight, 8, $19
    frame MoveRight, 8, $19
    frame MoveDownRight, 8, $19
    frame MoveDown, 8, $19
    frame MoveDownLeft, 8, $19
    frame MoveLeft, 8, $19
    frame MoveUpLeft, 8, $19

    frame stru_15934C, 0, 0
    frame stru_15935C, 0, 0
    frame stru_15936C, 0, 0
    frame stru_15937C, 0, 0
    frame stru_15938C, 0, 0
    frame stru_15939C, 0, 0
    frame stru_1593AC, 0, 0
    frame stru_1593BC, 0, 0
    frame stru_1593CC, 0, 0
    frame stru_1593DC, 0, 0
    frame stru_1593EC, 0, 0
    frame stru_1593FC, 0, 0
    frame stru_15940C, 0, 0
    frame stru_15941C, 0, 0
    frame stru_15942C, 0, 0
    frame stru_15943C, 0, 0
    frame stru_15944C, 0, 0
    frame stru_15945C, 0, 0
    frame stru_15946C, 0, 0
    frame stru_15947C, 0, 0
    frame stru_15948C, 0, 0
    frame stru_15949C, 0, 0
    frame stru_1594AC, 0, 0
    frame stru_1594BC, 0, 0
    frame stru_1594CC, 0, 0
    frame stru_1594DC, 0, 0
    frame stru_1594EC, 0, 0
    frame stru_1594FC, 0, 0
    frame stru_15950C, 0, 0
    frame stru_15951C, 0, 0
    frame stru_15952C, 0, 0
    frame stru_15953C, 0, 0
    frame stru_15954C, 0, 0
    frame stru_15955C, 0, 0
    frame stru_15956C, 0, 0
    frame stru_15957C, 0, 0
    frame stru_15958C, 0, 0
    frame stru_15959C, 0, 0
    frame stru_1595AC, 0, 0
    frame stru_1595BC, 0, 0

    frame MoveUp, $A0, 9
    frame MoveUpRight, $A0, 9
    frame MoveRight, $A0, 9
    frame MoveDownRight, $A0, 9
    frame MoveDown, $A0, 9
    frame MoveDownLeft, $A0, 9
    frame MoveLeft, $A0, 9
    frame MoveUpLeft, $A0, 9

    frame stru_159324, $80, 5
    frame stru_159324, $82, 5
    frame stru_159324, $84, 5
    frame stru_159324, $86, 5
    frame stru_159324, $88, 5
    frame stru_159324, $8A, 5
    frame stru_159324, $8C, 5
    frame stru_159324, $8E, 5
    frame stru_158EAC, $68, 0
    frame stru_158EAC, $68, 0
    frame stru_158EAC, $6A, 5
    frame stru_158EAC, $6C, 5
    frame stru_158EAC, $6C, 0
    frame stru_158EAC, $6E, 5
    frame stru_158EDC, $3C, 5
    frame stru_158EE4, $3C, 5
    frame stru_158EEC, $3E, 0
    frame stru_158EF4, $3E, 0

    frame MoveUp, $80, $F
    frame MoveUpRight, $80, $F
    frame MoveRight, $80, $F
    frame MoveDownRight, $80, $F
    frame MoveDown, $80, $F
    frame MoveDownLeft, $80, $F
    frame MoveLeft, $80, $F
    frame MoveUpLeft, $80, $F

    frame MoveUp, $A0, $F
    frame MoveUpRight, $A0, $F
    frame MoveRight, $A0, $F
    frame MoveDownRight, $A0, $F
    frame MoveDown, $A0, $F
    frame MoveDownLeft, $A0, $F
    frame MoveLeft, $A0, $F
    frame MoveUpLeft, $A0, $F

    frame MoveUp1, $C0, 5
    frame MoveUpRight1, $C0, 5
    frame MoveRight1, $C0, 5
    frame MoveDownRight1, $C0, 5
    frame MoveDown1, $C0, 5
    frame MoveDownLeft1, $C0, 5
    frame MoveLeft1, $C0, 5
    frame MoveUpLeft1, $C0, 5
    frame MoveUp1, $E0, 9
    frame MoveUpRight1, $E0, 9
    frame MoveRight1, $E0, 9
    frame MoveDownRight1, $E0, 9
    frame MoveDown1, $E0, 9
    frame MoveDownLeft1, $E0, 9
    frame MoveLeft1, $E0, 9
    frame MoveUpLeft1, $E0, 9

    frame MoveUp, $88, $F
    frame MoveUpRight, $88, $F
    frame MoveRight, $88, $F
    frame MoveDownRight, $88, $F
    frame MoveDown, $88, $F
    frame MoveDownLeft, $88, $F
    frame MoveLeft, $88, $F
    frame MoveUpLeft, $88, $F

    frame MoveUp, $A8, 9
    frame MoveUpRight, $A8, 9
    frame MoveRight, $A8, 9
    frame MoveDownRight, $A8, 9
    frame MoveDown, $A8, 9
    frame MoveDownLeft, $A8, 9
    frame MoveLeft, $A8, 9
    frame MoveUpLeft, $A8, 9

    frame MoveUp, $C8, 5
    frame MoveUpRight, $C8, 5
    frame MoveRight, $C8, 5
    frame MoveDownRight, $C8, 5
    frame MoveDown, $C8, 5
    frame MoveDownLeft, $C8, 5
    frame MoveLeft, $C8, 5
    frame MoveUpLeft, $C8, 5

    frame MoveUp, $E8, 5
    frame MoveUpRight, $E8, 5
    frame MoveRight, $E8, 5
    frame MoveDownRight, $E8, 5
    frame MoveDown, $E8, 5
    frame MoveDownLeft, $E8, 5
    frame MoveLeft, $E8, 5
    frame MoveUpLeft, $E8, 5

    frame stru_158C5C, $80, 5
    frame stru_158C6C, $80, 5
    frame stru_158C7C, $80, 5
    frame stru_158C8C, $80, 5
    frame stru_158C9C, $80, 5
    frame stru_158CAC, $80, 5
    frame stru_158CBC, $80, 5
    frame stru_158CCC, $80, 5
    frame stru_158CDC, $80, $F
    frame stru_158CEC, $80, $F
    frame stru_158CFC, $80, $F
    frame stru_158D0C, $80, $F
    frame stru_158D1C, $80, $F
    frame stru_158D2C, $80, $F
    frame stru_158D3C, $80, $F
    frame stru_158D4C, $80, $F
    frame stru_158D5C, $80, 5
    frame stru_158D6C, $80, 5
    frame stru_158D7C, $80, 5
    frame stru_158D8C, $80, 5
    frame stru_158D9C, $80, 5
    frame stru_158DAC, $80, 5
    frame stru_158DBC, $80, 5
    frame stru_158DCC, $80, 5

    frame MoveUp, $80, $D
    frame MoveUpRight, $80, $D
    frame MoveRight, $80, $D
    frame MoveDownRight, $80, $D
    frame MoveDown, $80, $D
    frame MoveDownLeft, $80, $D
    frame MoveLeft, $80, $D
    frame MoveUpLeft, $80, $D

    frame MoveUp, $A0, 6
    frame MoveUpRight, $A0, 6
    frame MoveRight, $A0, 6
    frame MoveDownRight, $A0, 6
    frame MoveDown, $A0, 6
    frame MoveDownLeft, $A0, 6
    frame MoveLeft, $A0, 6
    frame MoveUpLeft, $A0, 6

    frame MoveUp, $C0, $F
    frame MoveUpRight, $C0, $F
    frame MoveRight, $C0, $F
    frame MoveDownRight, $C0, $F
    frame MoveDown, $C0, $F
    frame MoveDownLeft, $C0, $F
    frame MoveLeft, $C0, $F
    frame MoveUpLeft, $C0, $F

    frame MoveUp1, $E0, $F
    frame MoveUpRight1, $E0, $F
    frame MoveRight1, $E0, $F
    frame MoveDownRight1, $E0, $F
    frame MoveDown1, $E0, $F
    frame MoveDownLeft1, $E0, $F
    frame MoveLeft1, $E0, $F
    frame MoveUpLeft1, $E0, $F

    frame MoveUp, $88, 5
    frame MoveUpRight, $88, 5
    frame MoveRight, $88, 5
    frame MoveDownRight, $88, 5
    frame MoveDown, $88, 5
    frame MoveDownLeft, $88, 5
    frame MoveLeft, $88, 5
    frame MoveUpLeft, $88, 5

    frame MoveUp, $A8, 9
    frame MoveUpRight, $A8, 9
    frame MoveRight, $A8, 9
    frame MoveDownRight, $A8, 9
    frame MoveDown, $A8, 9
    frame MoveDownLeft, $A8, 9
    frame MoveLeft, $A8, 9
    frame MoveUpLeft, $A8, 9

    frame MoveUp, $C8, $A
    frame MoveUpRight, $C8, $A
    frame MoveRight, $C8, $A
    frame MoveDownRight, $C8, $A
    frame MoveDown, $C8, $A
    frame MoveDownLeft, $C8, $A
    frame MoveLeft, $C8, $A
    frame MoveUpLeft, $C8, $A

    frame MoveUp1, $E8, $F
    frame MoveUpRight1, $E8, $F
    frame MoveRight1, $E8, $F
    frame MoveDownRight1, $E8, $F
    frame MoveDown1, $E8, $F
    frame MoveDownLeft1, $E8, $F
    frame MoveLeft1, $E8, $F
    frame MoveUpLeft1, $E8, $F
    frame stru_158C5C, $80, $F
    frame stru_158C6C, $80, $F
    frame stru_158C7C, $80, $F
    frame stru_158C8C, $80, $F
    frame stru_158C9C, $80, $F
    frame stru_158CAC, $80, $F
    frame stru_158CBC, $80, $F
    frame stru_158CCC, $80, $F
    frame stru_158CDC, $80, 7
    frame stru_158CEC, $80, 7
    frame stru_158CFC, $80, 7
    frame stru_158D0C, $80, 7
    frame stru_158D1C, $80, 7
    frame stru_158D2C, $80, 7
    frame stru_158D3C, $80, 7
    frame stru_158D4C, $80, 7
    frame stru_158D5C, $80, $F
    frame stru_158D6C, $80, $F
    frame stru_158D7C, $80, $F
    frame stru_158D8C, $80, $F
    frame stru_158D9C, $80, $F
    frame stru_158DAC, $80, $F
    frame stru_158DBC, $80, $F
    frame stru_158DCC, $80, $F
    frame MoveUp1, $80, $A
    frame MoveUpRight1, $80, $A
    frame MoveRight1, $80, $A
    frame MoveDownRight1, $80, $A
    frame MoveDown1, $80, $A
    frame MoveDownLeft1, $80, $A
    frame MoveLeft1, $80, $A
    frame MoveUpLeft1, $80, $A

    frame MoveUp, $A0, 5
    frame MoveUpRight, $A0, 5
    frame MoveRight, $A0, 5
    frame MoveDownRight, $A0, 5
    frame MoveDown, $A0, 5
    frame MoveDownLeft, $A0, 5
    frame MoveLeft, $A0, 5
    frame MoveUpLeft, $A0, 5

    frame MoveUp, $C0, $F
    frame MoveUpRight, $C0, $F
    frame MoveRight, $C0, $F
    frame MoveDownRight, $C0, $F
    frame MoveDown, $C0, $F
    frame MoveDownLeft, $C0, $F
    frame MoveLeft, $C0, $F
    frame MoveUpLeft, $C0, $F

    frame MoveUp, $88, $F
    frame MoveUpRight, $88, $F
    frame MoveRight, $88, $F
    frame MoveDownRight, $88, $F
    frame MoveDown, $88, $F
    frame MoveDownLeft, $88, $F
    frame MoveLeft, $88, $F
    frame MoveUpLeft, $88, $F

    frame MoveUp, $A8, $F
    frame MoveUpRight, $A8, $F
    frame MoveRight, $A8, $F
    frame MoveDownRight, $A8, $F
    frame MoveDown, $A8, $F
    frame MoveDownLeft, $A8, $F
    frame MoveLeft, $A8, $F
    frame MoveUpLeft, $A8, $F

    frame stru_158ECC, $A8, 5
    frame MoveUp1, $E0, $1A
    frame MoveUpRight1, $E0, $1A
    frame MoveRight1, $E0, $1A
    frame MoveDownRight1, $E0, $1A
    frame MoveDown1, $E0, $1A
    frame MoveDownLeft1, $E0, $1A
    frame MoveLeft1, $E0, $1A
    frame MoveUpLeft1, $E0, $1A
    frame MoveUp1, $C8, $F
    frame MoveUpRight1, $C8, $F
    frame MoveRight1, $C8, $F
    frame MoveDownRight1, $C8, $F
    frame MoveDown1, $C8, $F
    frame MoveDownLeft1, $C8, $F
    frame MoveLeft1, $C8, $F
    frame MoveUpLeft1, $C8, $F
    frame stru_158EAC, $EC, $15
    frame stru_1592DC, $E8, $F
    frame stru_1592EC, $E8, $F
    frame stru_158EAC, $EA, 0
    frame stru_158EAC, $EA, 0
    frame stru_158EAC, $EE, 0
    frame stru_158ECC, $C0, 0

    frame MoveUp, $80, 0
    frame MoveUpRight, $80, 0
    frame MoveRight, $80, 0
    frame MoveDownRight, $80, 0
    frame MoveDown, $80, 0
    frame MoveDownLeft, $80, 0
    frame MoveLeft, $80, 0
    frame MoveUpLeft, $80, 0

    frame MoveUp1, $A0, 5
    frame MoveUpRight1, $A0, 5
    frame MoveRight1, $A0, 5
    frame MoveDownRight1, $A0, 5
    frame MoveDown1, $A0, 5
    frame MoveDownLeft1, $A0, 5
    frame MoveLeft1, $A0, 5
    frame MoveUpLeft1, $A0, 5

    frame MoveUp, $C0, $A
    frame MoveUpRight, $C0, $A
    frame MoveRight, $C0, $A
    frame MoveDownRight, $C0, $A
    frame MoveDown, $C0, $A
    frame MoveDownLeft, $C0, $A
    frame MoveLeft, $C0, $A
    frame MoveUpLeft, $C0, $A

    frame MoveUp, $E0, 6
    frame MoveUpRight, $E0, 6
    frame MoveRight, $E0, 6
    frame MoveDownRight, $E0, 6
    frame MoveDown, $E0, 6
    frame MoveDownLeft, $E0, 6
    frame MoveLeft, $E0, 6
    frame MoveUpLeft, $E0, 6

    frame stru_158F9C, $88, 0

    frame MoveUp, $A8, 0
    frame MoveUpRight, $A8, 0
    frame MoveRight, $A8, 0
    frame MoveDownRight, $A8, 0
    frame MoveDown, $A8, 0
    frame MoveDownLeft, $A8, 0
    frame MoveLeft, $A8, 0
    frame MoveUpLeft, $A8, 0

    frame MoveUp, $C8, $F
    frame MoveUpRight, $C8, $F
    frame MoveRight, $C8, $F
    frame MoveDownRight, $C8, $F
    frame MoveDown, $C8, $F
    frame MoveDownLeft, $C8, $F
    frame MoveLeft, $C8, $F
    frame MoveUpLeft, $C8, $F

    frame MoveUp, $E8, $A
    frame MoveUpRight, $E8, $A
    frame MoveRight, $E8, $A
    frame MoveDownRight, $E8, $A
    frame MoveDown, $E8, $A
    frame MoveDownLeft, $E8, $A
    frame MoveLeft, $E8, $A
    frame MoveUpLeft, $E8, $A

    frame stru_158E5C, $80, 0
    frame stru_158E64, $80, 0
    frame stru_158E6C, $80, 0
    frame stru_158E74, $80, 0
    frame stru_158E7C, $80, 0
    frame stru_158E84, $80, 0
    frame stru_158E8C, $80, 0
    frame stru_158E94, $80, 0
    frame stru_158ECC, $C0, $F
    frame stru_158ECC, $A8, 0

AnimLamp:
    frame stru_158EAC, $8E, $F
    frame stru_158EAC, $8E, $F

    frame MoveUp, $E8, 5
    frame MoveUpRight, $E8, 5
    frame MoveRight, $E8, 5
    frame MoveDownRight, $E8, 5
    frame MoveDown, $E8, 5
    frame MoveDownLeft, $E8, 5
    frame MoveLeft, $E8, 5
    frame MoveUpLeft, $E8, 5

    frame MoveUp1, $80, $F
    frame MoveUpRight1, $80, $F
    frame MoveRight1, $80, $F
    frame MoveDownRight1, $80, $F
    frame MoveDown1, $80, $F
    frame MoveDownLeft1, $80, $F
    frame MoveLeft1, $80, $F
    frame MoveUpLeft1, $80, $F

    frame MoveUp, $A8, 5
    frame MoveUpRight, $A8, 5
    frame MoveRight, $A8, 5
    frame MoveDownRight, $A8, 5
    frame MoveDown, $A8, 5
    frame MoveDownLeft, $A8, 5
    frame MoveLeft, $A8, 5
    frame MoveUpLeft, $A8, 5

    frame MoveUp, $A0, 5
    frame MoveUpRight, $A0, 5
    frame MoveRight, $A0, 5
    frame MoveDownRight, $A0, 5
    frame MoveDown, $A0, 5
    frame MoveDownLeft, $A0, 5
    frame MoveLeft, $A0, 5
    frame MoveUpLeft, $A0, 5

    frame MoveUp, $88, 5
    frame MoveUpRight, $88, 5
    frame MoveRight, $88, 5
    frame MoveDownRight, $88, 5
    frame MoveDown, $88, 5
    frame MoveDownLeft, $88, 5
    frame MoveLeft, $88, 5
    frame MoveUpLeft, $88, 5

    frame MoveUp, $C8, $F
    frame MoveUpRight, $C8, $F
    frame MoveRight, $C8, $F
    frame MoveDownRight, $C8, $F
    frame MoveDown, $C8, $F
    frame MoveDownLeft, $C8, $F
    frame MoveLeft, $C8, $F
    frame MoveUpLeft, $C8, $F

    frame MoveUp, $E0, $A
    frame MoveUpRight, $E0, $A
    frame MoveRight, $E0, $A
    frame MoveDownRight, $E0, $A
    frame MoveDown, $E0, $A
    frame MoveDownLeft, $E0, $A
    frame MoveLeft, $E0, $A
    frame MoveUpLeft, $E0, $A

    frame MoveUp, $C0, 5
    frame MoveUpRight, $C0, 5
    frame MoveRight, $C0, 5
    frame MoveDownRight, $C0, 5
    frame MoveDown, $C0, 5
    frame MoveDownLeft, $C0, 5
    frame MoveLeft, $C0, 5
    frame MoveUpLeft, $C0, 5

    frame stru_158F7C, $80, $66
    frame stru_158F7C, $80, $66
    frame stru_158C5C, $80, 5
    frame stru_158C6C, $80, 5
    frame stru_158C7C, $80, 5
    frame stru_158C8C, $80, 5
    frame stru_158C9C, $80, 5
    frame stru_158CAC, $80, 5
    frame stru_158CBC, $80, 5
    frame stru_158CCC, $80, 5

    frame MoveUp, $80, $F
    frame MoveUpRight, $80, $F
    frame MoveRight, $80, $F
    frame MoveDownRight, $80, $F
    frame MoveDown, $80, $F
    frame MoveDownLeft, $80, $F
    frame MoveLeft, $80, $F
    frame MoveUpLeft, $80, $F

    frame MoveUp1, $C0, 5
    frame MoveUpRight1, $C0, 5
    frame MoveRight1, $C0, 5
    frame MoveDownRight1, $C0, 5
    frame MoveDown1, $C0, 5
    frame MoveDownLeft1, $C0, 5
    frame MoveLeft1, $C0, 5
    frame MoveUpLeft1, $C0, 5

    frame MoveUp, $E0, $A
    frame MoveUpRight, $E0, $A
    frame MoveRight, $E0, $A
    frame MoveDownRight, $E0, $A
    frame MoveDown, $E0, $A
    frame MoveDownLeft, $E0, $A
    frame MoveLeft, $E0, $A
    frame MoveUpLeft, $E0, $A

    frame MoveUp, $88, 5
    frame MoveUpRight, $88, 5
    frame MoveRight, $88, 5
    frame MoveDownRight, $88, 5
    frame MoveDown, $88, 5
    frame MoveDownLeft, $88, 5
    frame MoveLeft, $88, 5
    frame MoveUpLeft, $88, 5

    frame MoveUp1, $A8, $A
    frame MoveUpRight1, $A8, $A
    frame MoveRight1, $A8, $A
    frame MoveDownRight1, $A8, $A
    frame MoveDown1, $A8, $A
    frame MoveDownLeft1, $A8, $A
    frame MoveLeft1, $A8, $A
    frame MoveUpLeft1, $A8, $A

    frame MoveUp, $C8, 0
    frame MoveUpRight, $C8, 0
    frame MoveRight, $C8, 0
    frame MoveDownRight, $C8, 0
    frame MoveDown, $C8, 0
    frame MoveDownLeft, $C8, 0
    frame MoveLeft, $C8, 0
    frame MoveUpLeft, $C8, 0

    frame stru_1592DC, $E8, $F
    frame stru_158EAC, $EA, 0
    frame stru_1592DC, $EC, 0
    frame stru_158EAC, $EE, 0
    frame stru_158EAC, $EE, 0
    frame stru_158E5C, $80, 0
    frame stru_158E64, $80, 0
    frame stru_158E6C, $80, 0
    frame stru_158E74, $80, 0
    frame stru_158E7C, $80, 0
    frame stru_158E84, $80, 0
    frame stru_158E8C, $80, 0
    frame stru_158E94, $80, 0
    frame stru_158ECC, $C0, $AA
    frame stru_158ECC, $A8, 0

    frame MoveUp, $80, $D
    frame MoveUpRight, $80, $D
    frame MoveRight, $80, $D
    frame MoveDownRight, $80, $D
    frame MoveDown, $80, $D
    frame MoveDownLeft, $80, $D
    frame MoveLeft, $80, $D
    frame MoveUpLeft, $80, $D

    frame MoveUp, $88, $A
    frame MoveUpRight, $88, $A
    frame MoveRight, $88, $A
    frame MoveDownRight, $88, $A
    frame MoveDown, $88, $A
    frame MoveDownLeft, $88, $A
    frame MoveLeft, $88, $A
    frame MoveUpLeft, $88, $A

    frame MoveUp, $A8, $F
    frame MoveUpRight, $A8, $F
    frame MoveRight, $A8, $F
    frame MoveDownRight, $A8, $F
    frame MoveDown, $A8, $F
    frame MoveDownLeft, $A8, $F
    frame MoveLeft, $A8, $F
    frame MoveUpLeft, $A8, $F

    frame MoveUp, $80, 5
    frame MoveUpRight, $80, 5
    frame MoveRight, $80, 5
    frame MoveDownRight, $80, 5
    frame MoveDown, $80, 5
    frame MoveDownLeft, $80, 5
    frame MoveLeft, $80, 5
    frame MoveUpLeft, $80, 5

    frame MoveUp, $C0, $A
    frame MoveUpRight, $C0, $A
    frame MoveRight, $C0, $A
    frame MoveDownRight, $C0, $A
    frame MoveDown, $C0, $A
    frame MoveDownLeft, $C0, $A
    frame MoveLeft, $C0, $A
    frame MoveUpLeft, $C0, $A

    frame stru_158EAC, $88, $F

    frame MoveUp, $A8, $F
    frame MoveUpRight, $A8, $F
    frame MoveRight, $A8, $F
    frame MoveDownRight, $A8, $F
    frame MoveDown, $A8, $F
    frame MoveDownLeft, $A8, $F
    frame MoveLeft, $A8, $F
    frame MoveUpLeft, $A8, $F

    frame MoveUp, $C8, $F
    frame MoveUpRight, $C8, $F
    frame MoveRight, $C8, $F
    frame MoveDownRight, $C8, $F
    frame MoveDown, $C8, $F
    frame MoveDownLeft, $C8, $F
    frame MoveLeft, $C8, $F
    frame MoveUpLeft, $C8, $F

    frame stru_158EAC, $E8, 0
    frame stru_158EAC, $EA, 0
    frame stru_158E9C, 0, 5
    frame stru_158E9C, 0, 5
    frame stru_158F3C, 0, 5
    frame stru_158F3C, 0, 5
    frame stru_158F5C, 0, 5
    frame stru_158F6C, 0, 5
    frame stru_158EFC, $E0, 5
    frame stru_158EFC, $E0, 5
    frame stru_158F0C, $E0, 5
    frame stru_158F0C, $E0, 5
    frame stru_158F1C, $E0, 5
    frame stru_158F1C, $E0, 5
    frame stru_158F2C, $E0, 5
    frame stru_158F2C, $E0, 5
    frame stru_158ECC, $A8, 0
    frame stru_158EAC, $EC, 5
    frame stru_158EAC, $EE, 5
    frame stru_158EAC, $8A, $F
    frame stru_158EAC, $8C, 5
    frame stru_158EAC, $8E, $F

    frame MoveUp, $C8, $A
    frame MoveUpRight, $C8, $A
    frame MoveRight, $C8, $A
    frame MoveDownRight, $C8, $A
    frame MoveDown, $C8, $A
    frame MoveDownLeft, $C8, $A
    frame MoveLeft, $C8, $A
    frame MoveUpLeft, $C8, $A

    frame MoveUp, $C8, 5
    frame MoveUpRight, $C8, 5
    frame MoveRight, $C8, 5
    frame MoveDownRight, $C8, 5
    frame MoveDown, $C8, 5
    frame MoveDownLeft, $C8, 5
    frame MoveLeft, $C8, 5
    frame MoveUpLeft, $C8, 5

    frame stru_158EAC, $8E, $A
    frame stru_158EAC, $8E, 5
    frame stru_158EAC, $8C, $F
    frame stru_158FC4, $80, 0
    frame stru_158FE8, $80, 0
    frame stru_158FC4, $80, 0
    frame stru_159054, $80, 0
    frame stru_159030, $80, 0
    frame stru_15900C, $80, 0
    frame stru_159030, $80, 0
    frame stru_159078, $80, 0
    frame stru_1592FC, $80, 5
    frame stru_1595CC, $80, 1
    frame stru_1595CC, $80, 1
    frame stru_1595F0, $80, 5
    frame stru_159600, $80, 5
    frame stru_159610, $80, 5
    frame stru_159620, $80, 5
    frame stru_159630, $80, 5
    frame stru_159640, $80, 5
    frame stru_159650, $80, 5
    frame stru_159660, $80, 5
    frame stru_1595F0, $80, 0
    frame stru_159600, $80, 0
    frame stru_159610, $80, 0
    frame stru_159620, $80, 0
    frame stru_159630, $80, 0
    frame stru_159640, $80, 0
    frame stru_159650, $80, 0
    frame stru_159660, $80, 0
    frame stru_1595F0, $80, $F
    frame stru_159600, $80, $F
    frame stru_159610, $80, $F
    frame stru_159620, $80, $F
    frame stru_159630, $80, $F
    frame stru_159640, $80, $F
    frame stru_159650, $80, $F
    frame stru_159660, $80, $F
    frame stru_159670, 0, 0
    frame stru_159670, 0, 0
    frame stru_159680, 0, 0
    frame stru_159680, 0, 0
    frame stru_159690, 0, 0
    frame stru_159690, 0, 0
    frame stru_1596A0, 0, 0
    frame stru_1596A0, 0, 0

    frame MoveUp, $88, 5
    frame MoveUpRight, $88, 5
    frame MoveRight, $88, 5
    frame MoveDownRight, $88, 5
    frame MoveDown, $88, 5
    frame MoveDownLeft, $88, 5
    frame MoveLeft, $88, 5
    frame MoveUpLeft, $88, 5

    frame stru_158EAC, $C6, $F
    frame stru_158EAC, $C6, $15
    frame stru_1591BC, $80, $55
    frame stru_1591E0, $80, $55
    frame stru_159204, $80, $55
    frame stru_159228, $80, $55
    frame stru_15924C, $80, $55
    frame stru_159270, $80, $55
    frame stru_159294, $80, $55
    frame stru_1592B8, $80, $55
    frame stru_15909C, $E0, 0
    frame stru_1590C0, $E0, 0
    frame stru_1590E4, $E0, 0
    frame stru_159108, $E0, 0
    frame stru_15912C, $E0, 0
    frame stru_159150, $E0, 0
    frame stru_159174, $E0, 0
    frame stru_159198, $E0, 0
    frame stru_15909C, $A0, $FF
    frame stru_1590C0, $A0, $FF
    frame stru_1590E4, $A0, $FF
    frame stru_159108, $A0, $FF
    frame stru_15912C, $A0, $FF
    frame stru_159150, $A0, $FF
    frame stru_159174, $A0, $FF
    frame stru_159198, $A0, $FF

MoveUp:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13
MoveUpRight:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4   ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5   ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12
MoveRight:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14
MoveDownRight:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16
MoveDown:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2           ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3           ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10             ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11             ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11
MoveDownLeft:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2           ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3           ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10
MoveLeft:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6           ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7           ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14             ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15             ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15
MoveUpLeft:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6           ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7           ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16             ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17             ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17
MoveUp1:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4           ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5           ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12             ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13             ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13
MoveUpRight1:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4           ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5           ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13  ; TILE <$F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13
    .byte $17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12 ; TILE <$17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12
MoveRight1:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14
MoveDownRight1:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16
MoveDown1:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11
MoveDownLeft1:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11  ; TILE <$F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11
    .byte $17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10
MoveLeft1:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14          ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15          ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15
MoveUpLeft1:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17
stru_158C5C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $28         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $28
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29
stru_158C6C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28
stru_158C7C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61 ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $69     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $69
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $68     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $68
stru_158C8C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61 ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60 ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48
stru_158C9C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 8           ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 8
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 9           ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 9
stru_158CAC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
stru_158CBC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $48         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $48
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $49         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $49
stru_158CCC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $68         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $68
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $69         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $69
stru_158CDC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13
stru_158CEC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13  ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12  ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12
stru_158CFC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14
stru_158D0C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16
stru_158D1C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11
stru_158D2C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10
stru_158D3C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15
stru_158D4C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17
stru_158D5C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13
stru_158D6C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12
stru_158D7C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14
stru_158D8C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16
stru_158D9C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11
stru_158DAC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10
stru_158DBC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15
stru_158DCC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17
MoveUp2:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15
MoveUpRight2:
    .byte $F, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3        ; TILE <$F, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3
    .byte $17, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2       ; TILE <$17, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2
    .byte $F, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15          ; TILE <$F, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15
    .byte $17, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14         ; TILE <$17, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14
MoveRight2:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16
MoveDownRight2:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7           ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6           ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6
MoveDown2:
    .byte $11, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$11, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $19, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$19, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $11, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$11, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $10
    .byte $19, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$19, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $11
MoveDownLeft2:
    .byte $F, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1    ; TILE <$F, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1
    .byte $17, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0   ; TILE <$17, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0
    .byte $F, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $12      ; TILE <$F, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $12
    .byte $17, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $13     ; TILE <$17, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $13
MoveLeft2:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17
MoveUpLeft2:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 6           ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 6
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 7           ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 7
stru_158E5C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
stru_158E64:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8   ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20 ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20
stru_158E6C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21 ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21
stru_158E74:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9   ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21 ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21
stru_158E7C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
stru_158E84:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8   ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1
stru_158E8C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9   ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
stru_158E94:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
stru_158E9C:
    .byte $14, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $81     ; TILE <$14, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $81
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_158EAC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $11, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$11, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $19, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$19, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $11, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$11, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $19, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$19, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
stru_158ECC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
stru_158EDC:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
stru_158EE4:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_158EEC:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0   ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0
stru_158EF4:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1
stru_158EFC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
stru_158F0C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13
stru_158F1C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15
stru_158F2C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17
stru_158F3C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1 ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1
    .byte $11, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0     ; TILE <$11, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0
    .byte $19, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0 ; TILE <$19, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0
    .byte $11, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1     ; TILE <$11, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1
    .byte $19, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1 ; TILE <$19, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1
stru_158F5C:
    .byte $14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A0     ; TILE <$14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A0
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_158F6C:
    .byte $14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A1     ; TILE <$14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A1
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_158F7C:
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6C           ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6C
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6E         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6E
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F         ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C           ; TILE <8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D         ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E         ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E
    .byte $20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F         ; TILE <$20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F
stru_158F9C:
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4             ; TILE <$10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5             ; TILE <$18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2           ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3           ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
stru_158FC4:
    .byte $10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A         ; TILE <$10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A
    .byte $18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B         ; TILE <$18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B
    .byte $20, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C         ; TILE <$20, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17         ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18         ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18
    .byte $20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19         ; TILE <$20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27         ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28         ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28
    .byte $20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29         ; TILE <$20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29
stru_158FE8:
    .byte 8, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C   ; TILE <8, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C
    .byte $10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B ; TILE <$10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B
    .byte $18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A ; TILE <$18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A
    .byte 8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19   ; TILE <8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18 ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17 ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte 8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29   ; TILE <8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28 ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27 ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27
stru_15900C:
    .byte 8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A       ; TILE <8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C
    .byte 8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17       ; TILE <8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18     ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19     ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19
    .byte 8, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $25       ; TILE <8, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $25
    .byte $10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $26     ; TILE <$10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $26
    .byte $18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29     ; TILE <$18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29
stru_159030:
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C     ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B     ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B
    .byte $20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A     ; TILE <$20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19     ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18     ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18
    .byte $20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17     ; TILE <$20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte $10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29     ; TILE <$10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29
    .byte $18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $26     ; TILE <$18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $26
    .byte $20, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $25     ; TILE <$20, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $25
stru_159054:
    .byte 8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A       ; TILE <8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D       ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D       ; TILE <8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
stru_159078:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B
    .byte $20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1A     ; TILE <$20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1A
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D     ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E
    .byte $20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D     ; TILE <$20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D
stru_15909C:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19 ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19
stru_1590C0:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B  ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B
stru_1590E4:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A       ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C      ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $B      ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $B
stru_159108:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A       ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D
stru_15912C:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13 ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13
stru_159150:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15  ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15
stru_159174:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F
stru_159198:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B       ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C      ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C
stru_1591BC:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F
stru_1591E0:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F
stru_159204:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50     ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $43     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $43
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $53     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $53
stru_159228:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50     ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $42     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $42
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $52     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $52
stru_15924C:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B
stru_159270:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B
stru_159294:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50      ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $43      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $43
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55
stru_1592B8:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50      ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $42      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $42
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55
stru_1592DC:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
stru_1592EC:
    .byte $10, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
stru_1592FC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13     ; TILE <$28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13
    .byte $30, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$30, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22     ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22
    .byte $28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23     ; TILE <$28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23
    .byte $30, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $24     ; TILE <$30, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $24
stru_159324:
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30       ; TILE <$10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31       ; TILE <$18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50     ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51     ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71
stru_15934C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C
stru_15935C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C
stru_15936C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E
stru_15937C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E
stru_15938C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B
stru_15939C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B
stru_1593AC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F
stru_1593BC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F
stru_1593CC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
stru_1593DC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
stru_1593EC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58
stru_1593FC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58
stru_15940C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40
stru_15941C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40
stru_15942C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
stru_15943C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
stru_15944C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
stru_15945C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
stru_15946C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58
stru_15947C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58
stru_15948C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40
stru_15949C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40
stru_1594AC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
stru_1594BC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
stru_1594CC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9
stru_1594DC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9
stru_1594EC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C
stru_1594FC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C
stru_15950C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
stru_15951C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
stru_15952C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D
stru_15953C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D
stru_15954C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
stru_15955C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F
stru_15956C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58
stru_15957C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58
stru_15958C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40
stru_15959C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40
stru_1595AC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
stru_1595BC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59
stru_1595CC:
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F
    .byte $C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D      ; TILE <$C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D
    .byte $14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E
    .byte $1C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$1C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
stru_1595F0:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159600:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159610:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159620:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159630:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159640:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159650:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159660:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
stru_159670:
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $86     ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $86
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85     ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $80         ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $80
stru_159680:
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|%11000000, $85       ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|11000000b, $85
    .byte $20, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85 ; TILE <$20, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85
stru_159690:
    .byte 8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85       ; TILE <8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86 ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85
stru_1596A0:
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85     ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85

.export EarthAnim
EarthAnim:
    frame EarthSprite, 4, 0
    frame EarthSprite, 8, 0
    frame EarthSprite, $C, 0
    frame EarthSprite, $40, 0
    frame EarthSprite, $44, 0
    frame EarthSprite, $48, 0
    frame EarthSprite, $4C, 0

EarthSprite:
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2     ; TILE <$10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3     ; TILE <$18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte 0, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <0, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte 8, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <8, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12   ; TILE <$10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13   ; TILE <$18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13
    .byte 0, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20   ; TILE <0, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte 8, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21   ; TILE <8, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22 ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23 ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23
    .byte 0, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30   ; TILE <0, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30
    .byte 8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31   ; TILE <8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $32 ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $32
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $33 ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $33


.export stru_15970C, stru_159710, stru_159714
stru_15970C:
    .word stru_159718
    .byte $6D, 0            ; frame stru_159718, $6D, 0

stru_159710:
    .word stru_159718
    .byte $6E, 0            ; frame stru_159718, $6E, 0

stru_159714:
    .word stru_159730
    .byte 0, 0              ; frame stru_159730, 0, 0

stru_159718:
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0       ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0       ; TILE <8, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$10, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$18, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0
    .byte $20, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$20, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0
    .byte $28, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$28, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0

stru_159730:
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F     ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D     ; TILE <8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E   ; TILE <$10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F   ; TILE <$18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F
    .byte $80, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$80, $97, TRANSPARENT|FOREGROUND, $39
    .byte $90, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$90, $97, TRANSPARENT|FOREGROUND, $39
    .byte $A0, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$A0, $97, TRANSPARENT|FOREGROUND, $39
    .byte $B4, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$B4, $97, TRANSPARENT|FOREGROUND, $39
    .byte $C4, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$C4, $97, TRANSPARENT|FOREGROUND, $39
    .byte 4, $98, TRANSPARENT|FOREGROUND, $39       ; TILE <4, $98, TRANSPARENT|FOREGROUND, $39
    .byte $64, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$64, $98, TRANSPARENT|FOREGROUND, $39
    .byte $88, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$88, $98, TRANSPARENT|FOREGROUND, $39
    .byte $A4, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$A4, $98, TRANSPARENT|FOREGROUND, $39
    .byte $B8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$B8, $98, TRANSPARENT|FOREGROUND, $39
    .byte $C8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$C8, $98, TRANSPARENT|FOREGROUND, $39
    .byte $D8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$D8, $98, TRANSPARENT|FOREGROUND, $39
    .byte $F4, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$F4, $98, TRANSPARENT|FOREGROUND, $39
    .byte $F8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$F8, $98, TRANSPARENT|FOREGROUND, $39
    .byte $18, $99, TRANSPARENT|FOREGROUND, $39     ; TILE <$18, $99, TRANSPARENT|FOREGROUND, $39
    .byte $A0, $99, TRANSPARENT|FOREGROUND, $39     ; TILE <$A0, $99, TRANSPARENT|FOREGROUND, $39
stru_159780:
    .byte $F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20   ; TILE <$F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21  ; TILE <$17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21  ; TILE <$20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21
    .byte $28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20  ; TILE <$28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20
stru_159790:
    .byte $F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30   ; TILE <$F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30
    .byte $17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31  ; TILE <$17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31
    .byte $20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $31  ; TILE <$20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $31
    .byte $28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $30  ; TILE <$28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $30
stru_1597A0:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3   ; TILE <$40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4   ; TILE <$48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14 ; TILE <$48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14
stru_1597B4:
    .byte $28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29     ; TILE <$28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29
    .byte $30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $2A
    .byte $28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $39     ; TILE <$28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $39
    .byte $30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $3A     ; TILE <$30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $3A
stru_1597C4:
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7   ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8   ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17 ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28 ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37 ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38 ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38
    .byte $28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2B
    .byte $30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2C
    .byte $28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3B     ; TILE <$28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3B
    .byte $30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3C     ; TILE <$30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3C
    .byte $28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29     ; TILE <$28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29
    .byte $30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A
    .byte $28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39     ; TILE <$28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39
    .byte $30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A     ; TILE <$30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A
stru_159804:
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7   ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8   ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17 ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28 ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37 ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38 ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38
    .byte $40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8   ; TILE <$40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8
    .byte $48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7
    .byte $40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18 ; TILE <$40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18
    .byte $48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17 ; TILE <$48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17
    .byte $40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28 ; TILE <$40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28
    .byte $48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27 ; TILE <$48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27
    .byte $40, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38 ; TILE <$40, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38
    .byte $48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $37 ; TILE <$48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $37
    .byte $28, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$28, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2D
    .byte $30, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$30, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2E
    .byte $28, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3D     ; TILE <$28, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3D
    .byte $30, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3E     ; TILE <$30, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3E
    .byte $28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29     ; TILE <$28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29
    .byte $30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A
    .byte $28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39     ; TILE <$28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39
    .byte $30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A     ; TILE <$30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A
stru_159864:
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C  ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D  ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D
    .byte $10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C ; TILE <$10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C
    .byte $18, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F ; TILE <$18, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F
    .byte $28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $E      ; TILE <$28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $E
    .byte $30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $F      ; TILE <$30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $F
    .byte $28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1E
    .byte $30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1F
stru_159888:
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10 ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13 ; TILE <$28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19 ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19
    .byte $28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A ; TILE <$28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A
stru_1598A4:
    .byte $10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $40
    .byte $20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $41     ; TILE <$20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $41
    .byte $18, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $42     ; TILE <$18, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $42
    .byte $20, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $43     ; TILE <$20, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $43
    .byte $28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $44     ; TILE <$28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $44
stru_1598B8:
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9   ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A  ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A
    .byte $28, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B  ; TILE <$28, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B
    .byte $28, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B ; TILE <$28, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B
stru_1598C8:
    .byte $28, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $45     ; TILE <$28, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $45
    .byte $30, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $46     ; TILE <$30, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $46
    .byte $28, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $47     ; TILE <$28, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $47
    .byte $30, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $48     ; TILE <$30, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $48
stru_1598D8:
    .byte $38, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49 ; TILE <$38, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49
    .byte $40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A ; TILE <$40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A
    .byte $40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B ; TILE <$40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B
    .byte $18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4C
    .byte $20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4D     ; TILE <$20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4D
    .byte $18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $E      ; TILE <$18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $E
    .byte $20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $4F     ; TILE <$20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $4F
stru_1598F4:
    .byte $20, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22 ; TILE <$20, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22
stru_1598F8:
    .byte $10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $23     ; TILE <$10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $23
    .byte $18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $24     ; TILE <$18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $24
    .byte $20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $25     ; TILE <$20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $25
    .byte $28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $26     ; TILE <$28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $26
    .byte $10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $33     ; TILE <$10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $33
    .byte $18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $34     ; TILE <$18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $34
    .byte $20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $35     ; TILE <$20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $35
    .byte $28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $36     ; TILE <$28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $36
stru_159918:
    .byte $28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $58     ; TILE <$28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $58
    .byte $30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $59     ; TILE <$30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $59
    .byte $28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $68     ; TILE <$28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $68
    .byte $30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $69     ; TILE <$30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $69
    .byte $28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $78     ; TILE <$28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $78
    .byte $30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $79     ; TILE <$30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $79
    .byte $28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5A     ; TILE <$28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5A
    .byte $30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5B     ; TILE <$30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5B
    .byte $28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6A     ; TILE <$28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6A
    .byte $30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6B     ; TILE <$30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6B
    .byte $28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7A     ; TILE <$28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7A
    .byte $30, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7B     ; TILE <$30, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7B
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53   ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54
    .byte 0, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50   ; TILE <0, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51   ; TILE <8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52 ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52
    .byte 0, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60   ; TILE <0, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60
    .byte 8, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61   ; TILE <8, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61
    .byte $10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $62 ; TILE <$10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $62
    .byte 0, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70   ; TILE <0, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70
    .byte 8, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71   ; TILE <8, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71
    .byte $10, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $72 ; TILE <$10, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $72
    .byte $48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $63 ; TILE <$48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $63
    .byte $50, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $64 ; TILE <$50, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $64
    .byte $48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55 ; TILE <$48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55
    .byte $50, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $56 ; TILE <$50, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $56
    .byte $58, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $57 ; TILE <$58, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $57
    .byte $48, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $65 ; TILE <$48, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $65
    .byte $50, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $66 ; TILE <$50, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $66
    .byte $58, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $67 ; TILE <$58, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $67
    .byte $48, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $75 ; TILE <$48, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $75
    .byte $50, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $76 ; TILE <$50, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $76
    .byte $58, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $77 ; TILE <$58, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $77
stru_1599A0:
    .byte $10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 5       ; TILE <$10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 5
    .byte $18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 6       ; TILE <$18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 6
    .byte $10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $15     ; TILE <$10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $15
    .byte $18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $16     ; TILE <$18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $16
    .byte $30, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$30, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6
    .byte $38, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5   ; TILE <$38, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5
    .byte $30, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16 ; TILE <$30, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16
    .byte $38, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15 ; TILE <$38, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15
    .byte $C8, $99, TRANSPARENT|FOREGROUND, 1       ; TILE <$C8, $99, TRANSPARENT|FOREGROUND, 1
    .byte $E0, $99, TRANSPARENT|FOREGROUND, 1       ; TILE <$E0, $99, TRANSPARENT|FOREGROUND, 1
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B
    .byte $20, $20, TRANSPARENT|FOREGROUND, 0       ; TILE <$20, $20, TRANSPARENT|FOREGROUND, 0
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7A     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7A
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7B     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7B
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C     ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C
    .byte 8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D       ; TILE <8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D       ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F

stru_1599F8:
    .export stru_1599F8

    frame stru_159C04, $F8, 0
    frame stru_158EAC, $EA, 0

    frame MoveUp, $60, 6
    frame MoveUpRight, $60, 6
    frame MoveRight, $60, 6
    frame MoveDownRight, $60, 6
    frame MoveDown, $60, 6
    frame MoveDownLeft, $60, 6
    frame MoveLeft, $60, 6
    frame MoveUpLeft, $60, 6

    frame stru_158EAC, 8, 1
    frame stru_158EAC, $28, 1
    frame stru_158EAC, $A, $D
    frame stru_158EAC, $2A, $D
    frame stru_158EAC, $C, 7
    frame stru_158EAC, $2C, 7
    frame stru_158EAC, $E, 7
    frame stru_158EAC, $2E, 7
    frame stru_158EAC, $48, 5
    frame stru_158EAC, $68, 5
    frame stru_158EAC, $4A, $A
    frame stru_158EAC, $6A, $A
    frame stru_158EAC, $4E, 3
    frame stru_158EAC, $6E, 3
    frame stru_158EAC, $4C, 2
    frame stru_158EDC, $6C, 1

    frame MoveUp, $80, $A
    frame MoveUpRight, $80, $A
    frame MoveRight, $80, $A
    frame MoveDownRight, $80, $A
    frame MoveDown, $80, $A
    frame MoveDownLeft, $80, $A
    frame MoveLeft, $80, $A
    frame MoveUpLeft, $80, $A

    frame MoveUp, $88, 0
    frame MoveUpRight, $88, 0
    frame MoveRight, $88, 0
    frame MoveDownRight, $88, 0
    frame MoveDown, $88, 0
    frame MoveDownLeft, $88, 0
    frame MoveLeft, $88, 0
    frame MoveUpLeft, $88, 0

    frame stru_158EAC, $A6, 2
    frame stru_158EAC, $C6, 2
    frame stru_158EAC, $AE, 1
    frame stru_159C14, $A0, 0
    frame stru_159CB4, $A8, 1
    frame stru_159CB4, $D8, 1
    frame stru_159CD8, $A8, 1
    frame stru_159CD8, $D8, 1
    frame stru_159CB4, $AB, 1

    frame MoveUp, $80, $F
    frame MoveUpRight, $80, $F
    frame MoveRight, $80, $F
    frame MoveDownRight, $80, $F
    frame MoveDown, $80, $F
    frame MoveDownLeft, $80, $F
    frame MoveLeft, $80, $F
    frame MoveUpLeft, $80, $F

    frame MoveUp, $C0, $F
    frame MoveUpRight, $C0, $F
    frame MoveRight, $C0, $F
    frame MoveDownRight, $C0, $F
    frame MoveDown, $C0, $F
    frame MoveDownLeft, $C0, $F
    frame MoveLeft, $C0, $F
    frame MoveUpLeft, $C0, $F

    frame MoveUp, $E0, $F
    frame MoveUpRight, $E0, $F
    frame MoveRight, $E0, $F
    frame MoveDownRight, $E0, $F
    frame MoveDown, $E0, $F
    frame MoveDownLeft, $E0, $F
    frame MoveLeft, $E0, $F
    frame MoveUpLeft, $E0, $F

    frame MoveUp, $88, 5
    frame MoveUpRight, $88, 5
    frame MoveRight, $88, 5
    frame MoveDownRight, $88, 5
    frame MoveDown, $88, 5
    frame MoveDownLeft, $88, 5
    frame MoveLeft, $88, 5
    frame MoveUpLeft, $88, 5

    frame MoveUp, $A0, 6
    frame MoveUpRight, $A0, 6
    frame MoveRight, $A0, 6
    frame MoveDownRight, $A0, 6
    frame MoveDown, $A0, 6
    frame MoveDownLeft, $A0, 6
    frame MoveLeft, $A0, 6
    frame MoveUpLeft, $A0, 6

    frame MoveUp, $A8, 5
    frame MoveUpRight, $A8, 5
    frame MoveRight, $A8, 5
    frame MoveDownRight, $A8, 5
    frame MoveDown, $A8, 5
    frame MoveDownLeft, $A8, 5
    frame MoveLeft, $A8, 5
    frame MoveUpLeft, $A8, 5

    frame MoveUp, $C8, $A
    frame MoveUpRight, $C8, $A
    frame MoveRight, $C8, $A
    frame MoveDownRight, $C8, $A
    frame MoveDown, $C8, $A
    frame MoveDownLeft, $C8, $A
    frame MoveLeft, $C8, $A
    frame MoveUpLeft, $C8, $A

    frame MoveUp, $E8, $F
    frame MoveUpRight, $E8, $F
    frame MoveRight, $E8, $F
    frame MoveDownRight, $E8, $F
    frame MoveDown, $E8, $F
    frame MoveDownLeft, $E8, $F
    frame MoveLeft, $E8, $F
    frame MoveUpLeft, $E8, $F

    frame MoveUp2, $E0, $15
    frame MoveUpRight2, $E0, $15
    frame MoveRight2, $E0, $15
    frame MoveDownRight2, $E0, $15
    frame MoveDown2, $E0, $15
    frame MoveDownLeft2, $E0, $15
    frame MoveLeft2, $E0, $15
    frame MoveUpLeft2, $E0, $15

    frame MoveUp, $88, $19
    frame MoveUpRight, $88, $19
    frame MoveRight, $88, $19
    frame MoveDownRight, $88, $19
    frame MoveDown, $88, $19
    frame MoveDownLeft, $88, $19
    frame MoveLeft, $88, $19
    frame MoveUpLeft, $88, $19

stru_159C04:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, 0
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|%11000000, 0

stru_159C14:
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3
    .byte $20, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4
    .byte $28, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5
    .byte 0, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte 8, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13
    .byte $20, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14
    .byte $28, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15
    .byte 0, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte 8, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23
    .byte $20, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $24
    .byte $28, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $25
    .byte 0, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30
    .byte 8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $32
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $33
    .byte $20, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $34
    .byte $28, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $35
    .byte 0, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40
    .byte 8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $42
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $43
    .byte $20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44
    .byte $28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45
    .byte 0, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54
    .byte $28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $46
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $47
    .byte 0, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $56
    .byte 8, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $57

stru_159CB4:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22

stru_159CD8:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $22
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20
; end of 'BANK15'