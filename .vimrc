" PLUGINS
if &compatible
        set nocompatible               " Be iMproved
endif

set runtimepath+=/Users/jim/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Editor
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" Config
NeoBundle 'tpope/vim-sensible'

" Language
NeoBundle 'fatih/vim-go'
NeoBundle 'davidhalter/jedi-vim'

" Utility
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'

" Autocomplete
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-go'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" BASE

syntax on
set encoding=utf-8
set background=dark
colorscheme solarized

let mapleader = ","

" Jumping around split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Jump around buffers quickly
nnoremap <leader>b :buffers<CR>:buffer<space>

" Append closing braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Standard stuff
set number
set ruler
set nowrap

" Indent and tabs
set autoindent
set copyindent
set expandtab

" Making search a bit more sensible
set ignorecase
set smartcase
set hlsearch
set incsearch

" Fuck bells
set noerrorbells
set novisualbell

" Maintain commands
set showcmd
set laststatus=1
set showmode

" Ignore vendor folders in search
set wildignore+=*/vendor/**

" Reloads files modified outside of vim
set autoread

" Scroll offset
set so=7


" PLUGIN CONFIG

" Ctrlp
nnoremap <leader>p :CtrlP<CR>

" NERDTree
let NERDTreeIgnore=['\~$', '\.swp$', '\.DS_Store$', '\.\.$', '\.$', '\~$']
let NerdTreeMinimalUi=1

nnoremap <leader>n :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_y = '%{strftime("%c")}'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" Enable this if vim starts lagging on save
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Bit of a hack for syntastic to understand vim-go GOPATHs
au FileType go let $GOPATH = go#path#Detect()

" Vim-Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" TagBar
nnoremap <leader>r :TagbarToggle<CR>

" Deoplete & Deoplete-go
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#align_class = 1
