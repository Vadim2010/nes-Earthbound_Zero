; CHARS BANKS 0x80-0xCD (char bank size 0x400)
; data is divided into 8K blocks as in the case of PRG (0x2000 - 8 char banks)
; CHARS BANKS 0x80 - 0x87
    .BYTE $D3, $F9, $F3, $F4, $E5, $ED, $A0, $C5, $F2, $F2 ; System Error!!!
    .BYTE $EF, $F2, $A1, $A1, $A1, 1, 0
    .BYTE $C0, $C2, $F2, $EF, $F4, $E8, $E5, $F2, $AC, $A0 ; *Brother, I'm so
    .BYTE $C9, $A7, $ED, $A0, $F3, $EF, 1
    .BYTE $A0, $F3, $E3, $E1, $F2, $E5, $E4, $A1, $A0, $D4 ;  scared! The lamp
    .BYTE $E8, $E5, $A0, $EC, $E1, $ED, $F0, 1
    .BYTE $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4, $EF, $A0 ;  seems to be alive!
    .BYTE $E2, $E5, $A0, $E1, $EC, $E9, $F6, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0, $ED, $F9, $A1, $A0, $C2, $F2 ; *Oh my! Brother,
    .BYTE $EF, $F4, $E8, $E5, $F2, $AC, 1
    .BYTE $A0, $EF, $F5, $F2, $A0, $E8, $EF, $F5, $F3, $E5 ;  our house is
    .BYTE $A0, $E9, $F3, 1
    .BYTE $A0, $E6, $E1, $EC, $EC, $E9, $EE, $E7, $A0, $E1 ;  falling apart!
    .BYTE $F0, $E1, $F2, $F4, $A1, 1
    .BYTE 0
    .BYTE $C0, $C2, $EF, $EF, $A0, $E8, $EF, $EF, $A1, 1 ; *Boo hoo!
    .BYTE 0
    .BYTE $C0, $C2, $F2, $EF, $F4, $E8, $E5, $F2, $AC, $A0 ; *Brother, here's
    .BYTE $E8, $E5, $F2, $E5, $A7, $F3, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $A0, $EA, $F5, $E9, $E3 ;  some juice.
    .BYTE $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $F4 ; *You are thirsty,
    .BYTE $E8, $E9, $F2, $F3, $F4, $F9, $AC, 1
    .BYTE $A0, $E1, $F2, $E5, $EE, $A7, $F4, $A0, $F9, $EF ;  aren't you?
    .BYTE $F5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D3, $F0, $EF, $EF, $EB, $F9, $A1, $A1, 1 ; *Spooky!!
    .BYTE $A0, $D4, $E8, $E5, $A0, $E4, $EF, $EC, $EC, $A0 ;  The doll walks
    .BYTE $F7, $E1, $EC, $EB, $F3, 1
    .BYTE $A0, $E2, $F9, $A0, $E9, $F4, $F3, $E5, $EC, $E6 ;  by itself!
    .BYTE $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E1, $F3, $A0, $F3, $E3, $E1 ; *I was scared to
    .BYTE $F2, $E5, $E4, $A0, $F4, $EF, 1
    .BYTE $A0, $E4, $E5, $E1, $F4, $E8, $A1, $A1, 1 ;  death!!
    .BYTE 3
    .BYTE $C0, $CF, $E8, $A0, $F7, $EF, $F7, $A1, $A0, $C3 ; *Oh wow! CHECK out
    .BYTE $C8, $C5, $C3, $CB, $A0, $EF, $F5, $F4, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A7, $F3, $A0, $E8, $E9 ;  what's hidden
    .BYTE $E4, $E4, $E5, $EE, 1
    .BYTE $A0, $E9, $EE, $F3, $E9, $E4, $E5, $A0, $F4, $E8 ;  inside the doll.
    .BYTE $E5, $A0, $E4, $EF, $EC, $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $AC, $A0, $C9, $A7, $ED, $A0, $CD ; *No, I'm Mimmie,
    .BYTE $E9, $ED, $ED, $E9, $E5, $AC, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E3, $EF, $EE ;  don't confuse me
    .BYTE $E6, $F5, $F3, $E5, $A0, $ED, $E5, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $CD, $E9, $EE, $EE ;  with Minnie.
    .BYTE $E9, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE $A0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $E1 ;  Are you alright?
    .BYTE $EC, $F2, $E9, $E7, $E8, $F4, $A2, 1
    .BYTE 3
    .BYTE $C0, $C5, $E7, $E1, $E4, $A1, 1 ; *Egad!
    .BYTE $A0, $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $E8 ;  What is happening
    .BYTE $E1, $F0, $F0, $E5, $EE, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $EF, $A0, $EF, $F5, $F2, $A0, $E8, $EF ;  to our house?
    .BYTE $F5, $F3, $E5, $A2, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $E9, $F3, $E8, $A0, $F9, $EF ; *I wish your Dad
    .BYTE $F5, $F2, $A0, $C4, $E1, $E4, 1
    .BYTE $A0, $F7, $E5, $F2, $E5, $A0, $E8, $E5, $F2, $E5 ;  were here now.
    .BYTE $A0, $EE, $EF, $F7, $AE, 1
    .BYTE $A0, $CD, $E1, $F9, $E2, $E5, $AE, $AE, $AE, 1 ;  Maybe...
    .BYTE 0
    .BYTE $C0, $D3, $EF, $EE, $A0, $EF, $E6, $A0, $ED, $E9 ; *Son of mine,
    .BYTE $EE, $E5, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $E2 ;  you are braver
    .BYTE $F2, $E1, $F6, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E1, $EE, $A0, $C9, $A0, $F4, $E8 ;  than I thought.
    .BYTE $EF, $F5, $E7, $E8, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, $A0, $EC ; *I can't let you
    .BYTE $E5, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E7, $EF, $A0, $EF, $EE, $A0, $E1, $A0, $EA ;  go on a journey
    .BYTE $EF, $F5, $F2, $EE, $E5, $F9, 1
    .BYTE $A0, $F3, $EF, $A0, $E6, $E1, $ED, $E9, $F3, $E8 ;  so famished.
    .BYTE $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F9, $EF, $F5, $A0, $E8 ; *Oh, you have been
    .BYTE $E1, $F6, $E5, $A0, $E2, $E5, $E5, $EE, 1
    .BYTE $A0, $F7, $EF, $F5, $EE, $E4, $E5, $E4, $AE, 1 ;  wounded.
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $F4, $E8, $E5 ; *Well, the next
    .BYTE $A0, $EE, $E5, $F8, $F4, 1
    .BYTE $A0, $EC, $E5, $F6, $E5, $EC, 1 ;  level
    .BYTE $A0, $F2, $E5, $F1, $F5, $E9, $F2, $E5, $F3, $AE ;  requires...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you want to
    .BYTE $F7, $E1, $EE, $F4, $A0, $F4, $EF, 1
    .BYTE $A0, $E5, $E1, $F4, $A0 ;  eat
    TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $AC, $A0, $EA, $F5 ;  again, just come
    .BYTE $F3, $F4, $A0, $E3, $EF, $ED, $E5, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $E8, $E5, $F2, $E5 ;  back here.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AE, $AE, $AE, 1 ; *Well...
    .BYTE $A0, $C9, $F4, $A0, $F3, $E5, $E5, $ED, $F3, $A0 ;  It seems like a
    .BYTE $EC, $E9, $EB, $E5, $A0, $E1, 1
    .BYTE $A0, $F0, $EF, $EC, $F4, $E5, $F2, $E7, $E5, $E9 ;  poltergeist.
    .BYTE $F3, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $EE, $EF, $F4, $A0, $E5 ; *I'm not exactly
    .BYTE $F8, $E1, $E3, $F4, $EC, $F9, 1
    .BYTE $A0, $F3, $F5, $F2, $E5, $A0, $E8, $EF, $F7, $A0 ;  sure how to...
    .BYTE $F4, $EF, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $F9, $EF, $F5, $F2 ; *But, your great-
    .BYTE $A0, $E7, $F2, $E5, $E1, $F4, $AD, 1
    .BYTE $A0, $E7, $F2, $E1, $EE, $E4, $AD, $E6, $E1, $F4 ;  grand-father
    .BYTE $E8, $E5, $F2, 1
    .BYTE $A0, $F3, $F4, $F5, $E4, $E9, $E5, $E4, $A0, $D0 ;  studied PSI.
    .BYTE $D3, $C9, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $E9, $E7, $E8, $F4 ; *You might find
    .BYTE $A0, $E6, $E9, $EE, $E4, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something in the
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E2, $E1, $F3, $E5, $ED, $E5, $EE, $F4, $A0 ;  basement to help.
    .BYTE $F4, $EF, $A0, $E8, $E5, $EC, $F0, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $C9, $A0, $EC, $E5 ; *But, I left the
    .BYTE $E6, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C2, $E1, $F3, $E5, $ED, $E5, $EE, $F4, $A0 ;  Basement Key
    .BYTE $CB, $E5, $F9, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F0, $EC, $E1, $E3, $E5 ;  someplace...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $AE, $AE, $AE, $E3, $E1, $EE, $A7, $F4, $A0 ; *...can't remember
    .BYTE $F2, $E5, $ED, $E5, $ED, $E2, $E5, $F2, 1
    .BYTE $A0, $E5, $F8, $E1, $E3, $F4, $EC, $F9, $A0, $F7 ;  exactly where...
    .BYTE $E8, $E5, $F2, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $F9, $E8, $EF, $F7, $AC, $A0, $F3 ; *Anyhow, son, you
    .BYTE $EF, $EE, $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E1, $F2, $E5, $A0, $ED, $F9, $A0, $EF, $EE ;  are my only hope.
    .BYTE $EC, $F9, $A0, $E8, $EF, $F0, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F4, $E9, $ED, $E5 ; *It's time for you
    .BYTE $A0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $EF, $A0, $EF, $EE, $A0 ;  to go on a little
    .BYTE $E1, $A0, $EC, $E9, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $E1, $E4, $F6, $E5, $EE, $F4, $F5, $F2, $E5 ;  adventure,
    .BYTE $AC, 1
    .BYTE 3
    .BYTE $C0, $E1, $EE, $E4, $A0, $E5, $F8, $F0, $EC, $EF ; *and explore the
    .BYTE $F2, $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F0, $EF, $F4, $E5, $EE, $F4, $E9, $E1, $EC ;  potential of your
    .BYTE $A0, $EF, $E6, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $F0, $EF, $F7, $E5, $F2, $F3, $AE, 1 ;  powers.
    .BYTE 3
    .BYTE $C0, $D0, $EF, $F7, $E5, $F2, $F3, $A0, $EE, $EF ; *Powers not be taken
    .BYTE $F4, $A0, $E2, $E5, $A0, $F4, $E1, $EB, $E5, $EE
    .BYTE 1
    .BYTE $A0, $EC, $E9, $E7, $E8, $F4, $EC, $F9, $AE, 1 ;  lightly.
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $E7, $EF, 1 ; , go
    .BYTE $A0, $E6, $EF, $F2, $A0, $E9, $F4, $A1, $A1, 1 ;  for it!!
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $F2, $E5, $ED, $E5, $ED ; *But remember to come
    .BYTE $E2, $E5, $F2, $A0, $F4, $EF, $A0, $E3, $EF, $ED
    .BYTE $E5, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $E1, $EE, $E4, $A0 ;  back and check on
    .BYTE $E3, $E8, $E5, $E3, $EB, $A0, $EF, $EE, 1
    .BYTE $A0, $EF, $F5, $F2, $A0, $E6, $E1, $ED, $E9, $EC ;  our family.
    .BYTE $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F9, $E5, $AE, 1 ; *Bye.
    .BYTE 3
    .BYTE $C0, $CF, $E8, $AE, $AE, $AE, $A0, $F0, $E8, $EF ; *Oh... phone me,
    .BYTE $EE, $E5, $A0, $ED, $E5, $AC, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $C9, $A0, $F7, $E9, $EC ;  and I will SAVE
    .BYTE $EC, $A0, $D3, $C1, $D6, $C5, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $F0, $F2, $EF, $E7 ;  your progress.
    .BYTE $F2, $E5, $F3, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C3, $E1, $EC, $EC, $A0, $ED, $E5, $A0, $F7 ; *Call me whenever
    .BYTE $E8, $E5, $EE, $E5, $F6, $E5, $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $F7, $E1, $EE, $F4, $AE ;  you want.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D3, $EC, $E1, $ED, $AE, 1 ; *Slam.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $F9 ; *This is your Dad.
    .BYTE $EF, $F5, $F2, $A0, $C4, $E1, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $F4, $F2, $E1, $EE ; *I've transferred
    .BYTE $F3, $E6, $E5, $F2, $F2, $E5, $E4, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $7415, 3, 0> ; command specifying a new offset for what?
    .BYTE 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F9, $EF, $F5, $F2 ;  into your account.
    .BYTE $A0, $E1, $E3, $E3, $EF, $F5, $EE, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $E6, $F4, $E5, $F2, $A0, $F4, $E8, $E5 ; *After the amount
    .BYTE $A0, $E1, $ED, $EF, $F5, $EE, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $F6, $E5, $A0, $F3, $F0 ;  you've spent,
    .BYTE $E5, $EE, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $A0, $E2, $E1, $EC, $E1, $EE ; *the balance is
    .BYTE $E3, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $7412, 3, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $D3, $F0, $E5, $EE, $E4, $A0, $F9, $EF, $F5 ; *Spend your money
    .BYTE $F2, $A0, $ED, $EF, $EE, $E5, $F9, 1
    .BYTE $A0, $F7, $E9, $F3, $E5, $EC, $F9, $AE, 1 ;  wisely.
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F7, $A0, $F3, $EF, $EE, $AC, $A0 ; *Now son, it's not
    .BYTE $E9, $F4, $A7, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $ED, $F9, $A0, $E2, $F5, $F3, $E9, $EE, $E5 ;  my business, but
    .BYTE $F3, $F3, $AC, $A0, $E2, $F5, $F4, 1
    .BYTE $A0, $F7, $E8, $F9, $A0, $EE, $EF, $F4, $A0, $F2 ;  why not rest?
    .BYTE $E5, $F3, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $AE, $A0, 1 ; *I see.
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $D3, $C1, $D6, $C5 ;  I'll SAVE your
    .BYTE $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $F0, $F2, $EF, $E7, $F2, $E5, $F3, $F3, $AE ;  progress.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $AE, 1 ; *I see.
    .BYTE $A0, $C9, $A0, $EB, $EE, $EF, $F7, $AC, $A0, $F4 ;  I know, the Earth
    .BYTE $E8, $E5, $A0, $C5, $E1, $F2, $F4, $E8, 1
    .BYTE $A0, $E6, $E1, $E3, $E5, $F3, $A0, $E1, $A0, $E3 ;  faces a crisis.
    .BYTE $F2, $E9, $F3, $E9, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $CB, $AE, $AE, $AE, $C2, $F5, $F4, $AC ; *OK...But, I was
    .BYTE $A0, $C9, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, $E9, $EE, $E7, $A0 ;  thinking of going
    .BYTE $EF, $E6, $A0, $E7, $EF, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $EF, $A0, $F3, $EC, $E5, $E5, $F0, $A0 ;  to sleep now.
    .BYTE $EE, $EF, $F7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $D3, $C1, $D6, $C5 ; *I've SAVEd your
    .BYTE $E4, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $F0, $F2, $EF, $E7, $F2, $E5, $F3, $F3, $AC ;  progress, so far.
    .BYTE $A0, $F3, $EF, $A0, $E6, $E1, $F2, $AE, 1
    .BYTE 3
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $EE, $E9, $E7, $E8 ; *Good night.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $E5, $E5, $A0, $F9, $EF, $F5, $A0, $EC ; *See you later!
    .BYTE $E1, $F4, $E5, $F2, $A1, 1
    .BYTE 3
    .BYTE $C0, $D2, $E5, $ED, $E5, $ED, $E2, $E5, $F2, $AC ; *Remember, push in
    .BYTE $A0, $F0, $F5, $F3, $E8, $A0, $E9, $EE, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E8, $EF, $EC, $E4, $A0 ;  and hold RESET,
    .BYTE $D2, $C5, $D3, $C5, $D4, $AC, 1
    .BYTE 3
    .BYTE $C0, $F7, $E8, $E9, $EC, $E5, $A0, $F4, $F5, $F2 ; *while turning the
    .BYTE $EE, $E9, $EE, $E7, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $D0, $CF, $D7, $C5, $D2, $A0, $EF, $E6, $E6 ;  POWER off. OK?
    .BYTE $AE, $A0, $CF, $CB, $A2, 1
    .BYTE 0
    .BYTE $C0, $CA, $F5, $F3, $F4, $A0, $EC, $E9, $EB, $E5 ; *Just like your
    .BYTE $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $CD, $EF, $ED, $AC, $A0, $F9, $EF, $F5, $A0 ;  Mom, you never
    .BYTE $EE, $E5, $F6, $E5, $F2, 1
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF, $A0, $F3 ;  want to stop.
    .BYTE $F4, $EF, $F0, $AE, 1
    .BYTE 3
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E4, $EF ; *Please don't push
    .BYTE $EE, $A7, $F4, $A0, $F0, $F5, $F3, $E8, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $F3, $E5, $EC, $E6, $A0 ;  yourself so hard.
    .BYTE $F3, $EF, $A0, $E8, $E1, $F2, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C2, $F9, $A0, $F4, $E8, $E5, $A0, $F7, $E1 ; *By the way, do
    .BYTE $F9, $AC, $A0, $E4, $EF, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A0 ;  you want to SAVE?
    .BYTE $F4, $EF, $A0, $D3, $C1, $D6, $C5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $EC, $F5, $E3, $EB ; *Good luck.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF ; *I want to thank
    .BYTE $A0, $F4, $E8, $E1, $EE, $EB, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $E7, $E1, $E9, $EE ;  you again for your
    .BYTE $A0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $E8, $E5, $EC, $F0, $AE, 1 ;  help.
    .BYTE 3
    .BYTE $C0, $D0, $E9, $F0, $F0, $E9, $A0, $E9, $F3, 1 ; *Pippi is
    .BYTE $A0, $E6, $E9, $EE, $E5, $A0, $EE, $EF, $F7, $AE ;  fine now.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E5, $EC ; *Don't tell me
    .BYTE $EC, $A0, $ED, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $F6, $E5, $A0, $E2, $E5 ;  you've been south
    .BYTE $E5, $EE, $A0, $F3, $EF, $F5, $F4, $E8, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $E3, $E5 ;  to the cemetery!
    .BYTE $ED, $E5, $F4, $E5, $F2, $F9, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $F4 ; *You are terrific.
    .BYTE $E5, $F2, $F2, $E9, $E6, $E9, $E3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C2, $E5, $A0, $E8, $EF, $EE, $E5, $F3, $F4 ; *Be honest,
    .BYTE $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $F2, $E5, $A0, $E1, $A0 ;  you're a zombie.
    .BYTE $FA, $EF, $ED, $E2, $E9, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $F2, $E5, $EE, $A7, $F4, $A0, $F9, $EF ; *Aren't you?
    .BYTE $F5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ; *There is no cure
    .BYTE $EE, $EF, $A0, $E3, $F5, $F2, $E5, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $FA, $EF, $ED, $E2, $E9 ;  for zombies!
    .BYTE $E5, $F3, $A1, 1
    .BYTE $A0, $C1, $C1, $C1, $C1, $C1, $C1, $C1, $C8, $C8 ;  AAAAAAAHHH!
    .BYTE $C8, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $F2 ; *Are you really
    .BYTE $E5, $E1, $EC, $EC, $F9, 1
    .BYTE $A0, $E1, $A0, $E8, $F5, $ED, $E1, $EE, $A2, 1 ;  a human?
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E1, $ED, $E1, $FA ; *It's amazing
    .BYTE $E9, $EE, $E7, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E3, $E1, $ED, $E5, $A0 ;  you came here.
    .BYTE $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $E5, $E5, $AE, $AE ; *You see...
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E5, $EC ; *Don't tell anyone,
    .BYTE $EC, $A0, $E1, $EE, $F9, $EF, $EE, $E5, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $C9, $A7, $ED, $A0, $F3 ;  but I'm so scared,
    .BYTE $EF, $A0, $F3, $E3, $E1, $F2, $E5, $E4, $AC, 1
    .BYTE $A0, $C9, $A0, $F7, $E5, $F4, $A0, $ED, $F9, $A0 ;  I wet my pants.
    .BYTE $F0, $E1, $EE, $F4, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A0, $F7, $E1, $F3, $A0, $E4, $F2 ; *It was dreadful...
    .BYTE $E5, $E1, $E4, $E6, $F5, $EC, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $DA, $EF, $ED, $E2, $E9, $E5, $A1, 1 ; *Zombie!
    .BYTE 0
    .BYTE $C0, $C8, $E1, $AD, $E8, $E1, $AE, $AE, $AE, 1 ; *Ha-ha...
    .BYTE $A0, $D9, $EF, $F5, $A0, $F3, $E8, $E1, $EC, $EC ;  You shall become
    .BYTE $A0, $E2, $E5, $E3, $EF, $ED, $E5, 1
    .BYTE $A0, $E1, $A0, $DA, $EF, $ED, $E2, $E9, $E5, $E5 ;  a Zombieeee!
    .BYTE $E5, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $ED, $E5, $EF, $EE, $E5, $A0, $ED ; *Someone must be
    .BYTE $F5, $F3, $F4, $A0, $E2, $E5, 1
    .BYTE $A0, $E3, $EF, $EE, $F4, $F2, $EF, $EC, $EC, $E9 ;  controlling the
    .BYTE $EE, $E7, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E4, $E5, $E1, $E4, $AE, 1 ;  dead.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $EE, $E7, $A0, $ED, $E1, $EE ; *Young man,
    .BYTE $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E4, $E9, $E4, $A0, $F7 ;  you did well.
    .BYTE $E5, $EC, $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $DA, $EF, $ED, $E2, $E9, $E5, $F3, $A0, $ED ; *Zombies may be
    .BYTE $E1, $F9, $A0, $E2, $E5, 1
    .BYTE $A0, $E1, $EE, $F9, $F7, $E8, $E5, $F2, $E5, $A0 ;  anywhere in this
    .BYTE $E9, $EE, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $F4, $EF, $F7, $EE, $AE, 1 ;  town.
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F4, $E8, $E1, $F4, $A0 ; *Did that Canary
    .BYTE $C3, $E1, $EE, $E1, $F2, $F9, 1
    .BYTE $A0, $C3, $E8, $E9, $E3, $EB, $A0, $E3, $EF, $ED ;  Chick come from
    .BYTE $E5, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $C3, $E1, $EE, $E1, $F2, $F9, $A0, $D6, $E9 ;  Canary Village?
    .BYTE $EC, $EC, $E1, $E7, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $F5, $ED, $AE, 1 ; *Hum.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E3, $E8, $E9, $E3, $EB ; *The chicks at the
    .BYTE $F3, $A0, $E1, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C3, $E1, $EE, $E1, $F2, $F9, $A0, $D6, $E9 ;  Canary Village
    .BYTE $EC, $EC, $E1, $E7, $E5, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $EC, $EF, $F6, $E5 ;  have lovely voices.
    .BYTE $EC, $F9, $A0, $F6, $EF, $E9, $E3, $E5, $F3, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E7, $E5, $EE, $F4, $EC ; *The gentleman in
    .BYTE $E5, $ED, $E1, $EE, $A0, $E9, $EE, 1
    .BYTE $A0, $C3, $E1, $EE, $E1, $F2, $F9, $A0, $D6, $E9 ;  Canary Village
    .BYTE $EC, $EC, $E1, $E7, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $ED, $F9, $A0, $E9, $E4, $EF ;  is my idol.
    .BYTE $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $D4, $EF, $F7, $EE, $A0 ; *The Town Mayor is
    .BYTE $CD, $E1, $F9, $EF, $F2, $A0, $E9, $F3, 1
    .BYTE $A0, $EC, $EF, $EF, $EB, $E9, $EE, $E7, $A0, $E6 ;  looking for a
    .BYTE $EF, $F2, $A0, $E1, 1
    .BYTE $A0, $E2, $F2, $E1, $F6, $E5, $A0, $ED, $E1, $EE ;  brave man.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F3, $A0, $F4, $E8, $E5, $A0, $EC ; *Has the little
    .BYTE $E9, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $E7, $E9, $F2, $EC, $A0, $F7, $E8, $EF, $A0 ;  girl who strayed
    .BYTE $F3, $F4, $F2, $E1, $F9, $E5, $E4, 1
    .BYTE 3
    .BYTE $C0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E5, $A0 ; *into the cemetery
    .BYTE $E3, $E5, $ED, $E5, $F4, $E5, $F2, $F9, 1
    .BYTE $A0, $E2, $E5, $E5, $EE, $A0, $F2, $E5, $F3, $E3 ;  been rescued?
    .BYTE $F5, $E5, $E4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $AE, $AE, $AE, 1 ; *You...
    .BYTE $A0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $F2 ;  Are you really going
    .BYTE $E5, $E1, $EC, $EC, $F9, $A0, $E7, $EF, $E9, $EE
    .BYTE $E7, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $E3, $E5 ;  to the cemetery?
    .BYTE $ED, $E5, $F4, $E5, $F2, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F4, $E8, $EF, $F5, $E7, $E8, $F4 ; *I thought you were
    .BYTE $A0, $F9, $EF, $F5, $A0, $F7, $E5, $F2, $E5, 1
    .BYTE $A0, $E1, $A0, $F3, $E5, $EE, $F3, $E9, $E2, $EC ;  a sensible child.
    .BYTE $E5, $A0, $E3, $E8, $E9, $EC, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E1, $EE, $E9, $ED, $E1 ; *The animals went
    .BYTE $EC, $F3, $A0, $F7, $E5, $EE, $F4, 1
    .BYTE $A0, $ED, $E1, $E4, $A0, $E1, $EE, $E4, $A0, $EF ;  mad and out of
    .BYTE $F5, $F4, $A0, $EF, $E6, 1
    .BYTE $A0, $E3, $EF, $EE, $F4, $F2, $EF, $EC, $AE, 1 ;  control.
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E4, $E5, $E1, $E4, $A0 ; *The dead became
    .BYTE $E2, $E5, $E3, $E1, $ED, $E5, 1
    .BYTE $A0, $FA, $EF, $ED, $E2, $E9, $E5, $F3, $A0, $E1 ;  zombies and began
    .BYTE $EE, $E4, $A0, $E2, $E5, $E7, $E1, $EE, 1
    .BYTE $A0, $E1, $F4, $F4, $E1, $E3, $EB, $E9, $EE, $E7 ;  attacking people.
    .BYTE $A0, $F0, $E5, $EF, $F0, $EC, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E3, $E1, $EE, $A0 ; *What can be done?
    .BYTE $E2, $E5, $A0, $E4, $EF, $EE, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $F3 ; *You are super!
    .BYTE $F5, $F0, $E5, $F2, $A1, 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $E1, $A0, $F0, $EF, $EC ; *Did a poltergeist
    .BYTE $F4, $E5, $F2, $E7, $E5, $E9, $F3, $F4, 1
    .BYTE $A0, $F6, $E9, $F3, $E9, $F4, $A0, $F9, $EF, $F5 ;  visit your house?
    .BYTE $F2, $A0, $E8, $EF, $F5, $F3, $E5, $A2, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A0, $F4, $EF, $F2, $E5, $A0, $ED ; *It tore mine apart.
    .BYTE $E9, $EE, $E5, $A0, $E1, $F0, $E1, $F2, $F4, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E1, $EE, $E9, $ED, $E1 ; *The animals went
    .BYTE $EC, $F3, $A0, $F7, $E5, $EE, $F4, 1
    .BYTE $A0, $ED, $E1, $E4, $A0, $E1, $EE, $E4, $A0, $E2 ;  mad and began to
    .BYTE $E5, $E7, $E1, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $E5, $F3, $E3, $E1, $F0, $E5, $AC, 1 ;  escape,
    .BYTE 3
    .BYTE $C0, $F3, $EF, $A0, $F4, $E8, $E5, $A0, $DA, $EF ; *so the Zoo was
    .BYTE $EF, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $EC, $EF, $E3, $EB, $E5, $E4, $AE, 1 ;  locked.
    .BYTE 0
    .BYTE $C0, $D4, $EF, $A0, $C5, $C1, $D4, $AC, $A0, $F9 ; *To EAT, you'll
    .BYTE $EF, $F5, $A7, $EC, $EC, 1
    .BYTE $A0, $E6, $E9, $EE, $E4, $A0, $C2, $F2, $E5, $E1 ;  find Bread stale,
    .BYTE $E4, $A0, $F3, $F4, $E1, $EC, $E5, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $AC, $A0, $F7, $E9, $F4, $E8 ; *but, with its
    .BYTE $A0, $E9, $F4, $F3, 1
    .BYTE $A0, $C3, $F2, $F5, $ED, $E2, $F3, $A0, $F9, $EF ;  Crumbs you can
    .BYTE $F5, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $ED, $E1, $F2, $EB, $A0, $F9, $EF, $F5, $F2 ;  mark your trail.
    .BYTE $A0, $F4, $F2, $E1, $E9, $EC, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $F4, $E8 ; *Do you think I
    .BYTE $E9, $EE, $EB, $A0, $C9, 1
    .BYTE $A0, $F4, $E1, $EC, $EB, $A0, $F4, $EF, $EF, $A0 ;  talk too much?
    .BYTE $ED, $F5, $E3, $E8, $A2, 1
    .BYTE $A0, $D7, $E5, $EC, $EC, $A0, $E4, $EF, $A0, $C9 ;  Well do I?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $C3, $E9, $F4, $E9, $FA, $E5, $EE, $AC, $A0 ; *Citizen, I know
    .BYTE $C9, $A0, $EB, $EE, $EF, $F7, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $F7, $EF, $F5, $EC, $E4 ;  you would like to
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E8, $E5, $EC, $F0, $A0, $F9, $EF, $F5, $F2 ;  help your town.
    .BYTE $A0, $F4, $EF, $F7, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AE, $AE, $AE, 1 ; *Well...
    .BYTE $A0, $C1, $A0, $E3, $E8, $E9, $EC, $E4, $A0, $E8 ;  A child has strayed
    .BYTE $E1, $F3, $A0, $F3, $F4, $F2, $E1, $F9, $E5, $E4
    .BYTE 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E5, $A0 ;  into the cemetery.
    .BYTE $E3, $E5, $ED, $E5, $F4, $E5, $F2, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $E4, $AE, $AE, $AE, 1 ; *And...
    .BYTE $A0, $C9, $A7, $ED, $A0, $F5, $F0, $A0, $E6, $EF ;  I'm up for re-
    .BYTE $F2, $A0, $F2, $E5, $AD, 1
    .BYTE $A0, $E5, $EC, $E5, $E3, $F4, $E9, $EF, $EE, $A0 ;  election soon.
    .BYTE $F3, $EF, $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ; *You must help!
    .BYTE $E8, $E5, $EC, $F0, $A1, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E8, $E5 ;  Please help me!
    .BYTE $EC, $F0, $A0, $ED, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A1, $A2, 1 ; *Oh!?
    .BYTE $A0, $D9, $EF, $F5, $A0, $F7, $E9, $EC, $EC, $A0 ;  You will go there
    .BYTE $E7, $EF, $A0, $F4, $E8, $E5, $F2, $E5, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F3, $E1, $F6, $E5, $A0 ;  and save her?
    .BYTE $E8, $E5, $F2, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $F3, $A0, $F3, $E8, $E5, $A0, $F4, $E8 ; *Is she the lost
    .BYTE $E5, $A0, $EC, $EF, $F3, $F4, 1
    .BYTE $A0, $E7, $E9, $F2, $EC, $AC, $A0, $D0, $E9, $F0 ;  girl, Pippi?
    .BYTE $F0, $E9, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $EC, $EC, $A0, $F4, $E8, $E1, $F4 ; *Well that's just
    .BYTE $A7, $F3, $A0, $EA, $F5, $F3, $F4, 1
    .BYTE $A0, $E7, $F2, $E5, $E1, $F4, $AE, 1 ;  great.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EB, $EE, $E5, $F7, $A0, $F4, $E8 ; *I knew that you
    .BYTE $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E3, $EF, $F5, $EC, $E4, $A0, $E6, $F5, $EC ;  could fulfill your
    .BYTE $E6, $E9, $EC, $EC, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $E3, $E9, $F6, $E9, $E3, $A0, $E4, $F5, $F4 ;  civic duty.
    .BYTE $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $F0, $F0, $EC, $E1, $F5, $F3, $E5, $AC ; *Applause,
    .BYTE 1
    .BYTE $A0, $E1, $F0, $F0, $EC, $E1, $F5, $F3, $E5, $AE ;  applause...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F7, $A0, $F0, $F2, $E5, $F4, $F4 ; *Now pretty Pippi,
    .BYTE $F9, $A0, $D0, $E9, $F0, $F0, $E9, $AC, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E6, $EF, $F2 ;  don't forget...
    .BYTE $E7, $E5, $F4, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $F4, $EF, $A0, $F4, $E5, $EC, $EC, $A0, $F9 ; *to tell your Mom
    .BYTE $EF, $F5, $F2, $A0, $CD, $EF, $ED, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E8, $E5, $A0 ;  that the Mayor
    .BYTE $CD, $E1, $F9, $EF, $F2, 1
    .BYTE $A0, $F3, $E1, $F6, $E5, $E4, $A0, $F9, $EF, $F5 ;  saved you.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F2, $E5, $AC, $A0, $C9, $A0, $F7 ; *Here, I will give
    .BYTE $E9, $EC, $EC, $A0, $E7, $E9, $F6, $E5, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E1, $A0, $F0, $F2, $E9, $FA, $E5, $A0, $EF ;  a prize of
    .BYTE $E6, 1
    .BYTE $A0               ;
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C2, $F9, $A0, $F4, $E8, $E5, $A0, $F7, $E1 ; *By the way hero,
    .BYTE $F9, $A0, $E8, $E5, $F2, $EF, $AC, 1
    .BYTE 3
    .BYTE $C0, $ED, $E1, $F9, $E2, $E5, $A0, $F9, $EF, $F5 ; *maybe you'd like
    .BYTE $A7, $E4, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $EF, $A0, $F3, $E5, $E5 ;  to go see what's
    .BYTE $A0, $F7, $E8, $E1, $F4, $A7, $F3, 1
    .BYTE $A0, $F5, $F0, $A0, $E1, $F4, $A0, $F4, $E8, $E5 ;  up at the Zoo?
    .BYTE $A0, $DA, $EF, $EF, $A2, 1
    .BYTE 0
    .BYTE $C0, $D9, $E5, $F3, $AC, $A0, $F9, $EF, $F5, $A7 ; *Yes, you'll go?
    .BYTE $EC, $EC, $A0, $E7, $EF, $A2, 1
    .BYTE $A0, $C7, $F2, $E5, $E1, $F4, $AC, $A0, $E7, $F2 ;  Great, great
    .BYTE $E5, $E1, $F4, 1
    .BYTE $A0, $E7, $F2, $E5, $E1, $F4, $A1, 1 ;  great!
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F7, $A0, $ED, $E1, $EB, $E5, $A0 ; *Now make sure to
    .BYTE $F3, $F5, $F2, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E7, $E5, $F4, $A0, $E1, $A0, $CB, $E5, $F9 ;  get a Key from my
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $ED, $F9, 1
    .BYTE $A0, $E1, $F3, $F3, $E9, $F3, $F4, $E1, $EE, $F4 ;  assistant, Abbott.
    .BYTE $AC, $A0, $C1, $E2, $E2, $EF, $F4, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $CB, $E5, $F9, $A0 ; *This Key will open
    .BYTE $F7, $E9, $EC, $EC, $A0, $EF, $F0, $E5, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $DA, $EF, $EF, $A7, $F3 ;  the Zoo's gate.
    .BYTE $A0, $E7, $E1, $F4, $E5, $AE, 1
    .BYTE $A0, $CE, $EF, $F7, $A0, $E4, $EF, $EE, $A7, $F4 ;  Now don't lose it.
    .BYTE $A0, $EC, $EF, $F3, $E5, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D2, $E5, $F4, $F5, $F2, $EE, $A0, $E8, $E5 ; *Return her to me
    .BYTE $F2, $A0, $F4, $EF, $A0, $ED, $E5, 1
    .BYTE $A0, $E1, $EC, $E9, $F6, $E5, $AC, $A0, $E1, $EE ;  alive, and surely
    .BYTE $E4, $A0, $F3, $F5, $F2, $E5, $EC, $F9, 1
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $E2, $E5, $A0, $E1 ;  I'll be a hero...
    .BYTE $A0, $E8, $E5, $F2, $EF, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C5, $F2, $AC, $A0, $F5, $ED, $E8, $AC, $A0 ; *Er, umh, I mean
    .BYTE $C9, $A0, $ED, $E5, $E1, $EE, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $EC, $EC, $A0, $E2, $E5 ;  you'll be a hero.
    .BYTE $A0, $E1, $A0, $E8, $E5, $F2, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $F9, $A0, $E9, $E6, $A0, $E9, $F4 ; *Why if it's not
    .BYTE $A7, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $EF, $F5, $F2, $A0, $E8, $E5, $F2, $EF, $A0 ;  our hero
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $AC, 1            ; ,
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $A0 ; *You have tiger
    .BYTE $F4, $E9, $E7, $E5, $F2, 1
    .BYTE $A0, $E4, $F2, $EF, $F0, $F0, $E9, $EE, $E7, $F3 ;  droppings on your
    .BYTE $A0, $EF, $EE, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $E3, $EC, $EF, $F4, $E8, $E5, $F3, $AE, 1 ;  clothes.
    .BYTE 3
    .BYTE $C0, $C8, $E1, $AD, $E8, $E1, $AC, $A0, $EA, $F5 ; *Ha-ha, just
    .BYTE $F3, $F4, 1
    .BYTE $A0, $EA, $EF, $EB, $E9, $EE, $E7, $AE, $A0, $CE ;  joking. Now run
    .BYTE $EF, $F7, $A0, $F2, $F5, $EE, 1
    .BYTE $A0, $E1, $EC, $EF, $EE, $E7, $A0, $EB, $E9, $E4 ;  along kid.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E8, $E5, $E1, $F2 ; *I've heard a
    .BYTE $E4, $A0, $E1, 1
    .BYTE $A0, $F2, $F5, $ED, $EF, $F2, $A0, $E1, $E2, $EF ;  rumor about a
    .BYTE $F5, $F4, $A0, $E1, 1
    .BYTE $A0, $F7, $EF, $EE, $E4, $E5, $F2, $A0, $E7, $E9 ;  wonder girl.
    .BYTE $F2, $EC, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $E8, $E5, $A0, $F7, $E9, $EC, $EC, $A0 ; *She will help you
    .BYTE $E8, $E5, $EC, $F0, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EF, $EE, $A0, $F9, $EF, $F5, $F2, $A0, $F4 ;  on your trip.
    .BYTE $F2, $E9, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0, $DA, $EF, $EF, $A0, $CB, $E5, $F9, $F3, $A0 ; *Zoo Keys are a
    .BYTE $E1, $F2, $E5, $A0, $E1, 1
    .BYTE $A0, $E4, $E9, $ED, $E5, $A0, $E1, $A0, $E4, $EF ;  dime a dozen,
    .BYTE $FA, $E5, $EE, $AC, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E1, $EE, $EF, $F4 ;  have another.
    .BYTE $E8, $E5, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $EF, $EF, $EB, $A0, $E6, $EF, $F2, $A0 ; *Look for yourself,
    .BYTE $F9, $EF, $F5, $F2, $F3, $E5, $EC, $E6, $AC, 1
    .BYTE $A0, $E1, $EC, $EC, $A0, $F4, $E8, $E5, $A0, $E1 ;  all the animals
    .BYTE $EE, $E9, $ED, $E1, $EC, $F3, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E5, $F3, $E3, $E1 ;  have escaped.
    .BYTE $F0, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $EE, $EC, $F9, $A0, $F4, $E8, $E9, $F3 ; *Only this Canary
    .BYTE $A0, $C3, $E1, $EE, $E1, $F2, $F9, 1
    .BYTE $A0, $C3, $E8, $E9, $E3, $EB, $A0, $E9, $F3, $A0 ;  Chick is left.
    .BYTE $EC, $E5, $E6, $F4, $AE, 1
    .BYTE $A0, $D7, $E1, $EE, $F4, $A0, $F4, $EF, $A0, $E2 ;  Want to buy it?
    .BYTE $F5, $F9, $A0, $E9, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $E8, $EF, $F7 ; *Well, how about
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A2, 1            ; ?
    .BYTE 0
    .BYTE $C0, $CF, $CB, $A0, $EB, $E9, $E4, $AC, $A0, $E9 ; *OK kid, it's a
    .BYTE $F4, $A7, $F3, $A0, $E1, 1
    .BYTE $A0, $E6, $F2, $E5, $E5, $A0, $E3, $EF, $F5, $EE ;  free country, you
    .BYTE $F4, $F2, $F9, $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EB, $EE, $EF, $F7, $AE, 1 ;  know.
    .BYTE 0
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $E3, $E1, $F2, $E5 ; *Take care of it.
    .BYTE $A0, $EF, $E6, $A0, $E9, $F4, $AE, 1
    .BYTE $A0, $C3, $EF, $ED, $E5, $A0, $F3, $E5, $E5, $A0 ;  Come see us again!
    .BYTE $F5, $F3, $A0, $E1, $E7, $E1, $E9, $EE, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $E9, $F4, $A7, $F3, $A0, $E6 ; *If it's free, do
    .BYTE $F2, $E5, $E5, $AC, $A0, $E4, $EF, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A0 ;  you want it?
    .BYTE $E9, $F4, $A2, 1
    .BYTE $A0, $D4, $E8, $E5, $EE, $A0, $F4, $E1, $EB, $E5 ;  Then take it!
    .BYTE $A0, $E9, $F4, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A7, $F3, $A0, $F4, $E8, $E5 ; *How's the Canary?
    .BYTE $A0, $C3, $E1, $EE, $E1, $F2, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F4, $E8, $E9, $EE, $EB, $A0, $F3 ; *I think something
    .BYTE $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $E9, $F3, $A0, $E3, $EF, $EE, $F4, $F2, $EF ;  is controlling
    .BYTE $EC, $EC, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E1, $EE, $E9, $ED, $E1 ;  the animals.
    .BYTE $EC, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $E8, $AE, $AE, $AE, $A0, $E3, $F5, $F4 ; *Ah... cute pets
    .BYTE $E5, $A0, $F0, $E5, $F4, $F3, 1
    .BYTE $A0, $E1, $F2, $E5, $EE, $A7, $F4, $A0, $F4, $E8 ;  aren't they?
    .BYTE $E5, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $ED, $ED, $ED, $AE, 1 ; *Hmmm.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $F4, $F5, $F0, $E9 ; *You stupid jerk!
    .BYTE $E4, $A0, $EA, $E5, $F2, $EB, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $ED, $E1, $F9, $A0, $C9 ; *How may I help?
    .BYTE $A0, $E8, $E5, $EC, $F0, $A2, 1
    .BYTE $A0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $E8, $E1 ;  Do you have some-
    .BYTE $F6, $E5, $A0, $F3, $EF, $ED, $E5, $AD, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $A0, $F4, $EF, $A0 ;  thing to return?
    .BYTE $F2, $E5, $F4, $F5, $F2, $EE, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E1, $E9, $F4, $AE, $AE, $A0, $C1, $A0 ; *Wait.. A voice is
    .BYTE $F6, $EF, $E9, $E3, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $F3, $F0, $E5, $E1, $EB, $E9, $EE, $E7, $A0 ;  speaking into
    .BYTE $E9, $EE, $F4, $EF, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $ED, $E9, $EE, $E4, $AE, 1 ; 's mind.
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $AE, 1 ; *Good.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you for
    .BYTE $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F3, $E8, $EF, $F0, $F0, $E9, $EE, $E7, $A0 ;  shopping with us
    .BYTE $F7, $E9, $F4, $E8, $A0, $F5, $F3, 1
    .BYTE $A0, $F4, $EF, $E4, $E1, $F9, $AE, 1 ;  today.
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E3, $EF, $EE, $F6 ; *It's convenient that
    .BYTE $E5, $EE, $E9, $E5, $EE, $F4, $A0, $F4, $E8, $E1
    .BYTE $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E3, $E1, $F3, $E8, $A0 ;  the cash machine is
    .BYTE $ED, $E1, $E3, $E8, $E9, $EE, $E5, $A0, $E9, $F3
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $EE, $E5, $F8, $F4, $A0, $F4, $EF, $A0, $F4 ; *next to the
    .BYTE $E8, $E5, 1
    .BYTE $A0, $D3, $E5, $F2, $F6, $E9, $E3, $E5, $A0, $C3 ;  Service Counter,
    .BYTE $EF, $F5, $EE, $F4, $E5, $F2, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $AC, $A0, $F7, $E8, $F9, $A0 ; *but, why should I
    .BYTE $F3, $E8, $EF, $F5, $EC, $E4, $A0, $C9, 1
    .BYTE $A0, $E3, $E1, $F2, $E5, $AE, $A0, $C9, $A0, $E4 ;  care. I don't have a
    .BYTE $EF, $EE, $A7, $F4, $A0, $E8, $E1, $F6, $E5, $A0
    .BYTE $E1, 1
    .BYTE $A0, $E3, $E1, $F2, $E4, $A0, $E6, $EF, $F2, $A0 ;  card for it.
    .BYTE $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E6, $E9, $EE, $E5 ; *It's fine weather
    .BYTE $A0, $F7, $E5, $E1, $F4, $E8, $E5, $F2, 1
    .BYTE $A0, $F4, $EF, $E4, $E1, $F9, $AE, 1 ;  today.
    .BYTE $A0, $C2, $F5, $F4, $AC, $A0, $C9, $A0, $E4, $EF ;  But, I don't care.
    .BYTE $EE, $A7, $F4, $A0, $E3, $E1, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $EF, $F7, $A1, $A0, $D4, $E8, $E1, $F4 ; *Wow! That Canary
    .BYTE $A0, $C3, $E1, $EE, $E1, $F2, $F9, 1
    .BYTE $A0, $E9, $F3, $A0, $F4, $E8, $E5, $A0, $E2, $E1 ;  is the baby of
    .BYTE $E2, $F9, $A0, $EF, $E6, 1
    .BYTE $A0, $F3, $E9, $EE, $E7, $E9, $EE, $E7, $A0, $CC ;  singing Laura.
    .BYTE $E1, $F5, $F2, $E1, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E9, $EC, $EC, $A0, $F9, $EF, $F5, $A0 ; *Will you return her
    .BYTE $F2, $E5, $F4, $F5, $F2, $EE, $A0, $E8, $E5, $F2
    .BYTE 1
    .BYTE $A0, $E2, $E1, $E2, $F9, $A0, $F4, $EF, $A0, $E8 ;  baby to her.
    .BYTE $E5, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E1, $E9, $F4, $AE, $AE, $AE, 1 ; *Wait...
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $EA, $F5, $F3, $F4, $A0 ; *You just missed
    .BYTE $ED, $E9, $F3, $F3, $E5, $E4, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something very
    .BYTE $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $E9, $ED, $F0, $EF, $F2, $F4, $E1, $EE, $F4 ;  important.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ; *Where is Laura?...
    .BYTE $CC, $E1, $F5, $F2, $E1, $A2, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $E1, $F5, $F2, $E1, $A0, $F2, $E5, $ED ; *Laura remembered
    .BYTE $E5, $ED, $E2, $E5, $F2, $E5, $E4, 1
    .BYTE $A0, $E8, $E5, $F2, $A0, $F3, $EF, $EE, $E7, $AC ;  her song, and began
    .BYTE $A0, $E1, $EE, $E4, $A0, $E2, $E5, $E7, $E1, $EE
    .BYTE 1
    .BYTE $A0, $F4, $EF, $A0, $F3, $E9, $EE, $E7, $A0, $EF ;  to sing once more.
    .BYTE $EE, $E3, $E5, $A0, $ED, $EF, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $EC ; *Did you learn
    .BYTE $E5, $E1, $F2, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $E5, $EC, $EF, $E4 ;  the melody?
    .BYTE $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $EE, $EF ; *That's no good.
    .BYTE $A0, $E7, $EF, $EF, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F4, $F2, $F5, $F4, $E8 ; *The truth is...
    .BYTE $A0, $E9, $F3, $AE, $AE, $AE, 1
    .BYTE $A0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ;  There is power in
    .BYTE $F0, $EF, $F7, $E5, $F2, $A0, $E9, $EE, 1
    .BYTE $A0, $F3, $EF, $EE, $E7, $AE, 1 ;  song.
    .BYTE 0
    .BYTE $C0, $C8, $E9, $A1, $A0, $C9, $A0, $E1, $ED, $A0 ; *Hi! I am Pippi,
    .BYTE $D0, $E9, $F0, $F0, $E9, $AC, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $C9, $A7, $ED, $A0, $EC ;  and I'm lost.
    .BYTE $EF, $F3, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E1, $A0, $E2, $F2 ; *What a brave
    .BYTE $E1, $F6, $E5, 1
    .BYTE $A0, $E2, $EF, $F9, $A0, $F9, $EF, $F5, $A0, $E1 ;  boy you are to
    .BYTE $F2, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E6, $EF, $F5, $EE ;  have found me.
    .BYTE $E4, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E7, $E5, $F4 ; *Don't get so
    .BYTE $A0, $F3, $EF, 1
    .BYTE $A0, $F3, $F7, $E5, $EC, $EC, $A0, $E8, $E5, $E1 ;  swell headed.
    .BYTE $E4, $E5, $E4, $AE, 1
    .BYTE $A0, $C8, $E1, $AD, $E8, $E1, $AD, $E8, $E1, $AE ;  Ha-ha-ha.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $E2, $F2 ; *You're brave. I
    .BYTE $E1, $F6, $E5, $AE, $A0, $C9, 1
    .BYTE $A0, $E8, $EF, $F0, $E5, $A0, $F7, $E5, $A0, $E3 ;  hope we can meet
    .BYTE $E1, $EE, $A0, $ED, $E5, $E5, $F4, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $A0, $F3, $EF, $ED ;  again sometime.
    .BYTE $E5, $F4, $E9, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $EF, $A0, $E8, $E1 ; *I'm so happy!  To
    .BYTE $F0, $F0, $F9, $A1, $A0, $A0, $D4, $EF, 1
    .BYTE $A0, $F3, $E8, $EF, $F7, $A0, $ED, $F9, $A0, $E7 ;  show my gratitude
    .BYTE $F2, $E1, $F4, $E9, $F4, $F5, $E4, $E5, 1
    .BYTE $A0, $F4, $E1, $EB, $E5, $A0, $ED, $F9, $A0, $E7 ;  take my gift.
    .BYTE $E9, $E6, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $F3, $E8, $E9, $EE ; *This shiny Badge
    .BYTE $F9, $A0, $C2, $E1, $E4, $E7, $E5, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E7, $F5, $E1, $F2 ;  will guard you.
    .BYTE $E4, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE $A0, $CB, $E5, $E5, $F0, $A0, $E9, $F4, $A1, 1 ;  Keep it!
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F0, $F2, $EF, $E2, $E1 ; *You probably
    .BYTE $E2, $EC, $F9, 1
    .BYTE $A0, $E1, $EC, $F2, $E5, $E1, $E4, $F9, $A0, $E8 ;  already have
    .BYTE $E1, $F6, $E5, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $EF, $EE, $E5, $A0, $F3 ;  someone special,
    .BYTE $F0, $E5, $E3, $E9, $E1, $EC, $AC, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F7, $AC, $A0, $E9, $F4, $A7, $F3 ; *Now, it's time to
    .BYTE $A0, $F4, $E9, $ED, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $E1, $F9, $A0, $E7, $EF, $EF, $E4, $AD ;  say good-bye.
    .BYTE $E2, $F9, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $EF ; *Please come by my
    .BYTE $ED, $E5, $A0, $E2, $F9, $A0, $ED, $F9, 1
    .BYTE $A0, $E8, $EF, $F5, $F3, $E5, $AC, $A0, $C9, $A7 ;  house, I'll be
    .BYTE $EC, $EC, $A0, $E2, $E5, 1
    .BYTE $A0, $F7, $E1, $E9, $F4, $E9, $EE, $E7, $A0, $F4 ;  waiting there to
    .BYTE $E8, $E5, $F2, $E5, $A0, $F4, $EF, 1
    .BYTE 3
    .BYTE $C0, $F3, $E5, $E5, $A0, $F9, $EF, $F5, $A0, $E1 ; *see you again.
    .BYTE $E7, $E1, $E9, $EE, $AE, 1
    .BYTE $A0, $C2, $F9, $A0, $F4, $E8, $E5, $A0, $F7, $E1 ;  By the way...
    .BYTE $F9, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $F4, $E8 ; *Do you think my
    .BYTE $E9, $EE, $EB, $A0, $ED, $F9, 1
    .BYTE $A0, $E8, $E1, $E9, $F2, $A0, $EE, $E5, $E5, $E4 ;  hair needs
    .BYTE $F3, 1
    .BYTE $A0, $F3, $F4, $F9, $EC, $E9, $EE, $E7, $A2, 1 ;  styling?
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $E9, $E4, $EE, $A7 ; *You didn't have to
    .BYTE $F4, $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E1, $EE, $F3, $F7, $E5, $F2, $AC, $A0, $E3 ;  answer, cutie.
    .BYTE $F5, $F4, $E9, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C5, $C5, $C5, $AC, $A0, $C5, $C5, $A0, $C5 ; *EEE, EE EEK,
    .BYTE $C5, $CB, $AC, 1
    .BYTE $A0, $C5, $C5, $CB, $A0, $C5, $C5, $CB, $A1, 1 ;  EEK EEK!
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $E5, $EC, $F4, $A0, $F4, $E8, $E9, $F3 ;  felt this
    .BYTE 1
    .BYTE $A0, $F1, $F5, $E5, $F3, $F4, $E9, $EF, $EE, $A0 ;  question enter
    .BYTE $E5, $EE, $F4, $E5, $F2, $A0, 1
    .BYTE $A0, $E8, $E9, $F3, $A0, $ED, $E9, $EE, $E4, $AE ;  his mind.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $A6, $D7, $E8, $EF, $A0, $E8, $E1, $F3, $A0 ; *"Who has lost
    .BYTE $EC, $EF, $F3, $F4, 1
    .BYTE $A0, $E8, $E9, $F3, $A0, $F4, $E1, $E9, $EC, $A2 ;  his tail?"
    .BYTE $A6, 1
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A1, $A0, $D7, $E8, $E1, $F4, $A0 ; *My! What strange
    .BYTE $F3, $F4, $F2, $E1, $EE, $E7, $E5, 1
    .BYTE $A0, $E3, $EC, $EF, $F4, $E8, $E9, $EE, $E7, $A0 ;  clothing you wear!
    .BYTE $F9, $EF, $F5, $A0, $F7, $E5, $E1, $F2, $A1, 1
    .BYTE 3
    .BYTE $C0, $D3, $F5, $F2, $E5, $EC, $F9, $A0, $ED, $EF ; *Surely monsters
    .BYTE $EE, $F3, $F4, $E5, $F2, $F3, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E3, $EF, $ED, $E5 ;  will come after
    .BYTE $A0, $E1, $E6, $F4, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $EF, $F3, $E5, $A0, $E3, $EC, $EF ;  those clothes!!
    .BYTE $F4, $E8, $E5, $F3, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $E2 ; *Are you bothered that
    .BYTE $EF, $F4, $E8, $E5, $F2, $E5, $E4, $A0, $F4, $E8
    .BYTE $E1, $F4, 1
    .BYTE $A0, $F5, $EE, $E8, $E1, $F0, $F0, $E9, $EE, $E5 ;  unhappiness and
    .BYTE $F3, $F3, $A0, $E1, $EE, $E4, 1
    .BYTE 3
    .BYTE $C0, $ED, $E9, $F3, $E6, $EF, $F2, $F4, $F5, $EE ; *misfortune search
    .BYTE $E5, $A0, $F3, $E5, $E1, $F2, $E3, $E8, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $EF, $F5, $F4, $A2, 1 ;  you out?
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E4, $E5 ; *If you desire to
    .BYTE $F3, $E9, $F2, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $EE, $E5, $F6, $E5, $F2, $A0, $E6, $E9, $EE ;  never find
    .BYTE $E4, 1
    .BYTE $A0, $F4, $F2, $EF, $F5, $E2, $EC, $E5, $AE, $AE ;  trouble...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $D4, $C1, $D9, $A0, $C8, $CF, $CD, $C5 ; *STAY HOME!!
    .BYTE $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E1, $F4, $A0, $F2 ; *Is that right?
    .BYTE $E9, $E7, $E8, $F4, $A2, 1
    .BYTE $A0, $D4, $F2, $EF, $F5, $E2, $EC, $E5, $A0, $F3 ;  Trouble searches
    .BYTE $E5, $E1, $F2, $E3, $E8, $E5, $F3, 1
    .BYTE $A0, $E1, $E6, $F4, $E5, $F2, $A0, $F9, $EF, $F5 ;  after you?
    .BYTE $A2, 1
    .BYTE 3
    .BYTE $C0, $C8, $ED, $ED, $AC, $A0, $F4, $E8, $E1, $F4 ; *Hmm, that's too
    .BYTE $A7, $F3, $A0, $F4, $EF, $EF, 1
    .BYTE $A0, $E2, $E1, $E4, $AE, 1 ;  bad.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $EE, $AC, $A0, $F9, $EF, $F5 ; *Then, you admit I
    .BYTE $A0, $E1, $E4, $ED, $E9, $F4, $A0, $C9, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E7, $EF, $EF, $E4 ;  have good taste.
    .BYTE $A0, $F4, $E1, $F3, $F4, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $F5, $E8, $A2, 1 ; *Huh?
    .BYTE $A0, $D9, $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A0 ;  You want a cool
    .BYTE $E1, $A0, $E3, $EF, $EF, $EC, 1
    .BYTE $A0, $EE, $E9, $E3, $EB, $EE, $E1, $ED, $E5, $AC ;  nickname, too?
    .BYTE $A0, $F4, $EF, $EF, $A2, 1
    .BYTE 0
    .BYTE $C0, $CF, $CB, $AC, $A0, $C9, $A7, $F6, $E5, $A0 ; *OK, I've got it!
    .BYTE $E7, $EF, $F4, $A0, $E9, $F4, $A1, 1
    .BYTE $A0, $C6, $F2, $EF, $ED, $A0, $EE, $EF, $F7, $A0 ;  From now on, you
    .BYTE $EF, $EE, $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E1, $F2, $E5, $A0, $CE, $EF, $EF, $E4, $EC ;  are Noodlenoggin!
    .BYTE $E5, $EE, $EF, $E7, $E7, $E9, $EE, $A1, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $F5, $EE, $E4, $F3, $A0, $F0, $F2 ; *Sounds pretty
    .BYTE $E5, $F4, $F4, $F9, 1
    .BYTE $A0, $E3, $EF, $EF, $EC, $AC, $A0, $E4, $EF, $E5 ;  cool, doesn't it?
    .BYTE $F3, $EE, $A7, $F4, $A0, $E9, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E1, $F4, $A0, $F2 ; *Is that right?
    .BYTE $E9, $E7, $E8, $F4, $A2, 1
    .BYTE $A0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $F4, $EF ;  That's too bad.
    .BYTE $EF, $A0, $E2, $E1, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $EC, $EC, $EF, $AC, $A0, $F4, $E8 ; *Hello, there!
    .BYTE $E5, $F2, $E5, $A1, 1
    .BYTE $A0, $CE, $EF, $EF, $E4, $EC, $E5, $EE, $EF, $E7 ;  Noodlenoggin
    .BYTE $E7, $E9, $EE, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you ever met
    .BYTE $E5, $F6, $E5, $F2, $A0, $ED, $E5, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $E1, $EE, $A0, $F7 ;  the man who practices
    .BYTE $E8, $EF, $A0, $F0, $F2, $E1, $E3, $F4, $E9, $E3
    .BYTE $E5, $F3, 1
    .BYTE $A0, $F0, $E8, $E9, $EC, $EF, $F3, $EF, $F0, $E8 ;  philosophy?
    .BYTE $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $A0, $E9, $F3, $A0, $F3, $EF, $A0 ; *He is so good at
    .BYTE $E7, $EF, $EF, $E4, $A0, $E1, $F4, 1
    .BYTE $A0, $EE, $E9, $E3, $EB, $EE, $E1, $ED, $E9, $EE ;  nicknaming.
    .BYTE $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $A0, $F5, $F3, $E5, $F3, $A0, $F3 ; *He uses such...
    .BYTE $F5, $E3, $E8, $AE, $AE, $AE, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A0, $F4, $E1, $F3, $F4 ;  good taste in it.
    .BYTE $E5, $A0, $E9, $EE, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $EE, $A0, $F4, $E8, $E5, $A0, $E6, $E9 ; *In the first
    .BYTE $F2, $F3, $F4, 1
    .BYTE $A0, $F0, $EC, $E1, $E3, $E5, $AC, $A0, $E9, $E6 ;  place, if we
    .BYTE $A0, $F7, $E5, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $EE, $EF, $F4, $A0 ;  have not met
    .BYTE $ED, $E5, $F4, 1
    .BYTE 3
    .BYTE $C0, $F7, $E5, $A0, $E3, $E1, $EE, $EE, $EF, $F4 ; *we cannot part!
    .BYTE $A0, $F0, $E1, $F2, $F4, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you met a man
    .BYTE $ED, $E5, $F4, $A0, $E1, $A0, $ED, $E1, $EE, 1
    .BYTE $A0, $F7, $E8, $EF, $A0, $F3, $E1, $F9, $F3, $AC ;  who says, that you
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E3, $E1, $EE, $EE, $EF, $F4, $A0, $F0, $E1 ;  cannot part,
    .BYTE $F2, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $F7, $E9, $F4, $E8, $A0, $F3, $EF, $ED, $E5 ; *with someone you
    .BYTE $EF, $EE, $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $EE, $EF, $F4, $A0 ;  have not met?
    .BYTE $ED, $E5, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F4, $E5, $EE, $E4, $A0, $F4, $EF ; *I tend to think
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F3, $E1, $ED, $E5, $A0 ;  the same way, too.
    .BYTE $F7, $E1, $F9, $AC, $A0, $F4, $EF, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $E8, $EF, $F5, $EC ; *You should meet
    .BYTE $E4, $A0, $ED, $E5, $E5, $F4, 1
    .BYTE $A0, $E8, $E9, $ED, $AE, 1 ;  him.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F2, $E5, $E7, $E1, $E9, $EE, $E5 ; *I regained my
    .BYTE $E4, $A0, $ED, $F9, 1
    .BYTE $A0, $F3, $F4, $F2, $E5, $EE, $E7, $F4, $E8, $A0 ;  strength at Queen
    .BYTE $E1, $F4, $A0, $D1, $F5, $E5, $E5, $EE, 1
    .BYTE $A0, $CD, $E1, $F2, $F9, $A7, $F3, $A0, $E6, $EF ;  Mary's fountain.
    .BYTE $F5, $EE, $F4, $E1, $E9, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $E1, $E4, $A0, $F4 ; *The bad thing
    .BYTE $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, $A0, $D1, $F5, $E5 ;  about Queen Mary's
    .BYTE $E5, $EE, $A0, $CD, $E1, $F2, $F9, $A7, $F3, 1
    .BYTE $A0, $E6, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $A0 ;  fountain is...
    .BYTE $E9, $F3, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E1, $F4, $A0, $E9, $F4, $A0, $E9 ; *that it is so far
    .BYTE $F3, $A0, $F3, $EF, $A0, $E6, $E1, $F2, 1
    .BYTE $A0, $E1, $F7, $E1, $F9, $AC, $A0, $E1, $EE, $E4 ;  away, and so hard
    .BYTE $A0, $F3, $EF, $A0, $E8, $E1, $F2, $E4, 1
    .BYTE $A0, $F4, $EF, $A0, $E6, $E9, $EE, $E4, $AE, 1 ;  to find.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E1, $EB, $E9 ; *I am taking this
    .BYTE $EE, $E7, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $E2, $F2, $EF, $EB, $E5, $EE, $A0, $E5, $E1 ;  broken earring to
    .BYTE $F2, $F2, $E9, $EE, $E7, $A0, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E6, $EF, $F5, $EE, $F4 ;  the fountain.
    .BYTE $E1, $E9, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $E2, $E5, $F4, $A0 ; *I'll bet it'll
    .BYTE $E9, $F4, $A7, $EC, $EC, 1
    .BYTE $A0, $E3, $E8, $E1, $EE, $E7, $E5, $A0, $E9, $EE ;  change into a
    .BYTE $F4, $EF, $A0, $E1, 1
    .BYTE $A0, $ED, $E1, $E7, $E9, $E3, $A0, $E5, $E1, $F2 ;  magic earring.
    .BYTE $F2, $E9, $EE, $E7, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $ED, $F9, $F3, $F4, $E5 ; *The mysterious
    .BYTE $F2, $E9, $EF, $F5, $F3, 1
    .BYTE $A0, $F3, $EF, $F5, $EE, $E4, $A0, $EF, $E6, $A0 ;  sound of the
    .BYTE $F4, $E8, $E5, 1
    .BYTE $A0, $E6, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $A0 ;  fountain soothes.
    .BYTE $F3, $EF, $EF, $F4, $E8, $E5, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $EF, $F2, $E5, $A0, $F4, $EF, $A0, $F4 ; *More to the south.
    .BYTE $E8, $E5, $A0, $F3, $EF, $F5, $F4, $E8, $AE, 1
    .BYTE $A0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $EC ;  Are you lost?
    .BYTE $EF, $F3, $F4, $A2, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $AE, $AE, $AE, $C9 ; *Sorry...I was
    .BYTE $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $E4, $E9, $F2, $E5, $E3, $F4, $E9, $EE, $E7 ;  directing you to
    .BYTE $A0, $F9, $EF, $F5, $A0, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F2, $E5, $F3, $F4, $A0 ;  the rest room.
    .BYTE $F2, $EF, $EF, $ED, $AE, 1
    .BYTE 3
    .BYTE $C0, $D1, $F5, $E5, $E5, $EE, $A0, $CD, $E1, $F2 ; *Queen Mary's
    .BYTE $F9, $A7, $F3, 1
    .BYTE $A0, $C6, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $A0 ;  Fountain is west
    .BYTE $E9, $F3, $A0, $F7, $E5, $F3, $F4, 1
    .BYTE $A0, $EF, $E6, $A0, $F4, $E8, $E5, $A0, $E3, $E1 ;  of the castle.
    .BYTE $F3, $F4, $EC, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E2, $E5, $EE, $F4, $A0, $ED, $F9 ; *I bent my spoon
    .BYTE $A0, $F3, $F0, $EF, $EF, $EE, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E9, $F4, $A7, $F3, $A0 ;  and it's hard to
    .BYTE $E8, $E1, $F2, $E4, $A0, $F4, $EF, 1
    .BYTE $A0, $F5, $F3, $E5, $A0, $EC, $E9, $EB, $E5, $A0 ;  use like this.
    .BYTE $F4, $E8, $E9, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $F4, $E8 ; *Do you think
    .BYTE $E9, $EE, $EB, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $E8, $EF, $F7, $A0, $F9 ;  somehow you could
    .BYTE $EF, $F5, $A0, $E3, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $E6, $E9, $F8, $A0, $E9, $F4, $A0, $E6, $EF ;  fix it for me?
    .BYTE $F2, $A0, $ED, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E6, $E9 ; *Please fix it
    .BYTE $F8, $A0, $E9, $F4, 1
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A0, $E1, $F7, $E1 ;  right away.
    .BYTE $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $E9, $F8, $E5, $E4, 1 ;  fixed
    .BYTE $A0, $F4, $E8, $E5, $A0, $F3, $F0, $EF, $EF, $EE ;  the spoon with
    .BYTE $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $D0, $D3, $C9, $AD, $D0, $EF, $F7, $E5, $F2 ;  PSI-Power.)
    .BYTE $AE, $A9, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $F3, $A0, $E1, $A0 ; *Thanks a million!
    .BYTE $ED, $E9, $EC, $EC, $E9, $EF, $EE, $A1, 1
    .BYTE $A0, $CD, $F5, $EE, $E3, $E8, $AC, $A0, $ED, $F5 ;  Munch, munch...
    .BYTE $EE, $E3, $E8, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F9, $AC, $A0, $F7, $EF, $F5, $EC ; *Hey, would you
    .BYTE $E4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, $A0, $F3 ;  like to spend
    .BYTE $F0, $E5, $EE, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EE, $E9, $E7, $E8, $F4 ;  the night here?
    .BYTE $A0, $E8, $E5, $F2, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $F9, $A0, $EE, $EF, $F4, $A2, $A0 ; *Why not? You can
    .BYTE $D9, $EF, $F5, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $E6, $E9, $F8, $A0, $E9, $F4, $A0, $F7, $E9 ;  fix it without any
    .BYTE $F4, $E8, $EF, $F5, $F4, $A0, $E1, $EE, $F9, 1
    .BYTE $A0, $F0, $E8, $F9, $F3, $E9, $E3, $E1, $EC, $A0 ;  physical effort!
    .BYTE $E5, $E6, $E6, $EF, $F2, $F4, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $E1, $A0 ; *You're a strange
    .BYTE $F3, $F4, $F2, $E1, $EE, $E7, $E5, 1
    .BYTE $A0, $F0, $E5, $F2, $F3, $EF, $EE, $AE, $AE, $AE ;  person...
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $E6, $EF, $F2, $A0, $F3 ; *but for some
    .BYTE $EF, $ED, $E5, 1
    .BYTE $A0, $F2, $E5, $E1, $F3, $EF, $EE, $AC, $A0, $C9 ;  reason, I like
    .BYTE $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $AE, 1 ;  you.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $E7, $EF ; *That's good.
    .BYTE $EF, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C2, $EF, $EF, $A0, $E8, $EF, $EF, $A0, $E8 ; *Boo hoo hoo... You
    .BYTE $EF, $EF, $AE, $AE, $AE, $A0, $D9, $EF, $F5, 1
    .BYTE $A0, $F3, $E8, $EF, $F5, $EC, $E4, $A0, $E1, $E3 ;  should accept
    .BYTE $E3, $E5, $F0, $F4, 1
    .BYTE $A0, $EB, $E9, $EE, $E4, $EE, $E5, $F3, $F3, $A0 ;  kindness graciously.
    .BYTE $E7, $F2, $E1, $E3, $E9, $EF, $F5, $F3, $EC, $F9
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F4, $F2, $E1, $F6, $E5 ; *Oh, traveller! Why
    .BYTE $EC, $EC, $E5, $F2, $A1, $A0, $D7, $E8, $F9, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ;  don't you enjoy a
    .BYTE $A0, $E5, $EE, $EA, $EF, $F9, $A0, $E1, 1
    .BYTE $A0, $ED, $E5, $E1, $EC, $A0, $E1, $F4, $A0, $EF ;  meal at our house?
    .BYTE $F5, $F2, $A0, $E8, $EF, $F5, $F3, $E5, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $EC, $EC, $AE, $AE, $AE, $AE, $A0 ; *Well.... Today's
    .BYTE $D4, $EF, $E4, $E1, $F9, $A7, $F3, 1
    .BYTE $A0, $F3, $F0, $E5, $E3, $E9, $E1, $EC, $AE, $A0 ;  special. Can you
    .BYTE $C3, $E1, $EE, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E7, $F5, $E5, $F3, $F3, $A0, $F7, $E8, $E1 ;  guess what it is?
    .BYTE $F4, $A0, $E9, $F4, $A0, $E9, $F3, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $F9, $A0, $EE, $EF, $F4, $A1, $A2 ; *Why not!? You sound
    .BYTE $A0, $D9, $EF, $F5, $A0, $F3, $EF, $F5, $EE, $E4
    .BYTE 1
    .BYTE $A0, $F3, $EF, $A0, $F3, $F5, $F3, $F0, $E9, $E3 ;  so suspicious!
    .BYTE $E9, $EF, $F5, $F3, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $E5, $F3, $AC, $A0, $E9, $F4, $A7, $F3 ; *Yes, it's
    .BYTE $A0, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EB, $EE, $E5, $F7, $A0, $F9, $EF ; *I knew you liked
    .BYTE $F5, $A0, $EC, $E9, $EB, $E5, $E4, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset
    .BYTE $AE, $A0, $C4, $EF, $A0, $F9, $EF, $F5, 1 ; . Do you
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F3, $EF, $ED, $E5 ;  want some?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $F7, $E1, $F3, $A0 ; *This was to be a
    .BYTE $F4, $EF, $A0, $E2, $E5, $A0, $E1, 1
    .BYTE $A0, $ED, $F5, $F3, $E9, $E3, $E1, $EC, $A0, $E9 ;  musical instrument
    .BYTE $EE, $F3, $F4, $F2, $F5, $ED, $E5, $EE, $F4, 1
    .BYTE $A0, $F3, $F4, $EF, $F2, $E5, $AC, 1 ;  store,
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $F4, $E8, $E5, $A0, $CF ; *but the Ocarina
    .BYTE $E3, $E1, $F2, $E9, $EE, $E1, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F7, $E5, $A0, $EF ;  that we ordered
    .BYTE $F2, $E4, $E5, $F2, $E5, $E4, 1
    .BYTE $A0, $EE, $E5, $F6, $E5, $F2, $A0, $E1, $F2, $F2 ;  never arrived.
    .BYTE $E9, $F6, $E5, $E4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $A0, $C9, $A7, $F6, $E5, $A0, $E7 ; *So I've given up.
    .BYTE $E9, $F6, $E5, $EE, $A0, $F5, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E1, $F4, $A0, $F3 ; *Is that so?
    .BYTE $EF, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $F3, $AE, $A0, $D9 ; *Thanks. Your bed
    .BYTE $EF, $F5, $F2, $A0, $E2, $E5, $E4, 1
    .BYTE $A0, $E9, $F3, $A0, $F2, $E5, $E1, $E4, $F9, $AE ;  is ready. Please
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, 1
    .BYTE $A0, $F3, $EC, $E5, $E5, $F0, $A0, $F7, $E5, $EC ;  sleep well.
    .BYTE $EC, $AE, 1
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; CHARS BANKS 0x88 - 0x8F
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E6, $E5 ; *Please feel free
    .BYTE $E5, $EC, $A0, $E6, $F2, $E5, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $F5, $F3, $E5, $A0, $EF, $F5 ;  to use our bed
    .BYTE $F2, $A0, $E2, $E5, $E4, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E9, $ED, $E5, $AE, 1 ;  anytime.
    .BYTE 0
    .BYTE $C0, $D3, $F4, $F2, $E1, $EE, $E7, $E5, $F2, $AC ; *Stranger, I can
    .BYTE $A0, $C9, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $F4, $E5, $EC, $EC, $A0, $F9, $EF, $F5, $A7 ;  tell you're not
    .BYTE $F2, $E5, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $F4, $E8, $E9, $F3 ;  from this place.
    .BYTE $A0, $F0, $EC, $E1, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $CF, $E3, $E1, $F2, $E9 ; *The Ocarina of
    .BYTE $EE, $E1, $A0, $EF, $E6, 1
    .BYTE $A0, $C8, $EF, $F0, $E5, $A0, $E9, $F3, $A0, $E6 ;  Hope is finally
    .BYTE $E9, $EE, $E1, $EC, $EC, $F9, 1
    .BYTE $A0, $E3, $EF, $ED, $F0, $EC, $E5, $F4, $E5, $E4 ;  completed.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $F3, $A0, $ED, $E5, $EC, $EF, $E4 ; *Its melody
    .BYTE $F9, 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $EE, $EF, $F7, $A0, $E6 ;  can now flow out
    .BYTE $EC, $EF, $F7, $A0, $EF, $F5, $F4, 1
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $E9, $F4, $AE, 1 ;  from it.
    .BYTE 3
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $F7, $E1 ; *Do you want it?
    .BYTE $EE, $F4, $A0, $E9, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $E1, $A0 ; *You're a pretty
    .BYTE $F0, $F2, $E5, $F4, $F4, $F9, 1
    .BYTE $A0, $F3, $F4, $F2, $E1, $E9, $E7, $E8, $F4, $A0 ;  straight looking
    .BYTE $EC, $EF, $EF, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $E4, $F5, $E4, $E5, $AC, $A0, $C7, $EF, $A0 ;  dude, Go ahead.
    .BYTE $E1, $E8, $E5, $E1, $E4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E1, $A0, $E8, $E1, $A0, $E8, $E1, $AE ; *Ha ha ha.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F1, $F5, $E9, $F4 ; *It's quite obvious
    .BYTE $E5, $A0, $EF, $E2, $F6, $E9, $EF, $F5, $F3, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $A0 ;  that you want it.
    .BYTE $F7, $E1, $EE, $F4, $A0, $E9, $F4, $AE, 1
    .BYTE $A0, $C8, $E1, $A0, $E8, $E1, $A0, $E8, $E1, $AE ;  Ha ha ha.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C7, $EF, $A0, $E1, $E8, $E5, $E1, $E4, $AC ; *Go ahead, take it.
    .BYTE $A0, $F4, $E1, $EB, $E5, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $AC, $A0, $EB, $E9, $E4, $A1 ; *Hey, kid!
    .BYTE $A0, 1
    .BYTE $A0, $C8, $EF, $F7, $A0, $E1, $F2, $E5, $A0, $F9 ;  How are you doing?
    .BYTE $EF, $F5, $A0, $E4, $EF, $E9, $EE, $E7, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ; *There is no exit
    .BYTE $EE, $EF, $A0, $E5, $F8, $E9, $F4, 1
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $E1, $A0, $F0, $EC ;  from a place like
    .BYTE $E1, $E3, $E5, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $CD, $E1, $E7, $E9, $E3, $E1, $EE, $F4, $AE ;  Magicant.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C8, $E1, $A0, $E8, $E1, $A0, $E8, $E1, $AE ; *Ha ha ha...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $F5, $F4, $F3, $E9, $E4, $E5, $A2, 1 ; *Outside?
    .BYTE $A0, $C1, $A0, $F7, $EF, $F2, $EC, $E4, $A0, $EF ;  A world outside?
    .BYTE $F5, $F4, $F3, $E9, $E4, $E5, $A2, 1
    .BYTE $A0, $D7, $E8, $E1, $F4, $A0, $E4, $EF, $A0, $F9 ;  What do you mean?
    .BYTE $EF, $F5, $A0, $ED, $E5, $E1, $EE, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F3, $EF, $A0, $E5 ; *I am so embarrassed!
    .BYTE $ED, $E2, $E1, $F2, $F2, $E1, $F3, $F3, $E5, $E4
    .BYTE $A1, 1
    .BYTE $A0, $C9, $A0, $F7, $E9, $F3, $E8, $A0, $C9, $A0 ;  I wish I could
    .BYTE $E3, $EF, $F5, $EC, $E4, $A0, 1
    .BYTE $A0, $E3, $F2, $E1, $F7, $EC, $A0, $E9, $EE, $F4 ;  crawl into a hole.
    .BYTE $EF, $A0, $E1, $A0, $E8, $EF, $EC, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, 1 ; *I am the
    .BYTE $A0, $CD, $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5 ;  Mysterious
    .BYTE $F3, 1
    .BYTE $A0, $C7, $EF, $EF, $E4, $F3, $AD, $CB, $E5, $E5 ;  Goods-Keeper.
    .BYTE $F0, $E5, $F2, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $A0 ; *You have a need?
    .BYTE $E1, $A0, $EE, $E5, $E5, $E4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, 1 ; *I am the
    .BYTE $A0, $CD, $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5 ;  Mysterious
    .BYTE $F3, 1
    .BYTE $A0, $CD, $E9, $ED, $E9, $E3, $EB, $E5, $F2, $AE ;  Mimicker.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E1, $F2, $E5 ; *There are a great
    .BYTE $A0, $E1, $A0, $E7, $F2, $E5, $E1, $F4, 1
    .BYTE $A0, $ED, $E1, $EE, $F9, $A0, $E8, $EF, $EC, $E5 ;  many holes east of
    .BYTE $F3, $A0, $E5, $E1, $F3, $F4, $A0, $EF, $E6, 1
    .BYTE $A0, $F4, $EF, $F7, $EE, $AE, 1 ;  town.
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F3, $EF, $F5, $EE, $E4 ; *The sound of
    .BYTE $A0, $EF, $E6, 1
    .BYTE $A0, $E1, $EE, $EF, $F4, $E8, $E5, $F2, $A0, $F7 ;  another world can
    .BYTE $EF, $F2, $EC, $E4, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $E2, $E5, $A0, $E8, $E5, $E1, $F2, $E4, $A0 ;  be heard from one.
    .BYTE $E6, $F2, $EF, $ED, $A0, $EF, $EE, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $F5, $EC, $EC, $A0, $EF, $F5, $F4, $A0 ; *Pull out a Red
    .BYTE $E1, $A0, $D2, $E5, $E4, 1
    .BYTE $A0, $D7, $E5, $E5, $E4, $A0, $E1, $EE, $E4, $A0 ;  Weed and place it
    .BYTE $F0, $EC, $E1, $E3, $E5, $A0, $E9, $F4, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E5, $A0 ;  into the fountain,
    .BYTE $E6, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $AC, 1
    .BYTE 3
    .BYTE $C0, $E9, $F4, $A0, $F7, $E9, $EC, $EC, $A0, $F4 ; *it will turn into
    .BYTE $F5, $F2, $EE, $A0, $E9, $EE, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $CD, $E1, $E7, $E9, $E3 ;  the Magic Herb.
    .BYTE $A0, $C8, $E5, $F2, $E2, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ; *Would you like me
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $ED, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $E9, $F6, $E5, $A0, $F9 ;  to give you the
    .BYTE $EF, $F5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C2, $E9, $E7, $A0, $C2, $E1, $E7, $A2, 1 ;  Big Bag?
    .BYTE 0
    .BYTE $C0, $C3, $E1, $EE, $A0, $C9, $A0, $E2, $EF, $F2 ; *Can I borrow your
    .BYTE $F2, $EF, $F7, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $C3, $E1, $F3, $E8, $A0, $C3, $E1, $F2, $E4 ;  Cash Card for a
    .BYTE $A0, $E6, $EF, $F2, $A0, $E1, 1
    .BYTE $A0, $F7, $E8, $E9, $EC, $E5, $A2, 1 ;  while?
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A0, $E8, $EF, $EC, $E4, $F3, $A0 ; *It holds 30
    .BYTE $B3, $B0, 1
    .BYTE $A0, $CD, $E1, $E7, $E9, $E3, $A0, $C8, $E5, $F2 ;  Magic Herbs.
    .BYTE $E2, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you,
    .BYTE $AC, 1
    .BYTE $A0, $F3, $F5, $F2, $E5, $AC, $A0, $F3, $F5, $F2 ;  sure, sure I'll
    .BYTE $E5, $A0, $C9, $A7, $EC, $EC, 1
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $A0, $E9, $F4 ;  return it to you.
    .BYTE $A0, $F4, $EF, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F4, $E8, $EF, $F5, $E7, $E8, $F4 ; *I thought that
    .BYTE $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E9, $F4, $A0, $EC, $EF, $EF, $EB, $E5, $E4 ;  it looked pretty
    .BYTE $A0, $F0, $F2, $E5, $F4, $F4, $F9, 1
    .BYTE $A0, $E3, $EF, $EF, $EC, $AE, 1 ;  cool.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ; *You don't trust
    .BYTE $A0, $F4, $F2, $F5, $F3, $F4, 1
    .BYTE $A0, $E1, $EE, $F9, $EF, $EE, $E5, $AE, 1 ;  anyone.
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A0, $ED, $E1, $F9, $A0 ; *That may be a good
    .BYTE $E2, $E5, $A0, $E1, $A0, $E7, $EF, $EF, $E4, 1
    .BYTE $A0, $E1, $F4, $F4, $E9, $F4, $F5, $E4, $E5, $AC ;  attitude,
    .BYTE 1
    .BYTE $A0, $F0, $EF, $F3, $F3, $E9, $E2, $EC, $F9, $AE ;  possibly...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0, $F4, $E8, $E1, $F4, $A7, $F3 ; *Oh that's right, I
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $AC, $A0, $C9, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF, $A0, $F2 ;  have to return
    .BYTE $E5, $F4, $F5, $F2, $EE, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $C3, $E1, $F3, $E8 ;  your Cash Card!
    .BYTE $A0, $C3, $E1, $F2, $E4, $A1, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $D1, $F5, $E5, $E5, $EE ; *The Queen isn't
    .BYTE $A0, $E9, $F3, $EE, $A7, $F4, 1
    .BYTE $A0, $E6, $E5, $E5, $EC, $E9, $EE, $E7, $A0, $F6 ;  feeling very well.
    .BYTE $E5, $F2, $F9, $A0, $F7, $E5, $EC, $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $F5, $F3, $F0, $E9, $E3, $E9, $EF, $F5 ; *Suspicious man....
    .BYTE $F3, $A0, $ED, $E1, $EE, $AE, $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $EC, $E5, $F4, $A0 ;  I'll let you pass,
    .BYTE $F9, $EF, $F5, $A0, $F0, $E1, $F3, $F3, $AC, 1
    .BYTE 3
    .BYTE $C0, $E9, $E6, $A0, $F9, $EF, $F5, $A0, $F3, $EF ; *if you solve this
    .BYTE $EC, $F6, $E5, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $F2, $E9, $E4, $E4, $EC, $E5, $AE, $AE, $AE ;  riddle...
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $F2, $E9 ; *That's right.
    .BYTE $E7, $E8, $F4, $AE, 1
    .BYTE $A0, $D4, $E8, $E5, $A0, $E1, $EE, $F3, $F7, $E5 ;  The answer is
    .BYTE $F2, $A0, $E9, $F3, 1
    .BYTE $A0, $A6, $F4, $F7, $EF, $A0, $E1, $EC, $EC, $E9 ;  "two alligators".
    .BYTE $E7, $E1, $F4, $EF, $F2, $F3, $A6, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EC, $F4, $E8, $EF, $F5, $E7, $E8, $A0 ; *Although I haven't
    .BYTE $C9, $A0, $E8, $E1, $F6, $E5, $EE, $A7, $F4, 1
    .BYTE $A0, $E3, $EF, $ED, $E5, $A0, $F5, $F0, $A0, $F7 ;  come up with the
    .BYTE $E9, $F4, $E8, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $E9, $E4, $E4, $EC, $E5, $A0, $F9, $E5 ;  riddle yet.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $E5, $E5, $A0, $F9, $EF, $F5, $A0, $EC ; *See you later!
    .BYTE $E1, $F4, $E5, $F2, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E9, $F3, $E8, $A0, $C9, $A0 ; *I wish I could
    .BYTE $E3, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $E8, $E5, $E1, $F2, $A0, $F4, $E8, $E5, $A0 ;  hear the Queen
    .BYTE $D1, $F5, $E5, $E5, $EE, 1
    .BYTE $A0, $F3, $E9, $EE, $E7, $A0, $E1, $E7, $E1, $E9 ;  sing again.
    .BYTE $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $EC, $EC, $EF, $A1, $A0, $C9, $A0 ; *Hello! I didn't hear
    .BYTE $E4, $E9, $E4, $EE, $A7, $F4, $A0, $E8, $E5, $E1
    .BYTE $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E3, $EF, $ED, $E5, $A0 ;  you come in.
    .BYTE $E9, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A0, $E7, $F5, $E9, $F4 ; *That guitar playing
    .BYTE $E1, $F2, $A0, $F0, $EC, $E1, $F9, $E9, $EE, $E7
    .BYTE 1
    .BYTE $A0, $E9, $F3, $A0, $F3, $EF, $A0, $EC, $EF, $F5 ;  is so loud...
    .BYTE $E4, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, $A0, $E5 ; *I can't even
    .BYTE $F6, $E5, $EE, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, $AE, 1 ;  think.
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E1, $F4, $A2, $A0, $C9, $A0, $F7 ; *What? I was
    .BYTE $E1, $F3, 1
    .BYTE $A0, $F0, $EC, $E1, $F9, $E9, $EE, $E7, $A0, $F4 ;  playing the guitar
    .BYTE $E8, $E5, $A0, $E7, $F5, $E9, $F4, $E1, $F2, 1
    .BYTE $A0, $ED, $F9, $F3, $E5, $EC, $E6, $A1, $A2, 1 ;  myself!?
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F3, $E8, $EF, $F5, $EC, $E4, $A0 ; *I should have
    .BYTE $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $EB, $EE, $EF, $F7, $EE, $AE, 1 ;  known.
    .BYTE 3
    .BYTE $C0, $AE, $AE, $AE, $AE, $AE, $AE, $AE, $AE, $AE ; *..........
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F3, $F4, $EF, $F2, $F9 ; *The story I tell
    .BYTE $A0, $C9, $A0, $F4, $E5, $EC, $EC, 1
    .BYTE $A0, $F4, $EF, $A0, $F9, $EF, $F5, $A0, $EE, $EF ;  to you now
    .BYTE $F7, 1
    .BYTE $A0, $E9, $F3, $A0, $E1, $A0, $F2, $E5, $E1, $EC ;  is a real secret.
    .BYTE $A0, $F3, $E5, $E3, $F2, $E5, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you become
    .BYTE $E2, $E5, $E3, $EF, $ED, $E5, 1
    .BYTE $A0, $F2, $E5, $E1, $EC, $EC, $F9, $A0, $F3, $F4 ;  really strong,
    .BYTE $F2, $EF, $EE, $E7, $AC, 1
    .BYTE $A0, $E3, $EF, $ED, $E5, $A0, $F3, $E5, $E5, $A0 ;  come see me.
    .BYTE $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $E4, $A0, $E2 ; *You had better
    .BYTE $E5, $F4, $F4, $E5, $F2, 1
    .BYTE $A0, $F7, $F2, $E9, $F4, $E5, $A0, $F4, $E8, $E9 ;  write this down so
    .BYTE $F3, $A0, $E4, $EF, $F7, $EE, $A0, $F3, $EF, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ;  you don't forget.
    .BYTE $A0, $E6, $EF, $F2, $E7, $E5, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $E9, $E6 ; *I know if I don't
    .BYTE $A0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $F7, $F2, $E9, $F4, $E5, $A0, $F4, $E8, $E9 ;  write things down,
    .BYTE $EE, $E7, $F3, $A0, $E4, $EF, $F7, $EE, $AC, 1
    .BYTE $A0, $C9, $A0, $E6, $EF, $F2, $E7, $E5, $F4, $AE ;  I forget.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F4, $F2, $E9, $E5, $E4 ; *You tried to
    .BYTE $A0, $F4, $EF, 1
    .BYTE $A0, $E9, $E7, $EE, $EF, $F2, $E5, $A0, $ED, $E5 ;  ignore me, didn't
    .BYTE $AC, $A0, $E4, $E9, $E4, $EE, $A7, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A2, 1 ;  you?
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $EF, $A0, $EC, $EF ; *I'm so lonesome
    .BYTE $EE, $E5, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $EF, $F5, $F4, $A0, $E8, $E5, $F2, $E5, $AC ;  out here, all by
    .BYTE $A0, $E1, $EC, $EC, $A0, $E2, $F9, 1
    .BYTE $A0, $ED, $F9, $F3, $E5, $EC, $E6, $AE, 1 ;  myself.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $E9, $EC, $EC, $A0, $E4, $EF ; *I will do
    .BYTE 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ;  anything I can.
    .BYTE $C9, $A0, $E3, $E1, $EE, $AE, 1
    .BYTE $A0, $C8, $E5, $F2, $E5, $A1, 1 ;  Here!
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $E8, $E1, $F0, $F0, $F9 ; *How happy I am
    .BYTE $A0, $C9, $A0, $E1, $ED, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $A0 ;  that you came to
    .BYTE $E3, $E1, $ED, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $E5, $E5, $A0, $ED, $E5, $AE, 1 ;  see me.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $F7, $E8 ; *I know what you
    .BYTE $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F7, $EF, $F5, $EC, $E4, $A0, $EC, $E9, $EB ;  would like me to
    .BYTE $E5, $A0, $ED, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E4, $EF, $AE, $A0, $C8, $E5, $F2, $E5, $A1 ;  do. Here!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CC, $E9, $F3, $F4, $E5, $EE, $A0, $F4, $EF ; *Listen to my song!
    .BYTE $A0, $ED, $F9, $A0, $F3, $EF, $EE, $E7, $A1, 1
    .BYTE $A0, $CF, $E8, $A0, $ED, $F5, $F3, $E9, $E3, $AD ;  Oh music-loving
    .BYTE $EC, $EF, $F6, $E9, $EE, $E7, 1
    .BYTE $A0, $E1, $E4, $F6, $E5, $EE, $F4, $F5, $F2, $E5 ;  adventurer
    .BYTE $F2, $A0
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 3
    .BYTE $C0, $D7, $E8, $F9, $A0, $E4, $EF, $A0, $F9, $EF ; *Why do you cry,
    .BYTE $F5, $A0, $E3, $F2, $F9, $AC, 1
    .BYTE $A0, $EF, $E8, $A0, $C3, $F5, $F0, $E9, $E4, $AD ;  oh Cupid-Doll?
    .BYTE $C4, $EF, $EC, $EC, $A2, 1
    .BYTE 3
    .BYTE $C0, $C3, $E1, $EE, $E1, $F2, $F9, $A0, $F3, $E9 ; *Canary sings
    .BYTE $EE, $E7, $F3, 1
    .BYTE $A0, $F3, $EF, $A0, $F3, $E1, $E4, $EC, $F9, $AE ;  so sadly.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $CD, $EF, $EE, $EB, $E5, $F9, $A0, $F3, $E9 ; *Monkey sings,
    .BYTE $EE, $E7, $F3, $AC, 1
    .BYTE $A0, $D0, $E9, $E1, $EE, $EF, $A0, $F0, $EC, $E1 ;  Piano plays,
    .BYTE $F9, $F3, $AC, 1
    .BYTE 3
    .BYTE $C0, $ED, $E1, $F9, $E2, $E5, $A0, $F4, $E8, $E5 ; *maybe there
    .BYTE $F2, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $E1, $A0, $E7, $E8, $EF, $F3 ;  is a ghost?
    .BYTE $F4, $A2, 1
    .BYTE 3
    .BYTE $C0, $C4, $E5, $F3, $E5, $F2, $F4, $A0, $C3, $E1 ; *Desert Cactus
    .BYTE $E3, $F4, $F5, $F3, 1
    .BYTE $A0, $F3, $EF, $A0, $E1, $EC, $EF, $EE, $E5, $AC ;  so alone,
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $E5, $F6, $E5, $F2, $F9, $A0, $EE, $E9, $E7 ; *every night
    .BYTE $E8, $F4, 1
    .BYTE $A0, $E8, $E9, $F3, $A0, $F3, $E1, $E4, $AC, $A0 ;  his sad, sad tone.
    .BYTE $F3, $E1, $E4, $A0, $F4, $EF, $EE, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $C4, $F2, $E1, $E7, $EF ; *The Dragon sleeps,
    .BYTE $EE, $A0, $F3, $EC, $E5, $E5, $F0, $F3, $AC, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EE, $EF, $F4, $E5, $A0 ;  the note remains.
    .BYTE $F2, $E5, $ED, $E1, $E9, $EE, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C5, $F6, $E5, $A7, $F3, $A0, $EC, $E1, $F3 ; *Eve's last song
    .BYTE $F4, $A0, $F3, $EF, $EE, $E7, 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $EE, $EF, $A0, $F2, $E5 ;  has no refrain.
    .BYTE $E6, $F2, $E1, $E9, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CF, $EE, $A0, $F4, $E8, $E5, $A0, $CD, $EF ; *On the Mount
    .BYTE $F5, $EE, $F4, 1
    .BYTE $A0, $EE, $E1, $ED, $E5, $E4, $A0, $C9, $F4, $EF ;  named Itoi,
    .BYTE $E9, $AC, 1
    .BYTE 3
    .BYTE $C0, $F9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ; *you must climb
    .BYTE $E3, $EC, $E9, $ED, $E2, 1
    .BYTE $A0, $E8, $E9, $E7, $E8, $A0, $F9, $EF, $F5, $EE ;  high young boy.
    .BYTE $E7, $A0, $E2, $EF, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $E5, $E5, $A0, $F4, $E8, $E5, $A0, $D8 ; *See the XX Stone,
    .BYTE $D8, $A0, $D3, $F4, $EF, $EE, $E5, $AC, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F4, $E8, $E5, $A0, $EC ;  for the last tone,
    .BYTE $E1, $F3, $F4, $A0, $F4, $EF, $EE, $E5, $AC, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $EE, $A0, $E4, $EF, $A0, $EE ; *then do not leave
    .BYTE $EF, $F4, $A0, $EC, $E5, $E1, $F6, $E5, 1
    .BYTE $A0, $D1, $F5, $E5, $E5, $EE, $A0, $CD, $E1, $F2 ;  Queen Mary alone!
    .BYTE $F9, $A0, $E1, $EC, $EF, $EE, $E5, $A1, 1
    .BYTE 3
    .BYTE $C0, $CC, $E1, $A0, $EC, $E1, $A0, $EC, $F5, $EC ; *La la lullaby...
    .BYTE $EC, $E1, $E2, $F9, $AE, $AE, $AE, 1
    .BYTE $A0, $D3, $F4, $F2, $E1, $EE, $E7, $E5, $A0, $EC ;  Strange lullaby...
    .BYTE $F5, $EC, $EC, $E1, $E2, $F9, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F9, $E5, $A0, $E2, $F9, $E5, $A0, $E2 ; *Bye bye bye...
    .BYTE $F9, $E5, $AE, $AE, $AE, 1
    .BYTE $A0, $C7, $EF, $EF, $E4, $AD, $E2, $F9, $E5, $AE ;  Good-bye.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D3, $F5, $F2, $E5, $A0, $E9, $F3, $A0, $E1 ; *Sure is a nice
    .BYTE $A0, $EE, $E9, $E3, $E5, 1
    .BYTE $A0, $F3, $EF, $EE, $E7, $AC, $A0, $E9, $F3, $EE ;  song, isn't it?
    .BYTE $A7, $F4, $A0, $E9, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C4, $E5, $E5, $F0, $A0, $E9, $EE, $A0, $F4 ; *Deep in the woods,
    .BYTE $E8, $E5, $A0, $F7, $EF, $EF, $E4, $F3, $AC, 1
    .BYTE $A0, $E9, $F3, $A0, $E1, $A0, $E7, $F5, $E9, $F4 ;  is a guitar player
    .BYTE $E1, $F2, $A0, $F0, $EC, $E1, $F9, $E5, $F2, 1
    .BYTE $A0, $F7, $E8, $EF, $A0, $E9, $F3, $A0, $E1, $A0 ;  who is a hermit.
    .BYTE $E8, $E5, $F2, $ED, $E9, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F4, $A0, $F4, $E8, $E1, $F4, $A0 ; *Not that bad
    .BYTE $E2, $E1, $E4, 1
    .BYTE $A0, $EC, $EF, $EF, $EB, $E9, $EE, $E7, $A0, $EF ;  looking of a
    .BYTE $E6, $A0, $E1, 1
    .BYTE $A0, $ED, $E1, $EE, $AE, $AE, $AE, 1 ;  man...
    .BYTE 3
    .BYTE $C0, $C2, $E5, $F3, $F4, $A0, $EF, $E6, $A0, $E1 ; *Best of all,
    .BYTE $EC, $EC, $AC, 1
    .BYTE $A0, $E8, $E5, $A7, $F3, $A0, $F1, $F5, $E9, $F4 ;  he's quite a poet.
    .BYTE $E5, $A0, $E1, $A0, $F0, $EF, $E5, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $ED, $E5, $EF, $EE, $E5, $A0, $F4 ; *Someone told me
    .BYTE $EF, $EC, $E4, $A0, $ED, $E5, 1
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, $A0, $E1, $A0, $ED ;  about a man that
    .BYTE $E1, $EE, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE 3
    .BYTE $C0, $E5, $F6, $E5, $F2, $F9, $EF, $EE, $E5, $A0 ; *everyone forgot
    .BYTE $E6, $EF, $F2, $E7, $EF, $F4, 1
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, $AE, $A0, $C2, $F5 ;  about. But, I don't
    .BYTE $F4, $AC, $A0, $C9, $A0, $E4, $EF, $EE, $A7, $F4
    .BYTE 1
    .BYTE $A0, $F2, $E5, $ED, $E5, $ED, $E2, $E5, $F2, $A0 ;  remember who.
    .BYTE $F7, $E8, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $C2, $E5, $EC, $E9, $E5, $F6, $E5, $A0, $E9 ; *Believe it or not,
    .BYTE $F4, $A0, $EF, $F2, $A0, $EE, $EF, $F4, $AC, 1
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $C8, $E5 ;  I am a Healer.
    .BYTE $E1, $EC, $E5, $F2, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $A0, $E3, $E8, $E1 ; *I can charge your
    .BYTE $F2, $E7, $E5, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $D0, $D0, $AC, $A0, $E1, $EE, $E4, $A0, $E3 ;  PP, and can cure
    .BYTE $E1, $EE, $A0, $E3, $F5, $F2, $E5, 1
    .BYTE $A0, $F3, $F4, $EF, $EE, $E5, $AD, $E9, $EC, $EC ;  stone-illness.
    .BYTE $EE, $E5, $F3, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $AE, $AE, $AE, $C9, $A0, $F4, $E8, $EF, $F5 ; *...I thought so...
    .BYTE $E7, $E8, $F4, $A0, $F3, $EF, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E3, $E1, $F2 ; *Don't carry so much
    .BYTE $F2, $F9, $A0, $F3, $EF, $A0, $ED, $F5, $E3, $E8
    .BYTE 1
    .BYTE $A0, $ED, $EF, $EE, $E5, $F9, $A0, $F7, $E9, $F4 ;  money with you.
    .BYTE $E8, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E6, $A0, $E3, $EF, $F5, $F2, $F3, $E5 ; *Of course I am a
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $E1, 1
    .BYTE $A0, $EE, $EF, $EE, $AD, $F3, $E9, $EE, $E7, $E9 ;  non-singing
    .BYTE $EE, $E7, 1
    .BYTE $A0, $ED, $EF, $EE, $EB, $E5, $F9, $AE, 1 ;  monkey.
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F2, $ED, $E1, $EC, $A0, $ED, $EF ; *Normal monkeys
    .BYTE $EE, $EB, $E5, $F9, $F3, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F3, $E9, $EE ;  don't sing.
    .BYTE $E7, $AE, 1
    .BYTE $A0, $D3, $EF, $AC, $A0, $E1, $EE, $F9, $A0, $F1 ;  So, any questions?
    .BYTE $F5, $E5, $F3, $F4, $E9, $EF, $EE, $F3, $A2, 1
    .BYTE 0
    .BYTE $C0, $C1, $EE, $F9, $E8, $EF, $F7, $AE, $AE, $AE ; *Anyhow...
    .BYTE 1
    .BYTE $A0, $F1, $F5, $E5, $F3, $F4, $E9, $EF, $EE, $F3 ;  questions are so
    .BYTE $A0, $E1, $F2, $E5, $A0, $F3, $EF, 1
    .BYTE $A0, $F2, $E9, $E4, $E9, $E3, $F5, $EC, $EF, $F5 ;  ridiculous.
    .BYTE $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $AC, $A0, $C9, $A0, $F7 ; *Good, I worried
    .BYTE $EF, $F2, $F2, $E9, $E5, $E4, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $A0 ;  that you would ask
    .BYTE $F7, $EF, $F5, $EC, $E4, $A0, $E1, $F3, $EB, 1
    .BYTE $A0, $E1, $A0, $E4, $E9, $E6, $E6, $E9, $E3, $F5 ;  a difficult one.
    .BYTE $EC, $F4, $A0, $EF, $EE, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $EC, $EF, $EF, $EB, $A0 ; *You look so much
    .BYTE $F3, $EF, $A0, $ED, $F5, $E3, $E8, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $D1, $F5, $E5, $E5 ;  like Queen Mary.
    .BYTE $EE, $A0, $CD, $E1, $F2, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $EF, $EE, $E4, $E5, $F2, $A0 ; *I wonder why?
    .BYTE $F7, $E8, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EA, $F5, $F3, $F4, $A0, $E8, $E1 ; *I just had to tell
    .BYTE $E4, $A0, $F4, $EF, $A0, $F4, $E5, $EC, $EC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $E2, $EF, $F5, $F4 ;  you about it as
    .BYTE $A0, $E9, $F4, $A0, $E1, $F3, 1
    .BYTE $A0, $F3, $EF, $EF, $EE, $A0, $E1, $F3, $A0, $C9 ;  soon as I saw you.
    .BYTE $A0, $F3, $E1, $F7, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $E1, $E9, $EC, $F3 ; *The rails are
    .BYTE $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $E6, $E9, $F8, $E5, $E4, $AC, $A0, $E1, $EE ;  fixed, and the
    .BYTE $E4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F4, $F2, $E1, $E9, $EE, $A0, $E9, $F3, $A0 ;  train is on time.
    .BYTE $EF, $EE, $A0, $F4, $E9, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E9, $F3, $E8, $A0, $C9, $A0 ; *I wish I could go
    .BYTE $E3, $EF, $F5, $EC, $E4, $A0, $E7, $EF, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E5, $A0 ;  into the castle to
    .BYTE $E3, $E1, $F3, $F4, $EC, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $E5, $E5, $A0, $D1, $F5, $E5, $E5, $EE ;  see Queen Mary.
    .BYTE $A0, $CD, $E1, $F2, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D1, $F5, $E5, $E5, $EE, $A0, $CD, $E1, $F2 ; *Queen Mary often
    .BYTE $F9, $A0, $EF, $E6, $F4, $E5, $EE, 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $EE, $E9, $E7, $E8, $F4 ;  has nightmares.
    .BYTE $ED, $E1, $F2, $E5, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $F3, $A0, $E9, $E6, $A0, $F3, $E3, $EF ; *As if scolding a
    .BYTE $EC, $E4, $E9, $EE, $E7, $A0, $E1, 1
    .BYTE $A0, $EE, $E1, $F5, $E7, $E8, $F4, $F9, $A0, $E3 ;  naughty child,
    .BYTE $E8, $E9, $EC, $E4, $AC, 1
    .BYTE $A0, $F3, $E8, $E5, $A0, $E3, $F2, $E9, $E5, $F3 ;  she cries out,
    .BYTE $A0, $EF, $F5, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $A6, $C9, $A0, $E1, $ED, $A0, $F3, $E3, $E1 ; *"I am scared!
    .BYTE $F2, $E5, $E4, $A1, 1
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $F3, $E3, $E1, $F2 ;  I am scared!"
    .BYTE $E5, $E4, $A1, $A6, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $E4, $A0, $F4, $E8, $E5, $EE, $A0 ; *And then she
    .BYTE $F3, $E8, $E5, 1
    .BYTE $A0, $F3, $F4, $E1, $F2, $F4, $F3, $A0, $F4, $EF ;  starts to sing...
    .BYTE $A0, $F3, $E9, $EE, $E7, $AE, $AE, $AE, 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $E1, $A0, $EC, $E9 ;  just a little bit.
    .BYTE $F4, $F4, $EC, $E5, $A0, $E2, $E9, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $EE, $A0, $F3, $E8, $E5, $A0 ; *Then she forgets
    .BYTE $E6, $EF, $F2, $E7, $E5, $F4, $F3, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F4, $F5, $EE, $E5, $AC ;  the tune, and
    .BYTE $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $F7, $E1, $EB, $E5, $F3, $A0, $E9, $EE, $A0 ;  wakes in a sweat.
    .BYTE $E1, $A0, $F3, $F7, $E5, $E1, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $EF, $EE, $E4, $E5, $F2, $A0 ; *I wonder what sad
    .BYTE $F7, $E8, $E1, $F4, $A0, $F3, $E1, $E4, 1
    .BYTE $A0, $E5, $F8, $F0, $E5, $F2, $E9, $E5, $EE, $E3 ;  experience has done
    .BYTE $E5, $A0, $E8, $E1, $F3, $A0, $E4, $EF, $EE, $E5
    .BYTE 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F4, $EF, $A0, $D1 ;  this to Queen Mary?
    .BYTE $F5, $E5, $E5, $EE, $A0, $CD, $E1, $F2, $F9, $A2
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EF, $EE, $EC, $F9, $A0, $E7, $E9 ; *I only give this
    .BYTE $F6, $E5, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $E9, $F2, $EC, $F3, $AE ;  to girls.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $DA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA ; *Zzzzzzzzzzzz...
    .BYTE $FA, $FA, $FA, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $EC, $E9, $E1, $F2, $A1 ; *You liar!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C1, $EC, $EC, $A0, $EF, $E6, $A0, $F5, $F3 ; *All of us know you
    .BYTE $A0, $EB, $EE, $EF, $F7, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E2, $E5, $EC ;  don't belong here,
    .BYTE $EF, $EE, $E7, $A0, $E8, $E5, $F2, $E5, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $F7, $E5, $A0, $E3, $EF ; *but we consider
    .BYTE $EE, $F3, $E9, $E4, $E5, $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $EF, $EE, $E5, $A0, $EF ;  you one of us.
    .BYTE $E6, $A0, $F5, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E9, $F4, $E8, $A0, $F4, $E8, $E5, $A0 ; *With the Onyx
    .BYTE $CF, $EE, $F9, $F8, 1
    .BYTE $A0, $C8, $EF, $EF, $EB, $AC, $A0, $F9, $EF, $F5 ;  Hook, you can warp
    .BYTE $A0, $E3, $E1, $EE, $A0, $F7, $E1, $F2, $F0, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $E8, $E5, $F2, $E5 ;  back here anytime.
    .BYTE $A0, $E1, $EE, $F9, $F4, $E9, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $F2, $EF, $ED, $E9, $F3, $E5, $A0, $ED ; *Promise me, that
    .BYTE $E5, $AC, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E9, $E6, $A0, $F9, $EF, $F5, $A0, $EE, $E5 ;  if you need help,
    .BYTE $E5, $E4, $A0, $E8, $E5, $EC, $F0, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $F7, $E9, $EC, $EC, $A0 ;  you will return.
    .BYTE $F2, $E5, $F4, $F5, $F2, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C5, $F6, $E5, $F2, $F9, $EF, $EE, $E5, $A0 ; *Everyone loves
    .BYTE $EC, $EF, $F6, $E5, $F3, 1
    .BYTE $A0, $F9, $EF, $F5, $AC, $A0 ;  you,
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, $AC, $A0 ; *Welcome,
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $E9, $EE, $A0, $CD ; *Here in Magicant,
    .BYTE $E1, $E7, $E9, $E3, $E1, $EE, $F4, $AC, 1
    .BYTE $A0, $E5, $F6, $E5, $F2, $F9, $EF, $EE, $E5, $A0 ;  everyone is your
    .BYTE $E9, $F3, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $E6, $F2, $E9, $E5, $EE, $E4, $AE, 1 ;  friend.
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $E1, $EE, $A0, $E8 ; *You can have as
    .BYTE $E1, $F6, $E5, $A0, $E1, $F3, 1
    .BYTE $A0, $ED, $F5, $E3, $E8, $A0, $E1, $F3, $A0, $F9 ;  much as you like,
    .BYTE $EF, $F5, $A0, $EC, $E9, $EB, $E5, $AC, 1
    .BYTE 3
    .BYTE $C0, $EF, $E6, $A0, $F7, $E8, $E1, $F4, $E5, $F6 ; *of whatever you
    .BYTE $E5, $F2, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F7, $E1, $EE, $F4, $AE, 1 ;  want.
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E1, $F4, $A2, $A0, $D9, $EF, $F5 ; *What? You want to
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF, 1
    .BYTE $A0, $EC, $E9, $F3, $F4, $E5, $EE, $A0, $F4, $EF ;  listen to my song?
    .BYTE $A0, $ED, $F9, $A0, $F3, $EF, $EE, $E7, $A2, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $AC, $A0, $C9, $A0 ; *Sorry, I don't
    .BYTE $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $EB, $EE, $EF, $F7, $A0, $F7, $E8, $F9, $AC ;  know why, but I
    .BYTE $A0, $E2, $F5, $F4, $A0, $C9, 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $E3, $E1, $EE, $A7 ;  just can't sing.
    .BYTE $F4, $A0, $F3, $E9, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E2, $E5, $E7, $A0, $F9, $EF, $F5 ; *I beg you to learn
    .BYTE $A0, $F4, $EF, $A0, $EC, $E5, $E1, $F2, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $E5, $EC, $EF, $E4 ;  the melody. It is
    .BYTE $F9, $AE, $A0, $C9, $F4, $A0, $E9, $F3, 1
    .BYTE $A0, $EF, $EE, $EC, $F9, $A0, $B8, $A0, $EE, $EF ;  only 8 notes long.
    .BYTE $F4, $E5, $F3, $A0, $EC, $EF, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you learn
    .BYTE $EC, $E5, $E1, $F2, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $ED, $A0, $E1, $EC, $EC, $AC ;  them all, return
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F3, $E9, $EE, $E7, $A0 ;  and sing for me.
    .BYTE $E6, $EF, $F2, $A0, $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $C9, $A0, $EF, $EE, $EC, $F9 ; *If I only could
    .BYTE $A0, $E3, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $E8, $E5, $E1, $F2, $A0, $F4, $E8, $E1, $F4 ;  hear that song...
    .BYTE $A0, $F3, $EF, $EE, $E7, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $AE, $AE, $AE, $AE, $AE, $AE, 1 ; *......
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $D3, $C9 ; *Please SING to me
    .BYTE $CE, $C7, $A0, $F4, $EF, $A0, $ED, $E5, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $E5, $EC, $EF, $E4 ;  the melodies that
    .BYTE $E9, $E5, $F3, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $A0 ;  you have learned.
    .BYTE $EC, $E5, $E1, $F2, $EE, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $E5, $F3, $AE, $AE, $AE, 1 ; *Yes...
    .BYTE $A0, $F4, $E8, $E1, $F4, $A7, $F3, $A0, $F2, $E9 ;  that's right.
    .BYTE $E7, $E8, $F4, $AE, 1
    .BYTE $A0, $D4, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4 ;  That is the song.
    .BYTE $E8, $E5, $A0, $F3, $EF, $EE, $E7, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A1, $A0, $C7, $E9, $E5, $E7, $F5 ; *Oh! Giegue!
    .BYTE $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $EE, $A0, $E1, $A0, $E2, $E1, $E4, $A0 ; *In a bad dream,
    .BYTE $E4, $F2, $E5, $E1, $ED, $AC, 1
    .BYTE $A0, $CD, $E1, $E7, $E9, $E3, $E1, $EE, $F4, $A0 ;  Magicant vanished
    .BYTE $F6, $E1, $EE, $E9, $F3, $E8, $E5, $E4, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E9, $EE ;  into thin air.
    .BYTE $A0, $E1, $E9, $F2, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $F9, $A0, $E8, $E5, $E1, $F2, $F4, $A0 ; *My heart is still
    .BYTE $E9, $F3, $A0, $F3, $F4, $E9, $EC, $EC, 1
    .BYTE $A0, $F0, $EF, $F5, $EE, $E4, $E9, $EE, $E7, $A0 ;  pounding so hard.
    .BYTE $F3, $EF, $A0, $E8, $E1, $F2, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $E5, $F3, $AC, $A0, $C9, $A0, $E1, $ED ; *Yes, I am the cat
    .BYTE $A0, $F4, $E8, $E5, $A0, $E3, $E1, $F4, 1
    .BYTE $A0, $F7, $E8, $EF, $A0, $F3, $F7, $E9, $ED, $F3 ;  who swims on the
    .BYTE $A0, $EF, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E7, $F2, $EF, $F5, $EE, $E4, $AE, 1 ;  ground.
    .BYTE 3
    .BYTE $C0, $C7, $F5, $E5, $F3, $F3, $A0, $F7, $E8, $E1 ; *Guess what is in
    .BYTE $F4, $A0, $E9, $F3, $A0, $E9, $EE, 1
    .BYTE $A0, $ED, $F9, $A0, $E8, $E1, $EE, $E4, $AE, 1 ;  my hand.
    .BYTE 0
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $EB, $EE ; *Do you know what I
    .BYTE $EF, $F7, $A0, $F7, $E8, $E1, $F4, $A0, $C9, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E9, $EE, $A0, $ED ;  have in my hand?
    .BYTE $F9, $A0, $E8, $E1, $EE, $E4, $A2, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F2 ; *That is right.
    .BYTE $E9, $E7, $E8, $F4, $AE, 1
    .BYTE $A0, $C1, $A0, $D2, $E9, $E2, $E2, $EF, $EE, $AE ;  A Ribbon...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $CD, $E1, $E7, $E9 ; *This Magic Ribbon
    .BYTE $E3, $A0, $D2, $E9, $E2, $E2, $EF, $EE, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E7, $E9, $F6, $E5 ;  will give
    .BYTE 1
    .BYTE $A0, $F3, $F4, $F2, $E5, $EE, $E7, $F4, $E8, $AE ;  strength...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $E1, $E7, $E9, $E3, $A0, $D2, $E9, $E2 ; *Magic Ribbons are
    .BYTE $E2, $EF, $EE, $F3, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $EF, $EE, $EC, $F9, $A0, $E6, $EF, $F2, $A0 ;  only for girls.
    .BYTE $E7, $E9, $F2, $EC, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $D3, $F7 ; *I am a Swimming
    .BYTE $E9, $ED, $ED, $E9, $EE, $E7, 1
    .BYTE $A0, $E3, $E1, $F4, $AE, 1 ;  cat.
    .BYTE 3
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you heard of
    .BYTE $E8, $E5, $E1, $F2, $E4, $A0, $EF, $E6, 1
    .BYTE $A0, $E1, $A0, $CD, $E1, $E7, $E9, $E3, $A0, $C3 ;  a Magic Candy that
    .BYTE $E1, $EE, $E4, $F9, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E7, $E9, $F6, $E5, $F3, $A0, $F3, $F4, $F2 ;  gives strength
    .BYTE $E5, $EE, $E7, $F4, $E8, 1
    .BYTE 3
    .BYTE $C0, $E1, $EE, $E4, $A0, $F0, $EF, $F7, $E5, $F2 ; *and power to a
    .BYTE $A0, $F4, $EF, $A0, $E1, 1
    .BYTE $A0, $E8, $E5, $EC, $F0, $EC, $E5, $F3, $F3, $A0 ;  helpless child?
    .BYTE $E3, $E8, $E9, $EC, $E4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $AC, $A0, $E2, $F5 ; *I see, but you are
    .BYTE $F4, $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $EE, $EF, $F4, $A0, $E8, $E5, $EC, $F0, $EC ;  not helpless, so
    .BYTE $E5, $F3, $F3, $AC, $A0, $F3, $EF, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ;  you don't need it.
    .BYTE $A0, $EE, $E5, $E5, $E4, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $EF, $F9, $A0, $F7 ; *The boy with
    .BYTE $E9, $F4, $E8, 1
    .BYTE $A0, $E7, $EC, $E1, $F3, $F3, $E5, $F3, $A0, $E3 ;  glasses can surely
    .BYTE $E1, $EE, $A0, $F3, $F5, $F2, $E5, $EC, $F9, 1
    .BYTE $A0, $F5, $F3, $E5, $A0, $F4, $E8, $E5, $A0, $C3 ;  use the Candy.
    .BYTE $E1, $EE, $E4, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E1, $F3, $A0, $F4, $E8, $E5, $A0, $C3 ; *Was the Candy
    .BYTE $E1, $EE, $E4, $F9, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A2, 1 ;  good?
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $EE, $E5 ; *If you need the
    .BYTE $E5, $E4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E2, $E5, $EE, $E5, $F6, $EF, $EC, $E5, $EE ;  benevolent
    .BYTE $F4, 1
    .BYTE $A0, $EF, $EC, $E4, $A0, $ED, $E1, $EE, $AC, 1 ;  old man,
    .BYTE 3
    .BYTE $C0, $E7, $EF, $A0, $F4, $EF, $A0, $D1, $F5, $E5 ; *go to Queen Mary's
    .BYTE $E5, $EE, $A0, $CD, $E1, $F2, $F9, $A7, $F3, 1
    .BYTE $A0, $C6, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $A0 ;  Fountain for his
    .BYTE $E6, $EF, $F2, $A0, $E8, $E9, $F3, 1
    .BYTE $A0, $E8, $E5, $EC, $F0, $AE, 1 ;  help.
    .BYTE 3
    .BYTE $C0, $C8, $E5, $A0, $F7, $E9, $EC, $EC, $A0, $E8 ; *He will hear your
    .BYTE $E5, $E1, $F2, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $F3, $EF, $F5, $EC, $E6, $F5, $EC, $A0, $E3 ;  soulful cry and
    .BYTE $F2, $F9, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $E3, $EF, $ED, $E5, $A0, $F4, $EF, $A0, $E8 ;  come to help.
    .BYTE $E5, $EC, $F0, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $F5, $EC, $E6, $F5, $EC, $A0, $E3 ; *Soulful cry,
    .BYTE $F2, $F9, $AC, 1
    .BYTE $A0, $F2, $E5, $ED, $E5, $ED, $E2, $E5, $F2, $AC ;  remember,
    .BYTE 1
    .BYTE $A0, $F3, $EF, $F5, $EC, $E6, $F5, $EC, $A0, $E3 ;  soulful cry!
    .BYTE $F2, $F9, $A1, 1
    .BYTE 0
    .BYTE $C0, $A8, $D4, $E8, $E5, $A0, $E3, $F2, $EF, $F7 ; *(The crowd becomes
    .BYTE $E4, $A0, $E2, $E5, $E3, $EF, $ED, $E5, $F3, 1
    .BYTE $A0, $F2, $E5, $F3, $F4, $EC, $E5, $F3, $F3, $A0 ;  restless and
    .BYTE $E1, $EE, $E4, 1
    .BYTE $A0, $F5, $F0, $F3, $E5, $F4, $AE, $A9, 1 ;  upset.)
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E9, $EE, $A0, $F4 ; *What in the world
    .BYTE $E8, $E5, $A0, $F7, $EF, $F2, $EC, $E4, 1
    .BYTE $A0, $E9, $F3, $A0, $F4, $E8, $E1, $F4, $A0, $F3 ;  is that stone with
    .BYTE $F4, $EF, $EE, $E5, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $E1, $A0, $E8, $E1, $F4, $A0, $EF, $EE, $A1 ;  a hat on!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $E3 ; *Did you call me
    .BYTE $E1, $EC, $EC, $A0, $ED, $E5, 1
    .BYTE $A0, $F5, $F0, $A2, 1 ;  up?
    .BYTE 0
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E1, $F4, $A0, $F2 ; *Is that right?
    .BYTE $E9, $E7, $E8, $F4, $A2, 1
    .BYTE $A0, $C2, $F9, $E5, $A1, 1 ;  Bye!
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $EE, $E5, $E5, $E4, $A0 ; *You need money,
    .BYTE $ED, $EF, $EE, $E5, $F9, $AC, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ;  don't you?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F3, $A0, $E9, $F4, $A0, $E2, $E5 ; *Has it been helpful
    .BYTE $E5, $EE, $A0, $E8, $E5, $EC, $F0, $E6, $F5, $EC
    .BYTE 1
    .BYTE $A0, $F4, $EF, $A0, $F9, $EF, $F5, $A2, 1 ;  to you?
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $F9, $EF, $F5 ; *Well, your balance
    .BYTE $F2, $A0, $E2, $E1, $EC, $E1, $EE, $E3, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $A4 ;  is $
    TILEPACK_23 <$23, $7412, 3, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C8, $EF, $F7, $A0, $ED, $F5, $E3, $E8, $A0 ; *How much do you
    .BYTE $E4, $EF, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF, $A0, $F7 ;  want to withdraw?
    .BYTE $E9, $F4, $E8, $E4, $F2, $E1, $F7, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F2, $E5, $AE, $AE, $AE, 1 ; *Here...
    .BYTE $A0, $D4, $E1, $EB, $E5, $A0, $E9, $F4, $A0, $F7 ;  Take it with you.
    .BYTE $E9, $F4, $E8, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $F5, $E3, $E8, $AC, $A0, $F4, $E8, $E5 ; *Ouch, there is not
    .BYTE $F2, $E5, $A0, $E9, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $ED, $F5, $E3, $E8 ;  that much money left
    .BYTE $A0, $ED, $EF, $EE, $E5, $F9, $A0, $EC, $E5, $E6
    .BYTE $F4, 1
    .BYTE $A0, $E9, $EE, $A0, $F9, $EF, $F5, $F2, $A0, $E1 ;  in your account.
    .BYTE $E3, $E3, $EF, $F5, $EE, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $E6, $EF ; *I am a forgotten
    .BYTE $F2, $E7, $EF, $F4, $F4, $E5, $EE, 1
    .BYTE $A0, $ED, $E1, $EE, $AE, $A0, $C9, $A7, $ED, $A0 ;  man. I'm not
    .BYTE $EE, $EF, $F4, 1
    .BYTE $A0, $F2, $E5, $E1, $EC, $EC, $F9, $A0, $E8, $E5 ;  really here.
    .BYTE $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $E9, $E4, $EE, $A7 ; *You didn't have to
    .BYTE $F4, $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $EE, $EF, $F4, $E9, $E3, $E5, $A0, $ED, $E5 ;  notice me....
    .BYTE $AE, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E9, $E7 ; *Please ignore me.
    .BYTE $EE, $EF, $F2, $E5, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $ED, $E1 ; *I am a man who
    .BYTE $EE, $A0, $F7, $E8, $EF, 1
    .BYTE $A0, $E4, $EF, $E5, $F3, $A0, $EE, $EF, $F4, $A0 ;  does not exist.
    .BYTE $E5, $F8, $E9, $F3, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $F4, $E1, $EC, $EB, $A0 ; *You talk so
    .BYTE $F3, $EF, 1
    .BYTE $A0, $EB, $E9, $EE, $E4, $EC, $F9, $AC, $A0, $C9 ;  kindly, I don't
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $EB, $EE, $EF, $F7, $A0, $F7, $E8, $E1, $F4 ;  know what to do.
    .BYTE $A0, $F4, $EF, $A0, $E4, $EF, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $C9, $A0, $ED, $E9, $F3, $F3 ; *If I miss people,
    .BYTE $A0, $F0, $E5, $EF, $F0, $EC, $E5, $AC, 1
    .BYTE $A0, $C9, $A0, $E3, $E1, $EE, $EE, $EF, $F4, $A0 ;  I cannot live
    .BYTE $EC, $E9, $F6, $E5, 1
    .BYTE $A0, $E1, $EC, $EF, $EE, $E5, $A0, $E1, $EE, $F9 ;  alone anymore.
    .BYTE $ED, $EF, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A0, $E3, $EF, $EE, $F6, $E5, $F2 ; *My conversation
    .BYTE $F3, $E1, $F4, $E9, $EF, $EE, 1
    .BYTE $A0, $E9, $F3, $A0, $E1, $EC, $F7, $E1, $F9, $F3 ;  is always a
    .BYTE $A0, $E1, 1
    .BYTE $A0, $ED, $EF, $EE, $EF, $EC, $EF, $E7, $F5, $E5 ;  monologue.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E2, $E5, $E5, $EE ; *I've been alone
    .BYTE $A0, $E1, $EC, $EF, $EE, $E5, 1
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $F4, $E8, $E5, $A0 ;  from the moment
    .BYTE $ED, $EF, $ED, $E5, $EE, $F4, 1
    .BYTE $A0, $C9, $A0, $F7, $E1, $F3, $A0, $E2, $EF, $F2 ;  I was born...
    .BYTE $EE, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $F5, $E3, $EB, $F9, $AC, $A0, $F5, $EE ; *Lucky, unlucky...
    .BYTE $EC, $F5, $E3, $EB, $F9, $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $F4, $A0, $ED, $E1, $EB, $E5, $F3, $A0 ;  It makes no
    .BYTE $EE, $EF, 1
    .BYTE $A0, $E4, $E9, $E6, $E6, $E5, $F2, $E5, $EE, $E3 ;  difference to me.
    .BYTE $E5, $A0, $F4, $EF, $A0, $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $ED, $E5, $F4, $E9, $ED, $E5, $F3 ; *Sometimes, even
    .BYTE $AC, $A0, $E5, $F6, $E5, $EE, 1
    .BYTE $A0, $E2, $F2, $E5, $E1, $F4, $E8, $E9, $EE, $E7 ;  breathing becomes
    .BYTE $A0, $E2, $E5, $E3, $EF, $ED, $E5, $F3, 1
    .BYTE $A0, $F4, $EF, $EF, $A0, $ED, $F5, $E3, $E8, $AE ;  too much.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $F9, $A0, $E4, $EF, $A0, $F9, $EF ; *Why do you insist
    .BYTE $F5, $A0, $E9, $EE, $F3, $E9, $F3, $F4, 1
    .BYTE $A0, $EF, $EE, $A0, $F4, $E1, $EC, $EB, $E9, $EE ;  on talking to me?
    .BYTE $E7, $A0, $F4, $EF, $A0, $ED, $E5, $A2, 1
    .BYTE 3
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $E1 ; *Are you a
    .BYTE 1
    .BYTE $A0, $E6, $EF, $F2, $E7, $EF, $F4, $F4, $E5, $EE ;  forgotten
    .BYTE 1
    .BYTE $A0, $ED, $E1, $EE, $AC, $A0, $F4, $EF, $EF, $A2 ;  man, too?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E7, $E9, $F6 ; *Don't give me that
    .BYTE $E5, $A0, $ED, $E5, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E7, $E1, $F2, $E2, $E1, $E7, $E5, $AE, $A0 ;  garbage. Just
    .BYTE $CA, $F5, $F3, $F4, 1
    .BYTE $A0, $EC, $E5, $E1, $F6, $E5, $A0, $ED, $E5, $A0 ;  leave me alone.
    .BYTE $E1, $EC, $EF, $EE, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $F2, $E9 ; *That's right.
    .BYTE $E7, $E8, $F4, $AE, 1
    .BYTE $A0, $D4, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F2 ;  That is right,
    .BYTE $E9, $E7, $E8, $F4, $AC, 1
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A2, 1 ;  right?
    .BYTE 3
    .BYTE $C0, $C7, $EF, $A0, $E1, $E8, $E5, $E1, $E4, $AC ; *Go ahead, ignore
    .BYTE $A0, $E9, $E7, $EE, $EF, $F2, $E5, 1
    .BYTE $A0, $ED, $E5, $AC, $A0, $EC, $E9, $EB, $E5, $A0 ;  me, like everyone
    .BYTE $E5, $F6, $E5, $F2, $F9, $EF, $EE, $E5, 1
    .BYTE $A0, $E5, $EC, $F3, $E5, $AE, 1 ;  else.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $F2, $E9 ; *That's right.
    .BYTE $E7, $E8, $F4, $AE, 1
    .BYTE $A0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ;  Thank you.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $EC, $EF, $E1, $E4 ; *Your load is too
    .BYTE $A0, $E9, $F3, $A0, $F4, $EF, $EF, 1
    .BYTE $A0, $E7, $F2, $E5, $E1, $F4, $A0, $E6, $EF, $F2 ;  great for more.
    .BYTE $A0, $ED, $EF, $F2, $E5, $AE, 1
    .BYTE $A0, $D7, $E8, $F9, $A0, $EE, $EF, $F4, $A0, $E3 ;  Why not come back?
    .BYTE $EF, $ED, $E5, $A0, $E2, $E1, $E3, $EB, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $E1 ; *I heard about some
    .BYTE $E2, $EF, $F5, $F4, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $F7, $E5, $E9, $F2, $E4, $A0, $F4, $E8, $E9 ;  weird things over
    .BYTE $EE, $E7, $F3, $A0, $EF, $F6, $E5, $F2, 1
    .BYTE $A0, $E9, $EE, $A0, $D0, $EF, $E4, $F5, $EE, $EB ;  in Podunk.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $E1, $F2, $E4, $A0, $E1, $A0, $FA ; *Heard a zombie was
    .BYTE $EF, $ED, $E2, $E9, $E5, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $EB, $E9, $E4, $EE, $E1, $F0, $F0, $E5, $E4 ;  kidnapped...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $E1, $EE, $E9, $ED, $E1, $EC, $F3, $A0, $F2 ; *animals roamed the
    .BYTE $EF, $E1, $ED, $E5, $E4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E3, $E9, $F4, $F9, $A0, $F3, $F4, $F2, $E5 ;  city streets...
    .BYTE $E5, $F4, $F3, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $E1, $EC, $EC, $A0, $EB, $E9, $EE, $E4, $F3 ; *all kinds of crazy
    .BYTE $A0, $EF, $E6, $A0, $E3, $F2, $E1, $FA, $F9, 1
    .BYTE $A0, $F3, $F4, $F5, $E6, $E6, $AE, 1 ;  stuff.
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, $A0, $F4 ; *Welcome to
    .BYTE $EF, 1
    .BYTE $A0, $CD, $E5, $F2, $F2, $F9, $F3, $F6, $E9, $EC ;  Merrysville!!
    .BYTE $EC, $E5, $A1, $A1, 1
    .BYTE 3
    .BYTE $C0, $C3, $E8, $E5, $E1, $F0, $AC, $A0, $E6, $E1 ; *Cheap, fast
    .BYTE $F3, $F4, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E8, $E1, $EE, $E4, $F3 ;  and handsome.
    .BYTE $EF, $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $E5, $F3, $F4, $A0 ; *The best doctor is
    .BYTE $E4, $EF, $E3, $F4, $EF, $F2, $A0, $E9, $F3, 1
    .BYTE $A0, $CF, $EC, $E4, $A0, $D3, $E1, $F7, $E2, $EF ;  Old Sawbones
    .BYTE $EE, $E5, $F3, 1
    .BYTE $A0, $C2, $E5, $EE, $EE, $F9, $AE, 1 ;  Benny.
    .BYTE 3
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $E1, $E4, $F6, $E1 ; *Take advantage of
    .BYTE $EE, $F4, $E1, $E7, $E5, $A0, $EF, $E6, 1
    .BYTE $A0, $F3, $F0, $E5, $E3, $E9, $E1, $EC, $EC, $F9 ;  specially priced
    .BYTE $A0, $F0, $F2, $E9, $E3, $E5, $E4, 1
    .BYTE $A0, $F4, $F2, $E5, $E1, $F4, $ED, $E5, $EE, $F4 ;  treatments now!!
    .BYTE $F3, $A0, $EE, $EF, $F7, $A1, $A1, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E5, $F4, $E8, $E5, $F2, $A0, $E4 ; *Whether dead or
    .BYTE $E5, $E1, $E4, $A0, $EF, $F2, 1
    .BYTE $A0, $E1, $EC, $E9, $F6, $E5, $AC, $A0, $F0, $F2 ;  alive, protect
    .BYTE $EF, $F4, $E5, $E3, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $EC, $E9, $E6, $E5 ;  your life.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C6, $E9, $F2, $F3, $F4, $A0, $F3, $E8, $EF ; *First show
    .BYTE $F7, 1
    .BYTE $A0, $ED, $E5, $A0, $F9, $EF, $F5, $F2, $A0, $ED ;  me your money. Then
    .BYTE $EF, $EE, $E5, $F9, $AE, $A0, $D4, $E8, $E5, $EE
    .BYTE 1
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $F4, $F2, $E5, $E1 ;  I'll treat you.
    .BYTE $F4, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $EC, $EC, $AE, $AE, $AE, $A0, 1 ; *Well...
    .BYTE $A0, $C9, $EE, $A0, $F9, $EF, $F5, $F2, $A0, $E3 ;  In your case,
    .BYTE $E1, $F3, $E5, $AC, 1
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $E8, $E1, $F6, $E5 ;  I'll have to bill
    .BYTE $A0, $F4, $EF, $A0, $E2, $E9, $EC, $EC, 1
    .BYTE 3
    .BYTE $C0, $A4          ; *$
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E6, $EF, $F2, 1 ;  for
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $F4, $F2, $E5, $E1 ;  your treatment.
    .BYTE $F4, $ED, $E5, $EE, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $F3, $F0, $E5, $E3 ; *This special price
    .BYTE $E9, $E1, $EC, $A0, $F0, $F2, $E9, $E3, $E5, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $F3, $E5, $F4, $A0, $EA ;  was set just for you.
    .BYTE $F5, $F3, $F4, $A0, $E6, $EF, $F2, $A0, $F9, $EF
    .BYTE $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $F3, $A0, $E6, $EF ; *Thanks for the
    .BYTE $F2, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $EE ; *You are now cured.
    .BYTE $EF, $F7, $A0, $E3, $F5, $F2, $E5, $E4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C7, $EF, $A0, $E7, $E5, $F4, $A0, $E8, $F5 ; *Go get hurt again
    .BYTE $F2, $F4, $A0, $E1, $E7, $E1, $E9, $EE, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E3, $EF, $ED, $E5, $A0 ;  and come back
    .BYTE $E2, $E1, $E3, $EB, 1
    .BYTE $A0, $F3, $EF, $EF, $EE, $AE, $A0, $A0, $C8, $E5 ;  soon.  He-he-hee!
    .BYTE $AD, $E8, $E5, $AD, $E8, $E5, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C6, $E9, $EE, $E5, $AC, $A0, $E4, $E9, $E5 ; *Fine, die all on
    .BYTE $A0, $E1, $EC, $EC, $A0, $EF, $EE, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $EF, $F7, $EE, $AE ;  your own. I'll
    .BYTE $A0, $C9, $A7, $EC, $EC, 1
    .BYTE $A0, $F0, $E8, $EF, $EE, $E5, $A0, $E1, $A0, $ED ;  phone a mortician.
    .BYTE $EF, $F2, $F4, $E9, $E3, $E9, $E1, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D5, $EE, $F4, $E9, $EC, $A0, $F4, $E8, $E5 ; *Until the curfew
    .BYTE $A0, $E3, $F5, $F2, $E6, $E5, $F7, 1
    .BYTE $A0, $E9, $F3, $A0, $EC, $E9, $E6, $F4, $E5, $E4 ;  is lifted, no one
    .BYTE $AC, $A0, $EE, $EF, $A0, $EF, $EE, $E5, 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $E3, $F2, $EF, $F3, $F3 ;  can cross.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $E2 ; *That is by order
    .BYTE $F9, $A0, $EF, $F2, $E4, $E5, $F2, 1
    .BYTE $A0, $EF, $E6, $A0, $F4, $E8, $E5, $A0, $D4, $EF ;  of the Town Mayor.
    .BYTE $F7, $EE, $A0, $CD, $E1, $F9, $EF, $F2, $AE, 1
    .BYTE 3
    .BYTE $C0, $D0, $F3, $F3, $F4, $AE, $AE, $AE, 1 ; *Psst...
    .BYTE $A0, $E2, $F9, $A0, $F4, $E8, $E5, $A0, $F7, $E1 ;  by the way kid,
    .BYTE $F9, $A0, $EB, $E9, $E4, $AC, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $F9, $A0, $ED, $E9, $E7, $E8 ; *they might let you
    .BYTE $F4, $A0, $EC, $E5, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E3, $F2, $EF, $F3, $F3, $A0, $F4, $E8, $E5 ;  cross the bridge
    .BYTE $A0, $E2, $F2, $E9, $E4, $E7, $E5, 1
    .BYTE $A0, $EE, $EF, $F2, $F4, $E8, $E5, $E1, $F3, $F4 ;  northeast of The Zoo.
    .BYTE $A0, $EF, $E6, $A0, $D4, $E8, $E5, $A0, $DA, $EF
    .BYTE $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E8, $E1, $F0, $F0 ; *What happened to
    .BYTE $E5, $EE, $E5, $E4, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $E3, $E8, $EF, $EF, $EC, $A2, $A0, $D9 ;  school? You have
    .BYTE $EF, $F5, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $F3, $E3, $E8, $EF, $EF, $EC, $AC, $A0, $E4 ;  school, don't you?
    .BYTE $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E7, $EF, $F4, $A0, $F4, $E8, $E9 ; *I got this from
    .BYTE $F3, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $C4, $F5, $EE, $E3, $E1, $EE, $A7, $F3, $A0 ;  Duncan's factory
    .BYTE $E6, $E1, $E3, $F4, $EF, $F2, $F9, 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $EE, $EF ;  in the north.
    .BYTE $F2, $F4, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E6, $E1, $E3, $F4 ; *This factory is
    .BYTE $EF, $F2, $F9, $A0, $E9, $F3, 1
    .BYTE $A0, $CD, $F2, $AE, $A0, $C4, $F5, $EE, $E3, $E1 ;  Mr. Duncan's
    .BYTE $EE, $A7, $F3, 1
    .BYTE $A0, $F0, $F2, $E9, $F6, $E1, $F4, $E5, $A0, $F0 ;  private property.
    .BYTE $F2, $EF, $F0, $E5, $F2, $F4, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $CC, $E5, $F4, $A7, $F3, $A0, $F3, $E5, $E5 ; *Let's see your
    .BYTE $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $D0, $E1, $F3, $F3, $A1, 1 ;  Pass!
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $D0, $E1, $F3, $F3 ; *This Pass has
    .BYTE $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E5, $F8, $F0, $E9, $F2, $E5, $E4, $AE, $A0 ;  expired. You must
    .BYTE $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $F3, $F4, $EF, $EC ;  have stolen it!
    .BYTE $E5, $EE, $A0, $E9, $F4, $A1, 1
    .BYTE 3
    .BYTE $C0, $D3, $F5, $F3, $F0, $E9, $E3, $E9, $EF, $F5 ; *Suspicious
    .BYTE $F3, 1
    .BYTE $A0, $E3, $F2, $E5, $E1, $F4, $F5, $F2, $E5, $AE ;  creature.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $CC, $EF, $EF, $EB, $A0, $ED, $E5, 1 ; *Look me
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $E5, $F9 ;  in the eye!!
    .BYTE $E5, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $EE, $A0, $E1, $F7, $E6, $F5, $EC, $A0 ; *An awful creature
    .BYTE $E3, $F2, $E5, $E1, $F4, $F5, $F2, $E5, 1
    .BYTE $A0, $E2, $E5, $E1, $F4, $A0, $ED, $E5, $A0, $F5 ;  beat me up.
    .BYTE $F0, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A7, $F2, $E5 ; *If you're going to
    .BYTE $A0, $E7, $EF, $E9, $EE, $E7, $A0, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F3, $F4, $E1, $F4, $E9 ;  the station, watch
    .BYTE $EF, $EE, $AC, $A0, $F7, $E1, $F4, $E3, $E8, 1
    .BYTE $A0, $EF, $F5, $F4, $A1, 1 ;  out!
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $F4 ; *I heard the curfew
    .BYTE $E8, $E5, $A0, $E3, $F5, $F2, $E6, $E5, $F7, 1
    .BYTE $A0, $E9, $EE, $A0, $D0, $EF, $E4, $F5, $EE, $EB ;  in Podunk has been
    .BYTE $A0, $E8, $E1, $F3, $A0, $E2, $E5, $E5, $EE, 1
    .BYTE $A0, $EC, $E9, $E6, $F4, $E5, $E4, $AE, 1 ;  lifted.
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $EB, $EE, $EF, $F7, $A0 ; *You know what that
    .BYTE $F7, $E8, $E1, $F4, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $ED, $E5, $E1, $EE, $F3, $AC, $A0, $E4, $EF ;  means, don't you?
    .BYTE $EE, $A7, $F4, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $A0, $E3, $E1, $EE, $A0, $E3, $F2 ; *We can cross the
    .BYTE $EF, $F3, $F3, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E2, $F2, $E9, $E4, $E7, $E5, $A0, $EF, $EE ;  bridge once more!
    .BYTE $E3, $E5, $A0, $ED, $EF, $F2, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E1, $F3, $A0, $F0, $E9, $E3 ; *I was picking
    .BYTE $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $EF, $EE, $A0, $F4, $E8, $E1, $F4, $A0, $F7 ;  on that weakling,
    .BYTE $E5, $E1, $EB, $EC, $E9, $EE, $E7, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $E8, $E5, $A0, $E7, $EF ; *But he got away.
    .BYTE $F4, $A0, $E1, $F7, $E1, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $AC, $A0 ; *Hey,
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE $A0, $D9, $EF, $F5, $A0, $F7, $E5, $E1, $EB, $EC ;  You weakling!
    .BYTE $E9, $EE, $E7, $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $A7, $F6, $E5, $A0, $E2, $E5, $E5 ; *We've been picking
    .BYTE $EE, $A0, $F0, $E9, $E3, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $EF, $EE, $A0, $F4, $E8, $E1, $F4, $A0, $F7 ;  on that weakling
    .BYTE $E5, $E1, $EB, $EC, $E9, $EE, $E7, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $F2, $E9, $E7, $E8, $F4, $A2, 1 ; , right?
    .BYTE 0
    .BYTE $C0, $CA, $F5, $F3, $F4, $A0, $F4, $E5, $E1, $F3 ; *Just teasing.
    .BYTE $E9, $EE, $E7, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $E1, $F7, $A0 ; *I saw
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F3, $F4, $E5, $E1, $EC, $A0, $E5, $F8, $F0 ;  steal explosives!!
    .BYTE $EC, $EF, $F3, $E9, $F6, $E5, $F3, $A1, $A1, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $E1, $E6, $F2, $E1, $E9 ; *I'm afraid of what
    .BYTE $E4, $A0, $EF, $E6, $A0, $F7, $E8, $E1, $F4, 1
    .BYTE $A0, $CD, $F2, $AE, $A0, $D4, $E5, $E1, $E3, $E8 ;  Mr. Teacher will
    .BYTE $E5, $F2, $A0, $F7, $E9, $EC, $EC, 1
    .BYTE $A0, $F3, $E1, $F9, $AE, 1 ;  say.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $E7, $EC, $E1, $F3 ; *Your glasses have
    .BYTE $F3, $E5, $F3, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $F3, $EC, $E9, $F0, $F0, $E5, $E4, $A0, $EF ;  slipped off your
    .BYTE $E6, $E6, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $EE, $EF, $F3, $E5, $AE, 1 ;  nose.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $D3, $F5, $FA, $F9 ; *I am Suzy. I'm
    .BYTE $AE, $A0, $C9, $A7, $ED, 1
    .BYTE $A0, $CD, $E9, $F3, $F3, $A0, $CD, $E5, $F2, $F2 ;  Miss Merrysville.
    .BYTE $F9, $F3, $F6, $E9, $EC, $EC, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $F2, $E5, $EE, $A7, $F4, $A0, $C9, $A0 ; *Aren't I gorgeous?
    .BYTE $E7, $EF, $F2, $E7, $E5, $EF, $F5, $F3, $A2, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $EC, $EF, $EF, $EB, $A0 ; *You look cute too.
    .BYTE $E3, $F5, $F4, $E5, $A0, $F4, $EF, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $F5 ; *You are ugly!
    .BYTE $E7, $EC, $F9, $A1, 1
    .BYTE $A0, $D9, $EF, $F5, $A0, $F2, $E5, $ED, $E9, $EE ;  You remind me of a
    .BYTE $E4, $A0, $ED, $E5, $A0, $EF, $E6, $A0, $E1, 1
    .BYTE $A0, $EE, $EF, $EF, $E4, $EC, $E5, $EE, $EF, $E7 ;  noodlenoggin!
    .BYTE $E7, $E9, $EE, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F4, $EF, $EF, $A0 ; *It's too bad that
    .BYTE $E2, $E1, $E4, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E4, $EF, $EF, $F2, $A0 ;  the door to the
    .BYTE $F4, $EF, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $EF, $EF, $E6, $A0, $E9, $F3, $A0, $EC ;  roof is locked.
    .BYTE $EF, $E3, $EB, $E5, $E4, $AE, 1
    .BYTE 3
    .BYTE $A0, $CD, $E1, $F9, $E2, $E5, $A0, $F9, $EF, $F5 ;  Maybe you'd like
    .BYTE $A7, $E4, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $EA, $EF, $E9, $EE, $A0, $ED ;  to join me...
    .BYTE $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $E1, $F3, $A0, $E7, $EF, $E9 ; *I was going to
    .BYTE $EE, $E7, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $EE, $E5, $E1, $EB, $A0, $EF, $F5, $F4 ;  sneak out and play
    .BYTE $A0, $E1, $EE, $E4, $A0, $F0, $EC, $E1, $F9, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $ED, $F9, $A0, $C7 ;  with my Game Boy.
    .BYTE $E1, $ED, $E5, $A0, $C2, $EF, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ; *You don't talk
    .BYTE $A0, $F4, $E1, $EC, $EB, 1
    .BYTE $A0, $F6, $E5, $F2, $F9, $A0, $ED, $F5, $E3, $E8 ;  very much, do you?
    .BYTE $AC, $A0, $E4, $EF, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF

; CHARS BANKS 0x90 - 0x97
    .BYTE $C0, $D4, $E8, $E5, $A0, $E7, $F9, $ED, $A0, $F4 ; *The gym teacher
    .BYTE $E5, $E1, $E3, $E8, $E5, $F2, 1
    .BYTE $A0, $ED, $E1, $E4, $E5, $A0, $ED, $E5, $A0, $E4 ;  made me do extra
    .BYTE $EF, $A0, $E5, $F8, $F4, $F2, $E1, 1
    .BYTE $A0, $F0, $F5, $F3, $E8, $AD, $F5, $F0, $F3, $A0 ;  push-ups again.
    .BYTE $E1, $E7, $E1, $E9, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $E4, $A0, $F2, $E1, $F4, $E8, $E5 ; *I'd rather do sit-
    .BYTE $F2, $A0, $E4, $EF, $A0, $F3, $E9, $F4, $AD, 1
    .BYTE $A0, $F5, $F0, $F3, $A0, $F4, $E8, $EF, $F5, $E7 ;  ups though.
    .BYTE $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $E3, $E1, $EE, $A0, $F9 ; *How can you get
    .BYTE $EF, $F5, $A0, $E7, $E5, $F4, 1
    .BYTE $A0, $EC, $EF, $F3, $F4, $A0, $E9, $EE, $A0, $E1 ;  lost in a
    .BYTE 1
    .BYTE $A0, $F3, $E3, $E8, $EF, $EF, $EC, $F9, $E1, $F2 ;  schoolyard?
    .BYTE $E4, $A2, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EA, $F5, $F3, $F4, $A0, $E3, $E1 ; *I just can't
    .BYTE $EE, $A7, $F4, 1
    .BYTE $A0, $E2, $E5, $EC, $E9, $E5, $F6, $E5, $A0, $E9 ;  believe it.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E6, $A0, $E3, $EF, $F5, $F2, $F3, $E5 ; *Of course the door
    .BYTE $A0, $F4, $E8, $E5, $A0, $E4, $EF, $EF, $F2, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $F2, $EF ;  to the roof is
    .BYTE $EF, $E6, $A0, $E9, $F3, 1
    .BYTE $A0, $EC, $EF, $E3, $EB, $E5, $E4, $A1, 1 ;  locked!
    .BYTE 3
    .BYTE $C0, $D7, $E5, $A0, $E3, $E1, $EE, $A7, $F4, $A0 ; *We can't have
    .BYTE $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $F3, $F4, $F5, $E4, $E5, $EE, $F4, $F3, $A0 ;  students sneaking
    .BYTE $F3, $EE, $E5, $E1, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $EF, $F5, $F4, $A0, $F4, $EF, $A0, $F0, $EC ;  out to play games,
    .BYTE $E1, $F9, $A0, $E7, $E1, $ED, $E5, $F3, $AC, 1
    .BYTE 3
    .BYTE $C0, $F7, $E8, $E5, $EE, $A0, $F4, $E8, $E5, $F9 ; *when they should
    .BYTE $A0, $F3, $E8, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $E2, $E5, $A0, $F3, $F4, $F5, $E4, $F9, $E9 ;  be studying, you
    .BYTE $EE, $E7, $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EB, $EE, $EF, $F7, $A1, 1 ;  know!
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $EE, $AC, $A0, $F7, $E8, $E5 ; *Then, when she
    .BYTE $EE, $A0, $F3, $E8, $E5, 1
    .BYTE $A0, $E4, $EF, $E5, $F3, $A0, $E7, $E5, $F4, $A0 ;  does get up,
    .BYTE $F5, $F0, $AC, 1
    .BYTE $A0, $F3, $E8, $E5, $A0, $E7, $EF, $E5, $F3, $A0 ;  she goes shopping.
    .BYTE $F3, $E8, $EF, $F0, $F0, $E9, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $CC, $F5, $E3, $EB, $E9, $EC, $F9, $AC, $A0 ; *Luckily, I hid the
    .BYTE $C9, $A0, $E8, $E9, $E4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E3, $F2, $E5, $E4, $E9, $F4, $A0, $E3, $E1 ;  credit cards from
    .BYTE $F2, $E4, $F3, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F7, $EF, $ED, $E1 ;  that woman!
    .BYTE $EE, $A1, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ; *Don't you think
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, 1
    .BYTE $A0, $F3, $E8, $E5, $A7, $F3, $A0, $E1, $A0, $F4 ;  she's a terrible
    .BYTE $E5, $F2, $F2, $E9, $E2, $EC, $E5, 1
    .BYTE $A0, $F7, $E9, $E6, $E5, $AE, 1 ;  wife.
    .BYTE 0
    .BYTE $C0, $CB, $E9, $E4, $F3, $A0, $E4, $EF, $EE, $A7 ; *Kids don't know
    .BYTE $F4, $A0, $EB, $EE, $EF, $F7, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F3, $EF, $F2, $F2, $EF ;  the sorrows of
    .BYTE $F7, $F3, $A0, $EF, $E6, 1
    .BYTE $A0, $F2, $E5, $E1, $EC, $A0, $EC, $E9, $E6, $E5 ;  real life...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $E4, $E1, $F2, $E5, $A0 ; *How dare you talk
    .BYTE $F9, $EF, $F5, $A0, $F4, $E1, $EC, $EB, 1
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, $A0, $ED, $F9, $A0 ;  about my wife
    .BYTE $F7, $E9, $E6, $E5, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $E8, $E1, $F4 ;  like that, scram!
    .BYTE $AC, $A0, $F3, $E3, $F2, $E1, $ED, $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F3, $E8, $E5, $A0 ; *When she was
    .BYTE $F7, $E1, $F3, 1
    .BYTE $A0, $F9, $EF, $F5, $EE, $E7, $AC, $A0, $F3, $E8 ;  young, she was
    .BYTE $E5, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $F6, $E5, $F2, $F9, $A0, $F0, $F2, $E5, $F4 ;  very pretty,
    .BYTE $F4, $F9, $AC, 1
    .BYTE 3
    .BYTE $C0, $E3, $EF, $ED, $E5, $A0, $F4, $EF, $A0, $F4 ; *come to think of it,
    .BYTE $E8, $E9, $EE, $EB, $A0, $EF, $E6, $A0, $E9, $F4
    .BYTE $AC, 1
    .BYTE $A0, $F3, $E8, $E5, $A7, $F3, $A0, $EE, $EF, $F4 ;  she's not that
    .BYTE $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E2, $E1, $E4, $A0, $E1, $E6, $F4, $E5, $F2 ;  bad after all.
    .BYTE $A0, $E1, $EC, $EC, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ; *Would you like some
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F3, $EF, $ED, $E5
    .BYTE 1
    .BYTE $A0, $F4, $E5, $E1, $A2, 1 ;  tea?
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $E1 ; *You are a pretty
    .BYTE $A0, $F0, $F2, $E5, $F4, $F4, $F9, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A0, $EB, $E9, $E4, $AE ;  good kid.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $E1, $F9, $A0, $F9 ; *You say you need
    .BYTE $EF, $F5, $A0, $EE, $E5, $E5, $E4, 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $EF, $A0, $F5, $F0, $A0 ;  to go up to the
    .BYTE $F4, $EF, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $EF, $EF, $E6, $A2, $A0, $C6, $EF, $EC ;  roof? Follow me.
    .BYTE $EC, $EF, $F7, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A7 ; *When you're old
    .BYTE $F2, $E5, $A0, $EF, $EC, $E4, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $EC, $EC, $A0, $F7, $E9 ;  you'll wish that
    .BYTE $F3, $E8, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $EE, $E7, $A0, $F0, $F5, $EE ;  young punks
    .BYTE $EB, $F3, 1
    .BYTE 3
    .BYTE $C0, $F7, $EF, $F5, $EC, $E4, $A0, $F2, $E5, $F3 ; *would respect you!
    .BYTE $F0, $E5, $E3, $F4, $A0, $F9, $EF, $F5, $A1, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $E4, $E1 ; *That's dangerous,
    .BYTE $EE, $E7, $E5, $F2, $EF, $F5, $F3, $AC, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A0, $E1, $F2, $E5, $A0 ;  what are doing
    .BYTE $E4, $EF, $E9, $EE, $E7, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F4, $E8, $E1, $F4 ;  with that thing?
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $A2, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $E9, $EC, $EC, $A0, $EB, $E5 ; *I will keep this
    .BYTE $E5, $F0, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, $AE, 1 ;  for you.
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $AC, $A0, $F0 ; *Please, please
    .BYTE $EC, $E5, $E1, $F3, $E5, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $F3, $EF, $ED, $E5 ;  have some tea.
    .BYTE $A0, $F4, $E5, $E1, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F2, $F5, $EE ; *Don't run in
    .BYTE $A0, $E9, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E8, $E1, $EC, $EC, $A1 ;  the hall!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E1, $E9, $F4, $A0, $E1, $A0, $ED, $E9 ; *Wait a minute, I
    .BYTE $EE, $F5, $F4, $E5, $AC, $A0, $C9, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E2, $E5, $EC ;  don't belive I've
    .BYTE $E9, $F6, $E5, $A0, $C9, $A7, $F6, $E5, 1
    .BYTE $A0, $F3, $E5, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ;  seen you before.
    .BYTE $E2, $E5, $E6, $EF, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ; *You must not be
    .BYTE $EE, $EF, $F4, $A0, $E2, $E5, 1
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $E1, $F2, $EF, $F5 ;  from around here,
    .BYTE $EE, $E4, $A0, $E8, $E5, $F2, $E5, $AC, 1
    .BYTE $A0, $E1, $F2, $E5, $A0, $F9, $EF, $F5, $A2, 1 ;  are you?
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $AE, $A0, $CA, $F5 ; *I see. Just don't
    .BYTE $F3, $F4, $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $F2, $F5, $EE, $A0, $E9, $EE, $A0, $F4, $E8 ;  run in the hall.
    .BYTE $E5, $A0, $E8, $E1, $EC, $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $E8, $EF, $F7, $A0, $ED, $E5, $A0, $F7 ; *Show me what
    .BYTE $E8, $E1, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $AE ;  you have.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ; *You don't have
    .BYTE $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ;  anything dangerous,
    .BYTE $E4, $E1, $EE, $E7, $E5, $F2, $EF, $F5, $F3, $AC
    .BYTE 1
    .BYTE $A0, $E4, $EF, $A0, $F9, $EF, $F5, $A2, 1 ;  do you?
    .BYTE 0
    .BYTE $C0, $D7, $E8, $EF, $A0, $E1, $F2, $E5, $A0, $F9 ; *Who are you?!
    .BYTE $EF, $F5, $A2, $A1, 1
    .BYTE $A0, $C9, $A0, $F7, $EF, $EE, $A7, $F4, $A0, $E3 ;  I won't come out.
    .BYTE $EF, $ED, $E5, $A0, $EF, $F5, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $C9, $A0, $E4, $EF, $AC, $A0 ; *If I do, everyone
    .BYTE $E5, $F6, $E5, $F2, $F9, $EF, $EE, $E5, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $F0, $E9, $E3, $EB ;  will pick on me.
    .BYTE $A0, $EF, $EE, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A0 ; *You want to be
    .BYTE $F4, $EF, $A0, $E2, $E5, 1
    .BYTE $A0, $ED, $F9, $A0, $E6, $F2, $E9, $E5, $EE, $E4 ;  my friend?
    .BYTE $A2, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E5, $EC ; *Don't tell anyone,
    .BYTE $EC, $A0, $E1, $EE, $F9, $EF, $EE, $E5, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $C9, $A0, $F3, $F4, $EF ;  but I stole some
    .BYTE $EC, $E5, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $E5, $F8, $F0, $EC, $EF, $F3, $E9, $F6, $E5 ;  explosives.
    .BYTE $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $E3, $EF, $ED, $E9, $EE ; *I'm coming out
    .BYTE $E7, $A0, $EF, $F5, $F4, 1
    .BYTE $A0, $EE, $EF, $F7, $AE, 1 ;  now.
    .BYTE 0
    .BYTE $C0, $C8, $E9, $AC, $A0, $C9, $A0, $E1, $ED, $A0 ; *Hi, I am
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE $A0, $C9, $A0, $F7, $E1, $EE, $F4, $E5, $E4, $A0 ;  I wanted to fly
    .BYTE $F4, $EF, $A0, $E6, $EC, $F9, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $C2, $EF, $F4, $F4, $EC ;  the Bottle Rockets
    .BYTE $E5, $A0, $D2, $EF, $E3, $EB, $E5, $F4, $F3, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E1, $F4, $A0, $F4, $E8, $E5, $A0 ; *that the Sweet-
    .BYTE $D3, $F7, $E5, $E5, $F4, $AD, 1
    .BYTE $A0, $CC, $E9, $F4, $F4, $EC, $E5, $A0, $C6, $E1 ;  Little Factory
    .BYTE $E3, $F4, $EF, $F2, $F9, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $F0, $F2, $EF, $E4, $F5 ;  was producing.
    .BYTE $E3, $E9, $EE, $E7, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ; *You must be tired.
    .BYTE $E2, $E5, $A0, $F4, $E9, $F2, $E5, $E4, $AE, 1
    .BYTE $A0, $D7, $E8, $F9, $A0, $E4, $EF, $EE, $A7, $F4 ;  Why don't you stay
    .BYTE $A0, $F9, $EF, $F5, $A0, $F3, $F4, $E1, $F9, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $F4, $EF, $EE, $E9 ;  here tonight?
    .BYTE $E7, $E8, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $EF, $F7, $A1, $A0, $A0, $D4, $E8, $E9 ; *Wow!  This Bottle
    .BYTE $F3, $A0, $C2, $EF, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $D2, $EF, $E3, $EB, $E5, $F4, $A0, $E9, $F3 ;  Rocket is sure to
    .BYTE $A0, $F3, $F5, $F2, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E3, $E1, $F5, $F3, $E5, $A0, $E1, $A0, $E2 ;  cause a bang.
    .BYTE $E1, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $A0, $ED, $E1, $F9, $A0, $E2, $E5 ; *We may be able to
    .BYTE $A0, $E1, $E2, $EC, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $ED, $E1, $EB, $E5, $A0, $F3, $EF, $ED, $E5 ;  make some more on
    .BYTE $A0, $ED, $EF, $F2, $E5, $A0, $EF, $EE, 1
    .BYTE $A0, $EF, $F5, $F2, $A0, $EF, $F7, $EE, $AE, 1 ;  our own.
    .BYTE 3
    .BYTE $C0, $C3, $EF, $ED, $E5, $A0, $F7, $E9, $F4, $E8 ; *Come with me
    .BYTE $A0, $ED, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $EC, $E1 ;  to the lab.
    .BYTE $E2, $AE, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A9, $A0, $C1, $E9, $ED, $A0, $EF, $EE, 1 ; ) Aim on
    .BYTE $A0, $F4, $E8, $E5, $A0, $F2, $EF, $E3, $EB, $AE ;  the rock...
    .BYTE $AE, $AE, 1
    .BYTE $A0, $CF, $CB, $A1, $A0, $B1, $AD, $B2, $AD, $B3 ;  OK! 1-2-3 Fire!!
    .BYTE $A0, $C6, $E9, $F2, $E5, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A9, $A0, $CE, $EF, $F7, $A0, $E9, $F4, $A0, $E9 ; ) Now it is
    .BYTE $F3, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F7, $E5, $E1, $EB, $EC ;  the weakling's turn.
    .BYTE $E9, $EE, $E7, $A7, $F3, $A0, $F4, $F5, $F2, $EE
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $F4, $E1, $F9, $A0 ; *You stay here and
    .BYTE $E8, $E5, $F2, $E5, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $F7, $E1, $E9, $F4, $A1, 1 ;  wait!
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F4, $E8, $E5, $A0, $CD ; *I'm the Mysterious
    .BYTE $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5, $F3, 1
    .BYTE $A0, $D4, $E5, $E1, $E3, $E8, $E5, $F2, $AE, $A0 ;  Teacher. Secretly
    .BYTE $D3, $E5, $E3, $F2, $E5, $F4, $EC, $F9, 1
    .BYTE $A0, $C9, $A0, $EC, $E9, $F6, $E5, $A0, $E8, $E5 ;  I live here.
    .BYTE $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EE, $E5, $E5, $E4, $A0, $ED, $EF ; *I need money for
    .BYTE $EE, $E5, $F9, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F2, $E5, $F3, $E5, $E1, $F2, $E3, $E8, $AE ;  research. Care to
    .BYTE $A0, $C3, $E1, $F2, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E2, $F5, $F9, $A0, $E1, $EE, $A0, $E9, $EE ;  buy an invention?
    .BYTE $F6, $E5, $EE, $F4, $E9, $EF, $EE, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $F0, $EC, $E5 ; *Well, please take
    .BYTE $E1, $F3, $E5, $A0, $F4, $E1, $EB, $E5, 1
    .BYTE $A0, $E1, $A0, $EC, $EF, $EF, $EB, $A0, $E1, $F4 ;  a look at the
    .BYTE $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F0, $F2, $E9, $E3, $E5, $A0, $EC, $E9, $F3 ;  price list.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ; *You must have some
    .BYTE $E8, $E1, $F6, $E5, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $ED, $EF, $EE, $E5, $F9, $A0, $E6, $EF, $F2 ;  money for candy,
    .BYTE $A0, $E3, $E1, $EE, $E4, $F9, $AC, 1
    .BYTE $A0, $EF, $F2, $A0, $F3, $F5, $E3, $E8, $AC, $A0 ;  or such, eh?
    .BYTE $E5, $E8, $A2, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E4, $F2 ; *Please drop in
    .BYTE $EF, $F0, $A0, $E9, $EE, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E9, $ED, $E5, $AC, 1 ;  anytime,
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $E1, $EC, $F7, $E1, $F9 ; *I'm always working
    .BYTE $F3, $A0, $F7, $EF, $F2, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $EF, $EE, $A0, $E1, $A0, $EE, $E5, $F7, $A0 ;  on a new invention.
    .BYTE $E9, $EE, $F6, $E5, $EE, $F4, $E9, $EF, $EE, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E1, $F6, $E5, $EE, $A7, $F4 ; *I haven't made any
    .BYTE $A0, $ED, $E1, $E4, $E5, $A0, $E1, $EE, $F9, 1
    .BYTE $A0, $F0, $F2, $EF, $E7, $F2, $E5, $F3, $F3, $A0 ;  progress since
    .BYTE $F3, $E9, $EE, $E3, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $EC, $E1, $F3, $F4 ;  your last visit.
    .BYTE $A0, $F6, $E9, $F3, $E9, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ; *Would you like to
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $EC, $EF, $EF, $EB, $A0, $E1, $F4, $A0, $F4 ;  look at the old
    .BYTE $E8, $E5, $A0, $EF, $EC, $E4, 1
    .BYTE $A0, $EC, $E9, $F3, $F4, $A2, 1 ;  list?
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $EF ; *I heard on the
    .BYTE $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $E1, $E4, $E9, $EF, $A0, $F4, $E8, $E1 ;  radio that it's a
    .BYTE $F4, $A0, $E9, $F4, $A7, $F3, $A0, $E1, 1
    .BYTE $A0, $ED, $E5, $F3, $F3, $A0, $E5, $F6, $E5, $F2 ;  mess everywhere.
    .BYTE $F9, $F7, $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $F4, $A0, $E1, $EC, $EC, $A0, $E3, $EF ; *At all costs I
    .BYTE $F3, $F4, $F3, $A0, $C9, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $F0, $F2, $EF, $F4 ;  will protect this
    .BYTE $E5, $E3, $F4, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $F3, $F4, $E1, $F4, $E9, $EF, $EE, $AE, 1 ;  station.
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $C9, $A0, $E4 ; *Well, I don't know
    .BYTE $EF, $EE, $A7, $F4, $A0, $EB, $EE, $EF, $F7, 1
    .BYTE $A0, $E8, $EF, $F7, $A0, $E6, $E1, $F2, $A0, $F4 ;  how far the train
    .BYTE $E8, $E5, $A0, $F4, $F2, $E1, $E9, $EE, 1
    .BYTE $A0, $E7, $EF, $E5, $F3, $A0, $F4, $E8, $F2, $EF ;  goes through,
    .BYTE $F5, $E7, $E8, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $AC, $A0, $F9, $EF, $F5, $A0 ; *but, you need
    .BYTE $EE, $E5, $E5, $E4, 1
    .BYTE $A0, $E1, $A0, $F4, $E9, $E3, $EB, $E5, $F4, $A0 ;  a ticket to ride.
    .BYTE $F4, $EF, $A0, $F2, $E9, $E4, $E5, $AE, 1
    .BYTE $A0, $C3, $E1, $F2, $E5, $A0, $F4, $EF, $A0, $E2 ;  Care to buy one?
    .BYTE $F5, $F9, $A0, $EF, $EE, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $F7, $E5, $E1, $F0, $EF, $EE, 1 ; 's weapon
    .BYTE $A0, $F7, $E1, $F3, $A0, $E3, $EF, $EE, $E6, $E9 ;  was confiscated.)
    .BYTE $F3, $E3, $E1, $F4, $E5, $E4, $AE, $A9, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $EE, $AC, $A0, $E9, $F4, $A7 ; *Then, it's
    .BYTE $F3, 1
    .BYTE $A0               ;
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE 1
    .BYTE $A0, $E4, $EF, $EC, $EC, $E1, $F2, $F3, $AE, 1 ;  dollars.
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $AC, $A0, $F4, $E8, $E1, $F4 ; *Hey, that Hat
    .BYTE $A0, $C8, $E1, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $F2, $E5, $A0, $E3, $E1 ;  you're carrying
    .BYTE $F2, $F2, $F9, $E9, $EE, $E7, 1
    .BYTE $A0, $EC, $EF, $EF, $EB, $F3, $A0, $EA, $F5, $F3 ;  looks just like
    .BYTE $F4, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $A0, $EF, $EE, $E5, $A0, $F4 ; *the one that
    .BYTE $E8, $E1, $F4, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EF, $E6, $A0, $D3, $EE, $EF, $F7, $ED, $E1 ;  of Snowman
    .BYTE $EE, 1
    .BYTE $A0, $EC, $EF, $F3, $F4, $AE, 1 ;  lost.
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $F2, $E5 ; *If you return it
    .BYTE $F4, $F5, $F2, $EE, $A0, $E9, $F4, 1
    .BYTE $A0, $F4, $EF, $A0, $E8, $E5, $F2, $AC, $A0, $F3 ;  to her, she just
    .BYTE $E8, $E5, $A0, $EA, $F5, $F3, $F4, 1
    .BYTE $A0, $ED, $E1, $F9, $A0, $F2, $E5, $F7, $E1, $F2 ;  may reward you.
    .BYTE $E4, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $E1, $F9, $A0, $F9, $EF, $F5, $A0, $EC ; *May you live a
    .BYTE $E9, $F6, $E5, $A0, $E1, 1
    .BYTE $A0, $EC, $EF, $EE, $E7, $A0, $EC, $E9, $E6, $E5 ;  long life.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E1, $F3, $A0, $EF, $EE, $A0 ; *I was on my way to
    .BYTE $ED, $F9, $A0, $F7, $E1, $F9, $A0, $F4, $EF, 1
    .BYTE $A0, $D9, $EF, $F5, $EE, $E7, $F4, $EF, $F7, $EE ;  Youngtown to look
    .BYTE $A0, $F4, $EF, $A0, $EC, $EF, $EF, $EB, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $ED, $F9, $A0, $F7, $E9 ;  for my wife.
    .BYTE $E6, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $F7, $E9, $F4, $E8 ; *But, without the
    .BYTE $EF, $F5, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F4, $F2, $E1, $E9, $EE, $A0, $F2, $F5, $EE ;  train running, how
    .BYTE $EE, $E9, $EE, $E7, $AC, $A0, $E8, $EF, $F7, 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $C9, $A0, $E7, $E5, $F4 ;  can I get there?
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $A0, $E1, $E8, $E5, $E1, $E4, $AC ; *Go ahead, poke
    .BYTE $A0, $F0, $EF, $EB, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $EE, $EF, $F3, $E5 ;  your nose into
    .BYTE $A0, $E9, $EE, $F4, $EF, 1
    .BYTE $A0, $EF, $F4, $E8, $E5, $F2, $A0, $F0, $E5, $EF ;  other people's
    .BYTE $F0, $EC, $E5, $A7, $F3, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F3, $E9, $EE, $E5, $F3, $F3, $AE ; *business. It's
    .BYTE $A0, $C9, $F4, $A7, $F3, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A0, $ED, $E1, $EB, $E5 ;  what makes playing
    .BYTE $F3, $A0, $F0, $EC, $E1, $F9, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E7, $E1, $ED, $E5, $A0 ;  the game so fun.
    .BYTE $F3, $EF, $A0, $E6, $F5, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $E9, $F4, $A0, $E9 ; *Here it is!
    .BYTE $F3, $A1, 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $F3 ; *Did you see the
    .BYTE $E5, $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $ED, $E1, $EE, $A0, $F7, $E9, $F4, $E8, $A0 ;  man with the slick
    .BYTE $F4, $E8, $E5, $A0, $F3, $EC, $E9, $E3, $EB, 1
    .BYTE $A0, $ED, $F5, $F3, $F4, $E1, $E3, $E8, $E5, $A2 ;  mustache?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CD, $F5, $F3, $F4, $A0, $E8, $E1, $F6, $E5 ; *Must have lost
    .BYTE $A0, $EC, $EF, $F3, $F4, 1
    .BYTE $A0, $E8, $E9, $ED, $AE, $A0, $C3, $EF, $F5, $EC ;  him. Couldn't help
    .BYTE $E4, $EE, $A7, $F4, $A0, $E8, $E5, $EC, $F0, 1
    .BYTE $A0, $E9, $F4, $AE, $AE, $AE, 1 ;  it...
    .BYTE 3
    .BYTE $C0, $C1, $EE, $F9, $E8, $EF, $F7, $AC, $A0, $C9 ; *Anyhow, I must go
    .BYTE $A0, $ED, $F5, $F3, $F4, $A0, $E7, $EF, 1
    .BYTE $A0, $E3, $E8, $E5, $E3, $EB, $A0, $E6, $EF, $F2 ;  check for parking
    .BYTE $A0, $F0, $E1, $F2, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $F6, $E9, $EF, $EC, $E1, $F4, $E9, $EF, $EE ;  violations now.
    .BYTE $F3, $A0, $EE, $EF, $F7, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $A7, $F3, $A0, $E1, $A0, $F3, $F7 ; *He's a swindler!
    .BYTE $E9, $EE, $E4, $EC, $E5, $F2, $A1, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $EC, $E5 ;  Please let me know
    .BYTE $F4, $A0, $ED, $E5, $A0, $EB, $EE, $EF, $F7, 1
    .BYTE $A0, $E9, $E6, $A0, $F9, $EF, $F5, $A0, $F3, $E5 ;  if you see him.
    .BYTE $E5, $A0, $E8, $E9, $ED, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $A0, $CB, $E9, $E4, $A1, 1 ; *Hey Kid!
    .BYTE $A0, $CA, $F5, $F3, $F4, $A0, $E8, $EF, $EC, $E4 ;  Just hold onto
    .BYTE $A0, $EF, $EE, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $ED, $EF, $EE, $E5 ;  this money for me.
    .BYTE $F9, $A0, $E6, $EF, $F2, $A0, $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E5, $EC ; *Don't tell the
    .BYTE $EC, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E3, $EF, $F0, $F3, $A0, $EF, $F2, $A0, $E1 ;  cops or anyone
    .BYTE $EE, $F9, $EF, $EE, $E5, 1
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, $A0, $E9, $F4, $A1 ;  about it!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F2, $F5, $EE ; *Don't run away
    .BYTE $A0, $E1, $F7, $E1, $F9, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $E9, $F4, $A1, 1 ;  with it!
    .BYTE 0
    .BYTE $C0, $CA, $F5, $F3, $F4, $A0, $E4, $EF, $A0, $F7 ; *Just do what I
    .BYTE $E8, $E1, $F4, $A0, $C9, 1
    .BYTE $A0, $F4, $E5, $EC, $EC, $A0, $F9, $EF, $F5, $A1 ;  tell you!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CC, $E5, $E1, $F6, $E5, $A0, $ED, $E5, $A0 ; *Leave me alone!
    .BYTE $E1, $EC, $EF, $EE, $E5, $A1, 1
    .BYTE $A0, $C3, $E1, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ;  Can't you see I'm
    .BYTE $A0, $F3, $E5, $E5, $A0, $C9, $A7, $ED, 1
    .BYTE $A0, $E9, $EE, $E3, $EF, $E7, $EE, $E9, $F4, $EF ;  incognito?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you seen the
    .BYTE $F3, $E5, $E5, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F7, $EF, $ED, $E1, $EE, $A0, $F7, $E9, $F4 ;  woman with a big
    .BYTE $E8, $A0, $E1, $A0, $E2, $E9, $E7, 1
    .BYTE $A0, $E2, $E5, $EC, $EC, $F9, $A2, 1 ;  belly?
    .BYTE 0
    .BYTE $C0, $CD, $F5, $F3, $F4, $A0, $E8, $E1, $F6, $E5 ; *Must have lost
    .BYTE $A0, $EC, $EF, $F3, $F4, 1
    .BYTE $A0, $E8, $E5, $F2, $AE, $A0, $C3, $EF, $F5, $EC ;  her. Couldn't
    .BYTE $E4, $EE, $A7, $F4, 1
    .BYTE $A0, $E8, $E5, $EC, $F0, $A0, $E9, $F4, $AE, $AE ;  help it...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $F9, $F7, $E1, $F9, $AC, $A0, $C9 ; *Anyway, I'm going
    .BYTE $A7, $ED, $A0, $E7, $EF, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $EF, $A0, $E3, $E8, $E5, $E3, $EB, $A0 ;  to check for
    .BYTE $E6, $EF, $F2, 1
    .BYTE $A0, $F3, $F0, $E5, $E5, $E4, $E5, $F2, $F3, $A0 ;  speeders instead.
    .BYTE $E9, $EE, $F3, $F4, $E5, $E1, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $E8, $E5, $A0, $E1, $F4, $E5, 1 ; *She ate
    .BYTE $A0, $B5, $A0     ;  5
    TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset
    .BYTE $F3, $AC, 1       ; s,
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $EE, $A0, $F2, $E1, $EE, $A0 ; *then ran away
    .BYTE $E1, $F7, $E1, $F9, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $EF, $F5, $F4, $A0, $F0 ;  without paying.
    .BYTE $E1, $F9, $E9, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $F3, $E5 ; *If you see her,
    .BYTE $E5, $A0, $E8, $E5, $F2, $AC, 1
    .BYTE $A0, $EC, $E5, $F4, $A0, $ED, $E5, $A0, $EB, $EE ;  let me know!
    .BYTE $EF, $F7, $A1, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $C9, $A7, $ED, $A0, $F3 ; *Oh, I'm so full!!
    .BYTE $EF, $A0, $E6, $F5, $EC, $EC, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $F4, $EF, $F7, $EE ; *This town has
    .BYTE $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E2, $E5, $E3, $EF, $ED, $E5, $A0, $E4, $E1 ;  become dangerous!
    .BYTE $EE, $E7, $E5, $F2, $EF, $F5, $F3, $A1, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $E9, $F4, $A7, $F3, $A0 ; *But it's still a
    .BYTE $F3, $F4, $E9, $EC, $EC, $A0, $E1, 1
    .BYTE $A0, $ED, $F5, $E3, $E8, $A0, $E2, $E5, $F4, $F4 ;  much better place
    .BYTE $E5, $F2, $A0, $F0, $EC, $E1, $E3, $E5, 1
    .BYTE $A0, $F4, $E8, $E1, $EE, $A0, $C5, $EC, $EC, $E1 ;  than Ellay.
    .BYTE $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0, $F9, $E5, $E1, $E8, $A2, 1 ; *Oh yeah?
    .BYTE $A0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $F2 ;  Are you ready?
    .BYTE $E5, $E1, $E4, $F9, $A2, 1
    .BYTE $A0, $C1, $EC, $EC, $AD, $F2, $E9, $E7, $E8, $F4 ;  All-right!!
    .BYTE $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $A1, $A1, 1 ; *Hey!!
    .BYTE $A0, $D7, $E1, $EE, $EE, $E1, $A0, $E8, $E5, $E1 ;  Wanna hear my
    .BYTE $F2, $A0, $ED, $F9, 1
    .BYTE $A0, $F3, $EF, $EE, $E7, $A1, $A2, 1 ;  song!?
    .BYTE 0
    .BYTE $C0, $C6, $E9, $EE, $E5, $AC, $A0, $E2, $E5, $A0 ; *Fine, be that way.
    .BYTE $F4, $E8, $E1, $F4, $A0, $F7, $E1, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F4, $E9, $ED, $E5 ; *It's time to say
    .BYTE $A0, $F4, $EF, $A0, $F3, $E1, $F9, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $AD, $E2, $F9, $E5, $AE ;  good-bye...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $E8 ; *Did you hear the
    .BYTE $E5, $E1, $F2, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C4, $F2, $E1, $E7, $EF, $EE, $A7, $F3, $A0 ;  Dragon's lullaby?
    .BYTE $EC, $F5, $EC, $EC, $E1, $E2, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $ED, $E5, $F7, $E8, $E5, $F2, $E5 ; *Somewhere in the
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F4, $EF, $F7, $EE, $A0, $EF, $E6, 1 ;  town of
    .BYTE $A0, $D3, $F0, $EF, $EF, $EB, $E1, $EE, $E5, $AE ;  Spookane...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $F4 ; *I heard that
    .BYTE $E8, $E1, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $A7, $F3, $A0, $E1 ;  there's a
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $E7, $E8, $AE, $AE, $AE, 1 ; *gh...
    .BYTE 3
    .BYTE $C0, $E7, $E8, $EF, $AE, $AE, 1 ; *gho..
    .BYTE 3
    .BYTE $C0, $E7, $E8, $EF, $F3, $F4, $AE, $AE, 1 ; *ghost..
    .BYTE $A0, $C7, $E8, $EF, $F3, $F4, $A0, $E8, $EF, $F5 ;  Ghost house!!
    .BYTE $F3, $E5, $A1, $A1, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ; *Don't you ever
    .BYTE $A0, $E5, $F6, $E5, $F2, 1
    .BYTE $A0, $E4, $E1, $F2, $E5, $A0, $F4, $EF, $A0, $E7 ;  dare to go there!!
    .BYTE $EF, $A0, $F4, $E8, $E5, $F2, $E5, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C7, $E9, $F6, $E5, $A0, $ED, $E5, $A0, $F3 ; *Give me something.
    .BYTE $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7, $AE, 1
    .BYTE $A0, $D7, $E8, $E1, $F4, $E5, $F6, $E5, $F2, $A0 ;  Whatever it is,
    .BYTE $E9, $F4, $A0, $E9, $F3, $AC, 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $E7, $E9, $F6, $E5 ;  just give it to me.
    .BYTE $A0, $E9, $F4, $A0, $F4, $EF, $A0, $ED, $E5, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C7, $E9, $ED, $ED, $E5, $A0, $E7, $E9, $ED ; *Gimme gimme.
    .BYTE $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $AC, $A0, $E7 ; *Please, give me.
    .BYTE $E9, $F6, $E5, $A0, $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $F9, $A0, $F7, $EF, $EE, $A7, $F4 ; *Why won't you give
    .BYTE $A0, $F9, $EF, $F5, $A0, $E7, $E9, $F6, $E5, 1
    .BYTE $A0, $E9, $F4, $A0, $F4, $EF, $A0, $ED, $E5, $A2 ;  it to me? I said
    .BYTE $A0, $C9, $A0, $F3, $E1, $E9, $E4, 1
    .BYTE $A0, $F0, $EC, $E5, $E1, $F3, $E5, $A2, 1 ;  please?
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F0, $F2, $EF, $ED, $E9, $F3, $E5 ; *I promise, I'll
    .BYTE $AC, $A0, $C9, $A7, $EC, $EC, 1
    .BYTE $A0, $E7, $E9, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ;  give you something
    .BYTE $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $E9, $EE, $A0, $F2, $E5, $F4, $F5, $F2, $EE ;  in return.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F4, $E8, $E9, $EE, $EB ; *I'm thinking of
    .BYTE $E9, $EE, $E7, $A0, $EF, $E6, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something nice
    .BYTE $A0, $EE, $E9, $E3, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $E9, $F6, $E5, $A0, $F9 ;  to give you.
    .BYTE $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E1, $F2, $E5, $A0 ; *What are you going
    .BYTE $F9, $EF, $F5, $A0, $E7, $EF, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $E9, $F6, $E5, $A0, $ED ;  to give me?
    .BYTE $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $F3, $A0, $E1, $A0 ; *Thanks a lot.
    .BYTE $EC, $EF, $F4, $AE, 1
    .BYTE $A0, $D4, $EF, $A0, $F3, $E8, $EF, $F7, $A0, $ED ;  To show my
    .BYTE $F9, 1
    .BYTE $A0, $E7, $F2, $E1, $F4, $E9, $F4, $F5, $E4, $E5 ;  gratitude I'll
    .BYTE $A0, $C9, $A7, $EC, $EC, 1
    .BYTE 3
    .BYTE $C0, $E7, $E9, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *give you this
    .BYTE $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $C6, $EC, $E5, $E1, $A0, $C2, $E1, $E7, $AE ;  Flea Bag.
    .BYTE 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F4, $E1 ;  Please take it.
    .BYTE $EB, $E5, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A7, $F3, $A0, $E1 ; *There's a flu going
    .BYTE $A0, $E6, $EC, $F5, $A0, $E7, $EF, $E9, $EE, $E7
    .BYTE 1
    .BYTE $A0, $E1, $F2, $EF, $F5, $EE, $E4, $A0, $E8, $E5 ;  around here.
    .BYTE $F2, $E5, $AE, 1
    .BYTE $A0, $C3, $EF, $F5, $E7, $E8, $AC, $A0, $E3, $EF ;  Cough, cough.
    .BYTE $F5, $E7, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E9, $E7, $E8, $A0, $E9, $EE, $A0, $F4 ; *High in the
    .BYTE $E8, $E5, 1
    .BYTE $A0, $ED, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $F3 ;  mountains, lives
    .BYTE $AC, $A0, $EC, $E9, $F6, $E5, $F3, 1
    .BYTE $A0, $E1, $EE, $A0, $EF, $EC, $E4, $A0, $ED, $E1 ;  an old man.
    .BYTE $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CC, $E5, $E7, $E5, $EE, $E4, $F3, $A0, $F3 ; *Legends say he
    .BYTE $E1, $F9, $A0, $E8, $E5, 1
    .BYTE $A0, $E8, $E1, $F3, $EE, $A7, $F4, $A0, $E8, $E1 ;  hasn't had a cold
    .BYTE $E4, $A0, $E1, $A0, $E3, $EF, $EC, $E4, 1
    .BYTE $A0, $E9, $EE, $A0, $B3, $B0, $B0, $A0, $F9, $E5 ;  in 300 years.
    .BYTE $E1, $F2, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $ED, $ED, $AC, $A0, $E8, $ED, $ED, $A0 ; *Mmm, hmm meh heh,
    .BYTE $ED, $E5, $E8, $A0, $E8, $E5, $E8, $AC, 1
    .BYTE $A0, $E8, $ED, $ED, $AC, $A0, $E8, $E5, $E8, $A0 ;  hmm, heh mehah,
    .BYTE $ED, $E5, $E8, $E1, $E8, $AC, 1
    .BYTE $A0, $E8, $ED, $ED, $ED, $AC, $A0, $E8, $E5, $E8 ;  hmmm, heh hmmumm!
    .BYTE $A0, $E8, $ED, $ED, $F5, $ED, $ED, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, $A0, $F5 ; *I can't understand
    .BYTE $EE, $E4, $E5, $F2, $F3, $F4, $E1, $EE, $E4, 1
    .BYTE $A0, $E1, $A0, $F7, $EF, $F2, $E4, $A0, $F4, $E8 ;  a word the old man
    .BYTE $E5, $A0, $EF, $EC, $E4, $A0, $ED, $E1, $EE, 1
    .BYTE $A0, $F3, $E1, $F9, $F3, $A0, $E5, $E9, $F4, $E8 ;  says either.
    .BYTE $E5, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $A0, $EE, $E9, $E3, $E5, $A0, $F4 ; *So nice to have my
    .BYTE $EF, $A0, $E8, $E1, $F6, $E5, $A0, $ED, $F9, 1
    .BYTE $A0, $C4, $E5, $EE, $F4, $F5, $F2, $E5, $F3, $A0 ;  Dentures back once
    .BYTE $E2, $E1, $E3, $EB, $A0, $EF, $EE, $E3, $E5, 1
    .BYTE $A0, $ED, $EF, $F2, $E5, $AE, $A0, $D9, $EF, $F5 ;  more. Your reward?
    .BYTE $F2, $A0, $F2, $E5, $F7, $E1, $F2, $E4, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E9, $F4, $E8, $A0, $F9, $EF, $F5, $A0 ; *With you I'll
    .BYTE $C9, $A7, $EC, $EC, 1
    .BYTE $A0, $F3, $E8, $E1, $F2, $E5, $A0, $ED, $F9, $A0 ;  share my secret to
    .BYTE $F3, $E5, $E3, $F2, $E5, $F4, $A0, $F4, $EF, 1
    .BYTE $A0, $EC, $EF, $EE, $E7, $AC, $A0, $EC, $EF, $EE ;  long, long, life.
    .BYTE $E7, $AC, $A0, $EC, $E9, $E6, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C7, $E1, $F2, $E7, $EC, $E5, $A0, $EF, $E6 ; *Gargle often.
    .BYTE $F4, $E5, $EE, $AE, 1
    .BYTE $A0, $C7, $E1, $F2, $E7, $EC, $E5, $A0, $F0, $F2 ;  Gargle proud.
    .BYTE $EF, $F5, $E4, $AE, 1
    .BYTE $A0, $C7, $E1, $F2, $E7, $EC, $E5, $A0, $F3, $F4 ;  Gargle strong.
    .BYTE $F2, $EF, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $E4, $A0, $E9, $E6, $A0, $F9, $EF ; *And if you catch a
    .BYTE $F5, $A0, $E3, $E1, $F4, $E3, $E8, $A0, $E1, 1
    .BYTE $A0, $E3, $EF, $EC, $E4, $AC, $A0, $E7, $E1, $F2 ;  cold, gargling
    .BYTE $E7, $EC, $E9, $EE, $E7, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E8, $E5, $EC, $F0 ;  will help.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $E9, $F3, $A0, $E1 ; *Here is a Mouth-
    .BYTE $A0, $CD, $EF, $F5, $F4, $E8, $AD, 1
    .BYTE $A0, $F7, $E1, $F3, $E8, $A0, $C9, $A0, $E3, $EF ;  wash I concocted
    .BYTE $EE, $E3, $EF, $E3, $F4, $E5, $E4, 1
    .BYTE $A0, $ED, $F9, $F3, $E5, $EC, $E6, $AE, $A0, $D4 ;  myself. Take it!
    .BYTE $E1, $EB, $E5, $A0, $E9, $F4, $A1, 1
    .BYTE 0
    .BYTE $C0, $CD, $EF, $F5, $F4, $E8, $F7, $E1, $F3, $E8 ; *Mouthwash again?
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $A2, 1
    .BYTE $A0, $C8, $E5, $F2, $E5, $A0, $E9, $F4, $A0, $E9 ;  Here it is.
    .BYTE $F3, $AE, 1
    .BYTE $A0, $C7, $EF, $A0, $E1, $E8, $E5, $E1, $E4, $AC ;  Go ahead, take it.
    .BYTE $A0, $F4, $E1, $EB, $E5, $A0, $E9, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $C9, $A0, $E8, $E1 ; *But, I have to
    .BYTE $F6, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E3, $E8, $E1, $F2, $E7, $E5, $A0, $F9, $EF ;  charge you
    .BYTE $F5, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F4, $E9, $ED, $E5 ;  this time.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C7, $E1, $F2, $E7, $EC, $E5, $A0, $E7, $E1 ; *Gargle gargle
    .BYTE $F2, $E7, $EC, $E5, 1
    .BYTE $A0, $E7, $E1, $F2, $E7, $EC, $E5, $AE, $AE, $AE ;  gargle... Splash!
    .BYTE $A0, $D3, $F0, $EC, $E1, $F3, $E8, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $F3 ; *I heard someone
    .BYTE $EF, $ED, $E5, $EF, $EE, $E5, 1
    .BYTE $A0, $E4, $E9, $E5, $E4, $A0, $E6, $F2, $EF, $ED ;  died from a cold.
    .BYTE $A0, $E1, $A0, $E3, $EF, $EC, $E4, $AE, 1
    .BYTE $A0, $CA, $F5, $F3, $F4, $A0, $E1, $A0, $E3, $EF ;  Just a cold!
    .BYTE $EC, $E4, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you heard
    .BYTE $E8, $E5, $E1, $F2, $E4, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E8, $E5, $F2 ;  that there is
    .BYTE $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $E1, $A0, $E7, $E8, $EF, $F3, $F4, $A0, $E8 ;  a ghost house
    .BYTE $EF, $F5, $F3, $E5, 1
    .BYTE $A0, $E9, $EE, $A0, $D3, $F0, $EF, $EF, $EB, $E1 ;  in Spookane?
    .BYTE $EE, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $E1 ; *I heard a spooky
    .BYTE $A0, $F3, $F0, $EF, $EF, $EB, $F9, 1
    .BYTE $A0, $F4, $E1, $EC, $E5, $A0, $E1, $E2, $EF, $F5 ;  tale about that
    .BYTE $F4, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F6, $E1, $E3, $E1, $EE, $F4, $A0, $E8, $EF ;  vacant house...
    .BYTE $F5, $F3, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $F9, $A0, $F3, $E1, $F9, $A0 ; *they say that the
    .BYTE $F4, $E8, $E1, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F0, $E9, $E1, $EE, $EF, $A0, $F3, $F4, $E9 ;  piano still plays
    .BYTE $EC, $EC, $A0, $F0, $EC, $E1, $F9, $F3, 1
    .BYTE $A0, $E1, $A0, $E8, $E1, $F5, $EE, $F4, $E9, $EE ;  a haunting melody.
    .BYTE $E7, $A0, $ED, $E5, $EC, $EF, $E4, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $A0, $EB, $E9, $E4, $AC, $A0 ; *Hey kid, what you
    .BYTE $F7, $E8, $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $EB, $EE, $EF ;  don't know will
    .BYTE $F7, $A0, $F7, $E9, $EC, $EC, 1
    .BYTE $A0, $EE, $E5, $F6, $E5, $F2, $A0, $E8, $F5, $F2 ;  never hurt you!
    .BYTE $F4, $A0, $F9, $EF, $F5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $E8, $E8, $A0, $AD, $A0, $C8, $E1, $A0 ; *Ahh - Ha ha ha...
    .BYTE $E8, $E1, $A0, $E8, $E1, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $E2, $EF, $E4, $F9, $A7, $F3, $A0 ; *Nobody's here.
    .BYTE $E8, $E5, $F2, $E5, $AE, 1
    .BYTE $A0, $C8, $E5, $E5, $A0, $E8, $E5, $E5, $A0, $E8 ;  Hee hee hee...
    .BYTE $E5, $E5, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $F9 ; *This is your worst
    .BYTE $EF, $F5, $F2, $A0, $F7, $EF, $F2, $F3, $F4, 1
    .BYTE $A0, $EE, $E9, $E7, $E8, $F4, $ED, $E1, $F2, $E5 ;  nightmare. You
    .BYTE $AE, $A0, $D9, $EF, $F5, 1
    .BYTE $A0, $E3, $E1, $EE, $EE, $EF, $F4, $A0, $E7, $E5 ;  cannot get away!
    .BYTE $F4, $A0, $E1, $F7, $E1, $F9, $A1, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $E5, $A0, $E8, $E5, $E5, $A0, $E8 ; *Hee hee hee...
    .BYTE $E5, $E5, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $A0, $D5, $A0, $D2, $A0, $CE, $A0, $A0 ; *T U R N  B A C K
    .BYTE $C2, $A0, $C1, $A0, $C3, $A0, $CB, 1
    .BYTE 0
    .BYTE $C0, $C1, $E1, $E1, $E7, $E7, $E8, $E8, $E8, $E8 ; *Aaagghhhhhhhhhh....
    .BYTE $E8, $E8, $E8, $E8, $E8, $E8, $AE, $AE, $AE, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $EC, $EC, $A0, $EE, $E5 ; *You'll never make
    .BYTE $F6, $E5, $F2, $A0, $ED, $E1, $EB, $E5, 1
    .BYTE $A0, $E9, $F4, $AE, $AE, $AE, 1 ;  it...
    .BYTE $A0, $C8, $E5, $E5, $A0, $E8, $E5, $E5, $A0, $E8 ;  Hee hee hee hee.
    .BYTE $E5, $E5, $A0, $E8, $E5, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $EA, $F5, $F3, $F4, $A0 ; *I'm just an
    .BYTE $E1, $EE, 1
    .BYTE $A0, $EF, $F2, $E4, $E9, $EE, $E1, $F2, $F9, $A0 ;  ordinary mouse.
    .BYTE $ED, $EF, $F5, $F3, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $EF, $EF, $ED, $A0 ; *The room with
    .BYTE $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F0, $E9, $E1, $EE, $EF ;  the piano...
    .BYTE $AE, $AE, $AE, 1
    .BYTE $A0, $C8, $E5, $E5, $A0, $E8, $E5, $E5, $A0, $E8 ;  Hee hee hee...
    .BYTE $E5, $E5, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $EF, $F7, $EE, $E5, $F2 ; *The owners of the
    .BYTE $F3, $A0, $EF, $E6, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E7, $E8, $EF, $F3, $F4, $A0, $E8, $EF, $F5 ;  ghost house were the
    .BYTE $F3, $E5, $A0, $F7, $E5, $F2, $E5, $A0, $F4, $E8
    .BYTE $E5, 1
    .BYTE $A0, $D2, $EF, $F3, $E5, $ED, $E1, $F2, $F9, $F3 ;  Rosemarys.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $A0, $E7, $E8, $EF, $F3, $F4, $A0, $E1 ; *A ghost appeared
    .BYTE $F0, $F0, $E5, $E1, $F2, $E5, $E4, 1
    .BYTE $A0, $E1, $F4, $A0, $ED, $F9, $A0, $E8, $EF, $F5 ;  at my house too.
    .BYTE $F3, $E5, $A0, $F4, $EF, $EF, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $E8, $E5, $A0, $E4 ; *But, he didn't
    .BYTE $E9, $E4, $EE, $A7, $F4, 1
    .BYTE $A0, $F3, $F4, $E1, $F9, $A0, $EC, $EF, $EE, $E7 ;  stay long.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $A0, $F4, $E8, $EF, $F5, $E7, $E8 ; *He thought my room
    .BYTE $F4, $A0, $ED, $F9, $A0, $F2, $EF, $EF, $ED, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $F4, $EF, $EF, $A0, $F3 ;  was too small.
    .BYTE $ED, $E1, $EC, $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $EE, $EF, $F4, $A0, $E1 ; *I'm not a resident
    .BYTE $A0, $F2, $E5, $F3, $E9, $E4, $E5, $EE, $F4, 1
    .BYTE $A0, $EF, $E6, $A0, $F4, $E8, $E9, $F3, $A0, $F4 ;  of this town. I
    .BYTE $EF, $F7, $EE, $AE, $A0, $C9, 1
    .BYTE $A0, $E1, $ED, $A0, $F9, $EF, $F5, $F2, $A0, $E1 ;  am your assistant.
    .BYTE $F3, $F3, $E9, $F3, $F4, $E1, $EE, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $E1, $F9, $E2, $E5, $A0, $F9, $EF, $F5 ; *Maybe you forgot
    .BYTE $A0, $E6, $EF, $F2, $E7, $EF, $F4, 1
    .BYTE $A0, $F4, $EF, $A0, $F7, $F2, $E9, $F4, $E5, $A0 ;  to write something
    .BYTE $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $E4, $EF, $F7, $EE, $A2, 1 ;  down?
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $E9, $EC, $EC, $A0, $F3, $E5 ; *I will sell you a
    .BYTE $EC, $EC, $A0, $F9, $EF, $F5, $A0, $E1, 1
    .BYTE $A0, $E8, $E9, $EE, $F4, $A0, $E6, $EF, $F2, $A0 ;  hint for only
    .BYTE $EF, $EE, $EC, $F9, 1
    .BYTE $A0               ;
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E4, $EF, $EC, $EC, $E1, $F2, $F3, $A2, 1 ;  dollars?
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F9, $EF, $F5, $A0, $E4 ; *Oh, you don't need
    .BYTE $EF, $EE, $A7, $F4, $A0, $EE, $E5, $E5, $E4, 1
    .BYTE $A0, $E1, $EE, $F9, $EF, $EE, $E5, $A7, $F3, $A0 ;  anyone's help, do
    .BYTE $E8, $E5, $EC, $F0, $AC, $A0, $E4, $EF, 1
    .BYTE $A0, $F9, $EF, $F5, $A2, 1 ;  you?
    .BYTE 3
    .BYTE $C0, $C6, $E9, $EE, $E5, $A0, $E1, $EE, $E4, $A0 ; *Fine and dandy,
    .BYTE $E4, $E1, $EE, $E4, $F9, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E3, $E1, $EE, $A0, $E3 ;  you can color me
    .BYTE $EF, $EC, $EF, $F2, $A0, $ED, $E5, 1
    .BYTE $A0, $E7, $EF, $EE, $E5, $AE, 1 ;  gone.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $A0, $F3, $E5, $EC ; *I can sell only 3
    .BYTE $EC, $A0, $EF, $EE, $EC, $F9, $A0, $B3, 1
    .BYTE $A0, $E8, $E9, $EE, $F4, $F3, $AE, $A0, $C4, $E9 ;  hints. Discover
    .BYTE $F3, $E3, $EF, $F6, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F2, $E5, $F3, $F4, $A0 ;  the rest youself.
    .BYTE $F9, $EF, $F5, $F3, $E5, $EC, $E6, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, $A0 ; *I am the only
    .BYTE $EF, $EE, $EC, $F9, 1
    .BYTE $A0, $E3, $EC, $EF, $F7, $EE, $A0, $E9, $EE, 1 ;  clown in
    .BYTE $A0, $D3, $F0, $EF, $EF, $EB, $E1, $EE, $E5, $AE ;  Spookane.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C5, $F6, $E5, $F2, $F9, $EF, $EE, $E5, $A0 ; *Everyone else is
    .BYTE $E5, $EC, $F3, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $F3, $EF, $A0, $F3, $E5, $F2, $E9, $EF, $F5 ;  so serious.
    .BYTE $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $F2, $F5, $F4, $E8, $A0, $E9, $F3, $AC ; *Truth is, by
    .BYTE $A0, $E2, $F9, 1
    .BYTE $A0, $EE, $E1, $F4, $F5, $F2, $E5, $A0, $C9, $A7 ;  nature I'm not a
    .BYTE $ED, $A0, $EE, $EF, $F4, $A0, $E1, 1
    .BYTE $A0, $EA, $EF, $EC, $EC, $F9, $A0, $E7, $F5, $F9 ;  jolly guy.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E1, $F4, $A0, $F2 ; *Is that right?
    .BYTE $E9, $E7, $E8, $F4, $A2, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $ED, $E1, $F9, $A0, $E2, $E5, $A0 ; *I may be the true
    .BYTE $F4, $E8, $E5, $A0, $F4, $F2, $F5, $E5, 1
    .BYTE $A0, $F0, $E5, $F3, $F3, $E9, $ED, $E9, $F3, $F4 ;  pessimist myself.
    .BYTE $A0, $ED, $F9, $F3, $E5, $EC, $E6, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A0, $E8, $EF, $F5, $F3, $E5, $A0 ; *My house is filled
    .BYTE $E9, $F3, $A0, $E6, $E9, $EC, $EC, $E5, $E4, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $ED, $EF, $EE, $F3 ;  with monsters,
    .BYTE $F4, $E5, $F2, $F3, $AC, 1
    .BYTE $A0, $ED, $EF, $F3, $F4, $EC, $F9, $A0, $E7, $E8 ;  mostly ghosts.
    .BYTE $EF, $F3, $F4, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $F7, $E8 ; *That's why we live
    .BYTE $F9, $A0, $F7, $E5, $A0, $EC, $E9, $F6, $E5, 1
    .BYTE $A0, $EC, $E9, $E6, $E5, $A0, $E9, $EE, $A0, $F4 ;  life in the great
    .BYTE $E8, $E5, $A0, $E7, $F2, $E5, $E1, $F4, 1
    .BYTE $A0, $EF, $F5, $F4, $E4, $EF, $EF, $F2, $F3, $A0 ;  outdoors now.
    .BYTE $EE, $EF, $F7, $AE, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A9, $A0, $D9, $EF, $F5, $F2, 1 ; ) Your
    .BYTE $A0, $C2, $EF, $F4, $F4, $EC, $E5, $A0, $D2, $EF ;  Bottle Rocket and
    .BYTE $E3, $EB, $E5, $F4, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $ED, $F9, $AE, $AE, $AE, 1 ;  my...
    .BYTE 3
    .BYTE $C0, $E7, $F2, $E5, $E1, $F4, $AC, $A0, $E9, $F3 ; *great, isn't it...
    .BYTE $EE, $A7, $F4, $A0, $E9, $F4, $AE, $AE, $AE, 1
    .BYTE $A0, $D7, $E8, $E1, $E1, $E1, $E1, $E1, $F4, $A1 ;  Whaaaaat!?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F4, $E8, $E5, $A0, $E4 ; *Oh, the darkness
    .BYTE $E1, $F2, $EB, $EE, $E5, $F3, $F3, 1
    .BYTE $A0, $E9, $F3, $A0, $F3, $EF, $A0, $F4, $E8, $E9 ;  is so thick...
    .BYTE $E3, $EB, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C3, $E1, $EE, $A7, $F4, $A0, $F3, $E5, $E5 ; *Can't see you very
    .BYTE $A0, $F9, $EF, $F5, $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $F7, $E5, $EC, $EC, $AE, $AE, $A0, 1 ;  well..
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $E3, $EF, $F5, $EC, $E4 ; *But could it
    .BYTE $A0, $E9, $F4, 1
    .BYTE $A0, $E2, $E5, $A2, $AE, $AE, $AE, 1 ;  be?...
    .BYTE 3
    .BYTE $C0, $C9, $F3, $A0, $E9, $F4, $A0, $F4, $E8, $E5 ; *Is it the little
    .BYTE $A0, $EC, $E9, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $E7, $E9, $F2, $EC, $A0, $E6, $F2, $EF, $ED ;  girl from Snowman?
    .BYTE $A0, $D3, $EE, $EF, $F7, $ED, $E1, $EE, $A2, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $C9, $A0, $E2, $E5, $EC, $E9, $E5, $F6 ; , I believe
    .BYTE $E5, 1
    .BYTE $A0, $E9, $F4, $A0, $F7, $E1, $F3, $AE, $AE, $AE ;  it was...
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C2, $F2, $E1, $E3, $E5, $A0, $F9, $EF, $F5 ; *Brace yourself,
    .BYTE $F2, $F3, $E5, $EC, $E6, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $ED, $EF, $ED, $A0 ;  your mom is locked
    .BYTE $E9, $F3, $A0, $EC, $EF, $E3, $EB, $E5, $E4, 1
    .BYTE $A0, $E9, $EE, $A0, $E1, $A0, $F2, $EF, $EF, $ED ;  in a room in back.
    .BYTE $A0, $E9, $EE, $A0, $E2, $E1, $E3, $EB, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $A0, $EE, $EF, $F4, $A0, $F4, $F2 ; *Do not try to
    .BYTE $F9, $A0, $F4, $EF, 1
    .BYTE $A0, $F2, $E5, $F3, $E3, $F5, $E5, $A0, $F5, $F3 ;  rescue us now.
    .BYTE $A0, $EE, $EF, $F7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C6, $E9, $F2, $F3, $F4, $AC, $A0, $F4, $E8 ; *First, the
    .BYTE $E5, 1
    .BYTE $A0, $CD, $EF, $F4, $E8, $E5, $F2, $A0, $D3, $E8 ;  Mother Ship must
    .BYTE $E9, $F0, $A0, $ED, $F5, $F3, $F4, 1
    .BYTE $A0, $E2, $E5, $A0, $E4, $E5, $F3, $F4, $F2, $EF ;  be destroyed.
    .BYTE $F9, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $EF, $F0, $F3, $A1, $A0, $C9, $F4, $A7 ; *Oops! It's gone
    .BYTE $F3, $A0, $E7, $EF, $EE, $E5, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $EF, $F2, $E2, $E9 ;  into orbit.
    .BYTE $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $A0, $F3, $F5, $E3, $E3, $E5, $F3, $F3 ; *A success...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $F3, $EF, $F2, $F4, $A0, $EF, $E6, $AE, 1 ; *sort of.
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F9, $EF, $F5, $A0, $E1 ; *Oh, you are such
    .BYTE $F2, $E5, $A0, $F3, $F5, $E3, $E8, 1
    .BYTE $A0, $E1, $A0, $E3, $E8, $E1, $F2, $ED, $E9, $EE ;  a charming boy...
    .BYTE $E7, $A0, $E2, $EF, $F9, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CA, $F5, $F3, $F4, $A0, $EC, $EF, $EF, $EB ; *Just looking at
    .BYTE $E9, $EE, $E7, $A0, $E1, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $ED, $E1, $EB, $E5, $F3 ;  you makes me feel
    .BYTE $A0, $ED, $E5, $A0, $E6, $E5, $E5, $EC, 1
    .BYTE $A0, $F3, $EF, $A0, $E3, $EF, $EE, $E6, $E9, $E4 ;  so confident.
    .BYTE $E5, $EE, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $F5, $F2, $E5, $A0 ; *I'm sure you'll
    .BYTE $F9, $EF, $F5, $A7, $EC, $EC, 1
    .BYTE $A0, $E2, $F2, $E9, $EE, $E7, $A0, $F4, $E8, $E1 ;  bring that house
    .BYTE $F4, $A0, $E8, $EF, $F5, $F3, $E5, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $E3, $EF, $EE, $F4 ;  into control.
    .BYTE $F2, $EF, $EC, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $E9, $F3, $A0, $F4 ; *Here is the Key to
    .BYTE $E8, $E5, $A0, $CB, $E5, $F9, $A0, $F4, $EF, 1
    .BYTE $A0, $E9, $F4, $AE, 1 ;  it.
    .BYTE 0
    .BYTE $C0, $C8, $E9, $A0, $F4, $E8, $E5, $F2, $E5, $AC ; *Hi there, my name
    .BYTE $A0, $ED, $F9, $A0, $EE, $E1, $ED, $E5, 1
    .BYTE $A0, $E9, $F3, $A0 ;  is
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A0, $F5, $F3, $E5, $E4, $A0, $F4 ; *It used to be
    .BYTE $EF, $A0, $E2, $E5, 1
    .BYTE $A0, $C2, $F5, $E7, $E7, $E5, $F2, $F2, $EF, $F2 ;  Buggerror
    .BYTE 1
    .BYTE $A0, $D2, $EF, $F3, $E5, $ED, $E1, $F2, $F9, $AE ;  Rosemary.
    .BYTE 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE $A0, $C7, $E5, $F4, $A0, $F9, $EF, $F5, $F2, $A0 ;  Get your grubby
    .BYTE $E7, $F2, $F5, $E2, $E2, $F9, 1
    .BYTE $A0, $EC, $E9, $F4, $F4, $EC, $E5, $AE, $AE, $AE ;  little...
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $A0, $E3, $F5, $F4, $E9, $E5, $AC ; *No cutie, I was
    .BYTE $A0, $C9, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $F4, $E1, $EC, $EB, $E9, $EE, $E7, $A0, $F4 ;  talking to my boy.
    .BYTE $EF, $A0, $ED, $F9, $A0, $E2, $EF, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E7, $E8, $EF, $F3, $F4 ; *The ghosts aren't
    .BYTE $F3, $A0, $E1, $F2, $E5, $EE, $A7, $F4, 1
    .BYTE $A0, $E7, $EF, $EE, $E5, $A0, $F9, $E5, $F4, $AC ;  gone yet, but...
    .BYTE $A0, $E2, $F5, $F4, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $F7, $E8, $E1, $F4, $A0, $E1, $A0, $E2, $F2 ; *what a brave boy
    .BYTE $E1, $F6, $E5, $A0, $E2, $EF, $F9, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, $A1, 1 ;  you are!
    .BYTE 3
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $F2, $E5, $EE, $E1 ; *I've renamed my
    .BYTE $ED, $E5, $E4, $A0, $ED, $F9, 1
    .BYTE $A0, $F3, $EF, $EE, $A0 ;  son
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, 1            ; ,
    .BYTE $A0, $E1, $E6, $F4, $E5, $F2, $A0, $F9, $EF, $F5 ;  after you.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $D3 ; *This is Snowman
    .BYTE $EE, $EF, $F7, $ED, $E1, $EE, 1
    .BYTE $A0, $D4, $E5, $F2, $ED, $E9, $EE, $E1, $EC, $AE ;  Terminal.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $E5 ; *I heard everyone
    .BYTE $F6, $E5, $F2, $F9, $EF, $EE, $E5, 1
    .BYTE $A0, $E9, $EE, $A0, $D9, $EF, $F5, $EE, $E7, $F4 ;  in Youngtown has
    .BYTE $EF, $F7, $EE, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E4, $E9, $F3, $E1, $F0, $F0, $E5, $E1, $F2 ;  disappeared.
    .BYTE $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $EF, $ED, $A0, $EC, $E5, $E6, $F4, $A0 ; *Mom left for
    .BYTE $E6, $EF, $F2, 1
    .BYTE $A0, $D9, $EF, $F5, $EE, $E7, $F4, $EF, $F7, $EE ;  Youngtown.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $A0, $E8, $E1, $F6, $E5, $EE, $A7 ; *We haven't heard
    .BYTE $F4, $A0, $E8, $E5, $E1, $F2, $E4, 1
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $E8, $E5, $F2, $A0 ;  from her for days
    .BYTE $E6, $EF, $F2, $A0, $E4, $E1, $F9, $F3, 1
    .BYTE $A0, $EE, $EF, $F7, $AE, 1 ;  now.
    .BYTE 3
    .BYTE $C0, $C4, $E1, $E4, $A0, $E1, $EE, $E4, $A0, $C9 ; *Dad and I are
    .BYTE $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $E7, $EF, $E9, $EE, $E7, $A0, $F4, $E8, $E5 ;  going there to
    .BYTE $F2, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $EC, $EF, $EF, $EB, $A0, $E6, $EF, $F2, $A0 ;  look for her.
    .BYTE $E8, $E5, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you been to
    .BYTE $E2, $E5, $E5, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E7, $E8, $EF, $F3, $F4 ;  the ghost house
    .BYTE $A0, $E8, $EF, $F5, $F3, $E5, 1
    .BYTE $A0, $E9, $EE, $A0, $D3, $F0, $EF, $EF, $EB, $E1 ;  in Spookane?
    .BYTE $EE, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $CC, $E1, $F4, $E5, $F2, $A0, $F9, $EF, $F5 ; *Later you can tell
    .BYTE $A0, $E3, $E1, $EE, $A0, $F4, $E5, $EC, $EC, 1
    .BYTE $A0, $ED, $E5, $A0, $F4, $E8, $E5, $A0, $F7, $E8 ;  me the whole
    .BYTE $EF, $EC, $E5, 1
    .BYTE $A0, $F3, $F4, $EF, $F2, $F9, $AE, $AE, $AE, 1 ;  story...
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EC, $EF, $F6, $E5, $A0, $F4, $EF ; *I love to listen
    .BYTE $A0, $EC, $E9, $F3, $F4, $E5, $EE, 1
    .BYTE $A0, $F4, $EF, $A0, $E8, $EF, $F2, $F2, $EF, $F2 ;  to horror stories.
    .BYTE $A0, $F3, $F4, $EF, $F2, $E9, $E5, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F7 ; *I don't want you to
    .BYTE $E1, $EE, $F4, $A0, $F9, $EF, $F5, $A0, $F4, $EF
    .BYTE 1
    .BYTE $A0, $E7, $EF, $AC, $A0, $E2, $F5, $F4, $A0, $E4 ;  go, but do so if you
    .BYTE $EF, $A0, $F3, $EF, $A0, $E9, $E6, $A0, $F9, $EF
    .BYTE $F5, 1
    .BYTE $A0, $ED, $F5, $F3, $F4, $AE, 1 ;  must.
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E6, $F2, $E5, $E5 ; *It's freezing here
    .BYTE $FA, $E9, $EE, $E7, $A0, $E8, $E5, $F2, $E5, 1
    .BYTE $A0, $E9, $EE, $A0, $D3, $EE, $EF, $F7, $ED, $E1 ;  in Snowman.
    .BYTE $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E3, $E1, $F4 ; *Don't catch your
    .BYTE $E3, $E8, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $E4, $E5, $E1, $F4, $E8, $A0, $EF, $E6, $A0 ;  death of cold.
    .BYTE $E3, $EF, $EC, $E4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F2, $F5, $F3, $E8, $A0, $F9, $EF, $F5 ; *Brush your teeth,
    .BYTE $F2, $A0, $F4, $E5, $E5, $F4, $E8, $AC, 1
    .BYTE $A0, $F4, $EF, $EF, $AE, 1 ;  too.
    .BYTE 3
    .BYTE $C0, $C8, $E1, $E3, $EB, $A0, $E8, $E1, $E3, $EB ; *Hack hack wheez...
    .BYTE $A0, $F7, $E8, $E5, $E5, $FA, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $E9, $E6, $E5, $A0, $E9, $F3, $A0, $E1 ; *Life is a game.
    .BYTE $A0, $E7, $E1, $ED, $E5, $AE, 1
    .BYTE $A0, $C2, $F5, $F4, $A0, $F3, $EF, $ED, $E5, $F4 ;  But sometimes you
    .BYTE $E9, $ED, $E5, $F3, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF, $A0, $F2 ;  have to rest.
    .BYTE $E5, $F3, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $F3, $EE, $A7, $F4, $A0, $E2, $E5 ;  hasn't been
    .BYTE $E5, $EE, 1
    .BYTE $A0, $F4, $EF, $A0, $F3, $E3, $E8, $EF, $EF, $EC ;  to school lately,
    .BYTE $A0, $EC, $E1, $F4, $E5, $EC, $F9, $AC, 1
    .BYTE $A0, $C9, $A7, $ED, $A0, $F3, $EF, $A0, $F7, $EF ;  I'm so worried.
    .BYTE $F2, $F2, $E9, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $E3, $EF, $EE, $E3, $E5 ; *I'm concerned
    .BYTE $F2, $EE, $E5, $E4, 1
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, $A0 ;  about
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F3, $EF, $A0, $F7 ; *I am so worried I
    .BYTE $EF, $F2, $F2, $E9, $E5, $E4, $A0, $C9, 1
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, $A0, $F3, $EC, $E5 ;  can't sleep.
    .BYTE $E5, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ; *You don't have
    .BYTE $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E5, $EE, $EF, $F5, $E7, $E8, $A0, $ED, $EF ;  enough money.
    .BYTE $EE, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0, $ED, $F9, $AC, $A0, $F9, $EF ; *Oh my, your nose
    .BYTE $F5, $F2, $A0, $EE, $EF, $F3, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $F2, $F5, $EE, $EE, $E9, $EE ;  is running.
    .BYTE $E7, $AE, 1
    .BYTE 0
    .BYTE $C0, $C5, $F8, $E3, $F5, $F3, $E5, $A0, $ED, $E5 ; *Excuse me, I need
    .BYTE $AC, $A0, $C9, $A0, $EE, $E5, $E5, $E4, 1
    .BYTE $A0, $F4, $EF, $A0, $F3, $E5, $E5, $A0, $F4, $E8 ;  to see the person
    .BYTE $E5, $A0, $F0, $E5, $F2, $F3, $EF, $EE, 1
    .BYTE $A0, $F0, $EC, $E1, $F9, $E9, $EE, $E7, $A0, $F4 ;  playing this game.
    .BYTE $E8, $E9, $F3, $A0, $E7, $E1, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E1, $F6, $E5, $A0, $F3, $EF ; *I have some very
    .BYTE $ED, $E5, $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $E9, $ED, $F0, $EF, $F2, $F4, $E1, $EE, $F4 ;  important things
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $F3, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E1, $EC, $EB, $A0, $E1 ;  to talk about.
    .BYTE $E2, $EF, $F5, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $EC, $EC, $EF, $A0, $F4, $E8, $E5 ; *Hello there...
    .BYTE $F2, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E1, $F0, $F0, $F2, $E5, $E3, $E9 ; *I appreciate your
    .BYTE $E1, $F4, $E5, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $EB, $E9, $EE, $E4, $EE, $E5, $F3, $F3, $A0 ;  kindness to
    .BYTE $F4, $EF, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, $A0 ; *I am the boy's
    .BYTE $E2, $EF, $F9, $A7, $F3, 1
    .BYTE $A0, $C4, $E1, $E4, $AE, $AE, $AE, 1 ;  Dad...
    .BYTE 3
    .BYTE $C0, $C3, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ; *Could you please
    .BYTE $A0, $F0, $EC, $E5, $E1, $F3, $E5, 1
    .BYTE $A0, $EC, $E5, $F4, $A0, $ED, $E5, $A0, $EB, $EE ;  let me know your
    .BYTE $EF, $F7, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $EE, $E1, $ED, $E5, $A2, 1 ;  name?
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you for your
    .BYTE $A0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $E3, $EF, $EF, $F0, $E5, $F2, $E1, $F4, $E9 ;  cooperation.
    .BYTE $EF, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you for
    .BYTE $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F3, $F0, $E5, $EE, $E4, $E9, $EE, $E7, $A0 ;  spending your time
    .BYTE $F9, $EF, $F5, $F2, $A0, $F4, $E9, $ED, $E5, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $ED, $E5, $AE, 1 ;  with me.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F4, $EF, $EF, $A0, $E8, $E1, $F6 ; *I too have urgent
    .BYTE $E5, $A0, $F5, $F2, $E7, $E5, $EE, $F4, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $F3, $A0, $F4, $EF ;  things to do, so
    .BYTE $A0, $E4, $EF, $AC, $A0, $F3, $EF, 1
    .BYTE $A0, $C9, $A7, $E4, $A0, $E2, $E5, $F4, $F4, $E5 ;  I'd better go now.
    .BYTE $F2, $A0, $E7, $EF, $A0, $EE, $EF, $F7, $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0 ; *Are you
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A2, 1            ; ?
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E7, $E5, $F4 ; *Don't get silly on
    .BYTE $A0, $F3, $E9, $EC, $EC, $F9, $A0, $EF, $EE, 1
    .BYTE $A0, $ED, $E5, $A0, $EE, $EF, $F7, $AE, 1 ;  me now.
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF

; CHARS BANKS 0x98 - 0x9F
    .BYTE $C0, $C9, $A0, $ED, $F5, $F3, $F4, $A0, $E7, $EF ; *I must go on a
    .BYTE $A0, $EF, $EE, $A0, $E1, 1
    .BYTE $A0, $F4, $F2, $E9, $F0, $A0, $F4, $EF, $A0, $E6 ;  trip to find my Mom,
    .BYTE $E9, $EE, $E4, $A0, $ED, $F9, $A0, $CD, $EF, $ED
    .BYTE $AC, 1
    .BYTE $A0, $E1, $EE, $E4, $AE, $AE, $AE, 1 ;  and...
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EE, $E5, $E5, $E4, $E5, $E4, $A0 ; *I needed your
    .BYTE $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $E8, $E5, $EC, $F0, $AE, $AE, $AE, 1 ;  help...
    .BYTE 3
    .BYTE $C0, $D3, $EF, $A0, $C9, $A7, $F6, $E5, $A0, $E2 ; *So I've been
    .BYTE $E5, $E5, $EE, 1
    .BYTE $A0, $F7, $E1, $E9, $F4, $E9, $EE, $E7, $A0, $E6 ;  waiting for you,
    .BYTE $EF, $F2, $A0, $F9, $EF, $F5, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C6, $E9, $F2, $F3, $F4, $A0, $EC, $E5, $F4 ; *First let's go see
    .BYTE $A7, $F3, $A0, $E7, $EF, $A0, $F3, $E5, $E5, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $E8 ;  what is happening
    .BYTE $E1, $F0, $F0, $E5, $EE, $E9, $EE, $E7, 1
    .BYTE $A0, $E9, $EE, $A0, $D9, $EF, $F5, $EE, $E7, $F4 ;  in Youngtown.
    .BYTE $EF, $F7, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $A0 ; *You have appeared.
    .BYTE $E1, $F0, $F0, $E5, $E1, $F2, $E5, $E4, $AE, 1
    .BYTE $A0, $CA, $F5, $F3, $F4, $A0, $EC, $E9, $EB, $E5 ;  Just like in my
    .BYTE $A0, $E9, $EE, $A0, $ED, $F9, 1
    .BYTE $A0, $E4, $F2, $E5, $E1, $ED, $AE, $AE, $AE, 1 ;  dream...
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $EF, $F9, $A0, $E9 ; *The boy in my
    .BYTE $EE, $A0, $ED, $F9, 1
    .BYTE $A0, $E4, $F2, $E5, $E1, $ED, $A0, $EC, $EF, $EF ;  dream looked just
    .BYTE $EB, $E5, $E4, $A0, $EA, $F5, $F3, $F4, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F9, $EF, $F5, $AE ;  like you.
    .BYTE 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AE, $AE, $AE, $AE, 1 ; ....
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F3, $F4 ;  Please stay with
    .BYTE $E1, $F9, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $ED, $E5, $AE, 1 ;  me.
    .BYTE 0
    .BYTE $C0, $CE, $EF, $A1, $A1, 1 ; *No!!
    .BYTE $A0, $D3, $F4, $E1, $F9, $A0, $F7, $E9, $F4, $E8 ;  Stay with me,
    .BYTE $A0, $ED, $E5, $AC, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A1, $AE, $AE ;  Please!...
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $E9, $EC, $E5, $EE, $E3, $E5, $A0, $E6 ; *Silence falls...
    .BYTE $E1, $EC, $EC, $F3, $AE, $AE, $AE, 1
    .BYTE $A0, $D7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ;  Would you like to
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $E4, $E1, $EE, $E3, $E5, $A2, 1 ;  dance?
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $F2, $E9 ; *You're right.
    .BYTE $E7, $E8, $F4, $AE, 1
    .BYTE $A0, $CE, $EF, $F7, $A0, $E9, $F3, $EE, $A7, $F4 ;  Now isn't the time.
    .BYTE $A0, $F4, $E8, $E5, $A0, $F4, $E9, $ED, $E5, $AE
    .BYTE 1
    .BYTE $A0, $C9, $A0, $F7, $E1, $F3, $EE, $A7, $F4, $A0 ;  I wasn't thinking.
    .BYTE $F4, $E8, $E9, $EE, $EB, $E9, $EE, $E7, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A2, $AE, $AE, $AE, 1 ; ?...
    .BYTE $A0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $EC, $EF ;  Do you love me?
    .BYTE $F6, $E5, $A0, $ED, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A7, $F3, $A0, $F4, $E8 ; *What's the matter,
    .BYTE $E5, $A0, $ED, $E1, $F4, $F4, $E5, $F2, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A2, 1            ; ?
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C4, $F2, $E1, $E7, $EF ; *The Dragon sleeps.
    .BYTE $EE, $A0, $F3, $EC, $E5, $E5, $F0, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D0, $F3, $F9, $E3, $E8, $E9, $E3 ; 's Psychic
    .BYTE 1
    .BYTE $A0, $D0, $EF, $F7, $E5, $F2, $A0, $E9, $F3, $A0 ;  Power is short of
    .BYTE $F3, $E8, $EF, $F2, $F4, $A0, $EF, $E6, 1
    .BYTE $A0, $F7, $E1, $EB, $E9, $EE, $E7, $A0, $F4, $E8 ;  waking the Dragon.
    .BYTE $E5, $A0, $C4, $F2, $E1, $E7, $EF, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C6, $E5, $E5, $EC, $E9, $EE, $E7, $A0 ; *Feeling
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $F0, $F2, $E5, $F3, $E5, $EE, $E3, $E5, $AC ;  presence, the
    .BYTE $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C4, $F2, $E1, $E7, $EF, $EE, $A0, $E1, $F7 ;  Dragon awoke.
    .BYTE $EF, $EB, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ; *You must defeat
    .BYTE $E4, $E5, $E6, $E5, $E1, $F4, 1
    .BYTE $A0, $ED, $E5, $A0, $F4, $EF, $A0, $E5, $E1, $F2 ;  me to earn my
    .BYTE $EE, $A0, $ED, $F9, 1
    .BYTE $A0, $ED, $F5, $F3, $E9, $E3, $E1, $EC, $A0, $EE ;  musical note.
    .BYTE $EF, $F4, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A0, $E4, $E1, $F5, $E7, $E8, $F4 ; *My daughter,
    .BYTE $E5, $F2, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $F3, $A0, $EE, $E5, $F6, $E5, $F2 ;  has never
    .BYTE 1
    .BYTE $A0, $E2, $E5, $E5, $EE, $A0, $E1, $A0, $E2, $F2 ;  been a brave girl,
    .BYTE $E1, $F6, $E5, $A0, $E7, $E9, $F2, $EC, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $AC, $A0, $F3, $E8, $E5, $A0 ; *but, she is kind
    .BYTE $E9, $F3, $A0, $EB, $E9, $EE, $E4, 1
    .BYTE $A0, $EF, $E6, $A0, $E8, $E5, $E1, $F2, $F4, $AC ;  of heart, and has
    .BYTE $A0, $E1, $EE, $E4, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E1, $A0, $F3, $E5, $E3, $F2, $E5, $F4, $A0 ;  a secret strength.
    .BYTE $F3, $F4, $F2, $E5, $EE, $E7, $F4, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $F3, $F5 ; *I know success
    .BYTE $E3, $E3, $E5, $F3, $F3, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E2, $E5, $A0, $F9 ;  will be yours in
    .BYTE $EF, $F5, $F2, $F3, $A0, $E9, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E5, $EE, $E4, $AE, 1 ;  the end.
    .BYTE 3
    .BYTE $C0, $D3, $F5, $F2, $E5, $EC, $F9, $AC, $A0, $EF ; *Surely, our pleas
    .BYTE $F5, $F2, $A0, $F0, $EC, $E5, $E1, $F3, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E2, $E5, $A0, $E8 ;  will be heard in
    .BYTE $E5, $E1, $F2, $E4, $A0, $E9, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EE, $E5, $E1, $F2, $A0 ;  the near future.
    .BYTE $E6, $F5, $F4, $F5, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C6, $EF, $F2, $A0, $EE, $EF, $F7, $AC, $A0 ; *For now, just have
    .BYTE $EA, $F5, $F3, $F4, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E1, $A0, $F0, $E5, $E1, $E3, $E5, $E6, $F5 ;  a peaceful sleep.
    .BYTE $EC, $A0, $F3, $EC, $E5, $E5, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $EF, $F5, $EE, $E4, $A0, $E1, 1 ;  found a
    .BYTE $A0, $D0, $E1, $F3, $F3, $A0, $F4, $E8, $E1, $F4 ;  Pass that someone
    .BYTE $A0, $F3, $EF, $ED, $E5, $EF, $EE, $E5, 1
    .BYTE $A0, $E8, $E1, $E4, $A0, $EC, $E5, $E6, $F4, $A0 ;  had left behind.
    .BYTE $E2, $E5, $E8, $E9, $EE, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F9, $A0, $E3, $EC, $E9, $ED ; *They climbed
    .BYTE $E2, $E5, $E4, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E5, $A0 ;  into the rocket.
    .BYTE $F2, $EF, $E3, $EB, $E5, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A0, $E7, $F2, $E1, $EE, $E4, $E6 ; *My grandfather
    .BYTE $E1, $F4, $E8, $E5, $F2, 1
    .BYTE $A0, $EC, $E9, $F6, $E5, $F3, $A0, $E9, $EE, $A0 ;  lives in Yucca
    .BYTE $D9, $F5, $E3, $E3, $E1, 1
    .BYTE $A0, $C4, $E5, $F3, $E5, $F2, $F4, $AE, 1 ;  Desert.
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $F3, $E5 ; *If you see him,
    .BYTE $E5, $A0, $E8, $E9, $ED, $AC, 1
    .BYTE $A0, $F0, $EC, $E5, $E1, $F3, $E5, $A0, $F3, $E1 ;  please say hello
    .BYTE $F9, $A0, $E8, $E5, $EC, $EC, $EF, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $ED, $E5, $AE, 1 ;  for me.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $EA, $F5, $F3, $F4 ; *I am just a pile
    .BYTE $A0, $E1, $A0, $F0, $E9, $EC, $E5, 1
    .BYTE $A0, $EF, $E6, $A0, $E2, $EF, $EE, $E5, $F3, $A0 ;  of bones now.
    .BYTE $EE, $EF, $F7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F5, $F3, $E5, $E4, $A0, $F4, $EF ; *I used to be a
    .BYTE $A0, $E2, $E5, $A0, $E1, 1
    .BYTE $A0, $EE, $E9, $E3, $E5, $A0, $E7, $F5, $F9, $A0 ;  nice guy before.
    .BYTE $E2, $E5, $E6, $EF, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $AC, $A0, $E4, $EF, $EE, $A7, $F4 ; *So, don't worry, I
    .BYTE $A0, $F7, $EF, $F2, $F2, $F9, $AC, $A0, $C9, 1
    .BYTE $A0, $F7, $EF, $EE, $A7, $F4, $A0, $E1, $F4, $F4 ;  won't attack you.
    .BYTE $E1, $E3, $EB, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E3, $EF, $F5, $EC, $E4, $A0, $ED ; *I could make a
    .BYTE $E1, $EB, $E5, $A0, $E1, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A0, $F3, $E9, $E7, $EE ;  good signpost,
    .BYTE $F0, $EF, $F3, $F4, $AC, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ;  don't you think?
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, $A2, 1
    .BYTE 0
    .BYTE $C0, $C3, $EF, $EE, $F6, $E5, $F2, $F3, $E9, $EE ; *Conversing with a
    .BYTE $E7, $A0, $F7, $E9, $F4, $E8, $A0, $E1, 1
    .BYTE $A0, $E3, $EF, $F2, $F0, $F3, $E5, $A2, $A0, $D7 ;  corpse? What a
    .BYTE $E8, $E1, $F4, $A0, $E1, 1
    .BYTE $A0, $E2, $F2, $E1, $F6, $E5, $A0, $EB, $E9, $E4 ;  brave kid!
    .BYTE $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F4, $E8, $E5, $A0, $E2 ; *I'm the bones of a
    .BYTE $EF, $EE, $E5, $F3, $A0, $EF, $E6, $A0, $E1, 1
    .BYTE $A0, $E3, $E1, $ED, $E5, $EC, $AE, 1 ;  camel.
    .BYTE 3
    .BYTE $C0, $D7, $E1, $EE, $F4, $A0, $F4, $EF, $A0, $EB ; *Want to know how to
    .BYTE $EE, $EF, $F7, $A0, $E8, $EF, $F7, $A0, $F4, $EF
    .BYTE 1
    .BYTE $A0, $F7, $E1, $EC, $EB, $A0, $F7, $E8, $E5, $EE ;  walk when in the
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E4, $E5, $F3, $E5, $F2, $F4, $A2, 1 ;  desert?
    .BYTE 0
    .BYTE $C0, $CD, $EF, $F6, $E5, $A0, $F9, $EF, $F5, $F2 ; *Move your left
    .BYTE $A0, $EC, $E5, $E6, $F4, 1
    .BYTE $A0, $E6, $EF, $EF, $F4, $A0, $E2, $E5, $E6, $EF ;  foot before your
    .BYTE $F2, $E5, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A0, $E6, $EF, $EF ;  right foot sinks.
    .BYTE $F4, $A0, $F3, $E9, $EE, $EB, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $EF, $F6, $E5, $A0, $F9, $EF, $F5, $F2 ; *Move your right
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, 1
    .BYTE $A0, $E6, $EF, $EF, $F4, $A0, $E2, $E5, $E6, $EF ;  foot before your
    .BYTE $F2, $E5, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $EC, $E5, $E6, $F4, $A0, $E6, $EF, $EF, $F4 ;  left foot sinks.
    .BYTE $A0, $F3, $E9, $EE, $EB, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A0, $F4, $EF, $EF, $EB, $A0, $ED ; *It took me 100
    .BYTE $E5, $A0, $B1, $B0, $B0, 1
    .BYTE $A0, $F9, $E5, $E1, $F2, $F3, $A0, $F4, $EF, $A0 ;  years to figure
    .BYTE $E6, $E9, $E7, $F5, $F2, $E5, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $EF, $F5, $F4, $AE ;  that out.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $E4, $A0, $F6, $E5, $F2, $F9, $A0 ; *I'd very much like
    .BYTE $ED, $F5, $E3, $E8, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E5, $EC, $EC, $A0, $F9 ;  to tell you.
    .BYTE $EF, $F5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $EF, $F5, $EC, $E4, $EE, $A7, $F4, $A0 ; *Wouldn't you like
    .BYTE $F9, $EF, $F5, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $EB, $EE, $EF, $F7, $A2, 1 ;  to know?
    .BYTE 0
    .BYTE $C0, $D9, $F5, $E3, $E3, $E1, $A0, $C4, $E5, $F3 ; *Yucca Desert is
    .BYTE $E5, $F2, $F4, $A0, $E9, $F3, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $EF, $F3, $F4, $A0 ;  the most boring
    .BYTE $E2, $EF, $F2, $E9, $EE, $E7, 1
    .BYTE $A0, $F0, $E1, $F2, $F4, $A0, $EF, $E6, $A0, $F4 ;  part of this game.
    .BYTE $E8, $E9, $F3, $A0, $E7, $E1, $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $F3, $F4, $E1, $F9 ; *But, stay on your
    .BYTE $A0, $EF, $EE, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $F4, $EF, $E5, $F3, $AC, $A0, $F4, $E8, $E9 ;  toes, this desert
    .BYTE $F3, $A0, $E4, $E5, $F3, $E5, $F2, $F4, 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $E2, $E5, $E5, $EE, $A0 ;  has been mined.
    .BYTE $ED, $E9, $EE, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $E5, $E5, $A0, $F4, $E8, $E5, $A0, $D9 ; *See the Yucca
    .BYTE $F5, $E3, $E3, $E1, 1
    .BYTE $A0, $C4, $E5, $F3, $E5, $F2, $F4, $AE, 1 ;  Desert.
    .BYTE 3
    .BYTE $C0, $C3, $E8, $E1, $F2, $F4, $E5, $F2, $A0, $E6 ; *Charter flights
    .BYTE $EC, $E9, $E7, $E8, $F4, $F3, 1
    .BYTE $A0, $E1, $F6, $E1, $E9, $EC, $E1, $E2, $EC, $E5 ;  available by
    .BYTE $A0, $E2, $F9, 1
    .BYTE $A0, $E1, $F2, $F2, $E1, $EE, $E7, $E5, $ED, $E5 ;  arrangement.
    .BYTE $EE, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $F5, $F2, $E9, $EE, $E7, $A0, $F4, $E8 ; *During the last
    .BYTE $E5, $A0, $EC, $E1, $F3, $F4, 1
    .BYTE $A0, $F7, $E1, $F2, $AC, $A0, $C9, $A0, $EC, $E1 ;  war, I laid mines
    .BYTE $E9, $E4, $A0, $ED, $E9, $EE, $E5, $F3, 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E9, $F3, $A0, $E4 ;  in this desert.
    .BYTE $E5, $F3, $E5, $F2, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F2, $E5, $ED, $EF, $F6, $E5, $E4 ; *I removed all but
    .BYTE $A0, $E1, $EC, $EC, $A0, $E2, $F5, $F4, 1
    .BYTE $A0, $EF, $EE, $E5, $A0, $EF, $E6, $A0, $F4, $E8 ;  one of them, so
    .BYTE $E5, $ED, $AC, $A0, $F3, $EF, 1
    .BYTE $A0, $F7, $E1, $F4, $E3, $E8, $A0, $F9, $EF, $F5 ;  watch your step.
    .BYTE $F2, $A0, $F3, $F4, $E5, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F9, $EF, $F5, $A0, $F7 ; *Oh, you want a
    .BYTE $E1, $EE, $F4, $A0, $E1, 1
    .BYTE $A0, $F2, $E9, $E4, $E5, $A0, $EF, $EE, $A0, $F4 ;  ride on the plane?
    .BYTE $E8, $E5, $A0, $F0, $EC, $E1, $EE, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E1, $E9, $F2, $E6, $E1 ; *The airfare is
    .BYTE $F2, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E6, $EF, $F2, $A0, $F4, $E8, $E1, $F4, 1 ;  for that
    .BYTE $A0, $E6, $EC, $E9, $E7, $E8, $F4, $AE, 1 ;  flight.
    .BYTE 3
    .BYTE $C0, $D3, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $F2 ; *Save your Ticket
    .BYTE $A0, $D4, $E9, $E3, $EB, $E5, $F4, 1
    .BYTE $A0, $D3, $F4, $F5, $E2, $F3, $AE, 1 ;  Stubs.
    .BYTE 3
    .BYTE $C0, $C1, $E6, $F4, $E5, $F2, $A0, $F9, $EF, $F5 ; *After you get 10
    .BYTE $A0, $E7, $E5, $F4, $A0, $B1, $B0, 1
    .BYTE $A0, $F3, $F4, $F5, $E2, $F3, $AC, $A0, $F9, $EF ;  stubs, you can
    .BYTE $F5, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $F4, $E1, $EB, $E5, $A0, $F4, $E8, $E5, $A0 ;  take the tank.
    .BYTE $F4, $E1, $EE, $EB, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $EC, $EF, $EF, $EB, $A0 ; *You look so happy
    .BYTE $F3, $EF, $A0, $E8, $E1, $F0, $F0, $F9, 1
    .BYTE $A0, $E1, $E2, $EF, $F5, $F4, $A0, $F4, $E8, $E1 ;  about that.
    .BYTE $F4, $AE, 1
    .BYTE $A0, $C8, $E1, $A0, $E8, $E1, $A0, $E8, $E1, $AE ;  Ha ha ha...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $E9, $F4, $A0 ; *Well, it is quite
    .BYTE $E9, $F3, $A0, $F1, $F5, $E9, $F4, $E5, 1
    .BYTE $A0, $E5, $F8, $F0, $E5, $EE, $F3, $E9, $F6, $E5 ;  expensive...
    .BYTE $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E2 ;  I don't blame you.
    .BYTE $EC, $E1, $ED, $E5, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $F2, $E5, $E1, $F4, $A1, $A0, $C9, $A0 ; *Great! I see you
    .BYTE $F3, $E5, $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $E1, $F6, $E5, $E4, $A0, $B1, $B0, $A0 ;  saved 10 stubs.
    .BYTE $F3, $F4, $F5, $E2, $F3, $AE, 1
    .BYTE $A0, $D4, $E1, $EB, $E5, $A0, $ED, $F9, $A0, $F4 ;  Take my tank.
    .BYTE $E1, $EE, $EB, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $F5, $F2, $E5, $A0 ; *You sure look
    .BYTE $EC, $EF, $EF, $EB, 1
    .BYTE $A0, $E8, $E1, $F0, $F0, $F9, $AE, 1 ;  happy.
    .BYTE $A0, $C8, $E1, $A0, $E8, $E1, $A0, $E8, $E1, $AE ;  Ha ha ha...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E2, $F2, $EF, $EB, $E5 ; *You broke my tank,
    .BYTE $A0, $ED, $F9, $A0, $F4, $E1, $EE, $EB, $AC, 1
    .BYTE $A0, $E9, $F4, $A0, $F7, $E1, $F3, $A0, $ED, $F9 ;  it was my most
    .BYTE $A0, $ED, $EF, $F3, $F4, 1
    .BYTE $A0, $F0, $F2, $E9, $FA, $E5, $E4, $A0, $F0, $EF ;  prized possession.
    .BYTE $F3, $F3, $E5, $F3, $F3, $E9, $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F7, $A0, $F9, $EF, $F5, $A7, $EC ; *Now you'll have to
    .BYTE $EC, $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $F0, $E1, $F9, $A0, $A4 ;  pay $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E6, $EF, $F2, $A0, $F4, $E8, $E5, 1 ;  for the
    .BYTE $A0, $F2, $E5, $F0, $E1, $E9, $F2, $F3, $AE, 1 ;  repairs.
    .BYTE 3
    .BYTE $C0, $D7, $E9, $EC, $EC, $A0, $F9, $EF, $F5, $A0 ; *Will you make
    .BYTE $ED, $E1, $EB, $E5, 1
    .BYTE $A0, $F2, $E5, $F3, $F4, $E9, $F4, $F5, $F4, $E9 ;  restitution right
    .BYTE $EF, $EE, $A0, $F2, $E9, $E7, $E8, $F4, 1
    .BYTE $A0, $EE, $EF, $F7, $A2, 1 ;  now?
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you,
    .BYTE $AC, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E7, $EF, $EF, $E4, $AD ;  and good-bye.
    .BYTE $E2, $F9, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F3, $EF, $A0, $E1 ; *I am so angry.
    .BYTE $EE, $E7, $F2, $F9, $AE, 1
    .BYTE $A0, $C1, $F2, $F2, $F2, $F2, $F2, $F2, $F2, $F2 ;  Arrrrrrrrr!!
    .BYTE $F2, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ; *Where is my Mommy?
    .BYTE $ED, $F9, $A0, $CD, $EF, $ED, $ED, $F9, $A2, 1
    .BYTE $A0, $D7, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ;  Where is my Daddy?
    .BYTE $ED, $F9, $A0, $C4, $E1, $E4, $E4, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $EC, $F4, $AC, $A0, $F7, $E8, $EF ; *Halt, who goes
    .BYTE $A0, $E7, $EF, $E5, $F3, 1
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $A2, 1 ;  there?
    .BYTE 0
    .BYTE $C0, $D3, $F5, $F3, $F0, $E9, $E3, $E9, $EF, $F5 ; *Suspicious guys.
    .BYTE $F3, $A0, $E7, $F5, $F9, $F3, $AE, 1
    .BYTE $A0, $C9, $A0, $F7, $E9, $EC, $EC, $A0, $F3, $F4 ;  I will stop you.
    .BYTE $EF, $F0, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE $A0, $C1, $F2, $F2, $E7, $E8, $E8, $A1, 1 ;  Arrghh!
    .BYTE 0
    .BYTE $C0, $D3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ; *Something's very
    .BYTE $A7, $F3, $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $F3, $F4, $F2, $E1, $EE, $E7, $E5, $A0, $F7 ;  strange with the
    .BYTE $E9, $F4, $E8, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C7, $E1, $F2, $F2, $E9, $E3, $EB, $F3, $EF ;  Garrickson baby.
    .BYTE $EE, $A0, $E2, $E1, $E2, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ; *Something very
    .BYTE $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $F3, $F4, $F2, $E1, $EE, $E7, $E5, $A0, $E9 ;  strange indeed.
    .BYTE $EE, $E4, $E5, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AE, $AE, $AE, 1 ; *Well...
    .BYTE $A0, $B2, $A0, $F0, $EC, $F5, $F3, $A0, $B3, $A0 ;  2 plus 3 equals 5,
    .BYTE $E5, $F1, $F5, $E1, $EC, $F3, $A0, $B5, $AC, 1
    .BYTE $A0, $B8, $A0, $ED, $E9, $EE, $F5, $F3, $A0, $B4 ;  8 minus 4 equals 4.
    .BYTE $A0, $E5, $F1, $F5, $E1, $EC, $F3, $A0, $B4, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F3, $F4, $F5, $E4, $F9, 1 ; *I study
    .BYTE $A0, $E1, $EC, $EC, $A0, $F4, $E8, $E5, $A0, $F4 ;  all the time.
    .BYTE $E9, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $EF, $ED, $A1, $A1, 1 ; *Mom!!
    .BYTE $A0, $C9, $A0, $ED, $E9, $F3, $F3, $A0, $F9, $EF ;  I miss you!!!
    .BYTE $F5, $A1, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C4, $E1, $E4, $A1, $A1, 1 ; *Dad!!
    .BYTE $A0, $C9, $A0, $ED, $E9, $F3, $F3, $A0, $F9, $EF ;  I miss you!!!
    .BYTE $F5, $A1, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $A0, $E2, $E9, $E7, $A0, $F3, $E8, $E9 ; *A big ship from
    .BYTE $F0, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F3, $EB, $F9, $A0, $F4 ;  the sky took Mom
    .BYTE $EF, $EF, $EB, $A0, $CD, $EF, $ED, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $C4, $E1, $E4, $A0, $E1 ;  and Dad away.
    .BYTE $F7, $E1, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EC, $E9, $EB, $E5, $A0, $E9, $F4 ; *I like it without
    .BYTE $A0, $F7, $E9, $F4, $E8, $EF, $F5, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E7, $F2, $EF, $F7, $EE ;  the grown-ups
    .BYTE $AD, $F5, $F0, $F3, 1
    .BYTE $A0, $E1, $F2, $EF, $F5, $EE, $E4, $AE, 1 ;  around.
    .BYTE 3
    .BYTE $A0, $D3, $F5, $F2, $E5, $A0, $C9, $A0, $E4, $EF ;  Sure I do.
    .BYTE $AE, 1
    .BYTE $A0, $D3, $EF, $E2, $AC, $A0, $F3, $EF, $E2, $AE ;  Sob, sob...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E8, $EF ; *Please hold me!
    .BYTE $EC, $E4, $A0, $ED, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $EC, $E4, $A0, $ED, $E5, $AC, $A0 ; *Hold me, too!
    .BYTE $F4, $EF, $EF, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $EC, $E4, $A0, $ED, $E5, $A1, 1 ; *Hold me!
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E2, $F2 ; *Please bring back
    .BYTE $E9, $EE, $E7, $A0, $E2, $E1, $E3, $EB, 1
    .BYTE $A0, $EF, $F5, $F2, $A0, $CD, $EF, $ED, $A0, $E1 ;  our Mom and Dad.
    .BYTE $EE, $E4, $A0, $C4, $E1, $E4, $AE, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $AC, $A0, $C9 ;  Please, I beg you.
    .BYTE $A0, $E2, $E5, $E7, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F9, $E5, $F3, $AE, $A0 ; *Oh, yes.  My name
    .BYTE $A0, $CD, $F9, $A0, $EE, $E1, $ED, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $D4, $EF, $ED, $A0, $C7, $E1 ;  is Tom Garrickson.
    .BYTE $F2, $F2, $E9, $E3, $EB, $F3, $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF ; *I like to
    .BYTE 1
    .BYTE $A0, $E9, $EE, $F4, $F2, $EF, $E4, $F5, $E3, $E5 ;  introduce myself.
    .BYTE $A0, $ED, $F9, $F3, $E5, $EC, $E6, $AE, 1
    .BYTE $A0, $C9, $F4, $A7, $F3, $A0, $ED, $F9, $A0, $E8 ;  It's my hobby.
    .BYTE $EF, $E2, $E2, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $EF, $ED, $A0, $F4, $EF, $EC, $E4, $A0 ; *Mom told me this
    .BYTE $ED, $E5, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $E2, $E1, $E2, $F9, $A0, $E8, $E1, $F3, $A0 ;  baby has mystic
    .BYTE $ED, $F9, $F3, $F4, $E9, $E3, 1
    .BYTE $A0, $F0, $EF, $F7, $E5, $F2, $AE, 1 ;  power.
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $A0, $E7, $E1, $E1, $AE, $AE ; *Goo gaa...
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $E5, $F3, $AC, $A0, $E5, $F6, $E5, $EE ; *Yes, even though
    .BYTE $A0, $F4, $E8, $EF, $F5, $E7, $E8, 1
    .BYTE $A0, $ED, $F9, $A0, $E2, $EF, $E4, $F9, $A0, $E9 ;  my body is that of
    .BYTE $F3, $A0, $F4, $E8, $E1, $F4, $A0, $EF, $E6, 1
    .BYTE $A0, $E1, $A0, $E2, $E1, $E2, $F9, $AC, 1 ;  a baby,
    .BYTE 3
    .BYTE $C0, $EC, $E9, $EB, $E5, $A0, $F9, $EF, $F5, $AC ; *like you, I
    .BYTE $A0, $C9, 1
    .BYTE $A0, $F0, $EF, $F3, $F3, $E5, $F3, $F3, $A0, $F0 ;  possess psychic
    .BYTE $F3, $F9, $E3, $E8, $E9, $E3, 1
    .BYTE $A0, $E1, $E2, $E9, $EC, $E9, $F4, $E9, $E5, $F3 ;  abilities.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $F4, $E8 ; *I know the power
    .BYTE $E5, $A0, $F0, $EF, $F7, $E5, $F2, 1
    .BYTE $A0, $EF, $E6, $A0, $D4, $E5, $EC, $E5, $F0, $EF ;  of Teleportation.
    .BYTE $F2, $F4, $E1, $F4, $E9, $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D5, $F3, $E5, $A0, $F4, $E8, $E9, $F3, $A0 ; *Use this power to
    .BYTE $F0, $EF, $F7, $E5, $F2, $A0, $F4, $EF, 1
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $A0, $F4, $EF ;  return to a place
    .BYTE $A0, $E1, $A0, $F0, $EC, $E1, $E3, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $F6, $E5, $A0, $E2, $E5 ;  you've been to.
    .BYTE $E5, $EE, $A0, $F4, $EF, $AE, 1
    .BYTE 3
    .BYTE $C0, $A8, $D4, $E8, $E5, $A0, $E2, $E1, $E2, $F9 ; *(The baby taught
    .BYTE $A0, $F4, $E1, $F5, $E7, $E8, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $ED, $A0, $E8, $E9, $F3, $A0 ;  them his power of
    .BYTE $F0, $EF, $F7, $E5, $F2, $A0, $EF, $E6, 1
    .BYTE $A0, $D4, $E5, $EC, $E5, $F0, $EF, $F2, $F4, $E1 ;  Teleportation)
    .BYTE $F4, $E9, $EF, $EE, $A9, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $ED ; *I heard my Dad's
    .BYTE $F9, $A0, $C4, $E1, $E4, $A7, $F3, 1
    .BYTE $A0, $F6, $EF, $E9, $E3, $E5, $A0, $E3, $EF, $ED ;  voice coming from
    .BYTE $E9, $EE, $E7, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $EF, $F5, $EE, $F4 ;  the mountains.
    .BYTE $E1, $E9, $EE, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $F4, $E8, $E5, $A0, $ED ; *But the mountains
    .BYTE $EF, $F5, $EE, $F4, $E1, $E9, $EE, $F3, 1
    .BYTE $A0, $E1, $F2, $E5, $A0, $E2, $E5, $F9, $EF, $EE ;  are beyond the
    .BYTE $E4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F4, $EF, $F7, $EE, $A0, $EF, $E6, $A0, $C5 ;  town of Ellay.
    .BYTE $EC, $EC, $E1, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F3, $EF, $A0, $E6 ; *It's so far away
    .BYTE $E1, $F2, $A0, $E1, $F7, $E1, $F9, 1
    .BYTE $A0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, $A0, $ED ;  I can't make that
    .BYTE $E1, $EB, $E5, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $EA, $EF, $F5, $F2, $EE, $E5, $F9, $AE, 1 ;  journey.
    .BYTE 0
    .BYTE $C0, $D7, $E1, $E9, $F4, $A0, $E1, $A0, $ED, $E9 ; *Wait a minute...
    .BYTE $EE, $F5, $F4, $E5, $AE, $AE, $AE, 1
    .BYTE $A0, $D9, $EF, $F5, $A0, $E3, $E1, $EE, $A7, $F4 ;  You can't carry it,
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $A0, $E9, $F4, $AC
    .BYTE 1
    .BYTE $A0, $F3, $EF, $A0, $F9, $EF, $F5, $A0, $E3, $E1 ;  so you can't have it.
    .BYTE $EE, $A7, $F4, $A0, $E8, $E1, $F6, $E5, $A0, $E9
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E9, $ED, $E5, $A0, $E8, $E1, $F3, $A0 ; *Time has passed,
    .BYTE $F0, $E1, $F3, $F3, $E5, $E4, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $ED ;  you are more
    .BYTE $EF, $F2, $E5, 1
    .BYTE $A0, $E5, $F8, $F0, $E5, $F2, $E9, $E5, $EE, $E3 ;  experienced and
    .BYTE $E5, $E4, $A0, $E1, $EE, $E4, 1
    .BYTE 3
    .BYTE $C0, $E8, $EF, $F0, $E5, $E6, $F5, $EC, $EC, $F9 ; *hopefully a little
    .BYTE $A0, $E1, $A0, $EC, $E9, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $F7, $E9, $F3, $E5, $F2, $AC, $A0, $E2, $F5 ;  wiser, but you are
    .BYTE $F4, $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $F3, $F4, $E9, $EC, $EC, $A0, $EA, $F5, $F3 ;  still just a kid.
    .BYTE $F4, $A0, $E1, $A0, $EB, $E9, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ; *You must watch out
    .BYTE $F7, $E1, $F4, $E3, $E8, $A0, $EF, $F5, $F4, 1
    .BYTE $A0, $E1, $F2, $EF, $F5, $EE, $E4, $A0, $E8, $E5 ;  around here.
    .BYTE $F2, $E5, $AE, 1
    .BYTE $A0, $C8, $E5, $E5, $AE, $AE, $AE, $AE, 1 ;  Hee....
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C2, $AE, $C2, $AE, $A0 ; *The B.B. Gang
    .BYTE $C7, $E1, $EE, $E7, 1
    .BYTE $A0, $ED, $E5, $ED, $E2, $E5, $F2, $F3, $A0, $E1 ;  members are really
    .BYTE $F2, $E5, $A0, $F2, $E5, $E1, $EC, $EC, $F9, 1
    .BYTE $A0, $F4, $E5, $F2, $F2, $E9, $E2, $EC, $E5, $AE ;  terrible...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $A0, $E3, $E1, $EC, $EC, $A0, $C2 ; *We call Bla-Bla
    .BYTE $EC, $E1, $AD, $C2, $EC, $E1, 1
    .BYTE $A0, $C7, $E1, $EE, $E7, $A0, $ED, $E5, $ED, $E2 ;  Gang members, B.B.
    .BYTE $E5, $F2, $F3, $AC, $A0, $C2, $AE, $C2, $AE, 1
    .BYTE $A0, $C7, $E1, $EE, $E7, $F3, $A0, $E6, $EF, $F2 ;  Gangs for short.
    .BYTE $A0, $F3, $E8, $EF, $F2, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $A0, $F9, $EF, $F5, $A1, $A0 ; *Hey you! You are
    .BYTE $D9, $EF, $F5, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $EE, $EF, $F4, $A0, $E1, $A0, $C2, $EC, $E1 ;  not a Bla-Bla, are
    .BYTE $AD, $C2, $EC, $E1, $AC, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A2, 1 ;  you?
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $EC, $E1, $E3, $EB ; *The black clouds
    .BYTE $A0, $E3, $EC, $EF, $F5, $E4, $F3, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $E8, $E1, $EE, $E7 ;  that hang over
    .BYTE $A0, $EF, $F6, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $EF, $F5, $EE, $F4 ;  the mountains...
    .BYTE $E1, $E9, $EE, $F3, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $F9, $A7, $F2, $E5, $A0, $ED ; *They're making
    .BYTE $E1, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $E1, $EC, $EC, $A0, $F4, $E8, $E5, $A0, $F4 ;  all the towns-
    .BYTE $EF, $F7, $EE, $F3, $AD, 1
    .BYTE $A0, $F0, $E5, $EF, $F0, $EC, $E5, $A0, $E3, $F2 ;  people crazy.
    .BYTE $E1, $FA, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $AC, $A0, $F9, $EF, $F5, $A0 ; *Hey, you two there.
    .BYTE $F4, $F7, $EF, $A0, $F4, $E8, $E5, $F2, $E5, $AE
    .BYTE 1
    .BYTE $A0, $D3, $F7, $E5, $E5, $F4, $E8, $E5, $E1, $F2 ;  Sweethearts, huh!?
    .BYTE $F4, $F3, $AC, $A0, $E8, $F5, $E8, $A1, $A2, 1
    .BYTE 0
    .BYTE $C0, $CC, $EF, $F6, $E5, $A0, $E1, $EE, $E4, $A0 ; *Love and peace,
    .BYTE $F0, $E5, $E1, $E3, $E5, $AC, 1
    .BYTE $A0, $F9, $E5, $E1, $E8, $A1, 1 ;  yeah!
    .BYTE 0
    .BYTE $C0, $CC, $EF, $F6, $E5, $A0, $E2, $F5, $F2, $EE ; *Love burns deep in
    .BYTE $F3, $A0, $E4, $E5, $E5, $F0, $A0, $E9, $EE, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $E8, $E5, $E1, $F2 ;  your heart, right?
    .BYTE $F4, $AC, $A0, $F2, $E9, $E7, $E8, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E7, $EF, $F4, $A0 ; *I've got a Ticket
    .BYTE $E1, $A0, $D4, $E9, $E3, $EB, $E5, $F4, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $CC, $E9 ;  to the Live-Show.
    .BYTE $F6, $E5, $AD, $D3, $E8, $EF, $F7, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $EB, $EE, $EF, $F7, $A0 ; *You know the Store
    .BYTE $F4, $E8, $E5, $A0, $D3, $F4, $EF, $F2, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $E1, $EC, $EC, $A0, $F3, $EF ;  is all sold out.
    .BYTE $EC, $E4, $A0, $EF, $F5, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $C9, $A0, $E3, $EF, $F5 ; *But I could part
    .BYTE $EC, $E4, $A0, $F0, $E1, $F2, $F4, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F4, $E8, $E9, $F3 ;  with this one for
    .BYTE $A0, $EF, $EE, $E5, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $EF, $EE, $EC, $F9, $A0, $A4 ;  only $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A2, 1            ; ?
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $E9, $F4, $A0, $E9 ; *Here it is! No,
    .BYTE $F3, $A1, $A0, $CE, $EF, $AC, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E7, $EF, $A0 ;  don't go to the
    .BYTE $F4, $EF, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $D3, $F4, $EF, $F2, $E5, $A0, $EE, $EF, $F7 ;  Store now.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $F4, $E9, $EE, $E7, $F9, $A0, $EB, $E9 ; *Stingy kids...
    .BYTE $E4, $F3, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E1, $A0, $F3, $E5 ; *It's a secret...
    .BYTE $E3, $F2, $E5, $F4, $AE, $AE, $AE, 1
    .BYTE $A0, $D0, $F2, $EF, $ED, $E9, $F3, $E5, $A0, $EE ;  Promise not to say
    .BYTE $EF, $F4, $A0, $F4, $EF, $A0, $F3, $E1, $F9, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $C9, $A0, $F4, $EF ;  that I told you?
    .BYTE $EC, $E4, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C2, $EC, $E1, $AD, $C2 ; *The Bla-Bla Boss,
    .BYTE $EC, $E1, $A0, $C2, $EF, $F3, $F3, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $F2, $E5, $E1, $EC, $A0, $EE, $E1 ; 's real name
    .BYTE $ED, $E5, 1
    .BYTE $A0, $E9, $F3, $AE, $AE, $AE, 1 ;  is...
    .BYTE 3
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A0, $CA, $F5, $EE, $E9, $EF, $F2, $AC, $A0, $F4 ;  Junior, the
    .BYTE $E8, $E5, 1
    .BYTE $A0, $B3, $F2, $E4, $AE, 1 ;  3rd.
    .BYTE $A0, $C8, $E1, $AE, 1 ;  Ha.
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $E9, $F4, $A7, $F3 ; *But, it's only a
    .BYTE $A0, $EF, $EE, $EC, $F9, $A0, $E1, 1
    .BYTE $A0, $F2, $F5, $ED, $EF, $F2, $AC, $A0, $F4, $E8 ;  rumor, though.
    .BYTE $EF, $F5, $E7, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $EC, $EC, $A0, $E2, $E5 ; *You'll be the one
    .BYTE $A0, $F4, $E8, $E5, $A0, $EF, $EE, $E5, 1
    .BYTE $A0, $F7, $E8, $EF, $A0, $F2, $E5, $E7, $F2, $E5 ;  who regrets it for
    .BYTE $F4, $F3, $A0, $E9, $F4, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F3, $F5, $F2, $E5, $AE, 1 ;  sure.
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F0, $E5, $E5 ; *Don't peek in the
    .BYTE $EB, $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $F2, $EF, $EF, $ED ;  back room. You'll
    .BYTE $AE, $A0, $D9, $EF, $F5, $A7, $EC, $EC, 1
    .BYTE $A0, $E3, $E1, $F4, $E3, $E8, $A0, $E9, $F4, $A0 ;  catch it for sure.
    .BYTE $E6, $EF, $F2, $A0, $F3, $F5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $EF, $F7, $AC, $A0, $F9, $EF, $F5, $A7 ; *Wow, you're so
    .BYTE $F2, $E5, $A0, $F3, $EF, 1
    .BYTE $A0, $E3, $F5, $F4, $E5, $AE, $A0, $C3, $E1, $EE ;  cute. Can I buy
    .BYTE $A0, $C9, $A0, $E2, $F5, $F9, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $A0, $E4, $F2, $E9 ;  you a drink?
    .BYTE $EE, $EB, $A2, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $E6, $F2, $E1, $E9 ; *You afraid of the
    .BYTE $E4, $A0, $EF, $E6, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E3, $EF, $F0, $F3, $A2, 1 ;  cops?
    .BYTE $A0, $C3, $EF, $ED, $E5, $A0, $EF, $EE, $A1, 1 ;  Come on!
    .BYTE 0
    .BYTE $C0, $CE, $EF, $A0, $ED, $EF, $F2, $E5, $A0, $E4 ; *No more drinks on my
    .BYTE $F2, $E9, $EE, $EB, $F3, $A0, $EF, $EE, $A0, $ED
    .BYTE $F9, 1
    .BYTE $A0, $E2, $E9, $EC, $EC, $AE, 1 ;  bill.
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F7, $A0, $F9, $EF, $F5, $A0, $EB ; *Now you know you
    .BYTE $EE, $EF, $F7, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E4, $E9, $E4, $A0, $E1, $A0, $E2, $E1, $E4 ;  did a bad thing?
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $F0, $F2 ; *If you promise you
    .BYTE $EF, $ED, $E9, $F3, $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F7, $EF, $EE, $A7, $F4, $A0, $E4, $EF, $A0 ;  won't do it again,
    .BYTE $E9, $F4, $A0, $E1, $E7, $E1, $E9, $EE, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E3, $E1, $EE, $A0, $E7 ;  you can go home.
    .BYTE $EF, $A0, $E8, $EF, $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $EC, $E5, $E1, $F6, $E5 ; *You leave that
    .BYTE $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E4, $E1, $EE, $E7, $E5, $F2, $EF, $F5, $F3 ;  dangerous weapon
    .BYTE $A0, $F7, $E5, $E1, $F0, $EF, $EE, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $F4, $E8, $EF, $F5 ;  here though.
    .BYTE $E7, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $AC, $A0, $F9, $EF ; *Sorry, you must
    .BYTE $F5, $A0, $ED, $F5, $F3, $F4, 1
    .BYTE $A0, $F3, $F4, $E1, $F9, $A0, $E1, $EE, $EF, $F4 ;  stay another night
    .BYTE $E8, $E5, $F2, $A0, $EE, $E9, $E7, $E8, $F4, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E3, $EF, $EF, $EC, $A0 ;  and cool your jets.
    .BYTE $F9, $EF, $F5, $F2, $A0, $EA, $E5, $F4, $F3, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $E5, $A0, $E8, $E5, $E5, $A0, $E8 ; *Hee hee hee...
    .BYTE $E5, $E5, $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $A0, $E6, $E9, $EE, $E1, $EC, $EC, $F9 ;  I finally got a
    .BYTE $A0, $E7, $EF, $F4, $A0, $E1, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 3
    .BYTE $C0, $D7, $E1, $EE, $EE, $E1, $A0, $E2, $F5, $F9 ; *Wanna buy it for
    .BYTE $A0, $E9, $F4, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $EF, $EE, $EC, $F9, $A0, $A4 ;  only $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A2, 1            ; ?
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F4, $A0, $E5, $EE, $EF, $F5, $E7 ; *Not enough money.
    .BYTE $E8, $A0, $ED, $EF, $EE, $E5, $F9, $AE, 1
    .BYTE $A0, $C2, $EF, $EF, $A0, $E8, $EF, $EF, $A0, $E8 ;  Boo hoo hoo.
    .BYTE $EF, $EF, $AE, 1
    .BYTE $A0, $C8, $E1, $AC, $A0, $E8, $E1, $AC, $A0, $E8 ;  Ha, ha, ha...
    .BYTE $E1, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $F0, $E1, $F2, $E5, $EE, $F4, $F3 ; 's parents
    .BYTE 1
    .BYTE $A0, $F7, $E5, $F2, $E5, $A0, $EB, $E9, $EC, $EC ;  were killed by
    .BYTE $E5, $E4, $A0, $E2, $F9, 1
    .BYTE $A0, $ED, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $A0 ;  mountain creatures.
    .BYTE $E3, $F2, $E5, $E1, $F4, $F5, $F2, $E5, $F3, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C2, $E5, $E6, $EF, $F2, $E5, $A0, $F4, $E8 ; *Before that, he
    .BYTE $E1, $F4, $AC, $A0, $E8, $E5, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $E1, $A0, $E7, $E5, $EE ;  was a gentle kid.
    .BYTE $F4, $EC, $E5, $A0, $EB, $E9, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E9, $F3, $E8, $A0 ; *I wish
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F7, $EF, $F5, $EC, $E4, $A0, $E7, $EF, $A0 ;  would go back to
    .BYTE $E2, $E1, $E3, $EB, $A0, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F7, $E1, $F9, $A0, $E8 ;  the way he was.
    .BYTE $E5, $A0, $F7, $E1, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A0 ; *You want to sing
    .BYTE $F4, $EF, $A0, $F3, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $EF, $EF, $A2, 1 ;  too?
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $EE, $A0, $E7, $EF, $A0, $E1 ; *Then go ahead
    .BYTE $E8, $E5, $E1, $E4, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $EA, $E1, $ED, $AC, $A0 ;  and jam, dudes!
    .BYTE $E4, $F5, $E4, $E5, $F3, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $F3, $E8 ; *You're shy!
    .BYTE $F9, $A1, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E7, $E9, $F2, $EC, $A1, $A1, 1 ;  girl!!
    .BYTE $A0, $D7, $E5, $EC, $EC, $AC, $A0, $C9, $A0, $F3 ;  Well, I saw your
    .BYTE $E1, $F7, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $EE, $E1, $ED, $E5, $A0, $EF, $EE, $A0, $F9 ;  name on your hat.
    .BYTE $EF, $F5, $F2, $A0, $E8, $E1, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E7, $E9, $F2, $EC, $A0 ; *The girl was so
    .BYTE $F7, $E1, $F3, $A0, $F3, $EF, 1
    .BYTE $A0, $E3, $F5, $F4, $E5, $AE, 1 ;  cute.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you for
    .BYTE $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $EE, $E9, $E3, $E5 ;  your nice song.
    .BYTE $A0, $F3, $EF, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F9, $A0, $F4, $E8, $E5, $A0, $F7, $E1 ; *By the way, you
    .BYTE $F9, $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E7, $F5, $F9, $F3, $A0, $E2, $E5, $E1, $F4 ;  guys beat up on my
    .BYTE $A0, $F5, $F0, $A0, $EF, $EE, $A0, $ED, $F9, 1
    .BYTE $A0, $E6, $F2, $E9, $E5, $EE, $E4, $F3, $AE, 1 ;  friends.
    .BYTE 0
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $F3, $ED, $E1, $F3 ; *I'll smash you!
    .BYTE $E8, $A0, $F9, $EF, $F5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $F9, $EF ; *I know you did it!
    .BYTE $F5, $A0, $E4, $E9, $E4, $A0, $E9, $F4, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $E8, $E1, $A0, $E8, $E1, $A0, $E8, $E1 ; *Aha ha ha...
    .BYTE $AE, $AE, $AE, $A0, 1
    .BYTE $A0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $F1 ;  You are quite a
    .BYTE $F5, $E9, $F4, $E5, $A0, $E1, 1
    .BYTE $A0, $E7, $F5, $F9, $AE, 1 ;  guy.
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $EE, $E1, $ED, $E5 ; *Your name is
    .BYTE $A0, $E9, $F3, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A2, 1            ; ?
    .BYTE 3
    .BYTE $C0, $CC, $E5, $F4, $A7, $F3, $A0, $E3, $E1, $EC ; *Let's call it a
    .BYTE $EC, $A0, $E9, $F4, $A0, $E1, 1
    .BYTE $A0, $E4, $F2, $E1, $F7, $A0, $F4, $E8, $E5, $EE ;  draw then...
    .BYTE $AE, $AE, $AE, 1
    .BYTE $A0, $D5, $ED, $ED, $AE, $AE, $AE, 1 ;  Umm...
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $EB, $A0, $F6, $E5 ; *I seek vengeance
    .BYTE $EE, $E7, $E5, $E1, $EE, $E3, $E5, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $ED, $F9, $A0, $F0, $E1 ;  for my parents. To
    .BYTE $F2, $E5, $EE, $F4, $F3, $AE, $A0, $D4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $EF, $F5, $EE, $F4 ;  the mountains!!
    .BYTE $E1, $E9, $EE, $F3, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $F0, $EC, $E5, $E1, $F3, $E5, 1 ; , please
    .BYTE $A0, $E1, $E3, $E3, $E5, $F0, $F4, $A0, $ED, $F9 ;  accept my help.
    .BYTE $A0, $E8, $E5, $EC, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $D5, $D3, $C5, $E4, $A0, $F4, $E8, $E5, 1 ;  USEd the
    .BYTE $A0, $D4, $E5, $EC, $E5, $F0, $E8, $EF, $EE, $E5 ;  Telephone Card.
    .BYTE $A0, $C3, $E1, $F2, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $F5, $F2, $E5, $A0 ; *I'm sure we'll
    .BYTE $F7, $E5, $A7, $EC, $EC, 1
    .BYTE $A0, $ED, $E1, $EB, $E5, $A0, $E1, $A0, $E7, $EF ;  make a good team.
    .BYTE $EF, $E4, $A0, $F4, $E5, $E1, $ED, $AE, 1
    .BYTE $A0, $CC, $E5, $F4, $A7, $F3, $A0, $E7, $E5, $F4 ;  Let's get going!
    .BYTE $A0, $E7, $EF, $E9, $EE, $E7, $A1, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $AE, $AE, $AE ; *Please...
    .BYTE 1
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $E2, $E5, $A0, $E1 ;  I'll be a great
    .BYTE $A0, $E7, $F2, $E5, $E1, $F4, 1
    .BYTE $A0, $E8, $E5, $EC, $F0, $A0, $F4, $EF, $A0, $F9 ;  help to you.
    .BYTE $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $EC, $EC, $EF, $AE, $AE, $AE, 1 ; *Hello...
    .BYTE $A0, $C9, $F4, $A7, $F3, $A0, $C4, $E1, $E4, $AE ;  It's Dad.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F2, $E5, $E1, $EC, $EC, $F9, $A0 ; *I really don't
    .BYTE $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF, $A0, $E2 ;  want to butt in
    .BYTE $F5, $F4, $F4, $A0, $E9, $EE, 1
    .BYTE $A0, $EE, $EF, $F7, $AC, $A0, $E2, $F5, $F4, $AE ;  now, but...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E1, $F2, $E5, $A0 ; *What are you
    .BYTE $F9, $EF, $F5, 1
    .BYTE $A0, $F7, $E1, $E9, $F4, $E9, $EE, $E7, $A0, $E6 ;  waiting for!??
    .BYTE $EF, $F2, $A1, $A2, $A2, 1
    .BYTE 3
    .BYTE $C0, $D0, $F5, $F3, $E8, $A0, $F4, $E8, $E5, $A0 ; *Push the 'A'
    .BYTE $A7, $C1, $A7, 1
    .BYTE $A0, $E2, $F5, $F4, $F4, $EF, $EE, $A0, $E1, $F4 ;  button at once!
    .BYTE $A0, $EF, $EE, $E3, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F4, $E8, $E5, $F2, $E5 ; *You there,
    .BYTE $AC, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EF, $EE, $E5, $A0, $F7 ;  the one with the
    .BYTE $E9, $F4, $E8, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E7, $EC, $E1, $F3, $F3, $E5, $F3, $AE, $AE ;  glasses...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $EE, $EF ; *You're not so good
    .BYTE $F4, $A0, $F3, $EF, $A0, $E7, $EF, $EF, $E4, 1
    .BYTE $A0, $E1, $F4, $A0, $E6, $E9, $E7, $E8, $F4, $E9 ;  at fighting, are
    .BYTE $EE, $E7, $AC, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A2, 1 ;  you?
    .BYTE 3
    .BYTE $C0, $D2, $E5, $F3, $F4, $A0, $E8, $E5, $F2, $E5 ; *Rest here while I
    .BYTE $A0, $F7, $E8, $E9, $EC, $E5, $A0, $C9, 1
    .BYTE $A0, $E2, $EF, $F2, $F2, $EF, $F7, $A0, $F9, $EF ;  borrow your Goods.
    .BYTE $F5, $F2, $A0, $C7, $EF, $EF, $E4, $F3, $AE, 1
    .BYTE $A0, $CF, $CB, $A2, 1 ;  OK?
    .BYTE 0
    .BYTE $C0, $C2, $F2, $F5, $F4, $E5, $A0, $F3, $F4, $F2 ; *Brute strength is
    .BYTE $E5, $EE, $E7, $F4, $E8, $A0, $E9, $F3, 1
    .BYTE $A0, $EE, $EF, $F4, $A0, $E5, $EE, $EF, $F5, $E7 ;  not enough to beat
    .BYTE $E8, $A0, $F4, $EF, $A0, $E2, $E5, $E1, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $ED, $AE, 1 ;  them.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $EE, $EF ; *I know now that
    .BYTE $F7, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F0, $E5, $E1, $E3, $E5, $A0, $E3, $E1, $EE ;  peace can be
    .BYTE $A0, $E2, $E5, 1
    .BYTE $A0, $E2, $F2, $EF, $F5, $E7, $E8, $F4, $A0, $E2 ;  brought back to us.
    .BYTE $E1, $E3, $EB, $A0, $F4, $EF, $A0, $F5, $F3, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E2, $E5, $EC, $E9, $E5, $F6, $E5 ; *I believe.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A9, 1            ; )
    .BYTE $A0, $D7, $E8, $F9, $A0, $E1, $F2, $E5, $A0, $F9 ;  Why are you two
    .BYTE $EF, $F5, $A0, $F4, $F7, $EF, 1
    .BYTE $A0, $E2, $EC, $F5, $F3, $E8, $E9, $EE, $E7, $A2 ;  blushing?
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $CC, $E5, $F4, $A7, $F3, $A0, $E8, $F5, $F2 ; *Let's hurry up
    .BYTE $F2, $F9, $A0, $F5, $F0, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E7, $E5, $F4, $A0, $EF ;  and get out of
    .BYTE $F5, $F4, $A0, $EF, $E6, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A1, 1 ;  here!
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $ED ; *This is my dressing
    .BYTE $F9, $A0, $E4, $F2, $E5, $F3, $F3, $E9, $EE, $E7
    .BYTE 1
    .BYTE $A0, $F2, $EF, $EF, $ED, $AC, $A0, $F0, $EC, $E5 ;  room, please get
    .BYTE $E1, $F3, $E5, $A0, $E7, $E5, $F4, 1
    .BYTE $A0, $EF, $F5, $F4, $A1, $A1, 1 ;  out!!
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0 ; *I am
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $E6, $E1, $F4, $E8, $E5, $F2, $AE, 1 ;  father.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F4, $E8, $E9, $EE, $EB, $A0 ; *I think
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $C4, $E1, $E4, $A0, $E1, $F3, $EB, $E5, $E4 ;  Dad asked,
    .BYTE $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $F9, $EF, $F5, $A0, $F4 ; *but you told him
    .BYTE $EF, $EC, $E4, $A0, $E8, $E9, $ED, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $EE, $E1, $ED, $E5 ;  your name?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $CF, $CB, $AC, $A0, $F4, $E8, $E1, $F4, $A7 ; *OK, that's fine.
    .BYTE $F3, $A0, $E6, $E9, $EE, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $EC, $EF ; *Please look after
    .BYTE $EF, $EB, $A0, $E1, $E6, $F4, $E5, $F2, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $AE, $A0, $C8, $E5, $A0, $E9, $F3, $A0, $E1, 1 ; . He is a
    .BYTE $A0, $F2, $E5, $E1, $EC, $A0, $F7, $E5, $E1, $EB ;  real weakling...
    .BYTE $EC, $E9, $EE, $E7, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $E5, $F4, $A0, $ED, $E5, $A0, $F2, $E5 ; *Let me register
    .BYTE $E7, $E9, $F3, $F4, $E5, $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $EE, $E1, $ED, $E5 ;  your name once
    .BYTE $A0, $EF, $EE, $E3, $E5, 1
    .BYTE $A0, $ED, $EF, $F2, $E5, $AE, 1 ;  more.
    .BYTE 0
    .BYTE $C0, $D4, $EF, $A0, $F4, $E8, $E5, $A0, $C8, $E1 ; *To the Harbor
    .BYTE $F2, $E2, $EF, $F2, 1
    .BYTE $A0, $E2, $E5, $E6, $EF, $F2, $E5, $A0, $CD, $F4 ;  before Mt. Itoi.
    .BYTE $AE, $A0, $C9, $F4, $EF, $E9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $ED, $E5, $E1, $EE, $A0, $E9, $F4 ; *I mean it.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you ever
    .BYTE $E5, $F6, $E5, $F2, 1
    .BYTE $A0, $F4, $E1, $F3, $F4, $E5, $E4, $A0, $D3, $F4 ;  tasted StrawBerry
    .BYTE $F2, $E1, $F7, $C2, $E5, $F2, $F2, $F9, 1
    .BYTE $A0, $D4, $EF, $E6, $F5, $A2, 1 ;  Tofu?
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E6, $E9 ; *If you find some,
    .BYTE $EE, $E4, $A0, $F3, $EF, $ED, $E5, $AC, 1
    .BYTE $A0, $E2, $F5, $F9, $A0, $F3, $EF, $ED, $E5, $A0 ;  buy some for me,
    .BYTE $E6, $EF, $F2, $A0, $ED, $E5, $AC, 1
    .BYTE $A0, $F0, $EC, $E5, $E1, $F3, $E5, $AE, 1 ;  please.
    .BYTE 3
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $F4, $F2, $E1, $E4 ; *I'll trade
    .BYTE $E5, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something nice
    .BYTE $A0, $EE, $E9, $E3, $E5, 1
    .BYTE $A0, $E9, $EE, $A0, $F2, $E5, $F4, $F5, $F2, $EE ;  in return.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $A0, $F7, $E1, $F9, $A0, $F4, $EF ; *No way to buy
    .BYTE $A0, $E2, $F5, $F9, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $F3, $A0, $EC, $E9 ;  things like that
    .BYTE $EB, $E5, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E9, $F3, $A0, $F0 ;  in this place.
    .BYTE $EC, $E1, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A1, $A0, $A0, $D4, $E8, $E9, $F3 ; *Oh!  This is
    .BYTE $A0, $E9, $F3, 1
    .BYTE $A0, $D3, $F4, $F2, $E1, $F7, $C2, $E5, $F2, $F2 ;  StrawBerry Tofu!
    .BYTE $F9, $A0, $D4, $EF, $E6, $F5, $A1, 1
    .BYTE $A0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ;  Thank you!
    .BYTE $A1, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F2, $E5, $A7, $F3, $A0, $F3, $EF ; *Here's something
    .BYTE $ED, $E5, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $EE, $E9, $E3, $E5, $A0, $E6, $EF, $F2, $A0 ;  nice for you in
    .BYTE $F9, $EF, $F5, $A0, $E9, $EE, 1
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $AE, 1 ;  return.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E5, $F6, $E5, $F2, $A0 ; *You ever get hurt,
    .BYTE $E7, $E5, $F4, $A0, $E8, $F5, $F2, $F4, $AC, 1
    .BYTE $A0, $E3, $EF, $ED, $E5, $A0, $F4, $EF, $A0, $ED ;  come to my place.
    .BYTE $F9, $A0, $F0, $EC, $E1, $E3, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E8, $E1, $F6, $E5, $A0, $E6, $EF ; *I have food,
    .BYTE $EF, $E4, $AC, 1
    .BYTE $A0, $ED, $E5, $E4, $E9, $E3, $E9, $EE, $E5, $AC ;  medicine, and a
    .BYTE $A0, $E1, $EE, $E4, $A0, $E1, 1
    .BYTE $A0, $E2, $E5, $E4, $A0, $F9, $EF, $F5, $A0, $E3 ;  bed you can use.
    .BYTE $E1, $EE, $A0, $F5, $F3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $A1, $A0 ; *Hey!
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A1, $AE, $AE, $AE, 1 ; !...
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F7, $A0, $E9, $F3, $A0, $F4, $E8 ; *Now is the time
    .BYTE $E5, $A0, $F4, $E9, $ED, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ;  you must fight
    .BYTE $E6, $E9, $E7, $E8, $F4, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, $F2, $F3 ;  for yourself.
    .BYTE $E5, $EC, $E6, $AE, 1
    .BYTE 0
    .BYTE $C0, $C3, $EF, $ED, $E5, $A0, $EF, $EE, $AC, $A0 ; *Come on, children,
    .BYTE $E3, $E8, $E9, $EC, $E4, $F2, $E5, $EE, $AC, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A0, $E4, $EF, $A0, $F9 ;  what do you need?
    .BYTE $EF, $F5, $A0, $EE, $E5, $E5, $E4, $A2, 1
    .BYTE 0
    .BYTE $C0, $CD, $D9, $A0, $CE, $C1, $CD, $C5, $A0, $C9 ; *MY NAME IS EVE.
    .BYTE $D3, $A0, $C5, $D6, $C5, $AE, 1
    .BYTE 3
    .BYTE $A0, $C9, $A0, $C8, $C1, $D6, $C5, $A0, $C2, $C5 ;  I HAVE BEEN
    .BYTE $C5, $CE, 1
    .BYTE 3
    .BYTE $A0, $D7, $C1, $C9, $D4, $C9, $CE, $C7, $A0, $C6 ;  WAITING FOR YOU.
    .BYTE $CF, $D2, $A0, $D9, $CF, $D5, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $D9, $A0, $C3, $D2, $C5, $C1, $D4, $CF ; *MY CREATOR WAS
    .BYTE $D2, $A0, $D7, $C1, $D3, 1
    .BYTE 3
    .BYTE $A0, $C7, $C5, $CF, $D2, $C7, $C5, $AE, $AE, $AE ;  GEORGE...
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C8, $C5, $A0, $D7, $C1, $D3, $A0, $D4, $C1 ; *HE WAS TAKEN TO
    .BYTE $CB, $C5, $CE, $A0, $D4, $CF, 1
    .BYTE 3
    .BYTE $A0, $D4, $C8, $C5, $A0, $C5, $CE, $C4, $A0, $CF ;  THE END OF THE
    .BYTE $C6, $A0, $D4, $C8, $C5, 1
    .BYTE 3
    .BYTE $A0, $D5, $CE, $C9, $D6, $C5, $D2, $D3, $C5, $AE ;  UNIVERSE...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $C8, $C5, $CE, $A0, $C2, $D2, $CF, $D5 ; *THEN BROUGHT BACK
    .BYTE $C7, $C8, $D4, $A0, $C2, $C1, $C3, $CB, 1
    .BYTE 3
    .BYTE $A0, $CC, $C1, $D4, $C5, $D2, $AE, 1 ;  LATER.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $C1, $CD, $A0, $C8, $C5, $D2, $C5 ; *I AM HERE TO
    .BYTE $A0, $D4, $CF, 1
    .BYTE 3
    .BYTE $A0, $D0, $D2, $CF, $D4, $C5, $C3, $D4, $A0, $D9 ;  PROTECT YOU.
    .BYTE $CF, $D5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $C8, $C1, $D4, $A0, $C9, $D3, $A0, $CD ; *THAT IS MY PURPOSE.
    .BYTE $D9, $A0, $D0, $D5, $D2, $D0, $CF, $D3, $C5, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $EF, $F3, $E5, $A0, $E2, $E1, $E7 ; *Those bags must
    .BYTE $F3, $A0, $ED, $F5, $F3, $F4, 1
    .BYTE $A0, $F7, $E5, $E9, $E7, $E8, $A0, $E8, $E5, $E1 ;  weigh heavy on
    .BYTE $F6, $F9, $A0, $EF, $EE, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $F3, $E8, $EF, $F5 ;  your shoulders.
    .BYTE $EC, $E4, $E5, $F2, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, $A0          ; !
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, $AE, $AE, 1  ; !..
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $E5, $E5, $ED, $A0 ; *You seem to be worn
    .BYTE $F4, $EF, $A0, $E2, $E5, $A0, $F7, $EF, $F2, $EE
    .BYTE 1
    .BYTE $A0, $EF, $F5, $F4, $A0, $E6, $F2, $EF, $ED, $A0 ;  out from fighting.
    .BYTE $E6, $E9, $E7, $E8, $F4, $E9, $EE, $E7, $AE, 1
    .BYTE $A0, $CF, $EE, $E5, $A0, $ED, $EF, $F2, $E5, $A0 ;  One more time?
    .BYTE $F4, $E9, $ED, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E9, $F4, $E8, $A0, $E8, $E9, $F3, $A0 ; *With his strength
    .BYTE $F3, $F4, $F2, $E5, $EE, $E7, $F4, $E8, 1
    .BYTE $A0, $F2, $E5, $E7, $E1, $E9, $EE, $E5, $E4, $AE ;  regained...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $E5, $E4, 1 ;  returned
    .BYTE $A0, $EF, $EE, $E3, $E5, $A0, $ED, $EF, $F2, $E5 ;  once more to the
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E6, $E9, $E7, $E8, $F4, $E9, $EE, $E7, $A0 ;  fighting scene.
    .BYTE $F3, $E3, $E5, $EE, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $F2, $A0, $E2 ; *Do your best,
    .BYTE $E5, $F3, $F4, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E5, $E1, $EC, $E9, $FA, $E5, $E4, 1 ;  realized
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $E9, $F4, $A0, $E8 ;  that it had only
    .BYTE $E1, $E4, $A0, $EF, $EE, $EC, $F9, 1
    .BYTE $A0, $E2, $E5, $E5, $EE, $A0, $E1, $A0, $E2, $E1 ;  been a bad dream.
    .BYTE $E4, $A0, $E4, $F2, $E5, $E1, $ED, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $F2, $A0, $E2 ; *Do your best,
    .BYTE $E5, $F3, $F4, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 0
    .BYTE $C0, $D4, $EF, $A0, $F7, $E8, $EF, $ED, $A2, 1 ; *To whom?
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $EC, $EF, $E1, $E4 ; *Your load is too
    .BYTE $A0, $E9, $F3, $A0, $F4, $EF, $EF, 1
    .BYTE $A0, $E8, $E5, $E1, $F6, $F9, $AE, $A0, $C8, $E1 ;  heavy. Hand it to
    .BYTE $EE, $E4, $A0, $E9, $F4, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $EF, $EE, $E5, $A0, $E5 ;  someone else?
    .BYTE $EC, $F3, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $EF ; *Please come again
    .BYTE $ED, $E5, $A0, $E1, $E7, $E1, $E9, $EE, 1
    .BYTE $A0, $F4, $EF, $A0, $F0, $E9, $E3, $EB, $A0, $F5 ;  to pick up the
    .BYTE $F0, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $E5, $F3, $F4, $A0, $EF, $E6, $A0, $F4 ;  rest of the Goods.
    .BYTE $E8, $E5, $A0, $C7, $EF, $EF, $E4, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0 ; *Are you
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $E6, $F2, $E9, $E5, $EE, $E4, $A2, 1 ;  friend?
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $AE, $AE, $AE, 1 ; *I see...
    .BYTE $A0, $C2, $F5, $F4, $A0, $C9, $A0, $E3, $E1, $EE ;  But I can't give
    .BYTE $A7, $F4, $A0, $E7, $E9, $F6, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A0 ;  you
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C7, $EF, $EF, $E4, $F3, $AE, 1 ; 's Goods.
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F4, $E8, $E1, $F4, $A0 ; *Did that weakling
    .BYTE $F7, $E5, $E1, $EB, $EC, $E9, $EE, $E7, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $F5, $EE, $A0, $E1, $F7, $E1, $F9, 1 ;  run away
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $F9, $EF, $F5, $A2 ;  from you?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $D7, $E5, $EC, $E3, $EF, $ED, $E5 ; *  Welcome to
    .BYTE $A0, $F4, $EF, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $D0, $EF, $E4, $F5, $EE ;      Podunk
    .BYTE $EB, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $C3, $E9, $F4, $F9 ; *     City Zoo
    .BYTE $A0, $DA, $EF, $EF, 1
    .BYTE $A0, $A0, $D3, $F5, $F0, $E5, $F2, $E9, $EE, $F4 ;   Superintendent's
    .BYTE $E5, $EE, $E4, $E5, $EE, $F4, $A7, $F3, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $CF, $E6, $E6 ;        Office
    .BYTE $E9, $E3, $E5, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $CF, $E3, $E5, $E1, $EE ; *    Ocean View
    .BYTE $A0, $D6, $E9, $E5, $F7, 1
    .BYTE $A0, $A0, $D4, $EF, $F5, $F2, $E9, $F3, $F4, $F3 ;   Tourists Welcome
    .BYTE $A0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ; *There is no one
    .BYTE $EE, $EF, $A0, $EF, $EE, $E5, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $E2, $F9, $A0, $F4 ;  here by that
    .BYTE $E8, $E1, $F4, 1
    .BYTE $A0, $E4, $E5, $F3, $E3, $F2, $E9, $F0, $F4, $E9 ;  description, but...
    .BYTE $EF, $EE, $AC, $A0, $E2, $F5, $F4, $AE, $AE, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F0, $EC, $E1, $E3 ; *When placed in the
    .BYTE $E5, $E4, $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E6, $EF, $F5, $EE, $F4, $E1, $E9, $EE, $AC ;  fountain,
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $A0, $D2, $E5, $E4, $A0, $D7 ; *the Red Weed became
    .BYTE $E5, $E5, $E4, $A0, $E2, $E5, $E3, $E1, $ED, $E5
    .BYTE 1
    .BYTE $A0, $CD, $E1, $E7, $E9, $E3, $A0, $C8, $E5, $F2 ;  Magic Herb.
    .BYTE $E2, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $F2, $E5, $A0, $E4, $EF, $A0 ; *Where do you think
    .BYTE $F9, $EF, $F5, $A0, $F4, $E8, $E9, $EE, $EB, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E3, $E1, $EE, $A0, $E6 ;  you can find such
    .BYTE $E9, $EE, $E4, $A0, $F3, $F5, $E3, $E8, 1
    .BYTE $A0, $E1, $A0, $ED, $E1, $EE, $A1, 1 ;  a man!
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0 ; *This is
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $AC, 1            ; ,
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A2, $A0, $D4, $E8 ;  right? Thank you.
    .BYTE $E1, $EE, $EB, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE $A0, $C9, $F4, $A7, $F3, $A0, $E1, $A0, $E2, $E9 ;  It's a big help.
    .BYTE $E7, $A0, $E8, $E5, $EC, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F7, $A0, $E5, $EE, $F4, $E5, $F2 ; *Now entering the
    .BYTE $E9, $EE, $E7, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $CD, $E9, $F3, $EC, $E1, $F9, $A0, $D4, $F2 ;  Mislay Triangle.
    .BYTE $E9, $E1, $EE, $E7, $EC, $E5, $AE, 1
    .BYTE $A0, $D7, $E1, $F4, $E3, $E8, $A0, $EF, $F5, $F4 ;  Watch out!
    .BYTE $A1, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $ED, $E5, $EF, $EE, $E5, $A0, $EC ; *Someone lost his
    .BYTE $EF, $F3, $F4, $A0, $E8, $E9, $F3, 1
    .BYTE $A0, $C4, $E5, $EE, $F4, $F5, $F2, $E5, $F3, $A0 ;  Dentures right
    .BYTE $F2, $E9, $E7, $E8, $F4, 1
    .BYTE $A0, $F5, $EE, $E4, $E5, $F2, $A0, $F4, $E8, $E5 ;  under the sign!
    .BYTE $A0, $F3, $E9, $E7, $EE, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $AE, $AE, $AE, 1 ; *I see...
    .BYTE $A0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ;  You don't feel so
    .BYTE $A0, $E6, $E5, $E5, $EC, $A0, $F3, $EF, 1
    .BYTE $A0, $F7, $E5, $EC, $EC, $AE, $A0, $D7, $E1, $E9 ;  well. Wait...
    .BYTE $F4, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $EF ; *Please come to
    .BYTE $ED, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $ED, $F9, $A0, $EC, $E1, $E2, $AE, 1 ;  my lab.
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF

; CHARS BANKS 0xA0 - 0xA7
    .BYTE $C0, $D4, $E8, $E5, $A0, $F0, $E8, $E5, $EE, $EF ; *The phenomenon has
    .BYTE $ED, $E5, $EE, $EF, $EE, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $F3, $F4, $EF, $F0, $F0, $E5, $E4, $AE, 1 ;  stopped.
    .BYTE $A0, $C6, $EF, $F2, $A0, $F4, $E8, $E5, $A0, $ED ;  For the moment...
    .BYTE $EF, $ED, $E5, $EE, $F4, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F2, $E5, $AC, $A0, $EC, $E5, $F4 ; *Here, let me show
    .BYTE $A0, $ED, $E5, $A0, $F3, $E8, $EF, $F7, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E8, $EF, $F7, $AE, $A0 ;  you how. Just take
    .BYTE $CA, $F5, $F3, $F4, $A0, $F4, $E1, $EB, $E5, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F3, $F7, $E9, $F4 ;  this switch and...
    .BYTE $E3, $E8, $A0, $E1, $EE, $E4, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CF, $E8, $A0, $EE, $EF, $A1, 1 ; *Oh no!
    .BYTE $A0, $C9, $A0, $F0, $F5, $F3, $E8, $E5, $E4, $A0 ;  I pushed it by
    .BYTE $E9, $F4, $A0, $E2, $F9, 1
    .BYTE $A0, $ED, $E9, $F3, $F4, $E1, $EB, $E5, $A1, 1 ;  mistake!
    .BYTE 0
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $E3, $EF, $EF, $EB ; *I'll cook
    .BYTE 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C5, $E1, $F4, $A0, $F9, $EF, $F5, $F2, $A0 ; *Eat your dinner,
    .BYTE $E4, $E9, $EE, $EE, $E5, $F2, $AC, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F2, $E5, $F3, $F4, $A0 ;  and rest for the
    .BYTE $E6, $EF, $F2, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $EE, $E9, $E7, $E8, $F4, $AE, 1 ;  night.
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F7, $E8, $E1, $F4, $A0 ; *Oh, what can I do?
    .BYTE $E3, $E1, $EE, $A0, $C9, $A0, $E4, $EF, $A2, 1
    .BYTE $A0, $D7, $E8, $E1, $F4, $A0, $F3, $E8, $EF, $F5 ;  What should I do?
    .BYTE $EC, $E4, $A0, $C9, $A0, $E4, $EF, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E5, $F2, $E5, $A0, $E3, $E1, $EE ; *Where can I go?
    .BYTE $A0, $C9, $A0, $E7, $EF, $A2, 1
    .BYTE $A0, $D7, $E8, $EF, $A0, $E3, $E1, $EE, $A0, $C9 ;  Who can I see?
    .BYTE $A0, $F3, $E5, $E5, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $F3, $E8, $EF, $F5 ; *What should I do?
    .BYTE $EC, $E4, $A0, $C9, $A0, $E4, $EF, $A2, 1
    .BYTE $A0, $D7, $E8, $E1, $F4, $A0, $F3, $E8, $EF, $F5 ;  What should I do?
    .BYTE $EC, $E4, $A0, $C9, $A0, $E4, $EF, $A2, 1
    .BYTE 3
    .BYTE $C0, $CD, $F9, $A0, $EC, $E9, $F4, $F4, $EC, $E5 ; *My little Pippi is
    .BYTE $A0, $D0, $E9, $F0, $F0, $E9, $A0, $E9, $F3, 1
    .BYTE $A0, $E7, $EF, $EE, $E5, $AE, 1 ;  gone.
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A7, $F2, $E5 ; *If you're going to
    .BYTE $A0, $E7, $EF, $E9, $EE, $E7, $A0, $F4, $EF, 1
    .BYTE $A0, $D0, $EF, $E4, $F5, $EE, $EB, $AE, $AE, $AE ;  Podunk...
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F4, $E5 ; *Please tell the
    .BYTE $EC, $EC, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $CD, $E1, $F9, $EF, $F2, $AE, 1 ;  Mayor.
    .BYTE 3
    .BYTE $C0, $CF, $E8, $A0, $ED, $E5, $AC, $A0, $EF, $E8 ; *Oh me, oh my!
    .BYTE $A0, $ED, $F9, $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E9, $E3, $E8, $A0, $EF, $EE, $E5 ; *Which one?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $E7, $E9, $F6, $E5 ; *I'll give you
    .BYTE $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E6, $EF, $F2, 1 ;  for
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E1, $F4, $A0, $E1 ; *Is that alright?
    .BYTE $EC, $F2, $E9, $E7, $E8, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C6, $E9, $EE, $E4, $E9, $EE, $E7, $A0, $F4 ; *Finding the entry
    .BYTE $E8, $E5, $A0, $E5, $EE, $F4, $F2, $F9, 1
    .BYTE $A0, $E9, $EE, $A0, $C7, $F2, $E5, $E1, $F4, $AD ;  in Great-Grand
    .BYTE $C7, $F2, $E1, $EE, $E4, 1
    .BYTE $A0, $C6, $E1, $F4, $E8, $E5, $F2, $A7, $F3, $A0 ;  Father's Diary,
    .BYTE $C4, $E9, $E1, $F2, $F9, $AC, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E5, $E1, $E4, $A0, $EF, $F5, $F4, 1 ;  read out
    .BYTE $A0, $EC, $EF, $F5, $E4, $AE, $AE, $AE, 1 ;  loud...
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E6, $EF, $F2, $E7, $EF ; *The forgotten one
    .BYTE $F4, $F4, $E5, $EE, $A0, $EF, $EE, $E5, 1
    .BYTE $A0, $EF, $E6, $A0, $F4, $E8, $E5, $A0, $F3, $E8 ;  of the ship that
    .BYTE $E9, $F0, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F3, $E1, $E9, $EC, $F3, $A0, $F4, $E8, $E5 ;  sails the cosmos.
    .BYTE $A0, $E3, $EF, $F3, $ED, $EF, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $F9, $EF ; *I know you're
    .BYTE $F5, $A7, $F2, $E5, 1
    .BYTE $A0, $EC, $F9, $E9, $EE, $E7, $AE, $A0, $C9, $A0 ;  lying. I can see
    .BYTE $E3, $E1, $EE, $A0, $F3, $E5, $E5, 1
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A0, $F4, $E8, $F2 ;  right through you.
    .BYTE $EF, $F5, $E7, $E8, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $A8, $C1, $A0, $E4, $F5, $EC, $EC, $A0, $F2 ; *(A dull roar begins
    .BYTE $EF, $E1, $F2, $A0, $E2, $E5, $E7, $E9, $EE, $F3
    .BYTE 1
    .BYTE $A0, $F4, $EF, $A0, $F2, $E9, $F3, $E5, $A0, $E6 ;  to rise from the
    .BYTE $F2, $EF, $ED, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E3, $F2, $EF, $F7, $E4, $A9, 1 ;  crowd)
    .BYTE 3
    .BYTE $C0, $D7, $E5, $A0, $F0, $E1, $E9, $E4, $A0, $F4 ; *We paid to see a
    .BYTE $EF, $A0, $F3, $E5, $E5, $A0, $E1, 1
    .BYTE $A0, $F4, $F2, $E9, $EF, $A1, 1 ;  trio!
    .BYTE $A0, $D4, $E8, $E5, $F2, $E5, $A0, $E1, $F2, $E5 ;  There aren't three
    .BYTE $EE, $A7, $F4, $A0, $F4, $E8, $F2, $E5, $E5, 1
    .BYTE 3
    .BYTE $C0, $F0, $E5, $F2, $E6, $EF, $F2, $ED, $E5, $F2 ; *performers here!
    .BYTE $F3, $A0, $E8, $E5, $F2, $E5, $A1, 1
    .BYTE $A0, $C7, $F2, $F5, $ED, $E2, $EC, $E5, $A0, $E7 ;  Grumble grumble...
    .BYTE $F2, $F5, $ED, $E2, $EC, $E5, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E9, $E3, $E8, $A0, $EF, $EE, $E5 ; *Which one would
    .BYTE $A0, $F7, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $EC, $E9, $EB, $E5, $A0 ;  you like me to
    .BYTE $ED, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $EB, $E5, $E5, $F0, $A2, 1 ;  keep?
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C4, $F2, $E1, $E7, $EF ; *The Dragon was in
    .BYTE $EE, $A0, $F7, $E1, $F3, $A0, $E9, $EE, 1
    .BYTE $A0, $E1, $A0, $E4, $E5, $E5, $F0, $AC, $A0, $E4 ;  a deep, deep,
    .BYTE $E5, $E5, $F0, $AC, 1
    .BYTE $A0, $F3, $EC, $E5, $E5, $F0, $AE, 1 ;  sleep.
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E3, $E1, $EE, $A0 ; *What can I do
    .BYTE $C9, $A0, $E4, $EF, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, $A2, 1 ;  for you?
    .BYTE 0
    .BYTE $C0, $D9, $E5, $F3, $AC, $A0, $C9, $A0, $F7, $E9 ; *Yes, I will keep
    .BYTE $EC, $EC, $A0, $EB, $E5, $E5, $F0, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E9, $F4, $E8, 1 ;  with
    .BYTE $A0, $F5, $F4, $ED, $EF, $F3, $F4, $A0, $E3, $E1 ;  utmost care.
    .BYTE $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ; *Anything else you
    .BYTE $E5, $EC, $F3, $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $ED, $E5, $A0, $F4 ;  want me to keep?
    .BYTE $EF, $A0, $EB, $E5, $E5, $F0, $A2, 1
    .BYTE 0
    .BYTE $C0, $D3, $E5, $E5, $A0, $F9, $EF, $F5, $A0, $EC ; *See you later, and
    .BYTE $E1, $F4, $E5, $F2, $AC, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $E2, $F2, $EF, $F4, $E8, $E5, $F2, $AE, $AE ;  brother...
    .BYTE $AE, 1
    .BYTE $A0, $D9, $EF, $F5, $A0, $F4, $E1, $EB, $E5, $A0 ;  You take care!
    .BYTE $E3, $E1, $F2, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A0 ; *You want to take
    .BYTE $F4, $EF, $A0, $F4, $E1, $EB, $E5, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A2, 1            ; ?
    .BYTE 3
    .BYTE $C0, $CF, $CB, $A1, $A0, $C1, $EE, $F9, $F4, $E8 ; *OK! Anything else
    .BYTE $E9, $EE, $E7, $A0, $E5, $EC, $F3, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $E4, $A0, $EC, $E9, $EB ;  you'd like to take
    .BYTE $E5, $A0, $F4, $EF, $A0, $F4, $E1, $EB, $E5, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F9, $EF, $F5, $A2 ;  with you?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $F7, $E1, $F3 ; *There was a rock-
    .BYTE $A0, $E1, $A0, $F2, $EF, $E3, $EB, $AD, 1
    .BYTE $A0, $F3, $EC, $E9, $E4, $E5, $A0, $EE, $E5, $E1 ;  slide near Union
    .BYTE $F2, $A0, $D5, $EE, $E9, $EF, $EE, 1
    .BYTE $A0, $D3, $F4, $E1, $F4, $E9, $EF, $EE, $AE, 1 ;  Station.
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F4, $F2, $E1, $E9, $EE ; *The train can't get
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, $A0, $E7, $E5, $F4
    .BYTE 1
    .BYTE $A0, $F4, $E8, $F2, $EF, $F5, $E7, $E8, $A0, $F5 ;  through until it
    .BYTE $EE, $F4, $E9, $EC, $A0, $E9, $F4, 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $E2, $E5, $E5, $EE, $A0 ;  has been removed.
    .BYTE $F2, $E5, $ED, $EF, $F6, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $ED, $E5, $E1, $EE, 1 ; *You mean
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A2, 1            ; ?
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $E6, $F2, $E1 ; *I am afraid you
    .BYTE $E9, $E4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, $A0, $E3, $E1, $F2 ;  can't carry
    .BYTE $F2, $F9, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ;  anything more.
    .BYTE $ED, $EF, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A2, $A0, $A0, $D9, $EF, $F5, $A0 ; *Oh?  You don't
    .BYTE $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $F3, $E5, $E5, $ED, $A0, $F4, $EF, $A0, $E8 ;  seem to have
    .BYTE $E1, $F6, $E5, 1
    .BYTE $A0, $E5, $EE, $EF, $F5, $E7, $E8, $A0, $ED, $EF ;  enough money.
    .BYTE $EE, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A2, $A0, $A0, $D9, $EF, $F5, $A0 ; *Oh?  You seem to
    .BYTE $F3, $E5, $E5, $ED, $A0, $F4, $EF, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF, $EF, $A0 ;  have too much to
    .BYTE $ED, $F5, $E3, $E8, $A0, $F4, $EF, 1
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $AE, 1 ;  carry.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ; *You don't have
    .BYTE $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E5, $EE, $EF, $F5, $E7, $E8, $A0, $ED, $EF ;  enough money. Come
    .BYTE $EE, $E5, $F9, $AE, $A0, $C3, $EF, $ED, $E5, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $F7, $E8, $E5, $EE ;  back when you do.
    .BYTE $A0, $F9, $EF, $F5, $A0, $E4, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $E2, $F9, $E5, $A1 ; *Good bye!
    .BYTE 1
    .BYTE $A0, $C2, $E5, $A0, $E3, $E1, $F2, $E5, $E6, $F5 ;  Be careful.
    .BYTE $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $E1, $EE, $A7, $F4 ; *You can't carry
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ;  anything more.
    .BYTE $ED, $EF, $F2, $E5, $AE, $A0, 1
    .BYTE $A0, $D3, $E5, $E5, $A0, $F9, $EF, $F5, $A0, $EC ;  See you later...
    .BYTE $E1, $F4, $E5, $F2, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $E9, $F3, $A0, $F9 ; *Here is your
    .BYTE $EF, $F5, $F2, 1
    .BYTE $A0, $ED, $E5, $E4, $E9, $E3, $E9, $EE, $E5, $AE ;  medicine.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F0, $E5, $A0, $F9, $EF, $F5, $A0 ; *Hope you sleep
    .BYTE $F3, $EC, $E5, $E5, $F0, 1
    .BYTE $A0, $F7, $E5, $EC, $EC, $AE, 1 ;  well.
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $ED, $F5, $E3, $E8, $A0 ; *How much would you
    .BYTE $F7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, $A0, $F7 ;  like to withdraw?
    .BYTE $E9, $F4, $E8, $E4, $F2, $E1, $F7, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $ED, $F5, $E3, $E8, $A0 ; *How much would you
    .BYTE $F7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, $A0, $E4 ;  like to deposit?
    .BYTE $E5, $F0, $EF, $F3, $E9, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F7, $AC, $A0, $EC, $E5, $F4, $A7 ; *Now, let's go back
    .BYTE $F3, $A0, $E7, $EF, $A0, $E2, $E1, $E3, $EB, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $EF, $F7, $EE, $AE, 1 ;  to town.
    .BYTE 0
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $AC, $A0, $E2, $F5 ; *Sorry, but I am
    .BYTE $F4, $A0, $C9, $A0, $E1, $ED, 1
    .BYTE $A0, $E1, $E6, $F2, $E1, $E9, $E4, $A0, $F9, $EF ;  afraid you can't
    .BYTE $F5, $A0, $E3, $E1, $EE, $A7, $F4, 1
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $A0, $E1, $EC, $EC ;  carry all of them.
    .BYTE $A0, $EF, $E6, $A0, $F4, $E8, $E5, $ED, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $E1, $EE, $A7, $F4 ; *You can't carry it?
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $A0, $E9, $F4, $A2
    .BYTE 1
    .BYTE $A0, $D7, $E8, $E1, $F4, $A0, $E1, $A0, $F3, $E8 ;  What a shame!
    .BYTE $E1, $ED, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E3, $E1 ; *If you can't carry
    .BYTE $EE, $A7, $F4, $A0, $E3, $E1, $F2, $F2, $F9, 1
    .BYTE $A0, $E9, $F4, $AC, $A0, $E3, $EF, $ED, $E5, $A0 ;  it, come back some
    .BYTE $E2, $E1, $E3, $EB, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $EF, $F4, $E8, $E5, $F2, $A0, $F4, $E9, $ED ;  other time.
    .BYTE $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E9, $E3, $E8, $A0, $E6, $EC, $E9 ; *Which flightplan
    .BYTE $E7, $E8, $F4, $F0, $EC, $E1, $EE, 1
    .BYTE $A0, $F7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ;  would you like?
    .BYTE $A0, $EC, $E9, $EB, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, $A0, $F4 ; *I can't talk very
    .BYTE $E1, $EC, $EB, $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $F7, $E5, $EC, $EC, $A0, $F7, $E9, $F4, $E8 ;  well without my
    .BYTE $EF, $F5, $F4, $A0, $ED, $F9, 1
    .BYTE $A0, $C4, $E5, $EE, $F4, $F5, $F2, $E5, $F3, $AE ;  Dentures.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $AC, $A0, $F4, $E8, $E1, $F4, $A7 ; *No, that's not
    .BYTE $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $F1, $F5, $E9, $F4, $E5, $A0, $E5, $EE, $EF ;  quite enough.
    .BYTE $F5, $E7, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E9, $EE, $E7, $A0, $E1, $A0 ; *Having a tough
    .BYTE $F4, $EF, $F5, $E7, $E8, 1
    .BYTE $A0, $F4, $E9, $ED, $E5, $A2, 1 ;  time?
    .BYTE $A0, $C9, $A7, $ED, $A0, $F3, $EF, $A0, $F7, $EF ;  I'm so worried.
    .BYTE $F2, $F2, $E9, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $EC, $F5, $E3, $EB ; *Good luck!
    .BYTE $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $EF, $A7, $F3, $A0, $F4, $E8, $E5 ; *Who's the boss?
    .BYTE $A0, $E2, $EF, $F3, $F3, $A2, 1
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $F4, $E5, $E1, $E3 ;  I'll teach him
    .BYTE $E8, $A0, $E8, $E9, $ED, 1
    .BYTE $A0, $E1, $A0, $EC, $E5, $F3, $F3, $EF, $EE, $A1 ;  a lesson!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C2, $EC, $E1, $AD, $C2 ; *The Bla-Bla Gang
    .BYTE $EC, $E1, $A0, $C7, $E1, $EE, $E7, 1
    .BYTE $A0, $ED, $E5, $ED, $E2, $E5, $F2, $F3, $A0, $E1 ;  members are doing
    .BYTE $F2, $E5, $A0, $E4, $EF, $E9, $EE, $E7, 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $E6, $E9, $EE, $E5 ;  just fine.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $F2, $F9 ; *Don't try to make
    .BYTE $A0, $F4, $EF, $A0, $ED, $E1, $EB, $E5, 1
    .BYTE $A0, $ED, $E5, $A0, $ED, $E1, $E4, $AE, 1 ;  me mad.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F0, $E9, $E3, $EB, $E5, $E4, $A0, $F5, $F0 ;  picked up
    .BYTE 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $D0, $E1, $F3, $F3, $AE ;  the Pass.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C8, $ED, $ED, $AE, $AE, $AE, 1 ; *Hmm...
    .BYTE $A0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ;  You don't have
    .BYTE $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E5, $EE, $EF, $F5, $E7, $E8, $A0, $ED, $EF ;  enough money.
    .BYTE $EE, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $E5, $F4, $A7, $F3, $A0, $F3, $E5, $E5 ; *Let's see...
    .BYTE $AE, $AE, $AE, $A0, 1
    .BYTE $A0, $C9, $F4, $A0, $F3, $E5, $E5, $ED, $F3, $A0 ;  It seems that your
    .BYTE $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $EC, $EF, $E1, $E4, $A0, $E9, $F3, $A0, $F4 ;  load is too heavy.
    .BYTE $EF, $EF, $A0, $E8, $E5, $E1, $F6, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $C1, $E2, $EC, $E5 ; *I am Able, the
    .BYTE $AC, $A0, $F4, $E8, $E5, $A0, 1
    .BYTE $A0, $C4, $EF, $E3, $F4, $EF, $F2, $A7, $F3, $A0 ;  Doctor's assistant.
    .BYTE $E1, $F3, $F3, $E9, $F3, $F4, $E1, $EE, $F4, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F4, $EF, $EF, $A0, $F7, $EF, $F5 ; *I too would like
    .BYTE $EC, $E4, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E1, $F3, $F4, $E5, 1 ;  to taste
    .BYTE $A0, $D3, $F4, $F2, $E1, $F7, $C2, $E5, $F2, $F2 ;  StrawBerry Tofu.
    .BYTE $F9, $A0, $D4, $EF, $E6, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you, It
    .BYTE $AC, $A0, $C9, $F4, 1
    .BYTE $A0, $EC, $EF, $EF, $EB, $F3, $A0, $F3, $EF, $A0 ;  looks so good!
    .BYTE $E7, $EF, $EF, $E4, $A1, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $F3, $E8, $E1, $F2 ; *I'll share some
    .BYTE $E5, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $E9, $ED, $F0, $EF, $F2, $F4, $E1, $EE, $F4 ;  important
    .BYTE 1
    .BYTE $A0, $E9, $EE, $E6, $EF, $F2, $ED, $E1, $F4, $E9 ;  information.
    .BYTE $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $E5, $E1, $F2, $A0, $F4, $E8, $E5, $A0 ; *Near the summit of
    .BYTE $F3, $F5, $ED, $ED, $E9, $F4, $A0, $EF, $E6, 1
    .BYTE $A0, $CD, $EF, $F5, $EE, $F4, $A0, $C9, $F4, $EF ;  Mount Itoi...
    .BYTE $E9, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C4, $E5, $E5, $F0, $A0, $E9, $EE, $A0, $F4 ; *Deep in the lake,
    .BYTE $E8, $E5, $A0, $EC, $E1, $EB, $E5, $AC, 1
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $A0, $EC, $E9, $E5 ;  there lies a
    .BYTE $F3, $A0, $E1, 1
    .BYTE $A0, $E6, $E1, $EE, $F4, $E1, $F3, $F4, $E9, $E3 ;  fantastic robot.
    .BYTE $A0, $F2, $EF, $E2, $EF, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F4, $E8, $E9, $EE, $EB, $A0, $E9 ; *I think it still
    .BYTE $F4, $A0, $F3, $F4, $E9, $EC, $EC, 1
    .BYTE $A0, $F7, $EF, $F2, $EB, $F3, $AE, 1 ;  works.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EC, $EF, $EF, $EB, $A0, $EA, $F5 ; *I look just like
    .BYTE $F3, $F4, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $C1, $E2, $EC, $E5, $AC, $A0, $E2, $F5, $F4 ;  Able, but I am
    .BYTE $A0, $C9, $A0, $E1, $ED, 1
    .BYTE $A0, $C2, $E1, $EB, $E5, $F2, $AE, 1 ;  Baker.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E1, $EC, $F3, $EF, $A0, $F7, $E1 ; *I also want to try
    .BYTE $EE, $F4, $A0, $F4, $EF, $A0, $F4, $F2, $F9, 1
    .BYTE $A0, $D3, $F4, $F2, $E1, $F7, $C2, $E5, $F2, $F2 ;  StrawBerry Tofu.
    .BYTE $F9, $A0, $D4, $EF, $E6, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A1, $A0, $C9, $A7, $ED, $A0, $F3 ; *Oh! I'm so happy.
    .BYTE $EF, $A0, $E8, $E1, $F0, $F0, $F9, $AE, 1
    .BYTE $A0, $D4, $E1, $EB, $E5, $A0, $F4, $E8, $E5, $F3 ;  Take these Swear
    .BYTE $E5, $A0, $D3, $F7, $E5, $E1, $F2, 1
    .BYTE $A0, $D7, $EF, $F2, $E4, $F3, $A0, $F7, $E9, $F4 ;  Words with you.
    .BYTE $E8, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $A0, $A0, $CC, $E9, $E6, $E5, $D5, $F0, $A0, $A0 ;   LifeUp   Sleep
    .BYTE $A0, $D3, $EC, $E5, $E5, $F0, 0
    .BYTE $C0, $CC, $EF, $E1, $E4, $A0, $E9, $F3, $A0, $F4 ; *Load is too heavy?
    .BYTE $EF, $EF, $A0, $E8, $E5, $E1, $F6, $F9, $A2, 1
    .BYTE $A0, $D2, $E5, $ED, $E5, $ED, $E2, $E5, $F2, $A0 ;  Remember to come
    .BYTE $F4, $EF, $A0, $E3, $EF, $ED, $E5, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $E1, $EE, $E4, $A0 ;  back and get it.
    .BYTE $E7, $E5, $F4, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $E1, $ED, $E5, $A0 ; *You came to get
    .BYTE $F4, $EF, $A0, $E7, $E5, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $C2, $E9, $E7, $A0, $C2 ;  the Big Bag?
    .BYTE $E1, $E7, $A2, 1
    .BYTE $A0, $CD, $F9, $A0, $E7, $E9, $E6, $F4, $A0, $F4 ;  My gift to you.
    .BYTE $EF, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E7, $E9, $F6, $E5, $A0, $F9, $EF ; *I give you the
    .BYTE $F5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C2, $E9, $E7, $A0, $C2, $E1, $E7, $AE, 1 ;  Big Bag.
    .BYTE $A0, $C1, $A0, $E7, $E9, $E6, $F4, $A0, $E6, $EF ;  A gift for you.
    .BYTE $F2, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $EE, $EF, $F4, $A0 ; *It's not that big
    .BYTE $F4, $E8, $E1, $F4, $A0, $E2, $E9, $E7, 1
    .BYTE $A0, $EF, $E6, $A0, $E1, $A0, $F0, $F2, $EF, $E2 ;  of a problem.
    .BYTE $EC, $E5, $ED, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $F9, $A0, $F7, $E9, $E6, $E5, $A0, $E9 ; *My wife is a
    .BYTE $F3, $A0, $E1, 1
    .BYTE $A0, $E2, $E9, $E7, $E7, $E5, $F2, $A0, $F0, $F2 ;  bigger problem.
    .BYTE $EF, $E2, $EC, $E5, $ED, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $E8, $E5, $A0, $E4, $EF, $E5, $F3, $EE ; *She doesn't get
    .BYTE $A7, $F4, $A0, $E7, $E5, $F4, 1
    .BYTE $A0, $EF, $F5, $F4, $A0, $EF, $E6, $A0, $E2, $E5 ;  out of bed
    .BYTE $E4, 1
    .BYTE 3
    .BYTE $C0, $F5, $EE, $F4, $E9, $EC, $A0, $E1, $E6, $F4 ; *until after noon
    .BYTE $E5, $F2, $A0, $EE, $EF, $EF, $EE, 1
    .BYTE $A0, $E5, $E1, $E3, $E8, $A0, $E4, $E1, $F9, $AE ;  each day.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D3, $E8, $E5, $A0, $F7, $EF, $EE, $A7, $F4 ; *She won't even
    .BYTE $A0, $E5, $F6, $E5, $EE, 1
    .BYTE $A0, $F0, $E1, $E3, $EB, $A0, $ED, $E5, $A0, $E1 ;  pack me a brown
    .BYTE $A0, $E2, $F2, $EF, $F7, $EE, 1
    .BYTE $A0, $E2, $E1, $E7, $A0, $EC, $F5, $EE, $E3, $E8 ;  bag lunch!
    .BYTE $A1, 1
    .BYTE 3
    .BYTE $C0, $C9, $F3, $EE, $A7, $F4, $A0, $F4, $E8, $E1 ; *Isn't that just
    .BYTE $F4, $A0, $EA, $F5, $F3, $F4, 1
    .BYTE $A0, $E8, $EF, $F2, $F2, $E9, $E2, $EC, $E5, $AE ;  horrible.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A1, $A0, $EE, $EF, $A1, 1 ; *Oh! no!
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $F3, $A0, $E6, $E1, $E9, $EE, $F4 ;  has fainted!
    .BYTE $E5, $E4, $A1, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you for being
    .BYTE $A0, $E6, $EF, $F2, $A0, $E2, $E5, $E9, $EE, $E7
    .BYTE 1
    .BYTE $A0, $F3, $EF, $A0, $EE, $E9, $E3, $E5, $AE, $A0 ;  so nice.
    .BYTE 1
    .BYTE $A0, $CD, $F9, $A0, $E7, $F2, $E1, $F4, $E9, $F4 ;  My gratitude...
    .BYTE $F5, $E4, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $E2, $E5, $A0, $F7 ; *I'll be wagering on
    .BYTE $E1, $E7, $E5, $F2, $E9, $EE, $E7, $A0, $EF, $EE
    .BYTE 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $F3, $F5, $E3, $E3 ;  your success.
    .BYTE $E5, $F3, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $CC, $E1, $F5, $F2 ; *I am Laura.
    .BYTE $E1, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E1, $A0, $F3, $F5 ; *What a surprise!
    .BYTE $F2, $F0, $F2, $E9, $F3, $E5, $A1, 1
    .BYTE $A0, $CF, $F5, $F2, $A0, $E8, $E5, $F2, $EF, $A0 ;  Our hero
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $E9, $EE, $E7 ;  returning alone!
    .BYTE $A0, $E1, $EC, $EF, $EE, $E5, $A1, 1
    .BYTE 3
    .BYTE $C0, $D7, $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ; *Won't you stop and
    .BYTE $A0, $F3, $F4, $EF, $F0, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $F2, $E5, $F3, $F4, $A0, $E6, $EF, $F2, $A0 ;  rest for a while?
    .BYTE $E1, $A0, $F7, $E8, $E9, $EC, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $CC, $E9, $F4, $F4, $EC, $E5, $A0, $E7, $E9 ; *Little girl! This
    .BYTE $F2, $EC, $A1, $A0, $D4, $E8, $E9, $F3, 1
    .BYTE $A0, $E9, $F3, $A0, $EE, $EF, $A0, $F0, $EC, $E1 ;  is no place for a
    .BYTE $E3, $E5, $A0, $E6, $EF, $F2, $A0, $E1, 1
    .BYTE $A0, $E3, $E8, $E9, $EC, $E4, $A0, $EC, $E9, $EB ;  child like you.
    .BYTE $E5, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $EC, $EC, $EF, $AC, $A0 ; *Hello,
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE $A0, $C8, $EF, $F7, $A0, $E1, $F2, $E5, $A0, $F9 ;  How are you doing?
    .BYTE $EF, $F5, $A0, $E4, $EF, $E9, $EE, $E7, $A2, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $ED, $EF, $F2, $EE ; *Good morning!
    .BYTE $E9, $EE, $E7, $A1, 1
    .BYTE $A0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $E8 ;  Did you have a
    .BYTE $E1, $F6, $E5, $A0, $E1, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A0, $EE, $E9, $E7, $E8 ;  good night's rest?
    .BYTE $F4, $A7, $F3, $A0, $F2, $E5, $F3, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $EF ; *Please come again.
    .BYTE $ED, $E5, $A0, $E1, $E7, $E1, $E9, $EE, $AE, 1
    .BYTE $A0, $D0, $F2, $EF, $ED, $E9, $F3, $E5, $A0, $ED ;  Promise me you'll
    .BYTE $E5, $A0, $F9, $EF, $F5, $A7, $EC, $EC, 1
    .BYTE $A0, $E3, $EF, $ED, $E5, $A0, $E1, $E7, $E1, $E9 ;  come again!
    .BYTE $EE, $A1, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $ED, $EF, $F2, $EE ; *Good morning!
    .BYTE $E9, $EE, $E7, $A1, 1
    .BYTE 0
    .BYTE $C0, $CD, $EF, $F3, $F4, $A0, $ED, $EF, $EE, $EB ; *Most monkeys here
    .BYTE $E5, $F9, $F3, $A0, $E8, $E5, $F2, $E5, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $EC, $E9, $E5, $A0 ;  will lie to you.
    .BYTE $F4, $EF, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE $A0, $C2, $E5, $F7, $E1, $F2, $E5, $A1, 1 ;  Beware!
    .BYTE 0
    .BYTE $C0, $C8, $F5, $E8, $A0, $F7, $E8, $E1, $F4, $A2 ; *Huh what?
    .BYTE 1
    .BYTE $A0, $C4, $EF, $A0, $C9, $A0, $EC, $EF, $EF, $EB ;  Do I look like a
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $E1, 1
    .BYTE $A0, $ED, $EF, $EE, $EB, $E5, $F9, $A2, 1 ;  monkey?
    .BYTE 0
    .BYTE $C0, $AE, $AE, $AE, $C9, $A7, $ED, $A0, $F2, $E5 ; *...I'm really a
    .BYTE $E1, $EC, $EC, $F9, $A0, $E1, 1
    .BYTE $A0, $F2, $E1, $E3, $E3, $EF, $EF, $EE, $A0, $F0 ;  raccoon pretending
    .BYTE $F2, $E5, $F4, $E5, $EE, $E4, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $EF, $A0, $E2, $E5, $A0, $E1, $A0, $ED ;  to be a monkey.
    .BYTE $EF, $EE, $EB, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $A0 ; *You have good
    .BYTE $E7, $EF, $EF, $E4, 1
    .BYTE $A0, $E5, $F9, $E5, $F3, $E9, $E7, $E8, $F4, $AE ;  eyesight.
    .BYTE 1
    .BYTE $A0, $C8, $E1, $F4, $F3, $A0, $EF, $E6, $E6, $A0 ;  Hats off to you...
    .BYTE $F4, $EF, $A0, $F9, $EF, $F5, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C3, $EF, $EF, $EC, $A0, $E4, $EF, $F7, $EE ; *Cool down dude...
    .BYTE $A0, $E4, $F5, $E4, $E5, $AE, $AE, $AE, 1
    .BYTE $A0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $F3 ;  Are you so serious
    .BYTE $EF, $A0, $F3, $E5, $F2, $E9, $EF, $F5, $F3, 1
    .BYTE $A0, $E1, $EC, $EC, $A0, $F4, $E8, $E5, $A0, $F4 ;  all the time?
    .BYTE $E9, $ED, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $A0, $ED, $E1, $EE, $AE ; *Well man...
    .BYTE $AE, $AE, 1
    .BYTE $A0, $C9, $F4, $A7, $F3, $A0, $EC, $E9, $EB, $E5 ;  It's like you don't
    .BYTE $A0, $F9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4
    .BYTE 1
    .BYTE $A0, $EB, $EE, $EF, $F7, $A0, $F7, $E8, $E5, $EE ;  know when to quit.
    .BYTE $A0, $F4, $EF, $A0, $F1, $F5, $E9, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $E1, $A0, $F2, $E5 ; *Take a rest bud...
    .BYTE $F3, $F4, $A0, $E2, $F5, $E4, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $F4, $EF, $A0, $E8 ; *Good to hear it.
    .BYTE $E5, $E1, $F2, $A0, $E9, $F4, $AE, 1
    .BYTE $A0, $C9, $F4, $A7, $F3, $A0, $EA, $F5, $F3, $F4 ;  It's just a game!
    .BYTE $A0, $E1, $A0, $E7, $E1, $ED, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $E1, $F5, $E7, $E8 ; *You caught up with
    .BYTE $F4, $A0, $F5, $F0, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $ED, $E5, $AE, $A0, $C9, $A7, $EC, $EC, $A0 ;  me. I'll admit
    .BYTE $E1, $E4, $ED, $E9, $F4, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A7, $F3, $A0, $F3, $EF ;  that's something.
    .BYTE $ED, $E5, $F4, $E8, $E9, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $C9, $A7, $EC, $EC ; *Here I'll give you
    .BYTE $A0, $E7, $E9, $F6, $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something nice.
    .BYTE $A0, $EE, $E9, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $F5, $F2, $EE, $A0, $F2, $E9, $E7, $E8 ; *Turn right, then
    .BYTE $F4, $AC, $A0, $F4, $E8, $E5, $EE, 1
    .BYTE $A0, $EC, $E5, $E6, $F4, $AC, $A0, $F4, $EF, $A0 ;  left, to find
    .BYTE $E6, $E9, $EE, $E4, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something nice.
    .BYTE $A0, $EE, $E9, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F3, $EF, $A0, $F1 ; *It's so quiet here,
    .BYTE $F5, $E9, $E5, $F4, $A0, $E8, $E5, $F2, $E5, $AC
    .BYTE 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $F4, $EF, $EF, $A0, $F1 ;  but too quiet for
    .BYTE $F5, $E9, $E5, $F4, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $ED, $E5, $AC, $A0, $C9, $A0, $F4, $E8, $E9 ;  me, I think.
    .BYTE $EE, $EB, $AE, 1
    .BYTE 0
    .BYTE $C0, $CA, $F5, $F3, $F4, $A0, $F7, $E1, $EC, $EB ; *Just walk straight!
    .BYTE $A0, $F3, $F4, $F2, $E1, $E9, $E7, $E8, $F4, $A1
    .BYTE 1
    .BYTE $A0, $C6, $E9, $EE, $E4, $A0, $F4, $F2, $F5, $F4 ;  Find truth at the
    .BYTE $E8, $A0, $E1, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E5, $EE, $E4, $A0, $EF, $E6, $A0, $F4, $E8 ;  end of the path.
    .BYTE $E5, $A0, $F0, $E1, $F4, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $EC, $E1 ; *I am a lady...
    .BYTE $E4, $F9, $AE, $AE, $AE, 1
    .BYTE $A0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E1, $EC ;  Don't talk to me
    .BYTE $EB, $A0, $F4, $EF, $A0, $ED, $E5, 1
    .BYTE $A0, $F3, $EF, $A0, $E3, $E1, $F3, $F5, $E1, $EC ;  so casually.
    .BYTE $EC, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F4, $F2, $F5, $F4, $E8 ; *The truth is...
    .BYTE $A0, $E9, $F3, $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $ED, $E1 ;  I am a man.
    .BYTE $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $E1, $A0, $EC, $E1, $A0, $EC, $E1, $AC ; *La la la, la la ...
    .BYTE $A0, $EC, $E1, $A0, $EC, $E1, $A0, $AE, $AE, $AE
    .BYTE 1
    .BYTE $A0, $CE, $E5, $F6, $E5, $F2, $A0, $ED, $E9, $EE ;  Never mind, this
    .BYTE $E4, $AC, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $F3, $EF, $EE, $E7, $A0, $E9, $F3, $A0, $EE ;  song is not yours.
    .BYTE $EF, $F4, $A0, $F9, $EF, $F5, $F2, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $EC, $EF, $EE, $E7, $A0 ; *How long did it
    .BYTE $E4, $E9, $E4, $A0, $E9, $F4, 1
    .BYTE $A0, $F4, $E1, $EB, $E5, $A0, $F9, $EF, $F5, $A0 ;  take you to get
    .BYTE $F4, $EF, $A0, $E7, $E5, $F4, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A2, 1 ;  here?
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E7, $EF, $F4, $A0 ; *I've got a good
    .BYTE $E1, $A0, $E7, $EF, $EF, $E4, 1
    .BYTE $A0, $F3, $F4, $EF, $F2, $F9, $A0, $F4, $EF, $A0 ;  story to tell you.
    .BYTE $F4, $E5, $EC, $EC, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE $A0, $D7, $E1, $EE, $F4, $A0, $F4, $EF, $A0, $E8 ;  Want to hear it?
    .BYTE $E5, $E1, $F2, $A0, $E9, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AE, $AE, $AE, 1 ; *Well...
    .BYTE $A0, $D9, $EF, $F5, $A0, $F3, $E8, $EF, $F5, $EC ;  You should be nice
    .BYTE $E4, $A0, $E2, $E5, $A0, $EE, $E9, $E3, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $E6, $F2, $E9, $E5, $EE, $E4 ;  to friends.
    .BYTE $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $E1, $EC ; *That's all I've got
    .BYTE $EC, $A0, $C9, $A7, $F6, $E5, $A0, $E7, $EF, $F4
    .BYTE 1
    .BYTE $A0, $F4, $EF, $A0, $F3, $E1, $F9, $AE, 1 ;  to say.
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you no
    .BYTE $EE, $EF, 1
    .BYTE $A0, $E9, $EE, $F4, $E5, $EC, $EC, $E5, $E3, $F4 ;  intellectual
    .BYTE $F5, $E1, $EC, 1
    .BYTE $A0, $E1, $ED, $E2, $E9, $F4, $E9, $EF, $EE, $F3 ;  ambitions?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E7, $EF, $A0 ; *Don't go any
    .BYTE $E1, $EE, $F9, 1
    .BYTE $A0, $E6, $E1, $F2, $F4, $E8, $E5, $F2, $A0, $E9 ;  farther inside!
    .BYTE $EE, $F3, $E9, $E4, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F4 ; *I don't trust
    .BYTE $F2, $F5, $F3, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $F3, $E5, $A0, $ED, $EF, $EE ;  these monkeys.
    .BYTE $EB, $E5, $F9, $F3, $AE, $A0, 1
    .BYTE $A0, $D4, $E8, $E5, $F9, $A7, $F2, $E5, $A0, $E1 ;  They're all liars.
    .BYTE $EC, $EC, $A0, $EC, $E9, $E1, $F2, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F9, $A0, $F4, $E8, $E5, $A0, $F7, $E1 ; *By the way, go
    .BYTE $F9, $AC, $A0, $E7, $EF, 1
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $AC, $A0, $EC, $E5 ;  right, left, left
    .BYTE $E6, $F4, $AC, $A0, $EC, $E5, $E6, $F4, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F2, $E9, $E7, $E8, $F4 ;  and right.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D2, $E5, $F4, $F2, $E5, $E1, $F4, $A1, 1 ; *Retreat!
    .BYTE $A0, $C1, $EE, $E4, $A0, $E9, $E6, $A0, $F9, $EF ;  And if you don't
    .BYTE $F5, $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF, $AE, $AE ;  want to...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C7, $EF, $A0, $E2, $E1, $E3, $EB, $A1, 1 ; *Go back!
    .BYTE 3
    .BYTE $C0, $CF, $E8, $AC, $A0, $EE, $E5, $F6, $E5, $F2 ; *Oh, never mind.
    .BYTE $A0, $ED, $E9, $EE, $E4, $AE, 1
    .BYTE $A0, $C7, $EF, $A0, $E6, $EF, $F2, $F7, $E1, $F2 ;  Go forward!
    .BYTE $E4, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $EE, $A0, $F4, $E8, $E5, $A0, $F4, $EF ; *In the town by the
    .BYTE $F7, $EE, $A0, $E2, $F9, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F3, $E5, $E1, $AC, $A0, $F9, $EF, $F5, $A7 ;  sea, you'll meet a
    .BYTE $EC, $EC, $A0, $ED, $E5, $E5, $F4, $A0, $E1, 1
    .BYTE $A0, $EE, $E5, $F7, $A0, $E6, $F2, $E9, $E5, $EE ;  new friend.
    .BYTE $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $F1, $F5 ; *I am a quiet
    .BYTE $E9, $E5, $F4, 1
    .BYTE $A0, $ED, $EF, $EE, $EB, $E5, $F9, $AE, 1 ;  monkey.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F4 ; *I don't talk much.
    .BYTE $E1, $EC, $EB, $A0, $ED, $F5, $E3, $E8, $AE, 1
    .BYTE 3
    .BYTE $C0, $F9, $EF, $F5, $A0, $F3, $E5, $E5, $AE, $AE ; *you see...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $AE, $AE, $AE, $AE, $AE, $AE, $AE, $AE, $AE ; *............
    .BYTE $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0 ; *Oh
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E2, $E1, $E2, $F9, $AC, 1 ;  baby,
    .BYTE $A0, $C8, $F5, $E2, $E2, $E1, $A0, $E8, $F5, $E2 ;  Hubba hubba,
    .BYTE $E2, $E1, $AC, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A0, $E1, $A0, $E4, $E9 ;  what a dish.
    .BYTE $F3, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E2, $E5, $EC ; *Don't believe that
    .BYTE $E9, $E5, $F6, $E5, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E1, $EC, $EC, $A0, $ED, $EF, $EE, $EB, $E5 ;  all monkeys are
    .BYTE $F9, $F3, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $EC, $E9, $E1, $F2, $F3, $AE, 1 ;  liars.
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $EE, $EF ; *That's nothing but
    .BYTE $F4, $E8, $E9, $EE, $E7, $A0, $E2, $F5, $F4, 1
    .BYTE $A0, $E1, $A0, $EC, $E9, $E5, $AE, 1 ;  a lie.
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F4, $E8, $E5, $A0, $E2 ; *I'm the boss
    .BYTE $EF, $F3, $F3, 1
    .BYTE $A0, $ED, $EF, $EE, $EB, $E5, $F9, $AE, 1 ;  monkey.
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $F2, $E5, $E1, $EC, $EC ; *I'm really annoyed
    .BYTE $F9, $A0, $E1, $EE, $EE, $EF, $F9, $E5, $E4, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E8, $E5, $A0 ;  that the others
    .BYTE $EF, $F4, $E8, $E5, $F2, $F3, 1
    .BYTE $A0, $F4, $E5, $EC, $EC, $A0, $F3, $EF, $A0, $ED ;  tell so many lies.
    .BYTE $E1, $EE, $F9, $A0, $EC, $E9, $E5, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C7, $EF, $A0, $F3, $F4, $F2, $E1, $E9, $E7 ; *Go straight ahead,
    .BYTE $E8, $F4, $A0, $E1, $E8, $E5, $E1, $E4, $AC, 1
    .BYTE $A0, $D9, $EF, $F5, $A7, $EC, $EC, $A0, $E6, $E9 ;  You'll find an
    .BYTE $EE, $E4, $A0, $E1, $EE, 1
    .BYTE $A0, $E5, $F8, $E9, $F4, $A0, $F4, $EF, $A0, $F9 ;  exit to your right.
    .BYTE $EF, $F5, $F2, $A0, $F2, $E9, $E7, $E8, $F4, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C1, $A0, $E2, $E9, $E7, $A0, $ED, $E9, $F3 ; *A big mistake...
    .BYTE $F4, $E1, $EB, $E5, $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $A0, $F2, $E5, $E1, $EC, $EC, $F9, $A0 ;  I really shouldn't
    .BYTE $F3, $E8, $EF, $F5, $EC, $E4, $EE, $A7, $F4, 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E3, $EF, $ED, $E5 ;  have come here.
    .BYTE $A0, $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $EC, $F0, $A0, $ED, $E5, $A1, 1 ; *Help me!
    .BYTE 0
    .BYTE $C0, $D4, $E5, $EC, $E5, $F0, $E8, $EF, $EE, $E5 ; *Telephone!
    .BYTE $A1, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $F0, $EC, $E5, $E1, $F3, $E5, $A0, $E7 ; , please get
    .BYTE $E5, $F4, 1
    .BYTE $A0, $E9, $F4, $A1, 1 ;  it!
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $C1, $E2, $E2, $EF ; *I am Abbott, not
    .BYTE $F4, $F4, $AC, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $D4, $EF, $F7, $EE, $A0 ;  the Town Mayor,
    .BYTE $CD, $E1, $F9, $EF, $F2, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $E8, $E9, $F3, $A0, $E1 ;  but his assistant.
    .BYTE $F3, $F3, $E9, $F3, $F4, $E1, $EE, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $F2, $AE, $A0, $CD, $E1, $F9, $EF, $F2 ; *Mr. Mayor is over
    .BYTE $A0, $E9, $F3, $A0, $EF, $F6, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $AE, 1 ;  there.
    .BYTE 0
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $F3, $E8, $E1, $F2 ; *I'll share the
    .BYTE $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F3, $E5, $E3, $F2, $E5, $F4, $A0, $F7, $E9 ;  secret with you
    .BYTE $F4, $E8, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EC, $E1, $F4, $E5, $F2, $AE, 1 ;  later.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $EF, $ED, $E5, $A0 ; *You come to stay
    .BYTE $F4, $EF, $A0, $F3, $F4, $E1, $F9, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EE, $E9, $E7, $E8, $F4 ;  the night again?
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $A2, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $AC, $A0, $F4, $F2, $E1, $F6, $E5 ; *Oh, traveller!
    .BYTE $EC, $EC, $E5, $F2, $A1, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E7, $E8, $EF, $F3, $F4 ; *The ghost house is
    .BYTE $A0, $E8, $EF, $F5, $F3, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $EE, $EF, $F4, $A0, $E1, $A0, $F0, $EC, $E1 ;  not a place for
    .BYTE $E3, $E5, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F3, $EC, $E1, $F9, $E9, $EE, $E7, $A0, $ED ;  slaying monsters.
    .BYTE $EF, $EE, $F3, $F4, $E5, $F2, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ; *There is a...
    .BYTE $E1, $AE, $AE, $AE, 1
    .BYTE $A0, $ED, $E5, $EC, $EF, $E4, $F9, $AC, $A0, $E8 ;  melody, hee-hee,
    .BYTE $E5, $E5, $AD, $E8, $E5, $E5, $AC, 1
    .BYTE $A0, $E1, $A0, $E8, $E1, $F5, $EE, $F4, $E9, $EE ;  a haunting melody.
    .BYTE $E7, $A0, $ED, $E5, $EC, $EF, $E4, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $E5, $AD, $E8, $E5, $E5, $AD, $E8 ; *Hee-hee-hee.
    .BYTE $E5, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E2, $E5, $EC, $E9, $E5, $F6, $E5 ; *I believe that
    .BYTE $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $ED, $E1, $F9, $A0, $F3, $F4, $E9, $EC, $EC ;  may still
    .BYTE 1
    .BYTE $A0, $E2, $E5, $A0, $E6, $EF, $F5, $EE, $E4, $A0 ;  be found somewhere.
    .BYTE $F3, $EF, $ED, $E5, $F7, $E8, $E5, $F2, $E5, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $F5, $EE ; *You're under age.
    .BYTE $E4, $E5, $F2, $A0, $E1, $E7, $E5, $AE, 1
    .BYTE $A0, $C9, $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF ;  I have to take you
    .BYTE $A0, $F4, $E1, $EB, $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $EF, $A0, $E8, $E5, $E1 ;  in to headquarters.
    .BYTE $E4, $F1, $F5, $E1, $F2, $F4, $E5, $F2, $F3, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $F9 ; *I heard you
    .BYTE $EF, $F5, 1
    .BYTE $A0, $F3, $F4, $E5, $F0, $F0, $E5, $E4, $A0, $EF ;  stepped on the
    .BYTE $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $EC, $E1, $EE, $E4, $ED, $E9, $EE, $E5, $AE ;  landmine.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F3, $F4, $E5, $F0, $F0, $E5, $E4 ; *I stepped in dog
    .BYTE $A0, $E9, $EE, $A0, $E4, $EF, $E7, 1
    .BYTE $A0, $E3, $F2, $E1, $F0, $A0, $EF, $EE, $E3, $E5 ;  crap once myself.
    .BYTE $A0, $ED, $F9, $F3, $E5, $EC, $E6, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E5, $EC, $EC, $A0, $F9, $EF, $F5, $A0 ; *Tell you some-
    .BYTE $F3, $EF, $ED, $E5, $AD, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $A0, $E5, $EC, $F3 ;  thing else kid...
    .BYTE $E5, $A0, $EB, $E9, $E4, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E4, $E9, $E4, $EE, $A7, $F4, $A0 ; *I didn't like it
    .BYTE $EC, $E9, $EB, $E5, $A0, $E9, $F4, 1
    .BYTE $A0, $F6, $E5, $F2, $F9, $A0, $ED, $F5, $E3, $E8 ;  very much either!
    .BYTE $A0, $E5, $E9, $F4, $E8, $E5, $F2, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $F4 ; *I heard that you
    .BYTE $E8, $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $F4, $E5, $F0, $F0, $E5, $E4, $A0, $E9 ;  stepped in dog
    .BYTE $EE, $A0, $E4, $EF, $E7, 1
    .BYTE $A0, $E3, $F2, $E1, $F0, $A0, $E9, $EE, $A0, $D9 ;  crap in Yucca?
    .BYTE $F5, $E3, $E3, $E1, $A2, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A0, $F7, $E1, $F3, $EE ; *That wasn't very
    .BYTE $A7, $F4, $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $E3, $EF, $EF, $EC, $A0, $E2, $F5, $E4, $E4 ;  cool buddy.
    .BYTE $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $A6, $C3, $E5, $F2, $F4, $E9, $E6, $E9, $E3 ; *"Certificate"
    .BYTE $E1, $F4, $E5, $A6, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7420> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $A0, $E1, $E3, $EB, $EE, $EF, $F7 ; *We acknowledge the
    .BYTE $EC, $E5, $E4, $E7, $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E6, $E1, $E3, $F4, $A0, $F4, $E8, $E1, $F4 ;  fact that you did
    .BYTE $A0, $F9, $EF, $F5, $A0, $E4, $E9, $E4, 1
    .BYTE $A0, $F3, $F4, $E5, $F0, $A0, $EF, $EE, $A0, $F4 ;  step on the mine
    .BYTE $E8, $E5, $A0, $ED, $E9, $EE, $E5, 1
    .BYTE 3
    .BYTE $C0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $D9, $F5 ; *in the Yucca
    .BYTE $E3, $E3, $E1, 1
    .BYTE $A0, $C4, $E5, $F3, $E5, $F2, $F4, $AE, 1 ;  Desert.
    .BYTE 3
    .BYTE $C0, $CB, $E5, $E5, $F0, $A0, $F4, $E8, $E9, $F3 ; *Keep this place to
    .BYTE $A0, $F0, $EC, $E1, $E3, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $F3, $E5, $EC, $E6, $AC ;  yourself, please.
    .BYTE $A0, $F0, $EC, $E5, $E1, $F3, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $F3, $E9, $E7, $EE, $E5, $E4, $AE, $AE, $AE ; *signed...
    .BYTE 1
    .BYTE $A0, $D3, $E8, $E9, $E7, $E5, $F3, $E1, $F4, $EF ;  Shigesato Itoi.
    .BYTE $A0, $C9, $F4, $EF, $E9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $E4, $A0, $E1, $A0, $E7, $EF, $EF ; *Had a good sleep?
    .BYTE $E4, $A0, $F3, $EC, $E5, $E5, $F0, $A2, 1
    .BYTE $A0, $C8, $E1, $F6, $E5, $A0, $E1, $A0, $EE, $E9 ;  Have a nice trip!
    .BYTE $E3, $E5, $A0, $F4, $F2, $E9, $F0, $A1, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A1, $A0, $EE, $EF, $F4, $A0, $F6 ; *Oh! not visiting a
    .BYTE $E9, $F3, $E9, $F4, $E9, $EE, $E7, $A0, $E1, 1
    .BYTE $A0, $F0, $E1, $F4, $E9, $E5, $EE, $F4, $A2, 1 ;  patient?
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E1, $F2 ; *If you are the
    .BYTE $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F0, $E1, $F4, $E9, $E5, $EE, $F4, $AC, $A0 ;  patient, please go
    .BYTE $F0, $EC, $E5, $E1, $F3, $E5, $A0, $E7, $EF, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $E2, $E1 ;  to the back room.
    .BYTE $E3, $EB, $A0, $F2, $EF, $EF, $ED, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $AC, $A0, $EE, $EF ; *Sorry, no patient
    .BYTE $A0, $F0, $E1, $F4, $E9, $E5, $EE, $F4, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $E2, $F9, $A0, $F4 ;  here by that name.
    .BYTE $E8, $E1, $F4, $A0, $EE, $E1, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $F9, $E5, $E1, $F2 ; *This year's flu is
    .BYTE $A7, $F3, $A0, $E6, $EC, $F5, $A0, $E9, $F3, 1
    .BYTE $A0, $E7, $EF, $A0, $E2, $E1, $E4, $AE, $A0, $C9 ;  go bad. I lost so
    .BYTE $A0, $EC, $EF, $F3, $F4, $A0, $F3, $EF, 1
    .BYTE $A0, $ED, $F5, $E3, $E8, $A0, $F7, $E5, $E9, $E7 ;  much weight.
    .BYTE $E8, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E8 ; *I don't have a
    .BYTE $E1, $F6, $E5, $A0, $E1, 1
    .BYTE $A0, $E3, $EF, $EC, $E4, $AE, 1 ;  cold.
    .BYTE $A0, $C3, $EF, $F5, $E7, $E8, $AC, $A0, $E3, $EF ;  Cough, cough, hack.
    .BYTE $F5, $E7, $E8, $AC, $A0, $E8, $E1, $E3, $EB, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $EA, $F5, $F3, $F4, $A0 ; *I'm just talking
    .BYTE $F4, $E1, $EC, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $EF, $A0, $ED, $F9, $F3, $E5, $EC, $E6 ;  to myself.
    .BYTE $AE, 1
    .BYTE $A0, $C3, $EF, $F5, $E7, $E8, $AC, $A0, $E8, $E1 ;  Cough, hack hack.
    .BYTE $E3, $EB, $A0, $E8, $E1, $E3, $EB, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $E5, $F6, $E5, $F2, $A0 ; *Whenever you get
    .BYTE $F9, $EF, $F5, $A0, $E7, $E5, $F4, 1
    .BYTE $A0, $F4, $E9, $F2, $E5, $E4, $AC, $A0, $EA, $F5 ;  tired, just drop
    .BYTE $F3, $F4, $A0, $E4, $F2, $EF, $F0, 1
    .BYTE $A0, $E2, $F9, $A0, $EF, $F5, $F2, $A0, $C9, $EE ;  by our Inn.
    .BYTE $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E9, $A0 ; *Hi
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $C9, $A7, $EC, $EC, 1 ; , I'll
    .BYTE $A0, $E3, $E1, $F4, $E3, $E8, $A0, $F9, $EF, $F5 ;  catch you later,
    .BYTE $A0, $EC, $E1, $F4, $E5, $F2, $AC, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $E1, $A0, $EC, $E9, $F4 ; *I'm a little busy
    .BYTE $F4, $EC, $E5, $A0, $E2, $F5, $F3, $F9, 1
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A0, $EE, $EF, $F7 ;  right now.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $A0, $F2, $E5, $F3, $F4, $E1, $F5, $F2 ; *A restaurant, rant,
    .BYTE $E1, $EE, $F4, $AC, $A0, $F2, $E1, $EE, $F4, $AC
    .BYTE 1
    .BYTE $A0, $F2, $E1, $EE, $F4, $AC, $A0, $F2, $E1, $EE ;  rant, rant...
    .BYTE $F4, $AE, $AE, $AE, 1
    .BYTE $A0, $C8, $E1, $F0, $F0, $F9, $A0, $F2, $E5, $F3 ;  Happy restaurant,
    .BYTE $F4, $E1, $F5, $F2, $E1, $EE, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $F2, $E1, $EE, $F4, $AC, $A0, $F2, $E1, $EE ; *rant, rant, rant...
    .BYTE $F4, $AC, $A0, $F2, $E1, $EE, $F4, $AE, $AE, $AE
    .BYTE 1
    .BYTE $A0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $E8 ;  Are you happy?
    .BYTE $E1, $F0, $F0, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $C1, $EC, $EC, $A0, $F2, $E5, $F3, $F4, $E1 ; *All restaurant
    .BYTE $F5, $F2, $E1, $EE, $F4, 1
    .BYTE $A0, $EF, $F7, $EE, $E5, $F2, $F3, $A0, $EC, $EF ;  owners love
    .BYTE $F6, $E5, 1
    .BYTE $A0, $ED, $F5, $F3, $E9, $E3, $E1, $EC, $F3, $A1 ;  musicals!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F4, $E8, $E9, $EE, $EB, $A0 ; *I think
    TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E9, $F3, $A0, $E4, $E5, $EC, $E9, $E3, $E9 ;  is delicious, too.
    .BYTE $EF, $F5, $F3, $AC, $A0, $F4, $EF, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C8, $EF, $F4, $E5, $EC ; *The Hotel in this
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $F4, $EF, $F7, $EE, $A0, $E9, $F3, $EE, $A7 ;  town isn't any
    .BYTE $F4, $A0, $E1, $EE, $F9, $A0, 1
    .BYTE $A0, $E2, $E5, $F4, $F4, $E5, $F2, $A0, $F4, $E8 ;  better than the
    .BYTE $E1, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE 3
    .BYTE $C0, $EF, $EE, $E5, $A0, $E9, $EE, $A0, $D0, $EF ; *one in Podunk,
    .BYTE $E4, $F5, $EE, $EB, $AC, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F9, $E5, $F4, $A0, $E9 ;  and yet it
    .BYTE $F4, 1
    .BYTE $A0, $E9, $F3, $A0, $F3, $EF, $A0, $E5, $F8, $F0 ;  is so expensive...
    .BYTE $E5, $EE, $F3, $E9, $F6, $E5, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $EF, $EF, $ED, $A0 ; *The room rate at
    .BYTE $F2, $E1, $F4, $E5, $A0, $E1, $F4, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $C8, $EF, $F4, $E5 ;  this Hotel is so
    .BYTE $EC, $A0, $E9, $F3, $A0, $F3, $EF, 1
    .BYTE $A0, $E9, $EE, $E5, $F8, $F0, $E5, $EE, $F3, $E9 ;  inexpensive...
    .BYTE $F6, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $E4, $A0, $F4, $E8, $E1, $F4, $A7 ; *And that's not
    .BYTE $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $F7, $E8, $E5, $F2, $E5, $A0, $E9, $F4, $A0 ;  where it stops
    .BYTE $F3, $F4, $EF, $F0, $F3, 1
    .BYTE $A0, $E2, $E5, $E9, $EE, $E7, $A0, $E3, $E8, $E5 ;  being cheap either.
    .BYTE $E1, $F0, $A0, $E5, $E9, $F4, $E8, $E5, $F2, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C2, $E9, $E7, $A0, $F2, $EF, $E3, $EB, $F3 ; *Big rocks block
    .BYTE $A0, $E2, $EC, $EF, $E3, $EB, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F2, $E1, $E9, $EC, $F2 ;  the railroad. The
    .BYTE $EF, $E1, $E4, $AE, $A0, $D4, $E8, $E5, 1
    .BYTE $A0, $F4, $F2, $E1, $E9, $EE, $A0, $E3, $E1, $EE ;  train cannot pass.
    .BYTE $EE, $EF, $F4, $A0, $F0, $E1, $F3, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $E1, $EE, $A0, $E3 ; *You can converse
    .BYTE $EF, $EE, $F6, $E5, $F2, $F3, $E5, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $E1, $EE, $E9, $ED ;  with animals.
    .BYTE $E1, $EC, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E5, $EC, $EC, $A0, $F9, $EF, $F5, $A0 ; *Tell you a secret.
    .BYTE $E1, $A0, $F3, $E5, $E3, $F2, $E5, $F4, $AE, 1
    .BYTE $A0, $D7, $E8, $F9, $A0, $E4, $EF, $EE, $A7, $F4 ;  Why don't you
    .BYTE $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $C3, $C8, $C5, $C3, $CB, $A0, $ED, $E5, $A0 ;  CHECK me out?
    .BYTE $EF, $F5, $F4, $A2, 1
    .BYTE 3
    .BYTE $C0, $C2, $EF, $F7, $A0, $F7, $EF, $F7, $A1, 1 ; *Bow wow!
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ; *You don't have
    .BYTE $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E5, $EE, $EF, $F5, $E7, $E8, $A0, $ED, $EF ;  enough money.
    .BYTE $EE, $E5, $F9, $AE, 1
    .BYTE $A0, $D3, $EF, $F2, $F2, $F9, $AC, $A0, $E3, $EF ;  Sorry, come again.
    .BYTE $ED, $E5, $A0, $E1, $E7, $E1, $E9, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C3, $E1, $EE, $A0, $C9, $A0, $E8, $E5, $EC ; *Can I help you?
    .BYTE $F0, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F5, $F3 ;  Please use this
    .BYTE $E5, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $ED, $E5, $EE, $F5, $AE, 1 ;  menu.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you very much.
    .BYTE $A0, $F6, $E5, $F2, $F9, $A0, $ED, $F5, $E3, $E8
    .BYTE $AE, 1
    .BYTE $A0, $CF, $EE, $E5, $A0 ;  One
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F4, $EF, $A0, $E7, $EF, $AC, $A0, $F0, $EC ;  to go, please!
    .BYTE $E5, $E1, $F3, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $A0, $ED, $E1, $F9, $A0, $EE, $EF ; *He may not come
    .BYTE $F4, $A0, $E3, $EF, $ED, $E5, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $AE, $AE, $AE, 1 ;  again...
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F0, $E5, $A0, $F9, $EF, $F5, $A0 ; *Hope you enjoy
    .BYTE $E5, $EE, $EA, $EF, $F9, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $F3, $E5, $EC, $E6, $A0 ;  yourself here.
    .BYTE $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $AC, $A0, $F7, $E1, $E9, $F4 ; *Hey, waiter...
    .BYTE $E5, $F2, $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $A7, $ED, $A0, $F3, $F4, $E9, $EC, $EC ;  I'm still waiting
    .BYTE $A0, $F7, $E1, $E9, $F4, $E9, $EE, $E7, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F3, $EF, $ED, $E5, $A0 ;  for some service.
    .BYTE $F3, $E5, $F2, $F6, $E9, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF ; *I want to try
    .BYTE $A0, $F4, $F2, $F9, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7689> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C9, $A7, $E4, $A0, $EC, $E9, $EB, $E5, $A0 ; *I'd like to stop
    .BYTE $F4, $EF, $A0, $F3, $F4, $EF, $F0, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $FA, $EF, $ED, $E2, $E9 ;  the zombies evil
    .BYTE $E5, $F3, $A0, $E5, $F6, $E9, $EC, 1
    .BYTE $A0, $F7, $E1, $F9, $F3, $AC, $A0, $E2, $F5, $F4 ;  ways, but...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $F9, $A0, $E4, $EF, $A0, $EE ; *They do not listen
    .BYTE $EF, $F4, $A0, $EC, $E9, $F3, $F4, $E5, $EE, 1
    .BYTE $A0, $F4, $EF, $A0, $ED, $E5, $AC, $A0, $EF, $F2 ;  to me, or won't
    .BYTE $A0, $F7, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $E5, $F6, $E5, $EE, $A0, $F4, $E1, $EC, $EB ;  even talk to me...
    .BYTE $A0, $F4, $EF, $A0, $ED, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F7, $A0, $C9, $A0, $E1, $ED, $A0 ; *Now I am too
    .BYTE $F4, $EF, $EF, 1
    .BYTE $A0, $F3, $E3, $E1, $F2, $E5, $E4, $A0, $F4, $EF ;  scared to leave
    .BYTE $A0, $EC, $E5, $E1, $F6, $E5, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F0, $EC, $E1, $E3 ;  this place.
    .BYTE $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $ED, $E5, $A0, $D0 ; *It's me Pippi!
    .BYTE $E9, $F0, $F0, $E9, $A1, 1
    .BYTE $A0, $D7, $E5, $A0, $ED, $E5, $E5, $F4, $A0, $EF ;  We meet once more
    .BYTE $EE, $E3, $E5, $A0, $ED, $EF, $F2, $E5, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 3
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F3, $E1, $F9 ; *Don't say anything,
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $AC
    .BYTE 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $C9, $A0, $E4, $E9, $E4 ;  but I didn't tell
    .BYTE $EE, $A7, $F4, $A0, $F4, $E5, $EC, $EC, 1
    .BYTE $A0, $ED, $F9, $A0, $CD, $EF, $ED, $A0, $C9, $A0 ;  my Mom I came here.
    .BYTE $E3, $E1, $ED, $E5, $A0, $E8, $E5, $F2, $E5, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A1, 1 ; *My!
    .BYTE $A0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $F4 ;  You are that
    .BYTE $E8, $E1, $F4, 1
    .BYTE $A0, $F3, $EE, $EF, $F4, $AD, $EE, $EF, $F3, $E5 ;  snot-nosed
    .BYTE $E4, $A0
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F7, $E8, $EF, $A0, $F3, $E1, $F4, $A0, $EE ; *who sat next
    .BYTE $E5, $F8, $F4, 1
    .BYTE $A0, $F4, $EF, $A0, $ED, $E5, $A0, $E9, $EE, 1 ;  to me in
    .BYTE $A0, $EB, $E9, $EE, $E4, $E5, $F2, $E7, $E1, $F2 ;  kindergarten!
    .BYTE $F4, $E5, $EE, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E3, $E1, $F3, $E8 ; *It's cash, then
    .BYTE $AC, $A0, $F4, $E8, $E5, $EE, 1
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $A0, $A7, $F2, $EF ;  carry 'round here
    .BYTE $F5, $EE, $E4, $A0, $E8, $E5, $F2, $E5, 1
    .BYTE $A0, $E2, $EF, $F9, $AE, $AE, $AE, 1 ;  boy...
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $EE, $EF, $F4, $A0 ; *It's not that I
    .BYTE $F4, $E8, $E1, $F4, $A0, $C9, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $F4, $F2, $F5 ;  don't trust you,
    .BYTE $F3, $F4, $A0, $F9, $EF, $F5, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $AE, $AE, $AE, 1 ;  but...
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $E5, $E5, $ED, $A0 ; *You seem to have
    .BYTE $F4, $EF, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $F1, $F5, $E9, $F4, $E5, $A0, $E1, $EE, $A0 ;  quite an appetite.
    .BYTE $E1, $F0, $F0, $E5, $F4, $E9, $F4, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F4, $F2, $E1, $E9, $EE ; *The trains have
    .BYTE $F3, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $F3, $F4, $EF, $F0, $F0, $E5, $E4, $AE, $A0 ;  stopped. The
    .BYTE $D4, $E8, $E5, 1
    .BYTE $A0, $F4, $F2, $E1, $E3, $EB, $A0, $F7, $E1, $F3 ;  track was ruined.
    .BYTE $A0, $F2, $F5, $E9, $EE, $E5, $E4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F4, $E8, $E5, $A0 ; *It's the end of
    .BYTE $E5, $EE, $E4, $A0, $EF, $E6, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F7, $EF, $F2, $EC, $E4 ;  the world, and you
    .BYTE $AC, $A0, $E1, $EE, $E4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $E1, $F3, $EB, $A0 ;  just ask questions.
    .BYTE $F1, $F5, $E5, $F3, $F4, $E9, $EF, $EE, $F3, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D3, $F4, $EF, $F0, $A0, $E1, $F3, $EB, $E9 ; *Stop asking so
    .BYTE $EE, $E7, $A0, $F3, $EF, 1
    .BYTE $A0, $ED, $E1, $EE, $F9, $A0, $F1, $F5, $E5, $F3 ;  many questions or
    .BYTE $F4, $E9, $EF, $EE, $F3, $A0, $EF, $F2, 1
    .BYTE $A0, $C9, $A7, $EC, $EC, $A0, $F3, $F4, $E1, $F2 ;  I'll start to cry.
    .BYTE $F4, $A0, $F4, $EF, $A0, $E3, $F2, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F3, $F4, $EF ; *Don't stop...
    .BYTE $F0, $AE, $AE, $AE, 1
    .BYTE $A0, $CB, $E5, $E5, $F0, $A0, $EF, $EE, $A0, $F7 ;  Keep on walking!
    .BYTE $E1, $EC, $EB, $E9, $EE, $E7, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $EC, $EF, $EF, $EB, $A0 ; *You look like you've
    .BYTE $EC, $E9, $EB, $E5, $A0, $F9, $EF, $F5, $A7, $F6
    .BYTE $E5, 1
    .BYTE $A0, $E2, $E5, $E5, $EE, $A0, $F4, $E8, $F2, $EF ;  been through a lot.
    .BYTE $F5, $E7, $E8, $A0, $E1, $A0, $EC, $EF, $F4, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $F9, $EF, $F5, $F2 ; *Take your time,
    .BYTE $A0, $F4, $E9, $ED, $E5, $AC, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, $A0, $E1, $E2, $EF ;  think about
    .BYTE $F5, $F4, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $A7 ;  what you've done.
    .BYTE $F6, $E5, $A0, $E4, $EF, $EE, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E8, $E5, $E1, $F2 ; *I've heard about
    .BYTE $E4, $A0, $E1, $E2, $EF, $F5, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $F7, $EF, $EE, $E4 ;  your wonderful
    .BYTE $E5, $F2, $E6, $F5, $EC, 1
    .BYTE $A0, $E1, $E4, $F6, $E5, $EE, $F4, $F5, $F2, $E5 ;  adventures.
    .BYTE $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $F3 ; *You are so brave,
    .BYTE $EF, $A0, $E2, $F2, $E1, $F6, $E5, $AC, 1
    .BYTE $A0, $E1, $F2, $E5, $EE, $A7, $F4, $A0, $F9, $EF ;  aren't you?
    .BYTE $F5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C3, $E1, $EE, $E1, $F2 ; *The Canary Village
    .BYTE $F9, $A0, $D6, $E9, $EC, $EC, $E1, $E7, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $EE, $EF, $F2, $F4, $E8, $F7 ;  is northwest from
    .BYTE $E5, $F3, $F4, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $AE, 1 ;  here.
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E1, $A0, $EE, $E9 ; *It's a nice place
    .BYTE $E3, $E5, $A0, $F0, $EC, $E1, $E3, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $F6, $E9, $F3, $E9, $F4, $A0 ;  to visit and
    .BYTE $E1, $EE, $E4, 1
    .BYTE $A0, $E1, $E4, $ED, $E9, $F3, $F3, $E9, $EF, $EE ;  admission is free!
    .BYTE $A0, $E9, $F3, $A0, $E6, $F2, $E5, $E5, $A1, 1
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF

; CHARS BANKS 0xA8 - 0xAF
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $E5, $E3, $E5, $F0 ; *The receptionist at
    .BYTE $F4, $E9, $EF, $EE, $E9, $F3, $F4, $A0, $E1, $F4
    .BYTE 1
    .BYTE $A0, $C3, $E9, $F4, $F9, $A0, $C8, $E1, $EC, $EC ;  City Hall is so
    .BYTE $A0, $E9, $F3, $A0, $F3, $EF, 1
    .BYTE $A0, $E7, $EF, $F2, $E7, $E5, $EF, $F5, $F3, $AE ;  gorgeous.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $A0 ; *Hey
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $E8, $EF, $F7, $A7, $F3, 1 ; , how's
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $E1, $F3, $F4, $E8 ;  your asthma?
    .BYTE $ED, $E1, $A2, 1
    .BYTE 3
    .BYTE $C0, $CD, $E9, $EE, $E5, $A0, $E8, $E1, $F3, $A0 ; *Mine has gotten
    .BYTE $E7, $EF, $F4, $F4, $E5, $EE, 1
    .BYTE $A0, $E2, $E5, $F4, $F4, $E5, $F2, $AC, 1 ;  better,
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $E3, $E1, $F2, $A0, $E5 ; *but car exhausts
    .BYTE $F8, $E8, $E1, $F5, $F3, $F4, $F3, 1
    .BYTE $A0, $F3, $F4, $E9, $EC, $EC, $A0, $F3, $E5, $F4 ;  still sets it off.
    .BYTE $F3, $A0, $E9, $F4, $A0, $EF, $E6, $E6, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F4, $EF, $EC, $E4, $A0, $ED, $F9 ; *I told my kid to
    .BYTE $A0, $EB, $E9, $E4, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $F4, $F5, $E4, $F9, $AC, $A0, $F4, $E8 ;  study, then play
    .BYTE $E5, $EE, $A0, $F0, $EC, $E1, $F9, 1
    .BYTE $A0, $CE, $E9, $EE, $F4, $E5, $EE, $E4, $EF, $A0 ;  Nintendo games.
    .BYTE $E7, $E1, $ED, $E5, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $EF, $F3, $E5, $A0, $E1, $F2, $E5 ; *Those are the
    .BYTE $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $F5, $EC, $E5, $F3, $A0, $E1, $F2, $EF ;  rules around my
    .BYTE $F5, $EE, $E4, $A0, $ED, $F9, 1
    .BYTE $A0, $E8, $EF, $F5, $F3, $E5, $A1, 1 ;  house!
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $EC, $EF, $EF, $EB, $A0 ; *You look so happy
    .BYTE $F3, $EF, $A0, $E8, $E1, $F0, $F0, $F9, 1
    .BYTE $A0, $E1, $EC, $EC, $A0, $EF, $E6, $A0, $F4, $E8 ;  all of the time!
    .BYTE $E5, $A0, $F4, $E9, $ED, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C4, $F5, $EE, $E3, $E1, $EE, $A0, $C5, $EE ; *Duncan Enterprises
    .BYTE $F4, $E5, $F2, $F0, $F2, $E9, $F3, $E5, $F3, 1
    .BYTE $A0, $F0, $EC, $E1, $EE, $F3, $A0, $F4, $EF, $A0 ;  plans to build a
    .BYTE $E2, $F5, $E9, $EC, $E4, $A0, $E1, 1
    .BYTE $A0, $F3, $F4, $F2, $E9, $F0, $AD, $EA, $EF, $E9 ;  strip-joint here.
    .BYTE $EE, $F4, $A0, $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $A0, $EF, $EE, $E5, $A0, $E9, $EE ; *No one in town
    .BYTE $A0, $F4, $EF, $F7, $EE, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $F3, $A0, $F4, $E8, $E5 ;  likes the idea of
    .BYTE $A0, $E9, $E4, $E5, $E1, $A0, $EF, $E6, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $E1, $F4, $A0, $E1 ;  that at all!
    .BYTE $EC, $EC, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $E4, $A0, $EC, $E9, $EB, $E5, $A0 ; *I'd like to be a
    .BYTE $F4, $EF, $A0, $E2, $E5, $A0, $E1, 1
    .BYTE $A0, $E4, $EF, $E3, $F4, $EF, $F2, $AC, $A0, $E1 ;  doctor, and help
    .BYTE $EE, $E4, $A0, $E8, $E5, $EC, $F0, 1
    .BYTE $A0, $F3, $E9, $E3, $EB, $A0, $F0, $E5, $EF, $F0 ;  sick people...
    .BYTE $EC, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $E1, $EE, $E4, $A0, $ED, $E1, $EB, $E5, $A0 ; *and make lots of
    .BYTE $EC, $EF, $F4, $F3, $A0, $EF, $E6, 1
    .BYTE $A0, $ED, $EF, $EE, $E5, $F9, $A0, $E4, $EF, $E9 ;  money doing it.
    .BYTE $EE, $E7, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D2, $E5, $E1, $EC, $EC, $F9, $A2, $A0, $D4 ; *Really? This is
    .BYTE $E8, $E9, $F3, $A0, $E9, $F3, 1
    .BYTE $A0, $E1, $A0, $F2, $E5, $F3, $F0, $E5, $E3, $F4 ;  a respectable
    .BYTE $E1, $E2, $EC, $E5, 1
    .BYTE $A0, $F3, $F5, $F2, $F6, $E5, $F9, $AE, $AE, $AE ;  survey...
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C7, $E5, $F4, $A0, $F4, $EF, $A0, $F3, $E3 ; *Get to school!
    .BYTE $E8, $EF, $EF, $EC, $A1, 1
    .BYTE $A0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $E1 ;  You are a school
    .BYTE $A0, $F3, $E3, $E8, $EF, $EF, $EC, 1
    .BYTE $A0, $E2, $EF, $F9, $AC, $A0, $E1, $F2, $E5, $EE ;  boy, aren't you?
    .BYTE $A7, $F4, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $A0, $E3, $E1, $EE, $A0, $F7 ; *How can we get the
    .BYTE $E5, $A0, $E7, $E5, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E2, $E9, $E7, $A0, $F2, $EF, $E3, $EB, $F3 ;  big rocks off the
    .BYTE $A0, $EF, $E6, $E6, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $E1, $E9, $EC, $F2, $EF, $E1, $E4, $A0 ;  railroad tracks?
    .BYTE $F4, $F2, $E1, $E3, $EB, $F3, $A2, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $E2, $E5, $F4, $A0 ; *I'll bet the Mayor
    .BYTE $F4, $E8, $E5, $A0, $CD, $E1, $F9, $EF, $F2, 1
    .BYTE $A0, $EC, $E5, $E1, $F6, $E5, $F3, $A0, $F4, $E8 ;  leaves them there
    .BYTE $E5, $ED, $A0, $F4, $E8, $E5, $F2, $E5, 1
    .BYTE $A0, $A7, $F4, $E9, $EC, $A0, $E5, $EC, $E5, $E3 ;  'til election time.
    .BYTE $F4, $E9, $EF, $EE, $A0, $F4, $E9, $ED, $E5, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E8, $E5, $E1, $F2 ; *I've heard that in
    .BYTE $E4, $A0, $F4, $E8, $E1, $F4, $A0, $E9, $EE, 1
    .BYTE $A0, $C4, $F5, $EE, $E3, $E1, $EE, $A7, $F3, 1 ;  Duncan's
    .BYTE $A0, $C6, $E1, $E3, $F4, $EF, $F2, $F9, $A0, $F5 ;  Factory up north,
    .BYTE $F0, $A0, $EE, $EF, $F2, $F4, $E8, $AC, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $F9, $A7, $F6, $E5, $A0, $F3 ; *they've started
    .BYTE $F4, $E1, $F2, $F4, $E5, $E4, 1
    .BYTE $A0, $E2, $F5, $E9, $EC, $E4, $E9, $EE, $E7, $A0 ;  building huge
    .BYTE $E8, $F5, $E7, $E5, 1
    .BYTE $A0, $F2, $EF, $E3, $EB, $E5, $F4, $F3, $AE, 1 ;  rockets.
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E1, $EB ; *Don't take me for
    .BYTE $E5, $A0, $ED, $E5, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $E1, $EE, $A0, $EF, $F2, $E4, $E9, $EE, $E1 ;  an ordinary man.
    .BYTE $F2, $F9, $A0, $ED, $E1, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EC, $F4, $E8, $EF, $F5, $E7, $E8, $A0 ; *Although I am an
    .BYTE $C9, $A0, $E1, $ED, $A0, $E1, $EE, 1
    .BYTE $A0, $EF, $F2, $E4, $E9, $EE, $E1, $F2, $F9, $A0 ;  ordinary man.
    .BYTE $ED, $E1, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F4, $E8, $E9, $EE, $EB, $AE, $AE ; *I think...
    .BYTE $AE, 1
    .BYTE $A0, $C9, $A0, $F4, $E8, $E9, $EE, $EB, $AE, $AE ;  I think...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $EF, $E3, $EB, $F3 ; *The rockslide on
    .BYTE $EC, $E9, $E4, $E5, $A0, $EF, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F2, $E1, $E9, $EC, $F2 ;  the railroad
    .BYTE $EF, $E1, $E4, 1
    .BYTE $A0, $F4, $F2, $E1, $E3, $EB, $F3, $AE, $AE, $AE ;  tracks...
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C3, $EF, $F5, $EC, $E4, $A0, $E2, $E5, $A0 ; *Could be blown up
    .BYTE $E2, $EC, $EF, $F7, $EE, $A0, $F5, $F0, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $E1, $A0, $C4, $F5 ;  with a Duncan
    .BYTE $EE, $E3, $E1, $EE, 1
    .BYTE $A0, $C6, $E1, $E3, $F4, $EF, $F2, $F9, $A0, $D2 ;  Factory Rocket.
    .BYTE $EF, $E3, $EB, $E5, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A0, $E8, $F5, $F3, $E2, $E1, $EE ; *My husband is an
    .BYTE $E4, $A0, $E9, $F3, $A0, $E1, $EE, 1
    .BYTE $A0, $E9, $ED, $F0, $EF, $F2, $F4, $E1, $EE, $F4 ;  important man at
    .BYTE $A0, $ED, $E1, $EE, $A0, $E1, $F4, 1
    .BYTE $A0, $D4, $F7, $E9, $EE, $EB, $EC, $E5, $A0, $D3 ;  Twinkle School.
    .BYTE $E3, $E8, $EF, $EF, $EC, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $A0, $EE, $E5, $F6, $E5, $F2, $A0 ; *He never eats
    .BYTE $E5, $E1, $F4, $F3, 1
    .BYTE $A0, $EC, $F5, $EE, $E3, $E8, $AE, 1 ;  lunch.
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you been to
    .BYTE $E2, $E5, $E5, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $D3, $F7, $E5, $E5, $F4, $A7, $F3, $A0, $CC ;  Sweet's Little
    .BYTE $E9, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $C6, $E1, $E3, $F4, $EF, $F2, $F9, $A2, 1 ;  Factory?
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E8, $E5, $E1, $F2 ; *I've heard many
    .BYTE $E4, $A0, $ED, $E1, $EE, $F9, 1
    .BYTE $A0, $F3, $E3, $E1, $F2, $F9, $A0, $ED, $EF, $EE ;  scary monsters
    .BYTE $F3, $F4, $E5, $F2, $F3, 1
    .BYTE $A0, $EC, $F5, $F2, $EB, $A0, $EF, $F5, $F4, $F3 ;  lurk outside town.
    .BYTE $E9, $E4, $E5, $A0, $F4, $EF, $F7, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $EF, $A0, $E1, $E6 ; *I'm so afraid that
    .BYTE $F2, $E1, $E9, $E4, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $F9, $A7, $EC, $EC, $A0, $F4 ;  they'll take my
    .BYTE $E1, $EB, $E5, $A0, $ED, $F9, 1
    .BYTE $A0, $ED, $EF, $EE, $E5, $F9, $A0, $E1, $F7, $E1 ;  money away.
    .BYTE $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $E1, $E1, $AC, $A0, $EC, $E1, $A0, $EC ; *Laa, la laaa....
    .BYTE $E1, $E1, $E1, $AE, $AE, $AE, $AE, 1
    .BYTE $A0, $C4, $E1, $EE, $E4, $E5, $EC, $E9, $EF, $EE ;  Dandelion seeds fly
    .BYTE $A0, $F3, $E5, $E5, $E4, $F3, $A0, $E6, $EC, $F9
    .BYTE 1
    .BYTE $A0, $F5, $F0, $A0, $F4, $EF, $A0, $F4, $E8, $E5 ;  up to the sky,
    .BYTE $A0, $F3, $EB, $F9, $AC, 1
    .BYTE $A0, $EC, $E1, $E1, $AC, $A0, $EC, $E1, $A0, $EC ;  laa, la laaa...
    .BYTE $E1, $E1, $E1, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EC, $EF, $F6, $E5, $A0, $ED, $F5 ; *I love music
    .BYTE $F3, $E9, $E3, 1
    .BYTE $A0, $ED, $EF, $F3, $F4, $A0, $EF, $E6, $A0, $E1 ;  most of all.
    .BYTE $EC, $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $EA, $E1, $EE, $E9, $F4 ; *The janitor has
    .BYTE $EF, $F2, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EB, $E5, $F9, $A0, $F4 ;  the key to the
    .BYTE $EF, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $EF, $EF, $E6, $AE, 1 ;  roof.
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $E8, $E5, $A0, $F7, $EF ; *But he wouldn't
    .BYTE $F5, $EC, $E4, $EE, $A7, $F4, 1
    .BYTE $A0, $E7, $E9, $F6, $E5, $A0, $E9, $F4, $A0, $F4 ;  give it to me.
    .BYTE $EF, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $EF, $EC, $E4, $A0, $ED ; *The old man on
    .BYTE $E1, $EE, $A0, $EF, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $EF, $F5, $EE, $F4 ;  the mountain is so
    .BYTE $E1, $E9, $EE, $A0, $E9, $F3, $A0, $F3, $EF, 1
    .BYTE $A0, $E7, $E5, $EE, $E5, $F2, $EF, $F5, $F3, $AE ;  generous...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $A7, $EC, $EC, $A0, $E7, $E9, $F6 ; *He'll give you
    .BYTE $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E1, $F3, $A0, $ED, $F5, $E3, $E8, $A0, $E1 ;  as much as you can
    .BYTE $F3, $A0, $F9, $EF, $F5, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $F0, $EF, $F3, $F3, $E9, $E2, $EC, $F9, $A0 ;  possibly carry.
    .BYTE $E3, $E1, $F2, $F2, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F2, $E5, $ED, $E5, $ED, $E2, $E5 ; *I remember walking
    .BYTE $F2, $A0, $F7, $E1, $EC, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $F4, $E8, $F2, $EF, $F5, $E7, $E8, $A0, $F4 ;  through the tunnel
    .BYTE $E8, $E5, $A0, $F4, $F5, $EE, $EE, $E5, $EC, 1
    .BYTE $A0, $F7, $E8, $E5, $EE, $A0, $C9, $A0, $F7, $E1 ;  when I was young.
    .BYTE $F3, $A0, $F9, $EF, $F5, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $E5, $EE, $F4, $A0, $F4, $EF ; *I went to see what
    .BYTE $A0, $F3, $E5, $E5, $A0, $F7, $E8, $E1, $F4, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $EF, $EE, $A0, $F4, $E8 ;  was on the other
    .BYTE $E5, $A0, $EF, $F4, $E8, $E5, $F2, 1
    .BYTE $A0, $F3, $E9, $E4, $E5, $AE, 1 ;  side.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $E1 ; *This is a
    .BYTE 1
    .BYTE $A0, $F2, $E5, $F3, $E9, $E4, $E5, $EE, $F4, $E9 ;  residential area,
    .BYTE $E1, $EC, $A0, $E1, $F2, $E5, $E1, $AC, 1
    .BYTE $A0, $F0, $EC, $E5, $E1, $F3, $E5, $A0, $EB, $E5 ;  please keep quiet.
    .BYTE $E5, $F0, $A0, $F1, $F5, $E9, $E5, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you ever
    .BYTE $E5, $F6, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $F2, $EF, $F7, $EE, $A0, $E6, $EF ;  thrown food out
    .BYTE $EF, $E4, $A0, $EF, $F5, $F4, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E5, $A0 ;  into the field?
    .BYTE $E6, $E9, $E5, $EC, $E4, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $E9, $F4, $A7 ; *Well, it's a game,
    .BYTE $F3, $A0, $E1, $A0, $E7, $E1, $ED, $E5, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $E9, $F4, $A0, $E9, $F3 ;  but it is pretty
    .BYTE $A0, $F0, $F2, $E5, $F4, $F4, $F9, 1
    .BYTE $A0, $F7, $E1, $F3, $F4, $E5, $E6, $F5, $EC, $AE ;  wasteful.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C7, $E1, $F3, $F0, $A1, $A1, $A0, $D9, $EF ; *Gasp!! You
    .BYTE $F5, 1
    .BYTE $A0, $F3, $F4, $E1, $F2, $F4, $EC, $E5, $E4, $A0 ;  startled me.
    .BYTE $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C6, $EF, $F2, $A0, $E3, $EF, $EC, $EC, $E5 ; *For college credit
    .BYTE $E7, $E5, $A0, $E3, $F2, $E5, $E4, $E9, $F4, 1
    .BYTE $A0, $C9, $A0, $F3, $F4, $F5, $E4, $F9, $A0, $E9 ;  I study indoor
    .BYTE $EE, $E4, $EF, $EF, $F2, 1
    .BYTE $A0, $E1, $F2, $E3, $E8, $E9, $F4, $E5, $E3, $F4 ;  architecture.
    .BYTE $F5, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $F4, $E8 ; *That's the whole
    .BYTE $E5, $A0, $F7, $E8, $EF, $EC, $E5, 1
    .BYTE $A0, $F4, $F2, $F5, $F4, $E8, $AC, $A0, $E1, $EE ;  truth, and nothing
    .BYTE $E4, $A0, $EE, $EF, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $F4, $E8, $E5, $A0, $F4 ;  but the truth!!
    .BYTE $F2, $F5, $F4, $E8, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E9, $F3, $E8, $A0, $F4, $E8 ; *I wish that I had
    .BYTE $E1, $F4, $A0, $C9, $A0, $E8, $E1, $E4, 1
    .BYTE $A0, $E1, $A0, $E2, $E9, $E3, $F9, $E3, $EC, $E5 ;  a bicycle.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F4, $E8, $EF, $F5, $E7 ; *You thought I was
    .BYTE $E8, $F4, $A0, $C9, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $E7, $EF, $E9, $EE, $E7, $A0, $F4, $EF, $A0 ;  going to beg for
    .BYTE $E2, $E5, $E7, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $E6, $EF, $EF, $E4, $AC, $A0, $E4, $E9, $E4 ;  food, didn't you?
    .BYTE $EE, $A7, $F4, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $EF, $F5, $EC, $E4, $EE, $A7 ; *I wouldn't do that,
    .BYTE $F4, $A0, $E4, $EF, $A0, $F4, $E8, $E1, $F4, $AC
    .BYTE 1
    .BYTE $A0, $E5, $F6, $E5, $EE, $A0, $F4, $E8, $EF, $F5 ;  even though I am
    .BYTE $E7, $E8, $A0, $C9, $A0, $E1, $ED, 1
    .BYTE $A0, $E5, $F6, $E5, $F2, $A0, $F3, $EF, $A0, $E8 ;  ever so hungry.
    .BYTE $F5, $EE, $E7, $F2, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EC, $EF, $F6, $E5, $A0, $EC, $E9 ; *I love life in the
    .BYTE $E6, $E5, $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E3, $E9, $F4, $F9, $A1, 1 ;  city!
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EC, $EF, $EF, $EB, $A0, $F3, $EF ; *I look so great in
    .BYTE $A0, $E7, $F2, $E5, $E1, $F4, $A0, $E9, $EE, 1
    .BYTE $A0, $E3, $F5, $F4, $E5, $A0, $E4, $F2, $E5, $F3 ;  cute dresses!
    .BYTE $F3, $E5, $F3, $A1, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E2 ; *I don't believe in
    .BYTE $E5, $EC, $E9, $E5, $F6, $E5, $A0, $E9, $EE, 1
    .BYTE $A0, $D0, $F3, $F9, $E3, $E8, $E9, $E3, $A0, $D0 ;  Psychic Powers.
    .BYTE $EF, $F7, $E5, $F2, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $ED, $E1 ; *I am a man whose
    .BYTE $EE, $A0, $F7, $E8, $EF, $F3, $E5, 1
    .BYTE $A0, $E5, $F8, $E9, $F3, $F4, $E5, $EE, $E3, $E5 ;  existence does not
    .BYTE $A0, $E4, $EF, $E5, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $ED, $E1, $F4, $F4, $E5, $F2, $AE, 1 ;  matter.
    .BYTE 3
    .BYTE $C0, $CD, $F9, $A0, $E9, $ED, $F0, $EF, $F2, $F4 ; *My importance is
    .BYTE $E1, $EE, $E3, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $F3, $EF, $A0, $F3, $ED, $E1, $EC, $EC, $AC ;  so small,
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E1, $F4, $A0, $C9, $A0, $ED, $E1 ; *that I may not
    .BYTE $F9, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $E2, $E5, $A0, $ED, $E9, $F3, $F3, $E5, $E4 ;  be missed should
    .BYTE $A0, $F3, $E8, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $C9, $A0, $E4, $E9, $F3, $E1, $F0, $F0, $E5 ;  I disappear.
    .BYTE $E1, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EC, $EF, $F6, $E5, $A0, $F4, $E8 ; *I love this town!
    .BYTE $E9, $F3, $A0, $F4, $EF, $F7, $EE, $A1, 1
    .BYTE $A0, $C9, $A0, $F7, $EF, $F5, $EC, $E4, $EE, $A7 ;  I wouldn't be
    .BYTE $F4, $A0, $E2, $E5, 1
    .BYTE $A0, $E3, $E1, $F5, $E7, $E8, $F4, $A0, $E4, $E5 ;  caught dead in
    .BYTE $E1, $E4, $A0, $E9, $EE, 1
    .BYTE 3
    .BYTE $C0, $D3, $F0, $EF, $EF, $EB, $E1, $EE, $E5, $A1 ; *Spookane! Ha ha!
    .BYTE $A0, $C8, $E1, $A0, $E8, $E1, $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ; *Would you like to
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $ED, $E1, $EB, $E5, $A0, $E1, $A0, $E4, $EF ;  make a donation to
    .BYTE $EE, $E1, $F4, $E9, $EF, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $ED, $F9, $A0, $E3, $E8, $E1, $F2, $E9, $F4 ;  my charitable fund?
    .BYTE $E1, $E2, $EC, $E5, $A0, $E6, $F5, $EE, $E4, $A2
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F3, $F4, $EF, $F2, $E5 ; *The store will buy
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E2, $F5, $F9, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A0, $ED, $E5, $E4, $E9 ;  good medicine for
    .BYTE $E3, $E9, $EE, $E5, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A0, $ED, $EF, $EE, $E5 ;  good money.
    .BYTE $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F4, $E8, $E5, $A0, $EA ; *I'm the jolly
    .BYTE $EF, $EC, $EC, $F9, 1
    .BYTE $A0, $F0, $EF, $F3, $F4, $ED, $E1, $EE, $AC, 1 ;  postman,
    .BYTE $A0, $EC, $E1, $E1, $A0, $EC, $E1, $E1, $E1, $AC ;  laa laaa, la la.
    .BYTE $A0, $EC, $E1, $A0, $EC, $E1, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you heard
    .BYTE $E8, $E5, $E1, $F2, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $D2, $EF, $F3, $E5, $ED ;  the Rosemarys'
    .BYTE $E1, $F2, $F9, $F3, $A7, 1
    .BYTE $A0, $EE, $E5, $F7, $A0, $E1, $E4, $E4, $F2, $E5 ;  new address?
    .BYTE $F3, $F3, $A2, 1
    .BYTE 3
    .BYTE $C0, $CC, $E1, $A0, $EC, $E1, $A0, $EC, $E1, $A0 ; *La la la laa.
    .BYTE $EC, $E1, $E1, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E5, $EC, $EC, $A0, $F4, $E8, $E5, $A0 ; *Tell the postman
    .BYTE $F0, $EF, $F3, $F4, $ED, $E1, $EE, 1
    .BYTE $A0, $F7, $E8, $EF, $A0, $F3, $E5, $E5, $EB, $F3 ;  who seeks the
    .BYTE $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E6, $EF, $F2, $F7, $E1, $F2, $E4, $E9, $EE ;  forwarding address,
    .BYTE $E7, $A0, $E1, $E4, $E4, $F2, $E5, $F3, $F3, $AC
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E1, $F4, $A0, $F4, $E8, $E5, 1 ; *that the
    .BYTE $A0, $D2, $EF, $F3, $E5, $ED, $E1, $F2, $F9, $F3 ;  Rosemarys have
    .BYTE $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $ED, $EF, $F6, $E5, $E4, $A0, $E6, $E1, $F2 ;  moved far away.
    .BYTE $A0, $E1, $F7, $E1, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $CC, $E1, $A0, $EC, $E1, $A0, $EC, $E1, $A0 ; *La la la laaa.
    .BYTE $EC, $E1, $E1, $E1, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $EC ; *I don't like the
    .BYTE $E9, $EB, $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $EC, $E9, $F4, $F4, $EC, $E5, $A0, $D2, $EF ;  little Rosemary
    .BYTE $F3, $E5, $ED, $E1, $F2, $F9, 1
    .BYTE $A0, $E7, $E9, $F2, $EC, $A1, 1 ;  girl!
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F3, $F4, $F2, $E5, $E5 ; *The streets are
    .BYTE $F4, $F3, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $E6, $E9, $EC, $EC, $E5, $E4, $A0, $F7, $E9 ;  filled with
    .BYTE $F4, $E8, 1
    .BYTE $A0, $ED, $EF, $EE, $F3, $F4, $E5, $F2, $F3, $AC ;  monsters,
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $A0, $F0, $E5, $EF, $F0, $EC ; *the people have
    .BYTE $E5, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $F2, $F5, $EE, $A0, $E1, $F7, $E1, $F9, $AE ;  run away.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E4, $EF, $A0, $F9 ; *What do you want?
    .BYTE $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $E3, $EC ; *I am a clairvoyant
    .BYTE $E1, $E9, $F2, $F6, $EF, $F9, $E1, $EE, $F4, 1
    .BYTE $A0, $F3, $F4, $E9, $EC, $EC, $A0, $E9, $EE, $A0 ;  still in training.
    .BYTE $F4, $F2, $E1, $E9, $EE, $E9, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $EF, $F7, $E5, $F6, $E5, $F2, $A0, $F4 ; *However this much I
    .BYTE $E8, $E9, $F3, $A0, $ED, $F5, $E3, $E8, $A0, $C9
    .BYTE 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $F3, $E5, $E5, $AE, $AE ;  can see...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $E8, $E1, $EC, $EC ; *You shall return
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $A0, $F4, $EF, $A0 ;  again to Union
    .BYTE $D5, $EE, $E9, $EF, $EE, 1
    .BYTE $A0, $D3, $F4, $E1, $F4, $E9, $EF, $EE, $AE, 1 ;  Station.
    .BYTE 3
    .BYTE $C0, $C1, $EC, $F4, $E8, $EF, $F5, $E7, $E8, $A0 ; *Although I'm not
    .BYTE $C9, $A7, $ED, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $E3, $EF, $ED, $F0, $EC, $E5, $F4, $E5, $EC ;  completely sure.
    .BYTE $F9, $A0, $F3, $F5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E8, $EF, $F5, $F3, $E5, $A0, $E9 ; 's house is
    .BYTE $F3, 1
    .BYTE $A0, $E1, $A0, $E3, $E8, $E1, $F4, $E5, $E1, $F5 ;  a chateau, not a
    .BYTE $AC, $A0, $EE, $EF, $F4, $A0, $E1, 1
    .BYTE $A0, $ED, $E1, $EE, $F3, $E9, $EF, $EE, $AE, 1 ;  mansion.
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $AC, $A0, $C9, $A7, $EC, $EC ; *But, I'll bet you
    .BYTE $A0, $E2, $E5, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E1, $EC, $F2, $E5, $E1, $E4, $F9, $A0, $EB ;  already knew that.
    .BYTE $EE, $E5, $F7, $A0, $F4, $E8, $E1, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ; *There is a chateau
    .BYTE $E1, $A0, $E3, $E8, $E1, $F4, $E5, $E1, $F5, 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $ED, $EF ;  in the mountains
    .BYTE $F5, $EE, $F4, $E1, $E9, $EE, $F3, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $E5, $E1 ;  to the east.
    .BYTE $F3, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C3, $EF, $F5, $E7, $E8, $A0, $E3, $EF, $F5 ; *Cough cough
    .BYTE $E7, $E8, 1
    .BYTE $A0, $E3, $EF, $F5, $E7, $E8, $A0, $E3, $EF, $F5 ;  cough cough...
    .BYTE $E7, $E8, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $EB, $E9, $E4, $F3, $A0 ; *You kids are crazy.
    .BYTE $E1, $F2, $E5, $A0, $E3, $F2, $E1, $FA, $F9, $AE
    .BYTE 1
    .BYTE $A0, $D2, $F5, $EE, $EE, $E9, $EE, $E7, $A0, $E1 ;  Running around with
    .BYTE $F2, $EF, $F5, $EE, $E4, $A0, $F7, $E9, $F4, $E8
    .BYTE 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $D4, $AD, $F3, $E8 ;  just T-shirts on.
    .BYTE $E9, $F2, $F4, $F3, $A0, $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C3, $EF, $F5, $E7, $E8, $A0, $E3, $EF, $F5 ; *Cough cough
    .BYTE $E7, $E8, 1
    .BYTE $A0, $E3, $EF, $F5, $E7, $E8, $A0, $E3, $EF, $F5 ;  cough cough...
    .BYTE $E7, $E8, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F3, $E1 ; *Please say hello to
    .BYTE $F9, $A0, $E8, $E5, $EC, $EC, $EF, $A0, $F4, $EF
    .BYTE 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E3, $E1, $ED, $E5, $EC ;  the camel's bones in
    .BYTE $A7, $F3, $A0, $E2, $EF, $EE, $E5, $F3, $A0, $E9
    .BYTE $EE, 1
    .BYTE $A0, $D9, $F5, $E3, $E3, $E1, $A0, $C4, $E5, $F3 ;  Yucca Desert.
    .BYTE $E5, $F2, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EB, $EE, $E5, $F7, $A0, $F4, $E8 ; *I knew that camel
    .BYTE $E1, $F4, $A0, $E3, $E1, $ED, $E5, $EC, 1
    .BYTE $A0, $EF, $EE, $E3, $E5, $A0, $F5, $F0, $EF, $EE ;  once upon a time.
    .BYTE $A0, $E1, $A0, $F4, $E9, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $ED, $E1, $EC, $EC, $A0, $F7, $EF, $F5 ; *Small wounds can
    .BYTE $EE, $E4, $F3, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $E2, $E5, $A0, $F4, $F2, $E5, $E1, $F4, $E5 ;  be treated here,
    .BYTE $E4, $A0, $E8, $E5, $F2, $E5, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $F2, $E5, $E1, $EC, $A0 ; *but real sickness
    .BYTE $F3, $E9, $E3, $EB, $EE, $E5, $F3, $F3, 1
    .BYTE $A0, $ED, $F5, $F3, $F4, $A0, $E2, $E5, $A0, $F4 ;  must be treated in
    .BYTE $F2, $E5, $E1, $F4, $E5, $E4, $A0, $E9, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E8, $EF, $F3, $F0, $E9 ;  the hospital.
    .BYTE $F4, $E1, $EC, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F4, $E8, $E9, $EE, $EB, $A0 ; *I think
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E7, $F2, $EF, $F7 ;  will grow up and
    .BYTE $A0, $F5, $F0, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $E2, $E5, $A0, $E1, $A0, $E3, $EF, $ED, $F0 ;  be a computer
    .BYTE $F5, $F4, $E5, $F2, 1
    .BYTE $A0, $E5, $EE, $E7, $E9, $EE, $E5, $E5, $F2, $AE ;  engineer.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CB, $E5, $E5, $F0, $A0, $F1, $F5, $E9, $E5 ; *Keep quiet in the
    .BYTE $F4, $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $EC, $E9, $E2, $F2, $E1, $F2, $F9, $A1, 1 ;  library!
    .BYTE 3
    .BYTE $C0, $C1, $E8, $E8, $AD, $AD, $E3, $E8, $EF, $EF ; *Ahh--choo!!
    .BYTE $A1, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F4, $E8, $E9, $EE, $EB ; *You think I'm the
    .BYTE $A0, $C9, $A7, $ED, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F7, $EF, $F2, $EC, $E4, $A7, $F3, $A0, $E7 ;  world's greatest
    .BYTE $F2, $E5, $E1, $F4, $E5, $F3, $F4, 1
    .BYTE $A0, $E6, $E9, $F3, $E8, $E5, $F2, $ED, $E1, $EE ;  fisherman?
    .BYTE $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $EE, $EF, $F4 ; *Well, not quite
    .BYTE $A0, $F1, $F5, $E9, $F4, $E5, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $E7, $F2, $E5, $E1 ;  that great. But,
    .BYTE $F4, $AE, $A0, $C2, $F5, $F4, $AC, 1
    .BYTE $A0, $E9, $E6, $A0, $F9, $EF, $F5, $A7, $F6, $E5 ;  if you've a moment,
    .BYTE $A0, $E1, $A0, $ED, $EF, $ED, $E5, $EE, $F4, $AC
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $EC, $E5, $F4, $A0, $ED, $E5, $A0, $F4, $E5 ; *let me tell you
    .BYTE $EC, $EC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $A0, $EF, $E6, $A0, $ED ;  some of my fishing
    .BYTE $F9, $A0, $E6, $E9, $F3, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $F3, $F4, $EF, $F2, $E9, $E5, $F3, $AE, 1 ;  stories.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A7, $F2, $E5, $A0, $E9, $EE ; *You're in the way,
    .BYTE $A0, $F4, $E8, $E5, $A0, $F7, $E1, $F9, $AC, 1
    .BYTE $A0, $EB, $E9, $E4, $A1, 1 ;  kid!
    .BYTE 0
    .BYTE $C0, $C8, $E5, $F9, $A1, 1 ; *Hey!
    .BYTE 0
    .BYTE $C0, $C9, $A0, $ED, $E1, $F9, $A0, $E8, $E1, $F6 ; *I may have low HP,
    .BYTE $E5, $A0, $EC, $EF, $F7, $A0, $C8, $D0, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $C9, $A7, $ED, $A0, $E7 ;  but I'm gonna do
    .BYTE $EF, $EE, $EE, $E1, $A0, $E4, $EF, 1
    .BYTE $A0, $ED, $F9, $A0, $E2, $E5, $F3, $F4, $A1, 1 ;  my best!
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $C9, $A0, $E6, $E9, $E7, $E8 ; *If I fight with
    .BYTE $F4, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $F9, $EF, $F5, $AE, $AE, $AE, $AE, 1 ;  you....
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $E9, $EC, $EC, $A0, $F3, $F5 ; *I will surely be a
    .BYTE $F2, $E5, $EC, $F9, $A0, $E2, $E5, $A0, $E1, 1
    .BYTE $A0, $EC, $EF, $F3, $E5, $F2, $AE, 1 ;  loser.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $F3, $F4 ; *I am a strong man.
    .BYTE $F2, $EF, $EE, $E7, $A0, $ED, $E1, $EE, $AE, 1
    .BYTE $A0, $D4, $E8, $E1, $F4, $A7, $F3, $A0, $F7, $E8 ;  That's what I say.
    .BYTE $E1, $F4, $A0, $C9, $A0, $F3, $E1, $F9, $AE, 1
    .BYTE $A0, $C9, $A0, $E9, $EE, $F3, $E9, $F3, $F4, $A0 ;  I insist this.
    .BYTE $F4, $E8, $E9, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $EE ; *You are no match
    .BYTE $EF, $A0, $ED, $E1, $F4, $E3, $E8, 1
    .BYTE $A0, $E6, $EF, $F2, $A0 ;  for
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE $C0, $C8, $E5, $A0, $E3, $EF, $F5, $EC, $E4, $A0 ; *He could beat you up
    .BYTE $E2, $E5, $E1, $F4, $A0, $F9, $EF, $F5, $A0, $F5
    .BYTE $F0, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $E8, $E9, $F3, $A0 ;  with his pinkie.
    .BYTE $F0, $E9, $EE, $EB, $E9, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $F2 ; *Did you read
    .BYTE $E5, $E1, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F3, $E9, $E7, $EE, $A2 ;  the sign?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E9, $EC, $E5, $A0, $F7, $E1, $EC ; *While walking in
    .BYTE $EB, $E9, $EE, $E7, $A0, $E9, $EE, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E4, $E5, $F3, $E5, $F2 ;  the desert, I saw a
    .BYTE $F4, $AC, $A0, $C9, $A0, $F3, $E1, $F7, $A0, $E1
    .BYTE 1
    .BYTE $A0, $E3, $E1, $E3, $F4, $F5, $F3, $A0, $F7, $E9 ;  cactus with a face,
    .BYTE $F4, $E8, $A0, $E1, $A0, $E6, $E1, $E3, $E5, $AC
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $EE, $A0, $C9, $A0, $F2, $E1 ; *then I ran for the
    .BYTE $EE, $A0, $E6, $EF, $F2, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E8, $E9, $EC, $EC, $F3, $A0, $F3, $E3, $F2 ;  hills screaming as
    .BYTE $E5, $E1, $ED, $E9, $EE, $E7, $A0, $E1, $F3, 1
    .BYTE $A0, $EC, $EF, $F5, $E4, $A0, $E1, $F3, $A0, $C9 ;  loud as I could.
    .BYTE $A0, $E3, $EF, $F5, $EC, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you talk to
    .BYTE $F4, $E1, $EC, $EB, $A0, $F4, $EF, 1
    .BYTE $A0, $E1, $A0, $E6, $E9, $F3, $E8, $E5, $F2, $ED ;  a fisherman, you
    .BYTE $E1, $EE, $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $EE, $E5, $F6, $E5, $F2 ;  can never get away.
    .BYTE $A0, $E7, $E5, $F4, $A0, $E1, $F7, $E1, $F9, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C1, $EE, $F9, $A0, $E6, $E9, $F2, $F3, $F4 ; *Any first grader
    .BYTE $A0, $E7, $F2, $E1, $E4, $E5, $F2, 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $E4, $EF, $A0, $E1, $A0 ;  can do a cartwheel,
    .BYTE $E3, $E1, $F2, $F4, $F7, $E8, $E5, $E5, $EC, $AC
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $E4, $EF, $EE, $A7, $F4, $A0, $F9, $EF, $F5 ; *don't you think?
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F4, $E5, $EC, $E5, $F3 ; *The telescopes?
    .BYTE $E3, $EF, $F0, $E5, $F3, $A2, 1
    .BYTE 3
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $F4, $E8, $E9, $F3 ; *Take this elevator
    .BYTE $A0, $E5, $EC, $E5, $F6, $E1, $F4, $EF, $F2, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $F4, $EF ;  to the top of Look-
    .BYTE $F0, $A0, $EF, $E6, $A0, $CC, $EF, $EF, $EB, $AD
    .BYTE 1
    .BYTE $A0, $CF, $F5, $F4, $A0, $D4, $EF, $F7, $E5, $F2 ;  Out Tower.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EF, $EE, $E3, $E5, $A0, $F3, $E1 ; *I once saw smoke
    .BYTE $F7, $A0, $F3, $ED, $EF, $EB, $E5, 1
    .BYTE $A0, $F2, $E9, $F3, $E9, $EE, $E7, $A0, $E6, $F2 ;  rising from one of
    .BYTE $EF, $ED, $A0, $EF, $EE, $E5, $A0, $EF, $E6, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E9, $F3, $EC, $E1, $EE ;  the islands.
    .BYTE $E4, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F7, $EF, $EE, $E4, $E5, $F2, $E5 ; *I wondered if
    .BYTE $E4, $A0, $E9, $E6, 1
    .BYTE $A0, $E1, $EE, $F9, $E2, $EF, $E4, $F9, $A0, $EC ;  anybody lived
    .BYTE $E9, $F6, $E5, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $AE, 1 ;  there.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $F3, $E8, $EF, $F5, $EC, $E4, $A0 ; *I should have
    .BYTE $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $EC, $EF, $EF, $EB, $E5, $E4, $A0, $F4, $E8 ;  looked through
    .BYTE $F2, $EF, $F5, $E7, $E8, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E5, $EC, $E5 ;  that telescope.
    .BYTE $F3, $E3, $EF, $F0, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, $A0, $E4 ; *I can't do a
    .BYTE $EF, $A0, $E1, 1
    .BYTE $A0, $E3, $E1, $F2, $F4, $F7, $E8, $E5, $E5, $EC ;  cartwheel.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $F4, $E9, $EC, $EC, $A0, $E4 ; *I still don't know
    .BYTE $EF, $EE, $A7, $F4, $A0, $EB, $EE, $EF, $F7, 1
    .BYTE $A0, $E8, $EF, $F7, $A0, $F4, $EF, $A0, $E3, $E1 ;  how to carry over
    .BYTE $F2, $F2, $F9, $A0, $EF, $F6, $E5, $F2, 1
    .BYTE $A0, $E9, $EE, $A0, $F3, $F5, $E2, $F4, $F2, $E1 ;  in subtraction.
    .BYTE $E3, $F4, $E9, $EF, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $D3 ; *I heard StrawBerry
    .BYTE $F4, $F2, $E1, $F7, $C2, $E5, $F2, $F2, $F9, 1
    .BYTE $A0, $D4, $EF, $E6, $F5, $A0, $E9, $F3, $A0, $F0 ;  Tofu is popular
    .BYTE $EF, $F0, $F5, $EC, $E1, $F2, 1
    .BYTE $A0, $E9, $EE, $A0, $E2, $E9, $E7, $A0, $E3, $E9 ;  in big cities.
    .BYTE $F4, $E9, $E5, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $E4, $A0, $EC, $E9, $EB, $E5, $A0 ; *I'd like to taste
    .BYTE $F4, $EF, $A0, $F4, $E1, $F3, $F4, $E5, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $AE, 1 ;  some.
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $E8, $F5, $EE, $E7 ; *I am hungry.
    .BYTE $F2, $F9, $AE, 1
    .BYTE $A0, $CC, $E5, $F4, $A7, $F3, $A0, $E4, $EF, $A0 ;  Let's do lunch.
    .BYTE $EC, $F5, $EE, $E3, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E1, $EB ; *Don't take me for
    .BYTE $E5, $A0, $ED, $E5, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $E1, $EE, $A0, $EF, $F2, $E4, $E9, $EE, $E1 ;  an ordinary man.
    .BYTE $F2, $F9, $A0, $ED, $E1, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $EF, $F3, $E5, $A0, $E1, $F2, $E5 ; *Those are Dad's
    .BYTE $A0, $C4, $E1, $E4, $A7, $F3, 1
    .BYTE $A0, $E6, $E1, $F6, $EF, $F2, $E9, $F4, $E5, $A0 ;  favorite words.
    .BYTE $F7, $EF, $F2, $E4, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $EC ; *You are late,
    .BYTE $E1, $F4, $E5, $AC, 1
    .BYTE $A0, $E1, $F2, $E5, $EE, $A7, $F4, $A0, $F9, $EF ;  aren't you!?
    .BYTE $F5, $A1, $A2, 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $F3 ; *Did you see a
    .BYTE $E5, $E5, $A0, $E1, 1
    .BYTE $A0, $F3, $F4, $F2, $E1, $EE, $E7, $E5, $A0, $ED ;  strange man
    .BYTE $E1, $EE, 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $EC, $E1 ;  in the lab?
    .BYTE $E2, $A2, 1
    .BYTE 3
    .BYTE $C0, $D7, $E5, $EC, $EC, $AE, $AE, $AE, 1 ; *Well...
    .BYTE $A0, $C9, $A0, $F3, $E1, $F7, $A0, $E8, $E9, $ED ;  I saw him.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you played
    .BYTE $F0, $EC, $E1, $F9, $E5, $E4, 1
    .BYTE $A0, $D3, $F5, $F0, $E5, $F2, $A0, $CD, $E1, $F2 ;  Super Mario Bros.7?
    .BYTE $E9, $EF, $A0, $C2, $F2, $EF, $F3, $AE, $B7, $A2
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $F4, $E9, $EC, $EC ; *I'm still playing
    .BYTE $A0, $F0, $EC, $E1, $F9, $E9, $EE, $E7, 1
    .BYTE $A0, $D3, $F5, $F0, $E5, $F2, $A0, $CD, $E1, $F2 ;  Super Mario Bros.3.
    .BYTE $E9, $EF, $A0, $C2, $F2, $EF, $F3, $AE, $B3, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $E2, $E5, $E5, $EE ; *It's been quite
    .BYTE $A0, $F1, $F5, $E9, $F4, $E5, 1
    .BYTE $A0, $E1, $A0, $E3, $E8, $E1, $EC, $EC, $E5, $EE ;  a challenge for me.
    .BYTE $E7, $E5, $A0, $E6, $EF, $F2, $A0, $ED, $E5, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, $A1, 1 ; *Welcome!
    .BYTE $A0, $D7, $E8, $E1, $F4, $A0, $E3, $E1, $EE, $A0 ;  What can I sell
    .BYTE $C9, $A0, $F3, $E5, $EC, $EC, 1
    .BYTE $A0, $F9, $EF, $F5, $A2, 1 ;  you?
    .BYTE 0
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $AC, $A0, $F4, $E8 ; *Sorry, that item is
    .BYTE $E1, $F4, $A0, $E9, $F4, $E5, $ED, $A0, $E9, $F3
    .BYTE 1
    .BYTE $A0, $EF, $F5, $F4, $A0, $EF, $E6, $A0, $F3, $F4 ;  out of stock.
    .BYTE $EF, $E3, $EB, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $EE, $E5, $E5 ; *Don't need that,
    .BYTE $E4, $A0, $F4, $E8, $E1, $F4, $AC, 1
    .BYTE $A0, $E4, $EF, $A0, $F9, $EF, $F5, $A2, $A0, $C3 ;  do you? Come see
    .BYTE $EF, $ED, $E5, $A0, $F3, $E5, $E5, 1
    .BYTE $A0, $F5, $F3, $A0, $F7, $E8, $E5, $EE, $A0, $F9 ;  us when you do.
    .BYTE $EF, $F5, $A0, $E4, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you very
    .BYTE $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $ED, $F5, $E3, $E8, $AE, $A0, $D0, $EC, $E5 ;  much. Please
    .BYTE $E1, $F3, $E5, 1
    .BYTE $A0, $F6, $E9, $F3, $E9, $F4, $A0, $F5, $F3, $A0 ;  visit us again.
    .BYTE $E1, $E7, $E1, $E9, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $F3 ; *Are you sure you
    .BYTE $F5, $F2, $E5, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $EE, $E5, $E5 ;  don't need that?
    .BYTE $E4, $A0, $F4, $E8, $E1, $F4, $A2, 1
    .BYTE $A0, $D7, $E5, $EC, $EC, $AC, $A0, $E3, $EF, $ED ;  Well, come again.
    .BYTE $E5, $A0, $E1, $E7, $E1, $E9, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $E7, $EC, $E1, $E4, $A0, $F4, $EF, 1 ; , glad to
    .BYTE $A0, $F3, $E5, $E5, $A0, $F9, $EF, $F5, $A0, $E1 ;  see you are fine
    .BYTE $F2, $E5, $A0, $E6, $E9, $EE, $E5, 1
    .BYTE $A0, $EE, $EF, $F7, $AE, $A0, $D3, $E5, $E5, $A0 ;  now. See us again!
    .BYTE $F5, $F3, $A0, $E1, $E7, $E1, $E9, $EE, $A1, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F7, $EF, $F5, $EC, $E4 ; *You would leave
    .BYTE $A0, $EC, $E5, $E1, $F6, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $E2, $E5, $F3, $F4 ;  your best friend
    .BYTE $A0, $E6, $F2, $E9, $E5, $EE, $E4, 1
    .BYTE $A0, $EF, $EE, $A0, $F4, $E8, $E5, $E9, $F2, $A0 ;  on their deathbed?
    .BYTE $E4, $E5, $E1, $F4, $E8, $E2, $E5, $E4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $A0, $F7, $E5, $EC, $EC ; *Well well, I'll
    .BYTE $AC, $A0, $C9, $A7, $EC, $EC, 1
    .BYTE $A0, $F4, $F2, $E5, $E1, $F4, $A0, $E5, $E1, $E3 ;  treat each of you
    .BYTE $E8, $A0, $EF, $E6, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E6, $EF, $F2, $A0 ;  for
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E5, $E1, $E3, $E8, $AE, 1 ;  each.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F2, $E5, $E1, $EC, $EC ; *You really don't
    .BYTE $F9, $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $EE, $E5, $E5, $E4, $A0, $F4, $F2, $E5, $E1 ;  need treatment?
    .BYTE $F4, $ED, $E5, $EE, $F4, $A2, 1
    .BYTE $A0, $CF, $E8, $AC, $A0, $F7, $E5, $EC, $EC, $AE ;  Oh, well...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F3, $E5, $E5, $A0, $E5, $F6, $E5 ; *I see everything
    .BYTE $F2, $F9, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F9, $EF, $F5, $A0 ;  with you is fine.
    .BYTE $E9, $F3, $A0, $E6, $E9, $EE, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, 1 ; *Well,
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, $A0, $E6 ;  you are fine
    .BYTE $E9, $EE, $E5, 1
    .BYTE $A0, $EF, $EE, $E3, $E5, $A0, $E1, $E7, $E1, $E9 ;  once again.
    .BYTE $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C2, $E5, $EC, $E9, $E5, $F6, $E5, $A0, $E9 ; *Believe it or not,
    .BYTE $F4, $A0, $EF, $F2, $A0, $EE, $EF, $F4, $AC, 1
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $E1, $A0, $C8, $E5 ;  I am a Healer.
    .BYTE $E1, $EC, $E5, $F2, $AE, 1
    .BYTE $A0, $D7, $E8, $E1, $F4, $A0, $E4, $EF, $A0, $F9 ;  What do you want?
    .BYTE $EF, $F5, $A0, $F7, $E1, $EE, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $CF, $CB, $AC, $A0, $E4, $EF, $A0, $F7, $E8 ; *OK, do what you
    .BYTE $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF, $AE, 1 ;  want to.
    .BYTE 0
    .BYTE $C0, $C7, $E9, $F6, $E5, $A0, $ED, $E5, $A0, $A4 ; *Give me $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F4, $E8, $E1, $F4, $AE ;  for that.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, $A1, 1 ; *Welcome!
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E6, $EF, $F2, $A0, $E1, $A0, $EE, $E9, $E7 ;  for a night.
    .BYTE $E8, $F4, $AE, 1
    .BYTE $A0, $C3, $E1, $F2, $E5, $A0, $F4, $EF, $A0, $F3 ;  Care to stay?
    .BYTE $F4, $E1, $F9, $A2, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $A0, $F4, $EF, $A0 ; *Sorry to hear that.
    .BYTE $E8, $E5, $E1, $F2, $A0, $F4, $E8, $E1, $F4, $AE
    .BYTE 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F6, $E9 ;  Please visit us
    .BYTE $F3, $E9, $F4, $A0, $F5, $F3, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $AE, 1 ;  again.
    .BYTE 0
    .BYTE $C0, $D3, $EC, $E5, $E5, $F0, $A0, $F4, $E9, $E7 ; *Sleep tight...
    .BYTE $E8, $F4, $AE, $AE, $AE, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $E4, $EF, $EE, $A7, $F4 ;  and don't let the
    .BYTE $A0, $EC, $E5, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E2, $E5, $E4, $A0, $E2, $F5, $E7, $F3, $A0 ;  bed bugs bite.
    .BYTE $E2, $E9, $F4, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $ED, $EF, $F2, $EE ; *Good morning!
    .BYTE $E9, $EE, $E7, $A1, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $EF ;  Please come back
    .BYTE $ED, $E5, $A0, $E2, $E1, $E3, $EB, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F3, $E5, $E5, $A0, $F5 ;  and see us again.
    .BYTE $F3, $A0, $E1, $E7, $E1, $E9, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F9, $A0, $EA, $F5, $F3, $F4 ; *They just brought
    .BYTE $A0, $E2, $F2, $EF, $F5, $E7, $E8, $F4, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E5, $F2, $E5, $AC, 1 ;  here,
    .BYTE $A0, $F3, $F4, $E9, $EC, $EC, $A0, $F5, $EE, $E3 ;  still unconscious.
    .BYTE $EF, $EE, $F3, $E3, $E9, $EF, $F5, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $E5, $E4, $E9, $E3, $E1, $EC, $A0, $F4 ; *Medical treatment
    .BYTE $F2, $E5, $E1, $F4, $ED, $E5, $EE, $F4, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F4, $E8, $EF, $F3, $E5 ;  for those injuries
    .BYTE $A0, $E9, $EE, $EA, $F5, $F2, $E9, $E5, $F3, 1
    .BYTE $A0, $F4, $EF, $F4, $E1, $EC, $F3, $A0, $A4 ;  totals $
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $D7, $E8, $EF, $A0, $E1, $F2, $E5, $A0, $F9 ; *Who are you here
    .BYTE $EF, $F5, $A0, $E8, $E5, $F2, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $F6, $E9, $F3, $E9, $F4, $A2 ;  to visit?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $C4, $E1, $E4 ; *Well, Dad isn't
    .BYTE $A0, $E9, $F3, $EE, $A7, $F4, 1
    .BYTE $A0, $E8, $EF, $ED, $E5, $A0, $E1, $EE, $E4, $A0 ;  home and I don't
    .BYTE $C9, $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $E3, $E1, $F2, $E5, $A0, $E1, $E2, $EF, $F5 ;  care about money.
    .BYTE $F4, $A0, $ED, $EF, $EE, $E5, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $A0, $E9, $E6, $A0, $F9, $EF, $F5 ; *So if you need a
    .BYTE $A0, $EE, $E5, $E5, $E4, $A0, $E1, 1
    .BYTE $A0, $F0, $EC, $E1, $E3, $E5, $A0, $F4, $EF, $A0 ;  place to stay,
    .BYTE $F3, $F4, $E1, $F9, $AC, 1
    .BYTE 3
    .BYTE $C0, $E6, $E5, $E5, $EC, $A0, $E6, $F2, $E5, $E5 ; *feel free to stay
    .BYTE $A0, $F4, $EF, $A0, $F3, $F4, $E1, $F9, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $F4, $EF, $EE, $E9 ;  here tonight.
    .BYTE $E7, $E8, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $EF, $EF, $E4, $A0, $ED, $EF, $F2, $EE ; *Good morning!
    .BYTE $E9, $EE, $E7, $A1, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E3, $EF ;  Please come back
    .BYTE $ED, $E5, $A0, $E2, $E1, $E3, $EB, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $A0, $F3, $EF, $ED ;  again someday.
    .BYTE $E5, $E4, $E1, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E4, $EF ; *If you do, I may
    .BYTE $AC, $A0, $C9, $A0, $ED, $E1, $F9, 1
    .BYTE $A0, $EE, $EF, $F4, $A0, $E7, $E5, $F4, $A0, $F1 ;  not get quite so
    .BYTE $F5, $E9, $F4, $E5, $A0, $F3, $EF, 1
    .BYTE $A0, $EC, $EF, $EE, $E5, $EC, $F9, $A0, $E8, $E5 ;  lonely here.
    .BYTE $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $F9, $A0, $E1, $F2, $E5, $EE, $A7 ; *Why aren't you
    .BYTE $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E7, $EF, $E9, $EE, $E7, $A0, $F4, $EF, $A0 ;  going to spend
    .BYTE $F3, $F0, $E5, $EE, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EE, $E9, $E7, $E8, $F4 ;  the night here?
    .BYTE $A0, $E8, $E5, $F2, $E5, $A2, 1
    .BYTE 3
    .BYTE $C0, $C4, $E1, $E4, $A0, $ED, $E1, $F9, $A0, $EE ; *Dad may not be
    .BYTE $EF, $F4, $A0, $E2, $E5, 1
    .BYTE $A0, $E8, $EF, $ED, $E5, $AC, $A0, $E2, $F5, $F4 ;  home, but it's
    .BYTE $A0, $E9, $F4, $A7, $F3, 1
    .BYTE $A0, $E1, $EC, $F2, $E9, $E7, $E8, $F4, $AC, $A0 ;  alright, trust me.
    .BYTE $F4, $F2, $F5, $F3, $F4, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E9, $E3, $EB, $E5, $F4, $F3, $A0, $F0 ; *Tickets please,
    .BYTE $EC, $E5, $E1, $F3, $E5, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0 ;  you must have a
    .BYTE $E8, $E1, $F6, $E5, $A0, $E1, 1
    .BYTE $A0, $D4, $E9, $E3, $EB, $E5, $F4, $A0, $F4, $EF ;  Ticket to get in.
    .BYTE $A0, $E7, $E5, $F4, $A0, $E9, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $EF, $F7, $E5, $F6, $E5, $F2, $AE, $AE ; *However...
    .BYTE $AE, 1
    .BYTE $A0, $CE, $EF, $F4, $E8, $E9, $EE, $E7, $A0, $F7 ;  Nothing was there.
    .BYTE $E1, $F3, $A0, $F4, $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $A0, $A0, $CC, $E5, $E1, $F6, $E5, $A0, $A0, $A0 ;   Leave    Take out
    .BYTE $A0, $D4, $E1, $EB, $E5, $A0, $EF, $F5, $F4, 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $A0 ; *You have nothing.
    .BYTE $EE, $EF, $F4, $E8, $E9, $EE, $E7, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $EE ; *You haven't left
    .BYTE $A7, $F4, $A0, $EC, $E5, $E6, $F4, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ;  anything with me.
    .BYTE $F7, $E9, $F4, $E8, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CA, $F5, $F3, $F4, $A0, $E1, $A0, $ED, $EF ; *Just a moment...
    .BYTE $ED, $E5, $EE, $F4, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E3, $EC, $EF, $F3, $E5 ; *The closet is full.
    .BYTE $F4, $A0, $E9, $F3, $A0, $E6, $F5, $EC, $EC, $AE
    .BYTE 1
    .BYTE $A0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, $A0, $EB ;  I can't keep any
    .BYTE $E5, $E5, $F0, $A0, $E1, $EE, $F9, 1
    .BYTE $A0, $ED, $EF, $F2, $E5, $A0, $E6, $EF, $F2, $A0 ;  more for you now.
    .BYTE $F9, $EF, $F5, $A0, $EE, $EF, $F7, $AE, 1
    .BYTE 0
    .BYTE $C0, $C3, $E1, $EE, $A0, $C9, $A0, $E8, $E5, $EC ; *Can I help you?
    .BYTE $F0, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $E2, $E1, $EC, $E1 ; *Your balance is
    .BYTE $EE, $E3, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $E9, $EE, $F3, $F5, $E6, $E6, $E9, $E3, $E9 ;  insufficient.
    .BYTE $E5, $EE, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $EE ; *There isn't
    .BYTE $A7, $F4, 1
    .BYTE $A0, $E5, $EE, $EF, $F5, $E7, $E8, $A0, $ED, $EF ;  enough money.
    .BYTE $EE, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $EF, $F2, $F2, $F9 ; *I'm sorry,
    .BYTE $AC, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $A0, $F4, $F2, $E1, $EE, $F3 ; *the transaction you
    .BYTE $E1, $E3, $F4, $E9, $EF, $EE, $A0, $F9, $EF, $F5
    .BYTE 1
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $F2, $E5, $F1, $F5 ;  have requested
    .BYTE $E5, $F3, $F4, $E5, $E4, 1
    .BYTE $A0, $E5, $F8, $E3, $E5, $E5, $E4, $F3, $A0, $F9 ;  exceeds your limit.
    .BYTE $EF, $F5, $F2, $A0, $EC, $E9, $ED, $E9, $F4, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you very
    .BYTE $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $A0, $ED, $F5, $E3, $E8, $AE, 1 ;  much.
    .BYTE 0
    .BYTE $C0, $C9, $EE, $F3, $E9, $E4, $E5, $A0, $F4, $E8 ; *Inside the doll,
    .BYTE $E5, $A0, $E4, $EF, $EC, $EC, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $F0, $EF, $F4, $F4, $E5, $E4, $A0, $E1 ;  spotted an
    .BYTE $EE, 1
    .BYTE $A0, $EF, $EC, $E4, $A0, $ED, $F5, $F3, $E9, $E3 ;  old music box.
    .BYTE $A0, $E2, $EF, $F8, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $F3, $A0, $F4, $E8, $E5, $A0, $ED, $F5 ; *As the music box
    .BYTE $F3, $E9, $E3, $A0, $E2, $EF, $F8, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $F7, $EF, $F5, $EE, $E4 ;  was wound up...
    .BYTE $A0, $F5, $F0, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $A0, $ED, $E5, $EC, $EF, $E4, $F9, $A0 ; *A melody began to
    .BYTE $E2, $E5, $E7, $E1, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $F0, $EC, $E1, $F9, $AE, 1 ;  play.
    .BYTE 0
    .BYTE $C0, $A2, 1       ; *?
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E1, $F6, $E5, $A0, $E1, $A0 ; *I have a fantastic
    .BYTE $E6, $E1, $EE, $F4, $E1, $F3, $F4, $E9, $E3, 1
    .BYTE $A0, $F3, $EF, $F5, $F2, $E3, $E5, $A0, $E6, $EF ;  source for weapons.
    .BYTE $F2, $A0, $F7, $E5, $E1, $F0, $EF, $EE, $F3, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C3, $E8, $E5, $E3, $EB, $A0, $E2, $E1, $E3 ; *Check back again
    .BYTE $EB, $A0, $E1, $E7, $E1, $E9, $EE, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $ED, $E5, $A0, $EC ;  with me later...
    .BYTE $E1, $F4, $E5, $F2, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EA, $F5, $F3, $F4, $A0, $ED, $E1 ; *I just may get a
    .BYTE $F9, $A0, $E7, $E5, $F4, $A0, $E1, 1
    .BYTE $A0, $F2, $E5, $E1, $EC, $EC, $F9, $A0, $E1, $F7 ;  really awesome
    .BYTE $E5, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $F7, $E5, $E1, $F0, $EF, $EE, $A0, $EF, $F2 ;  weapon or two.
    .BYTE $A0, $F4, $F7, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $EF, $EE, $A0, $F4, $E8, $E5, 1 ;  won the
    .BYTE $A0, $E2, $E1, $F4, $F4, $EC, $E5, $AE, 1 ;  battle.
    .BYTE 0
    .BYTE $A0, $A0, $D7, $E9, $F4, $E8, $E4, $F2, $E1, $F7 ;   Withdraw Deposit
    .BYTE $A0, $C4, $E5, $F0, $EF, $F3, $E9, $F4, 0
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $E1, $E3, $E3, $EF ; *Your account shows
    .BYTE $F5, $EE, $F4, $A0, $F3, $E8, $EF, $F7, $F3, 1
    .BYTE $A0, $E1, $A0, $E2, $E1, $EC, $E1, $EE, $E3, $E5 ;  a balance of
    .BYTE $A0, $EF, $E6, 1
    .BYTE $A0, $A4          ;  $
    TILEPACK_23 <$23, $7412, 3, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E4, $EF, $EF, $F2, $A0 ; *The door is locked.
    .BYTE $E9, $F3, $A0, $EC, $EF, $E3, $EB, $E5, $E4, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $F4, $A0, $CB, $E5, $F9, $A0 ; *That Key does not
    .BYTE $E4, $EF, $E5, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $E6, $E9, $F4, $A0, $F4, $E8, $E9, $F3, $A0 ;  fit this lock.
    .BYTE $EC, $EF, $E3, $EB, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F5, $EE, $EC, $EF, $E3, $EB, $E5, $E4, 1 ;  unlocked
    .BYTE $A0, $F4, $E8, $E5, $A0, $E4, $EF, $EF, $F2, $A0 ;  the door and went
    .BYTE $E1, $EE, $E4, $A0, $F7, $E5, $EE, $F4, 1
    .BYTE $A0, $E9, $EE, $F3, $E9, $E4, $E5, $AE, 1 ;  inside.
    .BYTE 0
    .BYTE $A0, $A0, $D9, $E5, $F3, $A0, $A0, $A0, $A0, $A0 ;   Yes      No
    .BYTE $A0, $CE, $EF, 0
    .BYTE $A0, $A0, $C3, $EF, $EE, $F4, $E9, $EE, $F5, $E5 ;   Continue Rest
    .BYTE $A0, $D2, $E5, $F3, $F4, 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E7, $F2, $E1, $E2, $E2, $E5, $E4, $A0, $F4 ;  grabbed the
    .BYTE $E8, $E5, 1
    .BYTE $A0, $F4, $E5, $EC, $E5, $F0, $E8, $EF, $EE, $E5 ;  telephone.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $EF, $F2, $F2, $F9 ; *I'm sorry, but you
    .BYTE $AC, $A0, $E2, $F5, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $E4, $EF, $EE, $A7 ;  just don't have
    .BYTE $F4, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E5, $EE, $EF, $F5, $E7, $E8, $A0, $ED, $EF ;  enough money.
    .BYTE $EE, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0, $EE, $EF, $A0, $F3, $E9, $F2 ; *Oh no sir, you
    .BYTE $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E4, $EF, $A0, $EE, $EF, $F4, $A0, $E8, $E1 ;  do not have that
    .BYTE $F6, $E5, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $ED, $F5, $E3, $E8, $A0, $ED, $EF, $EE, $E5 ;  much money.
    .BYTE $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $E9, $F2, $AC, $A0, $F9, $EF, $F5, $A0 ; *Sir, you can't
    .BYTE $E3, $E1, $EE, $A7, $F4, 1
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $A0, $ED, $EF, $F2 ;  carry more than
    .BYTE $E5, $A0, $F4, $E8, $E1, $EE, 1
    .BYTE $A0, $F7, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $A0 ;  what you now have.
    .BYTE $EE, $EF, $F7, $A0, $E8, $E1, $F6, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $F4, $A0, $EC, $E5, $E1, $F3, $F4, $AC ; *At least, I don't
    .BYTE $A0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, $A0, $F9, $EF, $F5 ;  think you should.
    .BYTE $A0, $F3, $E8, $EF, $F5, $EC, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $F9, $EF, $F5 ; *There you have it!
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E9, $F4, $A1, 1
    .BYTE $A0, $C9, $A7, $F6, $E5, $A0, $E6, $E9, $F8, $E5 ;  I've fixed it like
    .BYTE $E4, $A0, $E9, $F4, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $E1, $A0, $F4, $F2, $F5, $E5, $A0, $E5, $F8 ;  a true expert.
    .BYTE $F0, $E5, $F2, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D3, $EF, $F2, $F2, $F9, $AC, $A0, $E2, $F5 ; *Sorry, but I can't
    .BYTE $F4, $A0, $C9, $A0, $E3, $E1, $EE, $A7, $F4, 1
    .BYTE $A0, $E2, $F5, $F9, $A0 ;  buy
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $F2, $EF, $ED, 1 ;  from
    .BYTE $A0, $F9, $EF, $F5, $AE, 1 ;  you.
    .BYTE 0
    .BYTE $C0, $CF, $F6, $E5, $F2, $EA, $EF, $F9, $E5, $E4 ; *Overjoyed with her
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $E8, $E5, $F2, 1
    .BYTE $A0, $F2, $E5, $F5, $EE, $E9, $EF, $EE, $AC, $A0 ;  reunion, Laura
    .BYTE $CC, $E1, $F5, $F2, $E1, 1
    .BYTE $A0, $E2, $E5, $E7, $E1, $EE, $A0, $F3, $E9, $EE ;  began singing.
    .BYTE $E7, $E9, $EE, $E7, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E5, $ED, $E5, $ED, $E2, $E5, $F2, $E5 ;  remembered
    .BYTE $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F4, $F5, $EE, $E5, $AE ;  the tune.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E3, $E1, $EE, $E1 ; *This canary is
    .BYTE $F2, $F9, $A0, $E9, $F3, 1
    .BYTE $A0, $F3, $E9, $EE, $E7, $E9, $EE, $E7, $AE, 1 ;  singing.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $ED, $EF, $EE, $EB, $E5 ; *The monkey stole
    .BYTE $F9, $A0, $F3, $F4, $EF, $EC, $E5, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $DA, $EF, $EF, $A0, $CB ;  the Zoo Key.
    .BYTE $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $EF, $E2, $EF, $F4 ; *The robot appeared
    .BYTE $A0, $E1, $F0, $F0, $E5, $E1, $F2, $E5, $E4, 1
    .BYTE $A0, $EF, $EC, $E4, $A0, $E1, $EE, $E4, $A0, $F2 ;  old and rusty.
    .BYTE $F5, $F3, $F4, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C6, $E5, $E5, $EC, $E9, $EE, $E7, $A0 ; *Feeling
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $F0, $F2, $E5, $F3, $E5, $EE, $E3, $E5, $AC ;  presence, the robot
    .BYTE $A0, $F4, $E8, $E5, $A0, $F2, $EF, $E2, $EF, $F4
    .BYTE 1
    .BYTE $A0, $E3, $E1, $ED, $E5, $A0, $E2, $E1, $E3, $EB ;  came back to life.
    .BYTE $A0, $F4, $EF, $A0, $EC, $E9, $E6, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E6, $EF, $F2, 1 ;  for
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $F2, $A0, $E2 ; *Do your best.
    .BYTE $E5, $F3, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $F3, $F4, $F2, $E5 ; *Your strength has
    .BYTE $EE, $E7, $F4, $E8, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $F2, $E5, $F6, $E9, $F6, $E5, $E4, $A0, $E2 ;  revived by touching
    .BYTE $F9, $A0, $F4, $EF, $F5, $E3, $E8, $E9, $EE, $E7
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E5, $A0, $E6, $EF, $F5, $EE, $F4 ; *the fountain's
    .BYTE $E1, $E9, $EE, $A7, $F3, 1
    .BYTE $A0, $ED, $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5 ;  mysterious water.
    .BYTE $F3, $A0, $F7, $E1, $F4, $E5, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0, $ED, $F9, $AC, $A0, $EC, $E9 ; *Oh my, little
    .BYTE $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $D0, $E9, $F0, $F0, $E9, $A1, $A0, $A0, $D9 ;  Pippi!  You're
    .BYTE $EF, $F5, $A7, $F2, $E5, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $E1, $EE, $E4, $A0 ;  back and safe!
    .BYTE $F3, $E1, $E6, $E5, $A1, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you for
    .BYTE $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $E6, $E9, $EE, $E4, $E9, $EE, $E7, $A0, $E8 ;  finding her,
    .BYTE $E5, $F2, $AC, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 3
    .BYTE $C0, $C2, $F9, $A0, $F4, $E8, $E5, $A0, $F7, $E1 ; *By the way, the
    .BYTE $F9, $AC, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $D4, $EF, $F7, $EE, $A0, $CD, $E1, $F9, $EF ;  Town Mayor is
    .BYTE $F2, $A0, $E9, $F3, 1
    .BYTE $A0, $F7, $E1, $E9, $F4, $E9, $EE, $E7, $A0, $E6 ;  waiting for you...
    .BYTE $EF, $F2, $A0, $F9, $EF, $F5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D0, $E9, $F0, $F0, $E9, $AC, $A0, $E7, $EF ; *Pippi, go with
    .BYTE $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $E1, $EE, $E4, $A0, $E8, $E5, $EC, $F0 ; , and help
    .BYTE 1
    .BYTE $A0, $F3, $F4, $F2, $E1, $E9, $E7, $E8, $F4, $E5 ;  straighten this out.
    .BYTE $EE, $A0, $F4, $E8, $E9, $F3, $A0, $EF, $F5, $F4
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $ED, $A0, $E2, $F5, $F3, $F9, $AC ; *I'm busy, So I
    .BYTE $A0, $D3, $EF, $A0, $C9, 1
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, $A0, $E8, $E5, $EC ;  can't help you
    .BYTE $F0, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A0, $EE, $EF, $F7 ;  right now.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $A7, $EC, $EC, $A0, $E8, $E1 ; *You'll have to come
    .BYTE $F6, $E5, $A0, $F4, $EF, $A0, $E3, $EF, $ED, $E5
    .BYTE 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $EC, $E1, $F4, $E5 ;  back later.
    .BYTE $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $EF, $A0, $E8, $E1, $F3, $A0, $E2 ; *Who has been
    .BYTE $E5, $E5, $EE, 1
    .BYTE $A0, $F0, $EF, $E9, $F3, $EF, $EE, $E5, $E4, $A2 ;  poisoned?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $EF, $A0, $EE, $E5, $E5, $E4, $F3 ; *Who needs to be
    .BYTE $A0, $F4, $EF, $A0, $E2, $E5, 1
    .BYTE $A0, $F3, $EF, $E6, $F4, $E5, $EE, $E5, $E4, $A2 ;  softened?
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $EE ; *You haven't been
    .BYTE $A7, $F4, $A0, $E2, $E5, $E5, $EE, 1
    .BYTE $A0, $F0, $EF, $E9, $F3, $EF, $EE, $E5, $E4, $A1 ;  poisoned!
    .BYTE 1
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF

; CHARS BANKS 0xB0 - 0xB7
    .BYTE $C0, $D9, $EF, $F5, $A0, $E8, $E1, $F6, $E5, $A0 ; *You have not been
    .BYTE $EE, $EF, $F4, $A0, $E2, $E5, $E5, $EE, 1
    .BYTE $A0, $F4, $F5, $F2, $EE, $E5, $E4, $A0, $F4, $EF ;  turned to stone.
    .BYTE $A0, $F3, $F4, $EF, $EE, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F9, $A0, $ED, $E1, $EE, $F5 ; *They manufacture
    .BYTE $E6, $E1, $E3, $F4, $F5, $F2, $E5, 1
    .BYTE $A0, $C2, $EF, $F4, $F4, $EC, $E5, $A0, $D2, $EF ;  Bottle Rockets
    .BYTE $E3, $EB, $E5, $F4, $F3, 1
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $AE, 1 ;  there.
    .BYTE 0
    .BYTE $C0, $CD, $F9, $A0, $F7, $E9, $E6, $E5, $A0, $F7 ; *My wife was the 1st
    .BYTE $E1, $F3, $A0, $F4, $E8, $E5, $A0, $B1, $F3, $F4
    .BYTE 1
    .BYTE $A0, $CD, $E9, $F3, $F3, $A0, $CD, $E5, $F2, $F2 ;  Miss Merrysville in
    .BYTE $F9, $F3, $F6, $E9, $EC, $EC, $E5, $A0, $E9, $EE
    .BYTE 1
    .BYTE $A0, $E8, $E9, $F3, $F4, $EF, $F2, $F9, $AE, 1 ;  history.
    .BYTE 0
    .BYTE $C0, $CF, $CB, $AC, $A0, $C9, $A7, $F6, $E5, $A0 ; *OK, I've unlocked
    .BYTE $F5, $EE, $EC, $EF, $E3, $EB, $E5, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F2, $EF, $EF, $E6, $AE ;  the roof. While
    .BYTE $A0, $D7, $E8, $E9, $EC, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $F2, $E5, $A0, $F5, $F0 ;  you're up there...
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $E1, $EB, $E5, $A0, $F3, $F5, $F2, $E5 ; *Make sure to take
    .BYTE $A0, $F4, $EF, $A0, $F4, $E1, $EB, $E5, 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $F6, $E9 ;  in the view. It is
    .BYTE $E5, $F7, $AE, $A0, $C9, $F4, $A0, $E9, $F3, 1
    .BYTE $A0, $F5, $EE, $E6, $EF, $F2, $E7, $E5, $F4, $F4 ;  unforgettable.
    .BYTE $E1, $E2, $EC, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CC, $E1, $F4, $E5, $F2, $A0, $F7, $E5, $A0 ; *Later we should go
    .BYTE $F3, $E8, $EF, $F5, $EC, $E4, $A0, $E7, $EF, 1
    .BYTE $A0, $F4, $EF, $A0, $C4, $F5, $EE, $E3, $E1, $EE ;  to Duncan's
    .BYTE $A7, $F3, 1
    .BYTE $A0, $C6, $E1, $E3, $F4, $EF, $F2, $F9, $AE, $AE ;  Factory...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E8, $E5, $E1, $F2 ; *I've heard they're
    .BYTE $E4, $A0, $F4, $E8, $E5, $F9, $A7, $F2, $E5, 1
    .BYTE $A0, $E3, $EF, $EE, $F3, $F4, $F2, $F5, $E3, $F4 ;  constructing an
    .BYTE $E9, $EE, $E7, $A0, $E1, $EE, 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E4, $E9, $E2, $EC ;  incredible rocket.
    .BYTE $E5, $A0, $F2, $EF, $E3, $EB, $E5, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F9, $A0, $E3, $E1, $EC, $EC ; *They call me names,
    .BYTE $A0, $ED, $E5, $A0, $EE, $E1, $ED, $E5, $F3, $AC
    .BYTE 1
    .BYTE $A0, $F7, $E5, $E1, $EB, $EC, $E9, $EE, $E7, $A0 ;  weakling or four
    .BYTE $EF, $F2, $A0, $E6, $EF, $F5, $F2, 1
    .BYTE $A0, $E5, $F9, $E5, $F3, $AC, $A0, $EF, $F2, $A0 ;  eyes, or worse...
    .BYTE $F7, $EF, $F2, $F3, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $F3, $F5, $F2, $E5, $A0 ; *I'm sure that
    .BYTE $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A7, $F6, $E5, $A0, $E8, $E5 ;  you've heard them.
    .BYTE $E1, $F2, $E4, $A0, $F4, $E8, $E5, $ED, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $EE, $A0, $F4, $E8, $E5, $A0, $ED, $E5 ; *In the mean time,
    .BYTE $E1, $EE, $A0, $F4, $E9, $ED, $E5, $AC, 1
    .BYTE $A0, $E4, $E1, $F7, $EE, $A0, $E2, $F2, $E5, $E1 ;  dawn breaks over
    .BYTE $EB, $F3, $A0, $EF, $F6, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E8, $E1, $F2, $E2, $EF ;  the harbor...
    .BYTE $F2, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $E1, $F2, $E4, $EF, $EE, $A0, $ED, $E5 ; *Pardon me young
    .BYTE $A0, $F9, $EF, $F5, $EE, $E7, 1
    .BYTE $A0, $F7, $E8, $E9, $F0, $F0, $E5, $F2, $AD, $F3 ;  whipper-snappers...
    .BYTE $EE, $E1, $F0, $F0, $E5, $F2, $F3, $AE, $AE, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E4, $E9, $E4, $EE, $A7, $F4, $A0 ; *I didn't really
    .BYTE $F2, $E5, $E1, $EC, $EC, $F9, 1
    .BYTE $A0, $ED, $E5, $E1, $EE, $A0, $F4, $EF, $A0, $F4 ;  mean to talk all
    .BYTE $E1, $EC, $EB, $A0, $E1, $EC, $EC, 1
    .BYTE $A0, $EE, $E9, $E7, $E8, $F4, $AC, $A0, $E2, $F5 ;  night, but...
    .BYTE $F4, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F9, $EF, $F5, $EE, $E7 ; *You young little...
    .BYTE $A0, $EC, $E9, $F4, $F4, $EC, $E5, $AE, $AE, $AE
    .BYTE 1
    .BYTE $A0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E1, $EC ;  Don't talk to me
    .BYTE $EB, $A0, $F4, $EF, $A0, $ED, $E5, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F7, $E1, $F9, $A1 ;  that way!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E7, $E1, $ED, $E5 ; *This game I heard of
    .BYTE $A0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $EF
    .BYTE $E6, 1
    .BYTE 3
    .BYTE $C0, $F7, $E1, $F3, $A0, $F4, $E9, $F4, $EC, $E5 ; *was titled
    .BYTE $E4, 1
    .BYTE $A0, $A0, $A6, $C5, $C1, $D2, $D4, $C8, 1 ;   "EARTH
    .BYTE $A0, $A0, $A0, $C2, $CF, $D5, $CE, $C4, $A6, $AE ;    BOUND"...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $E4, $EF, $EE, $A7, $F4, $A0, $EB, $EE, $EF ; *don't know exactly
    .BYTE $F7, $A0, $E5, $F8, $E1, $E3, $F4, $EC, $F9, 1
    .BYTE $A0, $F7, $E8, $F9, $AE, $AE, $AE, 1 ;  why...
    .BYTE 3
    .BYTE $C0, $E2, $E5, $E3, $E1, $F5, $F3, $E5, $A0, $E9 ; *because it really
    .BYTE $F4, $A0, $F2, $E5, $E1, $EC, $EC, $F9, 1
    .BYTE $A0, $E4, $EF, $E5, $F3, $EE, $A7, $F4, $A0, $ED ;  doesn't matter.
    .BYTE $E1, $F4, $F4, $E5, $F2, $AE, 1
    .BYTE 3
    .BYTE $C0, $D3, $EF, $A0, $E9, $E6, $A0, $F9, $EF, $F5 ; *So if you shouldn't
    .BYTE $A0, $F3, $E8, $EF, $F5, $EC, $E4, $EE, $A7, $F4
    .BYTE 1
    .BYTE $A0, $EA, $F5, $E4, $E7, $E5, $A0, $E1, $A0, $E2 ;  judge a book by its
    .BYTE $EF, $EF, $EB, $A0, $E2, $F9, $A0, $E9, $F4, $F3
    .BYTE 1
    .BYTE $A0, $E3, $EF, $F6, $E5, $F2, $AE, $AE, $AE, 1 ;  cover...
    .BYTE 3
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $EA, $F5, $E4 ; *Don't judge a game
    .BYTE $E7, $E5, $A0, $E1, $A0, $E7, $E1, $ED, $E5, 1
    .BYTE $A0, $E2, $F9, $A0, $E9, $F4, $F3, $A0, $F4, $E9 ;  by its title.
    .BYTE $F4, $EC, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $A0, $EC, $E1, $E4, $F9, $A0, $E1, $F4 ; *A lady at Reindeer
    .BYTE $A0, $D2, $E5, $E9, $EE, $E4, $E5, $E5, $F2, 1
    .BYTE $A0, $D3, $F4, $E1, $F4, $E9, $EF, $EE, $A0, $E8 ;  Station has some-
    .BYTE $E1, $F3, $A0, $F3, $EF, $ED, $E5, $AD, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $A0, $E6, $EF, $F2 ;  thing for you...
    .BYTE $A0, $F9, $EF, $F5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you gone there
    .BYTE $E7, $EF, $EE, $E5, $A0, $F4, $E8, $E5, $F2, $E5
    .BYTE 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $ED, $E5, $F4, $A0, $E8 ;  and met her yet?
    .BYTE $E5, $F2, $A0, $F9, $E5, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $ED, $EF, $F3, $F4, $A0 ; *The most important
    .BYTE $E9, $ED, $F0, $EF, $F2, $F4, $E1, $EE, $F4, 1
    .BYTE $A0, $E8, $E9, $EE, $F4, $A0, $F4, $EF, $A0, $F2 ;  hint to remember
    .BYTE $E5, $ED, $E5, $ED, $E2, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $EF, $F5, $E7, $E8, $A0, $E9, $F3 ;  though is...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $A0, $ED, $E1, $F4, $F4, $E5, $F2 ; *No matter how much
    .BYTE $A0, $E8, $EF, $F7, $A0, $ED, $F5, $E3, $E8, 1
    .BYTE $A0, $E9, $F4, $A0, $E8, $F5, $F2, $F4, $F3, $A0 ;  it hurts your ears
    .BYTE $F9, $EF, $F5, $F2, $A0, $E5, $E1, $F2, $F3, 1
    .BYTE $A0, $F4, $EF, $A0, $E4, $EF, $A0, $F3, $EF, $AE ;  to do so...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CC, $E9, $F3, $F4, $E5, $EE, $A0, $F4, $EF ; *Listen to the words
    .BYTE $A0, $F4, $E8, $E5, $A0, $F7, $EF, $F2, $E4, $F3
    .BYTE 1
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $F3, $EF ;  in the song by
    .BYTE $EE, $E7, $A0, $E2, $F9, 1
    .BYTE 3
    .BYTE $C0, $CD, $E1, $E7, $E9, $E3, $E1, $EE, $F4, $A7 ; *Magicant's guitar
    .BYTE $F3, $A0, $E7, $F5, $E9, $F4, $E1, $F2, 1
    .BYTE $A0, $F0, $EC, $E1, $F9, $E5, $F2, $AE, 1 ;  player.
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you find some-
    .BYTE $E6, $E9, $EE, $E4, $A0, $F3, $EF, $ED, $E5, $AD
    .BYTE 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $A0, $F3, $F4, $F2 ;  thing strange,
    .BYTE $E1, $EE, $E7, $E5, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $E5, $A0, $F3, $F5, $F2, $E5, $A0, $F4 ; *be sure to CHECK it
    .BYTE $EF, $A0, $C3, $C8, $C5, $C3, $CB, $A0, $E9, $F4
    .BYTE 1
    .BYTE $A0, $EF, $F5, $F4, $A0, $E5, $F6, $E5, $F2, $F9 ;  out every time.
    .BYTE $A0, $F4, $E9, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $D3, $E9, $EE, $E7, $E9 ; *The Singing Monkey
    .BYTE $EE, $E7, $A0, $CD, $EF, $EE, $EB, $E5, $F9, 1
    .BYTE $A0, $F3, $E1, $EE, $E7, $A0, $F7, $E9, $F4, $E8 ;  sang with passion.
    .BYTE $A0, $F0, $E1, $F3, $F3, $E9, $EF, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C3, $E1, $E3, $F4, $F5 ; *The Cactus sang...
    .BYTE $F3, $A0, $F3, $E1, $EE, $E7, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $E1, $EE, $E4, $A0, $E6, $EF, $F2, $A0, $F7 ; *and for whatever
    .BYTE $E8, $E1, $F4, $E5, $F6, $E5, $F2, 1
    .BYTE $A0, $F2, $E5, $E1, $F3, $EF, $EE, $AC, $A0, $E9 ;  reason, it kept on
    .BYTE $F4, $A0, $EB, $E5, $F0, $F4, $A0, $EF, $EE, 1
    .BYTE $A0, $F3, $E9, $EE, $E7, $E9, $EE, $E7, $AE, 1 ;  singing.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $D0, $E9, $E1, $EE, $EF ; *The Piano began to
    .BYTE $A0, $E2, $E5, $E7, $E1, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $F0, $EC, $E1, $F9, $A0, $E1, $EC, $EC, $A0 ;  play all by
    .BYTE $E2, $F9, 1
    .BYTE $A0, $E9, $F4, $F3, $E5, $EC, $E6, $AE, $AE, $AE ;  itself...
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C4, $F2, $E1, $E7, $EF ; *The Dragon crooned
    .BYTE $EE, $A0, $E3, $F2, $EF, $EF, $EE, $E5, $E4, 1
    .BYTE $A0, $E8, $E9, $F3, $A0, $F4, $F5, $EE, $E5, $A0 ;  his tune without
    .BYTE $F7, $E9, $F4, $E8, $EF, $F5, $F4, 1
    .BYTE $A0, $ED, $F5, $E3, $E8, $A0, $E8, $E5, $F3, $E9 ;  much hesitation.
    .BYTE $F4, $E1, $F4, $E9, $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F3, $EF, $EE, $E7, $A0 ; *The song went
    .BYTE $F7, $E5, $EE, $F4, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something like
    .BYTE $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $AE, $AE, $AE, 1 ;  this...
    .BYTE 0
    .BYTE $C0, $D2, $EF, $E2, $EF, $F4, $A0, $C5, $F6, $E5 ; *Robot Eve was
    .BYTE $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $E4, $E5, $ED, $EF, $EC, $E9, $F3, $E8, $E5 ;  demolished and
    .BYTE $E4, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $ED, $EF, $F6, $E5, $E4, $A0, $EE, $EF, $A0 ;  moved no more.
    .BYTE $ED, $EF, $F2, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C5, $F8, $E1, $ED, $E9, $EE, $E9, $EE, $E7 ; *Examining the
    .BYTE $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F7, $F2, $E5, $E3, $EB, $E1, $E7, $E5, $A0 ;  wreckage caused
    .BYTE $E3, $E1, $F5, $F3, $E5, $E4, 1
    .BYTE $A0, $ED, $F5, $F3, $E9, $E3, $A0, $F4, $EF, $A0 ;  music to start...
    .BYTE $F3, $F4, $E1, $F2, $F4, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $EE, $E5, $A0, $EF, $E6, $A0, $E1, $A0 ; *One of a kind!
    .BYTE $EB, $E9, $EE, $E4, $A1, 1
    .BYTE $A0, $D3, $E5, $E5, $A0, $F4, $E8, $E5, $A0, $E1 ;  See the amazing
    .BYTE $ED, $E1, $FA, $E9, $EE, $E7, 1
    .BYTE $A0, $D3, $E9, $EE, $E7, $E9, $EE, $E7, $A0, $CD ;  Singing Monkey!
    .BYTE $EF, $EE, $EB, $E5, $F9, $A1, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A7, $F3, $A0, $E1 ; *There's a padlock
    .BYTE $A0, $F0, $E1, $E4, $EC, $EF, $E3, $EB, 1
    .BYTE $A0, $EF, $EE, $A0, $F4, $E8, $E5, $A0, $E4, $EF ;  on the door at the
    .BYTE $EF, $F2, $A0, $E1, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F4, $EF, $F0, $A0, $EF, $E6, $A0, $F4, $E8 ;  top of the stairs.
    .BYTE $E5, $A0, $F3, $F4, $E1, $E9, $F2, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $ED, $F5, $F3, $F4, $A0, $F3, $F4 ; *I must stay here
    .BYTE $E1, $F9, $A0, $E8, $E5, $F2, $E5, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F4, $E8, $E5, $A0 ;  with the people of
    .BYTE $F0, $E5, $EF, $F0, $EC, $E5, $A0, $EF, $E6, 1
    .BYTE $A0, $D3, $EE, $EF, $F7, $ED, $E1, $EE, $AE, 1 ;  Snowman.
    .BYTE 3
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F4, $E1 ; *Please take care...
    .BYTE $EB, $E5, $A0, $E3, $E1, $F2, $E5, $AE, $AE, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F4, $A0, $E5, $EE, $EF, $F5, $E7 ; *Not enough money.
    .BYTE $E8, $A0, $ED, $EF, $EE, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $F0, $EC, $E5, $E1, $F3, $E5, $A0, $E7 ; , please go
    .BYTE $EF, 1
    .BYTE $A0, $E6, $E9, $F2, $F3, $F4, $AE, $A0, $C9, $A0 ;  first. I am so
    .BYTE $E1, $ED, $A0, $F3, $EF, 1
    .BYTE $A0, $E1, $E6, $F2, $E1, $E9, $E4, $AE, 1 ;  afraid.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $EC, $EF, $E3, $EB, $A0 ; *The lock was
    .BYTE $F7, $E1, $F3, 1
    .BYTE $A0, $E2, $F2, $EF, $EB, $E5, $EE, $AE, $A0 ;  broken.
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $EF, $F0, $E5, $EE, $E5, $E4, $A0, $F4, $E8 ;  opened the door.
    .BYTE $E5, $A0, $E4, $EF, $EF, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E9, $A1, $A0 ; *Hi!
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE $A0, $C8, $EF, $F7, $A0, $E1, $F2, $E5, $A0, $F9 ;  How are you doin'?
    .BYTE $EF, $F5, $A0, $E4, $EF, $E9, $EE, $A7, $A2, 1
    .BYTE 0
    .BYTE $C0, $CC, $E5, $F4, $A0 ; *Let
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $EF, $ED, $E5, 1 ;  come
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $E6, $E1, $F3, $F4 ;  back fast!
    .BYTE $A1, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $AC, $A0, $EE, $EF, $AE, $A0, $C9 ; *No, no. I can't
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, 1
    .BYTE $A0, $EB, $E5, $E5, $F0, $A0 ;  keep
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $ED, $E5, $AE, 1 ;  with me.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $ED, $F5, $F3, $F4, $A0, $E7, $EF ; *I must go my own
    .BYTE $A0, $ED, $F9, $A0, $EF, $F7, $EE, 1
    .BYTE $A0, $F7, $E1, $F9, $AC, $A0, $F7, $E8, $E1, $F4 ;  way, whatever you
    .BYTE $E5, $F6, $E5, $F2, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $E1, $F9, $AE, 1 ;  say.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E6, $E1, $E9, $F4, $E8, $E6, $F5 ; 's faithful
    .BYTE $EC, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $EC, $EF, $F9, $E1, $EC ;  and loyal servant,
    .BYTE $A0, $F3, $E5, $F2, $F6, $E1, $EE, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $F2, $E1, $F6, $E5 ; *The brave soldier,
    .BYTE $A0, $F3, $EF, $EC, $E4, $E9, $E5, $F2, $AC, 1
    .BYTE $A0, $C6, $EC, $F9, $E9, $EE, $E7, $A0, $CD, $E1 ;  Flying Man, rests
    .BYTE $EE, $AC, $A0, $F2, $E5, $F3, $F4, $F3, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $E9, $EE, $A0, $F0 ;  here in peace.
    .BYTE $E5, $E1, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $F3, $F4, $F2, $EF, $EE, $E7, 1 ; 's strong
    .BYTE $A0, $E1, $EE, $E4, $A0, $F0, $EF, $F7, $E5, $F2 ;  and powerful ally,
    .BYTE $E6, $F5, $EC, $A0, $E1, $EC, $EC, $F9, $AC, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $F2, $E1, $F6, $E5 ; *The brave soldier,
    .BYTE $A0, $F3, $EF, $EC, $E4, $E9, $E5, $F2, $AC, 1
    .BYTE $A0, $C6, $EC, $F9, $E9, $EE, $E7, $A0, $CD, $E1 ;  Flying Man, rests
    .BYTE $EE, $AC, $A0, $F2, $E5, $F3, $F4, $F3, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $E9, $EE, $A0, $F0 ;  here in peace.
    .BYTE $E5, $E1, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $E2, $E5, $EE, $E5, $F6, $EF, $EC, $E5, $EE ;  benevolent buddy,
    .BYTE $F4, $A0, $E2, $F5, $E4, $E4, $F9, $AC, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $F2, $E1, $F6, $E5 ; *The brave soldier,
    .BYTE $A0, $F3, $EF, $EC, $E4, $E9, $E5, $F2, $AC, 1
    .BYTE $A0, $C6, $EC, $F9, $E9, $EE, $E7, $A0, $CD, $E1 ;  Flying Man, rests
    .BYTE $EE, $AC, $A0, $F2, $E5, $F3, $F4, $F3, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $E9, $EE, $A0, $F0 ;  here in peace.
    .BYTE $E5, $E1, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $EF, $A0 ; *To
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E7, $F2, $E5, $E1, $F4, 1 ; 's great
    .BYTE $A0, $F3, $EF, $F2, $F2, $EF, $F7, $AC, 1 ;  sorrow,
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $F2, $E1, $F6, $E5 ; *The brave soldier,
    .BYTE $A0, $F3, $EF, $EC, $E4, $E9, $E5, $F2, $AC, 1
    .BYTE $A0, $C6, $EC, $F9, $E9, $EE, $E7, $A0, $CD, $E1 ;  Flying Man, rests
    .BYTE $EE, $AC, $A0, $F2, $E5, $F3, $F4, $F3, 1
    .BYTE $A0, $E8, $E5, $F2, $E5, $A0, $E9, $EE, $A0, $F0 ;  here in peace.
    .BYTE $E5, $E1, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $EF, $A0 ; *To
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E8, $EF, $F2, $F2, $EF, $F2, 1 ; 's horror
    .BYTE $A0, $E1, $EE, $E4, $A0, $E4, $E9, $F3, $ED, $E1 ;  and dismay,
    .BYTE $F9, $AC, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $F2, $E1, $F6, $E5 ; *The brave soldier,
    .BYTE $A0, $F3, $EF, $EC, $E4, $E9, $E5, $F2, $AC, 1
    .BYTE $A0, $C6, $EC, $F9, $E9, $EE, $E7, $A0, $CD, $E1 ;  Flying Man, rests
    .BYTE $EE, $AC, $A0, $F2, $E5, $F3, $F4, $F3, 1
    .BYTE $A0, $E9, $EE, $A0, $F0, $E5, $E1, $E3, $E5, $A0 ;  in peace here.
    .BYTE $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $F2, $EF, $E3, $EC, $E1, $ED, $E1, $F4 ; *Proclamation by
    .BYTE $E9, $EF, $EE, $A0, $E2, $F9, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $D4, $EF, $F7, $EE, $A7 ;  the Town's Mayor
    .BYTE $F3, $A0, $CD, $E1, $F9, $EF, $F2, 1
    .BYTE $A0, $F3, $E1, $F9, $F3, $AE, $AE, $AE, 1 ;  says...
    .BYTE 3
    .BYTE $C0, $CE, $EF, $A0, $EF, $EE, $E5, $A0, $ED, $E1 ; *No one may pass
    .BYTE $F9, $A0, $F0, $E1, $F3, $F3, 1
    .BYTE $A0, $F5, $EE, $F4, $E9, $EC, $A0, $F4, $E8, $E5 ;  until the Zoo case
    .BYTE $A0, $DA, $EF, $EF, $A0, $E3, $E1, $F3, $E5, 1
    .BYTE $A0, $E9, $F3, $A0, $F3, $EF, $EC, $F6, $E5, $E4 ;  is solved.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $A0, $F2, $E5, $E1, $EC, $A0, $EF, $EE ; *A real one way
    .BYTE $E5, $A0, $F7, $E1, $F9, 1
    .BYTE $A0, $E1, $F4, $F4, $E9, $F4, $F5, $E4, $E5, $A0 ;  attitude if you
    .BYTE $E9, $E6, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E1, $F3, $EB, $A0, $ED, $E5, $AE, 1 ;  ask me.
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E4, $EF, $EE, $A7, $F4, $A0, $E8 ; *I don't have to
    .BYTE $E1, $F6, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $E9, $F4, $AC, $A0 ;  like it, just
    .BYTE $EA, $F5, $F3, $F4, 1
    .BYTE $A0, $E5, $EE, $E6, $EF, $F2, $E3, $E5, $A0, $E9 ;  enforce it.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $E5, $E5, $F0, $A0, $E9, $EE, $A0, $E1 ; *Deep in a cave,
    .BYTE $A0, $E3, $E1, $F6, $E5, $AC, 1
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0 ;  there is a strange
    .BYTE $E1, $A0, $F3, $F4, $F2, $E1, $EE, $E7, $E5, 1
    .BYTE $A0, $F2, $EF, $E3, $EB, $AD, $EC, $E9, $EB, $E5 ;  rock-like thing.
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A7, $F3, $A0, $F3, $EF, $A0, $F3 ; *It's so strange,
    .BYTE $F4, $F2, $E1, $EE, $E7, $E5, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E4, $E5, $E6, $E9, $EE ;  you definitely
    .BYTE $E9, $F4, $E5, $EC, $F9, 1
    .BYTE $A0, $F3, $E8, $EF, $F5, $EC, $E4, $A0, $F4, $E1 ;  should take a look.
    .BYTE $EB, $E5, $A0, $E1, $A0, $EC, $EF, $EF, $EB, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $F4 ; *I heard that you
    .BYTE $E8, $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $E3, $EF, $ED, $ED, $F5 ;  can communicate
    .BYTE $EE, $E9, $E3, $E1, $F4, $E5, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $D4, $E5, $EC, $E5 ;  with Telepathy.
    .BYTE $F0, $E1, $F4, $E8, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you heard
    .BYTE $E8, $E5, $E1, $F2, $E4, 1
    .BYTE $A0, $E1, $EC, $EC, $A0, $EF, $E6, $A0, $F4, $E8 ;  all of the people
    .BYTE $E5, $A0, $F0, $E5, $EF, $F0, $EC, $E5, 1
    .BYTE $A0, $F4, $E1, $EC, $EB, $E9, $EE, $E7, $A0, $E1 ;  talking about you?
    .BYTE $E2, $EF, $F5, $F4, $A0, $F9, $EF, $F5, $A2, 1
    .BYTE 3
    .BYTE $C0, $C2, $F5, $F4, $A0, $F9, $EF, $F5, $A0, $F0 ; *But you probably
    .BYTE $F2, $EF, $E2, $E1, $E2, $EC, $F9, 1
    .BYTE $A0, $E4, $EF, $EE, $A7, $F4, $A0, $EE, $E5, $E5 ;  don't need to
    .BYTE $E4, $A0, $F4, $EF, 1
    .BYTE $A0, $A7, $EC, $E9, $F3, $F4, $E5, $EE, $A7, $A0 ;  'listen' to them!
    .BYTE $F4, $EF, $A0, $F4, $E8, $E5, $ED, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $E7 ; *Are you going to
    .BYTE $EF, $E9, $EE, $E7, $A0, $F4, $EF, 1
    .BYTE $A0, $D3, $EE, $EF, $F7, $ED, $E1, $EE, $A2, 1 ;  Snowman?
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E6, $EF, $F5, $EE, $E4, $A0, $F4 ; *I found this Hat.
    .BYTE $E8, $E9, $F3, $A0, $C8, $E1, $F4, $AE, 1
    .BYTE $A0, $C9, $A0, $E2, $E5, $EC, $E9, $E5, $F6, $E5 ;  I believe it's the
    .BYTE $A0, $E9, $F4, $A7, $F3, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F0, $F2, $EF, $F0, $E5, $F2, $F4, $F9, $A0 ;  property of a girl
    .BYTE $EF, $E6, $A0, $E1, $A0, $E7, $E9, $F2, $EC, 1
    .BYTE 3
    .BYTE $C0, $F7, $E8, $EF, $A0, $EC, $E9, $F6, $E5, $F3 ; *who lives there.
    .BYTE $A0, $F4, $E8, $E5, $F2, $E5, $AE, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $F4, $E1 ;  Please take it to
    .BYTE $EB, $E5, $A0, $E9, $F4, $A0, $F4, $EF, 1
    .BYTE $A0, $E8, $E5, $F2, $AE, 1 ;  her.
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $EC, $AC, $A0, $C9, $A0, $E8 ; *Well, I had
    .BYTE $E1, $E4, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something to ask
    .BYTE $A0, $F4, $EF, $A0, $E1, $F3, $EB, 1
    .BYTE $A0, $F9, $EF, $F5, $AE, 1 ;  you.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E7, $EF, $EF, $E4, $AD ; *The good-looking
    .BYTE $EC, $EF, $EF, $EB, $E9, $EE, $E7, 1
    .BYTE $A0, $E2, $EF, $F9, $A0, $F3, $E1, $EE, $E7, $A0 ;  boy sang a quite a
    .BYTE $E1, $A0, $F1, $F5, $E9, $F4, $E5, $A0, $E1, 1
    .BYTE $A0, $F5, $EE, $E9, $F1, $F5, $E5, $A0, $F3, $EF ;  unique song.
    .BYTE $EE, $E7, $AE, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E4, $E9, $E4, $A0, $EE, $EF, $F4, 1 ;  did not
    .BYTE $A0, $F7, $E1, $EE, $F4, $A0, $F4, $EF, $A0, $F2 ;  want to remember
    .BYTE $E5, $ED, $E5, $ED, $E2, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F3, $F4, $F2, $E1 ;  this strange melody.
    .BYTE $EE, $E7, $E5, $A0, $ED, $E5, $EC, $EF, $E4, $F9
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C5, $F8, $E3, $F5, $F3, $E5, $A0, $ED, $E5 ; *Excuse me...
    .BYTE $AE, $AE, $AE, 1
    .BYTE $A0, $E3, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ;  could you answer
    .BYTE $A0, $E1, $EE, $F3, $F7, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F1, $F5, $E5, $F3 ;  this questionnaire?
    .BYTE $F4, $E9, $EF, $EE, $EE, $E1, $E9, $F2, $E5, $A2
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $F4, $E8 ; *Do you think the
    .BYTE $E9, $EE, $EB, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F4, $F2, $E1, $E9, $EE, $A0, $F4, $E9, $E3 ;  train tickets are
    .BYTE $EB, $E5, $F4, $F3, $A0, $E1, $F2, $E5, 1
    .BYTE $A0, $F4, $EF, $EF, $A0, $E5, $F8, $F0, $E5, $EE ;  too expensive?
    .BYTE $F3, $E9, $F6, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0, $C8, $E1, $F6, $E5, $A0, $F9, $EF, $F5, $A0 ; *Have you USEd
    .BYTE $D5, $D3, $C5, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $C2, $F5, $EC, $EC, $E8 ;  the Bullhorn?
    .BYTE $EF, $F2, $EE, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E1, $EE, $EB, $A0, $F9, $EF, $F5 ; *Thank you for
    .BYTE $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $E3, $EF, $EF, $F0 ;  your cooperation.
    .BYTE $E5, $F2, $E1, $F4, $E9, $EF, $EE, $AE, 1
    .BYTE $A0, $C9, $EE, $A0, $E5, $F8, $E3, $E8, $E1, $EE ;  In exchange...
    .BYTE $E7, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, $F2, $A0 ; *for your time,
    .BYTE $F4, $E9, $ED, $E5, $AC, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $D4, $E5, $EC, $E5 ;  this Telephone Card
    .BYTE $F0, $E8, $EF, $EE, $E5, $A0, $C3, $E1, $F2, $E4
    .BYTE 1
    .BYTE $A0, $E9, $F3, $A0, $E6, $EF, $F2, $A0, $F9, $EF ;  is for you.
    .BYTE $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C5, $F8, $E3, $F5, $F3, $E5, $A0, $ED, $E5 ; *Excuse me, but
    .BYTE $AC, $A0, $E2, $F5, $F4, 1
    .BYTE $A0, $E3, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ;  could you answer
    .BYTE $A0, $E1, $EE, $F3, $F7, $E5, $F2, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F1, $F5, $E5, $F3 ;  this questionnaire?
    .BYTE $F4, $E9, $EF, $EE, $EE, $E1, $E9, $F2, $E5, $A2
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $CF, $E8, $A1, $A0, $C9, $A7, $ED, $A0, $F3 ; *Oh! I'm sorry I've
    .BYTE $EF, $F2, $F2, $F9, $A0, $C9, $A7, $F6, $E5, 1
    .BYTE $A0, $E1, $EC, $F2, $E5, $E1, $E4, $F9, $A0, $E1 ;  already asked you
    .BYTE $F3, $EB, $E5, $E4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F4, $E8, $E5, $F3, $E5, $A0, $F1, $F5, $E5 ;  these questions...
    .BYTE $F3, $F4, $E9, $EF, $EE, $F3, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $E1, $F2, $E9, $EE, $E7, $A0, $F4 ; *Hearing the soulful
    .BYTE $E8, $E5, $A0, $F3, $EF, $F5, $EC, $E6, $F5, $EC
    .BYTE 1
    .BYTE $A0, $E3, $F2, $F9, $AC, $A0, $F4, $E8, $E5, $A0 ;  cry, the Benevolent
    .BYTE $C2, $E5, $EE, $E5, $F6, $EF, $EC, $E5, $EE, $F4
    .BYTE 1
    .BYTE $A0, $CF, $EC, $E4, $A0, $CD, $E1, $EE, $A0, $F3 ;  Old Man showed up.
    .BYTE $E8, $EF, $F7, $E5, $E4, $A0, $F5, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F0, $F2, $E9, $E5, $E4, $A0, $F5, $F0, 1 ;  pried up
    .BYTE $A0, $F4, $E8, $E5, $A0, $EC, $E9, $E4, $AE, $A0 ;  the lid. Out from
    .BYTE $CF, $F5, $F4, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $E3, $E1, $F3, $EB, $E5 ;  the casket...!!
    .BYTE $F4, $AE, $AE, $AE, $A1, $A1, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EC, $EF, $EF, $EB, $E5, $E4, 1 ;  looked
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E5, $A0 ;  into the telescope.
    .BYTE $F4, $E5, $EC, $E5, $F3, $E3, $EF, $F0, $E5, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F3, $E8, $E9, $ED, $ED ; *The shimmering blue
    .BYTE $E5, $F2, $E9, $EE, $E7, $A0, $E2, $EC, $F5, $E5
    .BYTE 1
    .BYTE $A0, $F3, $E5, $E1, $A0, $F3, $F4, $F2, $E5, $F4 ;  sea stretched
    .BYTE $E3, $E8, $E5, $E4, 1
    .BYTE $A0, $F4, $EF, $F7, $E1, $F2, $E4, $A0, $F4, $E8 ;  toward the horizon.
    .BYTE $E5, $A0, $E8, $EF, $F2, $E9, $FA, $EF, $EE, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $EE, $A0, $F4, $E8, $E5, $A0, $E4, $E9 ; *In the distance,
    .BYTE $F3, $F4, $E1, $EE, $E3, $E5, $AC, 1
    .BYTE $A0, $EF, $EE, $A0, $F4, $E8, $E5, $A0, $E9, $F3 ;  on the island,
    .BYTE $EC, $E1, $EE, $E4, $AC, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7 ;  something sparkled!
    .BYTE $A0, $F3, $F0, $E1, $F2, $EB, $EC, $E5, $E4, $A1
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D3, $F5, $E4, $E4, $E5, $EE, $EC, $F9, $AC ; *Suddenly, from
    .BYTE $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $E9, $EE, $F3, $E9, $E4, $E5, $A0, $EF, $E6 ;  inside of the
    .BYTE $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E3, $E1, $F0, $F3, $F5, $EC, $E5, $AE, $AE ;  capsule...
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A9, 1            ; )
    .BYTE $A0, $C4, $E1, $E4, $E4, $F9, $AE, $AE, $AE, 1 ;  Daddy...
    .BYTE $A0, $C7, $EF, $EF, $E4, $AD, $E2, $F9, $E5, $AE ;  Good-bye...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $CE, $E5, $F8, $F4, $A0, $F4, $E9, $ED, $E5 ; *Next time, Mommy
    .BYTE $AC, $A0, $CD, $EF, $ED, $ED, $F9, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $E3, $EF, $ED, $E5 ;  will come back
    .BYTE $A0, $E2, $E1, $E3, $EB, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $ED, $E5, $A1, 1 ;  with me!
    .BYTE 3
    .BYTE $C0, $C2, $E5, $EC, $E9, $E5, $F6, $E5, $A0, $E9 ; *Believe in us!
    .BYTE $EE, $A0, $F5, $F3, $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $EF, $A0, $E1, $F2, $E5, $A0, $F9 ; *Who are you
    .BYTE $EF, $F5, 1
    .BYTE $A0, $F4, $E1, $EC, $EB, $E9, $EE, $E7, $A0, $F4 ;  talking to?
    .BYTE $EF, $A2, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A2, $A1, $A2, 1 ; *What?!?
    .BYTE 0
    .BYTE $C0, $CE, $EF, $A0, $F0, $F2, $EF, $E2, $EC, $E5 ; *No problem.
    .BYTE $ED, $AE, 1
    .BYTE 0
    .BYTE $C0, $A8, $D4, $E8, $E5, $A0, $F6, $EF, $E9, $E3 ; *(The voice of Queen
    .BYTE $E5, $A0, $EF, $E6, $A0, $D1, $F5, $E5, $E5, $EE
    .BYTE 1
    .BYTE $A0, $CD, $E1, $F2, $F9, $A0, $F3, $F0, $E5, $E1 ;  Mary speaks)
    .BYTE $EB, $F3, $A9, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, 1 ; *I am the
    .BYTE $A0, $E3, $EF, $EE, $F3, $E3, $E9, $EF, $F5, $F3 ;  consciousness of
    .BYTE $EE, $E5, $F3, $F3, $A0, $EF, $E6, 1
    .BYTE $A0, $CD, $E1, $F2, $E9, $E1, $AE, 1 ;  Maria.
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $F5, $F3, $E5, $A0, $ED, $F9, 1 ; , use my
    .BYTE $A0, $EC, $E1, $F3, $F4, $A0, $F0, $EF, $F7, $E5 ;  last power!
    .BYTE $F2, $A1, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $EE, $AC, $A0, $E1, $F3, $A0 ; *Then, as the voice
    .BYTE $F4, $E8, $E5, $A0, $F6, $EF, $E9, $E3, $E5, 1
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, $A0, $E1, $A0 ;  became a whisper of
    .BYTE $F7, $E8, $E9, $F3, $F0, $E5, $F2, $A0, $EF, $E6
    .BYTE 1
    .BYTE $A0, $F7, $E9, $EE, $E4, $AE, $AE, $AE, 1 ;  wind...
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $EF, $E3, $EB, 1 ; *The rock
    .BYTE $A0, $E4, $E9, $F3, $E9, $EE, $F4, $E5, $E7, $F2 ;  disintegrated.
    .BYTE $E1, $F4, $E5, $E4, $AE, 1
    .BYTE 3
    .BYTE $C0, $CC, $E5, $E1, $F6, $E9, $EE, $E7, $A0, $EF ; *Leaving only a
    .BYTE $EE, $EC, $F9, $A0, $E1, 1
    .BYTE $A0, $F0, $E9, $EC, $E5, $A0, $EF, $E6, $A0, $F6 ;  pile of very fine
    .BYTE $E5, $F2, $F9, $A0, $E6, $E9, $EE, $E5, 1
    .BYTE $A0, $F3, $E1, $EE, $E4, $A0, $E1, $F4, $A0, $F4 ;  sand at their feet.
    .BYTE $E8, $E5, $E9, $F2, $A0, $E6, $E5, $E5, $F4, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, $A0, $F4 ; *Welcome to our shop.
    .BYTE $EF, $A0, $EF, $F5, $F2, $A0, $F3, $E8, $EF, $F0
    .BYTE $AE, 1
    .BYTE $A0, $D7, $E5, $A0, $F3, $E5, $EC, $EC, $A0, $F7 ;  We sell weapons.
    .BYTE $E5, $E1, $F0, $EF, $EE, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $D5, $D3, $C5, $E4, 1 ;  USEd
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, 1 ;  can't
    .BYTE $A0, $D5, $D3, $C5, $A0 ;  USE
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E2, $E5, $A0 ; *Don't be silly,
    .BYTE $F3, $E9, $EC, $EC, $F9, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E3, $E1, $EE, $A7, $F4 ;  you can't do that.
    .BYTE $A0, $E4, $EF, $A0, $F4, $E8, $E1, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E5, $F1, $F5, $E9, $F0, $F0, $E5, $E4, 1 ;  equipped
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, 1 ;  can't
    .BYTE $A0, $E5, $F1, $F5, $E9, $F0, $A0 ;  equip
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $E8, $F2, $E5, $F7, 1 ;  threw
    .BYTE $A0, $E1, $F7, $E1, $F9, $A0 ;  away
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $F4, $E8, $F2 ; *Don't throw
    .BYTE $EF, $F7, 1
    .BYTE $A0, $E1, $F7, $E1, $F9, $A0 ;  away
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $EE, $E4, $E5, $E4, 1 ;  handed
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $EF, 1  ;  to
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C3, $E1, $EE, $A7, $F4, $A0, $E8, $E1, $EE ; *Can't hand over
    .BYTE $E4, $A0, $EF, $F6, $E5, $F2, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, 1 ;  can't
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $A0, $E1, $EE, $F9 ;  carry any more.
    .BYTE $A0, $ED, $EF, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F4, $E8, $E9, $EE, $E7, $A0, $E8 ; *Nothing happened.
    .BYTE $E1, $F0, $F0, $E5, $EE, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EF, $F0, $E5, $EE, $E5, $E4, 1 ;  opened
    .BYTE $A0, $F4, $E8, $E5, $A0, $F0, $F2, $E5, $F3, $E5 ;  the present.
    .BYTE $EE, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $F7, $E1, $F3 ; *There was
    .BYTE 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E7, $EF, $F4, 1 ;  got
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $C3, $E1, $EE, $A7, $F4, $A0, $E3, $E1, $F2 ; *Can't carry
    .BYTE $F2, $F9, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ;  anything else.
    .BYTE $E5, $EC, $F3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F4, $A0, $F7, $E1, $F3, $A0, $E5, $ED ; *It was empty.
    .BYTE $F0, $F4, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C3, $F5, $F2, $E5, $A0, $F0, $EF, $E9, $F3 ; *Cure poison.
    .BYTE $EF, $EE, $AE, 1
    .BYTE $A0, $D3, $EF, $E6, $F4, $E5, $EE, 1 ;  Soften
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $C3, $E9, $F4, $F9 ; *     City Zoo
    .BYTE $A0, $DA, $EF, $EF, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $CE, $CF, $D2 ;        NORTH
    .BYTE $D4, $C8, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $A0, $D0, $EF, $E4 ; *      Podunk
    .BYTE $F5, $EE, $EB, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D3, $CF, $D5 ;        SOUTH
    .BYTE $D4, $C8, 1
    .BYTE 0
    .BYTE $C0, $CE, $EF, $A0, $C8, $F5, $EE, $F4, $E9, $EE ; *No Hunting -
    .BYTE $E7, $A0, $AD, 1
    .BYTE $A0, $C1, $F0, $F0, $F2, $EF, $E1, $E3, $E8, $E9 ;  Approaching
    .BYTE $EE, $E7, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $C3, $E1, $EE, $E1, $F2 ; *The Canary Village
    .BYTE $F9, $A0, $D6, $E9, $EC, $EC, $E1, $E7, $E5, 1
    .BYTE $A0, $D7, $E9, $EC, $E4, $EC, $E9, $E6, $E5, $A0 ;  Wildlife Refuge
    .BYTE $D2, $E5, $E6, $F5, $E7, $E5, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $C3, $E9, $F4, $F9, $A0, $C8, $E1 ; *  City Hall
    .BYTE $EC, $EC, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $C3, $E9, $F4, $F9, $A0 ;      City of Podunk
    .BYTE $EF, $E6, $A0, $D0, $EF, $E4, $F5, $EE, $EB, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $CC, $EF, $EF, $EB, $AD, $CF, $F5 ; *  Look-Out Tower
    .BYTE $F4, $A0, $D4, $EF, $F7, $E5, $F2, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE $A0, $A0, $A0, $C8, $E1, $F2, $E2, $EF, $F2, $A0 ;    Harbor   NORTH
    .BYTE $A0, $A0, $CE, $CF, $D2, $D4, $C8, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $A0, $C5, $EC, $EC ; *      Ellay
    .BYTE $E1, $F9, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $A0, $A0, $CD, $EF, $F5, $EE, $F4 ; *    Mount Itoi
    .BYTE $A0, $C9, $F4, $EF, $E9, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $C5, $C1 ;         EAST
    .BYTE $D3, $D4, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $C8, $E5, $E1, $EC, $E5, $F2 ; *   Healer's House
    .BYTE $A7, $F3, $A0, $C8, $EF, $F5, $F3, $E5, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE $A0, $A0, $A0, $C2, $E5, $F9, $EF, $EE, $E4, $A0 ;    Beyond Bridge...
    .BYTE $C2, $F2, $E9, $E4, $E7, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $C3, $E5, $ED, $E5 ; *     Cemetery
    .BYTE $F4, $E5, $F2, $F9, 1
    .BYTE $A0, $C1, $E2, $E1, $EE, $E4, $EF, $EE, $A0, $E1 ;  Abandon all hope
    .BYTE $EC, $EC, $A0, $E8, $EF, $F0, $E5, 1
    .BYTE $A0, $F9, $E5, $A0, $F7, $E8, $EF, $A0, $E5, $EE ;  ye who enter!
    .BYTE $F4, $E5, $F2, $A1, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $A0, $D0, $EF, $E4 ; *      Podunk
    .BYTE $F5, $EE, $EB, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $A0, $CD, $E5, $F2, $F2, $F9, $F3 ; *   Merrysville
    .BYTE $F6, $E9, $EC, $EC, $E5, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $C5, $C1 ;         EAST
    .BYTE $D3, $D4, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $C3, $E9, $F4, $F9 ; *     City Zoo
    .BYTE $A0, $DA, $EF, $EF, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $B7, $B0, $B0, $A0, $ED ;      700 meters
    .BYTE $E5, $F4, $E5, $F2, $F3, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE 0
    .BYTE $C0, $D3, $EE, $EF, $F7, $ED, $E1, $EE, $A0, $C3 ; *Snowman Chateau
    .BYTE $E8, $E1, $F4, $E5, $E1, $F5, 1
    .BYTE $A0, $D3, $F4, $F2, $E1, $E9, $E7, $E8, $F4, $A0 ;  Straight Ahead
    .BYTE $C1, $E8, $E5, $E1, $E4, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $A0, $C5, $EC, $EC ; *      Ellay
    .BYTE $E1, $F9, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $A0, $D3, $F7, $E1 ; *      Swamp
    .BYTE $ED, $F0, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D3, $CF, $D5 ;        SOUTH
    .BYTE $D4, $C8, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $D4, $F7, $E9, $EE ; *     Twinkle
    .BYTE $EB, $EC, $E5, 1
    .BYTE $A0, $A0, $C5, $EC, $E5, $ED, $E5, $EE, $F4, $E1 ;   Elementary School
    .BYTE $F2, $F9, $A0, $D3, $E3, $E8, $EF, $EF, $EC, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D3, $CF, $D5 ;        SOUTH
    .BYTE $D4, $C8, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E8, $EF, $F5, $F3, $E5, 1 ; 's house
    .BYTE 0
    .BYTE $C0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, $A0, $F4 ; *Welcome to
    .BYTE $EF, 1
    .BYTE $A0, $CD, $E5, $F2, $F2, $F9, $F3, $F6, $E9, $EC ;  Merrysville!
    .BYTE $EC, $E5, $A1, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $A0, $A0, $A0, $A0, $D0, $EF, $E4 ; *      Podunk
    .BYTE $F5, $EE, $EB, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $D5, $EE, $E9, $EF, $EE, $A0, $A0 ; *  Union  Station
    .BYTE $D3, $F4, $E1, $F4, $E9, $EF, $EE, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $CE, $CF, $D2 ;        NORTH
    .BYTE $D4, $C8, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $C8, $E5, $E1, $EC, $E5, $F2, $A7 ; *  Healer's House
    .BYTE $F3, $A0, $C8, $EF, $F5, $F3, $E5, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE 3
    .BYTE $C0, $A0, $D2, $E5, $E9, $EE, $E4, $E5, $E5, $F2 ; * Reindeer Station
    .BYTE $A0, $D3, $F4, $E1, $F4, $E9, $EF, $EE, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $C5, $C1 ;         EAST
    .BYTE $D3, $D4, 1
    .BYTE 3
    .BYTE $C0, $A0, $A0, $A0, $D2, $E5, $E9, $EE, $E4, $E5 ; *   Reindeer Town
    .BYTE $E5, $F2, $A0, $D4, $EF, $F7, $EE, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D3, $CF ;         SOUTH
    .BYTE $D5, $D4, $C8, 1
    .BYTE 0
    .BYTE $C0, $A0, $D3, $F0, $EF, $EF, $EB, $E1, $EE, $E5 ; * Spookane Downtown
    .BYTE $A0, $C4, $EF, $F7, $EE, $F4, $EF, $F7, $EE, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D7, $C5 ;         WEST
    .BYTE $D3, $D4, 1
    .BYTE 3
    .BYTE $C0, $D3, $F0, $EF, $EF, $EB, $E1, $EE, $E5, $A0 ; *Spookane Residental
    .BYTE $D2, $E5, $F3, $E9, $E4, $E5, $EE, $F4, $E1, $EC
    .BYTE 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $C5, $C1 ;         EAST
    .BYTE $D3, $D4, 1
    .BYTE 0
    .BYTE $C0, $A0, $A0, $A0, $D3, $F7, $E1, $ED, $F0, $A0 ; *   Swamp - EAST
    .BYTE $AD, $A0, $C5, $C1, $D3, $D4, 1
    .BYTE 0
    .BYTE $C0, $D0, $D2, $C9, $D6, $C1, $D4, $C5, $A0, $D0 ; *PRIVATE PROPERTY
    .BYTE $D2, $CF, $D0, $C5, $D2, $D4, $D9, 1
    .BYTE $A0, $A8, $F3, $E9, $E7, $EE, $E5, $E4, $A9, $AD ;  (signed)-
    .BYTE 1
    .BYTE $A0, $D4, $E8, $E5, $A0, $D2, $EF, $F3, $E5, $ED ;  The Rosemarys
    .BYTE $E1, $F2, $F9, $F3, 1
    .BYTE 0
    .BYTE $C0, $D0, $EF, $EC, $E9, $E3, $E5, $A0, $D3, $F4 ; *Police Station
    .BYTE $E1, $F4, $E9, $EF, $EE, 1
    .BYTE $A0, $C3, $E9, $F4, $F9, $A0, $EF, $E6, $A0, $C5 ;  City of Ellay
    .BYTE $EC, $EC, $E1, $F9, 1
    .BYTE 0
    .BYTE $C0, $C3, $EF, $ED, $E9, $EE, $E7, $A0, $F4, $E8 ; *Coming this fall-
    .BYTE $E9, $F3, $A0, $E6, $E1, $EC, $EC, $AD, 1
    .BYTE $A0, $C4, $F5, $EE, $E3, $E1, $EE, $A7, $F3, 1 ;  Duncan's
    .BYTE $A0, $C4, $E5, $E2, $F5, $F4, $E1, $EE, $F4, $E5 ;  Debutantery
    .BYTE $F2, $F9, 1
    .BYTE 3
    .BYTE $C0, $C6, $E9, $EE, $E1, $EE, $E3, $E9, $EE, $E7 ; *Financing by,
    .BYTE $A0, $E2, $F9, $AC, 1
    .BYTE $A0, $C1, $F2, $E3, $E8, $E9, $F4, $E5, $E3, $F4 ;  Architectural by,
    .BYTE $F5, $F2, $E1, $EC, $A0, $E2, $F9, $AC, 1
    .BYTE $A0, $C3, $EF, $EE, $F3, $F4, $F2, $F5, $E3, $F4 ;  Construction by,
    .BYTE $E9, $EF, $EE, $A0, $E2, $F9, $AC, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $C4, $F5, $EE, $E3, $E1 ; *The Duncan
    .BYTE $EE, 1
    .BYTE $A0, $C3, $EF, $ED, $F0, $E1, $EE, $F9, $A0, $C9 ;  Company Inc.
    .BYTE $EE, $E3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E8, $E5, $E1, $F2, $E4, $A0, $F4 ; *I heard that my
    .BYTE $E8, $E1, $F4, $A0, $ED, $F9, 1
    .BYTE $A0, $E2, $F2, $EF, $F4, $E8, $E5, $F2, $A0, $E4 ;  brother died with
    .BYTE $E9, $E5, $E4, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $E8, $EF, $EE, $EF, $F2, $A0, $E9, $EE, $A0 ;  honor in combat.
    .BYTE $E3, $EF, $ED, $E2, $E1, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D7, $E9, $F4, $E8, $A0, $E1, $EC, $EC, $A0 ; *With all our love,
    .BYTE $EF, $F5, $F2, $A0, $EC, $EF, $F6, $E5, $AC, 1
    .BYTE $A0, $E8, $E5, $A0, $F7, $E1, $F3, $A0, $E2, $F5 ;  he was buried in
    .BYTE $F2, $E9, $E5, $E4, $A0, $E9, $EE, 1
    .BYTE $A0, $EF, $F5, $F2, $A0, $E3, $E5, $ED, $E5, $F4 ;  our cemetery.
    .BYTE $E5, $F2, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F4, $A0, $E9, $F3, $A0, $F7, $E9, $F4 ; *It is with great
    .BYTE $E8, $A0, $E7, $F2, $E5, $E1, $F4, 1
    .BYTE $A0, $F0, $F2, $E9, $E4, $E5, $A0, $F4, $E8, $E1 ;  pride that I take
    .BYTE $F4, $A0, $C9, $A0, $F4, $E1, $EB, $E5, 1
    .BYTE $A0, $E8, $E9, $F3, $A0, $F0, $EC, $E1, $E3, $E5 ;  his place by you.
    .BYTE $A0, $E2, $F9, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E3, $E1, $EE, $EE, $EF, $F4, $A0 ; *I cannot wait to
    .BYTE $F7, $E1, $E9, $F4, $A0, $F4, $EF, 1
    .BYTE $A0, $F3, $E5, $F2, $F6, $E5, $A0, $F9, $EF, $F5 ;  serve you.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, $A0 ; *I am the Flying
    .BYTE $C6, $EC, $F9, $E9, $EE, $E7, 1
    .BYTE $A0, $CD, $E1, $EE, $AE, $A0, $CD, $F9, $A0, $E4 ;  Man. My destiny
    .BYTE $E5, $F3, $F4, $E9, $EE, $F9, 1
    .BYTE $A0, $E9, $F3, $A0, $F4, $EF, $A0, $E8, $E5, $EC ;  is to help you.
    .BYTE $F0, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E3, $F5, $F2, $E6, $E5 ; *The curfew has
    .BYTE $F7, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E2, $E5, $E5, $EE, $A0, $EC, $E9, $E6, $F4 ;  been lifted.
    .BYTE $E5, $E4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EC, $F4, $E8, $EF, $F5, $E7, $E8, $A0 ; *Although I can't
    .BYTE $C9, $A0, $E3, $E1, $EE, $A7, $F4, 1
    .BYTE $A0, $F3, $E5, $E5, $A0, $F7, $E8, $F9, $A0, $F4 ;  see why travel was
    .BYTE $F2, $E1, $F6, $E5, $EC, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $E5, $F6, $E5, $F2, $A0, $F2, $E5, $F3, $F4 ;  ever restricted.
    .BYTE $F2, $E9, $E3, $F4, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $EC, $E4, $AC, $A0, $F2, $F5, $F3, $F4 ; *Old, rusty rocket.
    .BYTE $F9, $A0, $F2, $EF, $E3, $EB, $E5, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $E3 ; *Did you come for
    .BYTE $EF, $ED, $E5, $A0, $E6, $EF, $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $C7, $EF, $EF, $E4 ;  your Goods? Here
    .BYTE $F3, $A2, $A0, $C8, $E5, $F2, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E7, $EF, $AE, 1 ;  you go.
    .BYTE 0
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $E7, $E9, $F6, $E5 ; *I've given you all
    .BYTE $EE, $A0, $F9, $EF, $F5, $A0, $E1, $EC, $EC, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $C7, $EF, $EF, $E4, $F3 ;  the Goods. Please
    .BYTE $AE, $A0, $D0, $EC, $E5, $E1, $F3, $E5, 1
    .BYTE $A0, $E3, $EF, $ED, $E5, $A0, $E1, $E7, $E1, $E9 ;  come again.
    .BYTE $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $CD, $E9, $EE, $EE ; *I am Minnie.
    .BYTE $E9, $E5, $AE, 1
    .BYTE 0
    .BYTE $A0, $A0, $D2, $E5, $E6, $F2, $E5, $F3, $E8, $A0 ;   Refresh  Soften
    .BYTE $A0, $D3, $EF, $E6, $F4, $E5, $EE, 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A9, $A0, $C9, $A7, $ED, 1 ; ) I'm
    .BYTE $A0, $F3, $F5, $F2, $E5, $A0, $F9, $EF, $F5, $A0 ;  sure you two would
    .BYTE $F4, $F7, $EF, $A0, $F7, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $EF, $A0, $E2 ;  like to be alone.
    .BYTE $E5, $A0, $E1, $EC, $EF, $EE, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $ED, $E1, $EB, $E5 ; *I'll make a few
    .BYTE $A0, $E1, $A0, $E6, $E5, $F7, 1
    .BYTE $A0, $F0, $E8, $EF, $EE, $E5, $A0, $E3, $E1, $EC ;  phone calls and
    .BYTE $EC, $F3, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $F7, $E1, $E9, $F4, $A0, $EF, $F5, $F4, $A0 ;  wait out here.
    .BYTE $E8, $E5, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0, $F3, $E8, $EF, $EF, $F4, $A1 ; *Oh shoot!
    .BYTE 1
    .BYTE $A0, $C9, $A0, $ED, $E9, $F3, $F3, $E5, $E4, $A1 ;  I missed!
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $CF, $E8, $A0 ; *Oh
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $C9, $A7, $F6, $E5, 1 ; , I've
    .BYTE $A0, $EC, $EF, $F6, $E5, $E4, $A0, $F9, $EF, $F5 ;  loved you for such
    .BYTE $A0, $E6, $EF, $F2, $A0, $F3, $F5, $E3, $E8, 1
    .BYTE $A0, $E1, $A0, $EC, $EF, $EE, $E7, $A0, $F4, $E9 ;  a long time.
    .BYTE $ED, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A7, $F6, $E5, $A0, $EC, $EF, $F6, $E5 ; *I've loved you
    .BYTE $E4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $E9, $EE, $E3, $E5, $A0, $C9, $A0, $F3 ;  since I saw you
    .BYTE $E1, $F7, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E9, $EE, $A0, $ED, $F9, $A0, $E4, $F2, $E5 ;  in my dream.
    .BYTE $E1, $ED, $AE, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A9, 1            ; )
    .BYTE $A0, $D3, $EF, $F2, $F2, $F9, $A0, $F4, $EF, $A0 ;  Sorry to bother
    .BYTE $E2, $EF, $F4, $E8, $E5, $F2, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $F4, $F7, $EF, $AE, $AE ;  you two...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $E4, $E9, $E4, $A0, $F9 ; *but did you hear
    .BYTE $EF, $F5, $A0, $E8, $E5, $E1, $F2, 1
    .BYTE $A0, $F4, $E8, $EF, $F3, $E5, $A0, $EC, $EF, $F5 ;  those loud noises?
    .BYTE $E4, $A0, $EE, $EF, $E9, $F3, $E5, $F3, $A2, 1
    .BYTE 0
    .BYTE $C0, $A8          ; *(
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A9, 1            ; )
    .BYTE $A0, $D4, $E8, $EF, $F3, $E5, $A0, $EE, $EF, $E9 ;  Those noises
    .BYTE $F3, $E5, $F3, 1
    .BYTE $A0, $E3, $EF, $ED, $E9, $EE, $E7, $A0, $E6, $F2 ;  coming from outside,
    .BYTE $EF, $ED, $A0, $EF, $F5, $F4, $F3, $E9, $E4, $E5
    .BYTE $AC, 1
    .BYTE 3
    .BYTE $C0, $EE, $EF, $F4, $A0, $E9, $EE, $A0, $E8, $E5 ; *not in here silly.
    .BYTE $F2, $E5, $A0, $F3, $E9, $EC, $EC, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E2, $EF, $E1, $F4, $A0 ; *The boat motor
    .BYTE $ED, $EF, $F4, $EF, $F2, 1
    .BYTE $A0, $E1, $F0, $F0, $E5, $E1, $F2, $F3, $A0, $F4 ;  appears to be
    .BYTE $EF, $A0, $E2, $E5, 1
    .BYTE $A0, $E2, $F2, $EF, $EB, $E5, $EE, $AE, 1 ;  broken.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $E4, $EF, $E5, $F3 ;  just does
    .BYTE 1
    .BYTE $A0, $EE, $EF, $F4, $A0, $F3, $E5, $E5, $ED, $A0 ;  not seem to be
    .BYTE $F4, $EF, $A0, $E2, $E5, 1
    .BYTE $A0, $E1, $E2, $EC, $E5, $A0, $F4, $EF, $A0, $E6 ;  able to fix it.
    .BYTE $E9, $F8, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $C0, $C2, $F5, $F4, $A0 ; *But
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $E9, $F2, $E5, $E4, 1 ;  fired
    .BYTE $A0, $E9, $F4, $A0, $F2, $E9, $E7, $E8, $F4, $A0 ;  it right up.
    .BYTE $F5, $F0, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A7, $EC, $EC, $A0, $F3, $E5, $EE, $E4 ; *I'll send this
    .BYTE $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $EF, 1  ;  to
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E8, $EF, $F5, $F3, $E5, $AE, 1 ; 's house.
    .BYTE 3
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E5, $F2, $E5, $A0 ; *Is there anything
    .BYTE $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $E5, $EC, $F3, $E5, $A0, $F9, $EF, $F5, $A0 ;  else you want me
    .BYTE $F7, $E1, $EE, $F4, $A0, $ED, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $EB, $E5, $E5, $F0, $A2, 1 ;  to keep?
    .BYTE 0
    .BYTE $C0, $CE, $EF, $F4, $A0, $F4, $E8, $E1, $F4, $A0 ; *Not that I have
    .BYTE $C9, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E3, $EC, $E1, $F5, $F3, $F4, $F2, $EF, $F0 ;  claustrophobia...
    .BYTE $E8, $EF, $E2, $E9, $E1, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $C9, $A0, $E3, $E1, $EE ; *but I can't stand
    .BYTE $A7, $F4, $A0, $F3, $F4, $E1, $EE, $E4, 1
    .BYTE $A0, $F3, $ED, $E1, $EC, $EC, $AC, $A0, $E3, $EC ;  small, close
    .BYTE $EF, $F3, $E5, 1
    .BYTE $A0, $F3, $F0, $E1, $E3, $E5, $F3, $A1, 1 ;  spaces!
    .BYTE 0
    .BYTE $C0, $A0, $D3, $F7, $E5, $E5, $F4, $A7, $F3, $A0 ; * Sweet's Little
    .BYTE $CC, $E9, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $C6, $E1, $E3, $F4 ;       Factory
    .BYTE $EF, $F2, $F9, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $F7, $E1, $F3, $A0, $EB, $E9, $E4 ; *I was kidnapped by
    .BYTE $EE, $E1, $F0, $F0, $E5, $E4, $A0, $E2, $F9, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $CD, $EF, $F4, $E8, $E5 ;  the Mother Ship.
    .BYTE $F2, $A0, $D3, $E8, $E9, $F0, $AE, 1
    .BYTE $A0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E8, $E5 ;  Please help me!
    .BYTE $EC, $F0, $A0, $ED, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $C1, $F2, $E5, $A0, $F9, $EF, $F5, $A0, $F3 ; *Are you sure that
    .BYTE $F5, $F2, $E5, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E9, $F4, $A0, $E9, $F3, $A0, $F3, $F0, $E5 ;  it is spelled
    .BYTE $EC, $EC, $E5, $E4, 1
    .BYTE $A0, $E3, $EF, $F2, $F2, $E5, $E3, $F4, $EC, $F9 ;  correctly?
    .BYTE $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $EF, $E4, $E4, $A0, $F3 ; *The odd sound that
    .BYTE $EF, $F5, $EE, $E4, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $E4, $F2, $EF, $F6, $E5, $A0, $F4, $E8, $E5 ;  drove the animals
    .BYTE $A0, $E1, $EE, $E9, $ED, $E1, $EC, $F3, 1
    .BYTE $A0, $E9, $EE, $F3, $E1, $EE, $E5, $A0, $E4, $E9 ;  insane died down.
    .BYTE $E5, $E4, $A0, $E4, $EF, $F7, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $DA, $EF, $EF, $A0, $EF ; *The Zoo once more
    .BYTE $EE, $E3, $E5, $A0, $ED, $EF, $F2, $E5, 1
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, $A0, $E1, $A0 ;  became a safe
    .BYTE $F3, $E1, $E6, $E5, 1
    .BYTE $A0, $F0, $EC, $E1, $E3, $E5, $AE, 1 ;  place.
    .BYTE 0
    .BYTE $C0, $C2, $E5, $A0, $E3, $E1, $F2, $E5, $E6, $F5 ; *Be careful, that
    .BYTE $EC, $AC, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $F4, $E1, $EE, $EB, $A0, $E9, $F3, $A0, $ED ;  tank is my most
    .BYTE $F9, $A0, $ED, $EF, $F3, $F4, 1
    .BYTE $A0, $F0, $F2, $E9, $FA, $E5, $E4, $A0, $F0, $EF ;  prized possession.
    .BYTE $F3, $F3, $E5, $F3, $F3, $E9, $EF, $EE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $AC, $A0, $EF, $EE ; *There, on the dog's
    .BYTE $A0, $F4, $E8, $E5, $A0, $E4, $EF, $E7, $A7, $F3
    .BYTE 1
    .BYTE $A0, $E3, $EF, $EC, $EC, $E1, $F2, $AC, $A0, $F7 ;  collar, was the
    .BYTE $E1, $F3, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C2, $E1, $F3, $E5, $ED, $E5, $EE, $F4, $A0 ;  Basement Key.
    .BYTE $CB, $E5, $F9, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $E5, $A0, $C8, $E5, $E5, $A0, $C8 ; *Hee Hee Hee...
    .BYTE $E5, $E5, $AE, $AE, $AE, 1
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, $A0 ;  I am the noisy
    .BYTE $EE, $EF, $E9, $F3, $F9, 1
    .BYTE $A0, $ED, $EF, $F5, $F3, $E5, $AE, 1 ;  mouse.
    .BYTE 3
    .BYTE $C0, $D3, $EF, $ED, $E5, $A0, $E2, $F5, $E9, $EC ; *Some buildings
    .BYTE $E4, $E9, $EE, $E7, $F3, 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E3, $E1, $EE, $A0, $E5 ;  you can enter,
    .BYTE $EE, $F4, $E5, $F2, $AC, 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $A0, $F9, $EF, $F5, $A0 ;  some you cannot.
    .BYTE $E3, $E1, $EE, $EE, $EF, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $E6, $A0, $F4, $E8, $E5, $A0, $E4, $EF ; *If the door is
    .BYTE $EF, $F2, $A0, $E9, $F3, 1
    .BYTE $A0, $F2, $EF, $F5, $EE, $E4, $AC, $A0, $EF, $F2 ;  round, or has a
    .BYTE $A0, $E8, $E1, $F3, $A0, $E1, 1
    .BYTE $A0, $F3, $E9, $E7, $EE, $AC, $A0, $E7, $EF, $A0 ;  sign, go on inside.
    .BYTE $EF, $EE, $A0, $E9, $EE, $F3, $E9, $E4, $E5, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $F2, $E5, $F3, $F4, $A0 ; *The rest of the
    .BYTE $EF, $E6, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E4, $EF, $EF, $F2, $F3, $A0, $F7, $E9, $EC ;  doors will not
    .BYTE $EC, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $EF, $F0, $E5, $EE, $A0, $E6, $EF, $F2, $A0 ;  open for you.
    .BYTE $F9, $EF, $F5, $AE, 1
    .BYTE 3
    .BYTE $C0, $C2, $F9, $E5, $A1, 1 ; *Bye!
    .BYTE 0
    .BYTE $C0, $D4, $E5, $EC, $E5, $F0, $EF, $F2, $F4, $E1 ; *Teleportation is a
    .BYTE $F4, $E9, $EF, $EE, $A0, $E9, $F3, $A0, $E1, 1
    .BYTE $A0, $D0, $F3, $F9, $E3, $E8, $E9, $E3, $A0, $D0 ;  Psychic Power not
    .BYTE $EF, $F7, $E5, $F2, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $F4, $EF, $A0, $E2, $E5, $A0, $F0, $EC, $E1 ;  to be played with.
    .BYTE $F9, $E5, $E4, $A0, $F7, $E9, $F4, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $EC, $EF, $F6, $E5, $E4, $A0, $E8 ; *I loved him...
    .BYTE $E9, $ED, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $EC, $EF, $F6, $E5, $E4, $A0, $E8 ; *I loved him,
    .BYTE $E9, $ED, $AC, 1
    .BYTE $A0, $E1, $F3, $A0, $E9, $E6, $A0, $E8, $E5, $A0 ;  as if he was my
    .BYTE $F7, $E1, $F3, $A0, $ED, $F9, 1
    .BYTE $A0, $EF, $F7, $EE, $A0, $E3, $E8, $E9, $EC, $E4 ;  own child...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C8, $E5, $A0, $F7, $E1, $F3, $A0, $E1, $EC ; *He was always
    .BYTE $F7, $E1, $F9, $F3, 1
    .BYTE $A0, $F7, $E1, $E7, $E7, $E9, $EE, $E7, $A0, $E8 ;  wagging his tail,
    .BYTE $E9, $F3, $A0, $F4, $E1, $E9, $EC, $AC, 1
    .BYTE $A0, $EA, $F5, $F3, $F4, $A0, $EC, $E9, $EB, $E5 ;  just like a pup...
    .BYTE $A0, $E1, $A0, $F0, $F5, $F0, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C5, $D8, $C3, $C5, $D0, $D4, $A0, $E6, $EF ; *EXCEPT for when I
    .BYTE $F2, $A0, $F7, $E8, $E5, $EE, $A0, $C9, 1
    .BYTE $A0, $F4, $F2, $E9, $E5, $E4, $A0, $F4, $EF, $A0 ;  tried to SING him
    .BYTE $D3, $C9, $CE, $C7, $A0, $E8, $E9, $ED, 1
    .BYTE $A0, $EC, $F5, $EC, $EC, $E1, $E2, $E9, $E5, $F3 ;  lullabies...
    .BYTE $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $C1, $E8, $E8, $E8, $AE, $AE, $AE, $C7, $E5 ; *Ahhh...George!
    .BYTE $EF, $F2, $E7, $E5, $A1, 1
    .BYTE $A0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $F9 ;  This is your wife,
    .BYTE $EF, $F5, $F2, $A0, $F7, $E9, $E6, $E5, $AC, 1
    .BYTE $A0, $CD, $E1, $F2, $E9, $E1, $AE, 1 ;  Maria.
    .BYTE 3
    .BYTE $C0, $C9, $A7, $ED, $A0, $E3, $EF, $ED, $E9, $EE ; *I'm coming to join
    .BYTE $E7, $A0, $F4, $EF, $A0, $EA, $EF, $E9, $EE, 1
    .BYTE $A0, $F9, $EF, $F5, $AC, $A0, $ED, $F9, $A0, $F0 ;  you, my purpose is
    .BYTE $F5, $F2, $F0, $EF, $F3, $E5, $A0, $E9, $F3, 1
    .BYTE $A0, $E3, $EF, $ED, $F0, $EC, $E5, $F4, $E5, $AE ;  complete...
    .BYTE $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D0, $EC, $E5, $E1, $F3, $E5, $A0, $E9, $EE ; *Please insert your
    .BYTE $F3, $E5, $F2, $F4, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $A0, $C3, $E1, $F3, $E8, $A0, $C3, $E1, $F2, $E4 ;  Cash Card.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $EE, $A7, $F4, $A0, $E3, $E1, $F2 ; *Don't carry so much
    .BYTE $F2, $F9, $A0, $F3, $EF, $A0, $ED, $F5, $E3, $E8
    .BYTE 1
    .BYTE $A0, $E3, $E1, $F3, $E8, $A0, $F7, $E9, $F4, $E8 ;  cash with you.
    .BYTE $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $F3, $A0, $E9, $F4, $A0, $E1, $EC, $EC ; *Is it all right to
    .BYTE $A0, $F2, $E9, $E7, $E8, $F4, $A0, $F4, $EF, 1
    .BYTE $A0, $E7, $EF, $A0, $E2, $E1, $E3, $EB, $A0, $F4 ;  go back to the
    .BYTE $EF, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E4, $E1, $F4, $E1, $A0, $D3, $C1, $D6, $C5 ;  data SAVEd earlier?
    .BYTE $E4, $A0, $E5, $E1, $F2, $EC, $E9, $E5, $F2, $A2
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $F3, $E1, $E9, $E4, $A0 ; *You said "Yes",
    .BYTE $A6, $D9, $E5, $F3, $A6, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $F9, $EF, $F5, $A0, $E4 ;  but you don't have
    .BYTE $EF, $EE, $A7, $F4, $A0, $E8, $E1, $F6, $E5, 1
    .BYTE $A0, $E9, $F4, $AE, $A0, $C1, $E8, $A0, $E8, $E1 ;  it. Ah ha ha ha...
    .BYTE $A0, $E8, $E1, $A0, $E8, $E1, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4, $EF, $A0 ;  seems to be
    .BYTE $E2, $E5, 1
    .BYTE $A0, $EF, $F5, $F4, $A0, $EF, $E6, $A0, $E2, $F2 ;  out of breath.
    .BYTE $E5, $E1, $F4, $E8, $AE, 1
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E4, $EF, $EE, $A7, $F4 ; *You don't have any
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $E1, $EE, $F9, 1
    .BYTE $A0, $E6, $F2, $E9, $E5, $EE, $E4, $F3, $A0, $F4 ;  friends to hand
    .BYTE $EF, $A0, $E8, $E1, $EE, $E4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $C7, $EF, $EF, $E4, $F3 ;  the Goods to.
    .BYTE $A0, $F4, $EF, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0 ; *The
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, 1  ;  is
    .BYTE $A0, $EF, $EE, $E3, $E5, $A0, $ED, $EF, $F2, $E5 ;  once more in
    .BYTE $A0, $E9, $EE, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $F0, $EF, $F3, $F3 ;  your possession.
    .BYTE $E5, $F3, $F3, $E9, $EF, $EE, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $F3, $A0, $F4, $E8, $E5, $F2, $E5, $A0 ; *Is there anything
    .BYTE $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE $A0, $E5, $EC, $F3, $E5, $A0, $F9, $EF, $F5, $A7 ;  else you'd like
    .BYTE $E4, $A0, $EC, $E9, $EB, $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E1, $EB, $E5, $A2, 1 ;  to take?
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF

; CHARS BANKS 0xB8 - 0xBF
    .BYTE $C0, $C3, $E1, $EE, $A7, $F4, $A0, $F3, $EF, $ED ; *Can't someone else
    .BYTE $E5, $EF, $EE, $E5, $A0, $E5, $EC, $F3, $E5, 1
    .BYTE $A0, $E3, $E1, $F2, $F2, $F9, $A0, $F4, $E8, $E1 ;  carry that? Your
    .BYTE $F4, $A2, $A0, $D9, $EF, $F5, $F2, 1
    .BYTE $A0, $EC, $EF, $E1, $E4, $A0, $E9, $F3, $A0, $F4 ;  load is too great!
    .BYTE $EF, $EF, $A0, $E7, $F2, $E5, $E1, $F4, $A1, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E3, $EC, $EF, $F3, $E5 ; *The closet is
    .BYTE $F4, $A0, $E9, $F3, 1
    .BYTE $A0, $E6, $F5, $EC, $EC, $AE, 1 ;  full.
    .BYTE 0
    .BYTE $C0, $C1, $E6, $F4, $E5, $F2, $A0, $F4, $E5, $EC ; *After telling the
    .BYTE $EC, $E9, $EE, $E7, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F3, $F4, $EF, $F2, $F9, $A0, $F4, $EF, $A0 ;  story to
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, 1            ; ,
    .BYTE 3
    .BYTE $C0, $F7, $E9, $F4, $E8, $A0, $E1, $A0, $F2, $F5 ; *with a rush of
    .BYTE $F3, $E8, $A0, $EF, $E6, 1
    .BYTE $A0, $F7, $E9, $EE, $E4, $AC, $A0, $D1, $F5, $E5 ;  wind, Queen Mary
    .BYTE $E5, $EE, $A0, $CD, $E1, $F2, $F9, 1
    .BYTE $A0, $F6, $E1, $EE, $E9, $F3, $E8, $E5, $E4, $AE ;  vanished.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C1, $F3, $A0, $F3, $E8, $E5, $A0, $E4, $E9 ; *As she disappeared,
    .BYTE $F3, $E1, $F0, $F0, $E5, $E1, $F2, $E5, $E4, $AC
    .BYTE 1
    .BYTE $A0, $F3, $EF, $A0, $E4, $E9, $E4, $A0, $CD, $E1 ;  so did Magicant.
    .BYTE $E7, $E9, $E3, $E1, $EE, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $CD, $E1, $E7, $E9, $E3, $E1, $EE, $F4, $A0 ; *Magicant was a
    .BYTE $F7, $E1, $F3, $A0, $E1, 1
    .BYTE $A0, $ED, $E9, $F2, $E1, $E7, $E5, $AE, $AE, $AE ;  mirage...
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C1, $A0, $ED, $E9, $F2, $E1, $E7, $E5, $A0 ; *A mirage born of
    .BYTE $E2, $EF, $F2, $EE, $A0, $EF, $E6, 1
    .BYTE $A0, $CD, $E1, $F2, $E9, $E1, $A7, $F3, 1 ;  Maria's
    .BYTE $A0, $E3, $EF, $EE, $F3, $E3, $E9, $EF, $F5, $F3 ;  consciousness.
    .BYTE $EE, $E5, $F3, $F3, $AE, 1
    .BYTE 0
    .BYTE $C0, $C9, $A0, $E1, $ED, $A0, $F4, $E8, $E5, $A0 ; *I am the one who
    .BYTE $EF, $EE, $E5, $A0, $F7, $E8, $EF, 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $E3, $E1, $EC, $EC, $E5 ;  has called you.
    .BYTE $E4, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0          ; ,
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $AC, 1            ; ,
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $E1, $EE, $E4, 1 ; , and
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 3
    .BYTE $C0, $C1, $EC, $EC, $A0, $EF, $E6, $A0, $F4, $E8 ; *All of the brave
    .BYTE $E5, $A0, $E2, $F2, $E1, $F6, $E5, 1
    .BYTE $A0, $E3, $E8, $E9, $EC, $E4, $F2, $E5, $EE, $AE ;  children.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $CE, $EF, $F7, $A0, $E9, $F3, $A0, $F4, $E8 ; *Now is the time!
    .BYTE $E5, $A0, $F4, $E9, $ED, $E5, $A1, 1
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E1, $F4, $A0, $E1, $F2, $E5, $A0 ; *What are you
    .BYTE $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $F4, $E1, $F2, $E9, $EE, $E7, $A0, $E1 ;  staring at?
    .BYTE $F4, $A2, 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $F2, $E5, $A0, $E9, $EE, $A0, $CD ; *Here in Magicant
    .BYTE $E1, $E7, $E9, $E3, $E1, $EE, $F4, 1
    .BYTE $A0, $E9, $F4, $A7, $F3, $A0, $EA, $F5, $F3, $F4 ;  it's just like the
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F7, $EF, $F2, $EC, $E4, $A0, $EF, $F5, $F4 ;  world outside.
    .BYTE $F3, $E9, $E4, $E5, $AE, 1
    .BYTE 3
    .BYTE $C0, $CA, $F5, $F3, $F4, $A0, $EC, $E5, $E1, $F6 ; *Just leave me some
    .BYTE $E5, $A0, $ED, $E5, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $E3, $E1, $F3, $E8, $AC, $A0, $F4, $E8, $E5 ;  cash, then with the
    .BYTE $EE, $A0, $F7, $E9, $F4, $E8, $A0, $F4, $E8, $E5
    .BYTE 1
    .BYTE $A0, $C7, $EF, $EF, $E4, $F3, $A0, $F9, $EF, $F5 ;  Goods you can dash.
    .BYTE $A0, $E3, $E1, $EE, $A0, $E4, $E1, $F3, $E8, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $C8, $E5, $E5, $A0, $C8, $E5, $E5, $A0, $C8 ; *Hee Hee Hee.
    .BYTE $E5, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C7, $E5, $F4, $A0, $EF, $EE, $A0, $F4, $E8 ; *Get on the train,
    .BYTE $E5, $A0, $F4, $F2, $E1, $E9, $EE, $AC, 1
    .BYTE $A0, $EF, $F2, $A0, $F9, $EF, $F5, $A0, $F7, $E9 ;  or you will have a
    .BYTE $EC, $EC, $A0, $E8, $E1, $F6, $E5, $A0, $E1, 1
    .BYTE $A0, $E8, $E1, $F2, $E4, $A0, $F4, $E9, $ED, $E5 ;  hard time like me.
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $C4, $EF, $A0, $F9, $EF, $F5, $A0, $F7, $E1 ; *Do you want
    .BYTE $EE, $F4, 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $A0 ;  anything else?
    .BYTE $E5, $EC, $F3, $E5, $A2, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $AC, 1            ; ,
    .BYTE $A0, $D7, $E5, $EC, $E3, $EF, $ED, $E5, $AE, $AE ;  Welcome...
    .BYTE $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E1, $EC, $F7, $E1, $F9, $F3, $A0 ; *I always believed
    .BYTE $E2, $E5, $EC, $E9, $E5, $F6, $E5, $E4, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $A0 ;  that you would
    .BYTE $F7, $EF, $F5, $EC, $E4, 1
    .BYTE $A0, $E6, $E9, $EE, $E4, $A0, $F9, $EF, $F5, $F2 ;  find your way here.
    .BYTE $A0, $F7, $E1, $F9, $A0, $E8, $E5, $F2, $E5, $AE
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $C7, $F2, $E5, $E1 ; *Your Great-Grand
    .BYTE $F4, $AD, $C7, $F2, $E1, $EE, $E4, 1
    .BYTE $A0, $CD, $EF, $F4, $E8, $E5, $F2, $A0, $CD, $E1 ;  Mother Maria's love
    .BYTE $F2, $E9, $E1, $A7, $F3, $A0, $EC, $EF, $F6, $E5
    .BYTE 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $F3, $E3, $E1, $F4, $F4 ;  was scattered,
    .BYTE $E5, $F2, $E5, $E4, $AC, 1
    .BYTE 3
    .BYTE $C0, $F3, $E3, $E1, $F4, $F4, $E5, $F2, $E5, $E4 ; *scattered in the
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E6, $EF, $F2, $ED, $A0, $EF, $E6, $A0, $ED ;  form of melodies.
    .BYTE $E5, $EC, $EF, $E4, $E9, $E5, $F3, $AE, 1
    .BYTE 3
    .BYTE $C0, $C9, $A0, $E8, $E1, $F6, $E5, $A0, $E1, $A0 ; *I have a melody
    .BYTE $ED, $E5, $EC, $EF, $E4, $F9, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $F9, $EF, $F5, $AE, $A0 ;  for you. Listen
    .BYTE $CC, $E9, $F3, $F4, $E5, $EE, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F2, $E5, $ED, $E5, $ED ;  and remember...
    .BYTE $E2, $E5, $F2, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E3, $F2, $F9, $F3, $F4 ; *The crystal
    .BYTE $E1, $EC, 1
    .BYTE $A0, $E6, $F2, $E1, $E7, $ED, $E5, $EE, $F4, $F3 ;  fragments that had
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $E8, $E1, $E4, 1
    .BYTE $A0, $E2, $F2, $EF, $EB, $E5, $EE, $A0, $EF, $E6 ;  broken off
    .BYTE $E6, 1
    .BYTE 3
    .BYTE $C0, $F3, $F4, $EF, $F0, $F0, $E5, $E4, $A0, $E7 ; *stopped glowing and
    .BYTE $EC, $EF, $F7, $E9, $EE, $E7, $A0, $E1, $EE, $E4
    .BYTE 1
    .BYTE $A0, $E4, $E9, $F3, $E1, $F0, $F0, $E5, $E1, $F2 ;  disappeared..
    .BYTE $E5, $E4, $AE, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E4, $E9, $E4, $EE, $A7, $F4, $A0, $E4, $EF ;  didn't do
    .BYTE 1
    .BYTE $A0, $E1, $EE, $F9, $F4, $E8, $E9, $EE, $E7, $AE ;  anything.
    .BYTE 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E7, $E1, $F6, $E5, 1 ;  gave
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $EF, 1  ;  to
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F0, $F5, $F4, 1 ;  put
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $EE, 1  ;  in
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E2, $E1, $E7, $AE, 1 ; 's bag.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F0, $F5, $EC, $EC, $E5, $E4, 1 ;  pulled
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $F2, $EF, $ED, 1 ;  from
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E2, $E1, $E7, $AE, 1 ; 's bag.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $E8, $F2, $E5, $F7, 1 ;  threw
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EF, $F5, $F4, $A0, $EF, $E6, 1 ;  out of
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E2, $E1, $E7, $AE, 1 ; 's bag.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $EF, $EF, $EB, 1 ;  took
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $F2, $EF, $ED, 1 ;  from
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E2, $E1, $E7, $A0, 1 ; 's bag
    .BYTE 3
    .BYTE $C0, $E1, $EE, $E4, $A0, $F0, $EC, $E1, $E3, $E5 ; *and placed it in
    .BYTE $E4, $A0, $E9, $F4, $A0, $E9, $EE, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E2, $E1, $E7, $AE, 1 ; 's bag.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E1, $F4, $E5, 1 ;  ate
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E4, $F2, $E1, $EE, $EB, 1 ;  drank
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $F2, $E5, $E3, $EF, $F6, $E5, $F2, $E5, $E4 ; *recovered by
    .BYTE $A0, $E2, $F9, 1
    .BYTE $A0               ;
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ; *increased by
    .BYTE $A0, $E2, $F9, 1
    .BYTE $A0               ;
    TILEPACK_23 <$23, $2A, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C8, $D0, $A0, $E9, $F3, 1 ; 's HP is
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D0, $D0, $A0, $E9, $F3, 1 ; 's PP is
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C5, $CE, $C5, $D2, $C7, $D9, $A0 ; 's ENERGY is
    .BYTE $E9, $F3, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D3, $D0, $C5, $C5, $C4, $A0, $E9 ; 's SPEED is
    .BYTE $F3, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D7, $C9, $D3, $C4, $CF, $CD, $A0 ; 's WISDOM is
    .BYTE $E9, $F3, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D3, $D4, $D2, $C5, $CE, $C7, $D4 ; 's STRENGTH is
    .BYTE $C8, $A0, $E9, $F3, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C6, $CF, $D2, $C3, $C5, $A0, $E9 ; 's FORCE is
    .BYTE $F3, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $EF, $EF, $EB, $A0, $EF, $F5, $F4, $A0 ;  took out a
    .BYTE $E1, 1
    .BYTE $A0, $CD, $E1, $E7, $E9, $E3, $A0, $C8, $E5, $F2 ;  Magic Herb from the
    .BYTE $E2, $A0, $E6, $F2, $EF, $ED, $A0, $F4, $E8, $E5
    .BYTE 1
    .BYTE $A0, $C2, $E9, $E7, $A0, $C2, $E1, $E7, $A0, $E1 ;  Big Bag and USEd it.
    .BYTE $EE, $E4, $A0, $D5, $D3, $C5, $E4, $A0, $E9, $F4
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $F4, $E1, $F2, $F4, $E5, $E4, $A0, 1 ;  started
    .BYTE $A0, $E4, $F2, $EF, $F0, $F0, $E9, $EE, $E7, $A0 ;  dropping the
    .BYTE $F4, $E8, $E5, 1
    .BYTE $A0, $C3, $F2, $F5, $ED, $E2, $F3, $AE, 1 ;  Crumbs.
    .BYTE 0
    .BYTE $C0, $D9, $EF, $F5, $A0, $E3, $E1, $EE, $A7, $F4 ; *You can't USE
    .BYTE $A0, $D5, $D3, $C5, 1
    .BYTE $A0, $C2, $F2, $E5, $E1, $E4, $A0, $F5, $EE, $F4 ;  Bread until old
    .BYTE $E9, $EC, $A0, $EF, $EC, $E4, 1
    .BYTE $A0, $C3, $F2, $F5, $ED, $E2, $F3, $A0, $E1, $F2 ;  Crumbs are USEd up.
    .BYTE $E5, $A0, $D5, $D3, $C5, $E4, $A0, $F5, $F0, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $E5, $E4, 1 ;  returned
    .BYTE $A0, $F4, $EF, $A0, $F4, $E8, $E5, $A0, $E8, $E5 ;  to the head of the
    .BYTE $E1, $E4, $A0, $EF, $E6, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F4, $F2, $E1, $E9, $EC, $AE, $AE, $AE, 1 ;  trail...
    .BYTE 3
    .BYTE $C0, $E2, $F9, $A0, $E6, $EF, $EC, $EC, $EF, $F7 ; *by following the
    .BYTE $E9, $EE, $E7, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $C3, $F2, $F5, $ED, $E2, $F3, $A0, $F4, $E8 ;  Crumbs that had
    .BYTE $E1, $F4, $A0, $E8, $E1, $E4, 1
    .BYTE $A0, $E2, $E5, $E5, $EE, $A0, $E4, $F2, $EF, $F0 ;  been dropped.
    .BYTE $F0, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $E9, $E5, $E4, $A0, $F4, $E8, $E5, 1 ;  tied the
    .BYTE $A0, $D2, $E9, $E2, $E2, $EF, $EE, $A0, $E9, $EE ;  Ribbon into
    .BYTE $F4, $EF, 1
    .BYTE $A0, $E8, $E5, $F2, $A0, $E8, $E1, $E9, $F2, $AE ;  her hair.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C9, $E6, $A0, $F4, $E8, $E1, $F4, $A0, $E9 ; *If that is true,
    .BYTE $F3, $A0, $F4, $F2, $F5, $E5, $AC, 1
    .BYTE $A0, $F0, $F5, $F3, $E8, $A0, $F4, $E8, $E5, $A0 ;  push the POWER off,
    .BYTE $D0, $CF, $D7, $C5, $D2, $A0, $EF, $E6, $E6, $AC
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $F2, $E5, $ED, $E5, $ED ; *but remember to
    .BYTE $E2, $E5, $F2, $A0, $F4, $EF, 1
    .BYTE $A0, $E8, $EF, $EC, $E4, $A0, $E9, $EE, $A0, $D2 ;  hold in RESET!
    .BYTE $C5, $D3, $C5, $D4, $A1, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $ED, $E5, $E1, $F3, $F5, $F2, $E5, $E4, $A0 ;  measured the
    .BYTE $F4, $E8, $E5, 1
    .BYTE $A0, $EC, $E5, $EE, $E7, $F4, $E8, $F3, $A0, $EF ;  lengths of many
    .BYTE $E6, $A0, $ED, $E1, $EE, $F9, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $E7, $F3, $AE, 1 ;  things.
    .BYTE 0
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F4, $E8, $E5, $A0 ; *When the Big Bag
    .BYTE $C2, $E9, $E7, $A0, $C2, $E1, $E7, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $E5, $ED, $F0, $F4, $E9 ;  was emptied,
    .BYTE $E5, $E4, $AC, 1
    .BYTE 3
    .BYTE $C0, $E9, $F4, $A0, $E4, $E9, $F3, $E1, $F0, $F0 ; *it disappeared
    .BYTE $E5, $E1, $F2, $E5, $E4, 1
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $F4, $E8, $E9, $EE ;  into thin air.
    .BYTE $A0, $E1, $E9, $F2, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $E3, $F2, $E5, $E4, $E9 ; *The credit limit of
    .BYTE $F4, $A0, $EC, $E9, $ED, $E9, $F4, $A0, $EF, $E6
    .BYTE 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $D4, $E5, $EC, $E5, $F0 ;  the Telephone Card
    .BYTE $E8, $EF, $EE, $E5, $A0, $C3, $E1, $F2, $E4, 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $E2, $E5, $E5, $EE, $A0 ;  has been reached.
    .BYTE $F2, $E5, $E1, $E3, $E8, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $F0, $EF, $E9, $F3, $EF ; *The poison was
    .BYTE $EE, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $EE, $E5, $F5, $F4, $F2, $E1, $EC, $E9, $FA ;  neutralized from
    .BYTE $E5, $E4, $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E2, $EF, $E4, $F9, $AE, 1 ; 's body.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, $A0, $F2, $E9, $E4, 1 ;  was rid
    .BYTE $A0, $EF, $E6, $A0, $F4, $E8, $E5, $A0, $E3, $EF ;  of the cold.
    .BYTE $EC, $E4, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $F1, $F5, $E5, $E5, $FA, $E5, $E4, 1 ;  squeezed
    .BYTE $A0, $F4, $E8, $E5, $A0, $D0, $D3, $C9, $AD, $D0 ;  the PSI-Power
    .BYTE $EF, $F7, $E5, $F2, 1
    .BYTE $A0, $D3, $F4, $EF, $EE, $E5, $AE, 1 ;  Stone.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $D0, $D3, $C9, $AD, $D0 ; *The PSI-Power
    .BYTE $EF, $F7, $E5, $F2, 1
    .BYTE $A0, $D3, $F4, $EF, $EE, $E5, $A0, $E2, $E5, $E3 ;  Stone became an
    .BYTE $E1, $ED, $E5, $A0, $E1, $EE, 1
    .BYTE $A0, $EF, $F2, $E4, $E9, $EE, $E1, $F2, $F9, $A0 ;  ordinary stone.
    .BYTE $F3, $F4, $EF, $EE, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $F2, $E9, $E5, $E4, 1 ;  tried
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $6D24> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $EE ; *There isn't enough
    .BYTE $A7, $F4, $A0, $E5, $EE, $EF, $F5, $E7, $E8, 1
    .BYTE $A0, $F0, $EF, $F7, $E5, $F2, $A0, $EC, $E5, $E6 ;  power left to try
    .BYTE $F4, $A0, $F4, $EF, $A0, $F4, $F2, $F9, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $AE, 1 ;  that.
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D20> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $F3, 1 ;  has
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $E5, $E4, $A0 ;  returned to the
    .BYTE $F4, $EF, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F3, $E3, $E5, $EE, $E5, $AE, 1 ;  scene.
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $C4, $E9, $E1, $F2, $F9 ; *The Diary was hard
    .BYTE $A0, $F7, $E1, $F3, $A0, $E8, $E1, $F2, $E4, 1
    .BYTE $A0, $F4, $EF, $A0, $F2, $E5, $E1, $E4, $AC, $A0 ;  to read, but opened
    .BYTE $E2, $F5, $F4, $A0, $EF, $F0, $E5, $EE, $E5, $E4
    .BYTE 1
    .BYTE $A0, $F5, $F0, $A0, $F4, $EF, $A0, $F4, $E8, $E9 ;  up to this page...
    .BYTE $F3, $A0, $F0, $E1, $E7, $E5, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $C0, $A8, $D0, $C1, $D3, $D3, $D7, $CF, $D2, $C4 ; *(PASSWORD)
    .BYTE $A9, 1
    .BYTE 3
    .BYTE $C0, $AE, $AE, $AE, $AE, $A0, $F4, $E8, $E5, $A0 ; *.... the one who
    .BYTE $EF, $EE, $E5, $A0, $F7, $E8, $EF, 1
    .BYTE $A0, $EC, $EF, $F3, $F4, $A0, $F4, $E8, $E5, $A0 ;  lost the tail.
    .BYTE $F4, $E1, $E9, $EC, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E5, $A0, $E6, $EF, $F2, $E7, $EF ; *The forgotten one...
    .BYTE $F4, $F4, $E5, $EE, $A0, $EF, $EE, $E5, $AE, $AE
    .BYTE $AE, 1
    .BYTE $A0, $AE, $AE, $AE, $F4, $E8, $E5, $A0, $F3, $E8 ;  ...the ship
    .BYTE $E9, $F0, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F3, $E1, $E9, $EC ;  that sails...
    .BYTE $F3, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $6D00> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, 1 ;  became
    .BYTE $A0, $F3, $EF, $E6, $F4, $E5, $EE, $E5, $E4, $AE ;  softened.
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $CF, $E3, $E1, $F2, $E9 ; *The Ocarina
    .BYTE $EE, $E1, 1
    .BYTE $A0, $F0, $EC, $E1, $F9, $E5, $E4, $A0, $EF, $EE ;  played on and on...
    .BYTE $A0, $E1, $EE, $E4, $A0, $EF, $EE, $AE, $AE, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $C0, $C4, $E9, $E4, $A0, $F9, $EF, $F5, $A0, $E8 ; *Did you hear it?
    .BYTE $E5, $E1, $F2, $A0, $E9, $F4, $A2, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $F0, $EC, $E1, $E3 ; *This place is not
    .BYTE $E5, $A0, $E9, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $A0, $EF, $EE, $A0, $F4, $E8, $E5, $A0, $ED, $E1 ;  on the map.
    .BYTE $F0, $AE, 1
    .BYTE 0
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E8, $E5, $E3, $EB, $E5, $E4, 1 ;  checked
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $E1, $F0, $AE, 1 ;  the map.
    .BYTE 0
    .BYTE $C0, $D3, $F4, $EF, $F0, $F0, $E5, $E4, $A0, $E2 ; *Stopped by some
    .BYTE $F9, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $ED, $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5 ;  mysterious force.
    .BYTE $F3, $A0, $E6, $EF, $F2, $E3, $E5, $AE, 1
    .BYTE 0
    .BYTE $C0, $D4, $E8, $E5, $A0, $D2, $E5, $F0, $E5, $EC ; *The Repel Ring
    .BYTE $A0, $D2, $E9, $EE, $E7, 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $EC, $EF, $F3, $F4, $A0 ;  has lost its
    .BYTE $E9, $F4, $F3, 1
    .BYTE $A0, $ED, $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5 ;  mysterious power.
    .BYTE $F3, $A0, $F0, $EF, $F7, $E5, $F2, $AE, 1
    .BYTE 0
    .BYTE $A6, $D4, $E8, $E9, $F3, $A0, $F3, $EF, $E6, $F4 ; "This software is an illegal
    .BYTE $F7, $E1, $F2, $E5, $A0, $E9, $F3, $A0, $E1, $EE
    .BYTE $A0, $E9, $EC, $EC, $E5, $E7, $E1, $EC, 1
    .BYTE $E3, $EF, $F0, $F9, $A0, $EF, $E6, $A0, $E1, $A0 ; copy of a Nintendo game. The
    .BYTE $CE, $E9, $EE, $F4, $E5, $EE, $E4, $EF, $A0, $E7
    .BYTE $E1, $ED, $E5, $AE, $A0, $D4, $E8, $E5, 1
    .BYTE $F5, $F3, $E5, $AC, $A0, $F0, $EF, $F3, $F3, $E5 ; use, possession or sale of
    .BYTE $F3, $F3, $E9, $EF, $EE, $A0, $EF, $F2, $A0, $F3
    .BYTE $E1, $EC, $E5, $A0, $EF, $E6, 1
    .BYTE $F4, $E8, $E9, $F3, $A0, $E3, $EF, $F5, $EE, $F4 ; this counterfeit cartridge
    .BYTE $E5, $F2, $E6, $E5, $E9, $F4, $A0, $E3, $E1, $F2
    .BYTE $F4, $F2, $E9, $E4, $E7, $E5, 1
    .BYTE $E9, $F3, $A0, $E9, $EC, $EC, $E5, $E7, $E1, $EC ; is illegal and infringes
    .BYTE $A0, $E1, $EE, $E4, $A0, $E9, $EE, $E6, $F2, $E9
    .BYTE $EE, $E7, $E5, $F3, 1
    .BYTE $CE, $E9, $EE, $F4, $E5, $EE, $E4, $EF, $A0, $E3 ; Nintendo copyrights."
    .BYTE $EF, $F0, $F9, $F2, $E9, $E7, $E8, $F4, $F3, $AE
    .BYTE $A6, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0 ;           Nintendo Co., Ltd.
    .BYTE $CE, $E9, $EE, $F4, $E5, $EE, $E4, $EF, $A0, $C3
    .BYTE $EF, $AE, $AC, $A0, $CC, $F4, $E4, $AE, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0 ;           Kyoto, Japan /
    .BYTE $CB, $F9, $EF, $F4, $EF, $AC, $A0, $CA, $E1, $F0
    .BYTE $E1, $EE, $A0, $AF, 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0 ;           Redmond WA, USA.
    .BYTE $D2, $E5, $E4, $ED, $EF, $EE, $E4, $A0, $D7, $C1
    .BYTE $AC, $A0, $D5, $D3, $C1, $AE, 1
    .BYTE $A6, $D4, $E8, $E9, $F3, $A0, $E9, $EC, $EC, $E5 ; "This illegal copy of
    .BYTE $E7, $E1, $EC, $A0, $E3, $EF, $F0, $F9, $A0, $EF
    .BYTE $E6, 1
    .BYTE $CE, $C5, $D3, $A0, $C5, $C1, $D2, $D4, $C8, $A0 ; NES EARTH BOUND will
    .BYTE $C2, $CF, $D5, $CE, $C4, $A0, $F7, $E9, $EC, $EC
    .BYTE 1
    .BYTE $EE, $EF, $A0, $EC, $EF, $EE, $E7, $E5, $F2, $A0 ; no longer function."
    .BYTE $E6, $F5, $EE, $E3, $F4, $E9, $EF, $EE, $AE, $A6
    .BYTE 1
    .BYTE 0
    .BYTE $A0, 1            ;
    .BYTE $A0, 1            ;
    .BYTE $A0, 1            ;
    .BYTE $A0, 1            ;
    .BYTE 0
    .BYTE $C1, $F4, $A0, $F4, $E8, $E5, $A0, $F3, $F5, $ED ; At the summit of Mt. Itoi,
    .BYTE $ED, $E9, $F4, $A0, $EF, $E6, $A0, $CD, $F4, $AE
    .BYTE $A0, $C9, $F4, $EF, $E9, $AC, 1
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, $A0, $F2, $E5, $F5, $EE, $E9, $F4 ;  is reunited with her
    .BYTE $E5, $E4, $A0, $F7, $E9, $F4, $E8, $A0, $E8, $E5
    .BYTE $F2, 1
    .BYTE $ED, $EF, $ED, $A0, $E1, $F3, $A0, $F4, $E8, $E5 ; mom as the rest of the freed
    .BYTE $A0, $F2, $E5, $F3, $F4, $A0, $EF, $E6, $A0, $F4
    .BYTE $E8, $E5, $A0, $E6, $F2, $E5, $E5, $E4, 1
    .BYTE $C5, $E1, $F2, $F4, $E8, $A0, $F0, $E5, $EF, $F0 ; Earth people exit the cave.
    .BYTE $EC, $E5, $A0, $E5, $F8, $E9, $F4, $A0, $F4, $E8
    .BYTE $E5, $A0, $E3, $E1, $F6, $E5, $AE, 1
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $E8, $E9, $F3, $A0, $E8, $E5, $E1, $EC ; , his health fully
    .BYTE $F4, $E8, $A0, $E6, $F5, $EC, $EC, $F9, 1
    .BYTE $A0, $F2, $E5, $E3, $EF, $F6, $E5, $F2, $E5, $E4 ;  recovered, now sings daily
    .BYTE $AC, $A0, $EE, $EF, $F7, $A0, $F3, $E9, $EE, $E7
    .BYTE $F3, $A0, $E4, $E1, $E9, $EC, $F9, 1
    .BYTE $A0, $E1, $F4, $A0, $D4, $E8, $E5, $A0, $CC, $E9 ;  at The Live Show.
    .BYTE $F6, $E5, $A0, $D3, $E8, $EF, $F7, $AE, 1
    .BYTE 0
    .BYTE $A0, $A0, $D4, $E8, $E5, $A0, $EB, $E9, $E4, $EE ;   The kidnapped grown-ups
    .BYTE $E1, $F0, $F0, $E5, $E4, $A0, $E7, $F2, $EF, $F7
    .BYTE $EE, $AD, $F5, $F0, $F3, 1
    .BYTE $A0, $A0, $F2, $E5, $F4, $F5, $F2, $EE, $A0, $F4 ;   return to their lonely
    .BYTE $EF, $A0, $F4, $E8, $E5, $E9, $F2, $A0, $EC, $EF
    .BYTE $EE, $E5, $EC, $F9, 1
    .BYTE $A0, $A0, $E3, $E8, $E9, $EC, $E4, $F2, $E5, $EE ;   children in Youngtown.
    .BYTE $A0, $E9, $EE, $A0, $D9, $EF, $F5, $EE, $E7, $F4
    .BYTE $EF, $F7, $EE, $AE, 1
    .BYTE 0
    .BYTE $A8               ; (
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A9, 1            ; )
    .BYTE $C9, $A0, $F0, $F2, $EF, $ED, $E9, $F3, $E5, $A0 ; I promise I won't forget you
    .BYTE $C9, $A0, $F7, $EF, $EE, $A7, $F4, $A0, $E6, $EF
    .BYTE $F2, $E7, $E5, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $F3, $EF, $A0, $C9, $A0, $F7, $E9, $EC, $EC, $A0 ; so I will not say Good-Bye,
    .BYTE $EE, $EF, $F4, $A0, $F3, $E1, $F9, $A0, $C7, $EF
    .BYTE $EF, $E4, $AD, $C2, $F9, $E5, $AC, 1
    .BYTE $EA, $F5, $F3, $F4, $A0, $AD, $A0, $A7, $F4, $E9 ; just - 'til we meet again!
    .BYTE $EC, $A0, $F7, $E5, $A0, $ED, $E5, $E5, $F4, $A0
    .BYTE $E1, $E7, $E1, $E9, $EE, $A1, 1
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $F3, $A0, $F4 ;  returns to a hero's
    .BYTE $EF, $A0, $E1, $A0, $E8, $E5, $F2, $EF, $A7, $F3
    .BYTE 1
    .BYTE $A0, $F7, $E5, $EC, $E3, $EF, $ED, $E5, $A0, $E1 ;  welcome at Twinkle
    .BYTE $F4, $A0, $D4, $F7, $E9, $EE, $EB, $EC, $E5, 1
    .BYTE $A0, $C5, $EC, $E5, $ED, $E5, $EE, $F4, $E1, $F2 ;  Elementary School.
    .BYTE $F9, $A0, $D3, $E3, $E8, $EF, $EF, $EC, $AE, 1
    .BYTE 0
    .BYTE $D3, $EF, $EE, $AC, $A0, $F9, $EF, $F5, $F2, $A0 ; Son, your sisters and I are
    .BYTE $F3, $E9, $F3, $F4, $E5, $F2, $F3, $A0, $E1, $EE
    .BYTE $E4, $A0, $C9, $A0, $E1, $F2, $E5, 1
    .BYTE $F3, $EF, $A0, $E8, $E1, $F0, $F0, $F9, $A0, $F4 ; so happy to see you back in
    .BYTE $EF, $A0, $F3, $E5, $E5, $A0, $F9, $EF, $F5, $A0
    .BYTE $E2, $E1, $E3, $EB, $A0, $E9, $EE, 1
    .BYTE $EF, $EE, $E5, $A0, $F0, $E9, $E5, $E3, $E5, $AE ; one piece. How unbelievable
    .BYTE $A0, $C8, $EF, $F7, $A0, $F5, $EE, $E2, $E5, $EC
    .BYTE $E9, $E5, $F6, $E1, $E2, $EC, $E5, 1
    .BYTE $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, $A0, $E1 ; that you are not hungry.
    .BYTE $F2, $E5, $A0, $EE, $EF, $F4, $A0, $E8, $F5, $EE
    .BYTE $E7, $F2, $F9, $AE, 1
    .BYTE 0
    .BYTE $A0, $C1, $A0, $EC, $E5, $F4, $F4, $E5, $F2, $A0 ;  A letter from
    .BYTE $E6, $F2, $EF, $ED, $A0
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, 1            ; ,
    .BYTE $A0, $C9, $A0, $ED, $E9, $F3, $F3, $A0, $E8, $E9 ;  I miss him so much. I hope
    .BYTE $ED, $A0, $F3, $EF, $A0, $ED, $F5, $E3, $E8, $AE
    .BYTE $A0, $C9, $A0, $E8, $EF, $F0, $E5, 1
    .BYTE $A0, $F7, $E5, $A0, $E3, $E1, $EE, $A0, $E7, $E5 ;  we can get together again
    .BYTE $F4, $A0, $F4, $EF, $E7, $E5, $F4, $E8, $E5, $F2
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, 1
    .BYTE $A0, $F3, $EF, $EF, $EE, $AE, 1 ;  soon.
    .BYTE 0
    .BYTE $A0, $D7, $E5, $EC, $EC, $AC, $A0, $EE, $EF, $F7 ;  Well, now that the Earth's
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E8, $E5, $A0
    .BYTE $C5, $E1, $F2, $F4, $E8, $A7, $F3, 1
    .BYTE $A0, $E3, $F2, $E9, $F3, $E9, $F3, $A0, $E9, $F3 ;  crisis is finally over, I
    .BYTE $A0, $E6, $E9, $EE, $E1, $EC, $EC, $F9, $A0, $EF
    .BYTE $F6, $E5, $F2, $AC, $A0, $C9, 1
    .BYTE $A0, $F4, $E8, $E9, $EE, $EB, $A0, $C9, $A7, $EC ;  think I'll just lay down
    .BYTE $EC, $A0, $EA, $F5, $F3, $F4, $A0, $EC, $E1, $F9
    .BYTE $A0, $E4, $EF, $F7, $EE, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $E1, $A0, $ED, $EF, $ED ;  for a moment and Zzzzzzzzz
    .BYTE $E5, $EE, $F4, $A0, $E1, $EE, $E4, $A0, $DA, $FA
    .BYTE $FA, $FA, $FA, $FA, $FA, $FA, $FA, 1
    .BYTE 0
    .BYTE $A0, $C9, $A0, $EB, $EE, $EF, $F7, $A0, $F4, $E8 ;  I know that boy is home.
    .BYTE $E1, $F4, $A0, $E2, $EF, $F9, $A0, $E9, $F3, $A0
    .BYTE $E8, $EF, $ED, $E5, $AE, 1
    .BYTE $A0, $C3, $EF, $ED, $E5, $A0, $EF, $EE, $A0, $F3 ;  Come on son and answer the
    .BYTE $EF, $EE, $A0, $E1, $EE, $E4, $A0, $E1, $EE, $F3
    .BYTE $F7, $E5, $F2, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F0, $E8, $EF, $EE, $E5, $AE, $A0, $D3, $EF ;  phone. Something new has
    .BYTE $ED, $E5, $F4, $E8, $E9, $EE, $E7, $A0, $EE, $E5
    .BYTE $F7, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E3, $EF, $ED, $E5, $A0, $F5, $F0, $A0, $E1 ;  come up and...
    .BYTE $EE, $E4, $AE, $AE, $AE, 1
    .BYTE 0
    TILEPACK_OFF <$21, $7420> ; command to load packed tiles at the specified offset
    .BYTE 0
    .BYTE $D3, $C8, $C9, $C7, $C5, $D3, $C1, $D4, $CF, $A0 ; SHIGESATO ITOI
    .BYTE $C9, $D4, $CF, $C9, 0
    .BYTE $CD, $C9, $D9, $D5, $CB, $C9, $A0, $CB, $D5, $D2 ; MIYUKI KURE
    .BYTE $C5, 0
    .BYTE $C1, $CB, $C9, $CF, $A0, $CF, $C8, $CD, $CF, $D2 ; AKIO OHMORI
    .BYTE $C9, 0
    .BYTE $D2, $C9, $D4, $D3, $D5, $CF, $A0, $CB, $C1, $CD ; RITSUO KAMIMURA
    .BYTE $C9, $CD, $D5, $D2, $C1, 0
    .BYTE $CB, $C5, $C9, $C9, $C3, $C8, $C9, $A0, $D3, $D5 ; KEIICHI SUZUKI
    .BYTE $DA, $D5, $CB, $C9, 0
    .BYTE $C8, $C9, $D2, $CF, $CB, $C1, $DA, $D5, $A0, $D4 ; HIROKAZU TANAKA
    .BYTE $C1, $CE, $C1, $CB, $C1, 0
    .BYTE $D3, $C8, $C9, $CE, $C2, $CF, $A0, $CD, $C9, $CE ; SHINBO MINAMI
    .BYTE $C1, $CD, $C9, 0
    .BYTE $D4, $C1, $D4, $D3, $D5, $D9, $C1, $A0, $C9, $D3 ; TATSUYA ISHII
    .BYTE $C8, $C9, $C9, 0
    .BYTE $D4, $CF, $D4, $D4, $CF, $D2, $C9, 0 ; TOTTORI
    .BYTE $CB, $C1, $DA, $D5, $D9, $C1, $A0, $CE, $C1, $CB ; KAZUYA NAKATANI
    .BYTE $C1, $D4, $C1, $CE, $C9, 0
    .BYTE $D4, $C1, $CB, $C1, $D9, $D5, $CB, $C9, $A0, $CF ; TAKAYUKI ONODERA
    .BYTE $CE, $CF, $C4, $C5, $D2, $C1, 0
    .BYTE $CD, $CF, $D4, $CF, $CF, $A0, $D9, $C1, $D3, $D5 ; MOTOO YASUMA
    .BYTE $CD, $C1, 0
    .BYTE $CD, $C1, $D3, $C1, $D9, $D5, $CB, $C9, $A0, $CB ; MASAYUKI KAMEYAMA
    .BYTE $C1, $CD, $C5, $D9, $C1, $CD, $C1, 0
    .BYTE $C8, $C9, $C4, $C5, $CF, $A0, $CB, $CF, $CE, 0 ; HIDEO KON
    .BYTE $CB, $C1, $D4, $D3, $D5, $D4, $CF, $CD, $CF, $A0 ; KATSUTOMO MAEIWA
    .BYTE $CD, $C1, $C5, $C9, $D7, $C1, 0
    .BYTE $CB, $D5, $CE, $C9, $CB, $CF, $A0, $D3, $C1, $CB ; KUNIKO SAKURAI
    .BYTE $D5, $D2, $C1, $C9, 0
    .BYTE $CD, $C1, $D3, $C1, $C8, $C9, $D2, $CF, $A0, $D4 ; MASAHIRO TATEMOTO
    .BYTE $C1, $D4, $C5, $CD, $CF, $D4, $CF, 0
    .BYTE $D4, $C1, $CB, $C1, $D3, $C8, $C9, $A0, $CB, $C1 ; TAKASHI KAWAGUCHI
    .BYTE $D7, $C1, $C7, $D5, $C3, $C8, $C9, 0
    .BYTE $CB, $C5, $C9, $DA, $CF, $C8, $A0, $CB, $C1, $D4 ; KEIZOH KATOH
    .BYTE $CF, $C8, 0
    .BYTE $CD, $CF, $D4, $CF, $C8, $C9, $D2, $CF, $A0, $C9 ; MOTOHIRO ISHII
    .BYTE $D3, $C8, $C9, $C9, 0
    .BYTE $C1, $CB, $C9, $C8, $C9, $D4, $CF, $A0, $D4, $CF ; AKIHITO TODA
    .BYTE $C4, $C1, 0
    .BYTE $D9, $D5, $CB, $C1, $D2, $C9, $A0, $D3, $C1, $C9 ; YUKARI SAITOH
    .BYTE $D4, $CF, $C8, 0
    .BYTE $D0, $C8, $C9, $CC, $A0, $D3, $C1, $CE, $C4, $C8 ; PHIL SANDHOP
    .BYTE $CF, $D0, 0
    .BYTE $D4, $CF, $D3, $C8, $C9, $CB, $CF, $A0, $D7, $C1 ; TOSHIKO WATSON
    .BYTE $D4, $D3, $CF, $CE, 0
    .BYTE $D9, $D5, $CB, $C1, $A0, $CE, $C1, $CB, $C1, $D4 ; YUKA NAKATA
    .BYTE $C1, 0
    .BYTE $C8, $C9, $D2, $CF, $CB, $CF, $A0, $C6, $C1, $D5 ; HIROKO FAULKNER
    .BYTE $CC, $CB, $CE, $C5, $D2, 0
    .BYTE $D4, $CF, $CE, $D9, $A0, $C8, $C1, $D2, $CD, $C1 ; TONY HARMAN
    .BYTE $CE, 0
    .BYTE $C4, $C1, $D9, $D6, $A0, $C2, $D2, $CF, $CF, $CB ; DAYV BROOKS
    .BYTE $D3, 0
    .BYTE $CE, $CF, $D2, $C9, $D9, $D5, $CB, $C9, $A0, $CD ; NORIYUKI MINAMI
    .BYTE $C9, $CE, $C1, $CD, $C9, 0
    .BYTE $C2, $C9, $CE, $A0, $CF, $C8, $C7, $C1, $D7, $C1 ; BIN OHGAWARA
    .BYTE $D2, $C1, 0
    .BYTE $D9, $CF, $D3, $C8, $C9, $C8, $C9, $D3, $C1, $A0 ; YOSHIHISA WADA
    .BYTE $D7, $C1, $C4, $C1, 0
    .BYTE $C8, $C9, $CB, $CF, $CE, $CF, $D2, $C9, $A0, $D3 ; HIKONORI SUZUKI
    .BYTE $D5, $DA, $D5, $CB, $C9, 0
    .BYTE $D4, $C1, $CB, $C1, $CF, $A0, $D3, $C8, $C9, $CD ; TAKAO SHIMIZU
    .BYTE $C9, $DA, $D5, 0
    .BYTE $D3, $C8, $C9, $C7, $C5, $D2, $D5, $A0, $CD, $C9 ; SHIGERU MIYAMOTO
    .BYTE $D9, $C1, $CD, $CF, $D4, $CF, 0
    .BYTE $C8, $C9, $D2, $CF, $D3, $C8, $C9, $A0, $D9, $C1 ; HIROSHI YAMAUCHI
    .BYTE $CD, $C1, $D5, $C3, $C8, $C9, 0
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE 0

; CHARS BANKS 0xC0 - 0xC7
    .BYTE $A6, $C2, $E9, $E7, $A0, $C2, $E1, $E7, $A6, 1 ; "Big Bag"
    .BYTE $C0, $C1, $A0, $E2, $E1, $E7, $A0, $E6, $E9, $EC ; *A bag filled with
    .BYTE $EC, $E5, $E4, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $CD, $E1, $E7, $E9, $E3, $A0, $C8, $E5, $F2 ;  Magic Herb.
    .BYTE $E2, $AE, 1
    .BYTE 0
    .BYTE $A6, $D4, $E5, $EC, $E5, $F0, $E8, $EF, $EE, $E5 ; "Telephone Card"
    .BYTE $A0, $C3, $E1, $F2, $E4, $A6, 1
    .BYTE $C0, $D5, $D3, $C5, $A0, $F4, $E8, $E9, $F3, $A0 ; *USE this handy card
    .BYTE $E8, $E1, $EE, $E4, $F9, $A0, $E3, $E1, $F2, $E4
    .BYTE 1
    .BYTE $A0, $F4, $EF, $A0, $E3, $E8, $E1, $F2, $E7, $E5 ;  to charge your phone
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $F0, $E8, $EF, $EE
    .BYTE $E5, 1
    .BYTE $A0, $E3, $E1, $EC, $EC, $F3, $AE, 1 ;  calls.
    .BYTE 0
    .BYTE $A6, $C2, $F2, $E5, $E1, $E4, $A0, $C3, $F2, $F5 ; "Bread Crumbs"
    .BYTE $ED, $E2, $F3, $A6, 1
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E6, $EF ; *If you follow them,
    .BYTE $EC, $EC, $EF, $F7, $A0, $F4, $E8, $E5, $ED, $AC
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $F9, $EF, $F5, $A0, $F7, $E9, $EC, $EC, $A0 ; *you will return to
    .BYTE $F2, $E5, $F4, $F5, $F2, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $F0, $EC, $E1, $E3, $E5 ;  the place that you
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $F3, $F4, $E1, $F2, $F4, $E5, $E4, $AE, 1 ;  started.
    .BYTE 0
    .BYTE $A6, $D2, $E5, $F0, $E5, $EC, $A0, $D2, $E9, $EE ; "Repel Ring"
    .BYTE $E7, $A6, 1
    .BYTE $C0, $CF, $EE, $E5, $A0, $EC, $EF, $EF, $EB, $A0 ; *One look at this
    .BYTE $E1, $F4, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $A0, $F3, $F4, $F2, $E1, $EE, $E7, $E5, $A0, $F2 ;  strange ring
    .BYTE $E9, $EE, $E7, 1
    .BYTE 3
    .BYTE $C0, $F7, $E9, $EC, $EC, $A0, $E4, $F2, $E9, $F6 ; *will drive away
    .BYTE $E5, $A0, $E1, $F7, $E1, $F9, 1
    .BYTE $A0, $F7, $E5, $E1, $EB, $A0, $E5, $EE, $E5, $ED ;  weak enemies.
    .BYTE $E9, $E5, $F3, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C2, $F5, $F4, $F4, $E5, $F2, $A0, $CB, $EE ; "Butter Knife"
    .BYTE $E9, $E6, $E5, $A6, 1
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A0, $ED, $E1, $F3, $F4, $E5 ;  can master
    .BYTE $F2, 1
    .BYTE $A0, $E9, $F4, $AE, 1 ;  it.
    .BYTE 0
    .BYTE $A6, $D3, $F5, $F2, $F6, $E9, $F6, $E1, $EC, $A0 ; "Survival Knife"
    .BYTE $CB, $EE, $E9, $E6, $E5, $A6, 1
    .BYTE $C0, $C8, $E5, $F9, $A0 ; *Hey
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $F4, $E8, $E9, $F3, $A0, $E9, $F3, 1 ; , this is
    .BYTE $A0, $F3, $F4, $F2, $EF, $EE, $E7, $E5, $F2, $A0 ;  stronger than an
    .BYTE $F4, $E8, $E1, $EE, $A0, $E1, $EE, 1
    .BYTE $A0, $EF, $F2, $E4, $E9, $EE, $E1, $F2, $F9, $A0 ;  ordinary Knife.
    .BYTE $CB, $EE, $E9, $E6, $E5, $AE, 1
    .BYTE 0
    .BYTE $A6, $D3, $F7, $EF, $F2, $E4, $A6, 1 ; "Sword"
    .BYTE $C0, $C6, $E5, $F7, $A0, $F0, $E5, $EF, $F0, $EC ; *Few people can
    .BYTE $E5, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $ED, $E1, $F3, $F4, $E5, $F2, $A0, $E9, $F4 ;  master it.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $CB, $E1, $F4, $E1, $EE, $E1, $A6, 1 ; "Katana"
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $CA, $E1, $F0, $E1 ; *This Japanese sword
    .BYTE $EE, $E5, $F3, $E5, $A0, $F3, $F7, $EF, $F2, $E4
    .BYTE 1
    .BYTE $A0, $E9, $F3, $A0, $F4, $E8, $E5, $A0, $E2, $E5 ;  is the best
    .BYTE $F3, $F4, $A0
    TILEPACK_OFF <$21, $7538> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E8, $E1, $F3, $A0, $F3, $E5, $E5, $EE, $A0 ;  has seen yet.
    .BYTE $F9, $E5, $F4, $AE, 1
    .BYTE 0
    .BYTE $A6, $D3, $F4, $F5, $EE, $A0, $C7, $F5, $EE, $A6 ; "Stun Gun"
    .BYTE 1
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4, $EF, $A0 ;  seems to be able to
    .BYTE $E2, $E5, $A0, $E1, $E2, $EC, $E5, $A0, $F4, $EF
    .BYTE 1
    .BYTE $A0, $D5, $D3, $C5, $A0, $E9, $F4, $AE, 1 ;  USE it.
    .BYTE 0
    .BYTE $A6, $C1, $E9, $F2, $A0, $C7, $F5, $EE, $A6, 1 ; "Air Gun"
    .BYTE $C0, $C1, $A0, $F3, $F4, $F2, $EF, $EE, $E7, $A0 ; *A strong weapon,
    .BYTE $F7, $E5, $E1, $F0, $EF, $EE, $AC, 1
    .BYTE 3
    .BYTE $C0, $E2, $F5, $F4, $A0, $EF, $EE, $EC, $F9, $A0 ; *but only
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4, $EF, $A0 ;  seems to be able to
    .BYTE $E2, $E5, $A0, $E1, $E2, $EC, $E5, $A0, $F4, $EF
    .BYTE 1
    .BYTE $A0, $D5, $D3, $C5, $A0, $E9, $F4, $AE, 1 ;  USE it.
    .BYTE 0
    .BYTE $A6, $D0, $EC, $E1, $F3, $F4, $E9, $E3, $A0, $C2 ; "Plastic Bat"
    .BYTE $E1, $F4, $A6, 1
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $F7, $E5, $E1, $F0 ; *This weapon is OK
    .BYTE $EF, $EE, $A0, $E9, $F3, $A0, $CF, $CB, 1
    .BYTE $A0, $E6, $EF, $F2, $A0 ;  for
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AE, $A0, $D5, $D3, $C5, $A0, $E9, $F4, $A1, 1 ; . USE it!
    .BYTE 0
    .BYTE $A6, $D7, $EF, $EF, $E4, $E5, $EE, $A0, $C2, $E1 ; "Wooden Bat"
    .BYTE $F4, $A6, 1
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $D5, $D3, $C5, $A0, $F4, $E8, $E9, $F3 ; , USE this
    .BYTE 1
    .BYTE $A0, $F7, $E5, $E1, $F0, $EF, $EE, $A0, $F4, $EF ;  weapon to fight
    .BYTE $A0, $E6, $E9, $E7, $E8, $F4, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F7, $E5, $E1, $EB ;  with weak enemies.
    .BYTE $A0, $E5, $EE, $E5, $ED, $E9, $E5, $F3, $AE, 1
    .BYTE 0
    .BYTE $A6, $C1, $EC, $F5, $ED, $E9, $EE, $F5, $ED, $A0 ; "Aluminum Bat"
    .BYTE $C2, $E1, $F4, $A6, 1
    .BYTE $C0, $D7, $E9, $F4, $E8, $A0, $F4, $E8, $E9, $F3 ; *With this weapon
    .BYTE $A0, $F7, $E5, $E1, $F0, $EF, $EE, 1
    .BYTE 3
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A0, $E5, $E1, $F3, $E9, $EC ;  can easily
    .BYTE $F9, 1
    .BYTE $A0, $E6, $E9, $E7, $E8, $F4, $A0, $F4, $EF, $F5 ;  fight tougher
    .BYTE $E7, $E8, $E5, $F2, 1
    .BYTE $A0, $E5, $EE, $E5, $ED, $E9, $E5, $F3, $AE, 1 ;  enemies.
    .BYTE 0
    .BYTE $A6, $C8, $E1, $EE, $EB, $A7, $F3, $A0, $C2, $E1 ; "Hank's Bat"
    .BYTE $F4, $A6, 1
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E1, $F7, $E5, $F3 ; *This awesome bat
    .BYTE $EF, $ED, $E5, $A0, $E2, $E1, $F4, 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $F0, $E5, $F2, $F3, $EF ;  was personally
    .BYTE $EE, $E1, $EC, $EC, $F9, 1
    .BYTE $A0, $E1, $F5, $F4, $EF, $E7, $F2, $E1, $F0, $E8 ;  autographed.
    .BYTE $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $A6, $C6, $F2, $F9, $E9, $EE, $E7, $A0, $D0, $E1 ; "Frying Pan"
    .BYTE $EE, $A6, 1
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A0, $D5, $D3, $C5, 1 ;  can USE
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $F7, $E5, $E1, $F0 ;  this weapon best.
    .BYTE $EF, $EE, $A0, $E2, $E5, $F3, $F4, $AE, 1
    .BYTE 0
    .BYTE $A6, $CE, $EF, $EE, $AD, $F3, $F4, $E9, $E3, $EB ; "Non-stick Pan"
    .BYTE $A0, $D0, $E1, $EE, $A6, 1
    .BYTE $C0, $C1, $A0, $E7, $EF, $EF, $E4, $A0, $F7, $E5 ; *A good weapon for
    .BYTE $E1, $F0, $EF, $EE, $A0, $E6, $EF, $F2, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $AC, $A0, $F7, $E9, $F4, $E8, $A0, $EE, $EF, 1 ; , with no
    .BYTE $A0, $ED, $E5, $F3, $F3, $F9, $A0, $E3, $EC, $E5 ;  messy clean up.
    .BYTE $E1, $EE, $A0, $F5, $F0, $AE, 1
    .BYTE 0
    .BYTE $A6, $C9, $F2, $EF, $EE, $A0, $D3, $EB, $E9, $EC ; "Iron Skillet"
    .BYTE $EC, $E5, $F4, $A6, 1
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A0, $D5, $D3, $C5, $A0, $F4 ;  can USE this
    .BYTE $E8, $E9, $F3, 1
    .BYTE $A0, $E8, $E5, $E1, $F6, $F9, $A0, $ED, $E5, $F4 ;  heavy metal pan to
    .BYTE $E1, $EC, $A0, $F0, $E1, $EE, $A0, $F4, $EF, 1
    .BYTE $A0, $F2, $EF, $E3, $EB, $A0, $F3, $F4, $F2, $EF ;  rock strong enemies.
    .BYTE $EE, $E7, $A0, $E5, $EE, $E5, $ED, $E9, $E5, $F3
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $D3, $EC, $E9, $EE, $E7, $F3, $E8, $EF, $F4 ; "Slingshot"
    .BYTE $A6, 1
    .BYTE $C0, $C1, $A0, $E8, $E1, $EE, $E4, $F9, $A0, $F7 ; *A handy weapon,
    .BYTE $E5, $E1, $F0, $EF, $EE, $AC, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $E1, $EE, $F9, $EF ;  that anyone can USE.
    .BYTE $EE, $E5, $A0, $E3, $E1, $EE, $A0, $D5, $D3, $C5
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $C2, $EF, $EF, $ED, $E5, $F2, $E1, $EE, $E7 ; "Boomerang"
    .BYTE $A6, 1
    .BYTE $C0, $C2, $E5, $A0, $E3, $E1, $F2, $E5, $E6, $F5 ; *Be careful,
    .BYTE $EC, $AC, 1
    .BYTE $A0, $F4, $E8, $E9, $F3, $A0, $E9, $F3, $EE, $A7 ;  this isn't a toy.
    .BYTE $F4, $A0, $E1, $A0, $F4, $EF, $F9, $AE, 1
    .BYTE 3
    .BYTE $C0, $C1, $EE, $F9, $EF, $EE, $E5, $A0, $E3, $E1 ; *Anyone can USE it
    .BYTE $EE, $A0, $D5, $D3, $C5, $A0, $E9, $F4, 1
    .BYTE $A0, $E1, $F3, $A0, $E1, $A0, $F7, $E5, $E1, $F0 ;  as a weapon.
    .BYTE $EF, $EE, $AE, 1
    .BYTE 0
    .BYTE $A6, $C9, $EE, $F3, $E5, $E3, $F4, $E9, $E3, $E9 ; "Insecticide"
    .BYTE $E4, $E5, $A6, 1
    .BYTE $C0, $C9, $F4, $A0, $E8, $E1, $F3, $A0, $E1, $EE ; *It has an irritating
    .BYTE $A0, $E9, $F2, $F2, $E9, $F4, $E1, $F4, $E9, $EE
    .BYTE $E7, 1
    .BYTE $A0, $E5, $E6, $E6, $E5, $E3, $F4, $A0, $EF, $EE ;  effect on bugs.
    .BYTE $A0, $E2, $F5, $E7, $F3, $AE, 1
    .BYTE 0
    .BYTE $A6, $D3, $F5, $F0, $E5, $F2, $A0, $D3, $F0, $F2 ; "Super Spray"
    .BYTE $E1, $F9, $A6, 1
    .BYTE $C0, $C9, $EE, $E4, $F5, $F3, $F4, $F2, $E9, $E1 ; *Industrial strength
    .BYTE $EC, $A0, $F3, $F4, $F2, $E5, $EE, $E7, $F4, $E8
    .BYTE 1
    .BYTE $A0, $C9, $EE, $F3, $E5, $E3, $F4, $E9, $E3, $E9 ;  Insecticide.
    .BYTE $E4, $E5, $AE, 1
    .BYTE 0
    .BYTE $A6, $C6, $EC, $E5, $E1, $A0, $C2, $E1, $E7, $A6 ; "Flea Bag"
    .BYTE 1
    .BYTE $C0, $C1, $A0, $E2, $E1, $E7, $A0, $EF, $E6, $A0 ; *A bag of fleas and
    .BYTE $E6, $EC, $E5, $E1, $F3, $A0, $E1, $EE, $E4, 1
    .BYTE $A0, $EF, $F4, $E8, $E5, $F2, $A0, $EE, $E1, $F3 ;  other nasty
    .BYTE $F4, $F9, 1
    .BYTE $A0, $E3, $F2, $E9, $F4, $F4, $E5, $F2, $F3, $AE ;  critters.
    .BYTE 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $F2, $EF, $F7, $A0, $E1, $F4, $A0 ; *Throw at an enemy
    .BYTE $E1, $EE, $A0, $E5, $EE, $E5, $ED, $F9, 1
    .BYTE $A0, $E1, $EE, $E4, $A0, $F7, $E1, $F4, $E3, $E8 ;  and watch the
    .BYTE $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E5, $E6, $E6, $E5, $E3, $F4, $A1, 1 ;  effect!
    .BYTE 0
    .BYTE $A6, $D7, $EF, $F2, $E4, $F3, $A0, $EF, $E6, $A0 ; "Words of Love"
    .BYTE $CC, $EF, $F6, $E5, $A6, 1
    .BYTE $C0, $A2, $A2, $A2, 1 ; *???
    .BYTE 0
    .BYTE $A6, $D3, $F7, $E5, $E1, $F2, $A0, $D7, $EF, $F2 ; "Swear Words"
    .BYTE $E4, $F3, $A6, 1
    .BYTE $C0, $A2, $A2, $A2, 1 ; *???
    .BYTE 0
    .BYTE $A6, $D3, $F4, $E9, $E3, $EB, $F9, $A0, $CD, $E1 ; "Sticky Machine"
    .BYTE $E3, $E8, $E9, $EE, $E5, $A6, 1
    .BYTE $C0, $C9, $F4, $A0, $F3, $E5, $E5, $ED, $F3, $A0 ; *It seems to be used
    .BYTE $F4, $EF, $A0, $E2, $E5, $A0, $F5, $F3, $E5, $E4
    .BYTE 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $E6, $E9, $E7, $E8, $F4 ;  for fighting, but...
    .BYTE $E9, $EE, $E7, $AC, $A0, $E2, $F5, $F4, $AE, $AE
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $C6, $EC, $E1, $F3, $E8, $E4, $E1, $F2, $EB ; "Flashdark"
    .BYTE $A6, 1
    .BYTE $C0, $D4, $E8, $E5, $A0, $EF, $F0, $F0, $EF, $F3 ; *The opposite of a
    .BYTE $E9, $F4, $E5, $A0, $EF, $E6, $A0, $E1, 1
    .BYTE $A0, $E6, $EC, $E1, $F3, $E8, $EC, $E9, $E7, $E8 ;  flashlight.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C6, $EC, $E1, $ED, $E5, $A0, $D4, $E8, $F2 ; "Flame Thrower"
    .BYTE $EF, $F7, $E5, $F2, $A6, 1
    .BYTE $C0, $D4, $EF, $E1, $F3, $F4, $F3, $A0, $F4, $E8 ; *Toasts the enemy,
    .BYTE $E5, $A0, $E5, $EE, $E5, $ED, $F9, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $EF, $EE, $EC, $F9, $A0 ;  but only
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $F5, $F3, $E5, $A0, $E9 ;  can use it.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $A6, $C2, $EF, $ED, $E2, $A6, 1 ; "Bomb"
    .BYTE $C0, $CD, $E1, $F9, $E2, $E5, $A0, $EF, $EE, $EC ; *Maybe only
    .BYTE $F9, $A0
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E3, $E1, $EE, $A0, $E4, $E5, $F4, $EF, $EE ;  can detonate it.
    .BYTE $E1, $F4, $E5, $A0, $E9, $F4, $AE, 1
    .BYTE 0
    .BYTE $A6, $D3, $F5, $F0, $E5, $F2, $A0, $C2, $EF, $ED ; "Super Bomb"
    .BYTE $E2, $A6, 1
    .BYTE $C0, $D7, $F2, $E9, $F4, $F4, $E5, $EE, $A0, $EF ; *Written on the side
    .BYTE $EE, $A0, $F4, $E8, $E5, $A0, $F3, $E9, $E4, $E5
    .BYTE 1
    .BYTE $A0, $A6, $C2, $E5, $F7, $E1, $F2, $E5, $A0, $EF ;  "Beware of blast",
    .BYTE $E6, $A0, $E2, $EC, $E1, $F3, $F4, $A6, $AC, 1
    .BYTE 3
    .BYTE $C0, $EF, $EE, $EC, $F9, $A0 ; *only
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, 1 ;  can
    .BYTE $A0, $F5, $F3, $E5, $A0, $E9, $F4, $AE, 1 ;  use it.
    .BYTE 0
    .BYTE $A6, $CC, $E1, $F3, $E5, $F2, $A0, $C2, $E5, $E1 ; "Laser Beam"
    .BYTE $ED, $A6, 1
    .BYTE $C0, $C9, $F4, $A0, $E8, $E5, $EC, $F0, $F3, $A0 ; *It helps that sissy
    .BYTE $F4, $E8, $E1, $F4, $A0, $F3, $E9, $F3, $F3, $F9
    .BYTE 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $A6, $D0, $EC, $E1, $F3, $ED, $E1, $A0, $C2, $E5 ; "Plasma Beam"
    .BYTE $E1, $ED, $A6, 1
    .BYTE $C0, $C9, $F4, $A0, $E8, $E5, $EC, $F0, $F3, $A0 ; *It helps that weenie
    .BYTE $F4, $E8, $E1, $F4, $A0, $F7, $E5, $E5, $EE, $E9
    .BYTE $E5, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F1, $F5, $E9, $F4, $E5, $A0, $E1, $A0, $EC ;  quite a lot.
    .BYTE $EF, $F4, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $D2, $EF, $F0, $E5, $A6, 1 ; "Rope"
    .BYTE $C0, $D5, $F3, $E5, $A0, $E9, $F4, $A0, $F4, $EF ; *Use it to tie the
    .BYTE $A0, $F4, $E9, $E5, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $E5, $EE, $E5, $ED, $F9, $A0, $F5, $F0, $AE ;  enemy up.
    .BYTE 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $D0, $E5, $E1, $E3, $E5, $A0, $C3, $EF, $E9 ; "Peace Coin"
    .BYTE $EE, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $E7 ;  DEFENSE goes up a
    .BYTE $EF, $E5, $F3, $A0, $F5, $F0, $A0, $E1, 1
    .BYTE $A0, $EC, $E9, $F4, $F4, $EC, $E5, $A0, $E2, $E9 ;  little bit.
    .BYTE $F4, $AE, 1
    .BYTE 0
    .BYTE $A6, $D0, $F2, $EF, $F4, $E5, $E3, $F4, $E9, $EF ; "Protection Coin"
    .BYTE $EE, $A0, $C3, $EF, $E9, $EE, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $E7 ;  DEFENSE goes up.
    .BYTE $EF, $E5, $F3, $A0, $F5, $F0, $AE, 1
    .BYTE 0
    .BYTE $A6, $CD, $E1, $E7, $E9, $E3, $A0, $C3, $EF, $E9 ; "Magic Coin"
    .BYTE $EE, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $F2 ;  DEFENSE really goes
    .BYTE $E5, $E1, $EC, $EC, $F9, $A0, $E7, $EF, $E5, $F3
    .BYTE 1
    .BYTE $A0, $F5, $F0, $AE, 1 ;  up.
    .BYTE 0
    .BYTE $A6, $C2, $F2, $E1, $F3, $F3, $A0, $D2, $E9, $EE ; "Brass Ring"
    .BYTE $E7, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $E7 ;  DEFENSE goes up a
    .BYTE $EF, $E5, $F3, $A0, $F5, $F0, $A0, $E1, 1
    .BYTE $A0, $E2, $E9, $F4, $AE, 1 ;  bit.
    .BYTE 0
    .BYTE $A6, $D3, $E9, $EC, $F6, $E5, $F2, $A0, $D2, $E9 ; "Silver Ring"
    .BYTE $EE, $E7, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $E7 ;  DEFENSE goes up.
    .BYTE $EF, $E5, $F3, $A0, $F5, $F0, $AE, 1
    .BYTE 0
    .BYTE $A6, $C7, $EF, $EC, $E4, $A0, $D2, $E9, $EE, $E7 ; "Gold Ring"
    .BYTE $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $F2 ;  DEFENSE really goes
    .BYTE $E5, $E1, $EC, $EC, $F9, $A0, $E7, $EF, $E5, $F3
    .BYTE 1
    .BYTE $A0, $F5, $F0, $AE, 1 ;  up.
    .BYTE 0
    .BYTE $A6, $C8, $B2, $EF, $A0, $D0, $E5, $EE, $E4, $E1 ; "H2o Pendant"
    .BYTE $EE, $F4, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $E9, $F4, $A0, $F7, $E9, $EC, $EC, $A0, $E4 ;  it will defend
    .BYTE $E5, $E6, $E5, $EE, $E4, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $F3, $F4, $A0, $D0 ;  against PK Fire.
    .BYTE $CB, $A0, $C6, $E9, $F2, $E5, $AE, 1
    .BYTE 0
    .BYTE $A6, $C6, $E9, $F2, $E5, $A0, $D0, $E5, $EE, $E4 ; "Fire Pendant"
    .BYTE $E1, $EE, $F4, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $E9, $F4, $A0, $F7, $E9, $EC, $EC, $A0, $E4 ;  it will defend
    .BYTE $E5, $E6, $E5, $EE, $E4, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $F3, $F4, $A0, $D0 ;  against PK Freeze.
    .BYTE $CB, $A0, $C6, $F2, $E5, $E5, $FA, $E5, $AE, 1
    .BYTE 0
    .BYTE $A6, $C5, $E1, $F2, $F4, $E8, $A0, $D0, $E5, $EE ; "Earth Pendant"
    .BYTE $E4, $E1, $EE, $F4, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $E9, $F4, $A0, $F7, $E9, $EC, $EC, $A0, $E4 ;  it will defend
    .BYTE $E5, $E6, $E5, $EE, $E4, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $F3, $F4, $A0, $D0 ;  against PK Thunder.
    .BYTE $CB, $A0, $D4, $E8, $F5, $EE, $E4, $E5, $F2, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $A6, $D3, $E5, $E1, $A0, $D0, $E5, $EE, $E4, $E1 ; "Sea Pendant"
    .BYTE $EE, $F4, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you USE it,
    .BYTE $D5, $D3, $C5, $A0, $E9, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $E9, $F4, $A0, $F7, $E9, $EC, $EC, $A0, $E4 ; *it will defend
    .BYTE $E5, $E6, $E5, $EE, $E4, 1
    .BYTE $A0, $E1, $E7, $E1, $E9, $EE, $F3, $F4, 1 ;  against
    .BYTE $A0, $E1, $EC, $EC, $A0, $D0, $D3, $C9, $A0, $E1 ;  all PSI attack.
    .BYTE $F4, $F4, $E1, $E3, $EB, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $CF, $F2, $E1, $EE, $E7, $E5, $A0, $CA, $F5 ; "Orange Juice"
    .BYTE $E9, $E3, $E5, $A6, 1
    .BYTE $C0, $D6, $E9, $F4, $E1, $ED, $E9, $EE, $A0, $C3 ; *Vitamin C is always
    .BYTE $A0, $E9, $F3, $A0, $E1, $EC, $F7, $E1, $F9, $F3
    .BYTE 1
    .BYTE $A0, $E7, $EF, $EF, $E4, $A0, $E6, $EF, $F2, $A0 ;  good for a few HP.
    .BYTE $E1, $A0, $E6, $E5, $F7, $A0, $C8, $D0, $AE, 1
    .BYTE 0
    .BYTE $A6, $C6, $F2, $E5, $EE, $E3, $E8, $A0, $C6, $F2 ; "French Fries"
    .BYTE $E9, $E5, $F3, $A6, 1
    .BYTE $C0, $C5, $C1, $D4, $E5, $EE, $A0, $F7, $E9, $F4 ; *EATen with or
    .BYTE $E8, $A0, $EF, $F2, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $EF, $F5, $F4, $A0, $E3 ;  without catsup,
    .BYTE $E1, $F4, $F3, $F5, $F0, $AC, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $C8, $D0, $A0, $F7 ;  your HP will rise.
    .BYTE $E9, $EC, $EC, $A0, $F2, $E9, $F3, $E5, $AE, 1
    .BYTE 0
    .BYTE $A6, $CD, $E1, $E7, $E9, $E3, $A0, $C8, $E5, $F2 ; "Magic Herb"
    .BYTE $E2, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0, $F9, $EF, $F5, $A0 ; *When you are tired
    .BYTE $E1, $F2, $E5, $A0, $F4, $E9, $F2, $E5, $E4, 1
    .BYTE $A0, $EF, $F2, $A0, $E9, $EE, $EA, $F5, $F2, $E5 ;  or injured, USE it.
    .BYTE $E4, $AC, $A0, $D5, $D3, $C5, $A0, $E9, $F4, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $A6, $C8, $E1, $ED, $E2, $F5, $F2, $E7, $E5, $F2 ; "Hamburger"
    .BYTE $A6, 1
    .BYTE $C0, $C6, $E1, $F3, $F4, $A0, $E6, $EF, $EF, $E4 ; *Fast food for some
    .BYTE $A0, $E6, $EF, $F2, $A0, $F3, $EF, $ED, $E5, 1
    .BYTE $A0, $E6, $E1, $F3, $F4, $A0, $C8, $D0, $AE, 1 ;  fast HP.
    .BYTE 0
    .BYTE $A6, $D3, $F0, $EF, $F2, $F4, $F3, $A0, $C4, $F2 ; "Sports Drink"
    .BYTE $E9, $EE, $EB, $A6, 1
    .BYTE $C0, $CE, $EF, $A0, $ED, $E1, $F4, $F4, $E5, $F2 ; *No matter how tired
    .BYTE $A0, $E8, $EF, $F7, $A0, $F4, $E9, $F2, $E5, $E4
    .BYTE 1
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, $AC, $A0 ;  you are, one bottle
    .BYTE $EF, $EE, $E5, $A0, $E2, $EF, $F4, $F4, $EC, $E5
    .BYTE 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $F3, $F4, $F2, $E5 ;  will strengthen you.
    .BYTE $EE, $E7, $F4, $E8, $E5, $EE, $A0, $F9, $EF, $F5
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $CC, $E9, $E6, $E5, $A0, $D5, $F0, $A0, $C3 ; "Life Up Cream"
    .BYTE $F2, $E5, $E1, $ED, $A6, 1
    .BYTE $C0, $D5, $D3, $C5, $E4, $A0, $F4, $EF, $A0, $E8 ; *USEd to heal wounds.
    .BYTE $E5, $E1, $EC, $A0, $F7, $EF, $F5, $EE, $E4, $F3
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $C1, $F3, $F4, $E8, $ED, $E1, $A0, $D3, $F0 ; "Asthma Spray"
    .BYTE $F2, $E1, $F9, $A6, 1
    .BYTE $C0, $D7, $E8, $E5, $EE, $A0 ; *When
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $E1, $F3, $F4, $E8, $ED, $E1, $A0, $E1, $F4 ;  asthma attacks,
    .BYTE $F4, $E1, $E3, $EB, $F3, $AC, 1
    .BYTE $A0, $F3, $F0, $F2, $E1, $F9, $A0, $F4, $E8, $E9 ;  spray this.
    .BYTE $F3, $AE, 1
    .BYTE 0
    .BYTE $A6, $C1, $EE, $F4, $E9, $E4, $EF, $F4, $E5, $A6 ; "Antidote"
    .BYTE 1
    .BYTE $C0, $C9, $F4, $A0, $EE, $E5, $F5, $F4, $F2, $E1 ; *It neutralizes
    .BYTE $EC, $E9, $FA, $E5, $F3, 1
    .BYTE $A0, $F0, $EF, $E9, $F3, $EF, $EE, $A0, $F1, $F5 ;  poison quickly.
    .BYTE $E9, $E3, $EB, $EC, $F9, $AE, 1
    .BYTE 0
    .BYTE $A6, $CD, $EF, $F5, $F4, $E8, $F7, $E1, $F3, $E8 ; "Mouthwash"
    .BYTE $A6, 1
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E7, $E1 ; *If you gargle with
    .BYTE $F2, $E7, $EC, $E5, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $E9, $F4, $AC, $A0, $F9, $EF, $F5, $A0, $F7 ;  it, you will lose
    .BYTE $E9, $EC, $EC, $A0, $EC, $EF, $F3, $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $E3, $EF, $EC, $E4 ;  your cold.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $D3, $F4, $F2, $E1, $F7, $C2, $E5, $F2, $F2 ; "StrawBerry Tofu"
    .BYTE $F9, $A0, $D4, $EF, $E6, $F5, $A6, 1
    .BYTE $C0, $C9, $E6, $A0, $F9, $EF, $F5, $A0, $F2, $E5 ; *If you really want
    .BYTE $E1, $EC, $EC, $F9, $A0, $F7, $E1, $EE, $F4, 1
    .BYTE $A0, $F4, $EF, $A0, $E5, $E1, $F4, $A0, $E9, $F4 ;  to eat it OK, but...
    .BYTE $A0, $CF, $CB, $AC, $A0, $E2, $F5, $F4, $AE, $AE
    .BYTE $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C2, $F2, $E5, $E1, $E4, $A6, 1 ; "Bread"
    .BYTE $C0, $CF, $CB, $A0, $F4, $EF, $A0, $E5, $E1, $F4 ; *OK to eat it,
    .BYTE $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $E2, $F5, $F4, $A0, $E9, $F4, $F3, $A0, $C3 ;  but its CRUMBS can
    .BYTE $D2, $D5, $CD, $C2, $D3, $A0, $E3, $E1, $EE, 1
    .BYTE $A0, $E2, $E5, $A0, $F5, $F3, $E5, $E4, 1 ;  be used
    .BYTE 3
    .BYTE $C0, $F4, $EF, $A0, $ED, $E1, $F2, $EB, $A0, $F9 ; *to mark your trail.
    .BYTE $EF, $F5, $F2, $A0, $F4, $F2, $E1, $E9, $EC, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $A6, $CE, $EF, $E2, $EC, $E5, $A0, $D3, $E5, $E5 ; "Noble Seed"
    .BYTE $E4, $A6, 1
    .BYTE $C0, $D5, $D3, $C5, $A0, $F4, $E8, $E9, $F3, $A0 ; *USE this to cancel
    .BYTE $F4, $EF, $A0, $E3, $E1, $EE, $E3, $E5, $EC, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $D7, $E9, $E3, $EB, $E5 ;  the Wicked Seed.
    .BYTE $E4, $A0, $D3, $E5, $E5, $E4, $AE, 1
    .BYTE 0
    .BYTE $A6, $D0, $D3, $C9, $A0, $D3, $F4, $EF, $EE, $E5 ; "PSI Stone"
    .BYTE $A6, 1
    .BYTE $C0, $D0, $D3, $C9, $A0, $D0, $EF, $F7, $E5, $F2 ; *PSI Power in solid
    .BYTE $A0, $E9, $EE, $A0, $F3, $EF, $EC, $E9, $E4, 1
    .BYTE $A0, $E6, $EF, $F2, $ED, $AE, 1 ;  form.
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $CD, $E1, $E7, $E9, $E3, $A0, $D2, $E9, $E2 ; "Magic Ribbon"
    .BYTE $E2, $EF, $EE, $A6, 1
    .BYTE $C0, $D7, $E9, $F4, $E8, $A0, $F4, $E8, $E9, $F3 ; *With this FORCE
    .BYTE $A0, $C6, $CF, $D2, $C3, $C5, 1
    .BYTE $A0, $F7, $E9, $EC, $EC, $A0, $F2, $E9, $F3, $E5 ;  will rise a bit.
    .BYTE $A0, $E1, $A0, $E2, $E9, $F4, $AE, 1
    .BYTE 3
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $E6 ; *This is for a girl
    .BYTE $EF, $F2, $A0, $E1, $A0, $E7, $E9, $F2, $EC, 1
    .BYTE $A0, $F4, $EF, $A0, $F4, $E9, $E5, $A0, $E9, $EE ;  to tie in her hair.
    .BYTE $A0, $E8, $E5, $F2, $A0, $E8, $E1, $E9, $F2, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $A6, $CD, $E1, $E7, $E9, $E3, $A0, $C3, $E1, $EE ; "Magic Candy"
    .BYTE $E4, $F9, $A6, 1
    .BYTE $C0, $C9, $E6, $A0, $F4, $E8, $E5, $A0, $F3, $E9 ; *If the sissy boy
    .BYTE $F3, $F3, $F9, $A0, $E2, $EF, $F9, 1
    .BYTE $A0, $C5, $C1, $D4, $F3, $A0, $F4, $E8, $E9, $F3 ;  EATs this his
    .BYTE $A0, $E8, $E9, $F3, 1
    .BYTE $A0, $C6, $C9, $C7, $C8, $D4, $A0, $F2, $E9, $F3 ;  FIGHT rise some.
    .BYTE $E5, $A0, $F3, $EF, $ED, $E5, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $D1, $F5, $E9, $E3, $EB, $A0, $C3, $E1, $F0 ; "Quick Capsule"
    .BYTE $F3, $F5, $EC, $E5, $A6, 1
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $F4, $E8, $E9, $F3 ; *Take this capsule to
    .BYTE $A0, $E3, $E1, $F0, $F3, $F5, $EC, $E5, $A0, $F4
    .BYTE $EF, 1
    .BYTE $A0, $F2, $E1, $E9, $F3, $E5, $A0, $F9, $EF, $F5 ;  raise your SPEED.
    .BYTE $F2, $A0, $D3, $D0, $C5, $C5, $C4, $AE, 1
    .BYTE 0
    .BYTE $A6, $D7, $E9, $F3, $E4, $EF, $ED, $A0, $C3, $E1 ; "Wisdom Capsule"
    .BYTE $F0, $F3, $F5, $EC, $E5, $A6, 1
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $F4, $E8, $E9, $F3 ; *Take this capsule to
    .BYTE $A0, $E3, $E1, $F0, $F3, $F5, $EC, $E5, $A0, $F4
    .BYTE $EF, 1
    .BYTE $A0, $F2, $E1, $E9, $F3, $E5, $A0, $F9, $EF, $F5 ;  raise your WISDOM.
    .BYTE $F2, $A0, $D7, $C9, $D3, $C4, $CF, $CD, $AE, 1
    .BYTE 0
    .BYTE $A6, $D0, $E8, $F9, $F3, $E9, $E3, $E1, $EC, $A0 ; "Physical Capsule"
    .BYTE $C3, $E1, $F0, $F3, $F5, $EC, $E5, $A6, 1
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $F4, $E8, $E9, $F3 ; *Take this capsule to
    .BYTE $A0, $E3, $E1, $F0, $F3, $F5, $EC, $E5, $A0, $F4
    .BYTE $EF, 1
    .BYTE $A0, $F2, $E1, $E9, $F3, $E5, $A0, $F9, $EF, $F5 ;  raise your STRENGTH.
    .BYTE $F2, $A0, $D3, $D4, $D2, $C5, $CE, $C7, $D4, $C8
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $C6, $EF, $F2, $E3, $E5, $A0, $C3, $E1, $F0 ; "Force Capsule"
    .BYTE $F3, $F5, $EC, $E5, $A6, 1
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $F4, $E8, $E9, $F3 ; *Take this capsule to
    .BYTE $A0, $E3, $E1, $F0, $F3, $F5, $EC, $E5, $A0, $F4
    .BYTE $EF, 1
    .BYTE $A0, $F2, $E1, $E9, $F3, $E5, $A0, $F9, $EF, $F5 ;  raise your FORCE.
    .BYTE $F2, $A0, $C6, $CF, $D2, $C3, $C5, $AE, 1
    .BYTE 0
    .BYTE $A6, $C6, $E9, $E7, $E8, $F4, $A0, $C3, $E1, $F0 ; "Fight Capsule"
    .BYTE $F3, $F5, $EC, $E5, $A6, 1
    .BYTE $C0, $D4, $E1, $EB, $E5, $A0, $F4, $E8, $E9, $F3 ; *Take this capsule to
    .BYTE $A0, $E3, $E1, $F0, $F3, $F5, $EC, $E5, $A0, $F4
    .BYTE $EF, 1
    .BYTE $A0, $F2, $E1, $E9, $F3, $E5, $A0, $F9, $EF, $F5 ;  raise your FIGHT.
    .BYTE $F2, $A0, $C6, $C9, $C7, $C8, $D4, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C2, $E1, $F3, $E5, $ED, $E5, $EE, $F4, $A0 ; "Basement Key"
    .BYTE $CB, $E5, $F9, $A6, 1
    .BYTE $C0, $D5, $D3, $C5, $A0, $F4, $E8, $E9, $F3, $A0 ; *USE this Key to
    .BYTE $CB, $E5, $F9, $A0, $F4, $EF, 1
    .BYTE $A0, $F5, $EE, $EC, $EF, $E3, $EB, $A0, $F4, $E8 ;  unlock the basement
    .BYTE $E5, $A0, $E2, $E1, $F3, $E5, $ED, $E5, $EE, $F4
    .BYTE 1
    .BYTE $A0, $E4, $EF, $EF, $F2, $AE, 1 ;  door.
    .BYTE 0
    .BYTE $A6, $DA, $EF, $EF, $A0, $CB, $E5, $F9, $A6, 1 ; "Zoo Key"
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $CB, $E5, $F9, $A0 ; *This Key will unlock
    .BYTE $F7, $E9, $EC, $EC, $A0, $F5, $EE, $EC, $EF, $E3
    .BYTE $EB, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $ED, $E1, $E9, $EE, $A0 ;  the main gate at
    .BYTE $E7, $E1, $F4, $E5, $A0, $E1, $F4, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $C3, $E9, $F4, $F9, $A0 ;  the City Zoo.
    .BYTE $DA, $EF, $EF, $AE, 1
    .BYTE 0
    .BYTE $A6, $C7, $E8, $EF, $F3, $F4, $A0, $C8, $EF, $F5 ; "Ghost House Key"
    .BYTE $F3, $E5, $A0, $CB, $E5, $F9, $A6, 1
    .BYTE $C0, $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $F4 ; *This is the Key to
    .BYTE $E8, $E5, $A0, $CB, $E5, $F9, $A0, $F4, $EF, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $D2, $EF, $F3, $E5, $ED ;  the Rosemarys' house.
    .BYTE $E1, $F2, $F9, $F3, $A7, $A0, $E8, $EF, $F5, $F3
    .BYTE $E5, $AE, 1
    .BYTE 0
    .BYTE $A6, $C7, $F2, $E5, $E1, $F4, $AD, $C7, $F2, $E1 ; "Great-Grand Father's
    .BYTE $EE, $E4, $A0, $C6, $E1, $F4, $E8, $E5, $F2, $A7
    .BYTE $F3, 1
    .BYTE $A0, $C4, $E9, $E1, $F2, $F9, $A6, 1 ;  Diary"
    .BYTE $C0, $C9, $F4, $A0, $E9, $F3, $A0, $EF, $EC, $E4 ; *It is old,
    .BYTE $AC, 1
    .BYTE $A0, $F2, $E1, $E7, $E7, $E5, $E4, $AC, $A0, $E1 ;  ragged, and filled
    .BYTE $EE, $E4, $A0, $E6, $E9, $EC, $EC, $E5, $E4, 1
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $E5, $EE, $F4, $F2 ;  with entries.
    .BYTE $E9, $E5, $F3, $AE, 1
    .BYTE 0
    .BYTE $A6, $D0, $E1, $F3, $F3, $A6, 1 ; "Pass"
    .BYTE $C0, $D0, $F2, $E9, $EE, $F4, $E5, $E4, $A0, $EF ; *Printed on it,
    .BYTE $EE, $A0, $E9, $F4, $AC, 1
    .BYTE $A0, $A6, $C4, $F5, $EE, $E3, $E1, $EE, $A0, $C6 ;  "Duncan Factory
    .BYTE $E1, $E3, $F4, $EF, $F2, $F9, 1
    .BYTE $A0, $C5, $ED, $F0, $EC, $EF, $F9, $E5, $E5, $A6 ;  Employee".
    .BYTE $AE, 1
    .BYTE 0
    .BYTE $A6, $D4, $E9, $E3, $EB, $E5, $F4, $A6, 1 ; "Ticket"
    .BYTE $C0, $D0, $F2, $E9, $EE, $F4, $E5, $E4, $A0, $EF ; *Printed on it,
    .BYTE $EE, $A0, $E9, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $A6, $D2, $EF, $E3, $EB, $A7, $EE, $A0, $D2 ; *"Rock'n Roll all
    .BYTE $EF, $EC, $EC, $A0, $E1, $EC, $EC, 1
    .BYTE $A0, $EE, $E9, $E7, $E8, $F4, $A0, $E1, $EE, $E4 ;  night and every day
    .BYTE $A0, $E5, $F6, $E5, $F2, $F9, $A0, $E4, $E1, $F9
    .BYTE 1
    .BYTE $A0, $E1, $F4, $A0, $D4, $E8, $E5, $A0, $CC, $E9 ;  at The Live Show".
    .BYTE $F6, $E5, $A0, $D3, $E8, $EF, $F7, $A6, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C3, $E1, $EE, $E1, $F2, $F9, $A0, $C3, $E8 ; "Canary Chick"
    .BYTE $E9, $E3, $EB, $A6, 1
    .BYTE $C0, $C9, $F4, $F3, $A0, $E5, $F9, $E5, $F3, $A0 ; *Its eyes show
    .BYTE $F3, $E8, $EF, $F7, 1
    .BYTE $A0, $F3, $E1, $E4, $EE, $E5, $F3, $F3, $AE, 1 ;  sadness.
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C2, $EF, $F4, $F4, $EC, $E5, $A0, $D2, $EF ; "Bottle Rocket"
    .BYTE $E3, $EB, $E5, $F4, $A6, 1
    .BYTE $C0               ; *
    TILEPACK_OFF <$21, $74F8> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4, $EF, 1 ;  seems to
    .BYTE $A0, $EB, $EE, $EF, $F7, $A0, $E8, $EF, $F7, $A0 ;  know how to use it.
    .BYTE $F4, $EF, $A0, $F5, $F3, $E5, $A0, $E9, $F4, $AE
    .BYTE 1
    .BYTE 0
    .BYTE $A6, $C8, $E1, $F4, $A6, 1 ; "Hat"
    .BYTE $C0, $C1, $A0, $F0, $F2, $E5, $F4, $F4, $F9, $A0 ; *A pretty hat
    .BYTE $E8, $E1, $F4, 1
    .BYTE $A0, $E5, $ED, $E2, $F2, $EF, $E9, $E4, $E5, $F2 ;  embroidered with
    .BYTE $E5, $E4, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $F4, $E8, $E5, $A0, $EE, $E1, $ED, $E5, $A0 ;  the name
    TILEPACK_OFF <$21, $74B8> ; command to load packed tiles at the specified offset
    .BYTE $AE, 1            ; .
    .BYTE 0
    .BYTE $A6, $C4, $E5, $EE, $F4, $F5, $F2, $E5, $F3, $A6 ; "Dentures"
    .BYTE 1
    .BYTE $C0, $C2, $F2, $F5, $F3, $E8, $AC, $A0, $E6, $EC ; *Brush, floss and see
    .BYTE $EF, $F3, $F3, $A0, $E1, $EE, $E4, $A0, $F3, $E5
    .BYTE $E5, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $E4, $E5, $EE, $F4 ;  your dentist and
    .BYTE $E9, $F3, $F4, $A0, $E1, $EE, $E4, 1
    .BYTE 3
    .BYTE $C0, $F9, $EF, $F5, $A0, $F7, $EF, $EE, $A7, $F4 ; *you won't have to
    .BYTE $A0, $E8, $E1, $F6, $E5, $A0, $F4, $EF, 1
    .BYTE $A0, $EF, $F7, $EE, $A0, $E1, $A0, $F0, $E1, $E9 ;  own a pair.
    .BYTE $F2, $AE, 1
    .BYTE 0
    .BYTE $A6, $D4, $E9, $E3, $EB, $E5, $F4, $A0, $D3, $F4 ; "Ticket Stub"
    .BYTE $F5, $E2, $A6, 1
    .BYTE $C0, $D0, $F2, $E9, $EE, $F4, $E5, $E4, $A0, $EF ; *Printed on it,
    .BYTE $EE, $A0, $E9, $F4, $AC, 1
    .BYTE 3
    .BYTE $C0, $A6, $D3, $E1, $F6, $E5, $A0, $F4, $E5, $EE ; *"Save ten of these
    .BYTE $A0, $EF, $E6, $A0, $F4, $E8, $E5, $F3, $E5, 1
    .BYTE $A0, $E6, $EF, $F2, $A0, $E1, $A0, $E3, $EF, $ED ;  for a complimentary
    .BYTE $F0, $EC, $E9, $ED, $E5, $EE, $F4, $E1, $F2, $F9
    .BYTE 1
    .BYTE $A0, $F4, $E1, $EE, $EB, $A0, $F2, $E9, $E4, $E5 ;  tank ride".
    .BYTE $A6, $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $CF, $E3, $E1, $F2, $E9, $EE, $E1, $A6, 1 ; "Ocarina"
    .BYTE $C0, $C9, $F4, $A0, $E3, $E1, $EE, $A0, $F0, $EC ; *It can play a catchy
    .BYTE $E1, $F9, $A0, $E1, $A0, $E3, $E1, $F4, $E3, $E8
    .BYTE $F9, 1
    .BYTE $A0, $F4, $F5, $EE, $E5, $AE, 1 ;  tune.
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C6, $F2, $E1, $EE, $EB, $EC, $E9, $EE, $A0 ; "Franklin Badge"
    .BYTE $C2, $E1, $E4, $E7, $E5, $A6, 1
    .BYTE $C0, $CC, $E5, $E7, $E5, $EE, $E4, $A0, $F3, $E1 ; *Legend says that
    .BYTE $F9, $F3, $A0, $F4, $E8, $E1, $F4, 1
    .BYTE $A0, $C2, $E5, $EE, $A0, $C6, $F2, $E1, $EE, $EB ;  Ben Franklin wore
    .BYTE $EC, $E9, $EE, $A0, $F7, $EF, $F2, $E5, 1
    .BYTE 3
    .BYTE $C0, $F4, $E8, $E9, $F3, $A0, $F2, $E5, $E6, $EC ; *this reflective
    .BYTE $E5, $E3, $F4, $E9, $F6, $E5, 1
    .BYTE $A0, $E2, $E1, $E4, $E7, $E5, $A0, $E4, $F5, $F2 ;  badge during his
    .BYTE $E9, $EE, $E7, $A0, $E8, $E9, $F3, 1
    .BYTE 3
    .BYTE $C0, $E5, $F8, $F0, $E5, $F2, $E9, $ED, $E5, $EE ; *experiments with
    .BYTE $F4, $F3, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $A0, $EC, $E9, $E7, $E8, $F4, $EE, $E9, $EE, $E7 ;  lightning.
    .BYTE $AE, 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $CF, $EE, $F9, $F8, $A0, $C8, $EF, $EF, $EB ; "Onyx Hook"
    .BYTE $A6, 1
    .BYTE $C0, $C1, $F3, $A0, $EC, $EF, $EE, $E7, $A0, $E1 ; *As long as you have
    .BYTE $F3, $A0, $F9, $EF, $F5, $A0, $E8, $E1, $F6, $E5
    .BYTE 1
    .BYTE $A0, $E9, $F4, $AC, $A0, $F9, $EF, $F5, $A0, $E3 ;  it, you can warp
    .BYTE $E1, $EE, $A0, $F7, $E1, $F2, $F0, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $F4, $EF, $A0, $CD ;  back to Magicant.
    .BYTE $E1, $E7, $E9, $E3, $E1, $EE, $F4, $AE, 1
    .BYTE 0
    .BYTE $A6, $CC, $E1, $F3, $F4, $A0, $D7, $E5, $E1, $F0 ; "Last Weapon"
    .BYTE $EF, $EE, $A6, 1
    .BYTE $C0, $A2, $A2, $A2, 1 ; *???
    .BYTE 0
    .BYTE $A6, $D2, $F5, $EC, $E5, $F2, $A6, 1 ; "Ruler"
    .BYTE $C0, $C9, $F4, $A0, $E9, $F3, $A0, $B1, $B2, $A0 ; *It is 12 inches long.
    .BYTE $E9, $EE, $E3, $E8, $E5, $F3, $A0, $EC, $EF, $EE
    .BYTE $E7, $AE, 1
    .BYTE 0
    .BYTE $A6               ; "
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C3, $E1, $F3, $E8, $A0, $C3, $E1 ; 's Cash Card"
    .BYTE $F2, $E4, $A6, 1
    .BYTE $C0, $D5, $F3, $E5, $A0, $E9, $F4, $A0, $E6, $EF ; *Use it for all your
    .BYTE $F2, $A0, $E1, $EC, $EC, $A0, $F9, $EF, $F5, $F2
    .BYTE 1
    .BYTE $A0, $E2, $E1, $EE, $EB, $E9, $EE, $E7, $A0, $EE ;  banking needs.
    .BYTE $E5, $E5, $E4, $F3, $AE, 1
    .BYTE 0
    .BYTE $A6, $D2, $E5, $E4, $A0, $D7, $E5, $E5, $E4, $A6 ; "Red Weed"
    .BYTE 1
    .BYTE $C0, $C9, $F4, $A0, $EC, $EF, $EF, $EB, $F3, $A0 ; *It looks like just
    .BYTE $EC, $E9, $EB, $E5, $A0, $EA, $F5, $F3, $F4, 1
    .BYTE $A0, $E7, $F2, $E1, $F3, $F3, $AC, $A0, $E2, $F5 ;  grass, but...
    .BYTE $F4, $AE, $AE, $AE, 1
    .BYTE 0
    .BYTE $A6, $C2, $F5, $EC, $EC, $E8, $EF, $F2, $EE, $A6 ; "Bullhorn"
    .BYTE 1
    .BYTE $C0, $D9, $EF, $F5, $F2, $A0, $E1, $ED, $F0, $EC ; *Your amplified
    .BYTE $E9, $E6, $E9, $E5, $E4, 1
    .BYTE $A0, $F6, $EF, $E9, $E3, $E5, $A0, $ED, $E1, $F9 ;  voice may intimidate
    .BYTE $A0, $E9, $EE, $F4, $E9, $ED, $E9, $E4, $E1, $F4
    .BYTE $E5, 1
    .BYTE $A0, $E1, $EE, $A0, $E5, $EE, $E5, $ED, $F9, $AE ;  an enemy.
    .BYTE 1
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $A6, $C4, $E5, $E2, $F5, $E7, $A6, 1 ; "Debug"
    .BYTE $C0, $AE, $AE, $AE, $AE, $AE, $AE, $AE, 1 ; *.......
    .BYTE 0
    .BYTE 0
    .BYTE $D3, $E8, $EF, $F5, $EC, $E4, $A0, $F9, $EF, $F5 ; Should you fight, or
    .BYTE $A0, $E6, $E9, $E7, $E8, $F4, $AC, $A0, $EF, $F2
    .BYTE 1
    .BYTE $F2, $F5, $EE, $A2, 0 ; run?
    .BYTE $C9, $F4, $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4 ; It seems to have an
    .BYTE $EF, $A0, $E8, $E1, $F6, $E5, $A0, $E1, $EE, 1
    .BYTE $E9, $ED, $F0, $EF, $F2, $F4, $E1, $EE, $F4, $A0 ; important secret.
    .BYTE $F3, $E5, $E3, $F2, $E5, $F4, $AE, 0
    .BYTE $C9, $F4, $A0, $F4, $E8, $E5, $F2, $E5, $A0, $E1 ; It there any way to
    .BYTE $EE, $F9, $A0, $F7, $E1, $F9, $A0, $F4, $EF, 1
    .BYTE $E4, $E5, $E6, $E5, $E1, $F4, $A0, $E8, $E9, $ED ; defeat him?
    .BYTE $A2, 0
    .BYTE $C4, $EF, $EE, $A7, $F4, $A0, $EC, $E5, $F4, $A0 ; Don't let him stop
    .BYTE $E8, $E9, $ED, $A0, $F3, $F4, $EF, $F0, 1
    .BYTE $E1, $EE, $E4, $A0, $F5, $EE, $F0, $E1, $E3, $EB ; and unpack his trunk!
    .BYTE $A0, $E8, $E9, $F3, $A0, $F4, $F2, $F5, $EE, $EB
    .BYTE $A1, 0
    .BYTE $D3, $EF, $ED, $E5, $E2, $EF, $E4, $F9, $A0, $E1 ; Somebody ate his
    .BYTE $F4, $E5, $A0, $E8, $E9, $F3, 1
    .BYTE $F0, $EF, $F2, $F2, $E9, $E4, $E7, $E5, $AC, $A0 ; porridge, and he isn't
    .BYTE $E1, $EE, $E4, $A0, $E8, $E5, $A0, $E9, $F3, $EE
    .BYTE $A7, $F4, 1
    .BYTE $F4, $EF, $EF, $A0, $E8, $E1, $F0, $F0, $F9, $A0 ; too happy about it!
    .BYTE $E1, $E2, $EF, $F5, $F4, $A0, $E9, $F4, $A1, 0
    .BYTE $D3, $F5, $F2, $F0, $F2, $E9, $F3, $E5, $E4, $A2 ; Surprised? It really
    .BYTE $A0, $C9, $F4, $A0, $F2, $E5, $E1, $EC, $EC, $F9
    .BYTE 1
    .BYTE $E4, $EF, $E5, $F3, $A0, $E5, $F8, $E9, $F3, $F4 ; does exist!
    .BYTE $A1, 0
    .BYTE $C2, $E5, $A0, $E3, $E1, $F2, $E5, $E6, $F5, $EC ; Be careful of its
    .BYTE $A0, $EF, $E6, $A0, $E9, $F4, $F3, 1
    .BYTE $E5, $F8, $E8, $E1, $F5, $F3, $F4, $A0, $E9, $E6 ; exhaust if you are
    .BYTE $A0, $F9, $EF, $F5, $A0, $E1, $F2, $E5, 1
    .BYTE $E1, $F3, $F4, $E8, $ED, $E1, $F4, $E9, $E3, $AE ; asthmatic.
    .BYTE 0
    .BYTE $C8, $F9, $F0, $EE, $EF, $F4, $E9, $F3, $ED, $A0 ; Hypnotism does not
    .BYTE $E4, $EF, $E5, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $F7, $EF, $F2, $EB, $A0, $EF, $EE, $A0, $F4, $E8 ; work on this robot.
    .BYTE $E9, $F3, $A0, $F2, $EF, $E2, $EF, $F4, $AE, 0
    .BYTE $D3, $F0, $E5, $E3, $E9, $E1, $EC, $A0, $E1, $F2 ; Special armor protects
    .BYTE $ED, $EF, $F2, $A0, $F0, $F2, $EF, $F4, $E5, $E3
    .BYTE $F4, $F3, 1
    .BYTE $E6, $F2, $EF, $ED, $A0, $D0, $D3, $C9, $A0, $E1 ; from PSI attack.
    .BYTE $F4, $F4, $E1, $E3, $EB, $AE, 0
    .BYTE $C9, $F4, $A0, $E8, $E1, $F3, $AC, $A0, $F4, $E8 ; It has, the awful
    .BYTE $E5, $A0, $E1, $F7, $E6, $F5, $EC, 1
    .BYTE $D3, $F4, $EF, $EE, $E5, $A0, $EF, $E6, $A0, $CF ; Stone of Origin.
    .BYTE $F2, $E9, $E7, $E9, $EE, $AE, 0
    .BYTE $D3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7, $A0 ; Something like this
    .BYTE $EC, $E9, $EB, $E5, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $F3, $E8, $EF, $F5, $EC, $E4, $A0, $EE, $EF, $F4 ; should not exist on
    .BYTE $A0, $E5, $F8, $E9, $F3, $F4, $A0, $EF, $EE, 1
    .BYTE $F4, $E8, $E5, $A0, $E5, $E1, $F2, $F4, $E8, $AE ; the earth...
    .BYTE $AE, $AE, 0
    .BYTE $C4, $EF, $EE, $A7, $F4, $A0, $EC, $E5, $F4, $A0 ; Don't let this primate
    .BYTE $F4, $E8, $E9, $F3, $A0, $F0, $F2, $E9, $ED, $E1
    .BYTE $F4, $E5, 1
    .BYTE $F0, $F5, $EE, $EB, $A0, $F0, $E9, $E3, $EB, $A0 ; punk pick on you!
    .BYTE $EF, $EE, $A0, $F9, $EF, $F5, $A1, 0
    .BYTE $C1, $A0, $E6, $E1, $E3, $E5, $A0, $EF, $EE, $EC ; A face only a mother
    .BYTE $F9, $A0, $E1, $A0, $ED, $EF, $F4, $E8, $E5, $F2
    .BYTE 1
    .BYTE $E3, $EF, $F5, $EC, $E4, $A0, $EC, $EF, $F6, $E5 ; could love.
    .BYTE $AE, 0
    .BYTE $D7, $E1, $F4, $E3, $E8, $A0, $F4, $E8, $EF, $F3 ; Watch those eyes!
    .BYTE $E5, $A0, $E5, $F9, $E5, $F3, $A1, 0
    .BYTE $CE, $EF, $A0, $EF, $EE, $E5, $A0, $E9, $F3, $A0 ; No one is in the
    .BYTE $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $E4, $F2, $E9, $F6, $E5, $F2, $A7, $F3, $A0, $F3 ; driver's seat.
    .BYTE $E5, $E1, $F4, $AE, 0
    .BYTE $C9, $F4, $A0, $E8, $E1, $F3, $A0, $F3, $F4, $F2 ; It has strong
    .BYTE $EF, $EE, $E7, 1
    .BYTE $E6, $F2, $E9, $E5, $EE, $E4, $F3, $AE, 0 ; friends.
    .BYTE $C9, $F4, $F3, $A0, $F3, $E8, $E5, $EC, $EC, $A0 ; Its shell is
    .BYTE $E9, $F3, 1
    .BYTE $F5, $EE, $E2, $E5, $EC, $E9, $E5, $F6, $E1, $E2 ; unbelievably hard.
    .BYTE $EC, $F9, $A0, $E8, $E1, $F2, $E4, $AE, 0
    .BYTE $C9, $F4, $A0, $F5, $F3, $E5, $F3, $A0, $E8, $F9 ; It uses hypnotism.
    .BYTE $F0, $EE, $EF, $F4, $E9, $F3, $ED, $AE, 0
    .BYTE 0
    .BYTE $C9, $F4, $F3, $A0, $F1, $F5, $E9, $E3, $EB, $EE ; Its quickness is the
    .BYTE $E5, $F3, $F3, $A0, $E9, $F3, $A0, $F4, $E8, $E5
    .BYTE 1
    .BYTE $F3, $EF, $F5, $F2, $E3, $E5, $A0, $EF, $E6, $A0 ; source of its pride.
    .BYTE $E9, $F4, $F3, $A0, $F0, $F2, $E9, $E4, $E5, $AE
    .BYTE 0
    .BYTE $D7, $E1, $F4, $E3, $E8, $A0, $EF, $F5, $F4, $A0 ; Watch out for those
    .BYTE $E6, $EF, $F2, $A0, $F4, $E8, $EF, $F3, $E5, 1
    .BYTE $F0, $E5, $E1, $F2, $EC, $F9, $A0, $F7, $E8, $E9 ; pearly whites.
    .BYTE $F4, $E5, $F3, $AE, 0
    .BYTE $D4, $E8, $E1, $F4, $A0, $F4, $E8, $E9, $E5, $E6 ; That thief!!
    .BYTE $A1, $A1, 0
    .BYTE $C4, $EF, $EE, $A7, $F4, $A0, $E1, $E3, $E3, $E5 ; Don't accept his
    .BYTE $F0, $F4, $A0, $E8, $E9, $F3, 1
    .BYTE $E9, $EE, $F6, $E9, $F4, $E1, $F4, $E9, $EF, $EE ; invitation to dinner.
    .BYTE $A0, $F4, $EF, $A0, $E4, $E9, $EE, $EE, $E5, $F2
    .BYTE $AE, 0
    .BYTE $C1, $A0, $F7, $E1, $EC, $EB, $E9, $EE, $E7, $A0 ; A walking fuel
    .BYTE $E6, $F5, $E5, $EC, 1
    .BYTE $F3, $F5, $F0, $F0, $EC, $F9, $AE, 0 ; supply.
    .BYTE $C9, $F4, $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4 ; It seems to be
    .BYTE $EF, $A0, $E2, $E5, 1
    .BYTE $E7, $F5, $E1, $F2, $E4, $E9, $EE, $E7, $A0, $F3 ; guarding something.
    .BYTE $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7, $AE, 0
    .BYTE $C8, $E5, $A0, $E3, $E1, $EE, $A0, $E2, $E5, $A0 ; He can be found
    .BYTE $E6, $EF, $F5, $EE, $E4, 1
    .BYTE $EF, $EE, $A0, $F4, $E8, $E5, $A0, $C6, $C2, $C9 ; on the FBI's
    .BYTE $A7, $F3, 1
    .BYTE $ED, $EF, $F3, $F4, $A0, $F7, $E1, $EE, $F4, $E5 ; most wanted list.
    .BYTE $E4, $A0, $EC, $E9, $F3, $F4, $AE, 0
    .BYTE $CD, $E1, $F9, $E2, $E5, $A0, $E8, $E5, $A0, $E9 ; Maybe he is not
    .BYTE $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $F2, $E5, $E1, $EC, $EC, $F9, $A0, $F2, $EF, $F4 ; really rotten to
    .BYTE $F4, $E5, $EE, $A0, $F4, $EF, 1
    .BYTE $F4, $E8, $E5, $A0, $E3, $EF, $F2, $E5, $AE, 0 ; the core.
    .BYTE $C1, $A0, $ED, $E1, $EC, $EE, $EF, $F5, $F2, $E9 ; A malnourished robot?
    .BYTE $F3, $E8, $E5, $E4, $A0, $F2, $EF, $E2, $EF, $F4
    .BYTE $A2, 0
    .BYTE $C4, $EF, $A0, $EE, $EF, $F4, $A0, $E2, $E5, $A0 ; Do not be tricked by
    .BYTE $F4, $F2, $E9, $E3, $EB, $E5, $E4, $A0, $E2, $F9
    .BYTE 1
    .BYTE $E8, $E5, $F2, $A0, $F3, $ED, $E9, $EC, $E5, $AE ; her smile.
    .BYTE 0
    .BYTE $C1, $A0, $ED, $E1, $EE, $A0, $E6, $F2, $EF, $ED ; A man from the stars.
    .BYTE $A0, $F4, $E8, $E5, $A0, $F3, $F4, $E1, $F2, $F3
    .BYTE $AE, 0
    .BYTE $D4, $E8, $E9, $F3, $A0, $F4, $E8, $E9, $EE, $E7 ; This thing could not
    .BYTE $A0, $E3, $EF, $F5, $EC, $E4, $A0, $EE, $EF, $F4
    .BYTE 1
    .BYTE $EF, $E3, $E3, $F5, $F2, $A0, $EE, $E1, $F4, $F5 ; occur naturally
    .BYTE $F2, $E1, $EC, $EC, $F9, 0
    .BYTE $D7, $E8, $E1, $F4, $A0, $E5, $F6, $E9, $EC, $A0 ; What evil lab has
    .BYTE $EC, $E1, $E2, $A0, $E8, $E1, $F3, 1
    .BYTE $ED, $E1, $EE, $F5, $E6, $E1, $E3, $F4, $F5, $F2 ; manufactured this
    .BYTE $E5, $E4, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $ED, $EF, $E2, $E9, $EC, $E5, $A0, $E2, $F2, $E1 ; mobile brain.
    .BYTE $E9, $EE, $AE, 0
    .BYTE $C9, $F4, $A0, $F5, $F3, $E5, $F3, $A0, $F6, $E1 ; It uses various PSI
    .BYTE $F2, $E9, $EF, $F5, $F3, $A0, $D0, $D3, $C9, 1
    .BYTE $E1, $F4, $F4, $E1, $E3, $EB, $AE, 0 ; attack.
    .BYTE $C9, $F4, $A0, $F7, $EF, $F5, $EC, $E4, $A0, $E2 ; It would be nice to
    .BYTE $E5, $A0, $EE, $E9, $E3, $E5, $A0, $F4, $EF, 1
    .BYTE $E8, $E1, $F6, $E5, $A0, $E1, $F2, $ED, $EF, $F2 ; have armor of your
    .BYTE $A0, $EF, $E6, $A0, $F9, $EF, $F5, $F2, 1
    .BYTE $EF, $F7, $EE, $AE, 0 ; own.
    .BYTE $C1, $EE, $A0, $E1, $EE, $E9, $ED, $E1, $F4, $E5 ; An animated tree with
    .BYTE $E4, $A0, $F4, $F2, $E5, $E5, $A0, $F7, $E9, $F4
    .BYTE $E8, 1
    .BYTE $F3, $F5, $F3, $F0, $E9, $E3, $E9, $EF, $F5, $F3 ; suspicious actions.
    .BYTE $A0, $E1, $E3, $F4, $E9, $EF, $EE, $F3, $AE, 0
    .BYTE $C8, $E5, $A0, $E8, $E1, $F3, $A0, $E1, $A0, $F3 ; He has a short temper,
    .BYTE $E8, $EF, $F2, $F4, $A0, $F4, $E5, $ED, $F0, $E5
    .BYTE $F2, $AC, 1
    .BYTE $F3, $EF, $A0, $E2, $E5, $A0, $E3, $E1, $F2, $E5 ; so be careful.
    .BYTE $E6, $F5, $EC, $AE, 0
    .BYTE $C8, $E5, $A0, $EC, $EF, $EF, $EB, $F3, $A0, $EC ; He looks like he could
    .BYTE $E9, $EB, $E5, $A0, $E8, $E5, $A0, $E3, $EF, $F5
    .BYTE $EC, $E4, 1
    .BYTE $E7, $F2, $EF, $F7, $A0, $E6, $EC, $EF, $F7, $E5 ; grow flowers in his
    .BYTE $F2, $F3, $A0, $E9, $EE, $A0, $E8, $E9, $F3, 1
    .BYTE $E8, $E1, $E9, $F2, $AE, 0 ; hair.
    .BYTE $C8, $E5, $F2, $A0, $F2, $E5, $E6, $F2, $E9, $E7 ; Her refrigerator
    .BYTE $E5, $F2, $E1, $F4, $EF, $F2, 1
    .BYTE $F3, $E8, $E1, $F0, $E5, $E4, $A0, $E2, $EF, $E4 ; shaped body holds a
    .BYTE $F9, $A0, $E8, $EF, $EC, $E4, $F3, $A0, $E1, 1
    .BYTE $E8, $E5, $E1, $F2, $F4, $A0, $EF, $E6, $A0, $E9 ; heart of ice.
    .BYTE $E3, $E5, $AE, 0
    .BYTE $C1, $A0, $F2, $E5, $E1, $EC, $A0, $E2, $E1, $E4 ; A real bad apple,
    .BYTE $A0, $E1, $F0, $F0, $EC, $E5, $AC, 1
    .BYTE $F3, $F4, $E1, $F9, $A0, $EF, $F5, $F4, $A0, $EF ; stay out of his way.
    .BYTE $E6, $A0, $E8, $E9, $F3, $A0, $F7, $E1, $F9, $AE
    .BYTE 0
    .BYTE $C8, $E9, $F3, $A0, $F4, $F7, $E9, $F3, $F4, $E5 ; His twisted face
    .BYTE $E4, $A0, $E6, $E1, $E3, $E5, 1
    .BYTE $E3, $EF, $F6, $E5, $F2, $F3, $A0, $E8, $E9, $F3 ; covers his twisted
    .BYTE $A0, $F4, $F7, $E9, $F3, $F4, $E5, $E4, 1
    .BYTE $ED, $E9, $EE, $E4, $AE, 0 ; mind.
    .BYTE 0
    .BYTE $C3, $E1, $F2, $E5, $E6, $F5, $EC, $AC, $A0, $E8 ; Careful, his 'Smash
    .BYTE $E9, $F3, $A0, $A7, $D3, $ED, $E1, $F3, $E8, 1
    .BYTE $C8, $E9, $F4, $A7, $E9, $F3, $A0, $F1, $F5, $E9 ; Hit'is quite
    .BYTE $F4, $E5, 1
    .BYTE $E5, $E6, $E6, $E5, $E3, $F4, $E9, $F6, $E5, $AE ; effective.
    .BYTE 0
    .BYTE $D7, $E1, $F4, $E3, $E8, $A0, $EF, $F5, $F4, $A0 ; Watch out for further
    .BYTE $E6, $EF, $F2, $A0, $E6, $F5, $F2, $F4, $E8, $E5
    .BYTE $F2, 1
    .BYTE $F3, $EE, $E5, $E1, $EB, $A0, $E1, $F4, $F4, $E1 ; sneak attacks.
    .BYTE $E3, $EB, $F3, $AE, 0
    .BYTE $D7, $E1, $F4, $E3, $E8, $A0, $F9, $EF, $F5, $F2 ; Watch your wallet and
    .BYTE $A0, $F7, $E1, $EC, $EC, $E5, $F4, $A0, $E1, $EE
    .BYTE $E4, 1
    .BYTE $E3, $EF, $F5, $EE, $F4, $A0, $F9, $EF, $F5, $F2 ; count your change,
    .BYTE $A0, $E3, $E8, $E1, $EE, $E7, $E5, $AC, 1
    .BYTE $E8, $E5, $A7, $F3, $A0, $E1, $A0, $F4, $E8, $E9 ; he's a thief.
    .BYTE $E5, $E6, $AE, 0
    .BYTE $C9, $F4, $A0, $ED, $E9, $E7, $E8, $F4, $A0, $EE ; It might not poison,
    .BYTE $EF, $F4, $A0, $F0, $EF, $E9, $F3, $EF, $EE, $AC
    .BYTE 1
    .BYTE $ED, $E1, $F9, $E2, $E5, $AE, $AE, $AE, 0 ; maybe...
    .BYTE $C8, $E5, $A0, $F7, $E8, $EF, $A0, $EC, $E1, $F5 ; He who laughs last
    .BYTE $E7, $E8, $F3, $A0, $EC, $E1, $F3, $F4, 1
    .BYTE $EC, $E1, $F5, $E7, $E8, $F3, $A0, $E2, $E5, $F3 ; laughs best.
    .BYTE $F4, $AE, 0
    .BYTE $C9, $F4, $A0, $E9, $F3, $A0, $F1, $F5, $E9, $F4 ; It is quite different
    .BYTE $E5, $A0, $E4, $E9, $E6, $E6, $E5, $F2, $E5, $EE
    .BYTE $F4, 1
    .BYTE $F4, $E8, $E1, $EE, $A0, $E1, $A0, $F0, $E5, $F4 ; than a pet cat.
    .BYTE $A0, $E3, $E1, $F4, $AE, 0
    .BYTE $C5, $F8, $F4, $E5, $F2, $ED, $E9, $EE, $E1, $F4 ; Exterminate with
    .BYTE $E5, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $C9, $EE, $F3, $E5, $E3, $F4, $E9, $E3, $E9, $E4 ; Insecticide.
    .BYTE $E5, $AE, 0
    .BYTE $C1, $C8, $C8, $AD, $C3, $E8, $EF, $EF, $EF, $EF ; AHH-Choooo!!
    .BYTE $A1, $A1, 0
    .BYTE $C9, $EE, $F3, $E5, $E3, $F4, $E9, $E3, $E9, $E4 ; Insecticide is
    .BYTE $E5, $A0, $E9, $F3, 1
    .BYTE $E5, $E6, $E6, $E5, $E3, $F4, $E9, $F6, $E5, $AE ; effective.
    .BYTE 0
    .BYTE $D9, $EF, $F5, $A7, $EC, $EC, $A0, $F7, $E1, $EE ; You'll want to try
    .BYTE $F4, $A0, $F4, $EF, $A0, $F4, $F2, $F9, 1
    .BYTE $C9, $EE, $F3, $E5, $E3, $F4, $E9, $E3, $E9, $E4 ; Insecticide.
    .BYTE $E5, $AE, 0
    .BYTE $C9, $F4, $A7, $F3, $A0, $F0, $EF, $E9, $F3, $EF ; It's poisonous, but
    .BYTE $EE, $EF, $F5, $F3, $AC, $A0, $E2, $F5, $F4, 1
    .BYTE $C9, $EE, $F3, $E5, $E3, $F4, $E9, $E3, $E9, $E4 ; Insecticide works.
    .BYTE $E5, $A0, $F7, $EF, $F2, $EB, $F3, $AE, 0
    .BYTE $C4, $EF, $EE, $A7, $F4, $A0, $EC, $E5, $F4, $A0 ; Don't let yourself
    .BYTE $F9, $EF, $F5, $F2, $F3, $E5, $EC, $E6, 1
    .BYTE $E7, $E5, $F4, $A0, $F4, $E9, $E5, $E4, $A0, $F5 ; get tied up fighting
    .BYTE $F0, $A0, $E6, $E9, $E7, $E8, $F4, $E9, $EE, $E7
    .BYTE 1
    .BYTE $F4, $E8, $E9, $F3, $A0, $E7, $F5, $F9, $AE, 0 ; this guy.
    .BYTE $C9, $F4, $A0, $EC, $EF, $EF, $EB, $F3, $A0, $EC ; It looks like it
    .BYTE $E9, $EB, $E5, $A0, $E9, $F4, 1
    .BYTE $EA, $F5, $ED, $F0, $E5, $E4, $A0, $EF, $F5, $F4 ; jumped out of a comic
    .BYTE $A0, $EF, $E6, $A0, $E1, $A0, $E3, $EF, $ED, $E9
    .BYTE $E3, 1
    .BYTE $E2, $EF, $EF, $EB, $AE, 0 ; book.
    .BYTE $D4, $E8, $E9, $F3, $A0, $E5, $EE, $E5, $ED, $F9 ; This enemy's face is
    .BYTE $A7, $F3, $A0, $E6, $E1, $E3, $E5, $A0, $E9, $F3
    .BYTE 1
    .BYTE $F4, $E8, $E5, $A0, $E5, $E1, $F3, $E9, $E5, $F3 ; the easiest to draw.
    .BYTE $F4, $A0, $F4, $EF, $A0, $E4, $F2, $E1, $F7, $AE
    .BYTE 0
    .BYTE $C9, $E6, $A0, $E8, $E5, $A0, $F7, $E1, $F3, $A0 ; If he was a mask,
    .BYTE $E1, $A0, $ED, $E1, $F3, $EB, $AC, 1
    .BYTE $F3, $EF, $ED, $E5, $EF, $EE, $E5, $A0, $ED, $E9 ; someone might mistake
    .BYTE $E7, $E8, $F4, $A0, $ED, $E9, $F3, $F4, $E1, $EB
    .BYTE $E5, 1
    .BYTE $F9, $EF, $F5, $F2, $A0, $E9, $E4, $E5, $EE, $F4 ; your identity.
    .BYTE $E9, $F4, $F9, $AE, 0
    .BYTE $CA, $F5, $F3, $F4, $A0, $E1, $EE, $A0, $EF, $F2 ; Just an ordinary
    .BYTE $E4, $E9, $EE, $E1, $F2, $F9, 1
    .BYTE $E7, $E8, $EF, $F3, $F4, $AE, 0 ; ghost.
    .BYTE $CF, $EE, $EC, $F9, $A0, $E1, $F3, $A0, $E2, $E9 ; Only as big as a
    .BYTE $E7, $A0, $E1, $F3, $A0, $E1, 1
    .BYTE $E4, $E9, $EE, $EE, $E5, $F2, $A0, $F0, $EC, $E1 ; dinner plate.
    .BYTE $F4, $E5, $AE, 0
    .BYTE $CC, $E9, $E6, $E5, $A0, $E9, $F4, $F3, $E5, $EC ; Life itself is a
    .BYTE $E6, $A0, $E9, $F3, $A0, $E1, 1
    .BYTE $F0, $F5, $FA, $FA, $EC, $E5, $A0, $E6, $EF, $F2 ; puzzle for Mr.Bat.
    .BYTE $A0, $CD, $F2, $AE, $C2, $E1, $F4, $AE, 0
    .BYTE $C8, $E5, $A0, $E9, $F3, $A0, $F3, $ED, $E1, $EC ; He is small, but it is
    .BYTE $EC, $AC, $A0, $E2, $F5, $F4, $A0, $E9, $F4, $A0
    .BYTE $E9, $F3, 1
    .BYTE $EF, $E2, $F6, $E9, $EF, $F5, $F3, $A0, $F4, $E8 ; obvious that he is a
    .BYTE $E1, $F4, $A0, $E8, $E5, $A0, $E9, $F3, $A0, $E1
    .BYTE 1
    .BYTE $F3, $F0, $E1, $E3, $E5, $ED, $E1, $EE, $AE, 0 ; spaceman.
    .BYTE $C8, $EF, $EC, $E4, $A0, $F9, $EF, $F5, $F2, $A0 ; Hold your nose!
    .BYTE $EE, $EF, $F3, $E5, $A1, 0
    .BYTE $C1, $EE, $A0, $E5, $F6, $E9, $EC, $AC, $A0, $E3 ; An evil, caped Zombie.
    .BYTE $E1, $F0, $E5, $E4, $A0, $DA, $EF, $ED, $E2, $E9
    .BYTE $E5, $AE, 1
    .BYTE $C2, $E5, $F7, $E1, $F2, $E5, $AC, $A0, $E8, $E9 ; Beware, his
    .BYTE $F3, 1
    .BYTE $A7, $CC, $E1, $F3, $F4, $A0, $F3, $F4, $F2, $E9 ; 'Last strike' could
    .BYTE $EB, $E5, $A7, $A0, $E3, $EF, $F5, $EC, $E4, 1
    .BYTE $E2, $E5, $A0, $E4, $E5, $F6, $E1, $F3, $F4, $E1 ; be devastating.
    .BYTE $F4, $E9, $EE, $E7, $AE, 0
    .BYTE $C1, $A0, $E2, $E9, $E7, $A0, $F2, $E1, $F4, $AC ; A big rat, with a tail
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $E1, $A0, $F4, $E1
    .BYTE $E9, $EC, 1
    .BYTE $F4, $E8, $E9, $F3, $A0, $EC, $EF, $EE, $E7, $AE ; this long.
    .BYTE 0
    .BYTE $D3, $E8, $E1, $F0, $E5, $E4, $A0, $EC, $E9, $EB ; Shaped like an egg,
    .BYTE $E5, $A0, $E1, $EE, $A0, $E5, $E7, $E7, $AC, 1
    .BYTE $E2, $F5, $F4, $A0, $E1, $A0, $EC, $E9, $F4, $F4 ; but a little tougher.
    .BYTE $EC, $E5, $A0, $F4, $EF, $F5, $E7, $E8, $E5, $F2
    .BYTE $AE, 0
    .BYTE 0
    .BYTE $C9, $F4, $A0, $F3, $F4, $E1, $F2, $E5, $F3, $A0 ; It stares back at
    .BYTE $E2, $E1, $E3, $EB, $A0, $E1, $F4, 1
    .BYTE $F9, $EF, $F5, $AE, 0 ; you.
    .BYTE $C9, $F4, $A0, $E8, $EF, $F6, $E5, $F2, $F3, $A0 ; It hovers in the
    .BYTE $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $E1, $E9, $F2, $A1, 0 ; air!
    .BYTE 0
    .BYTE 0
    .BYTE $C9, $F4, $A7, $F3, $A0, $F3, $F4, $F2, $EF, $EE ; It's strong poison
    .BYTE $E7, $A0, $F0, $EF, $E9, $F3, $EF, $EE, 1
    .BYTE $F7, $E1, $F3, $A0, $E4, $E5, $F6, $E5, $EC, $EF ; was developed in a
    .BYTE $F0, $E5, $E4, $A0, $E9, $EE, $A0, $E1, 1
    .BYTE $EC, $E1, $E2, $EF, $F2, $E1, $F4, $EF, $F2, $F9 ; laboratory.
    .BYTE $AE, 0
    .BYTE $C2, $E5, $F7, $E1, $F2, $E5, $A0, $EF, $E6, $A0 ; Beware of its poison
    .BYTE $E9, $F4, $F3, $A0, $F0, $EF, $E9, $F3, $EF, $EE
    .BYTE 1
    .BYTE $E1, $EE, $E4, $A0, $D3, $F4, $EF, $EE, $E5, $A0 ; and Stone of Origin.
    .BYTE $EF, $E6, $A0, $CF, $F2, $E9, $E7, $E9, $EE, $AE
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $C7, $EF, $EF, $E4, $A0, $E5, $F8, $F0, $E5, $F2 ; Good experience, if it
    .BYTE $E9, $E5, $EE, $E3, $E5, $AC, $A0, $E9, $E6, $A0
    .BYTE $E9, $F4, 1
    .BYTE $E4, $EF, $E5, $F3, $EE, $A7, $F4, $A0, $F2, $F5 ; doesn't run.
    .BYTE $EE, $AE, 0
    .BYTE $C9, $F4, $A0, $F3, $E5, $E5, $ED, $F3, $A0, $F4 ; It seems that it does
    .BYTE $E8, $E1, $F4, $A0, $E9, $F4, $A0, $E4, $EF, $E5
    .BYTE $F3, 1
    .BYTE $EE, $EF, $F4, $A0, $E8, $E1, $F6, $E5, $A0, $E1 ; not have any friends.
    .BYTE $EE, $F9, $A0, $E6, $F2, $E9, $E5, $EE, $E4, $F3
    .BYTE $AE, 0
    .BYTE $C8, $E9, $F3, $A0, $E3, $E8, $E1, $E9, $F2, $A0 ; His chair was broken,
    .BYTE $F7, $E1, $F3, $A0, $E2, $F2, $EF, $EB, $E5, $EE
    .BYTE $AC, 1
    .BYTE $E1, $EE, $E4, $A0, $E8, $E5, $A0, $E9, $F3, $EE ; and he isn't very
    .BYTE $A7, $F4, $A0, $F6, $E5, $F2, $F9, 1
    .BYTE $E8, $E1, $F0, $F0, $F9, $A1, 0 ; happy!
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE 0
    .BYTE $D7, $E8, $E5, $F2, $E5, $A7, $F3, $A0, $F4, $E8 ; Where's that
    .BYTE $E1, $F4, 1
    .BYTE $E1, $EE, $F4, $E9, $E4, $EF, $F4, $E5, $AE, 0 ; antidote.
    .BYTE $D0, $EF, $E9, $F3, $EF, $EE, $AC, $A0, $F0, $EF ; Poison, poison,
    .BYTE $E9, $F3, $EF, $EE, $AC, 1
    .BYTE $F0, $EF, $E9, $F3, $EF, $EE, $AE, 0 ; poison.
    .BYTE $C9, $E6, $A0, $E8, $E5, $A0, $F3, $ED, $E9, $EC ; If he smiles, don't
    .BYTE $E5, $F3, $AC, $A0, $E4, $EF, $EE, $A7, $F4, 1
    .BYTE $F3, $ED, $E9, $EC, $E5, $A0, $E2, $E1, $E3, $EB ; smile back.
    .BYTE $AE, 0
    .BYTE 0
    .BYTE $C9, $F4, $F3, $A0, $E6, $E1, $F4, $E8, $E5, $F2 ; Its father won't even
    .BYTE $A0, $F7, $EF, $EE, $A7, $F4, $A0, $E5, $F6, $E5
    .BYTE $EE, 1
    .BYTE $EC, $EF, $EF, $EB, $A0, $E1, $F4, $A0, $E8, $E9 ; look at his face.
    .BYTE $F3, $A0, $E6, $E1, $E3, $E5, $AE, 0
    .BYTE 0
    .BYTE $C2, $E5, $F7, $E1, $F2, $E5, $A0, $EF, $E6, $A0 ; Beware of its Stone
    .BYTE $E9, $F4, $F3, $A0, $D3, $F4, $EF, $EE, $E5, 1
    .BYTE $EF, $E6, $A0, $CF, $F2, $E9, $E7, $E9, $EE, $AE ; of Origin.
    .BYTE 0
    .BYTE $C9, $A0, $F7, $EF, $EE, $E4, $E5, $F2, $A0, $E9 ; I wonder if it carries
    .BYTE $E6, $A0, $E9, $F4, $A0, $E3, $E1, $F2, $F2, $E9
    .BYTE $E5, $F3, 1
    .BYTE $E6, $EC, $E5, $E1, $F3, $A2, 0 ; fleas?
    .BYTE $C8, $F9, $F0, $EE, $EF, $F4, $E9, $F3, $ED, $A0 ; Hypnotism does not
    .BYTE $E4, $EF, $E5, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $F7, $EF, $F2, $EB, $A0, $EF, $EE, $A0, $F4, $E8 ; work on the car.
    .BYTE $E5, $A0, $E3, $E1, $F2, $AE, 0
    .BYTE $C8, $F9, $F0, $EE, $EF, $F4, $E9, $F3, $ED, $A0 ; Hypnotism does not
    .BYTE $E4, $EF, $E5, $F3, $A0, $EE, $EF, $F4, 1
    .BYTE $F7, $EF, $F2, $EB, $A0, $EF, $EE, $A0, $F4, $E8 ; work on this vehicle.
    .BYTE $E9, $F3, $A0, $F6, $E5, $E8, $E9, $E3, $EC, $E5
    .BYTE $AE, 0
    .BYTE $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $E7, $EF ; What is going to
    .BYTE $E9, $EE, $E7, $A0, $F4, $EF, 1
    .BYTE $E8, $E1, $F0, $F0, $E5, $EE, $A0, $EE, $E5, $F8 ; happen next, speeding,
    .BYTE $F4, $AC, $A0, $F3, $F0, $E5, $E5, $E4, $E9, $EE
    .BYTE $E7, $AC, 1
    .BYTE $F2, $E5, $E3, $EB, $EC, $E5, $F3, $F3, $A0, $E4 ; reckless driving, or..
    .BYTE $F2, $E9, $F6, $E9, $EE, $E7, $AC, $A0, $EF, $F2
    .BYTE $AE, $AE, 0
    .BYTE $C4, $EF, $EE, $A7, $F4, $A0, $E1, $EC, $E1, $F2 ; Don't alarm this
    .BYTE $ED, $A0, $F4, $E8, $E9, $F3, 1
    .BYTE $E7, $E8, $EF, $F3, $F4, $AC, $A0, $E8, $E5, $A0 ; ghost, he has
    .BYTE $E8, $E1, $F3, 1
    .BYTE $E6, $F2, $E9, $E5, $EE, $E4, $F3, $A1, 0 ; friends!
    .BYTE 0
    .BYTE $D4, $E8, $E5, $A0, $EF, $F0, $F4, $EF, $ED, $E5 ; The optometrists
    .BYTE $F4, $F2, $E9, $F3, $F4, $F3, 1
    .BYTE $E6, $E1, $F6, $EF, $F2, $E9, $F4, $E5, $AE, 0 ; favorite.
    .BYTE $D7, $E1, $F4, $E3, $E8, $A0, $F9, $EF, $F5, $F2 ; Watch your step,
    .BYTE $A0, $F3, $F4, $E5, $F0, $AC, 1
    .BYTE $C4, $E1, $E4, $F3, $E5, $F9, $E5, $F3, $A0, $E1 ; Dadseyes are every
    .BYTE $F2, $E5, $A0, $E5, $F6, $E5, $F2, $F9, 1
    .BYTE $F7, $E8, $E5, $F2, $E5, $AE, 0 ; where.
    .BYTE $CD, $EF, $ED, $F3, $E5, $F9, $E5, $F3, $A0, $F7 ; Momseyes will spot
    .BYTE $E9, $EC, $EC, $A0, $F3, $F0, $EF, $F4, 1
    .BYTE $F9, $EF, $F5, $A0, $E6, $EF, $F2, $A0, $F3, $F5 ; you for sure!
    .BYTE $F2, $E5, $A1, 0
    .BYTE 0
    .BYTE 0
    .BYTE $C9, $F4, $A0, $E8, $E1, $F3, $A0, $E6, $F2, $E9 ; It has friends!
    .BYTE $E5, $EE, $E4, $F3, $A1, 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; CHARS BANKS 0xC8 - 0xCD
    .BYTE 0
    .BYTE $C8, $E5, $A0, $EF, $EE, $EC, $F9, $A0, $E8, $E1 ; He only has PK Beam.
    .BYTE $F3, $A0, $D0, $CB, $A0, $C2, $E5, $E1, $ED, $AE
    .BYTE 0
    .BYTE $C1, $F3, $A0, $F3, $F4, $F2, $EF, $EE, $E7, $A0 ; As strong as on ox.
    .BYTE $E1, $F3, $A0, $EF, $EE, $A0, $EF, $F8, $AE, 0
    .BYTE $D2, $E1, $E7, $E7, $E5, $E4, $A0, $E1, $F2, $EF ; Ragged around the
    .BYTE $F5, $EE, $E4, $A0, $F4, $E8, $E5, 1
    .BYTE $E5, $E4, $E7, $E5, $F3, $AC, $A0, $E2, $F5, $F4 ; edges, but do not
    .BYTE $A0, $E4, $EF, $A0, $EE, $EF, $F4, 1
    .BYTE $F5, $EE, $E4, $E5, $F2, $E5, $F3, $F4, $E9, $ED ; underestimate it.
    .BYTE $E1, $F4, $E5, $A0, $E9, $F4, $AE, 0
    .BYTE $D4, $E8, $E5, $A0, $EC, $E1, $F4, $E5, $F3, $F4 ; The latest in the
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, 1
    .BYTE $F0, $F2, $EF, $E4, $F5, $E3, $F4, $A0, $EC, $E9 ; product line.
    .BYTE $EE, $E5, $AE, 0
    .BYTE $D4, $E8, $E9, $F3, $A0, $E9, $F3, $A0, $E1, $F3 ; This is as big as a
    .BYTE $A0, $E2, $E9, $E7, $A0, $E1, $F3, $A0, $E1, 1
    .BYTE $ED, $E1, $EE, $E8, $EF, $EC, $E5, $A0, $E3, $EF ; manhole cover.
    .BYTE $F6, $E5, $F2, $AE, 0
    .BYTE $C4, $EF, $A0, $EE, $EF, $F4, $A0, $E2, $E5, $A0 ; Do not be tricked by
    .BYTE $F4, $F2, $E9, $E3, $EB, $E5, $E4, $A0, $E2, $F9
    .BYTE 1
    .BYTE $E8, $E5, $F2, $A0, $E2, $E5, $E1, $F5, $F4, $F9 ; her beauty.
    .BYTE $AE, 0
    .BYTE $C9, $F4, $A0, $E3, $E1, $F2, $F2, $E9, $E5, $F3 ; It carries, and
    .BYTE $AC, $A0, $E1, $EE, $E4, 1
    .BYTE $EC, $E9, $EB, $E5, $F3, $A0, $F4, $EF, $A0, $F5 ; likes to use Bombs.
    .BYTE $F3, $E5, $A0, $C2, $EF, $ED, $E2, $F3, $AE, 0
    .BYTE $D4, $E8, $E5, $F2, $E5, $A0, $E9, $F3, $A0, $E1 ; There is a plenty of
    .BYTE $A0, $F0, $EC, $E5, $EE, $F4, $F9, $A0, $EF, $E6
    .BYTE 1
    .BYTE $E6, $F5, $E5, $EC, $A0, $E9, $EE, $F3, $E9, $E4 ; fuel inside.
    .BYTE $E5, $AE, 0
    .BYTE $D3, $E8, $E5, $A0, $E9, $F3, $A0, $E7, $EF, $EF ; She is good at, and
    .BYTE $E4, $A0, $E1, $F4, $AC, $A0, $E1, $EE, $E4, 1
    .BYTE $EE, $EF, $F4, $A0, $E1, $E6, $F2, $E1, $E9, $E4 ; not afraid to use a
    .BYTE $A0, $F4, $EF, $A0, $F5, $F3, $E5, $A0, $E1, 1
    .BYTE $F3, $F4, $F2, $EF, $EE, $E7, $A0, $D0, $D3, $C9 ; strong PSI attack.
    .BYTE $A0, $E1, $F4, $F4, $E1, $E3, $EB, $AE, 0
    .BYTE $C8, $E9, $F3, $A0, $F3, $EF, $EC, $E5, $A0, $F0 ; His sole purpose is
    .BYTE $F5, $F2, $F0, $EF, $F3, $E5, $A0, $E9, $F3, 1
    .BYTE $F4, $EF, $A0, $EB, $E5, $E5, $F0, $A0, $F4, $F2 ; to keep travelers
    .BYTE $E1, $F6, $E5, $EC, $E5, $F2, $F3, 1
    .BYTE $E6, $F2, $EF, $ED, $A0, $F0, $E1, $F3, $F3, $E9 ; from passing through
    .BYTE $EE, $E7, $A0, $F4, $E8, $F2, $EF, $F5, $E7, $E8
    .BYTE 1
    .BYTE $F4, $E8, $E5, $A0, $E3, $E1, $F6, $E5, $AE, 0 ; the cave.
    .BYTE $C9, $F4, $A0, $EC, $E9, $EB, $E5, $F3, $A0, $F4 ; It likes to use PK
    .BYTE $EF, $A0, $F5, $F3, $E5, $A0, $D0, $CB, 1
    .BYTE $C6, $F2, $E5, $E5, $FA, $E5, $AE, 0 ; Freeze.
    .BYTE $C9, $E6, $A0, $F9, $EF, $F5, $A0, $E3, $E1, $EE ; If you can beat it,
    .BYTE $A0, $E2, $E5, $E1, $F4, $A0, $E9, $F4, $AC, 1
    .BYTE $F4, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $E7, $F2 ; that is great.
    .BYTE $E5, $E1, $F4, $AE, 0
    .BYTE $CE, $EF, $F4, $A0, $EF, $EE, $EC, $F9, $A0, $F7 ; Not only will it
    .BYTE $E9, $EC, $EC, $A0, $E9, $F4, 1
    .BYTE $E1, $F4, $F4, $E1, $E3, $EB, $A0, $F5, $F3, $E9 ; attack using PSI,
    .BYTE $EE, $E7, $A0, $D0, $D3, $C9, $AC, 1
    .BYTE $E9, $F4, $A0, $E9, $F3, $A0, $E1, $A0, $F4, $E8 ; it is a thief!
    .BYTE $E9, $E5, $E6, $A1, 0
    .BYTE 0
    .BYTE $C3, $E1, $F2, $E5, $E6, $F5, $EC, $AC, $A0, $E8 ; Careful, he knows
    .BYTE $E5, $A0, $EB, $EE, $EF, $F7, $F3, 1
    .BYTE $A7, $C2, $F2, $E1, $E9, $EE, $A0, $D3, $E8, $EF ; 'Brain Shock'.
    .BYTE $E3, $EB, $A7, $AE, 0
    .BYTE $A6, $C9, $F4, $A0, $E1, $F4, $F4, $E1, $E3, $EB ; "It attacks with
    .BYTE $F3, $A0, $F7, $E9, $F4, $E8, 1
    .BYTE $E2, $E1, $F2, $E5, $A0, $E8, $E1, $EE, $E4, $F3 ; bare hands."
    .BYTE $AE, $A6, 0
    .BYTE $C9, $F4, $F3, $A0, $ED, $E1, $F2, $F6, $E5, $EC ; Its marvelous silver
    .BYTE $EF, $F5, $F3, $A0, $F3, $E9, $EC, $F6, $E5, $F2
    .BYTE 1
    .BYTE $E3, $EF, $E1, $F4, $A0, $E7, $EC, $E9, $F3, $F4 ; coat glistens and
    .BYTE $E5, $EE, $F3, $A0, $E1, $EE, $E4, 1
    .BYTE $E7, $EC, $E5, $E1, $ED, $F3, $AE, 0 ; gleams.
    .BYTE $C8, $E5, $A0, $E9, $F3, $A0, $E1, $E2, $F3, $EF ; He is absolutely huge!
    .BYTE $EC, $F5, $F4, $E5, $EC, $F9, $A0, $E8, $F5, $E7
    .BYTE $E5, $A1, 0
    .BYTE $C9, $E6, $A0, $F9, $EF, $F5, $A0, $ED, $F5, $F3 ; If you must sleep,
    .BYTE $F4, $A0, $F3, $EC, $E5, $E5, $F0, $AC, 1
    .BYTE $E4, $EF, $EE, $A7, $F4, $A0, $E2, $EF, $F2, $F2 ; don't borrow his bed!
    .BYTE $EF, $F7, $A0, $E8, $E9, $F3, $A0, $E2, $E5, $E4
    .BYTE $A1, 0
    .BYTE $CE, $E5, $F7, $A0, $E1, $EE, $E4, $A0, $F5, $EE ; New and unfortunately,
    .BYTE $E6, $EF, $F2, $F4, $F5, $EE, $E1, $F4, $E5, $EC
    .BYTE $F9, $AC, 1
    .BYTE $E9, $ED, $F0, $F2, $EF, $F6, $E5, $E4, $AE, 0 ; improved.
    .BYTE $D4, $E8, $E5, $A0, $F3, $F4, $F2, $EF, $EE, $E7 ; The strongest of
    .BYTE $E5, $F3, $F4, $A0, $EF, $E6, 1
    .BYTE $F4, $E8, $E5, $A0, $D3, $F4, $E1, $F2, $ED, $E5 ; the Starmen.
    .BYTE $EE, $AE, 0
    .BYTE 0
    TILEPACK_POS <$20, 8, 6> ; command to set the initial position of tile output
    TILEPACK_FILL <$22, $A0, $10> ; command to fill with a single repeating tile
    TILEPACK_POS <$20, 8, 7> ; command to set the initial position of tile output
    TILEPACK_FILL <$22, $A0, $10> ; command to fill with a single repeating tile
    .BYTE 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E4, $F2, $E5, $F7, $A0, $EE, $E5, $E1, $F2 ;  drew near!
    .BYTE $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E1, $F4, $F4, $E1, $E3, $EB, $A1 ; 's attack!
    .BYTE 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $E9, $F2, $E5, $E4, $A0, $F4, $E8, $E5 ;  fired the
    .BYTE 1
    .BYTE $F4, $E1, $EE, $EB, $A0, $E7, $F5, $EE, $A1, 0 ; tank gun!
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E2, $E9, $F4, 1 ;  bit
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $E3, $F2, $E1, $F4, $E3, $E8, $E5, $E4 ;  scratched
    .BYTE 1
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E8, $E1, $F2, $E7, $E5, $E4, 1 ;  charged
    .BYTE $E1, $F4, $A0     ; at
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E1, $EE, $A0, $EF, $F5, $F4, 1 ;  ran out
    .BYTE $EF, $E6, $A0, $E3, $EF, $EE, $F4, $F2, $EF, $EC ; of control!
    .BYTE $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $EC, $E1, $F3, $F4, $A0, $E2, $EC, $EF, $F7, $A1 ; last blow!!!
    .BYTE $A1, $A1, 0
    .BYTE $D4, $E8, $E5, $A0, $E6, $EF, $F2, $ED, $A0, $EF ; The form of
    .BYTE $E6, 1
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E1, $F4, $F4, $E1, $E3, $EB, 1 ; 's attack
    .BYTE $F7, $E1, $F3, $A0, $E9, $EE, $E5, $F8, $F0, $EC ; was inexplicable!
    .BYTE $E9, $E3, $E1, $E2, $EC, $E5, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $F0, $E9, $F4, $A0, $E1, 1 ;  spit a
    .BYTE $F3, $F4, $E9, $E3, $EB, $F9, $A0, $F3, $F5, $E2 ; sticky substance!
    .BYTE $F3, $F4, $E1, $EE, $E3, $E5, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, $A0, $E2, $EF, $F5, $EE, $E4, 1 ;  is bound
    .BYTE $F4, $E9, $E7, $E8, $F4, $EC, $F9, $AE, 0 ; tightly.
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EC, $E5, $F4, $A0, $EF, $F5, $F4, 1 ;  let out
    .BYTE $E1, $A0, $F3, $F4, $F2, $E1, $EE, $E7, $E5, $A0 ; a strange cry!
    .BYTE $E3, $F2, $F9, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $ED, $E9, $EC, $E5, $E4, 1 ;  smiled
    .BYTE $E1, $A0, $E4, $E1, $F2, $EC, $E9, $EE, $E7, $A0 ; a darling smile.
    .BYTE $F3, $ED, $E9, $EC, $E5, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E6, $EC, $E5, $F7, $A0, $E9, $EE, $F4, $EF ;  flew into
    .BYTE 1
    .BYTE $E1, $A0, $F2, $E1, $E7, $E5, $A1, 0 ; a rage!
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $ED, $E1, $E4, $E5, 1 ;  made
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $EF, $EE, $E6, $F5, $F3, $E5, $E4, $A1 ;  confused!
    .BYTE 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $F2, $E9, $E5, $E4, $A0, $EF, $F5, $F4 ;  cried out
    .BYTE 1
    .BYTE $E6, $EF, $F2, $A0, $E8, $E5, $EC, $F0, $A1, 0 ; for help!
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $EF, $F7, $E5, $E4, 1 ;  sowed
    .BYTE $E9, $F4, $F3, $A0, $F3, $E5, $E5, $E4, $A1, 0 ; its seed!
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $F4, $E1, $F2, $F4, $E5, $E4, 1 ;  started
    .BYTE $EC, $E1, $F5, $E7, $E8, $E9, $EE, $E7, $A1, 0 ; laughing!
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F5, $F4, $F4, $E5, $F2, $E5, $E4, 1 ;  uttered
    .BYTE $F4, $E8, $F2, $E5, $E1, $F4, $E5, $EE, $E9, $EE ; threatening words!
    .BYTE $E7, $A0, $F7, $EF, $F2, $E4, $F3, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F5, $F4, $F4, $E5, $F2, $E5, $E4, 1 ;  uttered
    .BYTE $E4, $E9, $F2, $F4, $F9, $A0, $F7, $EF, $F2, $E4 ; dirty words!
    .BYTE $F3, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EA, $F5, $F3, $F4, 1 ;  just
    .BYTE $E7, $F2, $E9, $EE, $F3, $AC, $A0, $E1, $EE, $E4 ; grins, and bears it.
    .BYTE $A0, $E2, $E5, $E1, $F2, $F3, $A0, $E9, $F4, $AE
    .BYTE 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, $A0, $F3, $EF, 1 ;  is so
    .BYTE $E3, $EF, $EE, $E6, $F5, $F3, $E5, $E4, $AE, 0 ; confused.
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, 1  ;  is
    .BYTE $E1, $F3, $EC, $E5, $E5, $F0, $AE, 0 ; asleep.
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E5, $EE, $E5, $F2, $E7, $F9, 1 ; 's energy
    .BYTE $E8, $E1, $F3, $A0, $E6, $EC, $EF, $F7, $E5, $E4 ; has flowed into
    .BYTE $A0, $E9, $EE, $F4, $EF, 1
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E1, $EE, $A0, $E1, $F7, $E1, $F9, $A1 ;  ran away!
    .BYTE 0
    .BYTE $AE, $AE, $AE, $C2, $F5, $F4, $A0, $E9, $F4, $A0 ; ...But it didn't work
    .BYTE $E4, $E9, $E4, $EE, $A7, $F4, $A0, $F7, $EF, $F2
    .BYTE $EB, 1
    .BYTE $EF, $F5, $F4, $AE, 0 ; out.
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $F4, $F2, $E9, $F0, $F0, $E5, $E4, $A0, $E1, $EE ; tripped and fell.
    .BYTE $E4, $A0, $E6, $E5, $EC, $EC, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, 1 ;  can't
    .BYTE $ED, $EF, $F6, $E5, $AE, 0 ; move.
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $F5, $F2, $EE, $E5, $E4, 1 ;  turned
    .BYTE $E9, $EE, $F4, $EF, $A0, $E1, $A0, $F3, $F4, $EF ; into a stone.
    .BYTE $EE, $E5, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F0, $F5, $E6, $E6, $E5, $E4, $A0, $E1, 1 ;  puffed a
    .BYTE $E3, $EC, $EF, $F5, $E4, $A0, $EF, $E6, $A0, $E5 ; cloud of exhaust gas!
    .BYTE $F8, $E8, $E1, $F5, $F3, $F4, $A0, $E7, $E1, $F3
    .BYTE $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $E4, $A0, $E1, $EE, 1 ;  had an
    .BYTE $E1, $F3, $F4, $E8, $ED, $E1, $A0, $E1, $F4, $F4 ; asthma attack.
    .BYTE $E1, $E3, $EB, $AE, 1
    .BYTE $D7, $E8, $E5, $E5, $FA, $E5, $AE, $AE, $AE, 0 ; Wheeze...
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, 1  ;  is
    .BYTE $ED, $E5, $E4, $E9, $F4, $E1, $F4, $E9, $EE, $E7 ; meditating.
    .BYTE $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $E1, $E9, $E4, 1 ;  said
    .BYTE $A6, $C8, $E5, $EC, $EC, $EF, $A6, $AC, $A0, $F4 ; "Hello", then just
    .BYTE $E8, $E5, $EE, $A0, $EA, $F5, $F3, $F4, 1
    .BYTE $F7, $E1, $EC, $EB, $E5, $E4, $A0, $E1, $F7, $E1 ; walked away.
    .BYTE $F9, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, $A0, $F2, $E5, $E1, $E4, $F9, 1 ;  is ready
    .BYTE $E6, $EF, $F2, $A0, $E1, $EE, $A0, $E1, $F4, $F4 ; for an attack.
    .BYTE $E1, $E3, $EB, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $E1, $EE, $E7, $A0, $F4, $E8, $E5, 1 ;  sang the
    .BYTE $F3, $EF, $EE, $E7, $A1, 0 ; song!
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, 1  ;  is
    .BYTE $E7, $F5, $E1, $F2, $E4, $E9, $EE, $E7, $AE, 0 ; guarding.
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $E1, $F0, $F0, $F2, $EF, $E1, $E3, $E8, $E5, $E4 ; approached slowly!
    .BYTE $A0, $F3, $EC, $EF, $F7, $EC, $F9, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $D5, $D3, $C5, $E4, 1 ;  USEd
    TILEPACK_OFF <$21, $590> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $F2, $E9, $E5, $E4, 1 ;  tried
    TILEPACK_OFF <$21, $590> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A7, $F4, $A0, $D5, $D3, $C5 ;  can't USE
    .BYTE 1
    TILEPACK_OFF <$21, $590> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, 1  ;  is
    .BYTE $F4, $E8, $E9, $EE, $EB, $E9, $EE, $E7, $A0, $E1 ; thinking about the
    .BYTE $E2, $EF, $F5, $F4, $A0, $F4, $E8, $E5, 1
    .BYTE $E3, $E9, $F2, $E3, $F5, $ED, $F3, $F4, $E1, $EE ; circumstances.
    .BYTE $E3, $E5, $F3, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E4, $E9, $E4, 1 ;  did
    .BYTE $F3, $EF, $ED, $E5, $F4, $E8, $E9, $EE, $E7, $A0 ; something strange.
    .BYTE $F3, $F4, $F2, $E1, $EE, $E7, $E5, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E9, $F3, 1  ;  is
    .BYTE $E4, $E1, $F9, $AD, $E4, $F2, $E5, $E1, $ED, $E9 ; day-dreaming.
    .BYTE $EE, $E7, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $C3, $C8, $C5, $C3, $CB, $E5, $E4, 1 ;  CHECKed
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $AE, 0            ; .
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F5, $F3, $E5, $E4, 1 ;  used
    .BYTE $F4, $E8, $E5, $A0, $D7, $E9, $E3, $EB, $E5, $E4 ; the Wicked Seed!
    .BYTE $A0, $D3, $E5, $E5, $E4, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F5, $F3, $E5, $E4, $A0, $E1, 1 ;  used a
    .BYTE $F0, $E1, $F2, $E1, $EC, $E9, $FA, $E9, $EE, $E7 ; paralizing gas!
    .BYTE $A0, $E7, $E1, $F3, $A1, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $EF, $EF, $EB, $A0, $E1, $F7, $E1, $F9 ;  took away
    .BYTE 1
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    TILEPACK_OFF <$21, $590> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E5, $F3, $E3, $E1, $F0, $E5, $E4, 1 ;  escaped
    .BYTE $E6, $F2, $EF, $ED, $A0, $F4, $E8, $E5, $A0, $D2 ; from the Rope.
    .BYTE $EF, $F0, $E5, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $EF, $EB, $E5, $A0, $F5, $F0, $AE, 0 ;  woke up.
    .BYTE $DA, $C1, $D0, $A1, $A1, $A1, 0 ; ZAP!!!
    .BYTE $C3, $EF, $EE, $F4, $E9, $EE, $F5, $EF, $F5, $F3 ; Continuous attack!
    .BYTE $A0, $E1, $F4, $F4, $E1, $E3, $EB, $A1, 0
    .BYTE 1
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $D9, $CF, $D5 ;        YOU WIN!
    .BYTE $A0, $D7, $C9, $CE, $A1, 1
    .BYTE 0
    .BYTE 1
    .BYTE $D9, $EF, $F5, $A0, $EC, $EF, $F3, $F4, $A0, $F4 ; You lost the battle.
    .BYTE $E8, $E5, $A0, $E2, $E1, $F4, $F4, $EC, $E5, $AE
    .BYTE 1
    .BYTE 0
    .BYTE 1
    .BYTE $D4, $E8, $E5, $A0, $E2, $E1, $F4, $F4, $EC, $E5 ; The battle lingers on.
    .BYTE $A0, $EC, $E9, $EE, $E7, $E5, $F2, $F3, $A0, $EF
    .BYTE $EE, $AE, 1
    .BYTE 0
    .BYTE $D4, $E8, $E5, $A0, $F4, $E1, $EE, $EB, $A0, $E9 ; The tank is broken.
    .BYTE $F3, $A0, $E2, $F2, $EF, $EB, $E5, $EE, $AE, 0
    .BYTE $FF, $A0, $D3, $F4, $F2, $EF, $EE, $E7, $A0, $E1 ; > Strong against
    .BYTE $E7, $E1, $E9, $EE, $F3, $F4, 1
    .BYTE $A0, $A0, $D0, $CB, $A0, $C6, $E9, $F2, $E5, $AE ;   PK Fire.
    .BYTE 0
    .BYTE $FF, $A0, $D3, $F4, $F2, $EF, $EE, $E7, $A0, $E1 ; > Strong against
    .BYTE $E7, $E1, $E9, $EE, $F3, $F4, 1
    .BYTE $A0, $A0, $D0, $CB, $A0, $C6, $F2, $E5, $E5, $FA ;   PK Freeze.
    .BYTE $E5, $AE, 0
    .BYTE $FF, $A0, $D3, $F4, $F2, $EF, $EE, $E7, $A0, $E1 ; > Strong against
    .BYTE $E7, $E1, $E9, $EE, $F3, $F4, 1
    .BYTE $A0, $A0, $D0, $CB, $A0, $D4, $E8, $F5, $EE, $E4 ;   PK Thunder.
    .BYTE $E5, $F2, $AE, 0
    .BYTE $FF, $A0, $D3, $F4, $F2, $EF, $EE, $E7, $A0, $E1 ; > Strong against
    .BYTE $E7, $E1, $E9, $EE, $F3, $F4, 1
    .BYTE $A0, $A0, $D0, $CB, $A0, $C2, $E5, $E1, $ED, $AE ;   PK Beam.
    .BYTE 0
    .BYTE $FF, $A0, $D7, $E5, $E1, $EB, $A0, $E1, $E7, $E1 ; > Weak against
    .BYTE $E9, $EE, $F3, $F4, 1
    .BYTE $A0, $A0, $D3, $F0, $F2, $E1, $F9, $F3, $AE, 0 ;   Sprays.
    .BYTE $FF, $A0, $CF, $C6, $C6, $C5, $CE, $D3, $C5, $A0 ; > OFFENSE
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $FF, $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0 ; > DEFENSE
    TILEPACK_23 <$23, $592, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 3
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $E7, $F2, $E1, $F4 ;  I am grateful to
    .BYTE $E5, $E6, $F5, $EC, $A0, $F4, $EF, 1
    .BYTE $A0, $F9, $EF, $F5, $F2, $A0, $E6, $E1, $ED, $E9 ;  your family.
    .BYTE $EC, $F9, $AE, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $D9, $EF, $F5, $F2, $A0, $C7, $F2, $E5, $E1 ;  Your Great-
    .BYTE $F4, $AD, 1
    .BYTE $A0, $C7, $F2, $E1, $EE, $E4, $F0, $E1, $F2, $E5 ;  Grandparents,
    .BYTE $EE, $F4, $F3, $AC, 1
    .BYTE 3
    .BYTE $A0, $C7, $E5, $EF, $F2, $E7, $E5, $A0, $E1, $EE ;  George and Maria
    .BYTE $E4, $A0, $CD, $E1, $F2, $E9, $E1, 1
    .BYTE $A0, $F2, $E1, $E9, $F3, $E5, $E4, $A0, $ED, $E5 ;  raised me.
    .BYTE $AE, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $C2, $F5, $F4, $AC, $A0, $C7, $E5, $EF, $F2 ;  But, George stole
    .BYTE $E7, $E5, $A0, $F3, $F4, $EF, $EC, $E5, 1
    .BYTE $A0, $F6, $E9, $F4, $E1, $EC, $A0, $E9, $EE, $E6 ;  vital information
    .BYTE $EF, $F2, $ED, $E1, $F4, $E9, $EF, $EE, 1
    .BYTE 3
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0, $EF, $F5, $F2, $A0 ;  from our planet
    .BYTE $F0, $EC, $E1, $EE, $E5, $F4, 1
    .BYTE $A0, $F4, $E8, $E1, $F4, $A0, $E3, $E1, $EE, $A0 ;  that can be used
    .BYTE $E2, $E5, $A0, $F5, $F3, $E5, $E4, 1
    .BYTE 3
    .BYTE $A0, $F4, $EF, $A0, $E2, $E5, $F4, $F2, $E1, $F9 ;  to betray my
    .BYTE $A0, $ED, $F9, 1
    .BYTE $A0, $F0, $E5, $EF, $F0, $EC, $E5, $AE, $AE, $AE ;  people...
    .BYTE 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $C1, $EE, $E4, $A0, $EE, $EF, $F7, $AC, $A0 ;  And now, one of his
    .BYTE $EF, $EE, $E5, $A0, $EF, $E6, $A0, $E8, $E9, $F3
    .BYTE 1
    .BYTE $A0, $E4, $E5, $F3, $E3, $E5, $EE, $E4, $E1, $EE ;  descendants
    .BYTE $F4, $F3, 1
    .BYTE 3
    .BYTE $A0, $E9, $F3, $A0, $EF, $E2, $F3, $F4, $F2, $F5 ;  is obstructing
    .BYTE $E3, $F4, $E9, $EE, $E7, 1
    .BYTE $A0, $EF, $F5, $F2, $A0, $F0, $EC, $E1, $EE, $F3 ;  our plans,
    .BYTE $AC, 1
    .BYTE 3
    .BYTE $A0, $E1, $EE, $E4, $A0, $ED, $F5, $F3, $F4, $A0 ;  and must be
    .BYTE $E2, $E5, 1
    .BYTE $A0, $F3, $F4, $EF, $F0, $F0, $E5, $E4, $A1, $A1 ;  stopped!!
    .BYTE 1
    .BYTE 3
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE $A0, $C9, $A0, $E1, $ED, $A0, $F4, $E1, $EC, $EB ;  I am talking about
    .BYTE $E9, $EE, $E7, $A0, $E1, $E2, $EF, $F5, $F4, 1
    .BYTE $A0, $F9, $EF, $F5, $A1, 1 ;  you!
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $C7, $EF, $A0, $E8, $EF, $ED, $E5, $A0, $EE ;  Go home now!
    .BYTE $EF, $F7, $A1, 1
    .BYTE 3
    .BYTE $A0, $D0, $E5, $F2, $E9, $F3, $E8, $A0, $F7, $E9 ;  Perish with the
    .BYTE $F4, $E8, $A0, $F4, $E8, $E5, 1
    .BYTE $A0, $F2, $E5, $F3, $F4, $A0, $EF, $E6, $A0, $F4 ;  rest of the ugly
    .BYTE $E8, $E5, $A0, $F5, $E7, $EC, $F9, 1
    .BYTE 3
    .BYTE $A0, $C5, $E1, $F2, $F4, $E8, $A0, $D0, $E5, $EF ;  Earth People.
    .BYTE $F0, $EC, $E5, $AE, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $C6, $EF, $EF, $EC, $E9, $F3, $E8, $A0, $EF ;  Foolish one, you
    .BYTE $EE, $E5, $AC, $A0, $F9, $EF, $F5, 1
    .BYTE $A0, $E3, $E1, $EE, $EE, $EF, $F4, $A0, $E4, $EF ;  cannot do a thing
    .BYTE $A0, $E1, $A0, $F4, $E8, $E9, $EE, $E7, 1
    .BYTE 3
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F9, $EF, $F5, $F2 ;  with your meager
    .BYTE $A0, $ED, $E5, $E1, $E7, $E5, $F2, 1
    .BYTE $A0, $F0, $EF, $F7, $E5, $F2, $F3, $AE, $AE, $AE ;  powers...
    .BYTE 1
    .BYTE 3
    .BYTE $A0, $D0, $EF, $F7, $E5, $F2, $F3, $A0, $F7, $EF ;  Powers worthy of
    .BYTE $F2, $F4, $E8, $F9, $A0, $EF, $E6, 1
    .BYTE $A0, $E1, $A0, $EC, $EF, $F7, $EC, $F9, $A0, $E9 ;  a lowly insect.
    .BYTE $EE, $F3, $E5, $E3, $F4, $AE, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE $A0, $D9, $EF, $F5, $A0, $E1, $EC, $EF, $EE, $E5 ;  You alone,
    .BYTE $AC, 1
    .BYTE 3
    .BYTE $A0, $C9, $A0, $ED, $E1, $F9, $A0, $F3, $E1, $F6 ;  I may save you.
    .BYTE $E5, $A0, $F9, $EF, $F5, $AE, 1
    .BYTE $A0, $CA, $F5, $F3, $F4, $A0, $F9, $EF, $F5, $A0 ;  Just you alone.
    .BYTE $E1, $EC, $EF, $EE, $E5, $AE, 1
    .BYTE 3
    .BYTE $A0, $C2, $EF, $E1, $F2, $E4, $A0, $EF, $F5, $F2 ;  Board our
    .BYTE 1
    .BYTE $A0, $CD, $EF, $F4, $E8, $E5, $F2, $A0, $D3, $E8 ;  Mother Ship with me.
    .BYTE $E9, $F0, $A0, $F7, $E9, $F4, $E8, $A0, $ED, $E5
    .BYTE $AE, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $AE, $AE, $AE, $F4, $E8, $E5, $EE, $AC, $A0 ;  ...then, fall into
    .BYTE $E6, $E1, $EC, $EC, $A0, $E9, $EE, $F4, $EF, 1
    .BYTE $A0, $EC, $EF, $EE, $E7, $A0, $F3, $EC, $E5, $E5 ;  long sleep
    .BYTE $F0, 1
    .BYTE 3
    .BYTE $A0, $F7, $E9, $F4, $E8, $A0, $F9, $EF, $F5, $F2 ;  with your friends
    .BYTE $A0, $E6, $F2, $E9, $E5, $EE, $E4, $F3, 1
    .BYTE 3
    .BYTE $A0, $E1, $EE, $E4, $A0, $F4, $E8, $E5, $A0, $EF ;  and the other ugly
    .BYTE $F4, $E8, $E5, $F2, $A0, $F5, $E7, $EC, $F9, 1
    .BYTE $A0, $C5, $E1, $F2, $F4, $E8, $A0, $D0, $E5, $EF ;  Earth People.
    .BYTE $F0, $EC, $E5, $AE, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $D3, $F4, $EF, $F0, $A0, $F3, $E9, $EE, $E7 ;  Stop singing.
    .BYTE $E9, $EE, $E7, $AE, 0
    .BYTE $A0, $D3, $D4, $CF, $D0, $A0, $F3, $E9, $EE, $E7 ;  STOP singing!
    .BYTE $E9, $EE, $E7, $A1, 0
    .BYTE $A0, $D3, $D4, $CF, $D0, $A1, 1 ;  STOP!
    .BYTE $A0, $D3, $F4, $EF, $F0, $A0, $F4, $E8, $E5, $A0 ;  Stop the song!
    .BYTE $F3, $EF, $EE, $E7, $A1, 0
    .BYTE $A0, $D3, $D4, $CF, $D0, $A0, $C9, $D4, $A1, $A1 ;  STOP IT!!
    .BYTE 1
    .BYTE $A0, $D3, $D4, $CF, $D0, $A0, $D4, $C8, $C1, $D4 ;  STOP THAT SONG!
    .BYTE $A0, $D3, $CF, $CE, $C7, $A1, 0
    .BYTE $A0, $D9, $EF, $F5, $A0, $F0, $F5, $EE, $F9, $A0 ;  You puny little
    .BYTE $EC, $E9, $F4, $F4, $EC, $E5, 1
    .BYTE $A0, $C5, $E1, $F2, $F4, $E8, $A0, $E2, $F5, $E7 ;  Earth bugs!
    .BYTE $F3, $A1, 1
    .BYTE $A0, $D3, $E8, $F5, $F4, $A0, $F5, $F0, $AC, $A0 ;  Shut up, and
    .BYTE $E1, $EE, $E4, 1
    .BYTE $A0, $D3, $D4, $CF, $D0, $A0, $F3, $E9, $EE, $E7 ;  STOP singing!!
    .BYTE $E9, $EE, $E7, $A1, $A1, 0
    .BYTE $A0, $D4, $E8, $E5, $A0, $D3, $CF, $CE, $C7, $AE ;  The SONG...
    .BYTE $AE, $AE, 0
    .BYTE $A0, $D3, $D4, $CF, $D0, $A0, $C9, $D4, $A1, $A1 ;  STOP IT!!!
    .BYTE $A1, 0
    .BYTE $A0, $A1, $A1, $A1, $A1, $A1, 0 ;  !!!!!
    .BYTE $A0, $D3, $F4, $EF, $F0, $AE, $AE, $AE, 1 ;  Stop...
    .BYTE $A0, $D0, $EC, $E5, $E5, $E5, $E1, $F3, $E5, $AC ;  Pleeease, stop!
    .BYTE $A0, $F3, $F4, $EF, $F0, $A1, 0
    .BYTE $A0, $A1, $A1, $A1, $A1, $A1, $A1, $A1, 0 ;  !!!!!!!
    .BYTE $A0, $AE, $AE, $AE, $AE, $AE, $AE, $AE, $AE, 0 ;  ........
    .BYTE $A0, $C8, $EF, $F7, $A0, $E3, $EF, $F5, $EC, $E4 ;  How could I be
    .BYTE $A0, $C9, $A0, $E2, $E5, 1
    .BYTE $A0, $E4, $E5, $E6, $E5, $E1, $F4, $E5, $E4, 1 ;  defeated
    .BYTE 3
    .BYTE $A0, $E2, $F9, $A0, $E1, $A0, $F3, $EF, $EE, $E7 ;  by a song
    .BYTE 1
    .BYTE $A0, $EC, $E9, $EB, $E5, $A0, $F4, $E8, $E1, $F4 ;  like that?
    .BYTE $A2, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $C9, $A0, $F7, $E9, $EC, $EC, $AE, $AE, $AE ;  I will...
    .BYTE 1
    .BYTE $A0, $F3, $EF, $ED, $E5, $F4, $E9, $ED, $E5, $AE ;  sometime...
    .BYTE $AE, $AE, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $7478> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE $A0, $D7, $E5, $A0, $D3, $C8, $C1, $CC, $CC, $A0 ;  We SHALL meet again!
    .BYTE $ED, $E5, $E5, $F4, $A0, $E1, $E7, $E1, $E9, $EE
    .BYTE $A1, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E4, $EF, $E4, $E7, $E5, $E4, 1 ;  dodged
    .BYTE $A0, $F3, $F7, $E9, $E6, $F4, $EC, $F9, $AE, 0 ;  swiftly.
    .BYTE $A0, $A0, $97, $98, $99, $9A, $9B, $9C, $9D, $9E ;   SMAAAASH!
    .BYTE $9F, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $F5, $E6, $E6, $E5, $F2, $E5, $E4, 1 ;  suffered
    .BYTE $A0               ;
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $E4, $E1, $ED, $E1, $E7, $E5, $AE, $A0, $A0 ;  damage.
    .BYTE $A0, 0
    .BYTE $A0, $C4, $E5, $E6, $E5, $E1, $F4, $E5, $E4, 1 ;  Defeated
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A1, 0            ; !
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $E8, $F5, $F2, $F4, $A0, $E1, $EE, $E4, $A0 ;  hurt and beaten.
    .BYTE $E2, $E5, $E1, $F4, $E5, $EE, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F7, $E1, $F3, $A0, $E1, $EC, $F2, $E5, $E1 ;  was already gone.
    .BYTE $E4, $F9, $A0, $E7, $EF, $EE, $E5, $AE, 0
    .BYTE $A0, $D4, $E8, $E5, $F2, $E5, $A0, $F7, $E1, $F3 ;  There was no effect
    .BYTE $A0, $EE, $EF, $A0, $E5, $E6, $E6, $E5, $E3, $F4
    .BYTE 1
    .BYTE $A0, $EF, $EE, $A0 ;  on
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $F4, $EF, $F4, $E1, $EC, $EC, $F9, $A0, $E5 ;  totally exhausted.
    .BYTE $F8, $E8, $E1, $F5, $F3, $F4, $E5, $E4, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $F3, $F5, $F2, $F2, $EF, $F5, $EE, $E4, $E5 ;  surrounded by a
    .BYTE $E4, $A0, $E2, $F9, $A0, $E1, 1
    .BYTE $A0, $E2, $E1, $F2, $F2, $E9, $E5, $F2, $AE, 0 ;  barrier.
    .BYTE $A0, $A6, $D9, $EF, $F5, $F2, $A0, $ED, $EF, $F4 ;  "Your mother is
    .BYTE $E8, $E5, $F2, $A0, $E9, $F3, 1
    .BYTE $A0, $A0, $E3, $E1, $EC, $EC, $E9, $EE, $E7, $A0 ;   calling for you!"
    .BYTE $E6, $EF, $F2, $A0, $F9, $EF, $F5, $A1, $A6, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $F5, $F2, $EE, $E5, $E4, 1 ;  turned
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $E1, $A0, $F3, $F4 ;  into a stone.
    .BYTE $EF, $EE, $E5, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $E2, $EC, $E9, $EE, $E4, $E5, $E4, $A1, 0 ;  blinded!
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E5, $F8, $F0, $EC, $EF, $E4, $E5, $E4, $A1 ;  exploded!
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E2, $F5, $F2, $F3, $F4, 1 ;  burst
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $E6, $EC, $E1, $ED ;  into flames!
    .BYTE $E5, $F3, $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $CF, $C6, $C6, $C5, $CE, $D3, $C5, $A0, $E9 ;  OFFENSE increased
    .BYTE $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4, 1
    .BYTE $A0, $E2, $F9, $A0 ;  by
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $CF, $C6, $C6, $C5, $CE, $D3, $C5, $A0, $E4 ;  OFFENSE decreased
    .BYTE $E5, $E3, $F2, $E5, $E1, $F3, $E5, $E4, 1
    .BYTE $A0, $E2, $F9, $A0 ;  by
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $E9 ;  DEFENSE increased
    .BYTE $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4, 1
    .BYTE $A0, $E2, $F9, $A0 ;  by
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D3, $D0, $C5, $C5, $C4, 1 ; 's SPEED
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C6, $C9, $C7, $C8, $D4, 1 ; 's FIGHT
    .BYTE $A0, $E4, $E5, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  decreased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $C4, $C5, $C6, $C5, $CE, $D3, $C5, $A0, $E4 ;  DEFENSE decreased
    .BYTE $E5, $E3, $F2, $E5, $E1, $F3, $E5, $E4, 1
    .BYTE $A0, $E2, $F9, $A0 ;  by
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C6, $C9, $C7, $C8, $D4, 1 ; 's FIGHT
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D3, $D0, $C5, $C5, $C4, 1 ; 's SPEED
    .BYTE $A0, $E4, $E5, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  decreased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $AE, 0            ; .
    .BYTE $A0, $C4, $EF, $EE, $A7, $F4, $A0, $EB, $EE, $EF ;  Don't know why, but
    .BYTE $F7, $A0, $F7, $E8, $F9, $AC, $A0, $E2, $F5, $F4
    .BYTE 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $C5, $D8, $D0, 1 ; 's EXP
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased.
    .BYTE $AE, 0
    .BYTE $A0, $E1, $EE, $E4, $A0 ;  and
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E2, $E5, $EC, $E9, $E5, $F6, $E5, $E4, $A0 ;  believed it!
    .BYTE $E9, $F4, $A1, 0
    .BYTE $A0, $E2, $F5, $F4, $A0 ;  but
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F7, $E1, $F3, $EE, $A7, $F4, $A0, $E3, $EF ;  wasn't convinced
    .BYTE $EE, $F6, $E9, $EE, $E3, $E5, $E4, 1
    .BYTE $A0, $E1, $F4, $A0, $E1, $EC, $EC, $AE, 0 ;  at all.
    .BYTE $A0, $D4, $E8, $E9, $F3, $A0, $ED, $E1, $E4, $E5 ;  This made
    .BYTE 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E1, $EE, $E7, $F2, $F9, $AE, 0 ;  angry.
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $F3, $E9, $F4, $F5, $E1, $F4, $E9, $EF, $EE ;  situation became
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, 1
    .BYTE $A0, $E3, $F2, $E9, $F4, $E9, $E3, $E1, $EC, $AE ;  critical.
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EC, $EF, $F3, $F4, 1 ;  lost
    .BYTE $A0, $E1, $EC, $EC, $A0, $F3, $E5, $EE, $F3, $E5 ;  all senses.
    .BYTE $F3, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $F0, $F5, $F4, $A0, $F4, $EF, $A0, $F3, $EC ;  put to sleep.
    .BYTE $E5, $E5, $F0, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F2, $E5, $E3, $EF, $F6, $E5, $F2, $E5, $E4 ;  recovered
    .BYTE $A0
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $D0, $D0, $A7, $F3, $A1, 0 ;  PP's!
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F2, $E5, $E3, $EF, $F6, $E5, $F2, $E5, $E4 ;  recovered
    .BYTE $A0
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $C8, $D0, $A1, 0 ;  HP!
    .BYTE $A0, $C8, $EF, $F7, $E5, $F6, $E5, $F2, $AC, $A0 ;  However, no one came
    .BYTE $EE, $EF, $A0, $EF, $EE, $E5, $A0, $E3, $E1, $ED
    .BYTE $E5, 1
    .BYTE $A0, $F4, $EF, $A0, $E1, $F3, $F3, $E9, $F3, $F4 ;  to assist.
    .BYTE $AE, 0
    .BYTE $A0, $D3, $E9, $EC, $E5, $EE, $E3, $E5, $AE, $AE ;  Silence...
    .BYTE $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EA, $EF, $E9, $EE, $E5, $E4, 1 ;  joined
    .BYTE $A0, $E9, $EE, $A0, $F4, $E8, $E5, $A0, $E2, $E1 ;  in the battle!
    .BYTE $F4, $F4, $EC, $E5, $A1, 0
    .BYTE $A0               ;
    TILEPACK_23 <$23, $590, 2, 0> ; command specifying a new offset for what?
    .BYTE $A0, $D0, $D0, $A7, $F3, $A0, $F7, $E5, $F2, $E5 ;  PP's were
    .BYTE 1
    .BYTE $A0, $F3, $EE, $E1, $F4, $E3, $E8, $E5, $E4, $A0 ;  snatched from
    .BYTE $E6, $F2, $EF, $ED, 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $AE, 0            ; .
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, $A0, $EE, $EF, $F4, 1 ;  can not
    .BYTE $A0, $ED, $EF, $F6, $E5, $AE, 0 ;  move.
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $F0, $EF, $E9, $F3, $EF, $EE, $E5, $E4, $AE ;  poisoned.
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $E4, $E5, $E8, $F9, $E4, $F2, $E1, $F4, $E5 ;  dehydrated.
    .BYTE $E4, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $D0, $D3, $C9, 1 ; 's PSI
    .BYTE $A0, $F7, $E1, $F3, $A0, $E2, $EC, $EF, $E3, $EB ;  was blocked.
    .BYTE $E5, $E4, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $E2, $EF, $F5, $EE, $E4, $A0, $F7, $E9, $F4 ;  bound with Rope.
    .BYTE $E8, $A0, $D2, $EF, $F0, $E5, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $F3, $E8, $E9, $E5, $EC, $E4, $E5, $E4, $AE ;  shielded.
    .BYTE 0
    .BYTE $A0, $CD, $E9, $F3, $F3, $A1, $A1, 0 ;  Miss!!
    .BYTE $A0, $C2, $F5, $F4, $AC, $A0, $F4, $E8, $E5, $A0 ;  But, the PSI was
    .BYTE $D0, $D3, $C9, $A0, $F7, $E1, $F3, 1
    .BYTE $A0, $E2, $EC, $EF, $E3, $EB, $E5, $E4, $AE, 0 ;  blocked.
    .BYTE $A0, $C2, $F5, $F4, $AC, $A0 ;  But,
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $C6, $F2, $E1, $EE, $EB, $EC, $E9, $EE, $C2 ;  FranklinBadge bounced
    .BYTE $E1, $E4, $E7, $E5, $A0, $E2, $EF, $F5, $EE, $E3
    .BYTE $E5, $E4, 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $F4, $E8, $E5, $A0 ;  back the Beam!
    .BYTE $C2, $E5, $E1, $ED, $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E2, $EF, $F5, $EE, $E3, $E5, $E4, 1 ;  bounced
    .BYTE $A0, $E2, $E1, $E3, $EB, $A0, $F4, $E8, $E5, $A0 ;  back the attack!
    .BYTE $E1, $F4, $F4, $E1, $E3, $EB, $A1, 0
    .BYTE $A0, $CE, $EF, $F4, $A0, $E5, $EE, $EF, $F5, $E7 ;  Not enough PP's.
    .BYTE $E8, $A0, $D0, $D0, $A7, $F3, $AE, 0
    .BYTE $A0, $D4, $E8, $E5, $F2, $E5, $A0, $F7, $E1, $F3 ;  There was no effect
    .BYTE $A0, $EE, $EF, $A0, $E5, $E6, $E6, $E5, $E3, $F4
    .BYTE 1
    .BYTE $A0, $EF, $EE, $A0 ;  on
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $AE, 0            ; .
    .BYTE $A0, $D0, $EF, $E9, $F3, $EF, $EE, $A0, $E8, $E1 ;  Poison has dissipated
    .BYTE $F3, $A0, $E4, $E9, $F3, $F3, $E9, $F0, $E1, $F4
    .BYTE $E5, $E4, 1
    .BYTE $A0, $E6, $F2, $EF, $ED, $A0 ;  from
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $E2, $EF, $E4, $F9, $AE, 0 ;  body.
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F3, $E5, $EE, $F3, $E5, $F3, 1 ;  senses
    .BYTE $A0, $F7, $E5, $F2, $E5, $A0, $F2, $E5, $E7, $E1 ;  were regained.
    .BYTE $E9, $EE, $E5, $E4, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, $A0, $E9, $F4 ;  became itchy
    .BYTE $E3, $E8, $F9, 1
    .BYTE $A0, $E1, $EC, $EC, $A0, $EF, $F6, $E5, $F2, $AE ;  all over.
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E3, $E1, $EE, 1 ;  can
    .BYTE $A0, $ED, $EF, $F6, $E5, $A0, $EE, $EF, $F7, $AE ;  move now.
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $EF, $EB, $E5, $A0, $F5, $F0, $AE, 0 ;  woke up.
    .BYTE $A0, $C2, $F2, $EF, $F5, $E7, $E8, $F4, $A0 ;  Brought
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E2, $E1, $E3, $EB, $A1, $A1, $A1, 0 ;  back!!!
    .BYTE $A0, $C4, $E5, $F3, $F4, $F2, $EF, $F9, $E5, $E4 ;  Destroyed
    .BYTE 1
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, 1       ; 's
    .BYTE $A0, $F3, $E8, $E9, $E5, $EC, $E4, $AE, 0 ;  shield.
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A7, $F3, $A0, $E1, $F3, $F4, $E8, $ED, $E1, 1 ; 's asthma
    .BYTE $A0, $E1, $F4, $F4, $E1, $E3, $EB, $A0, $E8, $E1 ;  attack has passed.
    .BYTE $F3, $A0, $F0, $E1, $F3, $F3, $E5, $E4, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F2, $E5, $E3, $EF, $F6, $E5, $F2, $E5, $E4 ;  recovered from
    .BYTE $A0, $E6, $F2, $EF, $ED, 1
    .BYTE $A0, $E2, $E5, $E9, $EE, $E7, $A0, $E1, $A0, $F3 ;  being a stone.
    .BYTE $F4, $EF, $EE, $E5, $AE, 0
    .BYTE $A0, $A6, $C9, $A0, $EC, $EF, $F6, $E5, $A0, $F9 ;  "I love you."
    .BYTE $EF, $F5, $AE, $A6, 0
    .BYTE $A0, $A6, $C9, $A0, $E8, $E1, $F4, $E5, $A0, $F9 ;  "I hate you."
    .BYTE $EF, $F5, $AE, $A6, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $E4, $A0, $E1, $EE, 1 ;  had an
    .BYTE $A0, $E1, $F3, $F4, $E8, $ED, $E1, $A0, $E1, $F4 ;  asthma attack.
    .BYTE $F4, $E1, $E3, $EB, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F2, $E5, $E7, $E1, $E9, $EE, $E5, $E4, 1 ;  regained
    .BYTE $A0, $E1, $EC, $EC, $A0, $F3, $E5, $EE, $F3, $E5 ;  all senses!
    .BYTE $F3, $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, 1 ;  became
    .BYTE $A0, $F1, $F5, $E9, $E5, $F4, $A1, 0 ;  quiet!
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $E2, $E5, $E1, $F4, $E5, $EE, $A1, 0 ;  beaten!
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $E4, $E5, $F3, $F4, $F2, $EF, $F9, $E5, $E4 ;  destroyed!
    .BYTE $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E1, $F3, 1 ;  has
    .BYTE $A0, $F2, $E5, $F4, $F5, $F2, $EE, $E5, $E4, $A0 ;  returned to dust!
    .BYTE $F4, $EF, $A0, $E4, $F5, $F3, $F4, $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E4, $E9, $E4, $EE, $A7, $F4, $A0, 1 ;  didn't
    .BYTE $A0, $ED, $EF, $F6, $E5, $A0, $E1, $EE, $F9, $ED ;  move anymore!
    .BYTE $EF, $F2, $E5, $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, 1 ;  became
    .BYTE $A0, $E1, $A0, $F0, $E9, $EC, $E5, $A0, $EF, $E6 ;  a pile of junk!
    .BYTE $A0, $EA, $F5, $EE, $EB, $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $F6, $E1, $EE, $E9, $F3, $E8, $E5, $E4, $A1 ;  vanished!
    .BYTE 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $588> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, $EE, $A7, $F4, 1 ;  wasn't
    .BYTE $A0, $E3, $EF, $EE, $E6, $F5, $F3, $E5, $E4, $A0 ;  confused anymore!
    .BYTE $E1, $EE, $F9, $ED, $EF, $F2, $E5, $A1, 0
    .BYTE $A0, $C2, $F5, $F4, $AE, $AE, $AE, 1 ;  But...
    .BYTE $A0, $E9, $F4, $A0, $E8, $E1, $E4, $A0, $EE, $EF ;  it had no effect!
    .BYTE $A0, $E5, $E6, $E6, $E5, $E3, $F4, $A1, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $590> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F7, $E1, $F3, 1 ;  was
    .BYTE $A0, $E2, $F2, $EF, $EB, $E5, $EE, $AE, 0 ;  broken.
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $590> ; command to load packed tiles at the specified offset
    .BYTE $A0, $F4, $F5, $F2, $EE, $E5, $E4, 1 ;  turned
    .BYTE $A0, $E9, $EE, $F4, $EF, $A0, $E1, $A0, $F3, $F4 ;  into a stone.
    .BYTE $EF, $EE, $E5, $AE, 0
    .BYTE $A0               ;
    TILEPACK_OFF <$21, $590> ; command to load packed tiles at the specified offset
    .BYTE 1
    .BYTE $A0, $E2, $E5, $E3, $E1, $ED, $E5, $A0, $E5, $ED ;  became empty.
    .BYTE $F0, $F4, $F9, $AE, 0
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E1, $E4, $F6, $E1, $EE, $E3, $E5, $E4, 1 ;  advanced
    .BYTE $F4, $EF, $A0, $F4, $E8, $E5, $A0, $EE, $E5, $F8 ; to the next Level!
    .BYTE $F4, $A0, $CC, $E5, $F6, $E5, $EC, $A1, 1
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $CD, $E1, $F8, $E9, $ED, $F5, $ED, $A0, $C8 ;  Maximum HP has
    .BYTE $D0, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $5D, 1, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $CD, $E1, $F8, $E9, $ED, $F5, $ED, $A0, $D0 ;  Maximum PP has
    .BYTE $D0, $A0, $E8, $E1, $F3, 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $5D, 1, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $C6, $C9, $C7, $C8, $D4, $A0, $E8, $E1, $F3 ;  FIGHT has
    .BYTE 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $58, 1, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $D3, $D0, $C5, $C5, $C4, $A0, $E8, $E1, $F3 ;  SPEED has
    .BYTE 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $59, 1, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $D7, $C9, $D3, $C4, $CF, $CD, $A0, $E8, $E1 ;  WISDOM has
    .BYTE $F3, 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $5A, 1, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $D3, $D4, $D2, $C5, $CE, $C7, $D4, $C8, $A0 ;  STRENGTH has
    .BYTE $E8, $E1, $F3, 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $5B, 1, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE 2
    .BYTE $A0, $C6, $CF, $D2, $C3, $C5, $A0, $E8, $E1, $F3 ;  FORCE has
    .BYTE 1
    .BYTE $A0, $E9, $EE, $E3, $F2, $E5, $E1, $F3, $E5, $E4 ;  increased by
    .BYTE $A0, $E2, $F9, $A0
    TILEPACK_23 <$23, $5C, 1, 0> ; command specifying a new offset for what?
    .BYTE $AE, 1            ; .
    .BYTE 3
    .BYTE 2
    TILEPACK_OFF <$21, $580> ; command to load packed tiles at the specified offset
    .BYTE $A0, $EC, $E5, $E1, $F2, $EE, $E5, $E4, 1 ;  learned
    .BYTE $E1, $A0, $EE, $E5, $F7, $A0, $D0, $D3, $C9, $AD ; a new PSI-Power
    .BYTE $D0, $EF, $F7, $E5, $F2, 1
    .BYTE $F4, $E8, $F2, $EF, $F5, $E7, $E8, $A0, $E2, $E1 ; through battle!
    .BYTE $F4, $F4, $EC, $E5, $A1, 1
    .BYTE 3
    .BYTE 2
    .BYTE $D0, $E9, $E3, $EB, $E5, $E4, $A0, $F5, $F0, $A0 ; Picked up
    TILEPACK_OFF <$21, $6D04> ; command to load packed tiles at the specified offset
    .BYTE $A1, 1            ; !
    .BYTE 3
    .BYTE 2
    .BYTE $A8               ; (
    TILEPACK_OFF <$21, $670A> ; command to load packed tiles at the specified offset
    .BYTE $A0, $E8, $E5, $E1, $F2, $F3, $A0, $F4, $E8, $E5 ;  hears the
    .BYTE 1
    .BYTE $F6, $EF, $E9, $E3, $E5, $A0, $EF, $E6, $A0, $D1 ; voice of Queen Mary)
    .BYTE $F5, $E5, $E5, $EE, $A0, $CD, $E1, $F2, $F9, $A9
    .BYTE 1
    .BYTE 3
    .BYTE $C7, $E9, $E5, $E7, $F5, $E5, $A0, $E3, $E1, $EE ; Giegue cannot be
    .BYTE $EE, $EF, $F4, $A0, $E2, $E5, 1
    .BYTE $E4, $E5, $E6, $E5, $E1, $F4, $E5, $E4, $A0, $F7 ; defeated with
    .BYTE $E9, $F4, $E8, 1
    .BYTE $E6, $EF, $F2, $E3, $E5, $AE, $AE, $AE, 1 ; force...
    .BYTE 3
    .BYTE $D9, $EF, $F5, $A0, $E3, $E1, $EE, $EE, $EF, $F4 ; You cannot defeat
    .BYTE $A0, $E4, $E5, $E6, $E5, $E1, $F4, 1
    .BYTE $C7, $E9, $E5, $E7, $F5, $E5, $A0, $F7, $E9, $F4 ; Giegue with a
    .BYTE $E8, $A0, $E1, 1
    .BYTE $F7, $E5, $E1, $F0, $EF, $EE, $A0, $EF, $E6, $A0 ; weapon of any kind.
    .BYTE $E1, $EE, $F9, $A0, $EB, $E9, $EE, $E4, $AE, 1
    .BYTE 3
    .BYTE $D9, $EF, $F5, $A0, $ED, $F5, $F3, $F4, $A0, $D3 ; You must SING my
    .BYTE $C9, $CE, $C7, $A0, $ED, $F9, 1
    .BYTE $EC, $F5, $EC, $EC, $E1, $E2, $F9, $AC, $A0, $F7 ; lullaby, with all
    .BYTE $E9, $F4, $E8, $A0, $E1, $EC, $EC, 1
    .BYTE $F9, $EF, $F5, $F2, $A0, $E6, $E5, $E5, $EC, $E9 ; your feelings...
    .BYTE $EE, $E7, $F3, $AE, $AE, $AE, 1
    .BYTE 3
    .BYTE $D3, $C9, $CE, $C7, $A0, $ED, $F9, $A0, $EC, $F5 ; SING my lullaby
    .BYTE $EC, $EC, $E1, $E2, $F9, 1
    .BYTE $F7, $E9, $F4, $E8, $A0, $E1, $EC, $EC, $A0, $F9 ; with all your
    .BYTE $EF, $F5, $F2, 1
    .BYTE $E8, $E5, $E1, $F2, $F4, $AE, 1 ; heart.
    .BYTE 3
    .BYTE 2
    .BYTE 0
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
