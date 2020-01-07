#!/bin/bash

state=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.$1 /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'PlaybackStatus' | grep '".*"' | cut -d '"' -f 2`
echo $state