#!/bin/bash
 
artist=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.$1 /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | egrep -A 1 "artist" | egrep -v "artist" | cut -b 44- | cut -d '"' -f 1 | egrep -v ^$`
echo $artist