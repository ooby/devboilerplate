call plug#begin()
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'majutsushi/tagbar'
Plug 'windwp/nvim-autopairs'
Plug 'vim-airline/vim-airline'
Plug 'neovim/nvim-lspconfig'
Plug 'github/copilot.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
let g:python3_host_prog = '/opt/homebrew/bin/python3'
au ColorScheme * hi Normal ctermbg=none guibg=none
set tabstop=4
set shiftwidth=4
set noexpandtab
syntax enable
colorscheme gruvbox
let g:airline_theme='gruvbox'
set incsearch
set noswapfile
set relativenumber
set encoding=utf8
set ffs=unix,dos,mac
set ai si list
set cursorline
set listchars=eol:↩,tab:┊·,trail:~,extends:…,precedes:…,space:·
set nowrap
filetype plugin on
filetype indent on
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
nmap <F4> :NERDTreeToggle<CR>
nmap <F5> :TagbarToggle<CR>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
let NERDTreeShowHidden=1
set history=700
set splitright
luafile ~/.config/nvim/lsp.lua
luafile ~/.config/nvim/plugins.lua
augroup c_cpp
	autocmd!
	autocmd FileType c,cpp set shiftwidth=4 tabstop=4 noet cc=120
	autocmd FileType c,cpp nnoremap <S-K> ggVG :py3file /opt/homebrew/Cellar/llvm/16.0.2/share/clang/clang-format.py<cr>
augroup END
augroup python
	autocmd!
	autocmd FileType python set shiftwidth=4 tabstop=4 noet cc=80
augroup END
