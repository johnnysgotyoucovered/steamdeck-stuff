#!/bin/bash

# TODO: generalize for Proton, allow custom directory location
echo "Gentlemen of the Row installer for Steam Deck"

# Install dependencies
# TODO: rename this repo and put a linkback in the README (it's in the .git but some users might not know why it's there)
curl -sSL https://raw.githubusercontent.com/johnnysgotyoucovered/steamdeck-stuff/master/install.sh | bash

# Check for installation directory argument
if [[ $# -ge 1 && -d "$1" ]]; then
  INSTALL_DIR="$1"
  echo "Installation directory set to $INSTALL_DIR."
else
  # Look for Saints Row 2 directory
  if [[ -d "/home/deck/.steam/steam/steamapps/common/Saints Row 2" ]]; then
    INSTALL_DIR="/home/deck/.steam/steam/steamapps/common/Saints Row 2"
    STORAGE_DEVICE="internal storage"
    echo "Saints Row 2 directory detected in $STORAGE_DEVICE."
  elif [[ -d "/run/media/mmcblk0p1/steamapps/common/Saints Row 2" ]]; then
    INSTALL_DIR="/run/media/mmcblk0p1/steamapps/common/Saints Row 2"
    STORAGE_DEVICE="SD card"
    echo "Saints Row 2 directory detected in $STORAGE_DEVICE."
  else
    echo "Error: Saints Row 2 directory not found in internal storage or SD card."
    read -p "Do you want to manually input the installation directory? (y/n) " -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      read -p "Enter the full path to the Saints Row 2 directory: " -r
      echo
      if [[ -d "$REPLY" ]]; then
        INSTALL_DIR="$REPLY"
        STORAGE_DEVICE="unknown storage device"
        echo "Installation directory set to $INSTALL_DIR."
      else
        echo "Error: Directory not found."
        exit 1
      fi
    else
      echo "Installation cancelled."
      exit 1
    fi
  fi
fi

# Confirm
if [[ $STORAGE_DEVICE != "unknown storage device" ]]; then
  read -p "The mod will be installed in the $STORAGE_DEVICE at $INSTALL_DIR. Do you want to continue? (y/n) " -r
else
  read -p "The installation directory is set to $INSTALL_DIR. Do you want to continue? (y/n) " -r
fi
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Installation location confirmed."
else
  echo "Installation cancelled."
  exit 1
fi

# Download and extract mod
# TODO: mirror on GitHub/somewhere, repackage as tar/zip/something that's available on most Linux systems by default
wget https://idolninja.saintsrowmods.com/sr2/gentlemen_of_the_row/Gentlemen_of_the_Row_Saints_Row_2_Super_Mod_v1.9.2.rar
unrar x Gentlemen_of_the_Row_Saints_Row_2_Super_Mod_v1.9.2.rar
cd Gentlemen_of_the_Row_Saints_Row_2_Super_Mod_v1.9.2

# Set up Wine environment
source ~/steamdeck-stuff/use_wine_env.sh 9480

# Run mod installation script
# TODO: there's a few errors in the GotR script, but it works fine for all the mods I've chose. if anyone wants to attempt to rewrite the installer script in bash :)
wine Create_Custom_GotR_v1.9.bat

# Copy mod files to installation directory
cp -r MY_CUSTOM_PATCH/* "$INSTALL_DIR"
echo "Gentlemen of the Row files copied to $INSTALL_DIR."

# Cleanup
# TODO: ask user some might want to keep the readme/txt files local
#echo "Tidying up..."
#cd ..
#rm -rv Gentlemen_of_the_Row_Saints_Row_2_Super_Mod_v1.9.2 Gentlemen_of_the_Row_Saints_Row_2_Super_Mod_v1.9.2.rar