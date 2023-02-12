" Vim RC

set nocompatible
filetype plugin indent on
syntax enable

set number relativenumber
set path+=**
set wildmode=longest,list,full
set encoding=UTF-8
set showmatch
set linebreak
set ignorecase
set smartcase
set clipboard+=unnamedplus

set hlsearch
set incsearch
set autoindent

set cursorline
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set spelllang=en_us

" Set highlight rules
highlight Comment cterm=italic 
highlight LineNr ctermfg=cyan
highlight Statement ctermfg=blue
highlight CursorLineNr ctermfg=yellow

if has("autocmd")
	au BufReadPost * if line("'\'") > 0 && line("$") | exe "normal! g`\"" | endif
endif

" set cursor shape in different modes
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[3 q"

