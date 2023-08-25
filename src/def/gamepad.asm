;======================================================================================
; GAMEPAD DATA FLAGS
; 76543210
; ||||||||
; |||||||+--> A Button
; ||||||+---> B Button
; |||||+----> SELECT Button
; ||||+-----> START Button
; |||+------> UP Direction
; ||+-------> DOWN Direction
; |+--------> LEFT Direction
; +---------> RIGHT Direction
;======================================================================================

; These are the bit flags the are used by the vars
.define PRESS_A        #%00000001
.define PRESS_B        #%00000010
.define PRESS_SELECT   #%00000100
.define PRESS_START    #%00001000
.define PRESS_UP       #%00010000
.define PRESS_DOWN     #%00100000
.define PRESS_LEFT     #%01000000
.define PRESS_RIGHT    #%10000000

GAMEPAD_REGISTER0 = $4016
GAMEPAD_REGISTER1 = $4017
