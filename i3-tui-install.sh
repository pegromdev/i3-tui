#!/bin/bash
# Initial Setup scritp to Manually test Endeavouros I3-TUI Community Edition.
# maintainer: nicolas villafan <pegromdev@gmail.com>


# Easy setup for testing

cp -R .config/* ~/.config/
cp -R .bin/* ~/.bin/
cp -R fonts/* ~/.local/share/fonts/
cp .zprofile ~/.zprofile
cp .xinitrc ~/.xinitrc
cp .Xresources ~/.Xresources
cp /root/xorg.conf /etc/X11/xorg.conf 
echo '#include "/home/'$USER'/.config/i3/currenti3theme"' >> ~/.Xresources
chmod -R +x ~/.bin/
cat packages-repository.txt | xargs sudo pacman -S --noconfirm 
fc-cache -f -v

