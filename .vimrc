call plug#begin()
"  Plug 'scrooloose/nerdtree'
"  Plug 'scrooloose/syntastic'
  Plug 'tomasiser/vim-code-dark'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'valloric/youcompleteme'
  Plug 'raimondi/delimitmate'
  Plug 'tpope/vim-commentary'
  Plug 'chiel92/vim-autoformat'
  Plug 'tpope/vim-fugitive'
  Plug 'w0rp/ale'
  Plug 'tpope/vim-vinegar'
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" vim-code-dark
colorscheme codedark

" NERDTree
"autocmd vimenter * NERDTree

"jmap <C-n> :NERDTreeToggle<CR>


" syntasitc

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_checkers = ['clang_check']
let g:clang_snippets_engine = 'clang_complete'

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'bash -c ' . "'npx eslint \"$@\"'" . ' "x"'

" ale
let g:ale_linters = {
      \ 'javascript': ['eslint'],
\}

let g:ale_fixers = {
      \ 'javascript': ['prettier'],
\}

let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

" vim-jsx-pretty
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Personal

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set tabstop=2
set shiftwidth=2
set expandtab

set number relativenumber

" Fix js(x) with code dark to make it look like vs code
" <Component />
hi! link jsxComponentName jsClassDefinition
" Component props
hi! link jsxAttrib jsObjectValue
" new, delete, etc.
hi! link jsOperatorKeyword jsClassKeyword 
