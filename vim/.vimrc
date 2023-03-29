" Set compatibility to Vim only.
set nolist

" Turn on syntax highlighting
syntax on                       "Enable syntax highlighting

" configuration
set mouse=a                     "Activar uso del mouse
set encoding=UTF-8              "Habilitar Codificacion de archivos
set noerrorbells                "No sound of error

" configs tabular
set sw=2                        "Reemplaza tabulacion por espacios
set tabstop=2                   "Reemplazo de tabulacion"
set expandtab                   "Tabular in spaces
set smartindent                 "Automatically indent lines (default)

" config colum numbers
set number                      "Mostrar numeracion de lineas
set relativenumber              "Habilitacion Numeros Relativos (rnu)
set numberwidth=1               "Espacio de la columna de numeros

" habilirar portapapeles
set clipboard=unnamed           "Clipboard Primary or copy-on-select midle boton mouse
set clipboard=unnamedplus       "Clipboard os sistem Ctrl+c Ctrl+v

" config cursor
set cursorline                  "Line on Curso

" searching
set ignorecase                  "select case-insenitiv search (not default)
set incsearch                   "Search incremental

" SwapFile
set  noswapfile                 "no swapfile

" Backup File
set nobackup                    "no backup file

" Status Bar
set showcmd                     "Habilitar mostrar comandos en ejecucion
set ruler                       "show cursor line and column in the status line in neovim
set showmatch                   "show matching brackets
"set showmode                    "display mode INSERT/REPLACE/?
set laststatus=2                "Always show statusline
if !has('gui_running')
  set t_Co=256                  "Use 256 colours (Use this setting only if your terminal supports 256 colours)
endif
set noshowmode                  "No visualizar estado en la barra de estado inferiror 

"Themes
""Horizon
"set termguicolors

" Configuration of YAML
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:> foldmethod=indent nofoldenable

"" Included
so ~/.vim/plugins.vim
so ~/.vim/plugins-config.vim
so ~/.vim/maps.vim
