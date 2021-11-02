set guicursor=a:blinkon100

set clipboard+=unnamedplus

set cursorline
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set hlsearch    " highlight all search patterns
set incsearch   " enable incremental search
set ignorecase  " case insensitive search by default
set smartcase   " case sensitive search when using uppercase characters
set mouse=a     " enable mouse support

" List of white spaces
set listchars=eol:¬,tab:↦\ ,trail:~,extends:>,precedes:<,space:·

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" TextEdit might fail if hidden is not set.
set hidden

"set colorcolumn=80
"highlight ColorColumn ctermbg=DarkGray guibg=LightGray

so ~/.dotfiles/nvim/plugins.vim

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standar']
let mapleader = " "
let g:netrw_browse_split = 4
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

so ~/.dotfiles/nvim/maps.vim

