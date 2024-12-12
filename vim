───────┼────────────────────────────────────────────────────────────────────────────────
   1   │ set number
   2   │ set mouse=a
   3   │ set numberwidth=1
   4   │ set clipboard=unnamed
   5   │ syntax on
   6   │ set showcmd
   7   │ set ruler
   8   │ set encoding=utf8
   9   │ set showmatch
  10   │ set relativenumber
  11   │ set sw=3
  12   │ set laststatus=2
  13   │ set noshowmode
  14   │ set nocompatible
  15   │ set backspace=indent,eol,start
  16   │ set autoindent
  17   │ set smartindent
  18   │
  19   │ " set transparent background
  20   │ " hi Normal guibg=NONE ctermbg=NONE
  21   │
  22   │
  23   │ call plug#begin('~/.vim/plugged')
  24   │
  25   │ Plug 'morhetz/gruvbox'
  26   │ Plug 'arcticicestudio/nord-vim'
  27   │
  28   │ " IDE
  29   │ Plug 'easymotion/vim-easymotion'
  30   │ Plug 'sheerun/vim-polyglot' " proporciona paquetes de idioma y sangría.
  31   │ Plug 'jiangmiao/auto-pairs' " finalización de pares al escribir corchetes, paré
       │ ntesis, comillas, etc.
  32   │ Plug 'preservim/nerdtree' " un explorador de sistema de archivos integrado.
  33   │ Plug 'preservim/tagbar' " un panel que muestra las etiquetas de un archivo de o
       │ rigen.
  34   │ Plug 'dyng/ctrlsf.vim' " habilita la búsqueda asíncrona en el sistema de archiv
       │ os.
  35   │ Plug 'derekwyatt/vim-fswitch' " para cambiar entre archivos de implementación y
       │  de encabezado.
  36   │ Plug 'derekwyatt/vim-protodef' "  para extraer prototipos de funciones en archi
       │ vos de implementación.
  37   │ Plug 'ryanoasis/vim-devicons' " proporciona iconos para NERDTree.
  38   │ Plug 'w0rp/ale'
  39   │
  40   │ " AI Copilot
  41   │ Plug 'github/copilot.vim'
  42   │
  43   │ call plug#end()
  44   │
  45   │ " definicion de temas, colores y configuraciones
  46   │ colorscheme gruvbox
  47   │ let g:gruvbox_contrast_dark = 'hard'
  48   │ set background=dark
  49   │
  50   │ " Workaround for creating transparent bg
  51   │ autocmd SourcePost * highlight Normal   ctermbg=NONE guibg=NONE
  52   │ \ |    highlight LineNr     ctermbg=NONE guibg=NONE
  53   │ \ |    highlight SignColumn ctermbg=NONE guibg=NONE
  54   │
  55   │ " Start NERDTree. If a file is specified, move the cursor to its window.
  56   │ autocmd StdinReadPre * let s:std_in=1
  57   │ autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p |
       │ endif
  58   │ let NERDTreeShowHidden=1
  59   │
  60   │ let mapleader=" "
  61   │ nmap <Leader>s <Plug>(easymotion-s2)
  62   │ nmap <Leader>n :NERDTreeToggle<CR>
  63   │ nmap <Leader>tv :botright vnew <Bar> :terminal <CR>
  64   │ nmap <Leader>th :botright new <Bar> :terminal <CR>
  65   │
  66   │ " Tagbar settings
  67   │ " Focus the panel when opening it
  68   │ "
  69   │
  70   │ let g:tagbar_autofocus = 1
  71   │ " Highlight the active tag
  72   │ let g:tagbar_autoshowtag = 1
  73   │ " Make panel vertical and place on the right
  74   │ let g:tagbar_position = 'botright vertical'
  75   │
  76   │ let g:ale_sign_error = '✘'
  77   │ let g:ale_sign_warning = '⚠'
  78   │ highlight ALEErrorSign ctermbg=NONE ctermfg=red
  79   │ highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
  80   │
  81   │ " Mapping to open and close the panel
  82   │ nmap <F8> :TagbarToggle<CR>
  83   │
  84   │ " Mapping to switch between header and source files
  85   │ " nmap <F9> :FSHere<CR>
  86   │