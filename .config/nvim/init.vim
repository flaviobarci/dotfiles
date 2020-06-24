call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'jremmen/vim-ripgrep'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'gko/vim-coloresque'
Plug 'neovim/nvim-lsp'
call plug#end()

set number
set relativenumber
set clipboard+=unnamedplus
set list
set listchars=eol:↵,trail:~,tab:>-,nbsp:␣
set noshowmode
set expandtab
set shiftwidth=2
set tabstop=2 softtabstop=2
set smartindent
set nowrap
set ignorecase
set smartcase
set incsearch
set cursorline
set termguicolors
set wildmode=longest,list,full

colorscheme zeta

"Linter config
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {'python': ['black', 'isort','remove_trailing_lines', 'trim_whitespace'], 'typescript': ['prettier']}
let g:ale_fix_on_save = 1

"IdentLine Config
let g:indentLine_char='·'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled='1'

" use rg by default
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
endif


nnoremap <Space> <NOP>
let mapleader = "\<Space>"
nnoremap <leader>f :Files<CR>
nnoremap <leader>i :Ag<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>


