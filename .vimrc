source ~/vimrcs/basic.vim
source ~/vimrcs/shortcuts.vim
source ~/vimrcs/cpp.vim

set background=light
set termguicolors
colorscheme breezy

set nocompatible
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

filetype on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nvie/vim-flake8'
Plugin 'fneu/breezy'

call vundle#end()
filetype plugin indent on
