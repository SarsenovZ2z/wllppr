#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

wallpaperdir=$SCRIPTPATH/../images

files=($wallpaperdir/*)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`
#echo $randompic
gsettings set org.gnome.desktop.background picture-uri file:///"$randompic"
