"Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'prabirshrestha/async.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"STYLING CONFIGURATION
"colorscheme
colo gruvbox
syntax on

"line numbering
set nu

"NERDTREE ctrl+n
map <C-n> :NERDTreeToggle<CR>

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
