BEGIN KIARA

IF ~True()
!InParty("Zaiya")
!Alignment(Player1,MASK_EVIL)~ THEN BEGIN KFirstMeeting
  SAY @400 
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~True()
OR(2)
InParty("Zaiya")
InPartyAllowDead("Zaiya")
!Alignment(Player1,MASK_EVIL)~ THEN BEGIN KFirstMeeting
  SAY @401 
  IF ~~ THEN REPLY @402 GOTO whereKiara
END

IF ~~ THEN BEGIN whereKiara
  SAY @403 
  IF ~~ THEN REPLY @404 GOTO Join
  IF ~~ THEN REPLY @405 GOTO GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @406
  IF ~~ THEN DO ~SetGlobal("KiaraOut","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Join
  SAY @407
  IF ~GlobalLT("chapter","GLOBAL",4)~ THEN REPLY @408 GOTO Joined1
  IF ~GlobalLT("chapter","GLOBAL",7)~ THEN REPLY @409 GOTO Joined1
  IF ~~ THEN REPLY @410 GOTO Joined1
END


IF ~~ THEN BEGIN Joined1
  SAY @411
  IF ~~ THEN DO ~SetGlobal("KiaraJoined","GLOBAL",1)
StartCutScene("KiaFix") 
JoinParty()~ EXIT
END
