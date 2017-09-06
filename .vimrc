set runtimepath+=~/.vim_runtime

let NERDTreeShowHidden=1
source ~/.vim_runtime/vimrcs/my_shortcuts.vim
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_ycm_extra_conf'

set tags=./tags
set number
au BufWrite * :Autoformat
map <C-a> :Autoformat

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'szw/vim-tags'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
colorscheme gruvbox
