set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
syntax enable
colorscheme default
set incsearch
set noswapfile
set relativenumber
let g:airline_theme='gruvbox'
set encoding=utf8
set ffs=unix,dos,mac
set shiftwidth=4 tabstop=4 noet
set ai
set si
set list
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
map <C-S-i> ggVG :py3f /usr/share/clang/clang-format.py<cr>
imap <C-S-i> <c-o>:py3f /usr/share/clang/clang-format.py<cr>
let NERDTreeShowHidden=1
set history=700
set splitright
autocmd FileType python set shiftwidth=4 tabstop=4 noet
autocmd FileType c,cpp set shiftwidth=4 tabstop=4 noet

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
" Show 1000 diagnostic errs
let g:ycm_max_diagnostics_to_display = 1000
