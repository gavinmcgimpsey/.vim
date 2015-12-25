execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

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

" Hard Mode!
nnoremap <leader>h <esc>:call ToggleHardMode()<cr>
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Change escape to jk in any order 
inoremap jk <esc>
inoremap kj <esc>
inoremap <esc> <nop>

" CSS
au FileType css setl background=light
au FileType scss setl background=light

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Racket
au BufReadPost *.rkt, *rktl set filetype=racket
au filetype racket set lisp
au filetype racket set autoindent

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:airline_powerline_fonts = 1
