;--------------------------------------------------------
;                       PARAMETERS
;--------------------------------------------------------
RECOVER_HP              = 0
RECOVER_PP              = 1
INCREASE_SPEED          = 2
INCREASE_OFF            = 3
INCREASE_DEFENSE        = 4
RESTORE_HP              = 5
RESOLVE_ATTACK          = 6
DECREASE_DEF            = 7
DECREASE_FIGHT          = 8
KNOCK_OUT               = 9
CRITICAL_DMG            = $A
DECREASE_OFFENSE        = $B
DECREASE_DEFENSE        = $C
INCREASE_EXP            = $D
TRIGGER_KILL            = $E
RANDOM_DAMAGE           = $F
APPROACH_ENEMY          = $10
INCREASE_OFFENSE        = $11
BLINDED                 = $12
POISONED                = $13
CONFUSE                 = $14
PUT2SLEEP               = $15
CANT_MOVE               = $16
PSI_BLOCKED             = $17
SET_RESIST              = $18
SHIELDED                = $19
BARRIER                 = $1A
BOUNDED                 = $1B
STONED                  = $1C
GASPING                 = $1D
STRANGE                 = $1E
DISSIPATED              = $1F
WAKE_UP                 = $20
CAN_MOVE                = $21
ASTHMA_PASS             = $22
REGAINED                = $23
DESTROYED               = $24
REVIVES                 = $25
RECOVERED_STONE         = $26
SNATCHED                = $27
TOOK_AWAY               = $28
DEFEATED                = $29
LOST_SENSES             = $2A
INCREASE_FIGHT          = $2B

;--------------------------------------------------------
;                         CHECKS
;--------------------------------------------------------
GROUP_STATUS            = $0
FIGHT_LOWER             = $1
FIGHT_SIMPLE            = $2
RESIST_CHANCE           = $3
NO_VECHICLE             = $4
FRANKLIN                = $5
TARGET_STATUS           = $6
TARGET_FLAGS            = $7
COIN_CHANCE             = $8
IMMUNE_STATUS           = $9
IMMUNE_SLEEP            = $A
OBJECT                  = $B
TARGET_UP               = $C
FINAL_BOSSES            = $D

;--------------------------------------------------------
;                    BATTLE MESSAGES
;--------------------------------------------------------
EMPTY                   = 0
SINGLULLABY             = 1
POS                     = 2
DREWNEAR                = 3
ATTACK                  = 4
TANKGUN                 = 5
DODGED                  = 6
CONTINUOUSATTACK        = 7
BIT_MSG                 = 8
SCRATCHED               = 9
CHARGED                 = $A
SMASH                   = $B
SUFFERED                = $C
WIN                     = $D
LOSE                    = $E
DEFEAT                  = $F
HURT                    = $10
GONE                    = $11
NOEFFECT                = $12
RANOUT                  = $13
EXHAUSTED               = $14
LASTBLOW                = $15
FORM                    = $16
SURROUNDED              = $17
MOTHERCALL              = $18
TTURNED                 = $19
SPIT                    = $1A
BLIND                   = $1B
BOUND                   = $1C
STRANGECRY              = $1D
EXPLODED                = $1E
BURST_MSG               = $1F
OFFENSEINC              = $20
OFFENSEDEC              = $21
DEFENSEINC              = $22
SPEEDINC                = $23
OFFENSE                 = $24
DEFENSE                 = $25
FIGHTDEC                = $26
DEFENSEDEC              = $27
DARLINGSMILE            = $28
FIGHTINC                = $29
RAGE                    = $2A
SPEEDDEC                = $2B
CONFUSED                = $2C
CRIEDOUT                = $2D
SOWED                   = $2E
EXPINC                  = $2F
STARTED                 = $30
TANKBROKEN              = $31
UTTERED                 = $32
DIRTYWORDS              = $33
GRINS                   = $34
BELIEVED                = $35
WASNTCONVINCED          = $36
MADEANGRY               = $37
CRITICAL                = $38
SENSES                  = $39
SOCONFUSED              = $3A
PUTSLEEP                = $3B
ISASLEEP                = $3C
RECOVERPP               = $3D
RECOVERHP               = $3E
ENERGY                  = $3F
HOWEVERNOONE            = $40
SILENCE                 = $41
JOINED                  = $42
RANAWAY                 = $43
DIDNTWORK               = $44
TRIPPED                 = $45
CANTMOVE                = $46
TURNED                  = $47
SNATCH                  = $48
CANNOTMOVE              = $49
PUFFED                  = $4A
WASPOISONED             = $4B
DEHYDRATED              = $4C
BLOCKED                 = $4D
WASBOUND                = $4E
SHIELD                  = $4F
MISS                    = $50
PSIBLOCKED              = $51
BOUNCED                 = $52
BOUNCEDBACK             = $53
NOTENOUGHPPS            = $54
WASNOEFFECT             = $55
WHEEZE                  = $56
MEDITATING              = $57
SAID                    = $58
READY                   = $59
SANG                    = $5A
ISGUARDING              = $5B
APPROACHED              = $5C
DISSIPAT                = $5D
REGAIN                  = $5E
ITCHY                   = $5F
CANMOVE                 = $60
WAKEUP                  = $61
BROUGHT                 = $62
USED                    = $63
TTRIED                  = $64
CCANTUSE                = $65
CIRCUMSTANCES           = $66
SOMETHINGSTRANGE        = $67
DAYDREAMING             = $68
DESTROY                 = $69
CHECKED                 = $6A
AGAINSTFIRE             = $6B
AGAINSTFREEZE           = $6C
AGAINSTTHUNDER          = $6D
AGAINSTBEAM             = $6E
WEAKSPRAYS              = $6F
ASTHMAATTACKPASS        = $70
RECOVEREDSTONE          = $71
ILOVEYOU                = $72
IHATEYOU                = $73
ASTHMAATTACK            = $74
WASBROKEN               = $75
WICKEDSEED              = $76
GAS                     = $77
TURNEDINTOSTONE         = $78
REGAINEDSENSES          = $79
QUIET                   = $7A
BEATEN                  = $7B
WASDESTROYED            = $7C
DUST                    = $7D
DIDNTMOVE               = $7E
PILEJUNK                = $7F
VANISHED                = $80
TOOKAWAY                = $81
ADVANCED                = $82
NEWPSIPOWER             = $83
MAXIMUMHPINC            = $84
MAXIMUMPPINC            = $85
FIGHT                   = $86
SPEED                   = $87
WISDOMINC               = $88
STRENGTHINC             = $89
FORCEINC                = $8A
ESCAPEDROPE             = $8B
PICKEDUP                = $8C
WASNTCONFUSED           = $8D
WOKEUP                  = $8E
;ZAP                     = $8F
ITNOEFFECT              = $90
BECAMEEMPTY             = $91
LINGERS                 = $92
;DEFEAT                  = $93
IMPROVED                = $94
HUGE                    = $95
GRATEFUL                = $96
YOURGREAT               = $97
GEORGESTOLE             = $98
DESCENDANTS             = $99
GOHOMENOW               = $9A
FOOLISH                 = $9B
YOUALONE                = $9C
FALLSLEEP               = $9D
;STOPSINGING             = $9E
;STOPSINGING             = $9F
;STOP                    = $A0
;STOPIT                  = $A1
PUNY                    = $A2
THESONG                 = $A3
;STOPIT                  = $A4
EXCLAMATION             = $A5
;STOP                    = $A6
ACCLAMATION             = $A7
POINTS                  = $A8
BEDEFEATED              = $A9
IWILL                   = $AA
MEETAGAIN               = $AB

;--------------------------------------------------------
;                     BATTLE_SCRIPTS
;--------------------------------------------------------
;           single-byte
.macro end_script
    .byte 0
.endmacro

.macro end_loop
    .byte 0
.endmacro

.macro enemy_approach
    .byte $10
.endmacro

.macro enemy_removal
    .byte $11
.endmacro

.macro hit
    .byte $12
.endmacro

.macro blast
    .byte $13
.endmacro

.macro call_backup
    .byte $14
.endmacro

.macro sowed_seed
    .byte $15
.endmacro

.macro escape_battle
    .byte $16
.endmacro

.macro hit_fire
    .byte $17
.endmacro

.macro hit_freeze
    .byte $18
.endmacro

.macro hit_thunder
    .byte $19
.endmacro

.macro hit_beam
    .byte $1A
.endmacro

.macro hit_smash
    .byte $1B
.endmacro

.macro get_target
    .byte $51
.endmacro

.macro get_group_status1
    .byte $52
.endmacro

.macro get_group_status2
    .byte $53
.endmacro

.macro char2target
    .byte $54
.endmacro

.macro get_group
    .byte $55
.endmacro

.macro get_next_target
    .byte $56
.endmacro

.macro loop4
    .byte $B4
.endmacro

;           double-byte
.macro use_psi id
    .byte $20, id
.endmacro

.macro use_item0 id
    .byte $30, id
.endmacro

.macro use_remove_item id
    .byte $31, id
.endmacro

.macro use_item2 id
    .byte $32, id
.endmacro

.macro use_item3 id
    .byte $33, id
.endmacro

.macro change parameter
    .byte $40, parameter
.endmacro

.macro calc_attack value
    .byte $60, value
.endmacro

.macro get_offense value
    .byte $61, value
.endmacro

.macro set_value value
    .byte $62, value
.endmacro

.macro boss_msg id
    .byte $63, id
.endmacro

.macro set_flags id
    .byte $64, id
.endmacro

.macro enemy_check value
    .byte $65, value
.endmacro

.macro choose_sound id
    .byte $66, id
.endmacro

.macro sound id
    .byte $67, id
.endmacro

.macro print_msg id
    .byte $68, id
.endmacro

.macro play_sound id
    .byte $69, id
.endmacro

.macro item_broken id
    .byte $C0, id
.endmacro

.macro turn2stone id
    .byte $C1, id
.endmacro

.macro became_empty id
    .byte $C2, id
.endmacro

;           three-byte
.macro check_bcc check, address
    .byte $70|check
    .word address
.endmacro

.macro check_bcs check, address
    .byte $80|check
    .word address
.endmacro

.macro subroutine address
    .byte $90
    .word address
.endmacro

.macro jump address
    .byte $A0
    .word address
.endmacro
