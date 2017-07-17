#!/bin/bash

hc() {
    herbstclient "$@"
}


Mod=Mod4   # Use the super key as the main modifier
Alt=Mod1

hc keybind $Alt-a spawn audacious
hc keybind $Alt-i spawn firefox
hc keybind $Alt-m spawn geary
hc keybind $Alt-g spawn gitg
hc keybind $Alt-b spawn leafpad ~/Documents/Note/quicknotes.txt
hc keybind $Alt-e spawn nautilus
hc keybind Print spawn gnome-screenshot
hc keybind $Alt-Print spawn gnome-screenshot -a

hc keybind $Mod-Return spawn x-terminal-emulator


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
hc keybind $Mod-Control-h spawn systemctl hibernate
hc keybind $Mod-Control-l spawn bash -c $lock
hc keybind $Mod-Escape spawn bash -c $lock

# Other
hc keybind $Mod-Control-slash spawn glances
hc keybind $Mod-Control-period spawn ~/scripts/toggle-swap
hc keybind $Mod-d spawn ~/scripts/rofi_run.sh
hc keybind $Mod-e spawn ~/scripts/rofi-locate.sh
hc keybind $Mod-x spawn ~/.config/herbstluftwm/scripts/herbstcommander.sh
hc keybind $Mod-t spawn ~/.config/herbstluftwm/scripts/toggledualhead.sh
hc keybind $Mod-grave emit_hook goto_last_tag

