call plug#begin('~/.config/nvim/plugged')

" Tools
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
"    Plug 'jremmen/vim-ripgrep'
    Plug 'git@github.com:kien/ctrlp.vim.git'
    Plug 'mbbill/undotree'

" Git Tools
    Plug 'tpope/vim-fugitive'
    Plug 'git@github.com:airblade/vim-gitgutter.git'

" Syntax
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'git@github.com:Valloric/YouCompleteMe.git'
    "Plug 'leafgarland/typescript-vim'
    "Plug 'vim-utils/vim-man'
    "Plug 'lyuts/vim-rtags'
    "Plug 'ericcurtin/CurtineIncSw.vim'

" Color-schemes
    "Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-gruvbox8'

call plug#end()

"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard'
"set termguicolors   " Nvim emits true (24-bit) colours in the terminal
"set background=dark
"let g:gruvbox_transparent_bg=1
"let g:gruvbox_bold='1'
"let g:gruvbox_termcolors=16

" GruvBox 8 settings
set termguicolors   " Nvim emits true (24-bit) colours in the terminal
let g:gruvbox_bold = 1
let g:gruvbox_italics = 0
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_plugin_hi_groups = 1
let g:gruvbox_transp_bg = 0
colorscheme gruvbox8

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

