APPEND KIARAJ

IF ~~ THEN BEGIN chat1
SAY @2500

 IF ~RandomNum(3,1)~ THEN REPLY @2501 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraHug1
 IF ~RandomNum(3,2)~ THEN REPLY @2501 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraHug2
 IF ~RandomNum(3,3)~ THEN REPLY @2501 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraHug3

 IF ~RandomNum(2,1)~ THEN REPLY @2502 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraThrust1
 IF ~RandomNum(2,2)~ THEN REPLY @2502 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraThrust2
  
 IF ~RandomNum(2,1)~ THEN REPLY @2503 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraHair1
 IF ~RandomNum(2,2)~ THEN REPLY @2503 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraHair2

 IF ~RandomNum(3,1)~ THEN REPLY @2504 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraSmile1
 IF ~RandomNum(3,2)~ THEN REPLY @2504 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraSmile2
 IF ~RandomNum(3,3)~ THEN REPLY @2504 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraSmile3


 IF ~RandomNum(2,1)~ THEN REPLY @2505 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraCheek1
 IF ~RandomNum(2,2)~ THEN REPLY @2505 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraCheek2

 IF ~RandomNum(2,1)~ THEN REPLY @2506 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraRump1
 IF ~RandomNum(2,2)~ THEN REPLY @2506 DO ~IncrementGlobal("FWKiaraFlirt","GLOBAL",1)~ GOTO KiaraRump2

 IF ~~ THEN REPLY @2507 EXIT
END 

IF ~~ THEN BEGIN KiaraHug1
SAY @2508
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraHug2
SAY @2509
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraHug3
SAY @2510
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraThrust1
SAY @2511
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraThrust2
SAY @2512
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraHair1
SAY @2513
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraHair2
SAY @2514
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraSmile1
SAY @2515
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraSmile2
SAY @2516
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraSmile3
SAY @2517
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KiaraCheek1
SAY @2518
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraCheek2
SAY @2519
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraRump1
SAY @2520 = @2521
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KiaraRump2
SAY @2522 = @2523
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN chat2
SAY @2524
IF ~~ THEN EXIT
END

END