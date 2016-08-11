#!/bin/sh

echo "!! CAUTIONS: It will recreate all the symbols !!"
echo "Are you sure? [y/n]"

while true; do
	read input
	case $input in
		[Yy]* ) break;;
		[Nn]* ) exit;;
		* ) echo "Please answer yes or no.";;
	esac
done

DOTFILE_PATH=$(pwd)
echo "\ndotfile repository path: $DOTFILE_PATH"

# create symbols for vim
ln -sf $DOTFILE_PATH/vimrc.before.local ~/.vimrc.before.local
ln -sf $DOTFILE_PATH/vimrc.bundles.local ~/.vimrc.bundles.local
ln -sf $DOTFILE_PATH/vimrc.local ~/.vimrc.local

# create symbols for mutt
ln -sf $DOTFILE_PATH/muttrc ~/.mutt/muttrc

# create symbols for tmux
ln -sf $DOTFILE_PATH/tmux.conf ~/.tmux.conf
echo "\nDone"
