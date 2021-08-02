BEGIN KIAR25J


// WRAITH DIALOG
// -------------
IF ~~ THEN BEGIN KzKiarWraith2
  SAY @0 /* ~Tell me Ghost, what pain could I possibly endure when I face a fate worse than death?~ */
  IF ~~ THEN EXTERN HGWRA01 24
END

// ARRIVAL IN AMKETHRAN
// --------------------
IF ~InParty(Myself) AreaCheck("AR5500") See(Player1) Global("KZTOBBALTH","LOCALS",1)~ THEN BEGIN KBalthTalk1
SAY @1 /* ~Amkethran, an opportunity to finish with the bastard once and for all.~ */
IF ~~ THEN REPLY @2 /* ~Kiara, I know how anxious you must be to have your revenge, I urge you not start a confrontation before we find out more about the other Bhaalspawn.~ */ GOTO KBalthTalk2
IF ~~ THEN REPLY @3 /* ~Be patient Kiara, your time for revenge will come soon enough but first I need more information from Balthazar about the other Bhaalspawns.~ */ GOTO KBalthTalk2
END

IF ~~ THEN BEGIN KBalthTalk2
SAY @4 /* ~You are right <CHARNAME>. Your own future is foremost to my own desires.~ */
IF ~~ THEN DO ~SetGlobal("KZTOBBALTH","LOCALS",2)~ EXIT
END


// SOLAR CHOICE
// ------------
IF ~~ THEN BEGIN Krom1
SAY @5 /* ~<CHARNAME>, your moment has finally arrived...Accept this incredible gift...Become a god!~ */
IF ~~ THEN REPLY @6 /* ~I won't. I am staying, with you.~ */ GOTO 0
IF ~~ THEN REPLY @7 /* ~Well... the power is tempting...~ */ GOTO 1
IF ~~ THEN REPLY @8 /* ~You are right Kiara. I can't miss the opportunity of becoming a god.~ */ GOTO 2
END

IF ~~ THEN BEGIN 0
SAY @9 /* ~What will we do? Where will we go? Do not forsake eternity for a relationship that will only last a mere lifetime...~ */
= @10 /* ~Please, you might even get tired and bored of me in the future...and then what?~ */
= @11 /* ~I refuse to play a part in your future remorse. If you thought I would beg you to stay, you were wrong.~ */
= @12 /* ~Please, accept the gift...~ */
IF ~~ THEN EXTERN FINSOL01 KIARAdd1
END

IF ~~ THEN BEGIN 1
SAY @13 /* ~It is not a time for weakness <CHARNAME>, you won't get such opportunity twice...~ */ = @14 /* ~What if tomorrow you were to be bored of having me at your side, won't you regret it the rest of your life?~ */ = @15 /* ~I don't want to see that happen!~ */
IF ~~ THEN EXTERN FINSOL01 KIARAdd1
END

IF ~~ THEN BEGIN 2
SAY @16 /* ~I know this is.~ */
IF ~~ THEN EXTERN FINSOL01 KIARAdd1
END

IF ~~ THEN BEGIN Krom2
SAY @17 /* ~(Kiara has an incredulous look on her face and stares at you in disbelief)~ */
= @18 /* ~(Slowly, she realizes that you just renounced your deity for her)~ */
= @19 /* ~(She throws herself in your arms and gives you a passionate kiss)~ */
= @20 /* ~(Finally breaking the embrace, she dares to speak)~ */
= @21 /* ~I think it was foolish my love, I will try my best to make you happy as long as I live.~ */
IF ~~ THEN EXTERN FINSOL01 33
END

IF ~~ THEN BEGIN Knoromance2
SAY @22 /* ~Yes, my love...Go and rule amongst the gods...You will always hold a special place in my heart.~ */
IF ~~ THEN EXTERN FINSOL01 33
END

IF ~~ THEN BEGIN Knoromance1
SAY @23 /* ~Not many will ever have the chance to reach immortality. Clutch it <CHARNAME>, you earned it!~ */
COPY_TRANS FINSOL01 27
END

// PC Activate Combat
// ------------------
IF ~True() InParty(Myself)~ THEN BEGIN KiaCombat
SAY @2067
IF ~~ THEN REPLY @2068 DO ~SetGlobal("KCActive","GLOBAL",1)~ EXIT
IF ~!CombatCounter(0)~ THEN REPLY @2069 DO ~SetGlobal("KCActive","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY @2070 DO ~SetGlobal("KCActive","GLOBAL",0)~ EXIT
IF ~~ THEN REPLY @2072 DO ~StartCutScene("KiaFix")~ EXIT
END


/* ======================= *
 *  IN GAME INTERJECTIONS  *
 * ======================= */
INTERJECT BALTH 22 KZBalth1
== KIAR25J IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@24 /* ~Such blatant lies! You sought power and domination all your life and certainly secretly desired the taint for yourself.~ */
== BALTH IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@25 /* ~And who might you be?~ */
== KIAR25J IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@26 /* ~Don't you recognize me?... Kara Tur seems so far away indeed...I am a ghost of your past determined to take it's rightful revenge.~ */
== BALTH IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@27 /* ~Kiara?!...~ */
== KIAR25J IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@28 /* ~Yes! and I am here to avenge Osan by ending your pathetic life...~ */
== BALTH IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@29 /* ~I refuse to believe you followed the Bhaalspawn for such hollow desires but before you die, know that I never intended to kill Osan.~ */ = @30 /* ~I sought to preserve the discipline of our monastic order, which both of you clearly slandered, by suffusing a harsh punishment on both of you.~ */ = @31 /* ~I could not have guessed Osan would die in the ordeal.~ */
== KIAR25J IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@32 /* ~So you say Balthazar, you have killed more innocents yourself than <CHARNAME>, you did not even care to wash the blood under your fingernails.~ */
== BALTH IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@33 /* ~My plan was more altruistic than you thought. I had vowed to exterminate all of Bhaal's children, forever wiping the Realms clean of Bhaal's tainted existence.~ */
== KIAR25J IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@34 /* ~Then it seems that avenging Osan's death will delight more than one dead soul. I will gladly quench my thirst for revenge in your own blood, Balthazar. Let's end this now!~ */
END Balth 25

INTERJECT SARKIS01 7 KZKis1
== KIAR25J IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
@35 /* ~Careful now, you're brain might inflate and burst in pieces.~ */
END SARKIS01 8 

//CANT REMEMBER THAT CODING
//INTERJECT SARPROVF 0 KZVampHarlot1
//== KIAR25J IF ~InParty("Kiara") !Dead("Kiara")~ THEN 
//~Why this sudden interest for harlots?~
//END EXTERN PLAYER1


INTERJECT SAREV25A 38 KZSarev1
== KIAR25J IF ~InParty("Kiara") !Dead("Kiara") Global("KiaraRomanceActive","GLOBAL",2)~ THEN 
@36 /* ~You are lucky no harm was done, else you would have begged me to send you back to the tortures of hell.~ */
END SAREV25A 39 

/* ======================================= *
 *  EXTEND AND APPEND AT THE END AS USUAL  *
 * ======================================= */

EXTEND_BOTTOM FINSOL01 27
  IF ~IsValidForPartyDialog("Kiara")
!Global("KiaraRomanceActive","GLOBAL",2)~ THEN EXTERN ~kiar25j~ Knoromance1
END

EXTEND_BOTTOM FINSOL01 31
  IF ~IsValidForPartyDialog("Kiara")
Global("KiaraRomanceActive","GLOBAL",2)~ THEN EXTERN Kiar25j Knoromance2
END

// Isaya : fixed IsValidForPartyDialog("Kiaraa")
EXTEND_BOTTOM FINSOL01 32
  IF ~IsValidForPartyDialog("Kiara")
Global("KiaraRomanceActive","GLOBAL",2)~ THEN EXTERN Kiar25j Krom2
END


APPEND FINSOL01
  IF ~~ THEN BEGIN KIARAdd1
    SAY @37 /* ~The time has come to make your choice, Bhaalspawn.  What is your wish?~ */  /* #67885 */
COPY_TRANS FINSOL01 28
  END
END

REPLACE FINSOL01
  IF ~~ THEN BEGIN 28
    SAY @38 /* ~(Solar looks at you intently, anticipating your decision.)~ */
    IF ~Global("KiaraRomanceActive","GLOBAL",2)~ THEN EXTERN Kiar25j Krom1
    IF ~!Global("KiaraRomanceActive","GLOBAL",2)~ THEN EXTERN FINSOL01 KIARAdd1
  END
END


// WRAITH EXTENSIONS
// -----------------
EXTEND_BOTTOM HGWRA01 24
  IF ~Global("LovedOne","GLOBAL",16)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("kzcutwra")~ EXIT
END

EXTEND_BOTTOM HGWRA01 18
  IF ~IsValidForPartyDialogue("Kiara")
Global("KiaraRomanceActive","GLOBAL",2)~ THEN EXTERN HGWRA01 KzKiarWraith1
END

APPEND HGWRA01
  IF ~~ THEN BEGIN KzKiarWraith1
    SAY @39 /* ~What of the inevitable pain you must give to the one you love? The young monk you call 'Kiara'?~ */
    IF ~~ THEN DO ~SetGlobal("LovedOne","GLOBAL",16)~ EXTERN Kiar25J KzKiarWraith2
  END
END


// VOLO
// ----
EXTEND_TOP SARVOLO 9
IF ~InParty("Kiara")~ THEN REPLY @40 /* ~Tell me about Kiara.~ */ GOTO KiaraVolo
END

CHAIN SARVOLO KiaraVolo
@41 /* ~First raised a monk in the solitude of an old monastery, Kiara became an outcast from Kyoro and fled her land with fierce determination of revenge. On the way to our shores she pacted with a powerful demon, ready to sweep our land with destructive force until she met the powerful bhaalspawn <CHARNAME>.  Through his undying love and patience, the red demon has been tamed and her soul salvaged from the tortures of the abyss. ~ */
== KIAR25J IF ~InParty("Kiara")~ THEN @42 /* ~Your story is grossly exagerated Volo.~ */
EXTERN SARVOLO 9

