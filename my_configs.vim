" remove trailing white space(space, tab)
command Rtws execute "%s/[ \t]\\+$//g"
map gt :Rtws<cr>

autocmd Filetype cpp setlocal ts=4 sts=4 sw=4
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd FileType matlab setlocal commentstring=%\ %s

set cindent
set cinoptions=g-1

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" " vim scheme
" colorscheme jellybeans
" let g:jellybeans_use_term_italics = 1

" " theme for airline
" let g:airline_theme='powerlineish'

" switch between buffers
map gn :bn<cr>
map gb :bp<cr>
map gd :bd<cr>

map g9 <esc>a()<esc>
map g[ <esc>a[]<esc>
map g' <esc>a''<esc>

" color
" set t_Co=256

" set number
set number
set mouse=nicr

command Sd SyntasticToggleMode
command Sc SyntasticCheck

" for speed and for shorter lines
set synmaxcol=220

"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" NerdTree
map <C-l> :NERDTreeToggle<CR>

" if has('persistent_undo')      "check if your vim version supports it
"  set undofile                 "turn on the feature
"  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
" endif

" Goyo
nnoremap gz :Goyo<cr>

set history=1000

" Session
" Use :mksession to write to Session.vim
:set sessionoptions=buffers


""""""
""" For lightline-buffer
set showtabline=2   " always show tabline

" use lightline-buffer in lightline
let g:lightline = {
    \ 'tabline': {
        \ 'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
        \ 'right': [ [ 'close' ], ],
        \ },
    \ 'component_expand': {
        \ 'buffercurrent': 'lightline#buffer#buffercurrent2',
        \ },
    \ 'component_function': {
        \ 'bufferbefore': 'lightline#buffer#bufferbefore',
        \ 'bufferafter': 'lightline#buffer#bufferafter',
        \ 'bufferinfo': 'lightline#buffer#bufferinfo',
        \ },
    \ }

" remap arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" lightline-buffer settings
let g:lightline_buffer_logo = ' '
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = '<'
let g:lightline_buffer_active_buffer_right_icon = '>'
let g:lightline_buffer_separator_icon = ''

let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_rotate = 0
let g:lightline_buffer_fname_mod = ':t'
let g:lightline_buffer_excludes = ['vimfiler']

let g:lightline_buffer_maxflen = 30
let g:lightline_buffer_maxfextlen = 3
let g:lightline_buffer_minflen = 16
let g:lightline_buffer_minfextlen = 3
let g:lightline_buffer_reservelen = 20
"""
