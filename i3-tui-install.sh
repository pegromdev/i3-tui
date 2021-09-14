#!/bin/bash
# Initial Setup scritp to Manually test Endeavouros I3-TUI Community Edition.
# maintainer: nicolas villafan <pegromdev@gmail.com>


# Easy setup for testing

cp -R .config/* ~/.config/
cp .zprofile ~/.zprofile
cp .xinitrc ~/.xinitrc
cp .Xresources ~/.Xresources
mkdir ~/.bin
cp -R .bin/* ~/.bin/
echo '#include "/home/'$USER'/.config/i3/currenti3theme"' >> ~/.Xresources
chmod -R +x ~/.bin/
sudo pacman -Syu --needed --noconfirm < packages-repository.txt
