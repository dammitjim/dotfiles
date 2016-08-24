" PLUGINS
if &compatible
        set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/plugged')

" Editor
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go'

" Themes
Plug 'w0ng/vim-hybrid'
Plug 'jdkanani/vim-material-theme'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'

" Golang
Plug 'fatih/vim-go'

" Python
Plug 'davidhalter/jedi-vim'

" Ruby
Plug 'tpope/vim-rails'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'mxw/vim-jsx'
"Plug 'carlitux/deoplete-ternjs'
"Plug 'mxw/vim-jsx'

" Utility
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'lfv89/vim-interestingwords'

call plug#end()

filetype plugin indent on

" BASE

syntax on
set encoding=utf-8
set background=dark

let base16colorspace=256
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.

set t_Co=256
colorscheme solarized
"colorscheme base16-ocean
"colorscheme hybrid
"colorscheme material-theme
"colorscheme gruvbox
"colorscheme OceanicNext

let mapleader = ","

" Toggle light/dark background
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Jumping around split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Jump around buffers quickly
nnoremap <leader>b :buffers<CR>:buffer<space>

" Async GoBuild
nnoremap <leader>gb :GoBuild<CR>

" Append closing braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Standard stuff
set number
set ruler
set nowrap

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab
autocmd Filetype javascript setlocal ts=2 sw=2

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
let NERDTreeShowHidden=1

nnoremap <leader>\ :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_y = '%{strftime("%c")}'
let g:airline#extensions#syntastic#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 3
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active' }
" Enable this if vim starts lagging on save
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Bit of a hack for syntastic to understand vim-go GOPATHs
au FileType go let $GOPATH = go#path#Detect()

" TagBar
nnoremap <leader>r :TagbarToggle<CR>

" Deoplete & Deoplete-go
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#align_class = 1

" Javascript
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:javascript_plugin_jsdoc = 1

" SASS
let g:syntastic_scss_checkers = ['scss_lint']

" Tern
let g:tern_map_keys = 1
let g:tern_show_argument_hints = 'on_move'
let g:tern_show_signature_in_pum = 1

" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
