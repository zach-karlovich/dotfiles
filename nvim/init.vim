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

" Install plugins with Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
call plug#end()

" Configure ALE
let g:ale_linters = {
    \ 'python': ['flake8']
    \ }
let g:ale_fixers = {
    \ 'python': ['autopep8']
    \ }
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'

" Set up key mappings
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>lq :ALEToggleQuickFix<CR>

" Set up Vim Surround
let g:surround_no_insert_mappings = 1

" Set up Vim Fugitive
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gb :Git blame<CR>

" Set up mappings for nvim-compe
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

