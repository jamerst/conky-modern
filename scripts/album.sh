#!/bin/bash

album=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.$1 /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/"xesam:album"/{n;p}'`
echo $album | sed -e "s/^variant string \"//" -e "s/\"$//"