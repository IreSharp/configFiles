filetype off                  " required
syntax on
let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'nightsense/cosmic_latte'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set color theme
set background=dark
colorscheme cosmic_latte

" set's
set nu
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
"EOF
