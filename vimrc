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

" Change escape to fd
inoremap fd <esc>
inoremap <esc> <nop>

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Racket
au BufReadPost *.rkt, *rktl set filetype=racket
au filetype racket set lisp
au filetype racket set autoindent

" Spell check
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
au FileType markdown,text,tex set spell

" Ditto
au FileType markdown,text,tex DittoOn  " Turn on Ditto's autocmds

nmap <leader>dd <Plug>ToggleDitto      " Turn it on and off

nmap <leader>dn <Plug>DittoNext       " Jump to the next word
nmap <leader>dN <Plug>DittoPrev       " Jump to the previous word
nmap <leader>d= <Plug>DittoGood       " Ignore the word under the cursor
nmap <leader>d- <Plug>DittoBad        " Stop ignoring the word under the cursor
nmap <leader>dm <Plug>DittoMore       " Show the next matches
nmap <leader>dl <Plug>DittoLess       " Show the previous matches
let g:ditto_min_repetitions=2

" Wordy
nnoremap <leader>c :NextWordy<CR>
let g:wordy#ring = [
  \ 'weak',
  \ ['contractions', 'opinion', 'vague-time', 'said-synonyms', ],
  \ ['being', 'passive-voice', ],
  \ ['problematic', 'redundant', ],
  \ ['colloquial', 'idiomatic', 'similies', ],
  \ 'business-jargon',
  \ 'weasel',
  \ 'puffery',
  \ 'art-jargon',
  \ ]

let g:airline_powerline_fonts=1
let g:rainbow_active=1
let g:solarized_bold=0
