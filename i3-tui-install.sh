#!/bin/bash
# Config file for I3-TUI
# maintainer: nicolas villafan <pegromdev@gmail.com>


# Easy setup for testing

cp -R .config/* ~/.config/
cp .zprofile ~/.zprofile
cp -R .bin/* ~/.bin/

chmod -R +x ~/.bin/
sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
