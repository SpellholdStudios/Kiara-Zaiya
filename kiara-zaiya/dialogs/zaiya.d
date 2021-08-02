// FIRST MEETING
// -------------
BEGIN Zaiya

IF ~True()
!Alignment(Player1,MASK_EVIL)~ THEN BEGIN ZFirstMeeting
SAY @3000 
IF ~~ THEN REPLY @3001 GOTO Zay1
IF ~~ THEN REPLY @3002 GOTO Zay4
IF ~~ THEN REPLY @3003 GOTO Zgoaway
END

IF ~~ THEN BEGIN Zay1
SAY @3004 
IF ~~ THEN REPLY @3005 GOTO Zay2
IF ~~ THEN REPLY @3006 GOTO Zay3
IF ~~ THEN REPLY @3007 GOTO Zgoaway
END

IF ~~ THEN BEGIN Zay2
SAY @3008 
IF ~~ THEN REPLY @3009 GOTO Zay3
IF ~~ THEN REPLY @3010 GOTO Zay4
END

IF ~~ THEN BEGIN Zay3
SAY @3011 
IF ~~ THEN REPLY @3012 GOTO ZJoin
END

IF ~~ THEN BEGIN Zay4
SAY @3013 
IF ~~ THEN REPLY @3014 GOTO Zgoaway
IF ~~ THEN REPLY @3015 GOTO Zay3
END

IF ~~ THEN BEGIN ZJoin
  SAY @3016 
  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @3017 GOTO ZJoined
  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN REPLY @3018 GOTO ZJoined1
END

IF ~~ THEN BEGIN ZJoined
  SAY @3019 
  IF ~~ THEN DO ~SetGlobal("ZaiyaJoined","GLOBAL",1)
SetGlobal("ZaiyaFindKiara","GLOBAL",1)
SetGlobal("ZaiyaCursed","GLOBAL",1)
StartCutScene("ZaiFix")
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN ZJoined1
  SAY @3021
  IF ~~ THEN DO ~SetGlobal("ZaiyaJoined","GLOBAL",1)
SetGlobal("ZaiyaFindKiara","GLOBAL",1)
SetGlobal("ZaiyaCursed","GLOBAL",1)
StartCutScene("ZaiFix")
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Zgoaway
SAY @3020 
IF ~~ THEN DO ~Kill(Myself)~ EXIT
END

// KICKED OUT
