; ===========================================================================

; Segment type: Pure code
                ;.segment BANK17
                * =  $A000

; =============== S U B R O U T I N E =======================================


sub_17A000:                             ; CODE XREF: start_battle+30↑P
                LDA     #0
                STA     Gamepad0Buttons
                STA     Gamepad1Buttons
                STA     byte_52
                STA     byte_59
                STA     byte_49
                STA     byte_4A
                STA     byte_4B
                STA     byte_4C
                STA     byte_4D
                TAX

@clear1:                                ; CODE XREF: sub_17A000+19↓j
                STA     byte_600,X
                INX
                BNE     @clear1
                LDX     #$1F

@clear2:                                ; CODE XREF: sub_17A000+21↓j
                STA     byte_580,X
                DEX
                BPL     @clear2
                LDA     #0
                STA     byte_53
                LDX     #0

loc_17A029:                             ; CODE XREF: sub_17A000+3F↓j
                TXA
                PHA
                LDA     CurrentGame.PureSave.CharactersNum,X
                BEQ     loc_17A03A
                JSR     sub_17A1DD
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53

loc_17A03A:                             ; CODE XREF: sub_17A000+2E↑j
                PLA
                TAX
                INX
                CPX     #4
                BNE     loc_17A029
                JSR     sub_F479
                LDA     #$80
                STA     byte_53
                LDY     #0

loc_17A04A:                             ; CODE XREF: sub_17A000+6A↓j
                LDA     (pCharacter),Y  ; BANK16:95D8
                STA     Pointer
                INY
                LDA     (pCharacter),Y
                STA     Pointer+1
                INY
                TYA
                PHA
                LDA     Pointer
                CMP     #$FF
                BEQ     loc_17A05F
                JSR     sub_17A22D

loc_17A05F:                             ; CODE XREF: sub_17A000+5A↑j
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53
                PLA
                TAY
                CPY     #8
                BNE     loc_17A04A
                LDA     (pCharacter),Y
                AND     #$E0
                LDX     #5

loc_17A072:                             ; CODE XREF: sub_17A000+74↓j
                LSR     A
                DEX
                BNE     loc_17A072
                STA     byte_56
                LDA     (pCharacter),Y  ; BANK16:95E0
                AND     #$1F
                STA     byte_5A
                INY
                LDA     (pCharacter),Y
                AND     #$F
                STA     Pointer
                LDA     #0
                LDX     #5

loc_17A089:                             ; CODE XREF: sub_17A000+8D↓j
                ASL     Pointer
                ROL     A
                DEX
                BNE     loc_17A089
                STA     Pointer+1
                CLC
                LDA     #$81
                ADC     Pointer
                STA     Pointer
                LDA     #$8E
                ADC     Pointer+1
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                JSR     preload_palettes
                JSR     bank16          ; set memory bank $16 at $8000
                LDX     #$23 ; '#'      ; 23C0 - attribute address
                LDY     #$C0
                JSR     fill_attribute
                LDX     #$2B ; '+'      ; 2BC0 - attribute address
                LDY     #$C0
                JSR     fill_attribute
                JSR     statistical_frame
                LDA     #0
                STA     byte_5B
                LDA     #$80
                STA     byte_53

loc_17A0C0:                             ; CODE XREF: sub_17A000+D3↓j
                LDX     byte_53
                LDA     byte_600,X
                BEQ     loc_17A0CA
                JSR     sub_17A28A

loc_17A0CA:                             ; CODE XREF: sub_17A000+C5↑j
                INC     byte_5B
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53
                BCC     loc_17A0C0
                LDY     #0
                LDX     #0

loc_17A0D9:                             ; CODE XREF: sub_17A000+FD↓j
                LDA     byte_580,Y
                INY
                ORA     byte_580,Y
                STA     Pointer
                INY
                LDA     byte_580,Y
                INY
                ORA     byte_580,Y
                ASL     A
                ASL     A
                ORA     Pointer
                STA     Pointer
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ORA     Pointer
                STA     byte_580,X
                INY
                INX
                CPX     #8
                BNE     loc_17A0D9
                JSR     wait_nmi_processed
                LDA     #5
                STA     NMI_ID.NMI_ID
                LDA     #$10
                STA     NMI_ID.num_of_chr
                LDY     #0
                LDX     #4

loc_17A110:                             ; CODE XREF: sub_17A000+11D↓j
                LDA     byte_580,Y
                STA     NMI_ID,X
                STA     NMI_ID.PPU_addr+6,X
                INY
                INX
                CPY     #8
                BNE     loc_17A110
                LDA     #0
                STA     NMI_ID.PPU_addr+6,X
                LDA     #$80
                STA     NMIFlags
                LDA     #$23 ; '#'
                STA     NMI_ID.PPU_addr
                LDA     #$D8
                STA     NMI_ID.PPU_addr+1
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #0
                STA     byte_47
                STA     byte_48
                LDX     #$80

loc_17A13E:                             ; CODE XREF: sub_17A000+154↓j
                TXA
                PHA
                LDY     #4

loc_17A142:                             ; CODE XREF: sub_17A000+14D↓j
                LDA     byte_604,X
                AND     #3
                STA     byte_604,X
                INX
                INX
                DEY
                BNE     loc_17A142
                PLA
                CLC
                ADC     #$20 ; ' '
                TAX
                BNE     loc_17A13E
                LDX     #0
                LDA     byte_56
                CMP     #1
                BNE     loc_17A173
                LDX     #4
                LDA     #$FF
                STA     byte_683
                STA     byte_684
                LDA     #0
                STA     byte_620
                STA     byte_640
                STA     byte_660

loc_17A173:                             ; CODE XREF: sub_17A000+15C↑j
                STX     byte_5B
                LDA     byte_23
                BEQ     loc_17A18C
                LDY     #0
                STY     byte_56

loc_17A17D:                             ; CODE XREF: sub_17A000+18A↓j
                LDA     byte_61E,Y
                ORA     #4
                STA     byte_61E,Y
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A17D

loc_17A18C:                             ; CODE XREF: sub_17A000+177↑j
                LDA     byte_56
                CMP     #5
                BNE     loc_17A19C
                LDA     #$96
                STA     NamePos
                LDA     byte_60C
                STA     byte_68C

loc_17A19C:                             ; CODE XREF: sub_17A000+190↑j
                LDX     #$14
                JSR     delay
                JSR     save_jmp_instr  ; save JMP $F76A to $D7

@battle_loop:                           ; CODE XREF: sub_17A000+1D0↓j
                LDA     #0
                JSR     sub_F4CE        ; start draw window
                JSR     sub_17AC6A      ; draw battle window without menu
                                        ; print messages
                                        ; damage animation
                BCS     @end_battle
                LDX     #$14
                JSR     delay
                LDA     #7
                JSR     sub_F4CE        ; start draw window
                LDA     #0
                STA     byte_52
                JSR     shift_up_window ; shift up window
                                        ; jump instruction LDX #$04
                JSR     sub_F765
                JSR     sub_17A50A      ; battle menu, wait command
                JSR     sub_F760        ; return if select action, set value $5A = 1
                LDA     #3
                JSR     sub_F4CE
                JSR     shift_down_window
                JMP     @battle_loop
; ---------------------------------------------------------------------------

@end_battle:                            ; CODE XREF: sub_17A000+1AC↑j
                JSR     clear_jmp_instr
                LDA     #0
                STA     Gamepad0Buttons
                STA     Gamepad1Buttons
                RTS
; End of function sub_17A000


; =============== S U B R O U T I N E =======================================


sub_17A1DD:                             ; CODE XREF: sub_17A000+30↑p
                STA     AddrForJmp
                TAX
                LDA     #0
                STA     Pointer
                LDA     #$74 ; 't'
                STA     Pointer+1

loc_17A1E8:                             ; CODE XREF: sub_17A1DD+19↓j
                CLC
                LDA     Pointer
                ADC     #$40 ; '@'
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1
                DEX
                BNE     loc_17A1E8
                LDY     #1
                LDX     byte_53

loc_17A1FC:                             ; CODE XREF: sub_17A1DD+28↓j
                LDA     (Pointer),Y
                STA     byte_601,X
                INY
                INX
                CPY     #$10
                BNE     loc_17A1FC
                LDY     #$14
                LDX     byte_53

loc_17A20B:                             ; CODE XREF: sub_17A1DD+37↓j
                LDA     (Pointer),Y
                STA     byte_603,X
                INX
                INY
                CPY     #$18
                BNE     loc_17A20B
                LDX     byte_53
                LDA     #$FF
                STA     byte_600,X
                LDA     AddrForJmp
                STA     byte_611,X
                LDA     Pointer
                STA     pPPUTab,X
                LDA     Pointer+1
                STA     pPPUTab+1,X
                RTS
; End of function sub_17A1DD


; =============== S U B R O U T I N E =======================================


sub_17A22D:                             ; CODE XREF: sub_17A000+5C↑p
                LDX     byte_53
                LDA     Pointer+1
                ASL     A
                ASL     A
                STA     byte_61A,X
                LDA     Pointer
                STA     AddrForJmp
                LDA     #0
                LDX     #5

loc_17A23E:                             ; CODE XREF: sub_17A22D+15↓j
                ASL     AddrForJmp
                ROL     A
                DEX
                BNE     loc_17A23E
                STA     AddrForJmp+1
                CLC
                LDA     #0
                ADC     AddrForJmp
                STA     AddrForJmp
                LDA     #$80
                ADC     AddrForJmp+1
                STA     AddrForJmp+1
                LDY     #1
                LDX     byte_53

loc_17A257:                             ; CODE XREF: sub_17A22D+33↓j
                LDA     (AddrForJmp),Y  ; BANK16:8860
                STA     byte_601,X
                INY
                INX
                CPY     #$18
                BNE     loc_17A257
                LDX     byte_53
                LDY     byte_48
                INY
                TYA
                STA     byte_600,X
                LDA     AddrForJmp
                STA     pPPUTab,X
                LDA     AddrForJmp+1
                STA     pPPUTab+1,X
                LDY     #$5E ; '^'
                LDA     Pointer+1
                BPL     loc_17A285
                LDA     byte_61E,X
                ORA     #1
                STA     byte_61E,X
                LDY     #0

loc_17A285:                             ; CODE XREF: sub_17A22D+4C↑j
                TYA
                STA     byte_61D,X
                RTS
; End of function sub_17A22D


; =============== S U B R O U T I N E =======================================


sub_17A28A:                             ; CODE XREF: sub_17A000+C7↑p
                LDA     byte_61E,X
                AND     #1
                BEQ     loc_17A296
                LDA     #0
                STA     byte_600,X

loc_17A296:                             ; CODE XREF: sub_17A28A+5↑j
                LDA     byte_61A,X
                ORA     byte_5B
                STA     byte_61A,X
                LDA     byte_604,X
                AND     #$F0
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     off_16960A,Y
                STA     Pointer
                LDA     off_16960A+1,Y
                STA     Pointer+1
                LDA     byte_608,X
                AND     #$E0
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                STA     byte_66
                LDY     #0
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                INY
                SEC
                LDA     (Pointer),Y
                SBC     byte_66
                TAY
                INY
                LDA     #$E0

loc_17A2D2:                             ; CODE XREF: sub_17A28A+4C↓j
                CLC
                ADC     #$20 ; ' '
                DEY
                BNE     loc_17A2D2
                STA     pTileID
                LDA     byte_5A
                ASL     A
                ASL     A
                ADC     byte_5B
                TAY
                LDA     byte_168F40,Y
                STA     pTileID+1
                LDA     byte_604,X
                AND     #$C
                LSR     A
                LSR     A
                LDY     pTileID+1
                LDX     #0

loc_17A2F1:                             ; CODE XREF: sub_17A28A+6E↓j
                STA     byte_580,Y
                INY
                INX
                CPX     AddrForJmp+1
                BNE     loc_17A2F1
                CLC
                LDA     pTileID+1
                ADC     pTileID
                ADC     #$80
                STA     pTileID
                LDA     #0
                ADC     #$21 ; '!'
                STA     pTileID+1
                LDA     pTileID
                AND     #$E0
                STA     pDist
                LDA     pTileID+1
                AND     #3
                LSR     A
                ROR     pDist
                LSR     A
                ROR     pDist
                SEC
                LDA     pDist
                SBC     #$19
                STA     pDist
                LDA     pTileID
                ASL     A
                ASL     A
                ASL     A
                SEC
                SBC     #$10
                STA     pDist+1
                LDX     byte_5B
                INX
                LDA     #$C0

loc_17A32F:                             ; CODE XREF: sub_17A28A+A9↓j
                CLC
                ADC     #$40 ; '@'
                DEX
                BNE     loc_17A32F
                STA     byte_66
                LDY     #2

loc_17A339:                             ; CODE XREF: sub_17A28A+F8↓j
                JSR     wait_nmi_processed
                LDX     #0
                LDA     #5
                STA     NMI_ID,X
                INX
                LDA     AddrForJmp+1
                STA     NMI_ID,X
                STA     TilesCount
                INX
                LDA     pTileID+1
                STA     NMI_ID,X
                INX
                LDA     pTileID
                STA     NMI_ID,X

loc_17A357:                             ; CODE XREF: sub_17A28A+D9↓j
                INY
                LDA     (Pointer),Y
                CLC
                ADC     byte_66
                INX
                STA     NMI_ID,X
                DEC     TilesCount
                BNE     loc_17A357
                LDA     #0
                INX
                STA     NMI_ID,X
                CLC
                LDA     pTileID
                ADC     #$20 ; ' '
                STA     pTileID
                LDA     pTileID+1
                ADC     #0
                STA     pTileID+1
                LDA     #0
                STA     OffsetNMI_ID
                LDA     #$80
                STA     NMIFlags
                DEC     AddrForJmp
                BNE     loc_17A339
                LDX     byte_53
                LDA     unk_606,X
                AND     #$FC
                BEQ     locret_17A3D1
                LSR     A
                LSR     A
                STA     Pointer
                ASL     A
                ADC     Pointer
                CLC
                ADC     #$C8
                STA     Pointer
                LDA     #0
                ADC     #$97
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     byte_61C,X
                LDA     byte_5B
                ASL     A
                ASL     A
                ASL     A
                TAX
                LDA     #0
                STA     SpriteTable,X
                STA     SpriteTable.TileID,X
                STA     SpriteTable.field_4,X
                STA     SpriteTable.field_5,X
                LDA     pDist+1
                STA     SpriteTable.PosX,X
                LDA     pDist
                STA     SpriteTable.PosY,X
                LDY     #1
                LDA     (Pointer),Y
                STA     SpriteTable.pFrame,X
                INY
                LDA     (Pointer),Y
                STA     SpriteTable.pFrame+1,X

locret_17A3D1:                          ; CODE XREF: sub_17A28A+101↑j
                RTS
; End of function sub_17A28A


; =============== S U B R O U T I N E =======================================


fill_attribute:                         ; CODE XREF: sub_17A000+AB↑p
                                        ; sub_17A000+B2↑p
                JSR     wait_nmi_processed
                STX     NMI_ID.PPU_addr
                STY     NMI_ID.PPU_addr+1
                LDA     #8
                STA     NMI_ID.NMI_ID
                LDA     #$40 ; '@'
                STA     NMI_ID.num_of_chr
                LDA     #$FF
                STA     NMI_ID.chr
                LDA     #0
                STA     NMI_ID.next
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     OffsetNMI_ID
                RTS
; End of function fill_attribute


; =============== S U B R O U T I N E =======================================


sub_17A3F8:                             ; CODE XREF: sub_17AC6A+36↓p
                                        ; sub_17ACD6+9D↓p ...
                CMP     #0
                BEQ     locret_17A478
                PHA
                JSR     sub_17A4BB
                JSR     bank0           ; set memory bank 0 at $8000
                PLA
                CMP     #$FF
                BNE     loc_17A42D
                SEC
                LDY     byte_54
                LDA     pPPUTab,Y
                SBC     #0
                STA     PointerTilePack
                LDA     pPPUTab+1,Y
                SBC     #$80
                ASL     PointerTilePack
                ROL     A
                ASL     PointerTilePack
                ROL     A
                ASL     PointerTilePack
                ROL     A
                CLC
                ADC     #$14
                STA     PointerTilePack
                LDA     #0
                ADC     #5
                STA     byte_73
                BCC     loc_17A44A

loc_17A42D:                             ; CODE XREF: sub_17A3F8+E↑j
                LDY     #0
                STY     Pointer+1
                ASL     A
                ROL     Pointer+1
                CLC
                ADC     #$81
                STA     Pointer
                LDA     Pointer+1
                ADC     #$90
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     PointerTilePack
                INY
                LDA     (Pointer),Y
                STA     byte_73

loc_17A44A:                             ; CODE XREF: sub_17A3F8+33↑j
                                        ; sub_17A3F8+75↓j
                JSR     sub_CAA2
                LDA     PointerTilePack
                STA     byte_50
                LDA     PointerTilePack+1
                STA     byte_51
                LDA     byte_52
                CMP     #3
                BNE     loc_17A462
                LDX     #3
                JSR     sub_C7C1
                DEC     byte_52

loc_17A462:                             ; CODE XREF: sub_17A3F8+61↑j
                JSR     sub_17A479
                CMP     #2
                BEQ     loc_17A46F
                INC     byte_52
                CMP     #0
                BNE     loc_17A44A

loc_17A46F:                             ; CODE XREF: sub_17A3F8+6F↑j
                JSR     bank16          ; set memory bank $16 at $8000
                LDX     CurrentGame.PureSave.field_18
                JSR     delay

locret_17A478:                          ; CODE XREF: sub_17A3F8+2↑j
                RTS
; End of function sub_17A3F8


; =============== S U B R O U T I N E =======================================


sub_17A479:                             ; CODE XREF: sub_17A3F8:loc_17A462↑p
                LDA     byte_52
                ASL     A
                ADC     #3
                STA     PosY
                LDY     #0
                LDA     (byte_50),Y
                CMP     #3
                BNE     loc_17A49D
                LDA     #$F
                STA     PosX
                JSR     sub_F5C2
                INC     byte_50
                BNE     loc_17A495
                INC     byte_51

loc_17A495:                             ; CODE XREF: sub_17A479+18↑j
                LDY     #0
                LDA     (byte_50),Y
                CMP     #2
                BEQ     locret_17A4BA

loc_17A49D:                             ; CODE XREF: sub_17A479+D↑j
                LDA     #$16
                STA     byte_70
                LDA     #5
                STA     PosX
                JSR     wait_nmi_processed
                LDA     byte_50
                STA     PointerTilePack
                LDA     byte_51
                STA     PointerTilePack+1
                JSR     print_string
                LDA     #1
                JSR     sub_C7AF
                LDA     UnpackID

locret_17A4BA:                          ; CODE XREF: sub_17A479+22↑j
                RTS
; End of function sub_17A479


; =============== S U B R O U T I N E =======================================


sub_17A4BB:                             ; CODE XREF: sub_17A3F8+5↑p
                                        ; sub_17A9B3+39↓p ...
                LDA     #$21 ; '!'
                STA     byte_580
                STA     unk_588
                LDA     #$80
                STA     AddrForJmp
                LDA     #5
                STA     AddrForJmp+1
                LDX     byte_53
                JSR     loc_17A4DA
                LDA     #$88
                STA     AddrForJmp
                LDA     #5
                STA     AddrForJmp+1
                LDX     byte_54

loc_17A4DA:                             ; CODE XREF: sub_17A4BB+12↑p
                LDA     pPPUTab,X
                STA     Pointer
                LDA     pPPUTab+1,X
                STA     Pointer+1
                LDY     #$18
                LDA     (Pointer),Y
                PHA
                INY
                LDA     (Pointer),Y
                LDY     #2
                STA     (AddrForJmp),Y
                PLA
                DEY
                STA     (AddrForJmp),Y
                INY
                INY
                LDA     byte_61A,X
                AND     #$1C
                BEQ     loc_17A505
                LSR     A
                LSR     A
                CLC
                ADC     #$40 ; '@'
                STA     (AddrForJmp),Y
                INY

loc_17A505:                             ; CODE XREF: sub_17A4BB+40↑j
                LDA     #0
                STA     (AddrForJmp),Y
                RTS
; End of function sub_17A4BB


; =============== S U B R O U T I N E =======================================


sub_17A50A:                             ; CODE XREF: sub_17A000+1C2↑p
                LDA     #0
                STA     byte_53

loc_17A50E:                             ; CODE XREF: sub_17A50A+29↓j
                                        ; sub_17A50A+32↓j
                LDY     byte_53
                LDA     #0
                STA     byte_61D,Y
                LDA     byte_61E,Y
                AND     #$F7
                STA     byte_61E,Y
                LDA     byte_600,Y
                BEQ     loc_17A535
                LDA     byte_601,Y
                AND     #$F4
                BNE     loc_17A535
                LDA     byte_61E,Y
                AND     #$20 ; ' '
                BNE     loc_17A535
                JSR     sub_17A53F
                BCS     loc_17A50E

loc_17A535:                             ; CODE XREF: sub_17A50A+16↑j
                                        ; sub_17A50A+1D↑j ...
                CLC
                LDA     byte_53
                ADC     #$20 ; ' '
                STA     byte_53
                BNE     loc_17A50E
                RTS
; End of function sub_17A50A


; =============== S U B R O U T I N E =======================================


sub_17A53F:                             ; CODE XREF: sub_17A50A+26↑p
                LDA     byte_59
                BNE     loc_17A559
                LDY     byte_53
                BMI     loc_17A559
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A559
                JSR     sub_17A7DA
                BCS     locret_17A572
                LDA     byte_59
                BEQ     loc_17A55C

loc_17A559:                             ; CODE XREF: sub_17A53F+2↑j
                                        ; sub_17A53F+6↑j ...
                JSR     sub_17A573

loc_17A55C:                             ; CODE XREF: sub_17A53F+18↑j
                LDY     byte_53
                LDA     byte_61D,Y
                CMP     #$53 ; 'S'
                BEQ     loc_17A569
                CMP     #$59 ; 'Y'
                BNE     loc_17A571

loc_17A569:                             ; CODE XREF: sub_17A53F+24↑j
                LDA     byte_61E,Y
                ORA     #8
                STA     byte_61E,Y

loc_17A571:                             ; CODE XREF: sub_17A53F+28↑j
                CLC

locret_17A572:                          ; CODE XREF: sub_17A53F+14↑j
                RTS
; End of function sub_17A53F


; =============== S U B R O U T I N E =======================================


sub_17A573:                             ; CODE XREF: sub_17A53F:loc_17A559↑p
                LDA     byte_53
                BMI     loc_17A57A
                JMP     loc_17A57D
; ---------------------------------------------------------------------------

loc_17A57A:                             ; CODE XREF: sub_17A573+2↑j
                JMP     loc_17A723
; ---------------------------------------------------------------------------

loc_17A57D:                             ; CODE XREF: sub_17A573+4↑j
                LDY     #0

loc_17A57F:                             ; CODE XREF: sub_17A573+26↓j
                STY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A594
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A594
                LDA     byte_601,Y
                BMI     loc_17A59D

loc_17A594:                             ; CODE XREF: sub_17A573+11↑j
                                        ; sub_17A573+1A↑j
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A57F
                BMI     loc_17A5A0

loc_17A59D:                             ; CODE XREF: sub_17A573+1F↑j
                JMP     loc_17A6B0
; ---------------------------------------------------------------------------

loc_17A5A0:                             ; CODE XREF: sub_17A573+28↑j
                                        ; sub_17A573+144↓j
                LDY     #0

loc_17A5A2:                             ; CODE XREF: sub_17A573+4E↓j
                STY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A5BC
                LDA     byte_601,Y
                BMI     loc_17A5BC
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A5BC
                JSR     sub_F673
                BCC     loc_17A5C5

loc_17A5BC:                             ; CODE XREF: sub_17A573+34↑j
                                        ; sub_17A573+39↑j ...
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A5A2
                BMI     loc_17A5E9

loc_17A5C5:                             ; CODE XREF: sub_17A573+47↑j
                LDX     #0
                LDY     #0

loc_17A5C9:                             ; CODE XREF: sub_17A573+6D↓j
                LDA     byte_600,Y
                BEQ     loc_17A5DB
                LDA     byte_601,Y
                BMI     loc_17A5DB
                JSR     sub_F673
                BCS     loc_17A5DB
                INX
                STY     byte_54

loc_17A5DB:                             ; CODE XREF: sub_17A573+59↑j
                                        ; sub_17A573+5E↑j ...
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A5C9
                CPX     #1
                BCC     loc_17A611
                JMP     loc_17A623
; ---------------------------------------------------------------------------

loc_17A5E9:                             ; CODE XREF: sub_17A573+50↑j
                                        ; sub_17A573+CA↓j ...
                LDY     #0

loc_17A5EB:                             ; CODE XREF: sub_17A573+96↓j
                STY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A604
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A604
                LDA     byte_601,Y
                BMI     loc_17A604
                AND     #$70 ; 'p'
                BNE     loc_17A60E

loc_17A604:                             ; CODE XREF: sub_17A573+7D↑j
                                        ; sub_17A573+86↑j ...
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17A5EB
                JMP     loc_17A690
; ---------------------------------------------------------------------------

loc_17A60E:                             ; CODE XREF: sub_17A573+8F↑j
                JMP     loc_17A659
; ---------------------------------------------------------------------------

loc_17A611:                             ; CODE XREF: sub_17A573+71↑j
                LDA     #$C
                JSR     loc_17A6C2
                BCC     locret_17A622
                LDA     #$B
                JSR     loc_17A6C2
                BCC     locret_17A622
                JMP     loc_17A623
; ---------------------------------------------------------------------------

locret_17A622:                          ; CODE XREF: sub_17A573+A3↑j
                                        ; sub_17A573+AA↑j
                RTS
; ---------------------------------------------------------------------------

loc_17A623:                             ; CODE XREF: sub_17A573+73↑j
                                        ; sub_17A573+AC↑j
                LDA     #$A
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDA     #9
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDA     #8
                JSR     loc_17A6C2
                BCC     loc_17A651
                LDY     byte_53
                JSR     sub_17BFAA
                BCS     loc_17A5E9
                CPX     #$7C ; '|'
                BEQ     loc_17A5E9
                CPX     #$84
                BEQ     loc_17A5E9
                TYA
                LDY     byte_53
                STA     unk_610,Y
                TXA
                STA     byte_61D,Y

loc_17A651:                             ; CODE XREF: sub_17A573+B5↑j
                                        ; sub_17A573+BC↑j ...
                LDA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A659:                             ; CODE XREF: sub_17A573:loc_17A60E↑j
                LDY     byte_54
                LDA     byte_601,Y
                TAX
                AND     #$20 ; ' '
                BNE     loc_17A670
                TXA
                AND     #$10
                BNE     loc_17A677
                TXA
                AND     #$40 ; '@'
                BNE     loc_17A67E
                JMP     loc_17A685
; ---------------------------------------------------------------------------

loc_17A670:                             ; CODE XREF: sub_17A573+EE↑j
                LDA     #$11
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A677:                             ; CODE XREF: sub_17A573+F3↑j
                LDA     #$13
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A67E:                             ; CODE XREF: sub_17A573+F8↑j
                LDA     #$12
                JSR     loc_17A6C2
                BCC     loc_17A688

loc_17A685:                             ; CODE XREF: sub_17A573+FA↑j
                JMP     loc_17A690
; ---------------------------------------------------------------------------

loc_17A688:                             ; CODE XREF: sub_17A573+102↑j
                                        ; sub_17A573+109↑j ...
                LDA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A690:                             ; CODE XREF: sub_17A573+98↑j
                                        ; sub_17A573:loc_17A685↑j
                LDY     byte_53
                LDA     #1
                STA     byte_61D,Y

loc_17A697:                             ; CODE XREF: sub_17A573+12F↓j
                                        ; sub_17A573+134↓j
                JSR     sub_F1ED
                AND     #$E0
                ORA     #$80
                TAY
                LDA     byte_600,Y
                BEQ     loc_17A697
                LDA     byte_601,Y
                BMI     loc_17A697
                TYA
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A6B0:                             ; CODE XREF: sub_17A573:loc_17A59D↑j
                LDA     #$14
                JSR     loc_17A6C2
                BCC     loc_17A6BA
                JMP     loc_17A5A0
; ---------------------------------------------------------------------------

loc_17A6BA:                             ; CODE XREF: sub_17A573+142↑j
                LDY     byte_53
                LDA     byte_54
                STA     byte_61C,Y
                RTS
; ---------------------------------------------------------------------------

loc_17A6C2:                             ; CODE XREF: sub_17A573+A0↑p
                                        ; sub_17A573+A7↑p ...
                STA     Pointer
                JSR     sub_17A86B
                LDA     Pointer
                LSR     A
                LSR     A
                LSR     A
                TAY
                LDA     Pointer
                AND     #7
                TAX
                INX
                SEC
                LDA     #0

loc_17A6D6:                             ; CODE XREF: sub_17A573+165↓j
                ROR     A
                DEX
                BNE     loc_17A6D6
                STA     Pointer+1
                LDA     (pCharacter),Y
                AND     Pointer+1
                BEQ     loc_17A721
                LDA     #0
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                ASL     Pointer
                ROL     A
                STA     Pointer+1
                CLC
                LDA     Pointer
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$9E
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (Pointer),Y
                LDY     byte_53
                STA     byte_61D,Y
                LDY     #7
                LDA     (Pointer),Y
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                JSR     bank16          ; set memory bank $16 at $8000
                JSR     sub_17B1D1
                BCC     loc_17A721
                JSR     sub_17B1C5
                BCC     loc_17A721
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A721:                             ; CODE XREF: sub_17A573+16D↑j
                                        ; sub_17A573+1A5↑j ...
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17A723:                             ; CODE XREF: sub_17A573:loc_17A57A↑j
                JSR     sub_F1ED
                AND     #7
                CLC
                ADC     byte_53
                TAY
                LDA     unk_610,Y
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17AC23
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17A573            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17A7A3, sub_17A740, sub_17A74A

; =============== S U B R O U T I N E =======================================


sub_17A740:                             ; CODE XREF: sub_17A740+5↓j
                                        ; DATA XREF: BANK17:A73A↑o
                JSR     sub_17A7AB
                LDA     byte_54
                BPL     sub_17A740
                JMP     sub_17A7A3
; End of function sub_17A740


; =============== S U B R O U T I N E =======================================


sub_17A74A:                             ; DATA XREF: BANK17:A73A↑o
                LDA     byte_53
                BPL     loc_17A796
                LDA     byte_56
                CMP     #3
                BNE     loc_17A760
                LDX     #3

loc_17A756:                             ; CODE XREF: sub_17A74A+14↓j
                LDA     #6
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A756

loc_17A760:                             ; CODE XREF: sub_17A74A+8↑j
                LDA     byte_56
                CMP     #4
                BNE     loc_17A78A
                LDX     #3

loc_17A768:                             ; CODE XREF: sub_17A74A+26↓j
                LDA     #1
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A768
                LDX     #3

loc_17A774:                             ; CODE XREF: sub_17A74A+32↓j
                LDA     #2
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A774
                LDX     #3

loc_17A780:                             ; CODE XREF: sub_17A74A+3E↓j
                LDA     #4
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A780

loc_17A78A:                             ; CODE XREF: sub_17A74A+1A↑j
                LDX     #3

loc_17A78C:                             ; CODE XREF: sub_17A74A+4A↓j
                LDA     #7
                JSR     sub_17A7BE
                BCS     loc_17A7A0
                DEX
                BPL     loc_17A78C

loc_17A796:                             ; CODE XREF: sub_17A74A+2↑j
                                        ; sub_17A74A+51↓j
                JSR     sub_17A7AB
                LDA     byte_54
                BMI     loc_17A796
                JMP     sub_17A7A3
; ---------------------------------------------------------------------------

loc_17A7A0:                             ; CODE XREF: sub_17A74A+11↑j
                                        ; sub_17A74A+23↑j ...
                JMP     sub_17A7A3
; End of function sub_17A74A


; =============== S U B R O U T I N E =======================================


sub_17A7A3:                             ; CODE XREF: sub_17A740+7↑j
                                        ; sub_17A74A+53↑j ...
                LDA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                RTS
; End of function sub_17A7A3


; =============== S U B R O U T I N E =======================================


sub_17A7AB:                             ; CODE XREF: sub_17A740↑p
                                        ; sub_17A74A:loc_17A796↑p ...
                JSR     sub_F1ED
                AND     #OtherNMIFlags
                TAY
                LDA     byte_600,Y
                BEQ     sub_17A7AB
                LDA     byte_601,Y
                BMI     sub_17A7AB
                STY     byte_54
                RTS
; End of function sub_17A7AB


; =============== S U B R O U T I N E =======================================


sub_17A7BE:                             ; CODE XREF: sub_17A74A+E↑p
                                        ; sub_17A74A+20↑p ...
                CMP     CurrentPlayer.PureSave.CharactersNum,X
                BNE     loc_17A7D8
                TXA
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                ASL     A
                TAY
                LDA     byte_600,Y
                BEQ     loc_17A7D8
                LDA     byte_601,Y
                BMI     loc_17A7D8
                STY     byte_54
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17A7D8:                             ; CODE XREF: sub_17A7BE+3↑j
                                        ; sub_17A7BE+F↑j ...
                CLC
                RTS
; End of function sub_17A7BE


; =============== S U B R O U T I N E =======================================


sub_17A7DA:                             ; CODE XREF: sub_17A53F+11↑p
                                        ; sub_17A847:loc_17A865↓j ...
                JSR     sub_17AC06

loc_17A7DD:                             ; CODE XREF: sub_17A802+C↓j
                                        ; sub_17A847:loc_17A868↓j ...
                LDA     #2
                LDX     CurrentGame.field_21C
                BPL     loc_17A7E6
                LDA     #$13

loc_17A7E6:                             ; CODE XREF: sub_17A7DA+8↑j
                JSR     sub_F4CE
                JSR     sub_17A90D
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17A7DA            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17A802, sub_17A814, sub_17A847, sub_17A87D, sub_17A888
                .WORD sub_17A8BA, sub_17A8BF, sub_17A8E2, sub_17A8E7
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_6. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17A802:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #1
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17A962
                BCC     loc_17A811
                JMP     loc_17A7DD
; ---------------------------------------------------------------------------

loc_17A811:                             ; CODE XREF: sub_17A802+A↑j
                JMP     nullsub_6
; End of function sub_17A802


; =============== S U B R O U T I N E =======================================


sub_17A814:                             ; DATA XREF: BANK17:A7EF↑o
                JSR     wait_nmi_processed
                LDA     #1
                STA     byte_59
                LDA     #$14
                STA     SpriteTable.pFrame+$E0
                LDA     #$97
                STA     SpriteTable.pFrame+$E1
                LDA     #4
                STA     SpriteTable.Tiles+$E0
                LDA     #0
                STA     SpriteTable.TileID+$E0
                STA     SpriteTable.field_4+$E0
                STA     SpriteTable.field_5+$E0
                LDA     #$D0
                STA     SpriteTable.PosX+$E0
                LDA     #$47 ; 'G'
                STA     SpriteTable.PosY+$E0
                LDA     #1
                STA     NMIFlags
                CLC
                JMP     nullsub_6
; End of function sub_17A814


; =============== S U B R O U T I N E =======================================


sub_17A847:                             ; DATA XREF: BANK17:A7EF↑o
                JSR     sub_17A86B
                LDA     #0
                STA     Pointer
                LDY     #7

loc_17A850:                             ; CODE XREF: sub_17A847+10↓j
                LDA     (pCharacter),Y
                ORA     Pointer
                STA     Pointer
                DEY
                BNE     loc_17A850
                LDA     Pointer
                BEQ     loc_17A868
                JSR     sub_17AB10
                BCS     loc_17A865
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A865:                             ; CODE XREF: sub_17A847+19↑j
                JMP     sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A868:                             ; CODE XREF: sub_17A847+14↑j
                JMP     loc_17A7DD
; End of function sub_17A847


; =============== S U B R O U T I N E =======================================


sub_17A86B:                             ; CODE XREF: sub_17A573+151↑p
                                        ; sub_17A847↑p
                LDY     byte_53
                CLC
                LDA     pPPUTab,Y
                ADC     #$30 ; '0'
                STA     pCharacter
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     pCharacter+1
                RTS
; End of function sub_17A86B


; =============== S U B R O U T I N E =======================================


sub_17A87D:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$59 ; 'Y'

loc_17A87F:                             ; CODE XREF: sub_17A8BA+2↓j
                                        ; sub_17A8E2+2↓j
                LDY     byte_53
                STA     byte_61D,Y
                CLC
                JMP     nullsub_6
; End of function sub_17A87D


; =============== S U B R O U T I N E =======================================


sub_17A888:                             ; DATA XREF: BANK17:A7EF↑o
                LDY     byte_53
                CLC
                LDA     pPPUTab,Y
                ADC     #$20 ; ' '
                STA     pCharacter
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     pCharacter+1
                LDA     #0
                STA     Pointer
                LDY     #7

loc_17A89F:                             ; CODE XREF: sub_17A888+1E↓j
                LDA     (pCharacter),Y
                ORA     Pointer
                STA     Pointer
                DEY
                BPL     loc_17A89F
                LDA     Pointer
                BEQ     loc_17A8B7
                JSR     sub_17AA08
                BCS     loc_17A8B4
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A8B4:                             ; CODE XREF: sub_17A888+27↑j
                JMP     sub_17A7DA
; ---------------------------------------------------------------------------

loc_17A8B7:                             ; CODE XREF: sub_17A888+22↑j
                JMP     loc_17A7DD
; End of function sub_17A888


; =============== S U B R O U T I N E =======================================


sub_17A8BA:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$48 ; 'H'
                JMP     loc_17A87F
; End of function sub_17A8BA


; =============== S U B R O U T I N E =======================================


sub_17A8BF:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$80
                STA     byte_54
                JSR     sub_17A991
                BCS     loc_17A8DF
                LDX     CurrentFieldPosition
                LDA     byte_591,X
                TAX
                DEX
                TXA
                STA     byte_54
                LDY     byte_53
                STA     byte_61C,Y
                LDA     #$6F ; 'o'
                STA     byte_61D,Y
                JMP     nullsub_6
; ---------------------------------------------------------------------------

loc_17A8DF:                             ; CODE XREF: sub_17A8BF+7↑j
                JMP     loc_17A7DD
; End of function sub_17A8BF


; =============== S U B R O U T I N E =======================================


sub_17A8E2:                             ; DATA XREF: BANK17:A7EF↑o
                LDA     #$1C
                JMP     loc_17A87F
; End of function sub_17A8E2


; =============== S U B R O U T I N E =======================================


sub_17A8E7:                             ; CODE XREF: sub_17A8E7+D↓j
                                        ; sub_17A8E7+12↓j ...
                SEC
                LDA     byte_53
                BEQ     loc_17A909
                SBC     #$20 ; ' '
                STA     byte_53
                TAY
                LDA     byte_600,Y
                BEQ     sub_17A8E7
                LDA     byte_601,Y
                BMI     sub_17A8E7
                LDA     byte_601,Y
                AND     #$F4
                BNE     sub_17A8E7
                LDA     byte_61E,Y
                AND     #$20 ; ' '
                BNE     sub_17A8E7

loc_17A909:                             ; CODE XREF: sub_17A8E7+3↑j
                SEC
                JMP     nullsub_6
; End of function sub_17A8E7


; =============== S U B R O U T I N E =======================================


sub_17A90D:                             ; CODE XREF: sub_17A7DA+F↑p
                LDX     #$73 ; 's'
                LDY     #$9F
                LDA     byte_56
                CMP     #1
                BNE     loc_17A91E
                LDX     #$83
                LDY     #$9F
                JMP     loc_17A927
; ---------------------------------------------------------------------------

loc_17A91E:                             ; CODE XREF: sub_17A90D+8↑j
                LDA     CurrentGame.field_21C
                BPL     loc_17A927
                LDX     #$7B ; '{'
                LDY     #$9F

loc_17A927:                             ; CODE XREF: sub_17A90D+E↑j
                                        ; sub_17A90D+14↑j
                STX     pStr
                STY     pStr+1
                LDX     #$6B ; 'k'
                LDY     #$9F
                STX     pCursor
                STY     pCursor+1
                JSR     short_cursor_update
                BIT     Buttons
                BVS     loc_17A942
                LDA     #9
                JSR     sub_17A945
                LDA     CurrentFieldPosition
                RTS
; ---------------------------------------------------------------------------

loc_17A942:                             ; CODE XREF: sub_17A90D+2B↑j
                LDA     #8
                RTS
; End of function sub_17A90D


; =============== S U B R O U T I N E =======================================


sub_17A945:                             ; CODE XREF: sub_17A90D+2F↑p
                                        ; sub_17AAE9+1E↓p
                STA     Pointer
                LDA     CurrentFieldPosition
                LSR     A
                ASL     A
                CLC
                ADC     PosY
                STA     PosY
                LDA     CurrentFieldPosition
                AND     #1
                BEQ     loc_17A95D
                CLC
                LDA     PosX
                ADC     Pointer
                STA     PosX

loc_17A95D:                             ; CODE XREF: sub_17A945+F↑j
                LDA     #$D
                JMP     sub_F4CE
; End of function sub_17A945


; =============== S U B R O U T I N E =======================================


sub_17A962:                             ; CODE XREF: sub_17A802+7↑p
                                        ; sub_17AA08+35↓p ...
                JSR     sub_17AC23
                BEQ     loc_17A98D
                LDX     #$80
                CMP     #2
                BEQ     loc_17A96F
                LDX     #0

loc_17A96F:                             ; CODE XREF: sub_17A962+9↑j
                STX     Pointer
                LDA     byte_53
                AND     #$80
                EOR     Pointer
                STA     byte_54
                JSR     sub_17A991
                BCS     loc_17A98F
                LDX     CurrentFieldPosition
                LDA     byte_591,X
                TAX
                DEX
                TXA
                STA     byte_54
                LDY     byte_53
                STA     byte_61C,Y

loc_17A98D:                             ; CODE XREF: sub_17A962+3↑j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A98F:                             ; CODE XREF: sub_17A962+1A↑j
                SEC
                RTS
; End of function sub_17A962


; =============== S U B R O U T I N E =======================================


sub_17A991:                             ; CODE XREF: sub_17A8BF+4↑p
                                        ; sub_17A962+17↑p ...
                LDA     #$B
                JSR     sub_F4CE
                JSR     sub_17A9B3
                LDA     #$8B
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                BIT     Buttons
                BVS     loc_17A9B1
                BMI     loc_17A9AD
                JMP     sub_17A991
; ---------------------------------------------------------------------------

loc_17A9AD:                             ; CODE XREF: sub_17A991+17↑j
                LDA     CurrentFieldPosition
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17A9B1:                             ; CODE XREF: sub_17A991+15↑j
                SEC
                RTS
; End of function sub_17A991


; =============== S U B R O U T I N E =======================================


sub_17A9B3:                             ; CODE XREF: sub_17A991+5↑p
                LDA     #$12
                STA     PosY
                LDX     #0
                STX     byte_591
                STX     byte_592
                STX     byte_593
                STX     unk_594
                INX
                STX     byte_590
                LDA     byte_54
                PHA
                LDY     #4

loc_17A9CE:                             ; CODE XREF: sub_17A9B3+4F↓j
                TYA
                PHA
                LDY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17A9F8
                LDY     byte_54
                BMI     loc_17A9E4
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17A9F8

loc_17A9E4:                             ; CODE XREF: sub_17A9B3+26↑j
                INY
                TYA
                STA     byte_590,X
                INX
                TXA
                PHA
                JSR     sub_17A4BB
                LDA     #$C
                JSR     sub_F4CE
                INC     PosY
                PLA
                TAX

loc_17A9F8:                             ; CODE XREF: sub_17A9B3+22↑j
                                        ; sub_17A9B3+2F↑j
                CLC
                LDA     byte_54
                ADC     #$20 ; ' '
                STA     byte_54
                PLA
                TAY
                DEY
                BNE     loc_17A9CE
                PLA
                STA     byte_54
                RTS
; End of function sub_17A9B3


; =============== S U B R O U T I N E =======================================


sub_17AA08:                             ; CODE XREF: sub_17A888+24↑p
                LDA     #$E
                JSR     sub_F4CE
                JSR     sub_17AA67
                JSR     sub_17AAE9
                BCS     loc_17AA65
                LDY     byte_53
                LDA     CurrentFieldPosition
                STA     unk_610,Y
                LDY     CurrentFieldPosition
                LDA     (pCharacter),Y
                JSR     sub_17AAA4
                LDY     byte_53
                JSR     sub_17AC49
                BCS     loc_17AA43
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                CMP     #0
                BEQ     loc_17AA4C
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17A962
                BCS     loc_17AA65
                RTS
; ---------------------------------------------------------------------------

loc_17AA43:                             ; CODE XREF: sub_17AA08+20↑j
                LDX     byte_53
                JSR     sub_17A4BB
                LDX     #$14
                BNE     loc_17AA5E

loc_17AA4C:                             ; CODE XREF: sub_17AA08+2E↑j
                LDX     #$10
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #3
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                CMP     #0
                BEQ     loc_17AA5E
                LDX     #$11

loc_17AA5E:                             ; CODE XREF: sub_17AA08+42↑j
                                        ; sub_17AA08+52↑j
                TXA
                JSR     sub_F4CE
                JSR     wait_A_B

loc_17AA65:                             ; CODE XREF: sub_17AA08+B↑j
                                        ; sub_17AA08+38↑j
                SEC
                RTS
; End of function sub_17AA08


; =============== S U B R O U T I N E =======================================


sub_17AA67:                             ; CODE XREF: sub_17AA08+5↑p
                LDY     #0

loc_17AA69:                             ; CODE XREF: sub_17AA67+3A↓j
                TYA
                PHA
                AND     #1
                TAX
                LDA     unk_169FB2,X
                STA     PosX
                TYA
                LSR     A
                TAX
                LDA     unk_169FB4,X
                STA     PosY
                LDA     (pCharacter),Y
                BEQ     loc_17AA9C
                JSR     sub_17AAA4
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #4
                STA     unk_588
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     unk_589
                INY
                LDA     (AddrForJmp),Y
                STA     unk_58A
                LDA     #$F
                JSR     sub_F4CE

loc_17AA9C:                             ; CODE XREF: sub_17AA67+16↑j
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17AA69
                RTS
; End of function sub_17AA67


; =============== S U B R O U T I N E =======================================


sub_17AAA4:                             ; CODE XREF: sub_17AA08+18↑p
                                        ; sub_17AA67+18↑p ...
                LDX     #0
                STX     AddrForJmp+1
                LDX     #3

loc_17AAAA:                             ; CODE XREF: sub_17AAA4+A↓j
                ASL     A
                ROL     AddrForJmp+1
                DEX
                BNE     loc_17AAAA
                CLC
                ADC     #0
                STA     AddrForJmp
                LDA     AddrForJmp+1
                ADC     #$98
                STA     AddrForJmp+1
                RTS
; End of function sub_17AAA4


; =============== S U B R O U T I N E =======================================


sub_17AABC:                             ; CODE XREF: sub_17BFAA↓p
                CLC
                LDA     pPPUTab,Y
                ADC     #$20 ; ' '
                STA     Pointer
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     Pointer+1
                RTS
; End of function sub_17AABC


; =============== S U B R O U T I N E =======================================


sub_17AACC:                             ; CODE XREF: sub_17AE5D+7↓p
                                        ; sub_17AE8E+7↓p ...
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #$21 ; '!'
                STA     byte_590
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     byte_591
                INY
                LDA     (AddrForJmp),Y
                STA     byte_592
                LDA     #0
                STA     byte_593
                JMP     bank16          ; set memory bank $16 at $8000
; End of function sub_17AACC


; =============== S U B R O U T I N E =======================================


sub_17AAE9:                             ; CODE XREF: sub_17AA08+8↑p
                                        ; sub_17AAE9+19↓j
                LDA     #$95
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                LDA     pCharacter
                STA     pStr
                LDA     pCharacter+1
                STA     pStr+1
                JSR     short_cursor_update
                BIT     Buttons
                BVS     loc_17AB0E
                BMI     loc_17AB05
                JMP     sub_17AAE9
; ---------------------------------------------------------------------------

loc_17AB05:                             ; CODE XREF: sub_17AAE9+17↑j
                LDA     #$C
                JSR     sub_17A945
                LDA     CurrentFieldPosition
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AB0E:                             ; CODE XREF: sub_17AAE9+15↑j
                SEC
                RTS
; End of function sub_17AAE9


; =============== S U B R O U T I N E =======================================


sub_17AB10:                             ; CODE XREF: sub_17A847+16↑p
                                        ; sub_17AB10+25↓j
                LDY     #1

loc_17AB12:                             ; CODE XREF: sub_17AB10+27↓j
                LDA     (pCharacter),Y
                BEQ     loc_17AB32
                TYA
                PHA
                LDA     #$E
                JSR     sub_F4CE
                LDA     #$12
                JSR     sub_F4CE
                JSR     sub_17AB61
                JSR     sub_17ABC2
                PLA
                TAY
                CPX     #1
                BEQ     loc_17AB39
                CPX     #2
                BEQ     loc_17AB5F

loc_17AB32:                             ; CODE XREF: sub_17AB10+4↑j
                INY
                CPY     #8
                BEQ     sub_17AB10
                BNE     loc_17AB12

loc_17AB39:                             ; CODE XREF: sub_17AB10+1C↑j
                LDY     CurrentFieldPosition
                LDA     byte_580,Y
                JSR     set_jmp_addr
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                BEQ     loc_17AB57
                LDY     byte_53
                STA     byte_61D,Y
                PHA
                JSR     bank16          ; set memory bank $16 at $8000
                PLA
                JMP     sub_17A962
; ---------------------------------------------------------------------------

loc_17AB57:                             ; CODE XREF: sub_17AB10+38↑j
                LDA     #$10
                JSR     sub_F4CE
                JSR     wait_A_B

loc_17AB5F:                             ; CODE XREF: sub_17AB10+20↑j
                SEC
                RTS
; End of function sub_17AB10


; =============== S U B R O U T I N E =======================================


sub_17AB61:                             ; CODE XREF: sub_17AB10+12↑p
                TYA
                ASL     A
                ASL     A
                ASL     A
                STA     Pointer
                LDA     #$80
                STA     Pointer+1
                LDX     #0

loc_17AB6D:                             ; CODE XREF: sub_17AB61+21↓j
                LDA     #0
                STA     byte_580,X
                LDA     (pCharacter),Y
                AND     Pointer+1
                BEQ     loc_17AB7D
                LDA     Pointer
                STA     byte_580,X

loc_17AB7D:                             ; CODE XREF: sub_17AB61+15↑j
                INC     Pointer
                INX
                LSR     Pointer+1
                BCC     loc_17AB6D
                LDY     #0

loc_17AB86:                             ; CODE XREF: sub_17AB61+5E↓j
                TYA
                PHA
                AND     #1
                TAX
                LDA     unk_169FB2,X
                STA     PosX
                TYA
                LSR     A
                TAX
                LDA     unk_169FB4,X
                STA     PosY
                LDA     byte_580,Y
                BEQ     loc_17ABBA
                JSR     set_jmp_addr
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #4
                STA     unk_588
                LDY     #0
                LDA     (AddrForJmp),Y
                STA     unk_589
                INY
                LDA     (AddrForJmp),Y
                STA     unk_58A
                LDA     #$F
                JSR     sub_F4CE

loc_17ABBA:                             ; CODE XREF: sub_17AB61+3A↑j
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17AB86
                RTS
; End of function sub_17AB61


; =============== S U B R O U T I N E =======================================


sub_17ABC2:                             ; CODE XREF: sub_17AB10+15↑p
                                        ; sub_17ABC2+1B↓j ...
                LDA     #$A7
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                LDA     Buttons
                AND     #6
                BNE     loc_17ABE6
                LDA     Buttons
                AND     #$81
                BNE     loc_17ABE0
                BIT     Buttons
                BVS     loc_17ABE3
                JMP     sub_17ABC2
; ---------------------------------------------------------------------------

loc_17ABE0:                             ; CODE XREF: sub_17ABC2+15↑j
                LDX     #0
                RTS
; ---------------------------------------------------------------------------

loc_17ABE3:                             ; CODE XREF: sub_17ABC2+19↑j
                LDX     #2
                RTS
; ---------------------------------------------------------------------------

loc_17ABE6:                             ; CODE XREF: sub_17ABC2+F↑j
                LDA     #$9D
                STA     pCursor
                LDA     #$9F
                STA     pCursor+1
                JSR     cursor_update
                LDA     Buttons
                AND     #8
                BNE     sub_17ABC2
                BIT     Buttons
                BVS     loc_17AC03
                BMI     loc_17AC00
                JMP     sub_17ABC2
; ---------------------------------------------------------------------------

loc_17AC00:                             ; CODE XREF: sub_17ABC2+39↑j
                LDX     #1
                RTS
; ---------------------------------------------------------------------------

loc_17AC03:                             ; CODE XREF: sub_17ABC2+37↑j
                LDX     #2
                RTS
; End of function sub_17ABC2


; =============== S U B R O U T I N E =======================================


sub_17AC06:                             ; CODE XREF: sub_17A7DA↑p
                LDA     #$A
                JSR     sub_F4CE
                JSR     sub_17A4BB
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     #0
                STA     byte_70
                LDA     #$7A ; 'z'
                STA     PointerTilePack
                LDA     #$8E
                STA     PointerTilePack+1
                JSR     loc_C6DB
                JMP     bank16          ; set memory bank $16 at $8000
; End of function sub_17AC06


; =============== S U B R O U T I N E =======================================


sub_17AC23:                             ; CODE XREF: sub_17A573+1C1↑p
                                        ; sub_17A962↑p
                PHA
                AND     #3
                TAX
                INX
                LDA     #1
                SEC

loc_17AC2B:                             ; CODE XREF: sub_17AC23+B↓j
                ROR     A
                ROR     A
                DEX
                BNE     loc_17AC2B
                STA     Pointer
                PLA
                LSR     A
                LSR     A
                TAY
                LDA     unk_169EC7,Y
                AND     Pointer
                STA     Pointer+1

loc_17AC3D:                             ; CODE XREF: sub_17AC23+20↓j
                LSR     Pointer
                BCS     loc_17AC46
                LSR     Pointer+1
                JMP     loc_17AC3D
; ---------------------------------------------------------------------------

loc_17AC46:                             ; CODE XREF: sub_17AC23+1C↑j
                LDA     Pointer+1
                RTS
; End of function sub_17AC23


; =============== S U B R O U T I N E =======================================


sub_17AC49:                             ; CODE XREF: sub_17AA08+1D↑p
                JSR     bank0           ; set memory bank 0 at $8000
                LDA     byte_611,Y
                STA     pTileID
                TAX
                SEC
                LDA     #0

loc_17AC55:                             ; CODE XREF: sub_17AC49+E↓j
                ROL     A
                DEX
                BNE     loc_17AC55
                STA     TilesCount
                LDY     #2
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                AND     TilesCount
                BEQ     loc_17AC68
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AC68:                             ; CODE XREF: sub_17AC49+1B↑j
                SEC
                RTS
; End of function sub_17AC49


; =============== S U B R O U T I N E =======================================


sub_17AC6A:                             ; CODE XREF: sub_17A000+1A9↑p
                JSR     sub_17B75A
                BCS     loc_17AC91
                LDX     #8

loc_17AC71:                             ; CODE XREF: sub_17AC6A+1E↓j
                TXA
                PHA
                JSR     sub_17ACA5
                JSR     sub_17ACD6      ; out message, animation
                LDA     #$FF
                LDY     byte_53
                STA     byte_61D,Y
                JSR     sub_17B75A      ; check win, lose, out message
                BCS     loc_17AC90
                PLA
                TAX
                DEX
                BNE     loc_17AC71
                DEC     byte_5B
                BEQ     loc_17AC93
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17AC90:                             ; CODE XREF: sub_17AC6A+19↑j
                PLA

loc_17AC91:                             ; CODE XREF: sub_17AC6A+3↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17AC93:                             ; CODE XREF: sub_17AC6A+22↑j
                LDA     byte_56
                CMP     #1
                BEQ     loc_17ACA3
                LDX     #$64 ; 'd'
                JSR     delay
                LDA     #$92
                JSR     sub_17A3F8

loc_17ACA3:                             ; CODE XREF: sub_17AC6A+2D↑j
                SEC
                RTS
; End of function sub_17AC6A


; =============== S U B R O U T I N E =======================================


sub_17ACA5:                             ; CODE XREF: sub_17AC6A+9↑p
                LDA     #0
                STA     Pointer
                STA     Pointer+1

loc_17ACAB:                             ; CODE XREF: sub_17ACA5+2A↓j
                LDY     Pointer
                LDA     byte_61D,Y
                CMP     #$FF
                BEQ     loc_17ACC8
                CMP     #$5E ; '^'
                BEQ     loc_17ACD3
                LDA     byte_60C,Y
                JSR     sub_F3FD
                CMP     Pointer+1
                BCC     loc_17ACC8
                STA     Pointer+1
                LDA     Pointer
                STA     AddrForJmp

loc_17ACC8:                             ; CODE XREF: sub_17ACA5+D↑j
                                        ; sub_17ACA5+1B↑j
                CLC
                LDA     Pointer
                ADC     #$20 ; ' '
                STA     Pointer
                BNE     loc_17ACAB
                LDY     AddrForJmp

loc_17ACD3:                             ; CODE XREF: sub_17ACA5+11↑j
                STY     byte_53
                RTS
; End of function sub_17ACA5


; =============== S U B R O U T I N E =======================================


sub_17ACD6:                             ; CODE XREF: sub_17AC6A+C↑p
                LDY     byte_53
                LDA     byte_600,Y
                BNE     loc_17ACE2
                LDA     #0
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACE2:                             ; CODE XREF: sub_17ACD6+5↑j
                LDA     byte_601,Y
                AND     #$80
                BEQ     loc_17ACEE
                LDA     #0
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACEE:                             ; CODE XREF: sub_17ACD6+11↑j
                LDA     byte_601,Y
                AND     #$40 ; '@'
                BEQ     loc_17ACFA
                LDA     #$47 ; 'G'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17ACFA:                             ; CODE XREF: sub_17ACD6+1D↑j
                LDA     byte_601,Y
                AND     #$20 ; ' '
                BEQ     loc_17AD06
                LDA     #$46 ; 'F'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD06:                             ; CODE XREF: sub_17ACD6+29↑j
                LDA     byte_601,Y
                AND     #$10
                BEQ     loc_17AD2B
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AD26
                LDA     byte_601,Y
                AND     #$EF
                STA     byte_601,Y
                STY     byte_54
                JSR     statistical_frame
                LDA     #$8E
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD26:                             ; CODE XREF: sub_17ACD6+3C↑j
                LDA     #$3C ; '<'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD2B:                             ; CODE XREF: sub_17ACD6+35↑j
                LDA     byte_601,Y
                AND     #4
                BEQ     loc_17AD37
                LDA     #$68 ; 'h'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD37:                             ; CODE XREF: sub_17ACD6+5A↑j
                LDA     byte_61E,Y
                AND     #2
                BEQ     loc_17AD4A
                LDA     byte_61D,Y
                CMP     #$76 ; 'v'
                BEQ     loc_17AD4A
                LDA     #$56 ; 'V'
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD4A:                             ; CODE XREF: sub_17ACD6+66↑j
                                        ; sub_17ACD6+6D↑j
                LDA     byte_61E,Y
                AND     #$20 ; ' '
                BEQ     loc_17AD6A
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17AD65
                LDA     byte_61E,Y
                AND     #$DF
                STA     byte_61E,Y
                LDA     #$8B
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD65:                             ; CODE XREF: sub_17ACD6+80↑j
                LDA     #$1C
                JMP     loc_17ADC1
; ---------------------------------------------------------------------------

loc_17AD6A:                             ; CODE XREF: sub_17ACD6+79↑j
                LDA     byte_601,Y
                AND     #8
                BEQ     loc_17AD76
                LDA     #$3A ; ':'
                JSR     sub_17A3F8

loc_17AD76:                             ; CODE XREF: sub_17ACD6+99↑j
                LDY     byte_53
                LDA     byte_61D,Y

loc_17AD7B:                             ; CODE XREF: sub_17B3DD+3D↓p
                LDY     #0
                STY     Pointer+1
                ASL     A
                ROL     Pointer+1
                STA     Pointer
                CLC
                LDA     #$FB
                ADC     Pointer
                STA     Pointer
                LDA     #$97
                ADC     Pointer+1
                STA     Pointer+1
                LDY     #0
                LDA     (Pointer),Y
                STA     word_5E
                INY
                LDA     (Pointer),Y
                STA     word_5E+1

loc_17AD9C:                             ; CODE XREF: sub_17AF3E+D↓j
                                        ; sub_17AF7B+9↓p ...
                LDY     #0
                LDA     (word_5E),Y
                LSR     A
                LSR     A
                LSR     A
                LSR     A
                JSR     sub_F2D5        ; trap no return
; ---------------------------------------------------------------------------
                .WORD sub_17ADC4, sub_17ADC9, sub_17ADF1, sub_17AE5D, sub_17B804
                .WORD sub_17AEEA, sub_17AF08, sub_17AF31, sub_17AF39, sub_17AF7B
                .WORD sub_17AF92, sub_17AF98, sub_17AE8E
; ---------------------------------------------------------------------------

loc_17ADC1:                             ; CODE XREF: sub_17ACD6+9↑j
                                        ; sub_17ACD6+15↑j ...
                JMP     sub_17A3F8
; End of function sub_17ACD6


; =============== S U B R O U T I N E =======================================


sub_17ADC4:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDA     #1
                JMP     sub_17AFE1
; End of function sub_17ADC4


; =============== S U B R O U T I N E =======================================


sub_17ADC9:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17ADC9            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17ADEC, sub_17AFED, sub_17AFF2, sub_17AFFE, sub_17B008
                .WORD sub_17B012, sub_17B022, sub_17B032, sub_17B037, sub_17B041
                .WORD sub_17B04B, sub_17B055, sub_17B05F

; =============== S U B R O U T I N E =======================================


sub_17ADEC:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #1
                JMP     sub_17AFCD
; End of function sub_17ADEC


; =============== S U B R O U T I N E =======================================


sub_17ADF1:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                LDX     #0
                STX     Pointer+1
                LDX     #3

loc_17ADFB:                             ; CODE XREF: sub_17ADF1+E↓j
                ASL     A
                ROL     Pointer+1
                DEX
                BNE     loc_17ADFB
                CLC
                ADC     #0
                STA     Pointer
                LDA     Pointer+1
                ADC     #$9E
                STA     Pointer+1
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #7
                LDA     (Pointer),Y
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                LDA     #$21 ; '!'
                STA     byte_590
                LDY     #0
                LDA     (Pointer),Y
                STA     byte_591
                INY
                LDA     (Pointer),Y
                STA     byte_592
                LDA     #0
                STA     byte_593
                JSR     bank16          ; set memory bank $16 at $8000
                LDA     #$64 ; 'd'
                JSR     sub_17A3F8
                JSR     sub_17B1C5
                BCC     loc_17AE53
                JSR     sub_17B1D1
                BCC     loc_17AE58
                JSR     sub_17B0A4
                LDA     byte_58
                JSR     sub_F41F
                LDA     #0
                STA     byte_58
                LDA     #2
                JMP     sub_17AFCD
; ---------------------------------------------------------------------------

loc_17AE53:                             ; CODE XREF: sub_17ADF1+4A↑j
                LDA     #$51 ; 'Q'
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17AE58:                             ; CODE XREF: sub_17ADF1+4F↑j
                LDA     #$54 ; 'T'
                JMP     sub_17A3F8
; End of function sub_17ADF1


; =============== S U B R O U T I N E =======================================


sub_17AE5D:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_17AAA4
                JSR     sub_17AACC
                LDY     byte_53
                BMI     loc_17AE7B
                JSR     sram_write_enable
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                CMP     #1
                BNE     loc_17AE7B
                JSR     sub_17B4E5

loc_17AE7B:                             ; CODE XREF: sub_17AE5D+C↑j
                                        ; sub_17AE5D+19↑j
                LDA     #$63 ; 'c'
                JSR     sub_17A3F8
                LDA     byte_58
                JSR     sub_F41F
                LDA     #0
                STA     byte_58
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AE5D


; =============== S U B R O U T I N E =======================================


sub_17AE8E:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_17AAA4
                JSR     sub_17AACC
                LDY     byte_53
                BMI     loc_17AEE5
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2D5        ; trap function with no return
; End of function sub_17AE8E            ; transfers control to a function whose address is selected from the table located after the call of this function
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17AEAB, sub_17AEBD, sub_17AECF

; =============== S U B R O U T I N E =======================================


sub_17AEAB:                             ; DATA XREF: BANK17:AEA5↑o
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$75 ; 'u'
                JSR     sub_17A3F8
                JMP     loc_17AEE5
; End of function sub_17AEAB


; =============== S U B R O U T I N E =======================================


sub_17AEBD:                             ; DATA XREF: BANK17:AEA5↑o
                JSR     sub_F1ED
                AND     #$E0
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$78 ; 'x'
                JSR     sub_17A3F8
                JMP     loc_17AEE5
; End of function sub_17AEBD


; =============== S U B R O U T I N E =======================================


sub_17AECF:                             ; DATA XREF: BANK17:AEA5↑o
                JSR     sram_write_enable
                DEC     CurrentGame.PureSave.field_1F
                JSR     sram_read_enable
                LDA     CurrentGame.PureSave.field_1F
                BNE     loc_17AEE5
                JSR     sub_17B4E5
                LDA     #$91
                JSR     sub_17A3F8

loc_17AEE5:                             ; CODE XREF: sub_17AE8E+C↑j
                                        ; sub_17AEAB+5↑j ...
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AECF


; =============== S U B R O U T I N E =======================================


sub_17AEEA:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap no return
; End of function sub_17AEEA

; ---------------------------------------------------------------------------
                .WORD sub_17AF03, nullsub_4, sub_17B1E0, sub_17B202, sub_17B21D
                .WORD sub_17B238, sub_17B23D, sub_17B248

; =============== S U B R O U T I N E =======================================


sub_17AF03:                             ; DATA XREF: BANK17:AEF3↑o
                LDA     #1
                JMP     sub_17AFCD
; End of function sub_17AF03


; =============== S U B R O U T I N E =======================================


sub_17AF08:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                STA     pTileID
                DEY
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17AF08            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17AF2C, sub_17B250, sub_17B2D9, sub_17B2F9, sub_17B302
                .WORD sub_17B319, sub_17B320, sub_17B3C2, sub_17B3CE, sub_17B3D3
                .WORD sub_17B3D8

; =============== S U B R O U T I N E =======================================


sub_17AF2C:                             ; DATA XREF: BANK17:AF16↑o
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17AF2C


; =============== S U B R O U T I N E =======================================


sub_17AF31:                             ; DATA XREF: sub_17ACD6+D1↑o
                JSR     sub_17AF53
                BCC     sub_17AF3E
                JMP     sub_17AF4E
; End of function sub_17AF31


; =============== S U B R O U T I N E =======================================


sub_17AF39:                             ; DATA XREF: sub_17ACD6+D1↑o
                JSR     sub_17AF53
                BCC     sub_17AF4E
; End of function sub_17AF39


; =============== S U B R O U T I N E =======================================


sub_17AF3E:                             ; CODE XREF: sub_17AF31+3↑j
                LDY     #1
                LDA     (word_5E),Y
                PHA
                INY
                LDA     (word_5E),Y
                STA     word_5E+1
                PLA
                STA     word_5E
                JMP     loc_17AD9C
; End of function sub_17AF3E


; =============== S U B R O U T I N E =======================================


sub_17AF4E:                             ; CODE XREF: sub_17AF31+5↑j
                                        ; sub_17AF39+3↑j
                LDA     #3
                JMP     sub_17AFCD
; End of function sub_17AF4E


; =============== S U B R O U T I N E =======================================


sub_17AF53:                             ; CODE XREF: sub_17AF31↑p
                                        ; sub_17AF39↑p
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17AF53            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD nullsub_5, sub_17B0B0, sub_17B0CC, sub_17B0F7, sub_17B112
                .WORD sub_17B125, sub_17B131, loc_17B0BC, sub_17B150, sub_17B164
                .WORD sub_17B169, sub_17B174, sub_17B180, sub_17B188, sub_17B194
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_5. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17AF7B:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                JSR     sub_17AFD3
                JSR     loc_17AD9C
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                LDA     #3
                JMP     sub_17AFCD
; End of function sub_17AF7B


; =============== S U B R O U T I N E =======================================


sub_17AF92:                             ; DATA XREF: sub_17ACD6+D1↑o
                JSR     sub_17AFD3
                JMP     loc_17AD9C
; End of function sub_17AF92


; =============== S U B R O U T I N E =======================================


sub_17AF98:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #0
                LDA     (word_5E),Y
                AND     #$F
                TAX
                LDA     #1
                JSR     sub_17AFE1

loc_17AFA4:                             ; CODE XREF: sub_17AF98+28↓j
                TXA
                PHA
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                JSR     loc_17AD9C
                LDA     word_5E
                STA     Pointer
                LDA     word_5E+1
                STA     Pointer+1
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                PLA
                TAX
                DEX
                BNE     loc_17AFA4
                LDA     Pointer
                STA     word_5E
                LDA     Pointer+1
                STA     word_5E+1
                JMP     loc_17AD9C
; End of function sub_17AF98


; =============== S U B R O U T I N E =======================================


sub_17AFCD:                             ; CODE XREF: sub_17ADEC+2↑j
                                        ; sub_17ADF1+5F↑j ...
                JSR     sub_17AFE1
                JMP     loc_17AD9C
; End of function sub_17AFCD


; =============== S U B R O U T I N E =======================================


sub_17AFD3:                             ; CODE XREF: sub_17AF7B+6↑p
                                        ; sub_17AF92↑p
                LDY     #1
                LDA     (word_5E),Y
                PHA
                INY
                LDA     (word_5E),Y
                STA     word_5E+1
                PLA
                STA     word_5E
                RTS
; End of function sub_17AFD3


; =============== S U B R O U T I N E =======================================


sub_17AFE1:                             ; CODE XREF: sub_17ADC4+2↑j
                                        ; sub_17AF98+9↑p ...
                CLC
                ADC     word_5E
                STA     word_5E
                LDA     #0
                ADC     word_5E+1
                STA     word_5E+1
                RTS
; End of function sub_17AFE1


; =============== S U B R O U T I N E =======================================


sub_17AFED:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_53
                JMP     sub_17B513
; End of function sub_17AFED


; =============== S U B R O U T I N E =======================================


sub_17AFF2:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17AFF9
                JMP     sub_17B555
; ---------------------------------------------------------------------------

loc_17AFF9:                             ; CODE XREF: sub_17AFF2+2↑j
                LDA     #1
                STA     byte_47
                RTS
; End of function sub_17AFF2


; =============== S U B R O U T I N E =======================================


sub_17AFFE:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B005
                JMP     sub_17B5D3
; ---------------------------------------------------------------------------

loc_17B005:                             ; CODE XREF: sub_17AFFE+2↑j
                JMP     sub_17B6B2
; End of function sub_17AFFE


; =============== S U B R O U T I N E =======================================


sub_17B008:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B00F
                JMP     sub_17B67C
; ---------------------------------------------------------------------------

loc_17B00F:                             ; CODE XREF: sub_17B008+2↑j
                JMP     sub_17B6F1
; End of function sub_17B008


; =============== S U B R O U T I N E =======================================


sub_17B012:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #$2D ; '-'
                JSR     sub_17A3F8
                JSR     sub_17B069
                BCS     locret_17B021
                LDA     #$40 ; '@'
                JSR     sub_17A3F8

locret_17B021:                          ; CODE XREF: sub_17B012+8↑j
                RTS
; End of function sub_17B012


; =============== S U B R O U T I N E =======================================


sub_17B022:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #$2E ; '.'
                JSR     sub_17A3F8
                JSR     sub_17B069
                BCS     locret_17B031
                LDA     #$41 ; 'A'
                JSR     sub_17A3F8

locret_17B031:                          ; CODE XREF: sub_17B022+8↑j
                RTS
; End of function sub_17B022


; =============== S U B R O U T I N E =======================================


sub_17B032:                             ; DATA XREF: BANK17:ADD2↑o
                LDA     #2
                STA     byte_47
                RTS
; End of function sub_17B032


; =============== S U B R O U T I N E =======================================


sub_17B037:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B03E
                JMP     sub_17B5DA
; ---------------------------------------------------------------------------

loc_17B03E:                             ; CODE XREF: sub_17B037+2↑j
                JMP     sub_17B6BB
; End of function sub_17B037


; =============== S U B R O U T I N E =======================================


sub_17B041:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B048
                JMP     sub_17B5E1
; ---------------------------------------------------------------------------

loc_17B048:                             ; CODE XREF: sub_17B041+2↑j
                JMP     sub_17B6C4
; End of function sub_17B041


; =============== S U B R O U T I N E =======================================


sub_17B04B:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B052
                JMP     sub_17B5E8
; ---------------------------------------------------------------------------

loc_17B052:                             ; CODE XREF: sub_17B04B+2↑j
                JMP     sub_17B6CD
; End of function sub_17B04B


; =============== S U B R O U T I N E =======================================


sub_17B055:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B05C
                JMP     sub_17B5EF
; ---------------------------------------------------------------------------

loc_17B05C:                             ; CODE XREF: sub_17B055+2↑j
                JMP     sub_17B6D6
; End of function sub_17B055


; =============== S U B R O U T I N E =======================================


sub_17B05F:                             ; DATA XREF: BANK17:ADD2↑o
                LDY     byte_54
                BPL     loc_17B066
                JMP     sub_17B5F6
; ---------------------------------------------------------------------------

loc_17B066:                             ; CODE XREF: sub_17B05F+2↑j
                JMP     sub_17B6DF
; End of function sub_17B05F


; =============== S U B R O U T I N E =======================================


sub_17B069:                             ; CODE XREF: sub_17B012+5↑p
                                        ; sub_17B022+5↑p
                LDY     #$80

loc_17B06B:                             ; CODE XREF: sub_17B069+12↓j
                CPY     byte_53
                BEQ     loc_17B076
                LDA     byte_61E,Y
                AND     #1
                BNE     loc_17B07F

loc_17B076:                             ; CODE XREF: sub_17B069+4↑j
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BNE     loc_17B06B
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B07F:                             ; CODE XREF: sub_17B069+B↑j
                STY     byte_54
                JSR     sub_17B513
                LDY     byte_54
                LDA     byte_61E,Y
                AND     #$FE
                STA     byte_61E,Y
                LDA     #0
                STA     byte_61D,Y
                LDY     byte_53
                LDA     byte_600,Y
                LDY     byte_54
                STA     byte_600,Y
                LDA     #$42 ; 'B'
                JSR     sub_17A3F8
                SEC
                RTS
; End of function sub_17B069


; =============== S U B R O U T I N E =======================================


sub_17B0A4:                             ; CODE XREF: sub_17ADF1+51↑p
                LDA     #$19
                LDX     #$FB
                LDY     #$A7            ; BANK19:A7FC
                JSR     bank_A000_a     ; changes the memory bank $A000, transfers the execution of the code after completion of which returns the original memory bank
                                        ; input: A - bank number, YX - (subroutine address - 1)
                                        ; Y - high byte, X - low byte
                JMP     statistical_frame
; End of function sub_17B0A4


; =============== S U B R O U T I N E =======================================


sub_17B0B0:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_53
                LDA     byte_600,Y
                BEQ     loc_17B0CA
                LDA     byte_601,Y
                BMI     loc_17B0CA

loc_17B0BC:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     byte_600,Y
                BEQ     loc_17B0CA
                LDA     byte_601,Y
                BMI     loc_17B0CA
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B0CA:                             ; CODE XREF: sub_17B0B0+5↑j
                                        ; sub_17B0B0+A↑j ...
                SEC
                RTS
; End of function sub_17B0B0


; =============== S U B R O U T I N E =======================================


sub_17B0CC:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_23
                BNE     loc_17B0F3
                LDY     byte_54
                LDA     byte_601,Y
                AND     #$70 ; 'p'
                BNE     loc_17B0F3
                LDA     byte_61E,Y
                BMI     loc_17B0F3
                LDA     unk_60B,Y
                STA     Pointer
                LDY     byte_53
                LDA     unk_60B,Y
                STA     AddrForJmp
                JSR     sub_17B1A2
                LDA     Pointer
                CMP     AddrForJmp
                BCS     loc_17B0F5

loc_17B0F3:                             ; CODE XREF: sub_17B0CC+2↑j
                                        ; sub_17B0CC+B↑j ...
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B0F5:                             ; CODE XREF: sub_17B0CC+25↑j
                SEC
                RTS
; End of function sub_17B0CC


; =============== S U B R O U T I N E =======================================


sub_17B0F7:                             ; DATA XREF: BANK17:AF5C↑o
                JSR     sub_17BFE2
                BCS     locret_17B111
                LDY     byte_53
                LDA     unk_60B,Y
                STA     Pointer
                LDY     byte_54
                LDA     unk_60B,Y
                STA     AddrForJmp
                JSR     sub_17B1A2
                LDA     AddrForJmp
                CMP     Pointer

locret_17B111:                          ; CODE XREF: sub_17B0F7+3↑j
                RTS
; End of function sub_17B0F7


; =============== S U B R O U T I N E =======================================


sub_17B112:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_53
                LDA     byte_61E,Y
                AND     #$80
                EOR     #$80
                ROL     A
                BCS     locret_17B124
                JSR     sub_F1ED
                AND     #$80
                ROL     A

locret_17B124:                          ; CODE XREF: sub_17B112+A↑j
                RTS
; End of function sub_17B112


; =============== S U B R O U T I N E =======================================


sub_17B125:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_53
                BMI     loc_17B12F
                LDA     byte_23
                BEQ     loc_17B12F
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17B12F:                             ; CODE XREF: sub_17B125+2↑j
                                        ; sub_17B125+6↑j
                SEC
                RTS
; End of function sub_17B125


; =============== S U B R O U T I N E =======================================


sub_17B131:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                BMI     loc_17B14C
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #$20 ; ' '

loc_17B141:                             ; CODE XREF: sub_17B131+19↓j
                LDA     (Pointer),Y
                CMP     #$68 ; 'h'
                BEQ     loc_17B14E
                INY
                CPY     #$28 ; '('
                BNE     loc_17B141

loc_17B14C:                             ; CODE XREF: sub_17B131+2↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B14E:                             ; CODE XREF: sub_17B131+14↑j
                CLC
                RTS
; End of function sub_17B131


; =============== S U B R O U T I N E =======================================


sub_17B150:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     unk_602,Y
                AND     #$80
                BNE     loc_17B160
                LDA     unk_602,Y
                AND     #1
                BNE     loc_17B162

loc_17B160:                             ; CODE XREF: sub_17B150+7↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B162:                             ; CODE XREF: sub_17B150+E↑j
                CLC
                RTS
; End of function sub_17B150


; =============== S U B R O U T I N E =======================================


sub_17B164:                             ; DATA XREF: BANK17:AF5C↑o
                JSR     sub_F1ED
                ASL     A
                RTS
; End of function sub_17B164


; =============== S U B R O U T I N E =======================================


sub_17B169:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     unk_602,Y
                AND     #$80
                EOR     #$80
                ROL     A
                RTS
; End of function sub_17B169


; =============== S U B R O U T I N E =======================================


sub_17B174:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     unk_602,Y
                AND     #4
                EOR     #4
                CMP     #1
                RTS
; End of function sub_17B174


; =============== S U B R O U T I N E =======================================


sub_17B180:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_21
                BNE     loc_17B186
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B186:                             ; CODE XREF: sub_17B180+2↑j
                CLC
                RTS
; End of function sub_17B180


; =============== S U B R O U T I N E =======================================


sub_17B188:                             ; DATA XREF: BANK17:AF5C↑o
                LDY     byte_54
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                CMP     #1
                RTS
; End of function sub_17B188


; =============== S U B R O U T I N E =======================================


sub_17B194:                             ; DATA XREF: BANK17:AF5C↑o
                LDA     byte_56
                CMP     #5
                BEQ     loc_17B1A0
                CMP     #6
                BEQ     loc_17B1A0
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B1A0:                             ; CODE XREF: sub_17B194+4↑j
                                        ; sub_17B194+8↑j
                CLC
                RTS
; End of function sub_17B194


; =============== S U B R O U T I N E =======================================


sub_17B1A2:                             ; CODE XREF: sub_17B0CC+1E↑p
                                        ; sub_17B0F7+13↑p
                LDA     #1
                STA     Pointer+1
                SEC
                LDA     Pointer
                SBC     AddrForJmp
                STA     Pointer
                LDA     Pointer+1
                SBC     #0
                LSR     A
                ROR     Pointer
                SEC
                LDA     Pointer
                SBC     #$66 ; 'f'
                BCS     loc_17B1BD
                LDA     #0

loc_17B1BD:                             ; CODE XREF: sub_17B1A2+17↑j
                STA     Pointer
                JSR     sub_F1ED
                STA     AddrForJmp
                RTS
; End of function sub_17B1A2


; =============== S U B R O U T I N E =======================================


sub_17B1C5:                             ; CODE XREF: sub_17A573+1A7↑p
                                        ; sub_17ADF1+47↑p
                LDY     byte_53
                LDA     byte_61E,Y
                AND     #$40 ; '@'
                EOR     #$40 ; '@'
                CMP     #1
                RTS
; End of function sub_17B1C5


; =============== S U B R O U T I N E =======================================


sub_17B1D1:                             ; CODE XREF: sub_17A573+1A2↑p
                                        ; sub_17ADF1+4C↑p
                LDY     byte_53
                SEC
                LDA     unk_605,Y
                SBC     byte_4E
                LDA     unk_606,Y
                SBC     byte_4F
                RTS
; End of function sub_17B1D1

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_4. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_17B1E0:                             ; DATA XREF: BANK17:AEF3↑o
                LDY     byte_53
                LDA     byte_601,Y
                AND     #8
                BNE     loc_17B1EF
                LDA     byte_61C,Y
                STA     byte_54
                RTS
; ---------------------------------------------------------------------------

loc_17B1EF:                             ; CODE XREF: sub_17B1E0+7↑j
                                        ; sub_17B1E0+18↓j ...
                JSR     sub_F1ED
                AND     #$E0
                TAY
                LDA     byte_600,Y
                BEQ     loc_17B1EF
                LDA     byte_601,Y
                BMI     loc_17B1EF
                STY     byte_54
                RTS
; End of function sub_17B1E0


; =============== S U B R O U T I N E =======================================


sub_17B202:                             ; DATA XREF: BANK17:AEF3↑o
                LDY     byte_53
                LDA     byte_601,Y
                AND     #8
                BEQ     loc_17B212
                JSR     sub_F1ED
                AND     #$80
                BNE     loc_17B22D

loc_17B212:                             ; CODE XREF: sub_17B202+7↑j
                                        ; sub_17B21D+E↓j
                LDX     #$80
                LDA     byte_53
                BPL     loc_17B21A
                LDX     #0

loc_17B21A:                             ; CODE XREF: sub_17B202+14↑j
                STX     byte_54
                RTS
; End of function sub_17B202


; =============== S U B R O U T I N E =======================================


sub_17B21D:                             ; DATA XREF: BANK17:AEF3↑o
                LDY     byte_53
                LDA     byte_601,Y
                AND     #8
                BEQ     loc_17B22D
                JSR     sub_F1ED
                AND     #$80
                BNE     loc_17B212

loc_17B22D:                             ; CODE XREF: sub_17B202+E↑j
                                        ; sub_17B21D+7↑j
                LDX     #0
                LDY     byte_53
                BPL     loc_17B235
                LDX     #$80

loc_17B235:                             ; CODE XREF: sub_17B21D+14↑j
                STX     byte_54
                RTS
; End of function sub_17B21D


; =============== S U B R O U T I N E =======================================


sub_17B238:                             ; DATA XREF: BANK17:AEF3↑o
                LDA     byte_53
                STA     byte_54
                RTS
; End of function sub_17B238


; =============== S U B R O U T I N E =======================================


sub_17B23D:                             ; DATA XREF: BANK17:AEF3↑o
                LDX     #0
                LDY     byte_53
                BPL     loc_17B245
                LDX     #$80

loc_17B245:                             ; CODE XREF: sub_17B23D+4↑j
                STX     byte_54
                RTS
; End of function sub_17B23D


; =============== S U B R O U T I N E =======================================


sub_17B248:                             ; DATA XREF: BANK17:AEF3↑o
                CLC
                LDA     byte_54
                ADC     #$20 ; ' '
                STA     byte_54
                RTS
; End of function sub_17B248


; =============== S U B R O U T I N E =======================================


sub_17B250:                             ; DATA XREF: BANK17:AF16↑o
                LDY     byte_54
                LDA     unk_609,Y
                STA     pTileID
                LDA     unk_60A,Y
                STA     pTileID+1
                SEC
                LDY     byte_53
                LDA     unk_607,Y
                STA     byte_66
                STA     pDist
                SBC     pTileID
                LDA     byte_608,Y
                STA     TilesCount
                STA     pDist+1
                SBC     pTileID+1
                BCC     loc_17B2A8
                LSR     pTileID+1
                ROR     pTileID
                SEC
                LDA     byte_66
                SBC     pTileID
                STA     Pointer
                LDA     TilesCount
                SBC     pTileID+1
                STA     Pointer+1

loc_17B284:                             ; CODE XREF: sub_17B250+86↓j
                LDA     byte_56
                CMP     #1
                BNE     loc_17B297
                JSR     sub_F1ED
                AND     #7
                ORA     #4
                STA     Pointer
                LDA     #0
                STA     Pointer+1

loc_17B297:                             ; CODE XREF: sub_17B250+38↑j
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17B29F
                INC     Pointer

loc_17B29F:                             ; CODE XREF: sub_17B250+4B↑j
                LDA     Pointer
                STA     byte_4E
                LDA     Pointer+1
                STA     byte_4F
                RTS
; ---------------------------------------------------------------------------

loc_17B2A8:                             ; CODE XREF: sub_17B250+21↑j
                ASL     byte_66
                ROL     TilesCount
                CLC
                LDA     byte_66
                ADC     pDist
                STA     byte_66
                LDA     TilesCount
                ADC     pDist+1
                STA     TilesCount
                SEC
                LDA     byte_66
                SBC     pTileID
                STA     Pointer
                LDA     TilesCount
                SBC     pTileID+1
                STA     Pointer+1
                BCS     loc_17B2CE
                LDA     #0
                STA     Pointer
                STA     Pointer+1

loc_17B2CE:                             ; CODE XREF: sub_17B250+76↑j
                LSR     Pointer+1
                ROR     Pointer
                LSR     Pointer+1
                ROR     Pointer
                JMP     loc_17B284
; End of function sub_17B250


; =============== S U B R O U T I N E =======================================


sub_17B2D9:                             ; DATA XREF: BANK17:AF16↑o
                LDY     byte_53
                LDA     unk_607,Y
                STA     byte_4E
                LDA     byte_608,Y
                STA     byte_4F
                LDA     byte_56
                CMP     #1
                BNE     locret_17B2F8
                JSR     sub_F1ED
                AND     #$F
                ORA     #8
                STA     byte_4E
                LDA     #0
                STA     byte_4F

locret_17B2F8:                          ; CODE XREF: sub_17B2D9+10↑j
                RTS
; End of function sub_17B2D9


; =============== S U B R O U T I N E =======================================


sub_17B2F9:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                STA     byte_4E
                LDA     #0
                STA     byte_4F
                RTS
; End of function sub_17B2F9


; =============== S U B R O U T I N E =======================================


sub_17B302:                             ; DATA XREF: BANK17:AF16↑o
                LDA     byte_56
                CMP     #5
                BNE     locret_17B318
                LDA     NamePos
                JSR     sub_17A3F8
                LDX     NamePos
                INX
                CPX     #$9E
                BNE     loc_17B316
                INC     byte_56

loc_17B316:                             ; CODE XREF: sub_17B302+10↑j
                STX     NamePos

locret_17B318:                          ; CODE XREF: sub_17B302+4↑j
                RTS
; End of function sub_17B302


; =============== S U B R O U T I N E =======================================


sub_17B319:                             ; DATA XREF: BANK17:AF16↑o
                LDA     byte_57
                ORA     pTileID
                STA     byte_57
                RTS
; End of function sub_17B319


; =============== S U B R O U T I N E =======================================


sub_17B320:                             ; DATA XREF: BANK17:AF16↑o
                LDA     #$6A ; 'j'
                JSR     sub_17A3F8
                LDA     byte_56
                CMP     #2
                BNE     loc_17B330
                LDA     #$95
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B330:                             ; CODE XREF: sub_17B320+9↑j
                CMP     #3
                BNE     loc_17B339
                LDA     #$94
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B339:                             ; CODE XREF: sub_17B320+12↑j
                CMP     #4
                BNE     loc_17B342
                LDA     #$93
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B342:                             ; CODE XREF: sub_17B320+1B↑j
                CMP     #5
                BNE     loc_17B34B
                LDA     #1
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B34B:                             ; CODE XREF: sub_17B320+24↑j
                CMP     #6
                BNE     loc_17B354
                LDA     #1
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B354:                             ; CODE XREF: sub_17B320+2D↑j
                LDY     byte_54
                BMI     loc_17B35D
                LDA     #$90
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17B35D:                             ; CODE XREF: sub_17B320+36↑j
                LDY     byte_54
                LDA     unk_607,Y
                STA     byte_590
                LDA     byte_608,Y
                STA     byte_591
                LDA     unk_609,Y
                STA     byte_592
                LDA     unk_60A,Y
                STA     byte_593
                LDA     #$24 ; '$'
                JSR     sub_17A3F8
                LDA     #$25 ; '%'
                JSR     sub_17A3F8
                LDY     byte_54
                LDA     unk_602,Y
                PHA
                AND     #$40 ; '@'
                BEQ     loc_17B390
                LDA     #$6B ; 'k'
                JSR     sub_17A3F8

loc_17B390:                             ; CODE XREF: sub_17B320+69↑j
                PLA
                PHA
                AND     #$20 ; ' '
                BEQ     loc_17B39B
                LDA     #$6C ; 'l'
                JSR     sub_17A3F8

loc_17B39B:                             ; CODE XREF: sub_17B320+74↑j
                PLA
                PHA
                AND     #$10
                BEQ     loc_17B3A6
                LDA     #$6D ; 'm'
                JSR     sub_17A3F8

loc_17B3A6:                             ; CODE XREF: sub_17B320+7F↑j
                PLA
                PHA
                AND     #$80
                BNE     loc_17B3B7
                PLA
                PHA
                AND     #1
                BEQ     loc_17B3B7
                LDA     #$6F ; 'o'
                JSR     sub_17A3F8

loc_17B3B7:                             ; CODE XREF: sub_17B320+8A↑j
                                        ; sub_17B320+90↑j
                PLA
                LDA     #$FF
                JMP     sub_17A3F8
; End of function sub_17B320


; =============== S U B R O U T I N E =======================================


sub_17B3BD:
                LDA     #$90
                JMP     sub_17A3F8
; End of function sub_17B3BD


; =============== S U B R O U T I N E =======================================


sub_17B3C2:                             ; DATA XREF: BANK17:AF16↑o
                LDX     #$F
                LDA     byte_53
                BMI     loc_17B3CA
                LDX     #1

loc_17B3CA:                             ; CODE XREF: sub_17B3C2+4↑j
                TXA
                JMP     sub_F41F
; End of function sub_17B3C2


; =============== S U B R O U T I N E =======================================


sub_17B3CE:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                STA     byte_58
                RTS
; End of function sub_17B3CE


; =============== S U B R O U T I N E =======================================


sub_17B3D3:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                JMP     sub_17A3F8
; End of function sub_17B3D3


; =============== S U B R O U T I N E =======================================


sub_17B3D8:                             ; DATA XREF: BANK17:AF16↑o
                LDA     pTileID
                JMP     sub_F41F
; End of function sub_17B3D8


; =============== S U B R O U T I N E =======================================


sub_17B3DD:                             ; CODE XREF: sub_17B8F2:loc_17B912↓j
                                        ; sub_17B915:loc_17BA00↓p ...
                TYA
                BMI     loc_17B3F0
                LDA     byte_611,Y
                CMP     #6
                BNE     loc_17B3F0
                LDA     #0
                STA     byte_56
                LDX     #$88
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3F0:                             ; CODE XREF: sub_17B3DD+1↑j
                                        ; sub_17B3DD+8↑j
                JSR     sub_17B4CA
                CMP     #1
                BNE     loc_17B3FC
                LDX     #$19
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B3FC:                             ; CODE XREF: sub_17B3DD+18↑j
                CMP     #2
                BNE     loc_17B405
                LDX     #$1A
                JMP     loc_17B40B
; ---------------------------------------------------------------------------

loc_17B405:                             ; CODE XREF: sub_17B3DD+21↑j
                JSR     sub_17B42D
                JMP     sub_17B496
; ---------------------------------------------------------------------------

loc_17B40B:                             ; CODE XREF: sub_17B3DD+10↑j
                                        ; sub_17B3DD+1C↑j ...
                LDA     byte_54
                PHA
                LDA     byte_53
                PHA
                LDA     word_5E+1
                PHA
                LDA     word_5E
                PHA
                STY     byte_53
                TXA
                JSR     loc_17AD7B
                PLA
                STA     word_5E
                PLA
                STA     word_5E+1
                PLA
                STA     byte_53
                PLA
                STA     byte_54
                TAY
                JMP     sub_17B496
; End of function sub_17B3DD


; =============== S U B R O U T I N E =======================================


sub_17B42D:                             ; CODE XREF: sub_17B3DD:loc_17B405↑p
                                        ; sub_17B8AA+2↓j
                TYA
                PHA
                LDA     #0
                STA     byte_603,Y
                STA     byte_604,Y
                LDA     #$80
                STA     byte_601,Y
                TYA
                BPL     loc_17B48B
                LDA     #0
                STA     byte_600,Y
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                TYA
                PHA
                CLC
                LDY     #$1A
                LDA     (Pointer),Y
                ADC     byte_49
                STA     byte_49
                INY
                LDA     (Pointer),Y
                ADC     byte_4A
                STA     byte_4A
                LDA     #0
                ADC     byte_4B
                STA     byte_4B
                CLC
                LDY     #$1C
                LDA     (Pointer),Y
                ADC     byte_4C
                STA     byte_4C
                INY
                LDA     (Pointer),Y
                ADC     byte_4D
                STA     byte_4D
                LDY     #$1E
                LDA     (Pointer),Y
                BEQ     loc_17B47E
                STA     byte_48

loc_17B47E:                             ; CODE XREF: sub_17B42D+4D↑j
                LDA     #6
                STA     apu_7F0
                PLA
                TAY
                JSR     sub_17B555
                JMP     loc_17B490
; ---------------------------------------------------------------------------

loc_17B48B:                             ; CODE XREF: sub_17B42D+10↑j
                LDA     #$15
                JSR     sub_F41F

loc_17B490:                             ; CODE XREF: sub_17B42D+5B↑j
                JSR     statistical_frame
                PLA
                TAY
                RTS
; End of function sub_17B42D


; =============== S U B R O U T I N E =======================================


sub_17B496:                             ; CODE XREF: sub_17B3DD+2B↑j
                                        ; sub_17B3DD+4D↑j
                TYA
                PHA
                BMI     loc_17B4A9
                LDA     byte_611,Y
                CMP     #6
                BEQ     loc_17B4C7
                LDA     #$10
                JSR     sub_17A3F8
                JMP     loc_17B4C7
; ---------------------------------------------------------------------------

loc_17B4A9:                             ; CODE XREF: sub_17B496+2↑j
                LDA     byte_56
                CMP     #6
                BEQ     loc_17B4C7
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #$A
                LDA     (Pointer),Y
                AND     #$1C
                LSR     A
                LSR     A
                CLC
                ADC     #$79 ; 'y'
                JSR     sub_17A3F8

loc_17B4C7:                             ; CODE XREF: sub_17B496+9↑j
                                        ; sub_17B496+10↑j ...
                PLA
                TAY
                RTS
; End of function sub_17B496


; =============== S U B R O U T I N E =======================================


sub_17B4CA:                             ; CODE XREF: sub_17B3DD:loc_17B3F0↑p
                TYA
                PHA
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #8
                LDA     (Pointer),Y
                AND     #$1C
                LSR     A
                LSR     A
                STA     Pointer
                PLA
                TAY
                LDA     Pointer
                RTS
; End of function sub_17B4CA


; =============== S U B R O U T I N E =======================================


sub_17B4E5:                             ; CODE XREF: sub_17AE5D+1B↑p
                                        ; sub_17AEAB+7↑p ...
                LDY     byte_53
                CLC
                LDA     pPPUTab,Y
                ADC     #$20 ; ' '
                STA     Pointer
                LDA     pPPUTab+1,Y
                ADC     #0
                STA     Pointer+1
                LDY     byte_53
                LDA     unk_610,Y
                TAY

loc_17B4FC:                             ; CODE XREF: sub_17BD2B+9↓p
                JSR     sram_write_enable

loc_17B4FF:                             ; CODE XREF: sub_17B4E5+25↓j
                CPY     #7
                BEQ     loc_17B50C
                INY
                LDA     (Pointer),Y
                DEY
                STA     (Pointer),Y
                INY
                BNE     loc_17B4FF

loc_17B50C:                             ; CODE XREF: sub_17B4E5+1C↑j
                LDA     #0
                STA     (Pointer),Y
                JMP     sram_read_enable
; End of function sub_17B4E5


; =============== S U B R O U T I N E =======================================


sub_17B513:                             ; CODE XREF: sub_17AFED+2↑j
                                        ; sub_17B069+18↑p ...
                JSR     sub_17B5BC
                LDA     byte_601,Y
                AND     #$7F
                STA     byte_601,Y
                LDA     #$22 ; '"'
                STA     Pointer
                LDA     #$FF
                STA     Pointer+1
                LDA     #$FF
                STA     AddrForJmp
                JSR     sub_17B589
                LDA     #0
                STA     byte_45
                TYA
                PHA
                LDA     byte_61A,Y
                AND     #3
                TAX
                LDY     #$1F
                LDA     (pCharacter),Y
                STA     BankPPU_X000,X
                PLA
                TAY
                LDA     byte_61C,Y
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                RTS
; End of function sub_17B513


; =============== S U B R O U T I N E =======================================


sub_17B555:                             ; CODE XREF: sub_17AFF2+4↑j
                                        ; sub_17B42D+58↑p
                JSR     sub_17B5BC
                LDA     #0
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                LDA     #0
                STA     byte_600,Y
                LDA     #0
                STA     Pointer
                LDA     #$23 ; '#'
                STA     Pointer+1
                LDA     #1
                STA     AddrForJmp
                JSR     sub_17B589
                LDA     byte_61A,Y
                AND     #3
                TAX
                LDA     #$7C ; '|'
                STA     BankPPU_X000,X
                RTS
; End of function sub_17B555


; =============== S U B R O U T I N E =======================================


sub_17B589:                             ; CODE XREF: sub_17B513+17↑p
                                        ; sub_17B555+26↑p
                TYA
                PHA
                LDA     byte_61A,Y
                AND     #3
                TAX
                LDY     #$1F
                LDA     (pCharacter),Y
                ORA     #$80
                STA     BankPPU_X000,X
                PLA
                TAY
                LDA     #$80
                STA     byte_45

loc_17B59F:                             ; CODE XREF: sub_17B589+30↓j
                LDA     Pointer
                STA     byte_44
                AND     #1
                BNE     loc_17B5AD
                LDA     byte_45
                EOR     #$40 ; '@'
                STA     byte_45

loc_17B5AD:                             ; CODE XREF: sub_17B589+1C↑j
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                CLC
                LDA     Pointer
                ADC     AddrForJmp
                STA     Pointer
                CMP     Pointer+1
                BNE     loc_17B59F
                RTS
; End of function sub_17B589


; =============== S U B R O U T I N E =======================================


sub_17B5BC:                             ; CODE XREF: sub_17B513↑p
                                        ; sub_17B555↑p ...
                LDA     pPPUTab,Y
                STA     pCharacter
                LDA     pPPUTab+1,Y
                STA     pCharacter+1
                LDA     byte_61A,Y
                AND     #3
                STA     pTileID
                ASL     A
                ASL     A
                ASL     A
                STA     pTileID+1
                RTS
; End of function sub_17B5BC


; =============== S U B R O U T I N E =======================================


sub_17B5D3:                             ; CODE XREF: sub_17AFFE+4↑j
                LDA     #$F
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5D3


; =============== S U B R O U T I N E =======================================


sub_17B5DA:                             ; CODE XREF: sub_17B037+4↑j
                LDA     #$16
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5DA


; =============== S U B R O U T I N E =======================================


sub_17B5E1:                             ; CODE XREF: sub_17B041+4↑j
                LDA     #$12
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5E1


; =============== S U B R O U T I N E =======================================


sub_17B5E8:                             ; CODE XREF: sub_17B04B+4↑j
                LDA     #$31 ; '1'
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5E8


; =============== S U B R O U T I N E =======================================


sub_17B5EF:                             ; CODE XREF: sub_17B055+4↑j
                LDA     #$28 ; '('
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5EF


; =============== S U B R O U T I N E =======================================


sub_17B5F6:                             ; CODE XREF: sub_17B05F+4↑j
                LDA     #$2A ; '*'
                LDX     #3
                JMP     sub_17B626
; End of function sub_17B5F6


; =============== S U B R O U T I N E =======================================


sub_17B5FD:                             ; CODE XREF: sub_17BC5D:loc_17BCAF↓p
                LDX     #3

loc_17B5FF:                             ; CODE XREF: sub_17B5FD+26↓j
                TXA
                PHA
                LDA     #5
                STA     apu_7F0
                JSR     sub_F1ED
                AND     #3
                TAX
                INX

loc_17B60D:                             ; CODE XREF: sub_17B5FD+21↓j
                TXA
                PHA
                LDA     #1
                STA     apu_7F0
                PLA
                PHA
                LDX     #3
                JSR     sub_17B626
                PLA
                TAX
                DEX
                BNE     loc_17B60D
                PLA
                TAX
                DEX
                BNE     loc_17B5FF
                RTS
; End of function sub_17B5FD


; =============== S U B R O U T I N E =======================================


sub_17B626:                             ; CODE XREF: sub_17B5D3+4↑j
                                        ; sub_17B5DA+4↑j ...
                STA     Pointer+1
                STX     Pointer
                LDA     #2
                JSR     sub_F41F
                LDY     byte_54
                JSR     sub_17B5BC
                JSR     wait_nmi_processed
                LDX     Pointer

loc_17B639:                             ; CODE XREF: sub_17B626+53↓j
                TXA
                PHA
                LDX     pTileID+1
                LDA     SpriteTable,X
                PHA
                LDA     #0
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$7C ; '|'
                LDX     pTileID
                STA     BankPPU_X000,X
                LDA     Pointer+1
                JSR     loc_F4B8
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDY     #$1F
                LDA     (pCharacter),Y
                LDX     pTileID
                STA     BankPPU_X000,X
                JSR     sub_F4B6
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                PLA
                TAX
                DEX
                BNE     loc_17B639
                RTS
; End of function sub_17B626


; =============== S U B R O U T I N E =======================================


sub_17B67C:                             ; CODE XREF: sub_17B008+4↑j
                LDA     #2
                JSR     sub_F41F
                JSR     sub_17B5BC
                LDY     byte_54
                LDA     byte_61C,Y
                PHA
                LDX     pTileID+1
                LDA     SpriteTable,X
                LDY     byte_54
                STA     byte_61C,Y
                LDA     #0
                LDX     pTileID+1
                STA     SpriteTable,X
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                LDA     #$80
                STA     NMIFlags
                LDY     byte_54
                JSR     sub_17B513
                PLA
                LDY     byte_54
                STA     byte_61C,Y
                RTS
; End of function sub_17B67C


; =============== S U B R O U T I N E =======================================


sub_17B6B2:                             ; CODE XREF: sub_17AFFE:loc_17B005↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6B2


; =============== S U B R O U T I N E =======================================


sub_17B6BB:                             ; CODE XREF: sub_17B037:loc_17B03E↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$16
                JMP     sub_17B6FA
; End of function sub_17B6BB


; =============== S U B R O U T I N E =======================================


sub_17B6C4:                             ; CODE XREF: sub_17B041:loc_17B048↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$12
                JMP     sub_17B6FA
; End of function sub_17B6C4


; =============== S U B R O U T I N E =======================================


sub_17B6CD:                             ; CODE XREF: sub_17B04B:loc_17B052↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$31 ; '1'
                JMP     sub_17B6FA
; End of function sub_17B6CD


; =============== S U B R O U T I N E =======================================


sub_17B6D6:                             ; CODE XREF: sub_17B055:loc_17B05C↑j
                LDX     #$41 ; 'A'
                LDY     #$9F
                LDA     #$28 ; '('
                JMP     sub_17B6FA
; End of function sub_17B6D6


; =============== S U B R O U T I N E =======================================


sub_17B6DF:                             ; CODE XREF: sub_17B05F:loc_17B066↑j
                LDX     #$61 ; 'a'
                LDY     #$9F
                LDA     #$2A ; '*'
                JMP     sub_17B6FA
; End of function sub_17B6DF


; =============== S U B R O U T I N E =======================================


sub_17B6E8:                             ; CODE XREF: sub_17BC5D+3B↓p
                LDX     #$61 ; 'a'
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6E8


; =============== S U B R O U T I N E =======================================


sub_17B6F1:                             ; CODE XREF: sub_17B008:loc_17B00F↑j
                LDX     #$4B ; 'K'
                LDY     #$9F
                LDA     #$F
                JMP     sub_17B6FA
; End of function sub_17B6F1


; =============== S U B R O U T I N E =======================================


sub_17B6FA:                             ; CODE XREF: sub_17B6B2+6↑j
                                        ; sub_17B6BB+6↑j ...
                STA     pTileID
                STX     Pointer
                STY     Pointer+1
                LDA     #$10
                JSR     sub_F41F
                JSR     wait_nmi_processed
                LDY     #0
                LDA     (Pointer),Y
                STA     AddrForJmp
                INY
                LDA     (Pointer),Y
                STA     AddrForJmp+1
                CLC
                LDA     Pointer
                ADC     #2
                STA     Pointer
                LDA     Pointer+1
                ADC     #0
                STA     Pointer+1

loc_17B720:                             ; CODE XREF: sub_17B6FA+52↓j
                LDY     #0

loc_17B722:                             ; CODE XREF: sub_17B6FA+4E↓j
                TYA
                PHA
                AND     #2
                BEQ     loc_17B730
                LDA     pTileID
                JSR     loc_F4B8
                JMP     loc_17B733
; ---------------------------------------------------------------------------

loc_17B730:                             ; CODE XREF: sub_17B6FA+2C↑j
                JSR     sub_F4B6

loc_17B733:                             ; CODE XREF: sub_17B6FA+33↑j
                PLA
                TAY
                LDA     (Pointer),Y
                STA     ShiftY
                INY
                LDA     (Pointer),Y
                STA     ShiftX
                INY
                LDA     #1
                STA     NMIFlags
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                CPY     AddrForJmp+1
                BNE     loc_17B722
                DEC     AddrForJmp
                BNE     loc_17B720
                LDA     #0
                STA     ShiftX
                STA     ShiftY
                JSR     wait_nmi        ; wait for NMI interrupt processing to complete
                JMP     sub_F4B6
; End of function sub_17B6FA


; =============== S U B R O U T I N E =======================================


sub_17B75A:                             ; CODE XREF: sub_17AC6A↑p
                                        ; sub_17AC6A+16↑p
                LDA     byte_47
                CMP     #1
                BEQ     loc_17B7B0
                CMP     #2
                BEQ     loc_17B7B0
                LDY     #0

loc_17B766:                             ; CODE XREF: sub_17B75A+26↓j
                LDA     byte_600,Y
                BEQ     loc_17B77B
                LDA     byte_611,Y
                AND     #6
                EOR     #6
                BEQ     loc_17B77B
                LDA     byte_601,Y
                AND     #$E0
                BEQ     loc_17B7B2

loc_17B77B:                             ; CODE XREF: sub_17B75A+F↑j
                                        ; sub_17B75A+18↑j
                TYA
                CLC
                ADC     #$20 ; ' '
                TAY
                BPL     loc_17B766
                LDA     #$80
                STA     byte_601
                STA     byte_621
                STA     byte_641
                STA     byte_661
                LDA     byte_56
                CMP     #4
                BNE     loc_17B7A7
                LDA     #3
                STA     byte_47
                LDA     #4
                JSR     sub_F41F
                LDA     #$8F
                JSR     sub_17A3F8
                JMP     loc_17B7B0
; ---------------------------------------------------------------------------

loc_17B7A7:                             ; CODE XREF: sub_17B75A+3A↑j
                LDA     #0
                STA     byte_53
                LDA     #$E
                JSR     sub_17A3F8

loc_17B7B0:                             ; CODE XREF: sub_17B75A+4↑j
                                        ; sub_17B75A+8↑j ...
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B7B2:                             ; CODE XREF: sub_17B75A+1F↑j
                LDA     byte_680
                ORA     byte_6A0
                ORA     byte_6C0
                ORA     byte_6E0
                BNE     loc_17B7F3
                LDA     byte_23
                BEQ     loc_17B7C9
                LDA     #$31 ; '1'
                JSR     sub_17A3F8

loc_17B7C9:                             ; CODE XREF: sub_17B75A+68↑j
                LDA     byte_56
                CMP     #6
                BNE     loc_17B7E7
                LDA     #0
                STA     byte_54
                JSR     sub_17B8D4
                LDA     #$20 ; ' '
                STA     byte_54
                JSR     sub_17B8D4
                LDA     #$40 ; '@'
                STA     byte_54
                JSR     sub_17B8D4
                JMP     loc_17B7F1
; ---------------------------------------------------------------------------

loc_17B7E7:                             ; CODE XREF: sub_17B75A+73↑j
                LDA     #5
                JSR     sub_F255
                LDA     #$D
                JSR     sub_17A3F8

loc_17B7F1:                             ; CODE XREF: sub_17B75A+8A↑j
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B7F3:                             ; CODE XREF: sub_17B75A+64↑j
                LDA     byte_56
                CMP     #1
                BNE     loc_17B802
                LDY     #0
                JSR     sub_F673
                BCS     loc_17B802
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17B802:                             ; CODE XREF: sub_17B75A+9D↑j
                                        ; sub_17B75A+A4↑j
                CLC
                RTS
; End of function sub_17B75A


; =============== S U B R O U T I N E =======================================


sub_17B804:                             ; DATA XREF: sub_17ACD6+D1↑o
                LDY     #1
                LDA     (word_5E),Y
                JSR     sub_F2AE        ; trap function without return
; End of function sub_17B804            ; transfers control to a function whose address is selected from the table located after the call of this function;
                                        ; after the function execution is completed, the first function from the table is executed.
                                        ; Input: A - number of function in the table
; ---------------------------------------------------------------------------
                .WORD sub_17B863, sub_17B868, sub_17B879, sub_17B899, sub_17B8AF
                .WORD sub_17B8BD, sub_17B8CB, sub_17B915, sub_17BA07, sub_17BA1B
                .WORD sub_17BA2A, sub_17BA3C, sub_17BA6E, sub_17BA7A, sub_17BA95
                .WORD sub_17B8AA, sub_17B8F2, sub_17BA86, sub_17B88A, sub_17BAE4
                .WORD sub_17BAFA, sub_17BB0D, sub_17BB25, sub_17BB3D, sub_17BB55
                .WORD sub_17BB78, sub_17BB83, sub_17BB8C, sub_17BB9D, sub_17BBB0
                .WORD sub_17BBCD, sub_17BBEB, sub_17BBF9, sub_17BC02, sub_17BC0B
                .WORD sub_17BC14, sub_17BC1D, sub_17BC26, sub_17BC38, sub_17BC2F
                .WORD sub_17BCD0, sub_17BD2B, sub_17BC5D, sub_17BD44

; =============== S U B R O U T I N E =======================================


sub_17B863:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #2
                JMP     sub_17AFCD
; End of function sub_17B863


; =============== S U B R O U T I N E =======================================


sub_17B868:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD

loc_17B86B:                             ; CODE XREF: sub_17B8CB+6↓j
                LDX     byte_54
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$3E ; '>'
                JMP     sub_17BD5B
; End of function sub_17B868


; =============== S U B R O U T I N E =======================================


sub_17B879:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #5
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$3D ; '='
                JMP     sub_17BD5B
; End of function sub_17B879


; =============== S U B R O U T I N E =======================================


sub_17B88A:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #7
                JSR     sub_17BDE8
                LDA     #$20 ; ' '
                JMP     sub_17A3F8
; End of function sub_17B88A


; =============== S U B R O U T I N E =======================================


sub_17B899:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #$C
                JSR     sub_17BE3B
                LDX     #9
                LDA     #$23 ; '#'
                JMP     sub_17BD5B
; End of function sub_17B899


; =============== S U B R O U T I N E =======================================


sub_17B8AA:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_53
                JMP     sub_17B42D
; End of function sub_17B8AA


; =============== S U B R O U T I N E =======================================


sub_17B8AF:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #7
                JSR     sub_17BF00
                LDX     #9
                LDA     #$20 ; ' '
                JMP     sub_17BD5B
; End of function sub_17B8AF


; =============== S U B R O U T I N E =======================================


sub_17B8BD:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF00
                LDX     #9
                LDA     #$22 ; '"'
                JMP     sub_17BD5B
; End of function sub_17B8BD


; =============== S U B R O U T I N E =======================================


sub_17B8CB:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                JMP     loc_17B86B
; End of function sub_17B8CB


; =============== S U B R O U T I N E =======================================


sub_17B8D4:                             ; CODE XREF: sub_17B75A+79↑p
                                        ; sub_17B75A+80↑p ...
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                LDA     #0
                LDX     byte_54
                STA     byte_601,X
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #0
                JSR     sub_17BD5B
                LDX     #$14
                JMP     delay
; End of function sub_17B8D4


; =============== S U B R O U T I N E =======================================


sub_17B8F2:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDY     byte_53
                SEC
                LDA     byte_603,Y
                SBC     Pointer
                STA     byte_603,Y
                LDA     byte_604,Y
                SBC     Pointer+1
                STA     byte_604,Y
                BCC     loc_17B912
                ORA     byte_603,Y
                BEQ     loc_17B912
                JMP     statistical_frame
; ---------------------------------------------------------------------------

loc_17B912:                             ; CODE XREF: sub_17B8F2+16↑j
                                        ; sub_17B8F2+1B↑j
                JMP     sub_17B3DD
; End of function sub_17B8F2


; =============== S U B R O U T I N E =======================================


sub_17B915:                             ; DATA XREF: BANK17:B80B↑o
                LDA     byte_56
                CMP     #5
                BEQ     loc_17B93E
                CMP     #6
                BEQ     loc_17B93E
                JSR     sub_17BFE2
                BCC     loc_17B93E

loc_17B924:                             ; CODE XREF: sub_17BA2A:loc_17BA39↓j
                LDX     #3
                LDY     byte_53
                LDA     byte_611,Y
                CMP     #6
                BNE     loc_17B931
                LDX     #$3F ; '?'

loc_17B931:                             ; CODE XREF: sub_17B915+18↑j
                STX     Pointer
                JSR     sub_F1ED
                AND     Pointer
                STA     byte_4E
                LDA     #0
                STA     byte_4F

loc_17B93E:                             ; CODE XREF: sub_17B915+4↑j
                                        ; sub_17B915+8↑j ...
                LDA     byte_54
                PHA
                JSR     sub_17BDDD
                LDY     byte_54
                LDA     byte_61E,Y
                AND     #4
                BEQ     loc_17B962
                LDA     Pointer+1
                PHA
                LDA     Pointer
                PHA
                LDA     #$53 ; 'S'
                JSR     sub_17A3F8
                PLA
                STA     Pointer
                PLA
                STA     Pointer+1
                LDY     byte_53
                STY     byte_54

loc_17B962:                             ; CODE XREF: sub_17B915+36↑j
                LDA     byte_61E,Y
                AND     #$10
                BEQ     loc_17B96D
                LSR     Pointer+1
                ROR     Pointer

loc_17B96D:                             ; CODE XREF: sub_17B915+52↑j
                LDA     byte_61E,Y
                AND     #8
                BEQ     loc_17B978
                LSR     Pointer+1
                ROR     Pointer

loc_17B978:                             ; CODE XREF: sub_17B915+5D↑j
                JSR     sub_17BF74
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17B983
                INC     Pointer

loc_17B983:                             ; CODE XREF: sub_17B915+6A↑j
                LDA     Pointer
                STA     byte_590
                PHA
                LDA     Pointer+1
                STA     byte_591
                PHA
                LDA     #$C
                JSR     sub_17A3F8
                PLA
                STA     Pointer+1
                PLA
                STA     Pointer
                LDA     byte_56
                CMP     #3
                BEQ     loc_17B9A5
                JSR     sub_17BFEF
                BCS     loc_17B9C4

loc_17B9A5:                             ; CODE XREF: sub_17B915+89↑j
                JSR     sub_17BFE2
                BCS     loc_17B9C4
                LDY     byte_54
                SEC
                LDA     byte_603,Y
                SBC     Pointer
                STA     byte_603,Y
                LDA     byte_604,Y
                SBC     Pointer+1
                STA     byte_604,Y
                BCC     loc_17BA00
                ORA     byte_603,Y
                BEQ     loc_17BA00

loc_17B9C4:                             ; CODE XREF: sub_17B915+8E↑j
                                        ; sub_17B915+93↑j
                LDA     byte_601,Y
                AND     #$C
                BEQ     loc_17B9DF
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17B9DF
                LDA     byte_601,Y
                AND     #$F3
                STA     byte_601,Y
                LDA     #$8D
                JSR     sub_17A3F8

loc_17B9DF:                             ; CODE XREF: sub_17B915+B4↑j
                                        ; sub_17B915+BB↑j
                LDA     byte_601,Y
                AND     #$10
                BEQ     loc_17B9FA
                JSR     sub_F1ED
                AND     #$C0
                BNE     loc_17B9FA
                LDA     byte_601,Y
                AND     #$EF
                STA     byte_601,Y
                LDA     #$61 ; 'a'
                JSR     sub_17A3F8

loc_17B9FA:                             ; CODE XREF: sub_17B915+CF↑j
                                        ; sub_17B915+D6↑j
                PLA
                STA     byte_54
                JMP     statistical_frame
; ---------------------------------------------------------------------------

loc_17BA00:                             ; CODE XREF: sub_17B915+A8↑j
                                        ; sub_17B915+AD↑j
                JSR     sub_17B3DD
                PLA
                STA     byte_54
                RTS
; End of function sub_17B915


; =============== S U B R O U T I N E =======================================


sub_17BA07:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDY     byte_54
                JSR     sub_17BF74
                LDX     byte_54
                LDY     #9
                JSR     sub_17BE72
                LDA     #$27 ; '''
                JMP     sub_17A3F8
; End of function sub_17BA07


; =============== S U B R O U T I N E =======================================


sub_17BA1B:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_54
                LDY     #$B
                JSR     sub_17BEC4
                LDA     #$26 ; '&'
                JMP     sub_17A3F8
; End of function sub_17BA1B


; =============== S U B R O U T I N E =======================================


sub_17BA2A:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BA39
                JSR     sub_17BFEF
                BCS     loc_17BA39
                LDY     byte_54
                JMP     sub_17B3DD
; ---------------------------------------------------------------------------

loc_17BA39:                             ; CODE XREF: sub_17BA2A+3↑j
                                        ; sub_17BA2A+8↑j
                JMP     loc_17B924
; End of function sub_17BA2A


; =============== S U B R O U T I N E =======================================


sub_17BA3C:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BA6B
                JSR     sub_17BFEF
                BCS     loc_17BA6B
                LDY     byte_54
                JSR     sub_F1ED
                AND     #3
                TAX
                INX
                TXA
                SEC
                SBC     byte_603,Y
                LDA     #0
                SBC     byte_604,Y
                BCS     loc_17BA6B
                TXA
                STA     byte_603,Y
                LDA     #0
                STA     byte_604,Y
                LDX     #0
                LDA     #$38 ; '8'
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BA6B:                             ; CODE XREF: sub_17BA3C+3↑j
                                        ; sub_17BA3C+8↑j ...
                JMP     sub_17BDD8
; End of function sub_17BA3C


; =============== S U B R O U T I N E =======================================


sub_17BA6E:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #7
                JSR     sub_17BF15
                LDA     #$21 ; '!'
                JMP     sub_17A3F8
; End of function sub_17BA6E


; =============== S U B R O U T I N E =======================================


sub_17BA7A:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF15
                LDA     #$27 ; '''
                JMP     sub_17A3F8
; End of function sub_17BA7A


; =============== S U B R O U T I N E =======================================


sub_17BA86:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDX     byte_53
                LDY     #7
                JSR     sub_17BDE8
                LDA     #$5C ; '\'
                JMP     sub_17A3F8
; End of function sub_17BA86


; =============== S U B R O U T I N E =======================================


sub_17BA95:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BDDD
                LDY     byte_54
                BMI     loc_17BADD
                LDA     pPPUTab,Y
                STA     AddrForJmp
                LDA     pPPUTab+1,Y
                STA     AddrForJmp+1
                LDY     #$11
                CLC
                LDA     (AddrForJmp),Y
                ADC     Pointer
                STA     pTileID
                INY
                LDA     (AddrForJmp),Y
                ADC     Pointer+1
                STA     pTileID+1
                INY
                LDA     (AddrForJmp),Y
                ADC     #0
                STA     byte_66
                BCC     loc_17BAC7
                LDA     #$FF
                STA     pTileID
                STA     pTileID+1
                STA     byte_66

loc_17BAC7:                             ; CODE XREF: sub_17BA95+28↑j
                JSR     sram_write_enable
                LDY     #$11
                LDA     pTileID
                STA     (AddrForJmp),Y
                INY
                LDA     pTileID+1
                STA     (AddrForJmp),Y
                INY
                LDA     byte_66
                STA     (AddrForJmp),Y
                JSR     sram_read_enable

loc_17BADD:                             ; CODE XREF: sub_17BA95+5↑j
                LDX     #$A
                LDA     #$2F ; '/'
                JMP     sub_17BD5B
; End of function sub_17BA95


; =============== S U B R O U T I N E =======================================


sub_17BAE4:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$1B
                LDY     #0
                LDX     #$80
                JMP     loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BAF7:                             ; CODE XREF: sub_17BAE4+3↑j
                                        ; sub_17BAE4+8↑j ...
                JMP     sub_17BDD8
; End of function sub_17BAE4


; =============== S U B R O U T I N E =======================================


sub_17BAFA:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$4B ; 'K'
                LDY     #0
                LDX     #2
                JMP     sub_17BD69
; End of function sub_17BAFA


; =============== S U B R O U T I N E =======================================


sub_17BB0D:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF66
                BCS     loc_17BAF7
                LDA     #$39 ; '9'
                LDY     #0
                LDX     #8
                JMP     sub_17BD69
; End of function sub_17BB0D


; =============== S U B R O U T I N E =======================================


sub_17BB25:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF66
                BCS     loc_17BAF7
                LDA     #$3B ; ';'
                LDY     #0
                LDX     #$10
                JMP     sub_17BD69
; End of function sub_17BB25


; =============== S U B R O U T I N E =======================================


sub_17BB3D:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                JSR     sub_17BFEF
                BCS     loc_17BAF7
                JSR     sub_17BF58
                BCS     loc_17BAF7
                LDA     #$49 ; 'I'
                LDY     #0
                LDX     #$20 ; ' '
                JMP     sub_17BD69
; End of function sub_17BB3D


; =============== S U B R O U T I N E =======================================


sub_17BB55:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BAF7
                LDY     byte_54
                LDA     pPPUTab,Y
                STA     Pointer
                LDA     pPPUTab+1,Y
                STA     Pointer+1
                LDY     #5
                LDA     (Pointer),Y
                INY
                ORA     (Pointer),Y
                BEQ     loc_17BAF7
                LDA     #$4D ; 'M'
                LDY     #0
                LDX     #$40 ; '@'
                JMP     loc_17BD7F
; End of function sub_17BB55


; =============== S U B R O U T I N E =======================================


sub_17BB78:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_61E,Y
                ORA     #8
                STA     byte_61E,Y
                RTS
; End of function sub_17BB78


; =============== S U B R O U T I N E =======================================


sub_17BB83:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$4F ; 'O'
                LDY     #$A
                LDX     #$10
                JMP     loc_17BD7F
; End of function sub_17BB83


; =============== S U B R O U T I N E =======================================


sub_17BB8C:                             ; DATA XREF: BANK17:B80B↑o
                JSR     loc_17BFE6
                BCS     loc_17BB9A
                LDA     #$17
                LDY     #$A
                LDX     #4
                JMP     loc_17BD7F
; ---------------------------------------------------------------------------

loc_17BB9A:                             ; CODE XREF: sub_17BB8C+3↑j
                                        ; sub_17BB9D+3↓j ...
                JMP     sub_17BDD8
; End of function sub_17BB8C


; =============== S U B R O U T I N E =======================================


sub_17BB9D:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BB9A
                JSR     sub_17BFEF
                BCS     loc_17BB9A
                LDA     #$4E ; 'N'
                LDY     #0
                LDX     #$20 ; ' '
                JMP     loc_17BD7F
; End of function sub_17BB9D


; =============== S U B R O U T I N E =======================================


sub_17BBB0:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BFE2
                BCS     loc_17BB9A
                JSR     sub_17BFEF
                BCS     loc_17BB9A
                LDA     #$19
                LDY     #0
                LDX     #$40 ; '@'
                JSR     sub_17BD69
                BCS     locret_17BBCC
                LDX     byte_54
                LDY     #9
                JSR     sub_17BF00

locret_17BBCC:                          ; CODE XREF: sub_17BBB0+13↑j
                RTS
; End of function sub_17BBB0


; =============== S U B R O U T I N E =======================================


sub_17BBCD:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_611,Y
                CMP     #1
                BNE     locret_17BBEA
                LDA     byte_61E,Y
                AND     #2
                BNE     locret_17BBEA
                LDA     byte_61E,Y
                ORA     #2
                STA     byte_61E,Y
                LDA     #$74 ; 't'
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

locret_17BBEA:                          ; CODE XREF: sub_17BBCD+7↑j
                                        ; sub_17BBCD+E↑j
                RTS
; End of function sub_17BBCD


; =============== S U B R O U T I N E =======================================


sub_17BBEB:                             ; DATA XREF: BANK17:B80B↑o
                JSR     sub_17BF66
                BCS     loc_17BB9A
                LDA     #$67 ; 'g'
                LDY     #0
                LDX     #4
                JMP     sub_17BD69
; End of function sub_17BBEB


; =============== S U B R O U T I N E =======================================


sub_17BBF9:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$5D ; ']'
                LDY     #$A
                LDX     #2
                JMP     loc_17BD95
; End of function sub_17BBF9


; =============== S U B R O U T I N E =======================================


sub_17BC02:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$61 ; 'a'
                LDY     #$A
                LDX     #$10
                JMP     loc_17BD95
; End of function sub_17BC02


; =============== S U B R O U T I N E =======================================


sub_17BC0B:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$60 ; '`'
                LDY     #$A
                LDX     #$20 ; ' '
                JMP     loc_17BD95
; End of function sub_17BC0B


; =============== S U B R O U T I N E =======================================


sub_17BC14:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$70 ; 'p'
                LDY     #$A
                LDX     #2
                JMP     loc_17BDAB
; End of function sub_17BC14


; =============== S U B R O U T I N E =======================================


sub_17BC1D:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$5E ; '^'
                LDY     #$A
                LDX     #$C
                JMP     loc_17BD95
; End of function sub_17BC1D


; =============== S U B R O U T I N E =======================================


sub_17BC26:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$69 ; 'i'
                LDY     #2
                LDX     #$10
                JMP     loc_17BDAB
; End of function sub_17BC26


; =============== S U B R O U T I N E =======================================


sub_17BC2F:                             ; DATA XREF: BANK17:B80B↑o
                LDA     #$71 ; 'q'
                LDY     #$A
                LDX     #$40 ; '@'
                JMP     loc_17BD95
; End of function sub_17BC2F


; =============== S U B R O U T I N E =======================================


sub_17BC38:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_601,Y
                AND     #$80
                BEQ     loc_17BC5A
                LDA     #0
                STA     byte_601,Y
                LDA     #$FF
                STA     byte_4E
                STA     byte_4F
                LDX     byte_54
                LDY     #3
                JSR     sub_17BEF2
                LDX     #$A
                LDA     #$62 ; 'b'
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BC5A:                             ; CODE XREF: sub_17BC38+7↑j
                JMP     sub_17BDD8
; End of function sub_17BC38


; =============== S U B R O U T I N E =======================================


sub_17BC5D:                             ; DATA XREF: BANK17:B80B↑o
                LDX     byte_56
                CPX     #6
                BEQ     loc_17BC85
                LDA     #$19
                JSR     sub_F255
                LDA     apu_78C
                PHA
                LDX     #0
                JSR     sub_F26B
                LDA     #3
                STA     apu_7F0
                LDX     #$38 ; '8'
                JSR     delay
                PLA
                CMP     apu_78C
                BEQ     locret_17BC84
                STA     apu_7F5

locret_17BC84:                          ; CODE XREF: sub_17BC5D+22↑j
                RTS
; ---------------------------------------------------------------------------

loc_17BC85:                             ; CODE XREF: sub_17BC5D+4↑j
                LDA     #$19
                JSR     sub_F255
                SEC
                LDA     NamePos
                SBC     #$9E
                TAX
                JSR     sub_F26B
                LDA     #3
                STA     apu_7F0
                JSR     sub_17B6E8
                LDA     NamePos
                JSR     sub_17A3F8
                LDA     #$2C ; ','
                JSR     sub_F255
                LDX     NamePos
                INX
                CPX     #$A9
                BEQ     loc_17BCAF
                STX     NamePos
                RTS
; ---------------------------------------------------------------------------

loc_17BCAF:                             ; CODE XREF: sub_17BC5D+4D↑j
                JSR     sub_17B5FD
                LDA     #$FF
                JSR     sub_F255
                LDX     #$C8
                JSR     delay
                LDX     #$A9

loc_17BCBE:                             ; CODE XREF: sub_17BC5D+6C↓j
                STX     NamePos
                TXA
                JSR     sub_17A3F8
                LDX     NamePos
                INX
                CPX     #$AC
                BNE     loc_17BCBE
                LDY     #$80
                JMP     sub_17B3DD
; End of function sub_17BC5D


; =============== S U B R O U T I N E =======================================


sub_17BCD0:                             ; DATA XREF: BANK17:B80B↑o
                LDX     #$A
                LDY     byte_54
                LDA     unk_605,Y
                ORA     unk_606,Y
                BEQ     loc_17BD28
                SEC
                LDA     unk_605,Y
                TAX
                SBC     #$A
                LDA     unk_606,Y
                SBC     #0
                BCC     loc_17BCEC
                LDX     #$A

loc_17BCEC:                             ; CODE XREF: sub_17BCD0+18↑j
                STX     byte_590
                LDX     #0
                STX     byte_591
                SEC
                LDA     unk_605,Y
                SBC     byte_590
                STA     unk_605,Y
                LDA     unk_606,Y
                SBC     byte_591
                STA     unk_606,Y
                LDA     #$48 ; 'H'
                JSR     sub_17A3F8
                LDA     byte_590
                STA     Pointer
                LDA     byte_591
                STA     Pointer+1
                LDX     byte_53
                LDY     #5
                JSR     sub_17BEF2
                LDA     byte_53
                STA     byte_54
                LDX     #$A
                LDA     #$3D ; '='
                JMP     sub_17BD5B
; ---------------------------------------------------------------------------

loc_17BD28:                             ; CODE XREF: sub_17BCD0+A↑j
                JMP     sub_17BDD8
; End of function sub_17BCD0


; =============== S U B R O U T I N E =======================================


sub_17BD2B:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                BMI     loc_17BD3F
                JSR     sub_17BFAA
                BCS     loc_17BD3F
                JSR     loc_17B4FC
                JSR     sub_17AACC
                LDA     #$81
                JMP     sub_17A3F8
; ---------------------------------------------------------------------------

loc_17BD3F:                             ; CODE XREF: sub_17BD2B+2↑j
                                        ; sub_17BD2B+7↑j
                LDA     #$59 ; 'Y'
                JMP     sub_17A3F8
; End of function sub_17BD2B


; =============== S U B R O U T I N E =======================================


sub_17BD44:                             ; DATA XREF: BANK17:B80B↑o
                LDY     byte_54
                LDA     byte_601,Y
                AND     #8
                BNE     locret_17BD5A
                LDA     byte_601,Y
                ORA     #8
                STA     byte_601,Y
                LDA     #$39 ; '9'
                JSR     sub_17A3F8

locret_17BD5A:                          ; CODE XREF: sub_17BD44+7↑j
                RTS
; End of function sub_17BD44


; =============== S U B R O U T I N E =======================================


sub_17BD5B:                             ; CODE XREF: sub_17B868+E↑j
                                        ; sub_17B879+E↑j ...
                PHA
                TXA
                BEQ     loc_17BD62
                JSR     sub_F41F

loc_17BD62:                             ; CODE XREF: sub_17BD5B+2↑j
                JSR     statistical_frame
                PLA
                JMP     sub_17A3F8
; End of function sub_17BD5B


; =============== S U B R O U T I N E =======================================


sub_17BD69:                             ; CODE XREF: sub_17BAFA+10↑j
                                        ; sub_17BB0D+15↑j ...
                PHA
                JSR     sub_17BDCC
                LDA     byte_601,Y
                AND     Pointer
                BNE     loc_17BDC6
                LDA     byte_601,Y
                ORA     Pointer
                STA     byte_601,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD7F:                             ; CODE XREF: sub_17BAE4+10↑j
                                        ; sub_17BB55+20↑j ...
                PHA
                JSR     sub_17BDCC
                LDA     byte_61E,Y
                AND     Pointer
                BNE     loc_17BDC6
                LDA     byte_61E,Y
                ORA     Pointer
                STA     byte_61E,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BD95:                             ; CODE XREF: sub_17BBF9+6↑j
                                        ; sub_17BC02+6↑j ...
                PHA
                JSR     sub_17BDCC
                LDA     byte_601,Y
                AND     Pointer
                BEQ     loc_17BDC6
                LDA     byte_601,Y
                AND     Pointer+1
                STA     byte_601,Y
                JMP     loc_17BDBE
; ---------------------------------------------------------------------------

loc_17BDAB:                             ; CODE XREF: sub_17BC14+6↑j
                                        ; sub_17BC26+6↑j
                PHA
                JSR     sub_17BDCC
                LDA     byte_61E,Y
                AND     Pointer
                BEQ     loc_17BDC6
                LDA     byte_61E,Y
                AND     Pointer+1
                STA     byte_61E,Y

loc_17BDBE:                             ; CODE XREF: sub_17BD69+13↑j
                                        ; sub_17BD69+29↑j ...
                LDX     byte_58
                PLA
                JSR     sub_17BD5B
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17BDC6:                             ; CODE XREF: sub_17BD69+9↑j
                                        ; sub_17BD69+1F↑j ...
                PLA
                JSR     sub_17BDD8
                SEC
                RTS
; End of function sub_17BD69


; =============== S U B R O U T I N E =======================================


sub_17BDCC:                             ; CODE XREF: sub_17BD69+1↑p
                                        ; sub_17BD69+17↑p ...
                STX     Pointer
                TXA
                EOR     #$FF
                STA     Pointer+1
                STY     byte_58
                LDY     byte_54
                RTS
; End of function sub_17BDCC


; =============== S U B R O U T I N E =======================================


sub_17BDD8:                             ; CODE XREF: sub_17BA3C:loc_17BA6B↑j
                                        ; sub_17BAE4:loc_17BAF7↑j ...
                LDA     #$55 ; 'U'
                JMP     sub_17A3F8
; End of function sub_17BDD8


; =============== S U B R O U T I N E =======================================


sub_17BDDD:                             ; CODE XREF: sub_17B868↑p
                                        ; sub_17B879↑p ...
                LDA     byte_4E
                STA     Pointer
                LDA     byte_4F
                STA     Pointer+1
                JMP     sub_F2ED
; End of function sub_17BDDD


; =============== S U B R O U T I N E =======================================


sub_17BDE8:                             ; CODE XREF: sub_17B88A+7↑p
                                        ; sub_17BA86+7↑p ...
                JSR     sub_17BF2C
; End of function sub_17BDE8


; =============== S U B R O U T I N E =======================================


sub_17BDEB:                             ; CODE XREF: sub_17BEF2+B↓j
                CLC
                LDA     byte_600,X
                ADC     Pointer
                STA     byte_66
                LDA     byte_601,X
                ADC     Pointer+1
                STA     TilesCount
                BCC     loc_17BE02
                LDA     #$FF
                STA     byte_66
                STA     TilesCount

loc_17BE02:                             ; CODE XREF: sub_17BDEB+F↑j
                SEC
                LDA     pTileID
                SBC     byte_66
                LDA     pTileID+1
                SBC     TilesCount
                BCS     loc_17BE15
                LDA     pTileID
                STA     byte_66
                LDA     pTileID+1
                STA     TilesCount

loc_17BE15:                             ; CODE XREF: sub_17BDEB+20↑j
                SEC
                LDA     byte_66
                SBC     byte_600,X
                STA     byte_590
                LDA     TilesCount
                SBC     byte_601,X
                STA     byte_591
                BCC     loc_17BE38
                ORA     byte_590
                BEQ     loc_17BE38
                LDA     byte_66
                STA     byte_600,X
                LDA     TilesCount
                STA     byte_601,X
                RTS
; ---------------------------------------------------------------------------

loc_17BE38:                             ; CODE XREF: sub_17BDEB+3B↑j
                                        ; sub_17BDEB+40↑j
                JMP     sub_17BFD8
; End of function sub_17BDEB


; =============== S U B R O U T I N E =======================================


sub_17BE3B:                             ; CODE XREF: sub_17B899+7↑p
                JSR     sub_17BF2C
                CLC
                LDA     byte_600,X
                ADC     Pointer
                STA     byte_66
                BCC     loc_17BE4C
                LDA     #$FF
                STA     byte_66

loc_17BE4C:                             ; CODE XREF: sub_17BE3B+B↑j
                SEC
                LDA     pTileID
                SBC     byte_66
                BCS     loc_17BE57
                LDA     pTileID
                STA     byte_66

loc_17BE57:                             ; CODE XREF: sub_17BE3B+16↑j
                LDA     #0
                STA     byte_591
                SEC
                LDA     byte_66
                SBC     byte_600,X
                STA     byte_590
                BCC     loc_17BE6F
                BEQ     loc_17BE6F
                LDA     byte_66
                STA     byte_600,X
                RTS
; ---------------------------------------------------------------------------

loc_17BE6F:                             ; CODE XREF: sub_17BE3B+2A↑j
                                        ; sub_17BE3B+2C↑j
                JMP     sub_17BFD8
; End of function sub_17BE3B


; =============== S U B R O U T I N E =======================================


sub_17BE72:                             ; CODE XREF: sub_17BA07+C↑p
                                        ; sub_17BF15+14↓j
                JSR     sub_17BF2C
                SEC
                LDA     byte_600,X
                SBC     Pointer
                STA     byte_66
                LDA     byte_601,X
                SBC     Pointer+1
                STA     TilesCount
                BCS     loc_17BE8C
                LDA     #0
                STA     byte_66
                STA     TilesCount

loc_17BE8C:                             ; CODE XREF: sub_17BE72+12↑j
                CPY     #3
                BEQ     loc_17BE9E
                CPY     #5
                BEQ     loc_17BE9E
                LDA     byte_66
                ORA     TilesCount
                BNE     loc_17BE9E
                LDA     #1
                STA     byte_66

loc_17BE9E:                             ; CODE XREF: sub_17BE72+1C↑j
                                        ; sub_17BE72+20↑j ...
                SEC
                LDA     byte_600,X
                SBC     byte_66
                STA     byte_590
                LDA     byte_601,X
                SBC     TilesCount
                STA     byte_591
                BCC     loc_17BEC1
                ORA     byte_590
                BEQ     loc_17BEC1
                LDA     byte_66
                STA     byte_600,X
                LDA     TilesCount
                STA     byte_601,X
                RTS
; ---------------------------------------------------------------------------

loc_17BEC1:                             ; CODE XREF: sub_17BE72+3D↑j
                                        ; sub_17BE72+42↑j
                JMP     sub_17BFD8
; End of function sub_17BE72


; =============== S U B R O U T I N E =======================================


sub_17BEC4:                             ; CODE XREF: sub_17BA1B+7↑p
                JSR     sub_17BF2C
                SEC
                LDA     byte_600,X
                SBC     Pointer
                STA     byte_66
                BEQ     loc_17BED3
                BCS     loc_17BED7

loc_17BED3:                             ; CODE XREF: sub_17BEC4+B↑j
                LDA     #1
                STA     byte_66

loc_17BED7:                             ; CODE XREF: sub_17BEC4+D↑j
                LDA     #0
                STA     byte_591
                SEC
                LDA     byte_600,X
                SBC     byte_66
                STA     byte_590
                BEQ     loc_17BEEF
                BCC     loc_17BEEF
                LDA     byte_66
                STA     byte_600,X
                RTS
; ---------------------------------------------------------------------------

loc_17BEEF:                             ; CODE XREF: sub_17BEC4+21↑j
                                        ; sub_17BEC4+23↑j
                JMP     sub_17BFD8
; End of function sub_17BEC4


; =============== S U B R O U T I N E =======================================


sub_17BEF2:                             ; CODE XREF: sub_17B868+7↑p
                                        ; sub_17B879+7↑p ...
                JSR     sub_17BF2C
                LDA     AddrForJmp
                STA     pTileID
                LDA     AddrForJmp+1
                STA     pTileID+1
                JMP     sub_17BDEB
; End of function sub_17BEF2


; =============== S U B R O U T I N E =======================================


sub_17BF00:                             ; CODE XREF: sub_17B8AF+4↑p
                                        ; sub_17B8BD+4↑p ...
                TXA
                PHA
                JSR     sub_17BF2C
                PLA
                TAX
                LDA     AddrForJmp
                STA     Pointer
                LDA     AddrForJmp+1
                STA     Pointer+1
                JSR     sub_F2ED
                JMP     sub_17BDE8
; End of function sub_17BF00


; =============== S U B R O U T I N E =======================================


sub_17BF15:                             ; CODE XREF: sub_17BA6E+4↑p
                                        ; sub_17BA7A+4↑p
                TXA
                PHA
                JSR     sub_17BF2C
                PLA
                TAX
                LDA     AddrForJmp+1
                LSR     A
                STA     Pointer+1
                LDA     AddrForJmp
                ROR     A
                STA     Pointer
                JSR     sub_F2ED
                JMP     sub_17BE72
; End of function sub_17BF15


; =============== S U B R O U T I N E =======================================


sub_17BF2C:                             ; CODE XREF: sub_17BDE8↑p
                                        ; sub_17BE3B↑p ...
                LDA     pPPUTab,X
                STA     byte_66
                LDA     pPPUTab+1,X
                STA     TilesCount
                LDA     (byte_66),Y
                STA     AddrForJmp
                ASL     A
                STA     pTileID
                INY
                LDA     (byte_66),Y
                AND     #3
                STA     AddrForJmp+1
                ROL     A
                STA     pTileID+1
                BCC     loc_17BF4F
                LDA     #$FF
                STA     pTileID
                STA     pTileID+1

loc_17BF4F:                             ; CODE XREF: sub_17BF2C+1B↑j
                DEY
                STX     pDist
                TYA
                CLC
                ADC     pDist
                TAX
                RTS
; End of function sub_17BF2C


; =============== S U B R O U T I N E =======================================


sub_17BF58:                             ; CODE XREF: sub_17BAE4+5↑p
                                        ; sub_17BAFA+5↑p ...
                LDY     byte_53
                LDA     unk_60D,Y
                TAX
                LDY     byte_54
                LDA     unk_60E,Y
                JMP     sub_17BF8C
; End of function sub_17BF58


; =============== S U B R O U T I N E =======================================


sub_17BF66:                             ; CODE XREF: sub_17BB0D+A↑p
                                        ; sub_17BB25+A↑p ...
                LDY     byte_53
                LDA     unk_60D,Y
                TAX
                LDY     byte_54
                LDA     unk_60F,Y
                JMP     sub_17BF8C
; End of function sub_17BF66


; =============== S U B R O U T I N E =======================================


sub_17BF74:                             ; CODE XREF: sub_17B915:loc_17B978↑p
                                        ; sub_17BA07+5↑p
                LDA     unk_602,Y
                AND     byte_57
                BEQ     loc_17BF87
                LSR     Pointer+1
                ROR     Pointer
                LDA     Pointer
                ORA     Pointer+1
                BNE     loc_17BF87
                INC     Pointer

loc_17BF87:                             ; CODE XREF: sub_17BF74+5↑j
                                        ; sub_17BF74+F↑j
                LDA     #0
                STA     byte_57
                RTS
; End of function sub_17BF74


; =============== S U B R O U T I N E =======================================


sub_17BF8C:                             ; CODE XREF: sub_17BF58+B↑j
                                        ; sub_17BF66+B↑j
                LSR     A
                STA     Pointer
                STX     pTileID
                TXA
                SEC
                SBC     Pointer
                BCS     loc_17BF99
                LDA     #0

loc_17BF99:                             ; CODE XREF: sub_17BF8C+9↑j
                STA     Pointer+1
                LDA     #0
                STA     Pointer
                STA     AddrForJmp
                JSR     sub_F13D
                JSR     sub_F1ED
                CMP     Pointer
                RTS
; End of function sub_17BF8C


; =============== S U B R O U T I N E =======================================


sub_17BFAA:                             ; CODE XREF: sub_17A573+C7↑p
                                        ; sub_17BD2B+4↑p
                JSR     sub_17AABC
                LDY     #0

loc_17BFAF:                             ; CODE XREF: sub_17BFAA+26↓j
                TYA
                PHA
                LDA     (Pointer),Y
                BEQ     loc_17BFCB
                JSR     sub_17AAA4
                JSR     bank0           ; set memory bank 0 at $8000
                LDY     #5
                LDA     (AddrForJmp),Y
                TAX
                LDY     #2
                LDA     (AddrForJmp),Y
                JSR     bank16          ; set memory bank $16 at $8000
                AND     #$40 ; '@'
                BNE     loc_17BFD4

loc_17BFCB:                             ; CODE XREF: sub_17BFAA+9↑j
                PLA
                TAY
                INY
                CPY     #8
                BNE     loc_17BFAF
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17BFD4:                             ; CODE XREF: sub_17BFAA+1F↑j
                PLA
                TAY
                CLC
                RTS
; End of function sub_17BFAA


; =============== S U B R O U T I N E =======================================


sub_17BFD8:                             ; CODE XREF: sub_17BDEB:loc_17BE38↑j
                                        ; sub_17BE3B:loc_17BE6F↑j ...
                LDA     #0
                STA     byte_590
                STA     byte_591
                CLC
                RTS
; End of function sub_17BFD8


; =============== S U B R O U T I N E =======================================


sub_17BFE2:                             ; CODE XREF: sub_17B0F7↑p
                                        ; sub_17B915+A↑p ...
                LDA     byte_54
                BPL     loc_17BFEB

loc_17BFE6:                             ; CODE XREF: sub_17BB8C↑p
                LDA     byte_56
                LSR     A
                BNE     loc_17BFED

loc_17BFEB:                             ; CODE XREF: sub_17BFE2+2↑j
                CLC
                RTS
; ---------------------------------------------------------------------------

loc_17BFED:                             ; CODE XREF: sub_17BFE2+7↑j
                SEC
                RTS
; End of function sub_17BFE2


; =============== S U B R O U T I N E =======================================


sub_17BFEF:                             ; CODE XREF: sub_17B915+8B↑p
                                        ; sub_17BA2A+5↑p ...
                LDY     byte_54
                BMI     loc_17BFFC
                LDA     byte_611,Y
                CMP     #6
                BNE     loc_17BFFC
                SEC
                RTS
; ---------------------------------------------------------------------------

loc_17BFFC:                             ; CODE XREF: sub_17BFEF+2↑j
                                        ; sub_17BFEF+9↑j
                CLC
                RTS
; End of function sub_17BFEF

; ---------------------------------------------------------------------------
                .BYTE $FF, $FF
; end of 'BANK17'