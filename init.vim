call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'ErichDongubler/vim-sublime-monokai'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'ervandew/supertab'
call plug#end()

set number
set hidden
set clipboard+=unnamedplus
set wildmenu
set wildmode=longest:full,full
:set colorcolumn=100

filetype plugin indent on
colorscheme sublimemonokai
"set termguicolors

if has("syntax")
	syntax on
endif

colorscheme sublimemonokai

let g:rustfmt_autosave=1
let g:ale_rust_cargo_use_check = 1

:nnoremap <C-b> :Cargo run<CR>
