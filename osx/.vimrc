set number
set relativenumber

" tab setting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

syntax on

" let &t_SI.="\e[5 q" "SI = INSERT mode
" let &t_SR.="\e[4 q" "SR = REPLACE mode
" let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mg979/vim-visual-multi', {'branch': 'master'}
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

nnoremap L $
nnoremap H ^
noremap ; :
nnoremap <leader>n :NERDTreeFocus<CR>
