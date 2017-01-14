" ----------------------------- "
"  Pour mettre Vundle en place  "
" ----------------------------- "
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " début gestion plugins avec Vundle

" Plugin divers
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'plasticboy/vim-markdown'


" Plugins de thème
Plugin 'Lokaltog/vim-distinguished'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

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

syntax enable
set background=dark
colorscheme Tomorrow-Night-Eighties

" couper une ligne selon les mots et non au caractère près
set linebreak

" Modification des touches de déplacement du curseur pour le bépo
" Revoir le mapping car les touches R et N ne peuvent plus servir
:noremap t h
:noremap s j
:noremap r k
:noremap n l

