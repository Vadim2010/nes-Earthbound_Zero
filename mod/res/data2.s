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

ItemList:
    .export ItemList

    .word InventoryList
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <InventoryList, 0, 0, 0, 0, 0>

    .word sBigBag
    .byte $3F, 0, $10, $75
    .word 0   ; ITEM <sBigBag, $3F, 0, $10, $75, 0>

    .word sPhoneCard
    .byte $3F, 0, 7, 0
    .word 50      ; ITEM <sPhoneCard, $3F, 0, 7, 0, 50>

    .word sCrumbs
    .byte $3F, 0, $1F, 0
    .word 0     ; ITEM <sCrumbs, $3F, 0, $1F, 0, 0>

    .word sRepelRing
    .byte $3F, 0, 8, 0
    .word 13     ; ITEM <sRepelRing, $3F, 0, 8, 0, 160>

    .word sButterKnife
    .byte 0, 0, 0, 0
    .word 50        ; ITEM <sButterKnife, 0, 0, 0, 0, 50>

    .word sButterKnife
    .byte 0, 0, 0, 0
    .word 60        ; ITEM <sButterKnife, 0, 0, 0, 0, 60>

    .word sButterKnife
    .byte 0, 0, 0, 0
    .word 70        ; ITEM <sButterKnife, 0, 0, 0, 0, 70>

    .word sButterKnife
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sButterKnife, 0, 0, 0, 0, 0>

    .word sButterKnife
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sButterKnife, 0, 0, 0, 0, 0>

    .word sButterKnife
    .byte 8, $F, 2, 0
    .word 580      ; ITEM <sButterKnife, 8, $F, 2, 0, 580>

    .word sSurvKnife
    .byte 8, $26, 2, 0
    .word 1200    ; ITEM <sSurvKnife, 8, $26, 2, 0, 1200>

    .word sSword
    .byte 8, $2E, 2, 0
    .word 1280    ; ITEM <sSword, 8, $2E, 2, 0, 1280>

    .word sKatana
    .byte 8, $3A, 2, 0
    .word 1360    ; ITEM <sKatana, 8, $3A, 2, 0, 1360>

    .word sStunGun
    .byte 4, $F, 2, 0
    .word 300      ; ITEM <sStunGun, 4, $F, 2, 0, 300>

    .word sAirGun
    .byte 4, $2A, 2, 0
    .word 1400    ; ITEM <sAirGun, 4, $2A, 2, 0, 1400>

    .word sPlasticBat
    .byte 1, 3, 2, 0
    .word 80        ; ITEM <sPlasticBat, 1, 3, 2, 0, 80>

    .word sWoodenBat
    .byte 1, $C, 2, 0
    .word 500      ; ITEM <sWoodenBat, 1, $C, 2, 0, 500>

    .word sAluminumBat
    .byte 1, $1E, 2, 0
    .word 1000    ; ITEM <sAluminumBat, 1, $1E, 2, 0, 1000>

    .word sHanksBat
    .byte 1, $30, 2, 0
    .word 1400    ; ITEM <sHanksBat, 1, $30, 2, 0, 1400>

    .word sFryingPan
    .byte 2, 8, 2, 0
    .word 300       ; ITEM <sFryingPan, 2, 8, 2, 0, 300>

    .word sNonstickPan
    .byte 2, $10, 2, 0
    .word 700     ; ITEM <sNonstickPan, 2, $10, 2, 0, 700>

    .word sIronSkillet
    .byte 2, $24, 2, 0
    .word 1120    ; ITEM <sIronSkillet, 2, $24, 2, 0, 1120>

    .word sSlingshot
    .byte $3F, 7, 2, 0
    .word 120     ; ITEM <sSlingshot, $3F, 7, 2, 0, 120>

    .word sBoomerang
    .byte $3F, $20, 2, 0
    .word 1100  ; ITEM <sBoomerang, $3F, $20, 2, 0, 1100>

    .word sInsecticide
    .byte $3F, 0, 0, $16
    .word 25   ; ITEM <sInsecticide, $3F, 0, 0, $16, 300>

    .word sSuperSpray
    .byte $3F, 0, 0, $77
    .word 1500  ; ITEM <sSuperSpray, $3F, 0, 0, $77, 1500>

    .word sFleaBag
    .byte $3F, 0, 0, $60
    .word 0     ; ITEM <sFleaBag, $3F, 0, 0, $60, 0>

    .word sWordsOLove
    .byte $3F, 0, 0, $78
    .word 0     ; ITEM <sWordsOLove, $3F, 0, 0, $78, 0>

    .word sSwearWords
    .byte $3F, 0, 0, $79
    .word 0     ; ITEM <sSwearWords, $3F, 0, 0, $79, 0>

    .word sStkyMachine
    .byte 4, 0, 0, $6E
    .word 267    ; ITEM <sStkyMachine, 4, 0, 0, $6E, 3200>

    .word sFlashdark
    .byte $3F, 0, 0, $6D
    .word 0     ; ITEM <sFlashdark, $3F, 0, 0, $6D, 0>

    .word sStoneOrigin
    .byte $3F, 0, 0, $3E
    .word 0     ; ITEM <sStoneOrigin, $3F, 0, 0, $3E, 0>

    .word sPoisnNeedle
    .byte $3F, 0, 0, $3D
    .word 0     ; ITEM <sPoisnNeedle, $3F, 0, 0, $3D, 0>

    .word sFlThrower
    .byte 4, 0, 0, $67
    .word 0       ; ITEM <sFlThrower, 4, 0, 0, $67, 0>

    .word sBomb
    .byte 4, 0, 0, $10
    .word 23     ; ITEM <sBomb, 4, 0, 0, $10, 280>

    .word sSuperBomb
    .byte 4, 0, 0, $11
    .word 150    ; ITEM <sSuperBomb, 4, 0, 0, $11, 1800>

    .word sLaserBeam
    .byte 4, 0, 0, $69
    .word 63     ; ITEM <sLaserBeam, 4, 0, 0, $69, 760>

    .word sPlasmaBeam
    .byte 4, 0, 0, $6A
    .word 108    ; ITEM <sPlasmaBeam, 4, 0, 0, $6A, 1300>

    .word sRope_0
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sRope_0, 0, 0, 0, 0, 0>

    .word sRope_0
    .byte $3F, 0, 0, $47
    .word 50   ; ITEM <sRope_0, $3F, 0, 0, $47, 600>

    .word sPeaceCoin
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sPeaceCoin, 0, 0, 0, 0, 0>

    .word sPeaceCoin
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sPeaceCoin, 0, 0, 0, 0, 0>

    .word sPeaceCoin
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sPeaceCoin, 0, 0, 0, 0, 0>

    .word sPeaceCoin
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sPeaceCoin, 0, 0, 0, 0, 0>

    .word sPeaceCoin
    .byte $3F, $45, 2, 0
    .word 260   ; ITEM <sPeaceCoin, $3F, $45, 2, 0, 260>

    .word sProtectCoin
    .byte $3F, $4B, 2, 0
    .word 648   ; ITEM <sProtectCoin, $3F, $4B, 2, 0, 648>

    .word sMagicCoin
    .byte $3F, $54, 2, 0
    .word 1200  ; ITEM <sMagicCoin, $3F, $54, 2, 0, 1200>

    .word sBrassRing
    .byte $3F, $88, 2, 0
    .word 460   ; ITEM <sBrassRing, $3F, $88, 2, 0, 460>

    .word sSilverRing
    .byte $3F, $8E, 2, 0
    .word 825   ; ITEM <sSilverRing, $3F, $8E, 2, 0, 825>

    .word sGoldRing
    .byte $3F, $9C, 2, 0
    .word 1510  ; ITEM <sGoldRing, $3F, $9C, 2, 0, 1510>

    .word sH2oPendant
    .byte $3F, $E0, 2, 0
    .word 700   ; ITEM <sH2oPendant, $3F, $E0, 2, 0, 700>

    .word sFirePendant
    .byte $3F, $D0, 2, 0
    .word 700   ; ITEM <sFirePendant, $3F, $D0, 2, 0, 700>

    .word sEarthPendnt
    .byte $3F, $C8, 2, 0
    .word 700   ; ITEM <sEarthPendnt, $3F, $C8, 2, 0, 700>

    .word sSeaPendant
    .byte $3F, $F8, 2, 0
    .word 2860  ; ITEM <sSeaPendant, $3F, $F8, 2, 0, 2860>

    .word sOrangeJuice
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sOrangeJuice, 0, 0, 0, 0, 0>

    .word sOrangeJuice
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sOrangeJuice, 0, 0, 0, 0, 0>

    .word sOrangeJuice
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sOrangeJuice, 0, 0, 0, 0, 0>

    .word sOrangeJuice
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sOrangeJuice, 0, 0, 0, 0, 0>

    .word sOrangeJuice
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sOrangeJuice, 0, 0, 0, 0, 0>

    .word sOrangeJuice
    .byte $7F, 0, $A, $71
    .word 5    ; ITEM <sOrangeJuice, $7F, 0, $A, $71, 5>

    .word sFrenchFries
    .byte $7F, 0, $B, $72
    .word 15   ; ITEM <sFrenchFries, $7F, 0, $B, $72, 15>

    .word sMagicHerb
    .byte $7F, 0, $C, $73
    .word 30   ; ITEM <sMagicHerb, $7F, 0, $C, $73, 30>

    .word sHamburger
    .byte $7F, 0, $D, $7A
    .word 25   ; ITEM <sHamburger, $7F, 0, $D, $7A, 25>

    .word sSportsDrink
    .byte $7F, 0, $E, $74
    .word 75   ; ITEM <sSportsDrink, $7F, 0, $E, $74, 75>

    .word sLifeUpCream
    .byte $3F, 0, $F, $7B
    .word 194  ; ITEM <sLifeUpCream, $3F, 0, $F, $7B, 194>

    .word sAsthmaSpray
    .byte 1, 0, 0, $76
    .word 148     ; ITEM <sAsthmaSpray, 1, 0, 0, $76, 148>

    .word sAntidote
    .byte $7F, 0, $11, $7C
    .word 20  ; ITEM <sAntidote, $7F, 0, $11, $7C, 20>

    .word sMouthwash
    .byte $3F, 0, $12, 0
    .word 15   ; ITEM <sMouthwash, $3F, 0, $12, 0, 175>

    .word sBerryTofu
    .byte $7F, 0, 6, 0
    .word 81     ; ITEM <sBerryTofu, $7F, 0, 6, 0, 975>

    .word sBread
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sBread, 0, 0, 0, 0, 0>

    .word sBread
    .byte $7F, 0, 5, $84
    .word 30    ; ITEM <sBread, $7F, 0, 5, $84, 30>

    .word sNobleSeed
    .byte $3F, 0, 0, $5F
    .word 0     ; ITEM <sNobleSeed, $3F, 0, 0, $5F, 0>

    .word sPSIStone
    .byte 3, 0, $13, $2F
    .word 0     ; ITEM <sPSIStone, 3, 0, $13, $2F, 0>

    .word sMagicRibbon
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sMagicRibbon, 0, 0, 0, 0, 0>

    .word sMagicRibbon
    .byte 2, 0, $14, 0
    .word 0       ; ITEM <sMagicRibbon, 2, 0, $14, 0, 0>

    .word sMagicCandy
    .byte $44, 0, $15, 0
    .word 0     ; ITEM <sMagicCandy, $44, 0, $15, 0, 0>

    .word sQuickCapsul
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sQuickCapsul, 0, 0, 0, 0, 0>

    .word sQuickCapsul
    .byte $7F, 0, $16, 0
    .word 0     ; ITEM <sQuickCapsul, $7F, 0, $16, 0, 0>

    .word sWisdomCaps
    .byte $7F, 0, $17, 0
    .word 0     ; ITEM <sWisdomCaps, $7F, 0, $17, 0, 0>

    .word sPhysicalCap
    .byte $7F, 0, $18, 0
    .word 0     ; ITEM <sPhysicalCap, $7F, 0, $18, 0, 0>

    .word sForceCapsul
    .byte $7F, 0, $19, 0
    .word 0     ; ITEM <sForceCapsul, $7F, 0, $19, 0, 0>

    .word sFightCapsul
    .byte $7F, 0, $1A, 0
    .word 0     ; ITEM <sFightCapsul, $7F, 0, $1A, 0, 0>

    .word sBasementKey
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sBasementKey, 0, 0, 0, 0, 0>

    .word sBasementKey
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sBasementKey, 0, 0, 0, 0, 0>

    .word sBasementKey
    .byte $BF, 0, 1, 0
    .word 0       ; ITEM <sBasementKey, $BF, 0, 1, 0, 0>

    .word sZooKey
    .byte $3F, 0, 1, 0
    .word 0       ; ITEM <sZooKey, $3F, 0, 1, 0, 0>

    .word sGhostKey
    .byte $BF, 0, 1, 0
    .word 0       ; ITEM <sGhostKey, $BF, 0, 1, 0, 0>

    .word sGGFsDiary
    .byte $BF, 0, $1B, 0
    .word 0     ; ITEM <sGGFsDiary, $BF, 0, $1B, 0, 0>

    .word sPass
    .byte $BF, 0, 1, 0
    .word 0       ; ITEM <sPass, $BF, 0, 1, 0, 0>

    .word sTicket
    .byte $3F, 0, 1, 0
    .word 350     ; ITEM <sTicket, $3F, 0, 1, 0, 350>

    .word sCanaryChick
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sCanaryChick, 0, 0, 0, 0, 0>

    .word sCanaryChick
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sCanaryChick, 0, 0, 0, 0, 0>

    .word sCanaryChick
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sCanaryChick, 0, 0, 0, 0, 0>

    .word sCanaryChick
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sCanaryChick, 0, 0, 0, 0, 0>

    .word sCanaryChick
    .byte $BF, 0, 1, 0
    .word 85      ; ITEM <sCanaryChick, $BF, 0, 1, 0, 85>

    .word sBottlRocket
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sBottlRocket, 0, 0, 0, 0, 0>

    .word sBottlRocket
    .byte 4, 0, 0, $7D
    .word 0       ; ITEM <sBottlRocket, 4, 0, 0, $7D, 0>

    .word sHat
    .byte $BF, 0, 1, 0
    .word 0       ; ITEM <sHat, $BF, 0, 1, 0, 0>

    .word sDentures
    .byte $BF, 0, 1, 0
    .word 0       ; ITEM <sDentures, $BF, 0, 1, 0, 0>

    .word sTicketStub
    .byte $3F, 0, 1, 0
    .word 0       ; ITEM <sTicketStub, $3F, 0, 1, 0, 0>

    .word sICchip
    .byte $84, 0, 1, 0
    .word 0       ; ITEM <sICchip, $84, 0, 1, 0, 0>

    .word sOcarina
    .byte $BF, 0, $23, 0
    .word 0     ; ITEM <sOcarina, $BF, 0, $23, 0, 0>

    .word sFranklnBdge
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sFranklnBdge, 0, 0, 0, 0, 0>

    .word sFranklnBdge
    .byte $3F, 0, 0, 0
    .word 0       ; ITEM <sFranklnBdge, $3F, 0, 0, 0, 0>

    .word sFrndshpRing
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sFrndshpRing, 0, 0, 0, 0, 0>

    .word sOnyxHook
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sOnyxHook, 0, 0, 0, 0, 0>

    .word sOnyxHook
    .byte $BF, 0, $1E, 0
    .word 0     ; ITEM <sOnyxHook, $BF, 0, $1E, 0, 0>

    .word sLastWeapon
    .byte $3F, 0, $20, 0
    .word 87  ; ITEM <sLastWeapon, $3F, 0, $20, 0, 1048>

    .word sRuler
    .byte $3F, 0, $21, 0
    .word 22    ; ITEM <sRuler, $3F, 0, $21, 0, 22>

    .word sCashCard
    .byte $BF, 0, 1, 0
    .word 0       ; ITEM <sCashCard, $BF, 0, 1, 0, 0>

    .word sRedWeed
    .byte $3F, 0, 1, 0
    .word 0       ; ITEM <sRedWeed, $3F, 0, 1, 0, 0>

    .word sBullhorn
    .byte $3F, 0, 0, $3C
    .word 0     ; ITEM <sBullhorn, $3F, 0, 0, $3C, 0>

    .word sMap
    .byte $BF, 0, $22, 0
    .word 0     ; ITEM <sMap, $BF, 0, $22, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte 0, 0, 0, 0
    .word 0         ; ITEM <sDebug, 0, 0, 0, 0, 0>

    .word sDebug
    .byte $BF, 0, 9, 0
    .word 0       ; ITEM <sDebug, $BF, 0, 9, 0, 0>

.import TravelList, sFlightplanA, sFlightplanB, sFlightplanC, sHint1, sHint2, sHint3, sRealRocket, sTimeMachine
.import LocalList, sMyHome, sPodunk, sMerrysville, sReindeer, sSpookane, sSnowman, sYoungtown, sEllay, sUnion

.word sMyHome
.byte $86, $33, $46, $51, 0, 0          ; PLACE <sMyHome, $86, $33, $46, $51, 0, 0>

.word sPodunk
.byte $C6, $2A, $C2, $69, 0, 0          ; PLACE <sPodunk, $C6, $2A, $C2, $69, 0, 0>

.word sMerrysville
.byte $C6, $52, $C2, $73, 0, 0          ; PLACE <sMerrysville, $C6, $52, $C2, $73, 0, 0>

.word sReindeer
.byte $86, $72, $C6, $EF, 0, 0          ; PLACE <sReindeer, $86, $72, $C6, $EF, 0, 0>

.word sSpookane
.byte $46, $B7, 2, $D9, 0, 0            ; PLACE <sSpookane, $46, $B7, 2, $D9, 0, 0>

.word sSnowman
.byte $A, $E6, $84, $EF, 0, 0           ; PLACE <sSnowman, $A, $E6, $84, $EF, 0, 0>

.word sYoungtown
.byte $B0, $B8, $C6, $74, 0, 0          ; PLACE <sYoungtown, $B0, $B8, $C6, $74, 0, 0>

.word sEllay
.byte $86, $CA, $86, $4B, 0, 0          ; PLACE <sEllay, $86, $CA, $86, $4B, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word sReindeer
.byte $94, $4F, $C5, $53, $10, 0        ; PLACE <sReindeer, $94, $4F, $C5, $53, $10, 0>

.word sSpookane
.byte $94, $4F, $C5, $53, $19, 0        ; PLACE <sSpookane, $94, $4F, $C5, $53, $19, 0>

.word sSnowman
.byte $94, $4F, $C5, $53, $24, 0        ; PLACE <sSnowman, $94, $4F, $C5, $53, $24, 0>

.word sUnion
.byte $54, $81, $C6, $CF, $10, 0        ; PLACE <sUnion, $54, $81, $C6, $CF, $10, 0>

.word sUnion
.byte $54, $AB, $C6, $CF, $19, 0        ; PLACE <sUnion, $54, $AB, $C6, $CF, $19, 0>

.word sUnion
.byte $D4, $D6, $C6, $F7, $24, 0        ; PLACE <sUnion, $D4, $D6, $C6, $F7, $24, 0>

.word sSpookane
.byte $94, $81, $C2, $CF, 9, 0          ; PLACE <sSpookane, $94, $81, $C2, $CF, 9, 0>

.word sSnowman
.byte $94, $81, $C2, $CF, $14, 0        ; PLACE <sSnowman, $94, $81, $C2, $CF, $14, 0>

.word sReindeer
.byte $54, $AB, $C6, $CF, 9, 0          ; PLACE <sReindeer, $54, $AB, $C6, $CF, 9, 0>

.word sSnowman
.byte $94, $AB, $C2, $CF, $B, 0         ; PLACE <sSnowman, $94, $AB, $C2, $CF, $B, 0>

.word sReindeer
.byte $D4, $D6, $C6, $F7, $14, 0        ; PLACE <sReindeer, $D4, $D6, $C6, $F7, $14, 0>

.word sSpookane
.byte $D4, $D6, $C6, $F7, $B, 0         ; PLACE <sSpookane, $D4, $D6, $C6, $F7, $B, 0>

.word sFlightplanA
.byte 0, 0, 0, 0, 5, 0                  ; PLACE <sFlightplanA, 0, 0, 0, 0, 5, 0>

.word sFlightplanB
.byte 0, 0, 0, 0, $A, 0                 ; PLACE <sFlightplanB, 0, 0, 0, 0, $A, 0>

.word sFlightplanC
.byte 0, 0, 0, 0, $F, 0                 ; PLACE <sFlightplanC, 0, 0, 0, 0, $F, 0>

.word sHint1
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <sHint1, 0, 0, 0, 0, 0, 0>

.word sHint2
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <sHint2, 0, 0, 0, 0, 0, 0>

.word sHint3
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <sHint3, 0, 0, 0, 0, 0, 0>

.word sRealRocket
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <sRealRocket, 0, 0, 0, 0, 0, 0>

.word sRealRocket
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <sRealRocket, 0, 0, 0, 0, 0, 0>

.word sRealRocket
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <sRealRocket, 0, 0, 0, 0, 0, 0>

.word sRealRocket
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <sRealRocket, 0, 0, 0, 0, 0, 0>

.word sRealRocket
.byte 0, 0, 0, 0
.word 290               ; PLACE <sRealRocket, 0, 0, 0, 0, 3485>

.word sTimeMachine
.byte 0, 0, 0, 0
.word 231               ; PLACE <sTimeMachine, 0, 0, 0, 0, 2775>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

.word InventoryList
.byte 0, 0, 0, 0, 0, 0                  ; PLACE <InventoryList, 0, 0, 0, 0, 0, 0>

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
