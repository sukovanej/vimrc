#!/bin/bash

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing amix's vimrc"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

echo "Running :PluginInstall"
vim +PluginInstall +qall

echo "Installing YCM"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
