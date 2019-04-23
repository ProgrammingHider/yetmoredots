#!/bin/bash
while [ "$select" != "Cancel" -a "$select" != "Logout" -a "$select" != "Poweroff" -a "$select" != "Reboot" -a "$select" != Screenlock ];
do
	select=$(echo 'Cancel\nLogout\nPoweroff\nReboot\nScreenlock' | dmenu -i -p "You just pressed the exit shortcut. What would you like do?")
	[ -z "$select" ] && exit 0
done
[ "$select" = "Cancel" ] && exit 0
[ "$select" = "Logout" ] && bspc quit
[ "$select" = "Poweroff" ] && sudo shutdown now
[ "$select" = "Reboot" ] && sudo reboot
[ "$select" = "Screenlock" ] && betterlockscreen -l dimblur
