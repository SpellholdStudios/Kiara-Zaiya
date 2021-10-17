BEGIN BKIAR25

IF ~Global("ExpLoveTalk","LOCALS",2)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 0
SAY @0 /* ~(With her gaze scrutinizing the sky and her face bathing in the radiant sun, Kiara hums an unfamiliar tune.)~ */ 
IF ~~ THEN REPLY @1 /* ~I've never seen you like this before Kiara.~ */ GOTO 1
IF ~~ THEN REPLY @2 /* ~This tune seems familiar but I do not recognize it. Is it from your homeland?~ */ GOTO 1
IF ~~ THEN REPLY @3 /* ~(Don't disturb Kiara)~ */ GOTO 2
END

IF ~~ THEN BEGIN 1
SAY @4 /* ~(As if an enchantment spell had been broken, Kiara turns towards you with a startled look.) Sorry, what did you say?~ */
IF ~~ THEN REPLY @5 /* ~I've never seen you like this before, you seem quite happy today.~ */ GOTO 3
IF ~~ THEN REPLY @6 /* ~I was wondering about the tune you were singing. It seems familiar but at the same time I fail to put a name on it.~ */ GOTO 4
IF ~~ THEN REPLY @7 /* ~I've never seen you like this before, what's on our mind Kiara?.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2
SAY @8 /* ~(Kiara looks as if in a trance, her eyes lost in the horizon, she stays motionless. After a few minutes and as if an enchantment spell had been broken, she slowly turns her gaze towards you and smiles).~ */
IF ~~ THEN REPLY @9 /* ~That tune you were singing sounds familiar but I can not recognize it.~ */ GOTO 4
IF ~~ THEN REPLY @10 /* ~I've never seen you like this before, what's on our mind Kiara?~ */ GOTO 4
END

IF ~~ THEN BEGIN 3
SAY @11 /* ~I feel elated by this new found freedom and foremost you, my love. Six months ago, the world was dark and gloomy without the slightest light of hope. It all seems so unreal....and happened so fast.~ */ 
IF ~~ THEN REPLY @12 /* ~I understand your feelings. It must feel a great relief to be freed.~ */ GOTO 6
IF ~~ THEN REPLY @13 /* ~That tune you were singing sounded familiar but I can not recognize it~ */ GOTO 3
END

IF ~~ THEN BEGIN 4
SAY @14 /* ~It is an old song from our monastery. I wonder how you could possibly have heard it before. Did they have similar songs in Candlekeep?~ */ 
IF ~~ THEN REPLY @15 /* ~The East, the west, the north, the south...~ */ GOTO 5
IF ~~ THEN REPLY @5 /* ~I've never seen you like this before, you seem quite happy today.~ */ GOTO 2
END

IF ~~ THEN BEGIN 5
SAY @16 /* ~Tell me, are you talking riddles or you've just learned to speak kobold?~ */ 
IF ~~ THEN REPLY @17 /* ~(Laugh) Not at all! But that tune reminds me of four priests in Candlekeep each singing to a cardinal direction : East, West, North, and South.~ */ GOTO 6
IF ~~ THEN REPLY @18 /* ~Kobold sounded more like Aaaarg whoaf whoaf.  ~ */ GOTO 7
END

IF ~~ THEN BEGIN 6
SAY @19 /* ~It seems I brought back fond memories of a lost time.~ */ 
IF ~~ THEN REPLY @20 /* ~I used to call Candlekeep my home but it is lost.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7
SAY @21 /* ~Don't let melancholy trouble your mind, I'm sure after all his we may find a nice town and a comfortable place to lay our feet in front of a fire.~ */ 
IF ~~ THEN REPLY @22 /* ~And you can add making love all day on a bear fur.~ */ GOTO 8
IF ~~ THEN REPLY @23 /* ~I could do with it now though I am not sure anyone will leave me in peace these days.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8
SAY @24 /* ~Bear fur! Its rustic but with you I'll settle for anything as long as it makes you happy.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
SAY @25 /* ~Perhaps later my love.~ */ 
IF ~~ THEN EXIT
END


/* ================================================== *
 *  AFTER THE WRAITH ENCOUNTER IN MARCHING MOUNTAINS  *
 * ================================================== */

IF ~Global("ExpLoveTalk","LOCALS",4)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 10
SAY @26 /* ~<CHARNAME>, do you really think I let down Osan?~ */
IF ~~ THEN REPLY @27 /* ~From the account you gave me, no.~ */ GOTO 11
IF ~~ THEN REPLY @28 /* ~Why? Did you?~ */ GOTO 12
IF ~~ THEN REPLY @29 /* ~Why look back on the past? We have more to worry now than ever.~ */ GOTO 13
END

IF ~~ THEN BEGIN 11
SAY @30 /* ~Why do I feel guilty then?.~ */
IF ~~ THEN REPLY @31 /* ~Do you really think you killed Osan?~ */ GOTO 12
IF ~~ THEN REPLY @32 /* ~You shouldn’t let that false apparition of Osan weaken your judgment. The past is exactly that, the past! We face more serious threats requiring all your strength.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12
SAY @33 /* ~No! Of course not. We loved each other deeply but nothing could have been done to save him.~ */
IF ~~ THEN REPLY @34 /* ~Well, then why look back on the past? We have more to worry now than ever before.~ */ GOTO 13
IF ~~ THEN REPLY @35 /* ~This is good to hear, now you should get over it.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13
SAY @36 /* ~It took me years to overcome and when I had finally drawn a line on my past, it suddenly re-emerges.~ */
IF ~~ THEN REPLY @37 /* ~I know how painful this must be but you are not to blame.., neither are you alone.~ */ GOTO 14
IF ~~ THEN REPLY @38 /* ~Think that the time of your revenge is yet to come...a way of honouring Osan's memory.~ */ GOTO 15
END

IF ~~ THEN BEGIN 14
SAY @39 /* ~I am glad you feel so too...You must feel I am weak though...~ */
IF ~~ THEN REPLY @40 /* ~Yes and I am glad to see some weaknesses in you...~ */ GOTO 16
IF ~~ THEN REPLY @41 /* ~Yes, but this shows that you are human after all.~ */ GOTO 17
IF ~~ THEN REPLY @42 /* ~Yes, you should be more cautious before having us all killed.~ */ GOTO 18
END

IF ~~ THEN BEGIN 15
SAY @43 /* ~You are right <GABBER>, though I sometimes feel such cold revenge may prove tasteless. You must feel I am weak though...~ */
IF ~~ THEN REPLY @44 /* ~Yes and after all that happened in your past I am glad to see finally some weaknesses in you...~ */ GOTO 16
IF ~~ THEN REPLY @45 /* ~Yes, it shows that you are human after all.~ */ GOTO 16
IF ~~ THEN REPLY @42 /* ~Yes, you should be more cautious before having us all killed.~ */ GOTO 18
END

IF ~~ THEN BEGIN 16
SAY @46 /* ~Perhaps it is an obedient and lascivious pleasure slave that you want, rather than a companion to fight at your side.~ */
IF ~~ THEN REPLY @47 /* ~I never meant that Kiara. I love you as you are. I merely stated that I did like to see more than a heartless fighting monk.~ */ GOTO 17
IF ~~ THEN REPLY @48 /* ~The thought crossed my mind once but no I'd rather have you as you are.~ */ GOTO 17
IF ~~ THEN REPLY @49 /* ~Are you offering?.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17
SAY @50 /* ~A reassuring thought, but I feel you wouldn't be totally unhappy if she was coming back.~ */
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
SAY @51 /* ~You are right, let's move on then.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
SAY @52 /* ~Well, I can still surprise you.~ */
IF ~~ THEN EXIT
END

// Planning for children. Does <CHARNAME> want children? 
// -----------------------------------------------------
IF ~Global("ExpLoveTalk","LOCALS",6)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 20
SAY @53 /* ~(with an assertive voice). I would like to bear a child from you...~ */
IF ~~ THEN REPLY @54 /* ~What?...Now!~ */ GOTO 21
IF ~~ THEN REPLY @55 /* ~Do you really think that in our predicament bearing a child is wise? All the remaining bhaalspawn have sworn my death.~ */ GOTO 22
IF ~~ THEN REPLY @56 /* ~I shall not yield to every lunatic whim of yours.~ */ GOTO 23
IF ~~ THEN REPLY @57 /* ~Let's adopt Zaiya, she behaves like a child at times and has proven quite useful.~ */ GOTO 21B
IF ~~ THEN REPLY @58 /* ~Our relationship is perfect as it is. I don't see the point of ruining it with a child.~ */ GOTO 24
IF ~~ THEN REPLY @59 /* ~Sorry, I can't bear any children...my heritage made me physically impotent.~ */ GOTO 21C
IF ~~ THEN REPLY @60 /* ~Are you bearing a child?~ */ GOTO 21A
END

IF ~~ THEN BEGIN 21
SAY @61 /* ~(with an even louder voice) Right here. Right now!~ */ = @62 /* ~Zaiya, please whisk way these bystanders.~ */
IF ~~ THEN REPLY @63 /* ~Are you mad?~ */ GOTO 23
IF ~~ THEN REPLY @64 /* ~Euh...Shouldn't we find a place a bit more comfortable such as an inn?~ */ GOTO 23
IF ~~ THEN REPLY @55 /* ~Do you really think that in our predicament bearing a child is wise? All the remaining bhaalspawn have sworn my death.~ */ GOTO 22
IF ~~ THEN REPLY @65 /* ~You're teasing me right?~ */ GOTO 23
IF ~~ THEN REPLY @66 /* ~(laugh) You're a hell of a woman and I'm all for it.~ */ GOTO 23
END

IF ~~ THEN BEGIN 21A
SAY @67 /* ~Why would I ask in the first place? I am serious <CHARNAME>.~ */
IF ~~ THEN REPLY @68 /* ~What!...Now!~ */ GOTO 21
IF ~~ THEN REPLY @55 /* ~Do you really think that in our predicament bearing a child is wise? All the remaining bhaalspawn have sworn my death.~ */ GOTO 22
IF ~~ THEN REPLY @56 /* ~I shall not yield to every lunatic whim of yours.~ */ GOTO 23
IF ~~ THEN REPLY @69 /* ~Let's adopt Zaiya, she is childish at times but has proven quite useful.~ */ GOTO 21B
IF ~~ THEN REPLY @58 /* ~Our relationship is perfect as it is. I don't see the point of ruining it with a child.~ */ GOTO 24
IF ~~ THEN REPLY @70 /* ~Sorry I can't bear any children...Euh...my heritage made me physically impotent~ */ GOTO 21C
END

IF ~~ THEN BEGIN 21B
SAY @71 /* ~(Laugh). If Zaiya was our daughter, I'm not sure it won't turn into an incestuous affair. ~ */ = @72 /* ~Seriously, I mean a child of our own.~ */
IF ~~ THEN REPLY @58 /* ~Our relationship is perfect as it is. I don't see the point of ruining it with a child.~ */ GOTO 24
IF ~~ THEN REPLY @55 /* ~Do you really think that in our predicament bearing a child is wise? All the remaining bhaalspawn have sworn my death.~ */ GOTO 22
IF ~~ THEN REPLY @70 /* ~Sorry I can't bear any children...Euh...my heritage made me physically impotent~ */ GOTO 21C
END

IF ~~ THEN BEGIN 21C
SAY @73 /* ~You did not seem impotent the last time we tried. I am serious in having a child though.~ */
IF ~~ THEN REPLY @74 /* ~Damn, you've seen right through me. But do you really think that in our predicament bearing a child is wise?~ */ GOTO 23
IF ~~ THEN REPLY @75 /* ~Very well then, let's adopt Zaiya, she is childish at times but has proven quite useful as a mage.~ */ GOTO 21B
IF ~~ THEN REPLY @68 /* ~What!...Now!~ */ GOTO 21
IF ~~ THEN REPLY @55 /* ~Do you really think that in our predicament bearing a child is wise? All the remaining bhaalspawn have sworn my death.~ */ GOTO 22
IF ~~ THEN REPLY @56 /* ~I shall not yield to every lunatic whim of yours.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22
SAY @76 /* ~At least have you carried the thought of it -I mean- having children.~ */
IF ~~ THEN REPLY @58 /* ~Our relationship is perfect as it is. I don't see the point of ruining it with a child.~ */ GOTO 24
IF ~~ THEN REPLY @77 /* ~My mind is currently focused elsewhere Kiara. All the remaining bhaalspawn have sworn my death.~ */ GOTO 25
IF ~~ THEN REPLY @78 /* ~Not really but shouldn't we discuss it privately.~ */ GOTO 26
END

IF ~~ THEN BEGIN 23
SAY @79 /* ~I'm just teasing you so don't get excited just now. I want to know if you have been thinking about it at least once.~ */
IF ~~ THEN REPLY @80 /* ~No, but I am willing to consider it.~ */ GOTO 25
IF ~~ THEN REPLY @81 /* ~Once but I swept this idea from my mind as quickly as I could.~ */ GOTO 24
IF ~~ THEN REPLY @77 /* ~My mind is currently focused elsewhere Kiara. All the remaining bhaalspawn have sworn my death.~ */ GOTO 25
IF ~~ THEN REPLY @82 /* ~Yes, I would like children too but I think the time is awfully wrong. We should wait until this ordeal is over.~ */ GOTO 25
END

IF ~~ THEN BEGIN 24
SAY @83 /* ~You are committed to share my bed but this as far as you are ready to go. If you are not willing to consider a woman's dearest wish then you may as well spend cold nights thinking about it.~ */
IF ~~ THEN DO ~SetGlobal("KiaraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 25
SAY @84 /* ~Nine months will pass before birth and this whole bhaalspawn ordeal should be over. By then, we should have settled.~ */
IF ~~ THEN REPLY @85 /* ~But don't forget you will have to fight whilst pregnant. Such hasty decision would be most unwise for you and the baby.~ */ GOTO 26
IF ~~ THEN REPLY @86 /* ~Aren't you a bit hasty? Shouldn't we marry first?~ */ GOTO 27
IF ~~ THEN REPLY @87 /* ~In all truth I don't want any children now nor in the future.~ */ GOTO 24
END

IF ~~ THEN BEGIN 26
SAY @88 /* ~I could rest in our pocket plane at times and besides it won't be really a problem during the first few months. The baby should be quite safe in that tough womb of mine.~ */
IF ~~ THEN REPLY @89 /* ~I am still not convinced.~ */ GOTO 28
IF ~~ THEN REPLY @90 /* ~I am still undecided, can't you give me some time to think over it?~ */ GOTO 28
END

IF ~~ THEN BEGIN 27
SAY @91 /* ~Your commitment towards our relationship is more than enough. I do not need additional proof of your love.~ */
IF ~~ THEN REPLY @92 /* ~But don't forget you will have to fight whilst pregnant. Such decision would be most unwise for you and the baby.~ */ GOTO 26
IF ~~ THEN REPLY @90 /* ~I am still undecided, can't you give me some time to think over it?~ */ GOTO 28
END

IF ~~ THEN BEGIN 28
SAY @93 /* ~Then take some time of you must. It may prove your hardest commitment thus far but if you truly love me you will understand it is my dearest wish.~ */
IF ~~ THEN EXIT
END


/* ========================= *
 *  AFTER SARADUSH MASSACRE  *
 * ========================= */

IF ~Global("ExpLoveTalk","LOCALS",8)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 29
SAY @94 /* ~I hope you do not blame yourself over Saradush's massacre...~ */
IF ~~ THEN REPLY @95 /* ~Why should I be laden with guilt?.~ */ GOTO 30
IF ~~ THEN REPLY @96 /* ~I feel partially responsible but innately know my heritage is the true perpetrator.~ */ GOTO 31
IF ~~ THEN REPLY @97 /* ~I am glad somebody has done the dirty work. I was not prone carrying out this ungrateful job myself.~ */ GOTO 32
END

IF ~~ THEN BEGIN 30
SAY @98 /* ~All these Bhaalspawn slaughtered like heedless cattle. Men, women and children alike. This is a profoundly disturbing thought.~ */ = @99 /* ~Though you may not be blamed directly, no one can deny you have an active role in the current events.~ */ 
IF ~~ THEN REPLY @100 /* ~I have done little less but try and save the city, though we were too late...I regret it.~ */ GOTO 33
IF ~~ THEN REPLY @101 /* ~I am not impervious to their gruesome fate, though little can be done.~ */ GOTO 33 
IF ~~ THEN REPLY @102 /* ~Somebody else took a duty off my shoulders, that is eliminating what I would have had to kill anyway. I am most grateful.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31
SAY @103 /* ~You still have control over your heritage, it would be foolish to blame fate or others for one's own actions.~ */
IF ~~ THEN REPLY @104 /* ~Yes, though I feel it is harder to control in these troubled times, the urge to kill and strike my enemies grows fiercer...~ */ GOTO 34
IF ~~ THEN REPLY @105 /* ~I have little control over my father's will, the Bhaalspawn in Saradush had to be killed...~ */ GOTO 32
END

IF ~~ THEN BEGIN 32
SAY @106 /* ~Is this how you feel for all these innocent people murdered in cold blood? What was their crime apart from being born with the wrong blood at the wrong time?~ */ = @107 /* ~Your heritage has turned you into what I despised most, may the gods preserve me from joining this madness.~ */ = @108 /* ~I hope you wake one day from this dreadful nightmare and recover your wits.~ */
IF ~~ THEN DO ~SetGlobal("KiaraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 33
SAY @109 /* ~I am glad to see you have not become a ruthless killer that quenches its thirst in Bhaalspawn blood.~ */ 
IF ~~ THEN REPLY @110 /* ~I do feel the same Kiara and this is why I like having you at my side.~ */ GOTO 36
IF ~~ THEN REPLY @111 /* ~In all truth, I think I quite liked all these deaths.~ */ GOTO 32
END

IF ~~ THEN BEGIN 34
SAY @112 /* ~As long as you hold on to some clear principles, you will not fail yourself and keep the murderous streak of your heritage at bay.~ */
IF ~~ THEN REPLY @113 /* ~And what kind of principle should I abide to?~ */ GOTO 35
IF ~~ THEN REPLY @114 /* ~Yes, I will not allow my father's instinct to rule over my own principle and force a bloodbath that I do not desire.~ */ GOTO 36
IF ~~ THEN REPLY @115 /* ~No, my father's heritage is in my grasp and I will not stop so close to it, even it means slaughtering the weak.~ */ GOTO 32
END

IF ~~ THEN BEGIN 35
SAY @116 /* ~I've tried my best in the past to surface the beast within you but you resisted.~ */ = @117 /* ~I hope that this madness has not changed your feelings.~ */
IF ~~ THEN REPLY @118 /* ~I do Kiara and this is why I like having you at my side.~ */ GOTO 34
IF ~~ THEN REPLY @119 /* ~No, my father's heritage is in my grasp and I will not stop so close to it, even it means disposing of the weak.~ */ GOTO 32
END

IF ~~ THEN BEGIN 36
SAY @120 /* ~I am glad to have found such a remarkable person as you. I am glad your determination dominates your father's instinct.~ */ = @121 /* ~I shall remain at your side for as long as you wish to.~ */
IF ~~ THEN EXIT
END

// Short romance story - picnic and small talk
// -------------------------------------------
IF ~Global("ExpLoveTalk","LOCALS",10)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 37
SAY @122 /* ~Don't you think this a perfect place for a picnic? Just you and I...~ */
IF ~~ THEN REPLY @123 /* ~Its dark and gloomy out here. Only a wraith would find the place romantic.~ */ GOTO 38
IF ~~ THEN REPLY @124 /* ~You're inviting?~ */ GOTO 39
IF ~~ THEN REPLY @125 /* ~It looks like I'm in for one of your delicious surprises.~ */ GOTO 40
END

IF ~~ THEN BEGIN 38
SAY @126 /* ~Hoping to cheer you up, I bought some candles and delicacies. It's all in my backpack for us to enjoy.~ */
IF ~~ THEN REPLY @127 /* ~I'm quite hungry and could eat a horse.~ */ GOTO 39
IF ~~ THEN REPLY @128 /* ~I'm not in a mood for a romantic picnic.~ */ GOTO 40
IF ~~ THEN REPLY @129 /* ~I can't wait to taste the desert.~ */ GOTO 39A
END

IF ~~ THEN BEGIN 39
SAY @130 /* ~(You and Kiara enjoy some exquisite roasted duck in wine and wild raspberry sauce.). Doesn't it feel great to enjoy a few moments of peace with a glass of this excellent Thayvian wine?~ */
IF ~~ THEN REPLY @131 /* ~Absolutely! This wine is great. Where did you get it from?~ */ GOTO 42
IF ~~ THEN REPLY @132 /* ~Did you cook that meal?~ */ GOTO 43
IF ~~ THEN REPLY @129 /* ~I can't wait to taste the desert.~ */ GOTO 39A
END

IF ~~ THEN BEGIN 39A
SAY @133 /* ~But I did not bring any!~ */
IF ~~ THEN REPLY @134 /* ~Ah! But you did. 'Cause you are the desert.~ */ GOTO 39B
END

IF ~~ THEN BEGIN 39B
SAY @135 /* ~(Laugh). I knew you were hungry but you should have said starving!~ */ = @136 /* ~I'm sorry but we'll have to shorten our lunch. I promised Zaiya to help her on some difficult translations of her new book.~ */
IF ~~ THEN REPLY @137 /* ~Well, just bring the main course then.~ */ GOTO 39
IF ~~ THEN REPLY @138 /* ~You just ruined my appetite.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40
SAY @139 /* ~I know you're too eager to finish this war but you look exhausted and should eat and rest.~ */
IF ~~ THEN REPLY @140 /* ~You are probably right.~ */ GOTO 39
IF ~~ THEN REPLY @141 /* ~There is no time to rest. We should keep moving,~ */ GOTO 41
END

IF ~~ THEN BEGIN 41
SAY @142 /* ~(My feet hurt so much, won't this ever stop?). ~ */
IF ~~ THEN EXIT
END

// Wine talk
// ---------
IF ~~ THEN BEGIN 42
SAY @143 /* ~I stole it from Gromnyr's wine cellar in Saradush!~ */
IF ~~ THEN REPLY @144 /* ~You cunning little thief!~ */ GOTO 44
IF ~~ THEN REPLY @145 /* ~No way!~ */ GOTO 44
IF ~~ THEN REPLY @146 /* ~He want have a need for it anymore and it proves an excellent prize after our troubles.~ */ GOTO 44
END

//Did she cook it?
IF ~~ THEN BEGIN 43
SAY @147 /* ~Never ask a women for all her secrets at once.~ */
IF ~~ THEN REPLY @148 /* ~Don't tell me you hired a troll cook and he's lurking somewhere to eat us all whilst asleep.~ */ GOTO 45
END

IF ~~ THEN BEGIN 44
SAY @149 /* ~Sure is. So just finish your glass and let's go.~ */
IF ~~ THEN REPLY @150 /* ~I was delicious we should do it more often.~ */ EXIT
IF ~~ THEN REPLY @151 /* ~The food was delicious and I bet you made it yourself.~ */ GOTO 43
END

IF ~~ THEN BEGIN 45
SAY @152 /* ~(Laugh). Noooo. Zaiya shot the duck with a couple of magic missiles this morning and the bird happened to fall roasted in some raspberry bushes. I just added the wine to an already excellent recipe.~ */
IF ~~ THEN REPLY @153 /* ~You are not serious, are you?.~ */ GOTO 44
END

// The question comes back. Followed by the love scene if a child is agreed upon
// -----------------------------------------------------------------------------
IF ~Global("ExpLoveTalk","LOCALS",12)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 48
SAY @154 /* ~Since it is bedtime, have you made up your mind my love?~ */
IF ~~ THEN REPLY @155 /* ~About what?~ */ GOTO 49
IF ~~ THEN REPLY @156 /* ~Hell no!~ */ GOTO 51
IF ~~ THEN REPLY @157 /* ~I would be quite happy too to have a child with you.~ */ GOTO 51
IF ~~ THEN REPLY @158 /* ~Euh...You mean on whether we should have a child.~ */ GOTO 52
IF ~~ THEN REPLY @159 /* ~Sorry, I did not find the time to think it over.~ */ GOTO 53
END

IF ~~ THEN BEGIN 49
SAY @160 /* ~You know too well what I am talking about my darling. Don't try and hide.~ */
IF ~~ THEN REPLY @161 /* ~Why do you wish to laden greater responsibilities on me when thousands of lives already depend on my success or failure?~ */ GOTO 52
IF ~~ THEN REPLY @162 /* ~I have no clue what you are talking about.~ */ GOTO 50
IF ~~ THEN REPLY @163 /* ~You mean on whether or not we should have a child.~ */ GOTO 51
IF ~~ THEN REPLY @164 /* ~I was teasing you but in the end nothing could please me more than having a child with you.~ */ GOTO 50
END

IF ~~ THEN BEGIN 50
SAY @165 /* ~Doesn't the responsibility frighten you?~ */
IF ~~ THEN REPLY @166 /* ~I'll do anything to keep you happy my love.~ */ GOTO 54
IF ~~ THEN REPLY @167 /* ~Yes, I must admit it scares me.~ */ GOTO 52
END

IF ~~ THEN BEGIN 51
SAY @168 /* ~If frightens you, doesn't it? We talk about having a baby and the great bhaalspawn runs and hides like a child who'd seen a ghost. ~ */ = @169 /* ~ Should I ask Zaiya to cast resist fear on you or will you manage a serious conversation on this subject?~ */
IF ~~ THEN REPLY @170 /* ~I give up. Please...~ */ GOTO 52
IF ~~ THEN REPLY @171 /* ~I admit my defeat and yes I am ready for a serious conversation. ~ */ GOTO 52
END

IF ~~ THEN BEGIN 52
SAY @172 /* ~Our fame, power and accumulated wealth shall always attract scores of enemies long after this nightmare is over. Someone can always find a reason to postpone something he does not want.  ~ */ = @173 /* ~If you scratch beneath the surface, you will find the sheer fear of the unknown. You may feel the comfort of your life will be shattered or perhaps the fear of failing as a father.  ~ */ = @174 /* ~You do not need to ascend to godhood to live forever. The lord of murder left his essence purposely to survive and so can you. Your children will bear each a little of your essence and through careful nurturing and education ultimately your heritage and memories.~ */
IF ~~ THEN REPLY @175 /* ~There is some truth but I have not set my mind on a clear path. Sorry, I won't have any child as of now.~ */ GOTO 55
IF ~~ THEN REPLY @176 /* ~You are right Kiara. If a child can make you happy then why should I deny you one?~ */ GOTO 54
IF ~~ THEN REPLY @177 /* ~A fine little speech Kiara but they may end up premature orphans.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53
SAY @178 /* ~It is as I feared. You will use any pretext to deny my motherhood.~ */
IF ~~ THEN REPLY @179 /* ~I...I surely don't want to lose you Kiara. If this is your dearest wish then I don't see how I could deny it ~ */ GOTO 54
IF ~~ THEN REPLY @180 /* ~Sorry, I still can't.~ */ GOTO 55
END

IF ~~ THEN BEGIN 54
SAY @181 /* ~May this night bring a new bloom and fresh hopes in our lives. Come my darling, I want to feel the sweetness of your embrace...~ */
IF ~~ THEN DO ~StartCutScene("KZ#Cut34")~  EXIT //add sleep
//IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("CUTL4")~ EXIT
END

IF ~~ THEN BEGIN 55
SAY @182 /* ~I feel you've denied us a future and thus separated our paths.~ */
IF ~~ THEN DO ~SetGlobal("KiaraRomanceActive","GLOBAL",3)~ EXIT
END

// Morning joke - quickie
// ----------------------
IF ~Global("ExpLoveTalk","LOCALS",14)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 60
SAY @183 /* ~Finally you awake...I hope you slept well last night.~ */
IF ~~ THEN REPLY @184 /* ~Very well thank you, why do you ask?~ */ GOTO 61
IF ~~ THEN REPLY @185 /* ~Is there something wrong with last night?~ */ GOTO 61
END

IF ~~ THEN BEGIN 61
SAY @186 /* ~You've been snoring like a stag rutting...I hardly had any sleep.~ */
IF ~~ THEN REPLY @187 /* ~Sorry if I disturbed you but why not wake me? ~ */ GOTO 62
END

IF ~~ THEN BEGIN 62
SAY @188 /* ~After the prowess you showed last night, I was too tired. The last thing I wanted was awaking a stag rutting in his sleep.~ */
IF ~~ THEN REPLY @189 /* ~Ahem... Now that I am awake perhaps I could show you...~ */ GOTO 63
END

IF ~~ THEN BEGIN 63
SAY @190 /* ~Don't burn all at once my dear fire elemental. Spare your energy for this new day.~ */
IF ~~ THEN EXIT
END

// The end of a long road - fear and apprehension
// ----------------------------------------------
IF ~Global("ExpLoveTalk","LOCALS",16)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BEGIN 64
SAY @191 /* ~The end of the road is near and I walk the last mile with apprehension...I wish the time would stop for a while.~ */
IF ~~ THEN REPLY @192 /* ~Fear not Kiara. We shall conquer all that lies ahead of us.~ */ GOTO 65
IF ~~ THEN REPLY @193 /* ~Is there something bothering you?~ */ GOTO 65
IF ~~ THEN REPLY @194 /* ~Melissan and whatever she plans for us will fail.~ */ GOTO 65
IF ~~ THEN REPLY @195 /* ~Ask Zaiya to cast time stop and your wish shall be fulfilled.~ */ GOTO 66
END

IF ~~ THEN BEGIN 65
SAY @196 /* ~Your powers have not reached their peak and yet I am left to ponder if the gap between us isn't widening to the point this relationship of ours becomes impossible.~ */ = @197 /* ~I like to consider myself as your strongest supporter but your destiny calls for the inevitable...~ */ = @198 /* ~I am no match for the flood of power that runs through your veins.~ */
IF ~~ THEN REPLY @199 /* ~This is where you are wrong Kiara, you will always have a place at my side.~ */ GOTO 67
IF ~~ THEN REPLY @200 /* ~I love you Kiara, nothing else matters.~ */ GOTO 67
IF ~~ THEN REPLY @201 /* ~You are my favourite Monk Kiara and so you will always be.~ */ GOTO 69
IF ~~ THEN REPLY @202 /* ~Perhaps, you are right. There is no place for you in my destiny~ */ GOTO 68
END

IF ~~ THEN BEGIN 66
SAY @203 /* ~I am not in a mood for jokes <GABBER>.~ */
IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 67
SAY @204 /* ~A sweet retribution for one who has made so many mistakes in her past. I am blessed to have found you <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68
SAY @205 /* ~Then let's move on <CHARNAME>, your destiny awaits.~ */
IF ~~ THEN DO ~SetGlobal("KiaraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 69
SAY @206 /* ~Perhaps you wish me to be the subject of my meditations or even worship you in the future.~ */
IF ~~ THEN REPLY @207 /* ~I have no other wish but to be at your side Kiara.~ */ GOTO 67
IF ~~ THEN REPLY @208 /* ~No, you are free to do as you wish Kiara, though you are right and I also feel it will be difficult to keep you at my side.~ */ GOTO 68
IF ~~ THEN REPLY @209 /* ~I would definitely like that. A god without worshippers would be a night without stars.~ */ GOTO 70
END

IF ~~ THEN BEGIN 70
SAY @210 /* ~You will always have a special place in my heart, you will not need my worship. Though I feel this calls for an end to our relationship. So, let's move on <CHARNAME> and face the inevitable.~ */
IF ~~ THEN DO ~SetGlobal("KiaraRomanceActive","GLOBAL",3)~ EXIT
END

// END OF LOVETALK


CHAIN
IF ~InParty("Kiara")
See("Kiara")
!StateCheck("Kiara",STATE_SLEEPING)
Global("KZTOBKiaraZaiya","GLOBAL",0)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BZAI25 KZTOBZaiyaHasEnough
@211 /* ~I fear Kiara that we'll never find a cure for my affliction. Many months have passed since this dreadful curse seized me.~ */
DO ~SetGlobal("KZTOBKiaraZaiya","GLOBAL",1)~
== BKIAR25
@212 /* ~You should look at the brighter side of your prospects. We are crossing new lands, encountering new people. I am convinced we will eventually find a cure.~ */ 
== BZAI25
@213 /* ~We have crossed the whole of Amn and found nothing encouraging. Besides, the genie said an answer lies in Maztica but never mentioned Faerun. I feel pretty much hopeless whilst roaming these lands.~ */ 
== BKIAR25
@214 /* ~You should let fate decide. So far luck has been on our side.~ */
== BZAI25
@215 /* ~How selfish of you. You mean you are the lucky one who found both relief from the clutch of evil and love at the same time.~ */
== BKIAR25
@216 /* ~Please understand, we can not part from <CHARNAME>. These are trouble times and he is in dire need of our support and help~ */ 
== BZAI25
@217 /* ~Your love for <CHARNAME> blinds you Kiara. One day, he may well reach powers beyond your grasp and leave you to your own fate.~ */ 
== BKIAR25
@218 /* ~A preposterous assumption that I do not share. Patience will settle it all.~ */ 
== BZAI25
@219 /* ~Your judgment is too impetuous to argue with.~ */ 
EXIT

CHAIN
IF ~InParty("Zaiya")
See("Zaiya")
!StateCheck("Zaiya",STATE_SLEEPING)
Global("KZTOBKiaraZaiya","GLOBAL",1)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BKIAR25 KZTOBZaiyaHasEnough1
@220 /* ~I must apologize Zaiya but I can not renounce to these blessings and jump on the first ship to Maztica.~ */
DO ~SetGlobal("KZTOBKiaraZaiya","GLOBAL",2)~
== BZAI25
@221 /* ~Understand me Kiara, I live with the thought of having to endure your company till the end of my mortal life and there seems to be no reprieve from a charitable hand. I feel caged by a bond I have grown weary of. I have grown jealous and been profoundly wounded seeing you happy with <CHARNAME>. I wish a life of my own Kiara and not be the faithful dog following its masters.~ */
== BKIAR25
@222 /* ~I...I...don't know what to say. I never thought you'd come to hate me so much....~ */
== BZAI25
@223 /* ~You took care of my health Kiara, but neglected my inner feelings.~ */
EXIT

CHAIN
IF ~InParty("Zaiya")
See("Zaiya")
!StateCheck("Zaiya",STATE_SLEEPING)
Global("KZTOBKiaraZaiya","GLOBAL",2)
Global("KiaraRomanceActive","GLOBAL",2)~ THEN BKIAR25 KZTOBZaiyaHasEnough2
@224 /* ~Sisters should forgive one another and not hold senseless grudges. I would like to spend more time closer to you and renew the old bond of friendship.~ */ = @225 /* ~(Kiara extending her hand). Please hold my hand Zaiya. Let's walk this road together for a while and talk. You remember you're old master in Afyal...~ */
DO ~SetGlobal("KZTOBKiaraZaiya","GLOBAL",3)~
== BZAI25
@226 /* ~(Zaiya hesitantly extends her hand). I do.~ */
== BKIAR25
@227 /* ~Wouldn't he be proud to see his former servant walk as a beautiful goddess over faerun?~ */
== BZAI25
@228 /* ~Are you trying flattery to appease my mood?~ */
== BKIAR25
@229 /* ~Yes. I confess I am trying to bribe you with sweet words but an enchantment spell wouldn't work either, wouldn't it?~ */
== BZAI25
@230 /* ~(giggle). Not a chance. I have grown a natural resistant to your vile.~ */
== BKIAR25
@231 /* ~I still think the poor man would stand gawking at you for a while and so would most of the people you knew.~ */
== BZAI25
@232 /* ~Oh yes they would. I have acquired confidence in my skills and no longer look at my wild surges with disdain but pride.~ */
== BKIAR25
@233 /* ~I promise you Zaiya that we shall return to your land one day free of this curse. All will admire the prodigal daughter of Afyal.~ */
== BZAI25
@234 /* ~Thank you Kiara.~ */
EXIT


CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("KZTOBKorganKiar","GLOBAL",0)~ THEN BKIAR25 KZTOBKorgaJoke
@235 /* ~Why do you stare are at me Korgan?~ */ 
DO ~SetGlobal("KZTOBKorganKiar","GLOBAL",1)~
== BKORGA25
@236 /* ~'tis look like you've softened much. I much preferred that fiery look in your eyes to that sheep gaze.~ */ 
== BKIAR25
@237 /* ~I'm glad to see your tongue still swirling like your axe. But tell me what do you do with that third leg of yours? Are you able to walk?~ */
== BKORGA25
@238 /* ~What are ye talkin' about girlie?~ */
== BKIAR25
@239 /* ~If I recall our last conversation you boasted about your ....hum...being as big as the shaft of your axe. Since your axe is about your size I was just wondering how you managed to walk unnoticed with such a large appendice.~ */
== BKORGA25
@240 /* ~Are ye trying to make fun of me girlie? 'cause me axe is getting itchy as we speak.~ */
== BKIAR25
@241 /* ~No, I'm dead serious.~ */
== BKORGA25
@242 /* ~Well, I've tied it round me left leg.~ */
== BKIAR25
@243 /* ~It must be quite painful at times.~ */
== BKORGA25
@244 /* ~Aye, you wouldn't massage me leg, would ye?~ */
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("",STATE_SLEEPING)
Global("KZTOBKiaraJaheira","GLOBAL",0)~ THEN BKIAR25 KZJaheiraMakeTruce
@245 /* ~I owe you an apology Jaheira. In the past, I may have said more than I really intended... I know I've hurt you're feelings.~ */
DO ~SetGlobal("KZTOBKiaraJaheira","GLOBAL",1)~
== BJAHEI25
@246 /* ~(Jaheira sneers). Are you really trying to pull my leg or has the sweet demonness really turned into a sheep? You have done more harm to those around you than all our enemies put together. Whatever you may wish to say to justify your past actions shall fall on deaf ears.~ */
== BKIAR25
@247 /* ~My past can not be undone and we may never be friends but we do share something in common that calls for understanding and mutual respect~ */
== BJAHEI25
@248 /* ~What could we possibly have in common?~ */ 
== BKIAR25
@249 /* ~Our dedication to <CHARNAME>'s cause. A bond in battle and our daily lives that transcends the need for harmful arguments.~ */ =  @250 /* ~If not then why do you heal my wounds after the battle or cure my diseases when I'm weak? I simply conclude that despite your hate you have dedicated your present life to greater goals.~ */  
== BJAHEI25
@251 /* ~Having common goals calls hardly for a truce in my inner feelings towards you. At most I am willing to concede that you have improved somewhat your ways lately but do not expect kindness.~ */ = @252 /* ~Lets not waste time and admit that between us the rift is too wide too cross.~ */  
== BKIAR25
@253 /* ~Gaps can always be crossed but one has to be willing to build bridges. I can and will not force you.~ */
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("KZTOBKiaraViconia","GLOBAL",0)~ THEN BKIAR25 KZViconiaNewLife
@254 /* ~Viconia, to say the least, you haven't changed much these past months...I would have thought your time on the surface would have filled you out~ */
DO ~SetGlobal("KZTOBKiaraViconia","GLOBAL",1)~
== BVICON25
@255 /* ~The blood of the drow runs in my veins, Kiara, and nothing will ever change that.~ */
== BKIAR25
@256 /* ~You found sanctuary in this party Viconia, and lest your change your attitude you may well, one day, again, find yourself in serious trouble.~ */
== BVICON25
@257 /* ~A point worthy of attention, Kiara, though I feel I am quite capable of overcoming adversity...~ */
== BKIAR25
@258 /* ~Have you given much thought as to what you will do once we are through? Perhaps, will you join Drizzt in his fight?~ */
== BVICON25
@259 /* ~Certainly not! My skin shudders with disgust at the mere idea of it. He is a disgrace to all my kin.~ */
== BKIAR25
@260 /* ~Then perhaps a more secluded life in the worship of Shar?~ */
== BVICON25
@261 /* ~Why bother, Kiara? Surfacers shall always be oblivious of the way of the drow...and we of them.~ */
EXIT

CHAIN
IF ~InParty("Kiara")
See("Kiara")
!StateCheck("Kiara",STATE_SLEEPING)
Global("KZTOBKiaraSarevok","GLOBAL",0)~ THEN BSAREV25 KZSarevokDemon
@262 /* ~I was told you are a demonness of the abyss. But I see nothing more than a female monk enduring the hardship of a mortal life.~ */
DO ~SetGlobal("KZTOBKiaraSarevok","GLOBAL",1)~
== BKIAR25
@263 /* ~People often tend to exaggerate the truth.~ */
== BSAREV25
@264 /* ~I am intrigued. There must be some reason behind that fanciful nickname.~ */
== BKIAR25
@265 /* ~I once made a deal with a demon....~ */
== BSAREV25
@266 /* ~Exquisite...I can't wait to hear more.~ */
== BKIAR25
@267 /* ~I promised him to turn a good bhaalspawn to the forces of evil in exchange for revenge over an old foe of mine.~ */
== BSAREV25
@268 /* ~Revenge is always a powerful motive. I also guess that the bhaalspawn in question was <CHARNAME>...but so you failed...~ */       
== BKIAR25
@269 /* ~I am quite happy the demon's plot failed. I am relieved from a heavy burden.~ */ 
== BSAREV25
@270 /* ~I am surprised the demon released you so easily after failing him.~ */ 
== BKIAR25
 @271 /* ~A good Samaritan relieved me from his clutch. Ever since, people have called me the red demonness.~ */
== BSAREV25
@272 /* ~An intriguing tale.~ */ 
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("KZTOBKiaraKeldorn","GLOBAL",0)~ THEN BKIAR25 KZTOBKeldornRetirementPlan
@273 /* ~So tell me old knight, what do you plan for your retirement? gardening or sitting at the nearest tavern recounting your exploits, a glass of ale in your hand.~ */
DO ~SetGlobal("KZTOBKiaraKeldorn","GLOBAL",1)~
== BKELDO25
@274 /* ~(Evil it seems can never be chased). Are you mocking me Kiara? ~ */ 
== BKIAR25
@275 /* ~You are prompt to judge people through Helm's eye but in all truth I was simply teasing you.~ */ 
== BKELDO25
@276 /* ~For a moment you had me fooled. Old knights don't really plan retirement but one thing is sure I am far better with a sword than a spade or a hoe.  As for the old drunkard knight boasting and brawling in some dark infamous tavern I seldom envy such pitiful end. All I hope for now is to see one day my children grow.~ */
== BKIAR25
@277 /* ~And I sincerely hope you will.~ */
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("KZTOBJanKiara","GLOBAL",0)~ THEN BKIAR25 KZTOBJanCousinBertha
@278 /* ~Tell me Jan about your cousin Bertha with hands as big as her feet. Was it a hoax or did you make up the story especially for me?~ */
DO ~SetGlobal("KZTOBJanKiara","GLOBAL",1)~
== BJAN25
@279 /* ~Well Kiki, ...Hum... I hope you don't mind or should I call you the red demonness that harasses harmless gnomes?~ */
== BKIAR25
@280 /* ~Simply call me Kiara.  The red demonness that harasses harmless gnomes may prove wishful thinking turning reality.~ */
== BJAN25
@281 /* ~Let's settle for Kiki. It’s short enough for my ever failing memory. Anyway the story about Bertha is true, her mum actually married a Halfling but not a normal Halfling. He had huge feet as hairy and bushy as spider's fur. He usually hid them under huge boots that never left him even when in bed, or so the story tells. I once went to his home but found nobody answering my calls so I peeked innocently through his bedroom door...I must say people often exaggerate when relating stories.~ */
== BKIAR25
@282 /* ~You mean his feet were smaller than you expected.~ */
== BJAN25
@283 /* ~No. His feet were huge but he took his boots off before sleeping.~ */
== BKIAR25
@284 /* ~Still, I'm confused. How did Bertha get hands as big as her feet?~ */
== BJAN25
@285 /* ~Oh but that the best part of the story. Her parents were once on the way to the market with little Bertha to buy some turnips when they met with Uncle Dimpfeltrop...~ */
== BKIAR25
@286 /* ~(Looking bored and yawning purposely). I can't wait to hear it. Perhaps another time, I somehow feel tired now.~ */
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("KZTOBKiaraImoen","GLOBAL",0)~ THEN BKIAR25 KZTOBImoenSisLawTalk
@287 /* ~You have known <CHARNAME> for so long. I do envy you~ */
DO ~SetGlobal("KZTOBKiaraImoen","GLOBAL",1)~
== BIMOEN25
@288 /* ~(laugh). If you had known him as long as I do, may be you'd pity me. I am glad you have changed Kiara. It used to send chills in my back each time I looked at you and my brother.~ */
== BKIAR25
@289 /* ~You disapproved and it is understandable. Is it still the case as of now?~ */
== BIMOEN25
@290 /* ~Let's say your probation has been extended and I look forward to your complete rehabilitation.~ */
== BKIAR25
 @291 /* ~Well, I look forward to get out of your jail quickly. Keep the key safe, I don't want to be locked in there eternally.~ */
== BIMOEN25
@292 /* ~No, I was just teasing you.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("KZTOBKiaraAnomen","GLOBAL",0)~ THEN BKIAR25 KZTOBAnomenCharity
@293 /* ~As I recall you much preferred adventure over a quiet life, did your eagerness not falter after enduring the hardship of this party?~ */
DO ~SetGlobal("KZTOBKiaraAnomen","GLOBAL",1)~
== BANOME25
@294 /* ~My fervor to <CHARNAME>'s cause is still unbroken. But I grow weary of all this spilt blood and sometimes wish this war was over.~ */
== BKIAR25
@295 /* ~It has taken a heavy toll indeed. But tell me have you thought of continuing your father's business once this adventure is over?~ */
== BANOME25
@296 /* ~The estate and my father's business bear too many distressing memories. I've already sold the lot to my father's enemy and donated most of the money to the order.~ */
== BKIAR25
@297 /* ~The order must have been most please. Did they promise you anything in return?~ */
== BANOME25
@298 /* ~I did not ask any favor in return though they did promise to put the gold to good use. They shall soon inaugurate an orphanage bearing my name.~ */
== BKIAR25
@299 /* ~The radiant heart is truly noble and you should be proud. But won't you miss the money on your return.~ */
== BANOME25
@300 /* ~My cleric skills and my mace should suffice to help the order with whatever is required of me. Besides, I still have some gold left.~ */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("KZTOBKiaraNalia","GLOBAL",0)~ THEN BKIAR25 KZTOBNaliaAndPoor
@301 /* ~Who do you consider poor Nalia?~ */
DO ~SetGlobal("KZTOBKiaraNalia","GLOBAL",1)~
== BNALIA25
@302 /* ~Anyone who has not enough money to sustain himself.~ */
== BKIAR25
@303 /* ~I have seen many of these beggars with two arms and legs, fit to work. They could offer to load ships, cultivate land or become fishermen. Or the council could make use of them to build or mend roads.~ */
== BNALIA25
@304 /* ~I don't want to hear any of your ridiculous theory on slavery!~ */
== BKIAR25
@305 /* ~No, they'd be paid of course.~ */
== BNALIA25
@306 /* ~Your idea makes no sense either way. ~ */
== BKIAR25
@307 /* ~Why not?~ */
== BNALIA25
@308 /* ~The Cowled wizards provide scores of  golems to mend the roads.~ */
== BKIAR25
@309 /* ~Indeed it explains why people remain poor but also why roads in Amn are so dangerous.~ */
EXIT

CHAIN3
IF ~InParty("Edwin")
InParty("Zaiya")
See("Edwin")
See("Zaiya")
!StateCheck("Edwin",STATE_SLEEPING)
!StateCheck("Zaiya",STATE_SLEEPING)
Global("KZTOBKiaraEdwin","GLOBAL",0)~ THEN BKIAR25 KZTOBEdwinContest
@310 /* ~Your conceit over your skills and your arrogance calls for a challenge.~ */
DO ~SetGlobal("KZTOBKiaraEdwin","GLOBAL",1)~
== BEDWIN25
@311 /* ~(He He...I do not see how these pathetic simians could ever win, let's accept). What do you have in mind, Kiara?~ */
== BKIAR25
@312 /* ~A magic contest between you and Zaiya.~ */
== BZAI25
@313 /* ~What! Shouldn't you consult me first before exposing me to harm's way?~ */
== BKIAR25
@314 /* ~(Kiara keeps looking at Edwin). So, what you say Edwin?~ */
== BEDWIN25
@315 /* ~(The poor girl is likely to blunder her spell). An excellent idea. On condition it is a fair match, meaning we drop any equipment likely to give an advantage.~ */
== BKIAR25
@316 /* ~I suggest you keep your *equipment* well out of sight Edwin, you may petrify poor Zaiya before she stands a chance. ~ */ = @317 /* ~ But yes, you'll both wear the same robes and be allowed some time for preparation.~ */
== BZAI25
@318 /* ~ Are you mad Kiara, the Thayvian has more spells in his repertoire than I could ever dream of.~ */
== BKIAR25
@319 /* ~(whispering in Zaiya's ear). Trust me, the fool barely stands a chance.~ */
== BEDWIN25
@320 /* ~So, what are the rules Kiara. Shall the battle end at first blood or shall we fight to death?~ */
== BKIAR25
@321 /* ~Neither...~ */
== BEDWIN25
@322 /* ~Then, what?~ */
== BKIAR25
@323 /* ~The battle ends when one of you polymorphs into Edwina.~ */
== BEDWIN25
@324 /* ~I should have known better. You were only trying to mock me Kiara.~ */
== BKIAR25
@325 /* ~Well then, it seems you just declined this challenge and conceded victory to Zaiya.~ */    
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("KZTOBKiaraAerie","GLOBAL",0)~ THEN BKIAR25 KZTOBAeriePrank
@326 /* ~Aerie, don't move! There's a bug in your hair!~ */ 
DO ~SetGlobal("KZTOBKiaraAerie","GLOBAL",1)~
== BAERIE25
@327 /* ~Ugh! Where?~ */
== BKIAR25
@328 /* ~Let me remove it for you. (Kiara moves towards Aerie and removes her hairpin)~ */
== BAERIE25
@329 /* ~Oh! Why did you do that for? You've messed up my hair Kiara.~ */
== BKIAR25
@330 /* ~Sorry I couldn't help doing something foolish today.~ */
EXIT

