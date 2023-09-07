CHR_TXT_OFFSET  struc ; (sizeof=0x3)    ; XREF: RAM:CHRText/r
                                        ; BANK18:8000/r ...
PPU_LOW:        .BYTE ?                 ; XREF: text2stack+2F/w
                                        ; text2stack+5B/r ...
BANK_PPU_HIGH:  .WORD ?                 ; XREF: text2stack+34/w
                                        ; text2stack+39/w ...
CHR_TXT_OFFSET  ends

                ;.segment BANK18
                * =  $8000
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$11, 0>
                CHR_TXT_OFFSET <$49, 0>
                CHR_TXT_OFFSET <$79, 0>
                CHR_TXT_OFFSET <$84, 0>
                CHR_TXT_OFFSET <$C3, 0>
                CHR_TXT_OFFSET <$EA, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$3A, 1>
                CHR_TXT_OFFSET <$6C, 1>
                CHR_TXT_OFFSET <$DB, 1>
                CHR_TXT_OFFSET <$3C, 2>
                CHR_TXT_OFFSET <$5A, 2>
                CHR_TXT_OFFSET <$7F, 2>
                CHR_TXT_OFFSET <$B9, 2>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <7, 5>
                CHR_TXT_OFFSET <$F, 5>
                CHR_TXT_OFFSET <$23, 5>
                CHR_TXT_OFFSET <$AA, 5>
                CHR_TXT_OFFSET <$DF, 5>
                CHR_TXT_OFFSET <4, 6>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$31, 6>
                CHR_TXT_OFFSET <$98, 6>
                CHR_TXT_OFFSET <$F2, 6>
                CHR_TXT_OFFSET <$49, 7>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$6D, 7>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$7A, 7>
                CHR_TXT_OFFSET <$BD, 7>
                CHR_TXT_OFFSET <$F2, 7>
                CHR_TXT_OFFSET <6, 8>
                CHR_TXT_OFFSET <$33, 8>
                CHR_TXT_OFFSET <$61, 8>
                CHR_TXT_OFFSET <$7C, 8>
                CHR_TXT_OFFSET <$9B, 8>
                CHR_TXT_OFFSET <$A8, 8>
                CHR_TXT_OFFSET <$E2, 8>
                CHR_TXT_OFFSET <$F7, 8>
                CHR_TXT_OFFSET <1, 9>
                CHR_TXT_OFFSET <$2C, 9>
                CHR_TXT_OFFSET <$56, 9>
                CHR_TXT_OFFSET <$72, 9>
                CHR_TXT_OFFSET <$9C, 9>
                CHR_TXT_OFFSET <$D0, 9>
                CHR_TXT_OFFSET <$D7, 9>
                CHR_TXT_OFFSET <$10, $A>
                CHR_TXT_OFFSET <$40, $A>
                CHR_TXT_OFFSET <$6F, $A>
                CHR_TXT_OFFSET <$B5, $A>
                CHR_TXT_OFFSET <$E6, $A>
                CHR_TXT_OFFSET <$E, $B>
                CHR_TXT_OFFSET <$87, $B>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$98, $B>
                CHR_TXT_OFFSET <$D5, $B>
                CHR_TXT_OFFSET <$1D, $C>
                CHR_TXT_OFFSET <$A0, $C>
                CHR_TXT_OFFSET <$D6, $C>
                CHR_TXT_OFFSET <$54, $D>
                CHR_TXT_OFFSET <$7D, $D>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$84, $E>
                CHR_TXT_OFFSET <$CC, $E>
                CHR_TXT_OFFSET <$2E, $F>
                CHR_TXT_OFFSET <$68, $F>
                CHR_TXT_OFFSET <$C6, $F>
                CHR_TXT_OFFSET <$40, $10>
                CHR_TXT_OFFSET <$8F, $10>
                CHR_TXT_OFFSET <$BE, $10>
                CHR_TXT_OFFSET <$F3, $10>
                CHR_TXT_OFFSET <$27, $11>
                CHR_TXT_OFFSET <$42, $11>
                CHR_TXT_OFFSET <$6D, $11>
                CHR_TXT_OFFSET <$94, $11>
                CHR_TXT_OFFSET <$C4, $11>
                CHR_TXT_OFFSET <$D8, $11>
                CHR_TXT_OFFSET <$A, $12>
                CHR_TXT_OFFSET <$2A, $12>
                CHR_TXT_OFFSET <$32, $12>
                CHR_TXT_OFFSET <$45, $12>
                CHR_TXT_OFFSET <$7C, $12>
                CHR_TXT_OFFSET <$AC, $12>
                CHR_TXT_OFFSET <$B4, $12>
                CHR_TXT_OFFSET <$DE, $12>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$62, $13>
                CHR_TXT_OFFSET <$92, $13>
                CHR_TXT_OFFSET <$E9, $13>
                CHR_TXT_OFFSET <$21, $14>
                CHR_TXT_OFFSET <$36, $14>
                CHR_TXT_OFFSET <$8F, $14>
                CHR_TXT_OFFSET <$A1, $14>
                CHR_TXT_OFFSET <$CD, $14>
                CHR_TXT_OFFSET <$1D, $15>
                CHR_TXT_OFFSET <$46, $15>
                CHR_TXT_OFFSET <$7B, $15>
                CHR_TXT_OFFSET <$DF, $15>
                CHR_TXT_OFFSET <$E, $16>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$AF, $16>
                CHR_TXT_OFFSET <$D4, $16>
                CHR_TXT_OFFSET <$ED, $16>
                CHR_TXT_OFFSET <$35, $17>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$90, $17>
                CHR_TXT_OFFSET <$D7, $17>
                CHR_TXT_OFFSET <$10, $18>
                CHR_TXT_OFFSET <$57, $18>
                CHR_TXT_OFFSET <$A5, $18>
                CHR_TXT_OFFSET <0, $19>
                CHR_TXT_OFFSET <$22, $19>
                CHR_TXT_OFFSET <$46, $19>
                CHR_TXT_OFFSET <$7E, $19>
                CHR_TXT_OFFSET <$C3, $19>
                CHR_TXT_OFFSET <0, $1A>
                CHR_TXT_OFFSET <$59, $1A>
                CHR_TXT_OFFSET <$7F, $1A>
                CHR_TXT_OFFSET <$97, $1A>
                CHR_TXT_OFFSET <$CC, $1A>
                CHR_TXT_OFFSET <$31, $1B>
                CHR_TXT_OFFSET <$96, $1B>
                CHR_TXT_OFFSET <$C8, $1B>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$4F, $1C>
                CHR_TXT_OFFSET <$B5, $1C>
                CHR_TXT_OFFSET <$52, $1D>
                CHR_TXT_OFFSET <$8B, $1D>
                CHR_TXT_OFFSET <$CE, $1D>
                CHR_TXT_OFFSET <$DD, $1D>
                CHR_TXT_OFFSET <$17, $1E>
                CHR_TXT_OFFSET <$8B, $1E>
                CHR_TXT_OFFSET <$B1, $1E>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$F0, $1E>
                CHR_TXT_OFFSET <$66, $1F>
                CHR_TXT_OFFSET <$74, $1F>
                CHR_TXT_OFFSET <0, $20>
                CHR_TXT_OFFSET <$2D, $20>
                CHR_TXT_OFFSET <$62, $20>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$CB, $20>
                CHR_TXT_OFFSET <$C, $21>
                CHR_TXT_OFFSET <$54, $21>
                CHR_TXT_OFFSET <$75, $21>
                CHR_TXT_OFFSET <$B4, $21>
                CHR_TXT_OFFSET <$E4, $21>
                CHR_TXT_OFFSET <$20, $22>
                CHR_TXT_OFFSET <$59, $22>
                CHR_TXT_OFFSET <$7B, $22>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$E0, $22>
                CHR_TXT_OFFSET <$3D, $23>
                CHR_TXT_OFFSET <$6C, $23>
                CHR_TXT_OFFSET <$99, $23>
                CHR_TXT_OFFSET <$B5, $23>
                CHR_TXT_OFFSET <$10, $24>
                CHR_TXT_OFFSET <$58, $24>
                CHR_TXT_OFFSET <$8E, $24>
                CHR_TXT_OFFSET <$B4, $24>
                CHR_TXT_OFFSET <$FC, $24>
                CHR_TXT_OFFSET <$62, $25>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$73, $25>
                CHR_TXT_OFFSET <$A1, $25>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$20, $27>
                CHR_TXT_OFFSET <$99, $27>
                CHR_TXT_OFFSET <$F4, $27>
                CHR_TXT_OFFSET <$1A, $2A>
                CHR_TXT_OFFSET <$9D, $2A>
                CHR_TXT_OFFSET <$F7, $2A>
                CHR_TXT_OFFSET <$52, $2B>
                CHR_TXT_OFFSET <$67, $2B>
                CHR_TXT_OFFSET <$8E, $2B>
                CHR_TXT_OFFSET <$E9, $2B>
                CHR_TXT_OFFSET <$14, $2C>
                CHR_TXT_OFFSET <$81, $2C>
                CHR_TXT_OFFSET <$EE, $2C>
                CHR_TXT_OFFSET <$27, $2D>
                CHR_TXT_OFFSET <$46, $2E>
                CHR_TXT_OFFSET <$64, $2E>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$76, $2E>
                CHR_TXT_OFFSET <$82, $2E>
                CHR_TXT_OFFSET <5, $2F>
                CHR_TXT_OFFSET <$59, $2F>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$C8, $30>
                CHR_TXT_OFFSET <$D1, $30>
                CHR_TXT_OFFSET <$B, $31>
                CHR_TXT_OFFSET <$36, $31>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$44, $31>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$A0, $31>
                CHR_TXT_OFFSET <$EC, $31>
                CHR_TXT_OFFSET <$5D, $32>
                CHR_TXT_OFFSET <$82, $32>
                CHR_TXT_OFFSET <$F4, $32>
                CHR_TXT_OFFSET <$2F, $33>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$62, $33>
                CHR_TXT_OFFSET <$79, $33>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$2B, $34>
                CHR_TXT_OFFSET <$8A, $34>
                CHR_TXT_OFFSET <$A1, $34>
                CHR_TXT_OFFSET <$B8, $34>
                CHR_TXT_OFFSET <$D6, $34>
                CHR_TXT_OFFSET <$F5, $34>
                CHR_TXT_OFFSET <$3B, $35>
                CHR_TXT_OFFSET <$58, $35>
                CHR_TXT_OFFSET <$95, $35>
                CHR_TXT_OFFSET <$FC, $35>
                CHR_TXT_OFFSET <$82, $36>
                CHR_TXT_OFFSET <$DF, $36>
                CHR_TXT_OFFSET <$43, $37>
                CHR_TXT_OFFSET <$8C, $37>
                CHR_TXT_OFFSET <$C1, $37>
                CHR_TXT_OFFSET <$16, $38>
                CHR_TXT_OFFSET <$32, $38>
                CHR_TXT_OFFSET <$6A, $38>
                CHR_TXT_OFFSET <$9E, $38>
                CHR_TXT_OFFSET <4, $39>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$CE, $39>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$78, $3A>
                CHR_TXT_OFFSET <$DD, $3A>
                CHR_TXT_OFFSET <$14, $3B>
                CHR_TXT_OFFSET <$C6, $3B>
                CHR_TXT_OFFSET <$FF, $3B>
                CHR_TXT_OFFSET <$32, $3C>
                CHR_TXT_OFFSET <$7D, $3C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$E1, $3C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$31, $3D>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$B1, $3D>
                CHR_TXT_OFFSET <$ED, $3D>
                CHR_TXT_OFFSET <8, $3E>
                CHR_TXT_OFFSET <$3C, $3E>
                CHR_TXT_OFFSET <$4C, $3E>
                CHR_TXT_OFFSET <$99, $3E>
                CHR_TXT_OFFSET <$C6, $3E>
                CHR_TXT_OFFSET <$FF, $3E>
                CHR_TXT_OFFSET <$14, $3F>
                CHR_TXT_OFFSET <$47, $3F>
                CHR_TXT_OFFSET <$D7, $3F>
                CHR_TXT_OFFSET <0, $40>
                CHR_TXT_OFFSET <$57, $40>
                CHR_TXT_OFFSET <$9D, $40>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$2E, $41>
                CHR_TXT_OFFSET <$C1, $41>
                CHR_TXT_OFFSET <$F1, $41>
                CHR_TXT_OFFSET <$27, $42>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$A7, $42>
                CHR_TXT_OFFSET <$FB, $42>
                CHR_TXT_OFFSET <$41, $43>
                CHR_TXT_OFFSET <$94, $43>
                CHR_TXT_OFFSET <$B5, $43>
                CHR_TXT_OFFSET <$CF, $43>
                CHR_TXT_OFFSET <$36, $44>
                CHR_TXT_OFFSET <$5C, $44>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$A5, $44>
                CHR_TXT_OFFSET <$EE, $44>
                CHR_TXT_OFFSET <$3F, $45>
                CHR_TXT_OFFSET <$56, $45>
                CHR_TXT_OFFSET <$BD, $45>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$F5, $45>
                CHR_TXT_OFFSET <$78, $46>
                CHR_TXT_OFFSET <$A6, $46>
                CHR_TXT_OFFSET <$E9, $46>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$58, $47>
                CHR_TXT_OFFSET <$88, $47>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$BD, $47>
                CHR_TXT_OFFSET <2, $48>
                CHR_TXT_OFFSET <$65, $48>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$C9, $48>
                CHR_TXT_OFFSET <$35, $49>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$58, $49>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$76, $49>
                CHR_TXT_OFFSET <4, $4A>
                CHR_TXT_OFFSET <$21, $4A>
                CHR_TXT_OFFSET <$90, $4A>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$F8, $4A>
                CHR_TXT_OFFSET <6, $4B>
                CHR_TXT_OFFSET <$37, $4B>
                CHR_TXT_OFFSET <$9B, $4B>
                CHR_TXT_OFFSET <$D3, $4B>
                CHR_TXT_OFFSET <$2E, $4C>
                CHR_TXT_OFFSET <$49, $4C>
                CHR_TXT_OFFSET <$65, $4C>
                CHR_TXT_OFFSET <$96, $4C>
                CHR_TXT_OFFSET <$C4, $4C>
                CHR_TXT_OFFSET <$25, $4D>
                CHR_TXT_OFFSET <$79, $4D>
                CHR_TXT_OFFSET <$8D, $4D>
                CHR_TXT_OFFSET <$E3, $4D>
                CHR_TXT_OFFSET <$B, $4E>
                CHR_TXT_OFFSET <$2A, $4E>
                CHR_TXT_OFFSET <$3F, $4E>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$5F, $4E>
                CHR_TXT_OFFSET <$85, $4E>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$16, $4F>
                CHR_TXT_OFFSET <$A3, $4F>
                CHR_TXT_OFFSET <$D5, $4F>
                CHR_TXT_OFFSET <5, $50>
                CHR_TXT_OFFSET <$27, $50>
                CHR_TXT_OFFSET <$7F, $50>
                CHR_TXT_OFFSET <$B2, $50>
                CHR_TXT_OFFSET <$12, $51>
                CHR_TXT_OFFSET <$4A, $51>
                CHR_TXT_OFFSET <$81, $51>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$8C, $52>
                CHR_TXT_OFFSET <$13, $53>
                CHR_TXT_OFFSET <$46, $53>
                CHR_TXT_OFFSET <$83, $53>
                CHR_TXT_OFFSET <$F3, $53>
                CHR_TXT_OFFSET <$29, $54>
                CHR_TXT_OFFSET <$3D, $54>
                CHR_TXT_OFFSET <$5E, $54>
                CHR_TXT_OFFSET <$A6, $54>
                CHR_TXT_OFFSET <$B9, $54>
                CHR_TXT_OFFSET <$CF, $54>
                CHR_TXT_OFFSET <$FC, $54>
                CHR_TXT_OFFSET <$49, $55>
                CHR_TXT_OFFSET <$7F, $55>
                CHR_TXT_OFFSET <$E6, $55>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$81, $56>
                CHR_TXT_OFFSET <$DA, $56>
                CHR_TXT_OFFSET <$12, $57>
                CHR_TXT_OFFSET <$57, $57>
                CHR_TXT_OFFSET <$84, $57>
                CHR_TXT_OFFSET <$BC, $57>
                CHR_TXT_OFFSET <$28, $58>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$70, $58>
                CHR_TXT_OFFSET <$93, $59>
                CHR_TXT_OFFSET <$CC, $59>
                CHR_TXT_OFFSET <$73, $5A>
                CHR_TXT_OFFSET <$B6, $5A>
                CHR_TXT_OFFSET <$FF, $5A>
                CHR_TXT_OFFSET <$6A, $5B>
                CHR_TXT_OFFSET <$87, $5B>
                CHR_TXT_OFFSET <$BA, $5B>
                CHR_TXT_OFFSET <$30, $5C>
                CHR_TXT_OFFSET <$62, $5C>
                CHR_TXT_OFFSET <$B6, $5C>
                CHR_TXT_OFFSET <$E9, $5C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$5D, $5D>
                CHR_TXT_OFFSET <$91, $5D>
                CHR_TXT_OFFSET <$C7, $5D>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <5, $5E>
                CHR_TXT_OFFSET <$25, $5E>
                CHR_TXT_OFFSET <$45, $5E>
                CHR_TXT_OFFSET <$80, $5E>
                CHR_TXT_OFFSET <$B5, $5E>
                CHR_TXT_OFFSET <$55, $5F>
                CHR_TXT_OFFSET <$BD, $5F>
                CHR_TXT_OFFSET <$CC, $5F>
                CHR_TXT_OFFSET <0, $60>
                CHR_TXT_OFFSET <$A6, $60>
                CHR_TXT_OFFSET <4, $61>
                CHR_TXT_OFFSET <$25, $61>
                CHR_TXT_OFFSET <$47, $61>
                CHR_TXT_OFFSET <$75, $61>
                CHR_TXT_OFFSET <$AE, $61>
                CHR_TXT_OFFSET <$C9, $61>
                CHR_TXT_OFFSET <$E4, $61>
                CHR_TXT_OFFSET <$30, $62>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$8E, $62>
                CHR_TXT_OFFSET <$FA, $62>
                CHR_TXT_OFFSET <$87, $63>
                CHR_TXT_OFFSET <$BA, $63>
                CHR_TXT_OFFSET <$DB, $63>
                CHR_TXT_OFFSET <$32, $64>
                CHR_TXT_OFFSET <$9F, $64>
                CHR_TXT_OFFSET <$D2, $64>
                CHR_TXT_OFFSET <2, $65>
                CHR_TXT_OFFSET <$50, $65>
                CHR_TXT_OFFSET <$E9, $65>
                CHR_TXT_OFFSET <$2A, $66>
                CHR_TXT_OFFSET <$99, $66>
                CHR_TXT_OFFSET <$E0, $66>
                CHR_TXT_OFFSET <$4D, $67>
                CHR_TXT_OFFSET <$72, $67>
                CHR_TXT_OFFSET <$19, $68>
                CHR_TXT_OFFSET <$4F, $68>
                CHR_TXT_OFFSET <$A7, $68>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$3C, $69>
                CHR_TXT_OFFSET <$58, $69>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$77, $69>
                CHR_TXT_OFFSET <$A0, $69>
                CHR_TXT_OFFSET <$B9, $69>
                CHR_TXT_OFFSET <$E7, $69>
                CHR_TXT_OFFSET <$40, $6A>
                CHR_TXT_OFFSET <$8C, $6A>
                CHR_TXT_OFFSET <$A3, $6A>
                CHR_TXT_OFFSET <$BA, $6A>
                CHR_TXT_OFFSET <$ED, $6A>
                CHR_TXT_OFFSET <$33, $6B>
                CHR_TXT_OFFSET <$45, $6B>
                CHR_TXT_OFFSET <$55, $6B>
                CHR_TXT_OFFSET <$60, $6B>
                CHR_TXT_OFFSET <$9A, $6B>
                CHR_TXT_OFFSET <$F1, $6B>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$1D, $6C>
                CHR_TXT_OFFSET <$2A, $6C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$19, $6D>
                CHR_TXT_OFFSET <$B3, $6D>
                CHR_TXT_OFFSET <$F2, $6D>
                CHR_TXT_OFFSET <$60, $6E>
                CHR_TXT_OFFSET <$8C, $6E>
                CHR_TXT_OFFSET <$BD, $6E>
                CHR_TXT_OFFSET <$F5, $6E>
                CHR_TXT_OFFSET <$22, $6F>
                CHR_TXT_OFFSET <$87, $6F>
                CHR_TXT_OFFSET <$B1, $6F>
                CHR_TXT_OFFSET <$CA, $6F>
                CHR_TXT_OFFSET <$F3, $6F>
                CHR_TXT_OFFSET <$75, $70>
                CHR_TXT_OFFSET <$A4, $70>
                CHR_TXT_OFFSET <$B5, $70>
                CHR_TXT_OFFSET <$EE, $70>
                CHR_TXT_OFFSET <$5A, $71>
                CHR_TXT_OFFSET <$89, $71>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$C4, $71>
                CHR_TXT_OFFSET <$F4, $71>
                CHR_TXT_OFFSET <$19, $72>
                CHR_TXT_OFFSET <$37, $72>
                CHR_TXT_OFFSET <$5C, $72>
                CHR_TXT_OFFSET <$C8, $72>
                CHR_TXT_OFFSET <3, $73>
                CHR_TXT_OFFSET <$4C, $73>
                CHR_TXT_OFFSET <$7D, $73>
                CHR_TXT_OFFSET <$D7, $73>
                CHR_TXT_OFFSET <7, $74>
                CHR_TXT_OFFSET <$20, $74>
                CHR_TXT_OFFSET <$41, $74>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$4F, $74>
                CHR_TXT_OFFSET <$81, $74>
                CHR_TXT_OFFSET <$9A, $74>
                CHR_TXT_OFFSET <$EB, $74>
                CHR_TXT_OFFSET <$FD, $74>
                CHR_TXT_OFFSET <$12, $75>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$AE, $75>
                CHR_TXT_OFFSET <$CD, $75>
                CHR_TXT_OFFSET <$ED, $75>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$23, $76>
                CHR_TXT_OFFSET <$4E, $76>
                CHR_TXT_OFFSET <$D2, $76>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$57, $77>
                CHR_TXT_OFFSET <$C8, $77>
                CHR_TXT_OFFSET <$14, $78>
                CHR_TXT_OFFSET <$43, $78>
                CHR_TXT_OFFSET <$94, $78>
                CHR_TXT_OFFSET <$DB, $78>
                CHR_TXT_OFFSET <4, $79>
                CHR_TXT_OFFSET <$33, $79>
                CHR_TXT_OFFSET <$5D, $79>
                CHR_TXT_OFFSET <$B5, $79>
                CHR_TXT_OFFSET <$E7, $79>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$41, $7A>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$9B, $7A>
                CHR_TXT_OFFSET <$DB, $7A>
                CHR_TXT_OFFSET <3, $7B>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$D5, $7B>
                CHR_TXT_OFFSET <8, $7C>
                CHR_TXT_OFFSET <$50, $7C>
                CHR_TXT_OFFSET <$B9, $7C>
                CHR_TXT_OFFSET <3, $7D>
                CHR_TXT_OFFSET <$E, $7D>
                CHR_TXT_OFFSET <$43, $7D>
                CHR_TXT_OFFSET <$7B, $7D>
                CHR_TXT_OFFSET <$C3, $7D>
                CHR_TXT_OFFSET <$F0, $7D>
                CHR_TXT_OFFSET <$B, $7E>
                CHR_TXT_OFFSET <$3C, $7E>
                CHR_TXT_OFFSET <$60, $7E>
                CHR_TXT_OFFSET <$95, $7E>
                CHR_TXT_OFFSET <$D8, $7E>
                CHR_TXT_OFFSET <8, $7F>
                CHR_TXT_OFFSET <$3C, $7F>
                CHR_TXT_OFFSET <$6D, $7F>
                CHR_TXT_OFFSET <$A1, $7F>
                CHR_TXT_OFFSET <$CE, $7F>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, $80>
                CHR_TXT_OFFSET <$32, $80>
                CHR_TXT_OFFSET <$91, $80>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$D0, $80>
                CHR_TXT_OFFSET <$A7, $81>
                CHR_TXT_OFFSET <$B4, $81>
                CHR_TXT_OFFSET <$E9, $81>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$6F, $82>
                CHR_TXT_OFFSET <$A5, $82>
                CHR_TXT_OFFSET <$2A, $83>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$53, $83>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$7E, $83>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$98, $83>
                CHR_TXT_OFFSET <$E9, $83>
                CHR_TXT_OFFSET <$1A, $84>
                CHR_TXT_OFFSET <$66, $84>
                CHR_TXT_OFFSET <$D1, $84>
                CHR_TXT_OFFSET <$E2, $84>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$11, $85>
                CHR_TXT_OFFSET <$3F, $85>
                CHR_TXT_OFFSET <$6C, $85>
                CHR_TXT_OFFSET <$A4, $85>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$BD, $85>
                CHR_TXT_OFFSET <$F2, $85>
                CHR_TXT_OFFSET <$C, $86>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$24, $86>
                CHR_TXT_OFFSET <$4C, $86>
                CHR_TXT_OFFSET <$73, $86>
                CHR_TXT_OFFSET <$92, $86>
                CHR_TXT_OFFSET <$CA, $86>
                CHR_TXT_OFFSET <$EF, $86>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$25, $87>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$49, $87>
                CHR_TXT_OFFSET <$79, $87>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$99, $87>
                CHR_TXT_OFFSET <$C2, $87>
                CHR_TXT_OFFSET <$CF, $87>
                CHR_TXT_OFFSET <$FC, $87>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$2E, $88>
                CHR_TXT_OFFSET <$4B, $88>
                CHR_TXT_OFFSET <$66, $88>
                CHR_TXT_OFFSET <$8E, $88>
                CHR_TXT_OFFSET <$C6, $88>
                CHR_TXT_OFFSET <$1C, $89>
                CHR_TXT_OFFSET <$DA, $89>
                CHR_TXT_OFFSET <$2C, $8A>
                CHR_TXT_OFFSET <$63, $8A>
                CHR_TXT_OFFSET <$74, $8A>
                CHR_TXT_OFFSET <$AD, $8A>
                CHR_TXT_OFFSET <$DE, $8A>
                CHR_TXT_OFFSET <$A, $8B>
                CHR_TXT_OFFSET <$D4, $8B>
                CHR_TXT_OFFSET <$F0, $8B>
                CHR_TXT_OFFSET <$47, $8C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$55, $8C>
                CHR_TXT_OFFSET <$B0, $8C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$E8, $8C>
                CHR_TXT_OFFSET <$A, $8D>
                CHR_TXT_OFFSET <$3E, $8D>
                CHR_TXT_OFFSET <$73, $8D>
                CHR_TXT_OFFSET <$83, $8D>
                CHR_TXT_OFFSET <$B2, $8D>
                CHR_TXT_OFFSET <$D9, $8D>
                CHR_TXT_OFFSET <$10, $8E>
                CHR_TXT_OFFSET <$3F, $8E>
                CHR_TXT_OFFSET <$76, $8E>
                CHR_TXT_OFFSET <$C2, $8E>
                CHR_TXT_OFFSET <$E8, $8E>
                CHR_TXT_OFFSET <$46, $8F>
                CHR_TXT_OFFSET <$79, $8F>
                CHR_TXT_OFFSET <$B0, $8F>
                CHR_TXT_OFFSET <$EB, $8F>
                CHR_TXT_OFFSET <$1C, $90>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$3B, $90>
                CHR_TXT_OFFSET <$77, $90>
                CHR_TXT_OFFSET <$A1, $90>
                CHR_TXT_OFFSET <$D9, $90>
                CHR_TXT_OFFSET <$23, $91>
                CHR_TXT_OFFSET <$4B, $91>
                CHR_TXT_OFFSET <$6B, $91>
                CHR_TXT_OFFSET <$D0, $91>
                CHR_TXT_OFFSET <$23, $92>
                CHR_TXT_OFFSET <$59, $92>
                CHR_TXT_OFFSET <$A2, $92>
                CHR_TXT_OFFSET <$CD, $92>
                CHR_TXT_OFFSET <$18, $93>
                CHR_TXT_OFFSET <$A4, $93>
                CHR_TXT_OFFSET <$DC, $93>
                CHR_TXT_OFFSET <$E7, $93>
                CHR_TXT_OFFSET <$A, $94>
                CHR_TXT_OFFSET <$5E, $94>
                CHR_TXT_OFFSET <$88, $94>
                CHR_TXT_OFFSET <$AD, $94>
                CHR_TXT_OFFSET <$BE, $94>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$3C, $95>
                CHR_TXT_OFFSET <$71, $95>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$AE, $95>
                CHR_TXT_OFFSET <$47, $96>
                CHR_TXT_OFFSET <$9A, $96>
                CHR_TXT_OFFSET <$47, $97>
                CHR_TXT_OFFSET <$6E, $97>
                CHR_TXT_OFFSET <$C5, $97>
                CHR_TXT_OFFSET <$ED, $97>
                CHR_TXT_OFFSET <$23, $98>
                CHR_TXT_OFFSET <$82, $98>
                CHR_TXT_OFFSET <$B4, $98>
                CHR_TXT_OFFSET <$F5, $98>
                CHR_TXT_OFFSET <$53, $99>
                CHR_TXT_OFFSET <$7C, $99>
                CHR_TXT_OFFSET <$9E, $99>
                CHR_TXT_OFFSET <5, $9A>
                CHR_TXT_OFFSET <$70, $9A>
                CHR_TXT_OFFSET <$A9, $9A>
                CHR_TXT_OFFSET <9, $9B>
                CHR_TXT_OFFSET <$3D, $9B>
                CHR_TXT_OFFSET <$67, $9B>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$97, $9B>
                CHR_TXT_OFFSET <$B3, $9B>
                CHR_TXT_OFFSET <$D4, $9B>
                CHR_TXT_OFFSET <$B, $9C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$21, $9C>
                CHR_TXT_OFFSET <$BB, $9C>
                CHR_TXT_OFFSET <$23, $9D>
                CHR_TXT_OFFSET <$6F, $9D>
                CHR_TXT_OFFSET <$C8, $9D>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$EF, $9D>
                CHR_TXT_OFFSET <$95, $9E>
                CHR_TXT_OFFSET <$B7, $9E>
                CHR_TXT_OFFSET <$15, $9F>
                CHR_TXT_OFFSET <$66, $9F>
                CHR_TXT_OFFSET <0, $A0>
                CHR_TXT_OFFSET <$32, $A0>
                CHR_TXT_OFFSET <$93, $A0>
                CHR_TXT_OFFSET <$F2, $A0>
                CHR_TXT_OFFSET <$18, $A1>
                CHR_TXT_OFFSET <$84, $A1>
                CHR_TXT_OFFSET <$DD, $A1>
                CHR_TXT_OFFSET <9, $A2>
                CHR_TXT_OFFSET <$3E, $A2>
                CHR_TXT_OFFSET <$B5, $A2>
                CHR_TXT_OFFSET <$12, $A3>
                CHR_TXT_OFFSET <$5A, $A3>
                CHR_TXT_OFFSET <$D3, $A3>
                CHR_TXT_OFFSET <$21, $A4>
                CHR_TXT_OFFSET <$4E, $A4>
                CHR_TXT_OFFSET <$B7, $A4>
                CHR_TXT_OFFSET <$1D, $A5>
                CHR_TXT_OFFSET <$68, $A5>
                CHR_TXT_OFFSET <$D0, $A5>
                CHR_TXT_OFFSET <$3A, $A6>
                CHR_TXT_OFFSET <$6D, $A6>
                CHR_TXT_OFFSET <$D1, $A6>
                CHR_TXT_OFFSET <$58, $A7>
                CHR_TXT_OFFSET <$78, $A7>
                CHR_TXT_OFFSET <$EA, $A7>
                CHR_TXT_OFFSET <$2A, $A8>
                CHR_TXT_OFFSET <$50, $A8>
                CHR_TXT_OFFSET <$CF, $A8>
                CHR_TXT_OFFSET <$15, $A9>
                CHR_TXT_OFFSET <$52, $A9>
                CHR_TXT_OFFSET <$87, $A9>
                CHR_TXT_OFFSET <$F2, $A9>
                CHR_TXT_OFFSET <$66, $AA>
                CHR_TXT_OFFSET <$91, $AA>
                CHR_TXT_OFFSET <$D8, $AA>
                CHR_TXT_OFFSET <$EC, $AA>
                CHR_TXT_OFFSET <$89, $AB>
                CHR_TXT_OFFSET <$DE, $AB>
                CHR_TXT_OFFSET <$31, $AC>
                CHR_TXT_OFFSET <$8D, $AC>
                CHR_TXT_OFFSET <$EF, $AC>
                CHR_TXT_OFFSET <$4B, $AD>
                CHR_TXT_OFFSET <$85, $AD>
                CHR_TXT_OFFSET <$B1, $AD>
                CHR_TXT_OFFSET <$4C, $AE>
                CHR_TXT_OFFSET <$67, $AE>
                CHR_TXT_OFFSET <$6E, $AE>
                CHR_TXT_OFFSET <$9F, $AE>
                CHR_TXT_OFFSET <$D7, $AE>
                CHR_TXT_OFFSET <$10, $AF>
                CHR_TXT_OFFSET <$56, $AF>
                CHR_TXT_OFFSET <$70, $AF>
                CHR_TXT_OFFSET <$E8, $AF>
                CHR_TXT_OFFSET <$22, $B0>
                CHR_TXT_OFFSET <$5D, $B0>
                CHR_TXT_OFFSET <$A5, $B0>
                CHR_TXT_OFFSET <$32, $B1>
                CHR_TXT_OFFSET <$4D, $B1>
                CHR_TXT_OFFSET <$86, $B1>
                CHR_TXT_OFFSET <$D7, $B1>
                CHR_TXT_OFFSET <$F7, $B1>
                CHR_TXT_OFFSET <$40, $B2>
                CHR_TXT_OFFSET <$5E, $B2>
                CHR_TXT_OFFSET <$9E, $B2>
                CHR_TXT_OFFSET <$15, $B3>
                CHR_TXT_OFFSET <$37, $B3>
                CHR_TXT_OFFSET <$5C, $B3>
                CHR_TXT_OFFSET <$92, $B3>
                CHR_TXT_OFFSET <$C2, $B3>
                CHR_TXT_OFFSET <$FA, $B3>
                CHR_TXT_OFFSET <$2F, $B4>
                CHR_TXT_OFFSET <$67, $B4>
                CHR_TXT_OFFSET <$9D, $B4>
                CHR_TXT_OFFSET <$CE, $B4>
                CHR_TXT_OFFSET <$F4, $B4>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$17, $B5>
                CHR_TXT_OFFSET <$4F, $B5>
                CHR_TXT_OFFSET <$6B, $B5>
                CHR_TXT_OFFSET <$87, $B5>
                CHR_TXT_OFFSET <$B6, $B5>
                CHR_TXT_OFFSET <$E5, $B5>
                CHR_TXT_OFFSET <$19, $B6>
                CHR_TXT_OFFSET <$4E, $B6>
                CHR_TXT_OFFSET <$B9, $B6>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$D7, $B6>
                CHR_TXT_OFFSET <$54, $B7>
                CHR_TXT_OFFSET <$B9, $B7>
                CHR_TXT_OFFSET <$20, $B8>
                CHR_TXT_OFFSET <$56, $B8>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$77, $B8>
                CHR_TXT_OFFSET <$8B, $B8>
                CHR_TXT_OFFSET <$9F, $B8>
                CHR_TXT_OFFSET <$C5, $B8>
                CHR_TXT_OFFSET <$13, $B9>
                CHR_TXT_OFFSET <$25, $B9>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$46, $B9>
                CHR_TXT_OFFSET <$63, $B9>
                CHR_TXT_OFFSET <$AB, $B9>
                CHR_TXT_OFFSET <$C3, $B9>
                CHR_TXT_OFFSET <$35, $BA>
                CHR_TXT_OFFSET <$39, $BA>
                CHR_TXT_OFFSET <$46, $BA>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$C8, $BA>
                CHR_TXT_OFFSET <$DF, $BA>
                CHR_TXT_OFFSET <$F2, $BA>
                CHR_TXT_OFFSET <$1E, $BB>
                CHR_TXT_OFFSET <$34, $BB>
                CHR_TXT_OFFSET <$58, $BB>
                CHR_TXT_OFFSET <$83, $BB>
                CHR_TXT_OFFSET <$91, $BB>
                CHR_TXT_OFFSET <$A1, $BB>
                CHR_TXT_OFFSET <$BF, $BB>
                CHR_TXT_OFFSET <$F4, $BB>
                CHR_TXT_OFFSET <$24, $BC>
                CHR_TXT_OFFSET <$81, $BC>
                CHR_TXT_OFFSET <$BA, $BC>
                CHR_TXT_OFFSET <$E3, $BC>
                CHR_TXT_OFFSET <$18, $BD>
                CHR_TXT_OFFSET <$34, $BD>
                CHR_TXT_OFFSET <$4F, $BD>
                CHR_TXT_OFFSET <$70, $BD>
                CHR_TXT_OFFSET <$95, $BD>
                CHR_TXT_OFFSET <$CE, $BD>
                CHR_TXT_OFFSET <$E0, $BD>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$F0, $BD>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$3D, $BE>
                CHR_TXT_OFFSET <$FC, $BE>
                CHR_TXT_OFFSET <$4C, $BF>
                CHR_TXT_OFFSET <$66, $BF>
                CHR_TXT_OFFSET <$83, $BF>
                CHR_TXT_OFFSET <0, $C0>
                CHR_TXT_OFFSET <$26, $C0>
                CHR_TXT_OFFSET <$51, $C0>
                CHR_TXT_OFFSET <$86, $C0>
                CHR_TXT_OFFSET <$F7, $C0>
                CHR_TXT_OFFSET <$5F, $C1>
                CHR_TXT_OFFSET <$BE, $C1>
                CHR_TXT_OFFSET <$F3, $C1>
                CHR_TXT_OFFSET <$4D, $C2>
                CHR_TXT_OFFSET <$80, $C2>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$55, $C3>
                CHR_TXT_OFFSET <$B7, $C3>
                CHR_TXT_OFFSET <$65, $C4>
                CHR_TXT_OFFSET <$B2, $C4>
                CHR_TXT_OFFSET <$DB, $C4>
                CHR_TXT_OFFSET <$21, $C5>
                CHR_TXT_OFFSET <$4E, $C5>
                CHR_TXT_OFFSET <$B0, $C5>
                CHR_TXT_OFFSET <$14, $C6>
                CHR_TXT_OFFSET <$47, $C6>
                CHR_TXT_OFFSET <$83, $C6>
                CHR_TXT_OFFSET <$CA, $C6>
                CHR_TXT_OFFSET <$DE, $C6>
                CHR_TXT_OFFSET <8, $C7>
                CHR_TXT_OFFSET <$36, $C7>
                CHR_TXT_OFFSET <$55, $C7>
                CHR_TXT_OFFSET <$70, $C7>
                CHR_TXT_OFFSET <$C2, $C7>
                CHR_TXT_OFFSET <$1F, $C8>
                CHR_TXT_OFFSET <$7A, $C8>
                CHR_TXT_OFFSET <$CD, $C8>
                CHR_TXT_OFFSET <$1F, $C9>
                CHR_TXT_OFFSET <$76, $C9>
                CHR_TXT_OFFSET <$2E, $CA>
                CHR_TXT_OFFSET <$9E, $CA>
                CHR_TXT_OFFSET <$40, $CB>
                CHR_TXT_OFFSET <$5D, $CB>
                CHR_TXT_OFFSET <$C5, $CB>
                CHR_TXT_OFFSET <$EB, $CB>
                CHR_TXT_OFFSET <$56, $CC>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$8C, $CC>
                CHR_TXT_OFFSET <$C2, $CC>
                CHR_TXT_OFFSET <$E1, $CC>
                CHR_TXT_OFFSET <$47, $CD>
                CHR_TXT_OFFSET <$BB, $CD>
                CHR_TXT_OFFSET <$FA, $CD>
                CHR_TXT_OFFSET <$2D, $CE>
                CHR_TXT_OFFSET <$4F, $CE>
                CHR_TXT_OFFSET <$89, $CE>
                CHR_TXT_OFFSET <$C1, $CE>
                CHR_TXT_OFFSET <$ED, $CE>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET <$4A, $CF>
                CHR_TXT_OFFSET <$65, $CF>
                CHR_TXT_OFFSET <$6F, $CF>
                CHR_TXT_OFFSET <$7D, $CF>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$68, $D0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$91, $D0>
                CHR_TXT_OFFSET <$A2, $D0>
                CHR_TXT_OFFSET <$B8, $D0>
                CHR_TXT_OFFSET <$DE, $D0>
                CHR_TXT_OFFSET <$F3, $D0>
                CHR_TXT_OFFSET <$B, $D1>
                CHR_TXT_OFFSET <$22, $D1>
                CHR_TXT_OFFSET <$3B, $D1>
                CHR_TXT_OFFSET <$56, $D1>
                CHR_TXT_OFFSET <$6E, $D1>
                CHR_TXT_OFFSET <$8B, $D1>
                CHR_TXT_OFFSET <$9F, $D1>
                CHR_TXT_OFFSET <$BA, $D1>
                CHR_TXT_OFFSET <$CC, $D1>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$DC, $D1>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$FA, $D1>
                CHR_TXT_OFFSET <$A, $D2>
                CHR_TXT_OFFSET <$21, $D2>
                CHR_TXT_OFFSET <$5A, $D2>
                CHR_TXT_OFFSET <$9C, $D2>
                CHR_TXT_OFFSET <$BE, $D2>
                CHR_TXT_OFFSET <$F0, $D2>
                CHR_TXT_OFFSET <$29, $D3>
                CHR_TXT_OFFSET <$8F, $D3>
                CHR_TXT_OFFSET <$C9, $D3>
                CHR_TXT_OFFSET <$F6, $D3>
                CHR_TXT_OFFSET <$18, $D4>
                CHR_TXT_OFFSET <$4E, $D4>
                CHR_TXT_OFFSET <$7E, $D4>
                CHR_TXT_OFFSET <$8C, $D4>
                CHR_TXT_OFFSET <$E3, $D4>
                CHR_TXT_OFFSET <$45, $D5>
                CHR_TXT_OFFSET <$8A, $D5>
                CHR_TXT_OFFSET <$9C, $D5>
                CHR_TXT_OFFSET <$C9, $D5>
                CHR_TXT_OFFSET <$E9, $D5>
                CHR_TXT_OFFSET <$64, $D6>
                CHR_TXT_OFFSET <$A, $D7>
                CHR_TXT_OFFSET <$29, $D7>
                CHR_TXT_OFFSET <$5D, $D7>
                CHR_TXT_OFFSET <$B5, $D7>
                CHR_TXT_OFFSET <$CA, $D7>
                CHR_TXT_OFFSET <$F8, $D7>
                CHR_TXT_OFFSET <$2D, $D8>
                CHR_TXT_OFFSET <$3C, $D8>
                CHR_TXT_OFFSET <$4E, $D8>
                CHR_TXT_OFFSET <$B4, $D8>
                CHR_TXT_OFFSET <$CB, $D8>
                CHR_TXT_OFFSET <$2C, $D9>
                CHR_TXT_OFFSET <$78, $D9>
                CHR_TXT_OFFSET <$B9, $D9>
                CHR_TXT_OFFSET <$E2, $D9>
                CHR_TXT_OFFSET <$13, $DA>
                CHR_TXT_OFFSET <$31, $DA>
                CHR_TXT_OFFSET <$88, $DA>
                CHR_TXT_OFFSET <$D8, $DA>
                CHR_TXT_OFFSET <$F8, $DA>
                CHR_TXT_OFFSET <$30, $DB>
                CHR_TXT_OFFSET <$5F, $DB>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$C5, $DB>
                CHR_TXT_OFFSET <$FD, $DB>
                CHR_TXT_OFFSET <$33, $DC>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$FE, $DC>
                CHR_TXT_OFFSET <$3A, $DD>
                CHR_TXT_OFFSET <$79, $DD>
                CHR_TXT_OFFSET <$E5, $DD>
                CHR_TXT_OFFSET <$48, $DE>
                CHR_TXT_OFFSET <$69, $DE>
                CHR_TXT_OFFSET <$8F, $DE>
                CHR_TXT_OFFSET <$C9, $DE>
                CHR_TXT_OFFSET <3, $DF>
                CHR_TXT_OFFSET <$25, $DF>
                CHR_TXT_OFFSET <$5A, $DF>
                CHR_TXT_OFFSET <0, $E0>
                CHR_TXT_OFFSET <$3B, $E0>
                CHR_TXT_OFFSET <$52, $E0>
                CHR_TXT_OFFSET <$13, $E1>
                CHR_TXT_OFFSET <$84, $E1>
                CHR_TXT_OFFSET <$25, $E2>
                CHR_TXT_OFFSET <$61, $E2>
                CHR_TXT_OFFSET <$7F, $E2>
                CHR_TXT_OFFSET <$5D, $E3>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$B0, $E3>
                CHR_TXT_OFFSET <0, $100>
                CHR_TXT_OFFSET <1, $100>
                CHR_TXT_OFFSET <$2C, $100>
                CHR_TXT_OFFSET <$71, $100>
                CHR_TXT_OFFSET <$C9, $100>
                CHR_TXT_OFFSET <$18, $101>
                CHR_TXT_OFFSET <$19, $101>
                CHR_TXT_OFFSET <$1A, $101>
                CHR_TXT_OFFSET <$1B, $101>
                CHR_TXT_OFFSET <$1C, $101>
                CHR_TXT_OFFSET <$1D, $101>
                CHR_TXT_OFFSET <$42, $101>
                CHR_TXT_OFFSET <$89, $101>
                CHR_TXT_OFFSET <$AE, $101>
                CHR_TXT_OFFSET <$ED, $101>
                CHR_TXT_OFFSET <$1C, $102>
                CHR_TXT_OFFSET <$66, $102>
                CHR_TXT_OFFSET <$9A, $102>
                CHR_TXT_OFFSET <$DC, $102>
                CHR_TXT_OFFSET <$28, $103>
                CHR_TXT_OFFSET <$66, $103>
                CHR_TXT_OFFSET <$94, $103>
                CHR_TXT_OFFSET <$D7, $103>
                CHR_TXT_OFFSET <$23, $104>
                CHR_TXT_OFFSET <$57, $104>
                CHR_TXT_OFFSET <$A6, $104>
                CHR_TXT_OFFSET <$DC, $104>
                CHR_TXT_OFFSET <$E, $105>
                CHR_TXT_OFFSET <$72, $105>
                CHR_TXT_OFFSET <$88, $105>
                CHR_TXT_OFFSET <$9C, $105>
                CHR_TXT_OFFSET <$D9, $105>
                CHR_TXT_OFFSET <6, $106>
                CHR_TXT_OFFSET <7, $106>
                CHR_TXT_OFFSET <8, $106>
                CHR_TXT_OFFSET <$47, $106>
                CHR_TXT_OFFSET <$71, $106>
                CHR_TXT_OFFSET <$C0, $106>
                CHR_TXT_OFFSET <$E9, $106>
                CHR_TXT_OFFSET <$20, $107>
                CHR_TXT_OFFSET <$21, $107>
                CHR_TXT_OFFSET <$47, $107>
                CHR_TXT_OFFSET <$48, $107>
                CHR_TXT_OFFSET <$49, $107>
                CHR_TXT_OFFSET <$4A, $107>
                CHR_TXT_OFFSET <$4B, $107>
                CHR_TXT_OFFSET <$8B, $107>
                CHR_TXT_OFFSET <$C2, $107>
                CHR_TXT_OFFSET <$FC, $107>
                CHR_TXT_OFFSET <$35, $108>
                CHR_TXT_OFFSET <$68, $108>
                CHR_TXT_OFFSET <$A1, $108>
                CHR_TXT_OFFSET <$E4, $108>
                CHR_TXT_OFFSET <$2A, $109>
                CHR_TXT_OFFSET <$72, $109>
                CHR_TXT_OFFSET <$BE, $109>
                CHR_TXT_OFFSET <$BF, $109>
                CHR_TXT_OFFSET <$C0, $109>
                CHR_TXT_OFFSET <$C1, $109>
                CHR_TXT_OFFSET <$C2, $109>
                CHR_TXT_OFFSET <$C3, $109>
                CHR_TXT_OFFSET <$FC, $109>
                CHR_TXT_OFFSET <$40, $10A>
                CHR_TXT_OFFSET <$77, $10A>
                CHR_TXT_OFFSET <$A2, $10A>
                CHR_TXT_OFFSET <$F2, $10A>
                CHR_TXT_OFFSET <$19, $10B>
                CHR_TXT_OFFSET <$53, $10B>
                CHR_TXT_OFFSET <$80, $10B>
                CHR_TXT_OFFSET <$C0, $10B>
                CHR_TXT_OFFSET <$FD, $10B>
                CHR_TXT_OFFSET <$FE, $10B>
                CHR_TXT_OFFSET <$49, $10C>
                CHR_TXT_OFFSET <$7D, $10C>
                CHR_TXT_OFFSET <$A5, $10C>
                CHR_TXT_OFFSET <$A6, $10C>
                CHR_TXT_OFFSET <3, $10D>
                CHR_TXT_OFFSET <$45, $10D>
                CHR_TXT_OFFSET <$46, $10D>
                CHR_TXT_OFFSET <$80, $10D>
                CHR_TXT_OFFSET <$BC, $10D>
                CHR_TXT_OFFSET <$FC, $10D>
                CHR_TXT_OFFSET <$36, $10E>
                CHR_TXT_OFFSET <$70, $10E>
                CHR_TXT_OFFSET <$71, $10E>
                CHR_TXT_OFFSET <$72, $10E>
                CHR_TXT_OFFSET <$AF, $10E>
                CHR_TXT_OFFSET <$F1, $10E>
                CHR_TXT_OFFSET <$2F, $10F>
                CHR_TXT_OFFSET <$7D, $10F>
                CHR_TXT_OFFSET <$B2, $10F>
                CHR_TXT_OFFSET <8, $110>
                CHR_TXT_OFFSET <9, $110>
                CHR_TXT_OFFSET <$A, $110>
                CHR_TXT_OFFSET <$B, $110>
                CHR_TXT_OFFSET <$C, $110>
                CHR_TXT_OFFSET <$35, $110>
                CHR_TXT_OFFSET <$36, $110>
                CHR_TXT_OFFSET <$6A, $110>
                CHR_TXT_OFFSET <$A0, $110>
                CHR_TXT_OFFSET <$F5, $110>
                CHR_TXT_OFFSET <$4B, $111>
                CHR_TXT_OFFSET <$4C, $111>
                CHR_TXT_OFFSET <$74, $111>
                CHR_TXT_OFFSET <$75, $111>
                CHR_TXT_OFFSET <$EF, $111>
                CHR_TXT_OFFSET <$F0, $111>
                CHR_TXT_OFFSET <$F1, $111>
                CHR_TXT_OFFSET <$38, $112>
                CHR_TXT_OFFSET <$4C, $112>
                CHR_TXT_OFFSET <$6C, $112>
                CHR_TXT_OFFSET <$A4, $112>
                CHR_TXT_OFFSET <$D3, $112>
                CHR_TXT_OFFSET <$10, $113>
                CHR_TXT_OFFSET <$11, $113>
                CHR_TXT_OFFSET <$12, $113>
                CHR_TXT_OFFSET <$13, $113>
                CHR_TXT_OFFSET <$14, $113>
                CHR_TXT_OFFSET <$15, $113>
                CHR_TXT_OFFSET <$16, $113>
                CHR_TXT_OFFSET <$17, $113>
                CHR_TXT_OFFSET <$18, $113>
                CHR_TXT_OFFSET <$19, $113>
                CHR_TXT_OFFSET <$1A, $113>
                CHR_TXT_OFFSET <$1B, $113>
                CHR_TXT_OFFSET <$1C, $113>
                CHR_TXT_OFFSET <$1D, $113>
                CHR_TXT_OFFSET <$1E, $113>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$30, $113>
                CHR_TXT_OFFSET <$31, $113>
                CHR_TXT_OFFSET <$4B, $113>
                CHR_TXT_OFFSET <$71, $113>
                CHR_TXT_OFFSET <$91, $113>
                CHR_TXT_OFFSET <$BA, $113>
                CHR_TXT_OFFSET <$F6, $113>
                CHR_TXT_OFFSET <$17, $114>
                CHR_TXT_OFFSET <$47, $114>
                CHR_TXT_OFFSET <$6E, $114>
                CHR_TXT_OFFSET <$96, $114>
                CHR_TXT_OFFSET <$B9, $114>
                CHR_TXT_OFFSET <$EE, $114>
                CHR_TXT_OFFSET <$17, $115>
                CHR_TXT_OFFSET <$38, $115>
                CHR_TXT_OFFSET <$4A, $115>
                CHR_TXT_OFFSET <$6A, $115>
                CHR_TXT_OFFSET <$81, $115>
                CHR_TXT_OFFSET <$A1, $115>
                CHR_TXT_OFFSET <$B4, $115>
                CHR_TXT_OFFSET <$B5, $115>
                CHR_TXT_OFFSET <$DF, $115>
                CHR_TXT_OFFSET <2, $116>
                CHR_TXT_OFFSET <$F, $116>
                CHR_TXT_OFFSET <$36, $116>
                CHR_TXT_OFFSET <$4D, $116>
                CHR_TXT_OFFSET <$70, $116>
                CHR_TXT_OFFSET <$9F, $116>
                CHR_TXT_OFFSET <$CA, $116>
                CHR_TXT_OFFSET <$E0, $116>
                CHR_TXT_OFFSET <0, $117>
                CHR_TXT_OFFSET <$16, $117>
                CHR_TXT_OFFSET <$3B, $117>
                CHR_TXT_OFFSET <$6D, $117>
                CHR_TXT_OFFSET <$89, $117>
                CHR_TXT_OFFSET <$B5, $117>
                CHR_TXT_OFFSET <$DF, $117>
                CHR_TXT_OFFSET <5, $118>
                CHR_TXT_OFFSET <$36, $118>
                CHR_TXT_OFFSET <$69, $118>
                CHR_TXT_OFFSET <$90, $118>
                CHR_TXT_OFFSET <$BA, $118>
                CHR_TXT_OFFSET <$BB, $118>
                CHR_TXT_OFFSET <$E7, $118>
                CHR_TXT_OFFSET <$C, $119>
                CHR_TXT_OFFSET <$43, $119>
                CHR_TXT_OFFSET <$61, $119>
                CHR_TXT_OFFSET <$81, $119>
                CHR_TXT_OFFSET <$A7, $119>
                CHR_TXT_OFFSET <$C5, $119>
                CHR_TXT_OFFSET <$D2, $119>
                CHR_TXT_OFFSET <$EC, $119>
                CHR_TXT_OFFSET <$C, $11A>
                CHR_TXT_OFFSET <$33, $11A>
                CHR_TXT_OFFSET <$65, $11A>
                CHR_TXT_OFFSET <$92, $11A>
                CHR_TXT_OFFSET <$BC, $11A>
                CHR_TXT_OFFSET <$F3, $11A>
                CHR_TXT_OFFSET <$B, $11B>
                CHR_TXT_OFFSET <$2A, $11B>
                CHR_TXT_OFFSET <$4E, $11B>
                CHR_TXT_OFFSET <$84, $11B>
                CHR_TXT_OFFSET <$94, $11B>
                CHR_TXT_OFFSET <$DB, $11B>
                CHR_TXT_OFFSET <$FD, $11B>
                CHR_TXT_OFFSET <$27, $11C>
                CHR_TXT_OFFSET <$28, $11C>
                CHR_TXT_OFFSET <$3F, $11C>
                CHR_TXT_OFFSET <$55, $11C>
                CHR_TXT_OFFSET <$56, $11C>
                CHR_TXT_OFFSET <$57, $11C>
                CHR_TXT_OFFSET <$89, $11C>
                CHR_TXT_OFFSET <$B3, $11C>
                CHR_TXT_OFFSET <$B4, $11C>
                CHR_TXT_OFFSET <$B5, $11C>
                CHR_TXT_OFFSET <$D9, $11C>
                CHR_TXT_OFFSET <5, $11D>
                CHR_TXT_OFFSET <$34, $11D>
                CHR_TXT_OFFSET <$35, $11D>
                CHR_TXT_OFFSET <$36, $11D>
                CHR_TXT_OFFSET <$37, $11D>
                CHR_TXT_OFFSET <$38, $11D>
                CHR_TXT_OFFSET <$4F, $11D>
                CHR_TXT_OFFSET <$67, $11D>
                CHR_TXT_OFFSET <$87, $11D>
                CHR_TXT_OFFSET <$88, $11D>
                CHR_TXT_OFFSET <$B0, $11D>
                CHR_TXT_OFFSET <$B1, $11D>
                CHR_TXT_OFFSET <$D0, $11D>
                CHR_TXT_OFFSET <$EE, $11D>
                CHR_TXT_OFFSET <$12, $11E>
                CHR_TXT_OFFSET <$3B, $11E>
                CHR_TXT_OFFSET <$7A, $11E>
                CHR_TXT_OFFSET <$A2, $11E>
                CHR_TXT_OFFSET <$A3, $11E>
                CHR_TXT_OFFSET <$BE, $11E>
                CHR_TXT_OFFSET <$E9, $11E>
                CHR_TXT_OFFSET <$A, $11F>
                CHR_TXT_OFFSET <$B, $11F>
                CHR_TXT_OFFSET <$C, $11F>
                CHR_TXT_OFFSET <0, $120>
                CHR_TXT_OFFSET <1, $120>
                CHR_TXT_OFFSET <$16, $120>
                CHR_TXT_OFFSET <$2A, $120>
                CHR_TXT_OFFSET <$60, $120>
                CHR_TXT_OFFSET <$80, $120>
                CHR_TXT_OFFSET <$A3, $120>
                CHR_TXT_OFFSET <$C4, $120>
                CHR_TXT_OFFSET <$E8, $120>
                CHR_TXT_OFFSET <$A, $121>
                CHR_TXT_OFFSET <$45, $121>
                CHR_TXT_OFFSET <$8A, $121>
                CHR_TXT_OFFSET <$A5, $121>
                CHR_TXT_OFFSET <$C8, $121>
                CHR_TXT_OFFSET <$FA, $121>
                CHR_TXT_OFFSET <$FB, $121>
                CHR_TXT_OFFSET <$1C, $122>
                CHR_TXT_OFFSET <$3A, $122>
                CHR_TXT_OFFSET <$69, $122>
                CHR_TXT_OFFSET <$80, $122>
                CHR_TXT_OFFSET <$A9, $122>
                CHR_TXT_OFFSET <$CA, $122>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$E8, $122>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$52, $136>
                CHR_TXT_OFFSET <$52, $136>
                CHR_TXT_OFFSET <$E9, $122>
                CHR_TXT_OFFSET <$F6, $122>
                CHR_TXT_OFFSET <6, $123>
                CHR_TXT_OFFSET <$14, $123>
                CHR_TXT_OFFSET <$89, $12C>
                CHR_TXT_OFFSET <$83, $127>
                CHR_TXT_OFFSET <$2C, $123>
                CHR_TXT_OFFSET <$39, $123>
                CHR_TXT_OFFSET <$4C, $123>
                CHR_TXT_OFFSET <$9F, $12C>
                CHR_TXT_OFFSET <$AB, $12C>
                CHR_TXT_OFFSET <$96, $127>
                CHR_TXT_OFFSET <$A8, $127>
                CHR_TXT_OFFSET <$CB, $12C>
                CHR_TXT_OFFSET <$DB, $12C>
                CHR_TXT_OFFSET <$F6, $12C>
                CHR_TXT_OFFSET <$E, $12D>
                CHR_TXT_OFFSET <$60, $123>
                CHR_TXT_OFFSET <$2C, $12D>
                CHR_TXT_OFFSET <$78, $123>
                CHR_TXT_OFFSET <$8B, $123>
                CHR_TXT_OFFSET <$49, $12D>
                CHR_TXT_OFFSET <$6D, $12D>
                CHR_TXT_OFFSET <$92, $12D>
                CHR_TXT_OFFSET <$B6, $123>
                CHR_TXT_OFFSET <$AD, $12D>
                CHR_TXT_OFFSET <$D3, $123>
                CHR_TXT_OFFSET <$E9, $123>
                CHR_TXT_OFFSET <$C0, $12D>
                CHR_TXT_OFFSET <$D0, $12D>
                CHR_TXT_OFFSET <$E9, $12D>
                CHR_TXT_OFFSET <$E, $12E>
                CHR_TXT_OFFSET <$33, $12E>
                CHR_TXT_OFFSET <$58, $12E>
                CHR_TXT_OFFSET <$7A, $128>
                CHR_TXT_OFFSET <$8B, $128>
                CHR_TXT_OFFSET <$7A, $12E>
                CHR_TXT_OFFSET <$9C, $12E>
                CHR_TXT_OFFSET <4, $124>
                CHR_TXT_OFFSET <$C1, $12E>
                CHR_TXT_OFFSET <$20, $124>
                CHR_TXT_OFFSET <$E3, $12E>
                CHR_TXT_OFFSET <$36, $124>
                CHR_TXT_OFFSET <$4D, $124>
                CHR_TXT_OFFSET <$65, $124>
                CHR_TXT_OFFSET <5, $12F>
                CHR_TXT_OFFSET <$79, $124>
                CHR_TXT_OFFSET <$D8, $127>
                CHR_TXT_OFFSET <$8F, $124>
                CHR_TXT_OFFSET <$AE, $124>
                CHR_TXT_OFFSET <$C7, $124>
                CHR_TXT_OFFSET <$31, $12F>
                CHR_TXT_OFFSET <$48, $12F>
                CHR_TXT_OFFSET <$6C, $12F>
                CHR_TXT_OFFSET <$83, $12F>
                CHR_TXT_OFFSET <$A7, $12F>
                CHR_TXT_OFFSET <$E5, $124>
                CHR_TXT_OFFSET <$BE, $12F>
                CHR_TXT_OFFSET <$F9, $124>
                CHR_TXT_OFFSET <$D6, $12F>
                CHR_TXT_OFFSET <$F2, $12F>
                CHR_TXT_OFFSET <8, $125>
                CHR_TXT_OFFSET <$C, $130>
                CHR_TXT_OFFSET <$2E, $130>
                CHR_TXT_OFFSET <$3A, $130>
                CHR_TXT_OFFSET <$2A, $125>
                CHR_TXT_OFFSET <$38, $125>
                CHR_TXT_OFFSET <$53, $125>
                CHR_TXT_OFFSET <$69, $125>
                CHR_TXT_OFFSET <$79, $125>
                CHR_TXT_OFFSET <$56, $130>
                CHR_TXT_OFFSET <$7C, $130>
                CHR_TXT_OFFSET <$92, $125>
                CHR_TXT_OFFSET <$90, $130>
                CHR_TXT_OFFSET <$A4, $130>
                CHR_TXT_OFFSET <$BA, $130>
                CHR_TXT_OFFSET <$D3, $130>
                CHR_TXT_OFFSET <$EE, $130>
                CHR_TXT_OFFSET <2, $131>
                CHR_TXT_OFFSET <$A, $131>
                CHR_TXT_OFFSET <$26, $131>
                CHR_TXT_OFFSET <$59, $131>
                CHR_TXT_OFFSET <$78, $131>
                CHR_TXT_OFFSET <$8A, $131>
                CHR_TXT_OFFSET <$B5, $125>
                CHR_TXT_OFFSET <$D9, $125>
                CHR_TXT_OFFSET <$EC, $125>
                CHR_TXT_OFFSET <$15, $126>
                CHR_TXT_OFFSET <$31, $126>
                CHR_TXT_OFFSET <$44, $126>
                CHR_TXT_OFFSET <$55, $126>
                CHR_TXT_OFFSET <$A8, $131>
                CHR_TXT_OFFSET <$D2, $131>
                CHR_TXT_OFFSET <$EE, $131>
                CHR_TXT_OFFSET <$C, $132>
                CHR_TXT_OFFSET <$20, $132>
                CHR_TXT_OFFSET <$2E, $132>
                CHR_TXT_OFFSET <$6C, $126>
                CHR_TXT_OFFSET <$7A, $126>
                CHR_TXT_OFFSET <$89, $126>
                CHR_TXT_OFFSET <$9C, $126>
                CHR_TXT_OFFSET <$C5, $126>
                CHR_TXT_OFFSET <$E0, $126>
                CHR_TXT_OFFSET <$44, $132>
                CHR_TXT_OFFSET <$F5, $126>
                CHR_TXT_OFFSET <$EC, $127>
                CHR_TXT_OFFSET <8, $128>
                CHR_TXT_OFFSET <$26, $128>
                CHR_TXT_OFFSET <$45, $128>
                CHR_TXT_OFFSET <$61, $128>
                CHR_TXT_OFFSET <$5F, $132>
                CHR_TXT_OFFSET <$81, $132>
                CHR_TXT_OFFSET <$A6, $132>
                CHR_TXT_OFFSET <$B5, $132>
                CHR_TXT_OFFSET <$C4, $132>
                CHR_TXT_OFFSET <$D5, $133>
                CHR_TXT_OFFSET <6, $127>
                CHR_TXT_OFFSET <$20, $127>
                CHR_TXT_OFFSET <$E7, $133>
                CHR_TXT_OFFSET <$E0, $132>
                CHR_TXT_OFFSET <$FB, $132>
                CHR_TXT_OFFSET <$F, $133>
                CHR_TXT_OFFSET <$21, $133>
                CHR_TXT_OFFSET <$36, $133>
                CHR_TXT_OFFSET <$52, $133>
                CHR_TXT_OFFSET <$6E, $133>
                CHR_TXT_OFFSET <$8B, $133>
                CHR_TXT_OFFSET <$3B, $127>
                CHR_TXT_OFFSET <$16, $134>
                CHR_TXT_OFFSET <$34, $135>
                CHR_TXT_OFFSET <$38, $134>
                CHR_TXT_OFFSET <$5F, $134>
                CHR_TXT_OFFSET <$86, $134>
                CHR_TXT_OFFSET <$A8, $134>
                CHR_TXT_OFFSET <$CA, $134>
                CHR_TXT_OFFSET <$ED, $134>
                CHR_TXT_OFFSET <$12, $135>
                CHR_TXT_OFFSET <$54, $127>
                CHR_TXT_OFFSET <$62, $135>
                CHR_TXT_OFFSET <$9B, $133>
                CHR_TXT_OFFSET <$6F, $127>
                CHR_TXT_OFFSET <$7C, $127>
                CHR_TXT_OFFSET <$BA, $133>
                CHR_TXT_OFFSET <2, $134>
                CHR_TXT_OFFSET <$BF, $127>
                CHR_TXT_OFFSET <$73, $135>
                CHR_TXT_OFFSET <$52, $136>
                CHR_TXT_OFFSET <$52, $136>
                CHR_TXT_OFFSET <$9C, $128>
                CHR_TXT_OFFSET <$C5, $128>
                CHR_TXT_OFFSET <2, $129>
                CHR_TXT_OFFSET <$68, $129>
                CHR_TXT_OFFSET <$E3, $129>
                CHR_TXT_OFFSET <$27, $12A>
                CHR_TXT_OFFSET <$90, $12A>
                CHR_TXT_OFFSET <$E9, $12A>
                CHR_TXT_OFFSET <$43, $12B>
                CHR_TXT_OFFSET <$52, $12B>
                CHR_TXT_OFFSET <$61, $12B>
                CHR_TXT_OFFSET <$78, $12B>
                CHR_TXT_OFFSET <$94, $12B>
                CHR_TXT_OFFSET <$D0, $12B>
                CHR_TXT_OFFSET <$DD, $12B>
                CHR_TXT_OFFSET <$E9, $12B>
                CHR_TXT_OFFSET <$F0, $12B>
                CHR_TXT_OFFSET <$A, $12C>
                CHR_TXT_OFFSET <$13, $12C>
                CHR_TXT_OFFSET <$1D, $12C>
                CHR_TXT_OFFSET <$51, $12C>
                CHR_TXT_OFFSET <$6B, $12C>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$B1, $E3>
                CHR_TXT_OFFSET <$B2, $E3>
                CHR_TXT_OFFSET <$CD, $E3>
                CHR_TXT_OFFSET <$E6, $E3>
                CHR_TXT_OFFSET <4, $E4>
                CHR_TXT_OFFSET <$27, $E4>
                CHR_TXT_OFFSET <$4B, $E4>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$8B, $E4>
                CHR_TXT_OFFSET <$9B, $E4>
                CHR_TXT_OFFSET <$AD, $E4>
                CHR_TXT_OFFSET <$C4, $E4>
                CHR_TXT_OFFSET <$DB, $E4>
                CHR_TXT_OFFSET <$E9, $E4>
                CHR_TXT_OFFSET <$F7, $E4>
                CHR_TXT_OFFSET <9, $E5>
                CHR_TXT_OFFSET <$1A, $E5>
                CHR_TXT_OFFSET <$2C, $E5>
                CHR_TXT_OFFSET <$40, $E5>
                CHR_TXT_OFFSET <$51, $E5>
                CHR_TXT_OFFSET <$8D, $E5>
                CHR_TXT_OFFSET <$B3, $E5>
                CHR_TXT_OFFSET <$E9, $E5>
                CHR_TXT_OFFSET <$49, $E6>
                CHR_TXT_OFFSET <$70, $E6>
                CHR_TXT_OFFSET <$BA, $E6>
                CHR_TXT_OFFSET <$E7, $E6>
                CHR_TXT_OFFSET <$29, $E7>
                CHR_TXT_OFFSET <$66, $E7>
                CHR_TXT_OFFSET <$96, $E7>
                CHR_TXT_OFFSET <$B2, $E7>
                CHR_TXT_OFFSET <$D8, $E7>
                CHR_TXT_OFFSET <$A, $E8>
                CHR_TXT_OFFSET <$1C, $E8>
                CHR_TXT_OFFSET <$4B, $E8>
                CHR_TXT_OFFSET <$6E, $E8>
                CHR_TXT_OFFSET <$F, $E9>
                CHR_TXT_OFFSET <$27, $E9>
                CHR_TXT_OFFSET <$4A, $E9>
                CHR_TXT_OFFSET <$5D, $E9>
                CHR_TXT_OFFSET <$7E, $E9>
                CHR_TXT_OFFSET <$96, $E9>
                CHR_TXT_OFFSET <$BB, $E9>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$ED, $E9>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$1E, $EB>
                CHR_TXT_OFFSET <$27, $EB>
                CHR_TXT_OFFSET <$95, $EB>
                CHR_TXT_OFFSET <$DC, $EB>
                CHR_TXT_OFFSET <$29, $EC>
                CHR_TXT_OFFSET <$84, $EC>
                CHR_TXT_OFFSET <$C6, $EC>
                CHR_TXT_OFFSET <$34, $ED>
                CHR_TXT_OFFSET <$87, $ED>
                CHR_TXT_OFFSET <$F5, $ED>
                CHR_TXT_OFFSET <$56, $EE>
                CHR_TXT_OFFSET <$5A, $EE>
                CHR_TXT_OFFSET <$69, $EE>
                CHR_TXT_OFFSET <$75, $EE>
                CHR_TXT_OFFSET <$81, $EE>
                CHR_TXT_OFFSET <$91, $EE>
                CHR_TXT_OFFSET <$A0, $EE>
                CHR_TXT_OFFSET <$B0, $EE>
                CHR_TXT_OFFSET <$BE, $EE>
                CHR_TXT_OFFSET <$CC, $EE>
                CHR_TXT_OFFSET <$D4, $EE>
                CHR_TXT_OFFSET <$E4, $EE>
                CHR_TXT_OFFSET <$F5, $EE>
                CHR_TXT_OFFSET <2, $EF>
                CHR_TXT_OFFSET <$14, $EF>
                CHR_TXT_OFFSET <$1E, $EF>
                CHR_TXT_OFFSET <$2F, $EF>
                CHR_TXT_OFFSET <$3E, $EF>
                CHR_TXT_OFFSET <$50, $EF>
                CHR_TXT_OFFSET <$62, $EF>
                CHR_TXT_OFFSET <$6F, $EF>
                CHR_TXT_OFFSET <$7E, $EF>
                CHR_TXT_OFFSET <$8B, $EF>
                CHR_TXT_OFFSET <$99, $EF>
                CHR_TXT_OFFSET <$A6, $EF>
                CHR_TXT_OFFSET <$B5, $EF>
                CHR_TXT_OFFSET <$C1, $EF>
                CHR_TXT_OFFSET <$D1, $EF>
                CHR_TXT_OFFSET <$DD, $EF>
                CHR_TXT_OFFSET <$E9, $EF>
                CHR_TXT_OFFSET <$F9, $EF>
                CHR_TXT_OFFSET <6, $F0>
                CHR_TXT_OFFSET <$15, $F0>
                CHR_TXT_OFFSET <$25, $F0>
                CHR_TXT_OFFSET <$33, $F0>
                CHR_TXT_OFFSET <$44, $F0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET  <0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <0, 0>
                CHR_TXT_OFFSET <$55, $F0>
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                .BYTE 0, 0, $B0, $E9, $52, 8, $84, $2F, 1, 0, 0, 0, $52
                .BYTE 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0, $21, 0, 0, $6B
                .BYTE $84, $1C, $42, $1E, $AE, $AE, $AE, $AE, $AE, $AE
                .BYTE $AE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 8, $20, $80, $20, 0, 0, 0, $1E
                .BYTE 0, 8, 0, 5, 0, 5, 0, 5, 5, 5, 5, 5, 1, 0, 0, 0, $1E
                .BYTE 0, 8, 0, $78, $74, 0, 0, 8, $64, 0, $80, $6E, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86, $2F, $40
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, $1A, 0, $C, 0, 1, 0, 3, 0, 1, 3, 7, 3, 8, 1, 0
                .BYTE 0, 0, $1A, 0, $C, 0, $B8, $74, 0, 0, 8, $64, $20
                .BYTE $80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8
                .BYTE $86, $2F, $40, $40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, $1C, 0, 0, 0, 4, 0, 2, 0, 4
                .BYTE 2, 8, 4, 3, 1, 0, 0, 0, $1C, 0, 0, 0, $F8, $74, 0
                .BYTE 0, 8, $64, $40, $80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, $52, 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $86, 0, 0, 0, $56
                .BYTE 0, $56, 0, $56, $56, $13, $39, $26, $12, $10, $E
                .BYTE 0, $86, 0, 0, 0, $38, $75, 0, 0, 8, $64, $60, $80
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86
                .BYTE $2F, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, $20, 0, 0, 0, 9, 0, 9, 0, 9, 9, 2, 6
                .BYTE 4, 1, 0, 0, 0, $20, 0, 0, 0, $78, $75, 0, 0, 8, $64
                .BYTE $80, $80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52
                .BYTE 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0, $D0, $E9, $F0
                .BYTE $F0, $E9, 0, 0, 0, 0, 0, 0, $E7, 3, 0, 0, $E7, 3
                .BYTE $E7, 3, $FF, $FF, $FF, $FF, $FF, $63, $40, $42, $F
                .BYTE $E7, 3, 0, 0, $B8, $75, 0, 0, 8, $3A, $60, $81, 0
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86, $2F
                .BYTE 0, 0, 0, 0, 0, 0, 0, 0, $C5, $D6, $C5, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, $32, 0, 0, 0, $1E, 0, $1E, 0, $1E, $1E
                .BYTE $1E, $1E, $1E, $63, $40, $42, $F, $1E, 0, 0, 0, $F8
                .BYTE $75, 0, 0, 8, $64, $40, $81, 0, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, 0, 0, 0, $52, 8, $86, $2F, 0, 0, 0, 0, 0, 0
                .BYTE 0, 0, $C6, $EC, $F9, $EE, $CD, $E1, $EE, 0
