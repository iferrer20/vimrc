

set relativenumber

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set ffs=unix,dos

let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]

let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'mileszs/ack.vim' 
Plugin 'valloric/youcompleteme'
Plugin 'ClosePairs'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sainnhe/sonokai'
call vundle#end()


filetype plugin indent on
let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/.ycm_extra_conf.py'
let g:clang_snippets_engine = "ultisnips"
let g:ycm_use_ultisnips_completer = 1
let g:ycm_key_list_select_completion = ['<enter>', '<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '!!'
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ericbn/vim-relativize'
Plug 'preservim/NERDTree'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pechorin/any-jump.vim'
call plug#end()

syntax on
" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
set laststatus=2
filetype plugin on


let mapleader = "<"

" THEME
"
if has('termguicolors')
    set termguicolors
endif
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colo sonokai
"let g:lightline = {
"\ 'colorscheme': 'molokai',
"\ 'subseparator': { 'right': '' },
"\ }
" THEME rela numbers


"hi SignColumn guibg=NONE guifg=NONE

"TRANSPARENT BACKGROUND
"hi Normal ctermbg=NONE

"hi Normal ctermbg=232
"hi LineNr ctermfg=DarkGray ctermbg=234
"hi LineNr term=bold cterm=NONE ctermfg=DarkGray ctermbg=NONE gui=NONE guifg=NONE guibg=NONE


"let g:fzf_preview_window = ['right:50%', 'ctrl-/']
"let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
"let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
"let s:palette.inactive.middle = s:palette.normal.middle
"let s:palette.tabline.middle = s:palette.normal.middle

let mapleader=","

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

set ve+=onemore
set tabstop=4

set shiftwidth=4
set expandtab

nmap <leader>b :NERDTreeTabsToggle<CR>
"imap <leader>b <Esc><Right>:NERDTreeTabsToggle<CR>i
"vmap <leader>b <Esc>:NERDTreeTabsToggle<CR>v

nmap <leader>t :tabnew<CR>
"imap <leader>t <Esc><Right>:tabnew<CR>
"vmap <leader>t <Esc>:tabnew<CR>


nmap <leader>u :tabn<CR>
"imap <leader>u <Esc><Right>:tabn<CR>i
"vmap <leader>u <Esc>:tabn<CR>

nmap <leader>w :w<CR>
"imap <leader>s <Esc><Right>:w<CR>i
"vmap <leader>s :w<CR>

nmap <leader>a ggVG<CR>
"imap <leader>a <Esc>ggVG<CR>
"vmap <leader>a <Esc>ggVG<CR>

nmap <leader>x :q!<CR>
"imap <leader>x <Esc>:q!<CR>
"vmap <leader>x <Esc>:q!<CR>

let g:AutoPairsMapCh = 0

"AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'

let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
