# steamdeck-stuff
Assorted Steam Deck stuff


## Notes
- I tried many things to execute exe's and batch files within the context of a Proton app. (wstart.sh and other stuff), this is an unfinished, dirty, hacky way of doing it. I will improve it when I have time.

## Usage
### use_wine_environment.sh
- `source ./use_wine_environment.sh (Steam AppID)`
- Change directory (`cd`) into the relevant directory (usually `/home/deck/.steam/steam/steamapps/common/` or `/run/media/mmcblk0p1/steamapps/common`, or wherever the executables you want to run are)
- Use `wine` commands as normal, or to execute . Example: `wine additional_game_executable_file.exe` or `wine cmd` for a command prompt

## Uses
- Saints Row 2, Saints Row 3 (Gentlemen of the Row)
- Fallout 3, Fallout: New Vegas (NVSE) and Skyrim (Skyrim SE/SKSE)



## Todo
- Move use_wine_environment into it's own folder/own readme/etc.
- Copy TODO's from use_wine_environment to here, or issue tracking.
- Remove verbose output that seems to be silent / add some --quiet equivalent flag (?)
- General improvements (all of this was written on the Steam Deck with a not very nice, cheap Bluetooth keyboard)
