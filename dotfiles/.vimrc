" Vundle (Bundler for Vim) Configuration
" --------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim " required
call vundle#begin()          " required
Plugin 'gmarik/Vundle.vim'   " required

" Bundles below
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bufexplorer.zip'
"Plugin 'tpope/vim-surround'
Plugin 'luochen1990/rainbow'
Plugin 'paredit.vim' 
Plugin 'sjl/tslime.vim' 

call vundle#end()            " required
filetype plugin indent on    " required
" --------------------------------------

" Other Vim Configuration
" -----------------------
set number        		" Show line numbers
syntax enable     		" Use syntax highlighting
set background=dark		" Use dark oriented colors
colorscheme darkblue
map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_show_hidden = 1
set shell=/bin/bash
set nowrap

" Setup directories for all those meta-files
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" The smash - get out of insert mode without leaving the home row
inoremap jk <esc>
inoremap kj <esc>

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" tslime {{{
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<leader>t'
let g:tslime_visual_mapping = '<leader>t'
let g:tslime_vars_mapping = '<leader>T'
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
" " }}}
