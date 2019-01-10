call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'tomasiser/vim-code-dark'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'valloric/youcompleteme'
  Plug 'raimondi/delimitmate'
  Plug 'tpope/vim-commentary'
  Plug 'chiel92/vim-autoformat'
call plug#end()

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

" vim-code-dark
colorscheme codedark

" NERDTree
autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" syntasitc

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_checkers = ['clang_check']
let g:clang_snippets_engine = 'clang_complete'

" Personal

set splitbelow
set splitright

set tabstop=2
set shiftwidth=2
set expandtab

set number relativenumber

