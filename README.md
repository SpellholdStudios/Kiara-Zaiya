
![Latest Release](https://img.shields.io/github/v/release/GwendolyneFreddy/Kiara-Zaiya?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![GitHub (Pre-)Release Date](https://img.shields.io/github/release-date-pre/GwendolyneFreddy/Kiara-Zaiya?color=gold)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macOS%20%7C%20linux%20%7C%20Project%20Infinity&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English%20%7C%20French%20%7C%20German%20%7C%20Russian%20%7C%20Spanish&color=limegreen)

![Supported games](https://img.shields.io/static/v1?label=supported%20games&message=BGII:ToB%20%7C%20BGT%20%7C%20BG2%3AEE%20%7C%20EET&color=dodgerblue)


<div align="center"><h1></a>Kiara Zaiya NPCs (WIP)</h1>

<h3>A mod hosted at Spellhold Studios for Baldur's Gate II:ToB (classical and EE games),<br>
Baldur's Gate Trilogy and EET<h3>

</div><br>

**Authors:** <a href="http://www.shsforums.net/user/701-seifer/">Seifer</a> and Jesara  
**Mod Website:** <a href="">Spellhold Studios</a>  
**Mod Forum:** <a href="http://www.shsforums.net/forum/127-mod-resurrections/">Mods Resurrections</a>

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
<a href="#intro">Overview</a> &#8226; <a href="#compat">Compatibility</a> &#8226; <a href="#installation">Installation</a> &#8226; <a href="#credits">Credits and Acknowledgements</a> &#8226; <a href="#versions">Version History</a></br>
</div>

<hr>


## <a name="versions" id="versions"></a>Version History

##### Version 2.0.0 &nbsp;(August , 2021)

- Renamed *Setup-Kiara-Zaiya.tp2* -> *kiara-zaiya.tp2* and moved it into top mod folder to support AL|EN's "Project Infinity".
- Replaced `REQUIRE_FILE` condition with `REQUIRE_PREDICATE` to avoid installing the mod in inaccurate games.
- Externalized tp2 code into *.tpa* libraries for more comfortable readability and maintenance.
- Commented code as much as possible.
- Grouped custom and vanilla soundsets into main component `SUBCOMPONENTS`.
- Added native EE and EET compatibility (thanks Austin!):
    - Added WeiDU's built-in `HANDLE_CHARSETS` function to convert string entries for EE games.
    - Added chapters continuity for EET games.
    - Added `ADD_JOURNAL` entries.
    - Rewrote soundset install procedure to use WeiDU's built-in `HANDLE_AUDIO` function, and converted music file to .acm.
    - ...
    - Provided accurate sized NPC portraits for EE games.
- Included all BWP Fixpack fixes:
    - Lollorian's patched "*ar0807.are*" (Crypt) instead of overwriting it.
    - <a href="http://www.shsforums.net/topic/47635-notes-oddities-and-possible-bugs-in-my-bwp-game-spoilers/page-49#entry587224">micbaldur's Zaiya epilogue fix</a>: fixed a typo in zai6200.baf causing one of Zaiya's epilogues not to show up.
    - *The Divine Sword* (amaswd.itm): Nightfarer's item description fix.
    - Lollorian's patched Revised Suldanessalar: patched "*ar2807.are*", "*uddeath.bcs*", "*demsuc.bcs*", "*suscene1.baf*" and "*suscene3.baf*" instead of overwriting them.
    - Fixed Ninja-To +1 wrong immunity to poison assignments: moved them from melee header to global effects.
- *kzninja.baf*: fixed typos.
- Removed *pdialog.2da* appending for BG2 without ToB games (not supported).
- Rewrote .bcs appending process (originally coded with so bad practice).
- Added *Continue()* action when appending are .bcs files with `EXTEND_TOP` command.
- Spells installation: removed useless `SAY NAME2` patches.
- ...
- Removed action, trigger and spell .ids files overwriting and patching as ToB has been set as a prerequisite.
- Integrated custom soundset in the mod package.
- ...
- ...
- ...
- ...
- Restored items usability restriction flags in descriptions for classic games and automatically removed them for EE games with `GW_UPDATE_ITM_DESCRIPTION_TO_EE` WeiDU function.
- Proofread kzsetup.tra files strrefs (Gwendolyne).
- TRAIfied last missing tp2 strref.
- Removed useless :file_folder: "*backup*" folder.
- Reorganized mod architecture tree: created folders to sort files according to their types.
- Lower cased files.
- Updated OggDec to v1.9.7 and added sox v14.4.1 for mac.
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- Updated WeiDU installer to v247.
- Uploaded mod to official Spellhold Studios GitHub mirror account.


- Fixed items descriptions.
- Fixed items classes and kits restriction flags, and appended tooltip.2da whenever relevant.
- Added EE and ToBEx *Toggle critical hit aversion* item flag (BIT25) whenever relevant.


TODO
- !StateCheck("Valygar",STATE_SLEEPING)
- genfix.baf, kiaraadd.baf, zaiyad.baf ???
- Zaiya INITIAL_MEETING soundset @91???
- spwnrak.baf is overwriting vanilla file and is spawning KZ#raj01.cre which is not installed by the mod!
- Original Amaralis battles in chapters 2 and 6: hrothfit.baf is not compiled.
- Revised Suldalanessar: sujon.cre is not copied, nor used.


##### Version 1.6.2 &nbsp;(unknown)

- Used a normal version identification.
- Converted all bcs to baf, allowing the direct use of text references in the scripts and facilitating maintenance.
- Reworked tp2 to compile them instead of copying the bcs.
- Exploited the music variable in Kiara.baf directly (using EVALUATE_BUFFER when compiling).
- Fixed the romance music in ToB (couldn't be played as the song number was not properly set).
- Duplicated soundset fix patch scripts, for normal or custom soundsets.
- Included soundset in CRE file (dialog fix not required now, although still available).
- Included <a href="http://www.shsforums.net/topic/46469-bwp-and-mod-bugs-not-yet-fixed/?p=501418">Hoppy's suggested fixes for the Amaralis group in Small Teeth Pass</a> (Morticia, ...).
- Replaced `Dead("Myself")` and `Dead("Player1")` with `StateCheck(...,STATE_REALLY_DEAD)` in many scripts (generalisation of Lollorian's work).
- Fixed many warning in scripts, hopefully improving Kiara's fighting skills as well as opponents' and also a few cutscenes.
- Updated WeiDU installer to v224.

##### Version 1.6.1 &nbsp;(unknown)

- Moved Setup-Kiara-Zaiya.tp2 into the mod folder.
- Added VERSION-flag
- Changed to README command
- Fixed text conflicts between the two main tra files causing Kiara leaving dialog to use several component names instead of the proper line.
- Fixed typo causing the absence of a dialog line.
- Sulda/KZ#Qilkw.BAF,KZNINJA.BAF and WU-JE/KZJAO.BAF: <a href="http://www.shsforums.net/topic/42220-fixes-for-the-big-fixpack/page-10#entry483485">Fixed `Myself` and `!Dead(Myself)`</a>.
- <a href="http://www.shsforums.net/topic/42220-fixes-for-the-big-fixpack/page-10#entry483525">Fixed Sulda/KZ#DMLRD.BAF</a>
- Fixed several warnings during installation.
- Added French, Spanish, German and Russian translations.
- TRAIfied dialogs and TP2 files for hardcoded English strings.
- Updated WeiDU installer to v215.

## 

##### Version Beta 1 &nbsp;(Unknown)

- Initial release.
<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="intro" id="intro"></a>Overview

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="compat" id="compat"></a>Compatibility

#### Games supported

This mod is designed to work on the following Infinity Engine games: the original Baldur's Gate II (BG2 or just SoA) with the Throne of Bhaal (ToB) expansion, Baldur's Gate II: Enhanced Edition (BG2EE), the conversion projects <a href="http://www.shsforums.net/forum/261-bgt-weidu/">Baldur's Gate Trilogy (BGT)</a> and <a href="https://github.com/Gibberlings3/EET/releases">Enhanced Edition Trilogy (EET)</a>.

## 

#### Other Mods Compatibility


## 

#### Installation Order

>Although it is not required for the Kiara-Zayia mod to function properly, classical game players are strongly recommended to download and install the latest version of the <a href="http://www.gibberlings3.net/bg2fixpack/">BG2 Fixpack</a> before proceeding with the installation of this mod.<br>

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="installation" id="installation"></a>Installation

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
		<td><img src="kiara-zaiya/readme/images/kiaram.jpg" title="Kiara"></td>
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
	<tr>
		<td><img src="kiara-zaiya/readme/images/zaiyam.jpg" title="Zaiya"></td>
		<td><div align="center">9</div></td>
		<td><div align="center">16</div></td>
		<td><div align="center">16</div></td>
		<td><div align="center">17</div></td>
		<td><div align="center">15</div></td>
		<td><div align="center">10</div></td>
	</tr>
		<td colspan="7">
		<strong>Biography:</strong><br>
		When asked about her past, Zaiya tells you that she born in the vicinity of Medina al Afyal in the land of Zakhara, south east of Faerun. Leaving her parents home, she became servant to a powerful elemental mage, specializing in poisons. She spent most of her youth with him and was soon attracted to a new form of magic: wild magic. She started secretly studying it from the mage's book collection, although he prohibited such learning. During one of her reading, she contracted her affliction and despite numerous attempts never truly found a cure. She will no say more.</td>
	</tr>
</table>

<div align="right"><a href="#top">Back to top</a></div>


## <a name="components" id="components"></a>Components

The installer includes the following components. All optional components require the main component to be installed.

<hr>


## <a name="credits" id="credits"></a>Credits and Acknowledgements

<div align="right"><a href="#top">Back to top</a></div>
