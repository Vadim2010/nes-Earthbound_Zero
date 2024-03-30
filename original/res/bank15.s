.segment "DATA_BANK_5"

; ===========================================================================

; Segment type: Pure code
;.segment BANK15
;* =  $8000

; .struct FRAME
    ; pSprite     .word
    ; TileID      .byte
    ; field_3     .byte
; .endstruct

; .struct TILE
    ; PosX        .byte
    ; PosY        .byte
    ; Attr        .byte
    ; TileIDStep  .byte
; .endstruct

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

    .word stru_158B5C
    .byte 0, $1D         ; FRAME <stru_158B5C, 0, $1D>
    .word stru_158B6C
    .byte 0, $1D         ; FRAME <stru_158B6C, 0, $1D>
    .word stru_158B7C
    .byte 0, $1D         ; FRAME <stru_158B7C, 0, $1D>
    .word stru_158B8C
    .byte 0, $1D         ; FRAME <stru_158B8C, 0, $1D>

.export stru_158010
stru_158010:
    .word CharNameSprite
    .byte 0, $1D         ; FRAME <CharNameSprite, 0, $1D>
    .word stru_158BAC
    .byte 0, $1D         ; FRAME <stru_158BAC, 0, $1D>
    .word stru_158BBC
    .byte 0, $1D         ; FRAME <stru_158BBC, 0, $1D>
    .word stru_158BCC
    .byte 0, $1D         ; FRAME <stru_158BCC, 0, $1D>

    .word stru_158B5C
    .byte $40, $1A       ; FRAME <stru_158B5C, $40, $1A>
    .word stru_158B6C
    .byte $40, $1A       ; FRAME <stru_158B6C, $40, $1A>
    .word stru_158B7C
    .byte $40, $1A       ; FRAME <stru_158B7C, $40, $1A>
    .word stru_158B8C
    .byte $40, $1A       ; FRAME <stru_158B8C, $40, $1A>

.export stru_158030
stru_158030:
    .word CharNameSprite
    .byte $40, $1A       ; FRAME <CharNameSprite, $40, $1A>
    .word stru_158BAC
    .byte $40, $1A       ; FRAME <stru_158BAC, $40, $1A>
    .word stru_158BBC
    .byte $40, $1A       ; FRAME <stru_158BBC, $40, $1A>
    .word stru_158BCC
    .byte $40, $1A       ; FRAME <stru_158BCC, $40, $1A>

    .word stru_158BDC
    .byte $20, $15       ; FRAME <stru_158BDC, $20, $15>
    .word stru_158BEC
    .byte $20, $15       ; FRAME <stru_158BEC, $20, $15>
    .word stru_158BFC
    .byte $20, $15       ; FRAME <stru_158BFC, $20, $15>
    .word stru_158C0C
    .byte $20, $15       ; FRAME <stru_158C0C, $20, $15>

.export stru_158050
stru_158050:
    .word stru_158C1C
    .byte $20, $15       ; FRAME <stru_158C1C, $20, $15>
    .word stru_158C2C
    .byte $20, $15       ; FRAME <stru_158C2C, $20, $15>
    .word stru_158C3C
    .byte $20, $15       ; FRAME <stru_158C3C, $20, $15>
    .word stru_158C4C
    .byte $20, $15       ; FRAME <stru_158C4C, $20, $15>

    .word stru_158DDC
    .byte $60, $15       ; FRAME <stru_158DDC, $60, $15>
    .word stru_158DEC
    .byte $60, $15       ; FRAME <stru_158DEC, $60, $15>
    .word stru_158DFC
    .byte $60, $15       ; FRAME <stru_158DFC, $60, $15>
    .word stru_158E0C
    .byte $60, $15       ; FRAME <stru_158E0C, $60, $15>

.export stru_158070
stru_158070:
    .word stru_158E1C
    .byte $60, $15       ; FRAME <stru_158E1C, $60, $15>
    .word stru_158E2C
    .byte $60, $15       ; FRAME <stru_158E2C, $60, $15>
    .word stru_158E3C
    .byte $60, $15       ; FRAME <stru_158E3C, $60, $15>
    .word stru_158E4C
    .byte $60, $15       ; FRAME <stru_158E4C, $60, $15>

    .word stru_158B5C
    .byte 8, $19         ; FRAME <stru_158B5C, 8, $19>
    .word stru_158B6C
    .byte 8, $19         ; FRAME <stru_158B6C, 8, $19>
    .word stru_158B7C
    .byte 8, $19         ; FRAME <stru_158B7C, 8, $19>
    .word stru_158B8C
    .byte 8, $19         ; FRAME <stru_158B8C, 8, $19>
    .word CharNameSprite
    .byte 8, $19         ; FRAME <CharNameSprite, 8, $19>
    .word stru_158BAC
    .byte 8, $19         ; FRAME <stru_158BAC, 8, $19>
    .word stru_158BBC
    .byte 8, $19         ; FRAME <stru_158BBC, 8, $19>
    .word stru_158BCC
    .byte 8, $19         ; FRAME <stru_158BCC, 8, $19>

    .word stru_15934C
    .byte 0, 0           ; FRAME <stru_15934C, 0, 0>
    .word stru_15935C
    .byte 0, 0           ; FRAME <stru_15935C, 0, 0>
    .word stru_15936C
    .byte 0, 0           ; FRAME <stru_15936C, 0, 0>
    .word stru_15937C
    .byte 0, 0           ; FRAME <stru_15937C, 0, 0>
    .word stru_15938C
    .byte 0, 0           ; FRAME <stru_15938C, 0, 0>
    .word stru_15939C
    .byte 0, 0           ; FRAME <stru_15939C, 0, 0>
    .word stru_1593AC
    .byte 0, 0           ; FRAME <stru_1593AC, 0, 0>
    .word stru_1593BC
    .byte 0, 0           ; FRAME <stru_1593BC, 0, 0>
    .word stru_1593CC
    .byte 0, 0           ; FRAME <stru_1593CC, 0, 0>
    .word stru_1593DC
    .byte 0, 0           ; FRAME <stru_1593DC, 0, 0>
    .word stru_1593EC
    .byte 0, 0           ; FRAME <stru_1593EC, 0, 0>
    .word stru_1593FC
    .byte 0, 0           ; FRAME <stru_1593FC, 0, 0>
    .word stru_15940C
    .byte 0, 0           ; FRAME <stru_15940C, 0, 0>
    .word stru_15941C
    .byte 0, 0           ; FRAME <stru_15941C, 0, 0>
    .word stru_15942C
    .byte 0, 0           ; FRAME <stru_15942C, 0, 0>
    .word stru_15943C
    .byte 0, 0           ; FRAME <stru_15943C, 0, 0>
    .word stru_15944C
    .byte 0, 0           ; FRAME <stru_15944C, 0, 0>
    .word stru_15945C
    .byte 0, 0           ; FRAME <stru_15945C, 0, 0>
    .word stru_15946C
    .byte 0, 0           ; FRAME <stru_15946C, 0, 0>
    .word stru_15947C
    .byte 0, 0           ; FRAME <stru_15947C, 0, 0>
    .word stru_15948C
    .byte 0, 0           ; FRAME <stru_15948C, 0, 0>
    .word stru_15949C
    .byte 0, 0           ; FRAME <stru_15949C, 0, 0>
    .word stru_1594AC
    .byte 0, 0           ; FRAME <stru_1594AC, 0, 0>
    .word stru_1594BC
    .byte 0, 0           ; FRAME <stru_1594BC, 0, 0>
    .word stru_1594CC
    .byte 0, 0           ; FRAME <stru_1594CC, 0, 0>
    .word stru_1594DC
    .byte 0, 0           ; FRAME <stru_1594DC, 0, 0>
    .word stru_1594EC
    .byte 0, 0           ; FRAME <stru_1594EC, 0, 0>
    .word stru_1594FC
    .byte 0, 0           ; FRAME <stru_1594FC, 0, 0>
    .word stru_15950C
    .byte 0, 0           ; FRAME <stru_15950C, 0, 0>
    .word stru_15951C
    .byte 0, 0           ; FRAME <stru_15951C, 0, 0>
    .word stru_15952C
    .byte 0, 0           ; FRAME <stru_15952C, 0, 0>
    .word stru_15953C
    .byte 0, 0           ; FRAME <stru_15953C, 0, 0>
    .word stru_15954C
    .byte 0, 0           ; FRAME <stru_15954C, 0, 0>
    .word stru_15955C
    .byte 0, 0           ; FRAME <stru_15955C, 0, 0>
    .word stru_15956C
    .byte 0, 0           ; FRAME <stru_15956C, 0, 0>
    .word stru_15957C
    .byte 0, 0           ; FRAME <stru_15957C, 0, 0>
    .word stru_15958C
    .byte 0, 0           ; FRAME <stru_15958C, 0, 0>
    .word stru_15959C
    .byte 0, 0           ; FRAME <stru_15959C, 0, 0>
    .word stru_1595AC
    .byte 0, 0           ; FRAME <stru_1595AC, 0, 0>
    .word stru_1595BC
    .byte 0, 0           ; FRAME <stru_1595BC, 0, 0>

    .word stru_158B5C
    .byte $A0, 9         ; FRAME <stru_158B5C, $A0, 9>
    .word stru_158B6C
    .byte $A0, 9         ; FRAME <stru_158B6C, $A0, 9>
    .word stru_158B7C
    .byte $A0, 9         ; FRAME <stru_158B7C, $A0, 9>
    .word stru_158B8C
    .byte $A0, 9         ; FRAME <stru_158B8C, $A0, 9>
    .word CharNameSprite
    .byte $A0, 9         ; FRAME <CharNameSprite, $A0, 9>
    .word stru_158BAC
    .byte $A0, 9         ; FRAME <stru_158BAC, $A0, 9>
    .word stru_158BBC
    .byte $A0, 9         ; FRAME <stru_158BBC, $A0, 9>
    .word stru_158BCC
    .byte $A0, 9         ; FRAME <stru_158BCC, $A0, 9>

    .word stru_159324
    .byte $80, 5        ; FRAME <stru_159324, $80, 5>
    .word stru_159324
    .byte $82, 5        ; FRAME <stru_159324, $82, 5>
    .word stru_159324
    .byte $84, 5        ; FRAME <stru_159324, $84, 5>
    .word stru_159324
    .byte $86, 5        ; FRAME <stru_159324, $86, 5>
    .word stru_159324
    .byte $88, 5        ; FRAME <stru_159324, $88, 5>
    .word stru_159324
    .byte $8A, 5        ; FRAME <stru_159324, $8A, 5>
    .word stru_159324
    .byte $8C, 5        ; FRAME <stru_159324, $8C, 5>
    .word stru_159324
    .byte $8E, 5        ; FRAME <stru_159324, $8E, 5>

    .word stru_158EAC
    .byte $68, 0        ; FRAME <stru_158EAC, $68, 0>
    .word stru_158EAC
    .byte $68, 0        ; FRAME <stru_158EAC, $68, 0>

    .word stru_158EAC
    .byte $6A, 5        ; FRAME <stru_158EAC, $6A, 5>
    .word stru_158EAC
    .byte $6C, 5        ; FRAME <stru_158EAC, $6C, 5>

    .word stru_158EAC
    .byte $6C, 0        ; FRAME <stru_158EAC, $6C, 0>

    .word stru_158EAC
    .byte $6E, 5        ; FRAME <stru_158EAC, $6E, 5>

    .word stru_158EDC
    .byte $3C, 5        ; FRAME <stru_158EDC, $3C, 5>
    .word stru_158EE4
    .byte $3C, 5        ; FRAME <stru_158EE4, $3C, 5>

    .word stru_158EEC
    .byte $3E, 0        ; FRAME <stru_158EEC, $3E, 0>
    .word stru_158EF4
    .byte $3E, 0        ; FRAME <stru_158EF4, $3E, 0>

    .word stru_158B5C
    .byte $80, $F       ; FRAME <stru_158B5C, $80, $F>
    .word stru_158B6C
    .byte $80, $F       ; FRAME <stru_158B6C, $80, $F>
    .word stru_158B7C
    .byte $80, $F       ; FRAME <stru_158B7C, $80, $F>
    .word stru_158B8C
    .byte $80, $F       ; FRAME <stru_158B8C, $80, $F>
    .word CharNameSprite
    .byte $80, $F       ; FRAME <CharNameSprite, $80, $F>
    .word stru_158BAC
    .byte $80, $F       ; FRAME <stru_158BAC, $80, $F>
    .word stru_158BBC
    .byte $80, $F       ; FRAME <stru_158BBC, $80, $F>
    .word stru_158BCC
    .byte $80, $F       ; FRAME <stru_158BCC, $80, $F>

    .word stru_158B5C
    .byte $A0, $F       ; FRAME <stru_158B5C, $A0, $F>
    .word stru_158B6C
    .byte $A0, $F       ; FRAME <stru_158B6C, $A0, $F>
    .word stru_158B7C
    .byte $A0, $F       ; FRAME <stru_158B7C, $A0, $F>
    .word stru_158B8C
    .byte $A0, $F       ; FRAME <stru_158B8C, $A0, $F>
    .word CharNameSprite
    .byte $A0, $F       ; FRAME <CharNameSprite, $A0, $F>
    .word stru_158BAC
    .byte $A0, $F       ; FRAME <stru_158BAC, $A0, $F>
    .word stru_158BBC
    .byte $A0, $F       ; FRAME <stru_158BBC, $A0, $F>
    .word stru_158BCC
    .byte $A0, $F       ; FRAME <stru_158BCC, $A0, $F>

    .word stru_158BDC
    .byte $C0, 5        ; FRAME <stru_158BDC, $C0, 5>
    .word stru_158BEC
    .byte $C0, 5        ; FRAME <stru_158BEC, $C0, 5>
    .word stru_158BFC
    .byte $C0, 5        ; FRAME <stru_158BFC, $C0, 5>
    .word stru_158C0C
    .byte $C0, 5        ; FRAME <stru_158C0C, $C0, 5>
    .word stru_158C1C
    .byte $C0, 5        ; FRAME <stru_158C1C, $C0, 5>
    .word stru_158C2C
    .byte $C0, 5        ; FRAME <stru_158C2C, $C0, 5>
    .word stru_158C3C
    .byte $C0, 5        ; FRAME <stru_158C3C, $C0, 5>
    .word stru_158C4C
    .byte $C0, 5        ; FRAME <stru_158C4C, $C0, 5>

    .word stru_158BDC
    .byte $E0, 9        ; FRAME <stru_158BDC, $E0, 9>
    .word stru_158BEC
    .byte $E0, 9        ; FRAME <stru_158BEC, $E0, 9>
    .word stru_158BFC
    .byte $E0, 9        ; FRAME <stru_158BFC, $E0, 9>
    .word stru_158C0C
    .byte $E0, 9        ; FRAME <stru_158C0C, $E0, 9>
    .word stru_158C1C
    .byte $E0, 9        ; FRAME <stru_158C1C, $E0, 9>
    .word stru_158C2C
    .byte $E0, 9        ; FRAME <stru_158C2C, $E0, 9>
    .word stru_158C3C
    .byte $E0, 9        ; FRAME <stru_158C3C, $E0, 9>
    .word stru_158C4C
    .byte $E0, 9        ; FRAME <stru_158C4C, $E0, 9>

    .word stru_158B5C
    .byte $88, $F       ; FRAME <stru_158B5C, $88, $F>
    .word stru_158B6C
    .byte $88, $F       ; FRAME <stru_158B6C, $88, $F>
    .word stru_158B7C
    .byte $88, $F       ; FRAME <stru_158B7C, $88, $F>
    .word stru_158B8C
    .byte $88, $F       ; FRAME <stru_158B8C, $88, $F>
    .word CharNameSprite
    .byte $88, $F       ; FRAME <CharNameSprite, $88, $F>
    .word stru_158BAC
    .byte $88, $F       ; FRAME <stru_158BAC, $88, $F>
    .word stru_158BBC
    .byte $88, $F       ; FRAME <stru_158BBC, $88, $F>
    .word stru_158BCC
    .byte $88, $F       ; FRAME <stru_158BCC, $88, $F>

    
    .word stru_158B5C
    .byte $A8, 9        ; FRAME <stru_158B5C, $A8, 9>
    .word stru_158B6C
    .byte $A8, 9        ; FRAME <stru_158B6C, $A8, 9>
    .word stru_158B7C
    .byte $A8, 9        ; FRAME <stru_158B7C, $A8, 9>
    .word stru_158B8C
    .byte $A8, 9        ; FRAME <stru_158B8C, $A8, 9>
    .word CharNameSprite
    .byte $A8, 9        ; FRAME <CharNameSprite, $A8, 9>
    .word stru_158BAC
    .byte $A8, 9        ; FRAME <stru_158BAC, $A8, 9>
    .word stru_158BBC
    .byte $A8, 9        ; FRAME <stru_158BBC, $A8, 9>
    .word stru_158BCC
    .byte $A8, 9        ; FRAME <stru_158BCC, $A8, 9>

    
    .word stru_158B5C
    .byte $C8, 5        ; FRAME <stru_158B5C, $C8, 5>
    .word stru_158B6C
    .byte $C8, 5        ; FRAME <stru_158B6C, $C8, 5>
    .word stru_158B7C
    .byte $C8, 5        ; FRAME <stru_158B7C, $C8, 5>
    .word stru_158B8C
    .byte $C8, 5        ; FRAME <stru_158B8C, $C8, 5>
    .word CharNameSprite
    .byte $C8, 5        ; FRAME <CharNameSprite, $C8, 5>
    .word stru_158BAC
    .byte $C8, 5        ; FRAME <stru_158BAC, $C8, 5>
    .word stru_158BBC
    .byte $C8, 5        ; FRAME <stru_158BBC, $C8, 5>
    .word stru_158BCC
    .byte $C8, 5        ; FRAME <stru_158BCC, $C8, 5>

    
    .word stru_158B5C
    .byte $E8, 5        ; FRAME <stru_158B5C, $E8, 5>
    .word stru_158B6C
    .byte $E8, 5        ; FRAME <stru_158B6C, $E8, 5>
    .word stru_158B7C
    .byte $E8, 5        ; FRAME <stru_158B7C, $E8, 5>
    .word stru_158B8C
    .byte $E8, 5        ; FRAME <stru_158B8C, $E8, 5>
    .word CharNameSprite
    .byte $E8, 5        ; FRAME <CharNameSprite, $E8, 5>
    .word stru_158BAC
    .byte $E8, 5        ; FRAME <stru_158BAC, $E8, 5>
    .word stru_158BBC
    .byte $E8, 5        ; FRAME <stru_158BBC, $E8, 5>
    .word stru_158BCC
    .byte $E8, 5        ; FRAME <stru_158BCC, $E8, 5>

    
    .word stru_158C5C
    .byte $80, 5        ; FRAME <stru_158C5C, $80, 5>
    .word stru_158C6C
    .byte $80, 5        ; FRAME <stru_158C6C, $80, 5>
    .word stru_158C7C
    .byte $80, 5        ; FRAME <stru_158C7C, $80, 5>
    .word stru_158C8C
    .byte $80, 5        ; FRAME <stru_158C8C, $80, 5>
    .word stru_158C9C
    .byte $80, 5        ; FRAME <stru_158C9C, $80, 5>
    .word stru_158CAC
    .byte $80, 5        ; FRAME <stru_158CAC, $80, 5>
    .word stru_158CBC
    .byte $80, 5        ; FRAME <stru_158CBC, $80, 5>
    .word stru_158CCC
    .byte $80, 5        ; FRAME <stru_158CCC, $80, 5>

    
    .word stru_158CDC
    .byte $80, $F       ; FRAME <stru_158CDC, $80, $F>
    .word stru_158CEC
    .byte $80, $F       ; FRAME <stru_158CEC, $80, $F>
    .word stru_158CFC
    .byte $80, $F       ; FRAME <stru_158CFC, $80, $F>
    .word stru_158D0C
    .byte $80, $F       ; FRAME <stru_158D0C, $80, $F>
    .word stru_158D1C
    .byte $80, $F       ; FRAME <stru_158D1C, $80, $F>
    .word stru_158D2C
    .byte $80, $F       ; FRAME <stru_158D2C, $80, $F>
    .word stru_158D3C
    .byte $80, $F       ; FRAME <stru_158D3C, $80, $F>
    .word stru_158D4C
    .byte $80, $F       ; FRAME <stru_158D4C, $80, $F>

    
    .word stru_158D5C
    .byte $80, 5        ; FRAME <stru_158D5C, $80, 5>
    .word stru_158D6C
    .byte $80, 5        ; FRAME <stru_158D6C, $80, 5>
    .word stru_158D7C
    .byte $80, 5        ; FRAME <stru_158D7C, $80, 5>
    .word stru_158D8C
    .byte $80, 5        ; FRAME <stru_158D8C, $80, 5>
    .word stru_158D9C
    .byte $80, 5        ; FRAME <stru_158D9C, $80, 5>
    .word stru_158DAC
    .byte $80, 5        ; FRAME <stru_158DAC, $80, 5>
    .word stru_158DBC
    .byte $80, 5        ; FRAME <stru_158DBC, $80, 5>
    .word stru_158DCC
    .byte $80, 5        ; FRAME <stru_158DCC, $80, 5>

    
    .word stru_158B5C
    .byte $80, $D       ; FRAME <stru_158B5C, $80, $D>
    .word stru_158B6C
    .byte $80, $D       ; FRAME <stru_158B6C, $80, $D>
    .word stru_158B7C
    .byte $80, $D       ; FRAME <stru_158B7C, $80, $D>
    .word stru_158B8C
    .byte $80, $D       ; FRAME <stru_158B8C, $80, $D>
    .word CharNameSprite
    .byte $80, $D       ; FRAME <CharNameSprite, $80, $D>
    .word stru_158BAC
    .byte $80, $D       ; FRAME <stru_158BAC, $80, $D>
    .word stru_158BBC
    .byte $80, $D       ; FRAME <stru_158BBC, $80, $D>
    .word stru_158BCC
    .byte $80, $D       ; FRAME <stru_158BCC, $80, $D>

    
    .word stru_158B5C
    .byte $A0, 6        ; FRAME <stru_158B5C, $A0, 6>
    .word stru_158B6C
    .byte $A0, 6        ; FRAME <stru_158B6C, $A0, 6>
    .word stru_158B7C
    .byte $A0, 6        ; FRAME <stru_158B7C, $A0, 6>
    .word stru_158B8C
    .byte $A0, 6        ; FRAME <stru_158B8C, $A0, 6>
    .word CharNameSprite
    .byte $A0, 6        ; FRAME <CharNameSprite, $A0, 6>
    .word stru_158BAC
    .byte $A0, 6        ; FRAME <stru_158BAC, $A0, 6>
    .word stru_158BBC
    .byte $A0, 6        ; FRAME <stru_158BBC, $A0, 6>
    .word stru_158BCC
    .byte $A0, 6        ; FRAME <stru_158BCC, $A0, 6>

    .word stru_158B5C
    .byte $C0, $F       ; FRAME <stru_158B5C, $C0, $F>
    .word stru_158B6C
    .byte $C0, $F       ; FRAME <stru_158B6C, $C0, $F>
    .word stru_158B7C
    .byte $C0, $F       ; FRAME <stru_158B7C, $C0, $F>
    .word stru_158B8C
    .byte $C0, $F       ; FRAME <stru_158B8C, $C0, $F>
    .word CharNameSprite
    .byte $C0, $F       ; FRAME <CharNameSprite, $C0, $F>
    .word stru_158BAC
    .byte $C0, $F       ; FRAME <stru_158BAC, $C0, $F>
    .word stru_158BBC
    .byte $C0, $F       ; FRAME <stru_158BBC, $C0, $F>
    .word stru_158BCC
    .byte $C0, $F       ; FRAME <stru_158BCC, $C0, $F>

    .word stru_158BDC
    .byte $E0, $F       ; FRAME <stru_158BDC, $E0, $F>
    .word stru_158BEC
    .byte $E0, $F       ; FRAME <stru_158BEC, $E0, $F>
    .word stru_158BFC
    .byte $E0, $F       ; FRAME <stru_158BFC, $E0, $F>
    .word stru_158C0C
    .byte $E0, $F       ; FRAME <stru_158C0C, $E0, $F>
    .word stru_158C1C
    .byte $E0, $F       ; FRAME <stru_158C1C, $E0, $F>
    .word stru_158C2C
    .byte $E0, $F       ; FRAME <stru_158C2C, $E0, $F>
    .word stru_158C3C
    .byte $E0, $F       ; FRAME <stru_158C3C, $E0, $F>
    .word stru_158C4C
    .byte $E0, $F       ; FRAME <stru_158C4C, $E0, $F>

    .word stru_158B5C
    .byte $88, 5        ; FRAME <stru_158B5C, $88, 5>
    .word stru_158B6C
    .byte $88, 5        ; FRAME <stru_158B6C, $88, 5>
    .word stru_158B7C
    .byte $88, 5        ; FRAME <stru_158B7C, $88, 5>
    .word stru_158B8C
    .byte $88, 5        ; FRAME <stru_158B8C, $88, 5>
    .word CharNameSprite
    .byte $88, 5        ; FRAME <CharNameSprite, $88, 5>
    .word stru_158BAC
    .byte $88, 5        ; FRAME <stru_158BAC, $88, 5>
    .word stru_158BBC
    .byte $88, 5        ; FRAME <stru_158BBC, $88, 5>
    .word stru_158BCC
    .byte $88, 5        ; FRAME <stru_158BCC, $88, 5>

    .word stru_158B5C
    .byte $A8, 9        ; FRAME <stru_158B5C, $A8, 9>
    .word stru_158B6C
    .byte $A8, 9        ; FRAME <stru_158B6C, $A8, 9>
    .word stru_158B7C
    .byte $A8, 9        ; FRAME <stru_158B7C, $A8, 9>
    .word stru_158B8C
    .byte $A8, 9        ; RAME <stru_158B8C, $A8, 9>
    .word CharNameSprite
    .byte $A8, 9        ; FRAME <CharNameSprite, $A8, 9>
    .word stru_158BAC
    .byte $A8, 9        ; FRAME <stru_158BAC, $A8, 9>
    .word stru_158BBC
    .byte $A8, 9        ; FRAME <stru_158BBC, $A8, 9>
    .word stru_158BCC
    .byte $A8, 9        ; FRAME <stru_158BCC, $A8, 9>

    .word stru_158B5C
    .byte $C8, $A       ; FRAME <stru_158B5C, $C8, $A>
    .word stru_158B6C
    .byte $C8, $A       ; FRAME <stru_158B6C, $C8, $A>
    .word stru_158B7C
    .byte $C8, $A       ; FRAME <stru_158B7C, $C8, $A>
    .word stru_158B8C
    .byte $C8, $A       ; FRAME <stru_158B8C, $C8, $A>
    .word CharNameSprite
    .byte $C8, $A       ; FRAME <CharNameSprite, $C8, $A>
    .word stru_158BAC
    .byte $C8, $A       ; FRAME <stru_158BAC, $C8, $A>
    .word stru_158BBC
    .byte $C8, $A       ; FRAME <stru_158BBC, $C8, $A>
    .word stru_158BCC
    .byte $C8, $A       ; FRAME <stru_158BCC, $C8, $A>

    .word stru_158BDC
    .byte $E8, $F       ; FRAME <stru_158BDC, $E8, $F>
    .word stru_158BEC
    .byte $E8, $F       ; FRAME <stru_158BEC, $E8, $F>
    .word stru_158BFC
    .byte $E8, $F       ; FRAME <stru_158BFC, $E8, $F>
    .word stru_158C0C
    .byte $E8, $F       ; FRAME <stru_158C0C, $E8, $F>
    .word stru_158C1C
    .byte $E8, $F       ; FRAME <stru_158C1C, $E8, $F>
    .word stru_158C2C
    .byte $E8, $F       ; FRAME <stru_158C2C, $E8, $F>
    .word stru_158C3C
    .byte $E8, $F       ; FRAME <stru_158C3C, $E8, $F>
    .word stru_158C4C
    .byte $E8, $F       ; FRAME <stru_158C4C, $E8, $F>

    .word stru_158C5C
    .byte $80, $F       ; FRAME <stru_158C5C, $80, $F>
    .word stru_158C6C
    .byte $80, $F       ; FRAME <stru_158C6C, $80, $F>
    .word stru_158C7C
    .byte $80, $F       ; FRAME <stru_158C7C, $80, $F>
    .word stru_158C8C
    .byte $80, $F       ; FRAME <stru_158C8C, $80, $F>
    .word stru_158C9C
    .byte $80, $F       ; FRAME <stru_158C9C, $80, $F>
    .word stru_158CAC
    .byte $80, $F       ; FRAME <stru_158CAC, $80, $F>
    .word stru_158CBC
    .byte $80, $F       ; FRAME <stru_158CBC, $80, $F>
    .word stru_158CCC
    .byte $80, $F       ; FRAME <stru_158CCC, $80, $F>

    .word stru_158CDC
    .byte $80, 7        ; FRAME <stru_158CDC, $80, 7>
    .word stru_158CEC
    .byte $80, 7        ; FRAME <stru_158CEC, $80, 7>
    .word stru_158CFC
    .byte $80, 7        ; FRAME <stru_158CFC, $80, 7>
    .word stru_158D0C
    .byte $80, 7        ; FRAME <stru_158D0C, $80, 7>
    .word stru_158D1C
    .byte $80, 7        ; FRAME <stru_158D1C, $80, 7>
    .word stru_158D2C
    .byte $80, 7        ; FRAME <stru_158D2C, $80, 7>
    .word stru_158D3C
    .byte $80, 7        ; FRAME <stru_158D3C, $80, 7>
    .word stru_158D4C
    .byte $80, 7        ; FRAME <stru_158D4C, $80, 7>

    .word stru_158D5C
    .byte $80, $F       ; FRAME <stru_158D5C, $80, $F>
    .word stru_158D6C
    .byte $80, $F       ; FRAME <stru_158D6C, $80, $F>
    .word stru_158D7C
    .byte $80, $F       ; FRAME <stru_158D7C, $80, $F>
    .word stru_158D8C
    .byte $80, $F       ; FRAME <stru_158D8C, $80, $F>
    .word stru_158D9C
    .byte $80, $F       ; FRAME <stru_158D9C, $80, $F>
    .word stru_158DAC
    .byte $80, $F       ; FRAME <stru_158DAC, $80, $F>
    .word stru_158DBC
    .byte $80, $F       ; FRAME <stru_158DBC, $80, $F>
    .word stru_158DCC
    .byte $80, $F       ; FRAME <stru_158DCC, $80, $F>

    .word stru_158BDC
    .byte $80, $A       ; FRAME <stru_158BDC, $80, $A>
    .word stru_158BEC
    .byte $80, $A       ; FRAME <stru_158BEC, $80, $A>
    .word stru_158BFC
    .byte $80, $A       ; FRAME <stru_158BFC, $80, $A>
    .word stru_158C0C
    .byte $80, $A       ; FRAME <stru_158C0C, $80, $A>
    .word stru_158C1C
    .byte $80, $A       ; FRAME <stru_158C1C, $80, $A>
    .word stru_158C2C
    .byte $80, $A       ; FRAME <stru_158C2C, $80, $A>
    .word stru_158C3C
    .byte $80, $A       ; FRAME <stru_158C3C, $80, $A>
    .word stru_158C4C
    .byte $80, $A       ; FRAME <stru_158C4C, $80, $A>

    .word stru_158B5C
    .byte $A0, 5        ; FRAME <stru_158B5C, $A0, 5>
    .word stru_158B6C
    .byte $A0, 5        ; FRAME <stru_158B6C, $A0, 5>
    .word stru_158B7C
    .byte $A0, 5        ; FRAME <stru_158B7C, $A0, 5>
    .word stru_158B8C
    .byte $A0, 5        ; FRAME <stru_158B8C, $A0, 5>
    .word CharNameSprite
    .byte $A0, 5        ; FRAME <CharNameSprite, $A0, 5>
    .word stru_158BAC
    .byte $A0, 5        ; FRAME <stru_158BAC, $A0, 5>
    .word stru_158BBC
    .byte $A0, 5        ; FRAME <stru_158BBC, $A0, 5>
    .word stru_158BCC
    .byte $A0, 5        ; FRAME <stru_158BCC, $A0, 5>

    .word stru_158B5C
    .byte $C0, $F       ; FRAME <stru_158B5C, $C0, $F>
    .word stru_158B6C
    .byte $C0, $F       ; FRAME <stru_158B6C, $C0, $F>
    .word stru_158B7C
    .byte $C0, $F       ; FRAME <stru_158B7C, $C0, $F>
    .word stru_158B8C
    .byte $C0, $F       ; FRAME <stru_158B8C, $C0, $F>
    .word CharNameSprite
    .byte $C0, $F       ; FRAME <CharNameSprite, $C0, $F>
    .word stru_158BAC
    .byte $C0, $F       ; FRAME <stru_158BAC, $C0, $F>
    .word stru_158BBC
    .byte $C0, $F       ; FRAME <stru_158BBC, $C0, $F>
    .word stru_158BCC
    .byte $C0, $F       ; FRAME <stru_158BCC, $C0, $F>

    .word stru_158B5C
    .byte $88, $F       ; FRAME <stru_158B5C, $88, $F>
    .word stru_158B6C
    .byte $88, $F       ; FRAME <stru_158B6C, $88, $F>
    .word stru_158B7C
    .byte $88, $F       ; FRAME <stru_158B7C, $88, $F>
    .word stru_158B8C
    .byte $88, $F       ; FRAME <stru_158B8C, $88, $F>
    .word CharNameSprite
    .byte $88, $F       ; FRAME <CharNameSprite, $88, $F>
    .word stru_158BAC
    .byte $88, $F       ; FRAME <stru_158BAC, $88, $F>
    .word stru_158BBC
    .byte $88, $F       ; FRAME <stru_158BBC, $88, $F>
    .word stru_158BCC
    .byte $88, $F       ; FRAME <stru_158BCC, $88, $F>

    .word stru_158B5C
    .byte $A8, $F       ; FRAME <stru_158B5C, $A8, $F>
    .word stru_158B6C
    .byte $A8, $F       ; FRAME <stru_158B6C, $A8, $F>
    .word stru_158B7C
    .byte $A8, $F       ; FRAME <stru_158B7C, $A8, $F>
    .word stru_158B8C
    .byte $A8, $F       ; FRAME <stru_158B8C, $A8, $F>
    .word CharNameSprite
    .byte $A8, $F       ; FRAME <CharNameSprite, $A8, $F>
    .word stru_158BAC
    .byte $A8, $F       ; FRAME <stru_158BAC, $A8, $F>
    .word stru_158BBC
    .byte $A8, $F       ; FRAME <stru_158BBC, $A8, $F>
    .word stru_158BCC
    .byte $A8, $F       ; FRAME <stru_158BCC, $A8, $F>

    .word stru_158ECC
    .byte $A8, 5        ; FRAME <stru_158ECC, $A8, 5>

    .word stru_158BDC
    .byte $E0, $1A      ; FRAME <stru_158BDC, $E0, $1A>
    .word stru_158BEC
    .byte $E0, $1A      ; FRAME <stru_158BEC, $E0, $1A>
    .word stru_158BFC
    .byte $E0, $1A      ; FRAME <stru_158BFC, $E0, $1A>
    .word stru_158C0C
    .byte $E0, $1A      ; FRAME <stru_158C0C, $E0, $1A>
    .word stru_158C1C
    .byte $E0, $1A      ; FRAME <stru_158C1C, $E0, $1A>
    .word stru_158C2C
    .byte $E0, $1A      ; FRAME <stru_158C2C, $E0, $1A>
    .word stru_158C3C
    .byte $E0, $1A      ; FRAME <stru_158C3C, $E0, $1A>
    .word stru_158C4C
    .byte $E0, $1A      ; FRAME <stru_158C4C, $E0, $1A>

    .word stru_158BDC
    .byte $C8, $F       ; FRAME <stru_158BDC, $C8, $F>
    .word stru_158BEC
    .byte $C8, $F       ; FRAME <stru_158BEC, $C8, $F>
    .word stru_158BFC
    .byte $C8, $F       ; FRAME <stru_158BFC, $C8, $F>
    .word stru_158C0C
    .byte $C8, $F       ; FRAME <stru_158C0C, $C8, $F>
    .word stru_158C1C
    .byte $C8, $F       ; FRAME <stru_158C1C, $C8, $F>
    .word stru_158C2C
    .byte $C8, $F       ; FRAME <stru_158C2C, $C8, $F>
    .word stru_158C3C
    .byte $C8, $F       ; FRAME <stru_158C3C, $C8, $F>
    .word stru_158C4C
    .byte $C8, $F       ; FRAME <stru_158C4C, $C8, $F>

    .word stru_158EAC
    .byte $EC, $15      ; FRAME <stru_158EAC, $EC, $15>

    .word stru_1592DC
    .byte $E8, $F       ; FRAME <stru_1592DC, $E8, $F>
    .word stru_1592EC
    .byte $E8, $F       ; FRAME <stru_1592EC, $E8, $F>

    .word stru_158EAC
    .byte $EA, 0        ; FRAME <stru_158EAC, $EA, 0>
    .word stru_158EAC
    .byte $EA, 0        ; FRAME <stru_158EAC, $EA, 0>

    .word stru_158EAC
    .byte $EE, 0        ; FRAME <stru_158EAC, $EE, 0>

    .word stru_158ECC
    .byte $C0, 0        ; FRAME <stru_158ECC, $C0, 0>

    .word stru_158B5C
    .byte $80, 0        ; FRAME <stru_158B5C, $80, 0>
    .word stru_158B6C
    .byte $80, 0        ; FRAME <stru_158B6C, $80, 0>
    .word stru_158B7C
    .byte $80, 0        ; FRAME <stru_158B7C, $80, 0>
    .word stru_158B8C
    .byte $80, 0        ; FRAME <stru_158B8C, $80, 0>
    .word CharNameSprite
    .byte $80, 0        ; FRAME <CharNameSprite, $80, 0>
    .word stru_158BAC
    .byte $80, 0        ; FRAME <stru_158BAC, $80, 0>
    .word stru_158BBC
    .byte $80, 0        ; FRAME <stru_158BBC, $80, 0>
    .word stru_158BCC
    .byte $80, 0        ; FRAME <stru_158BCC, $80, 0>

    .word stru_158BDC
    .byte $A0, 5        ; FRAME <stru_158BDC, $A0, 5>
    .word stru_158BEC
    .byte $A0, 5        ; FRAME <stru_158BEC, $A0, 5>
    .word stru_158BFC
    .byte $A0, 5        ; FRAME <stru_158BFC, $A0, 5>
    .word stru_158C0C
    .byte $A0, 5        ; FRAME <stru_158C0C, $A0, 5>
    .word stru_158C1C
    .byte $A0, 5        ; FRAME <stru_158C1C, $A0, 5>
    .word stru_158C2C
    .byte $A0, 5        ; FRAME <stru_158C2C, $A0, 5>
    .word stru_158C3C
    .byte $A0, 5        ; FRAME <stru_158C3C, $A0, 5>
    .word stru_158C4C
    .byte $A0, 5        ; FRAME <stru_158C4C, $A0, 5>

    .word stru_158B5C
    .byte $C0, $A       ; FRAME <stru_158B5C, $C0, $A>
    .word stru_158B6C
    .byte $C0, $A       ; FRAME <stru_158B6C, $C0, $A>
    .word stru_158B7C
    .byte $C0, $A       ; FRAME <stru_158B7C, $C0, $A>
    .word stru_158B8C
    .byte $C0, $A       ; FRAME <stru_158B8C, $C0, $A>
    .word CharNameSprite
    .byte $C0, $A       ; FRAME <CharNameSprite, $C0, $A>
    .word stru_158BAC
    .byte $C0, $A       ; FRAME <stru_158BAC, $C0, $A>
    .word stru_158BBC
    .byte $C0, $A       ; FRAME <stru_158BBC, $C0, $A>
    .word stru_158BCC
    .byte $C0, $A       ; FRAME <stru_158BCC, $C0, $A>

    .word stru_158B5C
    .byte $E0, 6        ; FRAME <stru_158B5C, $E0, 6>
    .word stru_158B6C
    .byte $E0, 6        ; FRAME <stru_158B6C, $E0, 6>
    .word stru_158B7C
    .byte $E0, 6        ; FRAME <stru_158B7C, $E0, 6>
    .word stru_158B8C
    .byte $E0, 6        ; FRAME <stru_158B8C, $E0, 6>
    .word CharNameSprite
    .byte $E0, 6        ; FRAME <CharNameSprite, $E0, 6>
    .word stru_158BAC
    .byte $E0, 6        ; FRAME <stru_158BAC, $E0, 6>
    .word stru_158BBC
    .byte $E0, 6        ; FRAME <stru_158BBC, $E0, 6>
    .word stru_158BCC
    .byte $E0, 6        ; FRAME <stru_158BCC, $E0, 6>

    .word stru_158F9C
    .byte $88, 0        ; FRAME <stru_158F9C, $88, 0>

    .word stru_158B5C
    .byte $A8, 0        ; FRAME <stru_158B5C, $A8, 0>
    .word stru_158B6C
    .byte $A8, 0        ; FRAME <stru_158B6C, $A8, 0>
    .word stru_158B7C
    .byte $A8, 0        ; FRAME <stru_158B7C, $A8, 0>
    .word stru_158B8C
    .byte $A8, 0        ; FRAME <stru_158B8C, $A8, 0>
    .word CharNameSprite
    .byte $A8, 0        ; FRAME <CharNameSprite, $A8, 0>
    .word stru_158BAC
    .byte $A8, 0        ; FRAME <stru_158BAC, $A8, 0>
    .word stru_158BBC
    .byte $A8, 0        ; FRAME <stru_158BBC, $A8, 0>
    .word stru_158BCC
    .byte $A8, 0        ; FRAME <stru_158BCC, $A8, 0>

    .word stru_158B5C
    .byte $C8, $F       ; FRAME <stru_158B5C, $C8, $F>
    .word stru_158B6C
    .byte $C8, $F       ; FRAME <stru_158B6C, $C8, $F>
    .word stru_158B7C
    .byte $C8, $F       ; FRAME <stru_158B7C, $C8, $F>
    .word stru_158B8C
    .byte $C8, $F       ; FRAME <stru_158B8C, $C8, $F>
    .word CharNameSprite
    .byte $C8, $F       ; FRAME <CharNameSprite, $C8, $F>
    .word stru_158BAC
    .byte $C8, $F       ; FRAME <stru_158BAC, $C8, $F>
    .word stru_158BBC
    .byte $C8, $F       ; FRAME <stru_158BBC, $C8, $F>
    .word stru_158BCC
    .byte $C8, $F       ; FRAME <stru_158BCC, $C8, $F>

    .word stru_158B5C
    .byte $E8, $A       ; FRAME <stru_158B5C, $E8, $A>
    .word stru_158B6C
    .byte $E8, $A       ; FRAME <stru_158B6C, $E8, $A>
    .word stru_158B7C
    .byte $E8, $A       ; FRAME <stru_158B7C, $E8, $A>
    .word stru_158B8C
    .byte $E8, $A       ; FRAME <stru_158B8C, $E8, $A>
    .word CharNameSprite
    .byte $E8, $A       ; FRAME <CharNameSprite, $E8, $A>
    .word stru_158BAC
    .byte $E8, $A       ; FRAME <stru_158BAC, $E8, $A>
    .word stru_158BBC
    .byte $E8, $A       ; FRAME <stru_158BBC, $E8, $A>
    .word stru_158BCC
    .byte $E8, $A       ; FRAME <stru_158BCC, $E8, $A>

    .word stru_158E5C
    .byte $80, 0        ; FRAME <stru_158E5C, $80, 0>
    .word stru_158E64
    .byte $80, 0        ; FRAME <stru_158E64, $80, 0>
    .word stru_158E6C
    .byte $80, 0        ; FRAME <stru_158E6C, $80, 0>
    .word stru_158E74
    .byte $80, 0        ; FRAME <stru_158E74, $80, 0>
    .word stru_158E7C
    .byte $80, 0        ; FRAME <stru_158E7C, $80, 0>
    .word stru_158E84
    .byte $80, 0        ; FRAME <stru_158E84, $80, 0>
    .word stru_158E8C
    .byte $80, 0        ; FRAME <stru_158E8C, $80, 0>
    .word stru_158E94
    .byte $80, 0        ; FRAME <stru_158E94, $80, 0>

    .word stru_158ECC
    .byte $C0, $F       ; FRAME <stru_158ECC, $C0, $F>

    .word stru_158ECC
    .byte $A8, 0        ; FRAME <stru_158ECC, $A8, 0>

    .word stru_158EAC
    .byte $8E, $F       ; FRAME <stru_158EAC, $8E, $F>
    .word stru_158EAC
    .byte $8E, $F       ; FRAME <stru_158EAC, $8E, $F>

    .word stru_158B5C
    .byte $E8, 5        ; FRAME <stru_158B5C, $E8, 5>
    .word stru_158B6C
    .byte $E8, 5        ; FRAME <stru_158B6C, $E8, 5>
    .word stru_158B7C
    .byte $E8, 5        ; FRAME <stru_158B7C, $E8, 5>
    .word stru_158B8C
    .byte $E8, 5        ; FRAME <stru_158B8C, $E8, 5>
    .word CharNameSprite
    .byte $E8, 5        ; FRAME <CharNameSprite, $E8, 5>
    .word stru_158BAC
    .byte $E8, 5        ; FRAME <stru_158BAC, $E8, 5>
    .word stru_158BBC
    .byte $E8, 5        ; FRAME <stru_158BBC, $E8, 5>
    .word stru_158BCC
    .byte $E8, 5        ; FRAME <stru_158BCC, $E8, 5>

    .word stru_158BDC
    .byte $80, $F       ; FRAME <stru_158BDC, $80, $F>
    .word stru_158BEC
    .byte $80, $F       ; FRAME <stru_158BEC, $80, $F>
    .word stru_158BFC
    .byte $80, $F       ; FRAME <stru_158BFC, $80, $F>
    .word stru_158C0C
    .byte $80, $F       ; FRAME <stru_158C0C, $80, $F>
    .word stru_158C1C
    .byte $80, $F       ; FRAME <stru_158C1C, $80, $F>
    .word stru_158C2C
    .byte $80, $F       ; FRAME <stru_158C2C, $80, $F>
    .word stru_158C3C
    .byte $80, $F       ; FRAME <stru_158C3C, $80, $F>
    .word stru_158C4C
    .byte $80, $F       ; FRAME <stru_158C4C, $80, $F>

    .word stru_158B5C
    .byte $A8, 5        ; FRAME <stru_158B5C, $A8, 5>
    .word stru_158B6C
    .byte $A8, 5        ; FRAME <stru_158B6C, $A8, 5>
    .word stru_158B7C
    .byte $A8, 5        ; FRAME <stru_158B7C, $A8, 5>
    .word stru_158B8C
    .byte $A8, 5        ; FRAME <stru_158B8C, $A8, 5>
    .word CharNameSprite
    .byte $A8, 5        ; FRAME <CharNameSprite, $A8, 5>
    .word stru_158BAC
    .byte $A8, 5        ; FRAME <stru_158BAC, $A8, 5>
    .word stru_158BBC
    .byte $A8, 5        ; FRAME <stru_158BBC, $A8, 5>
    .word stru_158BCC
    .byte $A8, 5        ; FRAME <stru_158BCC, $A8, 5>

    .word stru_158B5C
    .byte $A0, 5        ; FRAME <stru_158B5C, $A0, 5>
    .word stru_158B6C
    .byte $A0, 5        ; FRAME <stru_158B6C, $A0, 5>
    .word stru_158B7C
    .byte $A0, 5        ; FRAME <stru_158B7C, $A0, 5>
    .word stru_158B8C
    .byte $A0, 5        ; FRAME <stru_158B8C, $A0, 5>
    .word CharNameSprite
    .byte $A0, 5        ; FRAME <CharNameSprite, $A0, 5>
    .word stru_158BAC
    .byte $A0, 5        ; FRAME <stru_158BAC, $A0, 5>
    .word stru_158BBC
    .byte $A0, 5        ; FRAME <stru_158BBC, $A0, 5>
    .word stru_158BCC
    .byte $A0, 5        ; FRAME <stru_158BCC, $A0, 5>

    .word stru_158B5C
    .byte $88, 5        ; FRAME <stru_158B5C, $88, 5>
    .word stru_158B6C
    .byte $88, 5        ; FRAME <stru_158B6C, $88, 5>
    .word stru_158B7C
    .byte $88, 5        ; FRAME <stru_158B7C, $88, 5>
    .word stru_158B8C
    .byte $88, 5        ; FRAME <stru_158B8C, $88, 5>
    .word CharNameSprite
    .byte $88, 5        ; FRAME <CharNameSprite, $88, 5>
    .word stru_158BAC
    .byte $88, 5        ; FRAME <stru_158BAC, $88, 5>
    .word stru_158BBC
    .byte $88, 5        ; FRAME <stru_158BBC, $88, 5>
    .word stru_158BCC
    .byte $88, 5        ; FRAME <stru_158BCC, $88, 5>

    .word stru_158B5C
    .byte $C8, $F       ; FRAME <stru_158B5C, $C8, $F>
    .word stru_158B6C
    .byte $C8, $F       ; FRAME <stru_158B6C, $C8, $F>
    .word stru_158B7C
    .byte $C8, $F       ; FRAME <stru_158B7C, $C8, $F>
    .word stru_158B8C
    .byte $C8, $F       ; FRAME <stru_158B8C, $C8, $F>
    .word CharNameSprite
    .byte $C8, $F       ; FRAME <CharNameSprite, $C8, $F>
    .word stru_158BAC
    .byte $C8, $F       ; FRAME <stru_158BAC, $C8, $F>
    .word stru_158BBC
    .byte $C8, $F       ; FRAME <stru_158BBC, $C8, $F>
    .word stru_158BCC
    .byte $C8, $F       ; FRAME <stru_158BCC, $C8, $F>

    .word stru_158B5C
    .byte $E0, $A       ; FRAME <stru_158B5C, $E0, $A>
    .word stru_158B6C
    .byte $E0, $A       ; FRAME <stru_158B6C, $E0, $A>
    .word stru_158B7C
    .byte $E0, $A       ; FRAME <stru_158B7C, $E0, $A>
    .word stru_158B8C
    .byte $E0, $A       ; FRAME <stru_158B8C, $E0, $A>
    .word CharNameSprite
    .byte $E0, $A       ; FRAME <CharNameSprite, $E0, $A>
    .word stru_158BAC
    .byte $E0, $A       ; FRAME <stru_158BAC, $E0, $A>
    .word stru_158BBC
    .byte $E0, $A       ; FRAME <stru_158BBC, $E0, $A>
    .word stru_158BCC
    .byte $E0, $A       ; FRAME <stru_158BCC, $E0, $A>

    .word stru_158B5C
    .byte $C0, 5        ; FRAME <stru_158B5C, $C0, 5>
    .word stru_158B6C
    .byte $C0, 5        ; FRAME <stru_158B6C, $C0, 5>
    .word stru_158B7C
    .byte $C0, 5        ; FRAME <stru_158B7C, $C0, 5>
    .word stru_158B8C
    .byte $C0, 5        ; FRAME <stru_158B8C, $C0, 5>
    .word CharNameSprite
    .byte $C0, 5        ; FRAME <CharNameSprite, $C0, 5>
    .word stru_158BAC
    .byte $C0, 5        ; FRAME <stru_158BAC, $C0, 5>
    .word stru_158BBC
    .byte $C0, 5        ; FRAME <stru_158BBC, $C0, 5>
    .word stru_158BCC
    .byte $C0, 5        ; FRAME <stru_158BCC, $C0, 5>

    .word stru_158F7C
    .byte $80, $66      ; FRAME <stru_158F7C, $80, $66>
    .word stru_158F7C
    .byte $80, $66      ; FRAME <stru_158F7C, $80, $66>

    .word stru_158C5C
    .byte $80, 5        ; FRAME <stru_158C5C, $80, 5>
    .word stru_158C6C
    .byte $80, 5        ; FRAME <stru_158C6C, $80, 5>
    .word stru_158C7C
    .byte $80, 5        ; FRAME <stru_158C7C, $80, 5>
    .word stru_158C8C
    .byte $80, 5        ; FRAME <stru_158C8C, $80, 5>
    .word stru_158C9C
    .byte $80, 5        ; FRAME <stru_158C9C, $80, 5>
    .word stru_158CAC
    .byte $80, 5        ; FRAME <stru_158CAC, $80, 5>
    .word stru_158CBC
    .byte $80, 5        ; FRAME <stru_158CBC, $80, 5>
    .word stru_158CCC
    .byte $80, 5        ; FRAME <stru_158CCC, $80, 5>

    .word stru_158B5C
    .byte $80, $F       ; FRAME <stru_158B5C, $80, $F>
    .word stru_158B6C
    .byte $80, $F       ; FRAME <stru_158B6C, $80, $F>
    .word stru_158B7C
    .byte $80, $F       ; FRAME <stru_158B7C, $80, $F>
    .word stru_158B8C
    .byte $80, $F       ; FRAME <stru_158B8C, $80, $F>
    .word CharNameSprite
    .byte $80, $F       ; FRAME <CharNameSprite, $80, $F>
    .word stru_158BAC
    .byte $80, $F       ; FRAME <stru_158BAC, $80, $F>
    .word stru_158BBC
    .byte $80, $F       ; FRAME <stru_158BBC, $80, $F>
    .word stru_158BCC
    .byte $80, $F       ; FRAME <stru_158BCC, $80, $F>

    .word stru_158BDC
    .byte $C0, 5        ; FRAME <stru_158BDC, $C0, 5>
    .word stru_158BEC
    .byte $C0, 5        ; FRAME <stru_158BEC, $C0, 5>
    .word stru_158BFC
    .byte $C0, 5        ; FRAME <stru_158BFC, $C0, 5>
    .word stru_158C0C
    .byte $C0, 5        ; FRAME <stru_158C0C, $C0, 5>
    .word stru_158C1C
    .byte $C0, 5        ; FRAME <stru_158C1C, $C0, 5>
    .word stru_158C2C
    .byte $C0, 5        ; FRAME <stru_158C2C, $C0, 5>
    .word stru_158C3C
    .byte $C0, 5        ; FRAME <stru_158C3C, $C0, 5>
    .word stru_158C4C
    .byte $C0, 5        ; FRAME <stru_158C4C, $C0, 5>

    .word stru_158B5C
    .byte $E0, $A       ; FRAME <stru_158B5C, $E0, $A>
    .word stru_158B6C
    .byte $E0, $A       ; FRAME <stru_158B6C, $E0, $A>
    .word stru_158B7C
    .byte $E0, $A       ; FRAME <stru_158B7C, $E0, $A>
    .word stru_158B8C
    .byte $E0, $A       ; FRAME <stru_158B8C, $E0, $A>
    .word CharNameSprite
    .byte $E0, $A       ; FRAME <CharNameSprite, $E0, $A>
    .word stru_158BAC
    .byte $E0, $A       ; FRAME <stru_158BAC, $E0, $A>
    .word stru_158BBC
    .byte $E0, $A       ; FRAME <stru_158BBC, $E0, $A>
    .word stru_158BCC
    .byte $E0, $A       ; FRAME <stru_158BCC, $E0, $A>

    .word stru_158B5C
    .byte $88, 5        ; FRAME <stru_158B5C, $88, 5>
    .word stru_158B6C
    .byte $88, 5        ; FRAME <stru_158B6C, $88, 5>
    .word stru_158B7C
    .byte $88, 5        ; FRAME <stru_158B7C, $88, 5>
    .word stru_158B8C
    .byte $88, 5        ; FRAME <stru_158B8C, $88, 5>
    .word CharNameSprite
    .byte $88, 5        ; FRAME <CharNameSprite, $88, 5>
    .word stru_158BAC
    .byte $88, 5        ; FRAME <stru_158BAC, $88, 5>
    .word stru_158BBC
    .byte $88, 5        ; FRAME <stru_158BBC, $88, 5>
    .word stru_158BCC
    .byte $88, 5        ; FRAME <stru_158BCC, $88, 5>

    .word stru_158BDC
    .byte $A8, $A       ; FRAME <stru_158BDC, $A8, $A>
    .word stru_158BEC
    .byte $A8, $A       ; FRAME <stru_158BEC, $A8, $A>
    .word stru_158BFC
    .byte $A8, $A       ; FRAME <stru_158BFC, $A8, $A>
    .word stru_158C0C
    .byte $A8, $A       ; FRAME <stru_158C0C, $A8, $A>
    .word stru_158C1C
    .byte $A8, $A       ; FRAME <stru_158C1C, $A8, $A>
    .word stru_158C2C
    .byte $A8, $A       ; FRAME <stru_158C2C, $A8, $A>
    .word stru_158C3C
    .byte $A8, $A       ; FRAME <stru_158C3C, $A8, $A>
    .word stru_158C4C
    .byte $A8, $A       ; FRAME <stru_158C4C, $A8, $A>

    .word stru_158B5C
    .byte $C8, 0        ; FRAME <stru_158B5C, $C8, 0>
    .word stru_158B6C
    .byte $C8, 0        ; FRAME <stru_158B6C, $C8, 0>
    .word stru_158B7C
    .byte $C8, 0        ; FRAME <stru_158B7C, $C8, 0>
    .word stru_158B8C
    .byte $C8, 0        ; FRAME <stru_158B8C, $C8, 0>
    .word CharNameSprite
    .byte $C8, 0        ; FRAME <CharNameSprite, $C8, 0>
    .word stru_158BAC
    .byte $C8, 0        ; FRAME <stru_158BAC, $C8, 0>
    .word stru_158BBC
    .byte $C8, 0        ; FRAME <stru_158BBC, $C8, 0>
    .word stru_158BCC
    .byte $C8, 0        ; FRAME <stru_158BCC, $C8, 0>

    .word stru_1592DC
    .byte $E8, $F       ; FRAME <stru_1592DC, $E8, $F>

    .word stru_158EAC
    .byte $EA, 0        ; FRAME <stru_158EAC, $EA, 0>

    .word stru_1592DC
    .byte $EC, 0        ; FRAME <stru_1592DC, $EC, 0>

    .word stru_158EAC
    .byte $EE, 0        ; FRAME <stru_158EAC, $EE, 0>
    .word stru_158EAC
    .byte $EE, 0        ; FRAME <stru_158EAC, $EE, 0>

    .word stru_158E5C
    .byte $80, 0        ; FRAME <stru_158E5C, $80, 0>
    .word stru_158E64
    .byte $80, 0        ; FRAME <stru_158E64, $80, 0>
    .word stru_158E6C
    .byte $80, 0        ; FRAME <stru_158E6C, $80, 0>
    .word stru_158E74
    .byte $80, 0        ; FRAME <stru_158E74, $80, 0>
    .word stru_158E7C
    .byte $80, 0        ; FRAME <stru_158E7C, $80, 0>
    .word stru_158E84
    .byte $80, 0        ; FRAME <stru_158E84, $80, 0>
    .word stru_158E8C
    .byte $80, 0        ; FRAME <stru_158E8C, $80, 0>
    .word stru_158E94
    .byte $80, 0        ; FRAME <stru_158E94, $80, 0>

    .word stru_158ECC
    .byte $C0, $AA      ; FRAME <stru_158ECC, $C0, $AA>

    .word stru_158ECC
    .byte $A8, 0        ; FRAME <stru_158ECC, $A8, 0>

    .word stru_158B5C
    .byte $80, $D       ; FRAME <stru_158B5C, $80, $D>
    .word stru_158B6C
    .byte $80, $D       ; FRAME <stru_158B6C, $80, $D>
    .word stru_158B7C
    .byte $80, $D       ; FRAME <stru_158B7C, $80, $D>
    .word stru_158B8C
    .byte $80, $D       ; FRAME <stru_158B8C, $80, $D>
    .word CharNameSprite
    .byte $80, $D       ; FRAME <CharNameSprite, $80, $D>
    .word stru_158BAC
    .byte $80, $D       ; FRAME <stru_158BAC, $80, $D>
    .word stru_158BBC
    .byte $80, $D       ; FRAME <stru_158BBC, $80, $D>
    .word stru_158BCC
    .byte $80, $D       ; FRAME <stru_158BCC, $80, $D>

    .word stru_158B5C
    .byte $88, $A       ; FRAME <stru_158B5C, $88, $A>
    .word stru_158B6C
    .byte $88, $A       ; FRAME <stru_158B6C, $88, $A>
    .word stru_158B7C
    .byte $88, $A       ; FRAME <stru_158B7C, $88, $A>
    .word stru_158B8C
    .byte $88, $A       ; FRAME <stru_158B8C, $88, $A>
    .word CharNameSprite
    .byte $88, $A       ; FRAME <CharNameSprite, $88, $A>
    .word stru_158BAC
    .byte $88, $A       ; FRAME <stru_158BAC, $88, $A>
    .word stru_158BBC
    .byte $88, $A       ; FRAME <stru_158BBC, $88, $A>
    .word stru_158BCC
    .byte $88, $A       ; FRAME <stru_158BCC, $88, $A>

    .word stru_158B5C
    .byte $A8, $F       ; FRAME <stru_158B5C, $A8, $F>
    .word stru_158B6C
    .byte $A8, $F       ; FRAME <stru_158B6C, $A8, $F>
    .word stru_158B7C
    .byte $A8, $F       ; FRAME <stru_158B7C, $A8, $F>
    .word stru_158B8C
    .byte $A8, $F       ; FRAME <stru_158B8C, $A8, $F>
    .word CharNameSprite
    .byte $A8, $F       ; FRAME <CharNameSprite, $A8, $F>
    .word stru_158BAC
    .byte $A8, $F       ; FRAME <stru_158BAC, $A8, $F>
    .word stru_158BBC
    .byte $A8, $F       ; FRAME <stru_158BBC, $A8, $F>
    .word stru_158BCC
    .byte $A8, $F       ; FRAME <stru_158BCC, $A8, $F>

    .word stru_158B5C
    .byte $80, 5        ; FRAME <stru_158B5C, $80, 5>
    .word stru_158B6C
    .byte $80, 5        ; FRAME <stru_158B6C, $80, 5>
    .word stru_158B7C
    .byte $80, 5        ; FRAME <stru_158B7C, $80, 5>
    .word stru_158B8C
    .byte $80, 5        ; FRAME <stru_158B8C, $80, 5>
    .word CharNameSprite
    .byte $80, 5        ; FRAME <CharNameSprite, $80, 5>
    .word stru_158BAC
    .byte $80, 5        ; FRAME <stru_158BAC, $80, 5>
    .word stru_158BBC
    .byte $80, 5        ; FRAME <stru_158BBC, $80, 5>
    .word stru_158BCC
    .byte $80, 5        ; FRAME <stru_158BCC, $80, 5>

    .word stru_158B5C
    .byte $C0, $A       ; FRAME <stru_158B5C, $C0, $A>
    .word stru_158B6C
    .byte $C0, $A       ; FRAME <stru_158B6C, $C0, $A>
    .word stru_158B7C
    .byte $C0, $A       ; FRAME <stru_158B7C, $C0, $A>
    .word stru_158B8C
    .byte $C0, $A       ; FRAME <stru_158B8C, $C0, $A>
    .word CharNameSprite
    .byte $C0, $A       ; FRAME <CharNameSprite, $C0, $A>
    .word stru_158BAC
    .byte $C0, $A       ; FRAME <stru_158BAC, $C0, $A>
    .word stru_158BBC
    .byte $C0, $A       ; FRAME <stru_158BBC, $C0, $A>
    .word stru_158BCC
    .byte $C0, $A       ; FRAME <stru_158BCC, $C0, $A>

    .word stru_158EAC
    .byte $88, $F       ; FRAME <stru_158EAC, $88, $F>

    .word stru_158B5C
    .byte $A8, $F       ; FRAME <stru_158B5C, $A8, $F>
    .word stru_158B6C
    .byte $A8, $F       ; FRAME <stru_158B6C, $A8, $F>
    .word stru_158B7C
    .byte $A8, $F       ; FRAME <stru_158B7C, $A8, $F>
    .word stru_158B8C
    .byte $A8, $F       ; FRAME <stru_158B8C, $A8, $F>
    .word CharNameSprite
    .byte $A8, $F       ; FRAME <CharNameSprite, $A8, $F>
    .word stru_158BAC
    .byte $A8, $F       ; FRAME <stru_158BAC, $A8, $F>
    .word stru_158BBC
    .byte $A8, $F       ; FRAME <stru_158BBC, $A8, $F>
    .word stru_158BCC
    .byte $A8, $F       ; FRAME <stru_158BCC, $A8, $F>

    .word stru_158B5C
    .byte $C8, $F       ; FRAME <stru_158B5C, $C8, $F>
    .word stru_158B6C
    .byte $C8, $F       ; FRAME <stru_158B6C, $C8, $F>
    .word stru_158B7C
    .byte $C8, $F       ; FRAME <stru_158B7C, $C8, $F>
    .word stru_158B8C
    .byte $C8, $F       ; FRAME <stru_158B8C, $C8, $F>
    .word CharNameSprite
    .byte $C8, $F       ; FRAME <CharNameSprite, $C8, $F>
    .word stru_158BAC
    .byte $C8, $F       ; FRAME <stru_158BAC, $C8, $F>
    .word stru_158BBC
    .byte $C8, $F       ; FRAME <stru_158BBC, $C8, $F>
    .word stru_158BCC
    .byte $C8, $F       ; FRAME <stru_158BCC, $C8, $F>

    .word stru_158EAC
    .byte $E8, 0        ; FRAME <stru_158EAC, $E8, 0>
    .word stru_158EAC
    .byte $EA, 0        ; FRAME <stru_158EAC, $EA, 0>

    .word stru_158E9C
    .byte 0, 5          ; FRAME <stru_158E9C, 0, 5>
    .word stru_158E9C
    .byte 0, 5          ; FRAME <stru_158E9C, 0, 5>

    .word stru_158F3C
    .byte 0, 5          ; FRAME <stru_158F3C, 0, 5>
    .word stru_158F3C
    .byte 0, 5          ; FRAME <stru_158F3C, 0, 5>

    .word stru_158F5C
    .byte 0, 5          ; FRAME <stru_158F5C, 0, 5>
    .word stru_158F6C
    .byte 0, 5          ; FRAME <stru_158F6C, 0, 5>

    .word stru_158EFC
    .byte $E0, 5        ; FRAME <stru_158EFC, $E0, 5>
    .word stru_158EFC
    .byte $E0, 5        ; FRAME <stru_158EFC, $E0, 5>

    .word stru_158F0C
    .byte $E0, 5        ; FRAME <stru_158F0C, $E0, 5>
    .word stru_158F0C
    .byte $E0, 5        ; FRAME <stru_158F0C, $E0, 5>

    .word stru_158F1C
    .byte $E0, 5        ; FRAME <stru_158F1C, $E0, 5>
    .word stru_158F1C
    .byte $E0, 5        ; FRAME <stru_158F1C, $E0, 5>

    .word stru_158F2C
    .byte $E0, 5        ; FRAME <stru_158F2C, $E0, 5>
    .word stru_158F2C
    .byte $E0, 5        ; FRAME <stru_158F2C, $E0, 5>

    .word stru_158ECC
    .byte $A8, 0        ; FRAME <stru_158ECC, $A8, 0>

    .word stru_158EAC
    .byte $EC, 5        ; FRAME <stru_158EAC, $EC, 5>
    .word stru_158EAC
    .byte $EE, 5        ; FRAME <stru_158EAC, $EE, 5>

    .word stru_158EAC
    .byte $8A, $F       ; FRAME <stru_158EAC, $8A, $F>

    .word stru_158EAC
    .byte $8C, 5        ; FRAME <stru_158EAC, $8C, 5>

    .word stru_158EAC
    .byte $8E, $F       ; FRAME <stru_158EAC, $8E, $F>

    .word stru_158B5C
    .byte $C8, $A       ; FRAME <stru_158B5C, $C8, $A>
    .word stru_158B6C
    .byte $C8, $A       ; FRAME <stru_158B6C, $C8, $A>
    .word stru_158B7C
    .byte $C8, $A       ; FRAME <stru_158B7C, $C8, $A>
    .word stru_158B8C
    .byte $C8, $A       ; FRAME <stru_158B8C, $C8, $A>
    .word CharNameSprite
    .byte $C8, $A       ; FRAME <CharNameSprite, $C8, $A>
    .word stru_158BAC
    .byte $C8, $A       ; FRAME <stru_158BAC, $C8, $A>
    .word stru_158BBC
    .byte $C8, $A       ; FRAME <stru_158BBC, $C8, $A>
    .word stru_158BCC
    .byte $C8, $A       ; FRAME <stru_158BCC, $C8, $A>

    .word stru_158B5C
    .byte $C8, 5        ; FRAME <stru_158B5C, $C8, 5>
    .word stru_158B6C
    .byte $C8, 5        ; FRAME <stru_158B6C, $C8, 5>
    .word stru_158B7C
    .byte $C8, 5        ; FRAME <stru_158B7C, $C8, 5>
    .word stru_158B8C
    .byte $C8, 5        ; FRAME <stru_158B8C, $C8, 5>
    .word CharNameSprite
    .byte $C8, 5        ; FRAME <CharNameSprite, $C8, 5>
    .word stru_158BAC
    .byte $C8, 5        ; FRAME <stru_158BAC, $C8, 5>
    .word stru_158BBC
    .byte $C8, 5        ; FRAME <stru_158BBC, $C8, 5>
    .word stru_158BCC
    .byte $C8, 5        ; FRAME <stru_158BCC, $C8, 5>

    .word stru_158EAC
    .byte $8E, $A       ; FRAME <stru_158EAC, $8E, $A>

    .word stru_158EAC
    .byte $8E, 5        ; FRAME <stru_158EAC, $8E, 5>

    .word stru_158EAC
    .byte $8C, $F       ; FRAME <stru_158EAC, $8C, $F>

    .word stru_158FC4
    .byte $80, 0        ; FRAME <stru_158FC4, $80, 0>
    .word stru_158FE8
    .byte $80, 0        ; FRAME <stru_158FE8, $80, 0>

    .word stru_158FC4
    .byte $80, 0        ; FRAME <stru_158FC4, $80, 0>
    .word stru_159054
    .byte $80, 0        ; FRAME <stru_159054, $80, 0>
    .word stru_159030
    .byte $80, 0        ; FRAME <stru_159030, $80, 0>
    .word stru_15900C
    .byte $80, 0        ; FRAME <stru_15900C, $80, 0>

    .word stru_159030
    .byte $80, 0        ; FRAME <stru_159030, $80, 0>
    .word stru_159078
    .byte $80, 0        ; FRAME <stru_159078, $80, 0>

    .word stru_1592FC
    .byte $80, 5        ; FRAME <stru_1592FC, $80, 5>

    .word stru_1595CC
    .byte $80, 1        ; FRAME <stru_1595CC, $80, 1>
    .word stru_1595CC
    .byte $80, 1        ; FRAME <stru_1595CC, $80, 1>

    .word stru_1595F0
    .byte $80, 5        ; FRAME <stru_1595F0, $80, 5>
    .word stru_159600
    .byte $80, 5        ; FRAME <stru_159600, $80, 5>
    .word stru_159610
    .byte $80, 5        ; FRAME <stru_159610, $80, 5>
    .word stru_159620
    .byte $80, 5        ; FRAME <stru_159620, $80, 5>
    .word stru_159630
    .byte $80, 5        ; FRAME <stru_159630, $80, 5>
    .word stru_159640
    .byte $80, 5        ; FRAME <stru_159640, $80, 5>
    .word stru_159650
    .byte $80, 5        ; FRAME <stru_159650, $80, 5>
    .word stru_159660
    .byte $80, 5        ; FRAME <stru_159660, $80, 5>

    .word stru_1595F0
    .byte $80, 0        ; FRAME <stru_1595F0, $80, 0>
    .word stru_159600
    .byte $80, 0        ; FRAME <stru_159600, $80, 0>
    .word stru_159610
    .byte $80, 0        ; FRAME <stru_159610, $80, 0>
    .word stru_159620
    .byte $80, 0        ; FRAME <stru_159620, $80, 0>
    .word stru_159630
    .byte $80, 0        ; FRAME <stru_159630, $80, 0>
    .word stru_159640
    .byte $80, 0        ; FRAME <stru_159640, $80, 0>
    .word stru_159650
    .byte $80, 0        ; FRAME <stru_159650, $80, 0>
    .word stru_159660
    .byte $80, 0        ; FRAME <stru_159660, $80, 0>

    .word stru_1595F0
    .byte $80, $F       ; FRAME <stru_1595F0, $80, $F>
    .word stru_159600
    .byte $80, $F       ; FRAME <stru_159600, $80, $F>
    .word stru_159610
    .byte $80, $F       ; FRAME <stru_159610, $80, $F>
    .word stru_159620
    .byte $80, $F       ; FRAME <stru_159620, $80, $F>
    .word stru_159630
    .byte $80, $F       ; FRAME <stru_159630, $80, $F>
    .word stru_159640
    .byte $80, $F       ; FRAME <stru_159640, $80, $F>
    .word stru_159650
    .byte $80, $F       ; FRAME <stru_159650, $80, $F>
    .word stru_159660
    .byte $80, $F       ; FRAME <stru_159660, $80, $F>

    .word stru_159670
    .byte 0, 0          ; FRAME <stru_159670, 0, 0>
    .word stru_159670
    .byte 0, 0          ; FRAME <stru_159670, 0, 0>

    .word stru_159680
    .byte 0, 0          ; FRAME <stru_159680, 0, 0>
    .word stru_159680
    .byte 0, 0          ; FRAME <stru_159680, 0, 0>

    .word stru_159690
    .byte 0, 0          ; FRAME <stru_159690, 0, 0>
    .word stru_159690
    .byte 0, 0          ; FRAME <stru_159690, 0, 0>

    .word stru_1596A0
    .byte 0, 0          ; FRAME <stru_1596A0, 0, 0>
    .word stru_1596A0
    .byte 0, 0          ; FRAME <stru_1596A0, 0, 0>

    .word stru_158B5C
    .byte $88, 5        ; FRAME <stru_158B5C, $88, 5>
    .word stru_158B6C
    .byte $88, 5        ; FRAME <stru_158B6C, $88, 5>
    .word stru_158B7C
    .byte $88, 5        ; FRAME <stru_158B7C, $88, 5>
    .word stru_158B8C
    .byte $88, 5        ; FRAME <stru_158B8C, $88, 5>
    .word CharNameSprite
    .byte $88, 5        ; FRAME <CharNameSprite, $88, 5>
    .word stru_158BAC
    .byte $88, 5        ; FRAME <stru_158BAC, $88, 5>
    .word stru_158BBC
    .byte $88, 5        ; FRAME <stru_158BBC, $88, 5>
    .word stru_158BCC
    .byte $88, 5        ; FRAME <stru_158BCC, $88, 5>

    .word stru_158EAC
    .byte $C6, $F       ; FRAME <stru_158EAC, $C6, $F>

    .word stru_158EAC
    .byte $C6, $15      ; FRAME <stru_158EAC, $C6, $15>

    .word stru_1591BC
    .byte $80, $55      ; FRAME <stru_1591BC, $80, $55>
    .word stru_1591E0
    .byte $80, $55      ; FRAME <stru_1591E0, $80, $55>
    .word stru_159204
    .byte $80, $55      ; FRAME <stru_159204, $80, $55>
    .word stru_159228
    .byte $80, $55      ; FRAME <stru_159228, $80, $55>
    .word stru_15924C
    .byte $80, $55      ; FRAME <stru_15924C, $80, $55>
    .word stru_159270
    .byte $80, $55      ; FRAME <stru_159270, $80, $55>
    .word stru_159294
    .byte $80, $55      ; FRAME <stru_159294, $80, $55>
    .word stru_1592B8
    .byte $80, $55      ; FRAME <stru_1592B8, $80, $55>

    .word stru_15909C
    .byte $E0, 0        ; FRAME <stru_15909C, $E0, 0>
    .word stru_1590C0
    .byte $E0, 0        ; FRAME <stru_1590C0, $E0, 0>
    .word stru_1590E4
    .byte $E0, 0        ; FRAME <stru_1590E4, $E0, 0>
    .word stru_159108
    .byte $E0, 0        ; FRAME <stru_159108, $E0, 0>
    .word stru_15912C
    .byte $E0, 0        ; FRAME <stru_15912C, $E0, 0>
    .word stru_159150
    .byte $E0, 0        ; FRAME <stru_159150, $E0, 0>
    .word stru_159174
    .byte $E0, 0        ; FRAME <stru_159174, $E0, 0>
    .word stru_159198
    .byte $E0, 0        ; FRAME <stru_159198, $E0, 0>

    .word stru_15909C
    .byte $A0, $FF      ; FRAME <stru_15909C, $A0, $FF>
    .word stru_1590C0
    .byte $A0, $FF      ; FRAME <stru_1590C0, $A0, $FF>
    .word stru_1590E4
    .byte $A0, $FF      ; FRAME <stru_1590E4, $A0, $FF>
    .word stru_159108
    .byte $A0, $FF      ; FRAME <stru_159108, $A0, $FF>
    .word stru_15912C
    .byte $A0, $FF      ; FRAME <stru_15912C, $A0, $FF>
    .word stru_159150
    .byte $A0, $FF      ; FRAME <stru_159150, $A0, $FF>
    .word stru_159174
    .byte $A0, $FF      ; FRAME <stru_159174, $A0, $FF>
    .word stru_159198
    .byte $A0, $FF      ; FRAME <stru_159198, $A0, $FF>

stru_158B5C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13>
stru_158B6C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4   ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5   ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12>
stru_158B7C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14>
stru_158B8C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16>
CharNameSprite:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2           ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3           ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10             ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11             ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11>
stru_158BAC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2           ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3           ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10>
stru_158BBC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6           ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7           ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14             ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15             ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15>
stru_158BCC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6           ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7           ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16             ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17             ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17>
stru_158BDC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4           ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5           ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12             ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13             ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13>
stru_158BEC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4           ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5           ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13  ; TILE <$F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13>
    .byte $17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12 ; TILE <$17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12>
stru_158BFC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14>
stru_158C0C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16>
stru_158C1C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11>
stru_158C2C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11  ; TILE <$F, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11>
    .byte $17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$17, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10>
stru_158C3C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14          ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15          ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15>
stru_158C4C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17>
stru_158C5C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $28         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $28>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29>
stru_158C6C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28>
stru_158C7C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61 ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $69     ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $69>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $68     ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $68>
stru_158C8C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61 ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $61>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60 ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $60>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49     ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48     ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48>
stru_158C9C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 8           ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 8>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 9           ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 9>
stru_158CAC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
stru_158CBC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $48         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $48>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $49         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $49>
stru_158CCC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $68         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $68>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $69         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $69>
stru_158CDC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13>
stru_158CEC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13  ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12  ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12>
stru_158CFC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14>
stru_158D0C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16>
stru_158D1C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11>
stru_158D2C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10>
stru_158D3C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15>
stru_158D4C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17>
stru_158D5C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $13>
stru_158D6C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12>
stru_158D7C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14>
stru_158D8C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16>
stru_158D9C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $11>
stru_158DAC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11 ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10>
stru_158DBC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15>
stru_158DCC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17>
stru_158DDC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $14>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $15>
stru_158DEC:
    .byte $F, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3        ; TILE <$F, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3>
    .byte $17, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2       ; TILE <$17, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2>
    .byte $F, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15          ; TILE <$F, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15>
    .byte $17, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14         ; TILE <$17, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $14>
stru_158DFC:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16>
stru_158E0C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7           ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6           ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6>
stru_158E1C:
    .byte $11, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$11, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $19, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$19, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $11, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $10         ; TILE <$11, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $10>
    .byte $19, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $11         ; TILE <$19, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $11>
stru_158E2C:
    .byte $F, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1    ; TILE <$F, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1>
    .byte $17, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0   ; TILE <$17, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0>
    .byte $F, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $12      ; TILE <$F, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $12>
    .byte $17, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $13     ; TILE <$17, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $13>
stru_158E3C:
    .byte $10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$10, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5       ; TILE <$18, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16         ; TILE <$10, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $16>
    .byte $18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17         ; TILE <$18, $27, COLOR_1|TILE_OFFSET|FOREGROUND, $17>
stru_158E4C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 6           ; TILE <$10, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 6>
    .byte $18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 7           ; TILE <$18, $28, COLOR_1|TILE_OFFSET|FOREGROUND, 7>
stru_158E5C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
stru_158E64:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8   ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20 ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20>
stru_158E6C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21 ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21>
stru_158E74:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9   ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9>
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21 ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21>
stru_158E7C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
stru_158E84:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8   ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1>
stru_158E8C:
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9   ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
stru_158E94:
    .byte $14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $1F, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9>
    .byte $14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$14, $27, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
stru_158E9C:
    .byte $14, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $81     ; TILE <$14, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $81>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_158EAC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $11, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$11, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $19, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$19, $21, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $11, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$11, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $19, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$19, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
stru_158ECC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
stru_158EDC:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
stru_158EE4:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_158EEC:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0   ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0>
stru_158EF4:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1>
stru_158EFC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
stru_158F0C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13>
stru_158F1C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15>
stru_158F2C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17>
stru_158F3C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1 ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1>
    .byte $11, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0     ; TILE <$11, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C0>
    .byte $19, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0 ; TILE <$19, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C0>
    .byte $11, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1     ; TILE <$11, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C1>
    .byte $19, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1 ; TILE <$19, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C1>
stru_158F5C:
    .byte $14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A0     ; TILE <$14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_158F6C:
    .byte $14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A1     ; TILE <$14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A1>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_158F7C:
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6C           ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6C>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6E         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6E>
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F         ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F>
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C           ; TILE <8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D         ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D>
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E         ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E>
    .byte $20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F         ; TILE <$20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F>
stru_158F9C:
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4             ; TILE <$10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5             ; TILE <$18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14         ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14>
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15         ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15>
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2           ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3           ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
stru_158FC4:
    .byte $10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A         ; TILE <$10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A>
    .byte $18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B         ; TILE <$18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B>
    .byte $20, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C         ; TILE <$20, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C>
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17         ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17>
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18         ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18>
    .byte $20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19         ; TILE <$20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19>
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27         ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27>
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28         ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28>
    .byte $20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29         ; TILE <$20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29>
stru_158FE8:
    .byte 8, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C   ; TILE <8, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C>
    .byte $10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B ; TILE <$10, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B>
    .byte $18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A ; TILE <$18, $1C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A>
    .byte 8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19   ; TILE <8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19>
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18 ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18>
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17 ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte 8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29   ; TILE <8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29>
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28 ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28>
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27 ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27>
stru_15900C:
    .byte 8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A       ; TILE <8, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A>
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2B>
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C>
    .byte 8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17       ; TILE <8, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17>
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18     ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18>
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19     ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19>
    .byte 8, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $25       ; TILE <8, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $25>
    .byte $10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $26     ; TILE <$10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $26>
    .byte $18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29     ; TILE <$18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29>
stru_159030:
    .byte $10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C     ; TILE <$10, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C>
    .byte $18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B     ; TILE <$18, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2B>
    .byte $20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A     ; TILE <$20, $24, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A>
    .byte $10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19     ; TILE <$10, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19>
    .byte $18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18     ; TILE <$18, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18>
    .byte $20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17     ; TILE <$20, $2C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte $10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29     ; TILE <$10, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29>
    .byte $18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $26     ; TILE <$18, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $26>
    .byte $20, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $25     ; TILE <$20, $34, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $25>
stru_159054:
    .byte 8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A       ; TILE <8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C>
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D       ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F>
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D       ; TILE <8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E>
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
stru_159078:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B>
    .byte $20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1A     ; TILE <$20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1A>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E>
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D     ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E>
    .byte $20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D     ; TILE <$20, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D>
stru_15909C:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19 ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $19>
stru_1590C0:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 6>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $16>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B  ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1B>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B>
stru_1590E4:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A       ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1C>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C      ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $C>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $B      ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $B>
stru_159108:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A       ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $A>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $F>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $E>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $D>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1F>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1E>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $1D>
stru_15912C:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13 ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $13>
stru_159150:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15  ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15>
stru_159174:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F>
stru_159198:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A      ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B       ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C      ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C>
stru_1591BC:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F>
stru_1591E0:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F>
stru_159204:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50     ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $43     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $43>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $53     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $53>
stru_159228:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $51>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50     ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $50>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $45>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $44>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $42     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $42>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $55>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $54>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $52     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $52>
stru_15924C:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B>
stru_159270:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B>
stru_159294:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50      ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $43      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $43>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55>
stru_1592B8:
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50      ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51     ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $42      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $42>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55>
stru_1592DC:
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
stru_1592EC:
    .byte $10, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$18, $29, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $31, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
stru_1592FC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13     ; TILE <$28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13>
    .byte $30, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14     ; TILE <$30, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22     ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22>
    .byte $28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23     ; TILE <$28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23>
    .byte $30, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $24     ; TILE <$30, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $24>
stru_159324:
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30       ; TILE <$10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30>
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31       ; TILE <$18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31>
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41>
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50     ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51     ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71>
stru_15934C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C>
stru_15935C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5C>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5C>
stru_15936C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E>
stru_15937C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4F>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4E>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5E>
stru_15938C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B>
stru_15939C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5A>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5B>
stru_1593AC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F>
stru_1593BC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4E>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4F>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5E>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5F>
stru_1593CC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
stru_1593DC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $5D>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $5D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
stru_1593EC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58>
stru_1593FC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $39>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58>
stru_15940C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40>
stru_15941C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40>
stru_15942C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
stru_15943C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39         ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $39>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
stru_15944C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
stru_15945C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C         ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4C>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F         ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
stru_15946C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58>
stru_15947C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $49>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $48>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58>
stru_15948C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40>
stru_15949C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40>
stru_1594AC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
stru_1594BC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $48>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
stru_1594CC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9>
stru_1594DC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2E>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 9>
stru_1594EC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C>
stru_1594FC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2D>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2C>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3D>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $3C>
stru_15950C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
stru_15951C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2A>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
stru_15952C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D>
stru_15953C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2C>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3C>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $3D>
stru_15954C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
stru_15955C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4D>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $4D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $2F>
stru_15956C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58>
stru_15957C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $29>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $59>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $58>
stru_15958C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40>
stru_15959C:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $41>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $40>
stru_1595AC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
stru_1595BC:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $29>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $58>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $59>
stru_1595CC:
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D       ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E      ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $E>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F      ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $F>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1E>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1F>
    .byte $C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D      ; TILE <$C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2D>
    .byte $14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$14, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2E>
    .byte $1C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F     ; TILE <$1C, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
stru_1595F0:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159600:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159610:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159620:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159630:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159640:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 4>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 3>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159650:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159660:
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
stru_159670:
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $86     ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $86>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85     ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85       ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $80         ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $80>
stru_159680:
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|%11000000, $85       ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|11000000b, $85>
    .byte $20, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85 ; TILE <$20, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85>
stru_159690:
    .byte 8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85       ; TILE <8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85>
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86 ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $86>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85>
stru_1596A0:
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85     ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85       ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, $85>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $85>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $85>
EarthAnim:
    .word EarthSprite
    .byte 4, 0          ; FRAME <EarthSprite, 4, 0>
    .word EarthSprite
    .byte 8, 0          ; FRAME <EarthSprite, 8, 0>
    .word EarthSprite
    .byte $C, 0         ; FRAME <EarthSprite, $C, 0>
    .word EarthSprite
    .byte $40, 0        ; FRAME <EarthSprite, $40, 0>
    .word EarthSprite
    .byte $44, 0        ; FRAME <EarthSprite, $44, 0>
    .word EarthSprite
    .byte $48, 0        ; FRAME <EarthSprite, $48, 0>
    .word EarthSprite
    .byte $4C, 0        ; FRAME <EarthSprite, $4C, 0>
EarthSprite:
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0       ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2     ; TILE <$10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3     ; TILE <$18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte 0, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10     ; TILE <0, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte 8, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <8, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12   ; TILE <$10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13   ; TILE <$18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13>
    .byte 0, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20   ; TILE <0, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte 8, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21   ; TILE <8, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22 ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22>
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23 ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23>
    .byte 0, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30   ; TILE <0, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30>
    .byte 8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31   ; TILE <8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31>
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $32 ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $32>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $33 ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $33>

    .word stru_159718
    .byte $6D, 0            ; FRAME <stru_159718, $6D, 0>
    .word stru_159718
    .byte $6E, 0            ; FRAME <stru_159718, $6E, 0>
    .word stru_159730
    .byte 0, 0              ; FRAME <stru_159730, 0, 0>
stru_159718:
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0       ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0>
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0       ; TILE <8, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0>
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$10, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0>
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$18, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0>
    .byte $20, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$20, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0>
    .byte $28, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0     ; TILE <$28, 0, TRANSPARENT|TILE_OFFSET|BACKGROUND, 0>
stru_159730:
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F     ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6F>
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D     ; TILE <8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D>
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E   ; TILE <$10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E>
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F   ; TILE <$18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F>
    .byte $80, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$80, $97, TRANSPARENT|FOREGROUND, $39>
    .byte $90, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$90, $97, TRANSPARENT|FOREGROUND, $39>
    .byte $A0, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$A0, $97, TRANSPARENT|FOREGROUND, $39>
    .byte $B4, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$B4, $97, TRANSPARENT|FOREGROUND, $39>
    .byte $C4, $97, TRANSPARENT|FOREGROUND, $39     ; TILE <$C4, $97, TRANSPARENT|FOREGROUND, $39>
    .byte 4, $98, TRANSPARENT|FOREGROUND, $39       ; TILE <4, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $64, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$64, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $88, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$88, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $A4, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$A4, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $B8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$B8, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $C8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$C8, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $D8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$D8, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $F4, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$F4, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $F8, $98, TRANSPARENT|FOREGROUND, $39     ; TILE <$F8, $98, TRANSPARENT|FOREGROUND, $39>
    .byte $18, $99, TRANSPARENT|FOREGROUND, $39     ; TILE <$18, $99, TRANSPARENT|FOREGROUND, $39>
    .byte $A0, $99, TRANSPARENT|FOREGROUND, $39     ; TILE <$A0, $99, TRANSPARENT|FOREGROUND, $39>
    .byte $F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20   ; TILE <$F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21  ; TILE <$17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21  ; TILE <$20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21>
    .byte $28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20  ; TILE <$28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20>
    .byte $F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30   ; TILE <$F, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30>
    .byte $17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31  ; TILE <$17, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31>
    .byte $20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $31  ; TILE <$20, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $31>
    .byte $28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $30  ; TILE <$28, $C, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $30>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3   ; TILE <$40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4   ; TILE <$48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14 ; TILE <$48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14>
    .byte $28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29     ; TILE <$28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $29>
    .byte $30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $2A>
    .byte $28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $39     ; TILE <$28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $39>
    .byte $30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $3A     ; TILE <$30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $3A>
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7   ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8   ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17 ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28 ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37 ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37>
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38 ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38>
    .byte $28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2B     ; TILE <$28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2B>
    .byte $30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2C     ; TILE <$30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $2C>
    .byte $28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3B     ; TILE <$28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3B>
    .byte $30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3C     ; TILE <$30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $3C>
    .byte $28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29     ; TILE <$28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29>
    .byte $30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A>
    .byte $28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39     ; TILE <$28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39>
    .byte $30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A     ; TILE <$30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A>
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7   ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 7>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8   ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 8>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17 ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $17>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18 ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $18>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $27>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28 ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $28>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37 ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $37>
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38 ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $38>
    .byte $40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8   ; TILE <$40, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 8>
    .byte $48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7   ; TILE <$48, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 7>
    .byte $40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18 ; TILE <$40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $18>
    .byte $48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17 ; TILE <$48, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $17>
    .byte $40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28 ; TILE <$40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $28>
    .byte $48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27 ; TILE <$48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $27>
    .byte $40, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38 ; TILE <$40, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $38>
    .byte $48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $37 ; TILE <$48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $37>
    .byte $28, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2D     ; TILE <$28, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2D>
    .byte $30, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2E     ; TILE <$30, $16, COLOR_1|TILE_OFFSET|FOREGROUND, $2E>
    .byte $28, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3D     ; TILE <$28, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3D>
    .byte $30, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3E     ; TILE <$30, $1E, COLOR_1|TILE_OFFSET|FOREGROUND, $3E>
    .byte $28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29     ; TILE <$28, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $29>
    .byte $30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A     ; TILE <$30, $28, COLOR_2|TILE_OFFSET|FOREGROUND, $2A>
    .byte $28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39     ; TILE <$28, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $39>
    .byte $30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A     ; TILE <$30, $30, COLOR_2|TILE_OFFSET|FOREGROUND, $3A>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1D>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C  ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $C>
    .byte $18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D  ; TILE <$18, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $D>
    .byte $10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C ; TILE <$10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1C>
    .byte $18, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F ; TILE <$18, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $2F>
    .byte $28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $E      ; TILE <$28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $E>
    .byte $30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $F      ; TILE <$30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $F>
    .byte $28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1E     ; TILE <$28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1E>
    .byte $30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1F     ; TILE <$30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $1F>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10 ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2   ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13 ; TILE <$28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13>
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19 ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $19>
    .byte $28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A ; TILE <$28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1A>
    .byte $10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $40     ; TILE <$10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $40>
    .byte $20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $41     ; TILE <$20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $41>
    .byte $18, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $42     ; TILE <$18, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $42>
    .byte $20, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $43     ; TILE <$20, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $43>
    .byte $28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $44     ; TILE <$28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $44>
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9   ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, 9>
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A  ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $A>
    .byte $28, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B  ; TILE <$28, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $B>
    .byte $28, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B ; TILE <$28, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $1B>
    .byte $28, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $45     ; TILE <$28, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $45>
    .byte $30, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $46     ; TILE <$30, $2F, COLOR_2|TILE_OFFSET|FOREGROUND, $46>
    .byte $28, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $47     ; TILE <$28, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $47>
    .byte $30, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $48     ; TILE <$30, $37, COLOR_2|TILE_OFFSET|FOREGROUND, $48>
    .byte $38, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49 ; TILE <$38, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $49>
    .byte $40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A ; TILE <$40, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4A>
    .byte $40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B ; TILE <$40, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $4B>
    .byte $18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4C     ; TILE <$18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4C>
    .byte $20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4D     ; TILE <$20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $4D>
    .byte $18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $E      ; TILE <$18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $E>
    .byte $20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $4F     ; TILE <$20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $4F>
    .byte $20, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22 ; TILE <$20, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22>
    .byte $10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $23     ; TILE <$10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $23>
    .byte $18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $24     ; TILE <$18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $24>
    .byte $20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $25     ; TILE <$20, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $25>
    .byte $28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $26     ; TILE <$28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $26>
    .byte $10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $33     ; TILE <$10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $33>
    .byte $18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $34     ; TILE <$18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $34>
    .byte $20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $35     ; TILE <$20, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $35>
    .byte $28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $36     ; TILE <$28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $36>
    .byte $28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $58     ; TILE <$28, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $58>
    .byte $30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $59     ; TILE <$30, $10, COLOR_1|TILE_OFFSET|FOREGROUND, $59>
    .byte $28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $68     ; TILE <$28, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $68>
    .byte $30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $69     ; TILE <$30, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $69>
    .byte $28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $78     ; TILE <$28, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $78>
    .byte $30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $79     ; TILE <$30, $20, COLOR_1|TILE_OFFSET|FOREGROUND, $79>
    .byte $28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5A     ; TILE <$28, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5A>
    .byte $30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5B     ; TILE <$30, $28, COLOR_1|TILE_OFFSET|FOREGROUND, $5B>
    .byte $28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6A     ; TILE <$28, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6A>
    .byte $30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6B     ; TILE <$30, $30, COLOR_1|TILE_OFFSET|FOREGROUND, $6B>
    .byte $28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7A     ; TILE <$28, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7A>
    .byte $30, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7B     ; TILE <$30, $38, COLOR_1|TILE_OFFSET|FOREGROUND, $7B>
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53   ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54 ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54>
    .byte 0, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50   ; TILE <0, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50>
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51   ; TILE <8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52 ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52>
    .byte 0, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60   ; TILE <0, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $60>
    .byte 8, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61   ; TILE <8, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $61>
    .byte $10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $62 ; TILE <$10, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $62>
    .byte 0, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70   ; TILE <0, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $70>
    .byte 8, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71   ; TILE <8, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $71>
    .byte $10, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $72 ; TILE <$10, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $72>
    .byte $48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $63 ; TILE <$48, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $63>
    .byte $50, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $64 ; TILE <$50, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $64>
    .byte $48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55 ; TILE <$48, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55>
    .byte $50, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $56 ; TILE <$50, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $56>
    .byte $58, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $57 ; TILE <$58, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $57>
    .byte $48, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $65 ; TILE <$48, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $65>
    .byte $50, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $66 ; TILE <$50, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $66>
    .byte $58, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $67 ; TILE <$58, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $67>
    .byte $48, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $75 ; TILE <$48, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $75>
    .byte $50, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $76 ; TILE <$50, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $76>
    .byte $58, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $77 ; TILE <$58, $40, TRANSPARENT|TILE_OFFSET|FOREGROUND, $77>
    .byte $10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 5       ; TILE <$10, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 5>
    .byte $18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 6       ; TILE <$18, $10, COLOR_1|TILE_OFFSET|FOREGROUND, 6>
    .byte $10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $15     ; TILE <$10, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $15>
    .byte $18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $16     ; TILE <$18, $18, COLOR_1|TILE_OFFSET|FOREGROUND, $16>
    .byte $30, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6   ; TILE <$30, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 6>
    .byte $38, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5   ; TILE <$38, $10, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 5>
    .byte $30, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16 ; TILE <$30, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $16>
    .byte $38, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15 ; TILE <$38, $18, COLOR_1|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $15>
    .byte $C8, $99, TRANSPARENT|FOREGROUND, 1       ; TILE <$C8, $99, TRANSPARENT|FOREGROUND, 1>
    .byte $E0, $99, TRANSPARENT|FOREGROUND, 1       ; TILE <$E0, $99, TRANSPARENT|FOREGROUND, 1>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B>
    .byte $20, $20, TRANSPARENT|FOREGROUND, 0       ; TILE <$20, $20, TRANSPARENT|FOREGROUND, 0>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7A     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7A>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7B     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7B>
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C     ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7C>
    .byte 8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D       ; TILE <8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6D>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6A>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $6B>
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D       ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7D>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7E>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $7F>
    .byte 4, $9C, TRANSPARENT|%11000|BACKGROUND|%11000000, 0    ; TILE <4, $9C, TRANSPARENT|11000b|BACKGROUND|11000000b, 0>
    .byte $AC, $8E, COLOR_2|%1000|BACKGROUND|%11000000, 0       ; TILE <$AC, $8E, COLOR_2|1000b|BACKGROUND|11000000b, 0>
    .byte $5C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$5C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $6C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$6C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $7C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$7C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $8C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$8C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $9C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$9C, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $AC, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$AC, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $BC, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$BC, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $CC, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6   ; TILE <$CC, $8B, TRANSPARENT|BACKGROUND|HORIZONTAL_FLIP, 6>
    .byte $AC, $8E, TRANSPARENT|%1000|FOREGROUND, 1     ; TILE <$AC, $8E, TRANSPARENT|1000b|FOREGROUND, 1>
    .byte $AC, $8E, TRANSPARENT|%1000|BACKGROUND, 1     ; TILE <$AC, $8E, TRANSPARENT|1000b|BACKGROUND, 1>
    .byte $AC, $8E, COLOR_2|%1000|FOREGROUND, $D        ; TILE <$AC, $8E, COLOR_2|1000b|FOREGROUND, $D>
    .byte $AC, $8E, COLOR_2|%1000|BACKGROUND, $D        ; TILE <$AC, $8E, COLOR_2|1000b|BACKGROUND, $D>
    .byte $AC, $8E, TRANSPARENT|%1100|FOREGROUND, 7     ; TILE <$AC, $8E, TRANSPARENT|1100b|FOREGROUND, 7>
    .byte $AC, $8E, TRANSPARENT|%1100|BACKGROUND, 7     ; TILE <$AC, $8E, TRANSPARENT|1100b|BACKGROUND, 7>
    .byte $AC, $8E, COLOR_2|%1100|FOREGROUND, 7         ; TILE <$AC, $8E, COLOR_2|1100b|FOREGROUND, 7>
    .byte $AC, $8E, COLOR_2|%1100|BACKGROUND, 7         ; TILE <$AC, $8E, COLOR_2|1100b|BACKGROUND, 7>
    .byte $AC, $8E, TRANSPARENT|%1000|FOREGROUND|HORIZONTAL_FLIP, 5     ; TILE <$AC, $8E, TRANSPARENT|1000b|FOREGROUND|HORIZONTAL_FLIP, 5>
    .byte $AC, $8E, TRANSPARENT|%1000|BACKGROUND|HORIZONTAL_FLIP, 5     ; TILE <$AC, $8E, TRANSPARENT|1000b|BACKGROUND|HORIZONTAL_FLIP, 5>
    .byte $AC, $8E, COLOR_2|%1000|FOREGROUND|HORIZONTAL_FLIP, $A        ; TILE <$AC, $8E, COLOR_2|1000b|FOREGROUND|HORIZONTAL_FLIP, $A>
    .byte $AC, $8E, COLOR_2|%1000|BACKGROUND|HORIZONTAL_FLIP, $A        ; TILE <$AC, $8E, COLOR_2|1000b|BACKGROUND|HORIZONTAL_FLIP, $A>
    .byte $AC, $8E, COLOR_2|%1100|FOREGROUND|HORIZONTAL_FLIP, 3         ; TILE <$AC, $8E, COLOR_2|1100b|FOREGROUND|HORIZONTAL_FLIP, 3>
    .byte $AC, $8E, COLOR_2|%1100|BACKGROUND|HORIZONTAL_FLIP, 3         ; TILE <$AC, $8E, COLOR_2|1100b|BACKGROUND|HORIZONTAL_FLIP, 3>
    .byte $AC, $8E, TRANSPARENT|%1100|FOREGROUND|HORIZONTAL_FLIP, 2     ; TILE <$AC, $8E, TRANSPARENT|1100b|FOREGROUND|HORIZONTAL_FLIP, 2>
    .byte $DC, $8E, TRANSPARENT|%1100|BACKGROUND|HORIZONTAL_FLIP, 1     ; TILE <$DC, $8E, TRANSPARENT|1100b|BACKGROUND|HORIZONTAL_FLIP, 1>
    .byte $5C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$5C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $6C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$6C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $7C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$7C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $8C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$8C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $9C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$9C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $AC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$AC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $BC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$BC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $CC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A            ; TILE <$CC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $A>
    .byte $5C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$5C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $6C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$6C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $7C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$7C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $8C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$8C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $9C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$9C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $AC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$AC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $BC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$BC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $CC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 0       ; TILE <$CC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $AC, $8E, COLOR_2|%100|BACKGROUND|VERTICAL_FLIP, 2            ; TILE <$AC, $8E, COLOR_2|100b|BACKGROUND|VERTICAL_FLIP, 2>
    .byte $AC, $8E, COLOR_2|%100|FOREGROUND|%11000000, 2                ; TILE <$AC, $8E, COLOR_2|100b|FOREGROUND|11000000b, 2>
    .byte $AC, $8E, COLOR_2|%1100|BACKGROUND|VERTICAL_FLIP, 1           ; TILE <$AC, $8E, COLOR_2|1100b|BACKGROUND|VERTICAL_FLIP, 1>
    .byte $14, $9C, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 0             ; TILE <$14, $9C, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 0>
    .byte $B4, $9C, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 1       ; TILE <$B4, $9C, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 1>
    .byte $B4, $9C, TRANSPARENT|%11000|FOREGROUND|%11000000, 1          ; TILE <$B4, $9C, TRANSPARENT|11000b|FOREGROUND|11000000b, 1>
    .byte $D8, $9C, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 1       ; TILE <$D8, $9C, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 1>
    .byte $D8, $9C, TRANSPARENT|%11000|FOREGROUND|%11000000, 1          ; TILE <$D8, $9C, TRANSPARENT|11000b|FOREGROUND|11000000b, 1>
    .byte $B4, $9C, COLOR_3|%1000|BACKGROUND|VERTICAL_FLIP, 1           ; TILE <$B4, $9C, COLOR_3|1000b|BACKGROUND|VERTICAL_FLIP, 1>
    .byte $5C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$5C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $6C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$6C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $7C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$7C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $8C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$8C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $9C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$9C, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $AC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$AC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $BC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$BC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $CC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F            ; TILE <$CC, $8B, TRANSPARENT|FOREGROUND|VERTICAL_FLIP, $F>
    .byte $5C, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$5C, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $6C, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$6C, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $7C, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$7C, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $8C, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$8C, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $9C, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$9C, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $AC, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$AC, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $BC, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$BC, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $CC, $8B, TRANSPARENT|FOREGROUND|%11000000, $F        ; TILE <$CC, $8B, TRANSPARENT|FOREGROUND|11000000b, $F>
    .byte $5C, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$5C, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $6C, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$6C, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $7C, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$7C, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $8C, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$8C, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $9C, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$9C, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $AC, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$AC, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $BC, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$BC, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $CC, $8B, TRANSPARENT|BACKGROUND|%11000000, $F        ; TILE <$CC, $8B, TRANSPARENT|BACKGROUND|11000000b, $F>
    .byte $5C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$5C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $6C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$6C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $7C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$7C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $8C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$8C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $9C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$9C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $AC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$AC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $BC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$BC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $CC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, 5   ; TILE <$CC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, 5>
    .byte $5C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$5C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $6C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$6C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $7C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$7C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $8C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$8C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $9C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$9C, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $AC, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$AC, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $BC, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$BC, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $CC, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6         ; TILE <$CC, $8B, TRANSPARENT|BACKGROUND|VERTICAL_FLIP, 6>
    .byte $5C, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$5C, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $6C, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$6C, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $7C, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$7C, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $8C, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$8C, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $9C, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$9C, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $AC, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$AC, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $BC, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$BC, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $CC, $8B, TRANSPARENT|%1000|BACKGROUND|VERTICAL_FLIP, 5   ; TILE <$CC, $8B, TRANSPARENT|1000b|BACKGROUND|VERTICAL_FLIP, 5>
    .byte $5C, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$5C, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $6C, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$6C, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $7C, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$7C, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $8C, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$8C, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $9C, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$9C, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $AC, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$AC, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $BC, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$BC, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $CC, $8B, TRANSPARENT|%1000|FOREGROUND|%11000000, $A      ; TILE <$CC, $8B, TRANSPARENT|1000b|FOREGROUND|11000000b, $A>
    .byte $5C, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$5C, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $6C, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$6C, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $7C, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$7C, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $8C, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$8C, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $9C, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$9C, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $AC, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$AC, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $BC, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$BC, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $CC, $8B, TRANSPARENT|%1000|BACKGROUND|%11000000, $F      ; TILE <$CC, $8B, TRANSPARENT|1000b|BACKGROUND|11000000b, $F>
    .byte $DC, $8D, TRANSPARENT|BACKGROUND|%11000000, $15           ; TILE <$DC, $8D, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $EC, $8D, TRANSPARENT|BACKGROUND|%11000000, $15           ; TILE <$EC, $8D, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $FC, $8D, TRANSPARENT|BACKGROUND|%11000000, $15           ; TILE <$FC, $8D, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $C, $8E, TRANSPARENT|BACKGROUND|%11000000, $15            ; TILE <$C, $8E, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $1C, $8E, TRANSPARENT|BACKGROUND|%11000000, $15           ; TILE <$1C, $8E, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $2C, $8E, TRANSPARENT|BACKGROUND|%11000000, $15           ; TILE <$2C, $8E, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $3C, $8E, TRANSPARENT|BACKGROUND|%11000000, $15           ; TILE <$3C, $8E, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $4C, $8E, TRANSPARENT|BACKGROUND|%11000000, $15           ; TILE <$4C, $8E, TRANSPARENT|BACKGROUND|11000000b, $15>
    .byte $5C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$5C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $6C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$6C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $7C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$7C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $8C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$8C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $9C, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$9C, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $AC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$AC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $BC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$BC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $CC, $8B, TRANSPARENT|%1000|FOREGROUND|VERTICAL_FLIP, $19 ; TILE <$CC, $8B, TRANSPARENT|1000b|FOREGROUND|VERTICAL_FLIP, $19>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0   ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, 0     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|VERTICAL_FLIP, 0>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|%11000000, 0         ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|11000000b, 0>
    .byte 0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0           ; TILE <0, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte 8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1           ; TILE <8, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2         ; TILE <$10, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3         ; TILE <$18, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 3>
    .byte $20, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4         ; TILE <$20, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 4>
    .byte $28, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5         ; TILE <$28, 0, TRANSPARENT|TILE_OFFSET|FOREGROUND, 5>
    .byte 0, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10         ; TILE <0, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte 8, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11         ; TILE <8, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12       ; TILE <$10, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13       ; TILE <$18, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $13>
    .byte $20, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14       ; TILE <$20, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $14>
    .byte $28, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15       ; TILE <$28, 8, TRANSPARENT|TILE_OFFSET|FOREGROUND, $15>
    .byte 0, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20       ; TILE <0, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte 8, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21       ; TILE <8, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22     ; TILE <$10, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22>
    .byte $18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23     ; TILE <$18, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $23>
    .byte $20, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $24     ; TILE <$20, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $24>
    .byte $28, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $25     ; TILE <$28, $10, TRANSPARENT|TILE_OFFSET|FOREGROUND, $25>
    .byte 0, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30       ; TILE <0, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $30>
    .byte 8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31       ; TILE <8, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $31>
    .byte $10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $32     ; TILE <$10, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $32>
    .byte $18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $33     ; TILE <$18, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $33>
    .byte $20, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $34     ; TILE <$20, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $34>
    .byte $28, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $35     ; TILE <$28, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, $35>
    .byte 0, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40       ; TILE <0, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $40>
    .byte 8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41       ; TILE <8, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $41>
    .byte $10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $42     ; TILE <$10, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $42>
    .byte $18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $43     ; TILE <$18, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $43>
    .byte $20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44     ; TILE <$20, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $44>
    .byte $28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45     ; TILE <$28, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $45>
    .byte 0, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50       ; TILE <0, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $50>
    .byte 8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51       ; TILE <8, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $51>
    .byte $10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52     ; TILE <$10, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $52>
    .byte $18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53     ; TILE <$18, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $53>
    .byte $20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54     ; TILE <$20, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $54>
    .byte $28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55     ; TILE <$28, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $55>
    .byte 8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $46       ; TILE <8, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $46>
    .byte $10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $47     ; TILE <$10, $30, TRANSPARENT|TILE_OFFSET|FOREGROUND, $47>
    .byte 0, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $56       ; TILE <0, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $56>
    .byte 8, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $57       ; TILE <8, $38, TRANSPARENT|TILE_OFFSET|FOREGROUND, $57>
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0        ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 0>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1       ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 1>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2       ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND, 2>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10      ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $10>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11     ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $11>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12     ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND, $12>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20      ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $20>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21     ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $21>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22     ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND, $22>
    .byte $C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2    ; TILE <$C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 2>
    .byte $14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1   ; TILE <$14, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 1>
    .byte $1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0   ; TILE <$1C, $18, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, 0>
    .byte $C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12  ; TILE <$C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $12>
    .byte $14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11 ; TILE <$14, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $11>
    .byte $1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10 ; TILE <$1C, $20, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $10>
    .byte $C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $22  ; TILE <$C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $22>
    .byte $14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21 ; TILE <$14, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $21>
    .byte $1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20 ; TILE <$1C, $28, TRANSPARENT|TILE_OFFSET|FOREGROUND|HORIZONTAL_FLIP, $20>

; end of 'BANK15'