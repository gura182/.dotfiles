" Lightlane config
set noshowmode

let g:ctrlp_status_func = {
 \ 'main': 'CtrlPStatusFunc_1',
 \ 'prog': 'CtrlPStatusFunc_2',
 \ }
function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
 return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
 return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'
function! TagbarStatusFunc(current, sort, fname, ...) abort
 return lightline#statusline(0)
endfunction

let g:lightline = {
    \ 'active': {
    \   'left': [['fileicon', 'bufnum', 'paste'], ['relativepath', 'readonly', 'modified'], ['ctrlpmark']],
    \   'right': [['mode'], ['percentlineinfo', 'whitespace'], ['fileencoding', 'filetype'], ['gitbranch']]
    \ },
    \ 'inactive': {
    \   'left': [['inactive'], ['relativepath']],
    \   'right': [['bufnum']]
    \ },
    \ 'component': {
    \   'percentlineinfo': "\uE714 %2p%% %2l:%-2c",
    \   'bufnum': '%n',
    \   'fileicon': "\uF723",
    \   'texticon': "\uE714",
    \   'branchicon': "\uE725",
    \   'inactive': 'inactive'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'LightlineGitBranch',
    \   'ctrlpmark': 'CtrlPMark',
    \   'kitestatus': 'kite#statusline'
    \ },
    \ 'component_expand': {
    \   'whitespace': 'lightline#whitespace#check',
    \ },
    \ 'component_type': {
    \   'whitespace': 'warning',
    \ },
    \ 'colorscheme': 'deus',
    \ 'separator' : {
    \   'left': "\uE0BC",
    \   'right': "\uE0B6"
    \ },
    \ 'subseparator': {
    \   'left': '',
    \   'right': '|'
    \ }
    \}

function! LightlineGitBranch()
    let branch = FugitiveHead()
    if empty(branch)
        return ''
    endif
    return "\uE725 " . branch
endfunction

function! CtrlPMark()
    if expand('%:t') ==# 'ControlP' && has_key(g:lightline, 'ctrlp_item')
        call lightline#link('iR'[g:lightline.ctrlp_regex])
        return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
                                    \ , g:lightline.ctrlp_next], 0)
    else
        return ''
    endif
endfunction

let g:ctrlp_status_func = {
      \ 'main': 'CtrlPStatusFunc_1',
      \ 'prog': 'CtrlPStatusFunc_2',
      \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
    let g:lightline.ctrlp_regex = a:regex
    let g:lightline.ctrlp_prev = a:prev
    let g:lightline.ctrlp_item = a:item
    let g:lightline.ctrlp_next = a:next
    return lightline#statusline(0)
endfunction
function! CtrlPStatusFunc_2(str)
    return lightline#statusline(0)
endfunction

