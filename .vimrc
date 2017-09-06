set runtimepath+=~/.vim_runtime

let NERDTreeShowHidden=1
source ~/.vim_runtime/vimrcs/my_shortcuts.vim
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_ycm_extra_conf'

set tags=./tags,tags;$HOME
"set tags=./tags
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
Plugin 'sorribas/vim-close-duplicate-tabs'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
colorscheme gruvbox

function! DelTagOfFile(file)
    let fullpath = a:file
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let f = substitute(fullpath, cwd . "/", "", "")
    let f = escape(f, './')
    let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
    let resp = system(cmd)
endfunction

function! UpdateTags()
    let f = expand("%:p")
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
    call DelTagOfFile(f)
    let resp = system(cmd)
endfunction

autocmd BufWritePost *.cpp,*.h,*.c call UpdateTags()

" call NERDTreeAddKeyMap({'key': 't', 'callback': 'NERDTreeMyOpenInTab', 'scope': 'FileNode', 'override': 1 })
" function NERDTreeMyOpenInTab(node)
"     call a:node.open({'reuse': "all", 'where': 't'})
" endfunction
