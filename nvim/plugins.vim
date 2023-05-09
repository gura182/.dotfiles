call plug#begin('~/.config/nvim/plugged')

" Status bar
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'
    Plug 'deponian/vim-lightline-whitespace', {'branch': 'main'}
" Devicons
    Plug 'ryanoasis/vim-devicons'
" Tools
"    Plug 'jremmen/vim-ripgrep'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'mbbill/undotree'
    Plug 'preservim/nerdtree', {'branch': '6.10.16'}
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight', {'commit': '5178ee4d7f4e7761187df30bb709f703d91df18a'}

" Git Tools
    Plug 'tpope/vim-fugitive'
    Plug 'git@github.com:airblade/vim-gitgutter.git'

" Syntax
    Plug 'neoclide/coc.nvim', {'branch': 'v0.0.81'}
    "Plug 'git@github.com:Valloric/YouCompleteMe.git'
    "Plug 'leafgarland/typescript-vim'
    "Plug 'vim-utils/vim-man'
    "Plug 'lyuts/vim-rtags'
    "Plug 'ericcurtin/CurtineIncSw.vim'

" Color-schemes
    "Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'sainnhe/gruvbox-material'

call plug#end()

if has('termguicolors')
    set termguicolors
endif

"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard'
"set background=dark
"let g:gruvbox_transparent_bg=1
"let g:gruvbox_bold='1'
"let g:gruvbox_termcolors=16

" GruvBox 8 settings
let g:gruvbox_bold = 1
let g:gruvbox_italics = 1
let g:gruvbox_italicize_strings = 0
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_plugin_hi_groups = 1
let g:gruvbox_transp_bg = 1
colorscheme gruvbox8

" GruvBox Material settings
"set background=dark
"let g:gruvbox_material_background = 'hard'
"let g:gruvbox_material_better_performance = 1
"colorscheme gruvbox-material

" Devicons
set encoding=UTF-8
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_startify = 1

" Airline settings
let g:airline_powerline_fonts = 1
"let g:airline_theme='deus'

"let g:airline_left_sep = "\uE0B4"
"let g:airline_right_sep = "\uE0B6"

" Lightlane
so ~/.dotfiles/nvim/lightline-config.vim
