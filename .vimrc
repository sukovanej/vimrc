source ~/vimrcs/basic.vim
source ~/vimrcs/shortcuts.vim

set nocompatible
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

filetype on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on
