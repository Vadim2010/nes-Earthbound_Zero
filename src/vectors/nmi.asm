.segment "ZEROPAGE"
;.org $EA						; in the original game $EA
    NMIReady: .res 1
;    palette_init: .res 1
;    scroll_y: .res 1

.segment "CODE"

; F79F
nmi:
	bit PPU_STATUS
	bit NMIReady
	bpl @NMIGo
	rti

@NMIGo:	
    save_registers				; save registers on the stack

    ; initialize sprite RAM and transfer data
    ldx #0
    lda #2						; oam >> 8
    stx OAM_ADDR				; 8-bit address in SPR-RAM to access via OAM_DMA ($2004).
    sta OAM_DMA					; Transfers 256 bytes of memory into SPR-RAM. The address
                                ; read from is $100*N, where N is the value written.
    ldy Offset400
    lda byte_E0
    beq loc_F7C2
    lda CHRToPPU				; load the number of characters ready to be sent to the PPU
    bne loc_F7CA
    beq @NoChars

loc_F7C2:
    lda CHRToPPU				; load the number of characters ready to be sent to the PPU
    beq @NoChars
    and #$7F
    sta byte_E0

loc_F7CA:                                                  
    lda $400,Y					; get NMI function ID (order number in the ReturnTable)
    beq loc_F7E3
    bmi loc_F7DC
    asl A						; get offset for ReturnTable
    tax 
    lda ReturnTable + 1,X		; store the high address of the subprogram on the stack
    pha 
    lda ReturnTable,X			; store the low address - 1 of the subprogram on the stack
    pha
    rts							; execute the subprogram

loc_F7DC:                               
                AND     #$7F
                STA     $400,Y
                BNE     @NoChars

loc_F7E3:                               
                STA     CHRToPPU

@NoChars:                                                                      
                LDX     byte_EC
                BEQ     loc_F827
                LDA     #$FF
                STA     IRQ_LATCH
                STA     IRQ_RELOAD
                LDA     #0
                STA     PPU_ADDR          
                STA     PPU_ADDR        
                LDA     #$10
                STA     PPU_ADDR        
                STA     PPU_ADDR        
                LDA     #0
                STA     PPU_ADDR        
                STA     PPU_ADDR         
                LDA     #$10
                STA     PPU_ADDR         
                STA     PPU_ADDR        
                LDA     #0
                STA     PPU_ADDR           
                STA     PPU_ADDR          
                STX     IRQ_LATCH
                STX     IRQ_RELOAD
                STX     IRQ_ENABLE           ; enable MMC3 interrupts
                STX     byte_EB
                STA     InterruptOffset
                CLI

loc_F827:
                LDA     vertical_scroll_PPU
                LDX     horizontal_scroll_PPU
                STA     PPU_SCROLL      
                STX     PPU_SCROLL      
                LDA     CntrlPPU
                LDX     mask_PPU
                STA     PPU_CTRL         
                STX     PPU_MASK          
                STY     Offset400
                LDA     #$80
                STA     NMIReady
                LDA     BankTableOffset
                PHA
                LDA     BankTable.CPU_8K_8000
                PHA
                LDA     BankTable.CPU_8K_A000
                PHA
                LDA     byte_8
                BEQ     loc_F85F
                LSR     A
                AND     #3
                ORA     #$44
                LDX     #2
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                LDX     #3
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                DEC     byte_8

loc_F85F:
                JSR     bank_8000_1D_A000
                JSR     BANK_SELECT     ; Bank 0x1C
                LDA     byte_E2
                BMI     restore_bank
                LDA     byte_E7
                AND     #$3F ; '?'
                STA     byte_E1
                LDA     byte_E0
                BNE     loc_F879
                JSR     sub_FC96
                JMP     restore_bank

loc_F879:
                CLC
                SBC     byte_E1
                BCS     loc_F885
                LDX     byte_E0
                DEX
                STX     byte_E1
                LDA     #0

loc_F885:
                STA     byte_E0
                JSR     sub_FA81

restore_bank:
                PLA                     ; 13
                LDX     #7              ; A000
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                PLA                     ; 14
                LDX     #6              ; 8000
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                PLA                     ; 7
                STA     BankTableOffset
                ORA     BankMode
                STA     BANK_SELECT
                JSR     gamepad_input
                LDA     GamePad0Status
                ORA     byte_DA
                STA     byte_DA
                LDA     byte_DD
                ORA     byte_DB
                STA     byte_DB
                JSR     handle_game_logic
                LDA     byte_D7
                BEQ     @end_nmi
                JSR     byte_D7

@end_nmi:
	;lda #0
	;sta NMIReady
	set NMIReady, #0
    restore_registers			;restore registers from the stack
    rti

; F8C1
ReturnTable:
	.addr loc_F7CA-1, sub_F8D7-1, sub_F8DB-1, sub_F8E5-1, load_palettes-1
    .addr sub_F916-1, sub_F923-1, sub_F93C-1, sub_F95C-1, sub_F97C-1
    .addr sub_F99F-1

; F8D7
.proc sub_F8D7:
    iny
    jmp loc_F7CA
.endproc

; F8DB
.proc sub_F8DB:
    iny
    tya
    sec
    adc $400,Y
    tay 
    jmp loc_F7CA
.endproc

; F8E5
.proc sub_F8E5:
    iny
    lda $400,Y
    tay 
    jmp loc_F7CA
.endproc
				
; F8ED load_palettes: ; in the ppu.asm

; F916
sub_F916:
                JSR     sub_F9EF
                LDA     $400,Y
                CMP     #5
                BEQ     sub_F916
                JMP     loc_F7CA

; F923
sub_F923:
                LDA     CntrlPPU
                ORA     #PPU_CTRL_INCREMENT_MODE
                STA     PPU_CTRL        

loc_F92A:                               
                JSR     sub_F9EF
                LDA     $400,Y
                CMP     #6
                BEQ     loc_F92A
                LDA     CntrlPPU
                STA     PPU_CTRL        
                JMP     loc_F7CA

; F93C
sub_F93C:                               
                INY
                LDX     $400,Y
                INY

loc_F941:                               
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LDA     $400,Y
                STA     PPU_DATA          
                INY
                DEX
                BNE     loc_F941
                JMP     loc_F7CA

; F95C
sub_F95C:                               
                INY
                LDX     $400,Y          
                INY
                LDA     $400,Y          
                STA     PPU_ADDR        
                INY
                LDA     $400,Y
                STA     PPU_ADDR         
                INY
                LDA     $400,Y          ; get char
                INY

WRITE_PPU:                              
                STA     PPU_DATA
                DEX
                BNE     WRITE_PPU
                JMP     loc_F7CA

; F97C
sub_F97C:                               
                INY
                LDX     $400,Y
                INY
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LDA     PPU_DATA        

loc_F992:                               
                LDA     PPU_DATA        
                STA     $400,Y
                INY
                DEX
                BNE     loc_F992
                JMP     loc_F7CA

; F99F
sub_F99F:                               
                LDA     BankTableOffset
                PHA
                LDA     BankTable.PPU_1K_0800
                PHA
                LDA     BankTable.PPU_1K_0C00
                PHA
                INY
                LDA     $400,Y
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                CLC
                ADC     #1
                LDX     #5
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                INY
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LDA     PPU_DATA        
                LDX     #0

loc_F9CD:                               
                LDA     PPU_DATA        
                STA     $110,X
                INX
                CPX     #$40
                BCC     loc_F9CD
                PLA
                LDX     #5
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                PLA
                LDX     #4
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                PLA
                STA     BankTableOffset
                ORA     BankMode
                STA     byte_8000
                JMP     loc_F7CA

; F9EF
sub_F9EF:                                
                INY
                LDX     $400,Y
                STX     byte_C3
                INY
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LDA     $400,Y
                STA     PPU_ADDR        
                INY
                LSR     byte_C3
                BCC     loc_FA0F
                LDA     $400,Y
                STA     PPU_DATA        
                INY

loc_FA0F:                               
                LSR     byte_C3
                BCC     loc_FA21
                LDA     $400,Y
                STA     PPU_DATA         
                INY
                LDA     $400,Y
                STA     PPU_DATA         
                INY

loc_FA21:                               
                LSR     byte_C3
                BCC     loc_FA41
                LDA     $400,Y
                STA     PPU_DATA          
                INY
                LDA     $400,Y
                STA     PPU_DATA        
                INY
                LDA     $400,Y
                STA     PPU_DATA        
                INY
                LDA     $400,Y
                STA     PPU_DATA        
                INY

loc_FA41:                               
                LDX     byte_C3
                BEQ     locret_FA80

loc_FA45:                               
                LDA     $400,Y
                STA     PPU_DATA        
                INY
                LDA     $400,Y
                STA     PPU_DATA         
                INY
                LDA     $400,Y
                STA     PPU_DATA         
                INY
                LDA     $400,Y
                STA     PPU_DATA        
                INY
                LDA     $400,Y
                STA     PPU_DATA         
                INY
                LDA     $400,Y
                STA     PPU_DATA        
                INY
                LDA     $400,Y
                STA     PPU_DATA          
                INY
                LDA     $400,Y
                STA     PPU_DATA        
                INY
                DEX
                BNE     loc_FA45

locret_FA80:                            
                RTS

; FA81
sub_FA81:                               
                LDA     #$15
                LDX     #6
                JSR     mmc3_bank_set   ; Set memory bank A - bank number X - mode
                LDA     #0
                STA     byte_CE
                STA     byte_CF
                LDX     byte_E1
                BIT     byte_E7
                BVC     loc_FAB8
                LDY     #0

loc_FA96:
                CLC
                LDA     ($E8),Y
                ADC     byte_CE
                STA     byte_CE
                INY
                CLC
                LDA     ($E8),Y
                ADC     byte_CF
                STA     byte_CF
                INY
                DEX
                BPL     loc_FA96
                CLC
                TYA
                ADC     byte_E8
                STA     byte_E8
                LDA     #0
                ADC     byte_E9
                STA     byte_E9
                JMP     loc_FAC9

loc_FAB8:                                                                      
                CLC
                LDA     byte_E8
                ADC     byte_CE
                STA     byte_CE
                CLC
                LDA     byte_E9
                ADC     byte_CF
                STA     byte_CF
                DEX
                BPL     loc_FAB8

loc_FAC9:                               
                CLC
                LDA     byte_CE
                BMI     loc_FAD6
                ADC     vertical_scroll_PPU
                STA     vertical_scroll_PPU
                BCC     loc_FAE2
                BCS     loc_FADC

loc_FAD6:
                ADC     vertical_scroll_PPU
                STA     vertical_scroll_PPU
                BCS     loc_FAE2

loc_FADC:
                LDA     CntrlPPU
                EOR     #1
                STA     CntrlPPU

loc_FAE2:
                CLC
                LDA     byte_CF
                BMI     loc_FAEF
                ADC     #$10
                ADC     horizontal_scroll_PPU
                BCC     loc_FAF3
                BCS     loc_FAF5

loc_FAEF:
                ADC     horizontal_scroll_PPU
                BCS     loc_FAF5

loc_FAF3:                               
                ADC     #$F0

loc_FAF5:                                                                     
                STA     horizontal_scroll_PPU
                LDA     byte_E2
                AND     #$3F ; '?'
                EOR     #$20 ; ' '
                STA     byte_E2
                LDA     #0
                STA     byte_CC
                STA     byte_E4
                LDA     #8
                STA     byte_CD
                LDX     #$10

loc_FB0B:
                LDY     byte_CC
                LDA     $300,Y
                AND     #$3F ; '?'
                BNE     loc_FB17
                JMP     loc_FC5C

loc_FB17:
                STA     GamePadBit0
                STX     byte_C2
                LDA     $301,Y
                AND     #$C0
                STA     GamePadBit1
                TXA
                LSR     A
                LSR     A
                ORA     GamePadBit1
                STA     $301,Y
                SEC
                LDA     #0
                SBC     byte_CE
                STA     byte_C8
                SEC
                LDA     #0
                SBC     byte_CF
                STA     byte_CA
                LDX     byte_E1
                BIT     GamePadBit1
                BVC     loc_FB70
                LDA     $304,Y
                STA     byte_C4
                LDA     $305,Y
                STA     byte_C5
                LDY     #0

loc_FB4A:
                CLC
                LDA     ($C4),Y
                ADC     byte_C8
                STA     byte_C8
                INY
                CLC
                LDA     ($C4),Y
                ADC     byte_CA
                STA     byte_CA
                INY
                DEX
                BPL     loc_FB4A
                CLC
                TYA
                ADC     byte_C4
                LDY     byte_CC
                STA     $304,Y
                LDA     #0
                ADC     byte_C5
                STA     $305,Y
                JMP     loc_FB83

loc_FB70:
                CLC
                LDA     $304,Y
                ADC     byte_C8
                STA     byte_C8
                CLC
                LDA     $305,Y
                ADC     byte_CA
                STA     byte_CA
                DEX
                BPL     loc_FB70

loc_FB83:                               
                LDX     byte_C2
                CLC
                LDA     byte_C8
                BMI     loc_FB96
                ADC     $302,Y
                STA     byte_C8
                STA     $302,Y
                BCC     loc_FBA8
                BCS     loc_FBA0

loc_FB96:                               
                ADC     $302,Y
                STA     byte_C8
                STA     $302,Y
                BCS     loc_FBA8

loc_FBA0:                               
                LDA     $300,Y
                EOR     #$80
                STA     $300,Y

loc_FBA8:                               
                                        
                CLC
                LDA     byte_CA
                BMI     loc_FBB9
                ADC     $303,Y
                STA     byte_CA
                STA     $303,Y
                BCC     loc_FBCB
                BCS     loc_FBC3

loc_FBB9:                               
                ADC     $303,Y
                STA     byte_CA
                STA     $303,Y
                BCS     loc_FBCB

loc_FBC3:                               
                LDA     $301,Y
                EOR     #$80
                STA     $301,Y

loc_FBCB:                               
                                        
                LDA     $300,Y
                AND     #$80
                STA     byte_C9
                LDA     $301,Y
                AND     #$80
                STA     byte_CB
                LDA     $306,Y
                STA     byte_C6
                LDA     $307,Y
                STA     byte_C7
                LDY     #0
                LDA     ($C6),Y
                STA     byte_C4
                INY
                LDA     ($C6),Y
                STA     byte_C5
                INY
                LDA     ($C6),Y
                STA     byte_C2
                INY
                LDA     ($C6),Y
                STA     byte_C3
                LDY     #0

loc_FBFA:                               
                LDA     ($C4),Y
                INY
                CLC
                ADC     byte_C8
                STA     $203,X
                ROR     A
                EOR     byte_C9
                BMI     loc_FC1F
                LDA     ($C4),Y
                CLC
                ADC     byte_CA
                STA     $200,X
                ROR     A
                EOR     byte_CB
                BMI     loc_FC1B
                CMP     #$F0
                BCC     loc_FC25
                BCS     loc_FC1F

loc_FC1B:                               
                CMP     #$F9
                BCS     loc_FC25

loc_FC1F:                                                         
                INY
                INY
                INY
                JMP     loc_FC58

loc_FC25:
                INY
                LDA     ($C4),Y
                STA     GamePadBit1
                LDA     byte_C3
                LSR     GamePadBit1
                BCC     loc_FC32
                LSR     A
                LSR     A

loc_FC32:                               
                LSR     GamePadBit1
                BCC     loc_FC3A
                LSR     A
                LSR     A
                LSR     A
                LSR     A

loc_FC3A:                               
                AND     #3
                ASL     GamePadBit1
                ASL     GamePadBit1
                ORA     GamePadBit1
                STA     $202,X
                INY
                AND     #$10
                BEQ     loc_FC4C
                LDA     byte_C2

loc_FC4C:                               
                ADC     ($C4),Y
                STA     $201,X
                INY
                INX
                INX
                INX
                INX
                BEQ     locret_FC95

loc_FC58:                               
                DEC     GamePadBit0
                BNE     loc_FBFA

loc_FC5C:                               
                CLC
                LDA     byte_CD
                BMI     loc_FC6E
                ADC     byte_CC
                STA     byte_CC
                BEQ     sub_FC8A
                CMP     byte_E3
                BEQ     loc_FC79
                JMP     loc_FB0B

loc_FC6E:                               
                ADC     byte_CC
                STA     byte_CC
                CMP     byte_E3
                BCC     sub_FC8A
                JMP     loc_FB0B

loc_FC79:                               
                STX     byte_E4
                LDA     byte_E2
                AND     #$20 ; ' '
                BNE     loc_FC87
                LDA     #$F8
                STA     byte_CC
                STA     byte_CD

loc_FC87:                               
                JMP     loc_FB0B

; FC8A
sub_FC8A:                               
                                        
                LDA     #$F0            

loc_FC8C:                               
                STA     oam,X           
                INX
                INX
                INX
                INX
                BNE     loc_FC8C

locret_FC95:                            
                RTS

; FC96
sub_FC96:                               
                LDA     byte_E2
                EOR     #$40 ; '@'
                STA     byte_E2
                LDY     #$FC
                LDX     byte_E4
                BNE     loc_FCE7
                RTS

loc_FCA3:                               
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                INY
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                INY
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                INY
                LDA     $200,X
                PHA
                LDA     $200,Y
                STA     $200,X
                PLA
                STA     $200,Y
                INX
                TYA
                SEC
                SBC     #7
                TAY

loc_FCE7:                               
                STY     GamePadBit0
                CPX     GamePadBit0
                BCC     loc_FCA3
                RTS

; FE4B
; Subroutine to process gamepad 1 input and perform bitwise operations				
.proc gamepad_input:                               
    ldx     #1

@ReadGamepad:                               
    sec							; set carry flag

@SetControllerStrobe:                               
    php							; push processor status register on the stack
    lda #1						; reset joysticks, write first $01 then $00 into $4016
    sta GAMEPAD_REGISTER1
    lda #0
    sta GAMEPAD_REGISTER1
	    
    ldy #8						; initialize Y to 8 (number of bits to process)

@ReadControllerData:                               
    lda GAMEPAD_REGISTER1,X		; read the controller data at $4016 + X (NES input registers)
    lsr A						; shift the data right to get the next bit
    rol GamePadBit0
    lsr A
    rol GamePadBit1
    dey 
    bne @ReadControllerData		; loop until all 8 bits are read
    lda GamePadBit0
    ora GamePadBit1
    plp 						; pull the original processor status register
    bcc @HandleController2
    sta GamePad0Status,X
    clc 						; clear carry flag
    bcc @SetControllerStrobe

@HandleController2:                               
    cmp GamePad0Status,X		; compare the data with the previously stored data
    beq @SkipControllerUpdate	; if equal, skip the controller update
    lda $DE,X

@SkipControllerUpdate:                               
    tay
    eor $DE,X
    and GamePad0Status,X
    sta GamePad0Status,X
    sty $DE,X
    dex 
    bpl @ReadGamepad
    rts 
.endproc

; FE86
; subroutine to handle game logic and control flow
.proc handle_game_logic:                               
    lda GamePad0Status
    bne @CheckNextState
    lda byte_D3
    cmp #$2A
    bcc @NextState
    rts

@CheckNextState:                               
    lda #0
    sta byte_D3

@NextState:                               
    inc byte_D0
    bne @exit
    inc byte_D3
    inc byte_D1
    bne @exit
    inc byte_D2

@exit:                            
                                        
    rts		
.endproc