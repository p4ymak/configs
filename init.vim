call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'ErichDongubler/vim-sublime-monokai'
Plug 'racer-rust/vim-racer'
Plug 'cohama/lexima.vim'
call plug#end()

set number
set hidden
set clipboard+=unnamedplus

filetype plugin indent on
colorscheme sublimemonokai
if has("syntax")
	syntax on
endif

let g:rustfmt_autosave=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_run = 1

:nnoremap <C-b> :RustRun<CR>
