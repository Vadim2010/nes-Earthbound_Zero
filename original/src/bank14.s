.include "ram.inc"
.include "..\res\sram.inc"
.include "palette.inc"

.segment "PRG_BANK_4"

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
BackgroundPalette:.byte BLACK, LIGHTEST_ORANGE, MEDIUM_YELLOW, LIGHTEST_BLUE; PALETTE0
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
    .import bank13_A000, clear_oam_sprite, clear_nametables, chr_5E_5F_to_sram, wait_nmi_processed
    .import bank_A000_a, home_camera, set_ppu_banks, copy_palettes
    .importzp byte_D6, CurrentFieldPosition, pStr

                JSR     bank13_A000
                JSR     intro

start_menu:
                JSR     clear_oam_sprite
                JSR     clear_nametables
                JSR     chr_5E_5F_to_sram ; copy chr banks $5E, $5F (wall??) in SRAM $6C00-$73FF
                JSR     wait_nmi_processed
                LDA     #$19            ; copy_to_sram BANK19:A28B
                LDX     #$8A
                LDY     #$A2
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JSR     home_camera
                LDA     #$35            ; SRAM address for CHR banks BANK19:6235 (copied 19 bank)
                LDX     #$62
                JSR     set_ppu_banks   ; set 6 memory banks for PPU
                                        ; pPPUTable = XA address (X - high and A - low byte)
                                        ;
                                        ; |PPU address | PPUTable offset | Size |
                                        ; |-------------------------------------|
                                        ; |   $1000    |        0        |  2K  |
                                        ; |-------------------------------------|
                                        ; |   $1800    |        1        |  2K  |
                                        ; |-------------------------------------|
                                        ; |   $0000    |        2        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0400    |        3        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0800    |        4        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0C00    |        5        |  1K  |
                                        ; ---------------------------------------
                LDA     #$3B            ; SRAM address for palettes banks BANK19:623B (copied 19 bank)
                LDX     #$62
                JSR     copy_palettes

redraw_game_menu:                       ; CODE XREF: erase_save:@exit↓j
                                        ; copy_save:@exit↓j
                LDX     #$C             ; offset TilepackTable - ClearBottomScreen
                JSR     draw_block      ; Draws a block from a TilepackTable
                                        ; Input: A - block offset in table
                JSR     draw_menu
                JSR     game_menu
                LDA     #0
                STA     byte_D6
                LDY     CurrentFieldPosition
                LDA     (pStr),Y
                ASL     A
                TAX
                LDA     MenuFunctions+1,X
                PHA
                LDA     MenuFunctions,X
                PHA
                TYA
                LSR     A
                LSR     A
                RTS
; End of function game_intro

; ---------------------------------------------------------------------------
MenuFunctions:
    .import get_save_block
    .word get_save_block-1, copy_save-1, erase_save-1, start_new-1

; =============== S U B R O U T I N E =======================================


start_new:
    .import sram_write_enable, mmc3_bank_set, copy_pure_save, sram_read_enable, make_save

                PHA
                JSR     sram_write_enable
                LDA     #$18
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                JSR     copy_pure_save
                JSR     sram_read_enable
                JSR     bank13_A000
                JSR     new_game
                BCS     start_menu
                JMP     make_save
; End of function start_new


; =============== S U B R O U T I N E =======================================


erase_save:
    .import get_dist_save_addr
    .importzp pDist

                JSR     erase_dialog
                BNE     @exit
                LDA     $7402           ; CurrentGame.PureSave.GameNumber
                JSR     get_dist_save_addr ; Input: A - destination block number
                                        ; Output: returns the destination address to pDist
                                        ;         returns $7400 - source address to pTileID
                JSR     sram_write_enable
                LDY     #3
                LDA     #0
                STA     (pDist),Y
                JSR     sram_read_enable

@exit:
                JMP     redraw_game_menu
; End of function erase_save


; =============== S U B R O U T I N E =======================================


copy_save:
    .importzp SaveNum, Buttons, ItemCount

                STA     SaveNum
                LDX     #$10            ; ToWhich
                JSR     draw_block      ; Draws a block from a TilepackTable
                                        ; Input: A - block offset in table
                LDA     SaveNum
                SEC
                ROL     A
                ASL     A
                TAX
                JSR     cur_game_menu
                BIT     Buttons
                BVS     @exit
                LDA     CurrentFieldPosition
                STA     ItemCount
                JSR     erase_dialog
                BCS     @save
                BNE     @exit

@save:
                LDA     SaveNum
                JSR     get_save_block
                JSR     sram_write_enable
                LDA     ItemCount
                ORA     #$B0
                STA     $7402           ; CurrentPlayer.PureSave.GameNumber
                JSR     make_save

@exit:
                JMP     redraw_game_menu
; End of function copy_save


; =============== S U B R O U T I N E =======================================


erase_dialog:
    .import get_pointer_tilepak, write_tiles

                JSR     get_save_block
                SEC
                BNE     @exit
                LDX     #$E             ; EraseDialog
                JSR     get_pointer_tilepak ; returns a pointer from the TilepackTable
                                        ; Input: X - offset in the TilepackTable table
                                        ; Output: PointerTilePack - pointer from the TilepackTable table
                JSR     write_tiles
                LDX     #$E             ; stru_196218
                JSR     cur_game_menu
                CLC
                LDA     CurrentFieldPosition

@exit:
                RTS
; End of function erase_dialog


; =============== S U B R O U T I N E =======================================


draw_menu:
    .import sub_196000, get_cursor, set_pos_6_5

                LDA     #0

@menu_item:
                STA     ItemCount
                LSR     A
                LSR     A
                JSR     get_save_block
                BEQ     @free
                LDA     #4

@free:
                STA     SaveNum
                LDX     ItemCount
                JSR     sub_196000
                LDA     SaveNum
                LSR     A
                ADC     ItemCount
                TAX                     ; TilepackTable SRAM19:611A
                JSR     draw_block      ; Draws a block from a TilepackTable
                                        ; Input: A - block offset in table
                CLC
                LDA     ItemCount
                ADC     #4
                CMP     #$C
                BCC     @menu_item
                LDX     #$C
                JSR     get_cursor
                JMP     set_pos_6_5
; End of function draw_menu


; =============== S U B R O U T I N E =======================================

; Draws a block from a TilepackTable
; Input: A - block offset in table

draw_block:
    .import write_tiles

                JSR     get_pointer_tilepak ; returns a pointer from the TilepackTable
                                        ; Input: X - offset in the TilepackTable table
                                        ; Output: PointerTilePack - pointer from the TilepackTable table
                JMP     write_tiles
; End of function draw_block


; =============== S U B R O U T I N E =======================================


cur_game_menu:
    .import cursor_update, get_cursor_pos

                JSR     get_cursor

game_menu:                              ; CODE XREF: game_intro+34↑p
                JSR     cursor_update
                LDA     #$FF
                JMP     get_cursor_pos  ; get position of cursor and set cursor tile
; End of function cur_game_menu         ; Input: A - tile ID
                                        ; Output: PosX, PosY

; =============== S U B R O U T I N E =======================================


sub_149516:
    .export sub_149516
    .import get_save_field, sub_F1ED
    .importzp byte_20, byte_21, byte_22, byte_23, byte_24, byte_25, EnemyGroup, byte_A0, MsgNumber

                LDA     EnemyGroup
                ORA     byte_20
                ORA     byte_21
                ORA     byte_22
                ORA     byte_23
                ORA     byte_25
                BNE     locret_149538
                BIT     byte_A0
                BMI     locret_149538
                JSR     sub_1495D3
                LDX     MsgNumber
                LDA     byte_149593,X

loc_149530:
                BNE     loc_149539
                STA     byte_24

loc_149534:
                LDA     #0
                STA     EnemyGroup

locret_149538:
                RTS
; ---------------------------------------------------------------------------

loc_149539:
                TAY
                AND     #7
                BNE     loc_149548
                TYA
                LSR     A
                LSR     A
                LSR     A
                JSR     get_save_field
                JMP     loc_149530
; ---------------------------------------------------------------------------

loc_149548:
                CLC
                ADC     byte_24
                CMP     #9
                BCC     loc_149551
                LDA     #8

loc_149551:
                TAX
                JSR     sub_F1ED
                CMP     locret_14958A,X
                BCS     loc_149534
                LDX     byte_24
                INX
                CPX     #3
                BCC     loc_149563
                LDX     #2

loc_149563:
                STX     byte_24
                TYA
                AND     #$F8
                STA     pDist
                LDA     #0
                ASL     pDist
                ROL     A
                ADC     #$92
                STA     pDist+1

loc_149573:
                JSR     sub_F1ED
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     (pDist),Y
                BEQ     loc_149573
                STA     EnemyGroup
                LDA     #$19
                LDX     #$A6
                LDY     #$A4            ; BANK19:A4A7
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte

locret_14958A:                          ; DATA XREF: sub_149516+3F↑r
                RTS
; End of function sub_149516

; ---------------------------------------------------------------------------
                .byte $20, $15, $10, $D, $A, 8, 6, 5
byte_149593:    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $C, $11, $E8, $26
                .byte $2D, $34, $3D, $43, $4D, $55, $5D, $65, 0, 0, 0
                .byte 0, 0, $6C, $74, $7C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .byte $E0, 0, 0, $8D, $95, $9C, $A7, 0, $AD, 0, 0, $B5
                .byte $BD, $C5, $CD, 0, 0, $D6, 0, 0, 0, $DC, 0

; =============== S U B R O U T I N E =======================================


sub_1495D3:
    .import get_sram_pointer, one_color_palettes_save, back_palettes
    .importzp Pointer, pTileID, byte_D5

                LDX     #0

loc_1495D5:
                LDA     $7408,X         ;CurrentGame.PureSave.CharactersNum,X
                BEQ     loc_14962A
                JSR     get_sram_pointer ; Input: A -
                                        ; Output: Pointer (word) = High $74 Low $40 * A
                LDY     #1
                LDA     (Pointer),Y
                LSR     A
                BCC     loc_1495E8
                LDA     #7
                BNE     loc_1495ED

loc_1495E8:
                LSR     A
                BCC     loc_14962A
                LDA     #7

loc_1495ED:
                STA     pTileID
                CLC
                TXA
                ADC     byte_D5
                AND     pTileID
                BNE     loc_14962A
                JSR     sram_write_enable
                SEC
                LDY     #$14
                LDA     (Pointer),Y
                SBC     #1
                STA     pTileID
                INY
                LDA     (Pointer),Y
                SBC     #0
                STA     pTileID+1
                BCC     loc_14961B
                LDA     pTileID
                ORA     pTileID+1
                BEQ     loc_14961B
                LDA     pTileID+1
                STA     (Pointer),Y
                DEY
                LDA     pTileID
                STA     (Pointer),Y

loc_14961B:
                JSR     sram_read_enable
                TXA
                PHA
                LDA     #$16
                JSR     one_color_palettes_save
                JSR     back_palettes
                PLA
                TAX

loc_14962A:
                INX
                CPX     #4
                BCC     loc_1495D5
                RTS
; End of function sub_1495D3


; =============== S U B R O U T I N E =======================================


sub_149630:
    .export sub_149630, loc_149641
    .import update_animation
    .importzp AddrForJmp, OffsetNMI_Data, NMIFlags

                LDA     EnemyGroup
                CMP     #$A2
                BEQ     locret_149684
                LDA     #WHITE
                JSR     one_color_palettes_save
                JSR     back_palettes
                JSR     update_animation

loc_149641:
                LDA     #7
                STA     NMI_Data + NMI_DATA::NMI_ID ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                STA     Pointer

loc_14964D:                         ; cycle of animated disappearance of the location before the battle
                LDX     Pointer
                LDA     byte_1496F1,X
                CMP     #$FF
                BEQ     loc_149675
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                STA     Pointer+1
                LDA     byte_1496F1,X
                AND     #$F
                STA     AddrForJmp
                JSR     sub_149685
                LDX     Pointer+1
                LDY     AddrForJmp
                STY     Pointer+1
                STX     AddrForJmp
                JSR     sub_149685
                INC     Pointer
                BNE     loc_14964D

loc_149675:
                LDA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                CMP     #0
                BEQ     locret_149684
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #1
                STA     NMIFlags

locret_149684:
                RTS
; End of function sub_149630


; =============== S U B R O U T I N E =======================================


sub_149685:
    .import nt_calc
    .importzp Row, Column, NTAddr

                LDA     #$E
                SEC
                SBC     AddrForJmp
                BCS     loc_14968E
                LDA     #0

loc_14968E:
                STA     Row
                PHA
                LDA     #$F
                SEC
                SBC     Pointer+1
                STA     Column
                JSR     loc_1496B8
                LDA     #$F
                CLC
                ADC     AddrForJmp
                CMP     #$1E
                BCC     loc_1496A6
                LDA     #$1D

loc_1496A6:
                STA     Row
                JSR     loc_1496B8
                LDA     #$10
                CLC
                ADC     Pointer+1
                STA     Column
                JSR     loc_1496B8
                PLA
                STA     Row

loc_1496B8:
                LDA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                CMP     #$14
                BCC     loc_1496CF
                LDA     #0
                STA     OffsetNMI_Data
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi_processed
                LDA     #0
                STA     NMI_Data + NMI_DATA::NumOfChr ; NMITable

loc_1496CF:
                JSR     nt_calc         ; Calculate Name table address
                                        ; Input: CameraX, CameraY, Column, Row
                                        ; Output: NTAddr address for screen tile position (Column, Row + 1)
                LDA     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                ASL     A
                CLC
                ADC     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                TAX
                LDA     NTAddr
                STA     NMI_Data + NMI_DATA::PPU_Addr,X ; NMITable
                LDA     NTAddr+1
                STA     NMI_Data + NMI_DATA::PPU_Addr+1,X ; NMITable
                LDA     #0
                STA     NMI_Data + NMI_DATA::Chr,X  ; NMITable
                STA     NMI_Data + NMI_DATA::Next,X ; NMITable
                INC     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                RTS
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
    .import one_color_lighten_palette, wait_change_music, wait_frames, sub_D674
    .importzp IRQCount

                LDA     #LIGHTEST_YELLOW
                JSR     one_color_lighten_palette
                LDA     #5
                JSR     sub_149920
                LDA     #$C2
                LDX     #$99            ; 99C2
                JSR     sub_1497D6
                LDA     #$FF
                JSR     wait_change_music
                LDX     #$B4
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                LDA     #$F
                JSR     one_color_palettes_save
                LDA     #0
                STA     IRQCount
                JSR     chr_5E_5F_to_sram ; copy chr banks $5E, $5F (wall??) in SRAM $6C00-$73FF
                JMP     sub_D674
; End of function sub_149779


; =============== S U B R O U T I N E =======================================


sub_1497A3:
    .export sub_1497A3
    .import sub_1AA000

                LDA     #$E
                JSR     sub_149920
                LDA     #$D5
                LDX     #$99            ; 99D5
                JSR     sub_1497D6
                LDA     #$FF
                JSR     wait_change_music
                LDA     #$E0
                LDX     #$99            ; 99E0
                JSR     sub_1497D6
                LDA     #9
                STA     apu_7F0
                LDA     #1
                STA     byte_7F4
                LDA     #$E9
                LDX     #$99            ; 99E9
                JSR     sub_1497D6
                LDA     #$1A
                LDX     #7
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                JMP     sub_1AA000
; End of function sub_1497A3


; =============== S U B R O U T I N E =======================================


sub_1497D6:
    .import sub_EE0E, wait_nmi
    .importzp CursorMode, CameraX, CameraY, byte_6C, byte_6D

                STA     pDist
                STX     pDist+1
                LDY     #0
                STY     CursorMode

loc_1497DE:
                LDA     (pDist),Y
                BEQ     locret_14983C
                STA     byte_6C
                INY
                LDA     (pDist),Y
                STA     byte_6D
                INY
                AND     #$20
                BEQ     loc_1497F1
                SEC
                ROL     CursorMode

loc_1497F1:
                TYA
                PHA
                LDA     byte_6D
                AND     #3
                BEQ     loc_149808
                TAX
                LDA     byte_149A05,X
                JSR     sub_EE0E
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$F
                JSR     sub_EE0E

loc_149808:
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     CursorMode
                BNE     loc_149815
                LDA     byte_6C
                AND     #3
                BNE     loc_149820

loc_149815:
                LSR     A

loc_149816:
                PHA
                JSR     sub_14983D
                PLA
                SEC
                SBC     #1
                BPL     loc_149816

loc_149820:
                LDA     byte_6C
                ASL     A
                ASL     A
                AND     byte_6D
                AND     #4
                BEQ     loc_149834
                LSR     A
                EOR     CameraX
                STA     CameraX
                LDA     #$A
                STA     apu_7F0

loc_149834:
                DEC     byte_6C
                BNE     loc_149808
                PLA
                TAY
                BNE     loc_1497DE

locret_14983C:
                RTS
; End of function sub_1497D6


; =============== S U B R O U T I N E =======================================


sub_14983D:
                BIT     byte_6D
                BPL     locret_149877
                BVC     loc_149859
                JSR     sub_149878
                BNE     loc_149851
                DEX
                CPX     #5
                BCC     locret_149877
                TXA
                JSR     sub_149883

loc_149851:
                SEC
                LDA     CameraY
                SBC     #1
                JMP     loc_149871
; ---------------------------------------------------------------------------

loc_149859:
                JSR     sub_149878
                EOR     #$F
                BNE     loc_14986C
                INX
                CPX     #$3C
                BCS     locret_149877
                TXA
                CLC
                ADC     #$A
                JSR     sub_149883

loc_14986C:
                CLC
                LDA     CameraY
                ADC     #$11

loc_149871:
                BCS     loc_149875
                SBC     #$F

loc_149875:
                STA     CameraY

locret_149877:
                RTS
; End of function sub_14983D


; =============== S U B R O U T I N E =======================================


sub_149878:
    .importzp FieldPosition

                JSR     wait_nmi_processed
                LDX     FieldPosition
                CLC
                LDA     CameraY
                AND     #$F
                RTS
; End of function sub_149878


; =============== S U B R O U T I N E =======================================


sub_149883:
                STX     FieldPosition
                JSR     sub_14988D
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_149883


; =============== S U B R O U T I N E =======================================


sub_14988D:
    .importzp byte_6E

                LDX     #$24

loc_14988F:
                STX     AddrForJmp
                LDX     #0

loc_149893:
                CMP     #$F
                BCC     loc_14989C
                SBC     #$F
                INX
                BCS     loc_149893

loc_14989C:
                ASL     A
                ASL     A
                STA     byte_6E
                TXA
                LSR     A
                ROR     A
                ROR     A
                AND     #$C0
                ORA     byte_6E
                STA     Pointer
                LDA     #6
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                STA     Pointer+1
                ORA     #3
                STA     pTileID+1
                LDA     byte_6E
                AND     #$38 ; '8'
                ORA     #$C0
                STA     pTileID
                JSR     wait_nmi_processed
                LDA     #5
                LDY     #$40
                STA     NMI_Data + NMI_DATA::NMI_ID ; NMITable
                STY     NMI_Data + NMI_DATA::NumOfChr ; NMITable
                LDY     #8
                STA     $444            ; byte_444
                STY     $445            ; byte_444+1
                LDA     Pointer+1
                LDY     Pointer
                AND     #3
                ORA     AddrForJmp
                STA     NMI_Data + NMI_DATA::PPU_Addr ; NMITable
                STY     NMI_Data + NMI_DATA::PPU_Addr+1 ; NMITable
                LDA     pTileID+1
                LDY     pTileID
                AND     #3
                ORA     AddrForJmp
                STA     $446            ; byte_444+2
                STY     $447            ; byte_444+3
                LDY     #$3F

loc_1498F9:
                LDA     (Pointer),Y
                JSR     sub_149919
                STA     NMI_Data + NMI_DATA::Chr,Y  ; NMITable
                DEY
                BPL     loc_1498F9
                LDY     #7

loc_149906:
                LDA     (pTileID),Y
                JSR     sub_149919
                STA     $448,Y          ; byte_444+4,Y
                DEY
                BPL     loc_149906
                LDA     #0
                STA     $450            ; byte_444+$C
                STA     OffsetNMI_Data
                RTS
; End of function sub_14988D


; =============== S U B R O U T I N E =======================================


sub_149919:
                CPX     #4
                BCC     locret_14991F
                LDA     #0

locret_14991F:
                RTS
; End of function sub_149919


; =============== S U B R O U T I N E =======================================


sub_149920:
    .import set_camera, sub_E087, lighten_palette

                STA     FieldPosition
                LDA     #$B
                JSR     wait_change_music
                JSR     sub_1499A3
                JSR     set_camera
                JSR     clear_oam_sprite
                JSR     wait_nmi_processed
                LDX     #$F

loc_149935:
                LDA     stru_149A3D,X
                STA     $340,X         ;SpriteTable.Tiles+$40,X
                DEX
                BPL     loc_149935
                LDA     #$2D           ; 9A2D
                LDX     #$9A
                STA     Pointer
                STX     Pointer+1
                JSR     sub_E087
                LDA     #$54
                JSR     sub_1499AD
                LDA     #$F9            ; 99F9
                LDX     #$99
                JSR     set_ppu_banks   ; set 6 memory banks for PPU
                                        ; pPPUTable = XA address (X - high and A - low byte)
                                        ;
                                        ; |PPU address | PPUTable offset | Size |
                                        ; |-------------------------------------|
                                        ; |   $1000    |        0        |  2K  |
                                        ; |-------------------------------------|
                                        ; |   $1800    |        1        |  2K  |
                                        ; |-------------------------------------|
                                        ; |   $0000    |        2        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0400    |        3        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0800    |        4        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0C00    |        5        |  1K  |
                                        ; ---------------------------------------
                LDA     #1
                STA     NMIFlags
                LDY     #4

loc_14995B:
                TYA
                PHA
                LDX     #$20 ; ' '
                JSR     loc_14988F
                LDA     #$80
                STA     NMIFlags
                PLA
                TAY
                DEY
                BPL     loc_14995B
                JSR     sub_14998B
                LDX     #3

@next_byte:
                LDA     off_149A09,X
                STA     InterruptTable,X
                DEX
                BPL     @next_byte
                LDA     #$9F
                STA     IRQCount
                LDX     #$1F

@next_color:
                LDA     Palettes_0,X
                STA     PalBG,X
                DEX
                BPL     @next_color
                JMP     lighten_palette ; increase the brightness of colors in the palette
; End of function sub_149920


; =============== S U B R O U T I N E =======================================


sub_14998B:
                CLC
                LDA     FieldPosition
                ADC     #$B

loc_149990:
                PHA
                JSR     sub_14988D
                LDA     #$80
                STA     NMIFlags
                PLA
                SEC
                SBC     #1
                BCC     locret_1499A2
                CMP     FieldPosition
                BCS     loc_149990

locret_1499A2:
                RTS
; End of function sub_14998B


; =============== S U B R O U T I N E =======================================


sub_1499A3:
                LDA     FieldPosition
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                TAY
                LDX     #$FC
                RTS
; End of function sub_1499A3


; =============== S U B R O U T I N E =======================================


sub_1499AD:
    .import loc_CE08

                PHA
                TAY
                LDA     #0
                LDX     #$60
                JSR     loc_CE08
                PLA
                CLC
                ADC     #2
                TAY
                LDA     #0
                LDX     #$68
                JMP     loc_CE08
; End of function sub_1499AD

; ---------------------------------------------------------------------------
                .word $80, $8080, $8280, $8320, $8220, $81C0, $8280, $8320
                .word $8220
                .byte 0
                .word $C080, $C320, $C220, $C180, $C380
                .byte 0
                .word $240, $710, $620, $550
                .byte 0
                .word $2308, $2208, $A1F0, $F0, $400, $80, $A9A9, $AAAB
CHRBank_1:      .byte $76, $70, $50, $51, $52, $53
                .byte $76, $70, $48, $49, $4A, $4B
byte_149A05:    .byte $F, $38, $21, $34
    .import locret_EDCA
off_149A09:     .word locret_EDCA
                .byte   0
                .byte   0
Palettes_0:     .byte BLACK, MEDIUM_INDIGO, WHITE, DARK_GRAY; PALETTE0
                .byte BLACK, MEDIUM_GRAY, WHITE, DARK_GRAY; PALETTE1
                .byte BLACK, MEDIUM_ORANGE, LIGHTEST_ORANGE, MEDIUM_RED; PALETTE2
                .byte BLACK, LIGHTEST_YELLOW, WHITE, DARK_GRAY; PALETTE3
                .byte BLACK, BLACK, DARK_GRAY, WHITE; PALETTE0
                .byte BLACK, BLACK, MEDIUM_RED, LIGHTEST_ORANGE; PALETTE1
                .byte BLACK, BLACK, LIGHT_PURPLE, LIGHTEST_ORANGE; PALETTE2
                .byte BLACK, BLACK, MEDIUM_INDIGO, LIGHTEST_ORANGE; PALETTE3
                .byte $68, $78, 0, 0, $58, $88, 0, 0, $78, $88, 0, 0, $68
                .byte $98, 0, 0
stru_149A3D:    .byte $86, 0, $F4, $76, 0, 0
                .word $99C0         ; ANIM_SPRITE <$86, 0, $F4, $76, 0, 0, FRAME.pSprite+$99C0>
                .byte 6, 0, $E4, $76, 0, 0
                .word $99C4         ; ANIM_SPRITE <6, 0, $E4, $76, 0, 0, FRAME.pSprite+$99C4>

; =============== S U B R O U T I N E =======================================


new_game:
    .import delay
    .importzp Encounter

                JSR     draw_start_game_menu

@character1:
                LDA     #6
                STA     Encounter
                LDA     #$CA            ; SRAM19:62CA
                LDX     #$62
                JSR     enter_name
                BCS     @exit

@character2:
                LDA     #6
                STA     Encounter
                LDA     #$D0            ; SRAM19:62D0
                LDX     #$62
                JSR     enter_name
                BCS     @character1

@character3:
                LDA     #6
                STA     Encounter
                LDA     #$D6            ; SRAM19:62D6
                LDX     #$62
                JSR     enter_name
                BCS     @character2

@character4:
                LDA     #6
                STA     Encounter
                LDA     #$DC            ; SRAM19:62DC
                LDX     #$62
                JSR     enter_name
                BCS     @character3
                LDA     #$A
                STA     Encounter
                LDA     #$E2            ; SRAM19:62E2
                LDX     #$62
                JSR     enter_name
                BCS     @character4
                JSR     clear_screen
                JSR     draw_confirm
                JSR     lighten_palette ; increase the brightness of colors in the palette
                JSR     confirm
                BCC     @yes
                JMP     new_game
; ---------------------------------------------------------------------------

@yes:
                JSR     clear_screen
                LDX     #$3C
                JSR     delay
                JSR     lighten_palette ; increase the brightness of colors in the palette
                LDA     #2
                STA     Column
                LDA     #3
                STA     Row
                LDX     #$D0            ; SRAM19:64D0
                LDY     #$64
                JSR     print_story
                LDA     #$FF
                STA     NewMusic
                JSR     lighten_palette ; increase the brightness of colors in the palette
                LDA     #6
                STA     Column
                LDA     #$A
                STA     Row
                LDX     #$7D            ; SRAM19:667D
                LDY     #$66
                JSR     print_story
                CLC

@exit:
                RTS
; End of function new_game


; =============== S U B R O U T I N E =======================================


draw_confirm:
    .import get_anim_sprite, next_anim_sprite

                LDA     #$8B            ; SRAM19:6C8B character names, favorite food
                LDX     #$6C
                JSR     draw_frame
                LDA     #$C0            ; SRAM19:6CC0 frame Is this OK? Yes No
                LDX     #$6C
                JSR     draw_frame
                JSR     get_anim_sprite
                LDY     #0

@next_sprite:
                JSR     anim_sprite
                JSR     next_anim_sprite
                CMP     #$20
                BNE     @next_sprite
                RTS
; End of function draw_confirm


; =============== S U B R O U T I N E =======================================


anim_sprite:
    .import set_anim_sprite

                JSR     wait_nmi_processed
                JMP     set_anim_sprite
; End of function anim_sprite


; =============== S U B R O U T I N E =======================================


draw_frame:
    .importzp PointerTilePack

                STA     PointerTilePack
                STX     PointerTilePack+1
                JMP     write_tiles
; End of function draw_frame


; =============== S U B R O U T I N E =======================================


confirm:
    .importzp pCursor

                LDA     #$F0            ; SRAM19:62F0
                LDX     #$62
                STA     pCursor
                STX     pCursor+1
                JSR     cursor_update
                LDA     CurrentFieldPosition
                BEQ     @yes
                SEC
                RTS
; ---------------------------------------------------------------------------

@yes:
                CLC
                RTS
; End of function confirm


; =============== S U B R O U T I N E =======================================


print_story:
    .import wait_A_B, print_string
    .importzp byte_70

                LDA     #0
                STA     byte_70
                STX     PointerTilePack
                STY     PointerTilePack+1

@next_string:
                JSR     print_string
                DEC     Row
                CMP     #0
                BNE     @next_string
                JSR     wait_A_B
                JMP     clear_screen
; End of function print_story


; =============== S U B R O U T I N E =======================================


draw_start_game_menu:
                JSR     clear_screen
                JSR     home_camera
                LDA     #$2D              ; SRAM19:6C2D
                LDX     #$6C
                JSR     draw_frame
                JSR     draw_alphabetic
                JSR     draw_name_frame
                JMP     lighten_palette ; increase the brightness of colors in the palette
; End of function draw_start_game_menu


; =============== S U B R O U T I N E =======================================


draw_alphabetic:
    .import get_next_string, loc_C6DB

                LDA     #$70              ; SRAM19:6470
                STA     pTileID
                LDA     #$64
                STA     pTileID+1
                LDA     #$E
                STA     AddrForJmp+1
                LDX     #4

loc_149B4E:
                TXA
                PHA
                LDA     #8
                STA     AddrForJmp
                LDA     AddrForJmp
                STA     Column
                LDA     AddrForJmp+1
                STA     Row
                LDA     pTileID
                STA     PointerTilePack
                LDA     pTileID+1
                STA     PointerTilePack+1
                JSR     loc_C6DB
                JSR     get_next_string
                PLA
                TAX
                DEX
                BNE     loc_149B4E
                LDA     #$66
                LDX     #$6C           ; SRAM19:6C66
                JMP     draw_frame
; End of function draw_alphabetic


; =============== S U B R O U T I N E =======================================


draw_name_frame:
                LDA     #0              ; SRAM19:6C00
                LDX     #$6C
                JMP     draw_frame
; End of function draw_name_frame


; =============== S U B R O U T I N E =======================================


enter_name:
    .importzp pCharacter, NamePos

                STA     pCharacter
                STX     pCharacter+1
                LDY     #0
                JSR     get_pointer     ; Input: Y = 0 pointer at FRAME
                                        ;        Y = 2 pointer at TilePack (Ask)
                                        ;        Y = 4 pointer at Name
                                        ; Output: Pointer - result
                ORA     Pointer
                BEQ     @food
                LDA     #$22            ; ROM:FF22
                STA     AddrForJmp
                LDA     #$FF
                STA     AddrForJmp+1
                LDA     #$80
                STA     pTileID
                LDY     #0
                JSR     anim_sprite

@food:
                JSR     draw_ask
                LDA     #$24            ; SRAM19:6C24
                LDX     #$6C
                JSR     draw_frame
                LDY     #4
                JSR     get_pointer     ; Input: Y = 0 pointer at FRAME
                                        ;        Y = 2 pointer at TilePack (Ask)
                                        ;        Y = 4 pointer at Name
                                        ; Output: Pointer - result
                LDY     Encounter
                LDA     #0
                STA     byte_70
                STA     $581,Y          ; byte_581,Y
                STY     NamePos

loc_149BB5:
                LDA     (Pointer),Y
                BNE     loc_149BBD
                STY     NamePos
                LDA     #$A2

loc_149BBD:
                STA     $580,Y          ; byte_580,Y
                DEY
                BPL     loc_149BB5
                JSR     input_name
                BCS     loc_149BE8
                LDY     #4
                JSR     get_pointer     ; Input: Y = 0 pointer at FRAME
                                        ;        Y = 2 pointer at TilePack (Ask)
                                        ;        Y = 4 pointer at Name
                                        ; Output: Pointer - result
                JSR     sram_write_enable
                LDY     Encounter

@prev_char:
                LDA     $580,Y          ; byte_580,Y
                CMP     #$A2
                BNE     @no_letter
                LDA     #0

@no_letter:
                STA     (Pointer),Y
                DEY
                BPL     @prev_char
                JSR     sram_read_enable
                JSR     clear_oam_sprite
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_149BE8:
                JSR     clear_oam_sprite
                SEC
                RTS
; End of function enter_name


; =============== S U B R O U T I N E =======================================

; Input: Y = 0 pointer at FRAME
;        Y = 2 pointer at TilePack (Ask)
;        Y = 4 pointer at Name
; Output: Pointer - result

get_pointer:
                LDA     (pCharacter),Y
                STA     Pointer
                INY
                LDA     (pCharacter),Y
                STA     Pointer+1
                RTS
; End of function get_pointer


; =============== S U B R O U T I N E =======================================


draw_ask:
                JSR     draw_name_frame
                LDX     #8
                JSR     delay
                LDY     #2
                JSR     get_pointer     ; Input: Y = 0 pointer at FRAME
                                        ;        Y = 2 pointer at TilePack (Ask)
                                        ;        Y = 4 pointer at Name
                                        ; Output: Pointer - result

loc_149C04:
                LDA     Pointer
                STA     PointerTilePack
                LDA     Pointer+1
                STA     PointerTilePack+1
                LDA     #9
                STA     Column
                LDA     #3
                STA     Row

loc_149C14:
                JSR     loc_C6DB
                CMP     #0
                BNE     loc_149C14
                RTS
; End of function draw_ask


; =============== S U B R O U T I N E =======================================


input_name:
    .import short_cursor_update, loc_EF7C, long_delay, AlphabeticalList, Names

                JSR     oam_sprite
                LDA     #$E8            ; SRAM19:62E8
                LDX     #$62
                STA     pCursor
                STX     pCursor+1
                LDA     #$70            ; SRAM19:6470
                LDX     #$64
                STA     pStr
                STX     pStr+1
                LDA     #1
                STA     byte_D6

update_loop:
                JSR     short_cursor_update
                JMP     command_button
; ---------------------------------------------------------------------------

loc_149C39:
                JSR     oam_sprite
                JSR     loc_EF7C

command_button:
                BIT     Buttons
                BVS     back
                BMI     @buttonA
                LDA     Buttons
                AND     #$10
                BNE     end
                JMP     update_loop
; ---------------------------------------------------------------------------

@buttonA:
                LDX     CurrentFieldPosition
                LDA     AlphabeticalList,X
                CMP     #$A1
                BEQ     back
                CMP     #$A2
                BEQ     end
                CMP     #$A3
                BEQ     previous
                LDX     NamePos
                STA     $580,X          ; byte_580,X
                CPX     Encounter
                BEQ     loc_149C6B
                INX
                STX     NamePos

loc_149C6B:
                JMP     loc_149C39
; ---------------------------------------------------------------------------

previous:
                SEC
                RTS
; ---------------------------------------------------------------------------

back:
                LDA     #$A2
                LDX     NamePos
                CPX     Encounter
                BNE     loc_149C7D
                CMP     $580,X          ; byte_580,X
                BNE     loc_149C85

loc_149C7D:
                STA     $580,X          ; byte_580,X
                DEX
                BMI     loc_149C88
                STX     NamePos

loc_149C85:
                STA     $580,X          ; byte_580,X

loc_149C88:
                JMP     loc_149C39
; ---------------------------------------------------------------------------

end:
                LDY     NamePos

@get_letter:
                LDA     $580,Y          ; byte_580,Y
                CMP     #$A2
                BEQ     @no_letter
                CMP     #$A0
                BNE     @letter
                LDA     #$A2
                STA     $580,Y          ; byte_580,Y

@no_letter:
                DEY
                BPL     @get_letter

@letter:
                CPY     Encounter
                BEQ     loc_149CA5
                INY

loc_149CA5:
                STY     NamePos
                CPY     #0
                BEQ     zero_length
                LDX     #0

@next_row:
                LDY     #0

@next_compare:
                LDA     Names,X
                BEQ     @last_row
                CMP     #1
                BEQ     @repeat_msg
                INX
                INY
                CMP     $57F,Y          ; byte_57F,Y
                BEQ     @next_compare

@next_tile:
                LDA     Names,X
                INX
                CMP     #1
                BNE     @next_tile
                BEQ     @next_row

@last_row:
                LDA     #0
                STA     byte_D6
                CLC
                RTS
; ---------------------------------------------------------------------------

@repeat_msg:
                JSR     long_delay
                JSR     draw_name_frame
                LDA     #$7F
                LDX     #$63              ; SRAM19:637F
                STA     Pointer
                STX     Pointer+1
                JSR     loc_149C04
                LDA     $580            ; byte_580
                CMP     #$A0
                BEQ     loc_149CFE
                LDA     #$98
                LDX     #$63             ; SRAM19:6398
                STA     PointerTilePack
                STX     PointerTilePack+1
                LDX     #8
                LDY     #$E
                STX     Column
                STY     Row

@next_msg_row:
                JSR     loc_C6DB
                CMP     #0
                BNE     @next_msg_row

loc_149CFE:
                JSR     wait_A_B
                JSR     draw_alphabetic
                JSR     draw_ask

zero_length:
                JMP     input_name
; End of function input_name


; =============== S U B R O U T I N E =======================================


oam_sprite:
                LDA     Column
                PHA
                LDA     Row
                PHA
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                SEC
                LDA     #0
                SBC     Encounter
                SEC
                ROR     A
                CLC
                ADC     #$F
                TAY
                LDA     #$59
                STA     OAM_Cache + OAM_TILE::PosY+4
                CLC
                TYA
                ADC     NamePos
                ASL     A
                ASL     A
                ASL     A
                STA     OAM_Cache + OAM_TILE::PosX+4
                LDA     #1              ; underline
                STA     OAM_Cache + OAM_TILE::TileID+4
                LDA     #0
                STA     OAM_Cache + OAM_TILE::Attr+4
                TYA
                STA     Column
                LDA     #$A
                STA     Row
                LDA     #$80
                STA     PointerTilePack
                LDA     #5
                STA     PointerTilePack+1
                JSR     loc_C6DB
                PLA
                STA     Row
                PLA
                STA     Column
                RTS
; End of function oam_sprite


; =============== S U B R O U T I N E =======================================


clear_screen:
    .import darken_palette, copy_packed_tiles

                JSR     darken_palette
                JSR     clear_oam_sprite
                JSR     clear_nametables
                LDX     #$FD            ; SRAM19:62FD
                LDY     #$62
                JMP     copy_packed_tiles ; copies the palettes at the pointer Pointer offset at $400
; End of function clear_screen


; =============== S U B R O U T I N E =======================================


intro:
    .import preload_palettes
    .importzp CntrlPPU, Gamepad0Buttons, NMIFlags, OtherNMIFlags

                JSR     clear_oam_sprite
                JSR     clear_nametables
                LDA     CntrlPPU        ; PPU_CTRL
                AND     #$FC            ; select nametable $2000
                LDX     #0
                LDY     #0
                STA     CntrlPPU        ; PPU_CTRL
                STX     CameraX         ; no screen scrolling
                STY     CameraY
                LDA     #$63
                LDX     #$9E
                JSR     set_ppu_banks   ; char table address bank14 $9E63
                LDA     #$6F ; 'o'      ; $9E6F
                STA     Pointer
                LDA     #$9E
                STA     Pointer+1       ; palette address bank14 $9E6F
                JSR     preload_palettes
                JSR     darken_palette
                LDA     #$16
                CMP     CurrentMusic
                BEQ     loc_149D93
                STA     NewMusic

loc_149D93:
                LDX     #$AF            ; $9EAF
                LDY     #$9E
                JSR     copy_packed_tiles ; copies the palettes at the pointer Pointer offset at $400
                LDA     #$C4            ; $9EC4
                LDX     #$9E
                JSR     pulsing         ; creates the effect of smoothly increasing the brightness of
                                        ; the image, then holds for a while at maximum brightness,
                                        ; smoothly decreases brightness to black, clears Nametables
                LDX     #$AF            ; $9EAF
                LDY     #$9E
                JSR     copy_packed_tiles ; copies the palettes at the pointer Pointer offset at $400
                LDA     #$EA            ; $9EEA
                LDX     #$9E
                JSR     pulsing         ; creates the effect of smoothly increasing the brightness of
                                        ; the image, then holds for a while at maximum brightness,
                                        ; smoothly decreases brightness to black, clears Nametables
                LDA     #$8F
                STA     Pointer
                LDA     #$9E
                STA     Pointer+1       ; $9E8F
                JSR     preload_palettes
                JSR     darken_palette
                LDA     #$69 ; 'i'      ; $9E69
                LDX     #$9E
                JSR     set_ppu_banks   ; set 6 memory banks for PPU
                                        ; pPPUTable = XA address (X - high and A - low byte)
                                        ;
                                        ; |PPU address | PPUTable offset | Size |
                                        ; |-------------------------------------|
                                        ; |   $1000    |        0        |  2K  |
                                        ; |-------------------------------------|
                                        ; |   $1800    |        1        |  2K  |
                                        ; |-------------------------------------|
                                        ; |   $0000    |        2        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0400    |        3        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0800    |        4        |  1K  |
                                        ; |-------------------------------------|
                                        ; |   $0C00    |        5        |  1K  |
                                        ; ---------------------------------------
                LDA     #$18            ; $9F18
                LDX     #$9F
                JSR     load_tilemap_lighten
                LDA     #0
                STA     Pointer
                LDA     #$10
                STA     $3E0            ; SpriteTable.Tiles+$E0
                LDA     #0
                STA     $3E1            ; SpriteTable.TileID+$E0
                STA     $3E4            ; SpriteTable.field_4+$E0
                STA     $3E5            ; SpriteTable.field_5+$E0
                LDA     #$58
                STA     $3E2            ; SpriteTable.PosX+$E0
                LDA     #$57
                STA     $3E3            ; SpriteTable.PosY+$E0
                LDA     #0
                STA     Gamepad0Buttons

@loop:
                CLC
                LDA     Pointer
                ADC     #$B0
                STA     $3E6            ; SpriteTable.pFrame+$E0
                LDA     #0
                ADC     #$96
                STA     $3E7            ; SpriteTable.pFrame+$E1
                LDA     #$A
                STA     NMIFlags
                CLC
                LDA     Pointer
                ADC     #4
                CMP     #$1C
                BNE     @save_count
                LDA     #0

@save_count:
                STA     Pointer

@wait:
                LDA     Gamepad0Buttons
                AND     #$10
                BNE     @start_pressed
                LDA     NMIFlags
                ORA     OtherNMIFlags
                BNE     @wait
                BEQ     @loop

@start_pressed:
                LDX     #0
                STX     Gamepad0Buttons
                JSR     darken_palette
                LDA     #$19            ; BANK19:A000
                LDX     #$FF            ; check_copyrights
                LDY     #$9F
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                RTS
; End of function intro


; =============== S U B R O U T I N E =======================================

; creates the effect of smoothly increasing the brightness of
; the image, then holds for a while at maximum brightness,
; smoothly decreases brightness to black, clears Nametables

pulsing:
                JSR     load_tilemap_lighten
                LDX     #$FF
                JSR     pause
                LDX     #$40
                JSR     pause
                JSR     darken_palette
                LDX     #$40
                JSR     pause
                JMP     clear_nametables
; End of function pulsing


; =============== S U B R O U T I N E =======================================


load_tilemap_lighten:
    .import sub_C6D2

                STA     PointerTilePack
                STX     PointerTilePack+1

@next_tile:
                JSR     sub_C6D2
                DEC     Row
                CMP     #0
                BNE     @next_tile
                JMP     lighten_palette ; increase the brightness of colors in the palette
; End of function load_tilemap_lighten


; =============== S U B R O U T I N E =======================================


pause:
    .importzp ButtonPressed0

                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     ButtonPressed0
                AND     #$10
                EOR     #$10
                BEQ     @end
                DEX
                BNE     pause

@end:
                RTS
; End of function pause

; ---------------------------------------------------------------------------
CHRBanks0:      .byte $42, $72, $7C, $7C, $40, $41
CHRBanks1:      .byte $42, $72, $7C, $41, $D8, $D9
Palettes0:      .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_YELLOW; PALETTE0
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE1
                .byte BLACK, MEDIUM_RED, WHITE, MEDIUM_INDIGO; PALETTE2
                .byte BLACK, LIGHTEST_GREEN, WHITE, MEDIUM_INDIGO; PALETTE3
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE0
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE1
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE2
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE3
Palettes1:      .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED; PALETTE0
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED; PALETTE1
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED; PALETTE2
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_RED; PALETTE3
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE0
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE1
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE2
                .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE3
                .byte 8, $40, $23, $C0, $AA, 0
                .byte 7, 4, $23, $D2, $40, $23, $D3, $10, $23, $DA, 4
                .byte $23, $DB, 1, 0
IntroNintendo:  .byte $20, $D, $B, $C8, $C9, $CA, $CB, $CD, $CE, $CF, 1
                .byte $20, $D, $C, $D8, 1
                .byte $20, $13, $C, $DF, 1
                .byte $20, $D, $D, $22, $CC, $13, 1
                .byte $20, $D, $F, $E3, $E4, $E5, $E6, $E7, $E8, 0
IntroItoi:      .byte $20, $D, $B, $D9, $DA, $DB, $DC, $DD, $DE, $CE, $CF
                .byte 1
                .byte $20, $D, $C, $D8, 1
                .byte $20, $14, $C, $DF, 1
                .byte $20, 0, $D, $22, $CC, $15, 1
                .byte $20, 8, $F, $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA
                .byte $FB, $FC, $FD, $FE, $FF, 0
IntroMain:      .byte $20, 8, 7, $90, $91, $92, $93, $94, $95, $96, $97
                .byte $98, $99, $9A, $9B, $9C, 1
                .byte $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9
                .byte $AA, $AB, $AC, 1
                .byte $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9
                .byte $BA, $BB, $BC, $BD, $BE, $BF, 1
                .byte $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8, $C9
                .byte $CA, $CB, $CC, $CD, $CE, $CF, 1
                .byte $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $D9
                .byte $DA, $DB, $DC, $DD, $DE, 1
                .byte $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $E8, $E9
                .byte $EA, $EB, $EC, $ED, $EE, 1
                .byte $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $F8, $F9
                .byte $FA, $FB, $FC, $FD, $FE, 1
                .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $9F, $9F, $9F
                .byte $9F, $9D, $9E, $AD, $AE, 1
                .byte $20, 7, $17, $43, $44, $45, $46, $47, $70, $69, $6A
                .byte $6B, $6C, $6D, $6E, $6F, $53, $54, $55, $56, $57
                .byte 0
; end of 'BANK14'
