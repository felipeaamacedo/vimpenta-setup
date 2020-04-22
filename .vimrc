"VIM PLUGIN MANAGEMENT"
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()



"VIM NAVIGATION COMMANDS
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


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

"ALE-VIM CONFIG
"allow ALE to do autocomplete
let g:ale_completion_enabled = 1
"allow ALE to automaticaly imports from external modules
let g:ale_completion_tsserver_autoimport = 1

"ALE ERRORS
let b:ale_fixers = ['prettier', 'eslint']

let b:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_list_window_size = 5


"navigating between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
