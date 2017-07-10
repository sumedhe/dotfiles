#!/bin/bash

hc() {
    herbstclient "$@"
}


Win=Mod4   # Use the super key as the main modifier

hc keybind $Win-m spawn audacious
hc keybind $Win-i spawn firefox
hc keybind $Win-g spawn geary
hc keybind $Win-t spawn startdict
hc keybind $Win-b spawn leafpad ~/Documents/Note/quicknotes.txt
hc keybind $Win-Return spawn x-terminal-emulator
hc keybind $Win-period spawn ~/myscripts/toggle-swap
hc keybind $Win-e spawn nautilus

hc keybind Print spawn gnome-screenshot
hc keybind $Win+Print spawn gnome-screenshot -a


# Multimedia Keys
hc keybind XF86AudioLowerVolume spawn ~/.config/herbstluftwm/volume.sh down
hc keybind XF86AudioRaiseVolume spawn ~/.config/herbstluftwm/volume.sh up
hc keybind XF86AudioMute spawn ~/.config/herbstluftwm/volume.sh mute
hc keybind XF86MonBrightnessUp spawn gksu "bash -c '/home/sumedhe/.config/herbstluftwm/brightness.sh up'"
hc keybind XF86MonBrightnessDown spawn gksu "bash -c '/home/sumedhe/.config/herbstluftwm/brightness.sh down'"



