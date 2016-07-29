#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=$PWD # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files="bashrc bash_profile bash_prompt aliases vimrc vim" # list of files/folders to symlink in homedir

#
# create dotfiles_old in homedir
#
echo "Creating $olddir for backup of any existing dotfiles in ~/ ..."
mkdir -p $olddir
echo "... done"
echo ""

#
# change to the dotfiles directory
#
echo "Changing to the $dir directory ..."
cd $dir
echo "... done"
echo ""

#
# move any existing dotfiles in homedir to dotfiles_old directory
#
for file in $files; do
  if [ -a ~/.$file ]; then
    mv ~/.$file ~/dotfiles_old/
  fi
done

#
# create symlinks from the homedir to any files in the ~/dotfiles directory
# specified in $files
#
echo "Creating symlinks in home directory"
for file in $files; do
  echo "~/.$file -> $dir/.$file"
  ln -s $dir/.$file ~/.$file
done
echo "... done"
echo ""
