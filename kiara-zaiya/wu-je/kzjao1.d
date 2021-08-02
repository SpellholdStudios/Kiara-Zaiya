// Isaya: dialog traified, texts moved to KZJAO1.tra
BEGIN KZJAO1

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 /* ~You don't mind if I do all the taking. You see, my monk friend WUJE here has woed silence.~ */ 
  IF ~~ THEN REPLY @1 /* ~Who are you?~ */ GOTO 1
  IF ~~ THEN REPLY @2 /* ~What do you want?~ */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Are you another merry band of adventurers keen on testing steel?~ */ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4 /* ~My name is Jao and there sure is no need for a mundane introduction. I am here to kill you.~ */ 
  IF ~~ THEN REPLY @3 /* ~Are you another merry band of adventurers keen on testing steel?~ */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~Who doesn't want to these days?~ */ GOTO 2a
  IF ~~ THEN REPLY @6 /* ~Are you a bounty hunter?~ */ GOTO 2a
END

IF ~~ THEN BEGIN 2
  SAY @7 /* ~Merry band is hardly the term. Though you have grown powerful, wear gear that we could barely dream of, and are twice our number, we fully know our business. We are elite assassins.~ */ 
  IF ~~ THEN REPLY @8 /* ~Assassins?~ */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~If you know what you are up against, why not give up whilst you still have a chance?~ */ GOTO 4
END

IF ~~ THEN BEGIN 2a
  SAY @10 /* ~Though you have grown powerful, wear gear that we could barely dream of, and are twice our number, we fully know our business. We are elite assassins.~ */ 
  IF ~~ THEN REPLY @8 /* ~Assassins?~ */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~If you know what you are up against, why not give up whilst you still have a chance?~ */ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @11 /* ~You probably never heard of us for our abode sits in far away lands but nonetheless we are part of the most powerful guild of assassins in Faerun.~ */ 
  IF ~~ THEN REPLY @9 /* ~If you know what you are up against, why not give up whilst you still have a chance?~ */ GOTO 4
  IF ~~ THEN REPLY @12 /* ~Why do want to kill me?~ */ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @13 /* ~We have never left anything to chance and this is why we are challenging you today. Whether prepared or not my skills far exceed yours when it comes to murder.~ */ 
  IF ~~ THEN REPLY @14 /* ~Why do you want to kill me?~ */ GOTO 5
  IF ~~ THEN REPLY @15 /* ~My origins may place me beyond your grasp.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @16 /* ~Our employer pays well. But his name is hardly worth mentionning.~ */ 
  IF ~~ THEN REPLY @17 /* ~Fine then, I tire of this endless talk. Let's fight!~ */  DO ~SetGlobal("WUJESTART","GLOBAL",1) Enemy()~ EXIT
  IF ~~ THEN REPLY @18 /* ~And could I know the name of the benefactor who wants me dead?~ */  GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @19 /* ~Yes, we are well aware of your origins but shall not retreat before mere details. You see...I was born immune to all kind of damage. A blessing that serves me well.~ */ 
  IF ~~ THEN REPLY @20 /* ~Fine then, I've heard enough let's fight!~ */  DO ~SetGlobal("WUJESTART","GLOBAL",1) Enemy()~ EXIT
  IF ~~ THEN REPLY @18 /* ~And could I know the name of the benefactor who wants me dead?~ */  GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @21 /* ~His name is of no consequence to our little chat. Besides, we never disclose any names. Let's say your origin has drawn the attention of powerful likewise opponents. But I shall say no more.~ */ 
  IF ~~ THEN DO ~SetGlobal("WUJESTART","GLOBAL",1) Enemy()~ EXIT
END


