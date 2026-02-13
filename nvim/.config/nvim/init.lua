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

set nowrap

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

command W :execute 'w !sudo tee %'
]])

vim.lsp.enable({"ruff"})

vim.lsp.enable({"pylsp"})

vim.keymap.set('n', 'gK', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })

vim.keymap.set('n', 'gE', function()
    vim.diagnostic.setqflist()
end )

vim.diagnostic.setqflist()
