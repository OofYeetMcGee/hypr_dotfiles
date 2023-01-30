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

highlight Comment cterm=italic

if has("autocmd")
	au BufReadPost * if line("'\'") > 0 && line("$") | exe "normal! g`\"" | endif
endif
