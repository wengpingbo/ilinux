#!/bin/sh

ROOTDIR=`dirname $0`

cd $ROOTDIR
git submodule update --init --recursive

echo "Start setup environment for user `id -un`"

if [ -f ~/.gitconfig ]; then
	mv ~/.gitconfig ~/.gitconfig.bak
	echo "Backup exist .gitconfig to ~/.gitconfig.bak"
fi
cp -vf .gitconfig .icd.conf .inputrc .mybashrc ~/

echo "source ~/.mybashrc" >> ~/.bashrc

cd $ROOTDIR/vim

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.bak
	echo "Backup exist .vimrc to ~/.vimrc.bak"
	mv ~/.vim ~/.vim.bak
fi
cp -vfr .vim .vimrc ~/

echo "Install dependency"
SUDO="sudo"
if [ `id -u` = "0" ]; then
	SUDO=""
fi
$SUDO apt install -y cscope exuberant-ctags xsel

