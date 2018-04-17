#!/bin/zsh

# need to make sure whether system has install on-my-zsh and spf13-vim or not

# install oh-my-zsh, need to make sure curl is available
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install spf13-vim, the best distribution I've ever seen
sh <(curl https://j.mp/spf13-vim3 -L)

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

# for common shell
ln -sf $DOTFILE_PATH/dircolors ~/.dircolors

# for helm-ag which used as smart search in spacemacs via SPC + /
sudo apt-get install silversearcher-ag

# default spell checker used by spacemacs
sudo apt-get install aspell

# for zsh
ln -sf $DOTFILE_PATH/zshrc ~/.zshrc
chsh -s $(which zsh)
zsh
source ~/.zshrc
