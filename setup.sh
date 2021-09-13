#!/bin/bash
# Config file for I3-TUI
# maintainer: nicolas villafan <pegromdev@gmail.com>


if [ -f /tmp/new_username.txt ]
then
    NEW_USER=$(cat /tmp/new_username.txt)
else
    NEW_USER=$(cat /tmp/$chroot_path/etc/passwd | grep "/home" |cut -d: -f1 |head -1)
fi

git clone https://github.com/pegromdev/i3-tui/git
cd i3-tui
cp -R .config /home/$NEW_USER/  
cp -R .bin /home/$NEW_USER/  

chmod -R +x /home/$NEW_USER/.bin
cp .zprofile /home/$NEW_USER/
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.config
chown $NEW_USER:$NEW_USER /home/$NEW_USER/.profile
cd ..
rm -rf i3-tui

