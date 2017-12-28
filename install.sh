#!/bin/bash

update() {
    echo "Updating"
    git pull origin master

    link

    echo "Installing plugins"
    vim +PluginInstall +qall
}

install() {
    # install powerline fonts
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts

    if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
        echo "Installing Vundle"
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    fi

    link

    echo "Installing plugins"
    vim +PluginInstall +qall
}

link() {
    echo "Creating symlinks"
    ln -s -f $(pwd)/vimrcs/ ~/vimrcs/
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
