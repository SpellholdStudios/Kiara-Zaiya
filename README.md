
![Latest Release](https://img.shields.io/github/v/release/GwendolyneFreddy/Kiara-Zaiya?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![GitHub (Pre-)Release Date](https://img.shields.io/github/release-date-pre/GwendolyneFreddy/Kiara-Zaiya?color=gold)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macOS%20%7C%20linux%20%7C%20Project%20Infinity&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English%20%7C%20French%20%7C%20German%20%7C%20Russian%20%7C%20Spanish&color=limegreen)

![Supported games](https://img.shields.io/static/v1?label=supported%20games&message=BGII%20%7C%20BGT%20%7C%20BG2%3AEE%20%7C%20EET&color=dodgerblue)


<div align="center"><h1></a>Kiara Zaiya NPCs (WIP)</h1>

<h3>A mod hosted at Spellhold Studios for Baldur's Gate II:ToB (classical and EE games),<br>
Baldur's Gate Trilogy and EET<h3>

</div><br>

**Authors:** Davide Carta (original) - <a href="http://www.shsforums.net/user/701-seifer/">Seifer</a> and Jesara  
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
- Replaced `REQUIRE_FILE` condition with `GAME_INCLUDES` to avoid installing the mod in inaccurate games.
- Added native EE and EET compatibility (thanks Austin!):.
    - Added WeiDU's built-in `HANDLE_CHARSETS` function to convert string entries for EE games.
    - Added chapters continuity for EET games.
    - Provided accurate sized NPC portraits for EE games.
- Included all BWP Fixpack fixes:
    - Lollorian's patched "*ar0807.are*" (Crypt) instead of overwriting it.
    - <a href="http://www.shsforums.net/topic/47635-notes-oddities-and-possible-bugs-in-my-bwp-game-spoilers/page-49#entry587224">micbaldur's Zaiya epilogue fix</a>: fixed a typo in ZAI6200.baf causing one of Zaiya's epilogues not to show up.
    - .
- Removed useless :file_folder: "*backup*" folder.
- Reorganized mod architecture tree: created folders to sort files according to their types.
- Lower cased files.
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- Updated WeiDU installer to v247.
- Uploaded mod to official Spellhold Studios GitHub mirror account.



TODO
- !StateCheck("Valygar",STATE_SLEEPING)
- genfix.baf, kiaraadd.baf, zaiyad.baf ???