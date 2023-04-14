# steamdeck-stuff
Assorted Steam Deck stuff


## Notes
- I tried many things to execute exe's and batch files within the context of a Proton app. (wstart.sh and other stuff), this is an unfinished, dirty, hacky way of doing it. I will improve it when I have time.


## Install
- Switch to Desktop mode
- Open Konsole
- Run `curl -sSL https://raw.githubusercontent.com/johnnysgotyoucovered/steamdeck-stuff/master/install.sh | bash`


## Usage
### use_wine_env.sh
- `source ./use_wine_env.sh (Steam AppID)`
- Change directory (`cd`) into the relevant directory (usually `/home/deck/.steam/steam/steamapps/common/` or `/run/media/mmcblk0p1/steamapps/common`, or wherever the executables you want to run are)
- Use `wine` commands as normal, or to execute . Example: `wine additional_game_executable_file.exe` or `wine cmd` for a command prompt


## Guides
- [Saints Row 2 - GotR](GUIDE-SaintsRow2.md)


## Uses
- Saints Row 2, Saints Row 3 (Gentlemen of the Row)
- Fallout 3, Fallout: New Vegas (NVSE) and Skyrim (Skyrim SE/SKSE)


## Todo
- Move use_wine_env into it's own folder/own readme/etc.
- Copy TODO's from use_wine_env.sh to here, or issue tracking.
- Remove verbose output that seems to be silent / add some --quiet equivalent flag (?)
- General improvements (all of this was written on the Steam Deck with a not very nice, cheap Bluetooth keyboard)
- Helper scripts for GotR/SR2/other recommendations. Open an issue if you want to see a helper script created for any mod!
- Shorter domain / install command


## Refactor
- Ideally, I'd like to recreate this in Python with both CLI and a Qt/any other GUI. If someone is willing to help, let me know!
