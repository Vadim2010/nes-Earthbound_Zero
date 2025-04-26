.include "structures.inc"

.segment "DATA2"

.import InventoryList, sBigBag, sPhoneCard, sCrumbs, sRepelRing, sButterKnife, sSurvKnife, sSword, sKatana, sStunGun
.import sAirGun, sPlasticBat, sWoodenBat, sAluminumBat, sHanksBat, sFryingPan, sNonstickPan, sIronSkillet, sSlingshot
.import sBoomerang, sInsecticide, sSuperSpray, sFleaBag, sWordsOLove, sSwearWords, sStkyMachine, sFlashdark
.import sStoneOrigin, sPoisnNeedle, sFlThrower, sBomb, sSuperBomb, sLaserBeam, sPlasmaBeam, sPeaceCoin, sProtectCoin
.import sMagicCoin, sBrassRing, sSilverRing, sGoldRing, sH2oPendant, sFirePendant, sEarthPendnt, sSeaPendant
.import sOrangeJuice, sFrenchFries, sMagicHerb, sHamburger, sSportsDrink, sLifeUpCream, sAsthmaSpray, sAntidote
.import sMouthwash, sBerryTofu, sBread, sNobleSeed, sPSIStone, sMagicRibbon, sMagicCandy, sQuickCapsul, sWisdomCaps
.import sPhysicalCap, sForceCapsul, sFightCapsul, sBasementKey, sZooKey, sGhostKey, sGGFsDiary, sPass, sTicket
.import sCanaryChick, sBottlRocket, sHat, sDentures, sTicketStub, sICchip, sOcarina, sFranklnBdge, sFrndshpRing
.import sOnyxHook, sLastWeapon, sRuler, sCashCard, sRedWeed, sBullhorn, sMap, sDebug, sRope_0
.import TravelList, sFlightplanA, sFlightplanB, sFlightplanC, sHint1, sHint2, sHint3, sRealRocket, sTimeMachine
.import LocalList, sMyHome, sPodunk, sMerrysville, sReindeer, sSpookane, sSnowman, sYoungtown, sEllay, sUnion

.macro item Name, Flags, Equipment, Action, BattleAction, Price
    .addr Name
    .byte Flags, Equipment, Action, BattleAction
    .word Price
.endmacro

ItemList:
    .export ItemList

    item InventoryList, 0, 0, 0, 0, 0       ; $00
    item sBigBag, $3F, 0, $10, $75, 0
    item sPhoneCard, $3F, 0, 7, 0, 50
    item sCrumbs, $3F, 0, $1F, 0, 0
    item sRepelRing, $3F, 0, 8, 0, 160
    item sButterKnife, 0, 0, 0, 0, 50
    item sButterKnife, 0, 0, 0, 0, 60
    item sButterKnife, 0, 0, 0, 0, 70
    item sButterKnife, 0, 0, 0, 0, 0
    item sButterKnife, 0, 0, 0, 0, 0
    item sButterKnife, 8, $F, 2, 0, 580
    item sSurvKnife, 8, $26, 2, 0, 1200
    item sSword, 8, $2E, 2, 0, 1280
    item sKatana, 8, $3A, 2, 0, 1360
    item sStunGun, 4, $F, 2, 0, 300
    item sAirGun, 4, $2A, 2, 0, 1400
    item sPlasticBat, 1, 3, 2, 0, 80        ; $10
    item sWoodenBat, 1, $C, 2, 0, 500
    item sAluminumBat, 1, $1E, 2, 0, 1000
    item sHanksBat, 1, $30, 2, 0, 1400
    item sFryingPan, 2, 8, 2, 0, 300
    item sNonstickPan, 2, $10, 2, 0, 700
    item sIronSkillet, 2, $24, 2, 0, 1120
    item sSlingshot, $3F, 7, 2, 0, 120
    item sBoomerang, $3F, $20, 2, 0, 1100
    item sInsecticide, $3F, 0, 0, $16, 300
    item sSuperSpray, $3F, 0, 0, $77, 1500
    item sFleaBag, $3F, 0, 0, $60, 0
    item sWordsOLove, $3F, 0, 0, $78, 0
    item sSwearWords, $3F, 0, 0, $79, 0
    item sStkyMachine, 4, 0, 0, $6E, 3200
    item sFlashdark, $3F, 0, 0, $6D, 0
    item sStoneOrigin, $3F, 0, 0, $3E, 0    ; $20
    item sPoisnNeedle, $3F, 0, 0, $3D, 0
    item sFlThrower, 4, 0, 0, $67, 0
    item sBomb, 4, 0, 0, $10, 280
    item sSuperBomb, 4, 0, 0, $11, 1800
    item sLaserBeam, 4, 0, 0, $69, 760
    item sPlasmaBeam, 4, 0, 0, $6A, 1300
    item sRope_0, 0, 0, 0, 0, 0
    item sRope_0, $3F, 0, 0, $47, 600
    item sPeaceCoin, 0, 0, 0, 0, 0
    item sPeaceCoin, 0, 0, 0, 0, 0
    item sPeaceCoin, 0, 0, 0, 0, 0
    item sPeaceCoin, 0, 0, 0, 0, 0
    item sPeaceCoin, $3F, $45, 2, 0, 260
    item sProtectCoin, $3F, $4B, 2, 0, 648
    item sMagicCoin, $3F, $54, 2, 0, 1200
    item sBrassRing, $3F, $88, 2, 0, 460    ; $30
    item sSilverRing, $3F, $8E, 2, 0, 825
    item sGoldRing, $3F, $9C, 2, 0, 1510
    item sH2oPendant, $3F, $E0, 2, 0, 700
    item sFirePendant, $3F, $D0, 2, 0, 700
    item sEarthPendnt, $3F, $C8, 2, 0, 700
    item sSeaPendant, $3F, $F8, 2, 0, 2860
    item sOrangeJuice, 0, 0, 0, 0, 0
    item sOrangeJuice, 0, 0, 0, 0, 0
    item sOrangeJuice, 0, 0, 0, 0, 0
    item sOrangeJuice, 0, 0, 0, 0, 0
    item sOrangeJuice, 0, 0, 0, 0, 0
    item sOrangeJuice, $7F, 0, $A, $71, 5
    item sFrenchFries, $7F, 0, $B, $72, 15
    item sMagicHerb, $7F, 0, $C, $73, 30
    item sHamburger, $7F, 0, $D, $7A, 25
    item sSportsDrink, $7F, 0, $E, $74, 75  ; $40
    item sLifeUpCream, $3F, 0, $F, $7B, 194
    item sAsthmaSpray, 1, 0, 0, $76, 148
    item sAntidote, $7F, 0, $11, $7C, 20
    item sMouthwash, $3F, 0, $12, 0, 175
    item sBerryTofu, $7F, 0, 6, 0, 975
    item sBread, 0, 0, 0, 0, 0
    item sBread, $7F, 0, 5, $84, 30
    item sNobleSeed, $3F, 0, 0, $5F, 0
    item sPSIStone, 3, 0, $13, $2F, 0
    item sMagicRibbon, 0, 0, 0, 0, 0
    item sMagicRibbon, 2, 0, $14, 0, 0
    item sMagicCandy, $44, 0, $15, 0, 0
    item sQuickCapsul, 0, 0, 0, 0, 0
    item sQuickCapsul, $7F, 0, $16, 0, 0
    item sWisdomCaps, $7F, 0, $17, 0, 0
    item sPhysicalCap, $7F, 0, $18, 0, 0    ; $50
    item sForceCapsul, $7F, 0, $19, 0, 0
    item sFightCapsul, $7F, 0, $1A, 0, 0
    item sBasementKey, 0, 0, 0, 0, 0
    item sBasementKey, 0, 0, 0, 0, 0
    item sBasementKey, $BF, 0, 1, 0, 0
    item sZooKey, $3F, 0, 1, 0, 0
    item sGhostKey, $BF, 0, 1, 0, 0
    item sGGFsDiary, $BF, 0, $1B, 0, 0
    item sPass, $BF, 0, 1, 0, 0
    item sTicket, $3F, 0, 1, 0, 350
    item sCanaryChick, 0, 0, 0, 0, 0
    item sCanaryChick, 0, 0, 0, 0, 0
    item sCanaryChick, 0, 0, 0, 0, 0
    item sCanaryChick, 0, 0, 0, 0, 0
    item sCanaryChick, $BF, 0, 1, 0, 85
    item sBottlRocket, 0, 0, 0, 0, 0        ; $60
    item sBottlRocket, 4, 0, 0, $7D, 0
    item sHat, $BF, 0, 1, 0, 0
    item sDentures, $BF, 0, 1, 0, 0
    item sTicketStub, $3F, 0, 1, 0, 0
    item sICchip, $84, 0, 1, 0, 0
    item sOcarina, $BF, 0, $23, 0, 0
    item sFranklnBdge, 0, 0, 0, 0, 0
    item sFranklnBdge, $3F, 0, 0, 0, 0
    item sFrndshpRing, 0, 0, 0, 0, 0
    item sOnyxHook, 0, 0, 0, 0, 0
    item sOnyxHook, $BF, 0, $1E, 0, 0
    item sLastWeapon, $3F, 0, $20, 0, 1048
    item sRuler, $3F, 0, $21, 0, 22
    item sCashCard, $BF, 0, 1, 0, 0
    item sRedWeed, $3F, 0, 1, 0, 0
    item sBullhorn, $3F, 0, 0, $3C, 0       ; $70
    item sMap, $BF, 0, $22, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, 0, 0, 0, 0, 0
    item sDebug, $BF, 0, 9, 0, 0
    item sMyHome, $86, $33, $46, $51, 0     ; $80
    item sPodunk, $C6, $2A, $C2, $69, 0
    item sMerrysville, $C6, $52, $C2, $73, 0
    item sReindeer, $86, $72, $C6, $EF, 0
    item sSpookane, $46, $B7, 2, $D9, 0
    item sSnowman, $A, $E6, $84, $EF, 0
    item sYoungtown, $B0, $B8, $C6, $74, 0
    item sEllay, $86, $CA, $86, $4B, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item sReindeer, $94, $4F, $C5, $53, 16  ; $90
    item sSpookane, $94, $4F, $C5, $53, 25
    item sSnowman, $94, $4F, $C5, $53, 36
    item sUnion, $54, $81, $C6, $CF, 16
    item sUnion, $54, $AB, $C6, $CF, 25
    item sUnion, $D4, $D6, $C6, $F7, 36
    item sSpookane, $94, $81, $C2, $CF, 9
    item sSnowman, $94, $81, $C2, $CF, 20
    item sReindeer, $54, $AB, $C6, $CF, 9
    item sSnowman, $94, $AB, $C2, $CF, 11
    item sReindeer, $D4, $D6, $C6, $F7, 20
    item sSpookane, $D4, $D6, $C6, $F7, 11
    item sFlightplanA, 0, 0, 0, 0, 5
    item sFlightplanB, 0, 0, 0, 0, 10
    item sFlightplanC, 0, 0, 0, 0, 15
    item sHint1, 0, 0, 0, 0, 0
    item sHint2, 0, 0, 0, 0, 0              ; $A0
    item sHint3, 0, 0, 0, 0, 0
    item sRealRocket, 0, 0, 0, 0, 0
    item sRealRocket, 0, 0, 0, 0, 0
    item sRealRocket, 0, 0, 0, 0, 0
    item sRealRocket, 0, 0, 0, 0, 0
    item sRealRocket, 0, 0, 0, 0, 3485
    item sTimeMachine, 0, 0, 0, 0, 2775
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0       ; $B0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0
    item InventoryList, 0, 0, 0, 0, 0

.byte 200, 0, 0, 4, 4, 4, 4, 4          ; ALLY <200, 0, 0, 4, 4, 4, 4, 4>
.byte 214, 0, 2, 4, 4, 4, 4, 4          ; ALLY <214, 0, 2, 4, 4, 4, 4, 4>
.byte 203, 0, 3, 0, 2, 6, 2, 7          ; ALLY <203, 0, 3, 0, 2, 6, 2, 7>
.byte 192, 0, 0, 3, 1, 7, 3, 2          ; ALLY <192, 0, 0, 3, 1, 7, 3, 2>
.byte 150, 0, 0, 8, 8, 1, 5, 3          ; ALLY <150, 0, 0, 8, 8, 1, 5, 3>
.byte 150, 0, 0, 8, 8, 1, 5, 3          ; ALLY <150, 0, 0, 8, 8, 1, 5, 3>
.byte 200, 0, 0, 5, 3, 5, 7, 1          ; ALLY <200, 0, 0, 5, 3, 5, 7, 1>
.byte 200, 0, 0, 6, 0, 0, 8, 5          ; ALLY <200, 0, 0, 6, 0, 0, 8, 5>

.import SpellList, sTelepathy, sTeleport, sSuprHealing, sPowerShield, sBrainShock, sBrainCyclon, sHypnosis, sParalysis
.import sDarkness, sPSIMagnet, sShieldOff, sPSIBlock, sOffenseUp, sQuickUp, s4thDSlip
.import sFaintd, sStone, sParlzd, sAsleep, sConfsd, sPuzzld, sPoison, sCold
.import sLifeUpAlpha, sLifeUpBeta, sLifeUpGamma, sLifeUpPi, sLifeUpOmega, sHealingAlpha, sHealingBeta, sHealingGamma
.import sHealingPi, sPSIShieldAlpha, sPSIShieldBeta, sDefenseUpAlpha, sDefenseUpBeta, sDefenseDownAlpha, sDefenseDownBeta
.import sPKFreezeAlpha, sPKFreezeBeta, sPKFreezeGamma, sPKFreezeOmega, sPKFireAlpha, sPKFireBeta, sPKFireGamma, sPKFireOmega
.import sPKBeamAlpha, sPKBeamBeta, sPKBeamGamma, sPKBeamOmega, sPKThunderAlpha, sPKThunderBeta, sPKThunderGamma

PSIList:
.export PSIList

.word SpellList
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <SpellList, $FF, $FF, 0, 0, 0, 0>

.word sTelepathy
.byte 0, 0, $25, 0, 0, 1                ; PSI <sTelepathy, 0, 0, $25, 0, 0, 1>

.word sTeleport
.byte $FF, $FF, $26, 0, 0, 3            ; PSI <sTeleport, $FF, $FF, $26, 0, 0, 3>

.word sLifeUpAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sLifeUpAlpha, $FF, $FF, 0, 0, 0, 0>

.word sLifeUpAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sLifeUpAlpha, $FF, $FF, 0, 0, 0, 0>

.word sLifeUpAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sLifeUpAlpha, $FF, $FF, 0, 0, 0, 0>

.word sLifeUpAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sLifeUpAlpha, $FF, $FF, 0, 0, 0, 0>

.word sLifeUpAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sLifeUpAlpha, $FF, $FF, 0, 0, 0, 0>

.word sLifeUpAlpha
.byte 2, $FF, $27, $29, 0, 3            ; PSI <sLifeUpAlpha, 2, $FF, $27, $29, 0, 3>

.word sLifeUpBeta
.byte $1C, 0, $28, $2A, 0, 5            ; PSI <sLifeUpBeta, $1C, 0, $28, $2A, 0, 5>

.word sLifeUpGamma
.byte $20, $B, $29, $2B, 0, 9           ; PSI <sLifeUpGamma, $20, $B, $29, $2B, 0, 9>

.word sLifeUpPi
.byte $25, $15, 0, $2C, 0, $11          ; PSI <sLifeUpPi, $25, $15, 0, $2C, 0, $11>

.word sLifeUpOmega
.byte $FF, $21, 0, $2D, 0, $30          ; PSI <sLifeUpOmega, $FF, $21, 0, $2D, 0, $30>

.word sHealingAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sHealingAlpha, $FF, $FF, 0, 0, 0, 0>

.word sHealingAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sHealingAlpha, $FF, $FF, 0, 0, 0, 0>

.word sHealingAlpha
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sHealingAlpha, $FF, $FF, 0, 0, 0, 0>

.word sHealingAlpha
.byte 4, 5, $2C, $5B, 0, 3              ; PSI <sHealingAlpha, 4, 5, $2C, $5B, 0, 3>

.word sHealingBeta
.byte $F, $C, 0, $63, 0, 6              ; PSI <sHealingBeta, $F, $C, 0, $63, 0, 6>

.word sHealingGamma
.byte $12, $D, $2A, $86, 0, 6           ; PSI <sHealingGamma, $12, $D, $2A, $86, 0, 6>

.word sHealingPi
.byte $15, $E, 0, $64, 0, 6             ; PSI <sHealingPi, $15, $E, 0, $64, 0, 6>

.word sSuprHealing
.byte $22, $11, $2D, $65, 0, $24        ; PSI <sSuprHealing, $22, $11, $2D, $65, 0, $24>

.word sPSIShieldAlpha
.byte $C, 3, 0, $38, 0, 4               ; PSI <sPSIShieldAlpha, $C, 3, 0, $38, 0, 4>

.word sPSIShieldBeta
.byte $1D, 8, 0, $39, 0, 9              ; PSI <sPSIShieldBeta, $1D, 8, 0, $39, 0, 9>

.word sPowerShield
.byte $21, $17, 0, $37, 0, 9            ; PSI <sPowerShield, $21, $17, 0, $37, 0, 9>

.word sBrainShock
.byte $FF, 1, 0, $42, 0, 5              ; PSI <sBrainShock, $FF, 1, 0, $42, 0, 5>

.word sBrainCyclon
.byte $FF, $19, 0, $43, 0, $C           ; PSI <sBrainCyclon, $FF, $19, 0, $43, 0, $C>

.word sHypnosis
.byte $FF, 8, 0, $44, 0, 5              ; PSI <sHypnosis, $FF, 8, 0, $44, 0, 5>

.word sParalysis
.byte $FF, $E, 0, $45, 0, 8             ; PSI <sParalysis, $FF, $E, 0, $45, 0, 8>

.word sDarkness
.byte $FF, $13, 0, $31, 0, $A           ; PSI <sDarkness, $FF, $13, 0, $31, 0, $A>

.word sPSIMagnet
.byte $FF, 6, 0, $30, 0, 0              ; PSI <sPSIMagnet, $FF, 6, 0, $30, 0, 0>

.word sShieldOff
.byte $FF, $12, 0, $66, 0, 8            ; PSI <sShieldOff, $FF, $12, 0, $66, 0, 8>

.word sPSIBlock
.byte $FF, 7, 0, $36, 0, 7              ; PSI <sPSIBlock, $FF, 7, 0, $36, 0, 7>

.word sOffenseUp
.byte $11, $FF, 0, $1B, 0, 6            ; PSI <sOffenseUp, $11, $FF, 0, $1B, 0, 6>

.word sDefenseUpAlpha
.byte 6, $FF, 0, $1D, 0, 3              ; PSI <sDefenseUpAlpha, 6, $FF, 0, $1D, 0, 3>

.word sDefenseUpBeta
.byte $17, $FF, 0, $1E, 0, 8            ; PSI <sDefenseUpBeta, $17, $FF, 0, $1E, 0, 8>

.word sQuickUp
.byte $D, $FF, 0, $1F, 0, 3             ; PSI <sQuickUp, $D, $FF, 0, $1F, 0, 3>

.word sDefenseDownAlpha
.byte 8, $FF, 0, $25, 0, 3              ; PSI <sDefenseDownAlpha, 8, $FF, 0, $25, 0, 3>

.word sDefenseDownBeta
.byte $1A, $FF, 0, $82, 0, 9            ; PSI <sDefenseDownBeta, $1A, $FF, 0, $82, 0, 9>

.word s4thDSlip
.byte $A, $FF, 0, $5C, 0, $10           ; PSI <s4thDSlip, $A, $FF, 0, $5C, 0, $10>

.word sHypnosis
.byte 3, $FF, 0, $44, 0, 5              ; PSI <sHypnosis, 3, $FF, 0, $44, 0, 5>

.word sPKFreezeAlpha
.byte $FF, 0, 0, $C, 0, 3               ; PSI <sPKFreezeAlpha, $FF, 0, 0, $C, 0, 3>

.word sPKFreezeBeta
.byte $FF, 6, 0, $D, 0, 5               ; PSI <sPKFreezeBeta, $FF, 6, 0, $D, 0, 5>

.word sPKFreezeGamma
.byte $FF, $14, 0, $F, 0, 8             ; PSI <sPKFreezeGamma, $FF, $14, 0, $F, 0, 8>

.word sPKFreezeOmega
.byte $FF, $1C, 0, $E, 0, $D            ; PSI <sPKFreezeOmega, $FF, $1C, 0, $E, 0, $D>

.word sPKFireAlpha
.byte $FF, $10, 0, 9, 0, 8              ; PSI <sPKFireAlpha, $FF, $10, 0, 9, 0, 8>

.word sPKFireBeta
.byte $FF, $1A, 0, $A, 0, $C            ; PSI <sPKFireBeta, $FF, $1A, 0, $A, 0, $C>

.word sPKFireGamma
.byte $FF, $1E, 0, $B, 0, $E            ; PSI <sPKFireGamma, $FF, $1E, 0, $B, 0, $E>

.word sPKFireOmega
.byte $FF, $22, 0, $85, 0, $1E          ; PSI <sPKFireOmega, $FF, $22, 0, $85, 0, $1E>

.word sPKBeamAlpha
.byte $FF, 4, 0, $12, 0, 4              ; PSI <sPKBeamAlpha, $FF, 4, 0, $12, 0, 4>

.word sPKBeamBeta
.byte $FF, $A, 0, $13, 0, 7             ; PSI <sPKBeamBeta, $FF, $A, 0, $13, 0, 7>

.word sPKBeamGamma
.byte $FF, $18, 0, $15, 0, $C           ; PSI <sPKBeamGamma, $FF, $18, 0, $15, 0, $C>

.word sPKBeamOmega
.byte $FF, $20, 0, $14, 0, $18          ; PSI <sPKBeamOmega, $FF, $20, 0, $14, 0, $18>

.word sPKThunderAlpha
.byte $FF, 2, 0, $17, 0, 3              ; PSI <sPKThunderAlpha, $FF, 2, 0, $17, 0, 3>

.word sPKThunderBeta
.byte $FF, 8, 0, $18, 0, 6              ; PSI <sPKThunderBeta, $FF, 8, 0, $18, 0, 6>

.word sPKThunderGamma
.byte $FF, $1B, 0, $83, 0, $C           ; PSI <sPKThunderGamma, $FF, $1B, 0, $83, 0, $C>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>

.word sFaintd
.byte $FF, $FF, 0, 0, 0, 0              ; PSI <sFaintd, $FF, $FF, 0, 0, 0, 0>
