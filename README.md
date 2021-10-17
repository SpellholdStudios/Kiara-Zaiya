
![Latest Release](https://img.shields.io/github/v/release/GwendolyneFreddy/Kiara-Zaiya?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![GitHub (Pre-)Release Date](https://img.shields.io/github/release-date-pre/GwendolyneFreddy/Kiara-Zaiya?color=gold)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macOS%20%7C%20linux%20%7C%20Project%20Infinity&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English%20%7C%20French%20%7C%20German%20%7C%20Russian%20%7C%20Spanish&color=limegreen)

![Supported games](https://img.shields.io/static/v1?label=supported%20games&message=BGII:ToB%20%7C%20BGT%20%7C%20BG2%3AEE%20%7C%20EET&color=dodgerblue)


<div align="center"><h1>Kiara Zaiya NPCs (WIP)</h1>

<h3>A mod hosted at Spellhold Studios for Baldur's Gate II:ToB (original and EE games),<br>
Baldur's Gate Trilogy and EET<h3>

</div><br>

**Authors:** Alan M.C., Seifer and Jesara  
**Mod Website:** <a href="">Spellhold Studios</a>  
**Mod Forum:** <a href="http://www.shsforums.net/forum/127-mod-resurrections">Mods Resurrections</a>

## 

[![Created Badge](https://badges.pufler.dev/created/GwendolyneFreddy/Kiara-Zaiya?style=plastic)](https://badges.pufler.dev)
![GitHub repo size](https://img.shields.io/github/repo-size/GwendolyneFreddy/Kiara-Zaiya?style=plastic)
[![Visits Badge](https://badges.pufler.dev/visits/GwendolyneFreddy/Kiara-Zaiya?color=cyan&style=plastic)](https://badges.pufler.dev) 
![Maintenance](https://img.shields.io/static/v1?label=maintained%3F&message=yes&color=greenlight&style=plastic)
![GitHub contributors](https://img.shields.io/github/contributors/GwendolyneFreddy/Kiara-Zaiya?color=blueviolet&style=plastic) [![Contributors Display](https://badges.pufler.dev/contributors/GwendolyneFreddy/Kiara-Zaiya?size=30&padding=5&bots=true)](https://badges.pufler.dev)

## 

:page_facing_up: <br>

## 

<div align="center">
<a href="#intro">Overview</a> &#8226; <a href="#compat">Compatibility</a> &#8226; <a href="#installation">Installation</a> &#8226; <a href="#details">Details</a> &#8226; <a href="#components">Components</a> &#8226; <a href="#faq">FAQ</a> &#8226; <a href="#credits">Credits and Acknowledgements</a> &#8226; <a href="#versions">Version History</a></br>
</div>

<hr>


## <a name="versions" id="versions"></a>Version History

##### Version 2.0.0 &nbsp;(October nn, 2021)

- Added *kiara-zaiya.ini* metadata file (including dynamic install order syntax and global `LABELS`) to support AL|EN's "Project Infinity".
- Renamed *Setup-Kiara-Zaiya.tp2* -> *kiara-zaiya.tp2* and moved it into top mod folder to support AL|EN's "Project Infinity".
- Replaced `AUTHOR` keyword with `SUPPORT`.
- Replaced `REQUIRE_FILE` condition with `REQUIRE_PREDICATE` to avoid installing the mod in inaccurate games.
- Added components `DESIGNATED` numbers.
- Externalized tp2 code into specific components *.tpa* libraries for more comfortable readability and maintenance.
- Commented code as much as possible.
- Grouped custom and vanilla sound sets into two main `SUBCOMPONENTS`.
- Added native EE and EET compatibility (thanks Austin!):
    - Added WeiDU's built-in `HANDLE_CHARSETS` function to convert string entries for EE games.
    - Added chapters continuity for EET games.
    - Added `ADD_JOURNAL` entries.
    - Rewrote sound set installation procedure to use WeiDU's built-in `HANDLE_AUDIO` function, and converted music file to .acm.
    - ...
    - Provided accurate sized NPC portraits for EE games.
- Updated outdated Detectable Spells v2.3 with less intrusive v4.0.1 that does not overwrite files any more.
- Included all BWP Fixpack fixes:
    - Lollorian's patched "*ar0807.are*" (Crypt) instead of overwriting it.
    - <a href="http://www.shsforums.net/topic/47635-notes-oddities-and-possible-bugs-in-my-bwp-game-spoilers/page-49#entry587224">micbaldur's Zaiya epilogue fix</a>: fixed a typo in "*zai6200.baf*" causing one of Zaiya's epilogues not to show up.
    - *The Divine Sword* (amaswd.itm): Nightfarer's item description fix.
    - Lollorian's patched Revised Suldanessalar: patched "*ar2807.are*", "*uddeath.bcs*", "*demsuc.bcs*", "*suscene1.baf*" and "*suscene3.baf*" instead of overwriting them.
    - Fixed Ninja-To +1 wrong immunity to poison assignments: moved them from melee header to global effects.
    - Gwendolyne fixes for better '*Revised Suldalanessar*' component compatibility: Replaced `ALTER_AREA_ACTOR` function with old school coding to insure compatibility with oBG2 (actor's name is Nizidramanii'yt in oBG2 and Black Dragon in EE games); used REGEXP in`DECOMPILE_AND_PATCH` commands to insure compatibility with EE games.
- Removed action, trigger and spell .ids files overwriting and patching as ToB has been set as a prerequisite.
- Removed *pdialog.2da* appending for BG2 without ToB games (not supported).
- *kzninja.baf*: fixed typos.
- Rewrote .bcs appending process (originally coded with so bad practice).
- Added *Continue()* action when appending are .bcs files with `EXTEND_TOP` command.
- Spells installation: removed useless `SAY NAME2` patches.
- ...
- *dialogs.tra* files: modified Lovetalks cutscenes entry to avoid duplicated strrefs entries with `GW_UPDATE_ITM_DESCRIPTION_TO_EE` WeiDU function.
- <ins>Bracers: protectors</ins> (kzbrac1.itm): Added missing restriction flags (only usable by monks).
- <ins>The Divine Sword</ins> (amaswd.itm):
    - Hard-coded general name and description.
    - Added missing Beast master kits restriction flags.
    - Fixed wrong Immunity to Divination spells duration (restored right 1 hour duration: 300. Was one day: 7200!).
- ...
- Added EE and ToBEx *Toggle critical hit aversion* item flag (BIT25) whenever relevant.
- Fixed items classes and kits restriction flags, and appended tooltip.2da whenever relevant.
- Fixed items descriptions.
- Restored items usability restriction flags in descriptions for classic games and automatically removed them for EE games with `GW_UPDATE_ITM_DESCRIPTION_TO_EE` WeiDU function.
- Hard-coded general items names and description whenever relevant.
- Integrated custom sound sets in the mod package.
- Added full Russian translation (earlier some lines remained in English, updated by Arcanecoast Team).
- Proofread English tra files and updated French translation (Gwendolyne).
- TODO Lowercased sound references to fix issues on Linux.
- TRAIfied last missing tp2 strref.
- Removed useless :file_folder: "*backup*" folder.
- Reorganized mod architecture tree: created folders to sort files according to their types.
- Lower cased files.
- Updated OggDec to v1.9.7 and added sox v14.4.1 for mac.
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- Updated WeiDU installer to v247.
- Uploaded mod to official Spellhold Studios GitHub mirror account.

## 

##### Version 1.6.2 &nbsp;(December 12, 2010)

- Used a normal version identification.
- Converted all bcs to baf, allowing the direct use of text references in the scripts and facilitating maintenance.
- Reworked tp2 to compile them instead of copying the bcs.
- Exploited the music variable in Kiara.baf directly (using `EVALUATE_BUFFER` when compiling).
- Fixed the romance music in ToB (couldn't be played as the song number was not properly set).
- Duplicated soundset fix patch scripts, for normal or custom soundsets.
- Included soundset in CRE file (dialog fix not required now, although still available).
- Included <a href="http://www.shsforums.net/topic/46469-bwp-and-mod-bugs-not-yet-fixed/?p=501418">Hoppy's suggested fixes for the Amaralis group in Small Teeth Pass</a> (Morticia, ...).
- Replaced `Dead("Myself")` and `Dead("Player1")` with `StateCheck(...,STATE_REALLY_DEAD)` in many scripts (generalisation of Lollorian's work).
- Fixed many warning in scripts, hopefully improving Kiara's fighting skills as well as opponents' and also a few cutscenes.
- Updated WeiDU installer to v224.

## 

##### Version 1.6.1 &nbsp;(April 25, 2010)

- Moved *Setup-Kiara-Zaiya.tp2* into the mod folder.
- Added `VERSION` flag.
- Changed to `README` command.
- Fixed text conflicts between the two main tra files causing Kiara leaving dialog to use several component names instead of the proper line.
- Fixed typo causing the absence of a dialog line.
- Sulda/KZ#Qilkw.BAF,KZNINJA.BAF and WU-JE/KZJAO.BAF: <a href="http://www.shsforums.net/topic/42220-fixes-for-the-big-fixpack/page-10#entry483485">Fixed `Myself` and `!Dead(Myself)`</a>.
- <a href="http://www.shsforums.net/topic/42220-fixes-for-the-big-fixpack/page-10#entry483525">Fixed Sulda/KZ#DMLRD.BAF</a>.
- Fixed several warnings during installation.
- Added French, Spanish, German and Russian translations.
- TRAIfied dialogs and TP2 files for hardcoded English strings.
- Updated WeiDU installer to v215.

## 

##### Version 1.6 &nbsp;(January 12, 2010)

- Added Russian translation.

## 

##### Version 1.5 &nbsp;(September 11, 2009)

- Added German translation.

## 

##### Version 1.4 &nbsp;(June 14, 2009)

- Added French and Spanish translations.
- Fixed installation bugs.

## 

##### Version 1.3 &nbsp;(January 04, 2004)

- Unknown.

## 

##### Version 1 &nbsp;(Unknown)

- Initial release.
<div align="right"><a href="#top">Back to top</a></div>


## <a name="intro" id="intro"></a>Overview

This mod introduces two joinable NPCs, Zaiya and Kiara, to your game. Zaiya is a Chaotic Good half-elven wild mage, and Kiara is a Neutral Evil human monk. Zaiya can be found inside the slaver ship (Slums District) and will join your party only if your character is of either good or neutral alignment. This is essential to the game!!! You can't start evil!! Don't cheat, bugs will lurk around if you do!<br>
Kiara will join the party after you resolve some specific quests AND ZAIYA IS STILL IN YOUR PARTY - AND ALIVE -.

Zaiya DIES PERMANENTLY if you can't find Kiara in the allocated time (she will tell you more once you find her).

<details><summary>Advice:</summary>
<p>

Save often until quest resolved! The battles will be hard if you are at a low level (below 300,000 XP point per party member) but that's the fun about it! Other possibility you come back and pick up Zaiya at a higher level, which means you'll miss on good scenes that have been planted throughout the game or YOU can't find her anymore!
</p>
</details>

They leave the party for good:
- if one or the other is killed *permanently* (out of party - this is not a bug). Though, they won't leave if one is showing dead in the party slot.
- in Brynnlaw if you have not done enough quests around Athklata (this is not a bug). The reason is: it serves the general story.

&#9755; :warning: **ADULT CONTENT:** Note that this mod contains some love scenes between the main character and Kiara, and some <em>sex jokes</em>. I would categorize none of these as adult material though it may hurt the sensibility of some of you. If you object to it, DO NOT PLAY THE MOD. :wink:

&nbsp;

**Content:**
- Special abilities for Kiara.
- A special quest.
- A romance and flirts.
- Custom voicing.
- Banters with the original Bioware NPCs: Aerie (Zaiya only), Anomen (Kiara &amp; Zaiya), Cernd (Kiara &amp; Zaiya), Edwin (Kiara only), Haer Dalis (Kiara only), Imoen (Kiara only), Jaheira (Kiara &amp; Zaiya), Jan (Kiara &amp; Zaiya), Keldorn (Kiara &amp; Zaiya), Korgan (Kiara &amp; Zaiya), Mazzy (Kiara only), Minsc (Kiara &amp; Zaiya), Nalia (Kiara &amp; Zaiya), Valygar (Kiara &amp; Zaiya), Viconia (Kiara &amp; Zaiya) and Yoshimo (Kiara only).
- Interjections about the player's conversations with non-party NPCs, and interactions with non-party NPCs: Adalon, Anas, Aran Linvail, Bodhi, Claire, Crypt King, Daar, Daleson, Delcia, Demin, Drizzt, Elhan, Gaal, Garren, Ginia, Glaicus, Gythianki, Irenicus, Khan Zahraa, Knight of Solamia, Lieutenant Aegisfield, Logan, Merella, Miranda, Neb, Pa'Nai, Raelis, Renal Bloodscalp, Rose, Ryan Trawl, Rylock, Saemon Haevarian, Salvanas, Samia, Shark King, Sime, Sir Sarles, Svirfneblin Leader, Tarnor, Tirdir, Tiris, Tolgerias, Umar kids, Wellyn.

&nbsp;

**Never forget:
- **Watcher's keep is hidden in SoA** (<ins>this is not a bug</ins>).
- Some of you may want to cheat: changing equipment, adding a bit of XP... may be fine. Once you reach the fundamentals of this mod (alignment and variables), you will find bugs beyond my control...<br>
Another cheat example: you can try to have only Zaiya or Kiara in the game. There are so many cross variables in Kiara-Zaiya (including Kiara's AI script) that using CLUAConsole or ShadowKeeper and cheat will result in bugs everywhere! That includes changing fundamental variables for your characters like alignment and such.<br>
**&#9755;** DO NOT TRY and then tell me you found a bug!!!

<div align="right"><a href="#top">Back to top</a></div>

<hr>


## <a name="compat" id="compat"></a>Compatibility

#### Games supported

This mod is designed to work on the following Infinity Engine games: the original Baldur's Gate II (BG2 or just SoA) with the Throne of Bhaal (ToB) expansion, Baldur's Gate II: Enhanced Edition (BG2EE), the conversion projects <a href="http://www.shsforums.net/forum/261-bgt-weidu/">Baldur's Gate Trilogy (BGT)</a> and <a href="https://github.com/Gibberlings3/EET/releases">Enhanced Edition Trilogy (EET)</a>.

## 

#### Other Mods Compatibility

The Kiara-Zaiya mod is a WeiDU mod, and therefore should be compatible with all WeiDU mods. However, we cannot test every single one. If you do encounter an error, please let us know by <a href="">reporting it on the forum</a>.<br>

Though we are striving to make Kiara-Zaiya compatible with as many other mods as possible, there is always a chance that incompatibilities will arise. Below are the ones discovered thus far:
- Valen: not all Valen dialogs will appear (unresolved issue).

## 

#### Installation Order

>Although it is not required for the Kiara-Zayia mod to function properly, original game players are strongly recommended to download and install the latest version of the <a href="http://www.gibberlings3.net/bg2fixpack/">BG2 Fixpack</a> before proceeding with the installation of this mod.<br>

Here is the recommended installation order:
- Please install Kiara-Zaiya after TobEx, BG2 Fixpack, and EET.
- Please install Kiara-Zaiya before EET_End, and any final "biffing" routines.

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="installation" id="installation"></a>Installation

#### Notes

*If you've previously installed the mod, remove it before extracting the new version. To do this, run __`setup-kiara-zaiya.exe`__, un-install the previously installed main component and delete the :file_folder: kiara-zaiya folder.*

*When installing or un-installing, __do not close the DOS window__ by clicking on the __X__ button! Instead, press the __Enter__ key whenever instructed to do so.*

*__Disable any antivirus__ or other memory-resident software before installing this or any other mod. Some (particularly avast and Norton!) have a tendency to report false positives with mod activity, resulting in failed installs.*

## 

#### Enhanced Editions Note

The Enhanced Editions are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update (if possible) as even after reinstalling the mods, you might not be able to continue with your old savegames. Alternatively, copy the whole game's folder into a new one that can be modded and will stay untouched by game patches. It is important that you install the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.

## 

#### Windows

Kiara-Zaiya for Windows is distributed as an extractable compressed archive and includes a WeiDU installer.

Extract the contents of the mod archive into the folder of the game you wish to modify (*the folder which contains the "CHITIN.KEY" file*), using <a href="https://www.7-zip.org/download.html">7zip</a>, <a href="https://www.rarlab.com/download.htm">WinRAR</a>, or another file compression utility that handles .zip files. On successful extraction, there should be a :file_folder: kiara-zaiya folder and a setup-kiara-zaiya.exe file in your game folder. To install, simply double-click **`setup-kiara-zaiya.exe`** and follow the instructions on screen.

Run **`setup-kiara-zaiya.exe`** in your game folder to reinstall, un-install or otherwise change the component settings.

## 

#### Mac OS

Kiara-Zaiya for Mac OS is distributed in the same compressed archive and includes a WeiDU installer.

First, extract the files from the archive into your game directory. On successful extraction, there should be a :file_folder: kiara-zaiya folder, setup-kiara-zaiya and setup-kiara-zaiya.command files in your game folder. To install, simply double-click **`setup-kiara-zaiya.command`** and follow the instructions on screen.

Run **`setup-kiara-zaiya.command`** in your game folder to reinstall, un-install or otherwise change the components settings.

## 

#### Linux

Kiara-Zaiya for Linux is distributed in the same compressed archive and does not include a WeiDU installer.

Extract the contents of the mod to the folder of the game you wish to modify.

Download the latest version of WeiDU for Linux from <a href="https://github.com/WeiDUorg/weidu/releases">WeiDU.org</a> and copy weidu and weinstall to `/usr/bin`. Following that, open a terminal, **cd** to your game installation directory, run tolower and answer 'Y' to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. To save time, the archive is already tolowered, so there's no need to run the first option (lowercasing file names) either if you've extracted only this mod since the last time you lowercased file names. If you're unsure, running tolower and choosing both options is the safe bet.

To install, run **`weinstall setup-kiara-zaiya`** in your game folder. Then run **`wine bgmain.exe`** (or **`wine baldur.exe`** for EE games) and start playing.

## 

#### Note for Complete Un-installation

In addition to the methods above for removing individual components, you can completely un-install the mod using **`setup-kiara-zaiya --uninstall`** at the command line to remove all components without wading through prompts.</br>
<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="details" id="details"></a>Details

#### PNJs characteristics

<table cellpadding=0 cellspacing=0 style="margin-top: 1%; margin-left: 80px">
	<tr style= "line-height: 170%;">
		<th>Portrait</th>
		<th>Strength</th>
		<th>Dexterity</th>
		<th>Constitution</th>
		<th>Intelligence</th>
		<th>Wisdom</th>
		<th>Charisma</th>
	</tr>
	<tr>
		<td><img src="kiara-zaiya/readme/images/zaiyam.jpg" title="Zaiya"><br>Zaiya</td>
		<td><div align="center">9</div></td>
		<td><div align="center">16</div></td>
		<td><div align="center">16</div></td>
		<td><div align="center">17</div></td>
		<td><div align="center">15</div></td>
		<td><div align="center">10</div></td>
	</tr>
		<td colspan="7">
		<strong>Biography:</strong><br>
		When asked about her past, Zaiya tells you that she born in the vicinity of Medina al Afyal in the land of Zakhara, south east of Faerûn. Leaving her parents home, she became servant to a powerful elemental mage, specializing in poisons. She spent most of her youth with him and was soon attracted to a new form of magic: wild magic. She started secretly studying it from the mage's book collection, although he prohibited such learning. During one of her reading, she contracted her affliction and despite numerous attempts never truly found a cure. She will no say more.</td>
	</tr>
	<tr>
		<td><img src="kiara-zaiya/readme/images/kiaram.jpg" title="Kiara"><br>Kiara</td>
		<td><div align="center">14</div></td>
		<td><div align="center">17</div></td>
		<td><div align="center">12</div></td>
		<td><div align="center">15</div></td>
		<td><div align="center">10</div></td>
		<td><div align="center">16</div></td>
	</tr>
	<tr>
		<td colspan="7">
		<strong>Biography:</strong><br>
		When asked about her past, Kiara tells you that she was born in the Kara Turian land of Koryo, far east of Faerûn. After the tragic death of her parents, she was rescued by a local monastery and although extremely rare for a girl, raised as a monk. She spent most of her youth there and learnt some basic fighting skills, herbal preparations and meditation. For an obscure reason, although from the tear in her eye you guess a tragic event, she was expelled from the monastery at an early age. She traveled to the west and met some merchants along the road which she escorted first to Tu Lung before embarking aboard a ship to the city of Medina al Afyal. This is an adventure she highly speaks of with an enthusiastic tone in her voice. On arrival at Afyal, she mentions she met Zaiya before being abducted by corsairs and sold as slaves in Athkatla. You see her face darken under her monk's hood; you know she will say no more.</td>
	</tr>
</table>

## 

#### Kiara Special Features

**Special Abilities**

As a monk, Kiara has learned special fighting proficiencies:
- 6th Level: Shadow Stance (improved invisibility for a full turn... Balthazar's original spell).
- 10th Level: Snake Stance (modified improved haste modified: attacks are doubled minus one, up to a maximum of 7 attacks per round at level 18+). This ability lasts 6 rounds and can be combined with stunning blow, quivering palm or any other special abilities she may have. Kiara gets penalties for using this spell. Gains another use at 16th level.
- 19th Level: Solar Stance (Fireball explodes away from her body and blows away enemies. A modified Balthazar spell.)

** Other Special ability on occasion**

Dragon Stance: with this spell, Kiara acquires for a short time some of the dragon's innate strength and resistances. Critical strike in the first round, her Strength is set at 25 for 3 rounds, 25% resistance to slashing, crushing, piercing..., protection from wing buffet (can not be blown back for a considerable distance) and unconsciousness for a full turn.

** Special items**

She comes with a special monk robe that adds 10% magic resistance (+1 AC Bonus, +1 to all saving throws) and the guardian's ring (+2 AC Bonus, +2 to all saving throws).<br>
An improved monk robe (+2 AC, +2 saving throws, Immune to level drain and Regenerate 1HP every 6 seconds. True sight once day) <em>may</em> be added in one particular circumstances.

**Special bonuses**

Strength, Hit points and experience points <em>may</em> be gained in one particular circumstance.

** Notes on flirting with Kiara and enabling her battle script**

<strong>&#9755;</strong> Talk to her to enable her battle script or flirt with her:
- Enable: "*Kiara, time to show us your fighting skills.*"
- Fix battle by resetting the timer: "*What's wrong with your fighting skills, Kiara?*"
- Disable (set as default): "*Kiara, let me direct you in the incoming battles.*"
- Start Flirting: Flirt with Kiara (only from love talk 2 to love talk 36).

## 

#### Kiara Custom AI (Battle script)

At high level, Kiara can clear out an entire area without your assistance with the script ON. She is quite slow at the start of the game but becomes a dervish of destruction by level 18!

&#9755; For more details, please read the <a href="https://spellholdstudios.github.io/readmes/kiara_zaiya-readme-english.html#details">mod readme</a>.

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="components" id="components"></a>Components

As of v2.0.0, the installer offers two main sub-components, letting the players decide which one they want to install.

Tougher fights optional components increase a few encounters difficulties.

:warning: DO NOT INSTALL THEM IF YOU ARE NOT FAMILIAR WITH THE TACTICS MOD AND THE LIKE. 
			
## 

**[0-1] Kiara-Zaiya for BG2** (Main component)
&nbsp;&nbsp;&nbsp;**[0]** Kiara-Zaiya for BG2 with vanilla soundsets<br>
&nbsp;&nbsp;&nbsp;**[1]** Kiara-Zaiya for BG2 with custom soundsets (English only)<br>

&#10173; This is the main component that adds Kiara and Zaiya to the game.

## 

**[2] Alternate Monk High level abilities by TG Maestro**

&#10173; This optional component modifies the original Monk High level abilities.


The HLA are the High Level Abilities. This set replaces the Monk's selection of spells from the fighter pool abilities to a complete different set. You can read it from Kiara's spell folder &quot;description.txt&quot;. I would definitely try it as Kiara will have far more interesting spells like Dragon Fist, capable of removing a mage's protections (yes everything from spell trap to protection from magic weapons!).<br>
Well if you tested Kish's excellent Monk HLA, you may want to leave it. This one is perhaps more balanced (e.g. no Lunar Stance) and fewer Balthazar spells but others instead (Chant, Evasion and Greater Evasion which are rogue HLA).

## 

**[3] Original Amaralis battles in chapters 2 and 6**

&#10173; This optional component makes Amaralis encounter tougher.

First you will find a less cheesy opponent in chapter 2. He will still use low spells BUT a few more well chosen ones and will use &quot;Improved Haste&quot; instead of just &quot;Haste&quot;. But then don't forget he is master slaver of Akhlata, something of the kind was to be expected!<br>
In chapter 6, you will find four more deadly opponents in Amaralis's party (A mage, a druid, a second berserker yielding Soul Reaver and a elven ranger with a long bow and poison arrows). You are ill advised to try this fight unless you are familiar with tactics and the likes! The standard Amaralis Chapter 6 fight is hard enough.<br>
This option was developed in the spirit of Ascension and Tactics.<br>
:warning: Do not install the improved Amaralis fight unless you are familiar with Tactics. You will find it impossible! They all have higher levels than you and use it quite well.

## 

**[4] Tougher Kiara vampire**

&#10173; This optional component makes Kiara turned into a vampire by Bodhi tougher.

## 

**[5] Revised Suldalanessar<**

&#10173; This optional component makes Suldalanessar Demon tougher.

:warning: SULDALANESSAR'S DEMON IS NEARLY IMPOSSIBLE TO KILL WITHOUT THE CORRECT TACTICS AND CAN BE FRUSTRATING AS EVEN THEN HE MIGHT STILL KILL YOU!

## 

**[6] Jao and party for SoA: another tough fight**

&#10173; This optional component makes this encounter tougher.

:warning: JAO DOES NOT TAKE DAMAGE. NO! IT'S NOT A BUG. ON PURPOSE AND IT IS FRUSTRATING TOO.

## 

**[7] Tougher Irenicus at the Tree of life**

&#10173; This optional component makes this fight tougher.

JON IRENICUS SUMMONS A LOT (WELL THINK IT'S PART OF HIS NEWLY ACQUIRED BHAALSPAWN POWERS... I NEVER LIKED THE TRANSFORMATION INTO THE SLAYER. IT'S TOO EASY FOR A 20TH LEVEL PARTY.). HE IS VERY TOUGH BUT EASIER THAN THE DEMON.

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="faq" id="faq"></a>Frequently Asked Questions

**Q: What kind of new fights were added to SoA?**  
A: Several.
    1. Poisonous Wyvern: two scrolls of Protection from poison are supplied, use them. &#128578; They might not be enough though :wink: and you might want a cleric to cast Dispel Invisibility (3rd level spell) and Zaiya to cast Breach.
	2. Amaralis first fight (Chapter 2): Amaralis is a Male Kensai/Mage (Level 9/13). This one has been reduced so any party can easily do it.
	3. Amaralis (and his goons) second fight (chapter 6): Amaralis is still a Male Kensai/Mage (Level increased to 13/15) and Hroth'Kar is a Male Half Orc Barbarian (level 20).<br>
	Notes: To reduce the number of opponents set the game's difficulty level to EASIEST and the barbarian will not appear.<br>
	Beware that the fight is very difficult and leaving the area or trying to hide won't work! There are several tactics that will work on him.<br>
	:warning: Do not install the improved Amaralis fight unless you are familiar with tactics. You will find it impossible! They all have higher levels than you and use it quite well.

**Q: How many quests do I need to do before leaving for Brynnlaw?**  
A: Two. First De Arnise Keep, then do either Firkraag, Planar Sphere or the ransom quest from the Graveyard District.

**Q: How do I defeat Amaralis the first time?<**  
A: Use potions, buy a Rod of Resurrection and use it to resurrect some of your dead fighters. Alternatively, use a Monster Summoning spell or wand to create additional allies and lure Amaralis away from your fighters.

**Q: Kiara has been abducted by Bodhi and turned into a vampire. How do I get her back?**  
A: Like any other romance character (Anomen, Aerie, Viconia, Jaheira) in BGII abducted by Bodhi.

**Q: What happened to Amaralis? Where is the long promised second fight?**  
A: Check the Small Teeth Pass area.

**Q: The second fight with Amaralis is hard, how do I defeat him and his goons?**  
A: By selecting EASY, you get to fight Amaralis only. Don't expect to arrive and win on the first run!

**Q: Is it possible to get a good Kiara in the end?**  
A: Yes. Though, she will be extremely hard to get. Only those who search Amn thoroughly, keep the romance going on *may* get a good Kiara and are lucky... may get a good Kiara.
<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="credits" id="credits"></a>Credits and Acknowledgements

**Authors:** <a href="http://www.shsforums.net/user/1013-alan-mc">Alan M.C.</a>, <a href="http://www.shsforums.net/user/701-seifer">Seifer</a> and <a href="http://www.shsforums.net/user/48-jesara">Jesara</a>  

## 

#### Special Acknowledgements to:

Editing, proofreading, ideas, website construction, portrait editing (including sending his own for Amaralis), voicing (well Amaralis again), testing..: I can't thank you enough for helping me out on this MOD. What can I say?

- <a href="http://www.spellholdstudios.net/">Spellhold Studios</a> team for hosting the mod (<a href="http://www.shsforums.net">Forums</a>).
- Deprecated link: <a href="http://forums.fwstudios.net/">FWS</a> for hosting this project when the mod was at the early development stage. I never quite found the time to thank the webmaster! Thanks Neil Sharp for first opening the forum.
- Mod's romance and plot improvement: Seifer and Jesara. I can't stress how important their help has been in improving both the romance but also the general plot. It led to the complete rewriting of 10 love talks, revisiting the entire romance (including some partial rewriting and merging) and the creation of 8 new dialogs with the PC whether in romance or not.
- New dialogs: I'd like to thank Bri (Brianna) for her invaluable contribution towards this mod, mainly the new erotic stories and the Cernd-Zaiya short romance.
- Editing: Jessayla has done a marvelous job at the edit. It is unfortunate I did not give her this readme... &#128578;
- Artwork: Portrait of Kiara by Amalthea (The sketch is truly great work and I can't wait for final portrait). The other portraits provided are mine and *please* should not be used with another mod, they are Kiara-Zaiya.
- Kiara voicing: A special thank to Sorschana. Her voice and acting are just awesome. I can't think of anything else that integrates so well in BGII. Well, she sure has a BIG fan of her work!
- Zaiya voicing: Thanks to Domi. Her accent is going to bring an exotic touch to Zaiya. Besides, her acting is very good too!
- Beta testing: Amongst testers, I'd like to thank particularly Castamir (Mike) for his trial of the mod which hopefully led to the killing of all undesired bugs in the game. I'm being hopeful here, it would be faster with a spray! &#128578;
- HLA and Kiara balancing: My thanks to T.G. Maestro for his valuable insight in reducing Kiara's Strength from initially Balthazar to "*Hey! Why did she die for?"* &#128578; Joking aside, he has contributed to make the game more fun. Besides, Kiara will also use most of his own spells and his own HLA table when she reaches level 20. You won't see much before ToB but it will give you an idea.
- Detectable Spells: I would like to thank Cirerrek for letting me use this very good mod in Kiara-Zaiya, and of course it's original developers Kensai Ryu and Vulgar Zildrah. It has been extremely helpful in improving the battles in Kiara-Zaiya.
- Thot started the French translation lazy as I am. &#128521; Thanks Thot! The translation was achieved by Elgaern, Bloody.Mary and Lothringen (des d'Oghmatiques).
- Chlo&eacute; has agreed doing the German translation. My German is a bit too rusty for such large endeavour in German. So, thanks Chlo&eacute;.
- Jason Campton: first for letting me use part of his code. I did not give him much choice I must say. &#128578; and secondly for is pertinent advice regarding my old coding.
- Wes Weimer and WeiDU: I long wondered if I should curse the man or kiss his feet? &#128541; I guess a bit of both. &#128514;<br>
I'll explain: I guess the "parse error..." *is* every modder's nightmare and I got my fair share of it, that said I can't think of a better program to bring the mods out to you once you get the hang of it!<br>
I wouldn't have even started modding without it. So, a BIG thank to Wes.
- CamDawg for letting us &quot;borrow&quot; pieces of code from the Fixpack.
- Story additional research: Thanks to Mikka, I closely avoided the mention AU (Alternate Universe) and her help was useful in making a credible story within Toril..
- Other help: I would like to thank everybody who left a message on the Kiara-Zaiya forum at FWS and their valuable support and/or help towards this mod.
- AL|EN: Wrote process which automatically provides Windows, Linux and Mac versions in the same archive file.
- Last but not least, Bioware and their team for making such a great game!

## 

#### Programs/tools used in creation

- <a href="https://github.com/WeiDUorg/weidu/releases">WeiDU</a> by Wes Weimer, Valerio Bigiani (the bigg) and Wisp.
- <a href="https://github.com/Argent77/NearInfinity/releases">Near Infinity</a>, by Jon Olav Hauglid, FredSRichardson, and Argent77.
- <a href="https://gibberlings3.github.io/iesdp/"><acronym title="Infinity Engine Structures Description Project">IESDP</acronym></a> maintained by igi and lynx.
- <a href="https://www.gibberlings3.net/mods/tools/dltcep/">DLTCEP</a>, by Avenger.
- <a href="http://notepad-plus-plus.org/">Notepad++</a>, by the Notepad++ team, Don Ho, and the spellcheck plug-in.
- <a href="http://www.shsforums.net/files/file/1048-weidu-highlighter-for-notepad/">WeiDU Notepad++ Highlighters </a>, by Argent77.
- <a href="https://forums.beamdog.com/discussion/78364/infinity-auto-packager-automatically-generate-and-adds-mod-packages-to-release-when-you-publish-it">Infinity Auto Packager</a>, by AL|EN.

## 

#### Copyrights Information

###### The Kiara-Zaiya mod is not developed, supported, or endorsed by BioWare or Interplay/BlackIsle, Overhaul, Beamdog or the Wizards of the Coast. It was developed by Alan M.C., Seifer and Jesara, based on material from the game Baldur's Gate II and its expansion.
###### All mod content is &copy;Alan M.C., Steven D Andrews (Seifer) and Jesara.
###### Baldur's Gate II: Shadows of Amn and Baldur's Gate II: Throne of Bhaal &copy; TSR, Inc. The BioWare Infinity Engine is &copy; BioWare Corp. All other trademarks and copyrights are property of their respective owners.
###### This mod was created to be freely enjoyed by all Baldur's Gate II players, and its content is free of rights. However, it should not be sold, published, compiled or redistributed in any form without the consent of its authors.<br>
<div align="right"><a href="#top">Back to top</a></div>
