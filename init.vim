"""---- PLUGINS ----"""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'sainnhe/sonokai'

Plug 'rust-lang/rust.vim'
Plug 'rust-analyzer/rust-analyzer'
Plug 'dense-analysis/ale'

Plug 'ervandew/supertab'
Plug 'pbrisbin/vim-restore-cursor'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
call plug#end()



"""---- ALE ----"""
"set completeopt=menu,menuone,preview,noselect,noinsert
set completeopt-=preview
set omnifunc=ale#completion#OmniFunc
let g:ale_rust_cargo_use_clippy = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'rust': ['rustfmt'],
  \}



"""---- REMAP ----"""
nnoremap <C-x> :Cargo run<CR>
nnoremap <C-f> :! wtf

nnoremap ,<space> :nohlsearch<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-space> :NERDTreeFocus<CR>

nmap <silent> <C-p> :ALEGoToDefinition<CR>
nmap <silent> gh :ALEFindReferences<CR>
nmap <silent> <C-[> <Plug>(ale_previous_wrap)
nmap <silent> <C-]> <Plug>(ale_next_wrap)




"""---- UI ----"""
set encoding=utf-8
set number
set hidden
set clipboard+=unnamedplus
set wildmenu
set wildmode=longest:full,full
set colorcolumn=100

filetype plugin indent on

let g:sonokai_transparent_background = 1
let g:sonokai_style = 'andromeda'
let g:sonokai_diagnostic_virtual_text = 'colored'
colorscheme sonokai

if has("syntax")
	syntax on
endif
