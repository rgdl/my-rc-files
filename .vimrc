call plug#begin('~/.vim/pack')
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Soares/write.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'hdima/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'sheerun/vim-polyglot'
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
set path+=**

set backspace=indent,eol,start

let g:jedi#force_py_version = 3
let g:jedi#environment_path = trim(system('pyenv which python3'))
