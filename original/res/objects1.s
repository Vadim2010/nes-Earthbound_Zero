.include "objects.inc"

; BANK $10
.segment "BANK_0"
; 0x1A records
off_108000:
    .word off_108034, off_108038, PodunkTown, MerrysvilleCity, off_108831
    .word Reindeer, Spookane, Snowman, off_109003, YoungTown, EllayCity, off_109628
    .word Crypt, Zoo, off_1098C2, off_109950, off_1099B0, off_1099CA, off_109A10
    .word off_109A1C, off_109A54, off_109B10, off_109B12, Hospitals, Hotels, off_109E73

off_108034:
    .word 0, 0


off_108038:
    .word HomeIn, CemeteryChurchIn, FabIn, byte_108094, byte_10809A, Dog, PippisMom
    .word PippiAtHome, CanaryNPC, CanaryLauraIn, CanaryLaura, Canary1, Canary2, Canary3
    .word Canary4, Canary5, Canary6, Canary7, Canary8, FabDog, CemeteryIn, CemeteryOut
    .word CanaryDirectionsSign, SignHome, ItoiHealerOut, ItoiHealerRoomIn2, ItoiHealerRoomIn1
    .word ItoiHealer, Seclusion, byte_10837F, ItoiHealerPhone, MouseHomeOut, NoisyMouse, 0

HomeIn:
    entrance DOOR, $2C40, $4EC0, UP, MUSIC_12, $B40, $2180, LEFT

CemeteryChurchIn:
    entrance DOOR, $2D40, $8DC0, UP, MUSIC_12, $D340, $2580, LEFT

FabIn:
    entrance DOOR, $4D80, $3EC0, UP, MUSIC_c, $3A40, $F200, DOWN

byte_108094:
    .byte $69, $2C, $80, $4E, $32, 0

byte_10809A:
    .byte $69, $2C, $80, $4E, $E8, 0

Dog:
    .import DogAnim

    npc WALK_NPC, $2B00, $4F00, DOWN, DogAnim

    check_action TALK, DogAction - Dog
    check_flag FLAG06|BIT4, DogCheck - Dog
    print $35C
    end_script
DogCheck:
    print $2AF
    end_script
DogAction:
    check_action CHECK, DogExit - Dog
    check_flag FLAG06|BIT4, DogKey - Dog
    jump DogExit - Dog
DogKey:
    print $3CF
    find_item EMPTY, DogFull - Dog
    select_item BasementKey
    add_item DogExit - Dog
    print $39B
    play SOUND2, 6
    set_flag FLAG06|BIT4
    end_script
DogFull:
    print $39D
DogExit:
    end_script

PippisMom:
    npc STAT_NPC1, $3680, $5400, DOWN, stru_1585A8

    check_action TALK, PippisMomExit - PippisMom
    check_flag FLAG01|BIT4, MomLooksFor - PippisMom
    print $23
    end_script
MomLooksFor:
    check_char 5, PippiNotFound - PippisMom
    check_status FAINTED, PippiNotFound - PippisMom
    print $34A
    end_script
PippiNotFound:
    print $228
PippisMomExit:
    end_script

PippiAtHome:
    .import stru_158080

    npc STAT_NPC2, $3600, $5400, DOWN, stru_158080

    show FLAG05|BIT2
    check_action TALK, PippiAtHomeExit - PippiAtHome
    get_char_name 5
    select_char_item EMPTY, AreYouBrave - PippiAtHome
    check_char 1, CantGive - PippiAtHome
    check_status FAINTED, CantGive - PippiAtHome
    print $3BB
NextItem:
    get_char_name 5
    select_char_item EMPTY, IllGive - PippiAtHome
    get_char_name 1
    add_item CantCarry - PippiAtHome
    play SOUND2, 6
    get_char_name 5
    remove_item CantCarry - PippiAtHome
    jump NextItem - PippiAtHome
IllGive:
    print $3BC
    end_script
CantCarry:
    print $242
    end_script
CantGive:
    print $214
    end_script
AreYouBrave:
    check_char 1, GoodLuck - PippiAtHome
    check_status FAINTED, GoodLuck - PippiAtHome
    print $2C4
    confirm Brave - PippiAtHome
    print $66
    end_script
Brave:
    print $67
    confirm Special - PippiAtHome
    check_flag FLAG0C|BIT5, Gift - PippiAtHome
    print $56
    end_script
Gift:
    print $68
    find_item EMPTY, CantCarryAll - PippiAtHome
    play SOUND2, 6
    select_item FranklnBdge
    add_item CantCarryAll - PippiAtHome
    set_flag FLAG0C|BIT5
    end_script
CantCarryAll:
    print $249
    end_script
Special:
    print $69
    end_script
GoodLuck:
    print $259
PippiAtHomeExit:
    end_script

CanaryNPC:
    .import OldManAnim

    npc NPC_1, $1700, $4E80, DOWN, OldManAnim

    check_action TALK, CanaryNPCExit - CanaryNPC
    find_item CanaryChick, Chick - CanaryNPC
    print $5F
    confirm Important - CanaryNPC
    print $61
    end_script
Important:
    print $60
    end_script
Chick:
    check_flag FLAG01|BIT3, Return - CanaryNPC
    print $62
    confirm NoGood - CanaryNPC
    print $64
    end_script
NoGood:
    print $63
    end_script
Return:
    print $5E
CanaryNPCExit:
    end_script

CanaryLauraIn:
    .import stru_1585E8

    unknown_23 $1B80, $4C00, UP, stru_1585E8

    check_action CHECK, CanaryLauraInExit - CanaryLauraIn
    print $32D
CanaryLauraInExit:
    end_script

CanaryLaura:
    .import CanaryAnim

    npc STAT_NPC, $1B40, $4B00, DOWN, CanaryAnim

    check_action TALK, UseItem - CanaryLaura
    check_flag FLAG01|BIT3, Introduce - CanaryLaura
FoundBaby:
    print $341
    jump CanarySing - CanaryLaura
Introduce:
    print $26C
    end_script
UseItem:
    use_item CanaryChick, CanaryLauraExit - CanaryLaura
    find_item CanaryChick, FoundBaby - CanaryLaura
    select_item CanaryChick
    remove_item CanaryLauraExit - CanaryLaura
    print $33F
CanarySing:
    play SOUND2, 8
    wait 180
    play MUSIC, $25
    wait 240
    play MUSIC, 6
    set_flag TUNES|BIT1
    set_flag FLAG01|BIT3
    print $340
CanaryLauraExit:
    end_script

Canary1:
    npc STAT_NPC, $1700, $4CC0, RIGHT, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script
CanaryCall:
    check_action TALK, CanaryExit - Canary1
    check_flag FLAG01|BIT3, CanaryPause - Canary1
    print $341
    play SOUND2, 8
    return
CanaryPause:
    print $CA
CanaryExit:
    return

Canary2:
    npc STAT_NPC, $18C0, $4F00, DOWN, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script

Canary3:
    npc STAT_NPC, $1A40, $4E00, LEFT, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script

Canary4:
    npc STAT_NPC, $1AC0, $4F00, DOWN, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script

Canary5:
    npc STAT_NPC, $1CC0, $4E40, RIGHT, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script

Canary6:
    npc STAT_NPC, $1F80, $4C80, LEFT, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script

Canary7:
    npc STAT_NPC, $1C00, $5280, DOWN, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script

Canary8:
    npc STAT_NPC, $1780, $5280, RIGHT, CanaryAnim

    call Canary1, CanaryCall - Canary1
    end_script

FabDog:
    npc STAT_NPC2, $4D80, $3F00, DOWN, DogAnim

    hide FLAG0F|BIT1
    check_action TALK, UsePass - FabDog
    print $F8
    end_script
UsePass:
    use_item Pass, FabDogExit - FabDog
    print $F9
    find_item Pass, FabDogExit - FabDog
    remove_item FabDogExit - FabDog
    move byte_10824E
    enemies 7
    set_flag FLAG0F|BIT1
    move byte_10825B
FabDogExit:
    end_script
byte_10824E:
    .byte $7E, 2, $F6, 1, $7A, 4, $F0, 1, $7E, 2, $F4, 1, 3
byte_10825B:
    .byte 0

CemeteryIn:
    change_location $2F40, $8C00, UP

    approach CemeteryInExit - CemeteryIn
    play MUSIC, $D
CemeteryInExit:
    end_script

CemeteryOut:
    change_location $2F40, $8BC0, UP

    approach CemeteryOutExit - CemeteryOut
    check_view CemeteryOutExit - CemeteryOut
    play MUSIC, 6
CemeteryOutExit:
    end_script

CanaryDirectionsSign:
    .import SignAnim

    entity $2100, $5180, UP, SignAnim

    check_action CHECK, CanarySignExit - CanaryDirectionsSign
    print $3A3
CanarySignExit:
    end_script

SignHome:
    entity $2D00, $5000, UP, SignAnim
    check_action CHECK, SignHomeExit - SignHome
    print $3AE
SignHomeExit:
    end_script

ItoiHealerOut:
    entrance DOOR, $380, $4980, RIGHT, MUSIC_b, $EF40, $D100, DOWN

ItoiHealerRoomIn2:
    unknown_18 $40, $4980, LEFT

    check_view ItoiHealerRoomIn2Exit - ItoiHealerRoomIn2
    approach ItoiHealerRoomIn2Exit - ItoiHealerRoomIn2
    check_flag FLAG19|BIT7, ItoiCheckStatus - ItoiHealerRoomIn2
ItoiTel1:
    teleport $DF52, $2186
    end_script
ItoiTel2:
    check_flag FLAG0F|BIT2, ItoiTel1 - ItoiHealerRoomIn2
    teleport $DF12, $2186
    end_script
ItoiCheckStatus:
    get_char_name 1
    check_status $FF, ItoiTel2 - ItoiHealerRoomIn2
    get_char_name 2
    check_status $FF, ItoiTel2 - ItoiHealerRoomIn2
    get_char_name 4
    check_status $FF, ItoiTel2 - ItoiHealerRoomIn2
    remove_char 4, ItoiTel2 - ItoiHealerRoomIn2
    another $1C
ItoiHealerRoomIn2Exit:
    end_script

ItoiHealerRoomIn1:
    change_location $80, $4980, LEFT

    approach ItoiHealerRoomIn1Exit - ItoiHealerRoomIn1
    clear_flag FLAG0F|BIT3
    check_view ItoiHeal - ItoiHealerRoomIn1
    set_flag FLAG0F|BIT3
ItoiHeal:
    sel_char 0, ItoiHealerRoomIn1Exit - ItoiHealerRoomIn1
    check_status $FF, ItoiAnother - ItoiHealerRoomIn1
    max_hp ItoiAnother - ItoiHealerRoomIn1
    sel_char 1, ItoiHealerRoomIn1Exit - ItoiHealerRoomIn1
    check_status $FF, ItoiAnother - ItoiHealerRoomIn1
    max_hp ItoiAnother - ItoiHealerRoomIn1
    sel_char 2, ItoiHealerRoomIn1Exit - ItoiHealerRoomIn1
    check_status $FF, ItoiAnother - ItoiHealerRoomIn1
    max_hp ItoiAnother - ItoiHealerRoomIn1
    jump ItoiHealerRoomIn1Exit - ItoiHealerRoomIn1
ItoiAnother:
    another $1B
ItoiHealerRoomIn1Exit:
    end_script

ItoiHealer:
    npc NPC_1, $140, $4900, DOWN, OldManAnim

    check_keypress ItoiTalk - ItoiHealer
    check_flag FLAG0F|BIT3, MoveIgnore - ItoiHealer
    move byte_10833B
    jump Ignore - ItoiHealer
MoveIgnore:
    move byte_108349
Ignore:
    print $B0
    jump CharsRecovery - ItoiHealer
ItoiTalk:
    check_action TALK, $52
    print $B1
CharsRecovery:
    get_char_name 1
    clear_status 0
ItoiHeal1:
    heal $FF
    max_hp ItoiHeal1 - ItoiHealer
ItoiRecPP1:
    rec_pp $FF
    max_pp ItoiRecPP1 - ItoiHealer
    sel_char 1, ItoiSound - ItoiHealer
    clear_status 0
ItoiHeal2:
    heal $FF
    max_hp ItoiHeal2 - ItoiHealer
ItoiRecPP2:
    rec_pp $FF
    max_pp ItoiRecPP2 - ItoiHealer
    sel_char 2, ItoiSound - ItoiHealer
    clear_status 0
ItoiHeal3:
    heal $FF
    max_hp ItoiHeal3 - ItoiHealer
ItoiRecPP3:
    rec_pp $FF
    max_pp ItoiRecPP3 - ItoiHealer
ItoiSound:
    play SOUND2, 7
    check_keypress ItoiHealerExit - ItoiHealer
    check_flag FLAG0F|BIT3, ItoiMoveExit - ItoiHealer
    move byte_108342
    jump ItoiHealerExit - ItoiHealer
ItoiMoveExit:
    move byte_108350
ItoiHealerExit:
    end_script
byte_10833B:
    .byte $74, 3, $76, 3, $F0, 1, 3
byte_108342:
    .byte $72, 3, $70, 3, $F4, 1, 0
byte_108349:
    .byte $74, 2, $76, 2, $F6, 1, 3
byte_108350:
    .byte $72, 2, $70, 2, $F4, 1, 0

Seclusion:
    .import AnimBoy3

    npc STAT_NPC2, $C0, $4940, LEFT, AnimBoy3

    show FLAG00|BIT6
    check_keypress SeclusionExit - Seclusion
    move byte_108377
    print $3BF
    move byte_10837A
    set_flag FLAG0F|BIT4
    remove_char 2, SeclusionExit - Seclusion
    set_flag FLAG0F|BIT2
    teleport $DF12, $2186
SeclusionExit:
    end_script
byte_108377:
    .byte $F4, 1, 3
byte_10837A:
    .byte $72, 6, $F4, 1, 0

byte_10837F:
    npc STAT_NPC2, $240, $4940, DOWN, AnimBoy3

    show FLAG0F|BIT4
    check_action TALK, byte_10837F_Exit - byte_10837F
    print $BF
byte_10837F_Exit:
    end_script

ItoiHealerPhone:
    .import PhoneAnim

    entity $2C0, $4900, UP, PhoneAnim

    check_action TALK, ItoiPhoneExit - ItoiHealerPhone
    print $339
    print $14
    transfer ItoiNoTransfer - ItoiHealerPhone
    print $15
ItoiNoTransfer:
    print $C
    sel_char 0, ItoiSaveMenu - ItoiHealerPhone
    need_exp
    print $345
    sel_char 1, ItoiSaveMenu - ItoiHealerPhone
    need_exp
    print $345
    sel_char 2, ItoiSaveMenu - ItoiHealerPhone
    need_exp
    print $345
ItoiSaveMenu:
    print $1E
    confirm_menu $337, ItoiNoSave - ItoiHealerPhone, ItoiNoSave - ItoiHealerPhone
    save
    print $1B
    confirm_menu $338, ItoiRest - ItoiHealerPhone, ItoiContinue - ItoiHealerPhone
ItoiContinue:
    print $1D
    print $13
    end_script
ItoiRest:
    print $1C
    print $13
    reboot
ItoiNoSave:
    print $21
    print $13
    end_script
ItoiNoMoney:
    print $365
ItoiPhoneExit:
    end_script

MouseHomeOut:
    entrance DOOR, $EB80, $4180, RIGHT, MUSIC_6, $2F40, $6400, DOWN

NoisyMouse:
    .import MouseAnim

    npc UNKNOWN_22, $EAC0, $4140, DOWN, MouseAnim

    check_action TALK, NoisyMouseExit - NoisyMouse
    print $3D0
NoisyMouseExit:
    end_script


PodunkTown:
    .word PodMallIn, PodCityHallIn, PodHotelIn, PodHospitalIn
    .word PodCafeIn, PodHealerIn, PodNPC1, PodNPC2
    .word PodNPC3, PodNPC4, PodNPC5, PodNPC6
    .word PodNPC7, PodNPC8, PodNPC9, PodNPC10
    .word PodNPC11, PodNPC12, PodNPC13, PseudoZombi1
    .word PseudoZombi2, PodNPC14, PodNPC15, PodNPC16
    .word MouseHomeIn, CanaryVillageSign, PodCityHallSign, PodSign
    .word byte_1085E5, byte_1085EB, byte_1085F1, byte_1085F7
    .word byte_1085FD, byte_108603, 0

PodMallIn:
    entrance DOOR, $3080, $6C00, UP, MUSIC_f, $340, $4580, LEFT

PodCityHallIn:
    entrance DOOR, $2EC0, $6C00, UP, MUSIC_f, $AF40, $2580, LEFT

PodHotelIn:
    entrance DOOR, $31C0, $6900, UP, MUSIC_12, $9740, $ED80, LEFT

PodHospitalIn:
    entrance DOOR, $2FC0, $6F00, UP, MUSIC_12, $C740, $FD80, LEFT

PodCafeIn:
    entrance DOOR, $2DC0, $6C00, UP, MUSIC_f, $340, $5580, LEFT

PodHealerIn:
    entrance DOOR, $2740, $7BC0, UP, MUSIC_12, $340, $3180, LEFT

PodNPC1:
    .import stru_158228

    npc WALK_NPC, $3200, $64C0, RIGHT, stru_158228

    check_action TALK, PodNPC1Exit - PodNPC1
    check_flag FLAG01|BIT4, PodNPC1Msg - PodNPC1
    print $25
    end_script
PodNPC1Msg:
    print $24
PodNPC1Exit:
    end_script

PodNPC2:
    npc NPC_1, $3580, $6A40, DOWN, stru_158228

    check_action TALK, PodNPC2Exit - PodNPC2
    check_flag FLAG01|BIT4, AreYouZombie - PodNPC2
    print $2C
    end_script
AreYouZombie:
    print $26
    confirm AreYouHuman - PodNPC2
    print $27
    change_type $26
    end_script
AreYouHuman:
    print $28
    confirm WetPants - PodNPC2
    print $29
    end_script
WetPants:
    print $2A
    print $2B
PodNPC2Exit:
    end_script

PodNPC3:
    .import stru_158288

    npc WALK_NPC, $3400, $6680, DOWN, stru_158288

    check_action TALK, PodNPC3Exit - PodNPC3
    check_flag FLAG01|BIT4, Walkdead - PodNPC3
    print $30
    end_script
Walkdead:
    print $2F
PodNPC3Exit:
    end_script

PodNPC4:
    .import stru_1581A8

    npc WALK_NPC, $3540, $6980, RIGHT, stru_1581A8

    check_action TALK, PodNPC4Exit - PodNPC4
    check_flag FLAG01|BIT4, ZombieInTown - PodNPC4
    print $25
    end_script
ZombieInTown:
    print $31
PodNPC4Exit:
    end_script

PodNPC5:
    .import stru_1582A8

    npc WALK_NPC, $31C0, $6CC0, LEFT, stru_1582A8

    check_action TALK, PodNPC5Exit - PodNPC5
    check_flag FLAG01|BIT3, CanaryCheck - PodNPC5
    jump CanaryMan - PodNPC5
CanaryCheck:
    find_item CanaryChick, CanaryMan - PodNPC5
    print $32
    confirm Voices - PodNPC5
    print $33
    end_script
Voices:
    print $34
    end_script
CanaryMan:
    print $35
PodNPC5Exit:
    end_script

PodNPC6:
    .import ReceptionistAnim

    npc WALK_NPC, $2D00, $6D80, RIGHT, ReceptionistAnim

    check_action TALK, PodNPC6Exit - PodNPC6
    print $36
PodNPC6Exit:
    end_script

PodNPC7:
    .import stru_1581E8

    npc WALK_NPC, $2C80, $7100, DOWN, stru_1581E8

    check_action TALK, PodNPC7Exit - PodNPC7
    print $37
PodNPC7Exit:
    end_script

PodNPC8:
    npc WALK_NPC, $3440, $7380, DOWN, stru_1581A8

    check_action TALK, PodNPC8Exit - PodNPC8
    check_flag FLAG01|BIT4, GoingToCemetery - PodNPC8
    print $25
    end_script
GoingToCemetery:
    print $38
    confirm SmartChild - PodNPC8
SmartChild:
    print $39
PodNPC8Exit:
    end_script

PodNPC9:
    .import stru_158248

    npc WALK_NPC, $2F80, $6980, RIGHT, stru_158248

    check_action TALK, PodNPC9Exit - PodNPC9
    check_flag FLAG01|BIT2, MadAnimals - PodNPC9
    print $3B
    end_script
MadAnimals:
    print $3A
PodNPC9Exit:
    end_script

PodNPC10:
    npc WALK_NPC, $2D80, $6280, RIGHT, stru_1581E8

    check_action TALK, PodNPC10Exit - PodNPC10
    check_flag FLAG01|BIT4, Poltergeist - PodNPC10
    print $2C
    end_script
Poltergeist:
    print $3D
PodNPC10Exit:
    end_script

PodNPC11:
    .import stru_158268

    npc WALK_NPC, $3400, $6DC0, RIGHT, stru_158268

    check_action TALK, PodNPC11Exit - PodNPC11
    check_flag FLAG01|BIT2, LockedZoo - PodNPC11
    print $25
    end_script
LockedZoo:
    print $3E
PodNPC11Exit:
    end_script

PodNPC12:
    npc WALK_NPC, $3400, $6E40, DOWN, stru_158248

    check_action TALK, PodNPC12Exit - PodNPC12
    print $3F
PodNPC12Exit:
    end_script

PodNPC13:
    npc WALK_NPC, $3280, $6C00, DOWN, stru_158288

    check_action TALK, PodNPC13Exit - PodNPC13
    print $5C
PodNPC13Exit:
    end_script

PseudoZombi1:
    npc WALK_NPC2, $32C0, $74C0, LEFT, stru_158228

    hide FLAG02|BIT3
    check_action TALK, PseudoZombi1Exit - PseudoZombi1
    print $2D
    enemies $10
    set_flag FLAG02|BIT3
PseudoZombi1Exit:
    end_script

PseudoZombi2:
    npc WALK_NPC2, $3540, $7540, DOWN, stru_158228

    hide FLAG02|BIT2
    check_action TALK, PseudoZombi2Exit - PseudoZombi2
    print $2E
    enemies $10
    set_flag FLAG02|BIT2
PseudoZombi2Exit:
    end_script

PodNPC14:
    npc WALK_NPC, $2E40, $6A00, LEFT, stru_158268

    check_action TALK, PodNPC14Exit - PodNPC14
    print $2C5
PodNPC14Exit:
    end_script

PodNPC15:
    npc WALK_NPC, $2F00, $6D00, RIGHT, stru_158228

    check_action TALK, PodNPC15Exit - PodNPC15
    print $2C6
PodNPC15Exit:
    end_script

PodNPC16:
    .import stru_158208

    npc WALK_NPC, $2EC0, $6F80, DOWN, stru_158208

    check_action TALK, PodNPC16Exit - PodNPC16
    print $2C7
PodNPC16Exit:
    end_script

MouseHomeIn:
    entrance DOOR, $2F40, $63C0, UP, MUSIC_12, $EB40, $4180, LEFT

CanaryVillageSign:
    entity $2A80, $5EC0, UP, SignAnim

    check_action CHECK, CanaryVillageSignExit - CanaryVillageSign
    print $3A4
CanaryVillageSignExit:
    end_script

PodCityHallSign:
    entity $2E80, $6C40, UP, SignAnim

    check_action CHECK, PodCityHallSignExit - PodCityHallSign
    print $3A5
PodCityHallSignExit:
    end_script

PodSign:
    entity $3080, $5F40, UP, SignAnim

    check_action CHECK, PodSignExit - PodSign
    print $216
PodSignExit:
    end_script

byte_1085E5:
    .byte $E9, $2D, $C0, $6D, $E9, 0

byte_1085EB:
    .byte $69, $31, $C0, $6D, $E9, 0

byte_1085F1:
    .byte $E9, $34, $C0, $6D, $E9, 0

byte_1085F7:
    .byte $E9, $2D, $40, $6A, $E9, 0

byte_1085FD:
    .byte $69, $31, $40, $6A, $E9, 0

byte_108603:
    .byte $E9, $34, $40, $6A, $E9, 0


MerrysvilleCity:
    .word MerMallIn, MerHospitalIn, MerHotelIn, MerCafeIn
    .word TwinkleIn, UnionStationIn, MerNPC1, MerPoliceman
    .word MerNPC2, MerNPC3, MerNPC4, MerNPC5
    .word MerNPC6, MerNPC7, MerNPC8, MerNPC9
    .word MerNPC10, MerNPC11, MerNPC12, MerNPC13
    .word MerNPC14, MerNPC15, MerNPC16, MerNPC17
    .word MerNPC18, MerHospitalSign, MerSign, DuncanCompSign
    .word MerDirectionSign, byte_1087F5, byte_1087FB, byte_108801
    .word byte_108807, byte_10880D, byte_108813, byte_108819
    .word byte_10881F, byte_108825, byte_10882B, 0

MerMallIn:
    entrance DOOR, $5880, $7300, UP, MUSIC_f, $340, $2D80, LEFT

MerHospitalIn:
    entrance DOOR, $5B80, $7000, UP, MUSIC_12, $340, $5180, LEFT

MerHotelIn:
    entrance DOOR, $5AC0, $7300, UP, MUSIC_12, $B740, $F580, LEFT

MerCafeIn:
    entrance DOOR, $58C0, $7000, UP, MUSIC_f, $340, $3D80, LEFT

TwinkleIn:
    entrance DOOR, $5A40, $7940, UP, MUSIC_e, $C140, $ED40, DOWN

UnionStationIn:
    entrance DOOR, $5040, $5380, UP, MUSIC_f, $A440, $F140, DOWN

MerNPC1:
    npc WALK_NPC, $5340, $6740, RIGHT, stru_158228

    check_action TALK, MerNPC1Exit - MerNPC1
    print $EC
    confirm MerHuman - MerNPC1
    print $ED
    end_script
MerHuman:
    print $33
MerNPC1Exit:
    end_script

MerPoliceman:
    .import PolicemanAnim

    npc WALK_NPC, $57C0, $6F40, LEFT, PolicemanAnim

    check_action TALK, MerPolicemanExit - MerPoliceman
    print $F6
MerPolicemanExit:
    end_script

MerNPC2:
    npc WALK_NPC, $5500, $7480, LEFT, stru_1581A8

    check_action TALK, MerNPC2Exit - MerNPC2
    print $F7
MerNPC2Exit:
    end_script

MerNPC3:
    npc WALK_NPC, $5640, $7780, DOWN, stru_158268

    check_action TALK, MerNPC3Exit - MerNPC3
    print $FB
MerNPC3Exit:
    end_script

MerNPC4:
    npc WALK_NPC, $56C0, $7780, RIGHT, stru_1581E8

    check_action TALK, MerNPC4Exit - MerNPC4
    print $FD
MerNPC4Exit:
    end_script

MerNPC5:
    npc WALK_NPC, $5A80, $7080, DOWN, stru_158288

    check_action TALK, MerNPC5Exit - MerNPC5
    check_flag FLAG0E|BIT6, BlockRailroad - MerNPC5
    print $BB
    end_script
BlockRailroad:
    print $2AE
MerNPC5Exit:
    end_script

MerNPC6:
    npc WALK_NPC, $5C00, $7400, DOWN, stru_158248

    check_action TALK, MerNPC6Exit - MerNPC6
    print $2C8
MerNPC6Exit:
    end_script

MerNPC7:
    npc WALK_NPC, $5D00, $7580, RIGHT, stru_158268

    check_action TALK, MerNPC7Exit - MerNPC7
    print $2C9
MerNPC7Exit:
    end_script

MerNPC8:
    npc WALK_NPC, $5980, $7380, LEFT, stru_1582A8

    check_action TALK, MerNPC8Exit - MerNPC8
    print $2CA
MerNPC8Exit:
    end_script

MerNPC9:
    npc WALK_NPC, $5CC0, $7080, LEFT, ReceptionistAnim

    check_action TALK, MerNPC9Exit - MerNPC9
    print $2CB
MerNPC9Exit:
    end_script

MerNPC10:
    npc WALK_NPC, $5A00, $7180, DOWN, stru_158228

    check_action TALK, MerNPC10Exit - MerNPC10
    check_flag FLAG0D|BIT0, Excuse - MerNPC10
    print $37C
    end_script
Excuse:
    print $377
    confirm Really - MerNPC10
    print $379
    confirm UsedBullhorn - MerNPC10
UsedBullhorn:
    print $37A
    confirm Exchange - MerNPC10
Exchange:
    print $37B
    find_item EMPTY, MerNPC10Heavy - MerNPC10
    select_item PhoneCard
    add_item MerNPC10Exit - MerNPC10
    reset_count 4
MerNPC10Inc:
    inc_count 4
    cmp_count 4, 50, MerNPC10Inc - MerNPC10
    play SOUND2, 6
    set_flag FLAG0D|BIT0
    end_script
MerNPC10Heavy:
    print $260
    end_script
Really:
    print $2CC
MerNPC10Exit:
    end_script

MerNPC11:
    npc WALK_NPC, $5400, $6A00, UP, stru_158268

    check_action TALK, MerNPC11Exit - MerNPC11
    print $2CD
MerNPC11Exit:
    end_script

MerNPC12:
    npc WALK_NPC, $55C0, $6A80, UP, stru_158228

    check_action TALK, MerNPC12Exit - MerNPC12
    check_flag FLAG0E|BIT6, MerElection - MerNPC12
    print $BB
    end_script
MerElection:
    print $2CE
MerNPC12Exit:
    end_script

MerNPC13:
    npc WALK_NPC, $5800, $6B40, DOWN, stru_1581E8

    check_action TALK, MerNPC13Exit - MerNPC13
    print $2CF
MerNPC13Exit:
    end_script

MerNPC14:
    npc WALK_NPC, $5700, $7080, RIGHT, stru_1581A8

    check_action TALK, MerNPC14Exit - MerNPC14
    print $2D0
MerNPC14Exit:
    end_script

MerNPC15:
    npc WALK_NPC, $5880, $7380, DOWN, stru_158228

    check_action TALK, MerNPC15Exit - MerNPC15
    check_flag FLAG0E|BIT6, MerBlownUp - MerNPC15
    print $BB
    end_script
MerBlownUp:
    print $2D1
MerNPC15Exit:
    end_script

MerNPC16:
    npc WALK_NPC, $5400, $7100, LEFT, stru_158248

    check_action TALK, MerNPC16Exit - MerNPC16
    print $2D2
MerNPC16Exit:
    end_script

MerNPC17:
    npc WALK_NPC, $54C0, $6D80, DOWN, stru_158268

    check_action TALK, MerNPC17Exit - MerNPC17
    print $2D3
    confirm MerHum - MerNPC17
    print $350
    end_script
MerHum:
    print $33
MerNPC17Exit:
    end_script

MerNPC18:
    npc WALK_NPC, $53C0, $7000, LEFT, stru_158208

    check_action TALK, MerNPC18Exit - MerNPC18
    print $2D4
MerNPC18Exit:
    end_script

MerHospitalSign:
    entity $5B40, $7040, UP, SignAnim

    check_action CHECK, MerHospitalSignExit - MerHospitalSign
    print $EE
MerHospitalSignExit:
    end_script

MerSign:
    entity $5280, $6740, UP, SignAnim

    check_action CHECK, MerSignExit - MerSign
    print $3AF
MerSignExit:
    end_script

DuncanCompSign:
    entity $5D00, $7340, UP, SignAnim

    check_action CHECK, DuncanCompSignExit - DuncanCompSign
    print $3B5
DuncanCompSignExit:
    end_script

MerDirectionSign:
    entity $5A40, $7400, UP, SignAnim

    check_action CHECK, MerDirectionSignExit - MerDirectionSign
    print $3AD
MerDirectionSignExit:
    end_script

byte_1087F5:
    .byte $E9, $55, $C0, $72, $EA, 0

byte_1087FB:
    .byte $69, $59, $C0, $72, $EA, 0

byte_108801:
    .byte $E9, $5C, $C0, $72, $EA, 0

byte_108807:
    .byte $E9, $55, $40, $6F, $EA, 0

byte_10880D:
    .byte $E9, $5C, $40, $6F, $EA, 0

byte_108813:
    .byte $E9, $55, $C0, $6B, $EA, 0

byte_108819:
    .byte $E9, $5C, $C0, $6B, $EA, 0

byte_10881F:
    .byte $E9, $55, $40, $68, $EA, 0

byte_108825:
    .byte $69, $59, $40, $68, $EA, 0

byte_10882B:
    .byte $E9, $5C, $40, $68, $EA, 0


off_108831:
    .word HealerHomeIn, HillHouseIn, ReinStationIn, EllLiveHouseOut
    .word EllBackRoomIn, EllPoliceOut, ReinCountryNPC1, ReinCountryNPC2
    .word ReinCountryNPC3, ReinCountryNPC4, ReinCountryNPC5, ReinCountryNPC6
    .word ReinCountryNPC7, ReinCountryNPC8, ReinCountryNPC9, ReinCountryNPC10
    .word EllPartyNPC1, Swindler, EllPartyNPC2, EllPartyNPC3
    .word EllTicketChecker, ShowDirector, BBBoss, EllPolice1
    .word EllPolice2, byte_108B40, Sherif, HillHouseSign, 0

HealerHomeIn:
    entrance DOOR, $6640, $CDC0, UP, MUSIC_12, $B40, $2980, LEFT

HillHouseIn:
    entrance DOOR, $5800, $B240, UP, MUSIC_12, $9B40, $2180, LEFT

ReinStationIn:
    entrance DOOR, $8040, $CF80, UP, MUSIC_f, $9840, $F140, DOWN

EllLiveHouseOut:
    entrance DOOR, $AF00, $F200, RIGHT, MUSIC_6, $C8C0, $4B40, DOWN

EllBackRoomIn:
    entrance DOOR, $AA40, $F280, LEFT, MUSIC_SAME, $BB40, $F180, LEFT

EllPoliceOut:
    entrance DOOR, $C380, $F180, RIGHT, MUSIC_6, $C280, $4840, DOWN

ReinCountryNPC1:
    npc WALK_NPC, $8180, $D100, DOWN, stru_1581A8

    check_action TALK, ReinCountryNPC1Exit - ReinCountryNPC1
    find_item Hat, NoseInto - ReinCountryNPC1
    print $137
    end_script
NoseInto:
    print $13A
ReinCountryNPC1Exit:
    end_script

ReinCountryNPC2:
    npc WALK_NPC, $8240, $D1C0, RIGHT, stru_158228

    check_action TALK, ReinCountryNPC2Exit - ReinCountryNPC2
    print $157
ReinCountryNPC2Exit:
    end_script

ReinCountryNPC3:
    npc WALK_NPC, $7F40, $D180, DOWN, stru_158248

    check_action TALK, ReinCountryNPC3Exit - ReinCountryNPC3
    print $2D7
ReinCountryNPC3Exit:
    end_script

ReinCountryNPC4:
    npc WALK_NPC, $6900, $DA00, LEFT, stru_1582A8

    check_action TALK, ReinCountryNPC4Exit - ReinCountryNPC4
    print $14F
ReinCountryNPC4Exit:
    end_script

ReinCountryNPC5:
    npc WALK_NPC, $6A00, $DC80, RIGHT, stru_1581E8

    check_action TALK, ReinCountryNPC5Exit - ReinCountryNPC5
    print $2D8
ReinCountryNPC5Exit:
    end_script

ReinCountryNPC6:
    npc WALK_NPC, $6D00, $DD40, LEFT, stru_158288

    check_action TALK, ReinCountryNPC6Exit - ReinCountryNPC6
    print $2D9
ReinCountryNPC6Exit:
    end_script

ReinCountryNPC7:
    npc WALK_NPC, $6D00, $DA00, RIGHT, stru_158248

    check_action TALK, ReinCountryNPC7Exit - ReinCountryNPC7
    print $2DA
ReinCountryNPC7Exit:
    end_script

ReinCountryNPC8:
    npc NPC_1, $6E40, $DEC0, UP, stru_158268

    check_action TALK, ReinCountryNPC8Exit - ReinCountryNPC8
    print $2DB
ReinCountryNPC8Exit:
    end_script

ReinCountryNPC9:
    npc WALK_NPC, $6840, $E580, DOWN, stru_158228

    check_action TALK, ReinCountryNPC9Exit - ReinCountryNPC9
    print $2DC
ReinCountryNPC9Exit:
    end_script

ReinCountryNPC10:
    npc WALK_NPC, $6F80, $E580, DOWN, stru_158208

    check_action TALK, ReinCountryNPC10Exit - ReinCountryNPC10
    print $2DD
ReinCountryNPC10Exit:
    end_script

EllPartyNPC1:
    npc WALK_NPC, $AB40, $F2C0, RIGHT, ReceptionistAnim

    check_action TALK, EllPartyNPC1Exit - EllPartyNPC1
    check_flag FLAG07|BIT4, BackRoom - EllPartyNPC1
    print $29F
    end_script
BackRoom:
    print $1D7
EllPartyNPC1Exit:
    end_script

Swindler:
    npc STAT_NPC1, $AD40, $F2C0, LEFT, stru_1582A8

    check_action TALK, SwindlerExit - Swindler
    check_flag FLAG06|BIT3, BuyDrink - Swindler
    print $1DB
    end_script
BuyDrink:
    print $1D9
    confirm NotDrink - Swindler
    set_flag FLAG06|BIT3
    move byte_108952
    print $56
    set_flag FLAG05|BIT4
    another $17
    end_script
NotDrink:
    print $1DA
SwindlerExit:
    end_script
byte_108952:
    .byte $30, 1, $36, 2, $76, 1, $F2, 1, 0

EllPartyNPC2:
    npc STAT_NPC1, $AC00, $F2C0, UP, stru_158248

    check_action TALK, EllPartyNPC2Exit - EllPartyNPC2
    check_char 4, Parents - EllPartyNPC2
    print $1E2
    end_script
Parents:
    print $1E1
EllPartyNPC2Exit:
    end_script

EllPartyNPC3:
    npc STAT_NPC1, $AC80, $F240, LEFT, stru_158268

    check_action TALK, EllPartyNPC3Exit - EllPartyNPC3
    check_char 2, EllCuteGirl - EllPartyNPC3
    check_status FAINTED, EllCuteGirl - EllPartyNPC3
    print $1E7
    end_script
EllCuteGirl:
    print $1E8
EllPartyNPC3Exit:
    end_script

EllTicketChecker:
    .import ServicemanAnim

    npc NPC_1, $AE00, $F200, LEFT, ServicemanAnim

    check_action TALK, CheckTicket - EllTicketChecker
    update_coor CanIDo - EllTicketChecker
    check_view CanIDoMove - EllTicketChecker
    jump YourTicket - EllTicketChecker
CanIDoMove:
    print $234
    move byte_1089B4
    end_script
YourTicket:
    print $31F
    end_script
CheckTicket:
    use_item Ticket, EllTicketCheckerExit - EllTicketChecker
    update_coor CanIDo - EllTicketChecker
    print $2B6
    find_item Ticket, EllTicketCheckerExit - EllTicketChecker
    select_item Ticket
    remove_item EllTicketCheckerExit - EllTicketChecker
    move byte_1089B4
    end_script
CanIDo:
    print $234
EllTicketCheckerExit:
    end_script
byte_1089B4:
    .byte $F0, 1, $7C, 1, 0

ShowDirector:
    npc NPC_1, $ABC0, $F200, RIGHT, stru_1581A8

    check_action TALK, ShowDirectorExit - ShowDirector
    print $1E3
    confirm DontSing - ShowDirector
    move byte_108A07
    print $1E4
    move byte_108A10
    check_flag FLAG06|BIT2, CheckPeople - ShowDirector
    sel_char 2, LessPeople - ShowDirector
    live_show
    wait 120
    play MUSIC, $22
    end_script
CheckPeople:
    sel_char 0, LessPeople - ShowDirector
    check_status STONE, Upset - ShowDirector
    check_status FAINTED, LessPeople - ShowDirector
    sel_char 1, LessPeople - ShowDirector
    check_status FAINTED, LessPeople - ShowDirector
    sel_char 2, LessPeople - ShowDirector
    check_status FAINTED, LessPeople - ShowDirector
    sel_char 1, LessPeople - ShowDirector
    live_show
    wait 120
    play MUSIC, $22
    another $16
    end_script
Upset:
    print $DB
    end_script
LessPeople:
    print $22F
    end_script
DontSing:
    print $1E5
ShowDirectorExit:
    end_script
byte_108A07:
    .byte $32, 2, $30, 1, $32, 4, $F6, 1, 3
byte_108A10:
    .byte $74, 1, $76, 6, $F2, 1, 0

BBBoss:
    npc STAT_NPC2, $AEC0, $F200, LEFT, AnimBoy3

    show FLAG00|BIT6
    check_keypress BBBossExit - BBBoss
    move BBBossComeIn
    print $1E9
    confirm Deny - BBBoss
    print $1EA
    jump TeachLesson - BBBoss
Deny:
    print $1EB
TeachLesson:
    print $25A
    get_char_name 1
BBHeal:
    heal $FF
    max_hp BBHeal - BBBoss
    enemies $9D
    move byte_108AB6
    jump ForParents - BBBoss
Agree:
    print $1F0
    move BBBossGoBack
    sel_char 2, ReplaceChar - BBBoss
    if_char 3, ReplaceChar - BBBoss
    move byte_108AAA
ReplaceChar:
    move Come2Char
    print $1F5
    play MUSIC, $21
    wait 180
    play MUSIC, $22
    move TakePlace
    add_char 4, BBBossExit - BBBoss
    remove_char 3, BBBossExit - BBBoss
    set_flag FLAG06|BIT2
GetItems:
    get_char_name 3
    select_char_item EMPTY, BBBossExit - BBBoss
    remove_item BBBossExit - BBBoss
    buying_item Crumbs, BBAddItem - BBBoss
    jump GetItems - BBBoss
BBAddItem:
    get_char_name 4
    add_item BBBossExit - BBBoss
    jump GetItems - BBBoss
ForParents:
    print $1EC
    confirm NoVengeance - BBBoss
    jump Agree - BBBoss
NoVengeance:
    print $25D
    confirm Mad - BBBoss
    jump Agree - BBBoss
Mad:
    print $1F3
    confirm Beg - BBBoss
    jump Agree - BBBoss
Beg:
    print $1F4
    confirm GoHome - BBBoss
    jump Agree - BBBoss
GoHome:
    teleport $2C46, $4F04
    move byte_108AB5
BBBossExit:
    end_script
BBBossComeIn:
    .byte $76, 4, $70, 1, $76, 2, 3
BBBossGoBack:
    .byte $70, 1, $76, 2, 3
byte_108AAA:
    .byte $76, 1, 3
Come2Char:
    .byte $F4, 1, 3
TakePlace:
    .byte $74, 1, $F2, 1, 0
byte_108AB5:
    .byte 0
byte_108AB6:
    .byte $F6, 1, 3

EllPolice1:
    npc STAT_NPC2, $AEC0, $F200, DOWN, PolicemanAnim

    show FLAG05|BIT4
    check_keypress EllPolice1Exit - EllPolice1
    move byte_108ACD
    print $29C
    move byte_108AE6
EllPolice1Exit:
    end_script
byte_108ACD:
    .byte $76, 8, $F2, 1, $F4, 1, $F6, 1, $76, 3, $74, 2, $72, 1, $74, 1
    .byte $72, 2, $70, 1, $F6, 1, $F2, 1, 3
byte_108AE6:
    .byte $34, 1, $32, 2, $30, 2, $32, 1, $30, 1, $32, 5, $12, 1, $14, 1, 3

EllPolice2:
    npc STAT_NPC2, $C300, $F180, RIGHT, PolicemanAnim

    show FLAG05|BIT4
    approach EllPolice2Exit - EllPolice2
    print $2C2
    move byte_108B2F
    print $2C3
    jump ThinkAbout - EllPolice2
MoreNight:
    print $1DE
ThinkAbout:
    sleep
    print $1DC
    confirm MoreNight - EllPolice2
    print $1DD
    sel_char 0, NoDangerous - EllPolice2
    get_weapon NoDangerous - EllPolice2
    set_flag FLAG0C|BIT4
    print $130
    clear_flag FLAG05|BIT4
    set_flag FLAG05|BIT1
    end_script
NoDangerous:
    print $11B
    clear_flag FLAG05|BIT4
    set_flag FLAG05|BIT1
EllPolice2Exit:
    end_script
byte_108B2F:
    .byte $36, 6, $30, 1, $32, 1, $F6, 1, $72, 2, $70, 1, $76, 3, $F4, 1, 0

byte_108B40:
    .byte $94, $C1, 4, $F1, $C8, $81, 6, $2E, $A, $D, 8, $C8
    .byte 1, 0

Sherif:
    npc WALK_NPC, $C040, $F1C0, LEFT, PolicemanAnim

    check_action TALK, SherifExit - Sherif
    check_flag FLAG0C|BIT4, Weapons - Sherif
    sel_weapon Weapons - Sherif
    print $1DF
    confirm Stingy - Sherif
    pay SherifNoMoney - Sherif
    find_item EMPTY, $24
    print $1D2
    sel_weapon Weapons - Sherif
    add_item SherifExit - Sherif
    cash
    play SOUND2, 6
    clear_flag FLAG0C|BIT4
    end_script
    print $1C7
    sel_weapon Weapons - Sherif
    get SherifExit - Sherif
    end_script
SherifNoMoney:
    print $186
    end_script
Stingy:
    print $1D3
    end_script
Weapons:
    print $32F
SherifExit:
    end_script

HillHouseSign:
    entity $5600, $B280, UP, SignAnim

    check_action CHECK, HillHouseSignExit - HillHouseSign
    print $21D
    check_flag FLAG0E|BIT3, $10
    jump HillHouseSignExit - HillHouseSign
LostDentures:
    print $21E
    find_item EMPTY, CantCarryAny - HillHouseSign
    select_item Dentures
    add_item HillHouseSignExit - HillHouseSign
    play SOUND2, 6
    set_flag FLAG0E|BIT3
    end_script
CantCarryAny:
    print $39D
HillHouseSignExit:
    end_script


Reindeer:
    .word ReinMallIn, ReinHospitalIn, ReinCafeIn, ReinHotelIn
    .word BackRoomOut, BackRoomNPC, ReinRobber, ReinNPC1
    .word ReinNPC2, ReinSinger, ReinNPC3, ReinNPC4
    .word ReinNPC5, ReinNPC6, ReinNPC7, ReinNPC8
    .word ReinNPC9, ReinNPC10, ReinNPC11, ReinPoliceman1
    .word ReinPoliceman2, ReinNPC12, byte_108D56, byte_108D5C
    .word byte_108D62, byte_108D68, byte_108D6E, byte_108D74
    .word byte_108D7A, byte_108D80, byte_108D86, byte_108D8C, 0

ReinMallIn:
    entrance DOOR, $6E80, $EF00, UP, MUSIC_f, $7340, $2580, LEFT

ReinHospitalIn:
    entrance DOOR, $7980, $EB00, UP, MUSIC_12, $B740, $FD80, LEFT

ReinCafeIn:
    entrance DOOR, $74C0, $EF00, UP, MUSIC_f, $9340, $2580, LEFT

ReinHotelIn:
    entrance DOOR, $69C0, $EF00, UP, MUSIC_12, $340, $4180, LEFT

BackRoomOut:
    entrance DOOR, $BB80, $F180, RIGHT, MUSIC_SAME, $AA80, $F280, RIGHT

BackRoomNPC:
    npc WALK_NPC, $B980, $F180, RIGHT, stru_1581E8

    check_action TALK, BackRoomNPCExit - BackRoomNPC
    check_flag FLAG07|BIT4, PleaseGetOut - BackRoomNPC
    print $2A0
    end_script
PleaseGetOut:
    print $1F9
BackRoomNPCExit:
    end_script

ReinRobber:
    npc STAT_NPC, $6C40, $EF40, RIGHT, stru_1581A8

    check_action TALK, ReinRobberExit - ReinRobber
    check_flag FLAG06|BIT1, Hold - ReinRobber
    jump LeaveMe - ReinRobber
Hold:
    print $140
    confirm TellYou - ReinRobber
    print $141
    jump GetCash - ReinRobber
TellYou:
    print $142
GetCash:
    play SOUND2, 6
    price 423
    get SetFlag - ReinRobber
    cash
SetFlag:
    set_flag FLAG06|BIT1
    end_script
LeaveMe:
    print $143
ReinRobberExit:
    end_script

ReinNPC1:
    npc WALK_NPC, $6C00, $F440, LEFT, stru_1581E8

    check_action TALK, ReinNPC1Exit - ReinNPC1
    print $147
ReinNPC1Exit:
    end_script

ReinNPC2:
    npc WALK_NPC, $7080, $F080, DOWN, stru_158228

    check_action TALK, ReinNPC2Exit - ReinNPC2
    print $148
ReinNPC2Exit:
    end_script

ReinSinger:
    npc WALK_NPC, $71C0, $EE00, UP, stru_158268

    check_action TALK, ReinSingerExit - ReinSinger
    print $149
    confirm Song - ReinSinger
    print $14A
    confirm Fine - ReinSinger
    play MUSIC, $22
    print $376
    play MUSIC, 6
    end_script
Fine:
    print $14C
    end_script
Song:
    print $14B
ReinSingerExit:
    end_script

ReinNPC3:
    npc WALK_NPC, $7A00, $EBC0, RIGHT, ReceptionistAnim

    check_action TALK, ReinNPC3Exit - ReinNPC3
    print $15D
ReinNPC3Exit:
    end_script

ReinNPC4:
    npc NPC_1, $6A40, $F2C0, DOWN, ReceptionistAnim

    check_action TALK, ReinNPC4Exit - ReinNPC4
    print $156
    sel_char 0, ReinNPC4Exit - ReinNPC4
    set_status FLU
ReinNPC4Exit:
    end_script

ReinNPC5:
    npc WALK_NPC, $7580, $F300, LEFT, stru_158208

    check_action TALK, ReinNPC5Exit - ReinNPC5
    print $151
    confirm NiceGift - ReinNPC5
    print $152
    print $154
    choose NiceGift - ReinNPC5
    unsellable $10
    print $155
    play SOUND2, 6
    select_item FleaBag
    add_item NiceGift - ReinNPC5
    end_script
NiceGift:
    print $153
ReinNPC5Exit:
    end_script

ReinNPC6:
    npc WALK_NPC, $6F80, $EF80, DOWN, stru_158248

    check_action TALK, ReinNPC6Exit - ReinNPC6
    print $2DE
ReinNPC6Exit:
    end_script

ReinNPC7:
    npc WALK_NPC, $7700, $EEC0, LEFT, stru_158268

    check_action TALK, ReinNPC7Exit - ReinNPC7
    print $2DF
ReinNPC7Exit:
    end_script

ReinNPC8:
    npc WALK_NPC, $7800, $EC80, RIGHT, stru_158228

    check_action TALK, ReinNPC8Exit - ReinNPC8
    print $2E0
ReinNPC8Exit:
    end_script

ReinNPC9:
    npc WALK_NPC, $6FC0, $EC80, UP, stru_1582A8

    check_action TALK, ReinNPC9Exit - ReinNPC9
    print $2E1
ReinNPC9Exit:
    end_script

ReinNPC10:
    npc WALK_NPC, $6E80, $F280, DOWN, stru_158288

    check_action TALK, ReinNPC10Exit - ReinNPC10
    print $2E2
ReinNPC10Exit:
    end_script

ReinNPC11:
    npc WALK_NPC, $7080, $EC80, RIGHT, stru_158228

    check_action TALK, ReinNPC11Exit - ReinNPC11
    print $2E3
ReinNPC11Exit:
    end_script

ReinPoliceman1:
    npc WALK_NPC, $7580, $EF80, LEFT, PolicemanAnim

    check_action TALK, ReinPoliceman1Exit - ReinPoliceman1
    print $13D
    confirm LetMeKnow - ReinPoliceman1
    print $13E
    end_script
LetMeKnow:
    print $13F
ReinPoliceman1Exit:
    end_script

ReinPoliceman2:
    npc WALK_NPC, $70C0, $F2C0, RIGHT, PolicemanAnim

    check_action TALK, ReinPoliceman2Exit - ReinPoliceman2
    print $144
    confirm WithoutPay - ReinPoliceman2
    print $145
    end_script
WithoutPay:
    print $146
ReinPoliceman2Exit:
    end_script

ReinNPC12:
    npc NPC_1, $7640, $F140, DOWN, stru_1582A8

    check_action CHECK, CheckTalk - ReinNPC12
    print $59
    end_script
CheckTalk:
    check_action TALK, CheckPSI - ReinNPC12
    print $CA
    end_script
CheckPSI:
    check_psi 1, ReinNPC12Exit - ReinNPC12
    print $14E
ReinNPC12Exit:
    end_script

byte_108D56:
    .byte $69, $6B, 0, $F1, $EB, 0

byte_108D5C:
    .byte $E9, $6E, 0, $F1, $EB, 0

byte_108D62:
    .byte $69, $72, 0, $F1, $EB, 0

byte_108D68:
    .byte $E9, $75, 0, $F0, $EB, 0

byte_108D6E:
    .byte $69, $79, 0, $F0, $EB, 0

byte_108D74:
    .byte $69, $6B, $80, $ED, $EB, 0

byte_108D7A:
    .byte $E9, $6E, $80, $ED, $EB, 0

byte_108D80:
    .byte $69, $72, $80, $ED, $EB, 0

byte_108D86:
    .byte $E9, $75, $80, $EC, $EB, 0

byte_108D8C:
    .byte $69, $79, $80, $EC, $EB, 0


Spookane:
    .word GhostHouseIn, SpookNPC1, SpookNPC2, SpookNPC3
    .word SpookClown, SpookAssistant, SpookNPC4, KeyKeeper
    .word SpookNPC5, SpookNPC6, SpookNPC7, SpookNPC8
    .word SpookNPC9, SpookNPC10, byte_108EDB, byte_108EE1, 0

GhostHouseIn:
    unknown_18 $BE00, $C940, UP

    check_view GhostHouseExit - GhostHouseIn
    approach CheckGhostKey - GhostHouseIn
    print $334
    end_script
CheckGhostKey:
    use_item GhostKey, CheckZooKey - GhostHouseIn
    print $336
    teleport $B74D, $2186
    end_script
CheckZooKey:
    use_item ZooKey, CheckBasementKey - GhostHouseIn
    jump WrongKeyMsg - GhostHouseIn
CheckBasementKey:
    use_item BasementKey, GhostHouseExit - GhostHouseIn
WrongKeyMsg:
    print $335
GhostHouseExit:
    end_script

SpookNPC1:
    .import MayorAnim

    npc WALK_NPC, $B2C0, $D600, RIGHT, MayorAnim

    check_action TALK, SpookNPC1Exit - SpookNPC1
    print $15E
    confirm NeverHurt - SpookNPC1
    print $15F
    end_script
NeverHurt:
    print $160
SpookNPC1Exit:
    end_script

SpookNPC2:
    .import stru_158348

    npc WALK_NPC, $B6C0, $D9C0, DOWN, stru_158348

    check_action TALK, SpookNPC2Exit - SpookNPC2
    print $168
SpookNPC2Exit:
    end_script

SpookNPC3:
    .import stru_1583E8

    npc WALK_NPC, $B7C0, $DBC0, LEFT, stru_1583E8

    check_action TALK, SpookNPC3Exit - SpookNPC3
    print $169
SpookNPC3Exit:
    end_script

SpookClown:
    .import stru_158308

    npc WALK_NPC, $BD80, $D800, DOWN, stru_158308

    check_action TALK, SpookClownExit - SpookClown
    print $16E
    confirm True - SpookClown
    print $16F
    end_script
True:
    print $170
SpookClownExit:
    end_script

SpookAssistant:
    npc WALK_NPC2, $B9C0, $DC40, RIGHT, stru_158328

    hide FLAG06|BIT6
    check_action TALK, SpookAssistantExit - SpookAssistant
    price 1000
    print $16A
    confirm WithoutHelp - SpookAssistant
    pay AssistNoMoney - SpookAssistant
    print $16D
    inc_count 3
    cmp_count 3, 3, Lady - SpookAssistant
    print $35B
    set_flag FLAG06|BIT6
    end_script
Lady:
    cmp_count 3, 2, Melody - SpookAssistant
    print $35A
    end_script
Melody:
    print $299
    end_script
AssistNoMoney:
    print $2B0
    end_script
WithoutHelp:
    print $16C
    set_flag FLAG06|BIT6
SpookAssistantExit:
    end_script

SpookNPC4:
    npc NPC_1, $BE00, $DC40, DOWN, MayorAnim

    check_action TALK, SpookNPC4Exit - SpookNPC4
    print $171
SpookNPC4Exit:
    end_script

KeyKeeper:
    .import stru_158328

    npc WALK_NPC, $BE40, $DD40, RIGHT, stru_158328

    check_action TALK, KeyKeeperExit - KeyKeeper
    check_flag TUNES|BIT3, Tough - KeyKeeper
    check_flag FLAG10|BIT3, BraveBoy - KeyKeeper
    print $178
    end_script
BraveBoy:
    print $179
    set_flag FLAG10|BIT3
    end_script
Tough:
    check_flag FLAG07|BIT7, Key - KeyKeeper
    print $258
    end_script
Key:
    print $176
    find_item EMPTY, AnyMore - KeyKeeper
    select_item GhostKey
    add_item KeyKeeperExit - KeyKeeper
    play SOUND2, 6
    set_flag FLAG07|BIT7
    end_script
AnyMore:
    print $242
KeyKeeperExit:
    end_script

SpookNPC5:
    npc WALK_NPC2, $BE00, $DD40, DOWN, stru_158308

    show TUNES|BIT3
    check_action TALK, SpookNPC5Exit - SpookNPC5
    print $177
SpookNPC5Exit:
    end_script

SpookNPC6:
    .import stru_1583C8

    npc WALK_NPC, $B500, $DDC0, RIGHT, stru_1583C8

    check_action TALK, SpookNPC6Exit - SpookNPC6
    print $2E5
SpookNPC6Exit:
    end_script

SpookNPC7:
    npc WALK_NPC, $B8C0, $E040, LEFT, stru_158328

    check_action TALK, SpookNPC7Exit - SpookNPC7
    print $2E6
SpookNPC7Exit:
    end_script

SpookNPC8:
    .import stru_158448

    npc WALK_NPC, $B6C0, $DE80, DOWN, stru_158448

    check_action TALK, SpookNPC8Exit - SpookNPC8
    print $2E7
SpookNPC8Exit:
    end_script

SpookNPC9:
    npc WALK_NPC, $B540, $E080, RIGHT, stru_158348

    check_action TALK, SpookNPC9Exit - SpookNPC9
    print $2E8
SpookNPC9Exit:
    end_script

SpookNPC10:
    npc WALK_NPC, $B640, $D600, LEFT, stru_158348

    check_action TALK, SpookNPC10Exit - SpookNPC10
    print $2E4
SpookNPC10Exit:
    end_script

byte_108EDB:
    .byte $E9, $B4, $40, $D6, $EC, 0

byte_108EE1:
    .byte $69, $B5, 0, $E0, $EC, 0


Snowman:
    .word SnowStationIn, SnowHealerIn, SnowChurchIn, SnowStoreIn
    .word SnowHotelIn, SnowNPC1, SnowNPC2, SnowNPC3
    .word SnowNPC4, SnowNPC5, SnowNPC6, SnowNPC7
    .word SnowNPC8, SnowNPC9, SnowNPC10, SnowNPC11
    .word SnowNPC12, SnowSign, byte_108FF7, byte_108FFD, 0

SnowStationIn:
    entrance DOOR, $D780, $F880, UP, MUSIC_SAME, $B440, $F140, DOWN

SnowHealerIn:
    entrance DOOR, $E040, $F3C0, UP, MUSIC_a, $B40, $4180, LEFT

SnowChurchIn:
    entrance DOOR, $F440, $F9C0, UP, MUSIC_SAME, $CB40, $2580, LEFT

SnowStoreIn:
    entrance DOOR, $E240, $F8C0, UP, MUSIC_SAME, $A340, $2580, LEFT

SnowHotelIn:
    entrance DOOR, $E340, $F8C0, UP, MUSIC_SAME, $EB40, $2180, LEFT

SnowNPC1:
    npc WALK_NPC, $E000, $F600, LEFT, stru_1581A8

    check_action TALK, SnowNPC1Exit - SnowNPC1
    print $180
    sel_char 0, SnowNPC1Exit - SnowNPC1
    set_status FLU
SnowNPC1Exit:
    end_script

SnowNPC2:
    npc WALK_NPC, $E700, $F880, LEFT, stru_158248

    check_action TALK, SnowNPC2Exit - SnowNPC2
    print $182
SnowNPC2Exit:
    end_script

SnowNPC3:
    npc WALK_NPC, $E7C0, $F9C0, RIGHT, stru_158228

    check_action TALK, SnowNPC3Exit - SnowNPC3
    check_char 2, Lately - SnowNPC3
    check_status FAINTED, Lately - SnowNPC3
    print $184
    end_script
Lately:
    print $183
SnowNPC3Exit:
    end_script

SnowNPC4:
    npc WALK_NPC, $E300, $F4C0, RIGHT, stru_158248

    check_action TALK, SnowNPC4Exit - SnowNPC4
    print $187
SnowNPC4Exit:
    end_script

SnowNPC5:
    npc STAT_NPC, $E180, $F880, LEFT, stru_1582A8

    check_action TALK, SnowNPC5Exit - SnowNPC5
    print $19D
SnowNPC5Exit:
    end_script

SnowNPC6:
    npc WALK_NPC, $D800, $F8C0, DOWN, stru_1581E8

    check_action TALK, SnowNPC6Exit - SnowNPC6
    print $2E9
SnowNPC6Exit:
    end_script

SnowNPC7:
    npc WALK_NPC, $E8C0, $FAC0, RIGHT, stru_158288

    check_action TALK, SnowNPC7Exit - SnowNPC7
    print $2EA
SnowNPC7Exit:
    end_script

SnowNPC8:
    npc WALK_NPC, $E2C0, $F780, DOWN, stru_158228

    check_action TALK, SnowNPC8Exit - SnowNPC8
    print $2EB
    sel_char 0, SnowNPC8Exit - SnowNPC8
    set_status FLU
SnowNPC8Exit:
    end_script

SnowNPC9:
    npc WALK_NPC, $E4C0, $F780, RIGHT, stru_1581A8

    check_action TALK, SnowNPC9Exit - SnowNPC9
    print $2EC
    sel_char 0, SnowNPC9Exit - SnowNPC9
    set_status FLU
SnowNPC9Exit:
    end_script

SnowNPC10:
    npc WALK_NPC, $E680, $F500, LEFT, stru_158268

    check_action TALK, SnowNPC10Exit - SnowNPC10
    print $2ED
SnowNPC10Exit:
    end_script

SnowNPC11:
    npc WALK_NPC, $E5C0, $FA00, LEFT, stru_158228

    check_action TALK, SnowNPC11Exit - SnowNPC11
    print $17B
SnowNPC11Exit:
    end_script

SnowNPC12:
    npc WALK_NPC, $E380, $F940, DOWN, stru_1581A8

    check_action TALK, SnowNPC12Exit - SnowNPC12
    print $17D
    confirm MustGo - SnowNPC12
    print $17E
    end_script
MustGo:
    print $17F
SnowNPC12Exit:
    end_script

SnowSign:
    entity $EA00, $F9C0, UP, SignAnim

    check_action CHECK, SnowSignExit - SnowSign
    print $3AB
SnowSignExit:
    end_script

byte_108FF7:
    .byte $A9, $E3, $80, $FA, $ED, 0

byte_108FFD:
    .byte $A9, $E6, $C0, $FB, $ED, 0


off_109003:
    .word Pilot, Tank, Plane, DesertSign, TankTrigger, R7037
    .word MainCaveOut, CapsuleRoomIn, FinalBoss, 0

Pilot:
    .import PilotAnim

    npc STAT_NPC2, $7CC0, $4840, DOWN, PilotAnim

    hide FLAG02|BIT0
    use_item TicketStub, NoTicket - Pilot
    reset_count 5
Stub:
    find_item TicketStub, NoStub - Pilot
    cash
    select_item TicketStub
    remove_item NoStub - Pilot
    inc_count 5
    cmp_count 5, 10, Stub - Pilot
    print $1AA
    set_flag FLAG11|BIT7
    end_script
NoStub:
    cmp_count 5, 1, NotEnough - Pilot
    find_item EMPTY, NotEnough - Pilot
    select_item TicketStub
    add_item NotEnough - Pilot
    dec_count 5
    jump NoStub - Pilot
NotEnough:
    print $251
    end_script
NoTicket:
    check_action TALK, PilotExit - Pilot
    check_flag FLAG11|BIT7, NotTank - Pilot
    print $3CE
    end_script
NotTank:
    check_flag FLAG07|BIT5, OneMine - Pilot
    print $1A7
    confirm RefuseRide - Pilot
    print $24D
    item_list FlightplanA, FlightplanB, FlightplanC, EMPTY, RefuseRide - Pilot
    clear_flag FLAG11|BIT6
    clear_flag FLAG11|BIT5
    clear_flag FLAG11|BIT4
    buying_item FlightplanA, FlightB - Pilot
    set_flag FLAG11|BIT6
    jump Offer - Pilot
FlightB:
    buying_item FlightplanB, FlightC - Pilot
    set_flag FLAG11|BIT5
    jump Offer - Pilot
FlightC:
    buying_item FlightplanC, Offer - Pilot
    set_flag FLAG11|BIT4
Offer:
    reset_count 0
    inc_count 0
    sel_char 1, FlightCost - Pilot
    check_status FAINTED, Char2 - Pilot
    inc_count 0
Char2:
    sel_char 2, FlightCost - Pilot
    check_status FAINTED, FlightCost - Pilot
    inc_count 0
FlightCost:
    total_price
    print $1A8
    pay LessMoney - Pilot
    reset_count 6
AddTicket:
    cmp_count 0, 1, GetAllTickets - Pilot
    find_item EMPTY, SubTicket - Pilot
    select_item TicketStub
    add_item SubTicket - Pilot
    inc_count 6
    dec_count 0
    jump AddTicket - Pilot
SubTicket:
    cmp_count 6, 1, NoSpace - Pilot
    find_item TicketStub, PilotExit - Pilot
    select_item TicketStub
    remove_item PilotExit - Pilot
    dec_count 6
    jump SubTicket - Pilot
NoSpace:
    print $23E
    check_flag FLAG11|BIT6, SubFlightB - Pilot
    select_item FlightplanA
    jump FinalOffer - Pilot
SubFlightB:
    check_flag FLAG11|BIT5, SubFlightC - Pilot
    select_item FlightplanB
    jump FinalOffer - Pilot
SubFlightC:
    select_item FlightplanC
FinalOffer:
    total_price
    get PilotExit - Pilot
    end_script
LessMoney:
    print $23F
    end_script
RefuseRide:
    print $1A9
    end_script
OneMine:
    print $1A6
    set_flag FLAG07|BIT5
PilotExit:
    end_script
GetAllTickets:
    play SOUND2, 6
    move Boarding
    another 2
    set_flag FLAG02|BIT0
    end_script
Boarding:
    .byte $30, 1, $14, 1, 0

Tank:
    .import TankAnim

    vehicle $7E00, $4900, DOWN, TankAnim+$10

    hide FLAG03|BIT7
    approach TankExit - Tank
    check_flag FLAG11|BIT7, TankExit - Tank
    play MUSIC, $17
    tank 4
    set_flag FLAG03|BIT7
    set_flag FLAG0E|BIT4
TankExit:
    end_script

Plane:
    .import PlaneAnim

    vehicle $7CC0, $4800, LEFT, PlaneAnim+$18

    hide FLAG03|BIT6
    check_keypress PlaneExit - Plane
    check_flag FLAG11|BIT6, BoardPassB - Plane
    plane 6
    play MUSIC, $1E
    move WayA
    land
    move Landing
    get_off 4
    play MUSIC, 8
    clear_flag FLAG02|BIT0
    end_script
BoardPassB:
    check_flag FLAG11|BIT5, BoardPassC - Plane
    plane 6
    play MUSIC, $1E
    move WayB
    land
    move Landing
    get_off 4
    play MUSIC, 8
    clear_flag FLAG02|BIT0
    end_script
BoardPassC:
    check_flag FLAG11|BIT4, PlaneExit - Plane
    plane 6
    play MUSIC, $1E
    move WayC
    land
    move Landing
    get_off 4
    play MUSIC, 8
    clear_flag FLAG02|BIT0
PlaneExit:
    end_script
WayA:
    .byte $16, $33, $17, 5, $10, $A, $10, 2, $11, 2, $12, 4
    .byte $13, 2, $14, 4, $15, 2, $16, 4, $17, 2, $10, 4, $11
    .byte 2, $12, 4, $13, 2, $14, 4, $15, 2, $16, 4, $17, 2
    .byte $10, 1, $10, $43, $11, 5, $12, $B7, $13, 5, $14
    .byte $4C, $15, 5, $16, $7A, 3
WayB:
    .byte $16, $D6, $15, $2E, $16, $32, $17, $A, $10
    .byte $40, $11, $D, $12, $C8, $12, $7A, $13, 8, $14, $19
    .byte $15, 8, $16, 5, 3
WayC:
    .byte $16, $F, $17, 5, $10, $4C, $11, 5, $12, $C8, $12
    .byte $46, $13, $A, $14, $C3, $15, 5, $16, $54, $17, $7C
    .byte $16, $2A, 3
Landing:
    .byte $16, $A, 0

DesertSign:
    entity $7A40, $4880, UP, SignAnim

    check_action CHECK, DesertSignExit - DesertSign
    print $1A5
DesertSignExit:
    end_script

TankTrigger:
    unknown_1F $7E00, $4900, UP

    show FLAG0E|BIT4
    approach TankTriggerExit - TankTrigger
    clear_flag FLAG03|BIT7
    clear_flag FLAG0E|BIT4
    play MUSIC, 8
    get_off 0
TankTriggerExit:
    end_script

R7037:
    unknown_1C $9D40, $4640, UP

    show FLAG0E|BIT4
    approach R7037Exit - R7037
    enemies $6F
    set_flag FLAG0F|BIT7
    set_flag FLAG12|BIT7
    clear_flag FLAG0E|BIT4
    set_flag FLAG02|BIT0
    set_flag FLAG03|BIT6
    set_flag FLAG03|BIT5
    play MUSIC, 8
    get_off 0
R7037Exit:
    end_script

MainCaveOut:
    entrance DOOR, $C140, $A000, UP, MUSIC_b, $E240, $9180, DOWN

CapsuleRoomIn:
    entrance DOOR, $C340, $9D00, UP, MUSIC_SAME, $E340, $2D80, LEFT

FinalBoss:
    unknown_18 $C180, $9200, UP
    check_view FinalBossExit - FinalBoss
    approach FinalBossExit - FinalBoss
    enemies $A2
FinalBossExit:
    end_script


YoungTown:
    .word YounHotelIn, YounStoreIn, EastHouseIn, YounChurchIn
    .word YounStationIn, YounHouseIn, YounNPC1, YounNPC2
    .word YounNPC3, YounNPC4, YounNPC5, YounNPC6
    .word YounNPC7, YounNPC8, YounNPC9, YounNPC10
    .word YounNPC11, YounNPC12, YounNPC13, YounNPC14
    .word YounNPC15, YounTownOut, YounTownIn, Youn2Swamp
    .word Swamp2Youn, YounSign, ChristmasTree, 0

YounHotelIn:
    entrance DOOR, $B240, $6FC0, UP, MUSIC_SAME, $AF40, $F580, LEFT

YounStoreIn:
    entrance DOOR, $B340, $6FC0, UP, MUSIC_SAME, $B40, $4580, LEFT

EastHouseIn:
    entrance DOOR, $E940, $5DC0, UP, MUSIC_12, $9740, $F980, LEFT

YounChurchIn:
    entrance DOOR, $B140, $73C0, UP, MUSIC_SAME, $DB40, $2580, LEFT

YounStationIn:
    entrance DOOR, $BA40, $6780, UP, MUSIC_f, $B440, $F940, DOWN

YounHouseIn:
    entrance DOOR, $A880, $71C0, UP, MUSIC_SAME, $D740, $2180, LEFT

YounNPC1:
    .import stru_158428

    npc NPC_1, $AD80, $6E00, LEFT, stru_158428

    check_action TALK, YounNPC1Exit - YounNPC1
    print $1B1
    print 3
YounNPC1Exit:
    end_script

YounNPC2:
    npc WALK_NPC, $AAC0, $7040, RIGHT, stru_1583C8

    check_action TALK, YounNPC2Exit - YounNPC2
    print $1B5
YounNPC2Exit:
    end_script

YounNPC3:
    npc WALK_NPC, $B440, $72C0, DOWN, stru_158448

    check_action TALK, YounNPC3Exit - YounNPC3
    print $1B3
YounNPC3Exit:
    end_script

YounNPC4:
    npc WALK_NPC, $AB00, $7100, UP, stru_158308

    check_action TALK, YounNPC4Exit - YounNPC4
    print $1B6
YounNPC4Exit:
    end_script

YounNPC5:
    npc WALK_NPC, $AF80, $7980, LEFT, stru_1583C8

    check_action TALK, YounNPC5Exit - YounNPC5
    print $1B7
YounNPC5Exit:
    end_script

YounNPC6:
    npc WALK_NPC, $B280, $7800, LEFT, stru_158308

    check_action TALK, YounNPC6Exit - YounNPC6
    print $1B8
YounNPC6Exit:
    end_script

YounNPC7:
    npc STAT_NPC, $AD00, $7440, UP, stru_1583E8

    check_action TALK, YounNPC7Exit - YounNPC7
    print $1BA
YounNPC7Exit:
    end_script

YounNPC8:
    .import stru_1583A8

    npc WALK_NPC, $AE80, $7440, UP, stru_1583A8

    check_action TALK, YounNPC8Exit - YounNPC8
    print $1B9
YounNPC8Exit:
    end_script

YounNPC9:
    .import stru_158388

    npc STAT_NPC, $ADC0, $7500, LEFT, stru_158388

    check_action TALK, YounNPC9Exit - YounNPC9
    print $1BB
YounNPC9Exit:
    end_script

YounNPC10:
    npc WALK_NPC, $AE80, $75C0, DOWN, stru_1583A8

    check_action TALK, YounNPC10Exit - YounNPC10
    print $1BB
YounNPC10Exit:
    end_script

YounNPC11:
    npc STAT_NPC, $AF00, $7080, DOWN, stru_1583C8

    check_action TALK, YounNPC11Exit - YounNPC11
    print $1BC
YounNPC11Exit:
    end_script

YounNPC12:
    npc STAT_NPC, $AA80, $7A80, RIGHT, stru_158308

    check_action TALK, YounNPC12Exit - YounNPC12
    print $1C6
YounNPC12Exit:
    end_script

YounNPC13:
    npc NPC_1, $BD40, $75C0, DOWN, stru_158308

    check_action TALK, YounNPC13Exit - YounNPC13
    print $1B2
YounNPC13Exit:
    end_script

YounNPC14:
    npc WALK_NPC, $B280, $70C0, RIGHT, stru_158308

    check_action TALK, YounNPC14Exit - YounNPC14
    print $1B4
YounNPC14Exit:
    end_script

YounNPC15:
    npc WALK_NPC, $A880, $7340, DOWN, stru_1583C8

    check_action TALK, YounNPC15Exit - YounNPC15
    print $1B0
YounNPC15Exit:
    end_script

YounTownOut:
    change_location $AD40, $6D80, UP

    approach YounTownOutExit - YounTownOut
    play MUSIC, 8
YounTownOutExit:
    end_script

YounTownIn:
    change_location $AD40, $6DC0, UP

    approach YounTownInExit - YounTownIn
    play MUSIC, $30
YounTownInExit:
    end_script

Youn2Swamp:
    change_location $BD40, $7600, UP

    approach Youn2SwampExit - Youn2Swamp
    play MUSIC, 6
Youn2SwampExit:
    end_script

Swamp2Youn:
    change_location $BD00, $7600, UP

    approach Swamp2YounExit - Swamp2Youn
    play MUSIC, $30
Swamp2YounExit:
    end_script

YounSign:
    entity $BD00, $75C0, UP, SignAnim

    check_action CHECK, YounSignExit - YounSign
    print $3B2
YounSignExit:
    end_script

ChristmasTree:
    .byte $A9, $AC, $80, $6F, $EE, 0


EllayCity:
    .word EllMallIn, EllLiveHouseIn, EllCafeIn, EllHotelIn
    .word EllHospitalIn, EllTowerIn, EllPoliceIn, EllNPC1
    .word EllNPC2, EllNPC3, EllNPC4, EllNPC5
    .word EllSpeculator, EllNPC6, EllNPC7, AngryPilot
    .word EllGang1, EllGang2, EllGang3, EllGang4
    .word EllGang5, EllGang6, EllNPC8, EllNPC9
    .word EllNPC10, EllGang7, EllNPC11, Fisherman
    .word stru_1095CD, EllTowerSign, EllDirectionsSign, EllPoliceSign
    .word TowerSign, stru_109604, stru_10960A, stru_109610
    .word stru_109616, stru_10961C, stru_109622, 0

EllMallIn:
    entrance DOOR, $C580, $4600, UP, MUSIC_f, $B40, $5580, LEFT

EllLiveHouseIn:
    entrance DOOR, $C8C0, $4B00, UP, MUSIC_22, $AEC0, $F200, LEFT

EllCafeIn:
    entrance DOOR, $C7C0, $4600, UP, MUSIC_f, $B40, $2D80, LEFT

EllHotelIn:
    entrance DOOR, $C1C0, $4B00, UP, MUSIC_12, $AF40, $FD80, LEFT

EllHospitalIn:
    entrance DOOR, $C2C0, $4B00, UP, MUSIC_12, $BF40, $FD80, LEFT

EllTowerIn:
    entrance DOOR, $B840, $33C0, UP, MUSIC_f, $B40, $3580, LEFT

EllPoliceIn:
    entrance DOOR, $C280, $4800, UP, MUSIC_12, $C340, $F180, LEFT

EllNPC1:
    .import stru_158784

    npc WALK_NPC, $D000, $42C0, DOWN, stru_158784

    check_action TALK, EllNPC1Exit - EllNPC1
    print $1CA
EllNPC1Exit:
    end_script

EllNPC2:
    .import stru_15875C

    npc WALK_NPC, $CB80, $43C0, DOWN, stru_15875C

    check_action TALK, EllNPC2Exit - EllNPC2
    print $1CB
EllNPC2Exit:
    end_script

EllNPC3:
    npc WALK_NPC, $CB80, $4680, LEFT, stru_158784

    check_action TALK, EllNPC3Exit - EllNPC3
    print $1CC
EllNPC3Exit:
    end_script

EllNPC4:
    .import stru_1586BC

    npc WALK_NPC, $C440, $4980, RIGHT, stru_1586BC

    check_action TALK, EllNPC4Exit - EllNPC4
    print $1CD
EllNPC4Exit:
    end_script

EllNPC5:
    .import stru_15873C

    npc WALK_NPC, $C5C0, $4A80, LEFT, stru_15873C

    check_action TALK, EllNPC5Exit - EllNPC5
    check_char 2, EllLove - EllNPC5
    check_status FAINTED, EllLove - EllNPC5
    check_char 1, EllLove - EllNPC5
    check_status FAINTED, EllLove - EllNPC5
    print $1CE
    confirm EllBurn - EllNPC5
    print $1CF
    end_script
EllBurn:
    print $1D0
    end_script
EllLove:
    print $1CF
EllNPC5Exit:
    end_script

EllSpeculator:
    npc WALK_NPC, $C980, $4BC0, LEFT, stru_15873C

    check_action TALK, EllSpeculatorExit - EllSpeculator
    price 1200
    print $1D1
    confirm EllStingy - EllSpeculator
    pay $28
    find_item EMPTY, EllNotCarry - EllSpeculator
    play SOUND2, 6
    select_item Ticket
    add_item EllSpeculatorExit - EllSpeculator
    print $1D2
    end_script
EllNotCarry:
    print $1C7
    price 1200
    get EllSpeculatorExit - EllSpeculator
    end_script
    print $186
    end_script
EllStingy:
    print $1D3
EllSpeculatorExit:
    end_script

EllNPC6:
    npc WALK_NPC, $CB00, $48C0, RIGHT, stru_15875C

    check_action TALK, EllNPC6Exit - EllNPC6
    check_char 4, EllSecret - EllNPC6
    print $25B
    end_script
EllSecret:
    print $1D4
    confirm EllRegrets - EllNPC6
    print $1D5
    end_script
EllRegrets:
    print $1D6
EllNPC6Exit:
    end_script

EllNPC7:
    npc WALK_NPC, $D1C0, $49C0, DOWN, stru_1586BC

    check_action TALK, EllNPC7Exit - EllNPC7
    print $1FD
EllNPC7Exit:
    end_script

AngryPilot:
    npc STAT_NPC2, $C8C0, $4B40, DOWN, AngryPilotAnim

    show FLAG03|BIT5
    check_action TALK, AngryPilotExit - AngryPilot
    price 200
    print $1AB
    confirm SoAngry - AngryPilot
    pay AngryNoMoney - AngryPilot
    print $1AD
    move byte_1094BE
    clear_flag FLAG03|BIT5
    move byte_1094C5
    end_script
AngryNoMoney:
    print $1E0
    end_script
SoAngry:
    print $1AE
AngryPilotExit:
    end_script
byte_1094BE:
    .byte $76, 4, $F2, 1, $76, 4, 3
byte_1094C5:
    .byte 0

EllGang1:
    .import stru_15869C

    npc WALK_NPC, $C7C0, $4C40, UP, stru_15869C

    check_action TALK, EllGang1Exit - EllGang1
    check_char 4, EllGang1Fight - EllGang1
    check_status FAINTED, EllGang1Back - EllGang1
    print $368
    end_script
EllGang1Back:
    print $369
    end_script
EllGang1Fight:
    print $2F2
    enemies $9E
EllGang1Exit:
    end_script

EllGang2:
    npc WALK_NPC, $C900, $4940, RIGHT, stru_15869C

    check_action TALK, EllGang2Exit - EllGang2
    check_char 4, EllGang2Fight - EllGang2
    check_status FAINTED, EllGang2Back - EllGang2
    print $368
    end_script
EllGang2Back:
    print $369
    end_script
EllGang2Fight:
    print $2F3
    enemies $9E
EllGang2Exit:
    end_script

EllGang3:
    npc WALK_NPC, $C7C0, $4700, LEFT, stru_15869C

    check_action TALK, EllGang3Exit - EllGang3
    check_char 4, EllGang3Fight - EllGang3
    check_status FAINTED, EllGang3Back - EllGang3
    print $368
    end_script
EllGang3Back:
    print $369
    end_script
EllGang3Fight:
    print $2F4
    enemies $9E
EllGang3Exit:
    end_script

EllGang4:
    npc WALK_NPC, $C0C0, $4B80, RIGHT, stru_15869C

    check_action TALK, EllGang4Exit - EllGang4
    check_char 4, EllGang4Fight - EllGang4
    check_status FAINTED, EllGang4Back - EllGang4
    print $368
    end_script
EllGang4Back:
    print $369
    end_script
EllGang4Fight:
    print $2F5
    enemies $9E
EllGang4Exit:
    end_script

EllGang5:
    npc WALK_NPC, $C180, $4C00, LEFT, stru_15869C

    check_action TALK, EllGang5Exit - EllGang5
    check_char 4, EllGang5Fight - EllGang5
    check_status FAINTED, EllGang5Back - EllGang5
    print $368
    end_script
EllGang5Back:
    print $369
    end_script
EllGang5Fight:
    print $2F6
    enemies $9E
EllGang5Exit:
    end_script

EllGang6:
    npc WALK_NPC, $C400, $4680, DOWN, stru_15869C

    check_action TALK, EllGang6Exit - EllGang6
    check_char 4, EllGang6Fight - EllGang6
    check_status FAINTED, EllGang6Back - EllGang6
    print $368
    end_script
EllGang6Back:
    print $369
    end_script
EllGang6Fight:
    print $2F7
    enemies $9E
EllGang6Exit:
    end_script

EllNPC8:
    npc WALK_NPC, $C340, $3F00, DOWN, stru_1586BC

    check_action TALK, EllNPC8Exit - EllNPC8
    print $2F8
EllNPC8Exit:
    end_script

EllNPC9:
    .import stru_1586DC

    npc WALK_NPC, $C780, $42C0, UP, stru_1586DC

    check_action TALK, EllNPC9Exit - EllNPC9
    print $2F9
EllNPC9Exit:
    end_script

EllNPC10:
    npc WALK_NPC, $CA80, $3E80, DOWN, stru_15873C

    check_action TALK, EllNPC10Exit - EllNPC10
    print $2FA
EllNPC10Exit:
    end_script

EllGang7:
    npc WALK_NPC, $D100, $40C0, LEFT, stru_15869C

    check_action TALK, EllGang7Exit - EllGang7
    print $1C9
EllGang7Exit:
    end_script

EllNPC11:
    .import stru_15871C

    npc STAT_NPC2, $C8C0, $4B80, LEFT, stru_15871C

    show FLAG05|BIT4
    approach EllNPC11Exit - EllNPC11
    move byte_1095AC
EllNPC11Exit:
    end_script
byte_1095AC:
    .byte $36, $14, $30, 1, $31
    .byte $A, $30, 1, $36, $F, $30, 1, $10, 1, $16, 1, 3

Fisherman:
    .import AngryPilotAnim

    npc NPC_1, $C880, $3000, UP, AngryPilotAnim

    check_action TALK, FishermanExit - Fisherman
    print $2F1
    sleep
    print $355
FishermanExit:
    end_script

stru_1095CD:
    .byte $E5, $C8, $C0, $4A, $7C, $87, 0

EllTowerSign:
    entity $C280, $3F40, UP, SignAnim

    check_action CHECK, EllTowerSignExit - EllTowerSign
    print $3A6
EllTowerSignExit:
    end_script

EllDirectionsSign:
    entity $CE80, $4340, UP, SignAnim

    check_action CHECK, EllDirectionsSignExit - EllDirectionsSign
    print $3A7
EllDirectionsSignExit:
    end_script

EllPoliceSign:
    entity $C240, $4840, UP, SignAnim

    check_action CHECK, EllPoliceSignExit - EllPoliceSign
    print $3B4
EllPoliceSignExit:
    end_script

TowerSign:
    entity $B800, $3400, UP, SignAnim

    check_action CHECK, TowerSignExit - TowerSign
    print $218
TowerSignExit:
    end_script

stru_109604:
    .byte $29, $C2, 0, $4A, $EF, 0

stru_10960A:
    .byte $A9, $C5, 0, $4A, $EF, 0

stru_109610:
    .byte $29, $C9, 0, $4A, $EF, 0

stru_109616:
    .byte $29, $C2, $80, $46, $EF, 0

stru_10961C:
    .byte $A9, $C5, $80, $46, $EF, 0

stru_109622:
    .byte $29, $C9, $80, $46, $EF, 0


off_109628:
    .word PodMerPoliceman1, PodMerPoliceman2, PodDirectionsSign, PodMerSign
    .word CityZooSign, 0

PodMerPoliceman1:
    npc STAT_NPC2, $4340, $65C0, LEFT, PolicemanAnim

    hide FLAG0E|BIT0
    check_action TALK, PodMerPoliceman1Exit - PodMerPoliceman1
    print $F5
PodMerPoliceman1Exit:
    end_script

PodMerPoliceman2:
    npc STAT_NPC2, $4340, $6600, LEFT, PolicemanAnim

    hide FLAG0E|BIT0
    check_action TALK, PodMerPoliceman2Exit - PodMerPoliceman2
    print $F5
PodMerPoliceman2Exit:
    end_script

PodDirectionsSign:
    entity $2EC0, $7CC0, UP, SignAnim

    check_action CHECK, PodDirectionsSignExit - PodDirectionsSign
    print $3A8
PodDirectionsSignExit:
    end_script

PodMerSign:
    entity $4200, $6540, UP, SignAnim

    check_action CHECK, PodMerSignExit - PodMerSign
    print $3A9
PodMerSignExit:
    end_script

CityZooSign:
    entity $3480, $42C0, UP, SignAnim

    check_action CHECK, CityZooSignExit - CityZooSign
    print $3AA
CityZooSignExit:
    end_script


Crypt:
    .word CryptIn, CryptRoomOut, CryptOut, CryptRoomIn
    .word Coffin, Coffin1, Coffin2, Coffin3, Pippi, 0

CryptIn:
    entrance HOLE, $3680, $8D80, UP, MUSIC_11, $C780, $2100, LEFT

CryptRoomOut:
    entrance DOOR, $CF80, $2180, RIGHT, MUSIC_SAME, $C440, $22C0, RIGHT

CryptOut:
    entrance DOOR, $C780, $20C0, UP, MUSIC_d, $3680, $8D80, DOWN

CryptRoomIn:
    entrance DOOR, $C400, $22C0, LEFT, MUSIC_SAME, $CF40, $2180, LEFT

Coffin:
    .import CoffinAnim

    unknown_21 $CD00, $21C0, UP, CoffinAnim

    hide FLAG03|BIT4
    check_action CHECK, CoffinExit - Coffin
    print $37E
    set_flag FLAG03|BIT0
    set_flag FLAG03|BIT4
    another 8
    move byte_1096BF
CoffinExit:
    end_script
byte_1096BF:
    .byte $50, 1, 0

Coffin1:
    unknown_21 $CD80, $2140, UP, CoffinAnim

    hide FLAG03|BIT3
    check_action CHECK, Coffin1Exit - Coffin1
    print $37E
    enemies $10
    set_flag FLAG03|BIT3
Coffin1Exit:
    end_script

Coffin2:
    unknown_21 $CE40, $2140, UP, CoffinAnim

    hide FLAG03|BIT2
    check_action CHECK, Coffin2Exit - Coffin2
    print $37E
    enemies $10
    set_flag FLAG03|BIT2
Coffin2Exit:
    end_script

Coffin3:
    unknown_21 $CEC0, $21C0, UP, CoffinAnim

    hide FLAG03|BIT1
    check_action CHECK, Coffin3Exit - Coffin3
    print $37E
    enemies $10
    set_flag FLAG03|BIT1
Coffin3Exit:
    end_script

Pippi:
    npc STAT_NPC2, $CD00, $21C0, DOWN, stru_158080

    show FLAG03|BIT0
    check_action TALK, PippiMusic - Pippi
    print $65
    confirm PippiMeet - Pippi
    print $66
    jump PippiGo - Pippi
PippiMeet:
    print $67
    confirm PippiSpecial - Pippi
    print $68
    find_item EMPTY, PippiCantCarry - Pippi
    select_item FranklnBdge
    add_item PippiExit - Pippi
    play SOUND2, 6
    set_flag FLAG0C|BIT5
    jump PippiGo - Pippi
PippiCantCarry:
    print $249
    jump PippiGo - Pippi
PippiSpecial:
    print $69
PippiGo:
    print $248
    play MUSIC, $21
    wait 180
    play MUSIC, $11
    move byte_10974D
    print $366
    move byte_109758
    add_char 5, PippiExit - Pippi
    clear_flag FLAG03|BIT0
    end_script
PippiMusic:
    check_keypress PippiExit - Pippi
    move byte_109761
    play MUSIC, $1D
    wait 180
    play MUSIC, $11
PippiExit:
    end_script
byte_10974D:
    .byte $31, 1, $32, 8, $F6, 1, $F2, 1, $F6, 1, 3
byte_109758:
    .byte $34, 1, $76, 1, $70, 1, $F2, 1, 0
byte_109761:
    .byte $F4, 1, 0


Zoo:
    .word ZooOfficeIn, SingingMonkeySign, SingingMonkey, Panda1, Panda2
    .word Rabbit1, Rabbit2, Rabbit3, Rabbit4
    .word Penguin1, Penguin2, Penguin3, Penguin4
    .word Flamingo1, Flamingo2, Flamingo3, Flamingo4
    .word Monkey1, Monkey2, Monkey3, Monkey4
    .word ZooIn, MonkeyThief, Lock
    .word ZooOut, TheZoo, ZooOfficeSign, 0

ZooOfficeIn:
    unknown_18 $2F80, $3CC0, UP

    check_view ZooOfficeInExit - ZooOfficeIn
    approach ZooOfficeInExit - ZooOfficeIn
    check_flag FLAG01|BIT2, ZooEnter - ZooOfficeIn
    teleport $7B40, $2186
    end_script
ZooEnter:
    teleport $7B6E, $2186
ZooOfficeInExit:
    end_script

SingingMonkeySign:
    .import stru_158868

    entity $30C0, $36C0, UP, stru_158868

    check_action CHECK, SingingMonkeySignExit - SingingMonkeySign
    print $362
    check_flag FLAG01|BIT2, SingingMonkeySignExit - SingingMonkeySign
    another 2
SingingMonkeySignExit:
    end_script

SingingMonkey:
    npc WALK_NPC2, $3000, $3640, DOWN, MonkeyAnim

    show FLAG01|BIT2
    check_keypress SingingMonkeyExit - SingingMonkey
    print $35D
    move byte_1097E0
    play MUSIC, $26
    wait 240
    play MUSIC, $12
    set_flag TUNES|BIT2
    print $340
SingingMonkeyExit:
    end_script
byte_1097E0:
    .byte $F4, 1, 0

Panda1:
    .import PandaAnim

    entity $2A00, $3600, UP, PandaAnim
    end_script

Panda2:
    entity $2A80, $3640, UP, PandaAnim
    end_script

Rabbit1:
    .import RabbitAnim

    npc UNKNOWN_22, $1BC0, $3B40, LEFT, RabbitAnim
    end_script

Rabbit2:
    npc UNKNOWN_22, $1CC0, $3BC0, LEFT, RabbitAnim
    end_script

Rabbit3:
    npc UNKNOWN_22, $1B40, $3C40, RIGHT, RabbitAnim
    end_script

Rabbit4:
    npc UNKNOWN_22, $1BC0, $3C00, DOWN, RabbitAnim
    end_script

Penguin1:
    .import PenguinAnim

    npc WALK_NPC, $2200, $3C40, RIGHT, PenguinAnim
    end_script

Penguin2:
    npc WALK_NPC, $2240, $3CC0, LEFT, PenguinAnim
    end_script

Penguin3:
    npc WALK_NPC, $2080, $3D40, DOWN, PenguinAnim
    end_script

Penguin4:
    npc WALK_NPC, $21C0, $3C80, RIGHT, PenguinAnim
    end_script

Flamingo1:
    .import FlamingoAnim

    entity $2E80, $3800, UP, FlamingoAnim
    end_script

Flamingo2:
    entity $2E00, $3840, UP, FlamingoAnim
    end_script

Flamingo3:
    entity $2F00, $3840, UP, FlamingoAnim
    end_script

Flamingo4:
    entity $2DC0, $3940, UP, FlamingoAnim
    end_script

Monkey1:
    npc STAT_NPC, $2500, $3840, DOWN, MonkeyAnim
    end_script

Monkey2:
    npc STAT_NPC, $2540, $3900, RIGHT, MonkeyAnim
    end_script

Monkey3:
    .import MonkeyAnim

    npc WALK_NPC, $2480, $3940, RIGHT, MonkeyAnim
    end_script

Monkey4:
    npc STAT_NPC, $25C0, $3940, DOWN, MonkeyAnim
    end_script

ZooIn:
    .import stru_158864

    unknown_24 $1F40, $4080, UP, stru_158864
    end_script

MonkeyThief:
    npc STAT_NPC2, $1F40, $4100, DOWN, MonkeyAnim

    hide FLAG04|BIT6
    approach MonkeyTalk - MonkeyThief
    jump MonkeyEEE - MonkeyThief
MonkeyTalk:
    check_action TALK, MonkeyThiefExit - MonkeyThief
MonkeyEEE:
    print $6D
    find_item ZooKey, MonkeyThiefExit - MonkeyThief
    print $342
    select_item ZooKey
    remove_item MonkeyThiefExit - MonkeyThief
    change_type $26
    set_flag FLAG04|BIT6
MonkeyThiefExit:
    end_script

Lock:
    .import stru_15886C

    unknown_1D $1F40, $40C0, UP, stru_15886C

    hide FLAG04|BIT7
    check_action CHECK, LockApproach - Lock
    jump BrokenLock - Lock
LockApproach:
    approach LockExit - Lock
BrokenLock:
    print $367
    set_flag FLAG04|BIT7
LockExit:
    end_script

ZooOut:
    unknown_1F $1F40, $4100, UP

    show FLAG04|BIT6
    approach ZooOutExit - ZooOut
    play MUSIC, 6
ZooOutExit:
    end_script

TheZoo:
    change_location $1F40, $4040, UP

    approach TheZooExit - TheZoo
    check_flag FLAG01|BIT2, TheZooMusic - TheZoo
    play MUSIC, $12
    end_script
TheZooMusic:
    play MUSIC, $11
TheZooExit:
    end_script

ZooOfficeSign:
    entity $2F40, $3D00, UP, SignAnim

    check_action CHECK, ZooOfficeSignExit - ZooOfficeSign
    print $217
ZooOfficeSignExit:
    end_script


off_1098C2:
    .word StrangeCaveIn, Policeman1, Policeman2, 0

StrangeCaveIn:
    entrance DOOR, $5240, $39C0, UP, MUSIC_31, $F080, $8540, DOWN

Policeman1:
    npc NPC_1, $3F80, $34C0, LEFT, PolicemanAnim

    check_action TALK, Police1Check - Policeman1
    check_flag FLAG01|BIT2, ZooCase1 - Policeman1
    update_coor DeepCave - Policeman1
    print $371
    another 2
    check_view Police1Move1 - Policeman1
    move byte_109902
    end_script
Police1Move1:
    move byte_109909
    end_script
ZooCase1:
    print $370
    end_script
DeepCave:
    print $371
    end_script
Police1Check:
    check_keypress Policeman1Exit - Policeman1
    check_view Police1Move2 - Policeman1
    move byte_109902
    end_script
Police1Move2:
    move byte_109909
Policeman1Exit:
    end_script
byte_109902:
    .byte $F2, 1, $7E, 2, $78, 1, 0
byte_109909:
    .byte $7A, 2, $78, 1, 0

Policeman2:
    npc NPC_1, $3F80, $3500, LEFT, PolicemanAnim

    check_action TALK, Police2Check - Policeman2
    check_flag FLAG01|BIT2, ZooCase2 - Policeman2
    update_coor Curfew - Policeman2
    print $3B9
    print $372
    another 1
    check_view Police2Move1 - Policeman2
    move byte_109944
    end_script
Police2Move1:
    move byte_10994B
    end_script
ZooCase2:
    print $370
    end_script
Curfew:
    print $3B9
    print $372
    end_script
Police2Check:
    check_keypress Policeman2Exit - Policeman2
    check_view Police2Move2 - Policeman2
    move byte_109944
    end_script
Police2Move2:
    move byte_10994B
Policeman2Exit:
    end_script
byte_109944:
    .byte $F2, 1, $7E, 3, $7C, 1, 0
byte_10994B:
    .byte $7A, 1, $7C, 1, 0


off_109950:
    .word MerTunnelIn, CaveCrystalIn, LostPass1, LostPass2
    .word SweetFactoryIn, SweetFactorySign, 0

MerTunnelIn:
    entrance DOOR, $6C80, $73C0, RIGHT, MUSIC_SAME, $240, $FE80, RIGHT

CaveCrystalIn:
    entrance DOOR, $5980, $9380, UP, MUSIC_31, $F980, $8240, DOWN

LostPass1:
    unknown_1F $4880, $53C0, UP

    hide FLAG10|BIT2
    call LostPass2, PassCall - LostPass2
    end_script

LostPass2:
    unknown_1F $48C0, $53C0, UP

    hide FLAG10|BIT2
    call LostPass2, PassCall - LostPass2
    end_script
PassCall:
    approach PassCallExit - LostPass2
    print $19B
    find_item EMPTY, PassCantCarry - LostPass2
    select_item Pass
    print $25E
    play SOUND2, 6
    add_item PassCallExit - LostPass2
    set_flag FLAG10|BIT2
    return
PassCantCarry:
    print $39D
PassCallExit:
    return

SweetFactoryIn:
    entrance DOOR, $5580, $95C0, UP, MUSIC_c, $1C40, $6B80, LEFT

SweetFactorySign:
    entity $5540, $9600, UP, SignAnim

    check_action CHECK, SweetFactorySignExit - SweetFactorySign
    print $3C9
SweetFactorySignExit:
    end_script


off_1099B0:
     .word ReinTunnelIn, ReinDirectionsSign, 0

ReinTunnelIn:
    entrance DOOR, $6C80, $B8C0, UP, MUSIC_SAME, $5980, $FE80, LEFT

ReinDirectionsSign:
    entity $7780, $D040, UP, SignAnim

    check_action CHECK, ReinDirectionsSignExit - ReinDirectionsSign
    print $3B0
ReinDirectionsSignExit:
    end_script


off_1099CA:
    .word SpookTunnelIn, SpookHospitalIn, SpookHotelIn, SpookStationIn
    .word SpookDirectionsSign, RosemarysSign, 0

SpookTunnelIn:
    entrance DOOR, $B480, $CFC0, RIGHT, MUSIC_SAME, $240, $8280, RIGHT

SpookHospitalIn:
    entrance DOOR, $A9C0, $D500, UP, MUSIC_12, $9740, $F580, LEFT

SpookHotelIn:
    entrance DOOR, $A9C0, $DB00, UP, MUSIC_11, $340, $3980, LEFT

SpookStationIn:
    entrance DOOR, $AA40, $CF80, UP, MUSIC_f, $A440, $F940, DOWN

SpookDirectionsSign:
    entity $AB80, $D540, UP, SignAnim

    check_action CHECK, SpookDirectionsSignExit - SpookDirectionsSign
    print $3B1
SpookDirectionsSignExit:
    end_script

RosemarysSign:
    entity $BD40, $D100, UP, SignAnim

    check_action CHECK, RosemarysSignExit - RosemarysSign
    print $3B3
RosemarysSignExit:
    end_script

off_109A10:
     .word SnowTunnelIn, 0

SnowTunnelIn:
    entrance DOOR, $D080, $F1C0, UP, MUSIC_SAME, $1D80, $8280, LEFT


off_109A1C:
    .word Young2Cave, GrassBoard1, GrassBoard2, DesertBoard1, DesertBoard2, 0

Young2Cave:
    entrance DOOR, $9E40, $63C0, UP, MUSIC_31, $FF40, $7940, DOWN

GrassBoard1:
    change_location $6100, $4B00, UP

    approach GrassBoard1Exit - GrassBoard1
    play MUSIC, 6
GrassBoard1Exit:
    end_script

GrassBoard2:
    change_location $6100, $4B40, UP

    approach GrassBoard2Exit - GrassBoard2
    play MUSIC, 6
GrassBoard2Exit:
    end_script

DesertBoard1:
    change_location $6180, $4B00, UP

    approach DesertBoard1Exit - DesertBoard1
    play MUSIC, 8
DesertBoard1Exit:
    end_script

DesertBoard2:
    change_location $6180, $4B40, UP

    approach DesertBoard2Exit - DesertBoard2
    play MUSIC, 8
DesertBoard2Exit:
    end_script


off_109A54:
    .word DesertDungIn, DesertR7037, Bones1, Bones2, Bones3, Bones4, Bones5, Cactus
    .word Mine, MerTunnelOut, ReinTunnelOut, Bones6, 0

DesertDungIn:
    entrance HOLE, $9E80, $4480, UP, MUSIC_18, $1440, $7300, DOWN

DesertR7037:
    unknown_1C $9D40, $4640, UP

    hide FLAG0F|BIT7
    approach DesertR7037Exit - DesertR7037
    enemies $6F
DesertR7037Exit:
    end_script

Bones1:
    .import BonesAnim

    entity $68C0, $3F00, UP, BonesAnim

    check_action TALK, Bones1Exit - Bones1
    print $19E
Bones1Exit:
    end_script

Bones2:
    entity $A340, $4100, UP, BonesAnim

    check_action TALK, Bones2Exit - Bones2
    print $19F
Bones2Exit:
    end_script

Bones3:
    entity $7000, $4940, UP, BonesAnim

    check_action TALK, Bones3Exit - Bones3
    print $1A0
Bones3Exit:
    end_script

Bones4:
    entity $8580, $4000, UP, BonesAnim

    check_action TALK, Bones4Exit - Bones4
    print $1A1
Want2Know:
    confirm BonesNo - Bones4
    print $1A2
    end_script
BonesNo:
    print $1A3
    jump Want2Know - Bones4
    end_script
Bones4Exit:
    end_script

Bones5:
    entity $8B00, $4D00, UP, BonesAnim

    check_action TALK, Bones5Exit - Bones5
    print $1A4
Bones5Exit:
    end_script

Cactus:
    unknown_18 $6F80, $4340, UP

    check_action CHECK, CactusPSI - Cactus
    print $59
    end_script
CactusPSI:
    check_psi 1, CactusExit - Cactus
    print $35E
    play MUSIC, $28
    wait 240
    play MUSIC, 8
    set_flag TUNES|BIT4
    print $340
CactusExit:
    end_script

Mine:
    unknown_1F $A940, $4140, UP

    hide FLAG07|BIT4
    approach MineExit - Mine
    mine
    print $2A1
    set_flag FLAG07|BIT4
MineExit:
    end_script

MerTunnelOut:
    entrance DOOR, $200, $FE80, LEFT, MUSIC_6, $6C40, $73C0, LEFT

ReinTunnelOut:
    entrance DOOR, $59C0, $FE80, RIGHT, MUSIC_6, $6C80, $B900, DOWN

Bones6:
    entity $1600, $FEC0, UP, BonesAnim

    check_action TALK, Bones6Exit - Bones6
    print $3E2
Bones6Exit:
    end_script


off_109B10:
    .word 0


off_109B12:
    .word ItoiCaveIn, EllayDirectionSign, 0

ItoiCaveIn:
    entrance DOOR, $F940, $53C0, UP, MUSIC_13, $E680, $3E40, DOWN

EllayDirectionSign:
    entity $D800, $4E80, UP, SignAnim

    check_action CHECK, EllayDirectionSignExit - EllayDirectionSign
    print $3AC
EllayDirectionSignExit:
    end_script


Hospitals:
    .word PodHospitalOut, PodHospitalUp, PodDoctorIn, PodDoctorOut
    .word MerHospitalOut, MerDoctorIn, MerDoctorOut, ReinHospitalOut
    .word ReinHospitalUp, ReinDoctorIn, ReinDoctorOut, EllHospitalOut
    .word EllHospitalUp, EllDoctorIn, EllHospitalRoom1Out, EllHospitalRoom2Out
    .word PodDoctor, ReinDoctor, MerDoctor, PodNurse, ReinNurse, EllNurse
    .word MerNurse,ReinHospitalNPC1, ReinHospitalNPC2, 0

PodHospitalOut:
    entrance DOOR, $C780, $FD80, RIGHT, MUSIC_6, $2FC0, $6F40, DOWN

PodHospitalUp:
    entrance STAIRS, $C480, $FD40, LEFT, MUSIC_SAME, $C080, $2180, RIGHT

PodDoctorIn:
    entrance DOOR, $C600, $FCC0, UP, MUSIC_SAME, $340, $2180, LEFT

PodDoctorOut:
    entrance DOOR, $380, $2180, RIGHT, MUSIC_SAME, $C600, $FD00, DOWN

MerHospitalOut:
    entrance DOOR, $380, $5180, RIGHT, MUSIC_6, $5B80, $7040, DOWN

MerDoctorIn:
    entrance DOOR, $40, $5180, LEFT, MUSIC_SAME, $A740, $F580, LEFT

MerDoctorOut:
    entrance DOOR, $A780, $F580, RIGHT, MUSIC_SAME, $80, $5180, RIGHT

ReinHospitalOut:
    entrance DOOR, $B780, $FD80, RIGHT, MUSIC_6, $7980, $EB40, DOWN

ReinHospitalUp:
    entrance STAIRS, $B480, $FD40, LEFT, MUSIC_SAME, $480, $5580, RIGHT

ReinDoctorIn:
    entrance DOOR, $B580, $FCC0, UP, MUSIC_SAME, $9340, $2180, LEFT

ReinDoctorOut:
    entrance DOOR, $9380, $2180, RIGHT, MUSIC_SAME, $B580, $FD00, DOWN

EllHospitalOut:
    entrance DOOR, $BF80, $FD80, RIGHT, MUSIC_6, $C2C0, $4B40, DOWN

EllHospitalUp:
    entrance STAIRS, $BC80, $FD40, LEFT, MUSIC_SAME, $D480, $2580, RIGHT

EllDoctorIn:
    entrance DOOR, $BD80, $FCC0, UP, MUSIC_SAME, $B740, $2580, LEFT

EllHospitalRoom1Out:
    entrance DOOR, $B80, $4980, RIGHT, MUSIC_SAME, $D580, $2500, DOWN

EllHospitalRoom2Out:
    entrance DOOR, $B80, $5180, RIGHT, MUSIC_SAME, $D640, $2500, DOWN

PodDoctor:
    .import DoctorAnim

    npc NPC_1, $100, $2100, DOWN, DoctorAnim

    price 25
    call PodDoctor, DoctorCall - PodDoctor
    end_script
DoctorCall:
    check_action TALK, DoctorCallExit - PodDoctor
    print $30D
    confirm DontNeed - PodDoctor
    pay DoctorMoreMoney - PodDoctor
    sel_char 1, DoctorChar - PodDoctor
    choose_char DoctorMoneyBack - PodDoctor
    jump DoctorCheckStatus - PodDoctor
DoctorChar:
    sel_char 0, DoctorCheckStatus - PodDoctor
DoctorCheckStatus:
    check_status FAINTED, DoctorNoOne - PodDoctor
    max_hp DoctorHeal - PodDoctor
    check_status FLU|2, DoctorHeal - PodDoctor
    print $30F
    get DoctorCallExit - PodDoctor
    return
DoctorHeal:
    heal $FF
    max_hp DoctorHeal - PodDoctor
    clear_status $FC
    cash
    play SOUND2, 7
    print $310
    return
DoctorMoneyBack:
    get DoctorCallExit - PodDoctor
DontNeed:
    print $30E
    return
DoctorNoOne:
    get DoctorCallExit - PodDoctor
    print $219
    return
DoctorMoreMoney:
    print $23F
DoctorCallExit:
    return

ReinDoctor:
    npc NPC_1, $9100, $2100, DOWN, DoctorAnim

    price 60
    call PodDoctor, DoctorCall - PodDoctor
    end_script

MerDoctor:
    npc NPC_1, $A500, $F500, DOWN, DoctorAnim

    check_action TALK, MerDoctorExit - MerDoctor
    all_cash
    percent 50
    print $F1
    confirm Mortician - MerDoctor
    all_cash
    percent 50
    pay MerDoctorExit - MerDoctor
    sel_char 0, Cured - MerDoctor
    check_status FAINTED, Cured - MerDoctor
    clear_status $FC
MerDoctorHeal1:
    heal $FF
    max_hp MerDoctorHeal1 - MerDoctor
    sel_char 1, Cured - MerDoctor
    check_status FAINTED, Cured - MerDoctor
    clear_status $FC
MerDoctorHeal2:
    heal $FF
    max_hp MerDoctorHeal2 - MerDoctor
    sel_char 2, Cured - MerDoctor
    check_status FAINTED, Cured - MerDoctor
    clear_status $FC
MerDoctorHeal3:
    heal $FF
    max_hp MerDoctorHeal3 - MerDoctor
Cured:
    play SOUND2, 7
    cash
    print $F3
    end_script
Mortician:
    print $F4
    end_script
MerDoctorExit:
    end_script

PodNurse:
    .import NurseAnim

    npc NPC_1, $C540, $FD00, DOWN, NurseAnim

    price 125
    call PodNurse, PodNurseCall - PodNurse
    end_script
PodNurseCall:
    check_action TALK, PodNurseExit - PodNurse
    print $31A
    choose_char GoBackRoom - PodNurse
    check_status FAINTED, $1A
    jump NoPatient - PodNurse
    print $319
    confirm Deathbed - PodNurse
    pay PodNurseSorry - PodNurse
    clear_status 0
    cash
    print $30B
    return
PodNurseSorry:
    print $33A
    return
Deathbed:
    print $30C
    return
NoPatient:
    print $2A4
    return
GoBackRoom:
    print $2A3
PodNurseExit:
    return

ReinNurse:
    npc NPC_1, $B500, $FD00, DOWN, NurseAnim

    price 300
    call PodNurse, PodNurseCall - PodNurse
    end_script

EllNurse:
    npc NPC_1, $BD00, $FD00, RIGHT, NurseAnim

    price 480
    call PodNurse, PodNurseCall - PodNurse
    end_script

MerNurse:
    npc NPC_1, $200, $5100, DOWN, NurseAnim

    price 190
    call PodNurse, PodNurseCall - PodNurse
    end_script

ReinHospitalNPC1:
    .import stru_15852C

    npc WALK_NPC, $B500, $FDC0, LEFT, stru_15852C

    check_action TALK, ReinHospitalNPC1Exit - ReinHospitalNPC1
    print $2A5
ReinHospitalNPC1Exit:
    end_script

ReinHospitalNPC2:
    .import PharmacistAnim

    npc WALK_NPC, $B580, $FDC0, RIGHT, PharmacistAnim

    check_action TALK, ReinHospitalNPC2Exit - ReinHospitalNPC2
    print $2A6
ReinHospitalNPC2Exit:
    end_script


Hotels:
    .word PodHotelOut, PodHotelUp, PodHotelRoom1Out, PodHotelRoom2Out
    .word YounHotelOut, YounHotelRoom1In, YounHotelRoom2In, MerHotelOut
    .word MerHotelUp1, MerHotelRoom1Out, MerHotelRoom2Out, MerHotelDown2
    .word EllHotelOut, EllHotelUp, ReinHotelOut, ReinHotelUp1
    .word PodHotelClerk, ReinHotelClerk, EllHotelClerk, MerHotelClerk
    .word YounBoyHotel, PodHotelNPC1, ReinHotelNPC, PodHotelNPC2
    .word MerHotelNPC1, MerHotelNPC2, MerHotelNPC3, MerHotelNPC4, 0

PodHotelOut:
    entrance DOOR, $9780, $ED80, RIGHT, MUSIC_6, $31C0, $6940, DOWN

PodHotelUp:
    entrance STAIRS, $9480, $ED40, LEFT, MUSIC_SAME, $80, $2980, RIGHT

PodHotelRoom1Out:
    entrance DOOR, $B380, $2180, RIGHT, MUSIC_SAME, $180, $2900, DOWN

PodHotelRoom2Out:
    entrance DOOR, $D380, $2180, RIGHT, MUSIC_SAME, $240, $2900, DOWN

YounHotelOut:
    entrance DOOR, $AF80, $F580, RIGHT, MUSIC_30, $B240, $7000, DOWN

YounHotelRoom1In:
    entrance DOOR, $AC80, $F540, LEFT, MUSIC_SAME, $8740, $2580, LEFT

YounHotelRoom2In:
    entrance DOOR, $AC00, $F5C0, LEFT, MUSIC_SAME, $6F40, $2580, LEFT

MerHotelOut:
    entrance DOOR, $B780, $F580, RIGHT, MUSIC_6, $5AC0, $7340, DOWN

MerHotelUp1:
    entrance STAIRS, $B480, $F540, LEFT, MUSIC_SAME, $C080, $FD80, RIGHT

MerHotelRoom1Out:
    entrance DOOR, $BB80, $2180, RIGHT, MUSIC_SAME, $C180, $FD00, DOWN

MerHotelRoom2Out:
    entrance DOOR, $DB80, $2180, RIGHT, MUSIC_SAME, $C240, $FD00, DOWN

MerHotelDown2:
    entrance STAIRS, $9C40, $F180, LEFT, MUSIC_SAME, $C0C0, $FD40, RIGHT

EllHotelOut:
    entrance DOOR, $AF80, $FD80, RIGHT, MUSIC_6, $C1C0, $4B40, DOWN

EllHotelUp:
    entrance STAIRS, $AC80, $FD40, LEFT, MUSIC_SAME, $7C80, $2580, RIGHT

ReinHotelOut:
    entrance DOOR, $380, $4180, RIGHT, MUSIC_6, $69C0, $EF40, DOWN

ReinHotelUp1:
    entrance STAIRS, $80, $4140, LEFT, MUSIC_SAME, $480, $3580, RIGHT

PodHotelClerk:
    npc WALK_NPC, $9600, $ED00, DOWN, ReceptionistAnim

    price 39
    call PodHotelClerk, HotelCall - PodHotelClerk
    end_script
HotelCall:
    check_action TALK, HotelCallExit - PodHotelClerk
    total_price
    print $315
    confirm HotelSorry - PodHotelClerk
    pay HotelNoMoney - PodHotelClerk
    print $317
    sleep
    cash
    print $318
    return
HotelNoMoney:
    print $33A
    return
HotelSorry:
    print $316
HotelCallExit:
    return

ReinHotelClerk:
    npc WALK_NPC, $200, $4100, DOWN, ReceptionistAnim

    price 100
    call PodHotelClerk, HotelCall - PodHotelClerk
    end_script

EllHotelClerk:
    npc WALK_NPC, $AE00, $FD00, DOWN, ReceptionistAnim

    price 165
    call PodHotelClerk, HotelCall - PodHotelClerk
    end_script

MerHotelClerk:
    npc WALK_NPC, $B600, $F500, DOWN, ReceptionistAnim

    price 65
    call PodHotelClerk, HotelCall - PodHotelClerk
    end_script

YounBoyHotel:
    npc WALK_NPC, $AD40, $F500, DOWN, stru_158228

    check_action TALK, YounBoyHotelExit - YounBoyHotel
    print $31C
    confirm SpendNight - YounBoyHotel
    print $317
    sleep
    print $31D
    end_script
SpendNight:
    print $31E
YounBoyHotelExit:
    end_script

PodHotelNPC1:
    npc WALK_NPC, $9540, $ED80, DOWN, stru_158288

    check_action TALK, PodHotelNPC1Exit - PodHotelNPC1
    print $2A7
PodHotelNPC1Exit:
    end_script

ReinHotelNPC:
    npc WALK_NPC, $140, $4180, RIGHT, stru_158268

    check_action TALK, ReinHotelNPCExit - ReinHotelNPC
    print $2A8
ReinHotelNPCExit:
    end_script

PodHotelNPC2:
    npc WALK_NPC, $95C0, $ED80, LEFT, stru_158228

    check_action TALK, PodHotelNPC2Exit - PodHotelNPC2
    print $2AD
PodHotelNPC2Exit:
    end_script

MerHotelNPC1:
    npc WALK_NPC, $B540, $F580, RIGHT, stru_158228

    check_action TALK, MerHotelNPC1Exit - MerHotelNPC1
    print $2AC
MerHotelNPC1Exit:
    end_script

MerHotelNPC2:
    npc WALK_NPC, $9D00, $F100, DOWN, stru_1581A8

    check_action TALK, MerHotelNPC2Exit - MerHotelNPC2
    print $2A9
MerHotelNPC2Exit:
    end_script

MerHotelNPC3:
    npc WALK_NPC, $9E40, $F180, LEFT, stru_1582A8

    check_action TALK, MerHotelNPC3Exit - MerHotelNPC3
    print $2AA
MerHotelNPC3Exit:
    end_script

MerHotelNPC4:
    npc WALK_NPC, $9F00, $F1C0, LEFT, stru_158228

    check_action TALK, MerHotelNPC4Exit - MerHotelNPC4
    print $2AB
MerHotelNPC4Exit:
    end_script


off_109E73:
    .word OwnRoomOut, DownStairs, OwnRoomIn, Sister1RoomIn
    .word Sister2RoomIn, SpookHotelOut, SpookHotelUp, SpookHospitalOut
    .word SpookDoctorIn, SpookHospitalUp, PodHospitalRoom1Out, PodHospitalRoom1In
    .word PodHospitalRoom2Out, PodHospitalRoom2In, PodHospitalDown, PodHotelDown
    .word PodHotelRoom1In, PodHotelRoom2In, SnowHotelOut, SnowHotelRoom1In
    .word SnowHotelRoom2In, SnowHotelRoom1Out, SnowHotelRoom2Out, SnowHotelClerk
    .word LampTrigger, Lamp, SpookHotelClerk, 0

OwnRoomOut:
    entrance DOOR, $880, $3140, LEFT, MUSIC_SAME, $B40, $3980, LEFT

DownStairs:
    entrance STAIRS, $840, $3980, LEFT, MUSIC_SAME, $8C0, $2140, RIGHT

OwnRoomIn:
    entrance DOOR, $B80, $3980, RIGHT, MUSIC_SAME, $8C0, $3140, RIGHT

Sister1RoomIn:
    entrance DOOR, $980, $38C0, UP, MUSIC_SAME, $7340, $2180, LEFT

Sister2RoomIn:
    entrance DOOR, $A40, $38C0, UP, MUSIC_SAME, $9F40, $FD80, LEFT

SpookHotelOut:
    entrance DOOR, $380, $3980, RIGHT, MUSIC_6, $A9C0, $DB40, DOWN

SpookHotelUp:
    entrance STAIRS, $80, $3940, LEFT, MUSIC_SAME, $C80, $3580, RIGHT

SpookHospitalOut:
    entrance DOOR, $9780, $F580, RIGHT, MUSIC_6, $A9C0, $D540, DOWN

SpookDoctorIn:
    entrance DOOR, $9600, $F4C0, UP, MUSIC_SAME, $740, $4D80, LEFT

SpookHospitalUp:
    entrance STAIRS, $9480, $F540, LEFT, MUSIC_SAME, $C80, $4D80, RIGHT

PodHospitalRoom1Out:
    entrance DOOR, $AB80, $2180, RIGHT, MUSIC_SAME, $C180, $2100, DOWN

PodHospitalRoom1In:
    entrance DOOR, $C180, $20C0, UP, MUSIC_SAME, $AB40, $2180, LEFT

PodHospitalRoom2Out:
    entrance DOOR, $CB80, $2180, RIGHT, MUSIC_SAME, $C240, $2100, DOWN

PodHospitalRoom2In:
    entrance DOOR, $C240, $20C0, UP, MUSIC_SAME, $CB40, $2180, LEFT

PodHospitalDown:
    entrance STAIRS, $C040, $2180, LEFT, MUSIC_SAME, $C4C0, $FD40, RIGHT

PodHotelDown:
    entrance STAIRS, $40, $2980, LEFT, MUSIC_SAME, $94C0, $ED40, RIGHT

PodHotelRoom1In:
    entrance DOOR, $180, $28C0, UP, MUSIC_SAME, $B340, $2180, LEFT

PodHotelRoom2In:
    entrance DOOR, $240, $28C0, UP, MUSIC_SAME, $D340, $2180, LEFT

SnowHotelOut:
    entrance DOOR, $EB80, $2180, RIGHT, MUSIC_a, $E340, $F900, DOWN

SnowHotelRoom1In:
    entrance DOOR, $E880, $2140, LEFT, MUSIC_SAME, $E340, $2980, LEFT

SnowHotelRoom2In:
    entrance DOOR, $E800, $21C0, LEFT, MUSIC_SAME, $E340, $3180, LEFT

SnowHotelRoom1Out:
    entrance DOOR, $E380, $2980, RIGHT, MUSIC_SAME, $E8C0, $2140, RIGHT

SnowHotelRoom2Out:
    entrance DOOR, $E380, $3180, RIGHT, MUSIC_SAME, $E840, $21C0, RIGHT

SnowHotelClerk:
    .import stru_1585A8

    npc NPC_1, $E980, $2100, UP, stru_1585A8

    check_action TALK, SnowHotelClerkExit - SnowHotelClerk
    price 125
    total_price
    print $315
    confirm SnowHotelSorry - SnowHotelClerk
    pay HotelLessMoney - SnowHotelClerk
    print $317
    sleep
    print $318
    end_script
HotelLessMoney:
    print $33A
    end_script
SnowHotelSorry:
    print $316
SnowHotelClerkExit:
    end_script

LampTrigger:
    unknown_1F $8C0, $3140, UP

    hide FLAG06|BIT7
    approach LampTriggerExit - LampTrigger
    another $19
LampTriggerExit:
    end_script

Lamp:
    .import LampAnim

    unknown_1D $A00, $3140, UP, LampAnim

    hide FLAG06|BIT7
    check_keypress LampExit - Lamp
    play MUSIC, $10
    move byte_109FAA
    enemies $A0
    set_flag FLAG1F|BIT7
    set_flag FLAG06|BIT7
    move byte_109FB5
LampExit:
    end_script
byte_109FAA:
    .byte $7F, 2, $7D, 2, $7B, 2, $79, 2, $7E, 4, 3
byte_109FB5:
    .byte 0

SpookHotelClerk:
    .import stru_158568

    npc STAT_NPC2, $200, $3900, UP, stru_158568

    hide FLAG0F|BIT5
    check_action TALK, SpookHotelClerkExit - SpookHotelClerk
    price 6
    total_price
    print $315
    confirm SpookSorry - SpookHotelClerk
    pay SpookNotEnoughMoney - SpookHotelClerk
    print $317
    print $161
    sleep
    cash
    print $32B
    enemies $69
    set_flag FLAG0F|BIT5
    end_script
SpookNotEnoughMoney:
    print $33A
    end_script
SpookSorry:
    print $316
SpookHotelClerkExit:
    end_script
