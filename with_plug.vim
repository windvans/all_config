" vimrc in one file
" general

set nu
set relativenumber
syntax enable
set backspace=indent,eol,start
set hlsearch
set incsearch
set smarttab
set smartindent
set showmatch
set smartcase
set showtabline=1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set nofoldenable
set t_CO=256
colorscheme one
set background=dark " for the dark version
" set background=light " for the light version

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e
set guioptions-=m
set guioptions-=T

hi foldcolumn guibg=bg

set guifont=Hack:h20
set t_CO=258

hi vertsplit  guifg=bg guibg=bg
hi split  guifg=bg guibg=bg

set splitbelow
set splitright

" keymappings

let mapleader=','

map <Leader><space> :nohlsearch<cr>

nmap <Leader>ev :edit $MYVIMRC<cr>
nmap <Leader>n :tabnew<cr>
nmap <Leader>[ :tabnext<cr>
nmap <Leader>] :tabprevious<cr>
nmap <Leader>w :tabclose<cr>

nmap <C-\> :vsp<cr>
nmap <C-]> :sp<cr>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-h> <C-w><C-h>
nmap <C-l> <C-w><C-l>

nmap j jzz
nmap k kzz

" use vim-plug manager
call plug#begin('~/.vim/plugged')

Plug 'wakatime/vim-wakatime'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='one'
Plug 'rakr/vim-one'

call plug#end()

" settings for python
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

" auto-commands

augroup autosourcing
    autocmd!
    autocmd BufWritePost $MYVIMRC source % 
augroup END
