.include "objects.inc"

; BANK $12
.segment "BANK_2"
; 0x15 records
off_128000:
    .word off_12802A, Fab, off_1284E6, GhostHouse4, Factory
    .word Underwater, SweetFactoryRooms, FabRooms1, FabRooms2, Rescue
    .word Itoi, ItoiCave, Lake, Magicant, off_1290B6
    .word off_12932A, MagicantRooms, MagicantRooms2, Palace, MagicantCave
    .word off_129DE4

off_12802A:
    .word CemeteryChurchOut, SnowChurchOut, YounChurchOut, TowerOut, ElevatorUp, IslandHouseOut
    .word AssistantsRoomIn, AssistantsRoomOut, ItoiHealerRoomOut, Professor, Able, Baker, CemeteryChurchNPC
    .word AnnasDad, Anna, TowerStaff, TowerNPC, DanceBoy, Love, TeddyReturn, 0

CemeteryChurchOut:
    entrance DOOR, $D380, $2580, RIGHT, MUSIC_d, $2D40, $8E00, DOWN

SnowChurchOut:
    entrance DOOR, $CB80, $2580, RIGHT, MUSIC_a, $F440, $FA00, DOWN

YounChurchOut:
    entrance DOOR, $DB80, $2580, RIGHT, MUSIC_30, $B140, $7400, DOWN

TowerOut:
    entrance DOOR, $B80, $3580, RIGHT, MUSIC_6, $B840, $3400, DOWN

ElevatorUp:
    entrance DOOR, $A00, $34C0, UP, MUSIC_SAME, $EC0, $5B00, DOWN

IslandHouseOut:
    entrance DOOR, $FB80, $2180, RIGHT, MUSIC_6, $F440, $7700, DOWN

AssistantsRoomIn:
    entrance DOOR, $F840, $2180, LEFT, MUSIC_SAME, $E740, $2580, LEFT

AssistantsRoomOut:
    entrance DOOR, $E780, $2580, RIGHT, MUSIC_SAME, $F880, $2180, RIGHT

ItoiHealerRoomOut:
    entrance DOOR, $DF80, $2180, RIGHT, MUSIC_12, $80, $4980, RIGHT

Professor:
    .import PharmacistAnim

    npc NPC_1, $F980, $21C0, DOWN, PharmacistAnim

    check_action TALK, ProfessorUse - Professor
    print $1FE
    confirm DontTry - Professor
    print $1FF
    end_script
DontTry:
    print $200
    end_script
ProfessorUse:
    use_item BerryTofu, ProfessorExit - Professor
    find_item BerryTofu, ProfessorExit - Professor
    select_item BerryTofu
    remove_item ProfessorExit - Professor
    check_flag FLAG0A|BIT0, ProfessorTry - Professor
    print $26B
    end_script
ProfessorTry:
    find_item EMPTY, ProfessorExit - Professor
    select_item WordsOLove
    add_item ProfessorExit - Professor
    set_flag FLAG0A|BIT0
    print $201
    play SOUND2, 6
ProfessorExit:
    end_script

Able:
    .import AssistantAnim

    npc WALK_NPC, $E600, $2580, RIGHT, AssistantAnim

    check_action TALK, AbleUse - Able
    print $261
    end_script
AbleUse:
    use_item BerryTofu, AbleExit - Able
    find_item BerryTofu, AbleExit - Able
    select_item BerryTofu
    remove_item AbleExit - Able
    check_flag FLAG0B|BIT7, AbleTry - Able
    print $26B
    end_script
AbleTry:
    print $262
    set_flag FLAG0B|BIT7
AbleExit:
    end_script

Baker:
    npc WALK_NPC, $E680, $25C0, LEFT, AssistantAnim

    check_action TALK, BakerUse - Baker
    print $263
    end_script
BakerUse:
    use_item BerryTofu, BakerExit - Baker
    find_item BerryTofu, BakerExit - Baker
    select_item BerryTofu
    remove_item BakerExit - Baker
    check_flag FLAG0B|BIT6, BakerTry - Baker
    print $26B
    end_script
BakerTry:
    print $264
    find_item EMPTY, BakerExit - Baker
    select_item SwearWords
    add_item BakerExit - Baker
    play SOUND2, 6
    set_flag FLAG0B|BIT6
BakerExit:
    end_script

CemeteryChurchNPC:
    .import stru_1584E8

    npc NPC_1, $D080, $2580, RIGHT, stru_1584E8

    check_action TALK, CemeteryChurchNPCExit - CemeteryChurchNPC
    print $2BB
CemeteryChurchNPCExit:
    end_script

AnnasDad:
    npc NPC_1, $C880, $2580, RIGHT, stru_1584E8

    check_action TALK, AnnasDadExit - AnnasDad
    check_char 2, Daughter - AnnasDad
    check_status FAINTED, Found - AnnasDad
    print $19A
    sleep
    print $364
    end_script
Found:
    print $29B
    end_script
Daughter:
    print $199
AnnasDadExit:
    end_script

Anna:
    .import GirlAnim

    npc STAT_NPC2, $C9C0, $2500, RIGHT, GirlAnim

    hide FLAG0B|BIT3
    check_action TALK, AnnaUse - Anna
    print $18F
    end_script
AnnaUse:
    use_item Hat, AnnaExit - Anna
    find_item Hat, AnnaExit - Anna
    select_item Hat
    remove_item AnnaExit - Anna
    print $18C
    confirm Silly - Anna
    jump MomSearch - Anna
Silly:
    print $18D
MomSearch:
    print $18E
    move byte_12818C
    print $383
    sel_char 1, AnnaMove - Anna
    move byte_128191
    jump AnnaJoin - Anna
AnnaMove:
    move byte_128198
AnnaJoin:
    add_char 2, AnnaExit - Anna
    play MUSIC, $21
    wait 180
    play MUSIC, $A
    set_flag FLAG0B|BIT3
AnnaExit:
    end_script
byte_12818C:
    .byte $34, 2, $36, 4, 3
byte_128191:
    .byte $74, 1, $72, 3, $70, 1, 0
byte_128198:
    .byte $74, 1, $72, 2, $70, 1, 0

TowerStaff:
    .import WaitressAnim

    npc NPC_1, $A40, $3500, DOWN, WaitressAnim

    check_action TALK, TowerStaffExit - TowerStaff
    print $2FC
TowerStaffExit:
    end_script

TowerNPC:
    npc WALK_NPC, $9C0, $3580, DOWN, AssistantAnim

    check_action TALK, TowerNPCExit - TowerNPC
    print $2FD
TowerNPCExit:
    end_script

DanceBoy:
    .import AnimBoy1

    npc STAT_NPC2, $DE00, $2180, LEFT, AnimBoy1

    show FLAG1F|BIT0
    check_keypress $F
    another $12
    move Dance1
    end_script
Dance1:
    .byte $7E, 1, $F2, 8, $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7A, 1
    .byte $F6, 8, $78, 1, $F4, 1, $7E, 1, $F2, 1, $7C, 1, $F2, 4
    .byte $7A, 1, $F6, 8, $7C, 1, $F0, 1, $7E, 1, $F2, 1, $78, 1
    .byte $F2, 4, $7A, 1, $F6, 8, $78, 1, $F4, 1, $7E, 1, $F2, 1
    .byte $7C, 1, $F2, 4, $7C, 1, $F0, 1, $7A, 1, $F6, 1, $78, 1
    .byte $F6, 4, $7E, 1, $F2, 8, $7A, 1, $F6, 8, $7E, 1, $F2, 8
    .byte $7A, 1, $F6, 8, $7A, 1, $78, 1, $F4, 1, $7E, 3, $F2, 1
    .byte $7C, 2, $F0, 1, $7A, 3, $F6, 1, $78, 1, $7E, 1, $F6, 2
    .byte $F0, 1, $F2, 1, $F4, 1, $F6, 1, $F0, 1, $F2, 1, $F4, 1
    .byte $F6, 2, $77, 1, $75, 1, $73, 1, $71, 1, $77, 1, $75, 1
    .byte $73, 1, $71, 1, $F6, 1, $F0, 1, $F2, 1, $F4, 1, $F6, 1
    .byte $F0, 1, $F2, 1, $F4, 1, $F6, 2, $77, 1, $75, 1, $73, 1
    .byte $71, 1, $77, 1, $75, 1, $73, 1, $71, 1, $F6, 1, $F6, 1, 0

Love:
    .import AnimGirl

    npc STAT_NPC2, $DF40, $2180, LEFT, AnimGirl

    show FLAG0F|BIT2
    check_action TALK, LoveKey - Love
    print $190
    confirm DontStay - Love
    jump LoveAgree - Love
DontStay:
    print $191
LoveAgree:
    print $192
    move BeforeDance
    set_flag FLAG1F|BIT0
    play MUSIC, 8
    play MUSIC, $15
    wait 240
    wait 240
    wait 80
    another $11
    end_script
LoveKey:
    check_keypress LoveExit - Love
    move Dance2
    clear_flag FLAG1F|BIT0
    wait 240
    wait 40
    print $194
    confirm DontLove - Love
    print $3C1
    jump LoveMove - Love
DontLove:
    print $193
LoveMove:
    move SheMove
    add_char 2, LoveExit - Love
    clear_flag FLAG0F|BIT2
    set_flag FLAG19|BIT7
    another $13
    move byte_128394
LoveExit:
    end_script
BeforeDance:
    .byte $36, 1, $F2, 1, $3E, 5, $F2, 1, 3
Dance2:
    .byte $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7C, 1
    .byte $F0, 1, $7A, 1, $F6, 1, $78, 1, $F6, 4, $7E, 1, $F2, 8, $78, 1, $F4, 1
    .byte $7A, 1, $F6, 1, $7C, 1, $F6, 4, $7E, 1, $F2, 8, $7C, 1, $F0, 1, $7A, 1
    .byte $F6, 1, $78, 1, $F6, 4, $78, 1, $F4, 1, $7E, 1, $F2, 1, $7C, 1, $F2, 4
    .byte $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7A, 1, $F6, 8, $7E, 1, $F2, 8, $7E, 1
    .byte $7C, 1, $F0, 1, $7A, 3, $F6, 1, $78, 2, $F4, 1, $7E, 3, $F2, 1, $7C, 1
    .byte $7A, 1, $F2, 2, $71, 1, $73, 1, $75, 1, $77, 1, $71, 1, $73, 1, $75, 1
    .byte $77, 1, $F2, 1, $F0, 1, $F6, 1, $F4, 1, $F2, 1, $F0, 1, $F6, 1, $F4, 1
    .byte $F2, 2, $71, 1, $73, 1, $75, 1, $77, 1, $71, 1, $73, 1, $75, 1, $77, 1
    .byte $F2, 1, $F0, 1, $F6, 1, $F4, 1, $F2, 1, $F0, 1, $F6, 1, $F4, 1, $F2, 2
    .byte $F2, 1, $F2, 2, 3
SheMove:
    .byte $72, 2, 3
byte_128394:
    .byte 0

TeddyReturn:
    .import AnimBoy3

    npc STAT_NPC2, $DF40, $2180, LEFT, AnimBoy3

    show FLAG00|BIT6
    check_keypress TeddyReturnExit - TeddyReturn
    move TeddyCome
    print $1F8
    move GetOut
    play SOUND1, 2
    print $3C2
    play SOUND1, 2
    move TeddyBack
    play SOUND1, 2
    print $3C3
    play SOUND1, 2
    wait 30
    add_char 4, TeddyReturnExit - TeddyReturn
    clear_flag FLAG0F|BIT4
    set_flag FLAG19|BIT6
    set_flag FLAG19|BIT5
    set_flag FLAG19|BIT4
    set_flag FLAG19|BIT3
    set_flag FLAG1F|BIT0
    set_flag FLAG11|BIT3
    set_flag FLAG11|BIT1
    set_flag FLAG11|BIT0
    enemies $91
    move byte_1283F3
TeddyReturnExit:
    end_script
TeddyCome:
    .byte $75, 1, $76, 5, $70, 1, $F2, 1, 3
GetOut:
    .byte $33, 1, $31, 1, $32, 4, 3
TeddyBack:
    .byte $74, 1, $76, 3, $70, 1, $F6, 1, $F0, 1, $F6, 1, 3
byte_1283F3:
    .byte 0


Fab:
    .word FabOut, FabRoom19In, FabRoom14In, FabRoom13In, FabRoom15In, FabRoom16In, FabRoom17In
    .word FabRoom20In, FabRoom22In, FabRoom11In, FabRoom23In, FabRoom3In, FabRoom6In, FabRoom5In
    .word FabRoom4In, FabRoom1In, FabRoom24In, FabRoom2In, FabRoom18In, FabRoom12In, FabRoom10In
    .word FabRoom7In, FabRoom8In, FabRoom9In, 0

FabOut:
    entrance DOOR, $3A40, $F1C0, UP, MUSIC_6, $4D80, $3F00, DOWN

FabRoom19In:
    entrance DOOR, $3840, $D6C0, UP, MUSIC_SAME, $340, $D180, LEFT

FabRoom14In:
    entrance DOOR, $2840, $DAC0, UP, MUSIC_SAME, $340, $D980, LEFT

FabRoom13In:
    entrance DOOR, $2740, $DDC0, UP, MUSIC_SAME, $1740, $B580, LEFT

FabRoom15In:
    entrance DOOR, $3240, $DDC0, UP, MUSIC_SAME, $340, $F180, LEFT

FabRoom16In:
    entrance DOOR, $3840, $DCC0, UP, MUSIC_SAME, $B40, $D180, LEFT

FabRoom17In:
    entrance DOOR, $3A80, $DD80, RIGHT, MUSIC_SAME, $880, $D980, RIGHT

FabRoom20In:
    entrance DOOR, $1740, $DFC0, UP, MUSIC_SAME, $B40, $E980, LEFT

FabRoom22In:
    entrance DOOR, $1340, $E180, LEFT, MUSIC_SAME, $F40, $BD80, LEFT

FabRoom11In:
    entrance DOOR, $3680, $EA80, RIGHT, MUSIC_SAME, $880, $F180, RIGHT

FabRoom23In:
    entrance DOOR, $2A80, $EB80, RIGHT, MUSIC_SAME, $880, $F980, RIGHT

FabRoom3In:
    entrance DOOR, $2740, $F2C0, UP, MUSIC_SAME, $1340, $D180, LEFT

FabRoom6In:
    entrance DOOR, $3880, $F880, RIGHT, MUSIC_SAME, $880, $B180, RIGHT

FabRoom5In:
    entrance DOOR, $3540, $F6C0, UP, MUSIC_SAME, $740, $B580, LEFT

FabRoom4In:
    entrance DOOR, $3340, $F6C0, UP, MUSIC_SAME, $1340, $B180, LEFT

FabRoom1In:
    entrance DOOR, $2580, $F780, RIGHT, MUSIC_SAME, $1880, $B180, RIGHT

FabRoom24In:
    entrance DOOR, $1F40, $EAC0, UP, MUSIC_SAME, $2340, $B180, LEFT

FabRoom2In:
    entrance DOOR, $1D40, $F0C0, UP, MUSIC_SAME, $3B40, $B180, LEFT

FabRoom18In:
    entrance DOOR, $4180, $DA80, RIGHT, MUSIC_SAME, $80, $E980, RIGHT

FabRoom12In:
    entrance DOOR, $4B80, $E180, RIGHT, MUSIC_SAME, $80, $B180, RIGHT

FabRoom10In:
    entrance DOOR, $5180, $EE80, RIGHT, MUSIC_SAME, $2C80, $B580, RIGHT

FabRoom7In:
    entrance DOOR, $4D40, $F2C0, UP, MUSIC_SAME, $2B40, $B180, LEFT

FabRoom8In:
    entrance DOOR, $4B80, $F780, RIGHT, MUSIC_SAME, $3080, $B180, RIGHT

FabRoom9In:
    entrance DOOR, $4840, $F980, LEFT, MUSIC_SAME, $340, $F980, LEFT


off_1284E6:
    .word 0


GhostHouse4:
    .word GhostHouseOut, GhostRoom1In, GhostRoom2In, GhostRoom1Out, GhostABIn1, GhostAIn1, GhostRoom2Out
    .word GhostAIn7, GhostAIn9, GhostBOut1, GhostBCIn1, GhostBIn2, GhostAOut1, GhostAIn2, GhostAIn3
    .word Mouse, GhostWarning5, GhostWarning6, 0

GhostHouseOut:
    entrance DOOR, $B780, $2180, RIGHT, MUSIC_6, $BE00, $C980, DOWN

GhostRoom1In:
    entrance DOOR, $B480, $2140, LEFT, MUSIC_SAME, $6F40, $2180, LEFT

GhostRoom2In:
    entrance DOOR, $B400, $21C0, LEFT, MUSIC_SAME, $7740, $2180, LEFT

GhostRoom1Out:
    entrance DOOR, $6F80, $2180, RIGHT, MUSIC_SAME, $B4C0, $2140, RIGHT

GhostABIn1:
    entrance DOOR, $6C80, $2140, LEFT, MUSIC_SAME, $A380, $F480, LEFT

GhostAIn1:
    entrance DOOR, $6C00, $21C0, LEFT, MUSIC_SAME, $740, $2980, LEFT

GhostRoom2Out:
    entrance DOOR, $7780, $2180, RIGHT, MUSIC_SAME, $B440, $21C0, RIGHT

GhostAIn7:
    entrance DOOR, $7480, $2140, LEFT, MUSIC_SAME, $9740, $2180, LEFT

GhostAIn9:
    entrance DOOR, $7400, $21C0, LEFT, MUSIC_SAME, $F40, $2980, LEFT

GhostBOut1:
    entrance DOOR, $7F80, $2180, RIGHT, MUSIC_SAME, $9440, $FEC0, RIGHT

GhostBCIn1:
    entrance DOOR, $7C80, $2140, LEFT, MUSIC_SAME, $780, $2180, LEFT

GhostBIn2:
    entrance DOOR, $7C00, $21C0, LEFT, MUSIC_SAME, $9F40, $2180, LEFT

GhostAOut1:
    entrance DOOR, $780, $2980, RIGHT, MUSIC_SAME, $6C40, $21C0, RIGHT

GhostAIn2:
    entrance DOOR, $480, $2940, LEFT, MUSIC_SAME, $740, $5180, LEFT

GhostAIn3:
    entrance DOOR, $400, $29C0, LEFT, MUSIC_SAME, $F40, $4180, LEFT

Mouse:
    .import MouseAnim

    npc UNKNOWN_22, $B4C0, $2180, RIGHT, MouseAnim

    check_action TALK, MouseExit - Mouse
    print $167
MouseExit:
    end_script

GhostWarning5:
    unknown_1F $4C0, $2940, UP

    hide FLAG01|BIT0
    approach GhostWarning5Exit - GhostWarning5
    print $162
GhostWarning5Exit:
    end_script

GhostWarning6:
    unknown_1F $74C0, $2140, UP

    hide FLAG01|BIT0
    approach GhostWarning6Exit - GhostWarning6
    print $161
GhostWarning6Exit:
    end_script


Factory:
    .word SweetFactoryOut, FactRoom4In, FactRoom3In, FactRoom2In, FactRoom1In, FactRoom9In, FactRoom8In
    .word FactRoom7In, FactRoom6In, FactRoom5In, FactRoom12In, FactRoom11In, FactRoom10In, FactRoom14In
    .word FactRoom13In, FactTrash, Basement, BasementBox1, BasementBox2, BasementBox3, FactBox, 0

SweetFactoryOut:
    entrance DOOR, $1C80, $6B80, RIGHT, MUSIC_6, $5580, $9600, DOWN

FactRoom4In:
    entrance DOOR, $1280, $6F80, RIGHT, MUSIC_SAME, $480, $D180, RIGHT

FactRoom3In:
    entrance DOOR, $D40, $6EC0, UP, MUSIC_SAME, $F40, $D180, LEFT

FactRoom2In:
    entrance DOOR, $B40, $6EC0, UP, MUSIC_SAME, $740, $E180, LEFT

FactRoom1In:
    entrance DOOR, $940, $6F80, LEFT, MUSIC_SAME, $740, $D980, LEFT

FactRoom9In:
    entrance DOOR, $1540, $69C0, UP, MUSIC_SAME, $740, $F980, LEFT

FactRoom8In:
    entrance DOOR, $1080, $6A80, RIGHT, MUSIC_SAME, $480, $E980, RIGHT

FactRoom7In:
    entrance DOOR, $880, $6A80, RIGHT, MUSIC_SAME, $480, $F180, RIGHT

FactRoom6In:
    entrance DOOR, $640, $69C0, UP, MUSIC_SAME, $F40, $F980, LEFT

FactRoom5In:
    entrance DOOR, $240, $6B80, LEFT, MUSIC_SAME, $F40, $B180, LEFT

FactRoom12In:
    entrance DOOR, $1A80, $6880, RIGHT, MUSIC_SAME, $1480, $B180, RIGHT

FactRoom11In:
    entrance DOOR, $E40, $66C0, UP, MUSIC_SAME, $740, $B180, LEFT

FactRoom10In:
    entrance DOOR, $540, $6780, LEFT, MUSIC_SAME, $1F40, $B180, LEFT

FactRoom14In:
    entrance DOOR, $1D80, $6780, RIGHT, MUSIC_SAME, $2480, $B180, RIGHT

FactRoom13In:
    entrance DOOR, $740, $63C0, UP, MUSIC_SAME, $2F40, $B180, LEFT

FactTrash:
    .import TrashAnim

    entity $8C0, $6340, UP, TrashAnim

    check_action CHECK, FactTrashExit - FactTrash
    select_item BottlRocket
    print $39A
    find_item EMPTY, FactCantCarry - FactTrash
    select_item BottlRocket
    add_item FactCantCarry - FactTrash
    print $39B
    play SOUND2, 6
    end_script
FactCantCarry:
    print $39D
FactTrashExit:
    end_script

Basement:
    entrance STAIRS, $BF80, $2180, RIGHT, MUSIC_12, $A40, $2100, DOWN

BasementBox1:
    .import BoxAnim

    box $BDC0, $2100, UP, BoxAnim, PlasticBat, 0

BasementBox2:
    box $BCC0, $2180, UP, BoxAnim, Bread, 1

BasementBox3:
    box $BE40, $21C0, UP, BoxAnim, GGFsDiary, 2

FactBox:
    box $4C0, $6580, UP, BoxAnim, LifeUpCream, $12


Underwater:
    .word UnderwaterRoom1In, UnderwaterRoom2In, UnderwaterRoom3In, UnderwaterRoom4In, UnderwaterRoom5In, UnderwaterRoom6In
    .word UnderwaterRoom7In, UnderwaterRoom7Out, UnderwaterRoom8In, UnderwaterRoom8Out, EVE, Elevator, Fish1, Fish2, Fish3
    .word Fish4, Fish5, Fish6, Fish7, Fish8, Fish9, Fish10, Fish11, Cracks1, Cracks2, Cracks3, Cracks4, Cracks5, Cracks6
    .word Cracks7, Cracks8, Shakes, 0

UnderwaterRoom1In:
    entrance DOOR, $3040, $CD80, LEFT, MUSIC_SAME, $2D40, $C880, LEFT

UnderwaterRoom2In:
    entrance DOOR, $2640, $C880, LEFT, MUSIC_SAME, $2340, $C880, LEFT

UnderwaterRoom3In:
    entrance DOOR, $2040, $C880, LEFT, MUSIC_SAME, $1D40, $C880, LEFT

UnderwaterRoom4In:
    entrance DOOR, $1740, $C880, LEFT, MUSIC_SAME, $1440, $C880, LEFT

UnderwaterRoom5In:
    entrance DOOR, $1040, $C880, LEFT, MUSIC_SAME, $740, $C880, LEFT

UnderwaterRoom6In:
    entrance DOOR, $240, $C880, LEFT, MUSIC_SAME, $3640, $C280, LEFT

UnderwaterRoom7In:
    entrance DOOR, $2B40, $C280, LEFT, MUSIC_SAME, $2840, $C280, LEFT

UnderwaterRoom7Out:
    entrance DOOR, $2880, $C280, RIGHT, MUSIC_SAME, $2B80, $C280, RIGHT

UnderwaterRoom8In:
    entrance DOOR, $1940, $C280, LEFT, MUSIC_SAME, $1640, $C280, LEFT

UnderwaterRoom8Out:
    entrance DOOR, $1680, $C280, RIGHT, MUSIC_SAME, $1980, $C280, RIGHT

EVE:
    .import EVEAnim

    unknown_2B $2040, $BD00, DOWN, EVEAnim

    hide FLAG18|BIT7
    check_action CHECK, EVEExit - EVE
    print $344
    print $208
    move byte_12873E
    set_flag FLAG12|BIT0
    another $1A
EVEExit:
    end_script
byte_12873E:
    .byte $F4, 2, 0

Elevator:
    .import ElevatorAnim

    unknown_1A $3B40, $C000, UP, ElevatorAnim

    approach ElevatorExit - Elevator
    update_coor ElevatorExit - Elevator
    elevator 4
    move byte_128756
    get_off 4
    move byte_128759
ElevatorExit:
    end_script
byte_128756:
    .byte $3C, $34, 3
byte_128759:
    .byte 0

Fish1:
    .import Fish1Anim

    npc STAT_NPC, $1E00, $C0C0, LEFT, Fish1Anim
    end_script

Fish2:
    .import Fish2Anim

    npc STAT_NPC, $24C0, $C140, RIGHT, Fish2Anim
    end_script

Fish3:
    .import Fish3Anim

    npc STAT_NPC, $2400, $C100, RIGHT, Fish3Anim
    end_script

Fish4:
    npc STAT_NPC, $2280, $C0C0, RIGHT, Fish2Anim
    end_script

Fish5:
    npc STAT_NPC, $1A00, $C740, RIGHT, Fish1Anim
    end_script

Fish6:
    npc STAT_NPC, $5C0, $C700, RIGHT, Fish2Anim
    end_script

Fish7:
    npc STAT_NPC, $2300, $C140, RIGHT, Fish1Anim
    end_script

Fish8:
    npc STAT_NPC, $1F40, $C100, RIGHT, Fish2Anim
    end_script

Fish9:
    npc STAT_NPC, $1B00, $C740, RIGHT, Fish3Anim
    end_script

Fish10:
    npc STAT_NPC, $480, $C700, RIGHT, Fish2Anim
    end_script

Fish11:
    npc STAT_NPC, $1C80, $C140, RIGHT, Fish3Anim
    end_script

Cracks1:
    unknown_1F $2040, $BE80, UP

    hide FLAG12|BIT2
    approach Cracks1Exit - Cracks1
    set_flag FLAG12|BIT2
Cracks1Exit:
    end_script

Cracks2:
    .import CracksAnim

    npc STAT_NPC2, $1F80, $BE80, UP, CracksAnim

    show FLAG12|BIT2
    end_script

Cracks3:
    npc STAT_NPC2, $2100, $BE80, LEFT, CracksAnim

    show FLAG12|BIT2
    end_script

Cracks4:
    npc STAT_NPC2, $1F00, $BC80, RIGHT, CracksAnim

    show FLAG12|BIT0
    check_keypress Cracks4Exit - Cracks4
    move byte_128836
    set_flag FLAG13|BIT7
    another $1B
Cracks4Exit:
    end_script

Cracks5:
    npc STAT_NPC2, $21C0, $BC00, UP, CracksAnim

    show FLAG13|BIT7
    check_keypress Cracks5Exit - Cracks5
    move byte_12883C
    set_flag FLAG13|BIT6
    another $1C
Cracks5Exit:
    end_script

Cracks6:
    npc STAT_NPC2, $1FC0, $BC80, DOWN, CracksAnim

    show FLAG13|BIT6
    check_keypress Cracks6Exit - Cracks6
    move byte_128839
    set_flag FLAG13|BIT5
    another $1D
Cracks6Exit:
    end_script

Cracks7:
    npc STAT_NPC2, $2040, $BBC0, LEFT, CracksAnim

    show FLAG13|BIT5
    check_keypress Cracks7Exit - Cracks7
    move byte_128833
    set_flag FLAG13|BIT4
    another $1E
Cracks7Exit:
    end_script

Cracks8:
    npc STAT_NPC2, $2100, $BC80, LEFT, CracksAnim

    show FLAG13|BIT4
    check_keypress Cracks8Exit - Cracks8
    move byte_12883C
    another $1F
Cracks8Exit:
    end_script

Shakes:
    unknown_18 $2100, $BC80, LEFT

    check_keypress ShakesExit - Shakes
    shake
    shake
    shake
    teleport $E08B, $C384
    function 5
    save_coor
    add_char 6, ShakesExit - Shakes
    set_flag FLAG18|BIT7
ShakesExit:
    end_script
byte_128833:
    .byte $F0, 2, 0
byte_128836:
    .byte $F2, 2, 0
byte_128839:
    .byte $F4, 2, 0
byte_12883C:
    .byte $F6, 2, 0


SweetFactoryRooms:
    .word FactRoom8Out, FactRoom7Out, FactRoom6Out, FactRoom2Out, FactRoom9Out, FactRoom4Out, FactRoom3Out
    .word FactRoom1Out, FactRoom10Out, FactRoom14Out, FactRoom13Out, FactRoom5Out, FactRoom12Out, FactRoom11Out
    .word FactRoom14Box, FactRoom13Box1, FactRoom13Box2, FactRoom10Box, FactRoom11Box, FactRoom12Box, FactRoom5Box
    .word FactRoom6Box, FactRoom8Box, FactRoom9Box, FactRoom1Box, FactRoom2Box1, FactRoom2Box2, FactRoom4Box, 0

FactRoom8Out:
    entrance DOOR, $440, $E980, LEFT, MUSIC_SAME, $1040, $6A80, LEFT

FactRoom7Out:
    entrance DOOR, $440, $F180, LEFT, MUSIC_SAME, $840, $6A80, LEFT

FactRoom6Out:
    entrance DOOR, $F80, $F980, RIGHT, MUSIC_SAME, $640, $6A00, DOWN

FactRoom2Out:
    entrance DOOR, $780, $E180, RIGHT, MUSIC_SAME, $B40, $6F00, DOWN

FactRoom9Out:
    entrance DOOR, $780, $F980, RIGHT, MUSIC_SAME, $1540, $6A00, DOWN

FactRoom4Out:
    entrance DOOR, $440, $D180, LEFT, MUSIC_SAME, $1240, $6F80, LEFT

FactRoom3Out:
    entrance DOOR, $F80, $D180, RIGHT, MUSIC_SAME, $D40, $6F00, DOWN

FactRoom1Out:
    entrance DOOR, $780, $D980, RIGHT, MUSIC_SAME, $980, $6F80, RIGHT

FactRoom10Out:
    entrance DOOR, $1F80, $B180, RIGHT, MUSIC_SAME, $580, $6780, RIGHT

FactRoom14Out:
    entrance DOOR, $2440, $B180, LEFT, MUSIC_SAME, $1D40, $6780, LEFT

FactRoom13Out:
    entrance DOOR, $2F80, $B180, RIGHT, MUSIC_SAME, $740, $6400, DOWN

FactRoom5Out:
    entrance DOOR, $F80, $B180, RIGHT, MUSIC_SAME, $280, $6B80, RIGHT

FactRoom12Out:
    entrance DOOR, $1440, $B180, LEFT, MUSIC_SAME, $1A40, $6880, LEFT

FactRoom11Out:
    entrance DOOR, $780, $B180, RIGHT, MUSIC_SAME, $E40, $6700, DOWN

FactRoom14Box:
    box $2580, $B140, UP, BoxAnim, QuickCapsul, 4

FactRoom13Box1:
    box $2E40, $B140, UP, BoxAnim, PlasticBat, 5

FactRoom13Box2:
    box $2E00, $B180, UP, BoxAnim, MagicHerb, 6

FactRoom10Box:
    box $1D80, $B180, UP, BoxAnim, FightCapsul, 7

FactRoom11Box:
    box $5C0, $B100, UP, BoxAnim, MagicHerb, 8

FactRoom12Box:
    box $1640, $B180, UP, BoxAnim, Antidote, 9

FactRoom5Box:
    box $C40, $B1C0, UP, BoxAnim, Rope, $A

FactRoom6Box:
    box $DC0, $F980, UP, BoxAnim, MagicHerb, $B

FactRoom8Box:
    box $540, $E900, UP, BoxAnim, ButterKnife, $C

FactRoom9Box:
    box $6C0, $F900, UP, BoxAnim, MagicHerb, $D

FactRoom1Box:
    box $780, $D9C0, UP, BoxAnim, MagicHerb, $E

FactRoom2Box1:
    box $680, $E180, UP, BoxAnim, PhysicalCap, $F

FactRoom2Box2:
    box $580, $E140, UP, BoxAnim, LifeUpCream, $10

FactRoom4Box:
    box $580, $D1C0, UP, BoxAnim, Antidote, $11


FabRooms1:
    .word FabRoom19Out, FabRoom14Out, FabRoom13Out, FabRoom15Out, FabRoom16Out, FabRoom17Out, FabRoom20Out
    .word FabRoom22Out, FabRoom11Out, FabRoom23Out, FabRoom3Out, FabRoom6Out, FabRoom5Out, FabRoom4Out
    .word FabRoom1Out, FabRoom24Out, FabRoom2Out, Launch, RocketLauncher1, RocketLauncher2, RocketLauncher3
    .word FabRoom3Box, FabRoom4Box, FabRoom5Box1, FabRoom5Box2, FabRoom5Box3, FabRoom1Box, FabRoom2Box
    .word FabRoom24Box, FabRoom13Box, FabRoom14Box, FabRoom15Box, FabRoom16Box, FabRoom17Box, FabRoom19Box, 0

FabRoom19Out:
    entrance DOOR, $380, $D180, RIGHT, MUSIC_SAME, $3840, $D700, DOWN

FabRoom14Out:
    entrance DOOR, $380, $D980, RIGHT, MUSIC_SAME, $2840, $DB00, DOWN

FabRoom13Out:
    entrance DOOR, $1780, $B580, RIGHT, MUSIC_SAME, $2740, $DE00, DOWN

FabRoom15Out:
    entrance DOOR, $380, $F180, RIGHT, MUSIC_SAME, $3240, $DE00, DOWN

FabRoom16Out:
    entrance DOOR, $B80, $D180, RIGHT, MUSIC_SAME, $3840, $DD00, DOWN

FabRoom17Out:
    entrance DOOR, $840, $D980, LEFT, MUSIC_SAME, $3A40, $DD80, LEFT

FabRoom20Out:
    entrance DOOR, $B80, $E980, RIGHT, MUSIC_SAME, $1740, $E000, DOWN

FabRoom22Out:
    entrance DOOR, $F80, $BD80, RIGHT, MUSIC_SAME, $1380, $E180, RIGHT

FabRoom11Out:
    entrance DOOR, $840, $F180, LEFT, MUSIC_SAME, $3640, $EA80, LEFT

FabRoom23Out:
    entrance DOOR, $840, $F980, LEFT, MUSIC_SAME, $2A40, $EB80, LEFT

FabRoom3Out:
    entrance DOOR, $1380, $D180, RIGHT, MUSIC_SAME, $2740, $F300, DOWN

FabRoom6Out:
    entrance DOOR, $840, $B180, LEFT, MUSIC_SAME, $3840, $F880, LEFT

FabRoom5Out:
    entrance DOOR, $780, $B580, RIGHT, MUSIC_SAME, $3540, $F700, DOWN

FabRoom4Out:
    entrance DOOR, $1380, $B180, RIGHT, MUSIC_SAME, $3340, $F700, DOWN

FabRoom1Out:
    entrance DOOR, $1840, $B180, LEFT, MUSIC_SAME, $2540, $F780, LEFT

FabRoom24Out:
    entrance DOOR, $2380, $B180, RIGHT, MUSIC_SAME, $1F40, $EB00, DOWN

FabRoom2Out:
    entrance DOOR, $3B80, $B180, RIGHT, MUSIC_SAME, $1D40, $F100, DOWN

Launch:
    .import stru_158550

    unknown_1D $980, $BD80, UP, stru_158550

    hide FLAG0E|BIT6
    check_action CHECK, LaunchKey - Launch
    jump LaunchFlag - Launch
LaunchKey:
    check_keypress LaunchExit - Launch
LaunchFlag:
    check_flag FLAG0E|BIT6, LaunchChar - Launch
    jump LaunchExit - Launch
LaunchChar:
    check_char 3, OldRocket - Launch
    check_status FAINTED, OldRocket - Launch
    print $124
    move byte_128A5C
    play SOUND1, 9
    move byte_128A5F
    play SOUND1, 2
    map_val $1E, $52
    set_flag FLAG0E|BIT6
    move byte_128A64
    end_script
OldRocket:
    print $3BA
LaunchExit:
    end_script
byte_128A5C:
    .byte $F0, 1, 3
byte_128A5F:
    .byte $79, 6, $D9, 8, 3
byte_128A64:
    .byte 0

RocketLauncher1:
    .import RocketLauncherAnim

    entity $980, $BDC0, UP, RocketLauncherAnim

    check_action CHECK, RocketLauncher1Exit - RocketLauncher1
    another $11
RocketLauncher1Exit:
    end_script

RocketLauncher2:
    entity $A00, $BD40, UP, RocketLauncherAnim
    end_script

RocketLauncher3:
    entity $900, $BD40, UP, RocketLauncherAnim
    end_script

FabRoom3Box:
    box $1200, $D140, UP, BoxAnim, Bomb, $35

FabRoom4Box:
    box $11C0, $B140, UP, BoxAnim, LifeUpCream, $36

FabRoom5Box1:
    box $580, $B580, UP, BoxAnim, QuickCapsul, $37

FabRoom5Box2:
    box $3C0, $B580, UP, BoxAnim, PhysicalCap, $38

FabRoom5Box3:
    box $200, $B580, UP, BoxAnim, WisdomCaps, $39

FabRoom1Box:
    box $1900, $B180, UP, BoxAnim, Rope, $3A

FabRoom2Box:
    box $3900, $B100, UP, BoxAnim, Bomb, $3B

FabRoom24Box:
    box $2200, $B100, UP, BoxAnim, PSIStone, $3C

FabRoom13Box:
    box $1100, $B540, UP, BoxAnim, LifeUpCream, $3D

FabRoom14Box:
    box $140, $D980, UP, BoxAnim, BottlRocket, $3E

FabRoom15Box:
    box $240, $F1C0, UP, BoxAnim, Rope, $3F

FabRoom16Box:
    box $900, $D1C0, UP, BoxAnim, Bread, $40

FabRoom17Box:
    box $A80, $D940, UP, BoxAnim, FranklnBdge, $41

FabRoom19Box:
    box $140, $D140, UP, BoxAnim, ForceCapsul, $42


FabRooms2:
    .word FabRoom18Out, FabRoom12Out, FabRoom10Out, FabRoom7Out, FabRoom8Out, FabRoom9Out, FabRoom7Box
    .word FabRoom9Box, FabRoom8Box1, FabRoom8Box2, FabRoom10Box, FabRoom12Box, 0

FabRoom18Out:
    entrance DOOR, $40, $E980, LEFT, MUSIC_SAME, $4140, $DA80, LEFT

FabRoom12Out:
    entrance DOOR, $40, $B180, LEFT, MUSIC_SAME, $4B40, $E180, LEFT

FabRoom10Out:
    entrance DOOR, $2C40, $B580, LEFT, MUSIC_SAME, $5140, $EE80, LEFT

FabRoom7Out:
    entrance DOOR, $2B80, $B180, RIGHT, MUSIC_SAME, $4D40, $F300, DOWN

FabRoom8Out:
    entrance DOOR, $3040, $B180, LEFT, MUSIC_SAME, $4B40, $F780, LEFT

FabRoom9Out:
    entrance DOOR, $380, $F980, RIGHT, MUSIC_SAME, $4880, $F980, RIGHT

FabRoom7Box:
    box $2A00, $B180, UP, BoxAnim, Bomb, $43

FabRoom9Box:
    box $280, $F900, UP, BoxAnim, Rope, $44

FabRoom8Box1:
    box $3240, $B180, UP, BoxAnim, BottlRocket, $45

FabRoom8Box2:
    box $3180, $B140, UP, BoxAnim, BottlRocket, $46

FabRoom10Box:
    box $3200, $B580, UP, BoxAnim, SuperSpray, $47

FabRoom12Box:
    box $300, $B1C0, UP, BoxAnim, Bomb, $48


Rescue:
    .word MountainToCave, StartRescue, TakeBodies, Body1, Body2, Body3, LloydRescue, ItoiHouseIn1, 0

MountainToCave:
    entrance DOOR, $DF40, $DCC0, UP, MUSIC_13, $FF40, $3740, DOWN

StartRescue:
    unknown_1C $E180, $DCC0, UP

    show FLAG19|BIT6
    approach StartRescueExit - StartRescue
    another 6
StartRescueExit:
    end_script

TakeBodies:
    .import AnimBoy2

    npc STAT_NPC2, $E180, $DD00, UP, AnimBoy2

    show FLAG00|BIT6
    check_keypress TakeBodiesExit - TakeBodies
    move byte_128BB0
    print $3C0
    move byte_128BB5
    clear_flag FLAG19|BIT3
    move byte_128BBA
    clear_flag FLAG19|BIT4
    move byte_128BBF
    clear_flag FLAG19|BIT5
    move byte_128BC4
TakeBodiesExit:
    end_script
byte_128BB0:
    .byte $72, 1, $F4, 1, 3
byte_128BB5:
    .byte $74, 1, $F0, 2, 3
byte_128BBA:
    .byte $76, 1, $F0, 2, 3
byte_128BBF:
    .byte $76, 1, $F0, 2, 3
byte_128BC4:
    .byte $70, 1, $72, 1, 0

Body1:
    .import stru_158180

    unknown_1D $E140, $DD40, UP, stru_158180

    show FLAG19|BIT5
    end_script

Body2:
    unknown_1D $E180, $DD40, UP, stru_158180

    show FLAG19|BIT4
    end_script

Body3:
    unknown_1D $E1C0, $DD40, UP, stru_158180

    show FLAG19|BIT3
    end_script

LloydRescue:
    .import TankAnim

    unknown_2C $DF40, $DD00, UP, TankAnim

    show FLAG19|BIT6
    check_keypress LloydRescueExit - LloydRescue
    move TankCome
    another 2
    move byte_128C19
    clear_flag FLAG19|BIT6
    clear_flag BIT0|FLAG1F
    remove_char 4, LloydRescueExit - LloydRescue
    remove_char 2, LloydRescueExit - LloydRescue
    get_char_name 2
    clear_status 0
    add_char 2, LloydRescueExit - LloydRescue
    teleport $BD52, $F182
    function 7
    move byte_128C22
LloydRescueExit:
    end_script
TankCome:
    .byte $F2, 4, $72, 9, $F2, 4, 3
byte_128C19:
    .byte $F2, $14, $F4, 1, $76, 9, $F6, 4, 3
byte_128C22:
    .byte 0

ItoiHouseIn1:
    entrance DOOR, $EF40, $D0C0, UP, MUSIC_12, $340, $4980, LEFT


Itoi:
    .word ItoiHouseIn2, CapsuleRoomOut, MountainObserveIn, MountainObserveOut, R7038XX, EVEBody1, EVEBody2
    .word Capsule1, Capsule2, MainCaveIn, ObserveBox, Tomb, 0

ItoiHouseIn2:
    entrance DOOR, $EF40, $D0C0, UP, MUSIC_15, $9740, $F980, LEFT

CapsuleRoomOut:
    entrance DOOR, $E380, $2D80, RIGHT, MUSIC_SAME, $C340, $9D40, DOWN

MountainObserveIn:
    entrance DOOR, $F540, $9CC0, UP, MUSIC_SAME, $7540, $8380, DOWN

MountainObserveOut:
    entrance DOOR, $7540, $8340, UP, MUSIC_SAME, $F540, $9D00, DOWN

R7038XX:
    unknown_1F $F040, $9B00, UP

    hide FLAG12|BIT6
    approach R7038XXExit - R7038XX
    check_flag FLAG18|BIT7, R7038XXExit - R7038XX
    clear_flag FLAG18|BIT7
    set_flag FLAG18|BIT6
    set_flag FLAG12|BIT6
    set_flag FLAG12|BIT5
    clear_flag FLAG1F|BIT1
    enemies $90
R7038XXExit:
    end_script

EVEBody1:
    .import EVEBodyAnim

    unknown_2B $F0C0, $9AC0, UP, EVEBodyAnim

    show FLAG12|BIT5
    call EVEBody1, EVECall - EVEBody1
    end_script
EVECall:
    check_action CHECK, EVECheck - EVEBody1
    jump EVEMusic - EVEBody1
EVECheck:
    check_action CHECK, EVEBody1Exit - EVEBody1
EVEMusic:
    print $361
    play MUSIC, $2A
    wait 240
    play MUSIC, $B
    set_flag TUNES|BIT6
    print $340
EVEBody1Exit:
    return

EVEBody2:
    unknown_1C $F100, $9AC0, UP

    show FLAG12|BIT5
    call EVEBody1, EVECall - EVEBody1
    end_script

Capsule1:
    unknown_18 $E240, $2D00, UP

    check_action TALK, Capsule1Exit - Capsule1
    print $174
Capsule1Exit:
    end_script

Capsule2:
    unknown_18 $E200, $2DC0, UP

    check_action TALK, Capsule2Exit - Capsule2
    print $3CA
Capsule2Exit:
    end_script

MainCaveIn:
    entrance DOOR, $E240, $9140, UP, MUSIC_32, $C140, $A040, DOWN

ObserveBox:
    box $72C0, $8380, UP, BoxAnim, SeaPendant, $20

Tomb:
    unknown_18 $E240, $9480, UP

    check_action CHECK, TombExit - Tomb
    play MUSIC, $1B
    play SOUND2, $12
    tomb
    print $3E4
    play MUSIC, $2B
    wait 240
    set_flag TUNES|BIT7
    print $340
    print $3E5
    play MUSIC, $B
TombExit:
    end_script


ItoiCave:
    .word ItoiCaveOut, Cave1ToCave3, Cave1ToCave6, Cave2ToCave3, Cave2ToCave9, Cave4ToCave7, Cave4ToMountain
    .word Cave3ToCave2, Cave3ToCave9, Cave3ToCave1, Cave3ToCave5, Cave7ToCave8, Cave7ToCave4, Cave7ToCave5
    .word Cave6ToCave1, Cave6ToCave9, Cave6ToCave5, Cave9ToCave2, Cave9ToCave6, Cave9ToCave3, Cave8ToCave7
    .word Cave5ToCave6, Cave5ToCave3, Cave5ToCave7, ItoiCaveBox1, ItoiCaveBox2, ItoiCaveBox3, ItoiCaveBox4
    .word ItoiCaveBox5, ItoiCaveBox6, 0

ItoiCaveOut:
    entrance STAIRS, $E680, $3E00, UP, MUSIC_6, $F940, $5400, DOWN

Cave1ToCave3:
    entrance STAIRS, $E940, $3A00, UP, MUSIC_SAME, $F740, $3440, DOWN

Cave1ToCave6:
    entrance STAIRS, $EA40, $3500, UP, MUSIC_SAME, $F540, $2F40, DOWN

Cave2ToCave3:
    entrance STAIRS, $EE80, $3E00, UP, MUSIC_SAME, $F540, $3940, DOWN

Cave2ToCave9:
    entrance STAIRS, $F140, $3E00, UP, MUSIC_SAME, $F680, $2740, DOWN

Cave4ToCave7:
    entrance STAIRS, $F480, $3E00, UP, MUSIC_SAME, $FC40, $2C40, DOWN

Cave4ToMountain:
    entrance STAIRS, $FF40, $3700, UP, MUSIC_b, $DF40, $DD00, DOWN

Cave3ToCave2:
    entrance STAIRS, $F540, $3900, UP, MUSIC_SAME, $EE80, $3E40, DOWN

Cave3ToCave9:
    entrance STAIRS, $F180, $3900, UP, MUSIC_SAME, $F240, $2340, DOWN

Cave3ToCave1:
    entrance STAIRS, $F740, $3400, UP, MUSIC_SAME, $E940, $3A40, DOWN

Cave3ToCave5:
    entrance STAIRS, $EF80, $3400, UP, MUSIC_SAME, $EB80, $2E40, DOWN

Cave7ToCave8:
    entrance STAIRS, $FE40, $3100, UP, MUSIC_SAME, $EA80, $2640, DOWN

Cave7ToCave4:
    entrance STAIRS, $FC40, $2C00, UP, MUSIC_SAME, $F480, $3E40, DOWN

Cave7ToCave5:
    entrance STAIRS, $FB40, $2500, UP, MUSIC_SAME, $E780, $3040, DOWN

Cave6ToCave1:
    entrance STAIRS, $F540, $2F00, UP, MUSIC_SAME, $EA40, $3540, DOWN

Cave6ToCave9:
    entrance STAIRS, $F440, $2D00, UP, MUSIC_SAME, $F540, $2640, DOWN

Cave6ToCave5:
    entrance STAIRS, $F740, $2D00, UP, MUSIC_SAME, $ED40, $2E40, DOWN

Cave9ToCave2:
    entrance STAIRS, $F680, $2700, UP, MUSIC_SAME, $F140, $3E40, DOWN

Cave9ToCave6:
    entrance STAIRS, $F540, $2600, UP, MUSIC_SAME, $F440, $2D40, DOWN

Cave9ToCave3:
    entrance STAIRS, $F240, $2300, UP, MUSIC_SAME, $F180, $3940, DOWN

Cave8ToCave7:
    entrance STAIRS, $EA80, $2600, UP, MUSIC_SAME, $FE40, $3140, DOWN

Cave5ToCave6:
    entrance STAIRS, $ED40, $2E00, UP, MUSIC_SAME, $F740, $2D40, DOWN

Cave5ToCave3:
    entrance STAIRS, $EB80, $2E00, UP, MUSIC_SAME, $EF80, $3440, DOWN

Cave5ToCave7:
    entrance STAIRS, $E780, $3000, UP, MUSIC_SAME, $FB40, $2540, DOWN

ItoiCaveBox1:
    box $E600, $3B40, UP, BoxAnim, Katana, $21

ItoiCaveBox2:
    box $E680, $2C80, UP, BoxAnim, IronSkillet, $22

ItoiCaveBox3:
    box $EE00, $2840, UP, BoxAnim, HanksBat, $23

ItoiCaveBox4:
    box $F100, $2C40, UP, BoxAnim, LifeUpCream, $24

ItoiCaveBox5:
    box $EFC0, $3E40, UP, BoxAnim, Bomb, $25

ItoiCaveBox6:
    box $FA40, $3A40, UP, BoxAnim, PSIStone, $26


Lake:
    .word Boat1, Boat2, Whirlpool, R7038XX2, EVEBody3, EVEBody4, 0

Boat1:
    .import BoatAnim

    unknown_28 $ECC0, $C340, LEFT, BoatAnim

    hide FLAG05|BIT5
    approach Boat1Exit - Boat1
    print $3C4
    check_char 3, Fix - Boat1
    check_status FAINTED, Fix - Boat1
    print $3C6
    boat 6
    set_flag FLAG05|BIT5
    set_flag FLAG0E|BIT5
    end_script
Fix:
    print $3C5
Boat1Exit:
    end_script

Boat2:
    unknown_1F $ECC0, $C340, UP

    show FLAG0E|BIT5
    approach Boat2Exit - Boat2
    clear_flag FLAG05|BIT5
    clear_flag FLAG0E|BIT5
    get_off 4
Boat2Exit:
    end_script

Whirlpool:
    change_location $E880, $C480, UP

    approach WhirlpoolExit - Whirlpool
    set_flag FLAG1F|BIT1
    clear_flag FLAG0E|BIT5
    get_off 0
    teleport $3B4C, $BF04
    function 4
    save_coor
WhirlpoolExit:
    end_script

R7038XX2:
    unknown_1F $EDC0, $C9C0, UP

    hide FLAG12|BIT6
    approach R7038XX2Exit - R7038XX2
    check_flag FLAG18|BIT7, R7038XX2Exit - R7038XX2
    clear_flag FLAG18|BIT7
    set_flag FLAG18|BIT6
    set_flag FLAG12|BIT6
    set_flag FLAG12|BIT4
    clear_flag FLAG1F|BIT1
    enemies $90
R7038XX2Exit:
    end_script

EVEBody3:
    unknown_2B $EC80, $C980, UP, EVEBodyAnim

    show FLAG12|BIT4
    call EVEBody3, EVE3Call - EVEBody3
    end_script
EVE3Call:
    check_action CHECK, EVE3Check - EVEBody3
    jump EVE3Music - EVEBody3
EVE3Check:
    check_action CHECK, EVEBody3Exit - EVEBody3
EVE3Music:
    print $361
    play MUSIC, $2A
    wait 240
    play MUSIC, $B
    set_flag TUNES|BIT6
    print $340
EVEBody3Exit:
    return

EVEBody4:
    unknown_1C $ECC0, $C980, UP

    show FLAG12|BIT4
    call EVEBody3, EVE3Call - EVEBody3
    end_script


Magicant:
    .word GuitaristHomeIn, MagCoinStoreIn, MagRingStoreIn, MagPendantStoreIn, MagCafeIn, MagHospitalIn
    .word MagMusicalStoreIn, MagHome5In, MagHome6In, MagHome7In, MagHome9In, MagHome10In, MagHotelIn, MagHome8In
    .word MagHome4In, MagHome3In, MystKeeperHomeIn, MystMimickerHomeIn, MagHome1In, MagHome2In, BBOwnerHomeIn
    .word MagNPC1, MagNPC2, MagNPC3, MagMonkey, MagNPC4, MagNPC5, MagCat, SwimmingCat, MagNPC6, MagNPC7
    .word SwampHouseIn, SwampTrash, 0

GuitaristHomeIn:
    entrance DOOR, $9780, $A5C0, UP, MUSIC_SAME, $B40, $8580, LEFT

MagCoinStoreIn:
    entrance DOOR, $A580, $A4C0, UP, MUSIC_SAME, $1340, $8580, LEFT

MagRingStoreIn:
    entrance DOOR, $A680, $A4C0, UP, MUSIC_SAME, $1B40, $8580, LEFT

MagPendantStoreIn:
    entrance DOOR, $A780, $A4C0, UP, MUSIC_SAME, $340, $8D80, LEFT

MagCafeIn:
    entrance DOOR, $A380, $A4C0, UP, MUSIC_SAME, $B40, $8D80, LEFT

MagHospitalIn:
    entrance DOOR, $A280, $A4C0, UP, MUSIC_SAME, $1340, $8D80, LEFT

MagMusicalStoreIn:
    entrance DOOR, $A180, $A4C0, UP, MUSIC_SAME, $1B40, $8D80, LEFT

MagHome5In:
    entrance DOOR, $9F80, $A6C0, UP, MUSIC_SAME, $340, $9580, LEFT

MagHome6In:
    entrance DOOR, $A080, $A6C0, UP, MUSIC_SAME, $B40, $9580, LEFT

MagHome7In:
    entrance DOOR, $A180, $A6C0, UP, MUSIC_SAME, $1340, $9580, LEFT

MagHome9In:
    entrance DOOR, $A380, $A6C0, UP, MUSIC_SAME, $1B40, $9580, LEFT

MagHome10In:
    entrance DOOR, $A480, $A6C0, UP, MUSIC_SAME, $340, $9D80, LEFT

MagHotelIn:
    entrance DOOR, $A580, $A6C0, UP, MUSIC_SAME, $B40, $9D80, LEFT

MagHome8In:
    entrance DOOR, $A380, $A8C0, UP, MUSIC_SAME, $1340, $9D80, LEFT

MagHome4In:
    entrance DOOR, $9D80, $A8C0, UP, MUSIC_SAME, $1B40, $9D80, LEFT

MagHome3In:
    entrance DOOR, $9C80, $A9C0, UP, MUSIC_SAME, $740, $8580, LEFT

MystKeeperHomeIn:
    entrance DOOR, $9B80, $AAC0, UP, MUSIC_SAME, $F40, $8580, LEFT

MystMimickerHomeIn:
    entrance DOOR, $9A80, $ABC0, UP, MUSIC_SAME, $1740, $8580, LEFT

MagHome1In:
    entrance DOOR, $9C80, $ABC0, UP, MUSIC_SAME, $1F40, $8580, LEFT

MagHome2In:
    entrance DOOR, $9D80, $ABC0, UP, MUSIC_SAME, $740, $8D80, LEFT

BBOwnerHomeIn:
    entrance DOOR, $9980, $ACC0, UP, MUSIC_SAME, $F40, $8D80, LEFT

MagNPC1:
    .import stru_1587A4

    npc WALK_NPC, $9CC0, $A8C0, DOWN, stru_1587A4

    check_action TALK, MagNPC1Exit - MagNPC1
    print $82
MagNPC1Exit:
    end_script

MagNPC2:
    .import stru_158804

    npc WALK_NPC, $A100, $A700, DOWN, stru_158804

    check_action TALK, MagNPC2Exit - MagNPC2
    print $B3
MagNPC2Exit:
    end_script

MagNPC3:
    npc NPC_1, $9580, $AB40, DOWN, stru_158804

    check_action TALK, MagNPC3Exit - MagNPC3
    print $B4
MagNPC3Exit:
    end_script

MagMonkey:
    .import MonkeyAnim

    npc WALK_NPC, $9900, $A980, DOWN, MonkeyAnim

    check_action TALK, MagMonkeyExit - MagMonkey
    print $B8
    confirm LikeQueen - MagMonkey
    print $B9
    end_script
LikeQueen:
    print $BA
MagMonkeyExit:
    end_script

MagNPC4:
    .import stru_1588C0

    npc WALK_NPC, $9B40, $AC00, DOWN, stru_1588C0

    check_action TALK, MagNPC4Exit - MagNPC4
    print $BC
MagNPC4Exit:
    end_script

MagNPC5:
    npc WALK_NPC, $A140, $AC80, DOWN, stru_158804

    check_action TALK, MagNPC5Exit - MagNPC5
    print $CF
MagNPC5Exit:
    end_script

MagCat:
    .import CatAnim

    npc WALK_NPC, $9780, $A800, DOWN, CatAnim

    check_action TALK, PSICheck - MagCat
    check_flag FLAG09|BIT6, Guess - MagCat
    print $BF
    end_script
Guess:
    print $D1
    end_script
PSICheck:
    check_psi 1, MagCatExit - MagCat
    check_flag FLAG09|BIT6, Ribbon - MagCat
    print $BF
    end_script
Ribbon:
    print $D2
    check_char 2, ForGirl - MagCat
    check_status FAINTED, ForGirl - MagCat
    print $D3
    get_char_name 2
    find_item2 EMPTY, MagCatOtherTime - MagCat
    select_item MagicRibbon
    add_item MagCatExit - MagCat
    play SOUND2, 6
    set_flag FLAG09|BIT6
    end_script
MagCatOtherTime:
    print $24B
    end_script
ForGirl:
    print $BE
MagCatExit:
    end_script

SwimmingCat:
    npc STAT_NPC1, $A1C0, $A980, DOWN, CatAnim

    check_action TALK, SwimmingCatExit - SwimmingCat
    check_flag FLAG09|BIT5, Candy - SwimmingCat
    print $D8
    end_script
Candy:
    print $D4
    confirm CatChar - SwimmingCat
    print $33
    end_script
CatChar:
    check_char 3, Helpless - SwimmingCat
    check_status FAINTED, Helpless - SwimmingCat
    print $D6
    get_char_name 3
    find_item2 EMPTY, CatOtherTime - SwimmingCat
    select_item MagicCandy
    add_item SwimmingCatExit - SwimmingCat
    play SOUND2, 6
    set_flag FLAG09|BIT5
    end_script
CatOtherTime:
    print $24B
    end_script
Helpless:
    print $D5
SwimmingCatExit:
    end_script

MagNPC6:
    npc WALK_NPC, $9900, $AD00, DOWN, stru_1587A4

    check_action TALK, MagNPC6Exit - MagNPC6
    print $D9
MagNPC6Exit:
    end_script

MagNPC7:
    npc NPC_1, $9E40, $AAC0, DOWN, stru_158804

    check_action TALK, MagNPC7Exit - MagNPC7
    print $87
MagNPC7Exit:
    end_script

SwampHouseIn:
    entrance DOOR, $D940, $65C0, UP, MUSIC_12, $E340, $3980, LEFT

SwampTrash:
    unknown_21 $D8C0, $6600, UP, TrashAnim

    hide FLAG00|BIT6
    check_action CHECK, TrashTalk - SwampTrash
    print $32D
    end_script
TrashTalk:
    check_action TALK, SwampTrashExit - SwampTrash
    print $1FA
    confirm TrashRefuse - SwampTrash
    check_flag FLAG10|BIT7, TrashPause - SwampTrash
    print $1FB
    end_script
TrashPause:
    print $CA
TrashRefuse:
    print $1FC
    name_reg
    print $3CB
    confirm TrashRefuse - SwampTrash
    print $1FB
    set_flag FLAG10|BIT7
SwampTrashExit:
    end_script

    .byte $70, 7, 3, 0


off_1290B6:
    .word CaveOut, StrangeCaveCrystal, DesertCave2Dung, DesCaveCrystal, CaveCrystalOut, Cave2Young, MagWellIn
    .word PalaceIn, BirdEntrance, Fountain, FountainMan, FountainGuard1, FountainGuard2, BirdGrave1, BirdGrave2
    .word BirdGrave3, BirdGrave4, BirdGrave5, RedWeed1, RedWeed2, RedWeed3, Guardsman1, Guardsman2, Guardsman3, 0

CaveOut:
    entrance DOOR, $F080, $8500, UP, MUSIC_6, $5240, $3A00, DOWN

StrangeCaveCrystal:
    unknown_18 $F280, $8080, UP

    check_action CHECK, CrystalPSI - StrangeCaveCrystal
    check_flag FLAG1C|BIT7, MindVoice - StrangeCaveCrystal
    jump StrangeCaveCrystalExit - StrangeCaveCrystal
MindVoice:
    print $59
    end_script
CrystalPSI:
    check_psi 1, StrangeCaveCrystalExit - StrangeCaveCrystal
    check_flag FLAG1C|BIT7, LostTail - StrangeCaveCrystal
    jump StrangeCaveCrystalExit - StrangeCaveCrystal
LostTail:
    print $6E
    find_item GGFsDiary, StrangeCaveCrystalExit - StrangeCaveCrystal
    print $22B
    set_flag FLAG10|BIT0
    teleport $A049, $AA04
    function 2
    save_coor
StrangeCaveCrystalExit:
    end_script

DesertCave2Dung:
    entrance DOOR, $F880, $8A00, UP, MUSIC_18, $1340, $A640, DOWN

DesCaveCrystal:
    unknown_18 $FD80, $8880, UP

    check_action CHECK, DesCrystalPSI - DesCaveCrystal
    check_flag FLAG1C|BIT7, DesMindVoice - DesCaveCrystal
    jump DesCaveCrystalExit - DesCaveCrystal
DesMindVoice:
    print $59
    end_script
DesCrystalPSI:
    check_psi 1, DesCaveCrystalExit - DesCaveCrystal
    check_flag FLAG1C|BIT7, DesLostTail - DesCaveCrystal
    jump DesCaveCrystalExit - DesCaveCrystal
DesLostTail:
    print $6E
    clear_flag FLAG10|BIT0
    teleport $A049, $AA04
    function 2
    save_coor
DesCaveCrystalExit:
    end_script

CaveCrystalOut:
    entrance DOOR, $F980, $8200, UP, MUSIC_6, $5980, $93C0, DOWN

Cave2Young:
    entrance DOOR, $FF40, $7900, UP, MUSIC_8, $9E40, $6400, DOWN

MagWellIn:
    entrance HOLE, $B240, $A5C0, UP, MUSIC_11, $7240, $8F00, DOWN

PalaceIn:
    entrance DOOR, $AD00, $9A80, UP, MUSIC_1a, $900, $8940, LEFT

BirdEntrance:
    change_location $B280, $94C0, UP

    check_view BirdEntranceExit - BirdEntrance
    approach BirdEntranceExit - BirdEntrance
    clear_flag FLAG00|BIT7
    check_flag FLAG0C|BIT3, BirdCheck1 - BirdEntrance
    check_char 7, BirdSet1 - BirdEntrance
    jump BirdCheck1 - BirdEntrance
BirdSet1:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT6
BirdCheck1:
    check_flag FLAG0C|BIT2, BirdCheck2 - BirdEntrance
    check_char 7, BirdSet2 - BirdEntrance
    jump BirdCheck2 - BirdEntrance
BirdSet2:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT5
BirdCheck2:
    check_flag FLAG0C|BIT1, BirdCheck3 - BirdEntrance
    check_char 7, BirdSet3 - BirdEntrance
    jump BirdCheck3 - BirdEntrance
BirdSet3:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT4
BirdCheck3:
    check_flag FLAG0C|BIT0, BirdCheck4 - BirdEntrance
    check_char 7, BirdSet4 - BirdEntrance
    jump BirdCheck4 - BirdEntrance
BirdSet4:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT3
BirdCheck4:
    check_flag FLAG0D|BIT7, BirdCheck5 - BirdEntrance
    check_char 7, BirdSet5 - BirdEntrance
    jump BirdCheck5 - BirdEntrance
BirdSet5:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT2
BirdCheck5:
    check_flag FLAG00|BIT7, BirdInside - BirdEntrance
    clear_flag FLAG00|BIT7
    set_flag FLAG0D|BIT1
BirdInside:
    teleport $340, $8586
BirdEntranceExit:
    end_script

Fountain:
    unknown_18 $97C0, $97C0, UP

    approach FountainUse - Fountain
    print $348
    sel_char 0, FountainSound - Fountain
    check_status FAINTED, FountainChar1 - Fountain
FountainHeal1:
    heal $FF
    max_hp FountainHeal1 - Fountain
FountainChar1:
    sel_char 1, FountainSound - Fountain
    check_status FAINTED, FountainChar2 - Fountain
FountainHeal2:
    heal $FF
    max_hp FountainHeal2 - Fountain
FountainChar2:
    sel_char 2, FountainSound - Fountain
    check_status FAINTED, FountainSound - Fountain
FountainHeal3:
    heal $FF
    max_hp FountainHeal3 - Fountain
FountainSound:
    play SOUND2, 7
    end_script
FountainUse:
    use_item RedWeed, FountainPSI - Fountain
    print $21A
    select_item RedWeed
    remove_item FountainExit - Fountain
    select_item MagicHerb
    add_item FountainExit - Fountain
    end_script
FountainPSI:
    check_psi 1, FountainExit - Fountain
    print $37D
    set_flag FLAG0E|BIT7
FountainExit:
    end_script

FountainMan:
    .import stru_1589D0

    unknown_1D $97C0, $97C0, DOWN, stru_1589D0

    show FLAG0E|BIT7
    check_action TALK, FountainManExit - FountainMan
    print $DC
    confirm Right - FountainMan
    jump NeedMoney - FountainMan
Right:
    print $DD
    clear_flag FLAG0E|BIT7
    end_script
NeedMoney:
    print $DE
    confirm Right - FountainMan
    print $E0
    input_num Right - FountainMan
    withdraw FountainLess - FountainMan
    get FountainAdd - FountainMan
    cash
    print $E1
    clear_flag FLAG0E|BIT7
    end_script
FountainAdd:
    add_account FountainAdd - FountainMan
    print $B7
    clear_flag FLAG0E|BIT7
    end_script
FountainLess:
    print $E2
FountainManHide:
    clear_flag FLAG0E|BIT7
FountainManExit:
    end_script

FountainGuard1:
    .import GuardAnim

    npc WALK_NPC, $9740, $98C0, DOWN, GuardAnim

    check_action TALK, FountainGuard1Exit - FountainGuard1
    print $7E
FountainGuard1Exit:
    end_script

FountainGuard2:
    npc WALK_NPC, $96C0, $9840, DOWN, GuardAnim

    check_action TALK, FountainGuard2Exit - FountainGuard2
    print $9E
FountainGuard2Exit:
    end_script

BirdGrave1:
    .import BirdGraveAnim

    unknown_1D $B540, $9480, UP, BirdGraveAnim

    show FLAG0D|BIT2
    check_action CHECK, BirdGrave1Exit - BirdGrave1
    print $36F
BirdGrave1Exit:
    end_script

BirdGrave2:
    unknown_1D $B340, $9480, UP, BirdGraveAnim

    show FLAG0D|BIT6
    check_action CHECK, BirdGrave2Exit - BirdGrave2
    print $36B
BirdGrave2Exit:
    end_script

BirdGrave3:
    unknown_1D $B3C0, $94C0, UP, BirdGraveAnim

    show FLAG0D|BIT5
    check_action CHECK, BirdGrave3Exit - BirdGrave3
    print $36C
BirdGrave3Exit:
    end_script

BirdGrave4:
    unknown_1D $B440, $9480, UP, BirdGraveAnim

    show FLAG0D|BIT4
    check_action CHECK, BirdGrave4Exit - BirdGrave4
    print $36D
BirdGrave4Exit:
    end_script

BirdGrave5:
    unknown_1D $B4C0, $94C0, UP, BirdGraveAnim

    show FLAG0D|BIT3
    check_action CHECK, BirdGrave5Exit - BirdGrave5
    print $36E
BirdGrave5Exit:
    end_script

RedWeed1:
    unknown_18 $A440, $9F40, UP

    call RedWeed1, RedWeedCall - RedWeed1
    end_script
RedWeedCall:
    check_action CHECK, RedWeed1Exit - RedWeed1
    select_item RedWeed
    print $39A
    find_item EMPTY, RedWeedCant - RedWeed1
    select_item RedWeed
    add_item RedWeedCant - RedWeed1
    print $39B
    play SOUND2, 6
    return
RedWeedCant:
    print $39D
RedWeed1Exit:
    return

RedWeed2:
    unknown_18 $AD40, $9E40, UP

    call RedWeed1, RedWeedCall - RedWeed1
    end_script

RedWeed3:
    unknown_18 $AE80, $9F80, UP

    call RedWeed1, RedWeedCall - RedWeed1
    end_script

Guardsman1:
    .import GuardsAnim

    npc NPC_1, $AB40, $9D00, DOWN, GuardsAnim

    check_action TALK, GuardsmanKey1 - Guardsman1
    print $CA
    end_script
GuardsmanKey1:
    check_keypress Guardsman1Exit - Guardsman1
    move byte_1292DA
Guardsman1Exit:
    end_script
byte_1292DA:
    .byte $F4, 1, 0

Guardsman2:
    npc NPC_1, $ABC0, $9D00, DOWN, GuardsAnim

    check_action TALK, GuardsmanKey2 - Guardsman2
    print $CA
    end_script
GuardsmanKey2:
    check_keypress Guardsman2Exit - Guardsman2
    another $15
    move byte_1292F1
Guardsman2Exit:
    end_script
byte_1292F1:
    .byte $F4, 1, $7E, 4, 0

Guardsman3:
    npc NPC_1, $AB80, $9D00, DOWN, GuardsAnim

    check_action TALK, GuardsmanPSI - Guardsman3
    check_flag FLAG09|BIT3, SolveRiddle - Guardsman3
    print $AB
    update_coor Guardsman3Exit - Guardsman3
GuardsmanMove:
    another SolveRiddle - Guardsman3
    move byte_129325
    end_script
SolveRiddle:
    print $A9
    set_flag FLAG09|BIT4
    end_script
GuardsmanPSI:
    check_psi 1, Guardsman3Exit - Guardsman3
    check_flag FLAG09|BIT4, Guardsman3Exit - Guardsman3
    check_flag FLAG09|BIT3, NoRiddle - Guardsman3
    jump Guardsman3Exit - Guardsman3
NoRiddle:
    print $AA
    set_flag FLAG09|BIT3
    jump GuardsmanMove - Guardsman3
Guardsman3Exit:
    end_script
byte_129325:
    .byte $F4, 2, $7E, 2, 0


off_12932A:
    .word 0


MagicantRooms:
    .word BirdHomeOut, GuitaristHomeOut, MagCoinStoreOut, MagRingStoreOut, MagPendantStoreOut, MagCafeOut, MagHospitalOut
    .word MagMusicalStoreOut, Bird1, Bird2, Bird3, Bird4, Bird5, Guitarist, MagCoinClerk, MagRingClerk, MagPendantClerk
    .word MagCafeOwner, MagNurse, MagMusicalClerk, 0

BirdHomeOut:
    entrance DOOR, $380, $8580, RIGHT, MUSIC_SAME, $B280, $9500, DOWN

GuitaristHomeOut:
    entrance DOOR, $B80, $8580, RIGHT, MUSIC_SAME, $9780, $A600, DOWN

MagCoinStoreOut:
    entrance DOOR, $1380, $8580, RIGHT, MUSIC_SAME, $A580, $A500, DOWN

MagRingStoreOut:
    entrance DOOR, $1B80, $8580, RIGHT, MUSIC_SAME, $A680, $A500, DOWN

MagPendantStoreOut:
    entrance DOOR, $380, $8D80, RIGHT, MUSIC_SAME, $A780, $A500, DOWN

MagCafeOut:
    entrance DOOR, $B80, $8D80, RIGHT, MUSIC_SAME, $A380, $A500, DOWN

MagHospitalOut:
    entrance DOOR, $1380, $8D80, RIGHT, MUSIC_SAME, $A280, $A500, DOWN

MagMusicalStoreOut:
    entrance DOOR, $1B80, $8D80, RIGHT, MUSIC_SAME, $A180, $A500, DOWN

Bird1:
    .import BirdAnim

    npc WALK_NPC2, $1C0, $8500, DOWN, BirdAnim

    hide FLAG0C|BIT3
    check_action TALK, Bird1Exit - Bird1
    call Bird1, BirdCall - Bird1
    check_char 7, Bird1Serve - Bird1
    print $3B7
    end_script
Bird1Serve:
    check_flag FLAG0D|BIT1, Bird1Destiny - Bird1
    print $3B6
    jump Bird1Name - Bird1
Bird1Destiny:
    print $3B8
Bird1Name:
    get_char_name 7
    clear_status 0
    heal $FF
    play MUSIC, $21
    wait 180
    play MUSIC, 9
    add_char 7, Bird1Exit - Bird1
    set_flag FLAG0C|BIT3
Bird1Exit:
    end_script
BirdCall:
    check_char 7, Flag1 - Bird1
    return
Flag1:
    clear_flag FLAG00|BIT7
    check_flag FLAG0C|BIT3, Flag2 - Bird1
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT6
Flag2:
    check_flag FLAG0C|BIT2, Flag3 - Bird1
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT5
Flag3:
    check_flag FLAG0C|BIT1, Flag4 - Bird1
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT4
Flag4:
    check_flag FLAG0C|BIT0, Flag5 - Bird1
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT3
Flag5:
    check_flag FLAG0D|BIT7, Flag6 - Bird1
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT2
Flag6:
    check_flag FLAG00|BIT7, BirdExit - Bird1
    clear_flag FLAG00|BIT7
    set_flag FLAG0D|BIT1
BirdExit:
    return

Bird2:
    npc WALK_NPC2, $180, $8540, DOWN, BirdAnim

    hide FLAG0C|BIT2
    check_action TALK, Bird2Exit - Bird2
    call Bird1, BirdCall - Bird1
    check_char 7, Bird2Serve - Bird2
    print $3B7
    end_script
Bird2Serve:
    check_flag FLAG0D|BIT1, Bird2Destiny - Bird2
    print $3B6
    jump Bird2Name - Bird2
Bird2Destiny:
    print $3B8
Bird2Name:
    get_char_name 7
    clear_status 0
    heal $FF
    play MUSIC, $21
    wait 180
    play MUSIC, 9
    add_char 7, Bird2Exit - Bird2
    set_flag FLAG0C|BIT2
Bird2Exit:
    end_script

Bird3:
    npc WALK_NPC2, $140, $8580, DOWN, BirdAnim

    hide FLAG0C|BIT1
    check_action TALK, Bird3Exit - Bird3
    call Bird1, BirdCall - Bird1
    check_char 7, Bird3Serve - Bird3
    print $3B7
    end_script
Bird3Serve:
    check_flag FLAG0D|BIT1, Bird3Destiny - Bird3
    print $3B6
    jump Bird3Name - Bird3
Bird3Destiny:
    print $3B8
Bird3Name:
    get_char_name 7
    clear_status 0
    heal $FF
    play MUSIC, $21
    wait 180
    play MUSIC, 9
    add_char 7, Bird3Exit - Bird3
    set_flag FLAG0C|BIT1
Bird3Exit:
    end_script

Bird4:
    npc WALK_NPC2, $200, $8540, DOWN, BirdAnim

    hide FLAG0C|BIT0
    check_action TALK, Bird4Exit - Bird4
    call Bird1, BirdCall - Bird1
    check_char 7, Bird4Serve - Bird4
    print $3B7
    end_script
Bird4Serve:
    check_flag FLAG0D|BIT1, Bird4Destiny - Bird4
    print $3B6
    jump Bird4Name - Bird4
Bird4Destiny:
    print $3B8
Bird4Name:
    get_char_name 7
    clear_status 0
    heal $FF
    play MUSIC, $21
    wait 180
    play MUSIC, 9
    add_char 7, Bird4Exit - Bird4
    set_flag FLAG0C|BIT0
Bird4Exit:
    end_script

Bird5:
    npc WALK_NPC2, $1C0, $8580, DOWN, BirdAnim

    hide FLAG0D|BIT7
    check_action TALK, Bird5Exit - Bird5
    call Bird1, BirdCall - Bird1
    check_char 7, Bird5Serve - Bird5
    print $3B7
    end_script
Bird5Serve:
    check_flag FLAG0D|BIT1, Bird5Destiny - Bird5
    print $3B6
    jump Bird5Name - Bird5
Bird5Destiny:
    print $3B8
Bird5Name:
    get_char_name 7
    clear_status 0
    heal $FF
    play MUSIC, $21
    wait 180
    play MUSIC, 9
    add_char 7, Bird5Exit - Bird5
    set_flag FLAG0D|BIT7
Bird5Exit:
    end_script

Guitarist:
    .import stru_158944

    npc WALK_NPC, $A40, $8580, DOWN, stru_158944

    check_action TALK, GuitaristExit - Guitarist
    check_level 25, Secret - Guitarist
    print $B2
    end_script
Secret:
    print $AE
GuitaristExit:
    end_script

MagCoinClerk:
    .import stru_1589D8

    entity $1240, $8500, UP, stru_1589D8

    check_action TALK, CoinExit - MagCoinClerk
    print $3E1
CoinRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, CoinList - MagCoinClerk
    clear_flag FLAG00|BIT7
CoinList:
    item_list MagicHerb, PeaceCoin, ProtectCoin, MagicCoin, CoinRefuse - MagCoinClerk
    check_flag FLAG00|BIT7, CoinBuy - MagCoinClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
CoinBuy:
    pay CoinLess - MagCoinClerk
    print $23A
    confirm CoinStop - MagCoinClerk
    print $309
    play SOUND2, $B
    cash
    add_item CoinExit - MagCoinClerk
    print $3E3
    confirm CoinDontNeed - MagCoinClerk
    jump CoinRepeat - MagCoinClerk
CoinDontNeed:
    print $309
    end_script
CoinStop:
    get CoinExit - MagCoinClerk
CoinRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
CoinLess:
    print $33A
CoinExit:
    end_script


MagRingClerk:
    .import stru_158A1C

    entity $1A40, $8500, UP, stru_158A1C

    check_action TALK, RingExit - MagRingClerk
    print $3E1
RingRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, RingList - MagRingClerk
    clear_flag FLAG00|BIT7
RingList:
    item_list MagicHerb, BrassRing, SilverRing, GoldRing, RingRefuse - MagRingClerk
    check_flag FLAG00|BIT7, RingBuy - MagRingClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
RingBuy:
    pay RingLess - MagRingClerk
    print $23A
    confirm RingStop - MagRingClerk
    print $309
    play SOUND2, $B
    cash
    add_item RingExit - MagRingClerk
    print $3E3
    confirm RingDontNeed - MagRingClerk
    jump RingRepeat - MagRingClerk
RingDontNeed:
    print $309
    end_script
RingStop:
    get RingExit - MagRingClerk
RingRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
RingLess:
    print $33A
RingExit:
    end_script


MagPendantClerk:
    .import stru_158A20

    entity $240, $8D00, UP, stru_158A20

    check_action TALK, PendantExit - MagPendantClerk
    print $3E1
PendantRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, PendantList - MagPendantClerk
    clear_flag FLAG00|BIT7
PendantList:
    item_list RepelRing, H2oPendant, FirePendant, EarthPendnt, PendantRefuse - MagPendantClerk
    check_flag FLAG00|BIT7, PendantBuy - MagPendantClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
PendantBuy:
    pay PendantLess - MagPendantClerk
    print $23A
    confirm PendantStop - MagPendantClerk
    print $309
    play SOUND2, $B
    cash
    add_item PendantExit - MagPendantClerk
    print $3E3
    confirm PendantDontNeed - MagPendantClerk
    jump PendantRepeat - MagPendantClerk
PendantDontNeed:
    print $309
    end_script
PendantStop:
    get PendantExit - MagPendantClerk
PendantRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
PendantLess:
    print $33A
PendantExit:
    end_script


MagCafeOwner:
    .import stru_1589D4

    entity $AC0, $8D00, DOWN, stru_1589D4

    check_action TALK, MagCafeOwnerExit - MagCafeOwner
    print $8A
    confirm Suspicious - MagCafeOwner
    print $8C
    confirm That - MagCafeOwner
    print $91
    sleep
    print $2A2
    end_script
That:
    print $90
    end_script
Suspicious:
    print $8B
MagCafeOwnerExit:
    end_script

MagNurse:
    .import stru_158A24

    entity $1280, $8D00, DOWN, stru_158A24

    check_action TALK, MagNurseExit - MagNurse
    print $21F
    sel_char 1, MagChar - MagNurse
    choose_char Treatment - MagNurse
    jump MagStatus - MagNurse
MagChar:
    sel_char 0, MagStatus - MagNurse
MagStatus:
    clear_status 0
MagHeal:
    heal $FF
    max_hp MagHeal - MagNurse
MagRecovery:
    rec_pp $FF
    max_pp MagRecovery - MagNurse
    play SOUND2, 7
    print $310
    end_script
Treatment:
    print $30E
MagNurseExit:
    end_script

MagMusicalClerk:
    entity $1A80, $8D00, DOWN, stru_158A24

    check_action TALK, MagMusicalClerkExit - MagMusicalClerk
    print $8F
MagMusicalClerkExit:
    end_script


MagicantRooms2:
    .word MagHome5Out, MagHome6Out, MagHome7Out, MagHome9Out, MagHome10Out, MagHotelOut, MagHome8Out
    .word MagHome4Out, MagHome3Out, MystKeeperHomeOut, MystMimickerHomeOut, MagHome1Out, MagHome2Out
    .word BBOwnerHomeOut, MagHome5NPC1, MagHome6NPC, MagHome7NPC, MagHome9NPC, MagHome10NPC, MagHotelOwner
    .word MagHome8NPC, MagHome4NPC, MagHome3NPC1, MagHome3NPC2, MystMimicker, HomeNPC1, HomeNPC2
    .word BigBagOwner, MagHome5NPC2, MystKeeper, 0

MagHome5Out:
    entrance DOOR, $380, $9580, RIGHT, MUSIC_SAME, $9F80, $A700, DOWN

MagHome6Out:
    entrance DOOR, $B80, $9580, RIGHT, MUSIC_SAME, $A080, $A700, DOWN

MagHome7Out:
    entrance DOOR, $1380, $9580, RIGHT, MUSIC_SAME, $A180, $A700, DOWN

MagHome9Out:
    entrance DOOR, $1B80, $9580, RIGHT, MUSIC_SAME, $A380, $A700, DOWN

MagHome10Out:
    entrance DOOR, $380, $9D80, RIGHT, MUSIC_SAME, $A480, $A700, DOWN

MagHotelOut:
    entrance DOOR, $B80, $9D80, RIGHT, MUSIC_SAME, $A580, $A700, DOWN

MagHome8Out:
    entrance DOOR, $1380, $9D80, RIGHT, MUSIC_SAME, $A380, $A900, DOWN

MagHome4Out:
    entrance DOOR, $1B80, $9D80, RIGHT, MUSIC_SAME, $9D80, $A900, DOWN

MagHome3Out:
    entrance DOOR, $780, $8580, RIGHT, MUSIC_SAME, $9C80, $AA00, DOWN

MystKeeperHomeOut:
    entrance DOOR, $F80, $8580, RIGHT, MUSIC_SAME, $9B80, $AB00, DOWN

MystMimickerHomeOut:
    entrance DOOR, $1780, $8580, RIGHT, MUSIC_SAME, $9A80, $AC00, DOWN

MagHome1Out:
    entrance DOOR, $1F80, $8580, RIGHT, MUSIC_SAME, $9C80, $AC00, DOWN

MagHome2Out:
    entrance DOOR, $780, $8D80, RIGHT, MUSIC_SAME, $9D80, $AC00, DOWN

BBOwnerHomeOut:
    entrance DOOR, $F80, $8D80, RIGHT, MUSIC_SAME, $9980, $AD00, DOWN

MagHome5NPC1:
    npc WALK_NPC, $240, $95C0, DOWN, stru_1587A4

    check_action TALK, MagHome5NPC1Exit - MagHome5NPC1
    print $99
MagHome5NPC1Exit:
    end_script

MagHome6NPC:
    .import stru_1588E0

    npc WALK_NPC, $A40, $9500, DOWN, stru_1588E0

    check_action TALK, MagHome6NPCExit - MagHome6NPC
    print $7B
    confirm MagHome6NPCMeet - MagHome6NPC
    print $7C
    end_script
MagHome6NPCMeet:
    print $7D
MagHome6NPCExit:
    end_script

MagHome7NPC:
    .import stru_158824

    npc WALK_NPC, $1200, $9500, DOWN, stru_158824

    check_action TALK, MagHome7NPCExit - MagHome7NPC
    check_flag FLAG09|BIT1, MagHome7Check - MagHome7NPC
    print $77
    end_script
MagHome7Check:
    check_flag FLAG09|BIT0, Bothered - MagHome7NPC
    print $74
    confirm TooBad - MagHome7NPC
    print $75
    set_flag FLAG09|BIT1
    end_script
TooBad:
    print $76
    end_script
Bothered:
    print $71
    confirm Trouble - MagHome7NPC
    print $72
    jump MagHome7Flag - MagHome7NPC
Trouble:
    print $73
MagHome7Flag:
    set_flag FLAG0A|BIT7
MagHome7NPCExit:
    end_script

MagHome9NPC:
    .import stru_1588A0

    npc WALK_NPC, $1A40, $9540, DOWN, stru_1588A0

    check_action TALK, MagHome9NPCExit - MagHome9NPC
    print $93
MagHome9NPCExit:
    end_script

MagHome10NPC:
    npc WALK_NPC, $200, $9DC0, DOWN, stru_1588E0

    check_action TALK, MagHome10NPCExit - MagHome10NPC
    print $78
    confirm NotMet - MagHome10NPC
    check_flag FLAG0A|BIT7, Lying - MagHome10NPC
    print $79
    set_flag FLAG09|BIT0
    end_script
Lying:
    print $22E
    end_script
NotMet:
    print $7A
MagHome10NPCExit:
    end_script

MagHotelOwner:
    npc WALK_NPC, $9C0, $9D80, DOWN, stru_1587A4

    check_action TALK, MagHotelOwnerExit - MagHotelOwner
    check_flag FLAG0C|BIT7, Spoon - MagHotelOwner
    print $297
    confirm UseBed - MagHotelOwner
    sleep
    print $274
    end_script
UseBed:
    print $92
    end_script
Spoon:
    print $84
    confirm WithoutEffort - MagHotelOwner
    print $85
    confirm Kindness - MagHotelOwner
    print $88
    sleep
    print $275
    set_flag FLAG0C|BIT7
    end_script
Kindness:
    print $89
    end_script
WithoutEffort:
    print $86
MagHotelOwnerExit:
    end_script

MagHome8NPC:
    npc WALK_NPC, $12C0, $9DC0, DOWN, stru_1588E0

    check_action TALK, MagHome8NPCExit - MagHome8NPC
    check_flag FLAG0A|BIT6, Hope - MagHome8NPC
    print $98
    end_script
Hope:
    print $94
    confirm GoAhead - MagHome8NPC
    print $96
    jump GiveOcarina - MagHome8NPC
GoAhead:
    print $97
GiveOcarina:
    find_item EMPTY, MagHome8NPCShame - MagHome8NPC
    play SOUND2, 6
    select_item Ocarina
    add_item MagHome8NPCExit - MagHome8NPC
    set_flag FLAG0A|BIT6
    end_script
MagHome8NPCShame:
    print $24A
MagHome8NPCExit:
    end_script

MagHome4NPC:
    npc WALK_NPC, $1A00, $9D40, DOWN, stru_158824

    check_action TALK, MagHome4NPCExit - MagHome4NPC
    print $81
MagHome4NPCExit:
    end_script

MagHome3NPC1:
    npc WALK_NPC, $640, $8580, DOWN, stru_1588E0

    check_action TALK, MagHome3NPC1Exit - MagHome3NPC1
    print $6F
MagHome3NPC1Exit:
    end_script

MagHome3NPC2:
    npc WALK_NPC, $580, $8540, RIGHT, stru_1588C0

    check_action TALK, MagHome3NPC2Exit - MagHome3NPC2
    print $9B
MagHome3NPC2Exit:
    end_script

MystMimicker:
    npc NPC_1, $16C0, $8500, DOWN, stru_158824

    check_action TALK, MystMimickerExit - MystMimicker
    print $9D
    transfer NextLevel - MystMimicker
    print $15
NextLevel:
    print $C
    sel_char 0, SaveOffer - MystMimicker
    if_char 7, MystExp1 - MystMimicker
    jump MystChar1 - MystMimicker
MystExp1:
    need_exp
    print $345
MystChar1:
    sel_char 1, SaveOffer - MystMimicker
    if_char 7, MystExp2 - MystMimicker
    jump MystChar2 - MystMimicker
MystExp2:
    need_exp
    print $345
MystChar2:
    sel_char 2, SaveOffer - MystMimicker
    if_char 7, MystExp3 - MystMimicker
    jump $37
MystExp3:
    need_exp
    print $345
    sel_char 3, SaveOffer - MystMimicker
    if_char 7, MystExp4 - MystMimicker
    jump SaveOffer - MystMimicker
MystExp4:
    need_exp
    print $345
SaveOffer:
    print $1E
    confirm_menu $337, MystGoodLuck - MystMimicker, MystGoodLuck - MystMimicker
    save
    print $1B
    confirm_menu $338, MystSeeYouLater - MystMimicker, MystRest - MystMimicker
MystRest:
    print $1D
    print $13
    end_script
MystSeeYouLater:
    print $1C
    print $13
    reboot
MystGoodLuck:
    print $21
    print $13
    end_script
MystMimickerExit:
    end_script

HomeNPC1:
    npc WALK_NPC, $1DC0, $8540, DOWN, stru_158804

    check_action TALK, HomeNPC1Exit - HomeNPC1
    print $80
HomeNPC1Exit:
    end_script

HomeNPC2:
    npc WALK_NPC, $5C0, $8D80, RIGHT, stru_1588C0

    check_action TALK, HomeNPC2Exit - HomeNPC2
    print $A1
    set_flag FLAG0A|BIT4
HomeNPC2Exit:
    end_script

BigBagOwner:
    npc WALK_NPC, $E80, $8D80, DOWN, stru_1588E0

    check_action TALK, BigBagOwnerExit - BigBagOwner
    check_flag FLAG0A|BIT3, GetGift - BigBagOwner
    print $DF
    end_script
GetGift:
    check_flag FLAG0A|BIT2, ReturnCard - BigBagOwner
    print $267
GetBigBag:
    find_item EMPTY, LoadHeavy - BigBagOwner
    play SOUND2, 6
    select_item BigBag
    add_item BigBagOwnerExit - BigBagOwner
    set_flag FLAG0A|BIT3
    end_script
LoadHeavy:
    print $266
    end_script
ReturnCard:
    check_flag FLAG0A|BIT1, GiveBigBag - BigBagOwner
    print $A7
    find_item EMPTY, TooMore - BigBagOwner
    play SOUND2, 6
    select_item CashCard
    add_item BigBagOwnerExit - BigBagOwner
    set_flag FLAG0A|BIT2
    print $268
    jump GetBigBag - BigBagOwner
TooMore:
    print $EB
    end_script
GiveBigBag:
    print $A2
    confirm HoldHerb - BigBagOwner
    print $A3
    confirm DontTrust - BigBagOwner
    find_item CashCard, SaidYes - BigBagOwner
    print $A5
    select_item CashCard
    remove_item BigBagOwnerExit - BigBagOwner
    set_flag FLAG0A|BIT1
    end_script
SaidYes:
    print $3D9
    end_script
DontTrust:
    print $A6
    end_script
HoldHerb:
    print $A4
    end_script
BigBagOwnerExit:
    end_script

MagHome5NPC2:
    npc WALK_NPC, $1C0, $9580, DOWN, stru_158824

    check_action TALK, MagHome5NPC2Exit - MagHome5NPC2
    print $9A
MagHome5NPC2Exit:
    end_script

MystKeeper:
    npc NPC_1, $E40, $8540, DOWN, stru_158804

    check_action TALK, MystKeeperExit - MystKeeper
    print $9C
    confirm HeavyBags - MystKeeper
    confirm_menu $322, MystCheck - MystKeeper, BeCareful - MystKeeper
MystInventory:
    check_inventory HaveNothing - MystKeeper
    choose BeCareful - MystKeeper
    buying_item Crumbs, MystAdd - MystKeeper
    jump NoICant - MystKeeper
MystAdd:
    add_storage ClosetFull - MystKeeper
    play SOUND2, 6
    remove_item MystKeeperExit - MystKeeper
    print $3C7
    confirm BeCareful - MystKeeper
    jump MystInventory - MystKeeper
MystCheck:
    check_storage LeftAnything - MystKeeper
    select_storage BeCareful - MystKeeper
    get_char_name 1
    sel_char 1, MystAddItem - MystKeeper
MystChoose:
    choose_char BeCareful - MystKeeper
MystAddItem:
    add_item MystSel - MystKeeper
    play SOUND2, 6
    remove_storage MystKeeperExit - MystKeeper
    print $3DC
    confirm BeCareful - MystKeeper
    jump MystCheck - MystKeeper
MystSel:
    sel_char 1, MystCantCarry - MystKeeper
    print $3DD
    confirm BeCareful - MystKeeper
    jump MystChoose - MystKeeper
MystCantCarry:
    print $249
    end_script
ClosetFull:
    print $3DE
    end_script
NoICant:
    print $36A
    end_script
BeCareful:
    print $240
    end_script
HaveNothing:
    print $323
    end_script
LeftAnything:
    print $324
    end_script
HeavyBags:
    print $20D
MystKeeperExit:
    end_script


Palace:
    .word PalaceOut, PalaceHall4In, PalaceHall4Out, PalaceRoom4In, PalaceRoom4Out, PalaceHall1In, PalaceHall1Out
    .word PalaceThroneRoomIn, PalaceThroneRoomOut, PalaceHall2In, PalaceHall2Out, PalaceRoom3In, PalaceRoom3Out
    .word PalaceHall3In, PalaceHall3Out, PalaceRoom1In, PalaceRoom1Out, PalaceRoom2In, PalaceRoom2Out, Princess
    .word PalaceRuins, PalaceGuard1, PrincessGuard1, PalaceGuard2, PrincessGuard2, PalaceRoom2Box1
    .word PalaceRoom2Box2, PalaceRoom2Box3, PalaceRoom2Box4, PalaceRoom3Box1, PalaceRoom3Box2, PalaceRoom3Box3
    .word PalaceRoom1Box1, PalaceRoom1Box2, PalaceRoom1Box3, PalaceRoom1Box4, PalaceRoom1Box5, PalaceRoom1Box6, 0

PalaceOut:
    entrance DOOR, $940, $8940, RIGHT, MUSIC_9, $AD00, $9AC0, DOWN

PalaceHall4In:
    entrance DOOR, $540, $88C0, UP, MUSIC_SAME, $1F00, $9140, LEFT

PalaceHall4Out:
    entrance DOOR, $1F40, $9140, RIGHT, MUSIC_SAME, $540, $8900, DOWN

PalaceRoom4In:
    entrance DOOR, $1DC0, $90C0, UP, MUSIC_SAME, $1700, $9140, LEFT

PalaceRoom4Out:
    entrance DOOR, $1740, $9140, RIGHT, MUSIC_SAME, $1DC0, $9100, DOWN

PalaceHall1In:
    entrance DOOR, $240, $88C0, UP, MUSIC_SAME, $500, $9140, LEFT

PalaceHall1Out:
    entrance DOOR, $540, $9140, RIGHT, MUSIC_SAME, $240, $8900, DOWN

PalaceThroneRoomIn:
    entrance DOOR, $340, $90C0, UP, MUSIC_SAME, $1500, $8940, LEFT

PalaceThroneRoomOut:
    entrance DOOR, $1540, $8940, RIGHT, MUSIC_SAME, $340, $9100, DOWN

PalaceHall2In:
    entrance DOOR, $240, $90C0, UP, MUSIC_SAME, $1F00, $8940, LEFT

PalaceHall2Out:
    entrance DOOR, $1F40, $8940, RIGHT, MUSIC_SAME, $240, $9100, DOWN

PalaceRoom3In:
    entrance DOOR, $1D40, $88C0, UP, MUSIC_SAME, $1300, $9940, LEFT

PalaceRoom3Out:
    entrance DOOR, $1340, $9940, RIGHT, MUSIC_SAME, $1D40, $8900, DOWN

PalaceHall3In:
    entrance DOOR, $1C40, $88C0, UP, MUSIC_SAME, $300, $9940, LEFT

PalaceHall3Out:
    entrance DOOR, $340, $9940, RIGHT, MUSIC_SAME, $1C40, $8900, DOWN

PalaceRoom1In:
    entrance DOOR, $1B40, $88C0, UP, MUSIC_SAME, $F00, $9140, LEFT

PalaceRoom1Out:
    entrance DOOR, $F40, $9140, RIGHT, MUSIC_SAME, $1B40, $8900, DOWN

PalaceRoom2In:
    entrance DOOR, $1C0, $98C0, UP, MUSIC_SAME, $B00, $9940, LEFT

PalaceRoom2Out:
    entrance DOOR, $B40, $9940, RIGHT, MUSIC_SAME, $1C0, $9900, DOWN

Princess:
    .import stru_158920

    npc NPC_1, $E80, $8940, RIGHT, stru_158920

    check_action TALK, PrincessExit - Princess
    melodies LearnMelody - Princess
    print $CB
    get_char_name 1
    clear_status 0
Recovery1:
    rec_pp $FF
    max_pp Recovery1 - Princess
    sel_char 1, Music - Princess
    clear_status 0
Recovery2:
    rec_pp $FF
    max_pp Recovery2 - Princess
    sel_char 2, Music - Princess
    clear_status 0
Recovery3:
    rec_pp $FF
    max_pp Recovery3 - Princess
Music:
    play MUSIC, 1
    wait 250
    wait 250
    wait 250
    wait 250
    wait 250
    wait 190
    wait 90
    print $CC
    wait 90
    play MUSIC, $19
    wait 250
    wait 250
    wait 250
    wait 250
    wait 250
    wait 190
    wait 90
    print $CD
    blackout
    print $3D3
    blackout
    print $3D4
    blackout
    print $3D5
    blackout
    move byte_129A59
    teleport $FDC0, $7E06
    function 6
    end_script
LearnMelody:
    print $C4
PrincessExit:
    end_script
byte_129A59:
    .byte $56, 5, $16, 5, 3

PalaceRuins:
    .import stru_1589A4

    npc NPC_1, $FD80, $7E00, UP, stru_1589A4

    approach PalaceRuinsExit - PalaceRuins
    remove_char 7, PalaceRuinsMove - PalaceRuins
PalaceRuinsMove:
    move byte_129A83
    wait 80
    print $3DF
    play MUSIC, 9
    wait 150
    set_flag FLAG1C|BIT7
    teleport $E24B, $94C0
    function 6
    save_coor
    map_val $1B, $7B
PalaceRuinsExit:
    end_script
byte_129A83:
    .byte $F0, 1, $F2, 1, $F0, 1, $F2, 1, $F4, 1, $F2, 1
    .byte $F4, 1, $F6, 1, $F4, 1, $F6, 1, $50, 1, 0

PalaceGuard1:
    .import stru_158964

    npc WALK_NPC, $1D40, $9140, RIGHT, stru_158964

    check_action TALK, PalaceGuard1Exit - PalaceGuard1
    print $BD
PalaceGuard1Exit:
    end_script

PrincessGuard1:
    .import stru_1589FC

    npc NPC_1, $E40, $89C0, RIGHT, stru_1589FC

    check_action TALK, PrincessGuard1Exit - PrincessGuard1
    find_item OnyxHook, WarpBack - PrincessGuard1
    print $C3
    end_script
WarpBack:
    print $C2
    print $C3
PrincessGuard1Exit:
    end_script

PalaceGuard2:
    npc WALK_NPC, $1E00, $9180, RIGHT, stru_158964

    check_action TALK, PalaceGuard2Exit - PalaceGuard2
    print $AD
PalaceGuard2Exit:
    end_script

PrincessGuard2:
    npc NPC_1, $1440, $8900, DOWN, stru_1589FC

    check_action TALK, PrincessGuard2Exit - PrincessGuard2
    print $A8
PrincessGuard2Exit:
    end_script

PalaceRoom2Box1:
    box $980, $9900, UP, BoxAnim, Bullhorn, $27

PalaceRoom2Box2:
    box $900, $9980, UP, BoxAnim, Antidote, $28

PalaceRoom2Box3:
    box $A00, $9900, UP, BoxAnim, MagicHerb, $29

PalaceRoom2Box4:
    box $A00, $9980, UP, BoxAnim, EMPTY, $2A

PalaceRoom3Box1:
    box $1140, $9900, UP, BoxAnim, Flashdark, $2B

PalaceRoom3Box2:
    box $11C0, $9900, UP, BoxAnim, Antidote, $2C

PalaceRoom3Box3:
    box $1240, $9900, UP, BoxAnim, MagicHerb, $2D

PalaceRoom1Box1:
    box $D80, $9100, UP, BoxAnim, Boomerang, $49

PalaceRoom1Box2:
    box $DC0, $9100, UP, BoxAnim, PSIStone, $49

PalaceRoom1Box3:
    box $E00, $9100, UP, BoxAnim, FightCapsul, $49

PalaceRoom1Box4:
    box $D80, $91C0, UP, BoxAnim, Rope, $49

PalaceRoom1Box5:
    box $DC0, $91C0, UP, BoxAnim, Ruler, $49

PalaceRoom1Box6:
    box $E00, $91C0, UP, BoxAnim, BerryTofu, $49

MagicantCave:
    .word MazeOut, MagWellOut, MagCave1In, MagCave1Out, MagCave2In, MagCave2Out, MagCave3In
    .word MagCave3Out, MagCave4In, MagCave4Out, MagCave5In, MagCave5Out, MagCave6In, MagCave6Out
    .word MagCave7In, MagCave7Out, MagCave8In, MagCave8Out, MagCave9In, MagCave9Out, MagCave10In
    .word MagCave10Out, MagCave11In, MagCave11Out, MagMazeIn, MagMazeOut, MagDeepCaveIn
    .word MagDeepCaveOut, ForgottenMan, DragonTail, SleepDragon, MazeBox1, MazeBox2, MazeBox3
    .word MazeBox4, MazeBox5, 0

MazeOut:
    change_location $8540, $69C0, UP

    check_view MazeOutExit - MazeOut
    approach MazeOutExit - MazeOut
    clear_flag FLAG00|BIT7
    check_flag FLAG0D|BIT6, CheckBird1 - MazeOut
    jump CheckGrave3 - MazeOut
CheckBird1:
    check_flag FLAG0C|BIT3, CheckGrave3 - MazeOut
    remove_char 7, SetGrave2 - MazeOut
    clear_flag FLAG0C|BIT3
    jump CheckGrave3 - MazeOut
SetGrave2:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT6
CheckGrave3:
    check_flag FLAG0D|BIT5, CheckBird2 - MazeOut
    jump CheckGrave4 - MazeOut
CheckBird2:
    check_flag FLAG0C|BIT2, CheckGrave4 - MazeOut
    remove_char 7, SetGrave3 - MazeOut
    clear_flag FLAG0C|BIT2
    jump CheckGrave4 - MazeOut
SetGrave3:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT5
CheckGrave4:
    check_flag FLAG0D|BIT4, CheckBird3 - MazeOut
    jump CheckGrave5 - MazeOut
CheckBird3:
    check_flag FLAG0C|BIT1, CheckGrave5 - MazeOut
    remove_char 7, SetGrave4 - MazeOut
    clear_flag FLAG0C|BIT1
    jump CheckGrave5 - MazeOut
SetGrave4:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT4
CheckGrave5:
    check_flag FLAG0D|BIT3, CheckBird4 - MazeOut
    jump CheckGrave1 - MazeOut
CheckBird4:
    check_flag FLAG0C|BIT0, CheckGrave1 - MazeOut
    remove_char 7, SetGrave5 - MazeOut
    clear_flag FLAG0C|BIT0
    jump CheckGrave1 - MazeOut
SetGrave5:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT3
CheckGrave1:
    check_flag FLAG0D|BIT2, CheckBird5 - MazeOut
    jump MazeCheckFlag - MazeOut
CheckBird5:
    check_flag FLAG0D|BIT7, MazeCheckFlag - MazeOut
    remove_char 7, SetGrave1 - MazeOut
    clear_flag FLAG0D|BIT7
    jump MazeCheckFlag - MazeOut
SetGrave1:
    set_flag FLAG00|BIT7
    set_flag FLAG0D|BIT2
MazeCheckFlag:
    check_flag FLAG00|BIT7, MazeSetFlag - MazeOut
    clear_flag FLAG00|BIT7
    set_flag FLAG0D|BIT1
MazeSetFlag:
    set_flag FLAG0E|BIT0
    check_flag FLAG10|BIT0, MazeTeleport - MazeOut
    teleport $FBB1, $80C4
    save_coor
    end_script
MazeTeleport:
    teleport $FDB1, $74C4
    save_coor
MazeOutExit:
    end_script

MagWellOut:
    entrance DOOR, $7240, $8E80, UP, MUSIC_9, $B240, $A5C0, DOWN

MagCave1In:
    entrance HOLE, $7140, $8F80, UP, MUSIC_SAME, $7C40, $8F00, DOWN

MagCave1Out:
    entrance DOOR, $7C40, $8E80, UP, MUSIC_SAME, $7140, $8F80, DOWN

MagCave2In:
    entrance HOLE, $7340, $8F80, UP, MUSIC_SAME, $8640, $8F00, DOWN

MagCave2Out:
    entrance DOOR, $8640, $8E80, UP, MUSIC_SAME, $7340, $8F80, DOWN

MagCave3In:
    entrance HOLE, $7B40, $8F80, UP, MUSIC_SAME, $7240, $9600, DOWN

MagCave3Out:
    entrance DOOR, $7240, $9580, UP, MUSIC_SAME, $7B40, $8F80, DOWN

MagCave4In:
    entrance HOLE, $7D40, $8F80, UP, MUSIC_SAME, $7C40, $9600, DOWN

MagCave4Out:
    entrance DOOR, $7C40, $9580, UP, MUSIC_SAME, $7D40, $8F80, DOWN

MagCave5In:
    entrance HOLE, $8540, $8F80, UP, MUSIC_SAME, $8640, $9600, DOWN

MagCave5Out:
    entrance DOOR, $8640, $9580, UP, MUSIC_SAME, $8540, $8F80, DOWN

MagCave6In:
    entrance HOLE, $8740, $8F80, UP, MUSIC_SAME, $7240, $9D00, DOWN

MagCave6Out:
    entrance DOOR, $7240, $9C80, UP, MUSIC_SAME, $8740, $8F80, DOWN

MagCave7In:
    entrance HOLE, $8540, $9680, UP, MUSIC_SAME, $7C40, $9D00, DOWN

MagCave7Out:
    entrance DOOR, $7C40, $9C80, UP, MUSIC_SAME, $8540, $9680, DOWN

MagCave8In:
    entrance HOLE, $8740, $9680, UP, MUSIC_SAME, $8640, $9D00, DOWN

MagCave8Out:
    entrance DOOR, $8640, $9C80, UP, MUSIC_SAME, $8740, $9680, DOWN

MagCave9In:
    entrance HOLE, $7140, $9D80, UP, MUSIC_SAME, $7240, $A400, DOWN

MagCave9Out:
    entrance DOOR, $7240, $A380, UP, MUSIC_SAME, $7140, $9D80, DOWN

MagCave10In:
    entrance HOLE, $7340, $9D80, UP, MUSIC_SAME, $7C40, $A400, DOWN

MagCave10Out:
    entrance DOOR, $7C40, $A380, UP, MUSIC_SAME, $7340, $9D80, DOWN

MagCave11In:
    entrance HOLE, $7B40, $9D80, UP, MUSIC_SAME, $8640, $A400, DOWN

MagCave11Out:
    entrance DOOR, $8640, $A380, UP, MUSIC_SAME, $7B40, $9D80, DOWN

MagMazeIn:
    entrance HOLE, $7D40, $9D80, UP, MUSIC_SAME, $8240, $6A00, DOWN

MagMazeOut:
    entrance DOOR, $8240, $6980, UP, MUSIC_SAME, $7D40, $9D80, DOWN

MagDeepCaveIn:
    change_location $8B40, $6F40, UP

    approach MagDeepCaveInExit - MagDeepCaveIn
    check_flag FLAG0E|BIT2, CaveFight - MagDeepCaveIn
    teleport $7F40, $8604
    end_script
CaveFight:
    enemies $2F
    set_flag FLAG0E|BIT2
    teleport $7F40, $8604
    move byte_129CED
MagDeepCaveInExit:
    end_script
byte_129CED:
    .byte $50, 1, 0

MagDeepCaveOut:
    entrance DOOR, $7F40, $8580, UP, MUSIC_SAME, $8B40, $6F40, DOWN

ForgottenMan:
    .import stru_158940

    unknown_1D $8540, $69C0, DOWN, stru_158940

    hide FLAG05|BIT6
    check_action TALK, ForgottenManExit - ForgottenMan
    inc_count 2
    cmp_count 2, 5, LuckyUnlucky - ForgottenMan
    reset_count 2
    inc_count 2
    print $E7
    confirm LeaveMeAlone - ForgottenMan
    print $E8
    end_script
LeaveMeAlone:
    print $E9
    confirm IgnoreMe - ForgottenMan
    print $EA
    set_flag FLAG05|BIT6
    end_script
LuckyUnlucky:
    cmp_count 2, 4, Monologue - ForgottenMan
    print $E6
    end_script
Monologue:
    cmp_count 2, 3, ManNotExist - ForgottenMan
    print $E5
    end_script
ManNotExist:
    cmp_count 2, 2, IgnoreMe - ForgottenMan
    print $E4
    end_script
IgnoreMe:
    print $E3
ForgottenManExit:
    end_script

DragonTail:
    .import DragonTailAnim

    entity $8440, $7100, UP, DragonTailAnim

    check_action TALK, DragonTailCheck - DragonTail
    check_flag FLAG10|BIT6, Asleep - DragonTail
    check_flag TUNES|BIT5, DragonTailSong - DragonTail
    jump Asleep - DragonTail
DragonTailSong:
    print $360
    play MUSIC, $29
    wait 240
    play MUSIC, $11
    set_flag TUNES|BIT5
    print $340
    end_script
Asleep:
    print $CA
    end_script
DragonTailCheck:
    check_action CHECK, DragonTailExit - DragonTail
    check_flag FLAG10|BIT6, DragonTailLvl - DragonTail
    check_flag TUNES|BIT5, DragonTailSong - DragonTail
    print $232
    end_script
DragonTailLvl:
    get_char_name 1
    check_level 25, DragonTailSleep - DragonTail
    print $197
    enemies $2E
    set_flag FLAG10|BIT6
    end_script
DragonTailSleep:
    print $196
DragonTailExit:
    end_script

SleepDragon:
    .import DragonAnim

    entity $8480, $7100, UP, DragonAnim

    check_action TALK, DragonCheck - SleepDragon
    check_flag FLAG10|BIT6, DragonAsleep - SleepDragon
    check_flag TUNES|BIT5, DragonSong - SleepDragon
    jump DragonAsleep - SleepDragon
DragonSong:
    print $360
    play MUSIC, $29
    wait 240
    play MUSIC, $11
    set_flag TUNES|BIT5
    print $340
    end_script
DragonAsleep:
    print $CA
    end_script
DragonCheck:
    check_action CHECK, SleepDragonExit - SleepDragon
    check_flag FLAG10|BIT6, DragonLvl - SleepDragon
    check_flag TUNES|BIT5, DragonSong - SleepDragon
    print $232
    end_script
DragonLvl:
    get_char_name 1
    check_level 25, DragonSleeps - SleepDragon
    print $197
    enemies $2E
    set_flag FLAG10|BIT6
    end_script
DragonSleeps:
    print $196
SleepDragonExit:
    end_script

MazeBox1:
    box $8680, $6C80, UP, BoxAnim, MagicHerb, $2E

MazeBox2:
    box $8980, $6D00, UP, BoxAnim, Sword, $2F

MazeBox3:
    box $8540, $7300, UP, BoxAnim, PSIStone, $30

MazeBox4:
    box $7140, $A4C0, UP, BoxAnim, MagicHerb, $31

MazeBox5:
    box $7F40, $8680, UP, BoxAnim, OnyxHook, $34

off_129DE4:
    .word 0, byte_129DFE, byte_129E21, byte_129E44, byte_129E7D
    .word byte_129EC2, byte_129F07, byte_129EA0, byte_129EA7
    .word byte_129EE5, byte_129EEC, byte_129F40, byte_129F5B

byte_129DFE:
    .byte $15, $E, $14, 1, $13, $71, $12, $10, 1, $80, 2, $82
    .byte $FE, $12, $C8, $12, $94, 1, 0, $6C, $45, $B9, $15
    .byte $28, $14, 1, $13, $31, $12, $4D, 0, $F, $9B, $46
    .byte $F2

byte_129E21:
    .byte $15, $E, $14, 1, $13, $71, $12, $10, 1, $80, 2, $82
    .byte $FE, $12, $C8, $12, $94, 1, 0, $6C, $45, $B9, $15
    .byte $28, $14, 1, $13, $31, $12, $F5, 0, $F, $A7, $46
    .byte $FA

byte_129E44:
    .byte $15, $E, $14, 1, $13, $71, $12, $10, 1, $80, 2, $82
    .byte $FE, $12, $C8, $12, $94, 1, 0, $6C, $45, $B9, $15
    .byte $28, $14, 1, $13, $31, $12, $B4, $12, $64, 1, $80
    .byte 2, $82, $82, $12, $6C, 1, 0, $D0, $45, $F2, $15
    .byte 8, $14, 1, $13, $D, $12, $16, 0, $A, $B7, $46, $F2

byte_129E7D:
    .byte $16, $4C, $17, $31, $10, 1, $11, $2A, 1, $40, $59
    .byte $86, $FE, $16, $C8, $16, $94, 1, 0, $6C, $C6, $73
    .byte $16, $F, $17, $71, $10, 1, $11, $F, 0, $F, $A7, $46
    .byte $F2

byte_129EA0:
    npc STAT_NPC, $A800, $F00, UP, $46A7
    .byte $FA

byte_129EA7:
    .import stru_158200

    npc STAT_NPC, $CB00, $8001, UP, stru_158200+2
    .byte $82, $12, $6C, 1, 0, $D0
    .byte $45, $F2, $15, 8, $14, 1, $13, $D, $12, $16, 0, $A
    .byte $B7, $46, $F2

byte_129EC2:
    .byte $16, $F4, $17, $31, $10, 1, $11, $2A, 1, $40, $59
    .byte $86, $FE, $16, $C8, $16, $94, 1, 0, $6C, $C6, $73
    .byte $16, $F, $17, $71, $10, 1, $11, $F, 0, $F, $A7, $46
    .byte $F2

byte_129EE5:
    .byte $16, $A8, 0, $F, $9B, $46, $F2

byte_129EEC:
    npc STAT_NPC, $2300, $8001, UP, stru_158200+2
    .byte $82, $12, $6C, 1, 0, $D0
    .byte $45, $F2, $15, 8, $14, 1, $13, $D, $12, $16, 0, $A
    .byte $B7, $46, $F2

byte_129F07:
    .byte $16, $16, $17, $D, $10, 1, $11, $A, 1, $40, $1D
    .byte $86, $82, $16, $6C, 1, 0, $B4, $C6, $CF, $16, $B3
    .byte $16, $64, $17, $31, $10, 1, $11, $2A, 1, $40, $59
    .byte $86, $FE, $16, $C8, $16, $94, 1, 0, $6C, $C6, $73
    .byte $16, $F, $17, $71, $10, 1, $11, $F, 0, $F, $A7, $46
    .byte $F2

byte_129F40:
    .byte $16, $16, $17, $D, $10, 1, $11, $A, 1, $40, $1D
    .byte $86, $82, $16, $6C, 1, 0, $B4, $C6, $CF, $16, $CB
    .byte 0, $F, $9B, $46, $F2

byte_129F5B:
    .byte $16, $16, $17, $D, $10, 1, $11, $A, 1, $40, $1D
    .byte $86, $82, $16, $6C, 1, 0, $B4, $C6, $CF, $16, $24
    .byte 0, $F, $A7, $46, $FA
