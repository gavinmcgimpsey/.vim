execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme solarized
set background=dark

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

" Move by visual lines rather than file lines
nnoremap j gj
nnoremap k gk

" Hard Mode!
nnoremap <leader>h <esc>:call ToggleHardMode()<cr>
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Change escape to jk in any order 
inoremap jk <esc>
inoremap kj <esc>
inoremap <esc> <nop>

au FileType css setl background=light
au FileType scss setl background=light

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

let g:airline_powerline_fonts = 1
