#!/bin/bash

hc() {
    herbstclient "$@"
}


Mod=Mod4   # Use the super key as the main modifier
Alt=Mod1

hc keybind $Mod-$Alt-a spawn audacious
hc keybind $Mod-$Alt-i spawn firefox
hc keybind $Mod-$Alt-m spawn geary
hc keybind $Mod-$Alt-t spawn startdict
hc keybind $Mod-$Alt-g spawn gitg
hc keybind $Mod-$Alt-b spawn leafpad ~/Documents/Note/quicknotes.txt
hc keybind $Mod-Return spawn x-terminal-emulator
hc keybind $Mod-$Alt-e spawn nautilus

hc keybind Print spawn gnome-screenshot
hc keybind $Mod-$Alt-Print spawn gnome-screenshot -a


# Multimedia Keys
hc keybind XF86AudioLowerVolume spawn ~/.config/herbstluftwm/volume.sh down
hc keybind XF86AudioRaiseVolume spawn ~/.config/herbstluftwm/volume.sh up
hc keybind XF86AudioMute spawn ~/.config/herbstluftwm/volume.sh mute
hc keybind XF86MonBrightnessUp spawn gksu "bash -c '/home/sumedhe/.config/herbstluftwm/brightness.sh up'"
hc keybind XF86MonBrightnessDown spawn gksu "bash -c '/home/sumedhe/.config/herbstluftwm/brightness.sh down'"

# System
lock='/opt/i3lock-fancy/lock; sleep 1; xset dpms force off'
hc keybind $Mod-Control-s spawn systemctl poweroff -i
hc keybind $Mod-Control-r spawn systemctl reboot
hc keybind $Mod-Control-r spawn systemctl hibrenate
hc keybind $Mod-Control-l spawn bash -c $lock
hc keybind $Mod-Escape spawn bash -c $lock
hc keybind $Mod-Control-slash spawn glances
hc keybind $Mod-Control-period spawn ~/myscripts/toggle-swap
