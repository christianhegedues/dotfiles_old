#!/usr/bin/env bash

# A simple script for setting up OSX dev environment.

dev="$HOME/Developer"
pushd .
mkdir -p $dev
cd $dev

echo 'Enter new hostname of the machine (e.g. macbook-paulmillr)'
read hostname
echo "Setting new hostname to $hostname..."
scutil --set HostName "$hostname"
compname=$(sudo scutil --get HostName | tr '-' '.')
echo "Setting computer name to $compname"
scutil --set ComputerName "$compname"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$compname"

# echo 'Symlinking config files...'
# source 'bin/symlink-dotfiles.sh'

popd
