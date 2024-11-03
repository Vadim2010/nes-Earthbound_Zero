.include "charmap.inc"

.segment "NAME"

.export InventoryList, sBigBag, sPhoneCard, sCrumbs, sRepelRing, sButterKnife, sSurvKnife, sSword, sKatana, sStunGun
.export sAirGun, sPlasticBat, sWoodenBat, sAluminumBat, sHanksBat, sFryingPan, sNonstickPan, sIronSkillet, sSlingshot
.export sBoomerang, sInsecticide, sSuperSpray, sFleaBag, sWordsOLove, sSwearWords, sStkyMachine, sFlashdark
.export sStoneOrigin, sPoisnNeedle, sFlThrower, sBomb, sSuperBomb, sLaserBeam, sPlasmaBeam, sPeaceCoin, sProtectCoin
.export sMagicCoin, sBrassRing, sSilverRing, sGoldRing, sH2oPendant, sFirePendant, sEarthPendnt, sSeaPendant
.export sOrangeJuice, sFrenchFries, sMagicHerb, sHamburger, sSportsDrink, sLifeUpCream, sAsthmaSpray, sAntidote
.export sMouthwash, sBerryTofu, sBread, sNobleSeed, sPSIStone, sMagicRibbon, sMagicCandy, sQuickCapsul, sWisdomCaps
.export sPhysicalCap, sForceCapsul, sFightCapsul, sBasementKey, sZooKey, sGhostKey, sGGFsDiary, sPass, sTicket
.export sCanaryChick, sBottlRocket, sHat, sDentures, sTicketStub, sICchip, sOcarina, sFranklnBdge, sFrndshpRing
.export sOnyxHook, sLastWeapon, sRuler, sCashCard, sRedWeed, sBullhorn, sMap, sDebug, sRope_0

InventoryList:
    .byte 0
sBigBag:
    .byte "Big Bag", 0
sPhoneCard:
    .byte "Phone Card", 0
sCrumbs:
    .byte "Crumbs", 0
sRepelRing:
    .byte "Repel Ring", 0
sButterKnife:
    .byte "ButterKnife", 0
sSurvKnife:
    .byte "Surv.Knife", 0
sSword:
    .byte "Sword", 0
sKatana:
    .byte "Katana", 0
sStunGun:
    .byte "Stun Gun", 0
sAirGun:
    .byte "Air Gun", 0
sPlasticBat:
    .byte "Plastic Bat", 0
sWoodenBat:
    .byte "Wooden Bat", 0
sAluminumBat:
    .byte "AluminumBat", 0
sHanksBat:
    .byte "Hank's Bat", 0
sFryingPan:
    .byte "Frying Pan", 0
sNonstickPan:
    .byte "NonstickPan", 0
sIronSkillet:
    .byte "IronSkillet", 0
sSlingshot:
    .byte "Slingshot", 0
sBoomerang:
    .byte "Boomerang", 0
sInsecticide:
    .byte "Insecticide", 0
sSuperSpray:
    .byte "Super Spray", 0
sFleaBag:
    .byte "Flea Bag", 0
sWordsOLove:
    .byte "WordsO'Love", 0
sSwearWords:
    .byte "Swear Words", 0
sStkyMachine:
    .byte "Sticky Machine", 0
sFlashdark:
    .byte "Flashdark", 0
sStoneOrigin:
    .byte "StoneOrigin", 0
sPoisnNeedle:
    .byte "PoisnNeedle", 0
sFlThrower:
    .byte "Fl Thrower", 0
sBomb:
    .byte "Bomb", 0
sSuperBomb:
    .byte "Super Bomb", 0
sLaserBeam:
    .byte "Laser Beam", 0
sPlasmaBeam:
    .byte "Plasma Beam", 0
sRope_0:
    .byte "Rope", 0
sPeaceCoin:
    .byte "Peace Coin", 0
sProtectCoin:
    .byte "ProtectCoin", 0
sMagicCoin:
    .byte "Magic Coin", 0
sBrassRing:
    .byte "Brass Ring", 0
sSilverRing:
    .byte "Silver Ring", 0
sGoldRing:
    .byte "Gold Ring", 0
sH2oPendant:
    .byte "H2o Pendant", 0
sFirePendant:
    .byte "FirePendant", 0
sEarthPendnt:
    .byte "EarthPendnt", 0
sSeaPendant:
    .byte "Sea Pendant", 0
sOrangeJuice:
    .byte "OrangeJuice", 0
sFrenchFries:
    .byte "FrenchFries", 0
sMagicHerb:
    .byte "Magic Herb", 0
sHamburger:
    .byte "Hamburger", 0
sSportsDrink:
    .byte "SportsDrink", 0
sLifeUpCream:
    .byte "LifeUpCream", 0
sAsthmaSpray:
    .byte "AsthmaSpray", 0
sAntidote:
    .byte "Antidote", 0
sMouthwash:
    .byte "Mouthwash", 0
sBerryTofu:
    .byte "Berry Tofu", 0
sBread:
    .byte "Bread", 0
sNobleSeed:
    .byte "Noble Seed", 0
sPSIStone:
    .byte "PSI Stone", 0
sMagicRibbon:
    .byte "MagicRibbon", 0
sMagicCandy:
    .byte "Magic Candy", 0
sQuickCapsul:
    .byte "QuickCapsul", 0
sWisdomCaps:
    .byte "Wisdom Caps", 0
sPhysicalCap:
    .byte "PhysicalCap", 0
sForceCapsul:
    .byte "ForceCapsul", 0
sFightCapsul:
    .byte "FightCapsul", 0
sBasementKey:
    .byte "BasementKey", 0
sZooKey:
    .byte "Zoo Key", 0
sGhostKey:
    .byte "Ghost Key", 0
sGGFsDiary:
    .byte "GGF's Diary", 0
sPass:
    .byte "Pass", 0
sTicket:
    .byte "Ticket", 0
sCanaryChick:
    .byte "CanaryChick", 0
sBottlRocket:
    .byte "BottlRocket", 0
sHat:
    .byte "Hat", 0
sDentures:
    .byte "Dentures", 0
sTicketStub:
    .byte "Ticket Stub", 0
sICchip:
    .byte "IC-chip", 0
sOcarina:
    .byte "Ocarina", 0
sFranklnBdge:
    .byte "FranklnBdge", 0
sFrndshpRing:
    .byte "FrndshpRing", 0
sOnyxHook:
    .byte "Onyx Hook", 0
sLastWeapon:
    .byte "Last Weapon", 0
sRuler:
    .byte "Ruler", 0
sCashCard:
    .byte "Cash Card", 0
sRedWeed:
    .byte "Red Weed", 0
sBullhorn:
    .byte "Bullhorn", 0
sMap:
    .byte "Map", 0
sDebug:
    .byte "Debug", 0

.export TravelList, sFlightplanA, sFlightplanB, sFlightplanC, sHint1, sHint2, sHint3, sRealRocket, sTimeMachine

TravelList:
    .byte 0
sFlightplanA:
    .byte "FlightplanA", 0
sFlightplanB:
    .byte "FlightplanB", 0
sFlightplanC:
    .byte "FlightplanC", 0
sHint1:
    .byte "Hint 1", 0
sHint2:
    .byte "Hint 2", 0
sHint3:
    .byte "Hint 3", 0
sRealRocket:
    .byte "Real Rocket", 0
sTimeMachine:
    .byte "TimeMachine", 0

.export LocalList, sMyHome, sPodunk, sMerrysville, sReindeer, sSpookane, sSnowman, sYoungtown, sEllay, sUnion

LocalList:
    .byte 0
sMyHome:
    .byte "MyHome", 0
sPodunk:
    .byte "Podunk", 0
sMerrysville:
    .byte "Merrysville", 0
sReindeer:
    .byte "Reindeer", 0
sSpookane:
    .byte "Spookane", 0
sSnowman:
    .byte "Snowman", 0
sYoungtown:
    .byte "Youngtown", 0
sEllay:
    .byte "Ellay", 0
sUnion:
    .byte "Union", 0

.export SpellList, sTelepathy, sTeleport, sSuprHealing, sPowerShield, sBrainShock, sBrainCyclon, sHypnosis, sParalysis
.export sDarkness, sPSIMagnet, sShieldOff, sPSIBlock, sOffenseUp, sQuickUp, s4thDSlip
.export sFaintd, sStone, sParlzd, sAsleep, sConfsd, sPuzzld, sPoison, sCold
.export sLifeUpAlpha, sLifeUpBeta, sLifeUpGamma, sLifeUpPi, sLifeUpOmega, sHealingAlpha, sHealingBeta, sHealingGamma
.export sHealingPi, sPSIShieldAlpha, sPSIShieldBeta, sDefenseUpAlpha, sDefenseUpBeta, sDefenseDownAlpha, sDefenseDownBeta
.export sPKFreezeAlpha, sPKFreezeBeta, sPKFreezeGamma, sPKFreezeOmega, sPKFireAlpha, sPKFireBeta, sPKFireGamma, sPKFireOmega
.export sPKBeamAlpha, sPKBeamBeta, sPKBeamGamma, sPKBeamOmega, sPKThunderAlpha, sPKThunderBeta, sPKThunderGamma

SpellList:
    .byte 0
sTelepathy:
    .byte "Telepathy", 0
sTeleport:
    .byte "Teleport", 0
sLifeUpAlpha:
    .byte "LifeUp ", ALPHA, 0
sLifeUpBeta:
    .byte "LifeUp ", BETTA, 0
sLifeUpGamma:
    .byte "LifeUp ", GAMMA, 0
sLifeUpPi:
    .byte "LifeUp ", PI, 0
sLifeUpOmega:
    .byte "LifeUp ", OMEGA, 0
sHealingAlpha:
    .byte "Healing ", ALPHA, 0
sHealingBeta:
    .byte "Healing ", BETTA, 0
sHealingGamma:
    .byte "Healing ", GAMMA, 0
sHealingPi:
    .byte "Healing ", PI, 0
sSuprHealing:
    .byte "SuprHealing", 0
sPSIShieldAlpha:
    .byte "PSIShield ", ALPHA, 0
sPSIShieldBeta:
    .byte "PSIShield ", BETTA, 0
sPowerShield:
    .byte "PowerShield", 0
sBrainShock:
    .byte "BrainShock", 0
sBrainCyclon:
    .byte "BrainCyclon", 0
sHypnosis:
    .byte "Hypnosis", 0
sParalysis:
    .byte "Paralysis", 0
sDarkness:
    .byte "Darkness", 0
sPSIMagnet:
    .byte "PSI-Magnet", 0
sShieldOff:
    .byte "Shield-Off", 0
sPSIBlock:
    .byte "PSI-Block", 0
sOffenseUp:
    .byte "OffenseUp", 0
sDefenseUpAlpha:
    .byte "DefenseUp ", ALPHA, 0
sDefenseUpBeta:
    .byte "DefenseUp ", BETTA, 0
sQuickUp:
    .byte "QuickUp", 0
sDefenseDownAlpha:
    .byte "Def.Down ", ALPHA , 0
sDefenseDownBeta:
    .byte "Def.Down ", BETTA , 0
s4thDSlip:
    .byte "4th-D Slip", 0
sPKFreezeAlpha:
    .byte "PK Freeze ", ALPHA, 0
sPKFreezeBeta:
    .byte "PK Freeze ", BETTA, 0
sPKFreezeGamma:
    .byte "PK Freeze ", GAMMA, 0
sPKFreezeOmega:
    .byte "PK Freeze ", OMEGA, 0
sPKFireAlpha:
    .byte "PK Fire ", ALPHA, 0
sPKFireBeta:
    .byte "PK Fire ", BETTA, 0
sPKFireGamma:
    .byte "PK Fire ", GAMMA, 0
sPKFireOmega:
    .byte "PK Fire ", OMEGA, 0
sPKBeamAlpha:
    .byte "PK Beam ", ALPHA, 0
sPKBeamBeta:
    .byte "PK Beam ", BETTA, 0
sPKBeamGamma:
    .byte "PK Beam ", GAMMA, 0
sPKBeamOmega:
    .byte "PK Beam ", OMEGA, 0
sPKThunderAlpha:
    .byte "PK Thunder", ALPHA, 0
sPKThunderBeta:
    .byte "PK Thunder", BETTA, 0
sPKThunderGamma:
    .byte "PK Thunder", GAMMA, 0
sFaintd:
    .byte "Faintd", 0
sStone:
    .byte " Stone", 0
sParlzd:
    .byte "Parlzd", 0
sAsleep:
    .byte "Asleep", 0
sConfsd:
    .byte "Confsd", 0
sPuzzld:
    .byte "Puzzld", 0
sPoison:
    .byte "Poison", 0
sCold:
    .byte "  Cold", 0

.export EnemyNameList, sBigWoodoh, sDragon, sR7038, sElephant, sBear, sBigFoot, sMadTruck, sOldRobot, sMegaborg
.export sGargoyle, sGabilan, sGorilla, sBison, sTiger, sMadCar, sRaebYddet, sMagicSnail, sTitanees, sGiegue
.export sEagle, sWolf, sSeagull, sAlligator, sEnergyRobot, sTheFish, sFugitive, sBBsBoss, sBarbot, sNancy
.export sStarman, sUllrich, sCerebrum, sMook, sArmor, sWoodoh, sWally, sTheHippie, sBagLady, sBBGang, sDrDistorto
.export sGangZombie, sPseudoZombi, sCrow, sSnake, sHyena, sCougar, sCentipede, sDustBall, sFly, sSpider, sScorpion
.export sRope, sFireBall, sWatcher, sGroucho, sGhost, sLilSaucer, sMrBat, sStarmanJr, sSkunk, sShroudley, sRat
.export sBomber, sDoll, sLamp, sBionicCenti, sBionicScorp, sRedSnake, sLoneWolf, sPolarBear, sRattlesnake
.export sTarantula, sCrocodile, sBuffalo, sBionicBat, sStrayDog, sPsychoCar, sPsychoTruck, sManiacTruck
.export sAlarmGhost, sFoureyes, sDadseyes, sMomseyes, sSkyYddet, sGigaBorg, sOmegaBorg, sScrapper, sUltraBarbot
.export sOmegaSaucer, sKelly, sStarMiner, sSuperEnergy, sJuana, sBlueStarman, sRockoyle, sTitanian, sOhMook
.export sZombie, sNastyZombie, sSilverWolf, sR7037, sGrizzlyBear, sR7038XX, sLastStarman

EnemyNameList:
    .byte 0
sBigWoodoh:
    .byte "Big Woodoh", 0
sDragon:
    .byte "Dragon", 0
sR7038:
    .byte "R7038", 0
sElephant:
    .byte "Elephant", 0
sBear:
    .byte "Bear", 0
sBigFoot:
    .byte "Big Foot", 0
sMadTruck:
    .byte "Mad Truck", 0
sOldRobot:
    .byte "Old Robot", 0
sMegaborg:
    .byte "Mega Borg", 0
sGargoyle:
    .byte "Gargoyle", 0
sGabilan:
    .byte "Gabilan", 0
sGorilla:
    .byte "Gorilla", 0
sBison:
    .byte "Bison", 0
sTiger:
    .byte "Tiger", 0
sMadCar:
    .byte "Mad Car", 0
sRaebYddet:
    .byte "Raeb Yddet", 0
sMagicSnail:
    .byte "Magic Snail", 0
sTitanees:
    .byte "Titanees", 0
sGiegue:
    .byte "Giegue", 0
sEagle:
    .byte "Eagle", 0
sWolf:
    .byte "Wolf", 0
sSeagull:
    .byte "Seagull", 0
sAlligator:
    .byte "Alligator", 0
sEnergyRobot:
    .byte "Energy Robot", 0
sTheFish:
    .byte "The Fish", 0
sFugitive:
    .byte "Fugitive", 0
sBBsBoss:
    .byte "B.B.'s Boss", 0
sBarbot:
    .byte "Barbot", 0
sNancy:
    .byte "Nancy", 0
sStarman:
    .byte "Starman", 0
sUllrich:
    .byte "Ullrich", 0
sCerebrum:
    .byte "Cerebrum", 0
sMook:
    .byte "Mook", 0
sArmor:
    .byte "Armor", 0
sWoodoh:
    .byte "Woodoh", 0
sWally:
    .byte "Wally", 0
sTheHippie:
    .byte "The Hippie", 0
sBagLady:
    .byte "Bag Lady", 0
sBBGang:
    .byte "B.B. Gang", 0
sDrDistorto:
    .byte "Dr.Distorto", 0
sGangZombie:
    .byte "Gang Zombie", 0
sPseudoZombi:
    .byte "Pseudo Zombi", 0
sCrow:
    .byte "Crow", 0
sSnake:
    .byte "Snake", 0
sHyena:
    .byte "Hyena", 0
sCougar:
    .byte "Cougar", 0
sCentipede:
    .byte "Centipede", 0
sDustBall:
    .byte "Dust Ball", 0
sFly:
    .byte "Fly", 0
sSpider:
    .byte "Spider", 0
sScorpion:
    .byte "Scorpion", 0
sRope:
    .byte "Rope", 0
sFireBall:
    .byte "Fire Ball", 0
sWatcher:
    .byte "Watcher", 0
sGroucho:
    .byte "Groucho", 0
sGhost:
    .byte "Ghost", 0
sLilSaucer:
    .byte "Lil Saucer", 0
sMrBat:
    .byte "Mr. Bat", 0
sStarmanJr:
    .byte "Starman Jr.", 0
sSkunk:
    .byte "Skunk", 0
sShroudley:
    .byte "Shroudley", 0
sRat:
    .byte "Rat", 0
sBomber:
    .byte "Bomber", 0
sDoll:
    .byte "Doll", 0
sLamp:
    .byte "Lamp", 0
sBionicCenti:
    .byte "Bionic Centi", 0
sBionicScorp:
    .byte "Bionic Scorp", 0
sRedSnake:
    .byte "Red Snake", 0
sLoneWolf:
    .byte "Lone Wolf", 0
sPolarBear:
    .byte "Polar Bear", 0
sRattlesnake:
    .byte "Rattlesnake", 0
sTarantula:
    .byte "Tarantula", 0
sCrocodile:
    .byte "Crocodile", 0
sBuffalo:
    .byte "Buffalo", 0
sBionicBat:
    .byte "Bionic Bat", 0
sStrayDog:
    .byte "Stray Dog", 0
sPsychoCar:
    .byte "Psycho Car", 0
sPsychoTruck:
    .byte "Psycho Truck", 0
sManiacTruck:
    .byte "Maniac Truck", 0
sAlarmGhost:
    .byte "Alarm Ghost", 0
sFoureyes:
    .byte "Foureyes", 0
sDadseyes:
    .byte "Dadseyes", 0
sMomseyes:
    .byte "Momseyes", 0
sSkyYddet:
    .byte "Sky Yddet", 0
sGigaBorg:
    .byte "Giga Borg", 0
sOmegaBorg:
    .byte "Tera Borg", 0
sScrapper:
    .byte "Scrapper", 0
sUltraBarbot:
    .byte "Ultra Barbot", 0
sOmegaSaucer:
    .byte "Omega Saucer", 0
sKelly:
    .byte "Kelly", 0
sStarMiner:
    .byte "Star Miner", 0
sSuperEnergy:
    .byte "Super Energy", 0
sJuana:
    .byte "Juana", 0
sBlueStarman:
    .byte "Blue Starman", 0
sRockoyle:
    .byte "Rockoyle", 0
sTitanian:
    .byte "Titanian", 0
sOhMook:
    .byte "Oh-Mook", 0
sZombie:
    .byte "Zombie", 0
sNastyZombie:
    .byte "Nasty Zombie", 0
sSilverWolf:
    .byte "Silver Wolf", 0
sR7037:
    .byte "R7037", 0
sGrizzlyBear:
    .byte "Grizzly Bear", 0
sR7038XX:
    .byte "R7038XX", 0
sLastStarman:
    .byte "Last Starman", 0
