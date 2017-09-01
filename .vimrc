set runtimepath+=~/.vim_runtime


source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_ycm_extra_conf'
au BufWrite * :Autoformat
map <C-a> :Autoformat

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required
