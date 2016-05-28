" ----------------------------- "
"  Pour mettre Vundle en place  "
" ----------------------------- "
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " début gestion plugins avec Vundle

" Plugin divers
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-Commenter'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'

" Plugins pour des langages
Plugin 'wting/rust.vim'

" Plugins de thème
Plugin 'KabbAmine/yowish.vim'

" ----------------------------- "
"  REFAIRE CONFIG               "
"  - mode LaTeX                 "
"  - voir ce qu'il y a d'autre  "
" ----------------------------- "


call vundle#end()
filetype plugin indent on
" ----------------------------- "
"  Fin de la config de Vundle   "
" ----------------------------- "

" show existing tab with 4 spaces width
set tabstop=4
set shiftwidth=4
set cindent
set autoindent

" Apparence de l'éditeur : n° lignes + thème
set number
set cursorline
set relativenumber

colorscheme yowish

" couper une ligne selon les mots et non au caractère près
set linebreak

" Ouvrir le NERDTree
map <C-n> :NERDTreeToggle<CR>

