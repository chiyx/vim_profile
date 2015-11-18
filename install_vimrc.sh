#! /bin/sh

DIR=`pwd`

# bak old profile
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
[ -d ~/.vim ] && mv ~/.vim ~/.vim.bak

# link the vimrc
cd ~
ln -s $DIR/vimrc .vimrc
ln -s $DIR .vim

# install the plugins
vim +PluginInstall +qall





