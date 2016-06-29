#!/bin/bash

CWD=$(pwd)

function install() {
	ln -fnsv "$CWD/bash/bashrc" ~/.bashrc
	ln -fnsv "$CWD/tmux/tmux.conf" ~/.tmux.conf
	ln -fnsv "$CWD/vim/vimrc" ~/.vimrc
	ln -fnsv "$CWD/vim/vimfiles" ~/.vim
}

function uninstall() {
	unlink ~/.bashrc
	unlink ~/.tmux.conf
	unlink ~/.vimrc
	unlink ~/.vim
}

if [ "$1" == "--remove" ]; then
	echo "Uninstalling dotfiles"
	uninstall
	echo "Done."
else
	echo "Installing dotfiles"
	install
	echo "Done."
fi
