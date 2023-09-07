; CHARS BANKS 0x7A-0x7B (char bank size 0x400)
; the contents are identical to PRG BANK 0x19 of address B800-BFFF
; is used for the game menu (new game, start, delete, copy). Copied to SRAM 0x6000-0x67FF

sub_6000:
                TAY
                BEQ     loc_6005
                LDY     #4

loc_6005:                               ; CODE XREF: sub_6000+1↑j
                LDA     $6222,Y
                STA     $584,X
                LDA     $6223,Y
                STA     $585,X
                LDA     $6224,Y
                STA     $586,X
                LDA     $6225,Y
                STA     $587,X
                RTS
; End of function sub_6000


; =============== S U B R O U T I N E =======================================


sub_601E:
                LDA     $6073,X
                STA     $74
                LDA     $6074,X
                STA     $75
                RTS
; End of function sub_601E


; =============== S U B R O U T I N E =======================================


sub_6029:
                LDA     $6085,X
                STA     $80
                LDA     $6086,X
                STA     $81
                RTS
; End of function sub_6029


; =============== S U B R O U T I N E =======================================


sub_6034:
                LDA     #$FF
                STA     $D6
                LDX     #6
                LDY     #5
                STX     $76
                STY     $77
                RTS
; End of function sub_6034


; =============== S U B R O U T I N E =======================================


sub_6041:
                PHA
                LDA     #0
                LDX     #$74 ; 't'
                STA     $30
                STX     $31
                LDA     #0
                LDX     #$BE
                STA     $32
                STX     $33
                LDX     #2
                LDY     #0

loc_6056:                               ; CODE XREF: sub_6041+1A↓j
                                        ; sub_6041+21↓j
                LDA     ($32),Y
                STA     ($30),Y
                INY
                BNE     loc_6056
                INC     $31
                INC     $33
                DEX
                BNE     loc_6056
                LDA     #0

loc_6066:                               ; CODE XREF: sub_6041+28↓j
                STA     ($30),Y
                INY
                BNE     loc_6066
                PLA
                ORA     $7402
                STA     $7402
                RTS
; End of function sub_6041

; ---------------------------------------------------------------------------
                .WORD stru_611A, stru_6192, stru_6138, stru_61AA, stru_6156
                .WORD stru_61C2, stru_6095, stru_60AC, stru_60FA
                .WORD byte_61F0, byte_61F0, byte_61F0, byte_61FA, byte_61F0
                .WORD byte_6204, byte_620E, byte_6218
stru_6095:      TILEPACK_POS <$20, 4, $14> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
                .BYTE 1
                TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
                .BYTE 1
                TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
                .BYTE 1
                TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
                .BYTE 0
                TILEPACK_FILL <$22, $A0, $18> ; command to fill with a single repeating tile
                .BYTE 0
stru_60AC:      TILEPACK_POS <$20, 6, $14> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $DB               ; /
                TILEPACK_FILL <$22, $DC, $12> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE $24               ; |
                .BYTE $A0, $A6          ;  "
                TILEPACK_23 <$23, $7478, 0, 8> ; command specifying a new offset for what?
                .BYTE $CC, $F6, $EC     ; Lvl
                TILEPACK_23 <$23, $7450, 1, 2> ; command specifying a new offset for what?
                .BYTE $A6, $A0, $A0     ; "
                .BYTE $25               ; |
                .BYTE 1
                .BYTE $24               ; |
                .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $F6, $E1, $EE, $E9 ;  will vanish. OK?
                .BYTE $F3, $E8, $AE, $A0, $CF, $CB, $A2, $A0
                .BYTE $25               ; |
                .BYTE 1
                .BYTE $24               ; |
                .BYTE $A0, $A0, $A0, $A0, $A0, $D9, $E5, $F3, $A0, $A0 ;      Yes  No
                .BYTE $CE, $EF, $A0, $A0, $A0, $A0, $A0, $A0
                .BYTE $25               ; |
                .BYTE 0
                .BYTE $FB               ; \
                TILEPACK_FILL <$22, $FC, $12> ; command to fill with a single repeating tile
                .BYTE $FD, 0            ; /
stru_60FA:      TILEPACK_POS <$20, 8, $15> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $DB               ; /
                TILEPACK_FILL <$22, $DC, $E> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE $24               ; |
                .BYTE $A0, $A0, $A0, $D4, $EF, $A0, $F7, $E8, $E9, $E3 ;    To which?
                .BYTE $E8, $A2, $A0, $A0
                .BYTE $25               ; |
                .BYTE 0
                .BYTE $FB               ; \
                TILEPACK_FILL <$22, $FC, $E> ; command to fill with a single repeating tile
                .BYTE $FD, 0            ; /
stru_611A:      TILEPACK_POS <$20, 3, 1> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $A0, 1            ;
                .BYTE $A0, $DB, $DC, $FE ;  /--
                TILEPACK_23 <$23, $7778, 0, 8> ; command specifying a new offset for what?
                .BYTE $CC, $F6, $EC     ; Lvl
                TILEPACK_23 <$23, $7750, 1, 2> ; command specifying a new offset for what?
                TILEPACK_FILL <$22, $DC, 7> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE   4               ; command to load packed tiles at the specified offset
                .BYTE $71, $61          ; qa
stru_6138:      TILEPACK_POS <$20, 3, 7> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $A0, 1            ;
                .BYTE $A0, $DB, $DC, $FE ;  /--
                TILEPACK_23 <$23, $7A78, 0, 8> ; command specifying a new offset for what?
                .BYTE $CC, $F6, $EC     ; Lvl
                TILEPACK_23 <$23, $7A50, 1, 2> ; command specifying a new offset for what?
                TILEPACK_FILL <$22, $DC, 7> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE   4               ; command to load packed tiles at the specified offset
                .BYTE $71, $61          ; qa
stru_6156:      TILEPACK_POS <$20, 3, $D> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $A0, 1            ;
                .BYTE $A0, $DB, $DC, $FE ;  /--
                TILEPACK_23 <$23, $7D78, 0, 8> ; command specifying a new offset for what?
                .BYTE $CC, $F6, $EC     ; Lvl
                TILEPACK_23 <$23, $7D50, 1, 2> ; command specifying a new offset for what?
                TILEPACK_FILL <$22, $DC, 7> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE $A0               ;
                .BYTE $24               ; |
                .BYTE $A0, $C3, $EF, $EE, $F4, $E9, $EE, $F5, $E5, $A0 ;  Continue  Copy Erase
                .BYTE $A0, $C3, $EF, $F0, $F9, $A0, $C5, $F2, $E1, $F3
                .BYTE $E5, $A0
                .BYTE $25               ; |
                .BYTE 0
                .BYTE $A0, $FB          ;  \
                TILEPACK_FILL <$22, $FC, $16> ; command to fill with a single repeating tile
                .BYTE $FD, 0            ; /
stru_6192:      TILEPACK_POS <$20, 3, 1> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $A0, 1            ;
                .BYTE $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8, $B1 ;  /--GAME(1)
                .BYTE $A9
                TILEPACK_FILL <$22, $DC, $D> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE   4               ; command to load packed tiles at the specified offset
                .BYTE $D7, $61          ; Wa
stru_61AA:      TILEPACK_POS <$20, 3, 7> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $A0, 1            ;
                .BYTE $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8, $B2 ;  /--GAME(2)
                .BYTE $A9
                TILEPACK_FILL <$22, $DC, $D> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE   4               ; command to load packed tiles at the specified offset
                .BYTE $D7, $61          ; Wa
stru_61C2:      TILEPACK_POS <$20, 3, $D> ; DATA XREF: ROM:6073↑o
                                        ; command to set the initial position of tile output
                .BYTE $A0, 1            ;
                .BYTE $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8, $B3 ;  /--GAME(3)
                .BYTE $A9
                TILEPACK_FILL <$22, $DC, $D> ; command to fill with a single repeating tile
                .BYTE $DD, 1            ; \
                .BYTE $A0               ;
                .BYTE $24               ; |
                TILEPACK_FILL <$22, $A0, 6> ; command to fill with a single repeating tile
                .BYTE $D3, $F4, $E1, $F2, $F4, $A0, $F5, $F0 ; Start up
                TILEPACK_FILL <$22, $A0, 8> ; command to fill with a single repeating tile
                .BYTE $25               ; |
                .BYTE 0
                .BYTE $A0, $FB          ;  \
                TILEPACK_FILL <$22, $FC, $16> ; command to fill with a single repeating tile
                .BYTE $FD, 0            ; /
byte_61F0:      .BYTE 1, 3, 0, 6, $C0, $3A, 3, 4, $2C, $62
                                        ; DATA XREF: ROM:6085↑o
byte_61FA:      .BYTE 1, 3, 0, 6, $C0, $3A, 3, 4, $2F, $62
                                        ; DATA XREF: ROM:6085↑o
byte_6204:      .BYTE 1, 3, 0, 6, $C0, $3A, 3, 4, $32, $62
                                        ; DATA XREF: ROM:6085↑o
byte_620E:      .BYTE 4, 3, 5, 6, $80, $3A, 5, 5, $84, 5
                                        ; DATA XREF: ROM:6085↑o
byte_6218:      .BYTE 2, 1, 5, 0, $80, $3A, $B, $1A, $2A, $62
                                        ; DATA XREF: ROM:6085↑o
                .BYTE $80, 0, $81, $82
                .BYTE 0, $83, 0, 0
                .BYTE 1, 2
                .BYTE 0, 3, 5
                .BYTE 1, 0, 5
                .BYTE 1, 3, 0
                .BYTE $60, 0, $7C, $7D, $7E, $7F
                .BYTE $F, $F, $30, $30, $F, $3A, $10, $20, $F, $3A, $25
                .BYTE $1A, $F, $3A, $30, $12, $F, $F, 0, $30, $F, $F, $16
                .BYTE $37, $F, $F, $24, $37, $F, $F, $12, $37

; =============== S U B R O U T I N E =======================================


sub_625B:
                LDA     #4
                STA     $300,Y
                LDA     $64
                STA     $301,Y
                LDA     $62
                STA     $302,Y
                LDA     $63
                STA     $303,Y
                LDA     #0
                STA     $304,Y
                STA     $305,Y
                LDA     $60
                STA     $306,Y
                LDA     $61
                STA     $307,Y
                LDA     #1
                STA     $E5
                RTS
; End of function sub_625B


; =============== S U B R O U T I N E =======================================


sub_6286:
                LDA     #$50 ; 'P'
                STA     $62
                LDA     #8
                STA     $63
                LDA     #0
                STA     $64
                LDA     #$10
                STA     $60
                LDA     #$80
                STA     $61
                RTS
; End of function sub_6286


; =============== S U B R O U T I N E =======================================


sub_629B:
                CLC
                LDA     $60
                ADC     #$20 ; ' '
                STA     $60
                LDA     $61
                ADC     #0
                STA     $61
                CLC
                LDA     $63
                ADC     #$18
                STA     $63
                CLC
                TYA
                ADC     #8
                TAY
                RTS
; End of function sub_629B


; =============== S U B R O U T I N E =======================================


sub_62B5:
                CLC
                LDA     $64
                ADC     #$10
                STA     $64
                LDA     $65
                ADC     #0
                STA     $65
                CLC
                LDA     $63
                ADC     #2
                STA     $63
                RTS
; End of function sub_62B5

; ---------------------------------------------------------------------------
                .WORD $8010, byte_6303, $7478
                .WORD $8030, byte_631C, $74B8
                .WORD $8050, byte_6336, $74F8
                .WORD $8070, byte_634D, $7538
                .WORD 0, byte_6363, $7689
                .BYTE $10, 6, 1, 2, $D0, 1, 8, $E
                .BYTE 2, 1, 4, 0, $80, $3A, $C, $18, $FA, $62
                .BYTE 1, 1, 1
                .BYTE 8, $40, $23, $C0, $FF, 0
byte_6303:      .BYTE $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4, $E8
                                        ; DATA XREF: ROM:62CA↑o
                .BYTE $E9, $F3, 1       ; What is this
                .BYTE $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5 ; boy's name?
                .BYTE $A2, 0
byte_631C:      .BYTE $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4, $E8
                                        ; DATA XREF: ROM:62D0↑o
                .BYTE $E9, $F3, 1       ; What is this
                .BYTE $E7, $E9, $F2, $EC, $A7, $F3, $A0, $EE, $E1, $ED ; girl's name?
                .BYTE $E5, $A2, 0
byte_6336:      .BYTE $D4, $E8, $E9, $F3, $A0, $EF, $F4, $E8, $E5, $F2
                                        ; DATA XREF: ROM:62D6↑o
                .BYTE 1                 ; This other
                .BYTE $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5 ; boy's name?
                .BYTE $A2, 0
byte_634D:      .BYTE $D4, $E8, $E9, $F3, $A0, $EC, $E1, $F3, $F4, 1
                                        ; DATA XREF: ROM:62DC↑o
                                        ; This last
                .BYTE $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5 ; boy's name?
                .BYTE $A2, 0
byte_6363:      .BYTE $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F9, $EF
                                        ; DATA XREF: ROM:62E2↑o
                .BYTE $F5, $F2, 1       ; What is your
                .BYTE $E6, $E1, $F6, $EF, $F2, $E9, $F4, $E5, $A0, $E6 ; favorite food?
                .BYTE $EF, $EF, $E4, $A2, 0
                .BYTE $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $E8, $E1 ; Please change
                .BYTE $EE, $E7, $E5, 1
                .BYTE $F4, $E8, $E9, $F3, $A0, $EE, $E1, $ED, $E5, $AE ; this name.
                .BYTE 0
                .BYTE $C1, $A0, $E3, $E8, $E1, $F2, $E1, $E3, $F4, $E5 ; A character in
                .BYTE $F2, $A0, $E9, $EE, $A0, 1
                .BYTE $F4, $E8, $E9, $F3, $A0, $E7, $E1, $ED, $E5, $A0 ; this game has
                .BYTE $E8, $E1, $F3, $A0, $A0, 1
                .BYTE $F4, $E8, $E1, $F4, $A0, $EE, $E1, $ED, $E5, $AE ; that name. Try
                .BYTE $A0, $D4, $F2, $F9, $A0, 1
                .BYTE $E1, $E7, $E1, $E9, $EE, $AC, $A0, $E1, $EE, $E4 ; again, and use
                .BYTE $A0, $F5, $F3, $E5, $A0, 1
                .BYTE $EF, $EE, $EC, $F9, $A0, $E3, $E1, $F0, $E9, $F4 ; only capital
                .BYTE $E1, $EC, $A0, $A0, $A0, 1
                .BYTE $EC, $E5, $F4, $F4, $E5, $F2, $F3, $AE, $A0, $A0 ; letters.
                .BYTE $A0, $A0, $A0, $A0, $A0, 0
                .BYTE $CD, $E1, $F2, $F9, $A2, 1 ; Mary?
                .BYTE $D3, $F5, $FA, $F9, $A2, 1 ; Suzy?
                .BYTE $C7, $E5, $EF, $F2, $E7, $E5, $A2, 1 ; George?
                .BYTE $CD, $E1, $F2, $E9, $E1, $A2, 1 ; Maria?
                .BYTE $CD, $E9, $ED, $ED, $E9, $E5, $A2, 1 ; Mimmie?
                .BYTE $CD, $E9, $EE, $EE, $E9, $E5, $A2, 1 ; Minnie?
                .BYTE $D0, $E9, $F0, $F0, $E9, $A2, 1 ; Pippi?
                .BYTE $C4, $F5, $EE, $E3, $E1, $EE, $A2, 1 ; Duncan?
                .BYTE $CC, $E1, $F5, $F2, $E1, $A2, 1 ; Laura?
                .BYTE $C7, $E9, $E5, $E7, $F5, $E5, $A2, 1 ; Giegue?
                .BYTE $C1, $E2, $E2, $EF, $F4, $F4, $A2, 1 ; Abbott?
                .BYTE $CE, $E1, $EE, $E3, $F9, $A2, 1 ; Nancy?
                .BYTE $D5, $EC, $EC, $F2, $E9, $E3, $E8, 1 ; Ullrich
                .BYTE $D7, $E1, $EC, $EC, $F9, $A2, 1 ; Wally?
                .BYTE $CB, $E5, $EC, $EC, $F9, $A2, 1 ; Kelly?
                .BYTE $CA, $F5, $E1, $EE, $E1, $A2, 1 ; Juana?
                .BYTE $A0, 1            ;
                .BYTE 0
                .BYTE $C1, $C2, $C3, $C4, $C5, $C6, $C7, $A0, $C8, $C9 ; ABCDEFG HIJKLMN
                .BYTE $CA, $CB, $CC, $CD, $CE, 0
                .BYTE $CF, $D0, $D1, $D2, $D3, $D4, $D5, $A0, $D6, $D7 ; OPQRSTU VWXYZ.'
                .BYTE $D8, $D9, $DA, $AE, $A7, 0
                .BYTE $E1, $E2, $E3, $E4, $E5, $E6, $E7, $A0, $E8, $E9 ; abcdefg hijklmn
                .BYTE $EA, $EB, $EC, $ED, $EE, 0
                .BYTE $EF, $F0, $F1, $F2, $F3, $F4, $F5, $A0, $F6, $F7 ; opqrstu vwxyz-:
                .BYTE $F8, $F9, $FA, $AD, $AA, 0
                .BYTE 0
                .BYTE 0
                .BYTE $A1, 0            ; !
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE $A2, 0            ; ?
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE $A3, 0            ; .
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE 0
                .BYTE $C9, $EE, $A0, $F4, $E8, $E5, $A0, $E5, $E1, $F2 ; In the early 1900's, a dark
                .BYTE $EC, $F9, $A0, $B1, $B9, $B0, $B0, $A7, $F3, $AC
                .BYTE $A0, $E1, $A0, $E4, $E1, $F2, $EB, 1
                .BYTE $F3, $E8, $E1, $E4, $EF, $F7, $A0, $E3, $EF, $F6 ; shadow covered a small
                .BYTE $E5, $F2, $E5, $E4, $A0, $E1, $A0, $F3, $ED, $E1
                .BYTE $EC, $EC, 1
                .BYTE $E3, $EF, $F5, $EE, $F4, $F2, $F9, $A0, $F4, $EF ; country town in rural
                .BYTE $F7, $EE, $A0, $E9, $EE, $A0, $F2, $F5, $F2, $E1
                .BYTE $EC, 1
                .BYTE $C1, $ED, $E5, $F2, $E9, $E3, $E1, $AE, $A0, $A0 ; America.  At that time, a
                .BYTE $C1, $F4, $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E9
                .BYTE $ED, $E5, $AC, $A0, $E1, 1
                .BYTE $F9, $EF, $F5, $EE, $E7, $A0, $ED, $E1, $F2, $F2 ; young married couple
                .BYTE $E9, $E5, $E4, $A0, $E3, $EF, $F5, $F0, $EC, $E5
                .BYTE 1
                .BYTE $F6, $E1, $EE, $E9, $F3, $E8, $E5, $E4, $A0, $ED ; vanished mysteriously from
                .BYTE $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5, $F3, $EC
                .BYTE $F9, $A0, $E6, $F2, $EF, $ED, 1
                .BYTE $F4, $E8, $E5, $E9, $F2, $A0, $E8, $EF, $ED, $E5 ; their home.
                .BYTE $AE, 1
                .BYTE $A0, 1            ;
                .BYTE $D4, $E8, $E5, $A0, $ED, $E1, $EE, $A7, $F3, $A0 ; The man's name was George,
                .BYTE $EE, $E1, $ED, $E5, $A0, $F7, $E1, $F3, $A0, $C7
                .BYTE $E5, $EF, $F2, $E7, $E5, $AC, 1
                .BYTE $F4, $E8, $E5, $A0, $F7, $EF, $ED, $E1, $EE, $A7 ; the woman's name was Maria.
                .BYTE $F3, $A0, $EE, $E1, $ED, $E5, $A0, $F7, $E1, $F3
                .BYTE $A0, $CD, $E1, $F2, $E9, $E1, $AE, 1
                .BYTE $A0, 1            ;
                .BYTE $D4, $F7, $EF, $A0, $F9, $E5, $E1, $F2, $F3, $A0 ; Two years later, as suddenly
                .BYTE $EC, $E1, $F4, $E5, $F2, $AC, $A0, $E1, $F3, $A0
                .BYTE $F3, $F5, $E4, $E4, $E5, $EE, $EC, $F9, 1
                .BYTE $E1, $F3, $A0, $E8, $E5, $A0, $EC, $E5, $E6, $F4 ; as he left, George returned.
                .BYTE $AC, $A0, $C7, $E5, $EF, $F2, $E7, $E5, $A0, $F2
                .BYTE $E5, $F4, $F5, $F2, $EE, $E5, $E4, $AE, 1
                .BYTE $C8, $E5, $A0, $EE, $E5, $F6, $E5, $F2, $A0, $F4 ; He never told anyone where
                .BYTE $EF, $EC, $E4, $A0, $E1, $EE, $F9, $EF, $EE, $E5
                .BYTE $A0, $F7, $E8, $E5, $F2, $E5, 1
                .BYTE $E8, $E5, $A0, $E8, $E1, $E4, $A0, $E2, $E5, $E5 ; he had been or what he had
                .BYTE $EE, $A0, $EF, $F2, $A0, $F7, $E8, $E1, $F4, $A0
                .BYTE $E8, $E5, $A0, $E8, $E1, $E4, 1
                .BYTE $E4, $EF, $EE, $E5, $AE, $A0, $A0, $C2, $F5, $F4 ; done.  But, he began an odd
                .BYTE $AC, $A0, $E8, $E5, $A0, $E2, $E5, $E7, $E1, $EE
                .BYTE $A0, $E1, $EE, $A0, $EF, $E4, $E4, 1
                .BYTE $F3, $F4, $F5, $E4, $F9, $AC, $A0, $E1, $EC, $EC ; study, all by himself.
                .BYTE $A0, $E2, $F9, $A0, $E8, $E9, $ED, $F3, $E5, $EC
                .BYTE $E6, $AE, 1
                .BYTE $A0, 1            ;
                .BYTE $C1, $F3, $A0, $E6, $EF, $F2, $A0, $CD, $E1, $F2 ; As for Maria, his wife...
                .BYTE $E9, $E1, $AC, $A0, $E8, $E9, $F3, $A0, $F7, $E9
                .BYTE $E6, $E5, $AE, $AE, $AE, 1
                .BYTE $D3, $E8, $E5, $A0, $EE, $E5, $F6, $E5, $F2, $A0 ; She never returned.
                .BYTE $F2, $E5, $F4, $F5, $F2, $EE, $E5, $E4, $AE, 0
                .BYTE $B8, $B0, $A0, $F9, $E5, $E1, $F2, $F3, $A0, $E8 ; 80 years have passed
                .BYTE $E1, $F6, $E5, $A0, $F0, $E1, $F3, $F3, $E5, $E4
                .BYTE 1
                .BYTE $A0, 1            ;
                .BYTE $F3, $E9, $EE, $E3, $E5, $A0, $F4, $E8, $E5, $EE ; since then.
                .BYTE $AE, 0
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
                .BYTE $FF, $FF
