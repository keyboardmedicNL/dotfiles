syntax on

set t_Co=256

set foldmethod=indent

set foldlevel=99

au BufNewFile BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\: textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

set relativenumber


set clipboard+=unnamedplus

colorscheme default
