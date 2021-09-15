#!/bin/bash
# Initial Setup scritp to Manually test Endeavouros I3-TUI Community Edition.
# maintainer: nicolas villafan <pegromdev@gmail.com>
#########################
# Alpha build for testing
#########################

echo "This will Build and automatically reboot when done"

echo "Installing default apps and tools.."

cat packages-repository.txt | xargs sudo pacman -S --noconfirm 

echo "Copying configuration Files..."

mkdir ~/.config
cp -R .config/* ~/.config/
mkdir ~/.bin
cp -R .bin/* ~/.bin/
mkdir ~/.local/share/fonts
cp -R fonts/* ~/.local/share/fonts/
cp .zprofile ~/.zprofile
cp .xinitrc ~/.xinitrc
cp .Xresources ~/.Xresources
cp /root/xorg.conf /etc/X11/xorg.conf 

echo "Configuring system setup..."

echo '#include "/home/'$USER'/.config/i3/currenti3theme"' >> ~/.Xresources
chmod -R +x ~/.bin/
fc-cache -f -v
ln -s ~/.zprofile ~/.profile
rm ~/.bash_profile
ln -s ~/.zprofile ~/.bash_profile
chsh -s /bin/zsh $USER



echo " Rebooting in 3 seconds..."
sleep 3; reboot



