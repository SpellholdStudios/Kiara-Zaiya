BEGIN ZAI25J

EXTEND_TOP SARVOLO 9
IF ~InParty("Zaiya")~ THEN REPLY @0 /* ~Tell me about Zaiya.~ */ GOTO ZaiyaVolo
END

CHAIN SARVOLO ZaiyaVolo
@1 /* ~From a lost child in Maztica afflicted and cursed, hesitant and shy, blundering her spells most of the time,  Zaiya has grown into a powerful mage arraying her spells againts <PRO_HESHE>'s ennemies with skillfull determination. Beware adventurer, her blunders are no longer in your favor and you may well see a demon close at her side.~ */
== ZAI25J IF ~InParty("Zaiya")~ THEN @2 /* ~I wished my curse was not mentionned in this book of yours Volo~ */
== SARVOLO
@3 /* ~I strongly disapprove. Tragedy often leads to greatness and legend. Failing to mention your affliction would only diminish your true character.~ */ 
EXTERN SARVOLO 9
