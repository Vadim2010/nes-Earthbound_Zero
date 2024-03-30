.linecont       +               ; Allow line continuations
.feature        c_comments      /* allow this style of comment */

.segment "IMG"
.incbin "../chr/image.chr"

.segment "GAMEMAP"
.incbin "../data/map.bin"

.segment "DATA1"
.incbin "../data/data1.bin"

.include "../banks/bank13.asm"
;.include "../banks/bank14.asm"

;.segment "DATA2"
;.incbin "../data/data2.bin"

;.include "../banks/bank17.asm"
;.include "../banks/bank18.asm"
;.include "../banks/bank19.asm"
;.include "../banks/bank1A.asm"
;.include "../banks/bank1B.asm"
;.include "../banks/bank1C.asm"

;.segment "DATA3"
;.incbin "../data/data3.bin"

;.include "../banks/bank1E.asm"
;.include "../banks/bank1F.asm"
