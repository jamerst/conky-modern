#!/bin/bash
cover=`playerctl metadata mpris:artUrl`
cover=${cover#"file://"}
if [ -n "$cover" ]; then
	ln -s -f $cover $HOME/.conky/conky-modern/cover
fi