

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
" dependencias de telescope...
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
"Plug 'nvim-lspupdate'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'itchyny/lightline.vim'
Plug 'tomasiser/vim-code-dark'

Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
" Plug 'Syntastic'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

Plug 'pearofducks/ansible-vim'
Plug 'Yggdroot/indentLine'

" Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()



set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

" Give more space for display messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|
set shortmess+=c

colorscheme gruvbox
" colorscheme codedark
highlight Normal guibg=none

let mapleader = " "
noremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

if !has('gui_running')
    set t_Co=256
endif

"lua << EOF
"require'lspconfig'.pyright.setup{}
"EOF

" Number 5: Behavi Vim
nnoremap Y y$

" Number 4: Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Number 3: Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Number 2: Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Number 1: Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> :m .+1<CR>==
inoremap <C-k> :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
