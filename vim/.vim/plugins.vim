" Habilitando Manejador de Pugins
call plug#begin('~/.vim/plugged')

" Syntaxis
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "indexado del codigo para resaltar syntaxis
" Syntaxis Lenguajes
Plug 'dense-analysis/ale' "Asynchronous Lint Engine - syntax checking and semantic errors
Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform' "Terraform sybtaxis and comand
Plug 'juliosueiras/vim-terraform-completion'
Plug 'pangloss/vim-javascript'    "JavaScript support
Plug 'leafgarland/typescript-vim' "TypeScript syntax
Plug 'stephpy/vim-yaml', {'for': 'yaml'} "YAML
Plug 'godlygeek/tabular' "For markdown syntax
Plug 'preservim/vim-markdown' "For markdown syntax

" Tab Bar
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Status Bar
" Lightline
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
" Vim-Airline
"Plug 'vim-airline/vim-airline'

" Themes
""Gruvbox
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
""PaperColor
Plug 'NLKNguyen/papercolor-theme'
""Nightfox
Plug 'EdenEast/nightfox.nvim', { 'tag': 'v1.0.0' }

" Icons
Plug 'ryanoasis/vim-devicons' "iconos a mostrar en el panel de navegacion

" NerdTree
Plug 'scrooloose/nerdtree' "panel de navegacion

" Typing
Plug 'jiangmiao/auto-pairs' "auto cerrado de llaves y otros
Plug 'alvan/vim-closetag' "auto cerrado de tags
Plug 'tpope/vim-surround' "edicion de llaves osimbolos de cierre

" Tmux
Plug 'benmills/vimux' "trabajo de miltiples ventanas
Plug 'christoomey/vim-tmux-navigator' "navegacion entre ventanas

" Autocomplete
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}

" Test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline' " ver lineas en codogo identado
Plug 'scrooloose/nerdcommenter' " para comentar lineas
Plug 'jeffkreeftmeijer/vim-numbertoggle' " deshabilitar set number en modo edit

" git in vim
Plug 'tpope/vim-fugitive' " Git desde vim

" map repeat . command
Plug 'tpope/vim-repeat' " Repite accines con punto (.) que no sean nativas de vim

call plug#end()
