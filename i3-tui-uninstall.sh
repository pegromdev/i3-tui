#!/bin/bash
# Initial Setup scritp to Manually test Endeavouros I3-TUI Community Edition.
# maintainer: nicolas villafan <pegromdev@gmail.com>
#########################
# Alpha build for testing
#########################

echo "###########################################"
echo "_____________Cleaning up...________________"
echo "###########################################"

cat packages-repository.txt | xargs sudo pacman -R --noconfirm 


echo "###########################################"
echo "___________Removing files..._______________"
echo "###########################################"

rm -R ~/.config/
rm -R ~/.bin/
rm -R  ~/.local/share/fonts
rm ~/.zprofile
rm ~/.xinitrc
rm ~/.Xresources
rm /etc/X11/xorg.conf 
rm ~/.profile
rm ~/.bash_profile

echo "###########################################"
echo "_________Restoring sttings...______________"
echo "###########################################"

fc-cache -f -v
chsh -s /bin/bash $USER

echo "###########################################"
echo "_______Rebooting in 3 secounds...__________"
echo "###########################################"

sleep 3; reboot



