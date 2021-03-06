"" include other configuration files
source $HOME/.vimrcpy
set directory=~/.vim/swp        " store the .swp files in a specific path
set backupdir=~/.vim/tmp

"" default values """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()

colorscheme peachpuff "zellner koehler peachpuff slate
"set background=dark
"let g:solarized_termcolors=16
set t_Co=16
"colorscheme solarized
"set mouse=a
syntax on                       " syntax highlighting
filetype off                    " to consider filetypes
filetype plugin indent on
filetype plugin on
set nocompatible

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set novisualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
"set number
set undofile
let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
"set list
"set listchars=tab:▸/

"set acd                         " auto change directory
set laststatus=2                " Always set a status line
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" keep the visual selection after indenting
vmap > >gv
vmap < <gv

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
" au FocusLost * :wa

"" remove trainling slashes with w
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>q gqip
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

au BufRead,BufNewFile *.jsm set filetype=javascript
au FileType go au BufWritePre <buffer> Fmt

set rtp+=$GOROOT/misc/vim

"" shortcuts """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>
nnoremap <A-l> gt
nnoremap <A-h> gT
" add spellchecking on ,<lang>
nnoremap <leader>fr :setlocal spell spelllang=fr<CR>
nnoremap <leader>en :setlocal spell spelllang=en<CR>

" write a file while dont getting the rights to.
command WW w !sudo tee % > /dev/null

" edit vim quickly
nnoremap <leader>v :tabnew $MYVIMRC<cr>:gt
map <silent> <Leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo'vimrc reloaded'"<CR>

" remap CTRL+N to CTRL + space
inoremap <Nul> <C-n>

nnoremap <F5> :GundoToggle<CR>

" change the current buffer to equal the other
map <silent> <Leader>< do
" and the inverse (change the other buffer)
map <silent> <Leader>> dp

" <Leader>a to abort
map <silent> <Leader>a :cq<CR>

" useful for markdown / rst
map <Leader>0 yypVr#
map <Leader>1 yypVr=
map <Leader>2 yypVr-
map <Leader>3 yypVr~

" find merge conflicts
map <Leader>m /\<\<<CR>

map <silent> <Leader>n ]S
map <silent> <Leader>p [S

"" Plugins configuration """"""""""""""""""""""""""""""""""""""""""""""""""""""

" Tlist configuration
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 0
let Tlist_Auto_Update = 1
let Tlist_Process_File_Always = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
let Tlist_Show_One_File = 1
let Tlist_Show_Menu = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let tlist_css_settings = 'css;e:SECTIONS'
"let Tlist_Ctags_Cmd = '/usr/local/bin/rst2ctags --taglist'
"let tlist_rst_settings = 'rst;s:sections;i:images'


" NerdTree configuration
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
let NERDChristmasTree = 1

" jedi config
let g:jedi#popup_on_dot = 0
set completeopt=menuone,longest,preview

" vim session
let g:session_autosave_periodic = 2
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

" ctrlp
set wildignore+=*/tmp/*,*.pyc,*.pyo,*.zip

nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
autocmd FileType gitcommit DiffGitCached | wincmd p
