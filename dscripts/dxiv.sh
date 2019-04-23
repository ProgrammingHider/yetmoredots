#!/bin/bash
# ██████╗ ██╗  ██╗██╗██╗   ██╗
# ██╔══██╗╚██╗██╔╝██║██║   ██║
# ██║  ██║ ╚███╔╝ ██║██║   ██║
# ██║  ██║ ██╔██╗ ██║╚██╗ ██╔╝
# ██████╔╝██╔╝ ██╗██║ ╚████╔╝ 
# ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝
#
# dxiv: d-menu Picture Selector for the sxiv Image Viewer
# The Given Directory is a Multi-Purpose Pictures Folder

# Global variables:
FILES=${1:-"/home/andreas/Bilder"}
DMENU='dmenu -i'
SXIV='sxiv -b -t'
# List Images
choice=$(ls "${FILES}" | $DMENU -p "Bildordner zum Anschauen:")

if [ $choice ]; then
       $SXIV ${FILES}/${choice}
fi       
