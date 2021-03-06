set background=dark
set termguicolors
syntax enable

set hlsearch
set number
set cursorline
colo idle

set mouse=a
set ttymouse=xterm2

call plug#begin('~/.vim/plugged')
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'preservim/nerdtree'
Plug 'StanAngeloff/php.vim'
Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let mapleader = ","

nmap <leader>b :NERDTreeTabsToggle<CR> 
nmap <leader>w :w!<CR>
nmap <leader>x :q!<CR>
nmap <leader>t :tabnext<CR>
nmap <leader>h :set number!<CR>
nmap <C-l> E<Right>
nmap <C-h> B

imap <C-j> <Down>
imap <C-k> <Up>

imap <C-c> <C-o>:stopinsert<CR>
set ve+=onemore

" TAB
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'

