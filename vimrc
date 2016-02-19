execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme my-solarized

set relativenumber
set number

" Tab/space settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set undofile
set undodir=~/.vim/undos

set ttyfast
set hidden
set autoindent

let mapleader = "\<Space>"
nnoremap <leader>w :w<CR>
nnoremap <leader>] :bn<CR>
nnoremap <leader>[ :bp<CR>

" Move by visual lines rather than file lines
nnoremap j gj
nnoremap k gk

" Change escape to jk in any order 
inoremap jk <esc>
inoremap kj <esc>
inoremap <esc> <nop>

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Racket
au BufReadPost *.rkt, *rktl set filetype=racket
au filetype racket set lisp
au filetype racket set autoindent

let g:airline_powerline_fonts=1
let g:rainbow_active=1
let g:solarized_bold=0
