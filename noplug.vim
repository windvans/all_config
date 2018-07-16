" vimrc in one file
" contents-menus
	" general
	" gui-settings
	" keymappings
  " plug install
	" auto-commands


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

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e
set guioptions-=m
set guioptions-=T

" set foldcolumn=2
" hi foldcolumn guibg=bg

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

" auto-commands

augroup autosourcing
	autocmd!
	autocmd BufWritePost $MYVIMRC source % 
augroup END
