.include "macros.inc"
.include "palette.inc"
.include "..\res\framecomm.inc"
.include "..\res\structures.inc"

.segment "BANK_4"

; ===========================================================================

; Segment type: Pure code
;.segment BANK14

                .byte $1F, 0, 0, 0, 0, 0, 0
                .byte 2, $16, 2, $17, $1F, $1C, $17, $1F, $1F, $1F, $1C
                .byte $1B, $1F, $1F, $1D, 8, $1F, 6, $13, 4, 6, 2, 0, $10
                .byte 6, 6, $15, $17, $1D, 4, 8, 1, 2, $1F, 0, $17, 6
                .byte $15, 4, $19, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6, $17
                .byte 6, $15, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, $1F, 2, $16, 2, $17, $1F, $1C, $17, $1F
                .byte $1F, $1C, $1B, $1F, $1F, $1D, 8, 2, 4, $13, $1E
                .byte $17, $1F, $16, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6
                .byte $1B, $1C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $16, $19, 6, 9, 6, $24
                .byte $22, $1D, $1B, $1E, $17, $28, $21, $24, $22, $22
                .byte $24, $21, $28, 9, 9, 6, 6, $17, $1E, $1B, $1D, $17
                .byte $1E, $1B, $1D, $1F, $17, $1F, $1F, $1F, $1F, $15
                .byte 2, $15, $1F, $C, $17, 6, 6, 4, 0, 1, 9, 9, $13, $1F
                .byte $1C, 0, 0, 0, 0, 0, $1F, $1C, $1D, $1F, $1B, $1F
                .byte $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $17
                .byte $1F, $1F, $1C, $13, $1F, $1F, $1F, $13, $1F, $1C
                .byte $13, $1F, $1F, $1D, $1C, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $13, $1F
                .byte $1F, $1F, 0, $1F, 6, 4, $1F, $13, $17, $13, $1F
                .byte $1F, $1F, $1F, $1F, 6, $1F, $1F, $1F, 6, $15, 4
                .byte 8, 1, 2, 0, $10, $1F, 0, 0, $1F, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, $1F, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, $17, $1F, $1F, $1C, $13, $1F
                .byte $1F, $1F, $13, $1F, $1C, $13, $1F, $1F, $1D, $1C
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $19, 0, 0, $1F
                .byte $1D, 8, 1, $19, $19, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $19, $13, $1F, $1F, $1F, $19, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $19, $19, $11, $13, $1F
                .byte $1F, $17, $1F, $1F, $1F, $1F, $13, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, 6, $1F, 6, 4, $19, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1D, $13, $1F, 6, $1F, 0, 0, 0, 0, $1F, 0, $10
                .byte 0, 0, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte $17, $1F, $1F, $1C, $13, $1F, $1F, $1F, $13, $1F
                .byte $1C, $13, $1F, $1F, $1D, $1C, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, $1F
                .byte 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .byte $1F, $16, $17, $1F, $13, $1F, $1F, $1F, $1F, $13
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $16, $16, $1B, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $16
                .byte $19, 6, $17, 2, $15, $17, 0, 2, $17, 2, $15, $17
                .byte 0, 2, $15, $1F, 2, $17, $13, 0, $1C, $1F, $1F, $17
                .byte $15, 6, 4, 2, 8, $1E, $1F, $17, $1D, 6, 4, $15, $1F
                .byte $1F, $1F, $1F, $1F, 6, $1E, 6, $22, $28, $17, $1E
                .byte $28, $1E, $1F, $28, $28, 9, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, $1F, $17, $1D, $1F, $1F, $1F, $1F, $16, $1F
                .byte 0, $1F, 0, $16, $1F, $16, $16, $16, $16, $16, $16
                .byte $16, 0, 0, 9, $13, $1C, $13, $1C, $13, $1C, $1D
                .byte 0, 0, $1F, 6, $1F, 0, 0, 0, 0, 0, 0, $16, $19, 6
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F
                .byte 0, 0, $1F, $1E, 0, 0
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B, $1F
                .byte $1D, $19, 8, $1C, $1F, $1F, $1F, $17, $1F, $1F, $1F
                .byte $1F, $11, $1B, $1F, $19, $1F, $1F, $1F, $1F, $1F
                .byte 2, 6, 6, $13, $1F, $17, $1F, $1F, $1F, $1B, $1D
                .byte $1F, 0, $16, $19, 6, $1F, $1F, $1F, $1F, $1F, 0
                .byte $1F, $17, 3, $1F, 0, 0, $1F, $1F, 0, 0, $17, $1F
                .byte $1F, $17, 7, 4, 6, 2, $17, $1E, $1F, 9, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, 9, $1F, 9, $1F
                .byte $1F, $15, $1A, $24, $22, 2, 4, $1E, $17, $1F, 6
                .byte $1F, $1F, 6, $10, $18, $11, 2, 4, 1, 8, $22, $24
                .byte $21, $28, $1A, $15, 6, 6, $18, $11, $14, $12, $24
                .byte $22, $17, $1E, $1A, $15, $1D, $1B, $19, $19, $1F
                .byte $19, 1, 8, 9, 9, $1D, $1B, $1B, $1D, 1, 8, $1A, $15
                .byte $12, $1F, $1F, $1F, $1F, $1D, $1B, $1D, $1B, $13
                .byte $1C, $1D, $1B, 9, 9, $1B, $1D, $1F, $1B, $1F, $1D
                .byte $1C, $1B, 0, 0, 0, 0, 0, $1F, $1F, $1F, $1C, 0, $B
                .byte $1F, 9, 8, $1A, $16, $17, 0, 0, 0, 2, 6, 6, 6, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $17, 0, 0, 0, $16
                .byte 6, $19, $1F, $15, $1A, $24, $22, 2, 4, $1E, $17
                .byte $1F, 6, $1F, $1F, 6, $10, $1E, $17, 2, 4, 1, 8, $22
                .byte $24, $21, $28, $1E, $17, 6, 6, $18, $11, $14, $12
                .byte $24, $22, $17, $1E, $1A, $15, $1D, $1B, $1D, $1B
                .byte $1F, 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D, $1E, $17
                .byte 6, 0, 9, 0, $C0, $C0, $C0, 0, $C6, $10, $16, 0, $17
                .byte $1E, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 6, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $C0, 6, $1F, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .byte $1F, $1F, $1F, $1D, $1B, $24, $22, $1D, $1B, $1E
                .byte $17, $1F, $1F, $1F, $1F, 6, 9, 2, 4, 1, 8, $22, $24
                .byte $21, $28, 6, 6, 9, 9, $1D, $1B, $24, $22, $17, $1E
                .byte $1B, $1D, $1D, $1B, $1F, 9, 1, 8, 9, 9, $1D, $1B
                .byte $1B, $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $24, $22, $1E, $17, $1F, $1F, $1F
                .byte 6, $24, $22, $17, $1E, $1D, 0, 0, 0, 0, 0, $1F, $1F
                .byte $1F, $1F, $1F, $1D, $1D, 0, 0, 0, 0, 0, 4, 0, 0
                .byte 0, 0, 0, 0, 0, 0, $1F, $1F, 2, $17, $1F, $1C, $17
                .byte $1F, $1F, $1E, $1F, $1D, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, $1F
                .byte $1F, $1F, $17, $1F
                .byte $1F, $1F, 2, $1F, $1D, 8, $1F, $1F, $1F, $1F, $13
                .byte $1F, $1F, $1D, $1F, 8, $1F, $1F, $1F, $1F, $1F, $1F
                .byte 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40, $40, 0, 0, 0
                .byte 0, $40, $40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $40, $40, 0
                .byte 0, 0, 0, 0, 0, 0, 0, $40, 0, 0, 0, 0, 0, 0, $10
                .byte $10, $40, $40, $40, $40, $40, $40, $40, $40, $40
                .byte $40, $40, $40, $40, $17, $42, $1F, $44, 6, $14, $1E
                .byte $1D, $48, $40, $40, $40, $40, $40, $40, $40, $40
                .byte $44, $55, $42, $40, $40, $40, 6, $1F, 2, 4, 2, $17
                .byte $1C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, $1F, $17, $1F, $1D, $1D, $1D, $1D, $1D
                .byte $1D, $1D, $1F, $1E, $1E, $17, $1E, $1B, $1F, $1D
                .byte $1B, $1F, $1D, $19, $1B, $1D, $17, $1E, 0, 0, 0
                .byte 0, 0, 0, $40, $40, $40, $40, $40, $40, $1F, 0, $17
                .byte 6, 0, 0, 0, $17, $1D, $1D, $17, $1F, $1E, $16, $17
                .byte $1E, $1B, $1D, $1B, $1F, $1D, $19, $1B, $1D, $17
                .byte $1E, 0, 0, 0, 6, $40, $1F, $1F, $1F, $1F, $1F, 0
                .byte $1F, 0, $1D, $1F, $1F, $1F, $1F, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, $1F, 0, 0, 0, $16, $19, 0, 0, 0
                .byte 0, 0, $1F, $1F, $19, 0, $1F, $1F, $17, $21, $1D
                .byte $1F, 0, 0, 0, 0, 0, 0, 0, $13, 0, $17, 0, $1D, $1C
                .byte 0, 0, 9, 0, 6, 0, $1F, $1F, $1F, $19, $19, $1B, 0
                .byte 0, $1C, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 4, 0, 1, 9
                .byte 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 1, $13, $1D, 0, $1C, 0, $16, $1D, $1F
                .byte $19, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 6
                .byte 9, 0, $1F, 0, $16, 0, $13, $1F, $1C
                .byte $13, $1C, $1F, $1F, $17, $1E, $16, $1F, $1F, $19
                .byte $16, $19, $1F, $13, $1F, $1F, $1F, 8, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $17, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1E, 6, $1F, $1F, $1F, $1E, $17, 6, $1F
                .byte 6, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte $1F, $16, $12, $1F, $13, $1F, $1C, 0, 0, 6, 9, 1
                .byte 9, $1F, $1F, $F, $F, $16, $19, 6, 9, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, $1F, 4, $1E, $1E, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1B, $1F, 1, $1B, 0, 2, $17, $17, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1D
                .byte 8, $1B, $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, 6, 6, 6, 6, 0, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1B
                .byte 1, $1D, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, 0, $1F, $C0, 0
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $17, $1E, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1B, $1F, 1, $1B, 1, $1B, $1D, 8, $1D, $1B
                .byte $1F, $1F, 0, $1F, $1F, $1F, $1F, 8, $1F, $1F, $1F
                .byte $1F, $1F, $1D, $1F, $1F, $1F, $1F, $1F, $1F, 0, 1
                .byte 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1B, $1D, $28, $21
                .byte $1D, $1B, $1D, $1B, $24, $22, $1D, $1B, $1E, $17
                .byte $1F, $1F, $1F, $1F, 6, 9, $18, $11, 2, 4, 1, 8, $22
                .byte $24, $21, $28, $1E, $17, 6, 6, 9, 9, $1D, $1B, $24
                .byte $22, $17, $1E, $1B, $1D, $1D, $1B, $1D, $1B, $1F
                .byte 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D, $1F, $1F, $1E
                .byte $17, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, 9, 9, 9, 9, $1F, $1B
                .byte $1F, $1F, $1D, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, $24, $22, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, 9, 9, $1D, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, $1F, $16, $19, $1F, $1F, $1F, $1F, $1F, 0
                .byte $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1D, 8
                .byte 1, $1B, $1F, $1F, $1F, $1D, $1B, 9, 9, $1F, $1F
                .byte $1F, 6, 9, 2, 6, 1, 9, 6, 9, $1F, $1F, $1B, $1F
                .byte 1, $1B, $1F, $1F, $1F, $1D, $1D, 8, $F, $1F, $1F
                .byte $F, 2, $87, $8D, 2, $F, $1F, $1F, $1E, $F, $F, $B
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1B, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F
                .byte $1F, $1D, 8, 1, $1B, $1F
                .byte $1F, $1F, $1F, 0, $1F, 0, $1F, $1F, $1F, $1B, $1F
                .byte 1, $1B, 0, 1, 0, $1D, $1B, $1F, $1F, 0, 0, 8, 1
                .byte 0, 0, $1F, $1F, $1F, $1F, $1B, $1F, 1, $1B, $1F
                .byte $1F, 0, $1D, 6, 6, $1F, 9, 9, 9, $1F, $28, $1F, 0
                .byte 0, 0, $23, 0, 0, 8, 1, $1B, $1F, 1, $1B, $1F, $2C
                .byte $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1D, $1B, 8
                .byte 1, $1F, $17, $1D, 2, $17, $1D, 4, $1F, $1F, $1D
                .byte 8, $1F, $1D, $1B, $1D, 1, $1B, $1B, $1F, 1, $1B
                .byte $1D, 8, $1F, $1F, 0, $1F, 6, 6, $22, $28, 0, 0, $1F
                .byte $1D, $1F, $1D, 8, $1F, $1D, $1F, $1D, $1F, $1F, $E
                .byte 9, 9, $1D, $1B, $1F, $1F, $10, $1D, $1F, $1D, $1D
                .byte $1D, $1F, 6, 7, 9, 9, $17, $1F, $1B, $1D, $1F, $1F
                .byte $1E, $E, $E, 6, $1F, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, $1F, $1B, 1, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, 1, 9, $1F, 9, $1F, 9, 6, 9, 6, 6, 9, 9
                .byte 6, 9, $28, $10, $21, $24, 0, 1, $1B, $1B, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1B, $1B, 8, $1D, $1D, $1B
                .byte $1D, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 7, 2, 7
                .byte $1F, 1, 9, 9, $1F, 9, $1F, $1F, $1F, $1F, $1F, $1B
                .byte $1D, $1B, $1D, $1D, 9, $1B, 0, $1F, $1F, $1F, $1F
                .byte 6, $1F, 9, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, $1F, $1D, 8, 1, $1B, $1F, $1F
                .byte $1F, 1, $1B, $1B, $1F, $1F, $1D, 8, $1F, $1D, $1D
                .byte 8, $1F, $1F, $1F, $1F, 9, 9, 9, 6, 6, $1F, $16, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B, $1F
                .byte $1F, 0, $2C, $23, $1D, 7, $1F, $1D, $E, 9, 8, $1F
                .byte $1F, $17, $1E, $1F, $1F, 4, 8, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, $1F, $1F, $19, $1F, $1F, $15, $1A
                .byte $24, $22, 2, 4, $1E, $17, $1F, 6, $1F, $1F, 6, $10
                .byte $11, 2, 4, 1, 8, $22, $24, $28, $1A, $15, 6, 6, $18
                .byte $11, $14, $12, $24, $22, $17, $1F, $1A, $15, $1D
                .byte $19, $1F, 8, $1D, 1, 8, $1A, $15, $12, $1F, $1F
                .byte $1F, $1F, $1D, $1B, $1D, $1B, $13, $1C, $1D, 9, 9
                .byte $1B, $1D, $1B, $1D, $1A, 6, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .byte $1F, $1F, $1F, $1F, 9, $1B, $1B, $17, 9, $13, $1E
                .byte 6, 0, 6, $1B, 9, 0, 0, $1B, $1D, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F, $1F, $1F
                .byte $1F, $1D, $1B, $24, $22, $5D, $5B, $1E, $17, $1F
                .byte $5F, $1F, $1F, 6, 9, 2, 4, 1, 8, $22, $24, $21, $28
                .byte 2, 4, 9, 9, $5D, $5B, $24, $22, $17, $1E, $5B, $5D
                .byte $1D, $1B, $1F, 9, 1, 8, 9, 9, $1D, $1B, $1B, $1D
                .byte $1E, $17, $24, $22, $17, $1E, $1D, $1B, $28, $21
                .byte $1D, $1B, 0, $1F, $1F, $5F, $5F, $5F, $5F, $1D, $1B
                .byte $1D, $1B, $1D, $1B, $1F, $1F, 0, $1F, $5D, $49, 8
                .byte 6, 6, 0, 4, 0, $1B, $24, $22, $1F, 6, 6, $24, $22
                .byte $17, $1E, $1F, $1F, $1F, $1F, $1F, $1F, $1D, $1B
                .byte $1D, $1B, $19, $19, $1F, 0, $5F, $5F, $5F, $5F, $5F
                .byte $5F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 3, 1, $1F
                .byte 9, $1F, $1F, $17, $1B, 9, 9, $1F, $1B, $1F, 1, $1B
                .byte 1, $1B, $1F, 0, 0, 8, $1F, $1F, 9, 0, 0, 6, 9, 6
                .byte 9, $1D, $1D, $1F, $1F, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, $1F, 0, 1, $1B, $1B, $1F, $1F, $1B
                .byte $1F, 2, $1F, $19, $1F, $1F, 4, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
                .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte 0, 0
.export MapPalettes

MapPalettes:
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE0
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE1
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE2
    .byte DARK_GRAY, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, LIGHTEST_GREEN, MEDIUM_YELLOW, LIGHTEST_YELLOW; PALETTE0
    .byte BLACK, LIGHTEST_GREEN, MEDIUM_GRAY, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, LIGHTEST_GREEN, LIGHT_REDVIOLET, MEDIUM_GREEN; PALETTE2
    .byte DARK_INDIGO, LIGHTEST_GREEN, $4B, MEDIUM_INDIGO; PALETTE3

    .byte BLACK, LIGHTEST_GRAY, LIGHTEST_GRAY, MEDIUM_GRAY; PALETTE0
    .byte BLACK, LIGHTEST_GRAY, LIGHTEST_GRAY, MEDIUM_GRAY; PALETTE1
    .byte BLACK, LIGHTEST_GRAY, LIGHTEST_GRAY, LIGHT_YELLOW; PALETTE2
    .byte DARK_CHARTREUSE, LIGHTEST_GRAY, $40, LIGHTEST_CYAN; PALETTE3

    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, MEDIUM_TURQUOISE; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_GRAY, LIGHTEST_CYAN; PALETTE1
    .byte BLACK, LIGHTEST_YELLOW, LIGHT_REDVIOLET, MEDIUM_GREEN; PALETTE2
    .byte MEDIUM_GREEN, LIGHTEST_YELLOW, $40, DARK_GRAY; PALETTE3

    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHT_BLUE; PALETTE1
    .byte BLACK, LIGHTEST_GREEN, LIGHT_YELLOW, LIGHT_BLUE; PALETTE2
    .byte MEDIUM_ORANGE, LIGHTEST_YELLOW, $40, LIGHTEST_TURQUOISE; PALETTE3

    .byte BLACK, LIGHTEST_CHARTREUSE, DARK_GRAY, DARK_GRAY; PALETTE0
    .byte BLACK, LIGHTEST_CHARTREUSE, LIGHTEST_GRAY, MEDIUM_GRAY; PALETTE1
    .byte BLACK, LIGHTEST_CHARTREUSE, WHITE, LIGHT_CYAN; PALETTE2
    .byte MEDIUM_CYAN, LIGHTEST_CHARTREUSE, $40, LIGHTEST_CYAN; PALETTE3

    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, MEDIUM_TURQUOISE; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_GRAY, LIGHTEST_CYAN; PALETTE1
    .byte BLACK, LIGHTEST_YELLOW, LIGHT_REDVIOLET, MEDIUM_GREEN; PALETTE2
    .byte MEDIUM_GREEN, LIGHTEST_YELLOW, $40, DARK_GRAY; PALETTE3

    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, LIGHT_BLUE; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHT_GREEN; PALETTE1
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE2
    .byte MEDIUM_PURPLE, MEDIUM_GRAY, $40, LIGHT_BLUE; PALETTE3

    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, DARK_GRAY; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, LIGHT_PURPLE, LIGHT_CYAN; PALETTE1
    .byte BLACK, MEDIUM_INDIGO, LIGHTEST_BLUE, DARK_INDIGO; PALETTE2
    .byte MEDIUM_GREEN, LIGHT_BLUE, $40, DARK_GRAY; PALETTE3

    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, MEDIUM_TURQUOISE; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_GRAY, LIGHTEST_CYAN; PALETTE1
    .byte BLACK, LIGHTEST_YELLOW, LIGHT_REDVIOLET, MEDIUM_GREEN; PALETTE2
    .byte MEDIUM_GREEN, LIGHTEST_YELLOW, $40, DARK_GRAY; PALETTE3

    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, DARK_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_INDIGO; PALETTE2
    .byte MEDIUM_VIOLET, DARK_GRAY, $66, WHITE; PALETTE3

    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, DARK_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_INDIGO; PALETTE2
    .byte MEDIUM_VIOLET, DARK_GRAY, $41, WHITE; PALETTE3

    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, DARK_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_INDIGO; PALETTE2
    .byte MEDIUM_VIOLET, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, DARK_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_INDIGO; PALETTE2
    .byte MEDIUM_VIOLET, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, DARK_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_INDIGO; PALETTE2
    .byte MEDIUM_VIOLET, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, DARK_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_INDIGO; PALETTE2
    .byte MEDIUM_VIOLET, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, DARK_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, DARK_GRAY, MEDIUM_INDIGO; PALETTE2
    .byte MEDIUM_VIOLET, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE0
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE1
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE2
    .byte DARK_GRAY, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, MEDIUM_ORANGE; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, LIGHT_YELLOW; PALETTE1
    .byte BLACK, LIGHTEST_YELLOW, DARK_GRAY, LIGHT_ORANGE; PALETTE2
    .byte DARK_GREEN, LIGHTEST_YELLOW, $76, LIGHT_INDIGO; PALETTE3

    .byte BLACK, LIGHTEST_CYAN, MEDIUM_YELLOW, LIGHTEST_YELLOW; PALETTE0
    .byte BLACK, LIGHT_YELLOW, MEDIUM_YELLOW, LIGHTEST_YELLOW; PALETTE1
    .byte BLACK, LIGHTEST_VIOLET, LIGHT_REDVIOLET, LIGHTEST_YELLOW; PALETTE2
    .byte MEDIUM_RED, LIGHT_RED, $40, DARK_GRAY; PALETTE3

    .byte BLACK, BLACK, MEDIUM_ORANGE, LIGHT_ORANGE; PALETTE0
    .byte BLACK, BLACK, MEDIUM_ORANGE, LIGHT_ORANGE; PALETTE1
    .byte BLACK, BLACK, MEDIUM_ORANGE, LIGHT_ORANGE; PALETTE2
    .byte $E, MEDIUM_YELLOW, $6E, LIGHT_YELLOW; PALETTE3

    .byte BLACK, DARK_PURPLE, MEDIUM_REDVIOLET, LIGHT_REDVIOLET; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, LIGHT_BLUE; PALETTE1
    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_YELLOW, LIGHT_YELLOW; PALETTE2
    .byte $1D, DARK_PURPLE, $4C, LIGHTEST_PURPLE; PALETTE3

    .byte BLACK, LIGHTEST_PURPLE, WHITE, LIGHT_PURPLE; PALETTE0
    .byte BLACK, LIGHTEST_PURPLE, WHITE, LIGHTEST_REDVIOLET; PALETTE1
    .byte BLACK, LIGHT_CYAN, LIGHTEST_REDVIOLET, MEDIUM_REDVIOLET; PALETTE2
    .byte BLACK, LIGHTEST_PURPLE, DARK_GRAY, LIGHTEST_CYAN; PALETTE3

    .byte BLACK, LIGHTEST_ORANGE, LIGHTEST_REDVIOLET, MEDIUM_ORANGE; PALETTE0
    .byte BLACK, LIGHTEST_ORANGE, LIGHT_YELLOW, MEDIUM_ORANGE; PALETTE1
    .byte BLACK, LIGHTEST_ORANGE, LIGHTEST_GREEN, MEDIUM_ORANGE; PALETTE2
    .byte MEDIUM_YELLOW, LIGHTEST_ORANGE, $40, MEDIUM_ORANGE; PALETTE3

    .byte BLACK, LIGHTEST_CYAN, LIGHTEST_PURPLE, LIGHT_CYAN; PALETTE0
    .byte BLACK, LIGHTEST_CYAN, LIGHT_YELLOW, LIGHT_CYAN; PALETTE1
    .byte BLACK, LIGHTEST_CYAN, LIGHT_CHARTREUSE, LIGHT_CYAN; PALETTE2
    .byte MEDIUM_YELLOW, LIGHTEST_CYAN, $40, LIGHT_CYAN; PALETTE3

    .byte BLACK, LIGHTEST_CYAN, MEDIUM_REDVIOLET, MEDIUM_CYAN; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, MEDIUM_REDVIOLET, MEDIUM_CYAN; PALETTE1
    .byte BLACK, LIGHTEST_CYAN, DARK_CYAN, MEDIUM_CYAN; PALETTE2
    .byte MEDIUM_YELLOW, LIGHTEST_CYAN, $40, MEDIUM_CYAN; PALETTE3

    .byte BLACK, LIGHTEST_GREEN, MEDIUM_YELLOW, LIGHTEST_YELLOW; PALETTE0
    .byte BLACK, LIGHTEST_GREEN, DARK_GRAY, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, LIGHTEST_GREEN, LIGHT_REDVIOLET, MEDIUM_GREEN; PALETTE2
    .byte DARK_CYAN, LIGHTEST_GREEN, $42, MEDIUM_INDIGO; PALETTE3

    .byte BLACK, DARK_PURPLE, DARK_VIOLET, LIGHT_VIOLET; PALETTE0
    .byte BLACK, DARK_PURPLE, LIGHT_ORANGE, WHITE; PALETTE1
    .byte BLACK, DARK_PURPLE, DARK_REDVIOLET, WHITE; PALETTE2
    .byte MEDIUM_GREEN, DARK_PURPLE, $40, LIGHTEST_PURPLE; PALETTE3

    .byte BLACK, BLACK, LIGHT_BLUE, WHITE; PALETTE0
    .byte BLACK, MEDIUM_INDIGO, MEDIUM_INDIGO, LIGHT_BLUE; PALETTE1
    .byte BLACK, MEDIUM_INDIGO, LIGHT_BLUE, WHITE; PALETTE2
    .byte $E, MEDIUM_ORANGE, $6E, WHITE; PALETTE3

    .byte BLACK, MEDIUM_GRAY, LIGHTEST_VIOLET, LIGHT_INDIGO; PALETTE0
    .byte BLACK, MEDIUM_GRAY, DARK_VIOLET, LIGHT_INDIGO; PALETTE1
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE2
    .byte DARK_GRAY, DARK_GRAY, $40, WHITE; PALETTE3

    .byte BLACK, LIGHTEST_ORANGE, MEDIUM_YELLOW, LIGHTEST_BLUE; PALETTE0
    .byte BLACK, LIGHTEST_ORANGE, MEDIUM_GRAY, LIGHTEST_CYAN; PALETTE1
    .byte BLACK, LIGHTEST_ORANGE, WHITE, LIGHT_PURPLE; PALETTE2
    .byte MEDIUM_GREEN, LIGHTEST_ORANGE, $40, LIGHT_ORANGE; PALETTE3

    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE0
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE1
    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, WHITE; PALETTE2
    .byte DARK_GRAY, DARK_GRAY, $40, WHITE; PALETTE3


                .byte 1, 1, 1, 1, 1, 1, 1
                .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 5, 7, 8, 9, $B, 0
                .byte 0, 3, 5, 7, 8, 9, $B, 0, 0, $C, $D, $E, $F, $10
                .byte $11, $48, 0, $C, $D, $E, $F, $10, $11, $48, 0, $12
                .byte $13, $14, $15, $16, $17, $18, $19, $12, $13, $14
                .byte $15, $16, $17, $18, $19, 4, 5, 6, 7, $B, $1B, $1C
                .byte 0, 4, 5, 6, 7, $B, $1B, $1C, 0, $1C, $1D, $1E, $1F
                .byte $30, $31, $32, $34, $35, $36, $38, $3A, $3B, 0, 0
                .byte 0, $A, $1C, $1D, $31, $32, $3C, $3D, $3E, $3F, $40
                .byte $9C, 0, 0, 0, 0, 0, $1C, $1E, $20, $21, $30, $32
                .byte $33, $36, $37, $47, 0, 0, 0, 0, 0, 0, $55, $56, $57
                .byte $58, $59, 0, 0, 0, $55, $56, $57, $58, $59, 0, 0
                .byte 0, $47, $5A, $5B, $5C, $5D, $61, $62, $63, $64, $66
                .byte $69, 0, 0, 0, 0, 0, $5C, $5E, $61, $64, $65, $67
                .byte $68, $69, $6A, $6B, $6C, $6D, $6E, 0, 0, 0, $5A
                .byte $5B, $70, $71, $72, $73, $75, $76, $77, $78, $79
                .byte 0, 0, 0, 0, 0, $5F, $60, $61, $66, $69, $73, $74
                .byte $7A, $7B, $7C, $7D, 0, 0, 0, 0, 0, $49, $4A, $4B
                .byte $4C, $4D, $4E, $4F, $50, $51, $52, $53, $54, $A3
                .byte 0, 0, 0, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
                .byte $51, $52, $53, $54, $A3, 0, 0, 0, $49, $4A, $4B
                .byte $4C, $4D, $4E, $4F, $50, $51, $A3, 0, 0, 0, 0, 0
                .byte 0, 1, 2, 6, $1A, 1, 2, 6, $1A, 1, 2, 6, $1A, 1, 2
                .byte 6, $1A, $41, $42, $43, $44, $45, $46, 0, 0, $41
                .byte $42, $43, $44, $45, $46, 0, 0, $41, $42, $43, $44
                .byte $45, $46, 0, 0, $41, $42, $43, $44, $45, $46, 0
                .byte 0, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50, $51, $52
                .byte $53, $54, $A3, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .byte 1, 1, 1, 1, 1, 1, 1, 2, $1E, 2, $1E, 2, $1E, 2, $1E
                .byte 2, $1E, 2, $1E, 2, $1E, 2, $1E, $81, $82, $83, $84
                .byte $85, $86, $87, $88, $89, $8A, $8B, 0, 0, 0, 0, 0
                .byte $92, $93, $94, $95, $96, $97, $98, $99, $9A, 0, 0
                .byte 0, 0, 0, 0, 0, $7E, $7F, $80, $82, $7E, $7F, $80
                .byte $82, $7E, $7F, $80, $82, $7E, $7F, $80, $82, $8C
                .byte $8D, $8E, 0, $8C, $8D, $8E, 0, $8C, $8D, $8E, 0
                .byte $8C, $8D, $8E, 0, $22, $23, $24, $25, $26, $27, $28
                .byte $29, $2B, $2C, $2D, 0, 0, 0, 0, 0, $2A, $2B, $2C
                .byte $2D, $A1, 0, 0, 0, $2A, $2B, $2C, $2D, $A1, 0, 0
                .byte 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
                .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

; =============== S U B R O U T I N E =======================================

game_intro:
    .export game_intro
    .import bank13_A000, clear_oam_sprite, clear_nametables, chr_5E_5F_to_sram, wait_nmi_processed, copy_to_sram
    .import bank_A000_a, home_camera, set_ppu_banks, copy_palettes, CHRBank_0, Palettes
    .importzp byte_D6, CursorPosition, pStr

    jsr bank13_A000
    jsr intro

start_menu:
    jsr clear_oam_sprite
    jsr clear_nametables
    jsr chr_5E_5F_to_sram   ; copy chr banks $5E, $5F (frames)in SRAM $6C00-$73FF
    jsr wait_nmi_processed
    lda #$19                ; copy_to_sram BANK19:A28B
    ldyx #(copy_to_sram-1)
    jsr bank_A000_a
    jsr home_camera
    ldxa #CHRBank_0
    jsr set_ppu_banks
    ldxa #Palettes
    jsr copy_palettes

redraw_game_menu:
    ldx #$C                 ; offset TilepackTable - ClearBottomScreen
    jsr draw_block          ; Draws a block from a TilepackTable Input: A - block offset in table
    jsr draw_menu
    jsr game_menu
    lda #0
    sta byte_D6
    ldy CursorPosition
    lda (pStr),Y
    asl A
    tax
    lda MenuFunctions+1,X
    pha
    lda MenuFunctions,X
    pha
    tya
    lsr A
    lsr A
    rts
; End of function game_intro

; ---------------------------------------------------------------------------
MenuFunctions:
    .import get_save_block
    .word get_save_block-1, copy_save-1, erase_save-1, start_new-1

; =============== S U B R O U T I N E =======================================


start_new:
    .import sram_write_enable, mmc3_bank_set, copy_pure_save, sram_read_enable, make_save

    pha
    jsr sram_write_enable
    lda #$18
    ldx #7
    jsr mmc3_bank_set
    pla 
    jsr copy_pure_save
    jsr sram_read_enable
    jsr bank13_A000
    jsr new_game
    bcs start_menu
    jmp make_save
; End of function start_new


; =============== S U B R O U T I N E =======================================


erase_save:
    .import get_dist_save_addr, CurrentGame
    .importzp pDist

    jsr erase_dialog
    bne @exit
    lda CurrentGame + PURE_SAVE::GameNumber
    jsr get_dist_save_addr
    jsr sram_write_enable
    ldy #3
    lda #0
    sta (pDist),Y
    jsr sram_read_enable

@exit:
    jmp redraw_game_menu
; End of function erase_save


; =============== S U B R O U T I N E =======================================


copy_save:
    .importzp ObjectID, Buttons, ItemCount

    sta ObjectID
    ldx #$10            ; ToWhich
    jsr draw_block
    lda ObjectID
    sec 
    rol A
    asl A
    tax
    jsr cur_game_menu
    bit Buttons
    bvs @exit
    lda CursorPosition
    sta ItemCount
    jsr erase_dialog
    bcs @save
    bne @exit

@save:
    lda ObjectID
    jsr get_save_block
    jsr sram_write_enable
    lda ItemCount
    ora #$B0
    sta CurrentGame + PURE_SAVE::GameNumber
    jsr make_save

@exit:
    jmp redraw_game_menu
; End of function copy_save


; =============== S U B R O U T I N E =======================================


erase_dialog:
    .import get_pointer_tilepak, write_tiles

    jsr get_save_block
    sec
    bne @exit
    ldx #$E             ; EraseDialog
    jsr get_pointer_tilepak
    jsr write_tiles
    ldx #$E             ; Erase
    jsr cur_game_menu
    clc
    lda CursorPosition

@exit:
    rts
; End of function erase_dialog


; =============== S U B R O U T I N E =======================================


draw_menu:
    .import copy_gameslot, get_cursor, set_pos_6_5

    lda #0

@menu_item:
    sta ItemCount
    lsr A
    lsr A
    jsr get_save_block
    beq @free
    lda #4

@free:
    sta ObjectID
    ldx ItemCount
    jsr copy_gameslot
    lda ObjectID
    lsr A
    adc ItemCount
    tax
    jsr draw_block
    clc
    lda ItemCount
    adc #4
    cmp #$C
    bcc @menu_item
    ldx #$C
    jsr get_cursor
    jmp set_pos_6_5
; End of function draw_menu


; =============== S U B R O U T I N E =======================================

; Draws a block from a TilepackTable
; Input: A - block offset in table

draw_block:
    .import write_tiles

    jsr get_pointer_tilepak
    jmp write_tiles
; End of function draw_block


; =============== S U B R O U T I N E =======================================


cur_game_menu:
    .import cursor_update, get_cursor_pos

    jsr get_cursor

game_menu:
    jsr cursor_update
    lda #$FF
    jmp get_cursor_pos
; End of function cur_game_menu

; =============== S U B R O U T I N E =======================================


sub_149516:
    .export sub_149516
    .import get_save_field, randomize, sub_19A4A7
    .importzp byte_20, ObjectNumWithChar, byte_22, byte_23, byte_24, byte_25, EnemyGroup, NewView, ObjNumber

    lda EnemyGroup
    ora byte_20
    ora ObjectNumWithChar
    ora byte_22
    ora byte_23
    ora byte_25
    bne locret_149538
    bit NewView
    bmi locret_149538
    jsr sub_1495D3
    ldx ObjNumber
    lda ObjectsTab,X

loc_149530:
    bne loc_149539
    sta byte_24

loc_149534:
    lda #0
    sta EnemyGroup

locret_149538:
    rts
; ---------------------------------------------------------------------------

loc_149539:
    tay
    and #7
    bne loc_149548
    tya
    lsr A
    lsr A
    lsr A
    jsr get_save_field
    jmp loc_149530
; ---------------------------------------------------------------------------

loc_149548:
    clc
    adc byte_24
    cmp #9
    bcc loc_149551
    lda #8

loc_149551:
    tax
    jsr randomize
    cmp locret_14958A,X
    bcs loc_149534
    ldx byte_24
    inx
    cpx #3
    bcc loc_149563
    ldx #2

loc_149563:
    stx byte_24
    tya
    and #$F8
    sta pDist
    lda #0
    asl pDist
    rol A
    adc #$92
    sta pDist+1

loc_149573:
    jsr randomize
    lsr A
    lsr A
    lsr A
    lsr A
    tay 
    lda (pDist),Y
    beq loc_149573
    sta EnemyGroup
    lda #$19
    ldyx #sub_19A4A7-1
    jsr bank_A000_a

locret_14958A:
    rts
; End of function sub_149516

; ---------------------------------------------------------------------------
                .byte $20, $15, $10, $D, $A, 8, 6, 5
ObjectsTab:    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $C, $11, $E8, $26
                .byte $2D, $34, $3D, $43, $4D, $55, $5D, $65, 0, 0, 0
                .byte 0, 0, $6C, $74, $7C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte $E0, 0, 0, $8D, $95, $9C, $A7, 0, $AD, 0, 0, $B5
                .byte $BD, $C5, $CD, 0, 0, $D6, 0, 0, 0, $DC, 0

; =============== S U B R O U T I N E =======================================


sub_1495D3:
    .import get_character_pointer, one_color_palettes_save, back_palettes
    .importzp Pointer, pTileID, byte_D5

    ldx #0

loc_1495D5:
    lda CurrentGame + PURE_SAVE::CharactersNum,X
    beq loc_14962A
    jsr get_character_pointer
    ldy #CHARACTER::field_1
    lda (Pointer),Y
    lsr A
    bcc loc_1495E8
    lda #7
    bne loc_1495ED

loc_1495E8:
    lsr A
    bcc loc_14962A
    lda #7

loc_1495ED:
    sta pTileID
    clc
    txa
    adc byte_D5
    and pTileID
    bne loc_14962A
    jsr sram_write_enable
    sec
    ldy #$14
    lda (Pointer),Y
    sbc #1
    sta pTileID
    iny
    lda (Pointer),Y
    sbc #0
    sta pTileID+1
    bcc loc_14961B
    lda pTileID
    ora pTileID+1
    beq loc_14961B
    lda pTileID+1
    sta (Pointer),Y
    dey
    lda pTileID
    sta (Pointer),Y

loc_14961B:
    jsr sram_read_enable
    txa
    pha
    lda #$16
    jsr one_color_palettes_save
    jsr back_palettes
    pla
    tax

loc_14962A:
    inx
    cpx #4
    bcc loc_1495D5
    rts
; End of function sub_1495D3


; =============== S U B R O U T I N E =======================================


sub_149630:
    .export sub_149630, loc_149641
    .import update_animation, NMI_Data
    .importzp AddrForJmp, OffsetNMI_Data, NMIFlags

                lda     EnemyGroup
                cmp     #$A2
                beq     locret_149684
                lda     #WHITE
                jsr     one_color_palettes_save
                jsr     back_palettes
                jsr     update_animation

loc_149641:
                lda     #7
                sta     NMI_Data + NMI_DATA::NMI_ID
                lda     #0
                sta     NMI_Data + NMI_DATA::NumOfChr
                sta     Pointer

loc_14964D:                         ; cycle of animated disappearance of the location before the battle
                ldx     Pointer
                lda     byte_1496F1,X
                cmp     #$FF
                beq     loc_149675
                lsr     A
                lsr     A
                lsr     A
                lsr     A
                sta     Pointer+1
                lda     byte_1496F1,X
                and     #$F
                sta     AddrForJmp
                jsr     sub_149685
                ldx     Pointer+1
                ldy     AddrForJmp
                sty     Pointer+1
                stx     AddrForJmp
                jsr     sub_149685
                inc     Pointer
                bne     loc_14964D

loc_149675:
                lda     NMI_Data + NMI_DATA::NumOfChr
                cmp     #0
                beq     locret_149684
                lda     #0
                sta     OffsetNMI_Data
                lda     #1
                sta     NMIFlags

locret_149684:
                rts
; End of function sub_149630


; =============== S U B R O U T I N E =======================================


sub_149685:
    .import nt_calc
    .importzp Row, Column, NTAddr

                lda     #$E
                sec
                sbc     AddrForJmp
                bcs     loc_14968E
                lda     #0

loc_14968E:
                sta     Row
                pha
                lda     #$F
                sec
                sbc     Pointer+1
                sta     Column
                jsr     loc_1496B8
                lda     #$F
                clc
                adc     AddrForJmp
                cmp     #$1E
                bcc     loc_1496A6
                lda     #$1D

loc_1496A6:
                sta     Row
                jsr     loc_1496B8
                lda     #$10
                clc
                adc     Pointer+1
                sta     Column
                jsr     loc_1496B8
                pla
                sta     Row

loc_1496B8:
                lda     NMI_Data + NMI_DATA::NumOfChr
                cmp     #$14
                bcc     loc_1496CF
                lda     #0
                sta     OffsetNMI_Data
                lda     #1
                sta     NMIFlags
                jsr     wait_nmi_processed
                lda     #0
                sta     NMI_Data + NMI_DATA::NumOfChr

loc_1496CF:
                jsr     nt_calc         ; Calculate Name table address Input: CameraX, CameraY, Column, Row
                                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
                lda     NMI_Data + NMI_DATA::NumOfChr
                asl     A
                clc
                adc     NMI_Data + NMI_DATA::NumOfChr
                tax
                lda     NTAddr
                sta     NMI_Data + NMI_DATA::PPU_Addr,X
                lda     NTAddr+1
                sta     NMI_Data + NMI_DATA::PPU_Addr+1,X
                lda     #0
                sta     NMI_Data + NMI_DATA::Chr,X
                sta     NMI_Data + NMI_DATA::Next,X
                inc     NMI_Data + NMI_DATA::NumOfChr
                rts
; End of function sub_149685

; ---------------------------------------------------------------------------
byte_1496F1:    .byte 0, $FE, $10, $FD, $EE, $11, $FB, $FC, $ED, $20, $21
                .byte $EC, $DD, $30, $31, $22, $F9, $FA, $EB, $DC, $40
                .byte $41, $32, $33, $F7, $F8, $E9, $EA, $DB, $CC, $42
                .byte $DA, $50, $51, $52, $43, $F4, $F5, $F6, $E7, $E8
                .byte $D9, $CA, $CB, $60, $61, $62, $53, $44, $BB, $F0
                .byte $F1, $F2, $F3, $54, $E4, $E5, $E6, $D7, $D8, $C9
                .byte $BA, $70, $71, $72, $63, $64, $55, $C8, $80, $E0
                .byte $81, $E1, $82, $E2, $73, $E3, $74, $D4, $65, $D5
                .byte $D6, $C7, $B8, $A9, $B9, $AA, $D0, $D1, $D2, $D3
                .byte $C4, $C5, $66, $C6, $B7, $A8, $99, $90, $91, $92
                .byte $83, $84, $75, $76, $B6, $C0, $C1, $C2, $93, $C3
                .byte $B4, $85, $B5, $A6, $A7, $88, $98, $A0, $A1, $A2
                .byte $A3, $94, $95, $86, $77, $97, $B0, $B1, $B2, $B3
                .byte $A4, $A5, $96, $87, $FF

; =============== S U B R O U T I N E =======================================


sub_149779:
    .export sub_149779
    .import one_color_lighten_palette, wait_change_music, wait_frames, copy_character_buffer
    .importzp IRQCount

                lda     #LIGHTEST_YELLOW
                jsr     one_color_lighten_palette
                lda     #5
                jsr     sub_149920
                ldxa    #word_1499C2
                jsr     sub_1497D6
                lda     #$FF
                jsr     wait_change_music
                ldx     #180
                jsr     wait_frames     ; wait for a few frames input: X - number of frames
                lda     #$F
                jsr     one_color_palettes_save
                lda     #0
                sta     IRQCount
                jsr     chr_5E_5F_to_sram ; copy chr banks $5E, $5F (wall??) in SRAM $6C00-$73FF
                jmp     copy_character_buffer
; End of function sub_149779


; =============== S U B R O U T I N E =======================================


sub_1497A3:
    .export sub_1497A3
    .import sub_1AA000, Sound1, byte_7F4

                lda     #$E
                jsr     sub_149920
                ldxa    #word_1499D5
                jsr     sub_1497D6
                lda     #$FF
                jsr     wait_change_music
                ldxa    #word_1499E0
                jsr     sub_1497D6
                lda     #9
                sta     Sound1
                lda     #1
                sta     byte_7F4
                ldxa    #word_1499E9
                jsr     sub_1497D6
                lda     #$1A
                ldx     #7
                jsr     mmc3_bank_set   ; Set memory bank A - bank number, X - mode
                jmp     sub_1AA000
; End of function sub_1497A3


; =============== S U B R O U T I N E =======================================


sub_1497D6:
    .import sub_EE0E, wait_nmi
    .importzp CursorMode, CameraX, CameraY, byte_6C, byte_6D

                sta     pDist
                stx     pDist+1
                ldy     #0
                sty     CursorMode

loc_1497DE:
                lda     (pDist),Y
                beq     locret_14983C
                sta     byte_6C
                iny
                lda     (pDist),Y
                sta     byte_6D
                iny
                and     #$20
                beq     loc_1497F1
                sec
                rol     CursorMode

loc_1497F1:
                tya
                pha
                lda     byte_6D
                and     #3
                beq     loc_149808
                tax
                lda     byte_149A05,X
                jsr     sub_EE0E
                jsr     wait_nmi        ; wait for NMI interrupt processing to complete
                lda     #$F
                jsr     sub_EE0E

loc_149808:
                jsr     wait_nmi        ; wait for NMI interrupt processing to complete
                lda     CursorMode
                bne     loc_149815
                lda     byte_6C
                and     #3
                bne     loc_149820

loc_149815:
                lsr     A

loc_149816:
                pha
                jsr     sub_14983D
                pla
                sec
                sbc     #1
                bpl     loc_149816

loc_149820:
                lda     byte_6C
                asl     A
                asl     A
                and     byte_6D
                and     #4
                beq     loc_149834
                lsr     A
                eor     CameraX
                sta     CameraX
                lda     #$A
                sta     Sound1

loc_149834:
                dec     byte_6C
                bne     loc_149808
                pla
                tay
                bne     loc_1497DE

locret_14983C:
                rts
; End of function sub_1497D6


; =============== S U B R O U T I N E =======================================


sub_14983D:
                bit     byte_6D
                bpl     locret_149877
                bvc     loc_149859
                jsr     sub_149878
                bne     loc_149851
                dex
                cpx     #5
                bcc     locret_149877
                txa
                jsr     sub_149883

loc_149851:
                sec
                lda     CameraY
                sbc     #1
                jmp     loc_149871
; ---------------------------------------------------------------------------

loc_149859:
                jsr     sub_149878
                eor     #$F
                bne     loc_14986C
                inx
                cpx     #$3C
                bcs     locret_149877
                txa
                clc
                adc     #$A
                jsr     sub_149883

loc_14986C:
                clc
                lda     CameraY
                adc     #$11

loc_149871:
                bcs     loc_149875
                sbc     #$F

loc_149875:
                sta     CameraY

locret_149877:
                rts
; End of function sub_14983D


; =============== S U B R O U T I N E =======================================


sub_149878:
    .importzp FieldPosition

                jsr     wait_nmi_processed
                ldx     FieldPosition
                clc
                lda     CameraY
                and     #$F
                rts
; End of function sub_149878


; =============== S U B R O U T I N E =======================================


sub_149883:
                stx     FieldPosition
                jsr     sub_14988D
                lda     #$80
                sta     NMIFlags
                rts
; End of function sub_149883


; =============== S U B R O U T I N E =======================================


sub_14988D:
    .importzp byte_6E

                ldx     #$24

loc_14988F:
                stx     AddrForJmp
                ldx     #0

loc_149893:
                cmp     #$F
                bcc     loc_14989C
                sbc     #$F
                inx
                bcs     loc_149893

loc_14989C:
                asl     A
                asl     A
                sta     byte_6E
                txa
                lsr     A
                ror     A
                ror     A
                and     #$C0
                ora     byte_6E
                sta     Pointer
                lda     #6
                asl     Pointer
                rol     A
                asl     Pointer
                rol     A
                asl     Pointer
                rol     A
                asl     Pointer
                rol     A
                sta     Pointer+1
                ora     #3
                sta     pTileID+1
                lda     byte_6E
                and     #$38
                ora     #$C0
                sta     pTileID
                jsr     wait_nmi_processed
                lda     #5
                ldy     #$40
                sta     NMI_Data + NMI_DATA::NMI_ID
                sty     NMI_Data + NMI_DATA::NumOfChr
                ldy     #8
                sta     $444            ; byte_444
                sty     $445            ; byte_444+1
                lda     Pointer+1
                ldy     Pointer
                and     #3
                ora     AddrForJmp
                sta     NMI_Data + NMI_DATA::PPU_Addr
                sty     NMI_Data + NMI_DATA::PPU_Addr+1
                lda     pTileID+1
                ldy     pTileID
                and     #3
                ora     AddrForJmp
                sta     $446            ; byte_444+2
                sty     $447            ; byte_444+3
                ldy     #$3F

loc_1498F9:
                lda     (Pointer),Y
                jsr     sub_149919
                sta     NMI_Data + NMI_DATA::Chr,Y
                dey
                bpl     loc_1498F9
                ldy     #7

loc_149906:
                lda     (pTileID),Y
                jsr     sub_149919
                sta     $448,Y          ; byte_444+4,Y
                dey
                bpl     loc_149906
                lda     #0
                sta     $450            ; byte_444+$C
                sta     OffsetNMI_Data
                rts
; End of function sub_14988D


; =============== S U B R O U T I N E =======================================


sub_149919:
    cpx #4
    bcc locret_14991F
    lda #0

locret_14991F:
    rts
; End of function sub_149919


; =============== S U B R O U T I N E =======================================


sub_149920:
    .import set_camera, sub_E087, lighten_palette, SpriteTable, InterruptTable, PalBG

    sta FieldPosition
    lda #$B
    jsr wait_change_music
    jsr sub_1499A3
    jsr set_camera
    jsr clear_oam_sprite
    jsr wait_nmi_processed
    ldx #$F

loc_149935:
    lda stru_149A3D,X
    sta SpriteTable + ANIM_SPRITE::Tiles+$40,X
    dex
    bpl loc_149935
    ldxa #byte_149A2D
    stxa Pointer
    jsr sub_E087
    lda #$54
    jsr sub_1499AD
    ldxa #CHRBank_1
    jsr set_ppu_banks
    lda #1
    sta NMIFlags
    ldy #4

loc_14995B:
    tya
    pha
    ldx #$20
    jsr loc_14988F
    lda #$80
    sta NMIFlags
    pla
    tay
    dey
    bpl loc_14995B
    jsr sub_14998B
    ldx #3

@next_byte:
    lda off_149A09,X
    sta InterruptTable,X
    dex
    bpl @next_byte
    lda #$9F
    sta IRQCount
    ldx #$1F

@next_color:
    lda Palettes_0,X
    sta PalBG,X
    dex
    bpl @next_color
    jmp lighten_palette ; increase the brightness of colors in the palette
; End of function sub_149920


; =============== S U B R O U T I N E =======================================


sub_14998B:
    clc
    lda FieldPosition
    adc #$B

loc_149990:
    pha
    jsr sub_14988D
    lda #$80
    sta NMIFlags
    pla
    sec
    sbc #1
    bcc locret_1499A2
    cmp FieldPosition
    bcs loc_149990

locret_1499A2:
    rts
; End of function sub_14998B


; =============== S U B R O U T I N E =======================================


sub_1499A3:
    lda FieldPosition
    asl A
    asl A
    asl A
    asl A
    tay
    ldx #$FC
    rts
; End of function sub_1499A3


; =============== S U B R O U T I N E =======================================


sub_1499AD:
    .import chr2sram

    pha
    tay
    lda #0
    ldx #$60
    jsr chr2sram
    pla
    clc
    adc #2
    tay
    lda #0
    ldx #$68
    jmp chr2sram
; End of function sub_1499AD

; ---------------------------------------------------------------------------
word_1499C2:
                .word $80, $8080, $8280, $8320, $8220, $81C0, $8280, $8320
                .word $8220
                .byte 0

word_1499D5:
                .word $C080, $C320, $C220, $C180, $C380
                .byte 0

word_1499E0:
                .word $240, $710, $620, $550
                .byte 0

word_1499E9:
                .word $2308, $2208, $A1F0, $F0, $400, $80, $A9A9, $AAAB

CHRBank_1:
    .byte $76, $70, $50, $51, $52, $53
    .byte $76, $70, $48, $49, $4A, $4B

byte_149A05:    .byte $F, $38, $21, $34
    .import locret_EDCA
off_149A09:     .word locret_EDCA
                .byte   0
                .byte   0
Palettes_0:
    .byte BLACK, MEDIUM_INDIGO, WHITE, DARK_GRAY            ; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, DARK_GRAY              ; PALETTE1
    .byte BLACK, MEDIUM_ORANGE, LIGHTEST_ORANGE, MEDIUM_RED ; PALETTE2
    .byte BLACK, LIGHTEST_YELLOW, WHITE, DARK_GRAY          ; PALETTE3
    .byte BLACK, BLACK, DARK_GRAY, WHITE                    ; PALETTE0
    .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE         ; PALETTE1
    .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE       ; PALETTE2
    .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE      ; PALETTE3

byte_149A2D:
                .byte $68, $78, 0, 0, $58, $88, 0, 0, $78, $88, 0, 0, $68
                .byte $98, 0, 0
stru_149A3D:    .byte $86, 0, $F4, $76, 0, 0
                .word $99C0         ; ANIM_SPRITE <$86, 0, $F4, $76, 0, 0, FRAME.pSprite+$99C0>
                .byte 6, 0, $E4, $76, 0, 0
                .word $99C4         ; ANIM_SPRITE <6, 0, $E4, $76, 0, 0, FRAME.pSprite+$99C4>

; =============== S U B R O U T I N E =======================================


new_game:
    .import delay, Boy1, Girl, Boy2, Boy3, Food, GameStory, Nowadays, NewMusic
    .importzp Encounter

    jsr draw_start_game_menu

@character1:
    lda #6
    sta Encounter
    ldxa #Boy1
    jsr enter_name
    bcs @exit

@character2:
    lda #6
    sta Encounter
    ldxa #Girl
    jsr enter_name
    bcs @character1

@character3:
    lda #6
    sta Encounter
    ldxa #Boy2
    jsr enter_name
    bcs @character2

@character4:
    lda #6
    sta Encounter
    ldxa #Boy3
    jsr enter_name
    bcs @character3
    lda #$A
    sta Encounter
    ldxa #Food
    jsr enter_name
    bcs @character4
    jsr clear_screen
    jsr draw_confirm
    jsr lighten_palette ; increase the brightness of colors in the palette
    jsr confirm
    bcc @yes
    jmp new_game
; ---------------------------------------------------------------------------

@yes:
    jsr clear_screen
    ldx #$3C
    jsr delay
    jsr lighten_palette ; increase the brightness of colors in the palette
    lda #2
    sta Column
    lda #3
    sta Row
    ldyx #GameStory
    jsr print_story
    lda #$FF
    sta NewMusic
    jsr lighten_palette ; increase the brightness of colors in the palette
    lda #6
    sta Column
    lda #$A
    sta Row
    ldyx #Nowadays
    jsr print_story
    clc

@exit:
    rts
; End of function new_game


; =============== S U B R O U T I N E =======================================


draw_confirm:
    .import get_anim_sprite, next_anim_sprite, byte_196C8B, stru_196CC0

    ldxa #byte_196C8B
    jsr draw_frame
    ldxa #stru_196CC0
    jsr draw_frame
    jsr get_anim_sprite
    ldy #0

@next_sprite:
    jsr anim_sprite
    jsr next_anim_sprite
    cmp #$20
    bne @next_sprite
    rts
; End of function draw_confirm


; =============== S U B R O U T I N E =======================================


anim_sprite:
    .import set_anim_sprite

    jsr wait_nmi_processed
    jmp set_anim_sprite
; End of function anim_sprite


; =============== S U B R O U T I N E =======================================


draw_frame:
    .importzp PointerTilePack

    stxa PointerTilePack
    jmp write_tiles
; End of function draw_frame


; =============== S U B R O U T I N E =======================================


confirm:
    .import Cur_62F0
    .importzp pCursor

    ldxa #Cur_62F0
    stxa pCursor
    jsr cursor_update
    lda CursorPosition
    beq @yes
    sec
    rts
; ---------------------------------------------------------------------------

@yes:
    clc
    rts
; End of function confirm


; =============== S U B R O U T I N E =======================================


print_story:
    .import wait_A_B, print_string
    .importzp PrintSize

    lda #0
    sta PrintSize
    styx PointerTilePack

@next_string:
    jsr print_string
    dec Row
    cmp #0
    bne @next_string
    jsr wait_A_B
    jmp clear_screen
; End of function print_story


; =============== S U B R O U T I N E =======================================


draw_start_game_menu:
    .import stru_196C2D

    jsr clear_screen
    jsr home_camera
    ldxa #stru_196C2D
    jsr draw_frame
    jsr draw_alphabetic
    jsr draw_name_frame
    jmp lighten_palette ; increase the brightness of colors in the palette
; End of function draw_start_game_menu


; =============== S U B R O U T I N E =======================================


draw_alphabetic:
    .import get_next_string, draw_tilepack_clear, byte_196C66

    store #AlphabeticalList, pTileID
    lda #$E
    sta AddrForJmp+1
    ldx #4

loc_149B4E:
    txa
    pha
    lda #8
    sta AddrForJmp
    lda AddrForJmp
    sta Column
    lda AddrForJmp+1
    sta Row
    lda pTileID
    sta PointerTilePack
    lda pTileID+1
    sta PointerTilePack+1
    jsr draw_tilepack_clear
    jsr get_next_string
    pla
    tax
    dex
    bne loc_149B4E
    ldxa #byte_196C66
    jmp draw_frame
; End of function draw_alphabetic


; =============== S U B R O U T I N E =======================================


draw_name_frame:
    .import stru_196C00

    ldxa #stru_196C00
    jmp draw_frame
; End of function draw_name_frame


; =============== S U B R O U T I N E =======================================


enter_name:
    .import byte_580, byte_581, byte_196C24
    .importzp pCharacter, NamePos

    stxa pCharacter
    ldy #0
    jsr get_pointer
    ora Pointer
    beq @food
    lda #$22            ; ROM:FF22
    sta AddrForJmp
    lda #$FF
    sta AddrForJmp+1
    lda #$80
    sta pTileID
    ldy #0
    jsr anim_sprite

@food:
    jsr draw_ask
    ldxa #byte_196C24
    jsr draw_frame
    ldy #4
    jsr get_pointer
    ldy Encounter
    lda #0
    sta PrintSize
    sta byte_581,Y
    sty NamePos

loc_149BB5:
    lda (Pointer),Y
    bne loc_149BBD
    sty NamePos
    lda #$A2

loc_149BBD:
    sta byte_580,Y
    dey
    bpl loc_149BB5
    jsr input_name
    bcs loc_149BE8
    ldy #4
    jsr get_pointer
    jsr sram_write_enable
    ldy Encounter

@prev_char:
    lda byte_580,Y
    cmp #$A2
    bne @no_letter
    lda #0

@no_letter:
    sta (Pointer),Y
    dey
    bpl @prev_char
    jsr sram_read_enable
    jsr clear_oam_sprite
    clc
    rts
; ---------------------------------------------------------------------------

loc_149BE8:
    jsr clear_oam_sprite
    sec
    rts
; End of function enter_name


; =============== S U B R O U T I N E =======================================

; Input: Y = 0 pointer at FRAME
;        Y = 2 pointer at TilePack (Ask)
;        Y = 4 pointer at Name
; Output: Pointer - result

get_pointer:
    lda (pCharacter),Y
    sta Pointer
    iny
    lda (pCharacter),Y
    sta Pointer+1
    rts
; End of function get_pointer


; =============== S U B R O U T I N E =======================================


draw_ask:
    jsr draw_name_frame
    ldx #8
    jsr delay
    ldy #2
    jsr get_pointer

loc_149C04:
    store Pointer, PointerTilePack
    lda #9
    sta Column
    lda #3
    sta Row

loc_149C14:
    jsr draw_tilepack_clear
    cmp #0
    bne loc_149C14
    rts
; End of function draw_ask


; =============== S U B R O U T I N E =======================================


input_name:
    .import short_cursor_update, loc_EF7C, long_delay, AlphabeticalList, Names, TryAgain, SameName, Cur_62E8, byte_57F

    jsr oam_sprite
    ldxa #Cur_62E8
    sta pCursor
    stx pCursor+1
    ldxa #AlphabeticalList
    sta pStr
    stx pStr+1
    lda #1
    sta byte_D6

update_loop:
    jsr short_cursor_update
    jmp command_button
; ---------------------------------------------------------------------------

loc_149C39:
    jsr oam_sprite
    jsr loc_EF7C

command_button:
    bit Buttons
    bvs back
    bmi @buttonA
    lda Buttons
    and #$10
    bne end
    jmp update_loop
; ---------------------------------------------------------------------------

@buttonA:
    ldx CursorPosition
    lda AlphabeticalList,X
    cmp #$A1
    beq back
    cmp #$A2
    beq end
    cmp #$A3
    beq previous
    ldx NamePos
    sta byte_580,X
    cpx Encounter
    beq loc_149C6B
    inx
    stx NamePos

loc_149C6B:
    jmp loc_149C39
; ---------------------------------------------------------------------------

previous:
    sec
    rts
; ---------------------------------------------------------------------------

back:
    lda #$A2
    ldx NamePos
    cpx Encounter
    bne loc_149C7D
    cmp byte_580,X
    bne loc_149C85

loc_149C7D:
    sta byte_580,X
    dex
    bmi loc_149C88
    stx NamePos

loc_149C85:
    sta byte_580,X

loc_149C88:
    jmp loc_149C39
; ---------------------------------------------------------------------------

end:
    ldy NamePos

@get_letter:
    lda byte_580,Y
    cmp #$A2
    beq @no_letter
    cmp #$A0
    bne @letter
    lda #$A2
    sta byte_580,Y

@no_letter:
    dey
    bpl @get_letter

@letter:
    cpy Encounter
    beq loc_149CA5
    iny

loc_149CA5:
    sty NamePos
    cpy #0
    beq zero_length
    ldx #0

@next_row:
    ldy #0

@next_compare:
    lda Names,X
    beq @last_row
    cmp #1
    beq @repeat_msg
    inx
    iny
    cmp byte_57F,Y
    beq @next_compare

@next_tile:
    lda Names,X
    inx
    cmp #1
    bne @next_tile
    beq @next_row

@last_row:
    lda #0
    sta byte_D6
    clc
    rts
; ---------------------------------------------------------------------------

@repeat_msg:
    jsr long_delay
    jsr draw_name_frame
    ldxa #TryAgain
    sta Pointer
    stx Pointer+1
    jsr loc_149C04
    lda byte_580
    cmp #$A0
    beq loc_149CFE
    ldxa #SameName
    sta PointerTilePack
    stx PointerTilePack+1
    ldx #8
    ldy #14
    stx Column
    sty Row

@next_msg_row:
    jsr draw_tilepack_clear
    cmp #0
    bne @next_msg_row

loc_149CFE:
    jsr wait_A_B
    jsr draw_alphabetic
    jsr draw_ask

zero_length:
    jmp input_name
; End of function input_name


; =============== S U B R O U T I N E =======================================


oam_sprite:
    lda Column
    pha
    lda Row
    pha
    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    sec
    lda #0
    sbc Encounter
    sec
    ror A
    clc
    adc #$F
    tay
    lda #$59
    sta OAM_Cache + OAM_TILE::PosY+4
    clc
    tya
    adc NamePos
    asl A
    asl A
    asl A
    sta OAM_Cache + OAM_TILE::PosX+4
    lda #1              ; underline
    sta OAM_Cache + OAM_TILE::TileID+4
    lda #0
    sta OAM_Cache + OAM_TILE::Attr+4
    tya
    sta Column
    lda #$A
    sta Row
    store #byte_580, PointerTilePack
    jsr draw_tilepack_clear
    pla
    sta Row
    pla
    sta Column
    rts
; End of function oam_sprite


; =============== S U B R O U T I N E =======================================


clear_screen:
    .import darken_palette, copy_packed_tiles, ScrAttr

    jsr darken_palette
    jsr clear_oam_sprite
    jsr clear_nametables
    ldyx #ScrAttr
    jmp copy_packed_tiles ; copies the palettes at the pointer Pointer offset at $400
; End of function clear_screen


; =============== S U B R O U T I N E =======================================


intro:
    .import preload_palettes, check_copyrights, EarthAnim, CurrentMusic
    .importzp CntrlPPU, Gamepad0Buttons, NMIFlags, OtherNMIFlags

    jsr clear_oam_sprite
    jsr clear_nametables
    lda CntrlPPU        ; PPU_CTRL
    and #$FC            ; select nametable $2000
    ldx #0
    ldy #0
    sta CntrlPPU        ; PPU_CTRL
    stx CameraX         ; no screen scrolling
    sty CameraY
    ldxa #CHRBanks0
    jsr set_ppu_banks   ; char table address bank14 $9E63
    store #Palettes0, Pointer
    jsr preload_palettes
    jsr darken_palette
    lda #$16
    cmp CurrentMusic
    beq @intro_screens
    sta NewMusic

@intro_screens:
    ldyx #ScreenAttr
    jsr copy_packed_tiles
    ldxa #IntroNintendo
    jsr pulsing
    ldyx #ScreenAttr
    jsr copy_packed_tiles
    ldxa #IntroItoi
    jsr pulsing
    store #Palettes1, Pointer
    jsr preload_palettes
    jsr darken_palette
    ldxa #CHRBanks1
    jsr set_ppu_banks
    ldxa #IntroMain
    jsr load_tilemap_lighten
    lda #0
    sta Pointer
    lda #$10
    sta SpriteTable + ANIM_SPRITE::Tiles + $E0
    lda #0
    sta SpriteTable + ANIM_SPRITE::TileID + $E0
    sta SpriteTable + ANIM_SPRITE::ShiftX + $E0
    sta SpriteTable + ANIM_SPRITE::ShiftY + $E0
    lda #88
    sta SpriteTable + ANIM_SPRITE::PosX + $E0
    lda #87
    sta SpriteTable + ANIM_SPRITE::PosY + $E0
    lda #0
    sta Gamepad0Buttons

@loop:
    clc
    lda Pointer
    adc #<(EarthAnim)
    sta SpriteTable + ANIM_SPRITE::pFrame + $E0
    lda #0
    adc #>(EarthAnim)
    sta SpriteTable + ANIM_SPRITE::pFrame + $E1
    lda #$A
    sta NMIFlags
    clc
    lda Pointer
    adc #4
    cmp #$1C
    bne @save_count
    lda #0

@save_count:
    sta Pointer

@wait:
    lda Gamepad0Buttons
    and #$10
    bne @start_pressed
    lda NMIFlags
    ora OtherNMIFlags
    bne @wait
    beq @loop

@start_pressed:
    ldx #0
    stx Gamepad0Buttons
    jsr darken_palette
    lda #$19            ; BANK19:A000
    ldyx #(check_copyrights - 1)
    jsr bank_A000_a
    rts
; End of function intro


; =============== S U B R O U T I N E =======================================

; creates the effect of smoothly increasing the brightness of
; the image, then holds for a while at maximum brightness,
; smoothly decreases brightness to black, clears Nametables

pulsing:
    jsr load_tilemap_lighten
    ldx #$FF
    jsr pause
    ldx #$40
    jsr pause
    jsr darken_palette
    ldx #$40
    jsr pause
    jmp clear_nametables
; End of function pulsing


; =============== S U B R O U T I N E =======================================


load_tilemap_lighten:
    .import draw_tilepack

    stxa PointerTilePack

@next_tile:
    jsr draw_tilepack
    dec Row
    cmp #0
    bne @next_tile
    jmp lighten_palette
; End of function load_tilemap_lighten


; =============== S U B R O U T I N E =======================================


pause:
    .importzp ButtonPressed0

    jsr wait_nmi        ; wait for NMI interrupt processing to complete
    lda ButtonPressed0
    and #$10
    eor #$10
    beq @end
    dex
    bne pause

@end:
    rts
; End of function pause

; ---------------------------------------------------------------------------
CHRBanks0:
    .byte $42, $72, $7C, $7C, $40, $41

CHRBanks1:
    .byte $42, $72, $7C, $41, $D8, $D9

Palettes0:
    .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_YELLOW     ; PALETTE0
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE1
    .byte BLACK, MEDIUM_RED, WHITE, MEDIUM_INDIGO       ; PALETTE2
    .byte BLACK, LIGHTEST_GREEN, WHITE, MEDIUM_INDIGO   ; PALETTE3
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE0
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE1
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE2
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE3

Palettes1:
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED          ; PALETTE0
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED          ; PALETTE1
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED          ; PALETTE2
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED          ; PALETTE3
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE0
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE1
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE2
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO       ; PALETTE3

ScreenAttr:
    .byte 8, $40, $23, $C0, $AA, 0

SquareAttr:
    .byte 7, 4, $23, $D2, $40, $23, $D3, $10, $23, $DA, 4
    .byte $23, $DB, 1, 0

IntroNintendo:
    tile_position 13, 11
    .byte $C8, $C9, $CA, $CB, $CD, $CE, $CF
    end_row

    tile_position 13, 12
    .byte $D8
    end_row

    tile_position 19, 12
    .byte $DF
    end_row

    tile_position 13, 13
    fill $CC, $13
    end_row

    tile_position 13, 15
    .byte $E3, $E4, $E5, $E6, $E7, $E8
    end_frame

IntroItoi:
    tile_position 13, 11
    .byte $D9, $DA, $DB, $DC, $DD, $DE, $CE, $CF
    end_row

    tile_position 13, 12
    .byte $D8
    end_row

    tile_position 20, 12
    .byte $DF
    end_row

    tile_position 0, 13
    fill $CC, $15
    end_row

    tile_position 8, 15
    .byte $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA, $FB, $FC, $FD, $FE, $FF
    end_frame

IntroMain:
    tile_position 8, 7
    .byte $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9A, $9B, $9C
    end_row

    .byte $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AC
    end_row

    .byte $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE, $BF
    end_row

    .byte $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $CF
    end_row

    .byte $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $D9, $DA, $DB, $DC, $DD, $DE
    end_row

    .byte $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $E8, $E9, $EA, $EB, $EC, $ED, $EE
    end_row

    .byte $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA, $FB, $FC, $FD, $FE
    end_row

    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $9F, $9F, $9F, $9F, $9D, $9E, $AD, $AE
    end_row

    tile_position 7, 23
    .byte $43, $44, $45, $46, $47, $70, $69, $6A, $6B, $6C, $6D, $6E, $6F, $53, $54, $55, $56, $57
    end_frame
; end of 'BANK14'
