#!/bin/sh
# ██╗   ██╗██╗███╗   ███╗███████╗██████╗    ███████╗██╗  ██╗
# ██║   ██║██║████╗ ████║██╔════╝██╔══██╗   ██╔════╝██║  ██║
# ██║   ██║██║██╔████╔██║█████╗  ██████╔╝   ███████╗███████║
# ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══╝  ██╔══██╗   ╚════██║██╔══██║
#  ╚████╔╝ ██║██║ ╚═╝ ██║███████╗██║  ██║██╗███████║██║  ██║
#   ╚═══╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝
#
# vimer: d-menu Dotfile Selector for vim Editor
# The Given Directory is my Home Folder (/usr/asdf)

#
FILES=${1:-"/home/andreas/.config"}
DMENU='dmenu -i'
VIMER='qterminal -d -e vim'
# List Dotfiles
choice=$(ls -a "${FILES}" | $DMENU -p "Dotfiles to Edit:")

if [ $choice ]; then
	$VIMER ${FILES}/${choice}
fi
