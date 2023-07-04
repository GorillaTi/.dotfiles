" Habilitando Manejador de Pugins
" Inside the Vim-Plug block on your .vimrc
call plug#begin('~/.vim/plugged')

" Syntax
Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "indexado del codigo para resaltar syntaxis
Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale' "Asynchronous Lint Engine - syntax checking and semantic errors
" Syntax Lenguajes
Plug 'hashivim/vim-terraform' "Terraform sybtaxis and comand
Plug 'juliosueiras/vim-terraform-completion'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " This plugin adds Go language support for Vim
Plug 'pangloss/vim-javascript'    "JavaScript support
Plug 'leafgarland/typescript-vim' "TypeScript syntax
Plug 'stephpy/vim-yaml', {'for': 'yaml'} "YAML
Plug 'godlygeek/tabular' "For markdown syntax
Plug 'preservim/vim-markdown' "For markdown syntax
"Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'} " For ansible.
"Plug 'yaegassy/coc-nginx', {'do': 'yarn install --frozen-lockfile'} " For Nginx server lenguaje.
" Docker
Plug 'ekalinin/Dockerfile.vim' " Vim syntax file for Docker's Dockerfile and snippets for snipMate.

" Nvim Tree
"Plug 'nvim-tree/nvim-web-devicons' " Icons.
"Plug 'nvim-tree/nvim-tree.lua' " Nvim tree file explorer in lua.

" Tab Bar
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
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
Plug 'ryanoasis/vim-devicons' " Iconos a mostrar en el panel de navegacion.

" NerdTree
Plug 'scrooloose/nerdtree' " Panel de navegacion.

" Typing
Plug 'jiangmiao/auto-pairs' " Auto cerrado de llaves y otros.
Plug 'alvan/vim-closetag' " Auto cerrado de tags.
Plug 'tpope/vim-surround' " Edicion de llaves osimbolos de cierre.

" Tmux
Plug 'benmills/vimux' " Trabajo de miltiples ventanas
Plug 'christoomey/vim-tmux-navigator' " Navegacion entre ventanas

" Autocomplete
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch' : 'release'} " Intalar autocompletado conforme al lenguaje utilizado.

" Test
"Plug 'tyewang/vimux-jest-test'
"Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline' " Ver lineas en codogo identado.
Plug 'scrooloose/nerdcommenter' " Comentar lineas.
Plug 'jeffkreeftmeijer/vim-numbertoggle' " Deshabilitar set number en modo editar.

" git in vim
Plug 'tpope/vim-fugitive' " Git desde vim.

" map repeat . command
Plug 'tpope/vim-repeat' " Repite acciones con punto (.) que no sean nativas de vim.

call plug#end()
