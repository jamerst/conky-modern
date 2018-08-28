#!/bin/bash

if [ `$HOME/.conky/conky-modern/scripts/state.sh yarock` != "Stopped" ]; then
	cover=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.$1 /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | egrep -A 1 "artUrl" | egrep -v "artUrl" | cut -b 44- | cut -d '"' -f 1 | egrep -v ^$ | cut -c8-`
	ln -s -f $cover $HOME/.conky/conky-modern/cover.png
fi