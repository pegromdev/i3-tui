#!/bin/bash
# Setup scritp for Endeavouros I3-TUI Community Edition.
# maintainer: nicolas villafan <pegromdev@gmail.com>


if [ -f /tmp/new_username.txt ]
then
    NEW_USER=$(cat /tmp/new_username.txt)
else
    NEW_USER=$(cat /tmp/$chroot_path/etc/passwd | grep "/home" |cut -d: -f1 |head -1)
fi

git clone https://github.com/pegromdev/i3-tui.git
cd i3-tui
cp -R .config /home/$NEW_USER/  
cp -R .bin /home/$NEW_USER/  
cp .zprofile /home/$NEW_USER/.zprofile
cp .Xresources /home/$NEW_USER/.Xresources

chmod -R +x /home/$NEW_USER/.bin
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.config
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.zprofile
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.Xresources
cd ..
rm -rf i3-tui

