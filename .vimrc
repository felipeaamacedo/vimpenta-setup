"" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'chemzqm/vim-jsx-improve'
Plug 'dense-analysis/ale'


Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'

" Initialize plugin system
call plug#end()

"-- VISUAL CONFIGURATION --
set number
set relativenumber
set cmdheight=2

"--SETING VISUAL CONFIGURATION--
colorscheme gruvbox
set bg=dark

"-- AUTOMATIC CLOSURE --
"inoremap " ""<left> 
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>

"NERDTREE ctrl+n
map <C-n> :NERDTreeToggle<CR>

"NERDCOMMENTER  press "number of lines or 0 to 1 + , + cc to nerdCommenterComment or uc to
"nerdCommentUnrcomment
let mapleader=","
set timeout timeoutlen=1500


"-- ALE VIM CONFIG
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1

"Navigate between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
