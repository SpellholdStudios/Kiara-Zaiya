BEGIN DELORD

IF ~GlobalLT("JERLIAQUEST","GLOBAL",3) True() !GlobalGT("P1DEAL","GLOBAL",0) GlobalLT("DemonDeal","GLOBAL",4) !Alignment(Player1,MASK_EVIL)~ THEN BEGIN 0
  SAY @5200 
  IF ~~ THEN REPLY @5201 GOTO 1
  IF ~!Global("KTRUEEVIL","GLOBAL",1)~ THEN REPLY @5202 DO ~SetGlobal("DemonNotDeal","GLOBAL",2) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf() StartCutScene("KiaKill")~ EXIT
  IF ~Global("KTRUEEVIL","GLOBAL",1)~ THEN REPLY @5202 EXTERN KIARAJ KiaBhaalF1
END

IF ~~ THEN BEGIN 1
  SAY @5203 
  IF ~~ THEN REPLY @5204 GOTO 2a
  IF ~~ THEN REPLY @5205 DO ~SetGlobal("DemonNotDeal","GLOBAL",2) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf() StartCutScene("KiaKill")~ EXIT
END

IF ~True() !GlobalGT("P1DEAL","GLOBAL",0) GlobalLT("DemonDeal","GLOBAL",4) Alignment(Player1,MASK_EVIL)~ THEN BEGIN 2
  SAY @5206 
  IF ~~ THEN REPLY @5207 GOTO 2b
  IF ~~ THEN REPLY @5208 GOTO 2b 
END

IF ~~ THEN BEGIN 2a
SAY @5209
IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2b
  SAY @5210 
  IF ~~ THEN REPLY @5211 GOTO 3 
  IF ~~ THEN REPLY @5212 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5213 = @5214 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5215 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @5216 
  IF ~Alignment(Player1,MASK_EVIL)~ THEN GOTO 6
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN GOTO 6a
END

IF ~~ THEN BEGIN 6a
SAY @5217 = @5218 = @5219 
IF ~~ THEN REPLY @5220 GOTO 7a
END

IF ~~ THEN BEGIN 7a
SAY @5221
IF ~HasItemEquiped("FreeHlm1","Kiara") Global("KiaraRomanceActive","GLOBAL",2)~ THEN DO ~StartCutScene("CUTJER")~ EXIT
IF ~HasItemEquiped("FreeHlm1","Kiara") !Global("KiaraRomanceActive","GLOBAL",2)~ THEN REPLY @5222 GOTO 8a
IF ~!HasItemEquiped("FreeHlm1","Kiara") Global("KiaraRomanceActive","GLOBAL",2)~ THEN REPLY @5222 GOTO 8a
IF ~!HasItemEquiped("FreeHlm1","Kiara") !Global("KiaraRomanceActive","GLOBAL",2)~ THEN REPLY @5222 GOTO 8a
IF ~!HasItemEquiped("FreeHlm1","Kiara") !Global("KTRUEEVIL","GLOBAL",1)~ THEN REPLY @5223 DO ~SetGlobal("DemonNotDeal","GLOBAL",2) StartCutScene("KiaKill") DestroySelf()~ EXIT
IF ~Global("KTRUEEVIL","GLOBAL",1)~ THEN REPLY @5223 EXTERN KIARAJ KiaBhaalF1
END

IF ~~ THEN BEGIN 8a
SAY @5224
IF ~~ THEN REPLY @5225 GOTO 9a
IF ~~ THEN REPLY @5226 DO ~StartCutSceneMode() DestroySelf() StartCutScene("KiaKill")~ EXIT
END

IF ~~ THEN BEGIN 9a
SAY @5227 
IF ~~ THEN REPLY @5228 DO ~SetGlobal("P1DEAL","GLOBAL",1) SetGlobalTimer("DemonQuest","Global",TEN_DAYS) SetGlobal("FIGHTAMA","GLOBAL",1)~ GOTO 10a
IF ~~ THEN REPLY @5229 DO ~SetGlobal("DemonNotDeal","GLOBAL",2) StartCutScene("KiaKill") CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10a
SAY @5230
IF ~~ THEN DO ~CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf()~ EXIT
END

// DEMON COMES BACK -> AMARALIS DEAD 
// ---------------------------------
IF ~True() GlobalGT("P1DEAL","GLOBAL",1) Dead("Amaralis") !GlobalGT("P2DEAL","GLOBAL",0)~ THEN BEGIN 11a
SAY @5231
IF ~~ THEN REPLY @5232 GOTO 12a
END

IF ~~ THEN BEGIN 12a
SAY @5233 
IF ~~ THEN REPLY @5234 EXTERN DELORD 12b
IF ~~ THEN REPLY @5229 DO ~SetGlobal("DemonNotDeal","GLOBAL",2) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf() StartCutScene("KiaKill")~ EXIT
END

// DEMON COMES BACK -> AMARALIS NOT DEAD OR FAILED TO PERFORM THE EVIL QUEST
// -------------------------------------------------------------------------
IF ~True() GlobalGT("P1DEAL","GLOBAL",1) OR(2) !Dead("Amaralis") !Global("SPRITE_IS_DEADHPRELATE","GLOBAL",1)~ THEN BEGIN 13a
SAY @5235
IF ~~ THEN DO ~SetGlobal("DemonNotDeal","GLOBAL",2) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf() StartCutScene("KiaKill")~ EXIT
END

// DEMON COMES BACK
// ----------------
IF ~True() GlobalGT("P2DEAL","GLOBAL",1) Global("SPRITE_IS_DEADHPRELATE","GLOBAL",1)~ THEN BEGIN 14a
SAY @5236
IF ~~ THEN GOTO 9
END


// RESUME
// ------
IF ~~ THEN BEGIN 6
  SAY @5237 
  IF ~~ THEN REPLY @5238 GOTO 7
  IF ~~ THEN REPLY @5239 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @5240 = @5241 = @5242 
  IF ~~ THEN REPLY @5243 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @5244 
  IF ~~ THEN REPLY @5245 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @5246 = @5247 
  IF ~~ THEN REPLY @5248 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @5249 
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @5250 = @5251 = @5252 
  IF ~~ THEN EXTERN BKIARA DEAL8
 END

IF ~~ THEN BEGIN 12
  SAY @5253 
  IF ~~ THEN DO ~SetGlobal("DemonDeal","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf() Wait(1) CreateVisualEffectObject("SPCLOUD1","Kiara") CreateVisualEffectObject("SPCLOUD2","Kiara")~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @5254 
  IF ~~ THEN EXTERN JERLIA 20
 END

IF ~~ THEN BEGIN 21
  SAY @5255 
  IF ~~ THEN EXTERN JERLIA 21
 END

IF ~~ THEN BEGIN 22
  SAY @5256 
  IF ~~ THEN DO ~CreateVisualEffectObject("SPPORTAL",Myself) Wait(1) DestroySelf()~ EXTERN JERLIA 22
 END


IF ~~ THEN BEGIN KiaBhaalF2
  SAY @5257 
  IF ~~ THEN EXTERN KIARAJ KiaBhaalF3
END

IF ~~ THEN BEGIN KiaBhaalF4
  SAY @5258 
  IF ~~ THEN DO ~SetGlobal("DemonNotDeal","GLOBAL",2) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf()~ EXTERN BKIARA KiaBhaalF5
END


CHAIN DELORD 12b
@5270 DO ~SetGlobal("P2DEAL","GLOBAL",1) SetGlobalTimer("DemonQuest","GLOBAL",THREE_DAYS) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf()~
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN
@5259
== KELDORJ IF ~IsValidForPartyDialog("Keldorn")~ THEN
@5260 = @5261 DO ~LeaveParty() Enemy() EquipMostDamagingMelee() AttackReevaluate(Player1,120)~
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") Global("Anomenisknight","GLOBAL",1)~ THEN
@5262 DO ~LeaveParty() Enemy() EquipMostDamagingMelee() AttackReevaluate(Player1,120)~
== IMOEN2J IF ~IsValidForPartyDialog("Imoen")~ THEN
@5263
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN
@5264 DO ~LeaveParty() EscapeArea()~ 
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN
@5265 DO ~LeaveParty() EscapeArea()~ 
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN
@5266
== ZAIYAJ IF ~IsValidForPartyDialog("Zaiya")~ THEN
@5267
EXIT

APPEND KIARAJ 
IF ~~ THEN BEGIN KiaBhaalF1
SAY @5268
IF ~~ THEN EXTERN DELORD KiaBhaalF2
END
END

APPEND KIARAJ 
IF ~~ THEN BEGIN KiaBhaalF3
SAY @5269
IF ~~ THEN EXTERN DELORD KiaBhaalF4
END
END