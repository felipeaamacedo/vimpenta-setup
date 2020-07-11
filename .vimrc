" PLUGIN MANAGEMENT "
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'mlaursen/vim-react-snippets'


"Plugins de typefiles para o VIM interpretar os arquivos
Plug 'leafgarland/typescript-vim'

" Initialize plugin system
call plug#end()


"VIM CONFIGURATION
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


filetype on


"STYLING CONFIGURATION
"colorscheme
colo gruvbox
set bg=dark
syntax on

"line numbering
set nu
set relativenumber

"NERDTREE ctrl+n
map <C-n> :NERDTreeToggle<CR>

"NERDCOMMENTER  press "number of lines or 0 to 1 + , + cc to nerdCommenterComment or uc to
"nerdCommentUnrcomment
let mapleader=","
set timeout timeoutlen=1500

"ALE-VIM CONFIG
"allow ALE to do autocomplete
let g:ale_completion_enabled = 1
"allow ALE to automaticaly imports from external modules
let g:ale_completion_tsserver_autoimport = 1

"ALE ERRORS
let b:ale_fixers = ['eslint']

let b:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

"navigating between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

