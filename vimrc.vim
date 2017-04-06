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
colorscheme  desert
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

" gui-settings

set guifont=Fira\ Code:h20

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

set laststatus=2
let g:airline_theme="light" 
let g:airline_powerline_fonts = 1   

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

" keybinding for plugins
"
" NERDTREE
nmap <C-b> :NERDTreeToggle<cr>


" plug install 
" use junegunn/vim-plug for management

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'moll/vim-node'
Plug 'python-mode/python-mode'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-haml'

" Initialize plugin system
call plug#end()

" auto-commands

augroup autosourcing
	autocmd!
	autocmd BufWritePost $MYVIMRC source % 
augroup END
