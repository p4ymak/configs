call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'ErichDongubler/vim-sublime-monokai'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'pbrisbin/vim-restore-cursor'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
call plug#end()


set number
set hidden
set clipboard+=unnamedplus
set wildmenu
set wildmode=longest:full,full
:set colorcolumn=100

filetype plugin indent on
colorscheme sublimemonokai

if has("syntax")
	syntax on
endif

let g:rustfmt_autosave=1
let g:ale_rust_cargo_use_check = 1
let g:ale_rust_cargo_use_clippy = 1

:nnoremap <C-x> :Cargo run<CR>
:nnoremap <C-f> :! wtf 
