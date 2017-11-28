#!/bin/bash

update() {
    echo "Updating"
    git pull origin master

    install
}

install() {
    if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
        echo "Installing Vundle"
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    fi

    echo "Installing plugins"
    vim +PluginInstall +qall

    link
}

link() {
    echo "Creating symlinks"
    ln -s -f $(pwd)/vimrcs ~/vimrcs
    ln -s -f $(pwd)/shortcuts.vim ~/vimrcs/shortcuts.vim
    ln -s -f $(pwd)/.vimrc ~/.vimrc
    ln -s -f $(pwd)/.ideavimrc ~/.ideavimrc

    echo "Done"
}

help() {
    printf "vimrc (https://github.com/sukovanej/vimrc.git)
Created by sukovanej (2017)
subcommands:
-----------
    link - create symlinks to your home dir
    help - shows this help"
}

if [[ $1 =~ ^(link|help|install|update) ]]; then
    "$@"
else
    echo "Invalid subcommand $1" >&2
    exit 1
fi
