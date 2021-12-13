call plug#begin('~/.vim/pack')
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Soares/write.vim'
call plug#end()

syntax on
filetype indent plugin on
set tabstop=4
set smarttab
set shiftwidth=4
set modeline
set expandtab
set updatetime=1000

set smartindent
set autoindent

set relativenumber
set number
set laststatus=2
set statusline+=%F

let g:is_bash=1
let g:pymode_rope = 0

set tags=./tags
set tags+=~/miniconda3/lib/python3.8/site-packages/pytorch_lightning/tags
set path+=**
