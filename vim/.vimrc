" Set the leader key to space
let mapleader = " "

" Set numbers
set number

" Enable syntax highlighting and indenting
syntax on
filetype plugin indent on

" Set the tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Set up key mappings
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" Key mapping to reload vimrc
nnoremap <leader>r :source $MYVIMRC<CR>

" Additional Vim-specific settings
set nocompatible              " Be iMproved, required
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set autoindent
set smartindent
set laststatus=2
set history=1000
set undolevels=1000 