BEGIN KIARAP

// ZAIYA LEAVES REP UNDER 3 - KIARA LEAVES TOO
IF ~Global("ZUNHAPPY","GLOBAL",1)
Global("ZaiyaOut","GLOBAL",2) ~ THEN BEGIN ZAIOUT0
SAY @3200
IF ~~ THEN DO ~SetGlobal("KiaraOut","GLOBAL",1) EscapeArea()~ EXIT
END


IF WEIGHT #-1 ~GlobalGT("KiaraVampire","GLOBAL",2) !InParty("Zaiya") Dead("Zaiya")~ THEN BEGIN EP1
SAY @350
IF ~~ THEN DO ~SetGlobal("KiaraOut","GLOBAL",1) EscapeArea()~ EXIT
END

IF WEIGHT #0 ~Global("KiaraVampire","GLOBAL",5)
~ THEN BEGIN KVP1
  SAY @351 
  IF ~~ THEN REPLY @352 DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
SetGlobal("KiaraVampire","GLOBAL",6)
~ JOURNAL @353 FLAGS 356 GOTO KVP3
  IF ~~ THEN REPLY @354 DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
SetGlobal("KiaraVampire","GLOBAL",6)
~ JOURNAL @353 FLAGS 64 GOTO KVP2
  IF ~~ THEN REPLY @355 DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
SetGlobal("KiaraVampire","GLOBAL",6)
~ JOURNAL @353 FLAGS 256 GOTO KVP4
END

IF ~~ THEN BEGIN KVP2
  SAY @356
  IF ~~ THEN REPLY @357 GOTO KVP8
  IF ~~ THEN REPLY @358 GOTO KVP7
END

IF ~~ THEN BEGIN KVP3
  SAY @359
  IF ~~ THEN REPLY @360 GOTO KVP8
  IF ~~ THEN REPLY @361 GOTO KVP7
END

IF ~~ THEN BEGIN KVP4
  SAY @362 
  IF ~~ THEN GOTO KVP5
END

IF ~~ THEN BEGIN KVP5
  SAY@363
  IF ~~ THEN GOTO KVP6
END

IF ~~ THEN BEGIN KVP6
  SAY @364
  IF ~~ THEN REPLY @365 GOTO KVP8
  IF ~~ THEN REPLY @366 GOTO KVP7
END

IF ~~ THEN BEGIN KVP7
  SAY @367 
  IF ~~ THEN DO ~ SetGlobal("KickedOut","LOCALS",1)
SetGlobal("KiaraOut","GLOBAL",1)	
SetGlobal("TODOCKS","GLOBAL",1)
EscapeAreaMove("AR0300",1518,3562,14)~ EXIT
END

IF ~~ THEN BEGIN KVP8
  SAY @368 
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

//KIARA OUT FIRST
IF ~GlobalLT("ZaiyaOut","GLOBAL",1) HappinessGT(Myself,-290)~ THEN BEGIN KOUT
  SAY @369
  IF ~~ THEN REPLY @370 DO ~JoinParty()~ EXIT
  IF ~Global("TODOCKS","GLOBAL",0)
~ THEN REPLY @371 GOTO 7
END

//ZAIYA OUT FIRST
IF ~Global("ZaiyaOut","GLOBAL",2) !Global("KiaraOut","GLOBAL",2) HappinessGT(Myself,-290)~ THEN BEGIN KOUT
  SAY @372
   IF ~Global("TODOCKS","GLOBAL",0)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) SetGlobal("KiaraOut","GLOBAL",2)~ EXIT
   IF ~Global("TODOCKS","GLOBAL",1)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) SetGlobal("KiaraOut","GLOBAL",2) EscapeAreaMove("AR0300",1518,3562,14)~ EXIT
END

//REJOIN KIARA FIRST DOCK AREA AND REP OVER 3
IF ~True() !Global("ZUNHAPPY","GLOBAL",1) AreaCheck("AR0300") HappinessGT(Myself,-290) Global("KiaraOut","GLOBAL",2)~ THEN BEGIN 1 
  SAY @373
  IF ~~ THEN REPLY @374 GOTO 2
  IF ~~ THEN REPLY @375 GOTO 3
END

IF ~~ THEN BEGIN 2 
  SAY @376 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
SetGlobal("KiaraOut","GLOBAL",0)
SetGlobal("TODOCKS","GLOBAL",0)
JoinParty()~ EXTERN ZAIYAP ZAIJO2
END

IF ~~ THEN BEGIN 3
  SAY @377 
  IF ~~ THEN EXIT
END
//

//REJOIN KIARA FIRST NOT DOCKS
IF ~True() !AreaCheck("AR0300") HappinessGT(Myself,-290) Global("KiaraOut","GLOBAL",2)~ THEN BEGIN 1a 
  SAY @378
  IF ~~ THEN REPLY @379 GOTO 2
  IF ~~ THEN REPLY @380 GOTO 3
END

IF ~~ THEN BEGIN 2a 
  SAY @381 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
SetGlobal("KiaraOut","GLOBAL",0)
JoinParty()~ EXTERN ZAIYAP ZAIJO2
END

IF ~~ THEN BEGIN 3a
  SAY @382 
  IF ~~ THEN EXIT
END
//

//REPUTATION OVER 18 THEN KIARA ZAIYA LEAVE FOR GOOD
IF ~Global("KiaraOut","GLOBAL",0)
 HappinessLT(Myself,-289)~ THEN BEGIN 4
  SAY @384 
  IF ~~ THEN DO ~SetGlobal("KUNHAPPY","GLOBAL",1) SetGlobal("KiaraOut","GLOBAL",1) EscapeArea()~ EXIT
END


IF ~~ THEN BEGIN 7 
  SAY @385
  IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516") 
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @386 DO ~SetGlobal("TODOCKS","GLOBAL",1) SetGlobal("KickedOut","LOCALS",1) SetGlobal("KiaraOut","GLOBAL",1) EscapeAreaMove("AR0300",1518,3562,14)~ EXIT
  IF ~!AreaCheck("AR0300")
 !AreaCheck("AR0301")
 !AreaCheck("AR0302")
 !AreaCheck("AR0303")
 !AreaCheck("AR0304")
 !AreaCheck("AR0305")
 !AreaCheck("AR0306")
 !AreaCheck("AR0307")
 !AreaCheck("AR0509")
 !AreaCheck("AR0510")
 !AreaCheck("AR0511")
 !AreaCheck("AR1102")
 !AreaCheck("AR1107")
 !AreaCheck("AR0801")
 !AreaCheck("AR0803")
 !AreaCheck("AR1300")
 !AreaCheck("AR1301") 
 !AreaCheck("AR1302")
 !AreaCheck("AR1303")
 !AreaCheck("AR0604")
 !AreaCheck("AR0605")
 !AreaCheck("AR0606")
 !InWatchersKeep()~ THEN REPLY @387 DO ~SetGlobal("KickedOut","LOCALS",1) SetGlobal("KiaraOut","GLOBAL",1)~ EXIT
END


APPEND ZAIYAP 
IF ~~ THEN BEGIN ZAIJO2
SAY @388
IF ~~ THEN REPLY @389 DO ~SetGlobal("ZaiyaOut","GLOBAL",0) 
SetLeavePartyDialogFile()
JoinParty()~ EXIT
END
END

APPEND ZAIYAP 
IF ~~ THEN BEGIN ZAIFOLK1
SAY @390
IF ~~ THEN DO ~LeaveParty()
SetGlobal("ZaiyaOut","GLOBAL",1)	
EscapeArea()~ EXIT
END
END
