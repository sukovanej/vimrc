#!/bin/bash

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing amix's vimrc"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

echo "Running :PluginInstall"

echo "Installing YCM"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

echo "Installing CtrlP"
cd ~/.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
vim +helptags ~/.vim/bundle/ctrlp.vim/doc

# installing plugins
vim +PluginInstall +qall

echo "Copying shortcuts"
cp ./my_shortcuts.vim ~/.vim_runtime/vimrcs/my_shortcuts.vim
