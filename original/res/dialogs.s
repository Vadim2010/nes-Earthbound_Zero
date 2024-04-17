.include "charmap.inc"

.segment "DATA_BANK_8"

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

    .faraddr sLoadTooGreat, sClosetFull, sMirage, sBraveChildren, sCanDash, sGetTrain, sDoYouWant, sMelodyForYou, sCrystal
    .faraddr sSysError, sEmpty1

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



.segment "DIALOGS0"

.importzp word_2A

sSysError:
    .byte "System Error!!!", 1, 0

sLampAlive:
    .byte "@Brother, I'm so", 1
    .byte " scared! The lamp", 1
    .byte " seems to be alive!", 1, 0

sFallingHouse:
    .byte "@Oh my! Brother,", 1
    .byte " our house is", 1
    .byte " falling apart!", 1, 0

sBoohoo:
    .byte "@Boo hoo!", 1, 0

sJuice:
    .byte "@Brother, here's", 1
    .byte " some juice.", 1, 3

    .byte "@You are thirsty,", 1
    .byte " aren't you?", 1, 0

sSpooky:
    .byte "@Spooky!!", 1
    .byte " The doll walks", 1
    .byte " by itself!", 1, 0

sScaredToDeath:
    .byte "@I was scared to", 1
    .byte " death!!", 1, 3

    .byte "@Oh wow! CHECK out", 1
    .byte " what's hidden", 1
    .byte " inside the doll.", 1, 0

sMimmieNotMinnie:
    .byte "@No, I'm Mimmie,", 1
    .byte " don't confuse me", 1
    .byte " with Minnie.", 1, 0

sHouseEmergency:
    .byte "@"
    .byte $21
    .word $7478             ; TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset (char1 name)
    .byte ".", 1
    .byte " Are you alright?" , 1, 3

    .byte "@Egad!", 1
    .byte " What is happening", 1
    .byte " to our house?", 1, 3

    .byte "@I wish your Dad", 1
    .byte " were here now.", 1
    .byte " Maybe...", 1, 0

sSonBravery:
    .byte "@Son of mine,", 1
    .byte " you are braver", 1
    .byte " than I thought.", 1, 3

    .byte "@I can't let you", 1
    .byte " go on a journey", 1
    .byte " so famished.", 1, 0

sWounded:
    .byte "@Oh, you have been", 1
    .byte " wounded.", 1, 0

sNextLevel:
    .byte "@Well, the next", 1
    .byte " level", 1
    .byte " requires...", 1, 0

sReturnOffer:
    .byte "@When you want to", 1
    .byte " eat "
    .byte $21
    .word $7689             ; TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset (favorite food)
    .byte 1
    .byte " again, just come", 1
    .byte " back here.", 1, 0

sPoltergeist:
    .byte "@Well...", 1
    .byte " It seems like a", 1
    .byte " poltergeist.", 1, 3

    .byte "@I'm not exactly", 1
    .byte " sure how to...", 1, 3

    .byte "@But, your great-", 1
    .byte " grand-father", 1
    .byte " studied PSI.", 1, 3

    .byte "@You might find", 1
    .byte " something in the", 1
    .byte " basement to help.", 1, 3

    .byte "@But, I left the", 1
    .byte " Basement Key", 1
    .byte " someplace...", 1, 3

    .byte "@...can't remember", 1
    .byte " exactly where...", 1, 3

    .byte "@Anyhow, son, you", 1
    .byte " are my only hope.", 1, 3

    .byte "@It's time for you", 1
    .byte " to go on a little", 1
    .byte " adventure,", 1, 3

    .byte "@and explore the", 1
    .byte " potential of your", 1
    .byte " powers.", 1, 3

    .byte "@Powers not be taken", 1
    .byte " lightly.", 1, 3

    .byte "@"
    .byte $21
    .word $7478             ; TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset (char1 name)
    .byte ", go", 1
    .byte " for it!!", 1, 3

    .byte "@But remember to come", 1
    .byte " back and check on", 1
    .byte " our family.", 1, 3

    .byte "@Bye.", 1, 3

    .byte "@Oh... phone me,", 1
    .byte " and I will SAVE", 1
    .byte " your progress.", 1, 3

    .byte "@Call me whenever", 1
    .byte " you want.", 1, 0

sSlam:
    .byte "@Slam.", 1, 0

sYourDad:
    .byte "@This is your Dad.", 1, 0

sTransfer:
    .byte "@I've transferred", 1
    .byte " $"
    .byte $23
    .word $7415
    .byte 3, 0              ; TILEPACK_23 <$23, $7415, 3, 0>
    .byte 1
    .byte " into your account.", 1, 3

    .byte "@After the amount", 1
    .byte " you've spent,", 1, 3

    .byte "@the balance is", 1
    .byte " $"
    .byte $23
    .word $7412
    .byte 3, 0              ; TILEPACK_23 <$23, $7412, 3, 0>
    .byte ".", 1, 3

    .byte "@Spend your money", 1
    .byte " wisely.", 1, 0

sRest:
    .byte "@Now son, it's not", 1
    .byte " my business, but", 1
    .byte " why not rest?", 1, 0

sSave:
    .byte "@I see. ", 1
    .byte " I'll SAVE your", 1
    .byte " progress.", 1, 0

sCrisis:
    .byte "@I see.", 1
    .byte " I know, the Earth", 1
    .byte " faces a crisis.", 1, 0

sSleepSave:
    .byte "@OK...But, I was", 1
    .byte " thinking of going", 1
    .byte " to sleep now.", 1, 3

    .byte "@I've SAVEd your", 1
    .byte " progress, so far.", 1, 3

    .byte "@Good night.", 1, 0

sSeeYouLater:
    .byte "@See you later!", 1, 3

    .byte "@Remember, push in", 1
    .byte " and hold RESET,", 1, 3

    .byte "@while turning the", 1
    .byte " POWER off. OK?", 1, 0

sAdviceToRest:
    .byte "@Just like your", 1
    .byte " Mom, you never", 1
    .byte " want to stop.", 1, 3

    .byte "@Please don't push", 1
    .byte " yourself so hard.", 1, 0

sSaveOffer:
    .byte "@By the way, do", 1
    .byte " you want to SAVE?", 1, 0

sGoodLuck:
    .byte "@Good luck.", 1, 0

sThanks:
    .byte "@I want to thank", 1
    .byte " you again for your", 1
    .byte " help.", 1, 3

    .byte "@Pippi is", 1
    .byte " fine now.", 1, 0

sCemetery:
    .byte "@Don't tell me", 1
    .byte " you've been south", 1
    .byte " to the cemetery!", 1, 0

sTerrific:
    .byte "@You are terrific.", 1, 0

sZombieAsk:
    .byte "@Be honest,", 1
    .byte " you're a zombie.", 1, 3

    .byte "@Aren't you?", 1, 0

sZombiePanic:
    .byte "@There is no cure", 1
    .byte " for zombies!", 1
    .byte " AAAAAAAHHH!", 1, 0

sHuman:
    .byte "@Are you really", 1
    .byte " a human?", 1, 0

sCame:
    .byte "@It's amazing", 1
    .byte " you came here.", 1, 0

sYouSee:
    .byte "@You see...", 1, 0

sWetPants:
    .byte "@Don't tell anyone,", 1
    .byte " but I'm so scared,", 1
    .byte " I wet my pants.", 1, 0

sDreadful:
    .byte "@It was dreadful...", 1, 0

sPanic:
    .byte "@Zombie!", 1, 0

sTransformation:
    .byte "@Ha-ha...", 1
    .byte " You shall become", 1
    .byte " a Zombieeee!", 1, 0

sDeadControl:
    .byte "@Someone must be", 1
    .byte " controlling the", 1
    .byte " dead.", 1, 0

sPraise:
    .byte "@Young man,", 1
    .byte " you did well.", 1, 0

sZombieAnywhere:
    .byte "@Zombies may be", 1
    .byte " anywhere in this", 1
    .byte " town.", 1, 0

sChick:
    .byte "@Did that Canary", 1
    .byte " Chick come from", 1
    .byte " Canary Village?", 1, 0

sHum:
    .byte "@Hum.", 1, 0

sChickVoice:
    .byte "@The chicks at the", 1
    .byte " Canary Village", 1
    .byte " have lovely voices.", 1, 0

sGentleman:
    .byte "@The gentleman in", 1
    .byte " Canary Village", 1
    .byte " is my idol.", 1, 0

sBraveMan:
    .byte "@The Town Mayor is", 1
    .byte " looking for a", 1
    .byte " brave man.", 1, 0

sLittleGirl:
    .byte "@Has the little", 1
    .byte " girl who strayed", 1, 3

    .byte "@into the cemetery", 1
    .byte " been rescued?", 1, 0

sToCemetery:
    .byte "@You...", 1
    .byte " Are you really going", 1
    .byte " to the cemetery?", 1, 0

sSensibleChild:
    .byte "@I thought you were", 1
    .byte " a sensible child.", 1, 0

sEmergency:
    .byte "@The animals went", 1
    .byte " mad and out of", 1
    .byte " control.", 1, 3

    .byte "@The dead became", 1
    .byte " zombies and began", 1
    .byte " attacking people.", 1, 3

    .byte "@What can be done?", 1, 0

sSuper:
    .byte "@You are super!", 1, 0

sPoltergeistDamage:
    .byte "@Did a poltergeist", 1
    .byte " visit your house?", 1, 3

    .byte "@It tore mine apart.", 1, 0

sMadAnimals:
    .byte "@The animals went", 1
    .byte " mad and began to", 1
    .byte " escape,", 1, 3

    .byte "@so the Zoo was", 1
    .byte " locked.", 1, 0

sMarkTrail:
    .byte "@To EAT, you'll", 1
    .byte " find Bread stale,", 1, 3

    .byte "@but, with its", 1
    .byte " Crumbs you can", 1
    .byte " mark your trail.", 1, 3

    .byte "@Do you think I", 1
    .byte " talk too much?", 1
    .byte " Well do I?", 1, 0

sTownHelp:
    .byte "@Citizen, I know", 1
    .byte " you would like to", 1
    .byte " help your town.", 1, 0

sHelp:
    .byte "@Well...", 1
    .byte " A child has strayed", 1
    .byte " into the cemetery.", 1, 3

    .byte "@And...", 1
    .byte " I'm up for re-", 1
    .byte " election soon.", 1, 3

    .byte "@You must help!", 1
    .byte " Please help me!", 1, 0

sSaveHer:
    .byte "@Oh!?", 1
    .byte " You will go there", 1
    .byte " and save her?", 1, 0

sPrize:
    .byte "@Is she the lost", 1
    .byte " girl, Pippi?", 1, 3

    .byte "@Well that's just", 1
    .byte " great.", 1, 3

    .byte "@I knew that you", 1
    .byte " could fulfill your", 1
    .byte " civic duty.", 1, 3

    .byte "@Applause,", 1
    .byte " applause...", 1, 3

    .byte "@Now pretty Pippi,", 1
    .byte " don't forget...", 1, 3

    .byte "@to tell your Mom", 1
    .byte " that the Mayor", 1
    .byte " saved you.", 1, 3

    .byte "@Here, I will give", 1
    .byte " "
    .byte $21
    .word $670A             ; TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .byte " a prize of", 1
    .byte " "
    .byte $23
    .word word_2A           ; $2A
    .byte 2, 0              ; TILEPACK_23 <$23, $2A, 2, 0>
    .byte ".", 1, 0

sZoo:
    .byte "@By the way hero,", 1, 3

    .byte "@maybe you'd like", 1
    .byte " to go see what's", 1
    .byte " up at the Zoo?", 1, 0

sGetKey:
    .byte "@Yes, you'll go?", 1
    .byte " Great, great", 1
    .byte " great!", 1, 3

    .byte "@Now make sure to", 1
    .byte " get a Key from my", 1
    .byte " assistant, Abbott.", 1, 0

sGetZooKey:
    .byte "@This Key will open", 1
    .byte " the Zoo's gate.", 1
    .byte " Now don't lose it.", 1, 0

sHero:
    .byte "@Return her to me", 1
    .byte " alive, and surely", 1
    .byte " I'll be a hero...", 1, 3

    .byte "@Er, umh, I mean", 1
    .byte " you'll be a hero.", 1, 0

sRunKid:
    .byte "@Why if it's not", 1
    .byte " our hero "
    .byte $21
    .word $670A                 ; TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .byte ",", 1, 3

    .byte "@You have tiger", 1
    .byte " droppings on your", 1
    .byte " clothes.", 1, 3

    .byte "@Ha-ha, just", 1
    .byte " joking. Now run", 1
    .byte " along kid.", 1, 0

sWonderGirl:
    .byte "@I've heard a", 1
    .byte " rumor about a", 1
    .byte " wonder girl.", 1, 3

    .byte "@She will help you", 1
    .byte " on your trip.", 1, 0

sZooKeys:
    .byte "@Zoo Keys are a", 1
    .byte " dime a dozen,", 1
    .byte " have another.", 1, 0

sEscaped:
    .byte "@Look for yourself,", 1
    .byte " all the animals", 1
    .byte " have escaped.", 1, 0

sBuyChick:
    .byte "@Only this Canary", 1
    .byte " Chick is left.", 1
    .byte " Want to buy it?", 1, 0

sChickPrice:
    .byte "@Well, how about", 1
    .byte " $"
    .byte $23
    .word word_2A           ; $2A
    .byte 2, 0              ; TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .byte "?", 1, 0

sFreeCountry:
    .byte "@OK kid, it's a", 1
    .byte " free country, you", 1
    .byte " know.", 1, 0

sTakeCare:
    .byte "@Take care of it.", 1
    .byte " Come see us again!", 1, 0

sFree:
    .byte "@If it's free, do", 1
    .byte " you want it?", 1
    .byte " Then take it!", 1, 0

sHowChick:
    .byte "@How's the Canary?", 1, 0

sAnimalControl:
    .byte "@I think something", 1
    .byte " is controlling", 1
    .byte " the animals.", 1, 0

sCutePets:
    .byte "@Ah... cute pets", 1
    .byte " aren't they?", 1, 0

sHmmm:
    .byte "@Hmmm.", 1, 0

sStupid:
    .byte "@You stupid jerk!", 1, 0

sReturn:
    .byte "@How may I help?", 1
    .byte " Do you have some-", 1
    .byte " thing to return?", 1, 0

sMindVoice:
    .byte "@Wait.. A voice is", 1
    .byte " speaking into", 1
    .byte " "
    .byte $21
    .word $670A             ; TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .byte "'s mind.", 1, 0

sGood:
    .byte "@Good.", 1, 0

sShopping:
    .byte "@Thank you for", 1
    .byte " shopping with us", 1
    .byte " today.", 1, 0

sNoCard:
    .byte "@It's convenient that", 1
    .byte " the cash machine is", 1, 3

    .byte "@next to the", 1
    .byte " Service Counter,", 1, 3

    .byte "@but, why should I", 1
    .byte " care. I don't have a", 1
    .byte " card for it.", 1, 0

sFineWeather:
    .byte "@It's fine weather", 1
    .byte " today.", 1
    .byte " But, I don't care.", 1, 0

sReturnBaby:
    .byte "@Wow! That Canary", 1
    .byte " is the baby of", 1
    .byte " singing Laura.", 1, 3

    .byte "@Will you return her", 1
    .byte " baby to her.", 1, 0

sImportant:
    .byte "@Wait...", 1, 3

    .byte "@You just missed", 1
    .byte " something very", 1
    .byte " important.", 1, 0

sLaura:
    .byte "@Where is Laura?...", 1, 0

sMelody:
    .byte "@Laura remembered", 1
    .byte " her song, and began", 1
    .byte " to sing once more.", 1, 3

    .byte "@Did you learn", 1
    .byte " the melody?", 1, 0

sNoGood:
    .byte "@That's no good.", 1, 0

sSongPower:
    .byte "@The truth is...", 1
    .byte " There is power in", 1
    .byte " song.", 1, 0

sFoundPippi:
    .byte "@Hi! I am Pippi,", 1
    .byte " and I'm lost.", 1, 3

    .byte "@What a brave", 1
    .byte " boy you are to", 1
    .byte " have found me.", 1, 0

sSwellHeaded:
    .byte "@Don't get so", 1
    .byte " swell headed.", 1
    .byte " Ha-ha-ha.", 1, 0

sHopeMeet:
    .byte "@You're brave. I", 1
    .byte " hope we can meet", 1
    .byte " again sometime.", 1, 0

sGift:
    .byte "@I'm so happy!  To", 1
    .byte " show my gratitude", 1
    .byte " take my gift.", 1, 3

    .byte "@This shiny Badge", 1
    .byte " will guard you.", 1
    .byte " Keep it!", 1, 0

sSomeoneSpecial:
    .byte "@You probably", 1
    .byte " already have", 1
    .byte " someone special,", 1, 0

sSeeYouAgain:
    .byte "@Now, it's time to", 1
    .byte " say good-bye.", 1, 3

    .byte "@Please come by my", 1
    .byte " house, I'll be", 1
    .byte " waiting there to", 1, 3

    .byte "@see you again.", 1
    .byte " By the way...", 1, 3

    .byte "@Do you think my", 1
    .byte " hair needs", 1
    .byte " styling?", 1, 0

sCutie:
    .byte "@You didn't have to", 1
    .byte " answer, cutie.", 1, 0

sEEEEEEEK:
    .byte "@EEE, EE EEK,", 1
    .byte " EEK EEK!", 1, 0

sLostTail:
    .byte "@"
    .byte $21
    .word $670A
    .byte " felt this", 1
    .byte " question enter ", 1
    .byte " his mind.", 1, 3

    .byte "@", $A6, "Who has lost", 1
    .byte " his tail?", $A6, 1, 0

sStrangeClothes:
    .byte "@My! What strange", 1
    .byte " clothing you wear!", 1, 3

    .byte "@Surely monsters", 1
    .byte " will come after", 1
    .byte " those clothes!!", 1, 0

sBothered:
    .byte "@Are you bothered that", 1
    .byte " unhappiness and", 1, 3

    .byte "@misfortune search", 1
    .byte " you out?", 1, 0

sStayHome:
    .byte "@If you desire to", 1
    .byte " never find", 1
    .byte " trouble...", 1, 3

    .byte "@STAY HOME!!", 1, 0

sTrouble:
    .byte "@Is that right?", 1
    .byte " Trouble searches", 1
    .byte " after you?", 1, 3

    .byte "@Hmm, that's too", 1
    .byte " bad.", 1, 0

sNickname:
    .byte "@Then, you admit I", 1
    .byte " have good taste.", 1, 3

    .byte "@Huh?", 1
    .byte " You want a cool", 1
    .byte " nickname, too?", 1, 0

sCoolNick:
    .byte "@OK, I've got it!", 1
    .byte " From now on, you", 1
    .byte " are Noodlenoggin!", 1, 3

    .byte "@Sounds pretty", 1
    .byte " cool, doesn't it?", 1, 0

sTooBad:
    .byte "@Is that right?", 1
    .byte " That's too bad.", 1, 0

sHelloNick:
    .byte "@Hello, there!", 1
    .byte " Noodlenoggin", 1
    .byte " "
    .byte $21
    .word $670A
    .byte ".", 1, 0

sPhilosophy:
    .byte "@Have you ever met", 1
    .byte " the man who practices", 1
    .byte " philosophy?", 1, 0

sGoodNick:
    .byte "@He is so good at", 1
    .byte " nicknaming.", 1, 3

    .byte "@He uses such...", 1
    .byte " good taste in it.", 1, 0

sNotMet:
    .byte "@In the first", 1
    .byte " place, if we", 1
    .byte " have not met", 1, 3

    .byte "@we cannot part!", 1, 0

sCannotPart:
    .byte "@Have you met a man", 1
    .byte " who says, that you", 1
    .byte " cannot part,", 1, 3

    .byte "@with someone you", 1
    .byte " have not met?", 1, 0

sSameThink:
    .byte "@I tend to think", 1
    .byte " the same way, too.", 1, 0

sMeetHim:
    .byte "@You should meet", 1
    .byte " him.", 1, 0

sFountain:
    .byte "@I regained my", 1
    .byte " strength at Queen", 1
    .byte " Mary's fountain.", 1, 0

sFountainSearch:
    .byte "@The bad thing", 1
    .byte " about Queen Mary's", 1
    .byte " fountain is...", 1, 3

    .byte "@that it is so far", 1
    .byte " away, and so hard", 1
    .byte " to find.", 1, 0

sEarring:
    .byte "@I am taking this", 1
    .byte " broken earring to", 1
    .byte " the fountain.", 1, 3

    .byte "@I'll bet it'll", 1
    .byte " change into a", 1
    .byte " magic earring.", 1, 0

sMysteriousSound:
    .byte "@The mysterious", 1
    .byte " sound of the", 1
    .byte " fountain soothes.", 1, 0

sWest:
    .byte "@More to the south.", 1
    .byte " Are you lost?", 1, 3

    .byte "@Sorry...I was", 1
    .byte " directing you to", 1
    .byte " the rest room.", 1, 3

    .byte "@Queen Mary's", 1
    .byte " Fountain is west", 1
    .byte " of the castle.", 1, 0

sSpoon:
    .byte "@I bent my spoon", 1
    .byte " and it's hard to", 1
    .byte " use like this.", 1, 3

    .byte "@Do you think", 1
    .byte " somehow you could", 1
    .byte " fix it for me?", 1, 0

sFixedSpoon:
    .byte "@Please fix it", 1
    .byte " right away.", 1, 3

    .byte "@("
    .byte $21
    .word $7478
    .byte " fixed", 1
    .byte " the spoon with", 1
    .byte " PSI-Power.)", 1, 3

    .byte "@Thanks a million!", 1
    .byte " Munch, munch...", 1, 3

    .byte "@Hey, would you", 1
    .byte " like to spend", 1
    .byte " the night here?", 1, 0

sWithoutEffort:
    .byte "@Why not? You can", 1
    .byte " fix it without any", 1
    .byte " physical effort!", 1, 0

sStrangePerson:
    .byte "@You're a strange", 1
    .byte " person...", 1, 3

    .byte "@but for some", 1
    .byte " reason, I like", 1
    .byte " you.", 1, 0

sThatsGood:
    .byte "@That's good.", 1, 0

sKindness:
    .byte "@Boo hoo hoo... You", 1
    .byte " should accept", 1
    .byte " kindness graciously.", 1, 0

sEnjoyMeal:
    .byte "@Oh, traveller! Why", 1
    .byte " don't you enjoy a", 1
    .byte " meal at our house?", 1, 3

    .byte "@Well.... Today's", 1
    .byte " special. Can you", 1
    .byte " guess what it is?", 1, 0

sSuspicious:
    .byte "@Why not!? You sound", 1
    .byte " so suspicious!", 1, 0

sFavoriteFood:
    .byte "@Yes, it's ", 1
    .byte " "
    .byte $21
    .word $7689
    .byte ".", 1, 3

    .byte "@I knew you liked", 1
    .byte " "
    .byte $21
    .word $7689
    .byte ". Do you", 1
    .byte " want some?", 1, 0

sNoOcarina:
    .byte "@This was to be a", 1
    .byte " musical instrument", 1
    .byte " store,", 1, 3

    .byte "@but the Ocarina", 1
    .byte " that we ordered", 1
    .byte " never arrived.", 1, 3

    .byte "@So I've given up.", 1, 0

sIsThatSo:
    .byte "@Is that so?", 1, 0

sBedReady:
    .byte "@Thanks. Your bed", 1
    .byte " is ready. Please", 1
    .byte " sleep well.", 1, 0



.segment "DIALOGS1"

sUseBed:
    .byte "@Please feel free", 1
    .byte " to use our bed", 1
    .byte " anytime.", 1, 0

sNotHere:
    .byte "@Stranger, I can", 1
    .byte " tell you're not", 1
    .byte " from this place.", 1, 0

sOcarinaOfHope:
    .byte "@The Ocarina of", 1
    .byte " Hope is finally", 1
    .byte " completed.", 1, 3

    .byte "@Its melody", 1
    .byte " can now flow out", 1
    .byte " from it.", 1, 3

    .byte "@Do you want it?", 1, 0

sDude:
    .byte "@You're a pretty", 1
    .byte " straight looking", 1
    .byte " dude, Go ahead.", 1, 3

    .byte "@Ha ha ha.", 1, 0

sGoAhead:
    .byte "@It's quite obvious", 1
    .byte " that you want it.", 1
    .byte " Ha ha ha.", 1, 3

    .byte "@Go ahead, take it.", 1, 0

sHeyKid:
    .byte "@Hey, kid! ", 1
    .byte " How are you doing?", 1, 0

sNoExit:
    .byte "@There is no exit", 1
    .byte " from a place like", 1
    .byte " Magicant.", 1, 3

    .byte "@Ha ha ha...", 1, 0

sOutside:
    .byte "@Outside?", 1
    .byte " A world outside?", 1
    .byte " What do you mean?", 1, 0

sEmbarrassed:
    .byte "@I am so embarrassed!", 1
    .byte " I wish I could ", 1
    .byte " crawl into a hole.", 1, 0

sKeeper:
    .byte "@I am the", 1
    .byte " Mysterious", 1
    .byte " Goods-Keeper.", 1, 3

    .byte "@You have a need?", 1, 0

sMimicker:
    .byte "@I am the", 1
    .byte " Mysterious", 1
    .byte " Mimicker.", 1, 0

sAnotherWorld:
    .byte "@There are a great", 1
    .byte " many holes east of", 1
    .byte " town.", 1, 3

    .byte "@The sound of", 1
    .byte " another world can", 1
    .byte " be heard from one.", 1, 0

sIntoMagicHerb:
    .byte "@Pull out a Red", 1
    .byte " Weed and place it", 1
    .byte " into the fountain,", 1, 3

    .byte "@it will turn into", 1
    .byte " the Magic Herb.", 1, 0

sGiveBigBag:
    .byte "@Would you like me", 1
    .byte " to give you the", 1
    .byte " Big Bag?", 1, 0

sBorrowCard:
    .byte "@Can I borrow your", 1
    .byte " Cash Card for a", 1
    .byte " while?", 1, 0

sHoldMagicHerbs:
    .byte "@It holds 30", 1
    .byte " Magic Herbs.", 1, 0

sPromiseToReturn:
    .byte "@Thank you,", 1
    .byte " sure, sure I'll", 1
    .byte " return it to you.", 1, 3

    .byte "@I thought that", 1
    .byte " it looked pretty", 1
    .byte " cool.", 1, 0

sDontTrust:
    .byte "@You don't trust", 1
    .byte " anyone.", 1, 3

    .byte "@That may be a good", 1
    .byte " attitude,", 1
    .byte " possibly...", 1, 0

sReturnCard:
    .byte "@Oh that's right, I", 1
    .byte " have to return", 1
    .byte " your Cash Card!", 1, 0

sQueenFeeling:
    .byte "@The Queen isn't", 1
    .byte " feeling very well.", 1, 0

sSolveRiddle:
    .byte "@Suspicious man....", 1
    .byte " I'll let you pass,", 1, 3

    .byte "@if you solve this", 1
    .byte " riddle...", 1, 0

sNoRiddle:
    .byte "@That's right.", 1
    .byte " The answer is", 1
    .byte " ", $A6, "two alligators", $A6, ".", 1, 3

    .byte "@Although I haven't", 1
    .byte " come up with the", 1
    .byte " riddle yet.", 1, 0

sBye:
    .byte "@See you later!", 1, 0

sSingAgain:
    .byte "@I wish I could", 1
    .byte " hear the Queen", 1
    .byte " sing again.", 1, 0

sRealSecret:
    .byte "@Hello! I didn't hear", 1
    .byte " you come in.", 1, 3

    .byte "@That guitar playing", 1
    .byte " is so loud...", 1, 3

    .byte "@I can't even", 1
    .byte " think.", 1, 3

    .byte "@What? I was", 1
    .byte " playing the guitar", 1
    .byte " myself!?", 1, 3

    .byte "@I should have", 1
    .byte " known.", 1, 3

    .byte "@..........", 1, 3

    .byte "@The story I tell", 1
    .byte " to you now", 1
    .byte " is a real secret.", 1, 3

    .byte "@When you become", 1
    .byte " really strong,", 1
    .byte " come see me.", 1, 3

    .byte "@You had better", 1
    .byte " write this down so", 1
    .byte " you don't forget.", 1, 3

    .byte "@I know if I don't", 1
    .byte " write things down,", 1
    .byte " I forget.", 1, 0

sLonesome:
    .byte "@You tried to", 1
    .byte " ignore me, didn't", 1
    .byte " you?", 1, 3

    .byte "@I'm so lonesome", 1
    .byte " out here, all by", 1
    .byte " myself.", 1, 3

    .byte "@I will do", 1
    .byte " anything I can.", 1
    .byte " Here!", 1, 0

sHappy:
    .byte "@How happy I am", 1
    .byte " that you came to", 1
    .byte " see me.", 1, 3

    .byte "@I know what you", 1
    .byte " would like me to", 1
    .byte " do. Here!", 1, 0

sLullaby:
    .byte "@Listen to my song!", 1
    .byte " Oh music-loving", 1
    .byte " adventurer "
    .byte $21
    .word $670A
    .byte "!", 1, 3

    .byte "@Why do you cry,", 1
    .byte " oh Cupid-Doll?", 1, 3

    .byte "@Canary sings", 1
    .byte " so sadly.", 1, 3

    .byte "@Monkey sings,", 1
    .byte " Piano plays,", 1, 3

    .byte "@maybe there", 1
    .byte " is a ghost?", 1, 3

    .byte "@Desert Cactus", 1
    .byte " so alone,", 1, 3

    .byte "@every night", 1
    .byte " his sad, sad tone.", 1, 3

    .byte "@The Dragon sleeps,", 1
    .byte " the note remains.", 1, 3

    .byte "@Eve's last song", 1
    .byte " has no refrain.", 1, 3

    .byte "@On the Mount", 1
    .byte " named Itoi,", 1, 3

    .byte "@you must climb", 1
    .byte " high young boy.", 1, 3

    .byte "@See the XX Stone,", 1
    .byte " for the last tone,", 1, 3

    .byte "@then do not leave", 1
    .byte " Queen Mary alone!", 1, 3

    .byte "@La la lullaby...", 1
    .byte " Strange lullaby...", 1, 3

    .byte "@Bye bye bye...", 1
    .byte " Good-bye.", 1, 3

    .byte "@Sure is a nice", 1
    .byte " song, isn't it?", 1, 0

sHermit:
    .byte "@Deep in the woods,", 1
    .byte " is a guitar player", 1
    .byte " who is a hermit.", 1, 3

    .byte "@Not that bad", 1
    .byte " looking of a", 1
    .byte " man...", 1, 3

    .byte "@Best of all,", 1
    .byte " he's quite a poet.", 1, 0

sForgetful:
    .byte "@Someone told me", 1
    .byte " about a man that", 1, 3

    .byte "@everyone forgot", 1
    .byte " about. But, I don't", 1
    .byte " remember who.", 1, 0

sHealer:
    .byte "@Believe it or not,", 1
    .byte " I am a Healer.", 1, 3

    .byte "@I can charge your", 1
    .byte " PP, and can cure", 1
    .byte " stone-illness.", 1, 0

sIThoughtSo:
    .byte "@...I thought so...", 1, 0

sCaution:
    .byte "@Don't carry so much", 1
    .byte " money with you.", 1, 0

sMonkey:
    .byte "@Of course I am a", 1
    .byte " non-singing", 1
    .byte " monkey.", 1, 3

    .byte "@Normal monkeys", 1
    .byte " don't sing.", 1
    .byte " So, any questions?", 1, 0

sRidiculous:
    .byte "@Anyhow...", 1
    .byte " questions are so", 1
    .byte " ridiculous.", 1, 0

sLikeQueen:
    .byte "@Good, I worried", 1
    .byte " that you would ask", 1
    .byte " a difficult one.", 1, 3

    .byte "@You look so much", 1
    .byte " like Queen Mary.", 1, 3

    .byte "@I wonder why?", 1, 0

sRailsFixed:
    .byte "@I just had to tell", 1
    .byte " you about it as", 1
    .byte " soon as I saw you.", 1, 3

    .byte "@The rails are", 1
    .byte " fixed, and the", 1
    .byte " train is on time.", 1, 0

sSeeQueen:
    .byte "@I wish I could go", 1
    .byte " into the castle to", 1
    .byte " see Queen Mary.", 1, 0

sNightmares:
    .byte "@Queen Mary often", 1
    .byte " has nightmares.", 1, 3

    .byte "@As if scolding a", 1
    .byte " naughty child,", 1
    .byte " she cries out,", 1, 3

    .byte "@", $A6, "I am scared!", 1
    .byte " I am scared!", $A6, 1, 3

    .byte "@And then she", 1
    .byte " starts to sing...", 1
    .byte " just a little bit.", 1, 3

    .byte "@Then she forgets", 1
    .byte " the tune, and", 1
    .byte " wakes in a sweat.", 1, 3

    .byte "@I wonder what sad", 1
    .byte " experience has done", 1
    .byte " this to Queen Mary?", 1, 0

sForGirls:
    .byte "@I only give this", 1
    .byte " to girls.", 1, 0

sZzzz:
    .byte "@Zzzzzzzzzzzz...", 1, 0

sLiar:
    .byte "@You liar!", 1, 0

sWarpBack:
    .byte "@All of us know you", 1
    .byte " don't belong here,", 1, 3

    .byte "@but we consider", 1
    .byte " you one of us.", 1, 3

    .byte "@With the Onyx", 1
    .byte " Hook, you can warp", 1
    .byte " back here anytime.", 1, 0

sPromise:
    .byte "@Promise me, that", 1
    .byte " if you need help,", 1
    .byte " you will return.", 1, 3

    .byte "@Everyone loves", 1
    .byte " you, "
    .byte $21
    .word $670A
    .byte ".", 1, 0

sLearnMelody:
    .byte "@Welcome, "
    .byte $21
    .word $670A
    .byte ".", 1, 3

    .byte "@Here in Magicant,", 1
    .byte " everyone is your", 1
    .byte " friend.", 1, 3

    .byte "@You can have as", 1
    .byte " much as you like,", 1, 3

    .byte "@of whatever you", 1
    .byte " want.", 1, 3

    .byte "@What? You want to", 1
    .byte " listen to my song?", 1, 3

    .byte "@Sorry, I don't", 1
    .byte " know why, but I", 1
    .byte " just can't sing.", 1, 3

    .byte "@I beg you to learn", 1
    .byte " the melody. It is", 1
    .byte " only 8 notes long.", 1, 3

    .byte "@When you learn", 1
    .byte " them all, return", 1
    .byte " and sing for me.", 1, 3

    .byte "@If I only could", 1
    .byte " hear that song...", 1, 0

sPause:
    .byte "@......", 1, 0

sSingMelody:
    .byte "@Please SING to me", 1
    .byte " the melodies that", 1
    .byte " you have learned.", 1, 0

sRightSong:
    .byte "@Yes...", 1
    .byte " that's right.", 1
    .byte " That is the song.", 1, 0

sOhGiegue:
    .byte "@Oh! Giegue!", 1, 0

sBadDream:
    .byte "@In a bad dream,", 1
    .byte " Magicant vanished", 1
    .byte " into thin air.", 1, 3

    .byte "@My heart is still", 1
    .byte " pounding so hard.", 1, 0

sGuess:
    .byte "@Yes, I am the cat", 1
    .byte " who swims on the", 1
    .byte " ground.", 1, 3

    .byte "@Guess what is in", 1
    .byte " my hand.", 1, 0

sRibbon:
    .byte "@Do you know what I", 1
    .byte " have in my hand?", 1, 3

    .byte "@That is right.", 1
    .byte " A Ribbon...", 1, 3

    .byte "@This Magic Ribbon", 1
    .byte " will give", 1
    .byte " strength...", 1, 0

sOnlyGirls:
    .byte "@Magic Ribbons are", 1
    .byte " only for girls.", 1, 0

sCandy:
    .byte "@I am a Swimming", 1
    .byte " cat.", 1, 3

    .byte "@Have you heard of", 1
    .byte " a Magic Candy that", 1
    .byte " gives strength", 1, 3

    .byte "@and power to a", 1
    .byte " helpless child?", 1, 0

sNotHelpless:
    .byte "@I see, but you are", 1
    .byte " not helpless, so", 1
    .byte " you don't need it.", 1, 0

sUseCandy:
    .byte "@The boy with", 1
    .byte " glasses can surely", 1
    .byte " use the Candy.", 1, 0

sHowCandy:
    .byte "@Was the Candy", 1
    .byte " good?", 1, 0

sOldMan:
    .byte "@If you need the", 1
    .byte " benevolent", 1
    .byte " old man,", 1, 3

    .byte "@go to Queen Mary's", 1
    .byte " Fountain for his", 1
    .byte " help.", 1, 3

    .byte "@He will hear your", 1
    .byte " soulful cry and", 1
    .byte " come to help.", 1, 3

    .byte "@Soulful cry,", 1
    .byte " remember,", 1
    .byte " soulful cry!", 1, 0

sStoneIntoHat:
    .byte "@(The crowd becomes", 1
    .byte " restless and", 1
    .byte " upset.)", 1, 3

    .byte "@What in the world", 1
    .byte " is that stone with", 1
    .byte " a hat on!", 1, 0

sDidYouCallMe:
    .byte "@Did you call me", 1
    .byte " up?", 1, 0

sIsThatRight:
    .byte "@Is that right?", 1
    .byte " Bye!", 1, 0

sYouNeedMoney:
    .byte "@You need money,", 1
    .byte " don't you?", 1, 0

sHelpful:
    .byte "@Has it been helpful", 1
    .byte " to you?", 1, 0

sWithdraw:
    .byte "@Well, your balance", 1
    .byte " is $"
    .byte $23
    .word $7412
    .byte $03, $00
    .byte ".", 1, 3

    .byte "@How much do you", 1
    .byte " want to withdraw?", 1, 0

sTakeIt:
    .byte "@Here...", 1
    .byte " Take it with you.", 1, 0

sLessMoney:
    .byte "@Ouch, there is not", 1
    .byte " that much money left", 1
    .byte " in your account.", 1, 0

sIgnoreMe:
    .byte "@I am a forgotten", 1
    .byte " man. I'm not", 1
    .byte " really here.", 1, 3

    .byte "@You didn't have to", 1
    .byte " notice me....", 1, 3

    .byte "@Please ignore me.", 1, 0

sManNotExist:
    .byte "@I am a man who", 1
    .byte " does not exist.", 1, 3

    .byte "@You talk so", 1
    .byte " kindly, I don't", 1
    .byte " know what to do.", 1, 3

    .byte "@If I miss people,", 1
    .byte " I cannot live", 1
    .byte " alone anymore.", 1, 0

sMonologue:
    .byte "@My conversation", 1
    .byte " is always a", 1
    .byte " monologue.", 1, 3

    .byte "@I've been alone", 1
    .byte " from the moment", 1
    .byte " I was born...", 1, 0

sLuckyUnlucky:
    .byte "@Lucky, unlucky...", 1
    .byte " It makes no", 1
    .byte " difference to me.", 1, 3

    .byte "@Sometimes, even", 1
    .byte " breathing becomes", 1
    .byte " too much.", 1, 0

sForgotten:
    .byte "@Why do you insist", 1
    .byte " on talking to me?", 1, 3

    .byte "@Are you a", 1
    .byte " forgotten", 1
    .byte " man, too?", 1, 0

sGarbage:
    .byte "@Don't give me that", 1
    .byte " garbage. Just", 1
    .byte " leave me alone.", 1, 0

sLeaveMe:
    .byte "@That's right.", 1
    .byte " That is right,", 1
    .byte " right?", 1, 3

    .byte "@Go ahead, ignore", 1
    .byte " me, like everyone", 1
    .byte " else.", 1, 0

sThatsRight:
    .byte "@That's right.", 1
    .byte " Thank you.", 1, 0

sTooMore:
    .byte "@Your load is too", 1
    .byte " great for more.", 1
    .byte " Why not come back?", 1, 0

sWeirdThings:
    .byte "@I heard about some", 1
    .byte " weird things over", 1
    .byte " in Podunk.", 1, 0

sCrazyStuff:
    .byte "@Heard a zombie was", 1
    .byte " kidnapped...", 1, 3

    .byte "@animals roamed the", 1
    .byte " city streets...", 1, 3

    .byte "@all kinds of crazy", 1
    .byte " stuff.", 1, 0

sBestDoctor:
    .byte "@Welcome to", 1
    .byte " Merrysville!!", 1, 3

    .byte "@Cheap, fast", 1
    .byte " and handsome.", 1, 3

    .byte "@The best doctor is", 1
    .byte " Old Sawbones", 1
    .byte " Benny.", 1, 3

    .byte "@Take advantage of", 1
    .byte " specially priced", 1
    .byte " treatments now!!", 1, 3

    .byte "@Whether dead or", 1
    .byte " alive, protect", 1
    .byte " your life.", 1, 0

sBill:
    .byte "@First show", 1
    .byte " me your money. Then", 1
    .byte " I'll treat you.", 1, 3

    .byte "@Well... ", 1
    .byte " In your case,", 1
    .byte " I'll have to bill", 1, 3

    .byte "@$"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " for", 1
    .byte " your treatment.", 1, 3

    .byte "@This special price", 1
    .byte " was set just for you.", 1, 0

sCured:
    .byte "@Thanks for the", 1
    .byte " $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte ".", 1, 3

    .byte "@You are now cured.", 1, 3

    .byte "@Go get hurt again", 1
    .byte " and come back", 1
    .byte " soon.  He-he-hee!", 1, 0

sDieOwn:
    .byte "@Fine, die all on", 1
    .byte " your own. I'll", 1
    .byte " phone a mortician.", 1, 0

sCurfew:
    .byte "@Until the curfew", 1
    .byte " is lifted, no one", 1
    .byte " can cross.", 1, 3

    .byte "@That is by order", 1
    .byte " of the Town Mayor.", 1, 3

    .byte "@Psst...", 1
    .byte " by the way kid,", 1, 3

    .byte "@they might let you", 1
    .byte " cross the bridge", 1
    .byte " northeast of The Zoo.", 1, 0

sSchool:
    .byte "@What happened to", 1
    .byte " school? You have", 1
    .byte " school, don't you?", 1, 0

sDuncansFactory:
    .byte "@I got this from", 1
    .byte " Duncan's factory", 1
    .byte " in the north.", 1, 0

sFactoryPass:
    .byte "@This factory is", 1
    .byte " Mr. Duncan's", 1
    .byte " private property.", 1, 3

    .byte "@Let's see your", 1
    .byte " Pass!", 1, 0

sPassExpired:
    .byte "@This Pass has", 1
    .byte " expired. You must", 1
    .byte " have stolen it!", 1, 3

    .byte "@Suspicious", 1
    .byte " creature.", 1, 3

    .byte "@Look me", 1
    .byte " in the eye!!", 1, 0

sAwfulCreature:
    .byte "@An awful creature", 1
    .byte " beat me up.", 1, 3

    .byte "@If you're going to", 1
    .byte " the station, watch", 1
    .byte " out!", 1, 0

sCurfewLifted:
    .byte "@I heard the curfew", 1
    .byte " in Podunk has been", 1
    .byte " lifted.", 1, 3

    .byte "@You know what that", 1
    .byte " means, don't you?", 1, 3

    .byte "@We can cross the", 1
    .byte " bridge once more!", 1, 0

sWeakling:
    .byte "@I was picking", 1
    .byte " on that weakling,", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte ".", 1, 3

    .byte "@But he got away.", 1, 0

sHeysWeakling:
    .byte "@Hey, "
    .byte $21
    .word $74F8
    .byte "!", 1
    .byte " You weakling!", 1, 0

sPickingWeakling:
    .byte "@We've been picking", 1
    .byte " on that weakling", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte ", right?", 1, 0

sJustTeasing:
    .byte "@Just teasing.", 1, 0

sStealExplosives:
    .byte "@I saw "
    .byte $21
    .word $74F8
    .byte 1
    .byte " steal explosives!!", 1, 3

    .byte "@I'm afraid of what", 1
    .byte " Mr. Teacher will", 1
    .byte " say.", 1, 0

sYourGlasses:
    .byte "@Your glasses have", 1
    .byte " slipped off your", 1
    .byte " nose.", 1, 0

sIAmSuzy:
    .byte "@I am Suzy. I'm", 1
    .byte " Miss Merrysville.", 1, 3

    .byte "@Aren't I gorgeous?", 1, 0

sYouLookCute:
    .byte "@You look cute too.", 1, 0

sYouAreUgly:
    .byte "@You are ugly!", 1
    .byte " You remind me of a", 1
    .byte " noodlenoggin!", 1, 0

sRoofLocked:
    .byte "@It's too bad that", 1
    .byte " the door to the", 1
    .byte " roof is locked.", 1, 3

    .byte " Maybe you'd like", 1
    .byte " to join me...", 1, 3

    .byte "@I was going to", 1
    .byte " sneak out and play", 1
    .byte " with my Game Boy.", 1, 0

sYouDontTalk:
    .byte "@You don't talk", 1
    .byte " very much, do you?", 1, 0



.segment "DIALOGS2"

sPushUps:
    .byte "@The gym teacher", 1
    .byte " made me do extra", 1
    .byte " push-ups again.", 1, 3

    .byte "@I'd rather do sit-", 1
    .byte " ups though.", 1, 0

sSchoolyard:
    .byte "@How can you get", 1
    .byte " lost in a", 1
    .byte " schoolyard?", 1, 3

    .byte "@I just can't", 1
    .byte " believe it.", 1, 0

sBeStudying:
    .byte "@Of course the door", 1
    .byte " to the roof is", 1
    .byte " locked!", 1, 3

    .byte "@We can't have", 1
    .byte " students sneaking", 1
    .byte " out to play games,", 1, 3

    .byte "@when they should", 1
    .byte " be studying, you", 1
    .byte " know!", 1, 0

sTerribleWife:
    .byte "@Then, when she", 1
    .byte " does get up,", 1
    .byte " she goes shopping.", 1, 3

    .byte "@Luckily, I hid the", 1
    .byte " credit cards from", 1
    .byte " that woman!", 1, 3

    .byte "@Don't you think", 1
    .byte " she's a terrible", 1
    .byte " wife.", 1, 0

sRealLife:
    .byte "@Kids don't know", 1
    .byte " the sorrows of", 1
    .byte " real life...", 1, 0

sScram:
    .byte "@How dare you talk", 1
    .byte " about my wife", 1
    .byte " like that, scram!", 1, 0

sSomeTea:
    .byte "@When she was", 1
    .byte " young, she was", 1
    .byte " very pretty,", 1, 3

    .byte "@come to think of it,", 1
    .byte " she's not that", 1
    .byte " bad after all.", 1, 3

    .byte "@Would you like some", 1
    .byte " tea?", 1, 0

sFollowMe:
    .byte "@You are a pretty", 1
    .byte " good kid.", 1, 3

    .byte "@You say you need", 1
    .byte " to go up to the", 1
    .byte " roof? Follow me.", 1, 0

sRespect:
    .byte "@When you're old", 1
    .byte " you'll wish that", 1
    .byte " young punks", 1, 3

    .byte "@would respect you!", 1, 0

sDangerous:
    .byte "@That's dangerous,", 1
    .byte " what are doing", 1
    .byte " with that thing?", 1, 3

    .byte "@I will keep this", 1
    .byte " for you.", 1, 0

sPleaseTea:
    .byte "@Please, please", 1
    .byte " have some tea.", 1, 0

sDontRun:
    .byte "@Don't run in", 1
    .byte " the hall!", 1, 0

sStranger:
    .byte "@Wait a minute, I", 1
    .byte " don't belive I've", 1
    .byte " seen you before.", 1, 3

    .byte "@You must not be", 1
    .byte " from around here,", 1
    .byte " are you?", 1, 0

sJustDontRun:
    .byte "@I see. Just don't", 1
    .byte " run in the hall.", 1, 0

sShowMe:
    .byte "@Show me what", 1
    .byte " you have.", 1, 3

    .byte "@You don't have", 1
    .byte " anything dangerous,", 1
    .byte " do you?", 1, 0

sWhoAreYou:
    .byte "@Who are you?!", 1
    .byte " I won't come out.", 1, 3

    .byte "@If I do, everyone", 1
    .byte " will pick on me.", 1, 0

sExplosives:
    .byte "@You want to be", 1
    .byte " my friend?", 1, 3

    .byte "@Don't tell anyone,", 1
    .byte " but I stole some", 1
    .byte " explosives.", 1, 0

sImComingOut:
    .byte "@I'm coming out", 1
    .byte " now.", 1, 0

sRocketsDream:
    .byte "@Hi, I am "
    .byte $21
    .word $74F8
    .byte ".", 1
    .byte " I wanted to fly", 1
    .byte " the Bottle Rockets", 1, 3

    .byte "@that the Sweet-", 1
    .byte " Little Factory", 1
    .byte " was producing.", 1, 0

sBeTired:
    .byte "@You must be tired.", 1
    .byte " Why don't you stay", 1
    .byte " here tonight?", 1, 0

sComeToLab:
    .byte "@Wow!  This Bottle", 1
    .byte " Rocket is sure to", 1
    .byte " cause a bang.", 1, 3

    .byte "@We may be able to", 1
    .byte " make some more on", 1
    .byte " our own.", 1, 3

    .byte "@Come with me", 1
    .byte " to the lab.", 1, 0

sFire:
    .byte "@("
    .byte $21
    .word $74F8
    .byte ") Aim on", 1
    .byte " the rock...", 1
    .byte " OK! 1-2-3 Fire!!", 1, 0

sStayHere:
    .byte "@("
    .byte $21
    .word $74F8
    .byte ") Now it is", 1
    .byte " the weakling's turn.", 1, 3

    .byte "@You stay here and", 1
    .byte " wait!", 1, 0

sInvention:
    .byte "@I'm the Mysterious", 1
    .byte " Teacher. Secretly", 1
    .byte " I live here.", 1, 3

    .byte "@I need money for", 1
    .byte " research. Care to", 1
    .byte " buy an invention?", 1, 0

sPriceList:
    .byte "@Well, please take", 1
    .byte " a look at the", 1
    .byte " price list.", 1, 0

sSomeMoney:
    .byte "@You must have some", 1
    .byte " money for candy,", 1
    .byte " or such, eh?", 1, 0

sNewInvention:
    .byte "@Please drop in", 1
    .byte " anytime,", 1, 3

    .byte "@I'm always working", 1
    .byte " on a new invention.", 1, 0

sOldList:
    .byte "@I haven't made any", 1
    .byte " progress since", 1
    .byte " your last visit.", 1, 3

    .byte "@Would you like to", 1
    .byte " look at the old", 1
    .byte " list?", 1, 0

sProtect:
    .byte "@I heard on the", 1
    .byte " radio that it's a", 1
    .byte " mess everywhere.", 1, 3

    .byte "@At all costs I", 1
    .byte " will protect this", 1
    .byte " station.", 1, 0

sBuyTicket:
    .byte "@Well, I don't know", 1
    .byte " how far the train", 1
    .byte " goes through,", 1, 3

    .byte "@but, you need", 1
    .byte " a ticket to ride.", 1
    .byte " Care to buy one?", 1, 0

sNoWeapon:
    .byte "@("
    .byte $21
    .word $670A
    .byte "'s weapon", 1
    .byte " was confiscated.)", 1, 0

sThenIts:
    .byte "@Then, it's", 1
    .byte " "
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte 1
    .byte " dollars.", 1, 0

sHatReward:
    .byte "@Hey, that Hat", 1
    .byte " you're carrying", 1
    .byte " looks just like", 1, 3

    .byte "@the one that", 1
    .byte " "
    .byte $21
    .word $74B8
    .byte " of Snowman", 1
    .byte " lost.", 1, 3

    .byte "@If you return it", 1
    .byte " to her, she just", 1
    .byte " may reward you.", 1, 0

sLongLife:
    .byte "@May you live a", 1
    .byte " long life.", 1, 0

sWithoutTrain:
    .byte "@I was on my way to", 1
    .byte " Youngtown to look", 1
    .byte " for my wife.", 1, 3

    .byte "@But, without the", 1
    .byte " train running, how", 1
    .byte " can I get there?", 1, 0

sFunGame:
    .byte "@Go ahead, poke", 1
    .byte " your nose into", 1
    .byte " other people's", 1, 3

    .byte "@business. It's", 1
    .byte " what makes playing", 1
    .byte " the game so fun.", 1, 0

sHereItIs:
    .byte "@Here it is!", 1, 0

sSlickMustache:
    .byte "@Did you see the", 1
    .byte " man with the slick", 1
    .byte " mustache?", 1, 0

sParkingViolations:
    .byte "@Must have lost", 1
    .byte " him. Couldn't help", 1
    .byte " it...", 1, 3

    .byte "@Anyhow, I must go", 1
    .byte " check for parking", 1
    .byte " violations now.", 1, 0

sSwindler:
    .byte "@He's a swindler!", 1
    .byte " Please let me know", 1
    .byte " if you see him.", 1, 0

sHoldMoney:
    .byte "@Hey Kid!", 1
    .byte " Just hold onto", 1
    .byte " this money for me.", 1, 3

    .byte "@Don't tell the", 1
    .byte " cops or anyone", 1
    .byte " about it!", 1, 0

sDontRunAway:
    .byte "@Don't run away", 1
    .byte " with it!", 1, 0

sJustDo:
    .byte "@Just do what I", 1
    .byte " tell you!", 1, 0

sIncognito:
    .byte "@Leave me alone!", 1
    .byte " Can't you see I'm", 1
    .byte " incognito?", 1, 0

sBigBelly:
    .byte "@Have you seen the", 1
    .byte " woman with a big", 1
    .byte " belly?", 1, 0

sSpeeders:
    .byte "@Must have lost", 1
    .byte " her. Couldn't", 1
    .byte " help it...", 1, 3

    .byte "@Anyway, I'm going", 1
    .byte " to check for", 1
    .byte " speeders instead.", 1, 0

sWithoutPaying:
    .byte "@She ate", 1
    .byte " 5 "
    .byte $21
    .word $7689
    .byte "s,", 1, 3

    .byte "@then ran away", 1
    .byte " without paying.", 1, 3

    .byte "@If you see her,", 1
    .byte " let me know!", 1, 0

sOhImSoFull:
    .byte "@Oh, I'm so full!!", 1, 0

sDangerousTown:
    .byte "@This town has", 1
    .byte " become dangerous!", 1, 3

    .byte "@But it's still a", 1
    .byte " much better place", 1
    .byte " than Ellay.", 1, 0

sAreYouReady:
    .byte "@Oh yeah?", 1
    .byte " Are you ready?", 1
    .byte " All-right!!", 1, 0

sMySong:
    .byte "@Hey!!", 1
    .byte " Wanna hear my", 1
    .byte " song!?", 1, 0

sFineBeThatWay:
    .byte "@Fine, be that way.", 1, 0

sItsTime:
    .byte "@It's time to say", 1
    .byte " good-bye...", 1, 0

sDragonsLullaby:
    .byte "@Did you hear the", 1
    .byte " Dragon's lullaby?", 1, 0

sGhostHouse:
    .byte "@Somewhere in the", 1
    .byte " town of", 1
    .byte " Spookane...", 1, 3

    .byte "@I heard that", 1
    .byte " there's a", 1, 3

    .byte "@gh...", 1, 3

    .byte "@gho..", 1, 3

    .byte "@ghost..", 1
    .byte " Ghost house!!", 1, 3

    .byte "@Don't you ever", 1
    .byte " dare to go there!!", 1, 0

sGiveMe:
    .byte "@Give me something.", 1
    .byte " Whatever it is,", 1
    .byte " just give it to me.", 1, 3

    .byte "@Gimme gimme.", 1, 3

    .byte "@Please, give me.", 1, 3

    .byte "@Why won't you give", 1
    .byte " it to me? I said", 1
    .byte " please?", 1, 0

sBarter:
    .byte "@I promise, I'll", 1
    .byte " give you something", 1
    .byte " in return.", 1, 0

sGiveYou:
    .byte "@I'm thinking of", 1
    .byte " something nice", 1
    .byte " to give you.", 1, 0

sGoingGiveMe:
    .byte "@What are you going", 1
    .byte " to give me?", 1, 0

sTakeFleaBag:
    .byte "@Thanks a lot.", 1
    .byte " To show my", 1
    .byte " gratitude I'll", 1, 3

    .byte "@give you this", 1
    .byte " Flea Bag.", 1
    .byte " Please take it.", 1, 0

sFlu:
    .byte "@There's a flu going", 1
    .byte " around here.", 1
    .byte " Cough, cough.", 1, 0

sHighMountains:
    .byte "@High in the", 1
    .byte " mountains, lives", 1
    .byte " an old man.", 1, 3

    .byte "@Legends say he", 1
    .byte " hasn't had a cold", 1
    .byte " in 300 years.", 1, 0

sMmhm:
    .byte "@Mmm, hmm meh heh,", 1
    .byte " hmm, heh mehah,", 1
    .byte " hmmm, heh hmmumm!", 1, 0

sCantUnderstand:
    .byte "@I can't understand", 1
    .byte " a word the old man", 1
    .byte " says either.", 1, 0

sGargle:
    .byte "@So nice to have my", 1
    .byte " Dentures back once", 1
    .byte " more. Your reward?", 1, 3

    .byte "@With you I'll", 1
    .byte " share my secret to", 1
    .byte " long, long, life.", 1, 3

    .byte "@Gargle often.", 1
    .byte " Gargle proud.", 1
    .byte " Gargle strong.", 1, 3

    .byte "@And if you catch a", 1
    .byte " cold, gargling", 1
    .byte " will help.", 1, 3

    .byte "@Here is a Mouth-", 1
    .byte " wash I concocted", 1
    .byte " myself. Take it!", 1, 0

sMouthwashBuy:
    .byte "@Mouthwash again?", 1
    .byte " Here it is.", 1
    .byte " Go ahead, take it.", 1, 3

    .byte "@But, I have to", 1
    .byte " charge you", 1
    .byte " $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " this time.", 1, 3

    .byte "@Gargle gargle", 1
    .byte " gargle... Splash!", 1, 0

sColdDied:
    .byte "@I heard someone", 1
    .byte " died from a cold.", 1
    .byte " Just a cold!", 1, 0

sSpookaneGhostHouse:
    .byte "@Have you heard", 1
    .byte " that there is", 1
    .byte " a ghost house", 1
    .byte " in Spookane?", 1, 0

sVacantHouse:
    .byte "@I heard a spooky", 1
    .byte " tale about that", 1
    .byte " vacant house...", 1, 3

    .byte "@they say that the", 1
    .byte " piano still plays", 1
    .byte " a haunting melody.", 1, 0

sDontKnow:
    .byte "@Hey kid, what you", 1
    .byte " don't know will", 1
    .byte " never hurt you!", 1, 0

sAhhHa:
    .byte "@Ahh - Ha ha ha...", 1, 0

sNobodysHere:
    .byte "@Nobody's here.", 1
    .byte " Hee hee hee...", 1, 0

sWorstNightmare:
    .byte "@This is your worst", 1
    .byte " nightmare. You", 1
    .byte " cannot get away!", 1, 3

    .byte "@Hee hee hee...", 1, 0

sTURNBACK:
    .byte "@T U R N  B A C K", 1, 0

sAagghh:
    .byte "@Aaagghhhhhhhhhh....", 1, 0

sYoullNeverMake:
    .byte "@You'll never make", 1
    .byte " it...", 1
    .byte " Hee hee hee hee.", 1, 0

sJustMouse:
    .byte "@I'm just an", 1
    .byte " ordinary mouse.", 1, 3

    .byte "@The room with", 1
    .byte " the piano...", 1
    .byte " Hee hee hee...", 1, 0

sOwners:
    .byte "@The owners of the", 1
    .byte " ghost house were the", 1
    .byte " Rosemarys.", 1, 0

sSmallRoom:
    .byte "@A ghost appeared", 1
    .byte " at my house too.", 1, 3

    .byte "@But, he didn't", 1
    .byte " stay long.", 1, 3

    .byte "@He thought my room", 1
    .byte " was too small.", 1, 0

sAssistant:
    .byte "@I'm not a resident", 1
    .byte " of this town. I", 1
    .byte " am your assistant.", 1, 3

    .byte "@Maybe you forgot", 1
    .byte " to write something", 1
    .byte " down?", 1, 3

    .byte "@I will sell you a", 1
    .byte " hint for only", 1
    .byte " "
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " dollars?", 1, 0

sColorMeGone:
    .byte "@Oh, you don't need", 1
    .byte " anyone's help, do", 1
    .byte " you?", 1, 3

    .byte "@Fine and dandy,", 1
    .byte " you can color me", 1
    .byte " gone.", 1, 0

sHints:
    .byte "@I can sell only 3", 1
    .byte " hints. Discover", 1
    .byte " the rest youself.", 1, 0

sClown:
    .byte "@I am the only", 1
    .byte " clown in", 1
    .byte " Spookane.", 1, 3

    .byte "@Everyone else is", 1
    .byte " so serious.", 1, 0

sNotJollyGuy:
    .byte "@Truth is, by", 1
    .byte " nature I'm not a", 1
    .byte " jolly guy.", 1, 0

sPessimist:
    .byte "@Is that right?", 1, 3

    .byte "@I may be the true", 1
    .byte " pessimist myself.", 1, 0

sLifeOutdoors:
    .byte "@My house is filled", 1
    .byte " with monsters,", 1
    .byte " mostly ghosts.", 1, 3

    .byte "@That's why we live", 1
    .byte " life in the great", 1
    .byte " outdoors now.", 1, 0

sYourRocket:
    .byte "@("
    .byte $21
    .word $74F8
    .byte ") Your", 1
    .byte " Bottle Rocket and", 1
    .byte " my...", 1, 3

    .byte "@great, isn't it...", 1
    .byte " Whaaaaat!?", 1, 0

sMotherShip:
    .byte "@Oh, the darkness", 1
    .byte " is so thick...", 1, 3

    .byte "@Can't see you very", 1
    .byte " well.. ", 1, 3

    .byte "@But could it", 1
    .byte " be?...", 1, 3

    .byte "@Is it the little", 1
    .byte " girl from Snowman?", 1, 3

    .byte "@"
    .byte $21
    .word $74B8
    .byte ", I believe", 1
    .byte " it was...", 1, 3

    .byte "@Brace yourself,", 1
    .byte " your mom is locked", 1
    .byte " in a room in back.", 1, 3

    .byte "@Do not try to", 1
    .byte " rescue us now.", 1, 3

    .byte "@First, the", 1
    .byte " Mother Ship must", 1
    .byte " be destroyed.", 1, 0

sOrbit:
    .byte "@Oops! It's gone", 1
    .byte " into orbit.", 1, 3

    .byte "@A success...", 1, 3

    .byte "@sort of.", 1, 0

sHouseKey:
    .byte "@Oh, you are such", 1
    .byte " a charming boy...", 1, 3

    .byte "@Just looking at", 1
    .byte " you makes me feel", 1
    .byte " so confident.", 1, 3

    .byte "@I'm sure you'll", 1
    .byte " bring that house", 1
    .byte " into control.", 1, 3

    .byte "@Here is the Key to", 1
    .byte " it.", 1, 0

sRosemary:
    .byte "@Hi there, my name", 1
    .byte " is "
    .byte $21
    .word $7478
    .byte ".", 1, 3

    .byte "@It used to be", 1
    .byte " Buggerror", 1
    .byte " Rosemary.", 1, 0

sMyBoy:
    .byte "@"
    .byte $21
    .word $7478
    .byte "!", 1
    .byte " Get your grubby", 1
    .byte " little...", 1, 3

    .byte "@No cutie, I was", 1
    .byte " talking to my boy.", 1, 0

sRenamed:
    .byte "@The ghosts aren't", 1
    .byte " gone yet, but...", 1, 3

    .byte "@what a brave boy", 1
    .byte " you are!", 1, 3

    .byte "@I've renamed my", 1
    .byte " son "
    .byte $21
    .word $7478
    .byte ",", 1
    .byte " after you.", 1, 0

sSnowmanTerminal:
    .byte "@This is Snowman", 1
    .byte " Terminal.", 1, 0

sDisappeared:
    .byte "@I heard everyone", 1
    .byte " in Youngtown has", 1
    .byte " disappeared.", 1, 0

sMomLeft:
    .byte "@Mom left for", 1
    .byte " Youngtown.", 1, 3

    .byte "@We haven't heard", 1
    .byte " from her for days", 1
    .byte " now.", 1, 3

    .byte "@Dad and I are", 1
    .byte " going there to", 1
    .byte " look for her.", 1, 0

sBeenGhostHouse:
    .byte "@Have you been to", 1
    .byte " the ghost house", 1
    .byte " in Spookane?", 1, 0

sHorrorStories:
    .byte "@Later you can tell", 1
    .byte " me the whole", 1
    .byte " story...", 1, 3

    .byte "@I love to listen", 1
    .byte " to horror stories.", 1, 0

sMustGo:
    .byte "@I don't want you to", 1
    .byte " go, but do so if you", 1
    .byte " must.", 1, 0

sDontCatchCold:
    .byte "@It's freezing here", 1
    .byte " in Snowman.", 1, 3

    .byte "@Don't catch your", 1
    .byte " death of cold.", 1, 3

    .byte "@Brush your teeth,", 1
    .byte " too.", 1, 3

    .byte "@Hack hack wheez...", 1, 0

sLifeIsGame:
    .byte "@Life is a game.", 1
    .byte " But sometimes you", 1
    .byte " have to rest.", 1, 0

sDontLate:
    .byte "@"
    .byte $21
    .word $74B8
    .byte " hasn't been", 1
    .byte " to school lately,", 1
    .byte " I'm so worried.", 1, 0

sConcerned:
    .byte "@I'm concerned", 1
    .byte " about "
    .byte $21
    .word $74B8
    .byte ".", 1, 3

    .byte "@I am so worried I", 1
    .byte " can't sleep.", 1, 0

sNotEnoughMoney:
    .byte "@You don't have", 1
    .byte " enough money.", 1, 0

sRunningNose:
    .byte "@Oh my, your nose", 1
    .byte " is running.", 1, 0

sPlayingPerson:
    .byte "@Excuse me, I need", 1
    .byte " to see the person", 1
    .byte " playing this game.", 1, 0

sTalkAbout:
    .byte "@I have some very", 1
    .byte " important things", 1
    .byte " to talk about.", 1, 0

sCooperation:
    .byte "@Hello there...", 1, 3

    .byte "@I appreciate your", 1
    .byte " kindness to", 1
    .byte " "
    .byte $21
    .word $7478
    .byte ".", 1, 3

    .byte "@I am the boy's", 1
    .byte " Dad...", 1, 3

    .byte "@Could you please", 1
    .byte " let me know your", 1
    .byte " name?", 1, 3

    .byte "@Thank you for your", 1
    .byte " cooperation.", 1, 0

sUrgentThings:
    .byte "@Thank you for", 1
    .byte " spending your time", 1
    .byte " with me.", 1, 3

    .byte "@I too have urgent", 1
    .byte " things to do, so", 1
    .byte " I'd better go now.", 1, 0

sAreYou:
    .byte "@Are you "
    .byte $21
    .word $670A
    .byte "?", 1, 0

sSilly:
    .byte "@Don't get silly on", 1
    .byte " me now.", 1, 0



.segment "DIALOGS3"

sMomSearch:
    .byte "@I must go on a", 1
    .byte " trip to find my Mom,", 1
    .byte " and...", 1, 3

    .byte "@I needed your", 1
    .byte " help...", 1, 3

    .byte "@So I've been", 1
    .byte " waiting for you,", 1
    .byte " "
    .byte $21
    .word $670A
    .byte ".", 1, 3

    .byte "@First let's go see", 1
    .byte " what is happening", 1
    .byte " in Youngtown.", 1, 0

sLikeDream:
    .byte "@You have appeared.", 1
    .byte " Just like in my", 1
    .byte " dream...", 1, 3

    .byte "@The boy in my", 1
    .byte " dream looked just", 1
    .byte " like you.", 1, 0

sStayWithMe:
    .byte "@"
    .byte $21
    .word $7478
    .byte "....", 1
    .byte " Please stay with", 1
    .byte " me.", 1, 0


sPleaseStay:
    .byte "@No!!", 1
    .byte " Stay with me,", 1
    .byte " Please!...", 1, 0

sDance:
    .byte "@Silence falls...", 1
    .byte " Would you like to", 1
    .byte " dance?", 1, 0

sIsntTime:
    .byte "@You're right.", 1
    .byte " Now isn't the time.", 1
    .byte " I wasn't thinking.", 1, 0

sDoYouLoveMe:
    .byte "@"
    .byte $21
    .word $7478
    .byte "?...", 1
    .byte " Do you love me?", 1, 0

sWhatsMatter:
    .byte "@What's the matter,", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte "?", 1, 0

sDragonSleeps:
    .byte "@The Dragon sleeps.", 1, 3

    .byte "@"
    .byte $21
    .word $670A
    .byte "'s Psychic", 1
    .byte " Power is short of", 1
    .byte " waking the Dragon.", 1, 0

sDragonAwoke:
    .byte "@Feeling "
    .byte $21
    .word $670A
    .byte "'s", 1
    .byte " presence, the", 1
    .byte " Dragon awoke.", 1, 3

    .byte "@You must defeat", 1
    .byte " me to earn my", 1
    .byte " musical note.", 1, 0

sMyDaughter:
    .byte "@My daughter,", 1
    .byte " "
    .byte $21
    .word $74B8
    .byte " has never", 1
    .byte " been a brave girl,", 1, 3

    .byte "@but, she is kind", 1
    .byte " of heart, and has", 1
    .byte " a secret strength.", 1, 0

sPeacefulSleep:
    .byte "@I know success", 1
    .byte " will be yours in", 1
    .byte " the end.", 1, 3

    .byte "@Surely, our pleas", 1
    .byte " will be heard in", 1
    .byte " the near future.", 1, 3

    .byte "@For now, just have", 1
    .byte " a peaceful sleep.", 1, 0

sPassFound:
    .byte "@"
    .byte $21
    .word $670A
    .byte " found a", 1
    .byte " Pass that someone", 1
    .byte " had left behind.", 1, 0

sClimbedRocket:
    .byte "@They climbed", 1
    .byte " into the rocket.", 1, 0

sMyGrandfather:
    .byte "@My grandfather", 1
    .byte " lives in Yucca", 1
    .byte " Desert.", 1, 3

    .byte "@If you see him,", 1
    .byte " please say hello", 1
    .byte " for me.", 1, 0

sPileBones:
    .byte "@I am just a pile", 1
    .byte " of bones now.", 1, 3

    .byte "@I used to be a", 1
    .byte " nice guy before.", 1, 3

    .byte "@So, don't worry, I", 1
    .byte " won't attack you.", 1, 0

sSignpost:
    .byte "@I could make a", 1
    .byte " good signpost,", 1
    .byte " don't you think?", 1, 0

sCorpse:
    .byte "@Conversing with a", 1
    .byte " corpse? What a", 1
    .byte " brave kid!", 1, 0

sCamelBones:
    .byte "@I'm the bones of a", 1
    .byte " camel.", 1, 3

    .byte "@Want to know how to", 1
    .byte " walk when in the", 1
    .byte " desert?", 1, 0

sMoveFoot:
    .byte "@Move your left", 1
    .byte " foot before your", 1
    .byte " right foot sinks.", 1, 3

    .byte "@Move your right", 1
    .byte " foot before your", 1
    .byte " left foot sinks.", 1, 3

    .byte "@It took me 100", 1
    .byte " years to figure", 1
    .byte " that out.", 1, 0

sLikeTell:
    .byte "@I'd very much like", 1
    .byte " to tell you.", 1, 3

    .byte "@Wouldn't you like", 1
    .byte " to know?", 1, 0

sDesert:
    .byte "@Yucca Desert is", 1
    .byte " the most boring", 1
    .byte " part of this game.", 1, 3

    .byte "@But, stay on your", 1
    .byte " toes, this desert", 1
    .byte " has been mined.", 1, 0

sCharterFlights:
    .byte "@See the Yucca", 1
    .byte " Desert.", 1, 3

    .byte "@Charter flights", 1
    .byte " available by", 1
    .byte " arrangement.", 1, 0

sMines:
    .byte "@During the last", 1
    .byte " war, I laid mines", 1
    .byte " in this desert.", 1, 3

    .byte "@I removed all but", 1
    .byte " one of them, so", 1
    .byte " watch your step.", 1, 0

sRidePlane:
    .byte "@Oh, you want a", 1
    .byte " ride on the plane?", 1, 0

sBuyFlight:
    .byte "@The airfare is", 1
    .byte " $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " for that", 1
    .byte " flight.", 1, 3

    .byte "@Save your Ticket", 1
    .byte " Stubs.", 1, 3

    .byte "@After you get 10", 1
    .byte " stubs, you can", 1
    .byte " take the tank.", 1, 3

    .byte "@You look so happy", 1
    .byte " about that.", 1
    .byte " Ha ha ha...", 1, 0

sExpensive:
    .byte "@Well, it is quite", 1
    .byte " expensive...", 1
    .byte " I don't blame you.", 1, 0

sStubs:
    .byte "@Great! I see you", 1
    .byte " saved 10 stubs.", 1
    .byte " Take my tank.", 1, 3

    .byte "@You sure look", 1
    .byte " happy.", 1
    .byte " Ha ha ha...", 1, 0

sBrokeTank:
    .byte "@You broke my tank,", 1
    .byte " it was my most", 1
    .byte " prized possession.", 1, 3

    .byte "@Now you'll have to", 1
    .byte " pay $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " for the", 1
    .byte " repairs.", 1, 3

    .byte "@Will you make", 1
    .byte " restitution right", 1
    .byte " now?", 1, 0

sThankYou:
    .byte "@Thank you,", 1
    .byte " and good-bye.", 1, 0

sAngry:
    .byte "@I am so angry.", 1
    .byte " Arrrrrrrrr!!", 1, 0

sParents:
    .byte "@Where is my Mommy?", 1
    .byte " Where is my Daddy?", 1, 0

sHalt:
    .byte "@Halt, who goes", 1
    .byte " there?", 1, 0

sSuspiciousGuys:
    .byte "@Suspicious guys.", 1
    .byte " I will stop you.", 1
    .byte " Arrghh!", 1, 0

sSomething:
    .byte "@Something's very", 1
    .byte " strange with the", 1
    .byte " Garrickson baby.", 1, 3

    .byte "@Something very", 1
    .byte " strange indeed.", 1, 0

sStudy:
    .byte "@Well...", 1
    .byte " 2 plus 3 equals 5,", 1
    .byte " 8 minus 4 equals 4.", 1, 3

    .byte "@I study", 1
    .byte " all the time.", 1, 0

sMom:
    .byte "@Mom!!", 1
    .byte " I miss you!!!", 1, 0

sDad:
    .byte "@Dad!!", 1
    .byte " I miss you!!!", 1, 0

sBigShip:
    .byte "@A big ship from", 1
    .byte " the sky took Mom", 1
    .byte " and Dad away.", 1, 0

sWithoutAdult:
    .byte "@I like it without", 1
    .byte " the grown-ups", 1
    .byte " around.", 1, 3

    .byte " Sure I do.", 1
    .byte " Sob, sob...", 1, 0

sPleaseHoldMe:
    .byte "@Please hold me!", 1, 0

sHoldMeToo:
    .byte "@Hold me, too!", 1, 0

sHoldMe:
    .byte "@Hold me!", 1, 0

sBegYou:
    .byte "@Please bring back", 1
    .byte " our Mom and Dad.", 1
    .byte " Please, I beg you.", 1, 0

sMyName:
    .byte "@Oh, yes.  My name", 1
    .byte " is Tom Garrickson.", 1, 3

    .byte "@I like to", 1
    .byte " introduce myself.", 1
    .byte " It's my hobby.", 1, 0

sMysticPower:
    .byte "@Mom told me this", 1
    .byte " baby has mystic", 1
    .byte " power.", 1, 0

sGoogaa:
    .byte "@Goo gaa...", 1, 0

sTeleportation:
    .byte "@Yes, even though", 1
    .byte " my body is that of", 1
    .byte " a baby,", 1, 3

    .byte "@like you, I", 1
    .byte " possess psychic", 1
    .byte " abilities.", 1, 3

    .byte "@I know the power", 1
    .byte " of Teleportation.", 1, 3

    .byte "@Use this power to", 1
    .byte " return to a place", 1
    .byte " you've been to.", 1, 3

    .byte "@(The baby taught", 1
    .byte " them his power of", 1
    .byte " Teleportation)", 1, 0

sFromMountains:
    .byte "@I heard my Dad's", 1
    .byte " voice coming from", 1
    .byte " the mountains.", 1, 3

    .byte "@But the mountains", 1
    .byte " are beyond the", 1
    .byte " town of Ellay.", 1, 3

    .byte "@It's so far away", 1
    .byte " I can't make that", 1
    .byte " journey.", 1, 0

sCantCarry:
    .byte "@Wait a minute...", 1
    .byte " You can't carry it,", 1
    .byte " so you can't have it.", 1, 0

sWiser:
    .byte "@Time has passed,", 1
    .byte " you are more", 1
    .byte " experienced and", 1, 3

    .byte "@hopefully a little", 1
    .byte " wiser, but you are", 1
    .byte " still just a kid.", 1, 0

sWatchOutAround:
    .byte "@You must watch out", 1
    .byte " around here.", 1
    .byte " Hee....", 1, 0

sTheBBGang:
    .byte "@The B.B. Gang", 1
    .byte " members are really", 1
    .byte " terrible...", 1, 0

sBlaBla:
    .byte "@We call Bla-Bla", 1
    .byte " Gang members, B.B.", 1
    .byte " Gangs for short.", 1, 0

sNotBlaBla:
    .byte "@Hey you! You are", 1
    .byte " not a Bla-Bla, are", 1
    .byte " you?", 1, 0

sBlackClouds:
    .byte "@The black clouds", 1
    .byte " that hang over", 1
    .byte " the mountains...", 1, 3

    .byte "@They're making", 1
    .byte " all the towns-", 1
    .byte " people crazy.", 1, 0

sHeyYouTwo:
    .byte "@Hey, you two there.", 1
    .byte " Sweethearts, huh!?", 1, 0

sLoveAndPeace:
    .byte "@Love and peace,", 1
    .byte " yeah!", 1, 0

sLoveBurn:
    .byte "@Love burns deep in", 1
    .byte " your heart, right?", 1, 0

sLiveShowTicket:
    .byte "@I've got a Ticket", 1
    .byte " to the Live-Show.", 1, 3

    .byte "@You know the Store", 1
    .byte " is all sold out.", 1, 3

    .byte "@But I could part", 1
    .byte " with this one for", 1
    .byte " only $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte "?", 1, 0

sDontGoStore:
    .byte "@Here it is! No,", 1
    .byte " don't go to the", 1
    .byte " Store now.", 1, 0

sStingyKids:
    .byte "@Stingy kids...", 1, 0

sSecret:
    .byte "@It's a secret...", 1
    .byte " Promise not to say", 1
    .byte " that I told you?", 1, 0

sBlaBlaBoss:
    .byte "@The Bla-Bla Boss,", 1
    .byte " "
    .byte $21
    .word $7538
    .byte "'s real name", 1
    .byte " is...", 1, 3

    .byte " "
    .byte $21
    .word $7538
    .byte " Junior, the", 1
    .byte " 3rd.", 1
    .byte " Ha.", 1, 3

    .byte "@But, it's only a", 1
    .byte " rumor, though.", 1, 0

sRegrets:
    .byte "@You'll be the one", 1
    .byte " who regrets it for", 1
    .byte " sure.", 1, 0

sBackRoom:
    .byte "@Don't peek in the", 1
    .byte " back room. You'll", 1
    .byte " catch it for sure.", 1, 0

sDrink:
    .byte "@Wow, you're so", 1
    .byte " cute. Can I buy", 1
    .byte " you a drink?", 1, 0

sCops:
    .byte "@You afraid of the", 1
    .byte " cops?", 1
    .byte " Come on!", 1, 0

sNoDrinks:
    .byte "@No more drinks on my", 1
    .byte " bill.", 1, 0

sBadThing:
    .byte "@Now you know you", 1
    .byte " did a bad thing?", 1, 0

sGoHome:
    .byte "@If you promise you", 1
    .byte " won't do it again,", 1
    .byte " you can go home.", 1, 3

    .byte "@You leave that", 1
    .byte " dangerous weapon", 1
    .byte " here though.", 1, 0

sAnotherNight:
    .byte "@Sorry, you must", 1
    .byte " stay another night", 1
    .byte " and cool your jets.", 1, 0

sBuy:
    .byte "@Hee hee hee...", 1
    .byte " I finally got a", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte "!", 1, 3

    .byte "@Wanna buy it for", 1
    .byte " only $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte "?", 1, 0

sNoMoney:
    .byte "@Not enough money.", 1
    .byte " Boo hoo hoo.", 1
    .byte " Ha, ha, ha...", 1, 0

sParentsKilled:
    .byte "@"
    .byte $21
    .word $7538
    .byte "'s parents", 1
    .byte " were killed by", 1
    .byte " mountain creatures.", 1, 3

    .byte "@Before that, he", 1
    .byte " was a gentle kid.", 1, 0

sHeWas:
    .byte "@I wish "
    .byte $21
    .word $7538
    .byte 1
    .byte " would go back to", 1
    .byte " the way he was.", 1, 0

sWantSing:
    .byte "@You want to sing", 1
    .byte " too?", 1, 0

sThenGoAhead:
    .byte "@Then go ahead", 1
    .byte " and jam, dudes!", 1, 0

sYoureShy:
    .byte "@You're shy!", 1, 0

sSawName:
    .byte "@"
    .byte $21
    .word $74B8
    .byte " girl!!", 1
    .byte " Well, I saw your", 1
    .byte " name on your hat.", 1, 0

sCuteGirl:
    .byte "@The girl was so", 1
    .byte " cute.", 1, 0

sNiceSong:
    .byte "@Thank you for", 1
    .byte " your nice song.", 1, 3

    .byte "@By the way, you", 1
    .byte " guys beat up on my", 1
    .byte " friends.", 1, 0

sIllSmashYou:
    .byte "@I'll smash you!", 1, 0

sIKnowYouDidIt:
    .byte "@I know you did it!", 1, 0

sVengeance:
    .byte "@Aha ha ha... ", 1
    .byte " You are quite a", 1
    .byte " guy.", 1, 3

    .byte "@Your name is", 1
    .byte " "
    .byte $21
    .word $7478
    .byte "?", 1, 3

    .byte "@Let's call it a", 1
    .byte " draw then...", 1
    .byte " Umm...", 1, 3

    .byte "@I seek vengeance", 1
    .byte " for my parents. To", 1
    .byte " the mountains!!", 1, 0

sAcceptHelp:
    .byte "@"
    .byte $21
    .word $7478
    .byte ", please", 1
    .byte " accept my help.", 1, 0

sUsedPhoneCard:
    .byte "@"
    .byte $21
    .word $670A
    .byte " USEd the", 1
    .byte " Telephone Card.", 1, 0

sGoodTeam:
    .byte "@I'm sure we'll", 1
    .byte " make a good team.", 1
    .byte " Let's get going!", 1, 0

sGreatHelp:
    .byte "@Please...", 1
    .byte " I'll be a great", 1
    .byte " help to you.", 1, 0

sPushA:
    .byte "@Hello...", 1
    .byte " It's Dad.", 1, 3

    .byte "@I really don't", 1
    .byte " want to butt in", 1
    .byte " now, but...", 1, 3

    .byte "@What are you", 1
    .byte " waiting for!??", 1, 3

    .byte "@Push the 'A'", 1
    .byte " button at once!", 1, 0

sBorrowGoods:
    .byte "@You there,", 1
    .byte " the one with the", 1
    .byte " glasses...", 1, 3

    .byte "@You're not so good", 1
    .byte " at fighting, are", 1
    .byte " you?", 1, 3

    .byte "@Rest here while I", 1
    .byte " borrow your Goods.", 1
    .byte " OK?", 1, 0

sBeatThem:
    .byte "@Brute strength is", 1
    .byte " not enough to beat", 1
    .byte " them.", 1, 3

    .byte "@I know now that", 1
    .byte " peace can be", 1
    .byte " brought back to us.", 1, 3

    .byte "@I believe.", 1, 0

sHurryUp:
    .byte "@("
    .byte $21
    .word $7538
    .byte ")", 1
    .byte " Why are you two", 1
    .byte " blushing?", 1, 3

    .byte "@Let's hurry up", 1
    .byte " and get out of", 1
    .byte " here!", 1, 0

sDressingRoom:
    .byte "@This is my dressing", 1
    .byte " room, please get", 1
    .byte " out!!", 1, 0

sToldName:
    .byte "@I am "
    .byte $21
    .word $74F8
    .byte "'s", 1
    .byte " father.", 1, 3

    .byte "@I think "
    .byte $21
    .word $7478
    .byte "'s", 1
    .byte " Dad asked,", 1, 3

    .byte "@but you told him", 1
    .byte " your name?", 1, 0

sLookAfter:
    .byte "@OK, that's fine.", 1, 3

    .byte "@Please look after", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte ". He is a", 1
    .byte " real weakling...", 1, 0

sRegister:
    .byte "@Let me register", 1
    .byte " your name once", 1
    .byte " more.", 1, 0

sHarbor:
    .byte "@To the Harbor", 1
    .byte " before Mt. Itoi.", 1, 3

    .byte "@I mean it.", 1, 0

sStrawBerry:
    .byte "@Have you ever", 1
    .byte " tasted StrawBerry", 1
    .byte " Tofu?", 1, 0

sBuyForMe:
    .byte "@If you find some,", 1
    .byte " buy some for me,", 1
    .byte " please.", 1, 3

    .byte "@I'll trade", 1
    .byte " something nice", 1
    .byte " in return.", 1, 0

sNoWayToBuy:
    .byte "@No way to buy", 1
    .byte " things like that", 1
    .byte " in this place.", 1, 0

sStrawBerryTofu:
    .byte "@Oh!  This is", 1
    .byte " StrawBerry Tofu!", 1
    .byte " Thank you!", 1, 3

    .byte "@Here's something", 1
    .byte " nice for you in", 1
    .byte " return.", 1, 0

sGetHurt:
    .byte "@You ever get hurt,", 1
    .byte " come to my place.", 1, 3

    .byte "@I have food,", 1
    .byte " medicine, and a", 1
    .byte " bed you can use.", 1, 0

sFightTime:
    .byte "@Hey! "
    .byte $21
    .word $74F8
    .byte "!...", 1, 3

    .byte "@Now is the time", 1
    .byte " you must fight", 1
    .byte " for yourself.", 1, 0

sComeOn:
    .byte "@Come on, children,", 1
    .byte " what do you need?", 1, 0

sEVE:
    .byte "@MY NAME IS EVE.", 1, 3

    .byte " I HAVE BEEN", 1, 3

    .byte " WAITING FOR YOU.", 1, 3

    .byte "@MY CREATOR WAS", 1, 3

    .byte " GEORGE...", 1, 3

    .byte "@HE WAS TAKEN TO", 1, 3

    .byte " THE END OF THE", 1, 3

    .byte " UNIVERSE...", 1, 3

    .byte "@THEN BROUGHT BACK", 1, 3

    .byte " LATER.", 1, 3

    .byte "@I AM HERE TO", 1, 3

    .byte " PROTECT YOU.", 1, 3

    .byte "@THAT IS MY PURPOSE.", 1, 0

sHeavyBags:
    .byte "@Those bags must", 1
    .byte " weigh heavy on", 1
    .byte " your shoulders.", 1, 0

sWorn:
    .byte "@"
    .byte $21
    .word $7478
    .byte "! "
    .byte $21
    .word $7478
    .byte "!..", 1, 3

    .byte "@You seem to be worn", 1
    .byte " out from fighting.", 1
    .byte " One more time?", 1, 0

sFighting:
    .byte "@With his strength", 1
    .byte " regained...", 1, 3

    .byte "@"
    .byte $21
    .word $7478
    .byte " returned", 1
    .byte " once more to the", 1
    .byte " fighting scene.", 1, 3

    .byte "@Do your best,", 1
    .byte " "
    .byte $21
    .word $7478
    .byte "!", 1, 0

sRealized:
    .byte "@"
    .byte $21
    .word $7478
    .byte " realized", 1
    .byte " that it had only", 1
    .byte " been a bad dream.", 1, 3

    .byte "@Do your best,", 1
    .byte " "
    .byte $21
    .word $7478
    .byte "!", 1, 0

sToWhom:
    .byte "@To whom?", 1, 0

sTooHeavy:
    .byte "@Your load is too", 1
    .byte " heavy. Hand it to", 1
    .byte " someone else?", 1, 0

sRestGoods:
    .byte "@Please come again", 1
    .byte " to pick up the", 1
    .byte " rest of the Goods.", 1, 0

sCantGiveGoods:
    .byte "@Are you "
    .byte $21
    .word $7478
    .byte "'s", 1
    .byte " friend?", 1, 3

    .byte "@I see...", 1
    .byte " But I can't give", 1
    .byte " you "
    .byte $21
    .word $7478
    .byte "'s Goods.", 1, 0

sWeaklingAway:
    .byte "@Did that weakling", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte " run away", 1
    .byte " from you?", 1, 0

sWelcomePodunk:
    .byte "@  Welcome to", 1
    .byte "     Podunk", 1, 0

sCityZoo:
    .byte "@     City Zoo", 1
    .byte "  Superintendent's", 1
    .byte "       Office", 1, 0

sOceanView:
    .byte "@    Ocean View", 1
    .byte "  Tourists Welcome", 1, 0

sNoOneHere:
    .byte "@There is no one", 1
    .byte " here by that", 1
    .byte " description, but...", 1, 0

sPlaced:
    .byte "@When placed in the", 1
    .byte " fountain,", 1, 3

    .byte "@the Red Weed became", 1
    .byte " Magic Herb.", 1, 0

sSuchMan:
    .byte "@Where do you think", 1
    .byte " you can find such", 1
    .byte " a man!", 1, 0

sBigHelp:
    .byte "@This is "
    .byte $21
    .word $6D04
    .byte ",", 1
    .byte " right? Thank you.", 1
    .byte " It's a big help.", 1, 0

sTriangle:
    .byte "@Now entering the", 1
    .byte " Mislay Triangle.", 1
    .byte " Watch out!", 1, 0

sLostDentures:
    .byte "@Someone lost his", 1
    .byte " Dentures right", 1
    .byte " under the sign!", 1, 0

sBadFeel:
    .byte "@I see...", 1
    .byte " You don't feel so", 1
    .byte " well. Wait...", 1, 0

sPleaseComeToLab:
    .byte "@Please come to", 1
    .byte " my lab.", 1, 0



.segment "DIALOGS4"

sPhenomenStopped:
    .byte "@The phenomenon has", 1
    .byte " stopped.", 1
    .byte " For the moment...", 1, 0

sSwitch:
    .byte "@Here, let me show", 1
    .byte " you how. Just take", 1
    .byte " this switch and...", 1, 3

    .byte "@Oh no!", 1
    .byte " I pushed it by", 1
    .byte " mistake!", 1, 0

sIllCook:
    .byte "@I'll cook", 1
    .byte " "
    .byte $21
    .word $7689
    .byte ".", 1, 3

    .byte "@Eat your dinner,", 1
    .byte " and rest for the", 1
    .byte " night.", 1, 0

sPippiGone:
    .byte "@Oh, what can I do?", 1
    .byte " What should I do?", 1, 3

    .byte "@Where can I go?", 1
    .byte " Who can I see?", 1, 3

    .byte "@What should I do?", 1
    .byte " What should I do?", 1, 3

    .byte "@My little Pippi is", 1
    .byte " gone.", 1, 3

    .byte "@If you're going to", 1
    .byte " Podunk...", 1, 3

    .byte "@Please tell the", 1
    .byte " Mayor.", 1, 3

    .byte "@Oh me, oh my!", 1, 0

sWhichOne:
    .byte "@Which one?", 1, 0

sIllGiveYou:
    .byte "@I'll give you", 1
    .byte " $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " for", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte ".", 1, 3

    .byte "@Is that alright?", 1, 0

sCosmosShip:
    .byte "@Finding the entry", 1
    .byte " in Great-Grand", 1
    .byte " Father's Diary,", 1, 3

    .byte "@"
    .byte $21
    .word $670A
    .byte " read out", 1
    .byte " loud...", 1, 3

    .byte "@The forgotten one", 1
    .byte " of the ship that", 1
    .byte " sails the cosmos.", 1, 0

sLying:
    .byte "@I know you're", 1
    .byte " lying. I can see", 1
    .byte " right through you.", 1, 0

sTrio:
    .byte "@(A dull roar begins", 1
    .byte " to rise from the", 1
    .byte " crowd)", 1, 3

    .byte "@We paid to see a", 1
    .byte " trio!", 1
    .byte " There aren't three", 1, 3

    .byte "@performers here!", 1
    .byte " Grumble grumble...", 1, 0

sWhichKeep:
    .byte "@Which one would", 1
    .byte " you like me to", 1
    .byte " keep?", 1, 0

sDragonDeepSleep:
    .byte "@The Dragon was in", 1
    .byte " a deep, deep,", 1
    .byte " sleep.", 1, 0

sWhatCanIDo:
    .byte "@What can I do", 1
    .byte " for you?", 1, 0

sKeep:
    .byte "@Yes, I will keep", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte " with", 1
    .byte " utmost care.", 1, 3

    .byte "@Anything else you", 1
    .byte " want me to keep?", 1, 0

sBrotherTakeCare:
    .byte "@See you later, and", 1
    .byte " brother...", 1
    .byte " You take care!", 1, 0

sTakeWithYou:
    .byte "@You want to take", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte "?", 1, 3

    .byte "@OK! Anything else", 1
    .byte " you'd like to take", 1
    .byte " with you?", 1, 0

sRockSlide:
    .byte "@There was a rock-", 1
    .byte " slide near Union", 1
    .byte " Station.", 1, 3

    .byte "@The train can't get", 1
    .byte " through until it", 1
    .byte " has been removed.", 1, 0

sYouMean:
    .byte "@You mean", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte "?", 1, 0

sCantCarryMore:
    .byte "@I am afraid you", 1
    .byte " can't carry", 1
    .byte " anything more.", 1, 0

sSeemLessMoney:
    .byte "@Oh?  You don't", 1
    .byte " seem to have", 1
    .byte " enough money.", 1, 0

sTooMuchCarry:
    .byte "@Oh?  You seem to", 1
    .byte " have too much to", 1
    .byte " carry.", 1, 0

sNeedMoreMoney:
    .byte "@You don't have", 1
    .byte " enough money. Come", 1
    .byte " back when you do.", 1, 0

sBeCareful:
    .byte "@Good bye!", 1
    .byte " Be careful.", 1, 0

sAnythingMore:
    .byte "@You can't carry", 1
    .byte " anything more. ", 1
    .byte " See you later...", 1, 0

sMedicine:
    .byte "@Here is your", 1
    .byte " medicine.", 1, 0

sHopeSleepWell:
    .byte "@Hope you sleep", 1
    .byte " well.", 1, 0

sHowMuchWithdraw:
    .byte "@How much would you", 1
    .byte " like to withdraw?", 1, 0

sDeposit:
    .byte "@How much would you", 1
    .byte " like to deposit?", 1, 0

sGoBack:
    .byte "@Now, let's go back", 1
    .byte " to town.", 1, 0

sCantCarryAll:
    .byte "@Sorry, but I am", 1
    .byte " afraid you can't", 1
    .byte " carry all of them.", 1, 0

sShame:
    .byte "@You can't carry it?", 1
    .byte " What a shame!", 1, 0

sOtherTime:
    .byte "@If you can't carry", 1
    .byte " it, come back some", 1
    .byte " other time.", 1, 0

sWhichFlightplan:
    .byte "@Which flightplan", 1
    .byte " would you like?", 1, 0

sWithoutDentures:
    .byte "@I can't talk very", 1
    .byte " well without my", 1
    .byte " Dentures.", 1, 0

sNotEnough:
    .byte "@No, that's not", 1
    .byte " quite enough.", 1, 0

sToughTime:
    .byte "@Having a tough", 1
    .byte " time?", 1
    .byte " I'm so worried.", 1, 0

sWish:
    .byte "@Good luck!", 1, 0

sTeach:
    .byte "@Who's the boss?", 1
    .byte " I'll teach him", 1
    .byte " a lesson!", 1, 0

sJustFine:
    .byte "@The Bla-Bla Gang", 1
    .byte " members are doing", 1
    .byte " just fine.", 1, 0

sMakeMad:
    .byte "@Don't try to make", 1
    .byte " me mad.", 1, 0

sPickedUpPass:
    .byte "@"
    .byte $21
    .word $670A
    .byte " picked up", 1
    .byte " the Pass.", 1, 0

sHmm:
    .byte "@Hmm...", 1
    .byte " You don't have", 1
    .byte " enough money.", 1, 0

sLoadTooHeavy:
    .byte "@Let's see... ", 1
    .byte " It seems that your", 1
    .byte " load is too heavy.", 1, 0

sTaste:
    .byte "@I am Able, the ", 1
    .byte " Doctor's assistant.", 1, 3

    .byte "@I too would like", 1
    .byte " to taste", 1
    .byte " StrawBerry Tofu.", 1, 0

sFantasticRobot:
    .byte "@Thank you, It", 1
    .byte " looks so good!", 1, 3

    .byte "@I'll share some", 1
    .byte " important", 1
    .byte " information.", 1, 3

    .byte "@Near the summit of", 1
    .byte " Mount Itoi...", 1, 3

    .byte "@Deep in the lake,", 1
    .byte " there lies a", 1
    .byte " fantastic robot.", 1, 3

    .byte "@I think it still", 1
    .byte " works.", 1, 0

sBakerTaste:
    .byte "@I look just like", 1
    .byte " Able, but I am", 1
    .byte " Baker.", 1, 3

    .byte "@I also want to try", 1
    .byte " StrawBerry Tofu.", 1, 0

sTakeWords:
    .byte "@Oh! I'm so happy.", 1
    .byte " Take these Swear", 1
    .byte " Words with you.", 1, 0

sLifeUpSleep:
    .byte "  LifeUp   Sleep", 0

sLoadHeavy:
    .byte "@Load is too heavy?", 1
    .byte " Remember to come", 1
    .byte " back and get it.", 1, 0

sGetGift:
    .byte "@You came to get", 1
    .byte " the Big Bag?", 1
    .byte " My gift to you.", 1, 0

sGiveGift:
    .byte "@I give you the", 1
    .byte " Big Bag.", 1
    .byte " A gift for you.", 1, 0

sHorrible:
    .byte "@It's not that big", 1
    .byte " of a problem.", 1, 3

    .byte "@My wife is a", 1
    .byte " bigger problem.", 1, 3

    .byte "@She doesn't get", 1
    .byte " out of bed", 1, 3

    .byte "@until after noon", 1
    .byte " each day.", 1, 3

    .byte "@She won't even", 1
    .byte " pack me a brown", 1
    .byte " bag lunch!", 1, 3

    .byte "@Isn't that just", 1
    .byte " horrible.", 1, 0

sFainted:
    .byte "@Oh! no!", 1
    .byte " "
    .byte $21
    .word $74B8
    .byte " has fainted!", 1, 0

sGratitude:
    .byte "@Thank you for being", 1
    .byte " so nice. ", 1
    .byte " My gratitude...", 1, 3

    .byte "@I'll be wagering on", 1
    .byte " your success.", 1, 0

sIAmLaura:
    .byte "@I am Laura.", 1, 0

sStopAndRest:
    .byte "@What a surprise!", 1
    .byte " Our hero "
    .byte $21
    .word $7478
    .byte 1
    .byte " returning alone!", 1, 3

    .byte "@Won't you stop and", 1
    .byte " rest for a while?", 1, 0

sNoForGirl:
    .byte "@Little girl! This", 1
    .byte " is no place for a", 1
    .byte " child like you.", 1, 0

sHello:
    .byte "@Hello, "
    .byte $21
    .word $670A
    .byte "!", 1
    .byte " How are you doing?", 1, 0

sGoodMorning:
    .byte "@Good morning!", 1
    .byte " Did you have a", 1
    .byte " good night's rest?", 1, 0

sComeAgain:
    .byte "@Please come again.", 1
    .byte " Promise me you'll", 1
    .byte " come again!", 1, 0

sMorning:
    .byte "@Good morning!", 1, 0

sMonkeys:
    .byte "@Most monkeys here", 1
    .byte " will lie to you.", 1
    .byte " Beware!", 1, 0

sLikeMonkey:
    .byte "@Huh what?", 1
    .byte " Do I look like a", 1
    .byte " monkey?", 1, 0

sRaccoon:
    .byte "@...I'm really a", 1
    .byte " raccoon pretending", 1
    .byte " to be a monkey.", 1, 0

sEyesight:
    .byte "@You have good", 1
    .byte " eyesight.", 1
    .byte " Hats off to you...", 1, 0

sCoolDown:
    .byte "@Cool down dude...", 1
    .byte " Are you so serious", 1
    .byte " all the time?", 1, 0

sTakeRest:
    .byte "@Well man...", 1
    .byte " It's like you don't", 1
    .byte " know when to quit.", 1, 3

    .byte "@Take a rest bud...", 1, 0

sJustGame:
    .byte "@Good to hear it.", 1
    .byte " It's just a game!", 1, 0

sCaughtMe:
    .byte "@You caught up with", 1
    .byte " me. I'll admit", 1
    .byte " that's something.", 1, 3

    .byte "@Here I'll give you", 1
    .byte " something nice.", 1, 0

sDirection:
    .byte "@Turn right, then", 1
    .byte " left, to find", 1
    .byte " something nice.", 1, 0

sQuietHere:
    .byte "@It's so quiet here,", 1
    .byte " but too quiet for", 1
    .byte " me, I think.", 1, 0

sWalkStraight:
    .byte "@Just walk straight!", 1
    .byte " Find truth at the", 1
    .byte " end of the path.", 1, 0

sLady:
    .byte "@I am a lady...", 1
    .byte " Don't talk to me", 1
    .byte " so casually.", 1, 0

sMan:
    .byte "@The truth is...", 1
    .byte " I am a man.", 1, 0

sLala:
    .byte "@La la la, la la ...", 1
    .byte " Never mind, this", 1
    .byte " song is not yours.", 1, 0

sHowLong:
    .byte "@How long did it", 1
    .byte " take you to get", 1
    .byte " here?", 1, 0

sGoodStory:
    .byte "@I've got a good", 1
    .byte " story to tell you.", 1
    .byte " Want to hear it?", 1, 0

sNice:
    .byte "@Well...", 1
    .byte " You should be nice", 1
    .byte " to friends.", 1, 3

    .byte "@That's all I've got", 1
    .byte " to say.", 1, 0

sAmbitions:
    .byte "@Have you no", 1
    .byte " intellectual", 1
    .byte " ambitions?", 1, 0

sInside:
    .byte "@Don't go any", 1
    .byte " farther inside!", 1, 0

sLiars:
    .byte "@I don't trust", 1
    .byte " these monkeys. ", 1
    .byte " They're all liars.", 1, 3

    .byte "@By the way, go", 1
    .byte " right, left, left", 1
    .byte " and right.", 1, 0

sRetreat:
    .byte "@Retreat!", 1
    .byte " And if you don't", 1
    .byte " want to...", 1, 3

    .byte "@Go back!", 1, 3

    .byte "@Oh, never mind.", 1
    .byte " Go forward!", 1, 0

sNewFriend:
    .byte "@In the town by the", 1
    .byte " sea, you'll meet a", 1
    .byte " new friend.", 1, 0

sQuietMonkey:
    .byte "@I am a quiet", 1
    .byte " monkey.", 1, 3

    .byte "@I don't talk much.", 1, 3

    .byte "@you see...", 1, 3

    .byte "@............", 1, 0

sDish:
    .byte "@Oh "
    .byte $21
    .word $74B8
    .byte " baby,", 1
    .byte " Hubba hubba,", 1
    .byte " what a dish.", 1, 0

sAllLiars:
    .byte "@Don't believe that", 1
    .byte " all monkeys are", 1
    .byte " liars.", 1, 3

    .byte "@That's nothing but", 1
    .byte " a lie.", 1, 0

sMonkeyBoss:
    .byte "@I'm the boss", 1
    .byte " monkey.", 1, 3

    .byte "@I'm really annoyed", 1
    .byte " that the others", 1
    .byte " tell so many lies.", 1, 3

    .byte "@Go straight ahead,", 1
    .byte " You'll find an", 1
    .byte " exit to your right.", 1, 0

sBigMistake:
    .byte "@A big mistake...", 1
    .byte " I really shouldn't", 1
    .byte " have come here.", 1, 0

sHelpMe:
    .byte "@Help me!", 1, 0

sTelephone:
    .byte "@Telephone!", 1
    .byte " "
    .byte $21
    .word $7478
    .byte ", please get", 1
    .byte " it!", 1, 0

sAbbott:
    .byte "@I am Abbott, not", 1
    .byte " the Town Mayor,", 1
    .byte " but his assistant.", 1, 3

    .byte "@Mr. Mayor is over", 1
    .byte " there.", 1, 0

sShareSecret:
    .byte "@I'll share the", 1
    .byte " secret with you", 1
    .byte " later.", 1, 0

sStayNight:
    .byte "@You come to stay", 1
    .byte " the night again?", 1, 0

sTraveller:
    .byte "@Oh, traveller!", 1, 0

sHauntingMelody:
    .byte "@The ghost house is", 1
    .byte " not a place for", 1
    .byte " slaying monsters.", 1, 3

    .byte "@There is a...", 1
    .byte " melody, hee-hee,", 1
    .byte " a haunting melody.", 1, 3

    .byte "@Hee-hee-hee.", 1, 0

sBeFound:
    .byte "@I believe that", 1
    .byte " "
    .byte $21
    .word $74B8
    .byte " may still", 1
    .byte " be found somewhere.", 1, 0

sHeadquarters:
    .byte "@You're under age.", 1
    .byte " I have to take you", 1
    .byte " in to headquarters.", 1, 0

sLandmine:
    .byte "@I heard you", 1
    .byte " stepped on the", 1
    .byte " landmine.", 1, 3

    .byte "@I stepped in dog", 1
    .byte " crap once myself.", 1, 3

    .byte "@Tell you some-", 1
    .byte " thing else kid...", 1, 3

    .byte "@I didn't like it", 1
    .byte " very much either!", 1, 0

sDogCrap:
    .byte "@I heard that you", 1
    .byte " stepped in dog", 1
    .byte " crap in Yucca?", 1, 3

    .byte "@That wasn't very", 1
    .byte " cool buddy.", 1, 0

sCertificate:
    .byte "@", $A6, "Certificate", $A6, 1, 3

    .byte "@"
    .byte $21
    .word $7420
    .byte 1, 3

    .byte "@We acknowledge the", 1
    .byte " fact that you did", 1
    .byte " step on the mine", 1, 3

    .byte "@in the Yucca", 1
    .byte " Desert.", 1, 3

    .byte "@Keep this place to", 1
    .byte " yourself, please.", 1, 3

    .byte "@signed...", 1
    .byte " Shigesato Itoi.", 1, 0

sNiceTrip:
    .byte "@Had a good sleep?", 1
    .byte " Have a nice trip!", 1, 0

sPatient:
    .byte "@Oh! not visiting a", 1
    .byte " patient?", 1, 3

    .byte "@If you are the", 1
    .byte " patient, please go", 1
    .byte " to the back room.", 1, 0

sNoPatient:
    .byte "@Sorry, no patient", 1
    .byte " here by that name.", 1, 0

sBadFlu:
    .byte "@This year's flu is", 1
    .byte " go bad. I lost so", 1
    .byte " much weight.", 1, 0

sDontCold:
    .byte "@I don't have a", 1
    .byte " cold.", 1
    .byte " Cough, cough, hack.", 1, 3

    .byte "@I'm just talking", 1
    .byte " to myself.", 1
    .byte " Cough, hack hack.", 1, 0

sInn:
    .byte "@Whenever you get", 1
    .byte " tired, just drop", 1
    .byte " by our Inn.", 1, 0

sHi:
    .byte "@Hi "
    .byte $21
    .word $670A
    .byte ", I'll", 1
    .byte " catch you later,", 1, 3

    .byte "@I'm a little busy", 1
    .byte " right now.", 1, 0

sRestaurant:
    .byte "@A restaurant, rant,", 1
    .byte " rant, rant...", 1
    .byte " Happy restaurant,", 1, 3

    .byte "@rant, rant, rant...", 1
    .byte " Are you happy?", 1, 0

sLoveMusic:
    .byte "@All restaurant", 1
    .byte " owners love", 1
    .byte " musicals!", 1, 0

sDelicious:
    .byte "@I think "
    .byte $21
    .word $7689
    .byte 1
    .byte " is delicious, too.", 1, 0

sHotel:
    .byte "@The Hotel in this", 1
    .byte " town isn't any ", 1
    .byte " better than the", 1, 3

    .byte "@one in Podunk,", 1
    .byte " and yet it", 1
    .byte " is so expensive...", 1, 0

sRoomRate:
    .byte "@The room rate at", 1
    .byte " this Hotel is so", 1
    .byte " inexpensive...", 1, 3

    .byte "@And that's not", 1
    .byte " where it stops", 1
    .byte " being cheap either.", 1, 0

sBigRocks:
    .byte "@Big rocks block", 1
    .byte " the railroad. The", 1
    .byte " train cannot pass.", 1, 0

sCheckMe:
    .byte "@You can converse", 1
    .byte " with animals.", 1, 3

    .byte "@Tell you a secret.", 1
    .byte " Why don't you", 1
    .byte " CHECK me out?", 1, 3

    .byte "@Bow wow!", 1, 0

sDontHaveMoney:
    .byte "@You don't have", 1
    .byte " enough money.", 1
    .byte " Sorry, come again.", 1, 0

sMenu:
    .byte "@Can I help you?", 1
    .byte " Please use this", 1
    .byte " menu.", 1, 0

sFoodToGo:
    .byte "@Thank you very much.", 1
    .byte " One "
    .byte $21
    .word $6D04
    .byte 1
    .byte " to go, please!", 1, 0

sHeNotCome:
    .byte "@He may not come", 1
    .byte " again...", 1, 0

sHopeEnjoy:
    .byte "@Hope you enjoy", 1
    .byte " yourself here.", 1, 0

sWaiter:
    .byte "@Hey, waiter...", 1
    .byte " I'm still waiting", 1
    .byte " for some service.", 1, 0

sIWantToTry:
    .byte "@I want to try", 1
    .byte " "
    .byte $21
    .word $7689
    .byte ".", 1, 0

sStopZombies:
    .byte "@I'd like to stop", 1
    .byte " the zombies evil", 1
    .byte " ways, but...", 1, 3

    .byte "@They do not listen", 1
    .byte " to me, or won't", 1
    .byte " even talk to me...", 1, 3

    .byte "@Now I am too", 1
    .byte " scared to leave", 1
    .byte " this place.", 1, 0

sItsMePippi:
    .byte "@It's me Pippi!", 1
    .byte " We meet once more", 1
    .byte " "
    .byte $21
    .word $670A
    .byte "!", 1, 3

    .byte "@Don't say anything,", 1
    .byte " but I didn't tell", 1
    .byte " my Mom I came here.", 1, 0

sMy:
    .byte "@My!", 1
    .byte " You are that", 1
    .byte " snot-nosed "
    .byte $21
    .word $670A
    .byte 1, 3

    .byte "@who sat next", 1
    .byte " to me in", 1
    .byte " kindergarten!", 1, 0

sItsCash:
    .byte "@It's cash, then", 1
    .byte " carry 'round here", 1
    .byte " boy...", 1, 3

    .byte "@It's not that I", 1
    .byte " don't trust you,", 1
    .byte " but...", 1, 0

sAppetite:
    .byte "@You seem to have", 1
    .byte " quite an appetite.", 1, 0

sTrackRuined:
    .byte "@The trains have", 1
    .byte " stopped. The", 1
    .byte " track was ruined.", 1, 3

    .byte "@It's the end of", 1
    .byte " the world, and you", 1
    .byte " just ask questions.", 1, 3

    .byte "@Stop asking so", 1
    .byte " many questions or", 1
    .byte " I'll start to cry.", 1, 0

sDontStop:
    .byte "@Don't stop...", 1
    .byte " Keep on walking!", 1, 0

sThinkAbout:
    .byte "@You look like you've", 1
    .byte " been through a lot.", 1, 3

    .byte "@Take your time,", 1
    .byte " think about", 1
    .byte " what you've done.", 1, 0

sAdventures:
    .byte "@I've heard about", 1
    .byte " your wonderful", 1
    .byte " adventures.", 1, 3

    .byte "@You are so brave,", 1
    .byte " aren't you?", 1, 0

sCanaryVillage:
    .byte "@The Canary Village", 1
    .byte " is northwest from", 1
    .byte " here.", 1, 3

    .byte "@It's a nice place", 1
    .byte " to visit and", 1
    .byte " admission is free!", 1, 0



.segment "DIALOGS5"

sReceptionist:
    .byte "@The receptionist at", 1
    .byte " City Hall is so", 1
    .byte " gorgeous.", 1, 0

sAsthma:
    .byte "@Hey "
    .byte $21
    .word $7478
    .byte ", how's", 1
    .byte " your asthma?", 1, 3

    .byte "@Mine has gotten", 1
    .byte " better,", 1, 3

    .byte "@but car exhausts", 1
    .byte " still sets it off.", 1, 0

sRules:
    .byte "@I told my kid to", 1
    .byte " study, then play", 1
    .byte " Nintendo games.", 1, 3

    .byte "@Those are the", 1
    .byte " rules around my", 1
    .byte " house!", 1, 0

sLookHappy:
    .byte "@You look so happy", 1
    .byte " all of the time!", 1, 0

sDuncanEnterprises:
    .byte "@Duncan Enterprises", 1
    .byte " plans to build a", 1
    .byte " strip-joint here.", 1, 3

    .byte "@No one in town", 1
    .byte " likes the idea of", 1
    .byte " that at all!", 1, 0

sDoctor:
    .byte "@I'd like to be a", 1
    .byte " doctor, and help", 1
    .byte " sick people...", 1, 3

    .byte "@and make lots of", 1
    .byte " money doing it.", 1, 0

sSurvey:
    .byte "@Really? This is", 1
    .byte " a respectable", 1
    .byte " survey...", 1, 0

sGetToSchool:
    .byte "@Get to school!", 1
    .byte " You are a school", 1
    .byte " boy, aren't you?", 1, 0

sElection:
    .byte "@How can we get the", 1
    .byte " big rocks off the", 1
    .byte " railroad tracks?", 1, 3

    .byte "@I'll bet the Mayor", 1
    .byte " leaves them there", 1
    .byte " 'til election time.", 1, 0

sHugeRockets:
    .byte "@I've heard that in", 1
    .byte " Duncan's", 1
    .byte " Factory up north,", 1, 3

    .byte "@they've started", 1
    .byte " building huge", 1
    .byte " rockets.", 1, 0

sOrdinaryMan:
    .byte "@Don't take me for", 1
    .byte " an ordinary man.", 1, 3

    .byte "@Although I am an", 1
    .byte " ordinary man.", 1, 0

sBlownUp:
    .byte "@I think...", 1
    .byte " I think...", 1, 3

    .byte "@The rockslide on", 1
    .byte " the railroad", 1
    .byte " tracks...", 1, 3

    .byte "@Could be blown up", 1
    .byte " with a Duncan", 1
    .byte " Factory Rocket.", 1, 0

sImportantMan:
    .byte "@My husband is an", 1
    .byte " important man at", 1
    .byte " Twinkle School.", 1, 3

    .byte "@He never eats", 1
    .byte " lunch.", 1, 0

sLittleFactory:
    .byte "@Have you been to", 1
    .byte " Sweet's Little", 1
    .byte " Factory?", 1, 0

sScaryMonsters:
    .byte "@I've heard many", 1
    .byte " scary monsters", 1
    .byte " lurk outside town.", 1, 3

    .byte "@I'm so afraid that", 1
    .byte " they'll take my", 1
    .byte " money away.", 1, 0

sLaala:
    .byte "@Laa, la laaa....", 1
    .byte " Dandelion seeds fly", 1
    .byte " up to the sky,", 1
    .byte " laa, la laaa...", 1, 3

    .byte "@I love music", 1
    .byte " most of all.", 1, 0

sJanitor:
    .byte "@The janitor has", 1
    .byte " the key to the", 1
    .byte " roof.", 1, 3

    .byte "@But he wouldn't", 1
    .byte " give it to me.", 1, 0

sTheOldMan:
    .byte "@The old man on", 1
    .byte " the mountain is so", 1
    .byte " generous...", 1, 3

    .byte "@He'll give you", 1
    .byte " as much as you can", 1
    .byte " possibly carry.", 1, 0

sTunnel:
    .byte "@I remember walking", 1
    .byte " through the tunnel", 1
    .byte " when I was young.", 1, 3

    .byte "@I went to see what", 1
    .byte " was on the other", 1
    .byte " side.", 1, 0

sResidential:
    .byte "@This is a", 1
    .byte " residential area,", 1
    .byte " please keep quiet.", 1, 0

sFoodOut:
    .byte "@Have you ever", 1
    .byte " thrown food out", 1
    .byte " into the field?", 1, 3

    .byte "@Well, it's a game,", 1
    .byte " but it is pretty", 1
    .byte " wasteful.", 1, 0

sArchitecture:
    .byte "@Gasp!! You", 1
    .byte " startled me.", 1, 3

    .byte "@For college credit", 1
    .byte " I study indoor", 1
    .byte " architecture.", 1, 3

    .byte "@That's the whole", 1
    .byte " truth, and nothing", 1
    .byte " but the truth!!", 1, 0

sBicycle:
    .byte "@I wish that I had", 1
    .byte " a bicycle.", 1, 0

sBegFood:
    .byte "@You thought I was", 1
    .byte " going to beg for", 1
    .byte " food, didn't you?", 1, 3

    .byte "@I wouldn't do that,", 1
    .byte " even though I am", 1
    .byte " ever so hungry.", 1, 0

sDresses:
    .byte "@I love life in the", 1
    .byte " city!", 1, 3

    .byte "@I look so great in", 1
    .byte " cute dresses!", 1, 0

sPsychicPowers:
    .byte "@I don't believe in", 1
    .byte " Psychic Powers.", 1, 0

sSmallMan:
    .byte "@I am a man whose", 1
    .byte " existence does not", 1
    .byte " matter.", 1, 3

    .byte "@My importance is", 1
    .byte " so small,", 1, 3

    .byte "@that I may not", 1
    .byte " be missed should", 1
    .byte " I disappear.", 1, 0

sLoveTown:
    .byte "@I love this town!", 1
    .byte " I wouldn't be", 1
    .byte " caught dead in", 1, 3

    .byte "@Spookane! Ha ha!", 1, 0

sDonation:
    .byte "@Would you like to", 1
    .byte " make a donation to", 1
    .byte " my charitable fund?", 1, 0

sGoodMedicine:
    .byte "@The store will buy", 1
    .byte " good medicine for", 1
    .byte " good money.", 1, 0

sPostman:
    .byte "@I'm the jolly", 1
    .byte " postman,", 1
    .byte " laa laaa, la la.", 1, 3

    .byte "@Have you heard", 1
    .byte " the Rosemarys'", 1
    .byte " new address?", 1, 3

    .byte "@La la la laa.", 1, 0

sNewAddress:
    .byte "@Tell the postman", 1
    .byte " who seeks the", 1
    .byte " forwarding address,", 1, 3

    .byte "@that the", 1
    .byte " Rosemarys have", 1
    .byte " moved far away.", 1, 3

    .byte "@La la la laaa.", 1, 0

sRosemaryGirl:
    .byte "@I don't like the", 1
    .byte " little Rosemary", 1
    .byte " girl!", 1, 0

sMonsters:
    .byte "@The streets are", 1
    .byte " filled with", 1
    .byte " monsters,", 1, 3

    .byte "@the people have", 1
    .byte " run away.", 1, 0

sWhatDoYouWant:
    .byte "@What do you want?", 1, 0

sClairvoyant:
    .byte "@I am a clairvoyant", 1
    .byte " still in training.", 1, 3

    .byte "@However this much I", 1
    .byte " can see...", 1, 3

    .byte "@You shall return", 1
    .byte " again to Union", 1
    .byte " Station.", 1, 3

    .byte "@Although I'm not", 1
    .byte " completely sure.", 1, 0

sMansion:
    .byte "@"
    .byte $21
    .word $74B8
    .byte "'s house is", 1
    .byte " a chateau, not a", 1
    .byte " mansion.", 1, 3

    .byte "@But, I'll bet you", 1
    .byte " already knew that.", 1, 0

sChateau:
    .byte "@There is a chateau", 1
    .byte " in the mountains", 1
    .byte " to the east.", 1, 3

    .byte "@Cough cough", 1
    .byte " cough cough...", 1, 0

sCrazyKids:
    .byte "@You kids are crazy.", 1
    .byte " Running around with", 1
    .byte " just T-shirts on.", 1, 3

    .byte "@Cough cough", 1
    .byte " cough cough...", 1, 0

sCamelsBones:
    .byte "@Please say hello to", 1
    .byte " the camel's bones in", 1
    .byte " Yucca Desert.", 1, 3

    .byte "@I knew that camel", 1
    .byte " once upon a time.", 1, 0

sSmallWounds:
    .byte "@Small wounds can", 1
    .byte " be treated here,", 1, 3

    .byte "@but real sickness", 1
    .byte " must be treated in", 1
    .byte " the hospital.", 1, 0

sGrowUp:
    .byte "@I think "
    .byte $21
    .word $74F8
    .byte 1
    .byte " will grow up and", 1
    .byte " be a computer", 1
    .byte " engineer.", 1, 0

sLibrary:
    .byte "@Keep quiet in the", 1
    .byte " library!", 1, 3

    .byte "@Ahh--choo!!", 1, 0

sFisherman:
    .byte "@You think I'm the", 1
    .byte " world's greatest", 1
    .byte " fisherman?", 1, 3

    .byte "@Well, not quite", 1
    .byte " that great. But,", 1
    .byte " if you've a moment,", 1, 3

    .byte "@let me tell you", 1
    .byte " some of my fishing", 1
    .byte " stories.", 1, 0

sWay:
    .byte "@You're in the way,", 1
    .byte " kid!", 1, 0

sHey:
    .byte "@Hey!", 1, 0

sLowHP:
    .byte "@I may have low HP,", 1
    .byte " but I'm gonna do", 1
    .byte " my best!", 1, 0

sLoser:
    .byte "@If I fight with", 1
    .byte " you....", 1, 3

    .byte "@I will surely be a", 1
    .byte " loser.", 1, 0

sStrongMan:
    .byte "@I am a strong man.", 1
    .byte " That's what I say.", 1
    .byte " I insist this.", 1, 0

sPinkie:
    .byte "@You are no match", 1
    .byte " for "
    .byte $21
    .word $7538
    .byte ".", 1, 3

    .byte "@He could beat you up", 1
    .byte " with his pinkie.", 1, 0

sDidYouRead:
    .byte "@Did you read", 1
    .byte " the sign?", 1, 0

sCactus:
    .byte "@While walking in", 1
    .byte " the desert, I saw a", 1
    .byte " cactus with a face,", 1, 3

    .byte "@then I ran for the", 1
    .byte " hills screaming as", 1
    .byte " loud as I could.", 1, 0

sTalkFisherman:
    .byte "@When you talk to", 1
    .byte " a fisherman, you", 1
    .byte " can never get away.", 1, 0

sCartwheel:
    .byte "@Any first grader", 1
    .byte " can do a cartwheel,", 1, 3

    .byte "@don't you think?", 1, 0

sTelescopes:
    .byte "@The telescopes?", 1, 3

    .byte "@Take this elevator", 1
    .byte " to the top of Look-", 1
    .byte " Out Tower.", 1, 0

sSmoke:
    .byte "@I once saw smoke", 1
    .byte " rising from one of", 1
    .byte " the islands.", 1, 3

    .byte "@I wondered if", 1
    .byte " anybody lived", 1
    .byte " there.", 1, 3

    .byte "@I should have", 1
    .byte " looked through", 1
    .byte " that telescope.", 1, 0

sICantDo:
    .byte "@I can't do a", 1
    .byte " cartwheel.", 1, 0

sSubtraction:
    .byte "@I still don't know", 1
    .byte " how to carry over", 1
    .byte " in subtraction.", 1, 0

sTasteStrawBerry:
    .byte "@I heard StrawBerry", 1
    .byte " Tofu is popular", 1
    .byte " in big cities.", 1, 3

    .byte "@I'd like to taste", 1
    .byte " some.", 1, 0

sHungry:
    .byte "@I am hungry.", 1
    .byte " Let's do lunch.", 1, 0

sFavoriteWords:
    .byte "@Don't take me for", 1
    .byte " an ordinary man.", 1, 3

    .byte "@Those are Dad's", 1
    .byte " favorite words.", 1, 0

sYouAreLate:
    .byte "@You are late,", 1
    .byte " aren't you!?", 1, 0

sStrangeMan:
    .byte "@Did you see a", 1
    .byte " strange man", 1
    .byte " in the lab?", 1, 3

    .byte "@Well...", 1
    .byte " I saw him.", 1, 0

sMario:
    .byte "@Have you played", 1
    .byte " Super Mario Bros.7?", 1, 3

    .byte "@I'm still playing", 1
    .byte " Super Mario Bros.3.", 1, 3

    .byte "@It's been quite", 1
    .byte " a challenge for me.", 1, 0

sSell:
    .byte "@Welcome!", 1
    .byte " What can I sell", 1
    .byte " you?", 1, 0

sOutStock:
    .byte "@Sorry, that item is", 1
    .byte " out of stock.", 1, 0

sDontNeed:
    .byte "@Don't need that,", 1
    .byte " do you? Come see", 1
    .byte " us when you do.", 1, 0

sVisit:
    .byte "@Thank you very", 1
    .byte " much. Please", 1
    .byte " visit us again.", 1, 0

sAreYouSure:
    .byte "@Are you sure you", 1
    .byte " don't need that?", 1
    .byte " Well, come again.", 1, 0

sGladToSeeYou:
    .byte "@"
    .byte $21
    .word $6D00
    .byte ", glad to", 1
    .byte " see you are fine", 1
    .byte " now. See us again!", 1, 0

sDeathbed:
    .byte "@You would leave", 1
    .byte " your best friend", 1
    .byte " on their deathbed?", 1, 0

sTreat:
    .byte "@Well well, I'll", 1
    .byte " treat each of you", 1
    .byte " for "
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " each.", 1, 0

sTreatment:
    .byte "@You really don't", 1
    .byte " need treatment?", 1
    .byte " Oh, well...", 1, 0

sFine:
    .byte "@I see everything", 1
    .byte " with you is fine.", 1, 0

sFineAgain:
    .byte "@Well,", 1
    .byte " you are fine", 1
    .byte " once again.", 1, 0

sIAmHealer:
    .byte "@Believe it or not,", 1
    .byte " I am a Healer.", 1
    .byte " What do you want?", 1, 0

sOKDoWhatYou:
    .byte "@OK, do what you", 1
    .byte " want to.", 1, 0

sGive:
    .byte "@Give me $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte 1
    .byte " for that.", 1, 0

sCareStay:
    .byte "@Welcome!", 1
    .byte " $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " for a night.", 1
    .byte " Care to stay?", 1, 0

sSorryHearThat:
    .byte "@Sorry to hear that.", 1
    .byte " Please visit us", 1
    .byte " again.", 1, 0

sSleepTight:
    .byte "@Sleep tight...", 1
    .byte " and don't let the", 1
    .byte " bed bugs bite.", 1, 0

sGreetings:
    .byte "@Good morning!", 1
    .byte " Please come back", 1
    .byte " and see us again.", 1, 0

sInjuries:
    .byte "@They just brought", 1
    .byte " "
    .byte $21
    .word $6D00
    .byte " here,", 1
    .byte " still unconscious.", 1, 3

    .byte "@Medical treatment", 1
    .byte " for those injuries", 1
    .byte " totals $"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte ".", 1, 0

sWhoAreYouHere:
    .byte "@Who are you here", 1
    .byte " to visit?", 1, 0

sPlaceStay:
    .byte "@Well, Dad isn't", 1
    .byte " home and I don't", 1
    .byte " care about money.", 1, 3

    .byte "@So if you need a", 1
    .byte " place to stay,", 1, 3

    .byte "@feel free to stay", 1
    .byte " here tonight.", 1, 0

sLonelyHere:
    .byte "@Good morning!", 1
    .byte " Please come back", 1
    .byte " again someday.", 1, 3

    .byte "@If you do, I may", 1
    .byte " not get quite so", 1
    .byte " lonely here.", 1, 0

sSpendNight:
    .byte "@Why aren't you", 1
    .byte " going to spend", 1
    .byte " the night here?", 1, 3

    .byte "@Dad may not be", 1
    .byte " home, but it's", 1
    .byte " alright, trust me.", 1, 0

sTicketsPlease:
    .byte "@Tickets please,", 1
    .byte " you must have a", 1
    .byte " Ticket to get in.", 1, 0

sHowever:
    .byte "@However...", 1
    .byte " Nothing was there.", 1, 0

sLeaveTakeout:
    .byte "  Leave    Take out", 0

sYouHaveNothing:
    .byte "@You have nothing.", 1, 0

sLeftAnything:
    .byte "@You haven't left", 1
    .byte " anything with me.", 1, 0

sJustMoment:
    .byte "@Just a moment...", 1, 3

    .byte "@The closet is full.", 1
    .byte " I can't keep any", 1
    .byte " more for you now.", 1, 0

sCanIHelpYou:
    .byte "@Can I help you?", 1, 0

sBalance:
    .byte "@Your balance is", 1
    .byte " insufficient.", 1, 0

sThereIsnt:
    .byte "@There isn't", 1
    .byte " enough money.", 1, 0

sLimit:
    .byte "@I'm sorry,", 1, 3

    .byte "@the transaction you", 1
    .byte " have requested", 1
    .byte " exceeds your limit.", 1, 0

sThankYouVeryMuch:
    .byte "@Thank you very", 1
    .byte " much.", 1, 0

sInsideDoll:
    .byte "@Inside the doll,", 1
    .byte " "
    .byte $21
    .word $670A
    .byte " spotted an", 1
    .byte " old music box.", 1, 3

    .byte "@As the music box", 1
    .byte " was wound up...", 1, 3

    .byte "@A melody began to", 1
    .byte " play.", 1, 0

sAsk:
    .byte "@?", 1, 0

sGratitudes:
    .byte "@Thank you.", 1, 0

sWeapons:
    .byte "@I have a fantastic", 1
    .byte " source for weapons.", 1, 3

    .byte "@Check back again", 1
    .byte " with me later...", 1, 3

    .byte "@I just may get a", 1
    .byte " really awesome", 1
    .byte " weapon or two.", 1, 0

sWon:
    .byte "@"
    .byte $21
    .word $670A
    .byte " won the", 1
    .byte " battle.", 1, 0

sWithdrawDeposit:
    .byte "  Withdraw Deposit", 0

sAccount:
    .byte "@Your account shows", 1
    .byte " a balance of", 1
    .byte " $"
    .byte $23
    .word $7412
    .byte $03, $00
    .byte ".", 1, 0

sDoorLocked:
    .byte "@The door is locked.", 1, 0

sNotFit:
    .byte "@That Key does not", 1
    .byte " fit this lock.", 1, 0

sUnlocked:
    .byte "@"
    .byte $21
    .word $670A
    .byte " unlocked", 1
    .byte " the door and went", 1
    .byte " inside.", 1, 0

sYesNo:
    .byte "  Yes      No", 0

sContinueRest:
    .byte "  Continue Rest", 0

sGrabbed:
    .byte "@"
    .byte $21
    .word $670A
    .byte " grabbed the", 1
    .byte " telephone.", 1, 0

sImSorry:
    .byte "@I'm sorry, but you", 1
    .byte " just don't have", 1
    .byte " enough money.", 1, 0

sOhNoSir:
    .byte "@Oh no sir, you", 1
    .byte " do not have that", 1
    .byte " much money.", 1, 0

sSirYouCant:
    .byte "@Sir, you can't", 1
    .byte " carry more than", 1
    .byte " what you now have.", 1, 3

    .byte "@At least, I don't", 1
    .byte " think you should.", 1, 0

sExpert:
    .byte "@There you have it!", 1
    .byte " I've fixed it like", 1
    .byte " a true expert.", 1, 0

sSorryICant:
    .byte "@Sorry, but I can't", 1
    .byte " buy "
    .byte $21
    .word $6D04
    .byte " from", 1
    .byte " you.", 1, 0

sReunion:
    .byte "@Overjoyed with her", 1
    .byte " reunion, Laura", 1
    .byte " began singing.", 1, 0

sTune:
    .byte "@"
    .byte $21
    .word $670A
    .byte " remembered", 1
    .byte " the tune.", 1, 0

sThisCanary:
    .byte "@This canary is", 1
    .byte " singing.", 1, 0

sMonkeyStole:
    .byte "@The monkey stole", 1
    .byte " the Zoo Key.", 1, 0

sRobot:
    .byte "@The robot appeared", 1
    .byte " old and rusty.", 1, 0

sPresence:
    .byte "@Feeling "
    .byte $21
    .word $7478
    .byte "'s", 1
    .byte " presence, the robot", 1
    .byte " came back to life.", 1, 0

sFor:
    .byte "@"
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte " for", 1
    .byte " "
    .byte $21
    .word $6D00
    .byte ".", 1, 0

sDoYouBest:
    .byte "@Do your best.", 1, 0

sMysteriousWater:
    .byte "@Your strength has", 1
    .byte " revived by touching", 1, 3

    .byte "@the fountain's", 1
    .byte " mysterious water.", 1, 0

sMyLittle:
    .byte "@Oh my, little", 1
    .byte " Pippi!  You're", 1
    .byte " back and safe!", 1, 3

    .byte "@Thank you for", 1
    .byte " finding her,", 1
    .byte " "
    .byte $21
    .word $7478
    .byte "!", 1, 3

    .byte "@By the way, the", 1
    .byte " Town Mayor is", 1
    .byte " waiting for you...", 1, 3

    .byte "@Pippi, go with", 1
    .byte " "
    .byte $21
    .word $7478
    .byte ", and help", 1
    .byte " straighten this out.", 1, 0

sImBusy:
    .byte "@I'm busy, So I", 1
    .byte " can't help you", 1
    .byte " right now.", 1, 3

    .byte "@You'll have to come", 1
    .byte " back later.", 1, 0

sPoisoned:
    .byte "@Who has been", 1
    .byte " poisoned?", 1, 0

sSoftened:
    .byte "@Who needs to be", 1
    .byte " softened?", 1, 0

sNoPoisoned:
    .byte "@You haven't been", 1
    .byte " poisoned!", 1, 0



.segment "DIALOGS6"

sTurnedStone:
    .byte "@You have not been", 1
    .byte " turned to stone.", 1, 0

sManufacture:
    .byte "@They manufacture", 1
    .byte " Bottle Rockets", 1
    .byte " there.", 1, 0

sMyWife:
    .byte "@My wife was the 1st", 1
    .byte " Miss Merrysville in", 1
    .byte " history.", 1, 0

sUnlockedRoof:
    .byte "@OK, I've unlocked", 1
    .byte " the roof. While", 1
    .byte " you're up there...", 1, 3

    .byte "@Make sure to take", 1
    .byte " in the view. It is", 1
    .byte " unforgettable.", 1, 0

sConstructing:
    .byte "@Later we should go", 1
    .byte " to Duncan's", 1
    .byte " Factory...", 1, 3

    .byte "@I've heard they're", 1
    .byte " constructing an", 1
    .byte " incredible rocket.", 1, 0

sCallMeNames:
    .byte "@They call me names,", 1
    .byte " weakling or four", 1
    .byte " eyes, or worse...", 1, 3

    .byte "@I'm sure that", 1
    .byte " you've heard them.", 1, 0

sDawn:
    .byte "@In the mean time,", 1
    .byte " dawn breaks over", 1
    .byte " the harbor...", 1, 0

sPardon:
    .byte "@Pardon me young", 1
    .byte " whipper-snappers...", 1, 3

    .byte "@I didn't really", 1
    .byte " mean to talk all", 1
    .byte " night, but...", 1, 0

sDontTalk:
    .byte "@You young little...", 1
    .byte " Don't talk to me", 1
    .byte " that way!", 1, 0

sGameTitle:
    .byte "@This game I heard of", 1, 3

    .byte "@was titled", 1
    .byte "  ", $A6, "EARTH", 1
    .byte "   BOUND", $A6, "...", 1, 3

    .byte "@don't know exactly", 1
    .byte " why...", 1, 3

    .byte "@because it really", 1
    .byte " doesn't matter.", 1, 3

    .byte "@So if you shouldn't", 1
    .byte " judge a book by its", 1
    .byte " cover...", 1, 3

    .byte "@Don't judge a game", 1
    .byte " by its title.", 1, 0

sLadyReindeer:
    .byte "@A lady at Reindeer", 1
    .byte " Station has some-", 1
    .byte " thing for you...", 1, 3

    .byte "@Have you gone there", 1
    .byte " and met her yet?", 1, 0

sImportantHint:
    .byte "@The most important", 1
    .byte " hint to remember", 1
    .byte " though is...", 1, 3

    .byte "@No matter how much", 1
    .byte " it hurts your ears", 1
    .byte " to do so...", 1, 3

    .byte "@Listen to the words", 1
    .byte " in the song by", 1, 3

    .byte "@Magicant's guitar", 1
    .byte " player.", 1, 0

sCheck:
    .byte "@When you find some-", 1
    .byte " thing strange,", 1, 3

    .byte "@be sure to CHECK it", 1
    .byte " out every time.", 1, 0

sTheSingingMonkey:
    .byte "@The Singing Monkey", 1
    .byte " sang with passion.", 1, 0

sCactusSang:
    .byte "@The Cactus sang...", 1, 3

    .byte "@and for whatever", 1
    .byte " reason, it kept on", 1
    .byte " singing.", 1, 0

sPiano:
    .byte "@The Piano began to", 1
    .byte " play all by", 1
    .byte " itself...", 1, 0

sDragonCrooned:
    .byte "@The Dragon crooned", 1
    .byte " his tune without", 1
    .byte " much hesitation.", 1, 3

    .byte "@The song went", 1
    .byte " something like", 1
    .byte " this...", 1, 0

sRobotEve:
    .byte "@Robot Eve was", 1
    .byte " demolished and", 1
    .byte " moved no more.", 1, 3

    .byte "@Examining the", 1
    .byte " wreckage caused", 1
    .byte " music to start...", 1, 0

sOneOfKind:
    .byte "@One of a kind!", 1
    .byte " See the amazing", 1
    .byte " Singing Monkey!", 1, 0

sPadlock:
    .byte "@There's a padlock", 1
    .byte " on the door at the", 1
    .byte " top of the stairs.", 1, 0

sIMustStayHere:
    .byte "@I must stay here", 1
    .byte " with the people of", 1
    .byte " Snowman.", 1, 3

    .byte "@Please take care...", 1, 0

sNotEnoughCash:
    .byte "@Not enough money.", 1, 0

sGoFirst:
    .byte "@"
    .byte $21
    .word $7478
    .byte ", please go", 1
    .byte " first. I am so", 1
    .byte " afraid.", 1, 0

sBrokenLock:
    .byte "@The lock was", 1
    .byte " broken. "
    .byte $21
    .word $670A
    .byte 1
    .byte " opened the door.", 1, 0

sHowAreYou:
    .byte "@Hi! "
    .byte $21
    .word $7538
    .byte "!", 1
    .byte " How are you doin'?", 1, 0

sLet:
    .byte "@Let "
    .byte $21
    .word $7538
    .byte " come", 1
    .byte " back fast!", 1, 0

sNoICant:
    .byte "@No, no. I can't", 1
    .byte " keep "
    .byte $21
    .word $6D04
    .byte 1
    .byte " with me.", 1, 3

    .byte "@I must go my own", 1
    .byte " way, whatever you", 1
    .byte " say.", 1, 0

sFlyingMan:
    .byte "@"
    .byte $21
    .word $7478
    .byte "'s faithful", 1
    .byte " and loyal servant,", 1, 3

    .byte "@The brave soldier,", 1
    .byte " Flying Man, rests", 1
    .byte " here in peace.", 1, 0

sStrongAlly:
    .byte "@"
    .byte $21
    .word $7478
    .byte "'s strong", 1
    .byte " and powerful ally,", 1, 3

    .byte "@The brave soldier,", 1
    .byte " Flying Man, rests", 1
    .byte " here in peace.", 1, 0

sBenevolent:
    .byte "@"
    .byte $21
    .word $7478
    .byte "'s", 1
    .byte " benevolent buddy,", 1, 3

    .byte "@The brave soldier,", 1
    .byte " Flying Man, rests", 1
    .byte " here in peace.", 1, 0

sSorrow:
    .byte "@To "
    .byte $21
    .word $7478
    .byte "'s great", 1
    .byte " sorrow,", 1, 3

    .byte "@The brave soldier,", 1
    .byte " Flying Man, rests", 1
    .byte " here in peace.", 1, 0

sHorror:
    .byte "@To "
    .byte $21
    .word $7478
    .byte "'s horror", 1
    .byte " and dismay,", 1, 3

    .byte "@The brave soldier,", 1
    .byte " Flying Man, rests", 1
    .byte " in peace here.", 1, 0

sProclamation:
    .byte "@Proclamation by", 1
    .byte " the Town's Mayor", 1
    .byte " says...", 1, 3

    .byte "@No one may pass", 1
    .byte " until the Zoo case", 1
    .byte " is solved.", 1, 3

    .byte "@A real one way", 1
    .byte " attitude if you", 1
    .byte " ask me.", 1, 3

    .byte "@I don't have to", 1
    .byte " like it, just", 1
    .byte " enforce it.", 1, 0

sDeep:
    .byte "@Deep in a cave,", 1
    .byte " there is a strange", 1
    .byte " rock-like thing.", 1, 3

    .byte "@It's so strange,", 1
    .byte " you definitely", 1
    .byte " should take a look.", 1, 0

sCanTelepathy:
    .byte "@I heard that you", 1
    .byte " can communicate", 1
    .byte " with Telepathy.", 1, 3

    .byte "@Have you heard", 1
    .byte " all of the people", 1
    .byte " talking about you?", 1, 3

    .byte "@But you probably", 1
    .byte " don't need to", 1
    .byte " 'listen' to them!", 1, 0

sAreYouGoing:
    .byte "@Are you going to", 1
    .byte " Snowman?", 1, 0

sFoundHat:
    .byte "@I found this Hat.", 1
    .byte " I believe it's the", 1
    .byte " property of a girl", 1, 3

    .byte "@who lives there.", 1
    .byte " Please take it to", 1
    .byte " her.", 1, 0

sWellIhad:
    .byte "@Well, I had", 1
    .byte " something to ask", 1
    .byte " you.", 1, 0

sUniqueSong:
    .byte "@The good-looking", 1
    .byte " boy sang a quite a", 1
    .byte " unique song.", 1, 3

    .byte "@"
    .byte $21
    .word $670A
    .byte " did not", 1
    .byte " want to remember", 1
    .byte " this strange melody.", 1, 0

sExcuseMe:
    .byte "@Excuse me...", 1
    .byte " could you answer", 1
    .byte " this questionnaire?", 1, 0

sDoYouThink:
    .byte "@Do you think the", 1
    .byte " train tickets are", 1
    .byte " too expensive?", 1, 0

sUsedBullhorn:
    .byte "@Have you USEd", 1
    .byte " the Bullhorn?", 1, 0

sExchange:
    .byte "@Thank you for", 1
    .byte " your cooperation.", 1
    .byte " In exchange...", 1, 3

    .byte "@for your time,", 1
    .byte " this Telephone Card", 1
    .byte " is for you.", 1, 0

sQuestionnaire:
    .byte "@Excuse me, but", 1
    .byte " could you answer", 1
    .byte " this questionnaire?", 1, 3

    .byte "@Oh! I'm sorry I've", 1
    .byte " already asked you", 1
    .byte " these questions...", 1, 0

sHearing:
    .byte "@Hearing the soulful", 1
    .byte " cry, the Benevolent", 1
    .byte " Old Man showed up.", 1, 0

sPriedUpLid:
    .byte "@"
    .byte $21
    .word $670A
    .byte " pried up", 1
    .byte " the lid. Out from", 1
    .byte " the casket...!!", 1, 0

sTelescope:
    .byte "@"
    .byte $21
    .word $670A
    .byte " looked", 1
    .byte " into the telescope.", 1, 0

sBlueSea:
    .byte "@The shimmering blue", 1
    .byte " sea stretched", 1
    .byte " toward the horizon.", 1, 0

sSparkled:
    .byte "@In the distance,", 1
    .byte " on the island,", 1
    .byte " something sparkled!", 1, 0

sSuddenly:
    .byte "@Suddenly, from", 1
    .byte " inside of the", 1
    .byte " capsule...", 1, 0

sDaddy:
    .byte "@("
    .byte $21
    .word $74B8
    .byte ")", 1
    .byte " Daddy...", 1
    .byte " Good-bye...", 1, 3

    .byte "@Next time, Mommy", 1
    .byte " will come back", 1
    .byte " with me!", 1, 3

    .byte "@Believe in us!", 1, 0

sTalking:
    .byte "@Who are you", 1
    .byte " talking to?", 1, 0

sWhat:
    .byte "@What?!?", 1, 0

sNoProblem:
    .byte "@No problem.", 1, 0

sQueenVoice:
    .byte "@(The voice of Queen", 1
    .byte " Mary speaks)", 1, 3

    .byte "@I am the", 1
    .byte " consciousness of", 1
    .byte " Maria.", 1, 3

    .byte "@"
    .byte $21
    .word $7478
    .byte ", use my", 1
    .byte " last power!", 1, 3

    .byte "@Then, as the voice", 1
    .byte " became a whisper of", 1
    .byte " wind...", 1, 3

    .byte "@The rock", 1
    .byte " disintegrated.", 1, 3

    .byte "@Leaving only a", 1
    .byte " pile of very fine", 1
    .byte " sand at their feet.", 1, 0

sWeaponsShop:
    .byte "@Welcome to our shop.", 1
    .byte " We sell weapons.", 1, 0

sUsed:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " USEd", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sCantUse:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " can't", 1
    .byte " USE "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sDontBeSilly:
    .byte "@Don't be silly,", 1
    .byte " you can't do that.", 1, 0

sEquipped:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " equipped", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sCantEquip:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " can't", 1
    .byte " equip "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sThrewAway:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " threw", 1
    .byte " away "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sDontThrow:
    .byte "@Don't throw", 1
    .byte " away "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sHanded:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " handed", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte " to", 1
    .byte " "
    .byte $21
    .word $6D00
    .byte ".", 1, 0

sCantHandOver:
    .byte "@Can't hand over", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sCantCarryAnyMore:
    .byte "@"
    .byte $21
    .word $6D00
    .byte " can't", 1
    .byte " carry any more.", 1, 0

sNothingHappened:
    .byte "@Nothing happened.", 1, 0

sOpened:
    .byte "@"
    .byte $21
    .word $670A
    .byte " opened", 1
    .byte " the present.", 1, 0

sThereWas:
    .byte "@There was", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte ".", 1, 0

sGot:
    .byte "@"
    .byte $21
    .word $670A
    .byte " got", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte ".", 1, 0

sCantCarryAnything:
    .byte "@Can't carry", 1
    .byte " anything else.", 1, 0

sItWasEmpty:
    .byte "@It was empty.", 1, 0

sCurePoison:
    .byte "@Cure poison.", 1
    .byte " Soften", 1, 0

sCityZooSign:
    .byte "@     City Zoo", 1
    .byte "       NORTH", 1, 3

    .byte "@      Podunk", 1
    .byte "       SOUTH", 1, 0

sNoHunting:
    .byte "@No Hunting -", 1
    .byte " Approaching", 1, 3

    .byte "@The Canary Village", 1
    .byte " Wildlife Refuge", 1, 0

sCityHall:
    .byte "@  City Hall", 1
    .byte "     City of Podunk", 1, 0

sLookOutTower:
    .byte "@  Look-Out Tower", 1
    .byte "        WEST", 1
    .byte "   Harbor   NORTH", 1, 0

sEllayMountSign:
    .byte "@      Ellay", 1
    .byte "        WEST", 1, 3

    .byte "@    Mount Itoi", 1
    .byte "        EAST", 1, 0

sHealersHouse:
    .byte "@   Healer's House", 1
    .byte "        WEST", 1
    .byte "   Beyond Bridge...", 1, 3

    .byte "@     Cemetery", 1
    .byte " Abandon all hope", 1
    .byte " ye who enter!", 1, 0

sSign:
    .byte "@      Podunk", 1
    .byte "        WEST", 1, 3

    .byte "@   Merrysville", 1
    .byte "        EAST", 1, 0

sCityZooWest:
    .byte "@     City Zoo", 1
    .byte "     700 meters", 1
    .byte "        WEST", 1, 0

sSnowmanChateau:
    .byte "@Snowman Chateau", 1
    .byte " Straight Ahead", 1, 0

sEllaySwampSign:
    .byte "@      Ellay", 1
    .byte "        WEST", 1, 3

    .byte "@      Swamp", 1
    .byte "       SOUTH", 1, 0

sTwinkle:
    .byte "@     Twinkle", 1
    .byte "  Elementary School", 1
    .byte "       SOUTH", 1, 0

sHouse:
    .byte "@"
    .byte $21
    .word $7478
    .byte "'s house", 1, 0

sWestNorthSign:
    .byte "@Welcome to", 1
    .byte " Merrysville!", 1, 3

    .byte "@      Podunk", 1
    .byte "        WEST", 1, 3

    .byte "@  Union  Station", 1
    .byte "       NORTH", 1, 0

sWestEastSouth:
    .byte "@  Healer's House", 1
    .byte "        WEST", 1, 3

    .byte "@ Reindeer Station", 1
    .byte "        EAST", 1, 3

    .byte "@   Reindeer Town", 1
    .byte "        SOUTH", 1, 0

sWestEastSign:
    .byte "@ Spookane Downtown", 1
    .byte "        WEST", 1, 3

    .byte "@Spookane Residental", 1
    .byte "        EAST", 1, 0

sSwampEast:
    .byte "@   Swamp - EAST", 1, 0

sPrivateProperty:
    .byte "@PRIVATE PROPERTY", 1
    .byte " (signed)-", 1
    .byte " The Rosemarys", 1, 0

sPoliceStation:
    .byte "@Police Station", 1
    .byte " City of Ellay", 1, 0

sCompanyInc:
    .byte "@Coming this fall-", 1
    .byte " Duncan's", 1
    .byte " Debutantery", 1, 3

    .byte "@Financing by,", 1
    .byte " Architectural by,", 1
    .byte " Construction by,", 1, 3

    .byte "@The Duncan", 1
    .byte " Company Inc.", 1, 0

sPride:
    .byte "@I heard that my", 1
    .byte " brother died with", 1
    .byte " honor in combat.", 1, 3

    .byte "@With all our love,", 1
    .byte " he was buried in", 1
    .byte " our cemetery.", 1, 3

    .byte "@It is with great", 1
    .byte " pride that I take", 1
    .byte " his place by you.", 1, 0

sServe:
    .byte "@I cannot wait to", 1
    .byte " serve you.", 1, 0

sDestiny:
    .byte "@I am the Flying", 1
    .byte " Man. My destiny", 1
    .byte " is to help you.", 1, 0

sTheCurfew:
    .byte "@The curfew has", 1
    .byte " been lifted.", 1, 3

    .byte "@Although I can't", 1
    .byte " see why travel was", 1
    .byte " ever restricted.", 1, 0

sOldRustyRocket:
    .byte "@Old, rusty rocket.", 1, 0

sDidYouCome:
    .byte "@Did you come for", 1
    .byte " your Goods? Here", 1
    .byte " you go.", 1, 0

sIveGivenYouAll:
    .byte "@I've given you all", 1
    .byte " the Goods. Please", 1
    .byte " come again.", 1, 0

sIAmMinnie:
    .byte "@I am Minnie.", 1, 0

sRefreshSoften:
    .byte "  Refresh  Soften", 0

sLikeBeAlone:
    .byte "@("
    .byte $21
    .word $7538
    .byte ") I'm", 1
    .byte " sure you two would", 1
    .byte " like to be alone.", 1, 3

    .byte "@I'll make a few", 1
    .byte " phone calls and", 1
    .byte " wait out here.", 1, 0

sOhShoot:
    .byte "@Oh shoot!", 1
    .byte " I missed!", 1, 0

sLovedYou:
    .byte "@Oh "
    .byte $21
    .word $7478
    .byte ", I've", 1
    .byte " loved you for such", 1
    .byte " a long time.", 1, 3

    .byte "@I've loved you", 1
    .byte " since I saw you", 1
    .byte " in my dream.", 1, 0

sLoudNoises:
    .byte "@("
    .byte $21
    .word $7538
    .byte ")", 1
    .byte " Sorry to bother", 1
    .byte " you two...", 1, 3

    .byte "@but did you hear", 1
    .byte " those loud noises?", 1, 0

sNoises:
    .byte "@("
    .byte $21
    .word $7538
    .byte ")", 1
    .byte " Those noises", 1
    .byte " coming from outside,", 1, 3

    .byte "@not in here silly.", 1, 0

sBoatMotor:
    .byte "@The boat motor", 1
    .byte " appears to be", 1
    .byte " broken.", 1, 0

sAbleFixIt:
    .byte "@"
    .byte $21
    .word $670A
    .byte " just does", 1
    .byte " not seem to be", 1
    .byte " able to fix it.", 1, 0

sFired:
    .byte "@But "
    .byte $21
    .word $74F8
    .byte " fired", 1
    .byte " it right up.", 1, 0

sIllSend:
    .byte "@I'll send this", 1
    .byte " "
    .byte $21
    .word $6D04
    .byte " to", 1
    .byte " "
    .byte $21
    .word $7478
    .byte "'s house.", 1, 3

    .byte "@Is there anything", 1
    .byte " else you want me", 1
    .byte " to keep?", 1, 0

sClaustrophobia:
    .byte "@Not that I have", 1
    .byte " claustrophobia...", 1, 3

    .byte "@but I can't stand", 1
    .byte " small, close", 1
    .byte " spaces!", 1, 0

sSweetFactory:
    .byte "@ Sweet's Little", 1
    .byte "      Factory", 1, 0

sKidnapped:
    .byte "@I was kidnapped by", 1
    .byte " the Mother Ship.", 1
    .byte " Please help me!", 1, 0

sSpelled:
    .byte "@Are you sure that", 1
    .byte " it is spelled", 1
    .byte " correctly?", 1, 0

sOddSound:
    .byte "@The odd sound that", 1
    .byte " drove the animals", 1
    .byte " insane died down.", 1, 3

    .byte "@The Zoo once more", 1
    .byte " became a safe", 1
    .byte " place.", 1, 0

sMostPrized:
    .byte "@Be careful, that", 1
    .byte " tank is my most", 1
    .byte " prized possession.", 1, 0

sCollar:
    .byte "@There, on the dog's", 1
    .byte " collar, was the", 1
    .byte " Basement Key.", 1, 0

sNoisyMouse:
    .byte "@Hee Hee Hee...", 1
    .byte " I am the noisy", 1
    .byte " mouse.", 1, 3

    .byte "@Some buildings", 1
    .byte " you can enter,", 1
    .byte " some you cannot.", 1, 3

    .byte "@If the door is", 1
    .byte " round, or has a", 1
    .byte " sign, go on inside.", 1, 3

    .byte "@The rest of the", 1
    .byte " doors will not", 1
    .byte " open for you.", 1, 3

    .byte "@Bye!", 1, 0

sPsychicPower:
    .byte "@Teleportation is a", 1
    .byte " Psychic Power not", 1
    .byte " to be played with.", 1, 0

sILovedHim:
    .byte "@I loved him...", 1, 3

    .byte "@I loved him,", 1
    .byte " as if he was my", 1
    .byte " own child...", 1, 0

sWaggingTail:
    .byte "@He was always", 1
    .byte " wagging his tail,", 1
    .byte " just like a pup...", 1, 3

    .byte "@EXCEPT for when I", 1
    .byte " tried to SING him", 1
    .byte " lullabies...", 1, 0

sPurpose:
    .byte "@Ahhh...George!", 1
    .byte " This is your wife,", 1
    .byte " Maria.", 1, 3

    .byte "@I'm coming to join", 1
    .byte " you, my purpose is", 1
    .byte " complete...", 1, 0

sInsertCard:
    .byte "@Please insert your", 1
    .byte " Cash Card.", 1, 0

sDontMuchCash:
    .byte "@Don't carry so much", 1
    .byte " cash with you.", 1, 0

sDataSaved:
    .byte "@Is it all right to", 1
    .byte " go back to the", 1
    .byte " data SAVEd earlier?", 1, 0

sYouSaidYes:
    .byte "@You said ", $A6, "Yes", $A6, ",", 1
    .byte " but you don't have", 1
    .byte " it. Ah ha ha ha...", 1, 0

sBreath:
    .byte "@"
    .byte $21
    .word $7538
    .byte " seems to be", 1
    .byte " out of breath.", 1, 0

sAnyFriends:
    .byte "@You don't have any", 1
    .byte " friends to hand", 1
    .byte " the Goods to.", 1, 0

sPossession:
    .byte "@The "
    .byte $21
    .word $6D04
    .byte " is", 1
    .byte " once more in", 1
    .byte " your possession.", 1, 3

    .byte "@Is there anything", 1
    .byte " else you'd like", 1
    .byte " to take?", 1, 0



.segment "DIALOGS7"

sLoadTooGreat:
    .byte "@Can't someone else", 1
    .byte " carry that? Your", 1
    .byte " load is too great!", 1, 0

sClosetFull:
    .byte "@The closet is", 1
    .byte " full.", 1, 0

sMirage:
    .byte "@After telling the", 1
    .byte " story to "
    .byte $21
    .word $7478
    .byte ",", 1, 3

    .byte "@with a rush of", 1
    .byte " wind, Queen Mary", 1
    .byte " vanished.", 1, 3

    .byte "@As she disappeared,", 1
    .byte " so did Magicant.", 1, 3

    .byte "@Magicant was a", 1
    .byte " mirage...", 1, 3

    .byte "@A mirage born of", 1
    .byte " Maria's", 1
    .byte " consciousness.", 1, 0

sBraveChildren:
    .byte "@I am the one who", 1
    .byte " has called you.", 1, 3

    .byte "@"
    .byte $21
    .word $7478
    .byte ", "
    .byte $21
    .word $74B8
    .byte ",", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte ", and", 1
    .byte " "
    .byte $21
    .word $7538
    .byte "!", 1, 3

    .byte "@All of the brave", 1
    .byte " children.", 1, 3

    .byte "@Now is the time!", 1, 0

sCanDash:
    .byte "@What are you", 1
    .byte " staring at?", 1, 3

    .byte "@Here in Magicant", 1
    .byte " it's just like the", 1
    .byte " world outside.", 1, 3

    .byte "@Just leave me some", 1
    .byte " cash, then with the", 1
    .byte " Goods you can dash.", 1, 3

    .byte "@Hee Hee Hee.", 1, 0

sGetTrain:
    .byte "@Get on the train,", 1
    .byte " or you will have a", 1
    .byte " hard time like me.", 1, 0

sDoYouWant:
    .byte "@Do you want", 1
    .byte " anything else?", 1, 0

sMelodyForYou:
    .byte "@"
    .byte $21
    .word $670A
    .byte ",", 1
    .byte " Welcome...", 1, 3

    .byte "@I always believed", 1
    .byte " that you would", 1
    .byte " find your way here.", 1, 3

    .byte "@Your Great-Grand", 1
    .byte " Mother Maria's love", 1
    .byte " was scattered,", 1, 3

    .byte "@scattered in the", 1
    .byte " form of melodies.", 1, 3

    .byte "@I have a melody", 1
    .byte " for you. Listen", 1
    .byte " and remember...", 1, 0

sCrystal:
    .byte "@The crystal", 1
    .byte " fragments that had", 1
    .byte " broken off", 1, 3

    .byte "@stopped glowing and", 1
    .byte " disappeared..", 1, 0

sEmpty1:
    .byte 0

sEmpty2:
    .byte 0

sDidntDo:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " didn't do", 1
    .byte " anything.", 1, 0

sGave:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " gave", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte " to", 1
    .byte " "
    .byte $21
    .word $6D00
    .byte ".", 1, 0

sPut:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " put", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte " in", 1
    .byte " "
    .byte $21
    .word $6D00
    .byte "'s bag.", 1, 0

sPulled:
    .byte "@"
    .byte $21
    .word $6D00
    .byte " pulled", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte " from", 1
    .byte " "
    .byte $21
    .word $6D20
    .byte "'s bag.", 1, 0

sThrew:
    .byte "@"
    .byte $21
    .word $670A
    .byte " threw", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte " out of", 1
    .byte " "
    .byte $21
    .word $6D20
    .byte "'s bag.", 1, 0

sTook:
    .byte "@"
    .byte $21
    .word $670A
    .byte " took", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte " from", 1
    .byte " "
    .byte $21
    .word $6D20
    .byte "'s bag ", 1, 3

    .byte "@and placed it in", 1
    .byte " "
    .byte $21
    .word $6D00
    .byte "'s bag.", 1, 0

sAte:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " ate", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sDrank:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " drank", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sRecovered:
    .byte "@recovered by", 1
    .byte " "
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte ".", 1, 0

sIncreased:
    .byte "@increased by", 1
    .byte " "
    .byte $23
    .word word_2A
    .byte $02, $00
    .byte ".", 1, 0

sHPis:
    .byte "@"
    .byte $21
    .word $6D20
    .byte "'s HP is", 1, 0

sPPis:
    .byte "@"
    .byte $21
    .word $6D20
    .byte "'s PP is", 1, 0

sENERGYis:
    .byte "@"
    .byte $21
    .word $6D20
    .byte "'s ENERGY is", 1, 0

sSPEEDis:
    .byte "@"
    .byte $21
    .word $6D20
    .byte "'s SPEED is", 1, 0

sWISDOMis:
    .byte "@"
    .byte $21
    .word $6D20
    .byte "'s WISDOM is", 1, 0

sSTRENGTHis:
    .byte "@"
    .byte $21
    .word $6D20
    .byte "'s STRENGTH is", 1, 0

sFORCEis:
    .byte "@"
    .byte $21
    .word $6D20
    .byte "'s FORCE is", 1, 0

sTookHerb:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " took out a", 1
    .byte " Magic Herb from the", 1
    .byte " Big Bag and USEd it.", 1, 0

sDropping:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " started ", 1
    .byte " dropping the", 1
    .byte " Crumbs.", 1, 0

sYouCantUse:
    .byte "@You can't USE", 1
    .byte " Bread until old", 1
    .byte " Crumbs are USEd up.", 1, 0

sHeadTrail:
    .byte "@"
    .byte $21
    .word $670A
    .byte " returned", 1
    .byte " to the head of the", 1
    .byte " trail...", 1, 3

    .byte "@by following the", 1
    .byte " Crumbs that had", 1
    .byte " been dropped.", 1, 0

sTied:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " tied the", 1
    .byte " Ribbon into", 1
    .byte " her hair.", 1, 0

sTrue:
    .byte "@If that is true,", 1
    .byte " push the POWER off,", 1, 3

    .byte "@but remember to", 1
    .byte " hold in RESET!", 1, 0

sMeasured:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " measured the", 1
    .byte " lengths of many", 1
    .byte " things.", 1, 0

sWhenBigBag:
    .byte "@When the Big Bag", 1
    .byte " was emptied,", 1, 3

    .byte "@it disappeared", 1
    .byte " into thin air.", 1, 0

sReached:
    .byte "@The credit limit of", 1
    .byte " the Telephone Card", 1
    .byte " has been reached.", 1, 0

sNeutralized:
    .byte "@The poison was", 1
    .byte " neutralized from", 1
    .byte " "
    .byte $21
    .word $6D20
    .byte "'s body.", 1, 0

sRid:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " was rid", 1
    .byte " of the cold.", 1, 0

sSqueezed:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " squeezed", 1
    .byte " the PSI-Power", 1
    .byte " Stone.", 1, 0

sPSIPower:
    .byte "@The PSI-Power", 1
    .byte " Stone became an", 1
    .byte " ordinary stone.", 1, 0

sTried:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " tried", 1
    .byte " "
    .byte $21
    .word $6D24
    .byte ".", 1, 0

sPowerLeft:
    .byte "@There isn't enough", 1
    .byte " power left to try", 1
    .byte " that.", 1, 0

sScene:
    .byte "@"
    .byte $21
    .word $6D20
    .byte " has", 1
    .byte " returned to the", 1
    .byte " scene.", 1, 0

sTheDiary:
    .byte "@The Diary was hard", 1
    .byte " to read, but opened", 1
    .byte " up to this page...", 1, 3

    .byte "@(PASSWORD)", 1, 3

    .byte "@.... the one who", 1
    .byte " lost the tail.", 1, 3

    .byte "@The forgotten one...", 1
    .byte " ...the ship", 1
    .byte " that sails...", 1, 0

sBecame:
    .byte "@"
    .byte $21
    .word $6D00
    .byte " became", 1
    .byte " softened.", 1, 0

sTheOcarina:
    .byte "@The Ocarina", 1
    .byte " played on and on...", 1, 0

sDidYouHearIt:
    .byte "@Did you hear it?", 1, 0

sPlace:
    .byte "@This place is not", 1
    .byte " on the map.", 1, 0

sChecked:
    .byte "@"
    .byte $21
    .word $670A
    .byte " checked", 1
    .byte " the map.", 1, 0

sStopped:
    .byte "@Stopped by some", 1
    .byte " mysterious force.", 1, 0

sTheRepelRing:
    .byte "@The Repel Ring", 1
    .byte " has lost its", 1
    .byte " mysterious power.", 1, 0

sIllegal:
    .byte $A6, "This software is an illegal", 1
    .byte "copy of a Nintendo game. The", 1
    .byte "use, possession or sale of", 1
    .byte "this counterfeit cartridge", 1
    .byte "is illegal and infringes", 1
    .byte "Nintendo copyrights.", $A6, 1
    .byte "          Nintendo Co., Ltd.", 1
    .byte "          Kyoto, Japan /", 1
    .byte "          Redmond WA, USA.", 1
    .byte $A6, "This illegal copy of", 1
    .byte "NES EARTH BOUND will", 1
    .byte "no longer function.", $A6, 1, 0

sSpaces:
    .byte " ", 1
    .byte " ", 1
    .byte " ", 1
    .byte " ", 1, 0

sReunited:
    .byte "At the summit of Mt. Itoi,", 1
    .byte $21
    .word $74B8
    .byte " is reunited with her", 1
    .byte "mom as the rest of the freed", 1
    .byte "Earth people exit the cave.", 1, 0

sHealth:
    .byte " "
    .byte $21
    .word $7538
    .byte ", his health fully", 1
    .byte " recovered, now sings daily", 1
    .byte " at The Live Show.", 1, 0

sLonely:
    .byte "  The kidnapped grown-ups", 1
    .byte "  return to their lonely", 1
    .byte "  children in Youngtown.", 1, 0

sForget:
    .byte "("
    .byte $21
    .word $74B8
    .byte ")", 1
    .byte "I promise I won't forget you", 1
    .byte "so I will not say Good-Bye,", 1
    .byte "just - 'til we meet again!", 1, 0

sElementarySchool:
    .byte " "
    .byte $21
    .word $74F8
    .byte " returns to a hero's", 1
    .byte " welcome at Twinkle", 1
    .byte " Elementary School.", 1, 0

sNotHungry:
    .byte "Son, your sisters and I are", 1
    .byte "so happy to see you back in", 1
    .byte "one piece. How unbelievable", 1
    .byte "that you are not hungry.", 1, 0

sLetter:
    .byte " A letter from "
    .byte $21
    .word $7478
    .byte ",", 1
    .byte " I miss him so much. I hope", 1
    .byte " we can get together again", 1
    .byte " soon.", 1, 0

sFinally:
    .byte " Well, now that the Earth's", 1
    .byte " crisis is finally over, I", 1
    .byte " think I'll just lay down", 1
    .byte " for a moment and Zzzzzzzzz", 1, 0

sHome:
    .byte " I know that boy is home.", 1
    .byte " Come on son and answer the", 1
    .byte " phone. Something new has", 1
    .byte " come up and...", 1, 0

stru_20EE56:
    .byte $21
    .word $7420
    .byte 0

sSHIGESATOITOI:
    .byte "SHIGESATO ITOI", 0

sMIYUKIKURE:
    .byte "MIYUKI KURE", 0

sAKIOOHMORI:
    .byte "AKIO OHMORI", 0

sRITSUOKAMIMURA:
    .byte "RITSUO KAMIMURA", 0

sKEIICHISUZUKI:
    .byte "KEIICHI SUZUKI", 0

sHIROKAZUTANAKA:
    .byte "HIROKAZU TANAKA", 0

sSHINBOMINAMI:
    .byte "SHINBO MINAMI", 0

sTATSUYAISHII:
    .byte "TATSUYA ISHII", 0

sTOTTORI:
    .byte "TOTTORI", 0

sKAZUYANAKATANI:
    .byte "KAZUYA NAKATANI", 0

sTAKAYUKIONODERA:
    .byte "TAKAYUKI ONODERA", 0

sMOTOOYASUMA:
    .byte "MOTOO YASUMA", 0

sMASAYUKIKAMEYAMA:
    .byte "MASAYUKI KAMEYAMA", 0

sHIDEOKON:
    .byte "HIDEO KON", 0

sKATSUTOMOMAEIWA:
    .byte "KATSUTOMO MAEIWA", 0

sKUNIKOSAKURAI:
    .byte "KUNIKO SAKURAI", 0

sMASAHIROTATEMOTO:
    .byte "MASAHIRO TATEMOTO", 0

sTAKASHIKAWAGUCHI:
    .byte "TAKASHI KAWAGUCHI", 0

sKEIZOHKATOH:
    .byte "KEIZOH KATOH", 0

sMOTOHIROISHII:
    .byte "MOTOHIRO ISHII", 0

sAKIHITOTODA:
    .byte "AKIHITO TODA", 0

sYUKARISAITOH:
    .byte "YUKARI SAITOH", 0

sPHILSANDHOP:
    .byte "PHIL SANDHOP", 0

sTOSHIKOWATSON:
    .byte "TOSHIKO WATSON", 0

sYUKANAKATA:
    .byte "YUKA NAKATA", 0

sHIROKOFAULKNER:
    .byte "HIROKO FAULKNER", 0

sTONYHARMAN:
    .byte "TONY HARMAN", 0

sDAYVBROOKS:
    .byte "DAYV BROOKS", 0

sNORIYUKIMINAMI:
    .byte "NORIYUKI MINAMI", 0

sBINOHGAWARA:
    .byte "BIN OHGAWARA", 0

sYOSHIHISAWADA:
    .byte "YOSHIHISA WADA", 0

sHIKONORISUZUKI:
    .byte "HIKONORI SUZUKI", 0

sTAKAOSHIMIZU:
    .byte "TAKAO SHIMIZU", 0

sSHIGERUMIYAMOTO:
    .byte "SHIGERU MIYAMOTO", 0

sHIROSHIYAMAUCHI:
    .byte "HIROSHI YAMAUCHI", 0

sEmpty3:
    .byte 0



.segment "DIALOGS8"

sEmpty4:
    .byte 0

sBagFilled:
    .byte $A6, "Big Bag", $A6, 1
    .byte "@A bag filled with", 1
    .byte " Magic Herb.", 1, 0

sCharge:
    .byte $A6, "Telephone Card", $A6, 1
    .byte "@USE this handy card", 1
    .byte " to charge your phone", 1
    .byte " calls.", 1, 0

sBreadCrumbs:
    .byte $A6, "Bread Crumbs", $A6, 1
    .byte "@If you follow them,", 1, 3

    .byte "@you will return to", 1
    .byte " the place that you", 1
    .byte " started.", 1, 0

sStrangeRing:
    .byte $A6, "Repel Ring", $A6, 1
    .byte "@One look at this", 1
    .byte " strange ring", 1, 3

    .byte "@will drive away", 1
    .byte " weak enemies.", 1, 0

sEmpty5:
    .byte 0

sEmpty6:
    .byte 0

sEmpty7:
    .byte 0

sEmpty8:
    .byte 0

sEmpty9:
    .byte 0

sKnife:
    .byte $A6, "Butter Knife", $A6, 1
    .byte "@"
    .byte $21
    .word $7538
    .byte " can master", 1
    .byte " it.", 1, 0

sSurvivalKnife:
    .byte $A6, "Survival Knife", $A6, 1
    .byte "@Hey "
    .byte $21
    .word $7538
    .byte ", this is", 1
    .byte " stronger than an", 1
    .byte " ordinary Knife.", 1, 0

sSwordMaster:
    .byte $A6, "Sword", $A6, 1
    .byte "@Few people can", 1
    .byte " master it.", 1, 0

sJapaneseSword:
    .byte $A6, "Katana", $A6, 1
    .byte "@This Japanese sword", 1
    .byte " is the best "
    .byte $21
    .word $7538
    .byte 1
    .byte " has seen yet.", 1, 0

sStunGunUse:
    .byte $A6, "Stun Gun", $A6, 1
    .byte "@"
    .byte $21
    .word $74F8
    .byte 1
    .byte " seems to be able to", 1
    .byte " USE it.", 1, 0

sStrongWeapon:
    .byte $A6, "Air Gun", $A6, 1
    .byte "@A strong weapon,", 1, 3

    .byte "@but only "
    .byte $21
    .word $74F8
    .byte 1
    .byte " seems to be able to", 1
    .byte " USE it.", 1, 0

sPlasticBatUse:
    .byte $A6, "Plastic Bat", $A6, 1
    .byte "@This weapon is OK", 1
    .byte " for "
    .byte $21
    .word $7478
    .byte ". USE it!", 1, 0

sWoodenBatUse:
    .byte $A6, "Wooden Bat", $A6, 1
    .byte "@"
    .byte $21
    .word $7478
    .byte ", USE this", 1
    .byte " weapon to fight", 1
    .byte " with weak enemies.", 1, 0

sTougher:
    .byte $A6, "Aluminum Bat", $A6, 1
    .byte "@With this weapon", 1, 3

    .byte "@"
    .byte $21
    .word $7478
    .byte " can easily", 1
    .byte " fight tougher", 1
    .byte " enemies.", 1, 0

sAutographed:
    .byte $A6, "Hank's Bat", $A6, 1
    .byte "@This awesome bat", 1
    .byte " was personally", 1
    .byte " autographed.", 1, 0

sFryingPanUse:
    .byte $A6, "Frying Pan", $A6, 1
    .byte "@"
    .byte $21
    .word $74B8
    .byte " can USE", 1
    .byte " this weapon best.", 1, 0

sNonStickPan:
    .byte $A6, "Non-stick Pan", $A6, 1
    .byte "@A good weapon for", 1
    .byte " "
    .byte $21
    .word $74B8
    .byte ", with no", 1
    .byte " messy clean up.", 1, 0

sIronSkilletUse:
    .byte $A6, "Iron Skillet", $A6, 1
    .byte "@"
    .byte $21
    .word $74B8
    .byte " can USE this", 1
    .byte " heavy metal pan to", 1
    .byte " rock strong enemies.", 1, 0

sSlingshotUse:
    .byte $A6, "Slingshot", $A6, 1
    .byte "@A handy weapon,", 1
    .byte " that anyone can USE.", 1, 0

sBoomerangUse:
    .byte $A6, "Boomerang", $A6, 1
    .byte "@Be careful,", 1
    .byte " this isn't a toy.", 1, 3

    .byte "@Anyone can USE it", 1
    .byte " as a weapon.", 1, 0

sIrritating:
    .byte $A6, "Insecticide", $A6, 1
    .byte "@It has an irritating", 1
    .byte " effect on bugs.", 1, 0

sIndustrial:
    .byte $A6, "Super Spray", $A6, 1
    .byte "@Industrial strength", 1
    .byte " Insecticide.", 1, 0

sCritters:
    .byte $A6, "Flea Bag", $A6, 1
    .byte "@A bag of fleas and", 1
    .byte " other nasty", 1
    .byte " critters.", 1, 3

    .byte "@Throw at an enemy", 1
    .byte " and watch the", 1
    .byte " effect!", 1, 0

sWordsLove:
    .byte $A6, "Words of Love", $A6, 1
    .byte "@???", 1, 0

sSwear:
    .byte $A6, "Swear Words", $A6, 1
    .byte "@???", 1, 0

sStickyMachine:
    .byte $A6, "Sticky Machine", $A6, 1
    .byte "@It seems to be used", 1
    .byte " for fighting, but...", 1, 0

sOpposite:
    .byte $A6, "Flashdark", $A6, 1
    .byte "@The opposite of a", 1
    .byte " flashlight.", 1, 0

sEmpty10:
    .byte 0

sEmpty11:
    .byte 0

sFlameThrower:
    .byte $A6, "Flame Thrower", $A6, 1
    .byte "@Toasts the enemy,", 1
    .byte " but only "
    .byte $21
    .word $74F8
    .byte 1
    .byte " can use it.", 1, 0

sDetonate:
    .byte $A6, "Bomb", $A6, 1
    .byte "@Maybe only "
    .byte $21
    .word $74F8
    .byte 1
    .byte " can detonate it.", 1, 0

sBewareBlast:
    .byte $A6, "Super Bomb", $A6, 1
    .byte "@Written on the side", 1
    .byte " ", $A6, "Beware of blast", $A6, ",", 1, 3

    .byte "@only "
    .byte $21
    .word $74F8
    .byte " can", 1
    .byte " use it.", 1, 0

sSissy:
    .byte $A6, "Laser Beam", $A6, 1
    .byte "@It helps that sissy", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte ".", 1, 0

sWeenie:
    .byte $A6, "Plasma Beam", $A6, 1
    .byte "@It helps that weenie", 1
    .byte " "
    .byte $21
    .word $74F8
    .byte " quite a lot.", 1, 0

sEmpty12:
    .byte 0

sEnemyUp:
    .byte $A6, "Rope", $A6, 1
    .byte "@Use it to tie the", 1
    .byte " enemy up.", 1, 0

sEmpty13:
    .byte 0

sEmpty14:
    .byte 0

sEmpty15:
    .byte 0

sEmpty16:
    .byte 0

sPeaceCoinUse:
    .byte $A6, "Peace Coin", $A6, 1
    .byte "@When you USE it,", 1
    .byte " DEFENSE goes up a", 1
    .byte " little bit.", 1, 0

sProtectionCoin:
    .byte $A6, "Protection Coin", $A6, 1
    .byte "@When you USE it,", 1
    .byte " DEFENSE goes up.", 1, 0

sMagicCoinUse:
    .byte $A6, "Magic Coin", $A6, 1
    .byte "@When you USE it,", 1
    .byte " DEFENSE really goes", 1
    .byte " up.", 1, 0

sBrassRingUse:
    .byte $A6, "Brass Ring", $A6, 1
    .byte "@When you USE it,", 1
    .byte " DEFENSE goes up a", 1
    .byte " bit.", 1, 0

sSilverRingUse:
    .byte $A6, "Silver Ring", $A6, 1
    .byte "@When you USE it,", 1
    .byte " DEFENSE goes up.", 1, 0

sGoldRingUse:
    .byte $A6, "Gold Ring", $A6, 1
    .byte "@When you USE it,", 1
    .byte " DEFENSE really goes", 1
    .byte " up.", 1, 0

sWaterPendant:
    .byte $A6, "H2o Pendant", $A6, 1
    .byte "@When you USE it,", 1
    .byte " it will defend", 1
    .byte " against PK Fire.", 1, 0

sFirePendantUse:
    .byte $A6, "Fire Pendant", $A6, 1
    .byte "@When you USE it,", 1
    .byte " it will defend", 1
    .byte " against PK Freeze.", 1, 0

sEarthPendant:
    .byte $A6, "Earth Pendant", $A6, 1
    .byte "@When you USE it,", 1
    .byte " it will defend", 1
    .byte " against PK Thunder.", 1, 0

sSeaPendantUse:
    .byte $A6, "Sea Pendant", $A6, 1
    .byte "@When you USE it,", 1, 3

    .byte "@it will defend", 1
    .byte " against", 1
    .byte " all PSI attack.", 1, 0

sEmpty17:
    .byte 0

sEmpty18:
    .byte 0

sEmpty19:
    .byte 0

sEmpty20:
    .byte 0

sEmpty21:
    .byte 0

sVitaminC:
    .byte $A6, "Orange Juice", $A6, 1
    .byte "@Vitamin C is always", 1
    .byte " good for a few HP.", 1, 0

sEaten:
    .byte $A6, "French Fries", $A6, 1
    .byte "@EATen with or", 1
    .byte " without catsup,", 1
    .byte " your HP will rise.", 1, 0

sMagicHerbUse:
    .byte $A6, "Magic Herb", $A6, 1
    .byte "@When you are tired", 1
    .byte " or injured, USE it.", 1, 0

sFastFood:
    .byte $A6, "Hamburger", $A6, 1
    .byte "@Fast food for some", 1
    .byte " fast HP.", 1, 0

sStrengthen:
    .byte $A6, "Sports Drink", $A6, 1
    .byte "@No matter how tired", 1
    .byte " you are, one bottle", 1
    .byte " will strengthen you.", 1, 0

sLifeUpCreamUse:
    .byte $A6, "Life Up Cream", $A6, 1
    .byte "@USEd to heal wounds.", 1, 0

sAsthmaAttacks:
    .byte $A6, "Asthma Spray", $A6, 1
    .byte "@When "
    .byte $21
    .word $7478
    .byte "'s", 1
    .byte " asthma attacks,", 1
    .byte " spray this.", 1, 0

sAntidotePoison:
    .byte $A6, "Antidote", $A6, 1
    .byte "@It neutralizes", 1
    .byte " poison quickly.", 1, 0

sYouGargle:
    .byte $A6, "Mouthwash", $A6, 1
    .byte "@If you gargle with", 1
    .byte " it, you will lose", 1
    .byte " your cold.", 1, 0

sStrawBerryEat:
    .byte $A6, "StrawBerry Tofu", $A6, 1
    .byte "@If you really want", 1
    .byte " to eat it OK, but...", 1, 0

sEmpty22:
    .byte 0

sBreadTrail:
    .byte $A6, "Bread", $A6, 1
    .byte "@OK to eat it,", 1
    .byte " but its CRUMBS can", 1
    .byte " be used", 1, 3

    .byte "@to mark your trail.", 1, 0

sNobleSeedUse:
    .byte $A6, "Noble Seed", $A6, 1
    .byte "@USE this to cancel", 1
    .byte " the Wicked Seed.", 1, 0

sPSISolid:
    .byte $A6, "PSI Stone", $A6, 1
    .byte "@PSI Power in solid", 1
    .byte " form.", 1, 0

sEmpty23:
    .byte 0

sMagicForce:
    .byte $A6, "Magic Ribbon", $A6, 1
    .byte "@With this FORCE", 1
    .byte " will rise a bit.", 1, 3

    .byte "@This is for a girl", 1
    .byte " to tie in her hair.", 1, 0

sMagicCandyEat:
    .byte $A6, "Magic Candy", $A6, 1
    .byte "@If the sissy boy", 1
    .byte " EATs this his", 1
    .byte " FIGHT rise some.", 1, 0

sEmpty24:
    .byte 0

sQuickCapsule:
    .byte $A6, "Quick Capsule", $A6, 1
    .byte "@Take this capsule to", 1
    .byte " raise your SPEED.", 1, 0

sWisdomCapsule:
    .byte $A6, "Wisdom Capsule", $A6, 1
    .byte "@Take this capsule to", 1
    .byte " raise your WISDOM.", 1, 0

sPhysicalCapsule:
    .byte $A6, "Physical Capsule", $A6, 1
    .byte "@Take this capsule to", 1
    .byte " raise your STRENGTH.", 1, 0

sForceCapsule:
    .byte $A6, "Force Capsule", $A6, 1
    .byte "@Take this capsule to", 1
    .byte " raise your FORCE.", 1, 0

sFightCapsule:
    .byte $A6, "Fight Capsule", $A6, 1
    .byte "@Take this capsule to", 1
    .byte " raise your FIGHT.", 1, 0

sEmpty25:
    .byte 0

sEmpty26:
    .byte 0

sBasementKeyUse:
    .byte $A6, "Basement Key", $A6, 1
    .byte "@USE this Key to", 1
    .byte " unlock the basement", 1
    .byte " door.", 1, 0

sUnlockGate:
    .byte $A6, "Zoo Key", $A6, 1
    .byte "@This Key will unlock", 1
    .byte " the main gate at", 1
    .byte " the City Zoo.", 1, 0

sGhostHouseKey:
    .byte $A6, "Ghost House Key", $A6, 1
    .byte "@This is the Key to", 1
    .byte " the Rosemarys' house.", 1, 0

sGreatGrandFathers:
    .byte $A6, "Great-Grand Father's", 1
    .byte " Diary", $A6, 1
    .byte "@It is old,", 1
    .byte " ragged, and filled", 1
    .byte " with entries.", 1, 0

sEmployee:
    .byte $A6, "Pass", $A6, 1
    .byte "@Printed on it,", 1
    .byte " ", $A6, "Duncan Factory", 1
    .byte " Employee", $A6, ".", 1, 0

sRocknRoll:
    .byte $A6, "Ticket", $A6, 1
    .byte "@Printed on it,", 1, 3

    .byte "@", $A6, "Rock'n Roll all", 1
    .byte " night and every day", 1
    .byte " at The Live Show", $A6, ".", 1, 0

sEmpty27:
    .byte 0

sEmpty28:
    .byte 0

sEmpty29:
    .byte 0

sEmpty30:
    .byte 0

sCanaryChickEyes:
    .byte $A6, "Canary Chick", $A6, 1
    .byte "@Its eyes show", 1
    .byte " sadness.", 1, 0

sEmpty31:
    .byte 0

sBottleRocket:
    .byte $A6, "Bottle Rocket", $A6, 1
    .byte "@"
    .byte $21
    .word $74F8
    .byte " seems to", 1
    .byte " know how to use it.", 1, 0

sPrettyHat:
    .byte $A6, "Hat", $A6, 1
    .byte "@A pretty hat", 1
    .byte " embroidered with", 1
    .byte " the name "
    .byte $21
    .word $74B8
    .byte ".", 1, 0

sBrush:
    .byte $A6, "Dentures", $A6, 1
    .byte "@Brush, floss and see", 1
    .byte " your dentist and", 1, 3

    .byte "@you won't have to", 1
    .byte " own a pair.", 1, 0

sSaveTen:
    .byte $A6, "Ticket Stub", $A6, 1
    .byte "@Printed on it,", 1, 3

    .byte "@", $A6, "Save ten of these", 1
    .byte " for a complimentary", 1
    .byte " tank ride", $A6, ".", 1, 0

sEmpty32:
    .byte 0

sCatchyTune:
    .byte $A6, "Ocarina", $A6, 1
    .byte "@It can play a catchy", 1
    .byte " tune.", 1, 0

sEmpty33:
    .byte 0

sFranklinBadge:
    .byte $A6, "Franklin Badge", $A6, 1
    .byte "@Legend says that", 1
    .byte " Ben Franklin wore", 1, 3

    .byte "@this reflective", 1
    .byte " badge during his", 1, 3

    .byte "@experiments with", 1
    .byte " lightning.", 1, 0

sEmpty34:
    .byte 0

sEmpty35:
    .byte 0

sOnyxHookWarp:
    .byte $A6, "Onyx Hook", $A6, 1
    .byte "@As long as you have", 1
    .byte " it, you can warp", 1
    .byte " back to Magicant.", 1, 0

sLastWeaponAsk:
    .byte $A6, "Last Weapon", $A6, 1
    .byte "@???", 1, 0

sRulerInches:
    .byte $A6, "Ruler", $A6, 1
    .byte "@It is 12 inches long.", 1, 0

sCashCardUse:
    .byte $A6, ""
    .byte $21
    .word $7478
    .byte "'s Cash Card", $A6, 1
    .byte "@Use it for all your", 1
    .byte " banking needs.", 1, 0

sRedWeedLike:
    .byte $A6, "Red Weed", $A6, 1
    .byte "@It looks like just", 1
    .byte " grass, but...", 1, 0

sAmplified:
    .byte $A6, "Bullhorn", $A6, 1
    .byte "@Your amplified", 1
    .byte " voice may intimidate", 1
    .byte " an enemy.", 1, 0

sEmpty36:
    .byte 0

sEmpty37:
    .byte 0

sEmpty38:
    .byte 0

sEmpty39:
    .byte 0

sEmpty40:
    .byte 0

sEmpty41:
    .byte 0

sEmpty42:
    .byte 0

sEmpty43:
    .byte 0

sEmpty44:
    .byte 0

sEmpty45:
    .byte 0

sEmpty46:
    .byte 0

sEmpty47:
    .byte 0

sEmpty48:
    .byte 0

sEmpty49:
    .byte 0

sDbg:
    .byte $A6, "Debug", $A6, 1
    .byte "@.......", 1, 0

sEmpty50:
    .byte 0

sFightRun:
    .byte "Should you fight, or", 1
    .byte "run?", 0

sImportantSecret:
    .byte "It seems to have an", 1
    .byte "important secret.", 0

sDefeat:
    .byte "It there any way to", 1
    .byte "defeat him?", 0

sDontLetStop:
    .byte "Don't let him stop", 1
    .byte "and unpack his trunk!", 0

sPorridge:
    .byte "Somebody ate his", 1
    .byte "porridge, and he isn't", 1
    .byte "too happy about it!", 0

sSurprised:
    .byte "Surprised? It really", 1
    .byte "does exist!", 0

sAsthmatic:
    .byte "Be careful of its", 1
    .byte "exhaust if you are", 1
    .byte "asthmatic.", 0

sHypnotism:
    .byte "Hypnotism does not", 1
    .byte "work on this robot.", 0

sSpecialArmor:
    .byte "Special armor protects", 1
    .byte "from PSI attack.", 0

sAwful:
    .byte "It has, the awful", 1
    .byte "Stone of Origin.", 0

sNotExist:
    .byte "Something like this", 1
    .byte "should not exist on", 1
    .byte "the earth...", 0

sPrimate:
    .byte "Don't let this primate", 1
    .byte "punk pick on you!", 0

sFace:
    .byte "A face only a mother", 1
    .byte "could love.", 0

sWatchThoseEyes:
    .byte "Watch those eyes!", 0

sNoOne:
    .byte "No one is in the", 1
    .byte "driver's seat.", 0

sStrong:
    .byte "It has strong", 1
    .byte "friends.", 0

sShell:
    .byte "Its shell is", 1
    .byte "unbelievably hard.", 0

sHhypnotism:
    .byte "It uses hypnotism.", 0

sEmpty51:
    .byte 0

sQuickness:
    .byte "Its quickness is the", 1
    .byte "source of its pride.", 0

sPearly:
    .byte "Watch out for those", 1
    .byte "pearly whites.", 0

sThief:
    .byte "That thief!!", 0

sInvitation:
    .byte "Don't accept his", 1
    .byte "invitation to dinner.", 0

sFuel:
    .byte "A walking fuel", 1
    .byte "supply.", 0

sGuarding:
    .byte "It seems to be", 1
    .byte "guarding something.", 0

sFBI:
    .byte "He can be found", 1
    .byte "on the FBI's", 1
    .byte "most wanted list.", 0

sRotten:
    .byte "Maybe he is not", 1
    .byte "really rotten to", 1
    .byte "the core.", 0

sMalnourishedRobot:
    .byte "A malnourished robot?", 0

sTricked:
    .byte "Do not be tricked by", 1
    .byte "her smile.", 0

sStarsMan:
    .byte "A man from the stars.", 0

sNaturally:
    .byte "This thing could not", 1
    .byte "occur naturally", 0

sEvilLab:
    .byte "What evil lab has", 1
    .byte "manufactured this", 1
    .byte "mobile brain.", 0

sPSIAttack:
    .byte "It uses various PSI", 1
    .byte "attack.", 0

sArmorOwn:
    .byte "It would be nice to", 1
    .byte "have armor of your", 1
    .byte "own.", 0

sAnimatedTree:
    .byte "An animated tree with", 1
    .byte "suspicious actions.", 0

sTemper:
    .byte "He has a short temper,", 1
    .byte "so be careful.", 0

sFlowers:
    .byte "He looks like he could", 1
    .byte "grow flowers in his", 1
    .byte "hair.", 0

sFridge:
    .byte "Her refrigerator", 1
    .byte "shaped body holds a", 1
    .byte "heart of ice.", 0

sBadApple:
    .byte "A real bad apple,", 1
    .byte "stay out of his way.", 0

sTwisted:
    .byte "His twisted face", 1
    .byte "covers his twisted", 1
    .byte "mind.", 0

sEmpty52:
    .byte 0

sSmash:
    .byte "Careful, his 'Smash", 1
    .byte "Hit'is quite", 1
    .byte "effective.", 0

sSneak:
    .byte "Watch out for further", 1
    .byte "sneak attacks.", 0

sWallet:
    .byte "Watch your wallet and", 1
    .byte "count your change,", 1
    .byte "he's a thief.", 0

sNotPoison:
    .byte "It might not poison,", 1
    .byte "maybe...", 0

sLaughsLast:
    .byte "He who laughs last", 1
    .byte "laughs best.", 0

sPetCat:
    .byte "It is quite different", 1
    .byte "than a pet cat.", 0

sExterminate:
    .byte "Exterminate with", 1
    .byte "Insecticide.", 0

sAHCho:
    .byte "AHH-Choooo!!", 0

sEffective:
    .byte "Insecticide is", 1
    .byte "effective.", 0

sYoullWantTry:
    .byte "You'll want to try", 1
    .byte "Insecticide.", 0

sPoisonous:
    .byte "It's poisonous, but", 1
    .byte "Insecticide works.", 0

sDontLetYourself:
    .byte "Don't let yourself", 1
    .byte "get tied up fighting", 1
    .byte "this guy.", 0

sComicBook:
    .byte "It looks like it", 1
    .byte "jumped out of a comic", 1
    .byte "book.", 0

sDraw:
    .byte "This enemy's face is", 1
    .byte "the easiest to draw.", 0

sIdentity:
    .byte "If he was a mask,", 1
    .byte "someone might mistake", 1
    .byte "your identity.", 0

sOrdinaryGhost:
    .byte "Just an ordinary", 1
    .byte "ghost.", 0

sDinnerPlate:
    .byte "Only as big as a", 1
    .byte "dinner plate.", 0

sPuzzle:
    .byte "Life itself is a", 1
    .byte "puzzle for Mr.Bat.", 0

sSpaceman:
    .byte "He is small, but it is", 1
    .byte "obvious that he is a", 1
    .byte "spaceman.", 0

sHoldYourNose:
    .byte "Hold your nose!", 0

sLastStrike:
    .byte "An evil, caped Zombie.", 1
    .byte "Beware, his", 1
    .byte "'Last strike' could", 1
    .byte "be devastating.", 0

sRatTail:
    .byte "A big rat, with a tail", 1
    .byte "this long.", 0

sEgg:
    .byte "Shaped like an egg,", 1
    .byte "but a little tougher.", 0

sEmpty53:
    .byte 0

sStares:
    .byte "It stares back at", 1
    .byte "you.", 0

sHovers:
    .byte "It hovers in the", 1
    .byte "air!", 0

sEmpty54:
    .byte 0

sEmpty55:
    .byte 0

sStrongPoison:
    .byte "It's strong poison", 1
    .byte "was developed in a", 1
    .byte "laboratory.", 0

sBeware:
    .byte "Beware of its poison", 1
    .byte "and Stone of Origin.", 0

sEmpty56:
    .byte 0

sEmpty57:
    .byte 0

sGoodExperience:
    .byte "Good experience, if it", 1
    .byte "doesn't run.", 0

sDoesntFriends:
    .byte "It seems that it does", 1
    .byte "not have any friends.", 0

sChairBroken:
    .byte "His chair was broken,", 1
    .byte "and he isn't very", 1
    .byte "happy!", 0

sEmpty58:
    .byte 0

sEmpty59:
    .byte 0

sEmpty60:
    .byte 0

sEmpty61:
    .byte 0

sWhereAntidote:
    .byte "Where's that", 1
    .byte "antidote.", 0

sPoisonPoison:
    .byte "Poison, poison,", 1
    .byte "poison.", 0

sDontSmile:
    .byte "If he smiles, don't", 1
    .byte "smile back.", 0

sEmpty62:
    .byte 0

sHisFace:
    .byte "Its father won't even", 1
    .byte "look at his face.", 0

sEmpty63:
    .byte 0

sOriginStone:
    .byte "Beware of its Stone", 1
    .byte "of Origin.", 0

sFleas:
    .byte "I wonder if it carries", 1
    .byte "fleas?", 0

sCar:
    .byte "Hypnotism does not", 1
    .byte "work on the car.", 0

sVehicle:
    .byte "Hypnotism does not", 1
    .byte "work on this vehicle.", 0

sNext:
    .byte "What is going to", 1
    .byte "happen next, speeding,", 1
    .byte "reckless driving, or..", 0

sDontAlarm:
    .byte "Don't alarm this", 1
    .byte "ghost, he has", 1
    .byte "friends!", 0

sEmpty64:
    .byte 0

sOptometrists:
    .byte "The optometrists", 1
    .byte "favorite.", 0

sWatchYourStep:
    .byte "Watch your step,", 1
    .byte "Dadseyes are every", 1
    .byte "where.", 0

sMomseyesWillSpot:
    .byte "Momseyes will spot", 1
    .byte "you for sure!", 0

sEmpty65:
    .byte 0

sEmpty66:
    .byte 0

sFriends:
    .byte "It has friends!", 0



.segment "DIALOGS9"

sEmpty67:
    .byte 0

sHePKBeam:
    .byte "He only has PK Beam.", 0

sStrongOx:
    .byte "As strong as on ox.", 0

sRagged:
    .byte "Ragged around the", 1
    .byte "edges, but do not", 1
    .byte "underestimate it.", 0

sTheLatest:
    .byte "The latest in the", 1
    .byte "product line.", 0

sManhole:
    .byte "This is as big as a", 1
    .byte "manhole cover.", 0

sBeauty:
    .byte "Do not be tricked by", 1
    .byte "her beauty.", 0

sCarries:
    .byte "It carries, and", 1
    .byte "likes to use Bombs.", 0

sPlenty:
    .byte "There is a plenty of", 1
    .byte "fuel inside.", 0

sStrongPSIAttack:
    .byte "She is good at, and", 1
    .byte "not afraid to use a", 1
    .byte "strong PSI attack.", 0

sHisPurpose:
    .byte "His sole purpose is", 1
    .byte "to keep travelers", 1
    .byte "from passing through", 1
    .byte "the cave.", 0

sFreeze:
    .byte "It likes to use PK", 1
    .byte "Freeze.", 0

sBeatIt:
    .byte "If you can beat it,", 1
    .byte "that is great.", 0

sUsingPSI:
    .byte "Not only will it", 1
    .byte "attack using PSI,", 1
    .byte "it is a thief!", 0

sEmpty68:
    .byte 0

sCareful:
    .byte "Careful, he knows", 1
    .byte "'Brain Shock'.", 0

sBareHands:
    .byte $A6, "It attacks with", 1
    .byte "bare hands.", $A6, 0

sCoat:
    .byte "Its marvelous silver", 1
    .byte "coat glistens and", 1
    .byte "gleams.", 0

sHuge:
    .byte "He is absolutely huge!", 0

sMustSleep:
    .byte "If you must sleep,", 1
    .byte "don't borrow his bed!", 0

sImproved:
    .byte "New and unfortunately,", 1
    .byte "improved.", 0

sTheStrongest:
    .byte "The strongest of", 1
    .byte "the Starmen.", 0

sEmpty69:
    .byte 0

sPos:
    .byte $20, $08, $06

sFill:
    .byte $22, $A0, $10
    .byte $20, $08, $07
    .byte $22, $A0, $10
    .byte 0

sDrewNear:
    .byte $21
    .word $0580
    .byte 1
    .byte " drew near!", 0

sAttack:
    .byte $21
    .word $0580
    .byte "'s attack!", 0

sTankGun:
    .byte $21
    .word $0580
    .byte " fired the", 1
    .byte "tank gun!", 0

sBit:
    .byte $21
    .word $0580
    .byte " bit", 1
    .byte $21
    .word $0588
    .byte "!", 0

sScratched:
    .byte $21
    .word $0580
    .byte " scratched", 1
    .byte $21
    .word $0588
    .byte "!", 0

sCharged:
    .byte $21
    .word $0580
    .byte " charged", 1
    .byte "at "
    .byte $21
    .word $0588
    .byte "!", 0

sRanOut:
    .byte $21
    .word $0580
    .byte " ran out", 1
    .byte "of control!", 0

sLastBlow:
    .byte $21
    .word $0580
    .byte "'s", 1
    .byte "last blow!!!", 0

sForm:
    .byte "The form of", 1
    .byte $21
    .word $0580
    .byte "'s attack", 1
    .byte "was inexplicable!", 0

sSpit:
    .byte $21
    .word $0580
    .byte " spit a", 1
    .byte "sticky substance!", 0

sBound:
    .byte $21
    .word $0580
    .byte " is bound", 1
    .byte "tightly.", 0

sStrangeCry:
    .byte $21
    .word $0580
    .byte " let out", 1
    .byte "a strange cry!", 0

sDarlingSmile:
    .byte $21
    .word $0580
    .byte " smiled", 1
    .byte "a darling smile.", 0

sRage:
    .byte $21
    .word $0580
    .byte " flew into", 1
    .byte "a rage!", 0

sConfused:
    .byte $21
    .word $0580
    .byte " made", 1
    .byte $21
    .word $0588
    .byte " confused!", 0

sCriedOut:
    .byte $21
    .word $0580
    .byte " cried out", 1
    .byte "for help!", 0

sSowed:
    .byte $21
    .word $0580
    .byte " sowed", 1
    .byte "its seed!", 0

sStarted:
    .byte $21
    .word $0580
    .byte " started", 1
    .byte "laughing!", 0

sUttered:
    .byte $21
    .word $0580
    .byte " uttered", 1
    .byte "threatening words!", 0

sDirtyWords:
    .byte $21
    .word $0580
    .byte " uttered", 1
    .byte "dirty words!", 0

sGrins:
    .byte $21
    .word $0580
    .byte " just", 1
    .byte "grins, and bears it.", 0

sSoConfused:
    .byte $21
    .word $0580
    .byte " is so", 1
    .byte "confused.", 0

sIsAsleep:
    .byte $21
    .word $0580
    .byte " is", 1
    .byte "asleep.", 0

sEnergy:
    .byte $21
    .word $0580
    .byte "'s energy", 1
    .byte "has flowed into", 1
    .byte $21
    .word $0588
    .byte "!", 0

sRanAway:
    .byte $21
    .word $0580
    .byte " ran away!", 0

sDidntWork:
    .byte "...But it didn't work", 1
    .byte "out.", 0

sTripped:
    .byte $21
    .word $0580
    .byte 1
    .byte "tripped and fell.", 0

sCantMove:
    .byte $21
    .word $0580
    .byte " can't", 1
    .byte "move.", 0

sTurned:
    .byte $21
    .word $0580
    .byte " turned", 1
    .byte "into a stone.", 0

sPuffed:
    .byte $21
    .word $0580
    .byte " puffed a", 1
    .byte "cloud of exhaust gas!", 0

sWheeze:
    .byte $21
    .word $0580
    .byte " had an", 1
    .byte "asthma attack.", 1
    .byte "Wheeze...", 0

sMeditating:
    .byte $21
    .word $0580
    .byte " is", 1
    .byte "meditating.", 0

sSaid:
    .byte $21
    .word $0580
    .byte " said", 1
    .byte $A6, "Hello", $A6, ", then just", 1
    .byte "walked away.", 0

sReady:
    .byte $21
    .word $0580
    .byte " is ready", 1
    .byte "for an attack.", 0

sSang:
    .byte $21
    .word $0580
    .byte " sang the", 1
    .byte "song!", 0

sIsGuarding:
    .byte $21
    .word $0580
    .byte " is", 1
    .byte "guarding.", 0

sApproached:
    .byte $21
    .word $0580
    .byte 1
    .byte "approached slowly!", 0

sUSEd:
    .byte $21
    .word $0580
    .byte " USEd", 1
    .byte $21
    .word $0590
    .byte "!", 0

sTtried:
    .byte $21
    .word $0580
    .byte " tried", 1
    .byte $21
    .word $0590
    .byte "!", 0

sCcantUse:
    .byte $21
    .word $0580
    .byte " can't USE", 1
    .byte $21
    .word $0590
    .byte "!", 0

sCircumstances:
    .byte $21
    .word $0580
    .byte " is", 1
    .byte "thinking about the", 1
    .byte "circumstances.", 0

sSomethingStrange:
    .byte $21
    .word $0580
    .byte " did", 1
    .byte "something strange.", 0

sDayDreaming:
    .byte $21
    .word $0580
    .byte " is", 1
    .byte "day-dreaming.", 0

sCHECKed:
    .byte $21
    .word $0580
    .byte " CHECKed", 1
    .byte $21
    .word $0588
    .byte ".", 0

sWickedSeed:
    .byte $21
    .word $0580
    .byte " used", 1
    .byte "the Wicked Seed!", 0

sGas:
    .byte $21
    .word $0580
    .byte " used a", 1
    .byte "paralizing gas!", 0

sTookAway:
    .byte $21
    .word $0580
    .byte " took away", 1
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte $21
    .word $0590
    .byte "!", 0

sEscapedRope:
    .byte $21
    .word $0580
    .byte " escaped", 1
    .byte "from the Rope.", 0

sWokeUp:
    .byte $21
    .word $0580
    .byte " woke up.", 0

sZAP:
    .byte "ZAP!!!", 0

sContinuousAttack:
    .byte "Continuous attack!", 0

sYOUWIN:
    .byte 1
    .byte "       YOU WIN!", 1, 0

sLose:
    .byte 1
    .byte "You lost the battle.", 1, 0

sLingers:
    .byte 1
    .byte "The battle lingers on.", 1, 0

sTankBroken:
    .byte "The tank is broken.", 0

sAgainstFire:
    .byte $FF, " Strong against", 1
    .byte "  PK Fire.", 0

sAgainstFreeze:
    .byte $FF, " Strong against", 1
    .byte "  PK Freeze.", 0

sAgainstThunder:
    .byte $FF, " Strong against", 1
    .byte "  PK Thunder.", 0

sAgainstBeam:
    .byte $FF, " Strong against", 1
    .byte "  PK Beam.", 0

sWeakSprays:
    .byte $FF, " Weak against", 1
    .byte "  Sprays.", 0

sOFFENSE:
    .byte $FF, " OFFENSE "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sDEFENSE:
    .byte $FF, " DEFENSE "
    .byte $23
    .word $0592
    .byte $02, $00
    .byte ".", 0

sGrateful:
    .byte " "
    .byte $21
    .word $7478
    .byte "!", 1, 3

    .byte " I am grateful to", 1
    .byte " your family.", 1, 3
    .byte 2

sYourGreat:
    .byte " Your Great-", 1
    .byte " Grandparents,", 1, 3

    .byte " George and Maria", 1
    .byte " raised me.", 1, 3
    .byte 2

sGeorgeStole:
    .byte " But, George stole", 1
    .byte " vital information", 1, 3

    .byte " from our planet", 1
    .byte " that can be used", 1, 3

    .byte " to betray my", 1
    .byte " people...", 1, 3
    .byte 2

sDescendants:
    .byte " And now, one of his", 1
    .byte " descendants", 1, 3

    .byte " is obstructing", 1
    .byte " our plans,", 1, 3

    .byte " and must be", 1
    .byte " stopped!!", 1, 3

    .byte " "
    .byte $21
    .word $7478
    .byte "!", 1
    .byte " I am talking about", 1
    .byte " you!", 1, 3
    .byte 2

sGoHomeNow:
    .byte " Go home now!", 1, 3

    .byte " Perish with the", 1
    .byte " rest of the ugly", 1, 3

    .byte " Earth People.", 1, 3
    .byte 2

sFoolish:
    .byte " Foolish one, you", 1
    .byte " cannot do a thing", 1, 3

    .byte " with your meager", 1
    .byte " powers...", 1, 3

    .byte " Powers worthy of", 1
    .byte " a lowly insect.", 1, 3
    .byte 2

sYouAlone:
    .byte " "
    .byte $21
    .word $7478
    .byte "!", 1
    .byte " You alone,", 1, 3

    .byte " I may save you.", 1
    .byte " Just you alone.", 1, 3

    .byte " Board our", 1
    .byte " Mother Ship with me.", 1, 3
    .byte 2

sFallSleep:
    .byte " ...then, fall into", 1
    .byte " long sleep", 1, 3

    .byte " with your friends", 1, 3

    .byte " and the other ugly", 1
    .byte " Earth People.", 1, 3
    .byte 2

sStopSinging:
    .byte " Stop singing.", 0

sSTOPSinging:
    .byte " STOP singing!", 0

sSTOP:
    .byte " STOP!", 1
    .byte " Stop the song!", 0

sSTOPIT:
    .byte " STOP IT!!", 1
    .byte " STOP THAT SONG!", 0

sPuny:
    .byte " You puny little", 1
    .byte " Earth bugs!", 1
    .byte " Shut up, and", 1
    .byte " STOP singing!!", 0

sTheSONG:
    .byte " The SONG...", 0

sSTOPIt:
    .byte " STOP IT!!!", 0

sExclamation:
    .byte " !!!!!", 0

sStop:
    .byte " Stop...", 1
    .byte " Pleeease, stop!", 0

sAcclamation:
    .byte " !!!!!!!", 0

sPoints:
    .byte " ........", 0

sBeDefeated:
    .byte " How could I be", 1
    .byte " defeated", 1, 3

    .byte " by a song", 1
    .byte " like that?", 1, 3
    .byte 2

sIWill:
    .byte " I will...", 1
    .byte " sometime...", 1, 3
    .byte 2

sMeetAgain:
    .byte " "
    .byte $21
    .word $7478
    .byte "!", 1
    .byte " We SHALL meet again!", 1, 3
    .byte 2

sDodged:
    .byte " "
    .byte $21
    .word $0588
    .byte " dodged", 1
    .byte " swiftly.", 0

sSMAAAASH:
    .byte "  ", $97, $98, $99, $9A, $9B, $9C, $9D, $9E, $9F, 0 ;   SMAAAASH!

sSuffered:
    .byte " "
    .byte $21
    .word $0588
    .byte " suffered", 1
    .byte " "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte " damage.   ", 0

sDefeated:
    .byte " Defeated", 1
    .byte " "
    .byte $21
    .word $0588
    .byte "!", 0

sHurt:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " hurt and beaten.", 0

sGone:
    .byte " "
    .byte $21
    .word $0588
    .byte 1
    .byte " was already gone.", 0

sNoEffect:
    .byte " There was no effect", 1
    .byte " on "
    .byte $21
    .word $0588
    .byte ".", 0

sExhausted:
    .byte " "
    .byte $21
    .word $0580
    .byte " was", 1
    .byte " totally exhausted.", 0

sSurrounded:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " surrounded by a", 1
    .byte " barrier.", 0

sMotherCall:
    .byte " ", $A6, "Your mother is", 1
    .byte "  calling for you!", $A6, 0

sTturned:
    .byte " "
    .byte $21
    .word $0588
    .byte " turned", 1
    .byte " into a stone.", 0

sBlinded:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " blinded!", 0

sExploded:
    .byte " "
    .byte $21
    .word $0580
    .byte 1
    .byte " exploded!", 0

sBurst:
    .byte " "
    .byte $21
    .word $0580
    .byte " burst", 1
    .byte " into flames!", 0

sOFFENSEinc:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " OFFENSE increased", 1
    .byte " by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sOFFENSEdec:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " OFFENSE decreased", 1
    .byte " by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sDEFENSEinc:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " DEFENSE increased", 1
    .byte " by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sSPEEDinc:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s SPEED", 1
    .byte " increased by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sFIGHTdec:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s FIGHT", 1
    .byte " decreased by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sDEFENSEdec:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " DEFENSE decreased", 1
    .byte " by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sFIGHTinc:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s FIGHT", 1
    .byte " increased by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sSPEEDdec:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s SPEED", 1
    .byte " decreased by "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte ".", 0

sEXPinc:
    .byte " Don't know why, but", 1
    .byte " "
    .byte $21
    .word $0588
    .byte "'s EXP", 1
    .byte " increased.", 0

sBelieved:
    .byte " and "
    .byte $21
    .word $0588
    .byte 1
    .byte " believed it!", 0

sWasntConvinced:
    .byte " but "
    .byte $21
    .word $0588
    .byte 1
    .byte " wasn't convinced", 1
    .byte " at all.", 0

sMadeAngry:
    .byte " This made", 1
    .byte " "
    .byte $21
    .word $0588
    .byte " angry.", 0

sCritical:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " situation became", 1
    .byte " critical.", 0

sSenses:
    .byte " "
    .byte $21
    .word $0588
    .byte " lost", 1
    .byte " all senses.", 0

sPutSleep:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " put to sleep.", 0

sRecoverPP:
    .byte " "
    .byte $21
    .word $0588
    .byte 1
    .byte " recovered "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte " PP's!", 0

sRecoverHP:
    .byte " "
    .byte $21
    .word $0588
    .byte 1
    .byte " recovered "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte " HP!", 0

sHoweverNoOne:
    .byte " However, no one came", 1
    .byte " to assist.", 0

sSilence:
    .byte " Silence...", 0

sJoined:
    .byte " "
    .byte $21
    .word $0588
    .byte " joined", 1
    .byte " in the battle!", 0

sSnatched:
    .byte " "
    .byte $23
    .word $0590
    .byte $02, $00
    .byte " PP's were", 1
    .byte " snatched from", 1
    .byte " "
    .byte $21
    .word $0588
    .byte ".", 0

sCannotMove:
    .byte " "
    .byte $21
    .word $0588
    .byte " can not", 1
    .byte " move.", 0

sWasPoisoned:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " poisoned.", 0

sDehydrated:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " dehydrated.", 0

sBlocked:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s PSI", 1
    .byte " was blocked.", 0

sWasBound:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " bound with Rope.", 0

sShielded:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " shielded.", 0

sMiss:
    .byte " Miss!!", 0

sPSIBlocked:
    .byte " But, the PSI was", 1
    .byte " blocked.", 0

sBounced:
    .byte " But, "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " FranklinBadge bounced", 1
    .byte " back the Beam!", 0

sBouncedBack:
    .byte " "
    .byte $21
    .word $0588
    .byte " bounced", 1
    .byte " back the attack!", 0

sNotenoughPPs:
    .byte " Not enough PP's.", 0

sWasNoEffect:
    .byte " There was no effect", 1
    .byte " on "
    .byte $21
    .word $0588
    .byte ".", 0

sDissipated:
    .byte " Poison has dissipated", 1
    .byte " from "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " body.", 0

sRegained:
    .byte " "
    .byte $21
    .word $0588
    .byte " senses", 1
    .byte " were regained.", 0

sItchy:
    .byte " "
    .byte $21
    .word $0588
    .byte 1
    .byte " became itchy", 1
    .byte " all over.", 0

sCanMove:
    .byte " "
    .byte $21
    .word $0588
    .byte " can", 1
    .byte " move now.", 0

sWakeUp:
    .byte " "
    .byte $21
    .word $0588
    .byte " woke up.", 0

sBrought:
    .byte " Brought "
    .byte $21
    .word $0588
    .byte 1
    .byte " back!!!", 0

sDestroyed:
    .byte " Destroyed", 1
    .byte " "
    .byte $21
    .word $0588
    .byte "'s", 1
    .byte " shield.", 0

sAsthmaAttackPass:
    .byte " "
    .byte $21
    .word $0588
    .byte "'s asthma", 1
    .byte " attack has passed.", 0

sRecoveredStone:
    .byte " "
    .byte $21
    .word $0588
    .byte 1
    .byte " recovered from", 1
    .byte " being a stone.", 0

sILoveYou:
    .byte " ", $A6, "I love you.", $A6, 0

sIHateYou:
    .byte " ", $A6, "I hate you.", $A6, 0

sAsthmaAttack:
    .byte " "
    .byte $21
    .word $0588
    .byte " had an", 1
    .byte " asthma attack.", 0

sRegainedSenses:
    .byte " "
    .byte $21
    .word $0588
    .byte " regained", 1
    .byte " all senses!", 0

sQuiet:
    .byte " "
    .byte $21
    .word $0588
    .byte " became", 1
    .byte " quiet!", 0

sBeaten:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " beaten!", 0

sWasDestroyed:
    .byte " "
    .byte $21
    .word $0588
    .byte " was", 1
    .byte " destroyed!", 0

sDust:
    .byte " "
    .byte $21
    .word $0588
    .byte " has", 1
    .byte " returned to dust!", 0

sDidntMove:
    .byte " "
    .byte $21
    .word $0588
    .byte " didn't ", 1
    .byte " move anymore!", 0

sPileJunk:
    .byte " "
    .byte $21
    .word $0588
    .byte " became", 1
    .byte " a pile of junk!", 0

sVanished:
    .byte " "
    .byte $21
    .word $0588
    .byte 1
    .byte " vanished!", 0

sWasntConfused:
    .byte " "
    .byte $21
    .word $0588
    .byte " wasn't", 1
    .byte " confused anymore!", 0

sItNoEffect:
    .byte " But...", 1
    .byte " it had no effect!", 0

sWasBroken:
    .byte " "
    .byte $21
    .word $0590
    .byte " was", 1
    .byte " broken.", 0

sTurnedIntoStone:
    .byte " "
    .byte $21
    .word $0590
    .byte " turned", 1
    .byte " into a stone.", 0

sBecameEmpty:
    .byte " "
    .byte $21
    .word $0590
    .byte 1
    .byte " became empty.", 0

sAdvanced:
    .byte $21
    .word $0580
    .byte " advanced", 1
    .byte "to the next Level!", 1, 3
    .byte 2

sMaximumHPinc:
    .byte " Maximum HP has", 1
    .byte " increased by "
    .byte $23
    .word $005D
    .byte $01, $00
    .byte ".", 1, 3
    .byte 2

sMaximumPPinc:
    .byte " Maximum PP has", 1
    .byte " increased by "
    .byte $23
    .word $005D
    .byte $01, $00
    .byte ".", 1, 3
    .byte 2

sFIGHTInc:
    .byte " FIGHT has", 1
    .byte " increased by "
    .byte $23
    .word $0058
    .byte $01, $00
    .byte ".", 1, 3
    .byte 2

sSPEEDInc:
    .byte " SPEED has", 1
    .byte " increased by "
    .byte $23
    .word $0059
    .byte $01, $00
    .byte ".", 1, 3
    .byte 2

sWISDOMinc:
    .byte " WISDOM has", 1
    .byte " increased by "
    .byte $23
    .word $005A
    .byte $01, $00
    .byte ".", 1, 3
    .byte 2

sSTRENGTHinc:
    .byte " STRENGTH has", 1
    .byte " increased by "
    .byte $23
    .word $005B
    .byte $01, $00
    .byte ".", 1, 3
    .byte 2

sFORCEinc:
    .byte " FORCE has", 1
    .byte " increased by "
    .byte $23
    .word $005C
    .byte $01, $00
    .byte ".", 1, 3
    .byte 2

sNewPSIPower:
    .byte $21
    .word $0580
    .byte " learned", 1
    .byte "a new PSI-Power", 1
    .byte "through battle!", 1, 3
    .byte 2

sPickedUp:
    .byte "Picked up "
    .byte $21
    .word $6D04
    .byte "!", 1, 3
    .byte 2

sSingLullaby:
    .byte "("
    .byte $21
    .word $670A
    .byte " hears the", 1
    .byte "voice of Queen Mary)", 1, 3

    .byte "Giegue cannot be", 1
    .byte "defeated with", 1
    .byte "force...", 1, 3

    .byte "You cannot defeat", 1
    .byte "Giegue with a", 1
    .byte "weapon of any kind.", 1, 3

    .byte "You must SING my", 1
    .byte "lullaby, with all", 1
    .byte "your feelings...", 1, 3

    .byte "SING my lullaby", 1
    .byte "with all your", 1
    .byte "heart.", 1, 3
    .byte 2

sEmpty70:
    .byte 0