vim.cmd([[syntax on

set t_Co=256

set foldmethod=indent

set foldlevel=99

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set fileformat=unix

set number
set relativenumber

set clipboard+=unnamedplus

colorscheme slate

set wildmode=longest,list

filetype plugin indent on

set autoindent

set hlsearch

set cursorline

set smartcase

set termguicolors

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

command W :execute 'w !sudo tee %'
]])

