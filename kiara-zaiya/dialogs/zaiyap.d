BEGIN ZaiyaP

// REP FALLS BELOW 3: ZAIYA LEAVES FOR GOOD
// ----------------------------------------
IF ~Global("KickedOut","LOCALS",0)
Global("ZaiyaOut","GLOBAL",0)
 HappinessLT(Myself,-289)~ THEN BEGIN 4
  SAY @3222
  IF ~~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",1) SetGlobal("ZUNHAPPY","GLOBAL",1) EscapeArea()~ EXIT
END

// KIARA LEAVES IN BRYNNLAW/DROW RITUAL/REP OVER 18
// ------------------------------------------------
IF ~OR(3)
AreaCheck("AR2201") 
AreaCheck("AR1600") 
Global("KUNHAPPY","GLOBAL",1)
Global("KiaraOut","GLOBAL",2) 
Global("KiaraLeave","GLOBAL",1)~ THEN BEGIN ZAIOUT0
SAY @3200
IF ~~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",1) EscapeArea()~ EXIT
END

// ZAIYA KICKED OUT WHISLT KIARA WAS VAMPIRE
// -----------------------------------------
IF ~GlobalGT("KiaraVampire","GLOBAL",0) !Global("KiaraVampire","Global",6)~ THEN BEGIN ZAIOUT1
SAY @3201
IF ~!PartyHasItem("MISCBKI")~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",1) SetGlobal("Zaiyaleave","GLOBAL",1) EscapeArea()~ EXIT
IF ~PartyHasItem("MISCBKI")~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",1) DestroyItem("MISCBKI") SetGlobal("Zaiyaleave","GLOBAL",1) EscapeArea()~ EXIT
END


// Kicked out in area where Kiara is
// ---------------------------------
IF ~Global("KiaraOut","GLOBAL",2) AreaCheck("AR1004") GlobalLT("FOUNDKIARA","LOCALS",1)~ THEN BEGIN ZAIOUT2
SAY @3202
IF ~~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",1) EscapeArea()~ EXIT
END

// Kicked out before Kiara found but not in area where Kiara is
// ------------------------------------------------------------
IF ~Global("ZaiyaOut","GLOBAL",0) !AreaCheck("AR1004") GlobalLT("FOUNDKIARA","LOCALS",1)~ THEN BEGIN ZAIOUT3
SAY @3203
IF ~~ THEN REPLY @3204 DO ~JoinParty()~ EXIT
IF ~!Global("ZaiyaFindKiara","GLOBAL",4)~ THEN REPLY @3205 GOTO ZAIDIE
IF ~Global("ZaiyaFindKiara","GLOBAL",4)~ THEN REPLY @3205 GOTO ZAIDIE1
END

// Kiara kicked out first
// ----------------------
IF ~Global("KiaraOut","GLOBAL",2) Global("ZaiyaOut","GLOBAL",0)~ THEN BEGIN ZLeave1
SAY @3206
  IF ~Global("TODOCKS","GLOBAL",1)~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",2) EscapeAreaMove("AR0300",1556,3579,14)~ EXIT
  IF ~Global("TODOCKS","GLOBAL",0)~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",2)~ EXIT
END

// Zaiya out first
// ---------------
IF ~Global("ZaiyaOut","LOCALS",0) GlobalLT("KiaraOut","GLOBAL",1)~ THEN BEGIN ZLeave2
SAY @3207
  IF ~~ THEN REPLY @3208 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @3209 GOTO 7
END

IF ~~ THEN ZAIDIE
SAY @3210
IF ~~ THEN DO ~Kill(Myself)~ EXIT
END

IF ~~ THEN ZAIDIE1
SAY @3210
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

// DON'T REJOIN IF KIARA LEFT FOR REP
// ----------------------------------
IF ~True() AreaCheck("AR0300") HappinessGT(Myself,-290)~ THEN BEGIN 1
  SAY @3211
  IF ~~ THEN REPLY @3212 GOTO 2
  IF ~~ THEN REPLY @3213 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @3214
  IF ~~ THEN DO ~SetGlobal("TODOCKS","GLOBAL",0)
SetGlobal("ZaiyaOut","GLOBAL",0)
JoinParty()~ EXTERN KIARAP KIARJO1
END

IF ~~ THEN BEGIN 3
  SAY @3215
  IF ~~ THEN EXIT
END

IF ~True() !AreaCheck("AR0300") HappinessGT(Myself,-290)~ THEN BEGIN 1a
  SAY @3216
  IF ~~ THEN REPLY @3217 GOTO 2
  IF ~~ THEN REPLY @3218 GOTO 3
END

IF ~~ THEN BEGIN 2a
  SAY @3219
  IF ~~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",0)
JoinParty()~ EXTERN KIARAP KIARJO1
END

IF ~~ THEN BEGIN 3a
  SAY @3220
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @3223
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7 
  SAY @3224
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
!AreaCheck("AR2906")~ THEN REPLY @3225 DO ~SetGlobal("TODOCKS","GLOBAL",1) SetGlobal("ZaiyaOut","GLOBAL",1) EscapeAreaMove("AR0300",1556,3579,14)~ EXIT
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
 !InWatchersKeep()~ THEN REPLY @3226 DO ~SetGlobal("ZaiyaOut","GLOBAL",1)~ EXIT
END


APPEND KIARAP
IF ~~ THEN BEGIN KIARJO1
SAY @3227
IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
SetGlobal("KiaraOut","GLOBAL",0)
JoinParty()~ EXIT
END
END

