BEGIN BZAI25

CHAIN
IF ~InParty("Zaiya")
See("Zaiya")
!StateCheck("Zaiya",STATE_SLEEPING)
Global("KZTOBKorganZai","GLOBAL",0)~ THEN BKORGA25 KZTOBKorgaZai
@0 /* ~Ye've been lucky so far lassy. Our chest has not been emptied by one of your stupid spells, else I'd have open yer guts and spilt yer blood.~ */ DO ~SetGlobal("KZTOBKorganZai","GLOBAL",1)~
== BZAI25
@1 /* ~Tell me Korgan is that all you care about, money. Have you not an eye for a women of your clan?~ */
== BKORGA25
@2 /* ~Aye. But how ye think she'll welcome me without a gold coin in me pocket?~ */
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("KZTOBEdwinZai","GLOBAL",0)
See("Kiara")
!StateCheck("Kiara",STATE_SLEEPING)~ THEN BZAI25 KZTOBEdwinZai
@3 /* ~Your array of spells is quite impressive and I wonder if all red wizards are as skilled~ */ DO ~SetGlobal("KZTOBEdwinZai","GLOBAL",1)~
== BEDWIN25
@4 /* ~My, but you are a flatterer! (the lass has her eyes on me)~ */
== BZAI25
@5 /* ~It was not on purpose, Edwin.~ */
== BEDWIN25
@6 /* ~Well, you will hardly find two Thayvians like me. I could show you some of my books and give you some lessons if you'd care to visit my chambers tonight.~ */
== BKIAR25
@7 /* ~(whispering to Zaiya). I would strongly advise you reject Edwin's offer, Zaiya. I doubt showing you his books to be is true motive.~ */
EXIT

CHAIN
IF ~InParty("Zaiya")
See("Zaiya")
!StateCheck("Zaiya",STATE_SLEEPING)
See("Kiara")
!StateCheck("Kiara",STATE_SLEEPING)
Global("KZTOBEdwinZai","GLOBAL",2)~ THEN BEDWIN25 KZTOBEdwinZai1
@8 /* ~Zaiya, the night is still early and I have not renegaded on my offer. I'd be quite happy if you'd joined me tonight in some new experiments.~ */ DO ~SetGlobal("KZTOBEdwinZai","GLOBAL",3)~
== BZAI25
@9 /* ~You've tickled my curiosity. What kind of experiment are you working on Edwin?~ */
== BKIAR25
@10 /* ~(whispering to Zaiya). Zaiya, don't listen to him. *You* are likely to be *his* experiment.~ */
== BEDWIN25
@11 /* ~Some powerful enchantment spells but I could need some help.~ */
== BZAI25
@12 /* ~Well, I'll be glad to help and see how you work on your spells Edwin.~ */
== BKIAR25
@13 /* ~(whispering to Zaiya). You are mad and don't call for help tonight. I have better things to do then coming to your rescue.~ */
EXIT

CHAIN
IF ~InParty("Kiara")
See("Kiara")
!StateCheck("Kiara",STATE_SLEEPING)
Global("KZTOBEdwinZai","GLOBAL",4)~ THEN BZAI25 KZTOBEdwinZai2
@14 /* ~You were quite right about Edwin's intentions last night. The man is pervert and vile.~ */ DO ~SetGlobal("KZTOBEdwinZai","GLOBAL",5)~
== BKIAR25
@15 /* ~Then, why the smile on your face Zaiya?~ */
== BZAI25
@16 /* ~Whilst reading his book on enchantment, he made the bold move to fondle my breasts...~ */ = @17 /* ~I got up angrily and smashed the book at his head. He fell almost immediately on the floor,...a clear knock out.~ */
== BKIAR25
@18 /* ~Hardly something to smile about, I would have thought you'd be still angry.~ */
== BZAI25
@19 /* ~The book fell open on a convenient page. A spell meant to quiet a man's envy for women.~ */
== BKIAR25
@20 /* ~Don't tell me you've used it on Edwin?~ */
== BZAI25
@21 /* ~I did.~ */
== BKIAR25
@22 /* ~How long does it last?~ */
== BZAI25
@23 /* ~Long enough to keep Edwin at bay for a few days. I've scribbled a few more scrolls just in case.~ */
== BKIAR25
@24 /* ~You *are* a wicked girl. May be I could use a few, you know, instead of the usual headache pretext!~ */
EXIT