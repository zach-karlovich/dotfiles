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
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

" Configure ALE Linters and Fixers
let g:ale_linters = {
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   'python': ['black'],
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}

" ALE Signs
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

" Set up key mappings
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>lq :ALEToggleQuickFix<CR>

" Additional ALE mappings
nnoremap <leader>af :ALEFix<CR>
nnoremap <leader>an :ALENext<CR>
nnoremap <leader>ap :ALEPrevious<CR>

" Set up Vim Surround
let g:surround_45deg = "'\r'"
let g:surround_90deg = "''\r''"
let g:surround_180deg = "\"\"\"\r\"\"\""
let g:surround_pairs = "(),[],{},<>,\",',`"
let g:surround_no_insert_mappings = 1

" Set up Vim Fugitive
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gl :Git pull<CR>
nnoremap <leader>gst :Git status<CR>
nnoremap <leader>gbr :Git branch<CR>
nnoremap <leader>grv :Git remote -v<CR>

" Silence providers
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0

" Key mapping to reload init.vim
nnoremap <leader>r :source $MYVIMRC<CR>
