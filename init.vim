set nocompatible

"""---- PLUGINS ----"""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'sainnhe/sonokai'
" Plug 'morhetz/gruvbox'
" Plug 'srcery-colors/srcery-vim'
" Plug 'ghifarit53/tokyonight-vim'

Plug 'rust-lang/rust.vim'
Plug 'rust-analyzer/rust-analyzer'
Plug 'dense-analysis/ale'

Plug 'ervandew/supertab'
Plug 'pbrisbin/vim-restore-cursor'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
call plug#end()




"""---- ALE ----"""
set completeopt=menu,menuone,noselect,noinsert
set omnifunc=ale#completion#OmniFunc
set completefunc=ale#completion#OmniFunc

let g:ale_rust_cargo_use_clippy = 1
let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 1
let g:ale_fix_on_save = 1

let g:ale_rust_cargo_use_clippy = 1
let g:ale_fixers = {
	\   'rust': ['remove_trailing_lines', 'trim_whitespace', 'rustfmt'],
	\   'python': ['remove_trailing_lines', 'trim_whitespace', 
	\              'autopep8', 'autoflake', 'autoimport', 'isort'],
	\}
let g:ale_python_executable='python3'
let g:ale_python_pylint_use_global=1


let g:SuperTabCrMapping = 0
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'




"""---- AIRLINE ----"""
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_enable_fugitive = 0
let g:airline_theme='bubblegum'
let g:airline_symbols_ascii = 1
let airline#extensions#tabline#ignore_bufadd_pat =
	\ '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'




"""---- REMAP ----"""
nnoremap j gj
nnoremap k gk

nnoremap <C-x> :Cargo run<CR>
nnoremap <C-c> :Cargo clippy<CR>
nnoremap <C-f> :! wtf 

nnoremap ,<space> :nohlsearch<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-space> :NERDTreeFocus<CR>

nmap <silent> <C-p> :ALEGoToDefinition<CR>
nmap <silent> <C-l> :ALEHover<CR>
nmap <silent> gh :ALEFindReferences<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nnoremap <C-]> :bnext<CR>
nnoremap <A-]> :bprevious<CR>
nnoremap <A-\> :bdelete<CR>




"""---- UI ----"""
set encoding=utf-8
set number
set hidden
set clipboard+=unnamedplus
set wildmenu
set wildmode=longest:full,full
set colorcolumn=100
set t_Co=256
" set mouse=a

filetype plugin indent on

if has('termguicolors')
	set termguicolors
endif
if has("syntax")
	syntax on
endif

let g:sonokai_transparent_background = 0
let g:sonokai_disable_italic_comment = 1
let g:sonokai_style = 'default'
let g:sonokai_diagnostic_virtual_text = 'colored'
let g:sonokai_diagnostic_text_highlight = 0
colorscheme sonokai

" let g:srcery_inverse = 0
" let g:srcery_undercurl = 1
" let g:srcery_underline = 1
" let g:srcery_italic = 0

" let g:gruvbox_invert_selection = 0
" let g:gruvbox_invert_signs = 0
" let g:gruvbox_underline = 1
" let g:gruvbox_undercurl = 1
" let g:gruvbox_contrast_dark = 'medium'
" let g:gruvbox_italicize_comments = 0

" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 0
