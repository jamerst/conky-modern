#!/bin/bash

cover=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.$1 /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata | sed -n '/"mpris:artUrl"/{n;p}'`
cover=`echo $cover | sed -e 's/^variant string "file:\/\///' -e 's/"$//'`
if [ -n "$cover" ]; then
	ln -s -f $cover $HOME/.conky/conky-modern/cover.png
fi