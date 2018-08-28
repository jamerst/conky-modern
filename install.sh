#!/bin/bash

git clone https://github.com/jamerst/conky-modern.git $HOME/.conky/conky-modern

echo "Installing font.."
mkdir -p $HOME/.local/share/fonts
cp $HOME/.conky/conky-modern/fonts/*.ttf $HOME/.local/share/fonts
fc-cache $HOME/.local/share/fonts
echo "Font installed."

if [ -f $HOME/.conkyrc ]; then
	dateString=$(date +%s)
	echo "~/.conkyrc already exists, renaming to .conkyrc-$dateString.."
	mv $HOME/.conkyrc $HOME/.conkyrc-$dateString
fi

echo "Creating symlink to ~/.conkyrc.."
ln -s $HOME/.conkyrc/conky-modern/conky-modern.conky $HOME/.conkyrc

echo "Installation Complete!\nPress any key to exit."
read