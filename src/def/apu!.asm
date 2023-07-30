pAPU_P_1_CR     = $4000     ; pAPU Pulse #1 Control Register (W)
pAPU_P_1_RCR    = $4001     ; pAPU Pulse #1 Ramp Control Register (W)
pAPU_P_1_FTR    = $4002     ; pAPU Pulse #1 Fine Tune (FT) Register (W)
pAPU_P_1_CTR    = $4003     ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
pAPU_P_2_CR     = $4004     ; pAPU Pulse #2 Control Register (W)
pAPU_P_2_RCR    = $4005     ; pAPU Pulse #2 Ramp Control Register (W)
pAPU_P_2_FTR    = $4006     ; pAPU Pulse #2 Fine Tune (FT) Register (W)
pAPU_P_2_CTR    = $4007     ; pAPU Pulse #2 Coarse Tune (CT) Register (W)
pAPU_T_CR_1     = $4008     ; pAPU Triangle Control Register #1 (W)
pAPU_T_CR_2     = $4009     ; pAPU Triangle Control Register #2 (?)
pAPU_T_FR_1     = $400A     ; pAPU Triangle Frequency Register #1 (W)
pAPU_T_FR_2     = $400B     ; pAPU Triangle Frequency Register #2 (W)
pAPU_N_CR_1     = $400C     ; pAPU Noise Control Register #1 (W)

pAPU_N_FR_1     = $400E     ; pAPU Noise Frequency Register #1 (W)
pAPU_N_FR_2     = $400F     ; pAPU Noise Frequency Register #2 (W)
pAPU_DM_CR      = $4010     ; pAPU Delta Modulation Control Register (W)
pAPU_DM_DAR     = $4011     ; pAPU Delta Modulation D/A Register (W)
pAPU_DM_AR      = $4012     ; pAPU Delta Modulation Address Register (W)
pAPU_DM_DLR     = $4013     ; pAPU Delta Modulation Data Length Register (W)

pAPU_SV_CSR     = $4015     ; pAPU Sound/Vertical Clock Signal Register (R)
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

pAPU_F_CNTR     = $4017     ; pAPU Frame Counter Register

; FD14
.proc set_apu
    ;lda #$1C
    ;sta BankNum
    set BankNum, #$1C
    ; Clear 700-7FF
    LDA #0
    LDX #0

loc_FD1C:
    STA $700,X
    INX
    BNE loc_FD1C

    JSR bank_8000_1D_A000
    JMP $8006               ; bank 1C
.endproc
