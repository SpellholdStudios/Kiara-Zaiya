BEGIN BZAIYA

//DEMON DEAL KIARA DEAD

IF ~Global("DemonNotDeal","GLOBAL",3)~ THEN BEGIN ZaiMourn2
SAY @3700
IF ~~ THEN DO ~SetGlobal("DemonNotDeal","GLOBAL",4) SetGlobal("ZaiCursed","GLOBAL",1)~ EXIT
END


// END COMMENTS

IF ~~ THEN BEGIN ZaiSaem2
SAY @3701
IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ 12
IF ~Global("ThiefGroup","GLOBAL",1)~ THEN EXTERN ~PPSIME~ 1
END


IF ~~ THEN BEGIN BZIrenLifeTree1 // TREE OF LIFE BEFORE FIGHTING IRENICUS
  SAY @3709
COPY_TRANS Player1 33
END



//PLAYER1
EXTEND_BOTTOM player1 33
  IF ~InParty("Zaiya") Global("ZaiLifeTree1","GLOBAL",0)~ THEN DO ~SetGlobal("ZaiLifeTree1","GLOBAL",1)~ EXTERN player1 ZIrenLifeTree1
END

CHAIN IF ~Global("CERNDBABY","GLOBAL",2) 
Global("ZaiTalkCernd","GLOBAL",1)~ THEN BZAIYA ZaiCernd0
@3717 DO ~SetGlobal("ZaiTalkCernd","GLOBAL",2)~
== CERNDJ 
@3756
== BZAIYA
@3757 = @3758
== CERNDJ
@3759
== BZAIYA
@3760
== CERNDJ
@3761
== BZAIYA
@3762
== CERNDJ
@3763
== BZAIYA
@3764
== CERNDJ
@3765
== BZAIYA
@3766
== CERNDJ
@3767
== BZAIYA
@3718
EXIT

//CERND - ZAIYA BY BRI NO1
CHAIN IF ~Global("CERNDBABY","GLOBAL",2) 
Global("ZaiTalkCernd","GLOBAL",3)~ THEN BZAIYA ZaiCernd1
@3850 DO ~SetGlobal("ZaiTalkCernd","GLOBAL",4)~
== CERNDJ 
@3851
== BZAIYA
@3852 = @3853
== CERNDJ
@3854
== BZAIYA
@3855
== CERNDJ
@3856 = @3857 = @3858 = @3859 = @3860
== BZAIYA
@3861
== CERNDJ
@3862
== BZAIYA
@3863
EXIT

//CERND - ZAIYA BY BRI NO2
CHAIN IF ~Global("CERNDBABY","GLOBAL",2) 
Global("ZaiTalkCernd","GLOBAL",5)~ THEN BZAIYA ZaiCernd2
@3864 DO ~SetGlobal("ZaiTalkCernd","GLOBAL",6)~
== CERNDJ 
@3865
== BZAIYA
@3866
== CERNDJ
@3867 = @3868
== BZAIYA
@3869
== CERNDJ
@3870
== BZAIYA
@3871
EXIT

//CERND - ZAIYA BY BRI NO3
CHAIN IF ~Global("CERNDBABY","GLOBAL",2) 
Global("ZaiTalkCernd","GLOBAL",7)~ THEN BZAIYA ZaiCernd3
@3872 DO ~SetGlobal("ZaiTalkCernd","GLOBAL",8)~
== CERNDJ 
@3873
== BZAIYA
@3874
== CERNDJ
@3875
== BZAIYA
@3876
EXIT

//CERND - ZAIYA BY BRI NO4
CHAIN IF ~Global("CERNDBABY","GLOBAL",2) 
Global("ZaiTalkCernd","GLOBAL",9)~ THEN BZAIYA ZaiCernd4
@3877 DO ~SetGlobal("ZaiTalkCernd","GLOBAL",10)~
== CERNDJ 
@3878
== BZAIYA
@3879
== CERNDJ
@3880
== BZAIYA
@3882
== CERNDJ
@3883
== BZAIYA
@3884
EXIT

//CERND - ZAIYA BY BRI NO5 TRIGGERED BY TREE OF LIFE OR SULDA AREA
CHAIN IF ~Global("ZaiTalkCernd","GLOBAL",12)~ THEN BZAIYA ZaiCernd5
@3886 DO ~SetGlobal("ZaiTalkCernd","GLOBAL",13)~
== CERNDJ 
@3887
== BZAIYA
@3888
== CERNDJ
@3889 = @3890
== BZAIYA
@3891
== CERNDJ
@3892
== BZAIYA
@3893
== CERNDJ
@3894 = @3895
== BZAIYA
@3896 = @3897
END BKIARA KIACERND1



//CHAIN
CHAIN IF ~Global("ZaiTalkNalia","AR1302",1)~ THEN BZAIYA ZAINALIA1
@3713 DO ~SetGlobal("ZaiTalkNalia","AR1302",2)~
== BNALIA 
@3723
== BZAIYA
@3724
== NALIAJ
@3725
== BZAIYA
@3726
== NALIAJ
@3727
== BZAIYA
@3728
== NALIAJ
@3729
== BZAIYA
@3730
== NALIAJ
@3731
== BZAIYA
@3714
EXIT

CHAIN IF ~Global("SPRITE_IS_DEADLAVOK","GLOBAL",1)
See("Valygar") 
InParty("Valygar")
Global("KiaraTalkValy","GLOBAL",1)
!StateCheck("Valygar",STATE_SLEEPING)
Global("ZaiTalkValy","LOCALS",0)~ THEN BZAIYA ZaiValy1
@3721 DO ~SetGlobal("ZaiTalkValy","LOCALS",1)~
== VALYGARJ
@3735
== BZAIYA
@3736
== VALYGARJ
@3737
== BZAIYA
@3738
== VALYGARJ
@3739
== BZAIYA
@3740
== VALYGARJ
@3741
== BZAIYA
@3742
== VALYGARJ
@3743
== BZAIYA
@3744
== VALYGARJ
@3745
== BZAIYA
@3722
EXIT


CHAIN IF ~See("Aerie") 
InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("ZaiTalkAerie","LOCALS",0)~ THEN BZAIYA ZaiAerie1
@3719 DO ~SetGlobal("ZaiTalkAerie","LOCALS",1)~
== AERIEJ
@3746
== BZAIYA
@3747 = @3748
== AERIEJ
@3749
== BZAIYA
@3750 
== AERIEJ
@3751
== BZAIYA
@3752
== AERIEJ
@3753
== BZAIYA
@3754
== AERIEJ
@3755
== BZAIYA
@3720
EXIT 


CHAIN BZAIYA ZaiKeld2
@3768
== KELDORJ
@3769
== BZAIYA
@3770
== KELDORJ
@3771
== BZAIYA
@3772
== KELDORJ
@3773
== BZAIYA
@3774
== KELDORJ
@3775
== BZAIYA
@3710
EXIT

CHAIN Ppdesh ZaiDesh1
@3776
== BZAIYA
@3777
== PPDESH
@3778
== BZAIYA
@3779
== PPDESH
@3780
== BZAIYA
@3702 DO ~ReallyForceSpell(Myself,WIZARD_ALARM)~ //does not work
== PPDESH
@3703
END PPDESH 17

CHAIN BZaiya VZADD2
@3781
== BVICONI
@3782 = @3783
== BZaiya
@3784
== BVICONI
@3785
== BZAIYA
@3704
EXIT

CHAIN BZaiya JZADD2
@3786
== JANJ
@3787
== BZaiya
@3788
== JANJ
@3789
== BZaiya
@3790
== JANJ
@3791
== BZaiya
@3792
== JANJ
@3793
== BZaiya
@3794
== JANJ
@3795
== BZAIYA
@3705
EXIT

CHAIN BZaiya KZADD2
@3796
== KORGANJ
@3797
== BZaiya
@3798
== KORGANJ
@3799
== BZAIYA
@3706
== BKIARA IF ~InParty("Kiara") !Dead("Kiara")~ THEN
@3825
EXIT

CHAIN BZaiya JAZADD2
@3800
== JAHEIRAJ
@3801
== BZaiya
@3802
== JAHEIRAJ
@3803 = @3804
== BZAIYA
@3707
EXIT

CHAIN BZaiya ANZADD2
@3805
== ANOMENJ
@3806
== BZaiya
@3807
== ANOMENJ
@3808
== BZaiya
@3809
== ANOMENJ
@3810
== BZaiya
@3811 = @3812
== ANOMENJ
@3813
== BZaiya
@3814 = @3815 = @3816
== ANOMENJ
@3817
== BZAIYA
@3708
EXIT

CHAIN BZAIYA ZAIMISS2
@3715 DO ~SetGlobal("ZAIMISS","GLOBAL",3)~
== KIARAJ IF ~IsValidForPartyDialog("Kiara")~ THEN
@3831 
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN
@3832 
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN
@3833 
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN
@3834
== BZAIYA IF ~IsValidForPartyDialog("Zaiya")~ THEN
@3716
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN
@3835
EXIT


//SHIP DISEMBARK BRINLAW
EXTEND_BOTTOM PPSAEM 14
IF ~InParty("Zaiya")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
SetGlobalTimer("SaemonHasArrived","GLOBAL",600)
~ JOURNAL #20633 /* ~Chapter 4

Now that I have completed the tasks that Bodhi set out for me, which included the disruption of the Shadow Thieves and the assassination of the Shadowmaster, Aran Linvail himself, she has made several things quite a bit clearer.

Irenicus, the mage who kidnapped me, is Bodhi's brother.  She says she did not support his abduction of me, which was apparently done because I am a Child of Bhaal.  What Imoen and I perceived as torture was actually the mage trying to discover and activate "my true potential"... whether I wished to or not.
Bodhi wants to find her brother and gain access to the knowledge that he possesses, and for my aid she will turn over whatever information he has about me.  She will accompany me beyond this point, as Irenicus and Imoen are held at the same place: a fortress asylum called Spellhold on a remote island far from Amn.  The gold I gave her has been used to book passage with a privateer named Saemon Havarian.  Once I am at the island I will need to find a way into the asylum... although I do not know how Bodhi will participate, herself.  Soon I will have the answers I seek...~ */ FLAGS 128 EXTERN ~BZAIYA~ ZaiSaem2
END

EXTEND_BOTTOM PPSAEM 53
IF ~InParty("Zaiya")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ JOURNAL #20632 /* ~Chapter 4

I have completed the tasks that Aran Linvail set out for me, including destroying the rival guild that Bodhi had set up and forcing the vampire herself to flight, and now the Shadowmaster has enlightened me about several things.

The Shadow Thieves were the ones who attacked Irenicus in the dungeon that I awoke in.  They had heard about my kidnapping, but not thought much of it... but then Bodhi's guild appeared and many of the Shadow Thieves began to disappear.  They managed to track down Irenicus' dungeon and linked it to Bodhi... and I was witness to their subsequent disastrous assault.
Aran feels partly responsible for Imoen's kidnapping, and told me that she and Irenicus were taken to the same place: an island asylum for mages called Spellhold.  The gold I supplied was used to book passage to the isle, and it is there that I will find the answers I seek.  Aran warns me, though, that the asylum is a veritable fortress meant to contain insane wizards and other 'deviants'... and even gaining entry will be a feat unto itself.  Regardless, passage with a privateer named Saemon Havarian has been booked and I am on my way...~ */ FLAGS 128 EXTERN ~BZAIYA~ ZaiSaem2
END

//DESHARIK SEND TO ASYLUM
EXTEND_TOP Ppdesh 12
  IF ~InParty("Zaiya")~ THEN REPLY @3818 EXTERN Ppdesh ZaiDesh1
END

ADD_TRANS_TRIGGER CERNDP 10 ~!InParty("Zaiya")~
EXTEND_TOP CERNDP 10
  IF ~InParty("Zaiya")~ THEN DO ~SetGlobal("CerndBaby","GLOBAL",2)~ GOTO 11
END

APPEND BKELDOR 
IF WEIGHT #-2 ~Global("KeldorTalkKia","GLOBAL",1)
See("Zaiya")
!Dead("Zaiya")	 
InParty("Zaiya")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("ZaiTalkKeld","LOCALS",0)~ THEN BEGIN ZaiKeld1
SAY @3819 
IF ~~ THEN DO ~SetGlobal("ZaiTalkKeld","LOCALS",1)~ EXTERN BZAIYA ZaiKeld2
END
END

APPEND BVICONI
IF WEIGHT #52 ~InParty("Zaiya")
See("Zaiya") 
!StateCheck("Zaiya",STATE_SLEEPING) 
Global("VicTalkZai","LOCALS",0)~ THEN BEGIN VZADD1
SAY @3820 
IF ~~ THEN DO ~SetGlobal("VicTalkZai","LOCALS",1)~ EXTERN BZaiya VZADD2
END
END

APPEND BJAN
IF WEIGHT #-1 ~InParty("Zaiya") 
See("Zaiya") 
!StateCheck("Zaiya",STATE_SLEEPING) 
Global("JanTalkZai","LOCALS",0)~ THEN BEGIN JZADD1
SAY @3821 
IF ~~ THEN DO ~SetGlobal("JanTalkZai","LOCALS",1)~ EXTERN BZaiya JZADD2
END
END

APPEND BKORGAN
IF WEIGHT #-1 ~InParty("Zaiya") 
See("Zaiya") 
!StateCheck("Zaiya",STATE_SLEEPING) 
Global("KorTalkZai","LOCALS",0)~ THEN BEGIN KZADD1
SAY @3822 
IF ~~ THEN DO ~SetGlobal("KorTalkZai","LOCALS",1)~ EXTERN BZaiya KZADD2
END
END

APPEND BJAHEIR
IF WEIGHT #55 ~InParty("Zaiya") 
See("Zaiya")
!StateCheck("Zaiya",STATE_SLEEPING) 
Global("jatalkZa","LOCALS",0)~ THEN BEGIN JAZADD1
SAY @3823 
IF ~~ THEN DO ~SetGlobal("jatalkZa","LOCALS",1)~ EXTERN BZaiya JAZADD2
END
END

APPEND BANOMEN
IF WEIGHT #40
~InParty("Zaiya") 
See("Zaiya")
!StateCheck("Zaiya",STATE_SLEEPING)
Global("AnomenIsKnight","GLOBAL",1) 
Global("AnomenBanter","GLOBAL",1) 
Global("antalkZa","LOCALS",0)~ THEN BEGIN ANZADD1
SAY @3824 
IF ~~ THEN DO ~SetGlobal("antalkZa","LOCALS",1)~ EXTERN BZaiya ANZADD2
END
END

APPEND BCERND
IF ~Global("ZaiTalkCernd","GLOBAL",11)~ THEN BEGIN CERNZAI1
SAY @3885
IF ~~ THEN DO ~SetGlobal("ZaiTalkCernd","GLOBAL",12)~ EXTERN BZAIYA ZaiCernd5
END
END

APPEND player1
  IF ~~ THEN BEGIN ZIrenLifeTree1
    SAY @3826
    IF ~~ THEN REPLY @3827 EXTERN BZAIYA BZIrenLifeTree1
    IF ~~ THEN REPLY @3828 EXTERN BZAIYA BZIrenLifeTree1
    IF ~~ THEN REPLY @3829 EXTERN BZAIYA BZIrenLifeTree1
END
END

//MINSC-ZAIYA 

APPEND MINSCJ
IF ~Global("ZAIMISS","GLOBAL",2) HasItem("ZACHIK",Myself)~ THEN BEGIN ZAIMISS1
SAY @3830 
IF ~~ THEN EXTERN BZAIYA ZAIMISS2
END
END