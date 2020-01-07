#!/bin/bash

artist=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.$1 /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/"xesam:artist"/{n;p}'`
echo $artist | sed -e "s/^variant string \"//" -e "s/\"$//"