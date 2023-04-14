#!/bin/bash

# tried this https://gist.github.com/michaelbutler/f364276f4030c5f449252f2c4d960bd2?permalink_comment_id=3921629#gistcomment-3921629
# (wscript: links to here https://noabody.wordpress.com/2021/10/04/wstart)
# wscript thing doesnt find proton when using wscript -wp...
# well, guess going to work on this again!
# update: wscript does now find my Proton and my Steam games (with some tweaking), but doesn't read off the SSD and I can't be bothered bodging it to do what I want

# TODO: set -e / exit on error.
#set -e

#set -x

# TODO: figure out SteamOS directory structure, assuming ~/.steam for now, but unsure about ~/.local/share
# TODO: Proton version, currently, it uses the one below and has no support for switching. fix!
usage() {
  echo "Usage: $0 (Steam AppID) [Proton version]"
  echo ""
  exit 127
}

if [ -z "$1" ]
  then
    echo "Must specify Steam AppID!"
    usage
fi

# TODO: validate if number?
export STEAM_APPID=$1

# SSD (NVMe, eMMC location should be the same mountpoint?)
export STEAM_P="$HOME/.steam/steam/steamapps"
# SD card is /run/media/mmcblk0p1/steamapps/common
# but Wine/Proton/etc isn't on there... sooooo.
#export STEAM_P="/run/media/mmcblk0p1/steamapps/common"

# thanks to https://www.reddit.com/r/SteamPlay/comments/9atr2r/comment/e4ylykd/?utm_source=share&utm_medium=web3x - saved a massive pain finding the proton directory and finding this for Proton specifically
export W="${STEAM_P}/common/Proton 7.0/dist"
export WINEVERPATH=$W
export PATH=$W/bin:$PATH
export WINESERVER=$W/bin/wineserver
export WINELOADER=$W/bin/wine
export WINEDLLPATH=$W/lib/wine/fakedlls
export LD_LIBRARY_PATH="$W/lib:$LD_LIBRARY_PATH"
export WINEPREFIX="${STEAM_P}/compatdata/${STEAM_APPID}/pfx"



echo "Configured environment to use ${STEAM_APPID} Wine prefixes"
#set +x
