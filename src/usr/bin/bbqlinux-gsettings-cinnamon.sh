#!/usr/bin/bash

echo "> BBQLinux GSettings for Cinnamon"

mkdir -p ~/.bbqlinux

NEW_VERSION=20150916
if [ ! -f ~/.bbqlinux/.gsettings_cinnamon ] || [ "$1" == "init" ]
then
    echo "Applying initial settings."

    # Set theme
    gsettings set org.cinnamon.theme name 'BBQLinux'

    # Set GTK Theme
    gsettings set org.cinnamon.desktop.interface gtk-theme 'BBQLinux'
    gsettings set org.cinnamon.desktop.wm.preferences theme 'BBQLinux'

    # Set icon theme
    gsettings set org.cinnamon.desktop.interface icon-theme 'gnome-carbonite'

    # Background
    gsettings set org.cinnamon.desktop.background picture-uri file:///usr/share/backgrounds/bbqlinux/bbqlinux_wallpaper_00.jpg

    touch ~/.bbqlinux/.gsettings_cinnamon
    echo ${NEW_VERSION} > ~/.bbqlinux/.gsettings_cinnamon
	echo "Done."
fi

CURRENT_VERSION=$(cat ~/.bbqlinux/.gsettings_cinnamon)
NEW_VERSION=20150916
if [ ${CURRENT_VERSION} -lt ${NEW_VERSION} ]
then
    echo "Upgrading from ${CURRENT_VERSION} to ${NEW_VERSION}"

    echo ${NEW_VERSION} > ~/.bbqlinux/.gsettings_cinnamon
	echo "Done."
fi

exit 0
