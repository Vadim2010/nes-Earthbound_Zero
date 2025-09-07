.include "objects.inc"

; BANK $11
.segment "BANK_1"
; 0x11 records
off_118000:
    .word off_118022, off_118208, GhostHouse1, GhostHouse2, GhostHouse3
    .word Stores1, Stores2, off_118DC5, Malls, off_119285
    .word off_119385, off_1194D5, off_11964A, Twinkle1, off_11990B
    .word ZooOffice, off_119C96

off_118022:
    .word TwinkleOut, TwinkleRoom1In, TwinkleRoom2In, TwinkleRoom3In, TwinkleRoom4In
    .word TwinkleRoom5In, TwinkleRoom6In, TwinkleUp1, TwinkleDown1, TwinkleRoom7In, TwinkleRoom8In
    .word TwinkleRoom9In, TwinkleRoom10In, TwinkleRoom11In, TwinkleRoom12In, TwinkleUp2
    .word MerHotelDown1, MerHotelRoom1In, MerHotelRoom2In, MerHotelUp2, TwinkleNPC1, TwinkleNPC2
    .word TwinkleNPC3, TwinkleNPC4, Janitor1, Janitor2, Lloyd1, Lloyd2, 0

TwinkleOut:
    entrance DOOR, $C140, $ED00, UP, MUSIC_6, $5A40, $7980, DOWN

TwinkleRoom1In:
    entrance DOOR, $BD80, $EDC0, UP, MUSIC_SAME, $9B40, $F580, LEFT

TwinkleRoom2In:
    entrance DOOR, $BE80, $EDC0, UP, MUSIC_SAME, $B340, $F580, LEFT

TwinkleRoom3In:
    entrance DOOR, $BF40, $EDC0, UP, MUSIC_SAME, $B340, $FD80, LEFT

TwinkleRoom4In:
    entrance DOOR, $C380, $EDC0, UP, MUSIC_SAME, $AB40, $F580, LEFT

TwinkleRoom5In:
    entrance DOOR, $C480, $EDC0, UP, MUSIC_SAME, $A340, $FD80, LEFT

TwinkleRoom6In:
    unknown_18 $C540, $EDC0, UP

    check_view TwinkleRoom6InExit - TwinkleRoom6In
    approach CheckKey1 - TwinkleRoom6In
    check_flag FLAG0B|BIT4, Busy - TwinkleRoom6In
    teleport $C740, $F186
    end_script
Busy:
    print $34B
    end_script
CheckKey1:
    use_item BasementKey, CheckKey2 - TwinkleRoom6In
    jump WrongKey - TwinkleRoom6In
CheckKey2:
    use_item ZooKey, CheckKey3 - TwinkleRoom6In
    jump WrongKey - TwinkleRoom6In
CheckKey3:
    use_item GhostKey, TwinkleRoom6InExit - TwinkleRoom6In
WrongKey:
    print $335
TwinkleRoom6InExit:
    end_script

TwinkleUp1:
    entrance STAIRS, $BC80, $EE40, LEFT, MUSIC_SAME, $BE80, $F580, RIGHT

TwinkleDown1:
    entrance STAIRS, $BE40, $F580, LEFT, MUSIC_SAME, $BCC0, $EE40, RIGHT

TwinkleRoom7In:
    entrance DOOR, $BF80, $F4C0, UP, MUSIC_SAME, $B340, $ED80, LEFT

TwinkleRoom8In:
    entrance DOOR, $C080, $F4C0, UP, MUSIC_SAME, $BB40, $F580, LEFT

TwinkleRoom9In:
    entrance DOOR, $C180, $F4C0, UP, MUSIC_SAME, $BB40, $FD80, LEFT

TwinkleRoom10In:
    entrance DOOR, $C280, $F4C0, UP, MUSIC_SAME, $DF40, $2580, LEFT

TwinkleRoom11In:
    entrance DOOR, $C380, $F4C0, UP, MUSIC_SAME, $9B40, $ED80, LEFT

TwinkleRoom12In:
    entrance DOOR, $C440, $F4C0, UP, MUSIC_SAME, $F40, $5580, LEFT

TwinkleUp2:
    unknown_18 $C540, $F540, RIGHT

    check_view TwinkleUp2Exit - TwinkleUp2
    approach CheckKeys1 - TwinkleUp2
    check_flag FLAG07|BIT3, Padlock - TwinkleUp2
    teleport $1AC0, $5C04
    end_script
Padlock:
    print $363
    set_flag FLAG0B|BIT4
    end_script
CheckKeys1:
    use_item BasementKey, CheckKeys2 - TwinkleUp2
    jump Wrong - TwinkleUp2
CheckKeys2:
    use_item ZooKey, CheckKeys3 - TwinkleUp2
    jump Wrong - TwinkleUp2
CheckKeys3:
    use_item GhostKey, TwinkleUp2Exit - TwinkleUp2
Wrong:
    print $335
TwinkleUp2Exit:
    end_script

MerHotelDown1:
    entrance STAIRS, $C040, $FD80, LEFT, MUSIC_SAME, $B4C0, $F540, RIGHT

MerHotelRoom1In:
    entrance DOOR, $C180, $FCC0, UP, MUSIC_SAME, $BB40, $2180, LEFT

MerHotelRoom2In:
    entrance DOOR, $C240, $FCC0, UP, MUSIC_SAME, $DB40, $2180, LEFT

MerHotelUp2:
    entrance STAIRS, $C080, $FD40, LEFT, MUSIC_SAME, $9C80, $F180, RIGHT

TwinkleNPC1:
    .import stru_158328

    npc WALK_NPC, $C5C0, $EE80, RIGHT, stru_158328

    check_action TALK, TwinkleNPC1Exit - TwinkleNPC1
    print $118
TwinkleNPC1Exit:
    end_script

TwinkleNPC2:
    .import stru_158308

    npc WALK_NPC, $C340, $F580, LEFT, stru_158308

    check_action TALK, TwinkleNPC2Exit - TwinkleNPC2
    check_char 3, Picking - TwinkleNPC2
    check_status FAINTED, RunAway - TwinkleNPC2
    print $101
    end_script
RunAway:
    print $215
    end_script
Picking:
    print $100
TwinkleNPC2Exit:
    end_script

TwinkleNPC3:
    .import stru_158388

    npc WALK_NPC, $C3C0, $F5C0, RIGHT, stru_158388

    check_action TALK, TwinkleNPC3Exit - TwinkleNPC3
    check_char 3, Weakling - TwinkleNPC3
    print $57
    end_script
Weakling:
    print $102
TwinkleNPC3Exit:
    end_script

TwinkleNPC4:
    .import stru_158348

    npc WALK_NPC, $BEC0, $EEC0, LEFT, stru_158348

    check_action TALK, TwinkleNPC4Exit - TwinkleNPC4
    print $119
    confirm DontRun - TwinkleNPC4
    print $11A
    end_script
DontRun:
    print $11B
TwinkleNPC4Exit:
    end_script

Janitor1:
    npc STAT_NPC2, $C540, $EE40, LEFT, stru_158408

    show FLAG04|BIT4
    approach Janitor1Exit - Janitor1
    move byte_118196
Janitor1Exit:
    end_script
byte_118196:
    .byte $36, $22, $16, 1, $12, 1, 3

Janitor2:
    npc STAT_NPC2, $BEC0, $F580, UP, stru_158408

    show FLAG04|BIT4
    approach Janitor2Exit - Janitor2
    move byte_1181BB
    print $351
    move byte_1181C0
    print $352
    move byte_1181CD
    set_flag FLAG07|BIT3
    clear_flag FLAG04|BIT4
Janitor2Exit:
    end_script
byte_1181BB:
    .byte $30, 1, $32, $A, 3
byte_1181C0:
    .byte $32, $F, $F6, 1, $72, 1, $52, 1, $56, 1, $76, 1, 3
byte_1181CD:
    .byte $74, 1, $76, 9, 0

Lloyd1:
    .import AnimBoy2

    npc STAT_NPC2, $C4C0, $F540, RIGHT, AnimBoy2

    show FLAG04|BIT3
    approach Lloyd1Exit - Lloyd1
    print $353
    move byte_1181E3
Lloyd1Exit:
    end_script
byte_1181E3:
    .byte $36, $F, $34, 1, $36, $A, $16, 1, $12, 1, 3

Lloyd2:
    npc STAT_NPC2, $BD00, $EE40, LEFT, AnimBoy2

    show FLAG04|BIT3
    approach Lloyd2Exit - Lloyd2
    print $354
    move byte_1181FF
Lloyd2Exit:
    end_script
byte_1181FF:
    .byte $32, $1A, $30, 1, $10, 1, $16, 1, 3


off_118208:
    .word HomeOut, HomeUp, BasementIn, Sister1RoomOut, Sister2RoomOut, HealerHomeOut, PodHealerOut
    .word SnowHealerOut, HillHouseOut, AuntNoMove, Aunt, Sister2, MinnieKeeper, Sister1, Phone
    .word DallSister1, DefeatDall, SisterLamp, HillHouseOldman, HillHouseBoy, PodHealer, ReinHealer
    .word SnowHealer, PodHealerPhone, ReinHealerPhone, SnowPhone, SwampHouseOut, SwampPippi, 0

HomeOut:
    entrance DOOR, $B80, $2180, RIGHT, MUSIC_6, $2C40, $4F00, DOWN

HomeUp:
    entrance STAIRS, $880, $2140, LEFT, MUSIC_SAME, $880, $3980, RIGHT

BasementIn:
    unknown_18 $A40, $20C0, UP

    check_view BasementInExit - BasementIn
    use_item BasementKey, NextKey1 - BasementIn
    print $336
    play SOUND1, 8
    teleport $BF51, $2186
    end_script
NextKey1:
    use_item ZooKey, NextKey2 - BasementIn
    jump WrongKeys - BasementIn
NextKey2:
    use_item GhostKey, DoorLocked - BasementIn
WrongKeys:
    print $335
DoorLocked:
    approach BasementInExit - BasementIn
    print $334
BasementInExit:
    end_script

Sister1RoomOut:
    entrance DOOR, $7380, $2180, RIGHT, MUSIC_SAME, $980, $3900, DOWN

Sister2RoomOut:
    entrance DOOR, $9F80, $FD80, RIGHT, MUSIC_SAME, $A40, $3900, DOWN

HealerHomeOut:
    entrance DOOR, $B80, $2980, RIGHT, MUSIC_6, $6640, $CE00, DOWN

PodHealerOut:
    entrance DOOR, $380, $3180, RIGHT, MUSIC_6, $2740, $7C00, DOWN

SnowHealerOut:
    entrance DOOR, $B80, $4180, RIGHT, MUSIC_a, $E040, $F400, DOWN

HillHouseOut:
    entrance DOOR, $9B80, $2180, RIGHT, MUSIC_6, $5800, $B280, DOWN

AuntNoMove:
    .import stru_1585C8

    npc STAT_NPC2, $B40, $2180, LEFT, stru_1585C8

    hide FLAG01|BIT5
    check_action TALK, AuntMove - AuntNoMove
    print 9
    check_flag FLAG08|BIT7, GetPhone - AuntNoMove
    jump AuntNoMoveExit - AuntNoMove
GetPhone:
    play MUSIC, $2F
    print $294
    end_script
AuntMove:
    check_keypress AuntNoMoveExit - AuntNoMove
    move byte_1182C7
    set_flag FLAG01|BIT5
AuntNoMoveExit:
    end_script
byte_1182C7:
    .byte $76, 4, $F4, 1, 0

Aunt:
    npc WALK_NPC2, $A40, $2180, DOWN, stru_1585C8

    show FLAG01|BIT5
    check_action TALK, AuntExit - Aunt
    check_flag FLAG06|BIT5, Emergency - Aunt
    get_char_name 1
    check_status FAINTED, Help - Aunt
    check_level 5, Bravery - Aunt
    print $B
    jump Cook - Aunt
Bravery:
    print $A
Cook:
    print $224
    sleep
    print $D
    end_script
Help:
    print $1EE
    end_script
Emergency:
    print 9
AuntExit:
    end_script

Sister2:
    .import stru_15867C

    npc WALK_NPC2, $9D00, $FD80, RIGHT, stru_15867C

    hide FLAG06|BIT5
    check_action TALK, Sister2Exit - Sister2
    check_flag FLAG04|BIT2, Alive - Sister2
    check_flag FLAG04|BIT1, FallingHouse - Sister2
    print 4
    find_item EMPTY, SisterCantCarry - Sister2
    play SOUND2, 6
    select_item OrangeJuice
    add_item Sister2Exit - Sister2
    end_script
SisterCantCarry:
    print $249
    end_script
FallingHouse:
    print 2
    print 3
    end_script
Alive:
    print 1
Sister2Exit:
    end_script

MinnieKeeper:
    npc WALK_NPC2, $9C0, $2140, DOWN, stru_15867C

    show FLAG06|BIT5
    check_action TALK, MinnieKeeperExit - MinnieKeeper
    print $3BD
    print $234
    confirm_menu $322, TryKeep - MinnieKeeper, SeeYouLater - MinnieKeeper
CheckInv:
    check_inventory Nothing - MinnieKeeper
    choose SeeYouLater - MinnieKeeper
    buying_item Crumbs, AddStorage - MinnieKeeper
    jump ICant - MinnieKeeper
AddStorage:
    add_storage Moment - MinnieKeeper
    play SOUND2, 6
    remove_item MinnieKeeperExit - MinnieKeeper
    print $236
    confirm SeeYouLater - MinnieKeeper
    jump CheckInv - MinnieKeeper
TryKeep:
    check_storage Anything - MinnieKeeper
    select_storage SeeYouLater - MinnieKeeper
    get_char_name 1
    sel_char 1, AddItem - MinnieKeeper
ChooseChar:
    choose_char SeeYouLater - MinnieKeeper
AddItem:
    add_item SelChar - MinnieKeeper
    play SOUND2, 6
    remove_storage MinnieKeeperExit - MinnieKeeper
    print $238
    confirm SeeYouLater - MinnieKeeper
    jump TryKeep - MinnieKeeper
SelChar:
    sel_char 1, NotSpace - MinnieKeeper
    print $212
    confirm SeeYouLater - MinnieKeeper
    jump ChooseChar - MinnieKeeper
NotSpace:
    print $249
    end_script
Moment:
    print $325
    end_script
ICant:
    print $36A
    end_script
SeeYouLater:
    print $237
    end_script
Nothing:
    print $323
    end_script
Anything:
    print $324
MinnieKeeperExit:
    end_script

Sister1:
    .import stru_15862C

    npc WALK_NPC, $72C0, $2180, RIGHT, stru_15862C

    check_action TALK, Sister1Exit - Sister1
    check_flag FLAG04|BIT1, HelpMe - Sister1
    check_flag TUNES|BIT0, Scared - Sister1
    check_flag FLAG06|BIT5, Juice - Sister1
    print 8
    end_script
Juice:
    print 4
    find_item EMPTY, Heavy - Sister1
    play SOUND2, 6
    select_item OrangeJuice
    add_item Sister1Exit - Sister1
    end_script
Heavy:
    print $249
    end_script
Scared:
    print 6
    end_script
HelpMe:
    print $293
Sister1Exit:
    end_script

Phone:
    .import PhoneAnim

    entity $AC0, $2100, UP, PhoneAnim

    check_action TALK, PhoneExit - Phone
    print $339
    check_flag FLAG04|BIT1, NextFlag - Phone
    play MUSIC, $12
    jump CheckFlag - Phone
NextFlag:
    play MUSIC, $10
CheckFlag:
    check_flag FLAG08|BIT7, Dad - Phone
    print $14
    transfer Exp - Phone
    print $15
Exp:
    print $C
    sel_char 0, Save - Phone
    need_exp
    print $345
    sel_char 1, Save - Phone
    need_exp
    print $345
    sel_char 2, Save - Phone
    need_exp
    print $345
Save:
    print $1E
    confirm_menu $337, Continue - Phone, Continue - Phone
    save
    print $1B
    confirm_menu $338, Reset - Phone, Advice - Phone
Advice:
    print $1D
    print $13
    end_script
Reset:
    print $1C
    print $13
    reboot
Continue:
    print $21
    print $13
    end_script
Dad:
    print $14
    print $E
    print $13
    set_flag FLAG08|BIT7
    check_flag FLAG04|BIT1, PhoneExit - Phone
    another 9
PhoneExit:
    end_script

DallSister1:
    .import DallAnim

    unknown_27 $7180, $21C0, UP, DallAnim

    hide FLAG04|BIT1
    approach DallCheck - DallSister1
    jump ClearFlags - DallSister1
DallCheck:
    check_action CHECK, DallSister1Exit - DallSister1
    print $32D
ClearFlags:
    clear_flag FLAG1F|BIT7
    clear_flag FLAG06|BIT7
    enemies $9F
    set_flag FLAG06|BIT7
    set_flag FLAG04|BIT1
    set_flag FLAG04|BIT2
    play MUSIC, $12
    move byte_118454
    print $222
    check_flag FLAG08|BIT7, DallMove - DallSister1
    set_flag FLAG01|BIT5
DallMove:
    move byte_118457
DallSister1Exit:
    end_script
byte_118454:
    .byte $50, 1, 3
byte_118457:
    .byte 0

DefeatDall:
    unknown_1D $7280, $20C0, UP, DallAnim

    show FLAG04|BIT1
    check_action CHECK, DefeatDallExit - DefeatDall
    print $32C
    play MUSIC, $24
    wait 240
    play MUSIC, $12
    set_flag TUNES|BIT0
    print $340
DefeatDallExit:
    end_script

SisterLamp:
    .import LampAnim

    unknown_27 $9E40, $FD40, UP, LampAnim

    hide FLAG04|BIT2
    approach LampCheck - SisterLamp
    jump LampMove - SisterLamp
LampCheck:
    check_action CHECK, SisterLampExit - SisterLamp
    print $32D
LampMove:
    move byte_118495
    clear_flag FLAG1F|BIT7
    clear_flag FLAG06|BIT7
    enemies $A0
    set_flag FLAG1F|BIT7
    set_flag FLAG06|BIT7
    set_flag FLAG04|BIT2
    move byte_118498
SisterLampExit:
    end_script
byte_118495:
    .byte $F0, 1, 3
byte_118498:
    .byte 0

HillHouseOldman:
    .import OldManAnim

    npc NPC_1, $9940, $2180, DOWN, OldManAnim

    check_action TALK, CheckUse - HillHouseOldman
    check_flag FLAG08|BIT6, Mmm - HillHouseOldman
    print $138
    end_script
Mmm:
    print $158
    end_script
CheckUse:
    use_item Dentures, CheckPsi - HillHouseOldman
    select_item Dentures
    remove_item HillHouseOldmanExit - HillHouseOldman
    print $15A
GetMouthwash:
    select_item Mouthwash
    play SOUND2, 6
    add_item Mmm2 - HillHouseOldman
    wait 40
    find_item EMPTY, NoEmpty - HillHouseOldman
    jump GetMouthwash - HillHouseOldman
NoEmpty:
    set_flag FLAG08|BIT6
    end_script
Mmm2:
    print $158
    end_script
CheckPsi:
    check_psi 1, HillHouseOldmanExit - HillHouseOldman
    print $250
HillHouseOldmanExit:
    end_script

HillHouseBoy:
    npc WALK_NPC, $9A40, $2180, RIGHT, stru_158308

    check_action TALK, HillHouseBoyExit - HillHouseBoy
    check_flag FLAG08|BIT6, CantUnderstand - HillHouseBoy
    price 10
    print $15C
    confirm Sure - HillHouseBoy
    find_item EMPTY, TooHeavy - HillHouseBoy
    select_item Mouthwash
    price 10
    pay Hmm - HillHouseBoy
    play SOUND2, 6
    select_item Mouthwash
    add_item HillHouseBoyExit - HillHouseBoy
    end_script
Hmm:
    print $25F
    end_script
TooHeavy:
    print $260
    end_script
Sure:
    print $30A
    end_script
CantUnderstand:
    print $159
HillHouseBoyExit:
    end_script

PodHealer:
    npc WALK_NPC, $100, $3100, RIGHT, OldManAnim

    price 30
    call PodHealer, Healer1Call - PodHealer
    end_script
Healer1Call:
    check_action TALK, PodHealerExit - PodHealer
    print $B5
    confirm_menu $3BE, Give - PodHealer, OK - PodHealer
    percent 60
    print $314
    confirm OK - PodHealer
    pay SeemLessMoney - PodHealer
    sel_char 1, SelChar1 - PodHealer
    choose_char NoChar - PodHealer
    jump Status1 - PodHealer
SelChar1:
    sel_char 0, PodHealerExit - PodHealer
Status1:
    check_status FAINTED, SuchMan - PodHealer
    max_pp RecoveryPP - PodHealer
    get PodHealerExit - PodHealer
    print $30F
    return
RecoveryPP:
    rec_pp $FF
    max_pp RecoveryPP - PodHealer
    print $33D
    play SOUND2, 7
    return
Give:
    print $314
    confirm OK - PodHealer
    pay SeemLessMoney - PodHealer
    sel_char 1, SelChar2 - PodHealer
    print $34D
    choose_char NoChar - PodHealer
    jump Status2 - PodHealer
SelChar2:
    sel_char 0, PodHealerExit - PodHealer
Status2:
    check_status FAINTED, SuchMan - PodHealer
    check_status STONE, Expert - PodHealer
    get PodHealerExit - PodHealer
    print $34F
    return
Expert:
    print $33D
    play SOUND2, 7
    clear_status $BF
    return
NoChar:
    get PodHealerExit - PodHealer
OK:
    print $313
    return
SeemLessMoney:
    print $23D
    return
SuchMan:
    get PodHealerExit - PodHealer
    print $21B
PodHealerExit:
    return

ReinHealer:
    npc WALK_NPC, $900, $2900, RIGHT, OldManAnim

    price 75
    call ReinHealer, Healer2Call - ReinHealer
    end_script

Healer2Call:
    check_action TALK, ReinHealerExit - ReinHealer
    print $312
    confirm_menu $3BE, Give1 - ReinHealer, OK1 - ReinHealer
    percent 60
    print $314
    confirm OK1 - ReinHealer
    pay SeemLessMoney1 - ReinHealer
    sel_char 1, SelCharac1 - ReinHealer
    choose_char NoChar1 - ReinHealer
    jump ChStatus1 - ReinHealer
SelCharac1:
    sel_char 0, ReinHealerExit - ReinHealer
ChStatus1:
    check_status FAINTED, SuchMan1 - ReinHealer
    max_pp RecPP - ReinHealer
    get ReinHealerExit - ReinHealer
    print $30F
    return
RecPP:
    rec_pp $FF
    max_pp RecPP - ReinHealer
    print $33D
    play SOUND2, 7
    return
Give1:
    print $314
    confirm OK1 - ReinHealer
    pay SeemLessMoney1 - ReinHealer
    sel_char 1, SelCharac2 - ReinHealer
    print $34D
    choose_char NoChar1 - ReinHealer
    jump ChStatus2 - ReinHealer
SelCharac2:
    sel_char 0, ReinHealerExit - ReinHealer
ChStatus2:
    check_status FAINTED, SuchMan1 - ReinHealer
    check_status STONE, Expert1 - ReinHealer
    get ReinHealerExit - ReinHealer
    print $34F
    return
Expert1:
    print $33D
    play SOUND2, 7
    clear_status $BF
    return
NoChar1:
    get ReinHealerExit - ReinHealer
OK1:
    print $313
    return
SeemLessMoney1:
    print $23D
    return
SuchMan1:
    get ReinHealerExit - ReinHealer
    print $21B
ReinHealerExit:
    return

SnowHealer:
    npc WALK_NPC, $900, $4100, RIGHT, OldManAnim

    price 88
    call ReinHealer, Healer2Call - ReinHealer
    end_script

PodHealerPhone:
    entity $2C0, $3100, UP, PhoneAnim

    check_action TALK, PodHealerPhoneExit - PodHealerPhone
    call YounPhone, PhoneCall - YounPhone
PodHealerPhoneExit:
    end_script

ReinHealerPhone:
    entity $AC0, $2900, UP, PhoneAnim

    check_action TALK, ReinHealerPhoneExit - ReinHealerPhone
    call YounPhone, PhoneCall - YounPhone
ReinHealerPhoneExit:
    end_script

SnowPhone:
    entity $AC0, $4100, UP, PhoneAnim

    check_action TALK, SnowPhoneExit - SnowPhone
    check_flag FLAG10|BIT7, YourDad - SnowPhone
    call YounPhone, PhoneCall - YounPhone
    end_script
YourDad:
    print $14
    jump Person - SnowPhone
TalkAbout:
    print $189
Person:
    print $188
    confirm TalkAbout - SnowPhone
    print $18A
    jump NameReg - SnowPhone
Register:
    print $1FC
NameReg:
    name_reg
    print $3CB
    confirm Register - SnowPhone
    print $18B
    print $13
    set_flag FLAG10|BIT7
SnowPhoneExit:
    end_script

SwampHouseOut:
    entrance DOOR, $E380, $3980, RIGHT, MUSIC_6, $D940, $6600, DOWN

SwampPippi:
    .import stru_158080

    npc WALK_NPC2, $E280, $3940, DOWN, stru_158080

    show FLAG05|BIT2
    check_action TALK, SwampPippiExit - SwampPippi
    check_flag FLAG10|BIT1, ItsMe - SwampPippi
    jump Tired - SwampPippi
ItsMe:
    print $2BC
Tired:
    print $121
    sleep
    print $276
    set_flag FLAG10|BIT1
SwampPippiExit:
    end_script


GhostHouse1:
    .word GhostBOut2, GhostBCIn2, GhostBCIn3, GhostAOut4, GhostAOut6, GhostCOut1, GhostCIn2, GhostAOut5
    .word GhostAOut8, GhostBOut3, GhostBCIn4, GhostBCIn5, PianoRoomOut, PianoRoomBox, GhostPiano, GhostPianoSide, 0

GhostBOut2:
    entrance DOOR, $9F80, $2180, RIGHT, MUSIC_SAME, $7C40, $21C0, RIGHT

GhostBCIn2:
    entrance DOOR, $9C80, $2140, LEFT, MUSIC_SAME, $C780, $F880, LEFT

GhostBCIn3:
    entrance DOOR, $9C00, $21C0, LEFT, MUSIC_SAME, $BB80, $EC80, LEFT

GhostAOut4:
    entrance DOOR, $8740, $2140, RIGHT, MUSIC_SAME, $C40, $41C0, RIGHT

GhostAOut6:
    entrance DOOR, $87C0, $21C0, RIGHT, MUSIC_SAME, $94C0, $2140, RIGHT

GhostCOut1:
    entrance DOOR, $A780, $2180, RIGHT, MUSIC_SAME, $440, $21C0, RIGHT

GhostCIn2:
    entrance DOOR, $A440, $2180, LEFT, MUSIC_SAME, $F40, $3180, LEFT

GhostAOut5:
    entrance DOOR, $8F40, $2140, RIGHT, MUSIC_SAME, $CC0, $4140, RIGHT

GhostAOut8:
    entrance DOOR, $8FC0, $21C0, RIGHT, MUSIC_SAME, $9440, $21C0, RIGHT

GhostBOut3:
    entrance DOOR, $F80, $2180, RIGHT, MUSIC_SAME, $9D40, $EFC0, RIGHT

GhostBCIn4:
    entrance DOOR, $C80, $2140, LEFT, MUSIC_SAME, $AF80, $F880, LEFT

GhostBCIn5:
    entrance DOOR, $C00, $21C0, LEFT, MUSIC_SAME, $AF80, $EC80, LEFT

PianoRoomOut:
    entrance DOOR, $780, $3980, RIGHT, MUSIC_SAME, $B540, $EFC0, RIGHT

PianoRoomBox:
    .import BoxAnim

    box $5C0, $3980, UP, BoxAnim, LifeUpCream, 3

GhostPiano:
    .import PianoAnim

    entity $500, $3900, UP, PianoAnim

    check_action CHECK, GhostPianoExit - GhostPiano
    another $F
GhostPianoExit:
    end_script

GhostPianoSide:
    .import PianoSideAnim

    entity $540, $3900, UP, PianoSideAnim

    check_action CHECK, GhostKeyPress - GhostPianoSide
    jump PianoPlay - GhostPianoSide
GhostKeyPress:
    check_keypress GhostPianoSideExit - GhostPianoSide
PianoPlay:
    print $35F
    play MUSIC, $27
    wait 240
    play MUSIC, $D
    set_flag TUNES|BIT3
    set_flag FLAG01|BIT0
    print $340
GhostPianoSideExit:
    end_script


GhostHouse2:
    .word GhostAOut7, GhostAIn8, GhostAIn6, GhostAOut9, GhostABIn3, GhostBIn4, GhostBOut4, GhostBIn5, GhostBIn6
    .word GhostCOut5, GhostCOut3, GhostCOut6, GhostBOut6, GhostWarning1, GhostBox1, GhostBox2, GhostBox3, GhostBox4, 0

GhostAOut7:
    entrance DOOR, $9780, $2180, RIGHT, MUSIC_SAME, $74C0, $2140, RIGHT

GhostAIn8:
    entrance DOOR, $9480, $2140, LEFT, MUSIC_SAME, $8780, $21C0, LEFT

GhostAIn6:
    entrance DOOR, $9400, $21C0, LEFT, MUSIC_SAME, $8F80, $21C0, LEFT

GhostAOut9:
    entrance DOOR, $F80, $2980, RIGHT, MUSIC_SAME, $7440, $21C0, RIGHT

GhostABIn3:
    entrance DOOR, $C80, $2940, LEFT, MUSIC_SAME, $A380, $EC80, LEFT

GhostBIn4:
    entrance DOOR, $C00, $29C0, LEFT, MUSIC_SAME, $F40, $5180, LEFT

GhostBOut4:
    entrance DOOR, $F80, $5180, RIGHT, MUSIC_SAME, $C40, $29C0, RIGHT

GhostBIn5:
    entrance DOOR, $C80, $5140, LEFT, MUSIC_SAME, $740, $4180, LEFT

GhostBIn6:
    entrance DOOR, $C00, $51C0, LEFT, MUSIC_SAME, $F40, $3980, LEFT

GhostCOut5:
    entrance DOOR, $AF80, $2180, RIGHT, MUSIC_SAME, $480, $3180, RIGHT

GhostCOut3:
    entrance DOOR, $F80, $4980, RIGHT, MUSIC_SAME, $C140, $FBC0, RIGHT

GhostCOut6:
    entrance DOOR, $780, $4980, RIGHT, MUSIC_SAME, $A940, $EFC0, RIGHT

GhostBOut6:
    entrance DOOR, $F80, $3980, RIGHT, MUSIC_SAME, $C40, $51C0, RIGHT

GhostWarning1:
    unknown_1F $CC0, $5140, UP

    hide FLAG01|BIT0
    approach GhostWarning1Exit - GhostWarning1
    print $163
GhostWarning1Exit:
    end_script

GhostBox1:
    box $D80, $2900, UP, BoxAnim, Antidote, $14

GhostBox2:
    box $640, $49C0, UP, BoxAnim, Bread, $15

GhostBox3:
    box $EC0, $39C0, UP, BoxAnim, Antidote, $16

GhostBox4:
    box $C80, $49C0, UP, BoxAnim, EMPTY, $17


GhostHouse3:
    .word GhostABOut1, GhostBIn1, GhostBCOut1, GhostCIn1, GhostAOut2, GhostAOut3, GhostAIn4, GhostAIn5, GhostABOut3, GhostBIn3
    .word GhostCOut2, GhostBCOut2, GhostCIn3, GhostBCOut3, PianoRoomIn, GhostCIn5, GhostCOut4, GhostCIn4, GhostBCOut4, GhostBCOut5
    .word GhostCIn6, GhostBOut5, GhostBox5, GhostWarning2, GhostWarning3, GhostWarning4, 0

GhostABOut1:
    entrance DOOR, $A3C0, $F480, RIGHT, MUSIC_SAME, $6CC0, $2140, RIGHT

GhostBIn1:
    entrance DOOR, $9400, $FEC0, LEFT, MUSIC_SAME, $7F40, $2180, LEFT

GhostBCOut1:
    entrance DOOR, $7C0, $2180, RIGHT, MUSIC_SAME, $7CC0, $2140, RIGHT

GhostCIn1:
    entrance DOOR, $400, $21C0, LEFT, MUSIC_SAME, $A740, $2180, LEFT

GhostAOut2:
    entrance DOOR, $780, $5180, RIGHT, MUSIC_SAME, $4C0, $2940, RIGHT

GhostAOut3:
    entrance DOOR, $F80, $4180, RIGHT, MUSIC_SAME, $440, $29C0, RIGHT

GhostAIn4:
    entrance DOOR, $C00, $41C0, LEFT, MUSIC_SAME, $8700, $2140, LEFT

GhostAIn5:
    entrance DOOR, $C80, $4140, LEFT, MUSIC_SAME, $8F00, $2140, LEFT

GhostABOut3:
    entrance DOOR, $A3C0, $EC80, RIGHT, MUSIC_SAME, $CC0, $2940, RIGHT

GhostBIn3:
    entrance DOOR, $9D00, $EFC0, LEFT, MUSIC_SAME, $F40, $2180, LEFT

GhostCOut2:
    entrance DOOR, $F80, $3180, RIGHT, MUSIC_SAME, $A480, $2180, RIGHT

GhostBCOut2:
    entrance DOOR, $C7C0, $F880, RIGHT, MUSIC_SAME, $9CC0, $2140, RIGHT

GhostCIn3:
    entrance DOOR, $C100, $FBC0, LEFT, MUSIC_SAME, $F40, $4980, LEFT

GhostBCOut3:
    entrance DOOR, $BBC0, $EC80, RIGHT, MUSIC_SAME, $9C40, $21C0, RIGHT

PianoRoomIn:
    entrance DOOR, $B500, $EFC0, LEFT, MUSIC_SAME, $740, $3980, LEFT

GhostCIn5:
    entrance DOOR, $440, $3180, LEFT, MUSIC_SAME, $AF40, $2180, LEFT

GhostCOut4:
    entrance DOOR, $780, $3180, RIGHT, MUSIC_SAME, $A440, $FFC0, RIGHT

GhostCIn4:
    entrance DOOR, $A400, $FFC0, LEFT, MUSIC_SAME, $740, $3180, LEFT

GhostBCOut4:
    entrance DOOR, $AFC0, $F880, RIGHT, MUSIC_SAME, $CC0, $2140, RIGHT

GhostBCOut5:
    entrance DOOR, $AFC0, $EC80, RIGHT, MUSIC_SAME, $C40, $21C0, RIGHT

GhostCIn6:
    entrance DOOR, $A900, $EFC0, LEFT, MUSIC_SAME, $740, $4980, LEFT

GhostBOut5:
    entrance DOOR, $780, $4180, RIGHT, MUSIC_SAME, $CC0, $5140, RIGHT

GhostBox5:
    box $600, $4140, UP, BoxAnim, LifeUpCream, $18

GhostWarning2:
    unknown_1F $9B00, $FA80, UP

    hide FLAG01|BIT0
    approach GhostWarning2Exit - GhostWarning2
    print $166
GhostWarning2Exit:
    end_script

GhostWarning3:
    unknown_1F $B640, $EFC0, UP

    hide FLAG01|BIT0
    approach GhostWarning2Exit - GhostWarning2
    print $164
GhostWarning3Exit:
    end_script

GhostWarning4:
    unknown_1F $A900, $FC80, UP

    hide FLAG01|BIT0
    approach GhostWarning2Exit - GhostWarning2
    print $165
GhostWarning4Exit:
    end_script


Stores1:
    .word PodCafeOut, MerCafeOut, ReinCafeOut, EllCafeOut, PodMallDown1, PodMallUp2, MerMallDown1, MerMallUp2
    .word ReinMallDown1, ReinMallUp2, EllMallDown1, EllMallUp2, PodCafeClerk, EllCafeClerk, MerCafeClerk
    .word ReinCafeClerk, PodCafeNPC, ReinCafeNPC, MerDrugsClerk, EllDrugsClerk, ReinDrugsClerk, PodDrugsClerk, 0

PodCafeOut:
    entrance DOOR, $380, $5580, RIGHT, MUSIC_6, $2DC0, $6C40, DOWN

MerCafeOut:
    entrance DOOR, $380, $3D80, RIGHT, MUSIC_6, $58C0, $7040, DOWN

ReinCafeOut:
    entrance DOOR, $9380, $2580, RIGHT, MUSIC_6, $74C0, $EF40, DOWN

EllCafeOut:
    entrance DOOR, $B80, $2D80, RIGHT, MUSIC_6, $C7C0, $4640, DOWN

PodMallDown1:
    entrance STAIRS, $880, $3D40, LEFT, MUSIC_SAME, $80, $4580, RIGHT

PodMallUp2:
    entrance STAIRS, $840, $3D80, LEFT, MUSIC_SAME, $78C0, $2540, RIGHT

MerMallDown1:
    entrance STAIRS, $A880, $2540, LEFT, MUSIC_SAME, $80, $2D80, RIGHT

MerMallUp2:
    entrance STAIRS, $A840, $2580, LEFT, MUSIC_SAME, $C0, $4D40, RIGHT

ReinMallDown1:
    entrance STAIRS, $880, $4D40, LEFT, MUSIC_SAME, $7080, $2580, RIGHT

ReinMallUp2:
    entrance STAIRS, $840, $4D80, LEFT, MUSIC_SAME, $8C0, $2540, RIGHT

EllMallDown1:
    entrance STAIRS, $B880, $2540, LEFT, MUSIC_SAME, $880, $5580, RIGHT

EllMallUp2:
    entrance STAIRS, $B840, $2580, LEFT, MUSIC_SAME, $C0C0, $2540, RIGHT

PodCafeClerk:
    .import WaitressAnim

    npc WALK_NPC, $180, $5500, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script
Cafe:
    check_action TALK, CafeExit - PodCafeClerk
    print $2B1
CafeRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, CafeList - PodCafeClerk
    clear_flag FLAG00|BIT7
CafeList:
    item_list OrangeJuice, FrenchFries, Hamburger, EMPTY, CafeDontNeed - PodCafeClerk
    check_flag FLAG00|BIT7, CafeBuy - PodCafeClerk
    print $33C
    clear_flag FLAG00|BIT7
    return
CafeBuy:
    pay CafeLessMoney - PodCafeClerk
    print $23A
    confirm CafeRefuse - PodCafeClerk
    print $2B2
    play SOUND2, $B
    cash
    add_item CafeExit - PodCafeClerk
    print $3E3
    confirm CafeStopVisit - PodCafeClerk
    jump CafeRepeat - PodCafeClerk
CafeStopVisit:
    print $309
    return
CafeRefuse:
    get CafeExit - PodCafeClerk
CafeDontNeed:
    print $308
    clear_flag FLAG00|BIT7
    return
CafeLessMoney:
    print $33B
CafeExit:
    return

EllCafeClerk:
    npc WALK_NPC, $980, $2D00, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script


MerCafeClerk:
    npc WALK_NPC, $180, $3D00, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script

ReinCafeClerk:
    npc WALK_NPC, $9180, $2500, DOWN, WaitressAnim

    call PodCafeClerk, Cafe - PodCafeClerk
    end_script

PodCafeNPC:
    npc WALK_NPC, $200, $55C0, RIGHT, WaitressAnim

    check_action TALK, CafeNPCExit - PodCafeNPC
    print $2BD
CafeNPCExit:
    end_script

ReinCafeNPC:
    npc WALK_NPC, $9100, $2580, RIGHT, WaitressAnim

    check_action TALK, RCafeNPCExit - ReinCafeNPC
    print $2BE
RCafeNPCExit:
    end_script

MerDrugsClerk:
    .import PharmacistAnim

    npc WALK_NPC, $AA00, $2500, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script
Drugs:
    check_action TALK, DrugsExit - MerDrugsClerk
    print $306
DrugsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, DrugsList - MerDrugsClerk
    clear_flag FLAG00|BIT7
DrugsList:
    item_list Antidote, AsthmaSpray, LifeUpCream, Insecticide, DrugsDontNeed - MerDrugsClerk
    check_flag FLAG00|BIT7, DrugsBuy - MerDrugsClerk
    print $23B
    clear_flag FLAG00|BIT7
    return
DrugsBuy:
    pay DrugsLessMoney - MerDrugsClerk
    print $23A
    confirm DrugsRefuse - MerDrugsClerk
    print $309
    play SOUND2, $B
    cash
    add_item DrugsExit - MerDrugsClerk
    print $3E3
    confirm DrugsStopVisit - MerDrugsClerk
    jump DrugsRepeat - MerDrugsClerk
DrugsStopVisit:
    print $309
    return
DrugsRefuse:
    get DrugsExit - MerDrugsClerk
DrugsDontNeed:
    print $30A
    clear_flag FLAG00|BIT7
    return
DrugsLessMoney:
    print $33A
DrugsExit:
    return

EllDrugsClerk:
    npc WALK_NPC, $BA00, $2500, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script

ReinDrugsClerk:
    npc WALK_NPC, $A00, $4D00, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script

PodDrugsClerk:
    npc WALK_NPC, $A00, $3D00, DOWN, PharmacistAnim

    call MerDrugsClerk, Drugs - MerDrugsClerk
    end_script


Stores2:
    .word MerMallDown2, MerMallUp3, MerMallDown3, MerMallUp4, ReinMallDown2, ReinMallUp3, ReinMallDown3
    .word EllMallDown3, ReinMallUp4, ReinMallDown4, YounStoreOut, YounStoreClerk, MerSportsClerk
    .word MerFoodsClerk, ReinSportsClerk, ReinFoodsClerk, ReinFoodNPC, EllVarietyClerk
    .word YounATM, YounPhone, ReinWeaponClerk, 0

MerMallDown2:
    entrance STAIRS, $80, $4D40, LEFT, MUSIC_SAME, $A880, $2580, RIGHT

MerMallUp3:
    entrance STAIRS, $40, $4D80, LEFT, MUSIC_SAME, $C0, $2540, RIGHT

MerMallDown3:
    entrance STAIRS, $80, $2540, LEFT, MUSIC_SAME, $80, $4D80, RIGHT

MerMallUp4:
    entrance STAIRS, $40, $2580, LEFT, MUSIC_SAME, $C0, $3540, RIGHT

ReinMallDown2:
    entrance STAIRS, $880, $2540, LEFT, MUSIC_SAME, $880, $4D80, RIGHT

ReinMallUp3:
    entrance STAIRS, $840, $2580, LEFT, MUSIC_SAME, $B0C0, $2540, RIGHT

ReinMallDown3:
    entrance STAIRS, $B080, $2540, LEFT, MUSIC_SAME, $880, $2580, RIGHT

EllMallDown3:
    entrance STAIRS, $B880, $F940, LEFT, MUSIC_SAME, $C080, $2580, RIGHT

ReinMallUp4:
    entrance STAIRS, $B040, $2580, LEFT, MUSIC_SAME, $C0, $6D40, RIGHT

ReinMallDown4:
    entrance STAIRS, $80, $6D40, LEFT, MUSIC_SAME, $B080, $2580, RIGHT

YounStoreOut:
    entrance DOOR, $B80, $4580, RIGHT, MUSIC_30, $B340, $7000, DOWN

YounStoreClerk:
    .import stru_158268

    npc WALK_NPC, $A00, $4500, DOWN, stru_158268

    check_action TALK, YounStoreExit - YounStoreClerk
    print $306
YounStoreRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, YounStoreList - YounStoreClerk
    clear_flag FLAG00|BIT7
YounStoreList:
    item_list Bread, LifeUpCream, NonstickPan, AirGun, YounStoreRefuse - YounStoreClerk
    check_flag FLAG00|BIT7, YounStoreBuy - YounStoreClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
YounStoreBuy:
    pay YounStoreLess - YounStoreClerk
    print $23A
    confirm @NotConfirm - YounStoreClerk
    print $309
    play SOUND2, $B
    cash
    add_item YounStoreExit - YounStoreClerk
    print $3E3
    confirm @StopBuying - YounStoreClerk
    jump YounStoreRepeat - YounStoreClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get YounStoreExit - YounStoreClerk
YounStoreRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
YounStoreLess:
    print $33A
YounStoreExit:
    end_script

MerSportsClerk:
    .import ServicemanAnim

    npc WALK_NPC, $200, $4D00, DOWN, ServicemanAnim

    check_action TALK, MerSportsExit - MerSportsClerk
    print $306
MerSportsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, MerSportsList - MerSportsClerk
    clear_flag FLAG00|BIT7
MerSportsList:
    item_list WoodenBat, AluminumBat, Boomerang, EMPTY, MerSportsRefuse - MerSportsClerk
    check_flag FLAG00|BIT7, MerSportsBuy - MerSportsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
MerSportsBuy:
    pay MerSportsLess - MerSportsClerk
    print $23A
    confirm @NotConfirm - MerSportsClerk
    print $309
    play SOUND2, $B
    cash
    add_item MerSportsExit - MerSportsClerk
    print $3E3
    confirm @StopBuying - MerSportsClerk
    jump MerSportsRepeat - MerSportsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get MerSportsExit - MerSportsClerk
MerSportsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
MerSportsLess:
    print $33B
MerSportsExit:
    end_script

MerFoodsClerk:
    .import ReceptionistAnim

    npc WALK_NPC, $200, $2500, DOWN, ReceptionistAnim

    check_action TALK, MerFoodsExit - MerFoodsClerk
    print $306
MerFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, MerFoodsList - MerFoodsClerk
    clear_flag FLAG00|BIT7
MerFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, EMPTY, MerFoodsRefuse - MerFoodsClerk
    check_flag FLAG00|BIT7, MerFoodsBuy - MerFoodsClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
MerFoodsBuy:
    pay MerFoodsLess - MerFoodsClerk
    print $23A
    confirm @NotConfirm - MerFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item MerFoodsExit - MerFoodsClerk
    print $3E3
    confirm @StopBuying - MerFoodsClerk
    jump MerFoodsRepeat - MerFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get MerFoodsExit - MerFoodsClerk
MerFoodsRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
MerFoodsLess:
    print $33A
MerFoodsExit:
    end_script

ReinSportsClerk:
    npc WALK_NPC, $A00, $2500, DOWN, ServicemanAnim

    check_action TALK, ReinSportsExit - ReinSportsClerk
    print $306
ReinSportsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, ReinSportsList - ReinSportsClerk
    clear_flag FLAG00|BIT7
ReinSportsList:
    item_list AluminumBat, Boomerang, EMPTY, EMPTY, ReinSportsRefuse - ReinSportsClerk
    check_flag FLAG00|BIT7, ReinSportsBuy - ReinSportsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
ReinSportsBuy:
    pay ReinSportsLess - ReinSportsClerk
    print $23A
    confirm @NotConfirm - ReinSportsClerk
    print $309
    play SOUND2, $B
    cash
    add_item ReinSportsExit - ReinSportsClerk
    print $3E3
    confirm @StopBuying - ReinSportsClerk
    jump ReinSportsRepeat - ReinSportsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get ReinSportsExit - ReinSportsClerk
ReinSportsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
ReinSportsLess:
    print $33B
ReinSportsExit:
    end_script


ReinFoodsClerk:
    npc WALK_NPC, $B200, $2500, DOWN, ReceptionistAnim

    check_action TALK, ReinFoodsExit - ReinFoodsClerk
    print $306
ReinFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, ReinFoodsList - ReinFoodsClerk
    clear_flag FLAG00|BIT7
ReinFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, BerryTofu, ReinFoodsRefuse - ReinFoodsClerk
    check_flag FLAG00|BIT7, ReinFoodsBuy - ReinFoodsClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
ReinFoodsBuy:
    pay ReinFoodsLess - ReinFoodsClerk
    print $23A
    confirm @NotConfirm - ReinFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item ReinFoodsExit - ReinFoodsClerk
    print $3E3
    confirm @StopBuying - ReinFoodsClerk
    jump ReinFoodsRepeat - ReinFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get ReinFoodsExit - ReinFoodsClerk
ReinFoodsRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
ReinFoodsLess:
    print $33A
ReinFoodsExit:
    end_script

ReinFoodNPC:
    npc WALK_NPC, $B280, $2500, DOWN, ServicemanAnim

    check_action TALK, ReinFoodNPCExit - ReinFoodNPC
    print $2BF
ReinFoodNPCExit:
    end_script

EllVarietyClerk:
    npc WALK_NPC, $BA00, $F900, DOWN, ReceptionistAnim

    check_action TALK, EllVarietyExit - EllVarietyClerk
    print $306
EllVarietyRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, EllVarietyList - EllVarietyClerk
    clear_flag FLAG00|BIT7
EllVarietyList:
    item_list Ticket, ButterKnife, Rope, SurvKnife, EllVarietyRefuse - EllVarietyClerk
    check_flag FLAG00|BIT7, EllVarietyBuy - EllVarietyClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
EllVarietyBuy:
    pay EllVarietyLess - EllVarietyClerk
    print $23A
    confirm @NotConfirm - EllVarietyClerk
    print $309
    play SOUND2, $B
    cash
    add_item EllVarietyExit - EllVarietyClerk
    print $3E3
    confirm @StopBuying - EllVarietyClerk
    jump EllVarietyRepeat - EllVarietyClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get EllVarietyExit - EllVarietyClerk
EllVarietyRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
EllVarietyLess:
    print $33A
EllVarietyExit:
    end_script

YounATM:
    unknown_18 $900, $44C0, UP

    call YounATM, ATMSub - YounATM
    end_script
ATMSub:
    use_item CashCard, ATMCheck - YounATM
    print $326
    confirm_menu $332, Deposit - YounATM, ATMRefuse - YounATM
    print $333
    print $246
    input_num ATMRefuse - YounATM
    withdraw ATMLess - YounATM
    get ATMMuch - YounATM
    cash
    print $32B
    return
ATMMuch:
    add_account ATMExit - YounATM
    print $3D7
    return
ATMLess:
    print $327
    return
Deposit:
    print $333
    print $247
    input_num ATMRefuse - YounATM
    pay ATMNoMoney - YounATM
    add_account ATMLimit - YounATM
    cash
    print $32B
    return
ATMLimit:
    get ATMExit - YounATM
    print $32A
    return
ATMNoMoney:
    print $329
    return
ATMRefuse:
    print $32B
    return
ATMCheck:
    check_action CHECK, ATMExit - YounATM
    print $3D6
ATMExit:
    return

YounPhone:
    unknown_18 $A80, $44C0, UP

    call YounPhone, PhoneSub - YounPhone
    end_script
PhoneSub:
    use_item PhoneCard, NoPhoneCard - YounPhone
    print $1EF
    dec_count 4
    cmp_count 4, 1, ReachLimit - YounPhone
    jump PhoneCall - YounPhone
ReachLimit:
    select_item PhoneCard
    print $6C2
    remove_item 0
    jump PhoneCall - YounPhone
NoPhoneCard:
    check_action TALK, PhoneSubExit - YounPhone
    price 1
    pay PhoneLessCash - YounPhone
    cash
PhoneCall:
    print $339
    print $14
    transfer ExpNeed - YounPhone
    print $15
ExpNeed:
    print $C
    sel_char 0, AskSave - YounPhone
    need_exp
    print $345
    sel_char 1, AskSave - YounPhone
    need_exp
    print $345
    sel_char 2, AskSave - YounPhone
    need_exp
    print $345
AskSave:
    print $1E
    confirm_menu $337, NotSave - YounPhone, NotSave - YounPhone
    save
    print $1B
    confirm_menu $338, Sleep - YounPhone, ContinueGame - YounPhone
ContinueGame:
    print $1D
    print $13
    return
Sleep:
    print $1C
    print $13
    reboot
NotSave:
    print $21
    print $13
    return
PhoneLessCash:
    print $365
PhoneSubExit:
    return

ReinWeaponClerk:
    npc WALK_NPC, $200, $6D00, DOWN, ReceptionistAnim

    check_action TALK, ReinWeaponExit - ReinWeaponClerk
    print $38B
ReinWeaponRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, ReinWeaponList - ReinWeaponClerk
    clear_flag FLAG00|BIT7
ReinWeaponList:
    item_list Bomb, LaserBeam, PlasmaBeam, EMPTY, ReinWeaponRefuse - ReinWeaponClerk
    check_flag FLAG00|BIT7, ReinWeaponBuy - ReinWeaponClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
ReinWeaponBuy:
    pay ReinWeaponLess - ReinWeaponClerk
    print $23A
    confirm @NotConfirm - ReinWeaponClerk
    print $309
    play SOUND2, $B
    cash
    add_item ReinWeaponExit - ReinWeaponClerk
    print $3E3
    confirm @StopBuying - ReinWeaponClerk
    jump ReinWeaponRepeat - ReinWeaponClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get ReinWeaponExit - ReinWeaponClerk
ReinWeaponRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
ReinWeaponLess:
    print $33A
ReinWeaponExit:
    end_script


off_118DC5:
    .word MerMallDown4, EllMallDown2, EllMallUp3, ReinStationOut, UnionStationOut, SnowStationOut, SpookStationOut
    .word YounStationOut, MerVarietyClerk, EllFoodsClerk, UnionStationNPC, SnowStationNPC1, SnowStationNPC2
    .word ReinStationNPC, YounStationClerk, UnionStationClerk, ReinStationClerk, SpookStationClerk, SnowStationClerk, 0

MerMallDown4:
    entrance STAIRS, $80, $3540, LEFT, MUSIC_SAME, $80, $2580, RIGHT

EllMallDown2:
    entrance STAIRS, $C080, $2540, LEFT, MUSIC_SAME, $B880, $2580, RIGHT

EllMallUp3:
    entrance STAIRS, $C040, $2580, LEFT, MUSIC_SAME, $B8C0, $F940, RIGHT

ReinStationOut:
    entrance DOOR, $9840, $F100, UP, MUSIC_6, $8040, $CFC0, DOWN

UnionStationOut:
    entrance DOOR, $A440, $F100, UP, MUSIC_6, $5040, $53C0, DOWN

SnowStationOut:
    entrance DOOR, $B440, $F100, UP, MUSIC_a, $D780, $F8C0, DOWN

SpookStationOut:
    entrance DOOR, $A440, $F900, UP, MUSIC_6, $AA40, $CFC0, DOWN

YounStationOut:
    entrance DOOR, $B440, $F900, UP, MUSIC_8, $BA40, $67C0, DOWN

MerVarietyClerk:
    npc WALK_NPC, $200, $3500, DOWN, ServicemanAnim

    check_action TALK, MerVarietyExit - MerVarietyClerk
    print $306
MerVarietyRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, MerVarietyList - MerVarietyClerk
    clear_flag FLAG00|BIT7
MerVarietyList:
    item_list Ruler, StunGun, Rope, RepelRing, MerVarietyRefuse - MerVarietyClerk
    buying_item PhoneCard, MerVarCard - MerVarietyClerk
    print $307
    clear_flag FLAG00|BIT7
    end_script
MerVarCard:
    check_flag FLAG00|BIT7, MerVarietyBuy - MerVarietyClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
MerVarietyBuy:
    pay MerVarietyLess - MerVarietyClerk
    print $23A
    confirm @NotConfirm - MerVarietyClerk
    print $309
    play SOUND2, $B
    cash
    add_item MerVarietyExit - MerVarietyClerk
    print $3E3
    confirm @StopBuying - MerVarietyClerk
    jump MerVarietyRepeat - MerVarietyClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get MerVarietyExit - MerVarietyClerk
MerVarietyRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
MerVarietyLess:
    print $33B
MerVarietyExit:
    end_script


EllFoodsClerk:
    npc WALK_NPC, $C200, $2500, DOWN, ReceptionistAnim

    check_action TALK, EllFoodsExit - EllFoodsClerk
    print $306
EllFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, EllFoodsList - EllFoodsClerk
    clear_flag FLAG00|BIT7
EllFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, BerryTofu, EllFoodsRefuse - EllFoodsClerk
    check_flag FLAG00|BIT7, EllFoodsBuy - EllFoodsClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
EllFoodsBuy:
    pay EllFoodsLess - EllFoodsClerk
    print $23A
    confirm @NotConfirm - EllFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item EllFoodsExit - EllFoodsClerk
    print $3E3
    confirm @StopBuying - EllFoodsClerk
    jump EllFoodsRepeat - EllFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get EllFoodsExit - EllFoodsClerk
EllFoodsRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
EllFoodsLess:
    print $33A
EllFoodsExit:
    end_script


UnionStationNPC:
    npc WALK_NPC, $A340, $F1C0, DOWN, ReceptionistAnim

    check_action TALK, UnionStationNPCExit - UnionStationNPC
    print $12D
UnionStationNPCExit:
    end_script

SnowStationNPC1:
    .import stru_1582A8

    npc WALK_NPC, $B440, $F280, UP, stru_1582A8

    check_action TALK, SnowStationNPC1Exit - SnowStationNPC1
    print $17C
SnowStationNPC1Exit:
    end_script

SnowStationNPC2:
    .import stru_1581A8

    npc WALK_NPC, $B400, $F280, RIGHT, stru_1581A8

    check_action TALK, SnowStationNPC2Exit - SnowStationNPC2
    print $139
SnowStationNPC2Exit:
    end_script

ReinStationNPC:
    npc STAT_NPC2, $9940, $F1C0, LEFT, stru_158288

    hide FLAG05|BIT0
    check_action TALK, $28
    print $373
    confirm $25
    print $374
    find_item EMPTY, $21
    play SOUND2, 6
    select_item Hat
    add_item $28
    move byte_118F11
    set_flag FLAG05|BIT0
    end_script
    print $249
    end_script
    print $375
    end_script
byte_118F11:
    .byte $76, 4, $70, 2, 0

YounStationClerk:
    npc NPC_1, $B740, $FA40, DOWN, ReceptionistAnim

    check_action TALK, YounStationClerkExit - YounStationClerk
    print $2C1
YounStationClerkExit:
    end_script

UnionStationClerk:
    npc NPC_1, $A740, $F240, LEFT, ReceptionistAnim

    check_action TALK, UnionStationExit - UnionStationClerk
    check_flag FLAG0E|BIT6, UnRock - UnionStationClerk
    jump UnBuyTicket - UnionStationClerk
UnRock:
    print $239
    end_script
UnBuyTicket:
    print $12F
    item_list Reindeer2, Spookane2, Snowman2, EMPTY, UnRefuse - UnionStationClerk
    total_price
    print $134
    confirm UnRefuse - UnionStationClerk
    pay UnLessMoney - UnionStationClerk
    train_ride
    end_script
UnLessMoney:
    print $23F
    end_script
UnRefuse:
    print $76
UnionStationExit:
    end_script

ReinStationClerk:
    npc NPC_1, $9B40, $F240, LEFT, ReceptionistAnim

    check_action TALK, ReinStationExit - ReinStationClerk
    check_flag FLAG0E|BIT6, ReinRock - ReinStationClerk
    jump ReinBuyTicket - ReinStationClerk
ReinRock:
    print $239
    end_script
ReinBuyTicket:
    print $12F
    item_list Union1, Spookane3, Snowman3, EMPTY, ReinRefuse - ReinStationClerk
    total_price
    print $134
    confirm ReinRefuse - ReinStationClerk
    pay ReinLessMoney - ReinStationClerk
    train_ride
    end_script
ReinLessMoney:
    print $23F
    end_script
ReinRefuse:
    print $76
ReinStationExit:
    end_script


SpookStationClerk:
    npc NPC_1, $A740, $FA40, LEFT, ReceptionistAnim

    check_action TALK, SpookStationExit - SpookStationClerk
    check_flag FLAG0E|BIT6, SpookRock - SpookStationClerk
    jump SpookBuyTicket - SpookStationClerk
SpookRock:
    print $239
    end_script
SpookBuyTicket:
    print $12F
    item_list Union2, Reindeer3, Snowman4, EMPTY, SpookRefuse - SpookStationClerk
    total_price
    print $134
    confirm SpookRefuse - SpookStationClerk
    pay SpookLessMoney - SpookStationClerk
    train_ride
    end_script
SpookLessMoney:
    print $23F
    end_script
SpookRefuse:
    print $76
SpookStationExit:
    end_script


SnowStationClerk:
    npc NPC_1, $B740, $F240, LEFT, ReceptionistAnim

    check_action TALK, SnowStationExit - SnowStationClerk
    check_flag FLAG0E|BIT6, SnowRock - SnowStationClerk
    jump SnowBuyTicket - SnowStationClerk
SnowRock:
    print $239
    end_script
SnowBuyTicket:
    print $17A
    print $12F
    item_list Union3, Reindeer4, Spookane4, EMPTY, SnowRefuse - SnowStationClerk
    total_price
    print $134
    confirm SnowRefuse - SnowStationClerk
    pay SnowLessMoney - SnowStationClerk
    train_ride
    end_script
SnowLessMoney:
    print $23F
    end_script
SnowRefuse:
    print $76
SnowStationExit:
    end_script


Malls:
    .word PodMallOut, PodMallUp1, PodMallDown2, PodMallUp3, PodMallDown3, PodMallUp4, PodMallDown4, MerMallOut
    .word MerMallUp1, ReinMallOut, ReinMallUp1, EllMallOut, EllMallUp1, SnowStoreOut, EllPhone, MerPhone, ReinPhone
    .word PodPhone, EllATM, MerATM, ReinATM, PodATM, EllServiceClerk, PodServiceNPC, MerServiceClerk, ReinServiceClerk
    .word PodSportsClerk, PodFoodsClerk, PodPetClerk, PodPetNPC, SnowStoreClerk, SnowATM, 0

PodMallOut:
    entrance DOOR, $380, $4580, RIGHT, MUSIC_6, $3080, $6C40, DOWN

PodMallUp1:
    entrance STAIRS, $40, $4580, LEFT, MUSIC_SAME, $8C0, $3D40, RIGHT

PodMallDown2:
    entrance STAIRS, $7880, $2540, LEFT, MUSIC_SAME, $880, $3D80, RIGHT

PodMallUp3:
    entrance STAIRS, $7840, $2580, LEFT, MUSIC_SAME, $88C0, $2540, RIGHT

PodMallDown3:
    entrance STAIRS, $8880, $2540, LEFT, MUSIC_SAME, $7880, $2580, RIGHT

PodMallUp4:
    entrance STAIRS, $8840, $2580, LEFT, MUSIC_SAME, $98C0, $2540, RIGHT

PodMallDown4:
    entrance STAIRS, $9880, $2540, LEFT, MUSIC_SAME, $8880, $2580, RIGHT

MerMallOut:
    entrance DOOR, $380, $2D80, RIGHT, MUSIC_6, $5880, $7340, DOWN

MerMallUp1:
    entrance STAIRS, $40, $2D80, LEFT, MUSIC_SAME, $A8C0, $2540, RIGHT

ReinMallOut:
    entrance DOOR, $7380, $2580, RIGHT, MUSIC_6, $6E80, $EF40, DOWN

ReinMallUp1:
    entrance STAIRS, $7040, $2580, LEFT, MUSIC_SAME, $8C0, $4D40, RIGHT

EllMallOut:
    entrance DOOR, $B80, $5580, RIGHT, MUSIC_6, $C580, $4640, DOWN

EllMallUp1:
    entrance STAIRS, $840, $5580, LEFT, MUSIC_SAME, $B8C0, $2540, RIGHT

SnowStoreOut:
    entrance DOOR, $A380, $2580, RIGHT, MUSIC_a, $E240, $F900, DOWN

EllPhone:
    unknown_18 $A80, $54C0, UP

    call YounPhone, PhoneSub - YounPhone
    end_script

MerPhone:
    unknown_18 $280, $2CC0, UP

    call YounPhone, PhoneSub - YounPhone
    end_script

ReinPhone:
    unknown_18 $7280, $24C0, UP

    call YounPhone, PhoneSub - YounPhone
    end_script

PodPhone:
    unknown_18 $280, $44C0, UP

    call YounPhone, PhoneSub - YounPhone
    end_script

EllATM:
    unknown_18 $900, $54C0, UP

    call YounATM, ATMSub - YounATM
    end_script

MerATM:
    unknown_18 $100, $2CC0, UP

    call YounATM, ATMSub - YounATM
    end_script

ReinATM:
    unknown_18 $7100, $24C0, UP

    call YounATM, ATMSub - YounATM
    end_script

PodATM:
    unknown_18 $100, $44C0, UP

    call YounATM, ATMSub - YounATM
    end_script

EllServiceClerk:
    npc NPC_1, $9C0, $5500, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script

PodServiceNPC:
    npc NPC_1, $1C0, $4500, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script

MerServiceClerk:
    npc NPC_1, $1C0, $2D00, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script

ReinServiceClerk:
    npc NPC_1, $71C0, $2500, DOWN, ServicemanAnim

    call ReinServiceClerk, Service - ReinServiceClerk
    end_script
Service:
    check_action TALK, ServiceExit - ReinServiceClerk
    print $58
    confirm ServiceNo - ReinServiceClerk
    print $229
    choose ServiceNo - ReinServiceClerk
    unsellable Unsell - ReinServiceClerk
    percent 50
    not_less 10, CantBuy - ReinServiceClerk
    print $22A
    confirm ServiceRefuse - ReinServiceClerk
    get ServiceHeavy - ReinServiceClerk
    cash
    print $5B
    return
ServiceHeavy:
    add_item ServiceExit - ReinServiceClerk
    print $249
    return
ServiceRefuse:
    add_item ServiceExit - ReinServiceClerk
ServiceNo:
    print $5A
    print $5B
    return
CantBuy:
    add_item ServiceExit - ReinServiceClerk
Unsell:
    print $33E
ServiceExit:
    return

PodSportsClerk:
    npc WALK_NPC, $7A00, $2500, DOWN, ServicemanAnim

    check_action TALK, PodSportsExit - PodSportsClerk
    print $306
PodSportsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, PodSportsList - PodSportsClerk
    clear_flag FLAG00|BIT7
PodSportsList:
    item_list PlasticBat, Slingshot, WoodenBat, EMPTY, PodSportsRefuse - PodSportsClerk
    check_flag FLAG00|BIT7, PodSportsBuy - PodSportsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
PodSportsBuy:
    pay PodSportsLess - PodSportsClerk
    print $23A
    confirm @NotConfirm - PodSportsClerk
    print $309
    play SOUND2, $B
    cash
    add_item PodSportsExit - PodSportsClerk
    print $3E3
    confirm @StopBuying - PodSportsClerk
    jump PodSportsRepeat - PodSportsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get PodSportsExit - PodSportsClerk
PodSportsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
PodSportsLess:
    print $33B
PodSportsExit:
    end_script


PodFoodsClerk:
    npc WALK_NPC, $8A00, $2500, DOWN, ServicemanAnim

    check_action TALK, PodFoodsExit - PodFoodsClerk
    print $306
PodFoodsRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, PodFoodsList - PodFoodsClerk
    clear_flag FLAG00|BIT7
PodFoodsList:
    item_list OrangeJuice, Bread, SportsDrink, EMPTY, PodFoodsRefuse - PodFoodsClerk
    check_flag FLAG00|BIT7, PodFoodsBuy - PodFoodsClerk
    print $33C
    clear_flag FLAG00|BIT7
    end_script
PodFoodsBuy:
    pay PodFoodsLess - PodFoodsClerk
    print $23A
    confirm @NotConfirm - PodFoodsClerk
    print $309
    play SOUND2, $B
    cash
    add_item PodFoodsExit - PodFoodsClerk
    print $3E3
    confirm @StopBuying - PodFoodsClerk
    jump PodFoodsRepeat - PodFoodsClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get PodFoodsExit - PodFoodsClerk
PodFoodsRefuse:
    print $308
    clear_flag FLAG00|BIT7
    end_script
PodFoodsLess:
    print $33B
PodFoodsExit:
    end_script


PodPetClerk:
    npc NPC_1, $9A00, $2500, UP, ReceptionistAnim

    check_action TALK, PodPetExit - PodPetClerk
    check_flag FLAG01|BIT3, EscapeAnimals - PodPetClerk
    print $4D
    end_script
EscapeAnimals:
    check_flag FLAG08|BIT5, NoCanary - PodPetClerk
    print $53
    end_script
NoCanary:
    print $4D
    print $4E
    confirm BuyRefuse - PodPetClerk
    select_item CanaryChick
    print $4F
    confirm Trade - PodPetClerk
    pay NoMoney - PodPetClerk
    find_item EMPTY, NoEmty - PodPetClerk
    play SOUND2, $B
    cash
    select_item CanaryChick
    add_item 0
    set_flag FLAG08|BIT5
    print $51
    end_script
NoEmty:
    select_item CanaryChick
    get PodPetExit - PodPetClerk
    print $23B
    end_script
NoMoney:
    print $23D
    end_script
Trade:
    print $52
    find_item EMPTY, Shame - PodPetClerk
    play SOUND2, $B
    cash
    select_item CanaryChick
    add_item 0
    set_flag FLAG08|BIT5
    end_script
Shame:
    print $24A
    end_script
BuyRefuse:
    print $50
PodPetExit:
    end_script


PodPetNPC:
    npc WALK_NPC, $9A80, $2500, DOWN, ServicemanAnim

    check_action TALK, PetNPCExit - PodPetNPC
    check_flag FLAG01|BIT2, ContolAnimals - PodPetNPC
    print $55
    confirm PetRefuse - PodPetNPC
    print $56
    end_script
PetRefuse:
    print $57
    end_script
ContolAnimals:
    print $54
PetNPCExit:
    end_script

SnowStoreClerk:
    npc WALK_NPC, $A200, $2500, DOWN, stru_1581A8

    check_action TALK, SnowStoreExit - SnowStoreClerk
    print $306
SnowStoreRepeat:
    set_flag FLAG00|BIT7
    find_item EMPTY, SnowStoreList - SnowStoreClerk
    clear_flag FLAG00|BIT7
SnowStoreList:
    item_list Bread, Mouthwash, LifeUpCream, FryingPan, SnowStoreRefuse - SnowStoreClerk
    check_flag FLAG00|BIT7, SnowStoreBuy - SnowStoreClerk
    print $23B
    clear_flag FLAG00|BIT7
    end_script
SnowStoreBuy:
    pay SnowStoreLess - SnowStoreClerk
    print $23A
    confirm @NotConfirm - SnowStoreClerk
    print $309
    play SOUND2, $B
    cash
    add_item SnowStoreExit - SnowStoreClerk
    print $3E3
    confirm @StopBuying - SnowStoreClerk
    jump SnowStoreRepeat - SnowStoreClerk
@StopBuying:
    print $309
    end_script
@NotConfirm:
    get SnowStoreExit - SnowStoreClerk
SnowStoreRefuse:
    print $30A
    clear_flag FLAG00|BIT7
    end_script
SnowStoreLess:
    print $33A
SnowStoreExit:
    end_script


SnowATM:
    unknown_18 $A100, $24C0, UP

    call YounATM, ATMSub - YounATM
    end_script


off_119285:
    .word EllDoctorOut, EllHotelRoom2Out, ReinHotelDown1, ReinHotelRoom1In, ReinHotelRoom2In, ReinHotelUp2
    .word ReinHospitalRoom1Out, ReinHospitalRoom2Out, SpookDoctorOut, SpookHospitalDown, SpookHospitalRoom1In
    .word SpookHospitalRoom2In, SpookHospitalRoom1Out, SpookHospitalRoom2Out, SpookHotelRoom1Out
    .word SpookHotelRoom2Out, EllDoctor, SpookDoctor, 0

EllDoctorOut:
    entrance DOOR, $B780, $2580, RIGHT, MUSIC_SAME, $BD80, $FD00, DOWN

EllHotelRoom2Out:
    entrance DOOR, $9780, $2580, RIGHT, MUSIC_SAME, $7E40, $2500, DOWN

ReinHotelDown1:
    entrance STAIRS, $440, $3580, LEFT, MUSIC_SAME, $C0, $4140, RIGHT

ReinHotelRoom1In:
    entrance DOOR, $580, $34C0, UP, MUSIC_SAME, $740, $3D80, LEFT

ReinHotelRoom2In:
    entrance DOOR, $640, $34C0, UP, MUSIC_SAME, $740, $4580, LEFT

ReinHotelUp2:
    entrance STAIRS, $480, $3540, LEFT, MUSIC_SAME, $C80, $4580, RIGHT

ReinHospitalRoom1Out:
    entrance DOOR, $780, $2580, RIGHT, MUSIC_SAME, $580, $5500, DOWN

ReinHospitalRoom2Out:
    entrance DOOR, $780, $2D80, RIGHT, MUSIC_SAME, $640, $5500, DOWN

SpookDoctorOut:
    entrance DOOR, $780, $4D80, RIGHT, MUSIC_SAME, $9600, $F500, DOWN

SpookHospitalDown:
    entrance STAIRS, $C40, $4D80, LEFT, MUSIC_SAME, $94C0, $F540, RIGHT

SpookHospitalRoom1In:
    entrance DOOR, $D80, $4CC0, UP, MUSIC_SAME, $F40, $2580, LEFT

SpookHospitalRoom2In:
    entrance DOOR, $E40, $4CC0, UP, MUSIC_SAME, $F40, $2D80, LEFT

SpookHospitalRoom1Out:
    entrance DOOR, $F80, $2580, RIGHT, MUSIC_SAME, $D80, $4D00, DOWN

SpookHospitalRoom2Out:
    entrance DOOR, $F80, $2D80, RIGHT, MUSIC_SAME, $E40, $4D00, DOWN

SpookHotelRoom1Out:
    entrance DOOR, $F80, $3D80, RIGHT, MUSIC_SAME, $D80, $3500, DOWN

SpookHotelRoom2Out:
    entrance DOOR, $7780, $2580, RIGHT, MUSIC_SAME, $E40, $3500, DOWN

EllDoctor:
    .import DoctorAnim

    npc NPC_1, $B500, $2500, DOWN, DoctorAnim

    price 92
    call EllDoctor, EllDoctorCall - EllDoctor
    end_script
EllDoctorCall:
    check_action TALK, EllDoctorExit - EllDoctor
    print $30D
    confirm EllDoctorRefuse - EllDoctor
    pay EllDoctorLess - EllDoctor
    sel_char 1, EllDoctorChar - EllDoctor
    choose_char EllDoctorChoose1 - EllDoctor
    jump EllDoctorStatus - EllDoctor
EllDoctorChar:
    sel_char 0, EllDoctorStatus - EllDoctor
EllDoctorStatus:
    check_status FAINTED, EllDoctorFainted - EllDoctor
    max_hp EllDoctorHeal - EllDoctor
    check_status 3, EllDoctorHeal - EllDoctor
    print $30F
    get EllDoctorExit - EllDoctor
    return
EllDoctorHeal:
    heal $FF
    max_hp EllDoctorHeal - EllDoctor
    clear_status $FC
    cash
    play SOUND2, 7
    print $310
    return
EllDoctorChoose1:
    get EllDoctorExit - EllDoctor
EllDoctorRefuse:
    print $30E
    return
EllDoctorFainted:
    get EllDoctorExit - EllDoctor
    print $219
    return
EllDoctorLess:
    print $23F
EllDoctorExit:
    return

SpookDoctor:
    npc NPC_1, $500, $4D00, DOWN, DoctorAnim

    price 78
    call EllDoctor, EllDoctorCall - EllDoctor
    end_script


off_119385:
    .word PodCityHallOut, PodCityHallUp, PodCityHallDown, EllHospitalDown, EllHospitalRoom1In, EllHospitalRoom2In
    .word PodCityHallNPC, PodMayor, PodMayorSecretary, PippiMayor, 0

PodCityHallOut:
    entrance DOOR, $AF80, $2580, RIGHT, MUSIC_6, $2EC0, $6C40, DOWN

PodCityHallUp:
    entrance STAIRS, $AC80, $2540, LEFT, MUSIC_SAME, $CC80, $2580, RIGHT

PodCityHallDown:
    unknown_18 $CC40, $2580, LEFT

    check_view PodCityHallExit - PodCityHallDown
    approach PodCityHallExit - PodCityHallDown
    check_flag FLAG05|BIT3, PodDown - PodCityHallDown
    clear_flag FLAG05|BIT3
    set_flag FLAG05|BIT2
PodDown:
    play SOUND1, 8
    teleport $ACC0, $2542
PodCityHallExit:
    end_script

EllHospitalDown:
    entrance STAIRS, $D440, $2580, LEFT, MUSIC_SAME, $BCC0, $FD40, RIGHT

EllHospitalRoom1In:
    entrance DOOR, $D580, $24C0, UP, MUSIC_SAME, $B40, $4980, LEFT

EllHospitalRoom2In:
    entrance DOOR, $D640, $24C0, UP, MUSIC_SAME, $B40, $5180, LEFT

PodCityHallNPC:
    npc NPC_1, $AE00, $2500, DOWN, stru_158328

    check_action TALK, ExitCityHallNPC - PodCityHallNPC
    check_flag FLAG01|BIT2, CityHallMsg - PodCityHallNPC
    print $4B
    end_script
CityHallMsg:
    print $296
ExitCityHallNPC:
    end_script

PodMayor:
    .import MayorAnim

    npc NPC_1, $CE40, $2540, DOWN, MayorAnim

    check_action TALK, Exit1Mayor - PodMayor
    check_char 5, Alone - PodMayor
    check_status FAINTED, Rest - PodMayor
    jump CheckChar1 - PodMayor
Rest:
    print $270
    move byte_119471
    end_script
CheckChar1:
    check_char 1, Alone - PodMayor
    check_status FAINTED, Char1Fainted - PodMayor
    price 100
    print $43
    play SOUND2, 6
    get Exit1Mayor - PodMayor
    cash
    set_flag FLAG01|BIT4
    move byte_119465
    print $46
    confirm Anyway - PodMayor
Anyway:
    print $47
    set_flag FLAG0B|BIT1
    set_flag FLAG01|BIT4
    another 9
    move byte_119470
    end_script
Char1Fainted:
    print $271
    move byte_119471
    end_script
Alone:
    check_flag FLAG01|BIT2, Hero - PodMayor
    print $4A
    move byte_119471
    end_script
Hero:
    check_flag FLAG01|BIT4, TownHelp - PodMayor
    print $49
    move byte_119471
    end_script
TownHelp:
    check_flag FLAG0B|BIT2, Child - PodMayor
    print $40
    move byte_119471
    end_script
Child:
    print $40
    print $41
    confirm Anyway2 - PodMayor
Anyway2:
    print $42
    print $49
    move byte_119471
    set_flag FLAG0B|BIT2
Exit1Mayor:
    end_script
byte_119465:
    .byte $36, 2, $34, 2, $32, 3, $72, 1, $F6, 6, 3
byte_119470:
    .byte 0
byte_119471:
    .byte $F4, 1, 0

PodMayorSecretary:
    npc NPC_1, $CD00, $2500, DOWN, stru_158348

    check_action TALK, PodMayorSecretaryExit - PodMayorSecretary
    check_flag FLAG01|BIT2, GiveKey - PodMayorSecretary
    print $273
    end_script
GiveKey:
    check_flag FLAG0B|BIT0, DontLose - PodMayorSecretary
    print $4C
FindEmpty:
    find_item EMPTY, OtherTime - PodMayorSecretary
    play SOUND2, 6
    select_item ZooKey
    add_item PodMayorSecretaryExit - PodMayorSecretary
    set_flag FLAG0B|BIT0
    clear_flag FLAG04|BIT6
    end_script
OtherTime:
    print $24B
    end_script
DontLose:
    check_flag FLAG0B|BIT1, Abbot - PodMayorSecretary
    print $48
    jump FindEmpty - PodMayorSecretary
Abbot:
    print $295
PodMayorSecretaryExit:
    end_script

PippiMayor:
    npc STAT_NPC2, $CE00, $25C0, RIGHT, stru_158080

    show FLAG05|BIT3
    check_keypress ZombieAsk - PippiMayor
    get_char_name 5
    find_item2 Crumbs, RemoveChar - PippiMayor
    select_item Crumbs
    remove_item PippiMayorExit - PippiMayor
RemoveChar:
    set_flag FLAG05|BIT3
    remove_char 5, PippiMayorExit - PippiMayor
    move byte_1194CE
    end_script
ZombieAsk:
    check_action TALK, PippiMayorExit - PippiMayor
    print $6A
    confirm Cutie - PippiMayor
Cutie:
    print $6C
PippiMayorExit:
    end_script
byte_1194CE:
    .byte $70, 1, $72, 2, $F6, 1, 0


off_1194D5:
    .word TwinkleRoom10Out, SpookTunnelOut, SnowTunnelOut, IslandHouseIn, ElevatorDown, TwinklePiano
    .word TwinklePianoSide, TowerView, Telescope1, Telescope2, Rocket, LandingRocket1, LandingRocket2
    .word LandRocket, TakingOffRocket, IslandRocket, IslandRocketOff, Died, 0

TwinkleRoom10Out:
    entrance DOOR, $DF80, $2580, RIGHT, MUSIC_SAME, $C280, $F500, DOWN

SpookTunnelOut:
    entrance DOOR, $200, $8280, LEFT, MUSIC_6, $B440, $CFC0, LEFT

SnowTunnelOut:
    entrance DOOR, $1DC0, $8280, RIGHT, MUSIC_a, $D080, $F200, DOWN

IslandHouseIn:
    entrance DOOR, $F440, $76C0, UP, MUSIC_f, $FB40, $2180, LEFT

ElevatorDown:
    entrance DOOR, $EC0, $5AC0, UP, MUSIC_SAME, $A00, $3500, DOWN

TwinklePiano:
    entity $DD00, $2500, UP, PianoAnim
    end_script

TwinklePianoSide:
    entity $DD40, $2500, UP, PianoSideAnim
    end_script

TowerView:
    unknown_18 $640, $5A80, UP

    check_action CHECK, TowerViewExit - TowerView
    print $37F
    print $380
TowerViewExit:
    end_script

Telescope1:
    unknown_18 $C40, $5A80, UP

    check_action CHECK, Telescope1Exit - Telescope1
    print $37F
    print $380
Telescope1Exit:
    end_script

Telescope2:
    unknown_18 $940, $5A80, UP

    check_action CHECK, Telescope2Exit - Telescope2
    check_flag FLAG0F|BIT6, RocketView - Telescope2
    print $37F
    print $380
    end_script
RocketView:
    print $37F
    print $381
    another $A
Telescope2Exit:
    end_script

Rocket:
    .import FarRocketAnim

    unknown_1D $A40, $5980, UP, FarRocketAnim

    show FLAG00|BIT6
    check_keypress $11
    move LaunchRocket
    wait 90
    another $B
    end_script
LaunchRocket:
    .byte $F0, 1, $78, 2, 0

LandingRocket1:
    .import RocketAnim

    unknown_1D $A40, $5900, UP, RocketAnim

    show FLAG00|BIT6
    check_keypress LandingRocket1Exit - LandingRocket1
    another $C
    play SOUND1, 9
    move byte_11958D
LandingRocket1Exit:
    end_script
byte_11958D:
    .byte $7C, 8, 0

LandingRocket2:
    .import RocketEjectionAnim

    unknown_1D $A40, $5900, UP, RocketEjectionAnim

    show FLAG00|BIT6
    check_keypress LandingRocket2Exit - LandingRocket2
    move byte_1195A3
    set_flag FLAG0F|BIT6
    move byte_1195A6
LandingRocket2Exit:
    end_script
byte_1195A3:
    .byte $7C, 8, 3
byte_1195A6:
    .byte $F0, 1, 0

LandRocket:
    unknown_2D $A40, $5B00, UP, RocketAnim

    show FLAG0F|BIT6
    check_action CHECK, CloseRocket - LandRocket
    print $3BA
    end_script
CloseRocket:
    approach LandRocketExit - LandRocket
    print $19C
    rocket
    end_script
    another CloseRocket - LandRocket
    play SOUND1, 9
    move byte_1195C6
LandRocketExit:
    end_script
byte_1195C6:
    .byte $78, 7, 0

TakingOffRocket:
    unknown_1D $A40, $5B00, UP, RocketEjectionAnim

    show FLAG00|BIT6
    check_keypress TakingOffRocketExit - TakingOffRocket
    move byte_1195E1
    get_off 0
    teleport $F406, $77C4
    move byte_1195E4
TakingOffRocketExit:
    end_script
byte_1195E1:
    .byte $78, 7, 3
byte_1195E4:
    .byte 0

IslandRocket:
    unknown_2D $F400, $77C0, UP, RocketAnim

    show FLAG0F|BIT6
    check_action CHECK, Close - IslandRocket
    print $3BA
    end_script
Close:
    approach IslandRocketExit - IslandRocket
    print $19C
    rocket
    end_script
    another $10
    play SOUND1, 9
    move byte_119602
IslandRocketExit:
    end_script
byte_119602:
    .byte $78, 7, 0

IslandRocketOff:
    unknown_1D $F400, $77C0, UP, RocketEjectionAnim

    show FLAG00|BIT6
    check_keypress IslandRocketOffExit - IslandRocketOff
    move byte_11961D
    get_off 0
    teleport $A4F, $5B04
    move byte_119620
IslandRocketOffExit:
    end_script
byte_11961D:
    .byte $78, 7, 3
byte_119620:
    .byte 0

Died:
    unknown_18 $E140, $2580, UP

    approach DiedExit - Died
    check_flag FLAG18|BIT7, PlayAgain - Died
    clear_flag FLAG18|BIT7
    clear_flag FLAG1F|BIT1
    set_flag FLAG18|BIT6
    set_flag FLAG12|BIT4
PlayAgain:
    print $20E
    confirm_menu $338, SavedEarlier - Died, SavedEarlier - Died
    jump Fighting - Died
SavedEarlier:
    print $3D8
    confirm Fighting - Died
    print $210
    reboot
Fighting:
    print $20F
    teleport_save
DiedExit:
    end_script


off_11964A:
    .word EllHotelDown, EllHotelRoom1In, EllHotelRoom2In, EllHotelRoom1Out, ReinHotelRoom1Out, ReinHotelRoom2Out
    .word ReinHotelDown2, YounHotelRoom1Out, YounHotelRoom2Out, SpookHotelDown, SpookHotelRoom1In, SpookHotelRoom2In
    .word ReinHospitalDown, ReinHospitalRoom1In, ReinHospitalRoom2In, EllHotelGuest1, EllHotelGuest2
    .word ReinHotelGuest1, ReinHotelGuest2, ReinHotelGuest3, ReinHotelGuest4, ReinHotelGuest5, 0

EllHotelDown:
    entrance STAIRS, $7C40, $2580, LEFT, MUSIC_SAME, $ACC0, $FD40, RIGHT

EllHotelRoom1In:
    entrance DOOR, $7D80, $24C0, UP, MUSIC_SAME, $8F40, $2580, LEFT

EllHotelRoom2In:
    entrance DOOR, $7E40, $24C0, UP, MUSIC_SAME, $9740, $2580, LEFT

EllHotelRoom1Out:
    entrance DOOR, $8F80, $2580, RIGHT, MUSIC_SAME, $7D80, $2500, DOWN

ReinHotelRoom1Out:
    entrance DOOR, $780, $3D80, RIGHT, MUSIC_SAME, $580, $3500, DOWN

ReinHotelRoom2Out:
    entrance DOOR, $780, $4580, RIGHT, MUSIC_SAME, $640, $3500, DOWN

ReinHotelDown2:
    entrance STAIRS, $C40, $4580, LEFT, MUSIC_SAME, $4C0, $3540, RIGHT

YounHotelRoom1Out:
    entrance DOOR, $8780, $2580, RIGHT, MUSIC_SAME, $ACC0, $F540, RIGHT

YounHotelRoom2Out:
    entrance DOOR, $6F80, $2580, RIGHT, MUSIC_SAME, $AC40, $F5C0, RIGHT

SpookHotelDown:
    entrance STAIRS, $C40, $3580, LEFT, MUSIC_SAME, $C0, $3940, RIGHT

SpookHotelRoom1In:
    entrance DOOR, $D80, $34C0, UP, MUSIC_SAME, $F40, $3D80, LEFT

SpookHotelRoom2In:
    entrance DOOR, $E40, $34C0, UP, MUSIC_SAME, $7740, $2580, LEFT

ReinHospitalDown:
    entrance STAIRS, $440, $5580, LEFT, MUSIC_SAME, $B4C0, $FD40, RIGHT

ReinHospitalRoom1In:
    entrance DOOR, $580, $54C0, UP, MUSIC_SAME, $740, $2580, LEFT

ReinHospitalRoom2In:
    entrance DOOR, $640, $54C0, UP, MUSIC_SAME, $740, $2D80, LEFT

EllHotelGuest1:
    npc WALK_NPC, $7EC0, $2580, RIGHT, stru_1582A8

    check_action TALK, EllHotelGuest1Exit - EllHotelGuest1
    print $2B5
EllHotelGuest1Exit:
    end_script

EllHotelGuest2:
    .import stru_1581E8

    npc WALK_NPC, $8D40, $25C0, RIGHT, stru_1581E8

    check_action TALK, EllHotelGuest2Exit - EllHotelGuest2
    print $358
EllHotelGuest2Exit:
    end_script

ReinHotelGuest1:
    .import stru_158288

    npc WALK_NPC, $580, $3DC0, DOWN, stru_158288

    check_action TALK, ReinHotelGuest1Exit - ReinHotelGuest1
    print $356
    sel_char 0, $10
    set_status FLU
ReinHotelGuest1Exit:
    end_script

ReinHotelGuest2:
    .import stru_158228

    npc WALK_NPC, $600, $4540, LEFT, stru_158228

    check_action TALK, ReinHotelGuest2Exit - ReinHotelGuest2
    print $357
ReinHotelGuest2Exit:
    end_script

ReinHotelGuest3:
    npc WALK_NPC, $D00, $4500, DOWN, stru_1581A8

    check_action TALK, ReinHotelGuest3Exit - ReinHotelGuest3
    print $2A9
ReinHotelGuest3Exit:
    end_script

ReinHotelGuest4:
    npc WALK_NPC, $E00, $4540, RIGHT, stru_158228

    check_action TALK, ReinHotelGuest4Exit - ReinHotelGuest4
    print $2B7
ReinHotelGuest4Exit:
    end_script

ReinHotelGuest5:
    .import stru_158248

    npc WALK_NPC, $F00, $45C0, DOWN, stru_158248

    check_action TALK, ReinHotelGuest5Exit - ReinHotelGuest5
    print $2B8
ReinHotelGuest5Exit:
    end_script


Twinkle1:
    .word TwinkleRoom12Out, TwinkleRoom1Out, TwinkleRoom2Out, TwinkleRoom7Out, TwinkleRoom8Out, TwinkleRoom3Out
    .word TwinkleRoom9Out, TwinkleRoom6Out, TwinkleRoom12NPC1, TwinkleRoom12NPC2, TwinkleRoom12NPC3, TwinkleRoom1NPC1
    .word TwinkleRoom1NPC2, TwinkleRoom1NPC3, TwinkleRoom2NPC1, TwinkleRoom2NPC2, TwinkleRoom2NPC3, TwinkleRoom7NPC1
    .word TwinkleRoom7NPC2, TwinkleRoom7NPC3, TwinkleRoom8NPC1, TwinkleRoom8NPC2, TwinkleRoom8NPC3, TwinkleRoom3NPC1
    .word TwinkleRoom3NPC2, TwinkleRoom3NPC3, TwinkleJanitor, 0

TwinkleRoom12Out:
    entrance DOOR, $F80, $5580, RIGHT, MUSIC_SAME, $C440, $F500, DOWN

TwinkleRoom1Out:
    entrance DOOR, $9B80, $F580, RIGHT, MUSIC_SAME, $BD80, $EE00, DOWN

TwinkleRoom2Out:
    entrance DOOR, $B380, $F580, RIGHT, MUSIC_SAME, $BE80, $EE00, DOWN

TwinkleRoom7Out:
    entrance DOOR, $B380, $ED80, RIGHT, MUSIC_SAME, $BF80, $F500, DOWN

TwinkleRoom8Out:
    entrance DOOR, $BB80, $F580, RIGHT, MUSIC_SAME, $C080, $F500, DOWN

TwinkleRoom3Out:
    entrance DOOR, $B380, $FD80, RIGHT, MUSIC_SAME, $BF40, $EE00, DOWN

TwinkleRoom9Out:
    entrance DOOR, $BB80, $FD80, RIGHT, MUSIC_SAME, $C180, $F500, DOWN

TwinkleRoom6Out:
    entrance DOOR, $C780, $F180, RIGHT, MUSIC_SAME, $C540, $EE00, DOWN

TwinkleRoom12NPC1:
    npc NPC_1, $D00, $5500, DOWN, stru_158388

    check_action TALK, TwinkleRoom12NPC1Exit - TwinkleRoom12NPC1
    print $2EF
    move byte_1197F3
TwinkleRoom12NPC1Exit:
    end_script

TwinkleRoom12NPC2:
    .import stru_1583A8

    npc NPC_1, $C80, $5580, DOWN, stru_1583A8

    check_action TALK, TwinkleRoom12NPC2Exit - TwinkleRoom12NPC2
    print $2F0
    move byte_1197F3
    sel_char 0, TwinkleRoom12NPC2Exit - TwinkleRoom12NPC2
    set_status FLU
TwinkleRoom12NPC2Exit:
    end_script

TwinkleRoom12NPC3:
    .import stru_1583C8

    npc NPC_1, $DC0, $5500, DOWN, stru_1583C8

    check_action TALK, $E
    print $2D5
    move byte_1197F3
    end_script
byte_1197F3:
    .byte $F4, 1, 0

TwinkleRoom1NPC1:
    npc WALK_NPC, $9980, $F5C0, RIGHT, stru_1583C8

    check_action TALK, TwinkleRoom1NPC1Exit - TwinkleRoom1NPC1
    check_char 3, Explosives - TwinkleRoom1NPC1
    check_status FAINTED, Matter - TwinkleRoom1NPC1
    print $105
    end_script
Matter:
    print $195
    end_script
Explosives:
    print $104
TwinkleRoom1NPC1Exit:
    end_script

TwinkleRoom1NPC2:
    npc WALK_NPC, $99C0, $F500, RIGHT, stru_1583A8

    check_action TALK, TwinkleRoom1NPC2Exit - TwinkleRoom1NPC2
    print $106
    confirm Ugly - TwinkleRoom1NPC2
    print $107
    end_script
Ugly:
    print $108
TwinkleRoom1NPC2Exit:
    end_script

TwinkleRoom1NPC3:
    npc WALK_NPC, $9B80, $F5C0, RIGHT, stru_1583C8

    check_action TALK, TwinkleRoom1NPC3Exit - TwinkleRoom1NPC3
    print $2D6
TwinkleRoom1NPC3Exit:
    end_script

TwinkleRoom2NPC1:
    npc WALK_NPC, $B040, $F5C0, DOWN, stru_1583C8

    check_action TALK, TwinkleRoom2NPC1Exit - TwinkleRoom2NPC1
    print $2FB
TwinkleRoom2NPC1Exit:
    end_script

TwinkleRoom2NPC2:
    .import stru_158428

    npc WALK_NPC, $B2C0, $F500, DOWN, stru_158428

    check_action TALK, TwinkleRoom2NPC2Exit - TwinkleRoom2NPC2
    print $2FE
TwinkleRoom2NPC2Exit:
    end_script

TwinkleRoom2NPC3:
    npc WALK_NPC, $B2C0, $F580, LEFT, stru_1583A8

    check_action TALK, TwinkleRoom2NPC3Exit - TwinkleRoom2NPC3
    print $2FF
TwinkleRoom2NPC3Exit:
    end_script

TwinkleRoom7NPC1:
    .import stru_1583E8

    npc WALK_NPC, $B200, $EDC0, RIGHT, stru_1583E8

    check_action TALK, TwinkleRoom7NPC1Exit - TwinkleRoom7NPC1
    print $109
    confirm DontTalk - TwinkleRoom7NPC1
DontTalk:
    print $10A
TwinkleRoom7NPC1Exit:
    end_script

TwinkleRoom7NPC2:
    npc WALK_NPC, $B180, $ED00, LEFT, stru_158428

    check_action TALK, TwinkleRoom7NPC2Exit - TwinkleRoom7NPC2
    print $10B
TwinkleRoom7NPC2Exit:
    end_script

TwinkleRoom7NPC3:
    npc WALK_NPC, $B0C0, $EDC0, DOWN, stru_158308

    check_action TALK, TwinkleRoom7NPC3Exit - TwinkleRoom7NPC3
    print $300
TwinkleRoom7NPC3Exit:
    end_script

TwinkleRoom8NPC1:
    .import stru_158448

    npc WALK_NPC, $B980, $F5C0, LEFT, stru_158448

    check_action TALK, TwinkleRoom8NPC1Exit - TwinkleRoom8NPC1
    print $10C
TwinkleRoom8NPC1Exit:
    end_script

TwinkleRoom8NPC2:
    npc WALK_NPC, $B900, $F5C0, DOWN, stru_158428

    check_action TALK, TwinkleRoom8NPC2Exit - TwinkleRoom8NPC2
    print $301
TwinkleRoom8NPC2Exit:
    end_script

TwinkleRoom8NPC3:
    npc WALK_NPC, $B9C0, $F500, RIGHT, stru_1583C8

    check_action TALK, TwinkleRoom8NPC3Exit - TwinkleRoom8NPC3
    print $302
TwinkleRoom8NPC3Exit:
    end_script

TwinkleRoom3NPC1:
    npc WALK_NPC, $B180, $FD00, LEFT, stru_158448

    check_action TALK, TwinkleRoom3NPC1Exit - TwinkleRoom3NPC1
    print $303
TwinkleRoom3NPC1Exit:
    end_script

TwinkleRoom3NPC2:
    npc WALK_NPC, $B1C0, $FDC0, RIGHT, stru_1583C8

    check_action TALK, TwinkleRoom3NPC2Exit - TwinkleRoom3NPC2
    print $304
TwinkleRoom3NPC2Exit:
    end_script

TwinkleRoom3NPC3:
    npc WALK_NPC, $B2C0, $FDC0, DOWN, stru_158308

    check_action TALK, TwinkleRoom3NPC3Exit - TwinkleRoom3NPC3
    print $305
TwinkleRoom3NPC3Exit:
    end_script

TwinkleJanitor:
    .import stru_158408

    npc NPC_1, $C5C0, $F140, RIGHT, stru_158408

    check_action TALK, TwinkleJanitorExit - TwinkleJanitor
    check_flag FLAG07|BIT3, Roof - TwinkleJanitor
    print $117
    end_script
Roof:
    print $10D
    confirm SomeTea - TwinkleJanitor
    print $269
    confirm RealLife - TwinkleJanitor
    print $10F
    confirm Young - TwinkleJanitor
    print $111
    end_script
Young:
    print $112
    confirm Respect - TwinkleJanitor
    print $114
    move byte_119902
    set_flag FLAG04|BIT4
    end_script
Respect:
    print $115
    end_script
RealLife:
    print $110
    end_script
SomeTea:
    print $117
TwinkleJanitorExit:
    end_script
byte_119902:
    .byte $34, 1, $32, 6, $12, 1, $14, 1, 3


off_11990B:
    .word TwinkleRoom11Out, TwinkleRoom4Out, RuinedRoomOut, TwinkleRoom5Out, EastHouseOut, EastHouseRoom1In
    .word EastHouseRoom1Out, EastHouseRoom2In, EastHouseRoom2Out, YounHouseOut, MysteriousTeacher, Exploder
    .word TwinkleNurse, EastHealer, TeddyHealer, LloydBack, SickTeddy, YounTom, YounGirl, MysticBaby
    .word TwinkleBox1, TwinkleBox2, 0

TwinkleRoom11Out:
    entrance DOOR, $9B80, $ED80, RIGHT, MUSIC_SAME, $C380, $F500, DOWN

TwinkleRoom4Out:
    entrance DOOR, $AB80, $F580, RIGHT, MUSIC_SAME, $C380, $EE00, DOWN

RuinedRoomOut:
    entrance DOOR, $E780, $2180, RIGHT, MUSIC_SAME, $C380, $EE00, DOWN

TwinkleRoom5Out:
    entrance DOOR, $A380, $FD80, RIGHT, MUSIC_SAME, $C480, $EE00, DOWN

EastHouseOut:
    entrance DOOR, $9780, $F980, RIGHT, MUSIC_6, $E940, $5E00, DOWN

EastHouseRoom1In:
    unknown_18 $9440, $F980, LEFT

    check_view EastHouseRoom1InExit - EastHouseRoom1In
    approach EastHouseRoom1InExit - EastHouseRoom1In
    check_flag FLAG11|BIT3, Teleport1 - EastHouseRoom1In
    teleport $BF5B, $F986
    end_script
Teleport1:
    teleport $BF52, $F986
EastHouseRoom1InExit:
    end_script

EastHouseRoom1Out:
    entrance DOOR, $BF80, $F980, RIGHT, MUSIC_12, $9480, $F980, RIGHT

EastHouseRoom2In:
    entrance DOOR, $BD80, $F8C0, UP, MUSIC_12, $BF40, $F180, LEFT

EastHouseRoom2Out:
    unknown_18 $BF80, $F180, RIGHT

    check_view EastHouseRoom2OutExit - EastHouseRoom2Out
    approach EastHouseRoom2OutExit - EastHouseRoom2Out
    check_flag FLAG11|BIT3, Teleport2 - EastHouseRoom2Out
    teleport $BD9B, $F904
    end_script
Teleport2:
    teleport $BD92, $F904
EastHouseRoom2OutExit:
    end_script

YounHouseOut:
    entrance DOOR, $D780, $2180, RIGHT, MUSIC_30, $A880, $7200, DOWN

MysteriousTeacher:
    npc STAT_NPC2, $A980, $F500, DOWN, PharmacistAnim

    show FLAG08|BIT1
    check_action TALK, MystTeachExit - MysteriousTeacher
    check_flag FLAG08|BIT4, Meet - MysteriousTeacher
    print $12C
    confirm NotLook - MysteriousTeacher
    jump RepeatBuy - MysteriousTeacher
Meet:
    print $126
    confirm NotLook - MysteriousTeacher
    print $128
RepeatBuy:
    set_flag FLAG00|BIT7
    find_item EMPTY, MystList - MysteriousTeacher
    clear_flag FLAG00|BIT7
MystList:
    set_flag FLAG08|BIT4
    item_list LastWeapon, SuperBomb, StkyMachine, RealRocket, MystRefuse - MysteriousTeacher
    check_flag FLAG00|BIT7, MystBuy - MysteriousTeacher
    print $23E
    print $12B
    clear_flag FLAG00|BIT7
    end_script
MystBuy:
    pay MystLess - MysteriousTeacher
    buying_item RealRocket, NotRocket - MysteriousTeacher
    print $21C
    print $223
    play SOUND1, 9
    print $175
    end_script
NotRocket:
    add_item MystTeachExit - MysteriousTeacher
    play SOUND2, 6
    print $12B
    end_script
MystLess:
    print $23D
    print $12B
    clear_flag FLAG00|BIT7
    end_script
MystRefuse:
    print $12B
    clear_flag FLAG00|BIT7
    end_script
NotLook:
    print $129
MystTeachExit:
    end_script

Exploder:
    npc STAT_NPC2, $AB00, $F580, RIGHT, AnimBoy2

    show FLAG04|BIT3
    approach $23
    move byte_119A2E
    print $172
    move byte_119A35
    add_char 3, $23
    set_flag FLAG0E|BIT1
    set_flag FLAG08|BIT1
    clear_flag FLAG04|BIT3
    teleport $E540, $2182
    function 3
    end_script
byte_119A2E:
    .byte $3E, 4, $36, 4, $F4, 1, 3
byte_119A35:
    .byte $F4, 1, $7A, 2, $F6, 1, 0

TwinkleNurse:
    .import NurseAnim

    npc WALK_NPC, $A100, $FD00, RIGHT, NurseAnim

    check_action TALK, TwinkleNurseExit - TwinkleNurse
    print $2EE
    play SOUND2, 7
    sel_char 0, TwinkleNurseExit - TwinkleNurse
    check_status FAINTED, NurseChar1 - TwinkleNurse
    heal 80
NurseChar1:
    sel_char 1, TwinkleNurseExit - TwinkleNurse
    check_status FAINTED, NurseChar2 - TwinkleNurse
    heal 80
NurseChar2:
    sel_char 2, TwinkleNurseExit - TwinkleNurse
    check_status FAINTED, TwinkleNurseExit - TwinkleNurse
    heal 80
TwinkleNurseExit:
    end_script

EastHealer:
    npc STAT_NPC2, $95C0, $F900, DOWN, PharmacistAnim

    hide FLAG11|BIT0
    check_action TALK, EastHealerExit - EastHealer
    check_flag FLAG0F|BIT0, EastHealerFirst - EastHealer
    print $207
    confirm_menu $265, EastHealerSleep - EastHealer, EastHealerRefuse - EastHealer
    print $243
    find_item EMPTY, EastHealerOtherTime - EastHealer
    select_item LifeUpCream
    add_item EastHealerExit - EastHealer
    play SOUND2, 6
    end_script
EastHealerOtherTime:
    print $24B
    end_script
EastHealerSleep:
    print $244
    sleep
EastHealerRefuse:
    print $346
    end_script
EastHealerFirst:
    print $204
    set_flag FLAG0F|BIT0
EastHealerExit:
    end_script

TeddyHealer:
    npc STAT_NPC2, $BD00, $F940, LEFT, PharmacistAnim

    show FLAG11|BIT0
    check_action TALK, TeddyUpdate - TeddyHealer
    print $CA
    end_script
TeddyUpdate:
    check_keypress TeddyHealerExit - TeddyHealer
    update_coor TeddyMove - TeddyHealer
    move ComeToLloyd
    print $206
    another $F
    move byte_119ABD
    end_script
TeddyMove:
    clear_flag FLAG11|BIT0
    move byte_119AC0
TeddyHealerExit:
    end_script
ComeToLloyd:
    .byte $72, 4, 3
byte_119ABD:
    .byte $F6, 1, 0
byte_119AC0:
    .byte $72, 3, 0

LloydBack:
    npc STAT_NPC2, $BE40, $F940, DOWN, AnimBoy2

    show FLAG11|BIT1
    check_action TALK, LloydReturn - LloydBack
    print $CA
    end_script
LloydReturn:
    check_keypress LloydBackExit - LloydBack
    move ComeToBed
    print $125
    move ComeToGroup
LloydChar:
    get_char_name 4
    select_char_item EMPTY, LloydStatus - LloydBack
    remove_item $2E
    buying_item Crumbs, LloydItem - LloydBack
    jump LloydChar - LloydBack
LloydItem:
    get_char_name 3
    add_item LloydStatus - LloydBack
    jump LloydChar - LloydBack
LloydStatus:
    get_char_name 3
    clear_status 0
LloydHeal:
    heal $FF
    max_hp LloydHeal - LloydBack
LloydPP:
    rec_pp $FF
    max_pp LloydPP - LloydBack
    play MUSIC, $21
    wait 180
    play MUSIC, $1B
    add_char 3, $62
    clear_flag FLAG11|BIT1
    another $E
    move byte_119B19
LloydBackExit:
    end_script
ComeToBed:
    .byte $75, 1, $76, 3, $77, 1, $F4, 1, 3
ComeToGroup:
    .byte $74, 1, $76, 1, 3
byte_119B19:
    .byte 0

SickTeddy:
    .import SickTeddyAnim

    unknown_1D $BCC0, $F940, UP, SickTeddyAnim

    show FLAG19|BIT7
    check_action CHECK, TeddyTalk - SickTeddy
    print $3DA
    end_script
TeddyTalk:
    check_action TALK, SickTeddyExit - SickTeddy
    check_flag FLAG11|BIT2, Beat - SickTeddy
    print $CA
    end_script
Beat:
    print $1F7
    set_flag FLAG11|BIT2
    another $E
SickTeddyExit:
    end_script

YounTom:
    .import AssistantAnim

    npc WALK_NPC, $D5C0, $2140, DOWN, AssistantAnim

    check_action TALK, YounTomExit - YounTom
    print $1BD
YounTomExit:
    end_script

YounGirl:
    .import GirlAnim

    npc WALK_NPC, $D640, $21C0, DOWN, GirlAnim

    check_action TALK, YounGirlExit - YounGirl
    print $1BE
YounGirlExit:
    end_script

MysticBaby:
    .import BabyAnim

    entity $D4C0, $2140, UP, BabyAnim

    check_action TALK, BabyPSI - MysticBaby
    print $1C0
    end_script
BabyPSI:
    check_psi 1, BabyExit - MysticBaby
    check_flag FLAG12|BIT3, TeachTeleport - MysticBaby
    print $3D2
    end_script
TeachTeleport:
    print $1C1
    teach_teleport
    set_flag FLAG1D|BIT1
    play MUSIC, $21
    wait 180
    set_flag FLAG12|BIT3
    play MUSIC, $30
BabyExit:
    end_script

TwinkleBox1:
    box $99C0, $ED00, UP, BoxAnim, Slingshot, $32

TwinkleBox2:
    box $9AC0, $EDC0, UP, BoxAnim, PlasticBat, $33


ZooOffice:
    .word ZooOfficeOut, ZooOfficeRoom1In, ZooOfficeRoom2In, ZooOfficeUp1, ZooOfficeDown1, ZooOfficeRoom3In
    .word ZooOfficeRoom4In, ZooOfficeUp2, ZooOfficeDown2, ZooOfficeRoom5In, ZooOfficeRoom6In, ZooOfficeRoom1Out
    .word ZooOfficeRoom2Out, ZooOfficeRoom3Out, ZooOfficeRoom4Out, ZooOfficeRoom5Out, ZooOfficeRoom6Out
    .word ZooOfficeRoom1Box, ZooOfficeRoom2Box, ZooOfficeRoom4Box, ZooOfficeRoom6Box, Capsule, 0

ZooOfficeOut:
    unknown_18 $7B80, $2180, RIGHT

    check_view ZooOfficeOutExit - ZooOfficeOut
    approach ZooOfficeOutExit - ZooOfficeOut
    check_flag FLAG01|BIT2, ZooTeleport - ZooOfficeOut
    teleport $2F80, $3D04
    end_script
ZooTeleport:
    teleport $2F91, $3D04
ZooOfficeOutExit:
    end_script

ZooOfficeRoom1In:
    entrance DOOR, $7980, $20C0, UP, MUSIC_SAME, $9F40, $2580, LEFT

ZooOfficeRoom2In:
    entrance DOOR, $7A40, $20C0, UP, MUSIC_SAME, $BF40, $2580, LEFT

ZooOfficeUp1:
    entrance STAIRS, $7880, $2140, LEFT, MUSIC_SAME, $A480, $ED80, RIGHT

ZooOfficeDown1:
    entrance STAIRS, $A440, $ED80, LEFT, MUSIC_SAME, $78C0, $2140, RIGHT

ZooOfficeRoom3In:
    entrance DOOR, $A580, $ECC0, UP, MUSIC_SAME, $8340, $2180, LEFT

ZooOfficeRoom4In:
    entrance DOOR, $A640, $ECC0, UP, MUSIC_SAME, $A740, $2580, LEFT

ZooOfficeUp2:
    entrance STAIRS, $A480, $ED40, LEFT, MUSIC_SAME, $A080, $2180, RIGHT

ZooOfficeDown2:
    entrance STAIRS, $A040, $2180, LEFT, MUSIC_SAME, $A4C0, $ED40, RIGHT

ZooOfficeRoom5In:
    entrance DOOR, $A180, $20C0, UP, MUSIC_SAME, $C740, $2580, LEFT

ZooOfficeRoom6In:
    entrance DOOR, $A240, $20C0, UP, MUSIC_SAME, $8B40, $2180, LEFT

ZooOfficeRoom1Out:
    entrance DOOR, $9F80, $2580, RIGHT, MUSIC_SAME, $7980, $2100, DOWN

ZooOfficeRoom2Out:
    entrance DOOR, $BF80, $2580, RIGHT, MUSIC_SAME, $7A40, $2100, DOWN

ZooOfficeRoom3Out:
    entrance DOOR, $8380, $2180, RIGHT, MUSIC_SAME, $A580, $ED00, DOWN

ZooOfficeRoom4Out:
    entrance DOOR, $A780, $2580, RIGHT, MUSIC_SAME, $A640, $ED00, DOWN

ZooOfficeRoom5Out:
    entrance DOOR, $C780, $2580, RIGHT, MUSIC_SAME, $A180, $2100, DOWN

ZooOfficeRoom6Out:
    entrance DOOR, $8B80, $2180, RIGHT, MUSIC_SAME, $A240, $2100, DOWN

ZooOfficeRoom1Box:
    box $9D40, $2580, UP, BoxAnim, Antidote, $19

ZooOfficeRoom2Box:
    box $BD00, $2580, UP, BoxAnim, Rope, $1A

ZooOfficeRoom4Box:
    box $A5C0, $2580, UP, BoxAnim, Bread, $1B

ZooOfficeRoom6Box:
    box $8A80, $2180, UP, BoxAnim, LifeUpCream, $1C

Capsule:
    .import CapsuleAnim

    unknown_21 $C600, $2580, UP, CapsuleAnim

    hide FLAG01|BIT2
    check_action CHECK, CapsuleExit - Capsule
    print $382
    enemies $A4
    play SOUND1, 9
    move CapsuleAway
    print $3CC
    map_val $1C, 0
    map_val $1D, 0
    set_flag FLAG01|BIT2
    play MUSIC, $12
    move CapsuleMove
CapsuleExit:
    end_script
CapsuleAway:
    .byte $70, 6, $54, 1, 3
CapsuleMove:
    .byte 0


off_119C96:
    .word TwinkleDown2, DesertDungDown1, DesertDung2Cave, DesertDungOut, DesertDungUp1, LloydTrash, Lloyd
    .word DungMonkey1, DungMonkey2, DungMonkey3, DungMonkey4, DungMonkey5, DungMonkey6, DungMonkey7, DungMonkey8
    .word DungMonkey9, DungMonkey10, DungMonkey11, DungMonkey12, DungMonkey13, DungMonkey14, DungMonkey15
    .word DungMonkey16, DungMonkey17, DungMonkey18, DungMonkey19, DungPenguin, DesertDungBox1
    .word DesertDungBox2, DesertDungBox3, 0

TwinkleDown2:
    entrance STAIRS, $1AC0, $5BC0, UP, MUSIC_SAME, $C500, $F540, LEFT

DesertDungDown1:
    entrance HOLE, $F40, $7580, UP, MUSIC_SAME, $2B40, $A200, DOWN

DesertDung2Cave:
    entrance HOLE, $1340, $A640, UP, MUSIC_31, $F880, $8A40, DOWN

DesertDungOut:
    entrance DOOR, $1440, $72C0, UP, MUSIC_8, $9E80, $44C0, DOWN

DesertDungUp1:
    entrance DOOR, $2B40, $A1C0, UP, MUSIC_SAME, $F40, $75C0, DOWN

LloydTrash:
    .import TrashAnim

    unknown_21 $1B80, $5BC0, UP, TrashAnim

    hide FLAG04|BIT0
    check_action CHECK, LloydTalk - LloydTrash
    print $32D
    end_script
LloydTalk:
    check_action TALK, LloydTrashExit - LloydTrash
    check_flag FLAG08|BIT3, Who - LloydTrash
    print $11E
    confirm Pause - LloydTrash
    print $11F
    set_flag FLAG05|BIT7
    set_flag FLAG04|BIT0
    another 6
    move byte_119D2C
    end_script
Pause:
    print $CA
    end_script
Who:
    print $11D
    set_flag FLAG08|BIT3
    end_script
LloydTrashExit:
    end_script
byte_119D2C:
    .byte $50, 1, 0

Lloyd:
    npc STAT_NPC2, $1B80, $5BC0, DOWN, AnimBoy2

    show FLAG05|BIT7
    check_action TALK, LloydMove - Lloyd
    print $120
    find_item BottlRocket, LloydExit - Lloyd
    print $123
    play MUSIC, $21
    wait 180
    play MUSIC, $E
    move byte_119D5B
    set_flag FLAG04|BIT3
    clear_flag FLAG05|BIT7
LloydMove:
    check_keypress LloydExit - Lloyd
    move byte_119D66
    play MUSIC, $1D
    wait 180
    play MUSIC, $E
LloydExit:
    end_script
byte_119D5B:
    .byte $34, 2, $36, 3, $30, 1, $10, 1, $16, 1, 3
byte_119D66:
    .byte $F4, 1, 0

DungMonkey1:
    .import MonkeyAnim

    npc WALK_NPC, $1640, $7380, UP, MonkeyAnim

    check_action TALK, DungMonkey1Exit - DungMonkey1
    print $277
DungMonkey1Exit:
    end_script

DungMonkey2:
    npc WALK_NPC, $1840, $A480, RIGHT, MonkeyAnim

    check_action TALK, DungMonkey2Exit - DungMonkey2
    print $278
    confirm Eyesight - DungMonkey2
    print $279
    end_script
Eyesight:
    print $27A
DungMonkey2Exit:
    end_script

DungMonkey3:
    npc WALK_NPC, $1B80, $A640, DOWN, MonkeyAnim

    check_action TALK, DungMonkey3Exit - DungMonkey3
    print $27B
    confirm JustGame - DungMonkey3
    print $27C
    end_script
JustGame:
    print $27D
DungMonkey3Exit:
    end_script

DungMonkey4:
    npc STAT_NPC, $1380, $AC40, RIGHT, MonkeyAnim

    check_action TALK, DungMonkey4Exit - DungMonkey4
    check_flag FLAG08|BIT2, AddCapsule - DungMonkey4
    print $DC
    end_script
AddCapsule:
    print $27E
    find_item EMPTY, MuchCarry - DungMonkey4
    select_item QuickCapsul
    add_item DungMonkey4Exit - DungMonkey4
    play SOUND2, 6
    set_flag FLAG08|BIT2
    end_script
MuchCarry:
    print $23E
DungMonkey4Exit:
    end_script

DungMonkey5:
    npc WALK_NPC, $B40, $A540, LEFT, MonkeyAnim

    check_action TALK, DungMonkey5Exit - DungMonkey5
    print $27F
DungMonkey5Exit:
    end_script

DungMonkey6:
    npc WALK_NPC, $700, $7A40, UP, MonkeyAnim

    check_action TALK, DungMonkey6Exit - DungMonkey6
    print $280
DungMonkey6Exit:
    end_script

DungMonkey7:
    npc WALK_NPC, $29C0, $A240, LEFT, MonkeyAnim

    check_action TALK, DungMonkey7Exit - DungMonkey7
    print $281
DungMonkey7Exit:
    end_script

DungMonkey8:
    npc WALK_NPC, $B40, $7B40, RIGHT, MonkeyAnim

    check_action TALK, DungMonkey8Exit - DungMonkey8
    print $282
    confirm Hmmm - DungMonkey8
    print $283
    end_script
Hmmm:
    print $56
DungMonkey8Exit:
    end_script

DungMonkey9:
    npc WALK_NPC, $1A40, $A4C0, DOWN, MonkeyAnim

    check_action TALK, DungMonkey9Exit - DungMonkey9
    print $285
DungMonkey9Exit:
    end_script

DungMonkey10:
    npc WALK_NPC, $1F40, $A640, DOWN, MonkeyAnim

    check_action TALK, DungMonkey10Exit - DungMonkey10
    print $286
DungMonkey10Exit:
    end_script

DungMonkey11:
    npc WALK_NPC, $1040, $7840, RIGHT, MonkeyAnim

    check_action TALK, DungMonkey11Exit - DungMonkey11
    print $287
    confirm Ambitions - DungMonkey11
    print $288
    end_script
Ambitions:
    print $289
DungMonkey11Exit:
    end_script

DungMonkey12:
    npc WALK_NPC, $1140, $A240, UP, MonkeyAnim

    check_action TALK, DungMonkey12Exit - DungMonkey12
    print $28A
DungMonkey12Exit:
    end_script

DungMonkey13:
    npc WALK_NPC, $1080, $A480, DOWN, MonkeyAnim

    check_action TALK, DungMonkey13Exit - DungMonkey13
    print $28B
DungMonkey13Exit:
    end_script

DungMonkey14:
    npc WALK_NPC, $1C80, $A880, LEFT, MonkeyAnim

    check_action TALK, DungMonkey14Exit - DungMonkey14
    print $28C
DungMonkey14Exit:
    end_script

DungMonkey15:
    npc WALK_NPC, $1240, $7680, RIGHT, MonkeyAnim

    check_action TALK, DungMonkey15Exit - DungMonkey15
    print $28D
DungMonkey15Exit:
    end_script

DungMonkey16:
    npc WALK_NPC, $1DC0, $A440, DOWN, MonkeyAnim

    check_action TALK, DungMonkey16Exit - DungMonkey16
    print $28E
DungMonkey16Exit:
    end_script

DungMonkey17:
    npc WALK_NPC, $1240, $AA00, LEFT, MonkeyAnim

    check_action TALK, DungMonkey17Exit - DungMonkey17
    print $28F
DungMonkey17Exit:
    end_script

DungMonkey18:
    npc WALK_NPC, $1700, $A640, DOWN, MonkeyAnim

    check_action TALK, DungMonkey18Exit - DungMonkey18
    print $290
DungMonkey18Exit:
    end_script

DungMonkey19:
    npc WALK_NPC, $1940, $A540, RIGHT, MonkeyAnim

    check_action TALK, DungMonkey19Exit - DungMonkey19
    print $291
DungMonkey19Exit:
    end_script

DungPenguin:
    .import PenguinAnim

    npc WALK_NPC, $1880, $A540, UP, PenguinAnim

    check_action TALK, DungPenguinExit - DungPenguin
    print $292
DungPenguinExit:
    end_script

DesertDungBox1:
    box $1B00, $A240, UP, BoxAnim, PSIStone, $1D

DesertDungBox2:
    box $2380, $A880, UP, BoxAnim, PSIStone, $1E

DesertDungBox3:
    box $440, $ACC0, UP, BoxAnim, PSIStone, $1F
