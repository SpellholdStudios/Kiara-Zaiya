BEGIN OSAN

//OSAN	
IF ~True()~ THEN BEGIN 0
  SAY @0 /* ~Kiara? Is that you?~ */
  IF ~~ THEN EXTERN Kiar25j KzOsan1
END

IF ~~ THEN BEGIN KzOsan2
  SAY @1 /* ~Yes it is., I am dead Kiara and for this, the blame is your own. No longer can we lie together, whether in close chamber or under a star-laden sky. This I am denied...because of you.~ */
  IF ~~ THEN EXTERN Kiar25j KzOsan3
END

IF ~~ THEN BEGIN KzOsan4
  SAY @2 /* ~No, don't blame your own mistakes on others. Besides, I never wanted this relationship...You forced it upon me. You and your childish games killed me...~ */
  IF ~~ THEN EXTERN Kiar25j KzOsan5
END

IF ~~ THEN BEGIN KzOsan6
  SAY @3 /* ~You never loved anyone but yourself Kiara... The fact you stand with flood flowing in your veins is testament to that. All I have is memories of emotion and feeling. Your selfishness caused my death.~ */
  IF ~~ THEN EXTERN Kiar25j KzOsan7
END

//KIARA
APPEND Kiar25j
  IF ~~ THEN BEGIN KzOsan1
    SAY @4 /* ~Osan? No, this can not be...You are...dead...~ */   
  IF ~~ THEN EXTERN Osan KzOsan2
  END
END

APPEND Kiar25j
  IF ~~ THEN BEGIN KzOsan3
    SAY @5 /* ~No, Osan, you know this wasn't...it was Balthazar...He did this to you...us...~ */   
  IF ~~ THEN EXTERN Osan KzOsan4
  END
END

APPEND Kiar25j
  IF ~~ THEN BEGIN KzOsan5
    SAY @6 /* ~No, I, I loved you Osan...How can you say such things, this is just not possible...~ */
  IF ~~ THEN EXTERN Osan KzOsan6
  END
END

APPEND Kiar25j
  IF ~~ THEN BEGIN KzOsan7
    SAY @7 /* ~No! Please, stop it. This is unfair...~ */
   IF ~~ THEN REPLY @8 /* ~Valas, this wasn't her fault! Stop this!~ */ EXTERN HGWRA01 25
   IF ~~ THEN REPLY @9 /* ~Stop, Gorion! She doesn't deserve this!~ */ EXTERN HGWRA01 25
   IF ~~ THEN REPLY @10 /* ~Enough! I won't allow this to continue!~ */ EXTERN HGWRA01 25
   IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY @11 /* ~Don't you believe it, Kiara! It's a lie!~ */ EXTERN HGWRA01 25
  END
END
