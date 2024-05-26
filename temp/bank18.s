.segment "DATA_BANK_8"

; ===========================================================================

;.segment BANK18
;* = $8000 and $A000
.import sSysError, sLampAlive, sFallingHouse, sBoohoo, sJuice, sSpooky, sScaredToDeath, sMimmieNotMinnie
.import sHouseEmergency, sSonBravery, sWounded, sNextLevel, sReturnOffer, sPoltergeist, sSlam, sYourDad
.import sTransfer, sRest, sSave, sCrisis, sSleepSave, sSeeYouLater, sAdviceToRest, sSaveOffer, sGoodLuck
.import sThanks, sCemetery, sTerrific, sZombieAsk, sZombiePanic, sHuman, sCame, sYouSee, sWetPants
.import sDreadful, sPanic, sTransformation, sDeadControl, sPraise, sZombieAnywhere, sChick, sHum, sChickVoice
.import sGentleman, sBraveMan, sLittleGirl, sToCemetery, sSensibleChild, sEmergency, sSuper, sPoltergeistDamage
.import sMadAnimals, sMarkTrail, sTownHelp, sHelp, sSaveHer, sPrize, sZoo, sGetKey, sGetZooKey, sHero, sRunKid
.import sWonderGirl, sZooKeys, sEscaped, sBuyChick, sChickPrice, sFreeCountry, sTakeCare, sFree, sHowChick
.import sAnimalControl, sCutePets, sHmmm, sStupid, sReturn, sMindVoice, sGood, sShopping, sNoCard, sFineWeather
.import sReturnBaby, sImportant, sLaura, sMelody, sNoGood, sSongPower, sFoundPippi, sSwellHeaded, sHopeMeet
.import sGift, sSomeoneSpecial, sSeeYouAgain, sCutie, sEEEEEEEK, sLostTail, sStrangeClothes, sBothered
.import sStayHome, sTrouble, sNickname, sCoolNick, sTooBad, sHelloNick, sPhilosophy, sGoodNick, sNotMet
.import sCannotPart, sSameThink, sMeetHim, sFountain, sFountainSearch, sEarring, sMysteriousSound, sWest, sSpoon
.import sFixedSpoon, sWithoutEffort, sStrangePerson, sThatsGood, sKindness, sEnjoyMeal, sSuspicious, sFavoriteFood
.import sNoOcarina, sIsThatSo, sBedReady

    .faraddr sSysError, sLampAlive, sFallingHouse, sBoohoo, sJuice, sSpooky, sScaredToDeath, sSysError
    .faraddr sMimmieNotMinnie, sHouseEmergency, sSonBravery, sWounded, sNextLevel, sReturnOffer, sPoltergeist
    .faraddr sSysError, sSysError, sSysError, sSysError, sSlam, sYourDad, sTransfer, sRest, sSave, sCrisis
    .faraddr sSysError, sSysError, sSleepSave, sSeeYouLater, sAdviceToRest, sSaveOffer, sSysError, sSysError
    .faraddr sGoodLuck, sSysError, sThanks, sCemetery, sTerrific, sZombieAsk, sZombiePanic, sHuman, sCame
    .faraddr sYouSee, sWetPants, sDreadful, sPanic, sTransformation, sDeadControl, sPraise, sZombieAnywhere
    .faraddr sChick, sHum, sChickVoice, sGentleman, sBraveMan, sLittleGirl, sToCemetery, sSensibleChild
    .faraddr sEmergency, sSuper, sSysError, sPoltergeistDamage, sMadAnimals, sMarkTrail, sTownHelp, sHelp
    .faraddr sSaveHer, sPrize, sSysError, sSysError, sZoo, sGetKey, sGetZooKey, sHero, sRunKid, sWonderGirl
    .faraddr sZooKeys, sEscaped, sBuyChick, sChickPrice, sFreeCountry, sTakeCare, sFree, sHowChick, sAnimalControl
    .faraddr sCutePets, sHmmm, sStupid, sReturn, sMindVoice, sGood, sShopping, sNoCard, sSysError, sFineWeather
    .faraddr sReturnBaby, sImportant, sLaura, sMelody, sNoGood, sSongPower, sFoundPippi, sSwellHeaded, sHopeMeet
    .faraddr sGift, sSomeoneSpecial, sSeeYouAgain, sSysError, sCutie, sEEEEEEEK, sLostTail, sStrangeClothes
    .faraddr sSysError, sBothered, sStayHome, sTrouble, sNickname, sCoolNick, sTooBad, sHelloNick, sPhilosophy
    .faraddr sGoodNick, sNotMet, sCannotPart, sSameThink, sMeetHim, sFountain, sFountainSearch, sEarring
    .faraddr sMysteriousSound, sWest, sSysError, sSpoon, sFixedSpoon, sWithoutEffort, sStrangePerson, sThatsGood
    .faraddr sKindness, sEnjoyMeal, sSuspicious, sFavoriteFood, sSysError, sSysError, sNoOcarina, sIsThatSo
    .faraddr sBedReady

.import sUseBed, sNotHere, sOcarinaOfHope, sDude, sGoAhead, sHeyKid, sNoExit, sOutside, sEmbarrassed
.import sKeeper, sMimicker, sAnotherWorld, sIntoMagicHerb, sGiveBigBag, sBorrowCard, sHoldMagicHerbs
.import sPromiseToReturn, sDontTrust, sReturnCard, sQueenFeeling, sSolveRiddle, sNoRiddle, sBye
.import sSingAgain, sRealSecret, sLonesome, sHappy, sLullaby, sHermit, sForgetful, sHealer, sIThoughtSo
.import sCaution, sMonkey, sRidiculous, sLikeQueen, sRailsFixed, sSeeQueen, sNightmares, sForGirls
.import sZzzz, sLiar, sWarpBack, sPromise, sLearnMelody, sPause, sSingMelody, sRightSong, sOhGiegue
.import sBadDream, sGuess, sRibbon, sOnlyGirls, sCandy, sNotHelpless, sUseCandy, sHowCandy, sOldMan
.import sStoneIntoHat, sDidYouCallMe, sIsThatRight, sYouNeedMoney, sHelpful, sWithdraw, sTakeIt
.import sLessMoney, sIgnoreMe, sManNotExist, sMonologue, sLuckyUnlucky, sForgotten, sGarbage, sLeaveMe
.import sThatsRight, sTooMore, sWeirdThings, sCrazyStuff, sBestDoctor, sBill, sCured, sDieOwn, sCurfew
.import sSchool, sDuncansFactory, sFactoryPass, sPassExpired, sAwfulCreature, sCurfewLifted, sWeakling
.import sHeysWeakling, sPickingWeakling, sJustTeasing, sStealExplosives, sYourGlasses, sIAmSuzy
.import sYouLookCute, sYouAreUgly, sRoofLocked, sYouDontTalk

    .faraddr sUseBed, sNotHere, sOcarinaOfHope, sSysError, sDude, sGoAhead, sHeyKid, sNoExit, sOutside
    .faraddr sEmbarrassed, sKeeper, sMimicker, sAnotherWorld, sSysError, sSysError, sIntoMagicHerb
    .faraddr sGiveBigBag, sBorrowCard, sHoldMagicHerbs, sPromiseToReturn, sDontTrust, sReturnCard
    .faraddr sQueenFeeling, sSolveRiddle, sNoRiddle, sBye, sSysError, sSingAgain, sRealSecret, sSysError
    .faraddr sLonesome, sHappy, sLullaby, sHermit, sForgetful, sHealer, sIThoughtSo, sCaution, sMonkey
    .faraddr sRidiculous, sLikeQueen, sRailsFixed, sSeeQueen, sNightmares, sForGirls, sZzzz, sSysError
    .faraddr sLiar, sWarpBack, sPromise, sLearnMelody, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sPause, sSingMelody, sRightSong, sOhGiegue, sSysError, sBadDream, sSysError
    .faraddr sGuess, sRibbon, sOnlyGirls, sCandy, sNotHelpless, sUseCandy, sSysError, sHowCandy, sOldMan
    .faraddr sSysError, sStoneIntoHat, sDidYouCallMe, sIsThatRight, sYouNeedMoney, sHelpful, sWithdraw
    .faraddr sTakeIt, sLessMoney, sIgnoreMe, sManNotExist, sMonologue, sLuckyUnlucky, sForgotten
    .faraddr sGarbage, sLeaveMe, sThatsRight, sTooMore, sWeirdThings, sCrazyStuff, sBestDoctor, sSysError
    .faraddr sSysError, sBill, sSysError, sCured, sDieOwn, sCurfew, sSchool, sDuncansFactory, sFactoryPass
    .faraddr sPassExpired, sSysError, sAwfulCreature, sSysError, sCurfewLifted, sSysError, sSysError
    .faraddr sWeakling, sHeysWeakling, sPickingWeakling, sJustTeasing, sStealExplosives, sYourGlasses
    .faraddr sIAmSuzy, sYouLookCute, sYouAreUgly, sRoofLocked, sYouDontTalk

.import sPushUps, sSchoolyard, sBeStudying, sTerribleWife, sRealLife, sScram, sSomeTea, sFollowMe, sRespect
.import sDangerous, sPleaseTea, sDontRun, sStranger, sJustDontRun, sShowMe, sWhoAreYou, sExplosives, sImComingOut
.import sRocketsDream, sBeTired, sComeToLab, sFire, sStayHere, sInvention, sPriceList, sSomeMoney, sNewInvention
.import sOldList, sProtect, sBuyTicket, sNoWeapon, sThenIts, sHatReward, sLongLife, sWithoutTrain, sFunGame
.import sHereItIs, sSlickMustache, sParkingViolations, sSwindler, sHoldMoney, sDontRunAway, sJustDo, sIncognito
.import sBigBelly, sSpeeders, sWithoutPaying, sOhImSoFull, sDangerousTown, sAreYouReady, sMySong, sFineBeThatWay
.import sItsTime, sDragonsLullaby, sGhostHouse, sGiveMe, sBarter, sGiveYou, sGoingGiveMe, sTakeFleaBag, sFlu
.import sHighMountains, sMmhm, sCantUnderstand, sGargle, sMouthwashBuy, sColdDied, sSpookaneGhostHouse
.import sVacantHouse, sDontKnow, sAhhHa, sNobodysHere, sWorstNightmare, sTURNBACK, sAagghh, sYoullNeverMake
.import sJustMouse, sOwners, sSmallRoom, sAssistant, sColorMeGone, sHints, sClown, sNotJollyGuy, sPessimist
.import sLifeOutdoors, sYourRocket, sMotherShip, sOrbit, sHouseKey, sRosemary, sMyBoy, sRenamed, sSnowmanTerminal
.import sDisappeared, sMomLeft, sBeenGhostHouse, sHorrorStories, sMustGo, sDontCatchCold, sLifeIsGame, sDontLate
.import sConcerned, sNotEnoughMoney, sRunningNose, sPlayingPerson, sTalkAbout, sCooperation, sUrgentThings, sAreYou
.import sSilly

    .faraddr sPushUps, sSchoolyard, sBeStudying, sSysError, sTerribleWife, sRealLife, sScram, sSomeTea, sSysError
    .faraddr sFollowMe, sRespect, sDangerous, sPleaseTea, sDontRun, sStranger, sJustDontRun, sShowMe, sSysError
    .faraddr sWhoAreYou, sExplosives, sImComingOut, sRocketsDream, sBeTired, sSysError, sComeToLab, sFire, sStayHere
    .faraddr sInvention, sSysError, sPriceList, sSomeMoney, sSysError, sNewInvention, sOldList, sProtect, sSysError
    .faraddr sBuyTicket, sNoWeapon, sSysError, sSysError, sSysError, sThenIts, sSysError, sSysError, sHatReward
    .faraddr sLongLife, sWithoutTrain, sFunGame, sSysError, sHereItIs, sSlickMustache, sParkingViolations, sSwindler
    .faraddr sHoldMoney, sDontRunAway, sJustDo, sIncognito, sBigBelly, sSpeeders, sWithoutPaying, sOhImSoFull
    .faraddr sDangerousTown, sAreYouReady, sMySong, sFineBeThatWay, sItsTime, sSysError, sDragonsLullaby, sGhostHouse
    .faraddr sSysError, sGiveMe, sBarter, sGiveYou, sGoingGiveMe, sTakeFleaBag, sFlu, sHighMountains, sMmhm, sCantUnderstand
    .faraddr sGargle, sSysError, sMouthwashBuy, sColdDied, sSpookaneGhostHouse, sVacantHouse, sDontKnow, sAhhHa
    .faraddr sNobodysHere, sWorstNightmare, sTURNBACK, sAagghh, sYoullNeverMake, sJustMouse, sOwners, sSmallRoom
    .faraddr sAssistant, sSysError, sColorMeGone, sHints, sClown, sNotJollyGuy, sPessimist, sLifeOutdoors, sYourRocket
    .faraddr sSysError, sMotherShip, sOrbit, sHouseKey, sRosemary, sMyBoy, sRenamed, sSnowmanTerminal, sDisappeared
    .faraddr sMomLeft, sBeenGhostHouse, sHorrorStories, sMustGo, sDontCatchCold, sSysError, sLifeIsGame, sDontLate
    .faraddr sConcerned, sSysError, sNotEnoughMoney, sRunningNose, sPlayingPerson, sTalkAbout, sCooperation
    .faraddr sUrgentThings, sAreYou, sSilly

.import sMomSearch, sLikeDream, sStayWithMe, sPleaseStay, sDance, sIsntTime, sDoYouLoveMe, sWhatsMatter
.import sDragonSleeps, sDragonAwoke, sMyDaughter, sPeacefulSleep, sPassFound, sClimbedRocket, sMyGrandfather
.import sPileBones, sSignpost, sCorpse, sCamelBones, sMoveFoot, sLikeTell, sDesert, sCharterFlights, sMines
.import sRidePlane, sBuyFlight, sExpensive, sStubs, sBrokeTank, sThankYou, sAngry, sParents, sHalt, sSuspiciousGuys
.import sSomething, sStudy, sMom, sDad, sBigShip, sWithoutAdult, sPleaseHoldMe, sHoldMeToo, sHoldMe, sBegYou
.import sMyName, sMysticPower, sGoogaa, sTeleportation, sFromMountains, sCantCarry, sWiser, sWatchOutAround
.import sTheBBGang, sBlaBla, sNotBlaBla, sBlackClouds, sHeyYouTwo, sLoveAndPeace, sLoveBurn, sLiveShowTicket
.import sDontGoStore, sStingyKids, sSecret, sBlaBlaBoss, sRegrets, sBackRoom, sDrink, sCops, sNoDrinks, sBadThing
.import sGoHome, sAnotherNight, sBuy, sNoMoney, sParentsKilled, sHeWas, sWantSing, sThenGoAhead, sYoureShy
.import sSawName, sCuteGirl, sNiceSong, sIllSmashYou, sIKnowYouDidIt, sVengeance, sAcceptHelp, sUsedPhoneCard
.import sGoodTeam, sGreatHelp, sPushA, sBorrowGoods, sBeatThem, sHurryUp, sDressingRoom, sToldName, sLookAfter
.import sRegister, sHarbor, sStrawBerry, sBuyForMe, sNoWayToBuy, sStrawBerryTofu, sGetHurt, sFightTime, sComeOn
.import sEVE, sHeavyBags, sWorn, sFighting, sRealized, sToWhom, sTooHeavy, sRestGoods, sCantGiveGoods, sWeaklingAway
.import sWelcomePodunk, sCityZoo, sOceanView, sNoOneHere, sPlaced, sSuchMan, sBigHelp, sTriangle, sLostDentures
.import sBadFeel, sPleaseComeToLab

    .faraddr sMomSearch, sLikeDream, sStayWithMe, sPleaseStay, sDance, sIsntTime, sDoYouLoveMe, sWhatsMatter
    .faraddr sDragonSleeps, sDragonAwoke, sSysError, sMyDaughter, sPeacefulSleep, sPassFound, sClimbedRocket, sMyGrandfather
    .faraddr sPileBones, sSignpost, sCorpse, sCamelBones, sMoveFoot, sLikeTell, sDesert, sCharterFlights, sMines
    .faraddr sRidePlane, sBuyFlight, sExpensive, sStubs, sBrokeTank, sSysError, sThankYou, sAngry, sSysError
    .faraddr sParents, sHalt, sSuspiciousGuys, sSomething, sStudy, sMom, sDad, sBigShip, sWithoutAdult, sPleaseHoldMe
    .faraddr sHoldMeToo, sHoldMe, sBegYou, sMyName, sMysticPower, sSysError, sGoogaa, sTeleportation, sSysError, sSysError
    .faraddr sSysError, sSysError, sFromMountains, sCantCarry, sWiser, sWatchOutAround, sTheBBGang, sBlaBla, sNotBlaBla
    .faraddr sBlackClouds, sHeyYouTwo, sLoveAndPeace, sLoveBurn, sLiveShowTicket, sDontGoStore, sStingyKids, sSecret
    .faraddr sBlaBlaBoss, sRegrets, sBackRoom, sSysError, sDrink, sCops, sNoDrinks, sBadThing, sGoHome, sAnotherNight
    .faraddr sBuy, sNoMoney, sParentsKilled, sHeWas, sWantSing, sThenGoAhead, sYoureShy, sSysError, sSawName, sCuteGirl
    .faraddr sNiceSong, sIllSmashYou, sIKnowYouDidIt, sVengeance, sSysError, sAcceptHelp, sUsedPhoneCard, sGoodTeam
    .faraddr sSysError, sSysError, sGreatHelp, sPushA, sBorrowGoods, sSysError, sBeatThem, sHurryUp, sDressingRoom
    .faraddr sToldName, sLookAfter, sRegister, sHarbor, sStrawBerry, sBuyForMe, sNoWayToBuy, sStrawBerryTofu
    .faraddr sSysError, sSysError, sGetHurt, sSysError, sFightTime, sComeOn, sEVE, sSysError, sSysError, sSysError, sSysError
    .faraddr sHeavyBags, sWorn, sFighting, sRealized, sToWhom, sTooHeavy, sRestGoods, sCantGiveGoods, sWeaklingAway
    .faraddr sWelcomePodunk, sCityZoo, sOceanView, sNoOneHere, sPlaced, sSuchMan, sBigHelp, sTriangle, sLostDentures
    .faraddr sBadFeel, sPleaseComeToLab

.import sPhenomenStopped, sSwitch, sIllCook, sPippiGone, sWhichOne, sIllGiveYou, sCosmosShip, sLying, sTrio
.import sWhichKeep, sDragonDeepSleep, sWhatCanIDo, sKeep, sBrotherTakeCare, sTakeWithYou, sRockSlide, sYouMean
.import sCantCarryMore, sSeemLessMoney, sTooMuchCarry, sNeedMoreMoney, sBeCareful, sAnythingMore, sMedicine
.import sHopeSleepWell, sHowMuchWithdraw, sDeposit, sGoBack, sCantCarryAll, sShame, sOtherTime, sWhichFlightplan
.import sWithoutDentures, sNotEnough, sToughTime, sWish, sTeach, sJustFine, sMakeMad, sPickedUpPass, sHmm
.import sLoadTooHeavy, sTaste, sFantasticRobot, sBakerTaste, sTakeWords, sLifeUpSleep, sLoadHeavy, sGetGift
.import sGiveGift, sHorrible, sFainted, sGratitude, sIAmLaura, sStopAndRest, sNoForGirl, sHello, sGoodMorning
.import sComeAgain, sMorning, sMonkeys, sLikeMonkey, sRaccoon, sEyesight, sCoolDown, sTakeRest, sJustGame
.import sCaughtMe, sDirection, sQuietHere, sWalkStraight, sLady, sMan, sLala, sHowLong, sGoodStory, sNice
.import sAmbitions, sInside, sLiars, sRetreat, sNewFriend, sQuietMonkey, sDish, sAllLiars, sMonkeyBoss, sBigMistake
.import sHelpMe, sTelephone, sAbbott, sShareSecret, sStayNight, sTraveller, sHauntingMelody, sBeFound, sHeadquarters
.import sLandmine, sDogCrap, sCertificate, sNiceTrip, sPatient, sNoPatient, sBadFlu, sDontCold, sInn, sHi
.import sRestaurant, sLoveMusic, sDelicious, sHotel, sRoomRate, sBigRocks, sCheckMe, sDontHaveMoney, sMenu
.import sFoodToGo, sHeNotCome, sHopeEnjoy, sWaiter, sIWantToTry, sStopZombies, sItsMePippi, sMy, sItsCash
.import sAppetite, sTrackRuined, sDontStop, sThinkAbout, sAdventures, sCanaryVillage

    .faraddr sSysError, sPhenomenStopped, sSwitch, sIllCook, sSysError, sSysError, sSysError, sPippiGone, sWhichOne
    .faraddr sIllGiveYou, sCosmosShip, sSysError, sSysError, sLying, sTrio, sWhichKeep, sSysError, sDragonDeepSleep
    .faraddr sSysError, sWhatCanIDo, sSysError, sKeep, sBrotherTakeCare, sTakeWithYou, sRockSlide, sYouMean
    .faraddr sCantCarryMore, sSysError, sSeemLessMoney, sTooMuchCarry, sNeedMoreMoney, sBeCareful, sSysError
    .faraddr sAnythingMore, sMedicine, sHopeSleepWell, sSysError, sHowMuchWithdraw, sDeposit, sGoBack, sCantCarryAll
    .faraddr sShame, sOtherTime, sSysError, sWhichFlightplan, sSysError, sSysError, sWithoutDentures, sNotEnough
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sToughTime, sWish, sTeach, sJustFine
    .faraddr sSysError, sMakeMad, sPickedUpPass, sHmm, sLoadTooHeavy, sTaste, sFantasticRobot, sBakerTaste, sTakeWords
    .faraddr sLifeUpSleep, sLoadHeavy, sGetGift, sGiveGift, sHorrible, sFainted, sGratitude, sIAmLaura, sSysError
    .faraddr sSysError, sSysError, sStopAndRest, sNoForGirl, sSysError, sHello, sGoodMorning, sComeAgain, sMorning
    .faraddr sMonkeys, sLikeMonkey, sRaccoon, sEyesight, sCoolDown, sTakeRest, sJustGame, sCaughtMe, sDirection
    .faraddr sQuietHere, sWalkStraight, sLady, sMan, sSysError, sLala, sHowLong, sGoodStory, sNice, sAmbitions
    .faraddr sInside, sLiars, sRetreat, sNewFriend, sQuietMonkey, sDish, sAllLiars, sMonkeyBoss, sBigMistake, sHelpMe
    .faraddr sTelephone, sAbbott, sShareSecret, sStayNight, sTraveller, sHauntingMelody, sSysError, sBeFound, sHeadquarters
    .faraddr sSysError, sSysError, sLandmine, sDogCrap, sCertificate, sNiceTrip, sPatient, sNoPatient, sBadFlu, sDontCold
    .faraddr sInn, sHi, sRestaurant, sLoveMusic, sDelicious, sHotel, sRoomRate, sBigRocks, sCheckMe, sDontHaveMoney, sMenu
    .faraddr sFoodToGo, sSysError, sSysError, sHeNotCome, sHopeEnjoy, sWaiter, sIWantToTry, sSysError, sSysError
    .faraddr sStopZombies, sItsMePippi, sMy, sItsCash, sAppetite, sSysError, sTrackRuined, sDontStop, sThinkAbout
    .faraddr sAdventures, sCanaryVillage

.import sReceptionist, sAsthma, sRules, sLookHappy, sDuncanEnterprises, sDoctor, sSurvey, sGetToSchool, sElection
.import sHugeRockets, sOrdinaryMan, sBlownUp, sImportantMan, sLittleFactory, sScaryMonsters, sLaala, sJanitor
.import sTheOldMan, sTunnel, sResidential, sFoodOut, sArchitecture, sBicycle, sBegFood, sDresses, sPsychicPowers
.import sSmallMan, sLoveTown, sDonation, sGoodMedicine, sPostman, sNewAddress, sRosemaryGirl, sMonsters
.import sWhatDoYouWant, sClairvoyant, sMansion, sChateau, sCrazyKids, sCamelsBones, sSmallWounds, sGrowUp, sLibrary
.import sFisherman, sWay, sHey, sLowHP, sLoser, sStrongMan, sPinkie, sDidYouRead, sCactus, sTalkFisherman, sCartwheel
.import sTelescopes, sSmoke, sICantDo, sSubtraction, sTasteStrawBerry, sHungry, sFavoriteWords, sYouAreLate, sStrangeMan
.import sMario, sSell, sOutStock, sDontNeed, sVisit, sAreYouSure, sGladToSeeYou, sDeathbed, sTreat, sTreatment, sFine
.import sFineAgain, sIAmHealer, sOKDoWhatYou, sGive, sCareStay, sSorryHearThat, sSleepTight, sGreetings, sInjuries
.import sWhoAreYouHere, sPlaceStay, sLonelyHere, sSpendNight, sTicketsPlease, sHowever, sLeaveTakeout, sYouHaveNothing
.import sLeftAnything, sJustMoment, sCanIHelpYou, sBalance, sThereIsnt, sLimit, sThankYouVeryMuch, sInsideDoll, sAsk
.import sGratitudes, sWeapons, sWon, sWithdrawDeposit, sAccount, sDoorLocked, sNotFit, sUnlocked, sYesNo, sContinueRest
.import sGrabbed, sImSorry, sOhNoSir, sSirYouCant, sExpert, sSorryICant, sReunion, sTune, sThisCanary, sMonkeyStole
.import sRobot, sPresence, sFor, sDoYouBest, sMysteriousWater, sMyLittle, sImBusy, sPoisoned, sSoftened, sNoPoisoned

    .faraddr sReceptionist, sAsthma, sRules, sLookHappy, sDuncanEnterprises, sDoctor, sSurvey, sGetToSchool, sElection
    .faraddr sHugeRockets, sOrdinaryMan, sBlownUp, sImportantMan, sLittleFactory, sScaryMonsters, sLaala, sJanitor
    .faraddr sTheOldMan, sTunnel, sResidential, sFoodOut, sArchitecture, sBicycle, sBegFood, sDresses, sPsychicPowers
    .faraddr sSmallMan, sLoveTown, sDonation, sGoodMedicine, sPostman, sNewAddress, sRosemaryGirl, sMonsters
    .faraddr sWhatDoYouWant, sClairvoyant, sMansion, sChateau, sCrazyKids, sCamelsBones, sSmallWounds, sGrowUp, sLibrary
    .faraddr sFisherman, sWay, sHey, sLowHP, sLoser, sStrongMan, sPinkie, sDidYouRead, sCactus, sTalkFisherman, sCartwheel
    .faraddr sTelescopes, sSmoke, sICantDo, sSubtraction, sTasteStrawBerry, sHungry, sFavoriteWords, sYouAreLate, sStrangeMan
    .faraddr sMario, sSell, sOutStock, sDontNeed, sVisit, sAreYouSure, sGladToSeeYou, sDeathbed, sTreat, sTreatment, sFine
    .faraddr sFineAgain, sSysError, sIAmHealer, sOKDoWhatYou, sGive, sCareStay, sSorryHearThat, sSleepTight, sGreetings
    .faraddr sInjuries, sWhoAreYouHere, sSysError, sPlaceStay, sLonelyHere, sSpendNight, sTicketsPlease, sHowever, sSysError
    .faraddr sLeaveTakeout, sYouHaveNothing, sLeftAnything, sJustMoment, sCanIHelpYou, sBalance, sSysError, sThereIsnt, sLimit
    .faraddr sThankYouVeryMuch, sInsideDoll, sAsk, sGratitudes, sWeapons, sSysError, sWon, sWithdrawDeposit, sAccount
    .faraddr sDoorLocked, sNotFit, sUnlocked, sYesNo, sContinueRest, sGrabbed, sImSorry, sOhNoSir, sSirYouCant, sExpert
    .faraddr sSorryICant, sReunion, sTune, sThisCanary, sMonkeyStole, sRobot, sPresence, sFor, sDoYouBest, sSysError
    .faraddr sMysteriousWater, sSysError, sMyLittle, sImBusy, sPoisoned, sSoftened, sNoPoisoned

.import sTurnedStone, sManufacture, sMyWife, sUnlockedRoof, sConstructing, sCallMeNames, sDawn, sPardon, sDontTalk
.import sGameTitle, sLadyReindeer, sImportantHint, sCheck, sTheSingingMonkey, sCactusSang, sPiano, sDragonCrooned
.import sRobotEve, sOneOfKind, sPadlock, sIMustStayHere, sNotEnoughCash, sGoFirst, sBrokenLock, sHowAreYou, sLet
.import sNoICant, sFlyingMan, sStrongAlly, sBenevolent, sSorrow, sHorror, sProclamation, sDeep, sCanTelepathy
.import sAreYouGoing, sFoundHat, sWellIhad, sUniqueSong, sExcuseMe, sDoYouThink, sUsedBullhorn, sExchange
.import sQuestionnaire, sHearing, sPriedUpLid, sTelescope, sBlueSea, sSparkled, sSuddenly, sDaddy, sTalking, sWhat
.import sNoProblem, sQueenVoice, sWeaponsShop, sUsed, sCantUse, sDontBeSilly, sEquipped, sCantEquip, sThrewAway
.import sDontThrow, sHanded, sCantHandOver, sCantCarryAnyMore, sNothingHappened, sOpened, sThereWas, sGot
.import sCantCarryAnything, sItWasEmpty, sCurePoison, sCityZooSign, sNoHunting, sCityHall, sLookOutTower
.import sEllayMountSign, sHealersHouse, sSign, sCityZooWest, sSnowmanChateau, sEllaySwampSign, sTwinkle, sHouse
.import sWestNorthSign, sWestEastSouth, sWestEastSign, sSwampEast, sPrivateProperty, sPoliceStation, sCompanyInc
.import sPride, sServe, sDestiny, sTheCurfew, sOldRustyRocket, sDidYouCome, sIveGivenYouAll, sIAmMinnie, sRefreshSoften
.import sLikeBeAlone, sOhShoot, sLovedYou, sLoudNoises, sNoises, sBoatMotor, sAbleFixIt, sFired, sIllSend
.import sClaustrophobia, sSweetFactory, sKidnapped, sSpelled, sOddSound, sMostPrized, sCollar, sNoisyMouse, sPsychicPower
.import sILovedHim, sWaggingTail, sPurpose, sInsertCard, sDontMuchCash, sDataSaved, sYouSaidYes, sBreath, sAnyFriends
.import sPossession

    .faraddr sTurnedStone, sManufacture, sMyWife, sUnlockedRoof, sConstructing, sCallMeNames, sDawn, sPardon, sDontTalk
    .faraddr sGameTitle, sSysError, sLadyReindeer, sImportantHint, sCheck, sTheSingingMonkey, sCactusSang, sPiano
    .faraddr sDragonCrooned, sRobotEve, sOneOfKind, sPadlock, sIMustStayHere, sNotEnoughCash, sGoFirst, sBrokenLock
    .faraddr sHowAreYou, sLet, sNoICant, sFlyingMan, sStrongAlly, sBenevolent, sSorrow, sHorror, sProclamation, sDeep
    .faraddr sCanTelepathy, sAreYouGoing, sFoundHat, sWellIhad, sUniqueSong, sExcuseMe, sSysError, sDoYouThink, sUsedBullhorn
    .faraddr sExchange, sQuestionnaire, sHearing, sPriedUpLid, sTelescope, sBlueSea, sSparkled, sSuddenly, sDaddy, sSysError
    .faraddr sTalking, sWhat, sNoProblem, sQueenVoice, sSysError, sSysError, sWeaponsShop, sSysError, sSysError, sUsed, sCantUse
    .faraddr sDontBeSilly, sEquipped, sCantEquip, sThrewAway, sDontThrow, sHanded, sCantHandOver, sCantCarryAnyMore
    .faraddr sNothingHappened, sOpened, sThereWas, sGot, sSysError, sCantCarryAnything, sSysError, sSysError, sSysError
    .faraddr sItWasEmpty, sCurePoison, sCityZooSign, sNoHunting, sCityHall, sLookOutTower, sEllayMountSign, sHealersHouse, sSign
    .faraddr sCityZooWest, sSnowmanChateau, sEllaySwampSign, sTwinkle, sHouse, sWestNorthSign, sWestEastSouth, sWestEastSign
    .faraddr sSwampEast, sPrivateProperty, sPoliceStation, sCompanyInc, sPride, sServe, sDestiny, sTheCurfew, sOldRustyRocket
    .faraddr sDidYouCome, sIveGivenYouAll, sIAmMinnie, sRefreshSoften, sLikeBeAlone, sOhShoot, sLovedYou, sLoudNoises, sNoises
    .faraddr sBoatMotor, sAbleFixIt, sFired, sIllSend, sClaustrophobia, sSweetFactory, sKidnapped, sSpelled, sOddSound, sSysError
    .faraddr sMostPrized, sCollar, sNoisyMouse, sSysError, sPsychicPower, sILovedHim, sWaggingTail, sPurpose, sInsertCard
    .faraddr sDontMuchCash, sDataSaved, sYouSaidYes, sBreath, sAnyFriends, sPossession

.import sLoadTooGreat, sClosetFull, sMirage, sBraveChildren, sCanDash, sGetTrain, sDoYouWant, sMelodyForYou, sCrystal
.import sEmpty1, sEmpty2, sDidntDo, sGave, sPut, sPulled, sThrew, sTook, sAte, sDrank, sRecovered, sIncreased, sHPis
.import sPPis, sENERGYis, sSPEEDis, sWISDOMis, sSTRENGTHis, sFORCEis, sTookHerb, sDropping, sYouCantUse, sHeadTrail
.import sTied, sTrue, sMeasured, sWhenBigBag, sReached, sNeutralized, sRid, sSqueezed, sPSIPower, sTried, sPowerLeft
.import sScene, sTheDiary, sBecame, sTheOcarina, sDidYouHearIt, sPlace, sChecked, sStopped, sTheRepelRing, sIllegal
.import sSpaces, sReunited, sHealth, sLonely, sForget, sElementarySchool, sNotHungry, sLetter, sFinally, sHome, stru_20EE56
.import sSHIGESATOITOI, sMIYUKIKURE, sAKIOOHMORI, sRITSUOKAMIMURA, sKEIICHISUZUKI, sHIROKAZUTANAKA, sSHINBOMINAMI
.import sTATSUYAISHII, sTOTTORI, sKAZUYANAKATANI, sTAKAYUKIONODERA, sMOTOOYASUMA, sMASAYUKIKAMEYAMA, sHIDEOKON
.import sKATSUTOMOMAEIWA, sKUNIKOSAKURAI, sMASAHIROTATEMOTO, sTAKASHIKAWAGUCHI, sKEIZOHKATOH, sMOTOHIROISHII, sAKIHITOTODA
.import sYUKARISAITOH, sPHILSANDHOP, sTOSHIKOWATSON, sYUKANAKATA, sHIROKOFAULKNER, sTONYHARMAN, sDAYVBROOKS
.import sNORIYUKIMINAMI, sBINOHGAWARA, sYOSHIHISAWADA, sHIKONORISUZUKI, sTAKAOSHIMIZU, sSHIGERUMIYAMOTO, sHIROSHIYAMAUCHI
.import sEmpty3

    .faraddr sLoadTooGreat, sClosetFull, sMirage, sBraveChildren, sCanDash, sGetTrain, sDoYouWant, sMelodyForYou, sCrystal
    .faraddr sSysError, sEmpty1

.import sEmpty4, sBagFilled, sCharge, sBreadCrumbs, sStrangeRing, sEmpty5, sEmpty6, sEmpty7, sEmpty8, sEmpty9, sKnife
.import sSurvivalKnife, sSwordMaster, sJapaneseSword, sStunGunUse, sStrongWeapon, sPlasticBatUse, sWoodenBatUse, sTougher
.import sAutographed, sFryingPanUse, sNonStickPan, sIronSkilletUse, sSlingshotUse, sBoomerangUse, sIrritating, sIndustrial
.import sCritters, sWordsLove, sSwear, sStickyMachine, sOpposite, sEmpty10, sEmpty11, sFlameThrower, sDetonate, sBewareBlast
.import sSissy, sWeenie, sEmpty12, sEnemyUp, sEmpty13, sEmpty14, sEmpty15, sEmpty16, sPeaceCoinUse, sProtectionCoin
.import sMagicCoinUse, sBrassRingUse, sSilverRingUse, sGoldRingUse, sWaterPendant, sFirePendantUse, sEarthPendant
.import sSeaPendantUse, sEmpty17, sEmpty18, sEmpty19, sEmpty20, sEmpty21, sVitaminC, sEaten, sMagicHerbUse, sFastFood
.import sStrengthen, sLifeUpCreamUse, sAsthmaAttacks, sAntidotePoison, sYouGargle, sStrawBerryEat, sEmpty22, sBreadTrail
.import sNobleSeedUse, sPSISolid, sEmpty23, sMagicForce, sMagicCandyEat, sEmpty24, sQuickCapsule, sWisdomCapsule
.import sPhysicalCapsule, sForceCapsule, sFightCapsule, sEmpty25, sEmpty26, sBasementKeyUse, sUnlockGate, sGhostHouseKey
.import sGreatGrandFathers, sEmployee, sRocknRoll, sEmpty27, sEmpty28, sEmpty29, sEmpty30, sCanaryChickEyes, sEmpty31
.import sBottleRocket, sPrettyHat, sBrush, sSaveTen, sEmpty32, sCatchyTune, sEmpty33, sFranklinBadge, sEmpty34, sEmpty35
.import sOnyxHookWarp, sLastWeaponAsk, sRulerInches, sCashCardUse, sRedWeedLike, sAmplified, sEmpty36, sEmpty37, sEmpty38
.import sEmpty39, sEmpty40, sEmpty41, sEmpty42, sEmpty43, sEmpty44, sEmpty45, sEmpty46, sEmpty47, sEmpty48, sEmpty49, sDbg
.import sEmpty50, sFightRun, sImportantSecret, sDefeat, sDontLetStop, sPorridge, sSurprised, sAsthmatic, sHypnotism
.import sSpecialArmor, sAwful, sNotExist, sPrimate, sFace, sWatchThoseEyes, sNoOne, sStrong, sShell, sHhypnotism, sEmpty51
.import sQuickness, sPearly, sThief, sInvitation, sFuel, sGuarding, sFBI, sRotten, sMalnourishedRobot, sTricked, sStarsMan
.import sNaturally, sEvilLab, sPSIAttack, sArmorOwn, sAnimatedTree, sTemper, sFlowers, sFridge, sBadApple, sTwisted
.import sEmpty52, sSmash, sSneak, sWallet, sNotPoison, sLaughsLast, sPetCat, sExterminate, sAHCho, sEffective, sYoullWantTry
.import sPoisonous, sDontLetYourself, sComicBook, sDraw, sIdentity, sOrdinaryGhost, sDinnerPlate, sPuzzle, sSpaceman
.import sHoldYourNose, sLastStrike, sRatTail, sEgg, sEmpty53, sStares, sHovers, sEmpty54, sEmpty55, sStrongPoison, sBeware
.import sEmpty56, sEmpty57, sGoodExperience, sDoesntFriends, sChairBroken, sEmpty58, sEmpty59, sEmpty60, sEmpty61
.import sWhereAntidote, sPoisonPoison, sDontSmile, sEmpty62, sHisFace, sEmpty63, sOriginStone, sFleas, sCar, sVehicle, sNext
.import sDontAlarm, sEmpty64, sOptometrists, sWatchYourStep, sMomseyesWillSpot, sEmpty65, sEmpty66, sFriends

    .faraddr sEmpty4, sBagFilled, sCharge, sBreadCrumbs, sStrangeRing, sEmpty5, sEmpty6, sEmpty7, sEmpty8, sEmpty9, sKnife
    .faraddr sSurvivalKnife, sSwordMaster, sJapaneseSword, sStunGunUse, sStrongWeapon, sPlasticBatUse, sWoodenBatUse, sTougher
    .faraddr sAutographed, sFryingPanUse, sNonStickPan, sIronSkilletUse, sSlingshotUse, sBoomerangUse, sIrritating, sIndustrial
    .faraddr sCritters, sWordsLove, sSwear, sStickyMachine, sOpposite, sEmpty10, sEmpty11, sFlameThrower, sDetonate, sBewareBlast
    .faraddr sSissy, sWeenie, sEmpty12, sEnemyUp, sEmpty13, sEmpty14, sEmpty15, sEmpty16, sPeaceCoinUse, sProtectionCoin
    .faraddr sMagicCoinUse, sBrassRingUse, sSilverRingUse, sGoldRingUse, sWaterPendant, sFirePendantUse, sEarthPendant
    .faraddr sSeaPendantUse, sEmpty17, sEmpty18, sEmpty19, sEmpty20, sEmpty21, sVitaminC, sEaten, sMagicHerbUse, sFastFood
    .faraddr sStrengthen, sLifeUpCreamUse, sAsthmaAttacks, sAntidotePoison, sYouGargle, sStrawBerryEat, sEmpty22, sBreadTrail
    .faraddr sNobleSeedUse, sPSISolid, sEmpty23, sMagicForce, sMagicCandyEat, sEmpty24, sQuickCapsule, sWisdomCapsule
    .faraddr sPhysicalCapsule, sForceCapsule, sFightCapsule, sEmpty25, sEmpty26, sBasementKeyUse, sUnlockGate, sGhostHouseKey
    .faraddr sGreatGrandFathers, sEmployee, sRocknRoll, sEmpty27, sEmpty28, sEmpty29, sEmpty30, sCanaryChickEyes, sEmpty31
    .faraddr sBottleRocket, sPrettyHat, sBrush, sSaveTen, sEmpty32, sCatchyTune, sEmpty33, sFranklinBadge, sEmpty34, sEmpty35
    .faraddr sOnyxHookWarp, sLastWeaponAsk, sRulerInches, sCashCardUse, sRedWeedLike, sAmplified, sEmpty36, sEmpty37, sEmpty38
    .faraddr sEmpty39, sEmpty40, sEmpty41, sEmpty42, sEmpty43, sEmpty44, sEmpty45, sEmpty46, sEmpty47, sEmpty48, sEmpty49, sDbg

    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError

    .faraddr sEmpty50, sFightRun, sImportantSecret, sDefeat, sDontLetStop, sPorridge, sSurprised, sAsthmatic, sHypnotism
    .faraddr sSpecialArmor, sAwful, sNotExist, sPrimate, sFace, sWatchThoseEyes, sNoOne, sStrong, sShell, sHhypnotism, sEmpty51
    .faraddr sQuickness, sPearly, sThief, sInvitation, sFuel, sGuarding, sFBI, sRotten, sMalnourishedRobot, sTricked, sStarsMan
    .faraddr sNaturally, sEvilLab, sPSIAttack, sArmorOwn, sAnimatedTree, sTemper, sFlowers, sFridge, sBadApple, sTwisted
    .faraddr sEmpty52, sSmash, sSneak, sWallet, sNotPoison, sLaughsLast, sPetCat, sExterminate, sAHCho, sEffective, sYoullWantTry
    .faraddr sPoisonous, sDontLetYourself, sComicBook, sDraw, sIdentity, sOrdinaryGhost, sDinnerPlate, sPuzzle, sSpaceman
    .faraddr sHoldYourNose, sLastStrike, sRatTail, sEgg, sEmpty53, sStares, sHovers, sEmpty54, sEmpty55, sStrongPoison, sBeware
    .faraddr sEmpty56, sEmpty57, sGoodExperience, sDoesntFriends, sChairBroken, sEmpty58, sEmpty59, sEmpty60, sEmpty61
    .faraddr sWhereAntidote, sPoisonPoison, sDontSmile, sEmpty62, sHisFace, sEmpty63, sOriginStone, sFleas, sCar, sVehicle, sNext
    .faraddr sDontAlarm, sEmpty64, sOptometrists, sWatchYourStep, sMomseyesWillSpot, sEmpty65, sEmpty66, sFriends

.import sEmpty67, sHePKBeam, sStrongOx, sRagged, sTheLatest, sManhole, sBeauty, sCarries, sPlenty, sStrongPSIAttack
.import sHisPurpose, sFreeze, sBeatIt, sUsingPSI, sEmpty68, sCareful, sBareHands, sCoat, sHuge, sMustSleep, sImproved
.import sTheStrongest, sEmpty69, sPos, sFill, sDrewNear, sAttack, sTankGun, sBit, sScratched, sCharged, sRanOut, sLastBlow
.import sForm, sSpit, sBound, sStrangeCry, sDarlingSmile, sRage, sConfused, sCriedOut, sSowed, sStarted, sUttered, sDirtyWords
.import sGrins, sSoConfused, sIsAsleep, sEnergy, sRanAway, sDidntWork, sTripped, sCantMove, sTurned, sPuffed, sWheeze
.import sMeditating, sSaid, sReady, sSang, sIsGuarding, sApproached, sUSEd, sTtried, sCcantUse, sCircumstances, sSomethingStrange
.import sDayDreaming, sCHECKed, sWickedSeed, sGas, sTookAway, sEscapedRope, sWokeUp, sZAP, sContinuousAttack, sYOUWIN, sLose
.import sLingers, sTankBroken, sAgainstFire, sAgainstFreeze, sAgainstThunder, sAgainstBeam, sWeakSprays, sOFFENSE, sDEFENSE
.import sGrateful, sYourGreat, sGeorgeStole, sDescendants, sGoHomeNow, sFoolish, sYouAlone, sFallSleep, sStopSinging
.import sSTOPSinging, sSTOP, sSTOPIT, sPuny, sTheSONG, sSTOPIt, sExclamation, sStop, sAcclamation, sPoints, sBeDefeated
.import sIWill, sMeetAgain, sDodged, sSMAAAASH, sSuffered, sDefeated, sHurt, sGone, sNoEffect, sExhausted, sSurrounded
.import sMotherCall, sTturned, sBlinded, sExploded, sBurst, sOFFENSEinc, sOFFENSEdec, sDEFENSEinc, sSPEEDinc, sFIGHTdec
.import sDEFENSEdec, sFIGHTinc, sSPEEDdec, sEXPinc, sBelieved, sWasntConvinced, sMadeAngry, sCritical, sSenses, sPutSleep
.import sRecoverPP, sRecoverHP, sHoweverNoOne, sSilence, sJoined, sSnatched, sCannotMove, sWasPoisoned, sDehydrated, sBlocked
.import sWasBound, sShielded, sMiss, sPSIBlocked, sBounced, sBouncedBack, sNotenoughPPs, sWasNoEffect, sDissipated
.import sRegained, sItchy, sCanMove, sWakeUp, sBrought, sDestroyed, sAsthmaAttackPass, sRecoveredStone, sILoveYou, sIHateYou
.import sAsthmaAttack, sRegainedSenses, sQuiet, sBeaten, sWasDestroyed, sDust, sDidntMove, sPileJunk, sVanished, sWasntConfused
.import sItNoEffect, sWasBroken, sTurnedIntoStone, sBecameEmpty, sAdvanced, sMaximumHPinc, sMaximumPPinc, sFIGHTInc, sSPEEDInc
.import sWISDOMinc, sSTRENGTHinc, sFORCEinc, sNewPSIPower, sPickedUp, sSingLullaby, sEmpty70

    .faraddr sEmpty67, sHePKBeam, sStrongOx, sRagged, sTheLatest, sManhole, sBeauty, sCarries, sPlenty, sStrongPSIAttack
    .faraddr sHisPurpose, sFreeze, sBeatIt, sUsingPSI, sEmpty68, sCareful, sBareHands, sCoat, sHuge, sMustSleep, sImproved
    .faraddr sTheStrongest, sSysError, sSysError, sSysError, sSysError, sSysError, sEmpty69

    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError

    .faraddr sEmpty70, sEmpty70, sPos, sDrewNear, sAttack, sTankGun, sDodged, sContinuousAttack, sBit, sScratched, sCharged
    .faraddr sSMAAAASH, sSuffered, sYOUWIN, sLose, sDefeated, sHurt, sGone, sNoEffect, sRanOut, sExhausted, sLastBlow
    .faraddr sForm, sSurrounded, sMotherCall, sTturned, sSpit, sBlinded, sBound, sStrangeCry, sExploded, sBurst, sOFFENSEinc
    .faraddr sOFFENSEdec, sDEFENSEinc, sSPEEDinc, sOFFENSE, sDEFENSE, sFIGHTdec, sDEFENSEdec, sDarlingSmile, sFIGHTinc, sRage
    .faraddr sSPEEDdec, sConfused, sCriedOut, sSowed, sEXPinc, sStarted, sTankBroken, sUttered, sDirtyWords, sGrins, sBelieved
    .faraddr sWasntConvinced, sMadeAngry, sCritical, sSenses, sSoConfused, sPutSleep, sIsAsleep, sRecoverPP, sRecoverHP, sEnergy
    .faraddr sHoweverNoOne, sSilence, sJoined, sRanAway, sDidntWork, sTripped, sCantMove, sTurned, sSnatched, sCannotMove
    .faraddr sPuffed, sWasPoisoned, sDehydrated, sBlocked, sWasBound, sShielded, sMiss, sPSIBlocked, sBounced, sBouncedBack
    .faraddr sNotenoughPPs, sWasNoEffect, sWheeze, sMeditating, sSaid, sReady, sSang, sIsGuarding, sApproached, sDissipated
    .faraddr sRegained, sItchy, sCanMove, sWakeUp, sBrought, sUSEd, sTtried, sCcantUse, sCircumstances, sSomethingStrange
    .faraddr sDayDreaming, sDestroyed, sCHECKed, sAgainstFire, sAgainstFreeze, sAgainstThunder, sAgainstBeam, sWeakSprays
    .faraddr sAsthmaAttackPass, sRecoveredStone, sILoveYou, sIHateYou, sAsthmaAttack, sWasBroken, sWickedSeed, sGas, sTurnedIntoStone
    .faraddr sRegainedSenses, sQuiet, sBeaten, sWasDestroyed, sDust, sDidntMove, sPileJunk, sVanished, sTookAway, sAdvanced
    .faraddr sNewPSIPower, sMaximumHPinc, sMaximumPPinc, sFIGHTInc, sSPEEDInc, sWISDOMinc, sSTRENGTHinc, sFORCEinc, sEscapedRope
    .faraddr sPickedUp, sWasntConfused, sWokeUp, sZAP, sItNoEffect, sBecameEmpty, sLingers, sSingLullaby, sEmpty70, sEmpty70
    .faraddr sGrateful, sYourGreat, sGeorgeStole, sDescendants, sGoHomeNow, sFoolish, sYouAlone, sFallSleep, sStopSinging
    .faraddr sSTOPSinging, sSTOP, sSTOPIT, sPuny, sTheSONG, sSTOPIt, sExclamation, sStop, sAcclamation, sPoints, sBeDefeated
    .faraddr sIWill, sMeetAgain

    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError

    .faraddr sEmpty2, sDidntDo, sGave, sPut, sPulled, sThrew, sTook, sSysError, sSysError, sSysError, sSysError, sAte, sDrank
    .faraddr sRecovered, sIncreased, sHPis, sPPis, sENERGYis, sSPEEDis, sWISDOMis, sSTRENGTHis, sFORCEis, sTookHerb, sDropping
    .faraddr sYouCantUse, sHeadTrail, sTied, sTrue, sMeasured, sWhenBigBag, sReached, sNeutralized, sRid, sSqueezed, sPSIPower
    .faraddr sTried, sPowerLeft, sScene, sTheDiary, sBecame, sTheOcarina, sDidYouHearIt, sPlace, sChecked, sStopped, sTheRepelRing

    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError

    .faraddr sIllegal

    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError

    .faraddr sSpaces, sReunited, sHealth, sLonely, sForget, sElementarySchool, sNotHungry, sLetter, sFinally, sHome, stru_20EE56
    .faraddr sSHIGESATOITOI, sMIYUKIKURE, sAKIOOHMORI, sRITSUOKAMIMURA, sKEIICHISUZUKI, sHIROKAZUTANAKA, sSHINBOMINAMI
    .faraddr sTATSUYAISHII, sTOTTORI, sKAZUYANAKATANI, sTAKAYUKIONODERA, sMOTOOYASUMA, sMASAYUKIKAMEYAMA, sHIDEOKON
    .faraddr sKATSUTOMOMAEIWA, sKUNIKOSAKURAI, sMASAHIROTATEMOTO, sTAKASHIKAWAGUCHI, sKEIZOHKATOH, sMOTOHIROISHII, sAKIHITOTODA
    .faraddr sYUKARISAITOH, sPHILSANDHOP, sTOSHIKOWATSON, sYUKANAKATA, sHIROKOFAULKNER, sTONYHARMAN, sDAYVBROOKS
    .faraddr sNORIYUKIMINAMI, sBINOHGAWARA, sYOSHIHISAWADA, sHIKONORISUZUKI, sTAKAOSHIMIZU, sSHIGERUMIYAMOTO, sHIROSHIYAMAUCHI

    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError, sSysError
    .faraddr sSysError, sSysError, sSysError

    .faraddr sEmpty3

.segment "PURE_SAVE"

PureSave:       .byte 0                 ; field_0
                .byte 0                 ; field_1
                .byte $B0               ; GameNumber
                .byte $E9               ; Active
                .word $852              ; GlobalX
                .word $2F84             ; GlobalY
                .byte 1, 0, 0, 0        ; CharactersNum
                .byte $52               ; field_C
                .byte 8                 ; field_D
                .byte $86               ; field_E
                .byte $2F               ; field_F
                .word 0                 ; cash
                .word 0                 ; field_12
                .byte 0                 ; field_14
                .byte 0                 ; field_15
                .byte 0                 ; field_16
                .byte 0                 ; field_17
                .byte $21               ; field_18
                .byte 0                 ; field_19
                .byte 0, $6B, $84, $1C, $42; field_1A
                .byte $1E               ; field_1F
                .byte $AE, $AE, $AE, $AE, $AE, $AE, $AE, 0, 0, 0, 0, 0; field_20
                .byte 0, 0, 0, 0        ; field_20
                .byte 0                 ; field_30
                .byte 0                 ; field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; field_32
                .byte 8, $20, $80       ; field_3C
                .byte $20               ; field_3F
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $1E, 0, 8, 0, 5, 0, 5, 0, 5, 5, 5, 5, 5; Characters.msg_list
                .byte 1                 ; Characters.Level
                .byte 0                 ; Characters.Exp
                .byte 0                 ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $1E               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte 8                 ; Characters.PP
                .byte 0                 ; Characters.field_17
                .byte $78               ; Characters.field_18
                .byte $74               ; Characters.field_19
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte 0                 ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte $6E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte $40               ; Characters.field_30
                .byte 0, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $1A, 0, $C, 0, 1, 0, 3, 0, 1, 3, 7, 3, 8; Characters.msg_list
                .byte 1                 ; Characters.Level
                .byte 0                 ; Characters.Exp
                .byte 0                 ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $1A               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte $C                ; Characters.PP
                .byte 0                 ; Characters.field_17
                .byte $B8               ; Characters.field_18
                .byte $74               ; Characters.field_19
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte $20               ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte $40               ; Characters.field_30
                .byte $40, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $1C, 0, 0, 0, 4, 0, 2, 0, 4, 2, 8, 4, 3; Characters.msg_list
                .byte 1                 ; Characters.Level
                .byte 0                 ; Characters.Exp
                .byte 0                 ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $1C               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte 0                 ; Characters.PP
                .byte 0                 ; Characters.field_17
                .byte $F8               ; Characters.field_18
                .byte $74               ; Characters.field_19
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte $40               ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte 0                 ; Characters.field_30
                .byte 0, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0                 ; Characters.field_0
                .byte 0, 0, $86, 0, 0, 0, $56, 0, $56, 0, $56, $56, $13; Characters.msg_list
                .byte $39, $26          ; Characters.msg_list
                .byte $12               ; Characters.Level
                .byte $10               ; Characters.Exp
                .byte $E                ; Characters.field_12
                .byte 0                 ; Characters.field_13
                .byte $86               ; Characters.Health
                .byte 0                 ; Characters.field_15
                .byte 0                 ; Characters.PP
                .byte 0                 ; Characters.field_17
                .byte $38               ; Characters.field_18
                .byte $75               ; Characters.field_19
                .byte 0                 ; Characters.field_1A
                .byte 0                 ; Characters.field_1B
                .byte 8                 ; Characters.field_1C
                .byte $64               ; Characters.field_1D
                .byte $60               ; Characters.field_1E
                .byte $80               ; Characters.field_1F
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86; Characters.field_20
                .byte $2F               ; Characters.field_20
                .byte 0                 ; Characters.field_30
                .byte 0, 0, 0, 0, 0, 0, 0; Characters.field_31
                .byte 0, 0, 0, 0, 0, 0, 0, 0; Characters.Name
                .byte 0, 0, 0, $20, 0, 0, 0, 9, 0, 9, 0, 9, 9, 2, 6, 4; field_140
                .byte 1, 0, 0, 0, $20, 0, 0, 0, $78, $75, 0, 0, 8, $64; field_140
                .byte $80, $80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52; field_140
                .byte 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0; field_140
                .byte $D0, $E9, $F0, $F0, $E9, 0, 0, 0, 0, 0, 0, $E7, 3; field_178
                .byte 0, 0, $E7, 3, $E7, 3, $FF, $FF, $FF, $FF, $FF, $63; field_178
                .byte $40, $42, $F, $E7, 3, 0, 0, $B8, $75, 0, 0, 8, $3A; field_178
                .byte $60, $81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52; field_178
                .byte 8, $86, $2F, 0, 0, 0, 0, 0, 0, 0, 0, $C5, $D6, $C5; field_178
                .byte 0, 0, 0, 0, 0, 0, 0, 0, $32, 0, 0, 0, $1E, 0, $1E; field_178
                .byte 0, $1E, $1E, $1E, $1E, $1E, $63, $40, $42, $F, $1E; field_178
                .byte 0, 0, 0, $F8, $75, 0, 0, 8, $64, $40, $81, 0, 0; field_178
                .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $52, 8, $86, $2F, 0; field_178
                .byte 0, 0, 0, 0, 0, 0, 0, $C6, $EC, $F9, $EE, $CD, $E1; field_178
                .byte $EE, 0            ; field_178
; end of 'BANK18'
