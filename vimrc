" Configuration des plugins avec Vundle
set nocompatible
filetype off

" Config du chemin d'exécution (runtime path) pour inclure les fonctionnalités
" de Vundle.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Activation de Vundle
Plugin 'VundleVim/Vundle.vim'


"
" Ajout des plugins
"
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'docunext/closetag.vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'vitalk/vim-simple-todo'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'tpope/vim-endwise'

" navigate in source code easily (structure etc), useful for Java
" Plugin 'vim-scripts/taglist.vim'

call vundle#end()
filetype plugin indent on

" Remap leader key
let mapleader=','
let maplocalleader=','

" ----------
" ----------

" Tabulations avec une largeur de 4 espaces
set tabstop=4
set shiftwidth=4
set cindent
set autoindent
syntax enable

" Apparence de l'éditeur : n° lignes + thème
set number
set cursorline
set relativenumber

set hlsearch

" couper les lignes selon les mots
set linebreak

" Gestion du thème
set bg=dark
colorscheme solarized

" Pour la taille de la police de gvim
set guifont=Monospace\ Regular\ 11

" Réglages de NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

" Airline apparaît toujours
set laststatus=2

" Bouger le curseur automatiquement quand { + insérer automatiquement }
inoremap {<CR> {<CR>}<Esc>O

" empêcher conflits entre EditorConfig et Fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" ----------
"
" Configuration des touches pour la disposition bépo
" cf http://bepo.fr/wiki/Vim
"

" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>

" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk

" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédent)
noremap j t
noremap J T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s

" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj
" onglet précédant / suivant
noremap gb gT
noremap gé gt
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0


" Remaper la gestion des fenêtres
" ———————————————————————————————
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>
