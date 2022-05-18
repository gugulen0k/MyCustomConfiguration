" Background color for terminal #212529
call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'scrooloose/syntastic'
  Plug 'airblade/vim-gitgutter'
  Plug 'BurntSushi/ripgrep'

  " Themes
  Plug 'yous/vim-open-color'
  Plug 'wojciechkepka/vim-github-dark'
  Plug 'yunlingz/equinusocio-material.vim'
  
  " Development extensions 
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-haml'
  Plug 'tpope/vim-unimpaired'
  Plug 'kchmck/vim-coffee-script'
  Plug 'yggdroot/indentline'
  Plug 'jszakmeister/vim-togglecursor'
  Plug 'godlygeek/tabular'
  Plug 'foosoft/vim-argwrap'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

let mapleader = " "

" Merge Linux and vim clipboard
set clipboard^=unnamed,unnamedplus

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set relativenumber 
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set tab width to 2 spaces.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignore option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set spellcheck for English USA
" set spell spelllang=en_us 

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx 

" Setting custom theme for vim
" true colors are required for vim in terminal
set termguicolors

" Use a different style valid values: 'default', 'darker', 'pure'
let g:equinusocio_material_style = 'darker'

set tags+=.git/tags,.git/rubytags
set tagcase=match
noremap ,gt :!gentags<CR>

set background=dark
colorscheme open-color

" Setting ripgrep for vim
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set grepformat=%f:%l:%c:%m,%f:%l:%m

let g:argwrap_padded_braces = '{'

nnoremap <C-p> :Files<CR>
nnoremap <silent> \ :ArgWrap<CR>
nnoremap <leader>f :Rg<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>d :BTags<CR>
nnoremap <leader><leader> :e #<CR>
nnoremap '%%', "expand('%:h').'/'", { expr = true })

