#!/bin/bash

remote=$1
mode=$2
DOTFILE_PATH=$(pwd)

if [[ $remote =~ inn ]] || [[ $remote =~ bee ]]; then
	echo "start syncing"

	if [[ $mode = all ]]; then
		echo "start to sync .vim and .oh-my-zsh"
		scp -r ~/.vim yexl@$remote:~
		scp -r ~/.oh-my-zsh yexl@$remote:~
	fi
	scp -r $DOTFILE_PATH yexl@$remote:$DOTFILE_PATH

	echo "done"
fi
