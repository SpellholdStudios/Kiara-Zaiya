BEGIN KIARAJ

//PHAERE
IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("KiaraRomanceActive","GLOBAL",1)
Global("KiaraRomanceActive","GLOBAL",2)
Global("PastPhaere","LOCALS",1)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)~ THEN BEGIN Kph1
SAY @2000
IF ~~ THEN DO ~SetGlobal("PastPhaere","LOCALS",2)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("KiaraRomanceActive","GLOBAL",1)
Global("KiaraRomanceActive","GLOBAL",2)
Global("PastPhaere","LOCALS",1)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)~ THEN BEGIN Kph2
  SAY @2001 = @2002 
  IF ~~ THEN DO ~SetGlobal("PastPhaere","LOCALS",2)~ EXIT
END

//SOLA CONFLICT
IF WEIGHT #-2 ~Global("KiaraRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",0)
Global("FWKiaraObjectsSolaufein","LOCALS",0)~ 
THEN BEGIN KIASOLA12
SAY @2003
IF ~~ THEN REPLY @2004 DO ~SetGlobal("FWKiaraObjectsSolaufein","LOCALS",1)~ GOTO KiaSola1
IF ~~ THEN REPLY @2005 DO ~SetGlobal("FWKiaraObjectsSolaufein","LOCALS",1)~ GOTO KiaSola2
IF ~~ THEN REPLY @2006 DO ~SetGlobal("FWKiaraObjectsSolaufein","LOCALS",1)~ GOTO KiaSola3
END

IF ~~ THEN BEGIN KiaSola1
SAY @2007
IF ~~ THEN REPLY @2008 DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ EXIT
IF ~~ THEN REPLY @2009 GOTO KiaSola3
END

IF ~~ THEN BEGIN KiaSola2
SAY @2010
IF ~~ THEN REPLY @2011 GOTO KiaSola3
IF ~~ THEN REPLY @2012 GOTO KiaSola1
END

IF ~~ THEN BEGIN KiaSola3
SAY @2013 = @2014
IF ~~ THEN DO ~SetGlobal("KiaraRomanceActive","GLOBAL",3) SetGlobal("KTRUEEVIL","GLOBAL",1)~ EXIT
END


//ZAIYA DEAD
IF ~Global("NOTSEEZAIYA","GLOBAL",1)~ THEN BEGIN KIAZAIDEAD
SAY @2015 
IF ~~ THEN DO ~SetGlobal("KiaraOut","GLOBAL",1) SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeArea()~ EXIT
END

//NO ROMANCE: KIARA EXPLAINS
IF ~Global("KEXPLAIN","GLOBAL",1) 
InParty("Kiara")~ THEN BEGIN KEXPLA1
SAY @2016
  IF ~OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @2017 GOTO KEXPLA2
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @2018 GOTO KEXPLA2
END

IF ~~ THEN BEGIN KEXPLA2
SAY @2019
IF ~~ THEN GOTO KEXPLA3
END

IF ~~ THEN BEGIN KEXPLA3
SAY @2020 = @2021
IF ~~ THEN GOTO KEXPLA4
END

IF ~~ THEN BEGIN KEXPLA4
SAY @2022
IF ~~ THEN REPLY @2023 GOTO KEXPLA5
END

IF ~~ THEN BEGIN KEXPLA5
SAY @2024
IF ~OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @2025 GOTO KEXPLA6
IF ~OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @2026 GOTO KEXPLA6
IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @2027 GOTO KEXPLA7
IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @2028 GOTO KEXPLA7
END

IF ~~ THEN BEGIN KEXPLA6
SAY @2029 
IF ~~ THEN REPLY @2030 DO ~SetGlobal("KEXPLAIN","GLOBAL",2) SetGlobal("KTRUEEVIL","GLOBAL",1)~ EXIT
IF ~~ THEN REPLY @2031 DO ~SetGlobal("KEXPLAIN","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN KEXPLA7
SAY @2032 = @2033 = @2034
IF ~~ THEN REPLY @2035 GOTO KEXPLA8
IF ~~ THEN REPLY @2036 GOTO KEXPLA8
END

// Tanner warning
IF ~AreaCheck("AR0502") Global("KiaEnterTanner","AR0502",0) InParty("Kiara")~ THEN BEGIN KiaTanner1
SAY @2038
  IF ~Global("ToldInspector","GLOBAL",0)~ THEN DO ~SetGlobal("KiaEnterTanner","AR0502",1) ActionOverride(Myself,FindTraps())~ EXIT
  IF ~Global("ToldInspector","GLOBAL",1)~ THEN DO ~SetGlobal("KiaEnterTanner","AR0502",1) ActionOverride(Myself,FindTraps())~ GOTO KiaTanner2
END

IF ~~ THEN BEGIN KiaTanner2
  SAY @2039
  IF ~~ THEN EXIT
END

//KIARA'S WARNING 
IF ~Global("KIAUHAPPY","LOCALS",2)~ THEN BEGIN KUH1
  SAY @2040
  IF ~~ THEN REPLY @2041 GOTO KUH2
  IF ~~ THEN REPLY @2042 GOTO KUH3
END

IF ~~ THEN BEGIN KUH2
  SAY @2043
   IF ~~ THEN GOTO KUH3
END

IF ~~ THEN BEGIN KUH3
  SAY @2044
  IF ~~ THEN DO ~SetGlobal("KIAUHAPPY","LOCALS",3) RealSetGlobalTimer("KiaraRomance","GLOBAL",6000) RealSetGlobalTimer("KiaraPardon","GLOBAL",3000) SetGlobal("SuspendRo","LOCALS",1)~ EXIT
END

//KIARA COMPLAINS
IF ~Global("KIAUHAPPY","LOCALS",4)~ THEN BEGIN KUH10
  SAY @2045
  IF ~~ THEN REPLY @2046 GOTO KUH11
  IF ~~ THEN REPLY @2047 GOTO KUH12
END

IF ~~ THEN BEGIN KUH11
  SAY @2048 = @2049 = @2050
   IF ~~ THEN REPLY @2051 DO ~SetGlobal("SuspendRo","LOCALS",2) SetGlobal("KIAUHAPPY","LOCALS",5)~ EXIT
   IF ~~ THEN REPLY @2052 GOTO KUH12
END

IF ~~ THEN BEGIN KUH12
   SAY @2053
   IF ~~ THEN DO ~SetGlobal("KIAUHAPPY","LOCALS",5) SetGlobal("KiaraRomanceActive","GLOBAL",3)~ EXIT
END

//KIARA LEAVES IN BRYNNLAW IF NOT ENOUGH QUESTS
IF ~Global("KIALEAV","GLOBAL",1)~ THEN BEGIN KLEFT1
  SAY @2054 = @2055
  IF ~~ THEN DO ~SetGlobal("KiaraOut","GLOBAL",1) LeaveParty() 
EscapeArea()~ EXIT
END

//END GARREN AND OTHERS
IF ~Global("DomainPaladinBattle","GLOBAL",2)~ THEN BEGIN KiaGarr1
SAY @2056
IF ~~ THEN EXTERN GARREN 2
END

IF ~~ THEN BEGIN KiaGlai1
SAY @2057
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaGyth1
SAY @2058
IF ~~ THEN EXTERN UDSIMYAZ 27
END

IF ~~ THEN BEGIN KiaRael1
SAY @2059
IF ~~ THEN EXTERN RAELIS 4
END

IF ~~ THEN BEGIN KiaTird2
SAY @2060
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaUDDO1
SAY @2063
IF ~~ THEN REPLY @2064 EXTERN UDDOOR01 0
IF ~~ THEN REPLY @2065 GOTO KiaUDDO2
END

IF ~~ THEN BEGIN KiaUDDO2
SAY @2066
IF ~~ THEN EXTERN UDDOOR01 7
END


// PC Activate Combat

IF ~True() InParty(Myself)~ THEN BEGIN KiaCombat
SAY @2067
IF ~~ THEN REPLY @2068 DO ~SetGlobal("KCActive","GLOBAL",1)~ EXIT
IF ~!CombatCounter(0)~ THEN REPLY @2069 DO ~SetGlobal("KCActive","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY @2070 DO ~SetGlobal("KCActive","GLOBAL",0)~ EXIT
IF ~Global("KiaraRomanceActive","GLOBAL",1)
!Global("KiaraRomanceActive","GLOBAL",2)
!Global("KiaraRomanceActive","GLOBAL",3)
GlobalGT("LoveTalk","LOCALS",2) 
!GlobalGT("Chapter","GLOBAL",4)   	
!AreaType(DUNGEON)        
IsGabber(Player1)
Gender(Player1,MALE)	
CombatCounter(0)~ THEN REPLY @2071  GOTO chat1
IF ~!Global("KiaraRomanceActive","GLOBAL",1)
Global("KiaraRomanceActive","GLOBAL",2)
!Global("KiaraRomanceActive","GLOBAL",3)
GlobalGT("LoveTalk","LOCALS",36) 
!AreaType(DUNGEON)        
IsGabber(Player1)
Gender(Player1,MALE)	
CombatCounter(0)~ THEN REPLY @2071  GOTO chat2
IF ~~ THEN REPLY @2072 DO ~StartCutScene("KiaFix")~ EXIT
END

//CHAIN
CHAIN IF ~~ THEN KIARAJ KEXPLA8
@2037 
== BZAIYA IF ~IsValidForPartyDialog("Zaiya")~ THEN
@3711
== KIARAJ IF ~IsValidForPartyDialog("Zaiya")~ THEN
@3732
== BZAIYA IF ~IsValidForPartyDialog("Zaiya")~ THEN
@3733
== KIARAJ IF ~IsValidForPartyDialog("Zaiya")~ THEN
@3734
== BZAIYA IF ~IsValidForPartyDialog("Zaiya")~ THEN
@3712
== IMOEN2J IF ~IsValidForPartyDialog("Imoen2")~ THEN
@2113
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN
@2114
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN
@2115
== VALYGARJ IF ~IsValidForPartyDialog("Valygar")~ THEN
@2116
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN
@2117
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN
@2118
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN
@2119
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN
@2120
== CERNDJ IF ~IsValidForPartyDialog("Cernd")~ THEN
@2121
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN
@2122
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN
@2123
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis")~ THEN
@2124
== KELDORJ IF ~IsValidForPartyDialog("Keldorn")~ THEN
@2125
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN
@2126
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN
@2127
EXIT 



//USTA NATHA (SILVER DRAGON)
ADD_TRANS_TRIGGER UDSILVER 34 ~OR(3) !InParty("Kiara") Dead("Kiara") Gender(Player1,FEMALE)~
EXTEND_BOTTOM UDSILVER 34
IF ~!InParty("Viconia") InParty("KIARA") !Dead("Kiara") Gender(Player1,MALE)~ THEN REPLY @2073 DO ~SetGlobal("spoke2","LOCALS",1)~ EXTERN UDSILVER KiaUDS1
END

EXTEND_BOTTOM UDSILVER 34
IF ~InParty("Viconia") InParty("KIARA")~ THEN DO ~SetGlobal("spoke2","LOCALS",1)~ GOTO 53
END

CHAIN IF ~~ THEN KIARAJ KiaUDS2
@2075
== UDSILVER
@2076
== KIARAJ
@2062
END UDSILVER 53

APPEND UDSILVER
IF ~~ THEN BEGIN KiaUDS1
SAY @2074
IF ~~ THEN EXTERN KIARAJ KiaUDS2
END
END

//USTA NATHA (CITY GATES)
ADD_TRANS_TRIGGER UDDOOR01 3 ~OR(3) !InParty("Kiara") Dead("Kiara") Gender(Player1,FEMALE)~
EXTEND_BOTTOM UDDOOR01 3
IF ~!InParty("Viconia") InParty("KIARA") !Dead("Kiara") Gender(Player1,MALE)~ THEN EXTERN KIARAJ KiaUDDO1
END

EXTEND_BOTTOM UDDOOR01 3
IF ~!InParty("Viconia") InParty("KIARA") !Dead("Kiara") Gender(Player1,FEMALE)~ THEN GOTO 0
END

EXTEND_BOTTOM UDDOOR01 3
IF ~IsValidForPartyDialog("VICONIA") InParty("KIARA")~ THEN EXTERN ~VICONIJ~ 103
END

EXTEND_BOTTOM UDDOOR01 3
IF ~!InParty("Viconia") 
OR(2) 
!InParty("KIARA") 
Dead("Kiara") 
Gender(Player1,MALE)~ THEN GOTO 0
END


// salvanas

CHAIN IF ~~ THEN KIARAJ SLVA2
@2078
== SALVANAS
@2079
== KIARAJ
@2080
== SALVANAS
@2081
== KIARAJ
@2061
EXIT

APPEND SALVANAS
IF ~!InPartySlot(LastTalkedToBy,0)
    Name("Kiara",LastTalkedToBy)
    GlobalLT("LoveTalk","LOCALS",28)~ THEN BEGIN SLVA1
    SAY @2077
    IF ~~ THEN EXTERN KIARAJ SLVA2
END
END


// Interject Rylock the harper
INTERJECT RYLOCK 18 KiaRyl1
== KIARAJ IF ~InParty("Kiara") !InParty("Jaheira") !Dead("Kiara")~ THEN 
@2082
END RYLOCK 19

// INTERJECT Tiris trademeet
EXTEND_TOP trskin02 16
IF ~!InParty("Kiara")~ THEN GOTO 17
END

INTERJECT_COPY_TRANS trskin02 16 KiaTiri1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2083
END

// INTERJECT Renal Bloodscalp
INTERJECT RENAL 22 KiaRen1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2084
END RENAL 58

// INTERJECT Daar Trademeet
INTERJECT_COPY_TRANS JUGDAR01 2 KiaJugD1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2085
END


// INTERJECT Lieutenant Aegisfield
INTERJECT_COPY_TRANS INSPECT 13 KiaInsp1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2086
END

// INTERJECT Claire
INTERJECT_COPY_TRANS Pirmur10 11 KiaClar1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2087
END

INTERJECT Murdgirl 0 KiaMurdg1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2088
== MURDGIRL IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2089
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2090
END Murdgirl 3

INTERJECT Sudemin 26 KiaSudem1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2091 = @2092
== Sudemin IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2093
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2094
END Sudemin 27

INTERJECT_COPY_TRANS SCSARLES 8 KiaSarles1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2095
== SCSARLES IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2096
END

//LOGAN (BEFORE ENTERING CRYPT
INTERJECT Celogan 86 KiaLogan1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2097
END Celogan 87

//SHARK
INTERJECT SAHKNG01 15  KiaShark1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2098
END SAHKNG01 16

//GAAL (SEWERS TEMPLE)
INTERJECT Gaal 7 KiaGaal1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2099
END Gaal 27

//TARNOR
ADD_TRANS_TRIGGER TARNOR 1 ~!InParty("Kiara")~
INTERJECT TARNOR 1 KiaTarnor1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2100
== TARNOR IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2101
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2102
== TARNOR IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2103
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2104
END TARNOR 2

//TIRDIR GRAVEYARD DISTRICT
INTERJECT Tirdir 7 KiaTird1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2060
END Tirdir 8
//END NEW BANTER

//GARREN AFTER KILLING KNIGHTS
ADD_TRANS_TRIGGER GARREN 0 ~OR(2) !InParty("Kiara") Dead("Kiara")~
EXTEND_BOTTOM GARREN 0
IF ~InParty("Kiara") !Dead("Kiara") Global("KGARR1","GLOBAL",0)~ THEN REPLY @2105 DO ~SetGlobal("KGARR1","GLOBAL",1) SetGlobal("DomainPaladinBattle","GLOBAL",2)~ EXTERN KIARAJ KiaGarr1
END

INTERJECT GARREN 22 KiaGarr1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2106
END GARREN 23

//GLAICAS DE ARNISE KEEP
EXTEND_BOTTOM KPGLAI01 0
IF ~InParty("Kiara") !Dead("Kiara")~ THEN DO ~Enemy()~ EXTERN KIARAJ KiaGlai1
END

//RYAN TRAWL - RADIANT ORDER
INTERJECT KAYL2 9 KiaKayl1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2107
END KAYL2 10

//SAEMON NO SHIP
INTERJECT_COPY_TRANS PPSAEM3 1 KiaSaem1
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2108
END

EXTEND_TOP TIRDIR 11
IF ~OR(2)
!InParty("Kiara")
Dead("Kiara")~ THEN DO ~AddexperienceParty(6500)
EscapeArea()~ EXIT 
END

EXTEND_BOTTOM TIRDIR 11
IF ~InParty("Kiara") !Dead("Kiara") Global("KIATALKTIRD","GLOBAL",0)~ THEN DO ~SetGlobal("KIATALKTIRD","GLOBAL",1)
AddexperienceParty(6500)
EscapeArea()~ EXTERN KIARAJ KiaTird2
END

//RAELIS
EXTEND_TOP RAELIS 2
IF ~PartyHasItem("MISC6X") 
OR(2) 
!InParty("Kiara") 
Dead("Kiara")~ THEN REPLY @2109  GOTO 3
END

EXTEND_BOTTOM RAELIS 2
IF ~InParty("KIARA") 
!Dead("Kiara")~ THEN EXTERN KIARAJ KiaRael1
END


//GITHYANKI ILITHID CITY UNDERDRAK
EXTEND_TOP UDSIMYAZ 26
IF ~OR(2) 
!InParty("Kiara") 
Dead("Kiara")~ THEN GOTO 27 
END

EXTEND_BOTTOM UDSIMYAZ 26
IF ~InParty("KIARA") !Dead("Kiara")~ THEN DO ~SetGlobal("udMind","GLOBAL",41)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
~ EXTERN KIARAJ KiaGyth1
END

INTERJECT_COPY_TRANS UDDUER03 6 KiaDUER1 
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2110
== UDDUER03 IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@2111
END

//PA'NAI
INTERJECT SPPAIN 23 KiaPanai1
== KIARAJ IF ~LevelGT("Kiara",10) InParty("Kiara") !Dead("Kiara")~ THEN 
@2112
END SPPAIN 25

APPEND UDDEMON
  IF ~~ THEN BEGIN Kiaratrade1
    SAY @2128
    IF ~!InParty("Valen")~ THEN REPLY @2129 DO ~TakePartyItem("MISC9t")
SetGlobal("EggsDie","GLOBAL",1)
SetGlobal("DragSt","GLOBAL",1)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)~ GOTO 11
    IF ~InParty("Valen") !PartyHasItem("HALB06")~ THEN REPLY @2129 DO ~TakePartyItem("MISC9t")
SetGlobal("EggsDie","GLOBAL",1)
SetGlobal("DragSt","GLOBAL",1)
GiveItemCreate("HALB06","Valen",1,1,1)
GiveItemCreate("RING07","Valen",1,1,1)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)~ GOTO 11
   END
END

