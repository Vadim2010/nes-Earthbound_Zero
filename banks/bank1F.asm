loc_E000:                               ; CODE XREF: sub_DFDA+7A↓j
                LDY     #0
                LDA     ($30),Y
                BEQ     loc_E04F
                BMI     loc_E04F
                LDY     #8
                LDA     ($30),Y
                AND     #$3F ; '?'
                BEQ     loc_E04F
                LDY     #$14
                LDA     ($30),Y
                AND     #$10
                BEQ     loc_E01B
                TXA
                LDX     #0

loc_E01B:                               ; CODE XREF: sub_DFDA+3C↑j
                STA     ItemCount
                LDY     #$10
                TXA
                STA     ($30),Y
                LDY     #8

loc_E024:                               ; CODE XREF: sub_DFDA+53↓j
                LDA     (Dist),Y
                STA     SpriteTable,X
                INX
                INY
                CPY     #$E
                BCC     loc_E024
                CLC
                LDA     OAM + OAM_TILE::Attr+$F8,X
                AND     #$40 ; '@'
                BEQ     loc_E039
                LDA     #4

loc_E039:                               ; CODE XREF: sub_DFDA+5B↑j
                ADC     (Dist),Y
                STA     SpriteTable,X
                INX
                INY
                LDA     #0
                ADC     (Dist),Y
                STA     SpriteTable,X
                INX
                BEQ     loc_E062
                LDA     ItemCount
                BEQ     loc_E04F
                TAX

loc_E04F:                               ; CODE XREF: sub_DFDA+2A↑j
                                        ; sub_DFDA+2C↑j ...
                JSR     get_dist_addr
                DEC     SaveNum
                BNE     loc_E000

loc_E056:                               ; CODE XREF: sub_DFDA+86↓j
                LDA     #0
                STA     SpriteTable,X
                CLC
                TXA
                ADC     #8
                TAX
                BCC     loc_E056

loc_E062:                               ; CODE XREF: sub_DFDA+6E↑j
                JMP     sram_read_enable
; End of function sub_DFDA


; =============== S U B R O U T I N E =======================================


sub_E065:                               ; CODE XREF: sub_CC2B+1D↑p
                                        ; sub_CC2B+53↑p
                LDX     #0

loc_E067:                               ; CODE XREF: sub_E065+1F↓j
                LDA     SpriteTable,X
                AND     #$40 ; '@'
                BEQ     loc_E07F
                SEC
                LDA     SpriteTable + ANIM_SPRITE::pFrame,X
                SBC     #4
                STA     SpriteTable + ANIM_SPRITE::pFrame,X
                LDA     SpriteTable + ANIM_SPRITE::pFrame+1,X
                SBC     #0
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X

loc_E07F:                               ; CODE XREF: sub_E065+7↑j
                CLC
                TXA
                ADC     #8
                TAX
                BCC     loc_E067
                RTS
; End of function sub_E065


; =============== S U B R O U T I N E =======================================


sub_E087:                               ; CODE XREF: sub_13BD5C+29↓P
                                        ; sub_149920+26↓P
                JSR     get_characters_buffer
                LDX     #4
                STX     SaveNum
                LDA     #0
                STA     AddrForJmp
                LDX     #8

loc_E094:                               ; CODE XREF: sub_E087+68↓j
                LDY     #0
                LDA     (Dist),Y
                BEQ     loc_E0E3
                BMI     loc_E0E3
                LDY     AddrForJmp
                LDA     (Pointer),Y
                STA     SpriteTable + ANIM_SPRITE::PosX,X
                INY
                LDA     (Pointer),Y
                STA     SpriteTable + ANIM_SPRITE::PosY,X
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                INY
                CLC
                LDA     (Pointer),Y
                LDY     #$16
                ADC     (Dist),Y
                STA     SpriteTable + ANIM_SPRITE::pFrame,X
                INY
                LDA     #0
                ADC     (Dist),Y
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F ; '?'
                ASL     A
                ASL     AddrForJmp+1
                ROR     A
                STA     SpriteTable,X
                LDA     #$70 ; 'p'
                ASL     AddrForJmp+1
                ROR     A
                STA     SpriteTable + ANIM_SPRITE::TileID,X
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                CLC
                TXA
                ADC     #8
                TAX

loc_E0E3:                               ; CODE XREF: sub_E087+11↑j
                                        ; sub_E087+13↑j
                CLC
                LDA     #4
                ADC     AddrForJmp
                STA     AddrForJmp
                JSR     get_dist_addr
                DEC     SaveNum
                BNE     loc_E094
                RTS
; End of function sub_E087


; =============== S U B R O U T I N E =======================================


get_save_field:                         ; CODE XREF: sub_CEFC+2B↑p
                                        ; load_map+2F↑p ...
                AND     #$3F ; '?'
                TAX
                LDA     $7400,X
                RTS
; End of function get_save_field


; =============== S U B R O U T I N E =======================================


sub_E0F9:                               ; CODE XREF: sub_DD01+24↑p
                                        ; sub_DE99+50↑p ...
                ASL     A
                ASL     A
                TAX
                LDA     stru_E105.subroutine+1,X
                PHA
                LDA     stru_E105,X
                PHA
                RTS
; End of function sub_E0F9

; ---------------------------------------------------------------------------
stru_E105:      RETURN_OPERAND <nullsub_3-1, 0>
                                        ; DATA XREF: sub_E0F9+7↑r
                                        ; sub_E0F9+3↑r ...
                RETURN_OPERAND <sub_E681-1, $8800>
                RETURN_OPERAND <sub_E681-1, $8800>
                RETURN_OPERAND <sub_E6CF-1, $8800>
                RETURN_OPERAND <sub_E678-1, $800>
                RETURN_OPERAND <nullsub_3-1, 0>
                RETURN_OPERAND <nullsub_3-1, 0>
                RETURN_OPERAND <sub_E83F-1, $A604>
                RETURN_OPERAND <sub_E96C-1, $6004>
                RETURN_OPERAND <sub_EB3A-1, $2009>
                RETURN_OPERAND <sub_EB92-1, $2009>
                RETURN_OPERAND <loc_E8DE-1, $2009>
                RETURN_OPERAND <sub_E905-1, $6004>
                RETURN_OPERAND <sub_EA38-1, $2009>
                RETURN_OPERAND <sub_EAC5-1, $2009>
                RETURN_OPERAND <sub_EBCA-1, $2004>
                RETURN_OPERAND <sub_E7F5-1, $E604>
                RETURN_OPERAND <loc_E7CD-1, $E604>
                RETURN_OPERAND <loc_E7BE-1, $E604>
                RETURN_OPERAND <loc_E814-1, $E604>
                RETURN_OPERAND <sub_E808-1, $E604>
                RETURN_OPERAND <loc_E7C7-1, $E604>
                RETURN_OPERAND <sub_E7B8-1, $E604>
                RETURN_OPERAND <sub_E80E-1, $E604>
                RETURN_OPERAND <loc_E720-1, $C400>
                RETURN_OPERAND <loc_E720-1, $C604>
                RETURN_OPERAND <loc_E720-1, $4609>
                RETURN_OPERAND <loc_E720-1, $4400>
                RETURN_OPERAND <sub_E71A-1, $C400>
                RETURN_OPERAND <sub_E71A-1, $C604>
                RETURN_OPERAND <sub_E71A-1, $4609>
                RETURN_OPERAND <sub_E71A-1, $4400>
                RETURN_OPERAND <sub_E756-1, $8804>
                RETURN_OPERAND <sub_E6F1-1, $C604>
                RETURN_OPERAND <loc_E7BE-1, $E602>
                RETURN_OPERAND <loc_E720-1, $560A>
                RETURN_OPERAND <loc_E720-1, $5604>
                RETURN_OPERAND <loc_E720-1, $C608>
                RETURN_OPERAND <sub_E788-1, $A604>
                RETURN_OPERAND <sub_E6D9-1, $C604>
                RETURN_OPERAND <sub_E8D2-1, $4609>
                RETURN_OPERAND <sub_E661-1, $4500>
                RETURN_OPERAND <loc_E669-1, $4500>
                RETURN_OPERAND <loc_E8F5-1, $C60A>
                RETURN_OPERAND <sub_E8E8-1, $4609>
                RETURN_OPERAND <sub_E71A-1, $4604>
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_3. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_E1BE:                               ; CODE XREF: sub_DD01+D↑p
                                        ; sub_DE99+18↑p ...
                LDY     #4
                LDA     (Dist),Y
                STA     byte_3A
                INY
                LDA     (Dist),Y
                STA     byte_3B
                LDY     #6
                LDA     (Dist),Y
                STA     byte_3C
                INY
                LDA     (Dist),Y
                STA     byte_3D

loc_E1D4:                               ; CODE XREF: sub_E788+1D↓p
                                        ; sub_E7DC+A↓p
                SEC
                LDA     byte_3C
                SBC     LowGlobalYC0
                STA     pTileID
                LDA     byte_3D
                SBC     HighGlobalY
                STA     pTileID+1
                SEC
                LDA     #$C0
                SBC     pTileID
                LDA     #3
                SBC     pTileID+1
                BCC     locret_E20E
                LDA     LowGlobalXC0
                SBC     #$40 ; '@'
                STA     Pointer
                LDA     HighGlobalX
                SBC     #0
                STA     Pointer+1
                SEC
                LDA     byte_3A
                SBC     Pointer
                STA     Pointer
                LDA     byte_3B
                SBC     Pointer+1
                STA     Pointer+1
                SEC
                LDA     #$80
                SBC     Pointer
                LDA     #4
                SBC     Pointer+1

locret_E20E:                            ; CODE XREF: sub_E1BE+2C↑j
                RTS
; End of function sub_E1BE


; =============== S U B R O U T I N E =======================================


sub_E20F:                               ; CODE XREF: sub_13A1EA↓P
                                        ; sub_13A20F↓P ...
                JSR     get_characters_buffer
                LDY     #$15
                LDA     (Dist),Y
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     byte_EBF1,X
                ASL     A
                TAX
                STA     byte_3F
                LDY     #$11
                LDA     word_EBF3+1,X
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                CLC
                ADC     (Dist),Y
                STA     OffScreen
                INY
                LDA     (Dist),Y
                STA     AttributeScr1
                INY
                LDA     (Dist),Y
                STA     AttributeScr1+1
                CLC
                LDA     OffScreen
                ADC     word_EBF3,X
                TAX
                EOR     OffScreen
                AND     #$F0
                BEQ     loc_E258
                LDA     OffScreen
                AND     #$F0
                STA     OffScreen
                TXA
                AND     #$F
                ORA     OffScreen
                TAX
                LDA     AttributeScr1+1
                EOR     #1
                STA     AttributeScr1+1

loc_E258:                               ; CODE XREF: sub_E20F+35↑j
                STX     OffScreen
                JSR     sub_E275

loc_E25D:                               ; CODE XREF: sub_E266+D↓j
                LDX     Source          ; byte_109EAB, byte_109EB3
                LDY     Source+1        ; byte_109EAB, byte_109EB3
                STX     Dist
                STY     Dist+1
                RTS
; End of function sub_E20F


; =============== S U B R O U T I N E =======================================


sub_E266:                               ; CODE XREF: sub_13A1C6↓P
                                        ; sub_13AB0F+18↓P ...
                LDA     byte_21
                AND     #$7F
                JSR     loc_E286
                ASL     byte_21
                LDX     #0
                STX     byte_21
                BEQ     loc_E25D
; End of function sub_E266


; =============== S U B R O U T I N E =======================================


sub_E275:                               ; CODE XREF: sub_E20F+4B↑p
                                        ; sub_E7DC+F↓p ...
                LDY     OffScreen
                LDA     (AttributeScr1),Y
                BEQ     locret_E2A1
                BMI     loc_E282
                SEC
                LDA     #$28 ; '('
                SBC     (AttributeScr1),Y

loc_E282:                               ; CODE XREF: sub_E275+6↑j
                CLC
                ADC     #4
                TAX

loc_E286:                               ; CODE XREF: sub_E266+4↑p
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDA     #0
                LSR     Source+1        ; byte_109EAB, byte_109EB3
                ROR     A
                LSR     Source+1        ; byte_109EAB, byte_109EB3
                ROR     A
                LSR     Source+1        ; byte_109EAB, byte_109EB3
                ROR     A
                ADC     #$80
                STA     Source          ; byte_109EAB, byte_109EB3
                LDA     Source+1        ; byte_109EAB, byte_109EB3
                ADC     #$67 ; 'g'
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDY     #$14
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3

locret_E2A1:                            ; CODE XREF: sub_E275+4↑j
                                        ; sub_E2A2+6↓j ...
                RTS
; End of function sub_E275


; =============== S U B R O U T I N E =======================================


sub_E2A2:                               ; CODE XREF: sub_13A1EA+A↓P
                LDY     #$14
                LDA     (Dist),Y
                AND     #$20 ; ' '
                BEQ     locret_E2A1
                JSR     sram_write_enable
                CLC
                LDA     byte_3F
                ADC     #$20 ; ' '
                AND     #$38 ; '8'
                TAX
                LDY     #$15
                LSR     A
                LSR     A
                LSR     A
                STA     (Dist),Y
                JSR     sram_read_enable

loc_E2BF:                               ; CODE XREF: sub_13A6E0+2D↓P
                LDA     byte_EBF1,X

loc_E2C2:                               ; CODE XREF: sub_13A9D6+D↓P
                CLC
                LDY     #$16
                ADC     (Dist),Y
                STA     Pointer
                LDA     #0
                INY
                ADC     (Dist),Y
                STA     Pointer+1
                LDA     #$15
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDY     #$10
                LDA     (Dist),Y
                TAY
                LDA     SpriteTable,Y
                AND     #$3F ; '?'
                STA     byte_3F
                BEQ     locret_E2A1
                LDA     Pointer
                STA     SpriteTable + ANIM_SPRITE::pFrame,Y
                LDA     Pointer+1
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,Y
                LDA     SpriteTable + ANIM_SPRITE::PosX,Y
                STA     pDist
                LDA     SpriteTable + ANIM_SPRITE::PosY,Y
                STA     pDist+1
                LDA     SpriteTable + ANIM_SPRITE::TileID,Y
                ASL     A
                ASL     A
                TAX
                LDY     #0
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1
                INY
                LDA     (Pointer),Y
                STA     FieldPosition
                INY
                LDA     (Pointer),Y
                STA     CursorMode
                SEC

loc_E315:                               ; CODE XREF: sub_E2A2+75↓j
                BIT     flag_clear_oam_300
                BVS     loc_E315
                ROR     flag_clear_oam_300
                LDY     #0

loc_E31D:                               ; CODE XREF: sub_E2A2+CF↓j
                LDA     OAM,X
                CMP     #$F0
                BEQ     loc_E365
                CLC
                LDA     (pTileID),Y
                ADC     pDist
                STA     OAM + OAM_TILE::PosX,X
                INY
                CLC
                LDA     (pTileID),Y
                ADC     pDist+1
                STA     OAM,X
                INY
                LDA     (pTileID),Y
                STA     Pointer
                LDA     CursorMode
                LSR     Pointer
                BCC     loc_E342
                LSR     A
                LSR     A

loc_E342:                               ; CODE XREF: sub_E2A2+9C↑j
                LSR     Pointer
                BCC     loc_E34A
                LSR     A
                LSR     A
                LSR     A
                LSR     A

loc_E34A:                               ; CODE XREF: sub_E2A2+A2↑j
                AND     #3
                ASL     Pointer
                ASL     Pointer
                ORA     Pointer
                STA     OAM + OAM_TILE::Attr,X
                INY
                CLC
                AND     #$10
                BEQ     loc_E35D
                LDA     FieldPosition

loc_E35D:                               ; CODE XREF: sub_E2A2+B7↑j
                ADC     (pTileID),Y
                STA     OAM + OAM_TILE::TileID,X
                INY
                BNE     loc_E369

loc_E365:                               ; CODE XREF: sub_E2A2+80↑j
                INY
                INY
                INY
                INY

loc_E369:                               ; CODE XREF: sub_E2A2+C1↑j
                INX
                INX
                INX
                INX
                BEQ     loc_E373
                DEC     byte_3F
                BNE     loc_E31D

loc_E373:                               ; CODE XREF: sub_E2A2+CB↑j
                ASL     flag_clear_oam_300
                RTS
; End of function sub_E2A2


; =============== S U B R O U T I N E =======================================


sub_E376:                               ; CODE XREF: sub_E7DC+5↓p
                LDA     HighGlobalY_plus1_carry
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                AND     #$E
                ORA     #1
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     HighGlobalY_plus1_carry
                LSR     A
                LSR     A
                AND     #7
                STA     pDist+1
                LDA     HighGlobalX_plus2
                AND     #$FC
                CLC
                STA     pDist
                LDA     pDist+1
                ADC     #$98
                STA     pDist+1
                LDY     #1
                LDA     (pDist),Y
                AND     #$3F ; '?'
                LDY     #1
                CMP     (Dist),Y
                BNE     loc_E3AD
                LDA     MsgNumber
                JSR     set_msg_bank
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E3AD:                               ; CODE XREF: sub_E376+2E↑j
                LDA     MsgNumber
                JSR     set_msg_bank
                SEC
                RTS
; End of function sub_E376


; =============== S U B R O U T I N E =======================================


bank14_8000_ex:                         ; CODE XREF: sub_E7DC+14↓p
                                        ; sub_E96C+20↓p
                LDA     #$14
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     AttributeScr1
                STA     Screen
                LDA     LowGlobalY3F
                ASL     A
                TAX
                LDA     ReturnTab+1,X
                PHA
                LDA     ReturnTab,X
                PHA
                RTS
; End of function bank14_8000_ex

; ---------------------------------------------------------------------------
ReturnTab:      .WORD sub_E428-1, loc_E43C-1, sub_E3DE-1, sub_E4B2-1, sub_E49E-1
                                        ; DATA XREF: bank14_8000_ex+13↑r
                                        ; bank14_8000_ex+F↑r
                .WORD loc_E4DC-1, loc_E403-1, loc_E466-1, loc_E490-1

; =============== S U B R O U T I N E =======================================


sub_E3DE:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                TAX
                AND     #$30 ; '0'
                BEQ     loc_E3EF
                AND     #$20 ; ' '
                BEQ     loc_E400
                TXA
                AND     #$1C
                BNE     loc_E400

loc_E3EF:                               ; CODE XREF: sub_E3DE+6↑j
                LDX     #$FF
                LDY     #0
                JSR     sub_E510
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E425
                TXA
                AND     #3
                BEQ     loc_E425

loc_E400:                               ; CODE XREF: sub_E3DE+A↑j
                                        ; sub_E3DE+F↑j ...
                JMP     loc_E490
; ---------------------------------------------------------------------------

loc_E403:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                TAX
                AND     #$30 ; '0'
                BEQ     loc_E414
                AND     #$20 ; ' '
                BEQ     loc_E400
                TXA
                AND     #$13
                BNE     loc_E400

loc_E414:                               ; CODE XREF: sub_E3DE+2B↑j
                LDX     #1
                LDY     #0
                JSR     sub_E510
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E425
                TXA
                AND     #$C
                BNE     loc_E400

loc_E425:                               ; CODE XREF: sub_E3DE+1B↑j
                                        ; sub_E3DE+20↑j ...
                JMP     loc_E497
; End of function sub_E3DE


; =============== S U B R O U T I N E =======================================


sub_E428:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$16
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     sub_E510
                AND     #9
                BNE     loc_E490
                BEQ     loc_E497

loc_E43C:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$14
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     sub_E510
                AND     #8
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     sub_E510
                AND     #2
                BNE     loc_E490
                LDX     #$FF
                LDY     #$10
                JSR     sub_E510
                AND     #1
                BNE     loc_E490
                BEQ     loc_E497

loc_E466:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$12
                BNE     loc_E490
                LDX     #0
                LDY     #$10
                JSR     sub_E510
                AND     #1
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     sub_E510
                AND     #4
                BNE     loc_E490
                LDX     #1
                LDY     #$10
                JSR     sub_E510
                AND     #8
                BNE     loc_E490
                BEQ     loc_E497

loc_E490:                               ; CODE XREF: sub_E3DE:loc_E400↑j
                                        ; sub_E428+5↑j ...
                LDA     MsgNumber
                JSR     set_msg_bank
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_E497:                               ; CODE XREF: sub_E3DE:loc_E425↑j
                                        ; sub_E428+12↑j ...
                LDA     MsgNumber
                JSR     set_msg_bank
                CLC
                RTS
; End of function sub_E428


; =============== S U B R O U T I N E =======================================


sub_E49E:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$19
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     sub_E510
                AND     #6
                BNE     loc_E490
                BEQ     loc_E497
; End of function sub_E49E


; =============== S U B R O U T I N E =======================================


sub_E4B2:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$18
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     sub_E510
                AND     #4
                BNE     loc_E490
                LDX     #$FF
                LDY     #0
                JSR     sub_E510
                AND     #1
                BNE     loc_E490
                LDX     #$FF
                LDY     #$F0
                JSR     sub_E510
                AND     #2
                BNE     loc_E490
                BEQ     loc_E497

loc_E4DC:                               ; DATA XREF: ROM:ReturnTab↑o
                JSR     sub_E506
                AND     #$11
                BNE     loc_E490
                LDX     #0
                LDY     #$F0
                JSR     sub_E510
                AND     #2
                BNE     loc_E490
                LDX     #1
                LDY     #0
                JSR     sub_E510
                AND     #8
                BNE     loc_E490
                LDX     #1
                LDY     #$F0
                JSR     sub_E510
                AND     #4
                BNE     loc_E490
                BEQ     loc_E497
; End of function sub_E4B2


; =============== S U B R O U T I N E =======================================


sub_E506:                               ; CODE XREF: sub_E3DE↑p
                                        ; sub_E3DE:loc_E403↑p ...
                LDX     #0
                LDY     #0
                JSR     sub_E510
                STA     byte_3F
                RTS
; End of function sub_E506


; =============== S U B R O U T I N E =======================================


sub_E510:                               ; CODE XREF: sub_E3DE+15↑p
                                        ; sub_E3DE+3A↑p ...
                CLC
                TYA
                ADC     OffScreen
                STA     Screen+1
                CLC
                TXA
                ADC     Screen+1
                TAY
                EOR     Screen+1
                AND     #$F0
                BEQ     loc_E52F
                LDA     Screen+1
                AND     #$F0
                STA     Screen+1
                TYA
                AND     #$F
                ORA     Screen+1
                TAY
                LDA     #1

loc_E52F:                               ; CODE XREF: sub_E510+F↑j
                EOR     AttributeScr1+1
                CLC
                ADC     #$FC
                STA     Screen+1
                LDA     #0
                STA     AttributeScr0
                LDA     (Screen),Y
                BMI     loc_E541
                LDA     BankNum0
; ---------------------------------------------------------------------------
                .BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_E541:                               ; CODE XREF: sub_E510+2C↑j
                LDA     BankNum1
                LSR     A
                ROR     AttributeScr0
                ADC     #$80
                STA     AttributeScr0+1
                LDA     (Screen),Y
                AND     #$7F
                TAY
                LDA     (AttributeScr0),Y
                RTS
; End of function sub_E510


; =============== S U B R O U T I N E =======================================


sub_E552:                               ; CODE XREF: sub_E788+26↓j
                JSR     sub_E607
                LDY     #$C
                LDA     word_EBF3,X
                ASL     A
                STA     (Dist),Y
                INY
                LDA     word_EBF3+1,X
                ASL     A
                STA     (Dist),Y
                JMP     loc_E577
; End of function sub_E552


; =============== S U B R O U T I N E =======================================


sub_E567:                               ; CODE XREF: sub_E7F5:loc_E7F9↓j
                                        ; sub_E83F+90↓j ...
                JSR     sub_E607
                LDY     #$C
                LDA     word_EBF3,X
                STA     (Dist),Y
                INY
                LDA     word_EBF3+1,X
                STA     (Dist),Y

loc_E577:                               ; CODE XREF: sub_E552+12↑j
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F ; '?'
                ORA     #$40 ; '@'
                STA     Pointer
                LDA     LowGlobalY3F
                LSR     A
                AND     #$40 ; '@'
                EOR     Pointer
                STA     (Dist),Y
                LDY     #9
                LDA     #$38 ; '8'
                STA     (Dist),Y
                LDY     #$15
                LDA     (Dist),Y
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     byte_EBF1,X

loc_E59B:                               ; CODE XREF: sub_E6F1+23↓p
                                        ; sub_E71A+11↓p ...
                CLC
                LDY     #$16
                ADC     (Dist),Y
                LDY     #$E
                STA     (Dist),Y
                LDA     #0
                LDY     #$17
                ADC     (Dist),Y
                LDY     #$F
                STA     (Dist),Y
                RTS
; End of function sub_E567


; =============== S U B R O U T I N E =======================================


sub_E5AF:                               ; CODE XREF: sub_E788+1A↓p
                JSR     sub_E5EF
                ASL     byte_3A
                ROL     byte_3B
                ASL     byte_3C
                ROL     byte_3D
                JMP     loc_E5C0
; End of function sub_E5AF


; =============== S U B R O U T I N E =======================================


sub_E5BD:                               ; CODE XREF: sub_E7DC+2↓p
                                        ; sub_E83F+7B↓p ...
                JSR     sub_E5EF

loc_E5C0:                               ; CODE XREF: sub_E5AF+B↑j
                CLC
                LDY     #4
                LDA     (Dist),Y
                ADC     byte_3A
                STA     byte_3A
                AND     #$C0
                STA     LowGlobalXC0_0
                INY
                LDA     (Dist),Y
                ADC     byte_3B
                STA     byte_3B
                STA     HighGlobalX_plus2
                CLC
                LDY     #6
                LDA     (Dist),Y
                ADC     byte_3C
                STA     byte_3C
                AND     #$C0
                STA     MaskORA
                INY
                LDA     (Dist),Y
                ADC     byte_3D
                STA     byte_3D
                STA     HighGlobalY_plus1_carry
                JMP     get_screen_pointers ; set base address Screen $6000 or $6100
; End of function sub_E5BD              ; AttributeScr0 $6200 or $6300
                                        ; AttributeScr1 $6400 or $6500
                                        ; OffScreen - offset

; =============== S U B R O U T I N E =======================================


sub_E5EF:                               ; CODE XREF: sub_E5AF↑p
                                        ; sub_E5BD↑p
                JSR     sub_E607
                LDA     byte_EBED,X
                STA     byte_3A
                LDA     byte_EBEE,X
                STA     byte_3B
                LDA     byte_EBEF,X
                STA     byte_3C
                LDA     byte_EBF0,X
                STA     byte_3D
                RTS
; End of function sub_E5EF


; =============== S U B R O U T I N E =======================================


sub_E607:                               ; CODE XREF: sub_E552↑p
                                        ; sub_E567↑p ...
                LDA     LowGlobalY3F
                ASL     A
                ASL     A
                ASL     A
                TAX
                RTS
; End of function sub_E607


; =============== S U B R O U T I N E =======================================


sub_E60E:                               ; CODE XREF: sub_E6D9↓p
                                        ; sub_E6F1↓p ...
                JSR     sub_E655
                LDY     #$14
                LDA     (Dist),Y
                AND     #$F
                TAY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                INY
                CMP     #5
                BEQ     loc_E625
                CMP     #6
                BEQ     loc_E62F
                BNE     loc_E62D

loc_E625:                               ; CODE XREF: sub_E60E+F↑j
                JSR     loc_E646
                AND     byte_EC5D,X
                BNE     loc_E637

loc_E62D:                               ; CODE XREF: sub_E60E+15↑j
                                        ; sub_E60E+27↓j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E62F:                               ; CODE XREF: sub_E60E+13↑j
                JSR     loc_E646
                AND     byte_EC5D,X
                BNE     loc_E62D

loc_E637:                               ; CODE XREF: sub_E60E+1D↑j
                LDY     #0
                LDA     (Dist),Y
                ORA     #$80
                STA     (Dist),Y
                SEC
                RTS
; End of function sub_E60E


; =============== S U B R O U T I N E =======================================


sub_E641:                               ; CODE XREF: sub_E661↓p
                                        ; sub_E661:loc_E669↓p
                JSR     sub_E655
                LDY     #4

loc_E646:                               ; CODE XREF: sub_E60E:loc_E625↑p
                                        ; sub_E60E:loc_E62F↑p ...
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #7
                TAX
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     $7600,Y
                RTS
; End of function sub_E641


; =============== S U B R O U T I N E =======================================


sub_E655:                               ; CODE XREF: sub_E60E↑p
                                        ; sub_E641↑p ...
                LDY     #2
                LDA     (Dist),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                INY
                LDA     (Dist),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                RTS
; End of function sub_E655


; =============== S U B R O U T I N E =======================================


sub_E661:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E641
                ORA     byte_EC5D,X
                BNE     loc_E672

loc_E669:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E641
                ORA     byte_EC5D,X
                EOR     byte_EC5D,X

loc_E672:                               ; CODE XREF: sub_E661+6↑j
                STA     $7600,Y
                JMP     loc_E720
; End of function sub_E661


; =============== S U B R O U T I N E =======================================


sub_E678:                               ; DATA XREF: ROM:stru_E105↑o
                LDY     #$1B
                LDA     (Dist),Y
                BNE     loc_E694
                JMP     sub_E72E
; End of function sub_E678


; =============== S U B R O U T I N E =======================================


sub_E681:                               ; CODE XREF: sub_E6CF↓p
                                        ; DATA XREF: ROM:stru_E105↑o
                LDY     #$15
                LDA     (Dist),Y
                ORA     #$40 ; '@'
                LDY     #$1B
                EOR     (Dist),Y
                AND     #$4F ; 'O'
                BEQ     loc_E694
                JSR     sub_E72E
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_E694:                               ; CODE XREF: sub_E678+4↑j
                                        ; sub_E681+C↑j
                JSR     sub_E655
                LDY     #4
                JSR     sub_E6A1
                JSR     sub_E72E
                SEC
                RTS
; End of function sub_E681


; =============== S U B R O U T I N E =======================================


sub_E6A1:                               ; CODE XREF: sub_E681+18↑p
                                        ; sub_EA38+6A↓p ...
                LDA     Source          ; byte_109EAB, byte_109EB3
                STA     Pointer
                LDA     Source+1        ; byte_109EAB, byte_109EB3
                STA     Pointer+1

loc_E6A9:                               ; CODE XREF: sub_13BBD4+5↓P
                SEC
                LDA     (Pointer),Y
                SBC     #0
                STA     CurrentGame + GAME_SAVE::PureSave.GlobalX
                INY
                LDA     (Pointer),Y
                SBC     #2
                STA     CurrentGame + GAME_SAVE::PureSave.GlobalX+1
                INY
                SEC
                LDA     (Pointer),Y
                SBC     #$C0
                STA     CurrentGame + GAME_SAVE::PureSave.GlobalY
                INY
                LDA     (Pointer),Y
                SBC     #1
                STA     CurrentGame + GAME_SAVE::PureSave.GlobalY+1
                LDA     #$40 ; '@'
                STA     byte_20
                RTS
; End of function sub_E6A1


; =============== S U B R O U T I N E =======================================


sub_E6CF:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E681
                BCC     @exit
                LDA     #1              ; sub_13BD0D
                STA     FuncID          ; ID from table BANK13:BCFD (RoutineTable)

@exit:                                  ; CODE XREF: sub_E6CF+3↑j
                RTS
; End of function sub_E6CF


; =============== S U B R O U T I N E =======================================


sub_E6D9:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E6DF
                RTS
; ---------------------------------------------------------------------------

loc_E6DF:                               ; CODE XREF: sub_E6D9+3↑j
                JSR     sub_E7FC
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                CMP     #8
                BCS     loc_E6FE
                JSR     sub_E7DC
                JMP     sub_E73D
; End of function sub_E6D9


; =============== S U B R O U T I N E =======================================


sub_E6F1:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E6F7
                RTS
; ---------------------------------------------------------------------------

loc_E6F7:                               ; CODE XREF: sub_E6F1+3↑j
                JSR     sub_E7FC
                AND     #$F0
                BNE     loc_E720

loc_E6FE:                               ; CODE XREF: sub_E6D9+10↑j
                LDY     #$C
                LDA     #$3D ; '='
                STA     (Dist),Y
                INY
                LDA     #$EC
                STA     (Dist),Y
                JSR     sub_E73D
                LDY     #9
                LDA     #$78 ; 'x'
                STA     (Dist),Y
                LDA     #0
                JSR     loc_E59B
                JMP     sub_E72E
; End of function sub_E6F1


; =============== S U B R O U T I N E =======================================


sub_E71A:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E720
                RTS
; ---------------------------------------------------------------------------

loc_E720:                               ; CODE XREF: sub_E661+14↑j
                                        ; sub_E6F1+B↑j ...
                JSR     sub_E733
                JSR     sub_E73D
                JSR     sub_E746
                LDA     #0
                JSR     loc_E59B
; End of function sub_E71A


; =============== S U B R O U T I N E =======================================


sub_E72E:                               ; CODE XREF: sub_E678+6↑j
                                        ; sub_E681+E↑p ...
                LDA     #$88
                STA     LowGlobalY3F
                RTS
; End of function sub_E72E


; =============== S U B R O U T I N E =======================================


sub_E733:                               ; CODE XREF: sub_E71A:loc_E720↑p
                                        ; sub_E756↓p ...
                LDA     #0
                LDY     #$C
                STA     (Dist),Y
                INY
                STA     (Dist),Y
                RTS
; End of function sub_E733


; =============== S U B R O U T I N E =======================================


sub_E73D:                               ; CODE XREF: sub_E6D9+15↑j
                                        ; sub_E6F1+18↑p ...
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F ; '?'
                STA     (Dist),Y
                RTS
; End of function sub_E73D


; =============== S U B R O U T I N E =======================================


sub_E746:                               ; CODE XREF: sub_E71A+C↑p
                                        ; sub_E756+6↓p ...
                LDY     #9
                LDA     #$38 ; '8'
                STA     (Dist),Y
                RTS
; End of function sub_E746


; =============== S U B R O U T I N E =======================================


sub_E74D:                               ; CODE XREF: sub_E80E+1A↓j
                                        ; sub_E8D2:loc_E8E1↓p ...
                LDY     #8
                LDA     (Dist),Y
                ORA     #$40 ; '@'
                STA     (Dist),Y
                RTS
; End of function sub_E74D


; =============== S U B R O U T I N E =======================================


sub_E756:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E733
                JSR     sub_E73D
                JSR     sub_E746
                JSR     sub_E655
                JSR     sub_E772
                AND     byte_EC5D,X
                BEQ     loc_E76C
                LDA     #4

loc_E76C:                               ; CODE XREF: sub_E756+12↑j
                JSR     loc_E59B
                JMP     sub_E72E
; End of function sub_E756


; =============== S U B R O U T I N E =======================================


sub_E772:                               ; CODE XREF: sub_E756+C↑p
                                        ; sub_13A9D6+3↓P ...
                LDY     #6
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                ASL     A
                LDY     #7
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #7
                TAX
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                ROR     A
                LSR     A
                LSR     A
                TAY
                LDA     $7620,Y
                RTS
; End of function sub_E772


; =============== S U B R O U T I N E =======================================


sub_E788:                               ; DATA XREF: ROM:stru_E105↑o
                LDY     #$1A
                LDA     ($30),Y
                BNE     loc_E79C
                LDA     #1
                STA     ($30),Y
                LDY     #$15
                LDA     ($30),Y
                EOR     #4
                AND     #$F
                STA     ($30),Y

loc_E79C:                               ; CODE XREF: sub_E788+4↑j
                LDY     #$15
                LDA     ($30),Y
                STA     LowGlobalY3F
                JSR     sub_E5AF
                JSR     loc_E1D4
                BCC     loc_E7B1
                LDA     #$F8
                STA     byte_22
                JMP     sub_E552
; ---------------------------------------------------------------------------

loc_E7B1:                               ; CODE XREF: sub_E788+20↑j
                LDA     #0
                STA     byte_22
                JMP     loc_E965
; End of function sub_E788


; =============== S U B R O U T I N E =======================================


sub_E7B8:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E7BE
                RTS
; ---------------------------------------------------------------------------

loc_E7BE:                               ; CODE XREF: sub_E7B8+3↑j
                                        ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E7FC
                AND     #$E0
                LSR     A
                LSR     A
                BCC     loc_E7D2

loc_E7C7:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E7CD
                RTS
; ---------------------------------------------------------------------------

loc_E7CD:                               ; CODE XREF: sub_E7B8+12↑j
                                        ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E7FC
                AND     #$F8

loc_E7D2:                               ; CODE XREF: sub_E7B8+D↑j
                LSR     A
                LSR     A
                CMP     #8
                BCS     sub_E7F5
                LDY     #$15
                STA     (Dist),Y
; End of function sub_E7B8


; =============== S U B R O U T I N E =======================================


sub_E7DC:                               ; CODE XREF: sub_E6D9+12↑p
                STA     LowGlobalY3F
                JSR     sub_E5BD
                JSR     sub_E376
                BCS     sub_E7F5
                JSR     loc_E1D4
                BCC     sub_E7F5
                JSR     sub_E275
                BNE     sub_E7F5
                JSR     bank14_8000_ex
                BCC     loc_E7F9
; End of function sub_E7DC


; =============== S U B R O U T I N E =======================================


sub_E7F5:                               ; CODE XREF: sub_E7B8+1E↑j
                                        ; sub_E7DC+8↑j ...
                LDA     #$88
                STA     LowGlobalY3F

loc_E7F9:                               ; CODE XREF: sub_E7DC+17↑j
                JMP     sub_E567
; End of function sub_E7F5


; =============== S U B R O U T I N E =======================================


sub_E7FC:                               ; CODE XREF: sub_E6D9:loc_E6DF↑p
                                        ; sub_E6F1:loc_E6F7↑p ...
                LDA     byte_25
                BNE     loc_E803
                JMP     sub_F1ED
; ---------------------------------------------------------------------------

loc_E803:                               ; CODE XREF: sub_E7FC+2↑j
                PLA
                PLA
                JMP     sub_E7F5
; End of function sub_E7FC


; =============== S U B R O U T I N E =======================================


sub_E808:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     sub_E7F5
                RTS
; End of function sub_E808


; =============== S U B R O U T I N E =======================================


sub_E80E:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E814
                RTS
; ---------------------------------------------------------------------------

loc_E814:                               ; CODE XREF: sub_E80E+3↑j
                                        ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E7FC
                AND     #$E0
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                CMP     #8
                BCS     sub_E7F5
                LDY     #$15
                STA     (Dist),Y
                JSR     sub_E7F5
                JMP     sub_E74D
; End of function sub_E80E


; =============== S U B R O U T I N E =======================================


sub_E82B:                               ; CODE XREF: sub_E83F+20↓j
                CMP     #0
                BNE     sub_E7F5
                STA     byte_22
                LDY     #$1D
                LDA     (Dist),Y
                AND     #$7F
                PHA
                JSR     sub_DE13
                PLA
                JMP     sub_E0F9
; End of function sub_E82B


; =============== S U B R O U T I N E =======================================


sub_E83F:                               ; DATA XREF: ROM:stru_E105↑o
                LDY     #$1A
                LDA     (Dist),Y
                BNE     loc_E86B
                LDY     #$1E
                CLC
                LDA     (Dist),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                ADC     #2
                STA     (Dist),Y
                INY
                LDA     (Dist),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                ADC     #0
                STA     (Dist),Y
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CMP     #$10
                BCC     sub_E82B
                LDY     #$19
                STA     (Dist),Y
                LDY     #1
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                LDY     #$1A

loc_E86B:                               ; CODE XREF: sub_E83F+4↑j
                SEC
                SBC     #1
                STA     (Dist),Y
                BNE     loc_E88F
                LDY     #$1E
                LDA     (Dist),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                INY
                LDA     (Dist),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDY     #0
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CMP     #$10
                BCS     loc_E88F
                SEC
                LDA     #$28 ; '('
                SBC     SaveNum
                CLC
                ADC     #$84
                STA     byte_21

loc_E88F:                               ; CODE XREF: sub_E83F+31↑j
                                        ; sub_E83F+44↑j
                LDY     #$19
                LDA     (Dist),Y
                TAX
                AND     #$20 ; ' '
                BEQ     loc_E8A2
                LDY     #$1D
                LDA     (Dist),Y
                ASL     A
                ASL     A
                TAY
                LDA     $E107,Y

loc_E8A2:                               ; CODE XREF: sub_E83F+57↑j
                LDY     #8
                STA     (Dist),Y
                TXA
                AND     #8
                BNE     loc_E8B2
                LDY     #$15
                TXA
                AND     #7
                STA     (Dist),Y

loc_E8B2:                               ; CODE XREF: sub_E83F+6A↑j
                TXA
                BMI     loc_E8C1
                PHA
                AND     #7
                STA     LowGlobalY3F
                JSR     sub_E5BD
                PLA
                TAX
                BPL     loc_E8C5

loc_E8C1:                               ; CODE XREF: sub_E83F+74↑j
                LDA     #$88
                STA     LowGlobalY3F

loc_E8C5:                               ; CODE XREF: sub_E83F+80↑j
                TXA
                AND     #$40 ; '@'
                ASL     A
                ORA     #$70 ; 'p'
                ORA     LowGlobalY3F
                STA     byte_22
                JMP     sub_E567
; End of function sub_E83F


; =============== S U B R O U T I N E =======================================


sub_E8D2:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E8D8
                RTS
; ---------------------------------------------------------------------------

loc_E8D8:                               ; CODE XREF: sub_E8D2+3↑j
                JSR     sub_E7F5
                JMP     loc_E8E1
; ---------------------------------------------------------------------------

loc_E8DE:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_EB92

loc_E8E1:                               ; CODE XREF: sub_E8D2+9↑j
                JSR     sub_E74D
                LDA     #$74 ; 't'
                BNE     loc_E900
; End of function sub_E8D2


; =============== S U B R O U T I N E =======================================


sub_E8E8:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E8EE
                RTS
; ---------------------------------------------------------------------------

loc_E8EE:                               ; CODE XREF: sub_E8E8+3↑j
                JSR     sub_E7F5
                LDA     #$74 ; 't'
                BNE     loc_E900

loc_E8F5:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E60E
                BCC     loc_E8FB
                RTS
; ---------------------------------------------------------------------------

loc_E8FB:                               ; CODE XREF: sub_E8E8+10↑j
                JSR     sub_E7F5
                LDA     #$72 ; 'r'

loc_E900:                               ; CODE XREF: sub_E8D2+14↑j
                                        ; sub_E8E8+B↑j
                LDX     #1
                JMP     mmc3_bank_set   ; Set memory bank
; End of function sub_E8E8              ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


sub_E905:                               ; DATA XREF: ROM:stru_E105↑o
                LDA     byte_23
                CLC
                BNE     loc_E95B
                LDA     LowGlobalY3F
                BMI     loc_E92F
                LDY     #$1D
                LDA     (Dist),Y
                TAX
                LDA     byte_C
                STA     (Dist),Y
                TXA
                LDY     #$15
                STA     (Dist),Y
                STA     byte_C
                LDY     #$19
                LDA     (Dist),Y
                TAX
                LDA     LowGlobalY3F
                STA     (Dist),Y
                TXA
                STA     LowGlobalY3F
                BMI     loc_E92F
                JSR     sub_E5BD

loc_E92F:                               ; CODE XREF: sub_E905+7↑j
                                        ; sub_E905+25↑j
                JSR     sub_E567
                JSR     sub_EA24
                LDY     #8
                LDA     (Dist),Y
                AND     #$F
                CMP     #$A
                BEQ     loc_E940
                RTS
; ---------------------------------------------------------------------------

loc_E940:                               ; CODE XREF: sub_E905+38↑j
                LDA     byte_D5
                ASL     A
                AND     #2
                ORA     #$70 ; 'p'
                LDX     #1
                JMP     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
; ---------------------------------------------------------------------------

loc_E94C:                               ; CODE XREF: sub_E96C+3↓j
                LDA     #$88
                STA     byte_A0
                LDA     #0
                STA     byte_E7
                STA     ShiftX
                STA     ShiftY
                JSR     sub_E733

loc_E95B:                               ; CODE XREF: sub_E905+3↑j
                LDA     #0
                STA     LowGlobalY3F
                STA     byte_23
                LDA     #$10
                BCS     loc_E967

loc_E965:                               ; CODE XREF: sub_E788+2D↑j
                LDA     #$80

loc_E967:                               ; CODE XREF: sub_E905+5E↑j
                LDY     #0
                STA     (Dist),Y
                RTS
; End of function sub_E905


; =============== S U B R O U T I N E =======================================


sub_E96C:                               ; DATA XREF: ROM:stru_E105↑o
                LDA     byte_23
                ASL     A
                BNE     loc_E94C
                JSR     sub_E9CD
                BMI     loc_E9A9
                LDY     #$15
                STA     (Dist),Y
                STA     byte_C

loc_E97C:                               ; CODE XREF: sub_E96C+31↓j
                STA     LowGlobalY3F
                JSR     sub_E5BD
                LDA     byte_25
                CMP     #$28 ; '('
                BCS     loc_E9AD
                JSR     sub_E9FA
                BCS     loc_E9A9
                JSR     bank14_8000_ex
                BCS     loc_E9A9
                BIT     byte_3F
                BPL     loc_E9AD
                BVS     loc_E99F
                LDA     LowGlobalY3F
                SBC     #0
                AND     #$F
                BPL     loc_E97C

loc_E99F:                               ; CODE XREF: sub_E96C+29↑j
                LDY     #$15
                LDA     #0
                STA     (Dist),Y
                STA     byte_C
                BCC     loc_E9AD

loc_E9A9:                               ; CODE XREF: sub_E96C+8↑j
                                        ; sub_E96C+1E↑j ...
                LDA     #$88
                STA     LowGlobalY3F

loc_E9AD:                               ; CODE XREF: sub_E96C+19↑j
                                        ; sub_E96C+27↑j ...
                JSR     sub_E567
                JSR     sub_EA24

loc_E9B3:                               ; CODE XREF: sub_EA38+60↓j
                                        ; sub_EA38+8A↓j ...
                LDA     LowGlobalY3F
                STA     byte_A0
                LDY     #9
                LDA     (Dist),Y
                AND     #$40 ; '@'
                ORA     byte_1F
                STA     byte_E7
                LDY     #$C
                LDA     (Dist),Y
                STA     ShiftX
                INY
                LDA     (Dist),Y
                STA     ShiftY
                RTS
; End of function sub_E96C


; =============== S U B R O U T I N E =======================================


sub_E9CD:                               ; CODE XREF: sub_E96C+5↑p
                                        ; sub_EB3A↓p ...
                LDA     byte_22
                BEQ     loc_E9E1
                BPL     loc_E9D4
                RTS
; ---------------------------------------------------------------------------

loc_E9D4:                               ; CODE XREF: sub_E9CD+4↑j
                LDY     #$19
                LDA     (Dist),Y
                TAX
                LDA     byte_22
                STA     (Dist),Y
                TXA
                AND     #$8F
                RTS
; ---------------------------------------------------------------------------

loc_E9E1:                               ; CODE XREF: sub_E9CD+2↑j
                LDA     ButtonPressed0
                AND     #$F
                TAX
                LDA     byte_D
                BPL     loc_E9F3
                AND     #$F
                CMP     byte_EBDD,X
                BEQ     loc_E9F7
                STA     byte_D

loc_E9F3:                               ; CODE XREF: sub_E9CD+1B↑j
                LDA     byte_EBDD,X
                RTS
; ---------------------------------------------------------------------------

loc_E9F7:                               ; CODE XREF: sub_E9CD+22↑j
                LDA     #$88
                RTS
; End of function sub_E9CD


; =============== S U B R O U T I N E =======================================


sub_E9FA:                               ; CODE XREF: sub_E96C+1B↑p
                                        ; sub_EB92+E↓p
                JSR     sub_E275
                BEQ     loc_EA22
                ASL     A
                LDA     LowGlobalY3F
                AND     #1
                BEQ     loc_EA08
                BCS     loc_EA1C

loc_EA08:                               ; CODE XREF: sub_E9FA+A↑j
                LDA     byte_F
                BNE     loc_EA1A
                LDY     #$1B
                LDA     LowGlobalY3F
                ORA     #$40 ; '@'
                STA     (Source),Y      ; byte_109EAB, byte_109EB3
                BIT     byte_21
                BMI     loc_EA1A
                STX     byte_21

loc_EA1A:                               ; CODE XREF: sub_E9FA+10↑j
                                        ; sub_E9FA+1C↑j
                BCC     locret_EA23

loc_EA1C:                               ; CODE XREF: sub_E9FA+C↑j
                LDA     byte_22
                AND     #$10
                BEQ     locret_EA23

loc_EA22:                               ; CODE XREF: sub_E9FA+3↑j
                CLC

locret_EA23:                            ; CODE XREF: sub_E9FA:loc_EA1A↑j
                                        ; sub_E9FA+26↑j
                RTS
; End of function sub_E9FA


; =============== S U B R O U T I N E =======================================


sub_EA24:                               ; CODE XREF: sub_E905+2D↑p
                                        ; sub_E96C+44↑p
                JSR     sub_E655
                LDY     #1
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                AND     #$40 ; '@'
                BEQ     locret_EA37
                LDY     #8
                LDA     (Dist),Y
                AND     #$3F ; '?'
                STA     (Dist),Y

locret_EA37:                            ; CODE XREF: sub_EA24+9↑j
                RTS
; End of function sub_EA24


; =============== S U B R O U T I N E =======================================


sub_EA38:                               ; DATA XREF: ROM:stru_E105↑o
                LDY     #$1A
                LDA     (Dist),Y
                BNE     loc_EA7C
                LDA     MsgNumber
                JSR     set_msg_bank
                ASL     A
                TAX
                LDA     $8000,X
                STA     Pointer
                LDA     $8001,X
                STA     Pointer+1
                LDY     #$1E
                LDA     (Dist),Y
                ASL     A
                TAY
                LDA     (Pointer),Y
                STA     Source          ; byte_109EAB, byte_109EB3
                INY
                LDA     (Pointer),Y
                STA     Source+1        ; byte_109EAB, byte_109EB3
                LDY     #$1F
                LDA     (Dist),Y
                TAY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                CMP     #$10
                BCC     loc_EA9B
                PHA
                INY
                LDA     (Source),Y      ; byte_109EAB, byte_109EB3
                TAX
                INY
                TYA
                LDY     #$1F
                STA     (Dist),Y
                LDY     #$19
                PLA
                STA     (Dist),Y
                TXA
                LDY     #$1A

loc_EA7C:                               ; CODE XREF: sub_EA38+4↑j
                SEC
                SBC     #1
                STA     (Dist),Y
                LDY     #$19
                LDA     (Dist),Y
                BMI     loc_EABB
                AND     #$F
                STA     LowGlobalY3F
                LDY     #$15
                STA     (Dist),Y
                JSR     sub_E5BD
                JSR     loc_EB0B
                JSR     loc_E59B
                JMP     loc_E9B3
; ---------------------------------------------------------------------------

loc_EA9B:                               ; CODE XREF: sub_EA38+2F↑j
                CMP     #0
                BNE     loc_EAA1
                STA     byte_23

loc_EAA1:                               ; CODE XREF: sub_EA38+65↑j
                INY
                JSR     sub_E6A1
                INY
                TYA
                LDY     #$1F
                STA     (Dist),Y
                LDA     byte_23
                BNE     loc_EABB
                LDA     #$80
                STA     byte_23
                JSR     sub_D9FA
                LDX     #0
                JSR     sub_CDAF

loc_EABB:                               ; CODE XREF: sub_EA38+4D↑j
                                        ; sub_EA38+75↑j
                LDA     #$88
                STA     LowGlobalY3F
                JSR     loc_EB0B
                JMP     loc_E9B3
; End of function sub_EA38


; =============== S U B R O U T I N E =======================================


sub_EAC5:                               ; DATA XREF: ROM:stru_E105↑o
                LDA     LowGlobalY3F
                BMI     sub_EB07
                LDY     #$19
                LDA     (Dist),Y
                TAX
                LDA     LowGlobalY3F
                STA     (Dist),Y
                TXA
                BMI     sub_EB07
                STA     LowGlobalY3F
                LDY     #$15
                EOR     #4
                STA     (Dist),Y
                LDY     #6
                SEC
                LDA     byte_6786
                SBC     (Dist),Y
                INY
                LDA     byte_6787
                SBC     (Dist),Y
                LDY     #$14
                LDA     (Dist),Y
                BCS     loc_EAF4
; ---------------------------------------------------------------------------
                .BYTE   9
                .BYTE $10
                .BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_EAF4:                               ; CODE XREF: sub_EAC5+2A↑j
                AND     #$EF
                STA     (Dist),Y
                JSR     sub_E5BD
                JSR     loc_EB0B
                CPX     #$40 ; '@'
                BCC     loc_EB04
                SBC     #4

loc_EB04:                               ; CODE XREF: sub_EAC5+3B↑j
                JMP     loc_E59B
; End of function sub_EAC5


; =============== S U B R O U T I N E =======================================


sub_EB07:                               ; CODE XREF: sub_EAC5+2↑j
                                        ; sub_EAC5+E↑j
                LDA     #$88
                STA     LowGlobalY3F

loc_EB0B:                               ; CODE XREF: sub_EA38+5A↑p
                                        ; sub_EA38+87↑p ...
                JSR     sub_E607
                LDY     #$C
                LDA     word_EBF3,X
                STA     (Dist),Y
                INY
                LDA     word_EBF3+1,X
                STA     (Dist),Y
                JSR     sub_E73D
                JSR     sub_E746
                LDA     LowGlobalY3F
                BMI     locret_EB39
                LDY     #$15
                LDA     (Dist),Y
                TAX
                LDA     byte_EC35,X
                TAX
                LDY     #8
                AND     #$40 ; '@'
                ORA     (Dist),Y
                STA     (Dist),Y
                TXA
                AND     #$1F

locret_EB39:                            ; CODE XREF: sub_EB07+1C↑j
                RTS
; End of function sub_EB07


; =============== S U B R O U T I N E =======================================


sub_EB3A:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E9CD
                BMI     loc_EB70
                LDY     #$15
                STA     (Dist),Y
                STA     byte_A0
                TAX
                LDY     #$1A
                LDA     (Dist),Y
                BEQ     loc_EB68
                BMI     loc_EB5B
                SEC
                SBC     #1
                STA     (Dist),Y
                CMP     #5
                BCS     loc_EB68
                LDX     #7
                BCC     loc_EB68

loc_EB5B:                               ; CODE XREF: sub_EB3A+12↑j
                PHA
                CLC
                ADC     #1
                STA     (Dist),Y
                PLA
                CMP     #$FD
                BCS     loc_EB68
                LDX     #5

loc_EB68:                               ; CODE XREF: sub_EB3A+10↑j
                                        ; sub_EB3A+1B↑j ...
                STX     LowGlobalY3F
                JSR     sub_E5BD
                JMP     loc_EB76
; ---------------------------------------------------------------------------

loc_EB70:                               ; CODE XREF: sub_EB3A+3↑j
                LDA     #$88
                STA     byte_A0
                STA     LowGlobalY3F

loc_EB76:                               ; CODE XREF: sub_EB3A+33↑j
                JSR     sub_E567
                JSR     sub_E74D
                LDA     byte_A0
                STA     LowGlobalY3F
                JSR     sub_E607
                LDA     byte_1F
                STA     byte_E7
                LDA     word_EBF3,X
                STA     ShiftX
                LDA     word_EBF3+1,X
                STA     ShiftY
                RTS
; End of function sub_EB3A


; =============== S U B R O U T I N E =======================================


sub_EB92:                               ; CODE XREF: sub_E8D2:loc_E8DE↑p
                                        ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E9CD
                BMI     loc_EBC0
                LDY     #$15
                STA     (Dist),Y
                STA     LowGlobalY3F
                JSR     sub_E5BD
                JSR     sub_E9FA
                BCS     loc_EBC0
                LDA     byte_22
                BNE     loc_EBC4
                LDA     #$14
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     AttributeScr1
                STA     Screen
                JSR     sub_E506
                LDA     MsgNumber
                JSR     set_msg_bank
                BIT     byte_3F
                BVS     loc_EBC4

loc_EBC0:                               ; CODE XREF: sub_EB92+3↑j
                                        ; sub_EB92+11↑j
                LDA     #$88
                STA     LowGlobalY3F

loc_EBC4:                               ; CODE XREF: sub_EB92+15↑j
                                        ; sub_EB92+2C↑j
                JSR     sub_E567
                JMP     loc_E9B3
; End of function sub_EB92


; =============== S U B R O U T I N E =======================================


sub_EBCA:                               ; DATA XREF: ROM:stru_E105↑o
                JSR     sub_E9CD
                STA     LowGlobalY3F
                BMI     loc_EBD4
                JSR     sub_E5BD

loc_EBD4:                               ; CODE XREF: sub_EBCA+5↑j
                JSR     sub_E567
                JSR     sub_E73D
                JMP     loc_E9B3
; End of function sub_EBCA

; ---------------------------------------------------------------------------
byte_EBDD:      .BYTE $88, 2, 6, $88, 4, 3, 5, $88, 0, 1, 7, $88, $88
                                        ; DATA XREF: sub_CCB1+4B↑r
                                        ; sub_E9CD+1F↑r ...
                .BYTE $88, $88, $88
byte_EBED:      .BYTE 0                 ; DATA XREF: sub_D05E+9↑r
                                        ; sub_D884+F↑r ...
byte_EBEE:      .BYTE 0                 ; DATA XREF: sub_D05E+10↑r
                                        ; sub_D884+17↑r ...
byte_EBEF:      .BYTE $C0               ; DATA XREF: sub_D05E+18↑r
                                        ; sub_D05E+27↑r ...
byte_EBF0:      .BYTE $FF               ; DATA XREF: sub_D05E+1F↑r
                                        ; sub_D884+29↑r ...
byte_EBF1:      .BYTE 0, 0              ; DATA XREF: sub_E20F+B↑r
                                        ; sub_E2A2:loc_E2BF↑r ...
word_EBF3:      .WORD $FF00, $40, $FFC0, 0, $FF01, $40, 0, 8, 1, $40, $40
                                        ; DATA XREF: sub_E20F+2D↑r
                                        ; sub_E552+5↑r ...
                .WORD $10, $101, 0, $40, $10, $100, $FFC0, $40, $10, $1FF
                .WORD $FFC0, 0, $18, $FF, $FFC0, $FFC0, 0, $FFFF, 0, 0
                .WORD $10, 0
byte_EC35:      .BYTE $54, $14, $1C, 4, $44, 0, $C, $10, 0, $FF, 0, 1
                                        ; DATA XREF: sub_EB07+23↑r
                .BYTE $FF, 0, 1, 0, 0, $FF, 0, 1, 0, $FF, 0, 1, $FF, 0
                .BYTE 1, 0, 0, $FF, 0, 1, 0, 1, 0, $FF, 0, $FF, 0, 1
byte_EC5D:      .BYTE $80, $40, $20, $10, 8, 4, 2, 1
                                        ; DATA XREF: sub_DC87+30↑r
                                        ; sub_DCCD+E↑r ...

; =============== S U B R O U T I N E =======================================


sub_EC65:                               ; CODE XREF: start_battle+2D↓p
                JSR     darken_palette
                LDX     #0
                LDY     #8
                JSR     set_camera
                LDA     #$EC            ; ECEC
                LDX     #$EC
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
                STA     $A000           ; horizontal mirroring
                LDA     #$80
                STA     ModeSRAM
                LDA     #$7C ; '|'
                STA     BankPPU_X000
                STA     BankPPU_X400
                STA     BankPPU_X800
                STA     BankPPU_XC00
                LDA     #0
                STA     byte_46
                LDA     #0
                STA     byte_45
                LDX     #9

@next_byte:                             ; CODE XREF: sub_EC65+36↓j
                LDA     IRQTable,X
                STA     InterruptTable,X
                DEX
                BPL     @next_byte
                JSR     sub_ED1A
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EC65


; =============== S U B R O U T I N E =======================================


sub_ECA3:                               ; CODE XREF: start_battle+33↓p
                LDA     #$C3
                JSR     loc_C408
                LDX     #$1E
                JSR     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                JSR     sub_D8D3
                BCS     loc_ECB6
                JSR     sub_DA48
                CLC

loc_ECB6:                               ; CODE XREF: sub_ECA3+D↑j
                PHP
                JSR     sub_D977
                LDX     #$3C ; '<'

loc_ECBC:                               ; CODE XREF: sub_ECA3+21↓j
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     ButtonPressed0
                BNE     loc_ECC6
                DEX
                BNE     loc_ECBC

loc_ECC6:                               ; CODE XREF: sub_ECA3+1E↑j
                JSR     wait_nmi_processed
                JSR     darken_color
                JSR     restore_palettes
                LDA     #$60 ; '`'
                LDX     #0
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     $A000
                STA     IRQCount
                STA     byte_70
                STA     byte_71
                STA     byte_48
                STA     ModeSRAM
                STA     JmpInstr
                PLP
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_ECA3

; ---------------------------------------------------------------------------
CHRTable:       .BYTE $78, 0, $7C, $7D, $7E, $7F
IRQTable:       .WORD sub_ED22-1, loc_ED62-1, sub_ED22-1, load_fonts-1
                                        ; DATA XREF: sub_EC65:@next_byte↑r
                .WORD 0

; =============== S U B R O U T I N E =======================================


shift_down_window:                      ; CODE XREF: battle+1CD↓P
                LDX     #$FC            ; shift down
; ---------------------------------------------------------------------------
                .BYTE $2C               ; mask LDX #4 BIT $04A2 instruction
; ---------------------------------------------------------------------------

shift_up_window:                        ; CODE XREF: battle+1BC↓P
                LDX     #4              ; shift up
                JSR     wait_nmi_processed
                STX     ShiftY          ; $E9 <- 4 shift up or $FC shift down
                LDX     #$14

@next_shift:                            ; CODE XREF: shift_down_window+17↓j
                LDA     #1              ; shift up or down window
                STA     NMIFlags
                JSR     wait_nmi_processed
                JSR     sub_ED1A
                DEX
                BNE     @next_shift
                LDA     #0
                STA     ShiftY
                RTS
; End of function shift_down_window


; =============== S U B R O U T I N E =======================================


sub_ED1A:                               ; CODE XREF: sub_EC65+38↑p
                                        ; shift_down_window+13↑p
                SEC
                LDA     #$59 ; 'Y'
                SBC     CameraY
                STA     IRQCount
                RTS
; End of function sub_ED1A


; =============== S U B R O U T I N E =======================================


sub_ED22:                               ; DATA XREF: ROM:IRQTable↑o
                CLC
                LDA     #2
                ADC     byte_46
                JSR     sub_C218
                BIT     byte_45
                BPL     loc_ED6F

loc_ED2E:                               ; CODE XREF: sub_ED22+4B↓j
                LDA     BankPPU_X000
                BPL     loc_ED34
                LDA     #$7C ; '|'

loc_ED34:                               ; CODE XREF: sub_ED22+E↑j
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X400
                BPL     loc_ED41
                LDA     #$7C ; '|'

loc_ED41:                               ; CODE XREF: sub_ED22+1B↑j
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X800
                BPL     loc_ED4E
                LDA     #$7C ; '|'

loc_ED4E:                               ; CODE XREF: sub_ED22+28↑j
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_XC00
                BPL     loc_ED5B
                LDA     #$7C ; '|'

loc_ED5B:                               ; CODE XREF: sub_ED22+35↑j
                STX     $8000
                STA     $8001
                RTS
; ---------------------------------------------------------------------------

loc_ED62:                               ; DATA XREF: ROM:IRQTable↑o
                SEC
                LDA     #$23 ; '#'
                SBC     byte_46
                ASL     A
                JSR     sub_C218
                BIT     byte_45
                BVS     loc_ED2E

loc_ED6F:                               ; CODE XREF: sub_ED22+A↑j
                LDA     BankPPU_X000
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X400
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_X800
                AND     #$7F
                STX     $8000
                STA     $8001
                INX
                LDA     BankPPU_XC00
                AND     #$7F
                STX     $8000
                STA     $8001
                RTS
; End of function sub_ED22


; =============== S U B R O U T I N E =======================================


load_fonts:                             ; DATA XREF: ROM:IRQTable↑o
                LDA     byte_44
                STA     byte_46
                LDA     #$C8
                JSR     sub_C218
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                LDA     BankTable + BANK_TABLE::PPU_1K_0000
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable + BANK_TABLE::PPU_1K_0400
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable + BANK_TABLE::PPU_1K_0800
                STX     $8000
                STA     $8001
                INX
                LDA     BankTable + BANK_TABLE::PPU_1K_0C00
                STX     $8000
                STA     $8001

locret_EDCA:                            ; DATA XREF: BANK14:off_149A09↓o
                RTS
; End of function load_fonts


; =============== S U B R O U T I N E =======================================


sub_EDCB:
                JSR     wait4
                LDX     #$24 ; '$'
                LDA     #$1F
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                RTS
; End of function sub_EDCB


; =============== S U B R O U T I N E =======================================


darken_palette:                         ; CODE XREF: sub_EC65↑p
                                        ; sub_13A82F+17↓P ...
                JSR     store_palettes

darken_color:                           ; CODE XREF: sub_ECA3+26↑p
                                        ; sub_13A82F+87↓P
                LDY     #5

@next_reduce:                           ; CODE XREF: darken_palette+1F↓j
                LDX     #$1F

@next_color:                            ; CODE XREF: darken_palette+15↓j
                SEC
                LDA     PalNMIBG,X
                SBC     #$10            ; reduce color brightness
                BCS     @save_color
                LDA     #BLACK          ; color black, if get min value

@save_color:                            ; CODE XREF: darken_palette+D↑j
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                TYA
                TAX
                JSR     wait_palette_to_PPU
                DEY
                CPY     #1
                BNE     @next_reduce
                RTS
; End of function darken_palette


; =============== S U B R O U T I N E =======================================


one_color_palettes_save:                ; CODE XREF: sub_CCB1+89↑p
                                        ; sub_13BDD9+2E↓P ...
                PHA
                JSR     store_palettes
                PLA

one_color_palettes:                     ; CODE XREF: sub_13BD3B+D↓P
                                        ; sub_13BD3B+12↓P ...
                LDX     #$1F

@next_color:                            ; CODE XREF: one_color_palettes_save+B↓j
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                JMP     one_frame
; End of function one_color_palettes_save


; =============== S U B R O U T I N E =======================================


sub_EE0E:                               ; CODE XREF: sub_13BDD9+2↓P
                                        ; sub_1497D6+27↓P ...
                PHA
                JSR     wait_nmi_processed
                PLA
                LDX     #$1F

@next_color:                            ; CODE XREF: sub_EE0E+E↓j
                DEX
                DEX
                DEX
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                JMP     one_frame
; End of function sub_EE0E


; =============== S U B R O U T I N E =======================================


one_color_lighten_palette:              ; CODE XREF: check_copyright+7↓P
                                        ; sub_13BD5C+7↓P ...
                PHA
                JSR     wait_nmi_processed
                PLA
                LDX     #$1F

@next_color:                            ; CODE XREF: one_color_lighten_palette+B↓j
                STA     PalBG,X
                DEX
                BPL     @next_color
                BMI     lighten_color
; End of function one_color_lighten_palette


; =============== S U B R O U T I N E =======================================

; increase the brightness of colors in the palette

lighten_palette:                        ; CODE XREF: sub_13B546+14↓P
                                        ; sub_149920+68↓J ...
                JSR     wait_nmi_processed

lighten_color:                          ; CODE XREF: one_color_lighten_palette+D↑j
                LDY     #5

@next_increase:                         ; CODE XREF: lighten_palette+4C↓j
                LDX     #$1F

@next_color:                            ; CODE XREF: lighten_palette+42↓j
                SEC
                LDA     PalNMIBG,X
                SBC     PalBG,X
                BEQ     @no_change
                AND     #$F
                BNE     @low_tetrad_different
                BCS     @color_above
                LDA     PalNMIBG,X
                ADC     #$10
                BPL     @save_color

@low_tetrad_different:                  ; CODE XREF: lighten_palette+12↑j
                LDA     PalBG,X
                AND     #$F
                CMP     #$D
                BCC     @lowE

@color_above:                           ; CODE XREF: lighten_palette+14↑j
                LDA     PalNMIBG,X
                SBC     #$10
                BCS     @save_color
                LDA     #$F
                BPL     @save_color

@lowE:                                  ; CODE XREF: lighten_palette+24↑j
                PHA
                LDA     PalNMIBG,X
                AND     #$30 ; '0'
                STA     PalNMIBG,X
                PLA
                ORA     PalNMIBG,X

@save_color:                            ; CODE XREF: lighten_palette+1B↑j
                                        ; lighten_palette+2B↑j ...
                STA     PalNMIBG,X

@no_change:                             ; CODE XREF: lighten_palette+E↑j
                DEX
                BPL     @next_color
                TYA
                TAX
                JSR     wait_palette_to_PPU
                DEY
                CPY     #1
                BNE     @next_increase
                RTS
; End of function lighten_palette


; =============== S U B R O U T I N E =======================================


restore_palettes:                       ; CODE XREF: sub_ECA3+29↑p
                                        ; copy_palettes:back_palettes↓p ...
                JSR     wait_nmi_processed
                LDX     #$1F

@next_color:                            ; CODE XREF: restore_palettes+C↓j
                LDA     PalBG,X
                STA     PalNMIBG,X
                DEX
                BPL     @next_color
                RTS
; End of function restore_palettes


; =============== S U B R O U T I N E =======================================


store_palettes:                         ; CODE XREF: darken_palette↑p
                                        ; one_color_palettes_save+1↑p ...
                JSR     wait_nmi_processed
                LDX     #$1F

@next_color:                            ; CODE XREF: store_palettes+C↓j
                LDA     PalNMIBG,X
                STA     PalBG,X
                DEX
                BPL     @next_color
                RTS
; End of function store_palettes


; =============== S U B R O U T I N E =======================================


copy_palettes:                          ; CODE XREF: sub_13A82F+63↓P
                                        ; sub_13BD5C+30↓P ...
                STA     Pointer
                STX     Pointer+1
                JSR     wait_nmi_processed
                LDY     #$1F

@next_color:                            ; CODE XREF: copy_palettes+F↓j
                LDA     (Pointer),Y
                STA     PalNMIBG,Y
                DEY
                BPL     @next_color
                BMI     one_frame

back_palettes:                          ; CODE XREF: sub_EEF0+27↓p
                                        ; sub_13ACBA+40↓J ...
                JSR     restore_palettes

one_frame:                              ; CODE XREF: one_color_palettes_save+D↑j
                                        ; sub_EE0E+10↑j ...
                LDX     #1

wait_palette_to_PPU:                    ; CODE XREF: darken_palette+19↑p
                                        ; lighten_palette+46↑p
                LDA     #4              ; load_palettes function ID
                STA     NMI_ID + struc_400::NMI_ID   ; NMITable
                LDA     #0
                STA     NMI_ID + struc_400::num_of_chr ; NMITable
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                JMP     wait_frames     ; wait for a few frames
; End of function copy_palettes         ; input: X - number of frames


; =============== S U B R O U T I N E =======================================


home_camera:                            ; CODE XREF: sub_13BD5C+D↓P
                                        ; game_intro+1B↓P ...
                LDX     #0
                LDY     #0

set_camera:                             ; CODE XREF: sub_EC65+7↑p
                                        ; sub_13A82F+21↓P ...
                JSR     wait_nmi_processed
                LDA     #0
                STA     ShiftX
                STA     ShiftY
                STA     IRQCount
                LDA     #$FC
                AND     CntrlPPU        ; PPU_CTRL
                STA     CntrlPPU        ; PPU_CTRL
                STX     CameraX
                STY     CameraY
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function home_camera


; =============== S U B R O U T I N E =======================================


sub_EEE4:                               ; CODE XREF: sub_CCB1:loc_CCC6↑p
                                        ; sub_EEF0+21↓p ...
                JSR     wait_nmi_processed
                LDA     #4
                EOR     CameraX
                STA     CameraX
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_EEE4


; =============== S U B R O U T I N E =======================================


sub_EEF0:                               ; CODE XREF: main+35↑p
                LDA     CurrentGame + GAME_SAVE::field_21F
                AND     #$F0
                BEQ     @exit
                STA     Pointer
                ASL     Pointer
                BCC     @exit
                JSR     sub_F1ED
                AND     #$C0
                BNE     @exit
                JSR     store_palettes
                JSR     bg_blackout
                LDX     #$A

loc_EF0C:                               ; CODE XREF: sub_EEF0+25↓j
                LDA     #7
                STA     apu_7F0
                JSR     sub_EEE4
                DEX
                BNE     loc_EF0C
                JSR     back_palettes

@exit:                                  ; CODE XREF: sub_EEF0+5↑j
                                        ; sub_EEF0+B↑j ...
                RTS
; End of function sub_EEF0


; =============== S U B R O U T I N E =======================================


bg_blackout:                            ; CODE XREF: sub_EEF0+17↑p
                                        ; sub_13B725+3↓P
                LDX     #$F

@next_color:                            ; CODE XREF: bg_blackout+14↓j
                CPX     #$E
                BEQ     @skip
                SEC
                LDA     PalNMIBG,X
                SBC     #$10
                BCS     @save_color
                LDA     #BLACK

@save_color:                            ; CODE XREF: bg_blackout+C↑j
                STA     PalNMIBG,X

@skip:                                  ; CODE XREF: bg_blackout+4↑j
                DEX
                BPL     @next_color
                JMP     one_frame
; End of function bg_blackout


; =============== S U B R O U T I N E =======================================


cursor_update:                          ; CODE XREF: sub_13A000+61↓P
                                        ; sub_13A178+10↓P ...
                LDY     #8
                LDA     (pCursor),Y
                STA     pStr
                INY
                LDA     (pCursor),Y
                STA     pStr+1

short_cursor_update:                    ; CODE XREF: sub_13A262+2F↓P
                                        ; sub_13B814+4F↓P ...
                LDY     #6
                LDA     (pCursor),Y
                STA     Column
                LDY     #7
                LDA     (pCursor),Y
                STA     Row

loc_EF4B:                               ; CODE XREF: sub_F5C2+16↓p
                                        ; sub_13ADAE+29↓P
                LDY     #0
                LDA     (pCursor),Y
                STA     CurrentX
                TAX
                LDY     #1
                LDA     (pCursor),Y
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                STA     CurrentFieldPosition
                LDY     #0
                STY     CurrentY

loc_EF5F:                               ; CODE XREF: cursor_update+32↓j
                LDA     (pStr),Y
                BNE     loc_EF6D
                INY
                CPY     CurrentFieldPosition
                BCC     loc_EF5F
                STA     CurrentFieldPosition
                STA     Buttons
                RTS
; ---------------------------------------------------------------------------

loc_EF6D:                               ; CODE XREF: cursor_update+2D↑j
                STY     CurrentFieldPosition
                TYA

loc_EF70:                               ; CODE XREF: cursor_update+44↓j
                CMP     CurrentX
                BCC     loc_EF7A
                SBC     CurrentX
                INC     CurrentY
                BCS     loc_EF70

loc_EF7A:                               ; CODE XREF: cursor_update+3E↑j
                STA     CurrentX

loc_EF7C:                               ; CODE XREF: sub_13A000+7C↓P
                                        ; sub_13B0E4+38↓P ...
                JSR     wait_nmi_processed
                LDY     #$18
                STY     pTileID+1
                LDA     #0
                STA     OAM + OAM_TILE::Attr

@set_cursor_pos:                        ; CODE XREF: cursor_update+D0↓j
                                        ; cursor_update:@no_command_button↓j
                LDY     #5
                LDA     (pCursor),Y
                STA     OAM + OAM_TILE::TileID
                LDY     #2
                LDA     (pCursor),Y
                LDX     CurrentX
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Column
                ASL     A
                ASL     A
                ASL     A
                STA     OAM + OAM_TILE::PosX
                LDY     #3
                LDA     (pCursor),Y
                LDX     CurrentY
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Row
                ASL     A
                ASL     A
                ASL     A
                CLC
                ADC     #7
                STA     OAM + OAM_TILE::PosY
                LDY     pTileID+1

@cursor_flashing:                       ; CODE XREF: cursor_update+A7↓j
                LDX     #0
                STX     Gamepad0Buttons

@loop:                                  ; CODE XREF: cursor_update+93↓j
                JSR     sub_F1ED
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     Gamepad0Buttons
                BNE     @button_pressed
                DEY
                BNE     @loop
                LDY     #5
                LDA     (pCursor),Y
                EOR     OAM + OAM_TILE::TileID      ; switch cursor Tile
                STA     OAM + OAM_TILE::TileID
                LDA     ButtonPressed0
                BNE     @button_hold
                LDY     #$18
                STY     pTileID+1
                BNE     @cursor_flashing

@button_hold:                           ; CODE XREF: cursor_update+A1↑j
                LDY     #6
                STY     pTileID+1

@button_pressed:                        ; CODE XREF: cursor_update+90↑j
                LDX     #0
                STX     Gamepad0Buttons
                TAX
                LDY     #4
                AND     #$F0
                AND     (pCursor),Y     ; ButtonMask
                BEQ     @arrow_buttons
                STA     Buttons
                LDA     #5
                STA     byte_7F1

@off_cursor:                            ; CODE XREF: cursor_update+130↓j
                LDA     #$F0
                STA     OAM + OAM_TILE::PosY
                RTS
; ---------------------------------------------------------------------------

@arrow_buttons:                         ; CODE XREF: cursor_update+B8↑j
                TXA
                AND     #$F
                STA     Buttons
                TAY
                LDX     CursorModeTab,Y
                BMI     @set_cursor_pos
                LDA     CurrentX
                STA     pDist
                LDA     CurrentY
                STA     pDist+1
                STX     CursorMode

@cursor_pos:                            ; CODE XREF: cursor_update+179↓j
                CLC
                LDA     CursorShiftTab+1,X
                ADC     pDist+1
                LDY     #1
                CMP     (pCursor),Y
                BCS     @out_area
                STA     pDist+1
                STA     Pointer
                CLC
                LDA     CursorShiftTab,X
                ADC     pDist           ; get new cursor position X
                LDY     #0
                CMP     (pCursor),Y
                BCS     @out_area
                STA     pDist
                STA     FieldPosition
                LDA     (pCursor),Y
                LDX     Pointer
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     FieldPosition
                STA     FieldPosition
                TAY
                LDA     (pStr),Y        ; get a tile ID or mark at this position
                BEQ     @menu_area
                LDA     pDist
                STA     CurrentX
                LDA     pDist+1
                STA     CurrentY
                LDA     FieldPosition
                STA     CurrentFieldPosition
                LDA     #$D
                STA     byte_7F1

@no_command_button:                     ; CODE XREF: cursor_update+127↓j
                JMP     @set_cursor_pos
; ---------------------------------------------------------------------------

@out_area:                              ; CODE XREF: cursor_update+E6↑j
                                        ; cursor_update+F6↑j ...
                LDY     #4
                LDA     Buttons
                AND     (pCursor),Y
                BEQ     @no_command_button
                STA     Buttons
                LDA     #$D
                STA     byte_7F1
                JMP     @off_cursor
; ---------------------------------------------------------------------------

@menu_area:                             ; CODE XREF: cursor_update+10B↑j
                LDX     CursorMode
                LDY     #1
                LDA     byte_D6
                BEQ     loc_F071
                INX
                DEY

loc_F071:                               ; CODE XREF: cursor_update+139↑j
                LDA     CursorShiftTab,X
                BEQ     loc_F0AB

loc_F076:                               ; CODE XREF: cursor_update+169↓j
                STA     FieldPosition
                SEC
                LDA     pDist,Y
                SBC     CurrentX,Y
                EOR     #$FF
                BPL     loc_F08E
                CLC
                ADC     CurrentX,Y
                STA     pDist,Y
                BPL     loc_F0A1
                BMI     @outX

loc_F08E:                               ; CODE XREF: cursor_update+14D↑j
                SEC
                ADC     CurrentX,Y
                STA     pDist,Y
                CMP     (pCursor),Y
                BCC     loc_F0A1

@outX:                                  ; CODE XREF: cursor_update+158↑j
                LDA     #0
                CMP     FieldPosition
                BNE     loc_F076
                BEQ     @out_area

loc_F0A1:                               ; CODE XREF: cursor_update+156↑j
                                        ; cursor_update+163↑j
                TYA
                EOR     #1
                TAY
                LDA     CurrentX,Y
                STA     pDist,Y

loc_F0AB:                               ; CODE XREF: cursor_update+140↑j
                LDX     CursorMode
                JMP     @cursor_pos
; End of function cursor_update


; =============== S U B R O U T I N E =======================================

; get position of cursor and set cursor tile
; Input: A - tile ID
; Output: PosX, PosY

get_cursor_pos:                         ; CODE XREF: sub_13A178+1C↓P
                                        ; sub_13A262+47↓P ...
                PHA
                LDY     #2
                LDA     (pCursor),Y
                LDX     CurrentX
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Column
                STA     Column
                LDY     #3
                LDA     (pCursor),Y
                LDX     CurrentY
                JSR     multiply        ; Input: A, X - multipliers
                                        ; Output: A - result
                CLC
                ADC     Row
                STA     Row
                PLA
                JMP     sub_C68B
; End of function get_cursor_pos

; ---------------------------------------------------------------------------
byte_F0D1:      .BYTE 1, 2, 3, 4, 5, 6, 7, 8
CursorModeTab:  .BYTE $88, 2, 6, $88, 4, $88, $88, $88, 0, $88, $88, $88
                                        ; DATA XREF: cursor_update+CD↑r
                .BYTE $88, $88, $88, $88
CursorShiftTab: .BYTE 0, $FF, 1, 0, 0, 1, $FF, 0
                                        ; DATA XREF: cursor_update+ED↑r
                                        ; cursor_update:loc_F071↑r ...

; =============== S U B R O U T I N E =======================================

; Input: Pointer - first multiplier
;        pTileID - second multiplier
; Output: AddrForJmp, Pointer - result Pointer * pTileID

get_offset:                             ; CODE XREF: sub_F2ED+41↓p
                                        ; get_enemy_pointer+C↓p ...
                LDA     #0
                LDX     #$10

loc_F0F5:                               ; CODE XREF: get_offset+F↓j
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F0FE
                CLC
                ADC     pTileID

loc_F0FE:                               ; CODE XREF: get_offset+8↑j
                ROR     A
                DEX
                BNE     loc_F0F5
                STA     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                RTS
; End of function get_offset


; =============== S U B R O U T I N E =======================================


sub_F109:                               ; CODE XREF: sub_DB40+D↑p
                                        ; sub_DB40+10↑p ...
                LDA     #0
                LDX     #$18

loc_F10D:                               ; CODE XREF: sub_F109+11↓j
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F118
                CLC
                ADC     pTileID

loc_F118:                               ; CODE XREF: sub_F109+A↑j
                ROR     A
                DEX
                BNE     loc_F10D
                STA     AddrForJmp+1
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                RTS
; End of function sub_F109


; =============== S U B R O U T I N E =======================================

; Input: A, X - multipliers
; Output: A - result

multiply:                               ; CODE XREF: sub_DC71+E↑p
                                        ; cursor_update+22↑p ...
                STA     Pointer
                STX     pTileID
                LDA     #0
                LDX     #8

@loop:                                  ; CODE XREF: multiply+11↓j
                ROR     Pointer
                BCC     @even
                CLC
                ADC     pTileID

@even:                                  ; CODE XREF: multiply+A↑j
                ROR     A
                DEX
                BNE     @loop
                TAX
                LDA     Pointer
                ROR     A
                RTS
; End of function multiply


; =============== S U B R O U T I N E =======================================


sub_F13D:                               ; CODE XREF: sub_DA48+10↑p
                                        ; sub_F2ED:loc_F320↓p ...
                LDA     pTileID

loc_F13F:                               ; CODE XREF: sub_F13D:loc_F13F↓j
                BEQ     loc_F13F
                LDA     #0
                LDX     #$18
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp

loc_F14B:                               ; CODE XREF: sub_F13D+1F↓j
                ROL     A
                BCS     loc_F152
                CMP     pTileID
                BCC     loc_F155

loc_F152:                               ; CODE XREF: sub_F13D+F↑j
                SBC     pTileID
                SEC

loc_F155:                               ; CODE XREF: sub_F13D+13↑j
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp
                DEX
                BNE     loc_F14B
                STA     pDist
                RTS
; End of function sub_F13D


; =============== S U B R O U T I N E =======================================

; convert number to string (tile)
; Input: AddrForJmp Pointer+1 Pointer - bytes of number
; Output: $68-6F - string

num2str:                                ; CODE XREF: sub_C950+2F↑p
                LDY     #8

@next_digital:                          ; CODE XREF: num2str+2A↓j
                DEY
                LDA     #0
                LDX     #$18
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp

@next_shift:                            ; CODE XREF: num2str+1B↓j
                ROL     A
                CMP     #$A
                BCC     @decimal
                SBC     #$A

@decimal:                               ; CODE XREF: num2str+10↑j
                ROL     Pointer
                ROL     Pointer+1
                ROL     AddrForJmp
                DEX
                BNE     @next_shift
                TAX
                LDA     NumberTiles,X
                STA     pDist,Y         ; write digital tile
                LDA     Pointer
                ORA     Pointer+1
                ORA     AddrForJmp
                BNE     @next_digital
                STY     AddrForJmp+1
                LDA     #$A0            ; space symbol
                BNE     @next_space

@write_space:                           ; CODE XREF: num2str+36↓j
                STA     pDist,Y

@next_space:                            ; CODE XREF: num2str+30↑j
                DEY
                BPL     @write_space
                RTS
; End of function num2str

; ---------------------------------------------------------------------------
NumberTiles:    .BYTE $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9
                                        ; DATA XREF: num2str+1E↑r

; =============== S U B R O U T I N E =======================================


sub_F1A4:                               ; CODE XREF: sub_13B0E4:loc_13B146↓P
                LDY     #0
                STY     Pointer
                STY     Pointer+1
                STY     AddrForJmp
                BEQ     loc_F1C6

loc_F1AE:                               ; CODE XREF: sub_F1A4+46↓j
                LDA     #0
                LDX     #$18

loc_F1B2:                               ; CODE XREF: sub_F1A4+1A↓j
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                BCC     loc_F1BC
                ADC     #9

loc_F1BC:                               ; CODE XREF: sub_F1A4+14↑j
                ROR     A
                DEX
                BNE     loc_F1B2
                ROR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer

loc_F1C6:                               ; CODE XREF: sub_F1A4+8↑j
                LDA     $68,Y
                CMP     #$BA
                BCS     loc_F1D4
                CMP     #$B0
                BCC     loc_F1D4
                SBC     #$B0
; ---------------------------------------------------------------------------
                .BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_F1D4:                               ; CODE XREF: sub_F1A4+27↑j
                                        ; sub_F1A4+2B↑j
                LDA     #0
                CLC
                ADC     Pointer
                STA     Pointer
                LDA     #0
                ADC     Pointer+1
                STA     Pointer+1
                LDA     #0
                ADC     AddrForJmp
                STA     AddrForJmp
                INY
                CPY     #8
                BCC     loc_F1AE
                RTS
; End of function sub_F1A4


; =============== S U B R O U T I N E =======================================


sub_F1ED:                               ; CODE XREF: sub_DA48+C7↑p
                                        ; sub_DB6C:loc_DB93↑p ...
                CLC
                LDA     byte_26
                ADC     byte_27
                STA     byte_27
                CLC
                LDA     byte_26
                ADC     #$75 ; 'u'
                STA     byte_26
                LDA     byte_27
                ADC     #$63 ; 'c'
                STA     byte_27
                RTS
; End of function sub_F1ED


; =============== S U B R O U T I N E =======================================


start_battle:                           ; CODE XREF: main+B6↑p
                                        ; main+DC↑p
                JSR     bank17_A000
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     get_enemy_pointer ; Input: byte_48 - ID enemy ?
                                        ; Output: pCharacter - pointer to struct
                                        ;         Pointer - offset for struct, offset zero page
                LDX     #$2C ; ','
                LDY     #9
                LDA     (pCharacter),Y  ; BANK16:95E1, BANK16:8FF1
                AND     #$F0
                CMP     #$50 ; 'P'
                BEQ     loc_F21C
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                TAX

loc_F21C:                               ; CODE XREF: start_battle+13↑j
                TXA
                JSR     sub_F255
                JSR     bank14_8000
                JSR     sub_149630      ; animation
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     clear_oam_sprite
                JSR     clear_nametables
                JSR     sub_EC65
                JSR     battle          ; main battle proc
                JSR     sub_ECA3        ; clear screen
                RTS
; End of function start_battle


; =============== S U B R O U T I N E =======================================

; set memory bank $16 at $8000

bank16:                                 ; CODE XREF: start_battle+3↑p
                                        ; start_battle+24↑p ...
                PHA
                TXA
                PHA
                LDA     #$16
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                TAX
                PLA
                RTS
; End of function bank16


; =============== S U B R O U T I N E =======================================

; set memory bank 0 at $8000

bank0:                                  ; CODE XREF: sub_F4CE+7↓p
                                        ; battle+9E↓P ...
                PHA
                TXA
                PHA
                LDA     #0
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                TAX
                PLA
                RTS
; End of function bank0


; =============== S U B R O U T I N E =======================================


sub_F255:                               ; CODE XREF: start_battle+1B↑p
                                        ; sub_17B75A+8F↓P ...
                CMP     apu_78C
                BEQ     @exit
                STA     apu_7F5

@exit:                                  ; CODE XREF: sub_F255+3↑j
                RTS
; End of function sub_F255


; =============== S U B R O U T I N E =======================================


delay:                                  ; CODE XREF: delay+A↓j
                                        ; sub_F41F+3E↓p ...
                TXA
                BEQ     locret_F26A
                PHA
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     delay

locret_F26A:                            ; CODE XREF: delay+1↑j
                RTS
; End of function delay


; =============== S U B R O U T I N E =======================================


sub_F26B:                               ; CODE XREF: sub_17BC5D+11↓P
                                        ; sub_17BC5D+33↓P
                INX

loc_F26C:                               ; CODE XREF: sub_F26B+9↓j
                TXA
                PHA
                JSR     sub_F27C
                PLA
                TAX
                DEX
                BNE     loc_F26C
                JSR     sub_F27C
                JMP     sub_F4B6
; End of function sub_F26B


; =============== S U B R O U T I N E =======================================


sub_F27C:                               ; CODE XREF: sub_F26B+3↑p
                                        ; sub_F26B+B↑p
                LDX     #$2F ; '/'

loc_F27E:                               ; CODE XREF: sub_F27C+17↓j
                TXA
                PHA
                AND     #$F
                LSR     A
                TAX
                LDA     byte_F296,X
                JSR     loc_F4B8
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     loc_F27E
                RTS
; End of function sub_F27C

; ---------------------------------------------------------------------------
byte_F296:      .BYTE $21, $22, $23, $24, $25, $24, $23, $22
                                        ; DATA XREF: sub_F27C+8↑r

; =============== S U B R O U T I N E =======================================


wait_A_B:                               ; CODE XREF: print_story+11↓P
                                        ; input_name:loc_149CFE↓P ...
                LDX     #0
                STX     Gamepad0Buttons

@loop:                                  ; CODE XREF: wait_A_B+D↓j
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     Gamepad0Buttons
                STX     Gamepad0Buttons
                AND     #$C0
                BEQ     @loop
                RTS
; End of function wait_A_B


; =============== S U B R O U T I N E =======================================

; trap function without return
; transfers control to a function whose address is selected from the table located after the call of this function;
; after the function execution is completed, the first function from the table is executed.
; Input: A - number of function in the table

sub_F2AE:                               ; CODE XREF: sub_F6AA+5↓p
                                        ; sub_17ADC9+6↓P ...
                ASL     A               ; diff effects in the battle
                TAY
                INY
                INY
                INY
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                LDY     #1
                SEC
                LDA     (Pointer),Y
                SBC     #1
                TAX
                INY
                LDA     (Pointer),Y
                SBC     #0
                PHA
                TXA
                PHA
                JMP     (AddrForJmp)    ; F6BF
; End of function sub_F2AE


; =============== S U B R O U T I N E =======================================

; trap function with no return
; transfers control to a function whose address is selected from the table located after the call of this function
; Input: A - number of function in the table

sub_F2D5:                               ; CODE XREF: sub_17A573+1C4↓P
                                        ; sub_17A7DA+12↓P ...
                ASL     A
                TAY
                INY
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                SEC
                LDA     (Pointer),Y     ; BANK17:ADB1
                SBC     #1
                TAX
                INY
                LDA     (Pointer),Y
                SBC     #0
                PHA
                TXA
                PHA
                RTS
; End of function sub_F2D5


; =============== S U B R O U T I N E =======================================


sub_F2ED:                               ; CODE XREF: sub_F3FD+D↓p
                                        ; sub_13A912+6↓P ...
                PHA
                TXA
                PHA
                TYA
                PHA
                LDA     AddrForJmp+1
                PHA
                LDA     AddrForJmp
                PHA
                LDA     pTileID+1
                PHA
                LDA     pTileID
                PHA
                LDA     pDist+1
                PHA
                LDA     pDist
                PHA
                LDA     Pointer+1
                AND     #$FC
                PHA
                LDX     #6

loc_F30B:                               ; CODE XREF: sub_F2ED+23↓j
                ASL     Pointer
                ROL     Pointer+1
                DEX
                BNE     loc_F30B
                STX     AddrForJmp
                TXA
                PHA
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     #$64 ; 'd'
                STA     pTileID

loc_F320:
                JSR     sub_F13D
                JSR     sub_F1ED
                LSR     A
                PHP
                TAX
                LDA     byte_F37D,X
                STA     pTileID
                JSR     get_offset      ; Input: Pointer - first multiplier
                                        ;        pTileID - second multiplier
                                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
                PLP
                BCS     loc_F346
                PLA
                ADC     Pointer
                STA     Pointer
                PLA
                ADC     Pointer+1
                STA     Pointer+1
                PLA
                ADC     AddrForJmp
                STA     AddrForJmp
                JMP     loc_F355
; ---------------------------------------------------------------------------

loc_F346:                               ; CODE XREF: sub_F2ED+45↑j
                PLA
                SBC     Pointer
                STA     Pointer
                PLA
                SBC     Pointer+1
                STA     Pointer+1
                PLA
                SBC     AddrForJmp
                STA     AddrForJmp

loc_F355:                               ; CODE XREF: sub_F2ED+56↑j
                LDX     #6

loc_F357:                               ; CODE XREF: sub_F2ED+71↓j
                LSR     AddrForJmp
                ROR     Pointer+1
                ROR     Pointer
                DEX
                BNE     loc_F357
                PLA
                ORA     Pointer+1
                STA     Pointer+1
                PLA
                STA     pDist
                PLA
                STA     pDist+1
                PLA
                STA     pTileID
                PLA
                STA     pTileID+1
                PLA
                STA     AddrForJmp
                PLA
                STA     AddrForJmp+1
                PLA
                TAY
                PLA
                TAX
                PLA
                RTS
; End of function sub_F2ED

; ---------------------------------------------------------------------------
byte_F37D:      .BYTE 0, 0, 0, 0, 0, $C, $C, $C, $C, $C, 1, 1, 1, 1, 1
                                        ; DATA XREF: sub_F2ED+3C↑r
                .BYTE 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3
                .BYTE 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4
                .BYTE 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, $14, 6, 6, 6, 6, 6
                .BYTE 6, 6, 6, 6, $15, 7, 7, 7, 7, 7, 7, 7, 7, $11, $11
                .BYTE 8, 8, 8, 8, 8, 8, 8, 8, $12, $12, 9, 9, 9, 9, 9
                .BYTE 9, 9, $F, $F, $F, $A, $A, $A, $A, $A, $A, $D, $D
                .BYTE $D, $D, $B, $B, $B, $B, $B, $B, $E, $E, $E, $E, $10
                .BYTE $10, $10, $13, $13, $16, $17, $18

; =============== S U B R O U T I N E =======================================


sub_F3FD:                               ; CODE XREF: sub_17ACA5+16↓P
                TAX
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                STX     Pointer
                LDA     #0
                STA     Pointer+1
                JSR     sub_F2ED
                LDA     Pointer+1
                BEQ     loc_F415
                LDA     #$FF
                STA     Pointer

loc_F415:                               ; CODE XREF: sub_F3FD+12↑j
                LDX     Pointer
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                TXA
                RTS
; End of function sub_F3FD


; =============== S U B R O U T I N E =======================================


sub_F41F:                               ; CODE XREF: sub_17ADF1+56↓P
                                        ; sub_17AE5D+25↓P ...
                PHA
                ASL     A
                ASL     A
                BEQ     loc_F463
                TAX
                LDA     byte_169EEA,X
                STA     pTileID+1
                LDA     byte_169EEB,X
                STA     TilesCount
                LDA     byte_169EE9,X
                CMP     #0
                BNE     loc_F43E
                LDA     pTileID+1
                STA     apu_7F0
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F43E:                               ; CODE XREF: sub_F41F+15↑j
                CMP     #1
                BNE     loc_F44A
                LDA     pTileID+1
                STA     byte_7F1
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F44A:                               ; CODE XREF: sub_F41F+21↑j
                CMP     #2
                BNE     loc_F456
                LDA     pTileID+1
                STA     byte_7F3
                JMP     loc_F45B
; ---------------------------------------------------------------------------

loc_F456:                               ; CODE XREF: sub_F41F+2D↑j
                LDA     pTileID+1
                STA     byte_7F4

loc_F45B:                               ; CODE XREF: sub_F41F+1C↑j
                                        ; sub_F41F+28↑j ...
                LDX     TilesCount
                JSR     delay
                JSR     bank16          ; set memory bank $16 at $8000

loc_F463:                               ; CODE XREF: sub_F41F+3↑j
                PLA
                RTS
; End of function sub_F41F


; =============== S U B R O U T I N E =======================================


long_delay:                             ; CODE XREF: input_name:@repeat_msg↓P
                LDX     #$F

@loop:                                  ; CODE XREF: long_delay+11↓j
                TXA
                PHA
                LDA     #5
                STA     byte_7F1
                LDX     #2
                JSR     delay
                PLA
                TAX
                DEX
                BNE     @loop
                RTS
; End of function long_delay


; =============== S U B R O U T I N E =======================================

; Input: byte_48 - ID enemy ?
; Output: pCharacter - pointer to struct
;         Pointer - offset for struct, offset zero page

get_enemy_pointer:                      ; CODE XREF: start_battle+6↑p
                                        ; battle+41↓P
                LDA     byte_48         ; A0
                STA     Pointer
                LDA     #0
                STA     Pointer+1
                LDA     #$A
                STA     pTileID
                JSR     get_offset      ; Input: Pointer - first multiplier
                                        ;        pTileID - second multiplier
                                        ; Output: AddrForJmp, Pointer - result Pointer * pTileID
                CLC
                LDA     #$98            ; BANK16:8F98
                ADC     Pointer
                STA     pCharacter      ; BANK16:95D8
                LDA     #$8F
                ADC     Pointer+1
                STA     pCharacter+1    ; BANK16:8FE8
                RTS
; End of function get_enemy_pointer


; =============== S U B R O U T I N E =======================================


preload_palettes:                       ; CODE XREF: intro+23↓P
                                        ; intro+57↓P ...
                JSR     wait_nmi_processed
                LDY     #$1F

@next_color:                            ; CODE XREF: preload_palettes+B↓j
                LDA     (Pointer),Y
                STA     PalNMIBG,Y
                DEY
                BPL     @next_color

set_nmi_id4:                            ; CODE XREF: sub_F4B6+12↓p
                LDA     #4              ; ReturnTable
                STA     NMI_ID + struc_400::NMI_ID   ; NMITable
                LDA     #0
                STA     NMI_ID + struc_400::num_of_chr ; NMITable
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function preload_palettes


; =============== S U B R O U T I N E =======================================


sub_F4B6:                               ; CODE XREF: sub_F26B+E↑j
                                        ; sub_17B626+4A↓P ...
                LDA     #BLACK

loc_F4B8:                               ; CODE XREF: sub_F27C+B↑p
                                        ; sub_17B626+2F↓P ...
                PHA
                JSR     wait_nmi_processed
                PLA
                LDY     #$1C

@next_color:                            ; CODE XREF: sub_F4B6+10↓j
                STA     PalNMIBG,Y
                DEY
                DEY
                DEY
                DEY
                BPL     @next_color
                JSR     set_nmi_id4
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_F4B6


; =============== S U B R O U T I N E =======================================


sub_F4CE:                               ; CODE XREF: battle+1A6↓P
                                        ; battle+1B5↓P ...
                ASL     A
                STA     Pointer
                TXA
                PHA
                TYA
                PHA
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     Pointer
                LDA     off_8C00,Y
                STA     Pointer
                LDA     off_8C00+1,Y
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     TilepackMode
                INY
                LDX     Column
                LDA     (Pointer),Y
                CMP     #$FF
                BEQ     loc_F4F4
                TAX

loc_F4F4:                               ; CODE XREF: sub_F4CE+23↑j
                STX     AddrForJmp
                INY
                LDX     Row
                LDA     (Pointer),Y
                CMP     #$FF
                BEQ     loc_F500
                TAX

loc_F500:                               ; CODE XREF: sub_F4CE+2F↑j
                STX     AddrForJmp+1

loc_F502:                               ; CODE XREF: sub_F4CE+50↓j
                                        ; sub_F4CE+55↓j
                INY
                LDA     (Pointer),Y
                LDX     #0
                CMP     #$FC
                BEQ     loc_F521
                LDX     #1
                CMP     #$FD
                BEQ     loc_F521
                LDX     #2
                CMP     #$FE
                BEQ     loc_F521
                CMP     #$FF
                BEQ     loc_F526
                JSR     sub_F52E
                JMP     loc_F502
; ---------------------------------------------------------------------------

loc_F521:                               ; CODE XREF: sub_F4CE+3B↑j
                                        ; sub_F4CE+41↑j ...
                STX     TilesCount
                JMP     loc_F502
; ---------------------------------------------------------------------------

loc_F526:                               ; CODE XREF: sub_F4CE+4B↑j
                JSR     bank16          ; set memory bank $16 at $8000
                PLA
                TAY
                PLA
                TAX
                RTS
; End of function sub_F4CE


; =============== S U B R O U T I N E =======================================


sub_F52E:                               ; CODE XREF: sub_F4CE+4D↑p
                TAX
                INY
                LDA     (Pointer),Y
                STA     pTileID
                INY
                LDA     (Pointer),Y
                STA     pTileID+1

loc_F539:                               ; CODE XREF: sub_F52E+31↓j
                TXA
                PHA
                TYA
                PHA
                JSR     wait_nmi_processed
                LDA     #0
                STA     byte_70
                LDA     AddrForJmp
                STA     Column
                LDA     pTileID
                STA     PointerTilePack
                LDA     pTileID+1
                STA     PointerTilePack+1
                JSR     sub_F562
                CLC
                LDA     AddrForJmp+1
                ADC     TilepackMode
                STA     AddrForJmp+1
                PLA
                TAY
                PLA
                TAX
                DEX
                BNE     loc_F539
                RTS
; End of function sub_F52E


; =============== S U B R O U T I N E =======================================


sub_F562:                               ; CODE XREF: sub_F52E+22↑p
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     AddrForJmp
                PHA
                LDA     pTileID+1
                PHA
                LDA     pTileID
                PHA
                LDA     TilesCount
                PHA
                LDA     TilepackMode
                PHA
                LDA     TilesCount
                BEQ     loc_F58D
                CMP     #1
                BEQ     loc_F59E
                LDA     AddrForJmp+1
                STA     Row
                PHA
                JSR     sub_C6D2
                PLA
                STA     AddrForJmp+1
                JMP     loc_F5AC
; ---------------------------------------------------------------------------

loc_F58D:                               ; CODE XREF: sub_F562+17↑j
                CLC
                LDA     AddrForJmp+1
                ADC     TilepackMode
                STA     Row
                PHA
                JSR     print_string
                PLA
                STA     AddrForJmp+1
                JMP     loc_F5AC
; ---------------------------------------------------------------------------

loc_F59E:                               ; CODE XREF: sub_F562+1B↑j
                CLC
                LDA     AddrForJmp+1
                ADC     TilepackMode
                STA     Row
                PHA
                JSR     loc_C6DB
                PLA
                STA     AddrForJmp+1

loc_F5AC:                               ; CODE XREF: sub_F562+28↑j
                                        ; sub_F562+39↑j
                PLA
                STA     TilepackMode
                PLA
                STA     TilesCount
                PLA
                STA     pTileID
                PLA
                STA     pTileID+1
                PLA
                STA     AddrForJmp
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                RTS
; End of function sub_F562


; =============== S U B R O U T I N E =======================================


sub_F5C2:                               ; CODE XREF: sub_17A479+13↓P
                LDA     byte_5A
                PHA
                JSR     sub_F765
                LDA     #$DF
                STA     pStr
                LDA     #$F5
                STA     pStr+1
                LDA     #$DF
                STA     pCursor
                LDA     #$F5
                STA     pCursor+1
                JSR     loc_EF4B
                PLA
                STA     byte_5A
                RTS
; End of function sub_F5C2

; ---------------------------------------------------------------------------
                .BYTE 1, 1, 0, 0
                .BYTE $C0
                .BYTE $5D ; ]

; =============== S U B R O U T I N E =======================================


statistical_frame:                      ; CODE XREF: battle+B5↓P
                                        ; sub_17ACD6+48↓P ...
                PHA
                TXA
                PHA
                TYA
                PHA
                JSR     draw_statistical_frame
                JSR     sub_F614
                PLA
                TAY
                PLA
                TAX
                PLA
                SEC
                RTS
; End of function statistical_frame


; =============== S U B R O U T I N E =======================================


set_jmp_addr:                           ; CODE XREF: sub_17AB10+2E↓P
                                        ; sub_17AB61+3C↓P
                STA     AddrForJmp
                LDA     #0
                ASL     AddrForJmp
                ROL     A
                ASL     AddrForJmp
                ROL     A
                ASL     AddrForJmp
                ROL     A
                STA     AddrForJmp+1
                CLC
                LDA     AddrForJmp
                ADC     #0
                STA     AddrForJmp
                LDA     AddrForJmp+1

loc_F60F:
                ADC     #$9E
                STA     AddrForJmp+1
                RTS
; End of function set_jmp_addr


; =============== S U B R O U T I N E =======================================


sub_F614:                               ; CODE XREF: statistical_frame+8↑p
                JSR     wait_nmi_processed
                LDY     #$E8
                STY     pDist
                LDA     #$DF            ; CFE8
                STA     pDist+1
                LDY     byte_6707

loc_F622:                               ; CODE XREF: sub_F614+16↓j
                SEC
                LDA     pDist+1
                SBC     #$10
                STA     pDist+1
                DEY
                BNE     loc_F622
                LDA     #0
                STA     TilepackMode

loc_F630:                               ; CODE XREF: sub_F614+5C↓j
                JSR     wait_nmi_processed
                LDY     TilepackMode
                LDA     byte_600,Y
                BEQ     loc_F660
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_F660
                LDX     #2
                LDA     byte_601,Y
                AND     #$80
                BNE     loc_F655
                LDX     #1
                JSR     sub_F673
                BCC     loc_F655
                LDX     #0

loc_F655:                               ; CODE XREF: sub_F614+36↑j
                                        ; sub_F614+3D↑j
                TXA
                JSR     sub_F6AA
                CLC
                LDA     pDist
                ADC     #8
                STA     pDist

loc_F660:                               ; CODE XREF: sub_F614+24↑j
                                        ; sub_F614+2D↑j
                CLC
                LDA     pDist+1
                ADC     #$10
                STA     pDist+1
                CLC
                LDA     TilepackMode
                ADC     #$20 ; ' '
                STA     TilepackMode
                CMP     #$60 ; '`'
                BNE     loc_F630
                RTS
; End of function sub_F614


; =============== S U B R O U T I N E =======================================


sub_F673:                               ; CODE XREF: sub_F614+3A↑p
                                        ; sub_17A573+44↓P ...
                TYA
                PHA
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDA     byte_603,Y
                STA     pTileID
                LDA     byte_604,Y
                STA     pTileID+1
                LDY     #3
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                AND     #3
                STA     AddrForJmp+1
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                LSR     AddrForJmp+1
                ROR     AddrForJmp
                PLA
                TAY
                SEC
                LDA     pTileID
                SBC     AddrForJmp
                LDA     pTileID+1
                SBC     AddrForJmp+1
                RTS
; End of function sub_F673


; =============== S U B R O U T I N E =======================================


sub_F6AA:                               ; CODE XREF: sub_F614+42↑p
                PHA
                JSR     wait_nmi_processed
                PLA
                JSR     sub_F2AE        ; trap function without return
                                        ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
                TSX
                INC     apu_BF,X
                INC     TileX,X
                INC     BankTable,X
                INC     byte_A9,X       ; trap F6BA: LDA #$01
                                        ;            STA NMIFlags
                                        ;            RTS
                ORA     (pStr+1,X)
                SBC     Pointer
                LDA     #0
                LDX     #$C
                LDY     #$97
                JMP     loc_F6F9
; ---------------------------------------------------------------------------
                LDX     pDist
                LDA     SpriteTable,X
                PHA
                LDA     #3
                LDX     #$C
                LDY     #$97
                JSR     loc_F6F9
                PLA
                CMP     #3
                BEQ     locret_F6EF
                LDX     #4

loc_F6DE:                               ; CODE XREF: sub_F6AA+43↓j
                TXA
                PHA
                LDA     #0
                JSR     sub_F724
                LDA     #3
                JSR     sub_F724
                PLA
                TAX
                DEX
                BNE     loc_F6DE

locret_F6EF:                            ; CODE XREF: sub_F6AA+30↑j
                RTS
; ---------------------------------------------------------------------------
                LDA     #3
                LDX     #$10
                LDY     #$97
                JMP     loc_F6F9
; ---------------------------------------------------------------------------

loc_F6F9:                               ; CODE XREF: sub_F6AA+1B↑j
                                        ; sub_F6AA+2A↑p ...
                STX     Pointer
                STY     Pointer+1
                LDX     pDist
                STA     SpriteTable,X
                LDA     #8
                STA     SpriteTable + ANIM_SPRITE::TileID,X
                LDA     #$70 ; 'p'
                STA     SpriteTable + ANIM_SPRITE::PosX,X
                LDA     pDist+1
                STA     SpriteTable + ANIM_SPRITE::PosY,X
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                LDA     Pointer
                STA     SpriteTable + ANIM_SPRITE::pFrame,X ; BANK16:970C
                LDA     Pointer+1
                STA     SpriteTable + ANIM_SPRITE::pFrame+1,X
                RTS
; End of function sub_F6AA


; =============== S U B R O U T I N E =======================================


sub_F724:                               ; CODE XREF: sub_F6AA+38↑p
                                        ; sub_F6AA+3D↑p
                LDX     pDist
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                LDX     #8
                JMP     delay
; End of function sub_F724


; =============== S U B R O U T I N E =======================================

; copies the palettes at the pointer Pointer offset at $400

copy_packed_tiles:                      ; CODE XREF: clear_screen+D↓J
                                        ; intro+37↓P ...
                JSR     wait_nmi_processed ; copies 32 bytes of a packed tile map at $400
                                        ; input YX - pointer to the packed fragment
                                        ; Y - high byte, X - low byte
                STX     Pointer
                STY     Pointer+1
                LDY     #$1F

@next_byte:                             ; CODE XREF: copy_packed_tiles+F↓j
                LDA     (Pointer),Y
                STA     NMI_ID,Y        ; NMITable
                DEY
                BPL     @next_byte
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     OffsetNMI_ID
                RTS
; End of function copy_packed_tiles


; =============== S U B R O U T I N E =======================================

; save JMP ROM:F76A to $D7

save_jmp_instr:                         ; CODE XREF: battle+1A1↓P
                LDA     #$6A ; 'j'
                STA     JmpInstr+1
                LDA     #$F7
                STA     JmpInstr+2
                LDA     #$4C ; 'L'
                STA     JmpInstr
                RTS
; End of function save_jmp_instr


; =============== S U B R O U T I N E =======================================


clear_jmp_instr:                        ; CODE XREF: battle:@end_battle↓P
                LDA     #0
                STA     JmpInstr
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function clear_jmp_instr


; =============== S U B R O U T I N E =======================================


sub_F760:                               ; CODE XREF: battle+1C5↓P
                LDA     #1
                STA     byte_5A
                RTS
; End of function sub_F760


; =============== S U B R O U T I N E =======================================


sub_F765:                               ; CODE XREF: sub_F5C2+3↑p
                                        ; battle+1BF↓P
                LDA     #0
                STA     byte_5A
                RTS
; End of function sub_F765


; =============== S U B R O U T I N E =======================================


sub_F76A:
                LDA     byte_5A
                BEQ     locret_F771
                JSR     sub_F772

locret_F771:                            ; CODE XREF: sub_F76A+2↑j
                RTS
; End of function sub_F76A


; =============== S U B R O U T I N E =======================================


sub_F772:                               ; CODE XREF: sub_F76A+4↑p
                LDA     byte_59
                BEQ     locret_F79E
                BIT     flag_clear_oam_300
                BVS     locret_F79E
                LDX     #0
                LDA     Gamepad0Buttons
                STX     Gamepad0Buttons
                AND     #$40 ; '@'
                BEQ     locret_F79E
                TXA
                STA     byte_59
                STA     SpriteTable + ANIM_SPRITE::Tiles+$E0
                LDA     SpriteTable + ANIM_SPRITE::TileID+$E0
                ASL     A
                ASL     A
                TAY
                LDA     #$F0
                STA     OAM,Y
                STA     OAM + OAM_TILE::PosY+4,Y
                STA     OAM + OAM_TILE::PosY+8,Y
                STA     OAM + OAM_TILE::PosY+$C,Y

locret_F79E:                            ; CODE XREF: sub_F772+2↑j
                                        ; sub_F772+6↑j ...
                RTS
; End of function sub_F772


; =============== S U B R O U T I N E =======================================


                ; public nmi
nmi:                                    ; DATA XREF: ROM:NMI_vector↓o
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                BIT     NMIReady
                BPL     @NMIGo
                RTI
; ---------------------------------------------------------------------------

@NMIGo:                                 ; CODE XREF: nmi+5↑j
                PHA
                TXA
                PHA
                TYA
                PHA
                LDX     #0
                LDA     #2
                STX     OAM_ADDR        ; SPR-RAM Address Register (W)
                                        ;
                                        ; D7-D0: 8-bit address in SPR-RAM to access via $2004.
                STA     OAM_DMA         ; Sprite DMA Register (W)
                                        ;
                                        ; Transfers 256 bytes of memory into SPR-RAM. The address
                                        ; read from is $100*N, where N is the value written.
                LDY     OffsetNMI_ID
                LDA     OtherNMIFlags
                BEQ     @no_other_flags
                LDA     NMIFlags
                BNE     get_function
                BEQ     @no_flags

@no_other_flags:                        ; CODE XREF: nmi+1B↑j
                LDA     NMIFlags
                BEQ     @no_flags
                AND     #$7F
                STA     OtherNMIFlags

get_function:                           ; CODE XREF: nmi+1F↑j
                                        ; sub_F8D7+1↓j ...
                LDA     NMI_ID,Y        ; get NMI_ID
                BEQ     @end_of_record
                BMI     @no_functions
                ASL     A               ; get offset at return table
                TAX
                LDA     NMITable+1,X
                PHA
                LDA     NMITable,X
                PHA
                RTS
; ---------------------------------------------------------------------------

@no_functions:                          ; CODE XREF: nmi+30↑j
                AND     #$7F
                STA     NMI_ID,Y        ; NMITable
                BNE     @no_flags

@end_of_record:                         ; CODE XREF: nmi+2E↑j
                STA     NMIFlags

@no_flags:                              ; CODE XREF: nmi+21↑j nmi+25↑j ...
                LDX     IRQCount
                BEQ     @no_irq
                LDA     #$FF
                STA     $C000           ; IRQ latch
                STA     $C001           ; IRQ reload
                LDA     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDA     #$10
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDA     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDA     #$10
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDA     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     $C000
                STX     $C001
                STX     $E001           ; Enable MMC3 interrupts
                STX     IRQLatch
                STA     InterruptOffset
                CLI

@no_irq:                                ; CODE XREF: nmi+48↑j
                LDA     CameraX
                LDX     CameraY
                STA     PPU_SCROLL      ; VRAM Address Register #1 (W2)
                                        ;
                                        ; Commonly used used to "pan/scroll" the screen (sprites
                                        ; excluded) horizontally and vertically. However, there
                                        ; is no actual panning hardware inside the NES. This
                                        ; register controls VRAM addressing lines.
                STX     PPU_SCROLL      ; VRAM Address Register #1 (W2)
                                        ;
                                        ; Commonly used used to "pan/scroll" the screen (sprites
                                        ; excluded) horizontally and vertically. However, there
                                        ; is no actual panning hardware inside the NES. This
                                        ; register controls VRAM addressing lines.
                LDA     CntrlPPU        ; PPU_CTRL
                LDX     MaskPPU
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                STX     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
                STY     OffsetNMI_ID
                LDA     #$80
                STA     NMIReady
                LDA     BankRegister
                PHA
                LDA     BankTable + BANK_TABLE::CPU_8K_8000       ; BankTable + BANK_TABLE::CPU_8K_A000
                PHA
                LDA     BankTable + BANK_TABLE::CPU_8K_A000
                PHA
                LDA     CHRBank
                BEQ     @no_chr_bank
                LSR     A
                AND     #3
                ORA     #$44 ; 'D'
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                DEC     CHRBank

@no_chr_bank:                           ; CODE XREF: nmi+AD↑j
                JSR     bank_8000_1D_A000
                JSR     sub_1C8000      ; Bank 0x1C
                LDA     flag_clear_oam_300
                BMI     @restore_bank
                LDA     byte_E7
                AND     #$3F ; '?'
                STA     byte_E1
                LDA     OtherNMIFlags
                BNE     @other_flags
                JSR     sub_FC96
                JMP     @restore_bank
; ---------------------------------------------------------------------------

@other_flags:                           ; CODE XREF: nmi+D2↑j
                CLC
                SBC     byte_E1
                BCS     loc_F885
                LDX     OtherNMIFlags
                DEX
                STX     byte_E1
                LDA     #0

loc_F885:                               ; CODE XREF: nmi+DD↑j
                STA     OtherNMIFlags
                JSR     draw_sprite

@restore_bank:                          ; CODE XREF: nmi+C8↑j nmi+D7↑j
                PLA                     ; 13
                LDX     #7              ; A000
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA                     ; 14
                LDX     #6              ; 8000
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA                     ; 7
                STA     BankRegister
                ORA     BankMode
                STA     $8000
                JSR     gamepad_input   ; Subroutine to process gamepad input and perform bitwise operations
                LDA     Gamepad0Status
                ORA     Gamepad0Buttons
                STA     Gamepad0Buttons
                LDA     Gamepad1Status
                ORA     Gamepad1Buttons
                STA     Gamepad1Buttons
                JSR     handle_game_logic ; subroutine to handle game logic and control flow
                LDA     JmpInstr
                BEQ     @end_nmi
                JSR     JmpInstr

@end_nmi:                               ; CODE XREF: nmi+113↑j
                LDA     #0
                STA     NMIReady
                PLA
                TAY
                PLA
                TAX
                PLA
                RTI
; End of function nmi

; ---------------------------------------------------------------------------
NMITable:       .word get_function-1, sub_F8D7-1, sub_F8DB-1, sub_F8E5-1
                .word load_palettes-1, write_horizontal-1, write_vertical-1
                .word write_ppu_chars-1, fill_ppu-1, read_ppu-1, chr_text2stack-1

; =============== S U B R O U T I N E =======================================


sub_F8D7:                               ; DATA XREF: ROM:NMITable↑o
                INY
                JMP     get_function
; End of function sub_F8D7


; =============== S U B R O U T I N E =======================================


sub_F8DB:                               ; DATA XREF: ROM:NMITable↑o
                INY
                TYA
                SEC
                ADC     NMI_ID,Y        ; NMITable
                TAY
                JMP     get_function
; End of function sub_F8DB


; =============== S U B R O U T I N E =======================================


sub_F8E5:                               ; DATA XREF: ROM:NMITable↑o
                INY
                LDA     NMI_ID,Y        ; NMITable
                TAY
                JMP     get_function
; End of function sub_F8E5


; =============== S U B R O U T I N E =======================================


load_palettes:                          ; DATA XREF: ROM:NMITable↑o
                LDA     #$3F ; '?'      ; Image and sprite palette adress 0x3F00
                LDX     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.

@next_color:                            ; CODE XREF: load_palettes+13↓j
                LDA     PalNMIBG,X
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INX
                CPX     #$20 ; ' '
                BNE     @next_color
                LDA     #$3F ; '?'
                LDX     #0
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                JMP     get_function
; End of function load_palettes


; =============== S U B R O U T I N E =======================================

; write rows

write_horizontal:                       ; CODE XREF: write_horizontal+8↓j
                                        ; DATA XREF: ROM:NMITable↑o
                JSR     write_nt_block
                LDA     NMI_ID,Y        ; NMITable
                CMP     #5
                BEQ     write_horizontal ; write rows
                JMP     get_function
; End of function write_horizontal


; =============== S U B R O U T I N E =======================================

; write columns

write_vertical:                         ; DATA XREF: ROM:NMITable↑o
                LDA     CntrlPPU        ; PPU_CTRL
                ORA     #PPU_CTRL_INCREMENT_MODE
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address

@next_block:                            ; CODE XREF: write_vertical+F↓j
                JSR     write_nt_block
                LDA     NMI_ID,Y        ; NMITable
                CMP     #6
                BEQ     @next_block
                LDA     CntrlPPU        ; PPU_CTRL
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                JMP     get_function
; End of function write_vertical


; =============== S U B R O U T I N E =======================================


write_ppu_chars:                        ; DATA XREF: ROM:NMITable↑o
                INY
                LDX     NMI_ID,Y        ; NMITable
                INY

@next_char:                             ; CODE XREF: write_ppu_chars+1B↓j
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                DEX
                BNE     @next_char
                JMP     get_function
; End of function write_ppu_chars


; =============== S U B R O U T I N E =======================================

; write to ppu
; byte NMI_ID + 1 ($401) number of values to write
; word NMI_ID + 2 ($402) PPU address to write (high, low)
; byte NMI_ID + 4 ($404) value to write

fill_ppu:                               ; DATA XREF: ROM:NMITable↑o
                INY
                LDX     NMI_ID,Y        ; get number of characters
                INY
                LDA     NMI_ID,Y        ; get & load PPU address
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     NMI_ID,Y        ; get char
                INY

@write_ppu:                             ; CODE XREF: fill_ppu+1B↓j
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                DEX
                BNE     @write_ppu
                JMP     get_function
; End of function fill_ppu


; =============== S U B R O U T I N E =======================================

; read values from ppu
; byte NMI_ID + 1 ($401) number of values to read
; word NMI_ID + 2 ($402) PPU address to read (high, low)
; table NMI_ID + 4 ($404) read values

read_ppu:                               ; DATA XREF: ROM:NMITable↑o
                INY
                LDX     NMI_ID,Y        ; NMITable
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.

@get_next_char:                         ; CODE XREF: read_ppu+1E↓j
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                STA     NMI_ID,Y        ; NMITable
                INY
                DEX
                BNE     @get_next_char
                JMP     get_function
; End of function read_ppu


; =============== S U B R O U T I N E =======================================


chr_text2stack:                         ; DATA XREF: ROM:NMITable↑o
                LDA     BankRegister
                PHA
                LDA     BankTable + BANK_TABLE::PPU_1K_0800
                PHA
                LDA     BankTable + BANK_TABLE::PPU_1K_0C00
                PHA
                INY
                LDA     NMI_ID,Y        ; not char num for print - char bank 0x800, 0xC00
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                CLC
                ADC     #1
                LDX     #5
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                LDX     #0

@next_data:                             ; CODE XREF: chr_text2stack+37↓j
                LDA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                STA     Stack+$10,X
                INX
                CPX     #$40 ; '@'
                BCC     @next_data
                PLA
                LDX     #5
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                PLA
                STA     BankRegister
                ORA     BankMode
                STA     $8000
                JMP     get_function
; End of function chr_text2stack


; =============== S U B R O U T I N E =======================================


write_nt_block:                         ; CODE XREF: write_horizontal↑p
                                        ; write_vertical:@next_block↑p
                INY
                LDX     NMI_ID,Y        ; get number of chars
                STX     Bitfield
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                INY
                LSR     Bitfield
                BCC     @clear_bit0
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY

@clear_bit0:                            ; CODE XREF: write_nt_block+17↑j
                LSR     Bitfield
                BCC     @clear_bit1
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY

@clear_bit1:                            ; CODE XREF: write_nt_block+22↑j
                LSR     Bitfield
                BCC     @clear_bit2
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY

@clear_bit2:                            ; CODE XREF: write_nt_block+34↑j
                LDX     Bitfield
                BEQ     @end_block

@next_block:                            ; CODE XREF: write_nt_block+8F↓j
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                LDA     NMI_ID,Y        ; NMITable
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                INY
                DEX
                BNE     @next_block

@end_block:                             ; CODE XREF: write_nt_block+54↑j
                RTS
; End of function write_nt_block


; =============== S U B R O U T I N E =======================================


draw_sprite:                            ; CODE XREF: nmi+E8↑p
                LDA     #$15
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #0
                STA     byte_CE
                STA     byte_CF
                LDX     byte_E1
                BIT     byte_E7
                BVC     loc_FAB8        ; branch if 6 bit $E7 is clear
                LDY     #0

loc_FA96:                               ; CODE XREF: draw_sprite+26↓j
                CLC
                LDA     (ShiftX),Y
                ADC     byte_CE
                STA     byte_CE
                INY
                CLC
                LDA     (ShiftX),Y
                ADC     byte_CF
                STA     byte_CF
                INY
                DEX
                BPL     loc_FA96
                CLC
                TYA
                ADC     ShiftX
                STA     ShiftX
                LDA     #0
                ADC     ShiftY
                STA     ShiftY
                JMP     loc_FAC9
; ---------------------------------------------------------------------------

loc_FAB8:                               ; CODE XREF: draw_sprite+11↑j
                                        ; draw_sprite+46↓j
                CLC
                LDA     ShiftX
                ADC     byte_CE
                STA     byte_CE
                CLC
                LDA     ShiftY
                ADC     byte_CF
                STA     byte_CF
                DEX
                BPL     loc_FAB8

loc_FAC9:                               ; CODE XREF: draw_sprite+34↑j
                CLC
                LDA     byte_CE
                BMI     loc_FAD6
                ADC     CameraX
                STA     CameraX
                BCC     loc_FAE2
                BCS     @switch_scroll_mode

loc_FAD6:                               ; CODE XREF: draw_sprite+4B↑j
                ADC     CameraX
                STA     CameraX
                BCS     loc_FAE2

@switch_scroll_mode:                    ; CODE XREF: draw_sprite+53↑j
                LDA     CntrlPPU        ; PPU_CTRL
                EOR     #1
                STA     CntrlPPU        ; PPU_CTRL

loc_FAE2:                               ; CODE XREF: draw_sprite+51↑j
                                        ; draw_sprite+59↑j
                CLC
                LDA     byte_CF
                BMI     loc_FAEF
                ADC     #$10
                ADC     CameraY
                BCC     loc_FAF3
                BCS     loc_FAF5

loc_FAEF:                               ; CODE XREF: draw_sprite+64↑j
                ADC     CameraY
                BCS     loc_FAF5

loc_FAF3:                               ; CODE XREF: draw_sprite+6A↑j
                ADC     #$F0

loc_FAF5:                               ; CODE XREF: draw_sprite+6C↑j
                                        ; draw_sprite+70↑j
                STA     CameraY
                LDA     flag_clear_oam_300
                AND     #$3F ; '?'
                EOR     #$20 ; ' '
                STA     flag_clear_oam_300
                LDA     #0
                STA     SpriteTabOffset
                STA     byte_E4
                LDA     #8
                STA     SpriteTabStep
                LDX     #$10

loc_FB0B:                               ; CODE XREF: draw_sprite+1EA↓j
                                        ; draw_sprite+1F5↓j ...
                LDY     SpriteTabOffset
                LDA     SpriteTable,Y
                AND     #$3F ; '?'
                BNE     @sprite
                JMP     @no_sprite
; ---------------------------------------------------------------------------

@sprite:                                ; CODE XREF: draw_sprite+91↑j
                STA     TileCount
                STX     TileID
                LDA     SpriteTable + ANIM_SPRITE::TileID,Y
                AND     #$C0
                STA     Attribute
                TXA
                LSR     A
                LSR     A
                ORA     Attribute
                STA     SpriteTable + ANIM_SPRITE::TileID,Y
                SEC
                LDA     #0
                SBC     byte_CE
                STA     TileX
                SEC
                LDA     #0
                SBC     byte_CF
                STA     TileY
                LDX     byte_E1
                BIT     Attribute
                BVC     loc_FB70
                LDA     SpriteTable + ANIM_SPRITE::field_4,Y
                STA     pOAMSprite
                LDA     SpriteTable + ANIM_SPRITE::field_5,Y
                STA     pOAMSprite+1
                LDY     #0

loc_FB4A:                               ; CODE XREF: draw_sprite+DA↓j
                CLC
                LDA     (pOAMSprite),Y
                ADC     TileX
                STA     TileX
                INY
                CLC
                LDA     (pOAMSprite),Y
                ADC     TileY
                STA     TileY
                INY
                DEX
                BPL     loc_FB4A
                CLC
                TYA
                ADC     pOAMSprite
                LDY     SpriteTabOffset
                STA     SpriteTable + ANIM_SPRITE::field_4,Y
                LDA     #0
                ADC     pOAMSprite+1
                STA     SpriteTable + ANIM_SPRITE::field_5,Y
                JMP     loc_FB83
; ---------------------------------------------------------------------------

loc_FB70:                               ; CODE XREF: draw_sprite+BB↑j
                                        ; draw_sprite+100↓j
                CLC
                LDA     SpriteTable + ANIM_SPRITE::field_4,Y
                ADC     TileX
                STA     TileX
                CLC
                LDA     SpriteTable + ANIM_SPRITE::field_5,Y
                ADC     TileY
                STA     TileY
                DEX
                BPL     loc_FB70

loc_FB83:                               ; CODE XREF: draw_sprite+EC↑j
                LDX     TileID
                CLC
                LDA     TileX
                BMI     loc_FB96
                ADC     SpriteTable + ANIM_SPRITE::PosX,Y
                STA     TileX
                STA     SpriteTable + ANIM_SPRITE::PosX,Y
                BCC     loc_FBA8
                BCS     loc_FBA0

loc_FB96:                               ; CODE XREF: draw_sprite+107↑j
                ADC     SpriteTable + ANIM_SPRITE::PosX,Y
                STA     TileX
                STA     SpriteTable + ANIM_SPRITE::PosX,Y
                BCS     loc_FBA8

loc_FBA0:                               ; CODE XREF: draw_sprite+113↑j
                LDA     SpriteTable,Y
                EOR     #$80
                STA     SpriteTable,Y

loc_FBA8:                               ; CODE XREF: draw_sprite+111↑j
                                        ; draw_sprite+11D↑j
                CLC
                LDA     TileY
                BMI     loc_FBB9
                ADC     SpriteTable + ANIM_SPRITE::PosY,Y
                STA     TileY
                STA     SpriteTable + ANIM_SPRITE::PosY,Y
                BCC     loc_FBCB
                BCS     loc_FBC3

loc_FBB9:                               ; CODE XREF: draw_sprite+12A↑j
                ADC     SpriteTable + ANIM_SPRITE::PosY,Y
                STA     TileY
                STA     SpriteTable + ANIM_SPRITE::PosY,Y
                BCS     loc_FBCB

loc_FBC3:                               ; CODE XREF: draw_sprite+136↑j
                LDA     SpriteTable + ANIM_SPRITE::TileID,Y
                EOR     #$80
                STA     SpriteTable + ANIM_SPRITE::TileID,Y

loc_FBCB:                               ; CODE XREF: draw_sprite+134↑j
                                        ; draw_sprite+140↑j
                LDA     SpriteTable,Y
                AND     #$80
                STA     byte_C9
                LDA     SpriteTable + ANIM_SPRITE::TileID,Y
                AND     #$80
                STA     byte_CB
                LDA     SpriteTable + ANIM_SPRITE::pFrame,Y
                STA     pFrame
                LDA     SpriteTable + ANIM_SPRITE::pFrame+1,Y
                STA     pFrame+1
                LDY     #0
                LDA     (pFrame),Y
                STA     pOAMSprite
                INY
                LDA     (pFrame),Y
                STA     pOAMSprite+1
                INY
                LDA     (pFrame),Y
                STA     TileID
                INY
                LDA     (pFrame),Y
                STA     Bitfield
                LDY     #0

@next_tile:                             ; CODE XREF: draw_sprite+1D9↓j
                LDA     (pOAMSprite),Y
                INY
                CLC
                ADC     TileX
                STA     OAM + OAM_TILE::PosX,X
                ROR     A
                EOR     byte_C9
                BMI     loc_FC1F
                LDA     (pOAMSprite),Y
                CLC
                ADC     TileY
                STA     OAM,X
                ROR     A
                EOR     byte_CB
                BMI     loc_FC1B
                CMP     #$F0
                BCC     loc_FC25
                BCS     loc_FC1F

loc_FC1B:                               ; CODE XREF: draw_sprite+192↑j
                CMP     #$F9
                BCS     loc_FC25

loc_FC1F:                               ; CODE XREF: draw_sprite+185↑j
                                        ; draw_sprite+198↑j
                INY
                INY
                INY
                JMP     loc_FC58
; ---------------------------------------------------------------------------

loc_FC25:                               ; CODE XREF: draw_sprite+196↑j
                                        ; draw_sprite+19C↑j
                INY
                LDA     (pOAMSprite),Y
                STA     Attribute
                LDA     Bitfield
                LSR     Attribute
                BCC     @palette_no_bit0
                LSR     A
                LSR     A

@palette_no_bit0:                       ; CODE XREF: draw_sprite+1AD↑j
                LSR     Attribute
                BCC     @palette_no_bit1
                LSR     A
                LSR     A
                LSR     A
                LSR     A

@palette_no_bit1:                       ; CODE XREF: draw_sprite+1B3↑j
                AND     #3
                ASL     Attribute
                ASL     Attribute
                ORA     Attribute
                STA     OAM + OAM_TILE::Attr,X
                INY
                AND     #$10            ; test unused mask TILE_OFFSET
                BEQ     loc_FC4C
                LDA     TileID

loc_FC4C:                               ; CODE XREF: draw_sprite+1C7↑j
                ADC     (pOAMSprite),Y
                STA     OAM + OAM_TILE::TileID,X
                INY
                INX
                INX
                INX
                INX
                BEQ     exit

loc_FC58:                               ; CODE XREF: draw_sprite+1A1↑j
                DEC     TileCount
                BNE     @next_tile

@no_sprite:                             ; CODE XREF: draw_sprite+93↑j
                CLC
                LDA     SpriteTabStep
                BMI     loc_FC6E
                ADC     SpriteTabOffset
                STA     SpriteTabOffset
                BEQ     oam_offscreen
                CMP     byte_E3
                BEQ     loc_FC79
                JMP     loc_FB0B
; ---------------------------------------------------------------------------

loc_FC6E:                               ; CODE XREF: draw_sprite+1DE↑j
                ADC     SpriteTabOffset
                STA     SpriteTabOffset
                CMP     byte_E3
                BCC     oam_offscreen
                JMP     loc_FB0B
; ---------------------------------------------------------------------------

loc_FC79:                               ; CODE XREF: draw_sprite+1E8↑j
                STX     byte_E4
                LDA     flag_clear_oam_300
                AND     #$20 ; ' '
                BNE     loc_FC87
                LDA     #$F8
                STA     SpriteTabOffset
                STA     SpriteTabStep

loc_FC87:                               ; CODE XREF: draw_sprite+1FE↑j
                JMP     loc_FB0B
; End of function draw_sprite


; =============== S U B R O U T I N E =======================================


oam_offscreen:                          ; CODE XREF: draw_sprite+1E4↑j
                                        ; draw_sprite+1F3↑j ...
                LDA     #$F0            ; A = F0

@offscreen:                             ; CODE XREF: oam_offscreen+9↓j
                STA     OAM,X           ; Set [200],[204],[208], ..., [2FC] = F0
                INX
                INX
                INX
                INX
                BNE     @offscreen

exit:                                   ; CODE XREF: draw_sprite+1D5↑j
                RTS
; End of function oam_offscreen


; =============== S U B R O U T I N E =======================================


sub_FC96:                               ; CODE XREF: nmi+D4↑p
                LDA     flag_clear_oam_300
                EOR     #$40 ; '@'
                STA     flag_clear_oam_300
                LDY     #$FC
                LDX     byte_E4
                BNE     loc_FCE7
                RTS
; End of function sub_FC96


; =============== S U B R O U T I N E =======================================


swap_oam:                               ; CODE XREF: swap_oam+48↓j
                LDA     OAM,X
                PHA
                LDA     OAM,Y
                STA     OAM,X
                PLA
                STA     OAM,Y
                INX
                INY
                LDA     OAM,X
                PHA
                LDA     OAM,Y
                STA     OAM,X
                PLA
                STA     OAM,Y
                INX
                INY
                LDA     OAM,X
                PHA
                LDA     OAM,Y
                STA     OAM,X
                PLA
                STA     OAM,Y
                INX
                INY
                LDA     OAM,X
                PHA
                LDA     OAM,Y
                STA     OAM,X
                PLA
                STA     OAM,Y
                INX
                TYA
                SEC
                SBC     #7
                TAY

loc_FCE7:                               ; CODE XREF: sub_FC96+A↑j
                STY     TileCount
                CPX     TileCount
                BCC     swap_oam
                RTS
; End of function swap_oam


; =============== S U B R O U T I N E =======================================


set_ppu:                                ; CODE XREF: reset+68↓p
                LDA     #0              ; A, X = 0
                TAX

@clear:                                 ; CODE XREF: set_ppu+6↓j
                STA     0,X             ; Clear 0-FF bytes
                INX
                BNE     @clear
                JSR     oam_offscreen
                LDA     #PPU_CTRL_SPRITE ; VBlank Disable
                                        ; Sprite Size = 8x8
                                        ; Screen Pattern Table Address 0 = $0000
                                        ; Sprite Pattern Table Address 1 = $1000
                                        ; PPU Horizontal Write (INC = 1)
                                        ; Name Table Address 0 = $2000
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                STA     CntrlPPU        ; PPU_CTRL
                LDA     #PRG_SWAP_8000|CHR_12_INVERSION
                STA     BankMode
                STA     $8000           ; selecting of a CHR bank
                LDA     #PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES ; Sprite Visibility     1 = Enable
                                        ; Background Visibility 1 = Enable
                                        ; Hide sprites in leftmost 8 pixels of screen
                                        ; Hide background in leftmost 8 pixels of screen
                                        ; Display Type 0 = normal color
                STA     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
                STA     MaskPPU
                LDA     #0
                STA     $A000
                RTS
; End of function set_ppu


; =============== S U B R O U T I N E =======================================


set_apu:                                ; CODE XREF: reset+6B↓p
                LDA     #$1C
                STA     BankNum
                LDA     #0
                LDX     #0

@clear:                                 ; CODE XREF: set_apu+C↓j
                STA     byte_700,X      ; Clear 700-7FF
                INX
                BNE     @clear
                JSR     bank_8000_1D_A000
                JMP     sub_1C8006
; End of function set_apu


; =============== S U B R O U T I N E =======================================


sub_FD28:                               ; CODE XREF: main+BC↑p
                                        ; sub_CCB1+2↑p ...
                CMP     apu_78C
                BEQ     loc_FD30
                STA     apu_7F5

loc_FD30:                               ; CODE XREF: sub_FD28+3↑j
                JMP     wait_nmi        ; wait for NMI interrupt processing to complete
; End of function sub_FD28


; =============== S U B R O U T I N E =======================================


wait_nmi_processed:                     ; CODE XREF: sub_C26C+B↑p
                                        ; sub_C26C:@next_row↑p ...
                LDA     NMIFlags
                ORA     OtherNMIFlags
                BNE     wait_nmi_processed
                RTS
; End of function wait_nmi_processed


; =============== S U B R O U T I N E =======================================

; wait for a few frames
; input: X - number of frames

wait_frames:                            ; CODE XREF: print_string:loc_C79F↑p
                                        ; sub_CCB1+AB↑p ...
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                DEX
                BNE     wait_frames     ; wait for a few frames
                                        ; input: X - number of frames
                RTS
; End of function wait_frames


; =============== S U B R O U T I N E =======================================

; wait for NMI interrupt processing to complete

wait_nmi:                               ; CODE XREF: sub_C26C+25↑p
                                        ; sub_EC65+3B↑j ...
                LDA     #1
                STA     NMIReady

@wait:                                  ; CODE XREF: wait_nmi+6↓j
                LDA     NMIReady
                BNE     @wait
                RTS
; End of function wait_nmi


; =============== S U B R O U T I N E =======================================


wait_nmi_flags_reset:                   ; CODE XREF: sub_C306:loc_C31F↑j
                                        ; draw_screen+6A↑p ...
                LDA     NMIFlags
                BNE     wait_nmi_flags_reset
                RTS
; End of function wait_nmi_flags_reset


; =============== S U B R O U T I N E =======================================


wait_press_button:                      ; CODE XREF: sub_CCB1+21↑p
                                        ; sub_13AB0F+2A↓J ...
                LDA     #0
                STA     Gamepad0Buttons

@wait_button:                           ; CODE XREF: wait_press_button+6↓j
                LDA     Gamepad0Buttons
                BEQ     @wait_button
                PHA
                LDA     #0
                STA     Gamepad0Buttons
                PLA
                RTS
; End of function wait_press_button


; =============== S U B R O U T I N E =======================================


clear_oam_sprite:                       ; CODE XREF: main:@draw↑p
                                        ; sub_CCB1+B4↑p ...
                JSR     wait_nmi_processed
                SEC
                ROR     flag_clear_oam_300 ; set high bit
                LDX     #0

@clear:                                 ; CODE XREF: clear_oam_sprite+1D↓j
                LDA     #0
                STA     SpriteTable,X   ; 300 + 8 <- 0
                LDA     #$F0
                STA     OAM,X           ; 200 + 4 <- F0
                INX
                INX
                INX
                INX
                STA     OAM,X
                INX
                INX
                INX
                INX
                BNE     @clear
                ASL     flag_clear_oam_300 ; clear high bit
                RTS
; End of function clear_oam_sprite


; =============== S U B R O U T I N E =======================================


clear_nametables:                       ; CODE XREF: start_battle+2A↑p
                                        ; game_intro+9↓P ...
                JSR     wait_nmi_processed
                LDA     #8              ; fill_ppu function ID
                LDX     #$80            ; number of char for fill
                STA     NMI_ID + struc_400::NMI_ID   ; NMITable
                STX     NMI_ID + struc_400::num_of_chr ; NMITable
                LDA     #0              ; PPU address for fill ($2000) - nametable
                LDX     #$20 ; ' '
                STA     NMI_ID + struc_400::PPU_addr+1 ; NMITable
                STX     NMI_ID + struc_400::PPU_addr ; NMITable
                LDA     #0
                STA     NMI_ID + struc_400::chr      ; char for fill - 0
                STA     NMI_ID + struc_400::next     ; next record or end of record - 0

@next_fill:                             ; CODE XREF: clear_nametables+3D↓j
                LDX     #0
                LDA     #$80
                STX     OffsetNMI_ID
                STA     NMIFlags
                JSR     wait_nmi_processed ; nmi
                CLC
                LDA     NMI_ID + struc_400::PPU_addr+1 ; NMITable
                ADC     #$80
                STA     NMI_ID + struc_400::PPU_addr+1 ; NMITable
                LDA     NMI_ID + struc_400::PPU_addr ; NMITable
                ADC     #0
                STA     NMI_ID + struc_400::PPU_addr ; NMITable
                CMP     #$28 ; '('
                BCC     @next_fill
                RTS
; End of function clear_nametables


; =============== S U B R O U T I N E =======================================


sub_FDC0:                               ; CODE XREF: sub_C3F4+4↑p
                                        ; sub_DA16+3↑p ...
                JSR     wait_nmi_processed
                LDA     byte_E7
                AND     #$BF
                STA     byte_E7
                LDA     #0
                STA     ShiftX
                STA     ShiftY
                CLC

loc_FDD0:                               ; CODE XREF: sub_FDC0+24↓j
                TAX
                LDA     SpriteTable + ANIM_SPRITE::TileID,X
                AND     #$BF
                STA     SpriteTable + ANIM_SPRITE::TileID,X
                LDA     #0
                STA     SpriteTable + ANIM_SPRITE::field_4,X
                STA     SpriteTable + ANIM_SPRITE::field_5,X
                TXA
                ADC     #8
                BCC     loc_FDD0
                RTS
; End of function sub_FDC0


; =============== S U B R O U T I N E =======================================


sram_write_enable:                      ; CODE XREF: draw_statistical_frame+4↑p
                                        ; prepare_attributes+19↑p ...
                LDA     #SRAM_WRITE_ENABLE|SRAM_ENABLE
                STA     $A001
                RTS
; End of function sram_write_enable


; =============== S U B R O U T I N E =======================================


sram_read_enable:                       ; CODE XREF: draw_statistical_frame+36↑p
                                        ; prepare_attributes+25↑p ...
                LDA     #SRAM_WRITE_DISABLE|SRAM_ENABLE
                STA     $A001
                RTS
; End of function sram_read_enable


; =============== S U B R O U T I N E =======================================

; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
; input: A - bank number, YX - (subroutine address - 1)
; Y - high byte, X - low byte

bank_A000_a:                            ; CODE XREF: sub_C26C+14↑p
                                        ; sub_C306+16↑p ...
                PHA
                LDA     #$FE            ; save return address as bank_A000_sp - 1
                PHA
                LDA     #$C
                PHA
                TYA
                PHA
                TXA
                PHA
                TSX
                LDA     BankTable + BANK_TABLE::CPU_8K_A000
                LDY     Stack+5,X
                STA     Stack+5,X
                TYA
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
; ---------------------------------------------------------------------------

Bank_A000_sp:                           ; global label to enter the memory bank setup procedure
                PLA                     ; setup memory bank $A000 from stack
                LDX     #7
                JMP     mmc3_bank_set   ; Set memory bank
; End of function bank_A000_a           ; A - bank number
                                        ; X - mode

; =============== S U B R O U T I N E =======================================


                ; public irq
irq:                                    ; DATA XREF: ROM:IRQ_vector↓o
                PHA                     ; store registers onto the stack
                TXA
                PHA
                TYA
                PHA
                LDA     BankRegister
                PHA                     ; store bank table offset (bank memory register)
                JSR     interrupt_handler
                PLA                     ; restore bank table offset (bank memory register)
                ORA     BankMode
                STA     $8000
                LDX     InterruptOffset
                INX
                INX
                STX     InterruptOffset
                LDA     InterruptTable+1,X
                BNE     @no_irq_disable
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                STA     IRQLatch

@no_irq_disable:                        ; CODE XREF: irq+1A↑j
                PLA                     ; restore registers from the stack
                TAY
                PLA
                TAX
                PLA
                RTI
; End of function irq


; =============== S U B R O U T I N E =======================================


interrupt_handler:                      ; CODE XREF: irq+8↑p
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                LDX     InterruptOffset
                LDA     InterruptTable+1,X
                PHA                     ; store the high address of the subprogram on the stack
                LDA     InterruptTable,X
                PHA                     ; store the low address of the subprogram on the stack
                STA     $E001           ; Enable MMC3 interrupts
                RTS
; End of function interrupt_handler


; =============== S U B R O U T I N E =======================================

; Subroutine to process gamepad input and perform bitwise operations

gamepad_input:                          ; CODE XREF: nmi+FF↑p
                LDX     #1

@ReadGamepad:                           ; CODE XREF: gamepad_input+38↓j
                SEC                     ; set carry flag

@SetControllerStrobe:                   ; CODE XREF: gamepad_input+26↓j
                PHP                     ; push processor status register on the stack
                LDA     #1              ; reset joysticks, write first $01 then $00 into $4016
                STA     GAMEPAD_REGISTER0 ; Joypad #1 (RW)
                                        ;
                                        ; READING:
                                        ;    D4: Zapper Trigger
                                        ;    D3: Zapper Sprite Detection
                                        ;    D0: Joypad Data
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Joypad Strobe (W)
                                        ;
                                        ;    D0: Joypad Strobe
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Expansion Port Latch (W)
                                        ;    D0: Expansion Port Method
                                        ;
                LDA     #0
                STA     GAMEPAD_REGISTER0 ; Joypad #1 (RW)
                                        ;
                                        ; READING:
                                        ;    D4: Zapper Trigger
                                        ;    D3: Zapper Sprite Detection
                                        ;    D0: Joypad Data
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Joypad Strobe (W)
                                        ;
                                        ;    D0: Joypad Strobe
                                        ; ----------------------------------------------
                                        ; WRITING:
                                        ; Expansion Port Latch (W)
                                        ;    D0: Expansion Port Method
                                        ;
                LDY     #8              ; initialize Y to 8 (number of bits to process)

@ReadControllerData:                    ; CODE XREF: gamepad_input+1A↓j
                LDA     GAMEPAD_REGISTER0,X ; read the controller data at $4016 + X (NES input registers)
                LSR     A               ; shift the data right to get the next bit
                ROL     TileCount
                LSR     A
                ROL     Attribute
                DEY
                BNE     @ReadControllerData ; loop until all 8 bits are read
                LDA     TileCount
                ORA     Attribute
                PLP                     ; pull the original processor status register
                BCC     @HandleController2
                STA     Gamepad0Status,X
                CLC                     ; clear carry flag
                BCC     @SetControllerStrobe

@HandleController2:                     ; CODE XREF: gamepad_input+21↑j
                CMP     Gamepad0Status,X ; compare the data with the previously stored data
                BEQ     @SkipControllerUpdate ; if equal, skip the controller update
                LDA     ButtonPressed0,X

@SkipControllerUpdate:                  ; CODE XREF: gamepad_input+2A↑j
                TAY
                EOR     ButtonPressed0,X
                AND     Gamepad0Status,X
                STA     Gamepad0Status,X
                STY     ButtonPressed0,X
                DEX
                BPL     @ReadGamepad
                RTS
; End of function gamepad_input


; =============== S U B R O U T I N E =======================================

; subroutine to handle game logic and control flow

handle_game_logic:                      ; CODE XREF: nmi+10E↑p
                LDA     Gamepad0Status
                BNE     @CheckNextState
                LDA     byte_D3
                CMP     #$2A ; '*'
                BCC     @NextState
                RTS
; ---------------------------------------------------------------------------

@CheckNextState:                        ; CODE XREF: handle_game_logic+2↑j
                LDA     #0
                STA     byte_D3

@NextState:                             ; CODE XREF: handle_game_logic+8↑j
                INC     byte_D0
                BNE     @exit
                INC     byte_D3
                INC     byte_D1
                BNE     @exit
                INC     byte_D2

@exit:                                  ; CODE XREF: handle_game_logic+11↑j
                                        ; handle_game_logic+17↑j
                RTS
; End of function handle_game_logic

; ---------------------------------------------------------------------------
byte_FEA2:      .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
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
                .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; =============== S U B R O U T I N E =======================================


                ; public reset
reset:                                  ; CODE XREF: sub_13AC4B+6↓J
                                        ; DATA XREF: ROM:RESET_vector↓o
                LDA     #PPU_CTRL_SPRITE ; VBlank NMI Disable
                                        ; Sprite Size = 8x8
                                        ; Screen Pattern Table Address 0 = $0000
                                        ; Sprite Pattern Table Address 1 = $1000
                                        ; PPU Horizontal Write (INC = 1)
                                        ; Name Table Address 0 = $2000
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                SEI                     ; Disable interrupt
                CLD                     ; BCD disable
                LDA     #0              ; Emphasize RGB = 0
                                        ; Sprite hide
                                        ; Background hide
                                        ; Hide sprites in leftmost 8 pixels of screen
                                        ; Hide background in leftmost 8 pixels of screen
                                        ; Display Type color
                STA     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
                STA     pAPU_SV_CSR     ; pAPU Sound/Vertical Clock Signal Register (R)
                                        ;
                                        ;    D6: Vertical Clock Signal IRQ Availability
                                        ;    D4: Delta Modulation
                                        ;    D3: Noise
                                        ;    D2: Triangle
                                        ;    D1: Pulse #2
                                        ;    D0: Pulse #1
                                        ; ---------------------------------------------
                                        ; pAPU Channel Control (W)
                                        ;
                                        ;    D4: Delta Modulation
                                        ;    D3: Noise
                                        ;    D2: Triangle
                                        ;    D1: Pulse #2
                                        ;    D0: Pulse #1
                STA     pAPU_DM_CR      ; pAPU Delta Modulation Control Register (W)
                STA     $E000           ; Disable MMC3 interrupts and acknowledge any pending interrupts
                LDA     #$40 ; '@'
                STA     pAPU_F_CNTR     ; Joypad #2/SOFTCLK (RW)
                                        ;
                                        ; READING:
                                        ;    D7: Vertical Clock Signal (External)
                                        ;    D6: Vertical Clock Signal (Internal)
                                        ;    D4: Zapper Trigger
                                        ;    D3: Zapper Sprite Detection
                                        ;    D0: Joypad Data
                                        ; ----------------------------------------------
                                        ; APU Frame Counter
                                        ;
                                        ; WRITING:
                                        ; Expansion Port Latch (W)
                                        ;
                                        ;    D7: Mode 0 = 4-step, 1 = 5-step
                                        ;    D6: IRQ Inhibit Flag
                STA     $A001           ; Disable SRAM
                LDX     #2

@wait_vblank:                           ; CODE XREF: reset+22↓j
                                        ; reset:loc_FF65↓j
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                BPL     @wait_vblank
                DEX

loc_FF65:
                BNE     @wait_vblank
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                LDY     #$3F ; '?'
                LDX     #0
                STY     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDX     #$20 ; ' '
                LDA     #$F

@LoadPalettesLoop:                      ; CODE XREF: reset+3C↓j
                STA     PPU_DATA        ; VRAM I/O Register (RW)
                                        ;
                                        ; D7-D0: 8-bit data read/written from/to VRAM.
                DEX
                BNE     @LoadPalettesLoop
                STY     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STX     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.

loc_FF87:                               ; VRAM Address Register #2 (W2)
                STX     PPU_ADDR        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                LDA     #PPU_MASK_SHOW_BACKGROUND_L8|PPU_MASK_SHOW_SPRITES_L8|PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES ; Emphasize RGB = 0
                                        ; Sprite show
                                        ; Background show
                                        ; Show sprites in leftmost 8 pixels of screen
                                        ; Show background in leftmost 8 pixels of screen
                                        ; Display Type color
                STA     PPU_MASK        ; PPU Control Register #2 (W)
                                        ;
                                        ; D7-D5: Full Background Colour (when D0 == 1)
                                        ; D7-D5: Colour Intensity (when D0 == 0)
                                        ;    D4: Sprite Visibility
                                        ;    D3: Background Visibility
                                        ;    D2: Sprite Clipping
                                        ;    D1: Background Clipping
                                        ;    D0: Display Type
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                LDA     #$10
                TAX

@loop:                                  ; CODE XREF: reset+5E↓j
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                STA     PPU_ADDR        ; VRAM Address Register #2 (W2)
                                        ;
                                        ; Commonly used to specify the 16-bit address in VRAM to
                                        ; access via $2007. However, this register controls VRAM
                                        ; addressing bits, and therefore should be used with
                                        ; knowledge of how it works, and when it works.
                EOR     #0
                DEX
                BNE     @loop
                LDX     #$FF
                TXS
                LDA     #0
                STA     $8000           ; selecting of a CHR bank
                JSR     set_ppu
                JSR     set_apu
                LDX     #7
                LDA     #$13
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                BIT     PPU_STATUS      ; PPU Status Register (R)
                                        ;
                                        ;    D7: VBlank Occurance
                                        ;    D6: Sprite #0 Occurance
                                        ;    D5: Scanline Sprite Count
                                        ;    D4: VRAM Write Flag
                                        ;
                                        ; NOTE: D7 is set to 0 after read occurs.
                                        ; NOTE: After a read occurs, $2005 is reset, hence the
                                        ;       next write to $2005 will be Horizontal.
                                        ; NOTE: After a read occurs, $2006 is reset, hence the
                                        ;       next write to $2006 will be the high byte portion.
                LDA     CntrlPPU        ; PPU_CTRL
                ORA     #$80            ; Enable NMI
                STA     CntrlPPU        ; PPU_CTRL
                STA     PPU_CTRL        ; PPU Control Register #1 (W)
                                        ;
                                        ;    D7: Execute NMI on VBlank
                                        ;    D6: PPU Master/Slave Selection
                                        ;    D5: Sprite Size
                                        ;    D4: Background Pattern Table Address
                                        ;    D3: Sprite Pattern Table Address
                                        ;    D2: PPU Address Increment
                                        ; D1-D0: Name Table Address
                CLI
                JMP     main
; End of function reset


; =============== S U B R O U T I N E =======================================


bank_8000_1D_A000:                      ; CODE XREF: nmi:@no_chr_bank↑p
                                        ; set_apu+E↑p
                LDA     BankNum
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank
                                        ; A - bank number
                                        ; X - mode
                LDA     #$1D
                LDX     #7
; End of function bank_8000_1D_A000


; =============== S U B R O U T I N E =======================================

; Set memory bank
; A - bank number
; X - mode

mmc3_bank_set:                          ; CODE XREF: bank0_0+4↑j
                                        ; draw_statistical_frame+65↑j ...
                STX     BankRegister    ; bankTableOffset (bankMode)
                STA     BankTable,X     ; save bank number to table
                TXA
                ORA     BankMode
                STA     $8000           ; selecting of a PRG bank at 8000
                LDA     BankTable,X     ; get bank number
                STA     $8001           ; selection of PRG bank number 1B
                RTS
; End of function mmc3_bank_set

; ---------------------------------------------------------------------------
aEarthBound100: .byte "EARTH BOUND 1.00",0
                .byte 0, 0, 0, 3, 0, 1, $F, 1, 0
NMI_vector:     .word nmi
RESET_vector:   .word reset
IRQ_vector:     .word irq
; end of 'ROM'
