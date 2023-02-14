" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'akinsho/toggleterm.nvim'
" lua require("toggleterm").setup()

call plug#end()

source ~/.vimrc

" Nerd tree stuff
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Remove trailing whitespace
autocmd BufWritePre * %s/\s+$//e

set smarttab
let g:airline_theme='angr'
