# Saints Row 2 - Gentlemen of the Row Steam Deck Guide

## BEFORE INSTALL
- If you intend to keep your vanilla save, launch SR2, load your autosave and make a manual save.
- GotR should be played through with a fresh save for the unlockables and to avoid glitches. Even in the KBAM 'vanilla' patch, using vanilla saves *may* cause issues and will likely make your newer saves incompatible with vanilla. With mods it is *very likely* to break.

## Installation
- Install from [this README](README.md)
- Download and extract Gentlemen of the Row, right click and 'Open Terminal Here' (while inside the GotR folder that contains the .bat file)
- Run `cd ~/steamdeck-stuff`
- Run `./use_win_env.sh 9480`
- `cd` into the folder containing the extracted Gentlemen of the Row folder
- Run `wine Create_Custom_GotR_v1.9.2.bat`
- If you have selected a button patch, this will be installed automatically if you selected in the batch installer.
- Copy the contents (files inside) of `MY_CUSTOM_PATCH` into your Saints Row 2 directory
  - If installed on SSD/internal, this will be `/home/deck/.local/share/Steam/steamapps/common/Saints Row 2/`
  - If installed on SD card, this will be `/run/media/mmcblk0p1/steamapps/common/Saints Row 2/`

## Notes
- I will try to package this up as a nicer script for use_wine_ver (or whatever it's final name is, use_wine_context?) and potentially implementing a GUI/creating this into a [universal mod manager](https://xkcd.com/927/).
- I am looking at fixing co-op/multiplayer using OpenSpy. I don't have much free time to dedicate, but will host public servers free to use if in demand/viable.

## Credits
 - Mike Watson (IdolNinja) - for GotR
 - other developers mods who were included in GotR who I will later list here.
 - Gibbed and Minimaul who's Saints Row 2 modding tools made GotR possible.

## Todo
 - Add settings.dat for windowed 800x600
 - Saints Row Powertools (?)
 - Other mods [High Quality Radio Mod](https://www.pcgamingwiki.com/wiki/Saints_Row_2#High_Quality_Radio_mod) or `steamcmd +download_depot 9480 401480 +quit`

## RIP Mike Watson (IdolNinja)
Mike Watson was an integral member of the Saints Row modding community. Without his time and dedication, Saints Row 2 on the PC would remain an unplayable mess. He became part of the Volition team and pledged to fix the Saints Row 2 PC port after locating the source code, but sadly passed away in August 2021 after a battle with cancer.

As the true, first, Gentleman of the Row, he will be greatly missed.