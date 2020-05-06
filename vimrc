syntax on

set hidden
set scrolloff=5
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
set undodir=~/.vim/undodir
set undofile
set encoding=UTF-8
"Regex configs
set hlsearch
set incsearch

"Indentation per language
autocmd FileType html, css, js setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType c,cpp  setlocal shiftwidth=4 tabstop=4 smartindent

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'qpkorr/vim-renamer'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ==Themes and visual==
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'rbong/vim-crystalline' "Not configured yet
call plug#end()

colorscheme gruvbox 
set background=dark

" Nerdtree automatically when opening dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeShowHidden=1

" keybinds
let mapleader = " "
nnoremap <leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>
nnoremap <leader>q :NERDTreeToggle<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gi <Plug>(coc-implementation)
nnoremap <C-p> :GFiles<CR>
