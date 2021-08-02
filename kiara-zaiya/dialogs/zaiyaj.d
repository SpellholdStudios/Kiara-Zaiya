BEGIN ZaiyaJ

IF ~Global("KiaVampTalk","LOCALS",1)~ THEN BEGIN KiaVamp1
SAY @3400
IF ~~ THEN DO ~SetGlobal("KiaVampTalk","LOCALS",2)~ EXIT
END

IF ~!InParty(Myself) Global("DemonNotDeal","GLOBAL",4)~ THEN BEGIN ZaiOut
  SAY @3401
  IF ~~ THEN DO ~SetGlobal("ZaiyaOut","GLOBAL",1) 
LeaveParty() 
EscapeArea()~ EXIT
END

IF ~Global("NOTSEEKIARA","GLOBAL",1)~ THEN BEGIN ZAIKIADEAD
SAY @3402
IF ~~ THEN EXIT
END


IF ~True()~ THEN BEGIN Chat1
SAY @3403	 
IF ~~ THEN REPLY @3404 DO ~StartCutScene("ZaiFix")~ EXIT
END 

IF ~~ THEN BEGIN ZaiWlf1
SAY @3405 
IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_RESIST_FEAR)~ EXTERN RNGWLF01 4 
END

APPEND SALVANAS
IF ~!InPartySlot(LastTalkedToBy,0)
    Name("Zaiya",LastTalkedToBy)~ THEN BEGIN ZSLVA1
    SAY @3406
    IF ~~ THEN EXTERN ZAIYAJ ZSLVA2
END

CHAIN2 ZAIYAJ ZSLVA2
@3407
== @3408
== @3409
== @3410
== @3411
== @3412 
== @3413
END SALVANAS ZSLVA3

IF ~~ THEN BEGIN ZSLVA3
  SAY @3414
  IF ~~ THEN EXIT
END
END

//INTERJECT BODHI

INTERJECT_COPY_TRANS BODHI 1 BODZAI1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3415
== BODHI IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN
@3416 
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN
@3417
== BODHI IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN
@3418
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN
@3419
END

//INTERJECT TOLGERIAS

INTERJECT_COPY_TRANS TOLGER 75 ZaiTolg1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3420
== TOLGER IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN
@3421
END 

// INTERJECT Mirand Temple district
INTERJECT_COPY_TRANS CLMOM 8 ZaiMir1
== ZAIYAJ IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3422
END

// INTERJECT DAO GENIE TRADEMEET
INTERJECT_COPY_TRANS TRGENI01 2 ZaiDao1
== ZAIYAJ IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3423 
== TRGENI01 IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3424
== ZAIYAJ IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3425
== TRGENI01 IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3426
== ZAIYAJ IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3427
== TRGENI01 IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3428
END

// INTERJECT ELHAN 
EXTEND_TOP C6Elhan2 59 
IF ~!InParty("Zaiya")~ THEN EXTERN VICONIJ 120
END

INTERJECT_COPY_TRANS C6Elhan2 59 ZaiElhan1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3429
== C6Elhan2 IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN
@3430 
END 


INTERJECT_COPY_TRANS Samia 11 ZaiSam1
== ZAIYAJ IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3431
END

INTERJECT_COPY_TRANS Ppireni2 2 ZaiPpir1
== ZAIYAJ IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3432
END

INTERJECT_COPY_TRANS Ppireni2 51 ZaiPpir2
== ZAIYAJ IF ~InParty("ZAIYA") !Dead("Zaiya")~ THEN 
@3433
END

//ARAN LINVAIL
EXTEND_TOP Aran 40
IF ~!InParty("Zaiya")~ THEN GOTO 41
END

INTERJECT_COPY_TRANS Aran 40 ZaiAran1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3434
== VICONIJ IF ~InParty("Viconia") !Dead("Viconia")~ THEN
@3435
END

//SAEMON
EXTEND_TOP Ppsaem2 19
IF ~!InParty("Zaiya")~ THEN GOTO 20
END 

INTERJECT_COPY_TRANS Ppsaem2 19 ZaiSaem1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3436
END

INTERJECT_COPY_TRANS Daleson 13 ZaiDale1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3437
END

//NEW ADDITIONS
INTERJECT BHCRYPT 0 ZaiCKng1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3438
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@3439
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3440
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@3441
END BHCRYPT ZaiCrypt1

INTERJECT_COPY_TRANS TIRDIR 2 ZaiTird1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3442
END

INTERJECT NEB 6 ZaiNeb1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3443
END NEB 5

INTERJECT NEB 6 ZaiNeb2
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3443
END NEB 5

INTERJECT_COPY_TRANS OBSSOL01 10 ZaiSolam1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3444
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@3445
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3446
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@3447
END

INTERJECT_COPY_TRANS PPSIME 6 ZaiSime1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3448
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@3449
== ZAIYAJ IF ~!PartyHasItem("MISC6W") InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3450
END

INTERJECT_COPY_TRANS WELLYN 5 ZaiWell1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3451
END

INTERJECT_COPY_TRANS WELLYN 6 ZaiWell2
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3451
END

INTERJECT_COPY_TRANS UHKID01 2 ZaiKid1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3452
END

INTERJECT_COPY_TRANS UHKID03 11 ZaiKid2
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3453
END

INTERJECT RNGWLF01 17 ZaiRWlf01
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3454
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@3455
END ZAIYAJ ZaiWlf1

//DROW SLAVES

INTERJECT_COPY_TRANS DASLAVE1 4 ZaiSLAV1
== ZAIYAJ IF ~InParty("Zaiya") !Dead("Zaiya")~ THEN 
@3456
== KIARAJ IF ~InParty("Kiara") !Dead("Kiara") GlobalGT("LoveTalk","LOCALS",12)~ THEN
@3457
END

APPEND BHCRYPT 
IF ~~ THEN BEGIN ZaiCrypt1
SAY @3458
IF ~~ THEN DO ~Enemy()~ EXIT
END
END