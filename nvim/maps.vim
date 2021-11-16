" Easy movement
nnoremap <C-j> 10j
nnoremap <C-k> 10k
nnoremap <C-h> b
nnoremap <C-l> w
" Easy movement in visual mode
xnoremap <C-h> b
xnoremap <C-l> w

" Editing Key maps
xnoremap p "0p


nmap <C-s> :w<CR>       " save file
nmap <C-q> :q<CR>       " quit file

" Move lines Up/Down
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Set numbre, relativenumber and white spaces
" nmap <C-N><C-N> :set number!<CR>
" nmap <C-R><C-R> :set relativenumber!<CR>
" nmap <C-W><C-W> :set list!<CR>
nnoremap <leader>n :set number!<CR>
nnoremap <leader>r :set relativenumber!<CR>
nnoremap <leader>w :set list!<CR>

" Misc key maps
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>v :wincmd v<CR>    " split in a vertical windows
nnoremap <leader>b :wincmd s<CR>    " split in a horizontal windows
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <C-p> :GFiles<CR>

" Clear search highlight
nnoremap <silent> <leader>a :<C-u>nohlsearch<CR><C-l>

" YCM key maps
" The best part.
" nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
" nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<CR>
" nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
" nnoremap <leader>gn :YcmCompleter RefactorRename<SPACE>

" CoC key maps
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>cr :CocRestart
" The next works for vim
"inoremap <silent><expr> <Nul> coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map <F4> :CocCommand clangd.switchSourceHeader<CR>

" Source/Header switch key map
"map <F4> :call CurtineIncSw()<CR>

" Quick semicolon
nnoremap <leader>; $a;<Esc>

