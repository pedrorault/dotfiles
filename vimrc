syntax on

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'qpkorr/vim-renamer'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "
nnoremap <leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>
