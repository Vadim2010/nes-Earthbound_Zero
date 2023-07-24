.segment "CODE"
; FF40
; Initialize NES hardware and set up PPU
reset:
    ; LDA #%00001000
	; STA PPU_CTRL
	set PPU_CTRL, PPU_CTRL_SPRITE	; disable NMI, set sprite size = 8x8
									; Screen Pattern Table Address 0 = $0000
									; Sprite Pattern Table Address 1 = $1000
									; PPU Horizontal Write (INC = 1)
									; Name Table Address 0 = $2000

    sei								; mask interrupts
    cld								; disable decimal mode
	
    lda #0
    sta PPU_MASK     				; disable rendering
    sta pAPU_SV_CSR    				; silence channels and halt its' length counters
	sta pAPU_DM_CR

	sta IRQ_DISABLE					; disable MMC3 interrupts and acknowledge any pending interrupts
	
	lda #$40
	sta pAPU_F_CNTR					; disable frame counter interrupts
	sta SRAM						; disable SRAM				
	
	ldx #2
@WaitVblank:
    bit PPU_STATUS
    bpl @WaitVblank
    dex 
    bne @WaitVblank
    bit PPU_STATUS
	    
    ldy #$3F
    ldx #0
    sty PPU_ADDR 					; write the high byte of $3F00 address
    stx PPU_ADDR 					; write the low byte of $3F00 address
	    
    ldx #$20
    lda #$F
@LoadPalettesLoop:
    sta PPU_DATA
    dex 
    bne @LoadPalettesLoop
	
    sty PPU_ADDR					; write the high byte of $3F00 address
    stx PPU_ADDR                    ; write the low byte of $3F00 address
	
    stx PPU_ADDR					; write the high byte of $0000 address
    stx PPU_ADDR                    ; write the low byte of $0000 address
	
    lda #PPU_MASK_SHOW_BACKGROUND_L8|PPU_MASK_SHOW_SPRITES_L8|PPU_MASK_SHOW_BACKGROUND|PPU_MASK_SHOW_SPRITES
    sta PPU_MASK
    bit PPU_STATUS
    lda #$10
    tax
loc_FF95:
    sta PPU_ADDR
    sta PPU_ADDR
    eor #0
    dex 
    bne loc_FF95
	    
    ldx #$FF
    txs 
    lda #0
    sta BANK_SELECT
    jsr set_ppu
    jsr sub_FD14
	    
    ldx #7
    lda #$13
    jsr mmc3_bank_set			    ; set memory bank $13 to $A000
	    
    bit PPU_STATUS
    lda CntrlPPU
    ora #$80						; enable NMI
    sta CntrlPPU
    sta PPU_CTRL
    cli 
    jmp main

.segment "ZEROPAGE"
;.org $FF							; in the original game $FF
CntrlPPU .res 1

.segment "RODATA"
.org $FFE0
	.BYTE 'EARTH BOUND 1.00',0
