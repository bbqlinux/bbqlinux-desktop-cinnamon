#!/usr/bin/bash

echo "> BBQLinux GSettings for Cinnamon"

mkdir -p ~/.bbqlinux

NEW_VERSION=20150916
if [ ! -f ~/.bbqlinux/.cinnamon-settings ] || [ "$1" == "init" ]
then
    echo "Applying initial settings."

    # Set theme
    dbus-launch gsettings set org.cinnamon.theme name 'BBQLinux'

    # Set GTK Theme
    dbus-launch gsettings set org.cinnamon.desktop.interface gtk-theme 'BBQLinux'
    dbus-launch gsettings set org.cinnamon.desktop.wm.preferences theme 'BBQLinux'

    # Set icon theme
    dbus-launch gsettings set org.cinnamon.desktop.interface icon-theme 'gnome-carbonite'

    # Background
    dbus-launch gsettings set org.cinnamon.desktop.background picture-uri file:///usr/share/backgrounds/bbqlinux/bbqlinux_wallpaper_00.jpg

    touch ~/.bbqlinux/.cinnamon-settings
    echo ${NEW_VERSION} > ~/.bbqlinux/.cinnamon-settings
    echo "Done."
fi

CURRENT_VERSION=$(cat ~/.bbqlinux/.cinnamon-settings)
NEW_VERSION=20180520
if [ ${CURRENT_VERSION} -lt ${NEW_VERSION} ]
then
    echo "Upgrading from ${CURRENT_VERSION} to ${NEW_VERSION}"

    # Set default terminal
    gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/mate-terminal
    gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/mate-terminal
    gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

    echo ${NEW_VERSION} > ~/.bbqlinux/.cinnamon-settings
    echo "Done."
fi

exit 0
