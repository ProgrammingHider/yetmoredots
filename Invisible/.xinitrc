#!/bin/bash
#   				   ██╗  ██╗██╗███╗   ██╗██╗████████╗██████╗  ██████╗
#   				   ╚██╗██╔╝██║████╗  ██║██║╚══██╔══╝██╔══██╗██╔════╝
#    				    ╚███╔╝ ██║██╔██╗ ██║██║   ██║   ██████╔╝██║     
#    				    ██╔██╗ ██║██║╚██╗██║██║   ██║   ██╔══██╗██║     
#			        ██╗██╔╝ ██╗██║██║ ╚████║██║   ██║   ██║  ██║╚██████╗
# 				╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝
#
# Sample .xinitrc for SuSE Linux
# This script is called from 'startx' when you start an X session
#
#
# In case everything goes wrong, we at least fall back to a plain xterm
#
failsafe="xterm -ls -T Failsafe -geometry 80x24-0-0"
trap "exec $failsafe" EXIT SIGHUP SIGINT SIGPIPE SIGTERM SIGIO
# 
# finally start the window manager
#
unset WINDOW_MANAGER STARTUP
exec bspwm
#exec spectrwm
#exec xmonad
#exec dwm

# call failsafe
exit 0


# XMonad Autostart Configuartion in .xinitrc

#sh /home/andreas/xmostart.sh &
#sh /home/andreas/compton.sh &
#sh /usr/bin/compton -b &
#sh /home/andreas/conky.sh &
#sh /home/andreas/flameshot.sh &
#sh /home/andreas/trayer.sh &

# End Of XMonad Autostart Configuartion in .xinitrci

# bspwm Autostart Configuartion in .xinitrc

nitrogen --restore &
xsetroot -cursor_name capitiane

