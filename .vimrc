syntax enable

set laststatus=2   " always show statusbar
set ttimeoutlen=10 " remove airline delay when exiting edit mode
set backspace=2    " make backspace work like most other apps

set encoding=utf-8
set termencoding=utf-8

set tabstop=4    " tab = 4 spaces
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab    " On pressing tab, insert 4 spaces

set autoread

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'
Plug 'bronson/vim-trailing-whitespace'
call plug#end()

" airlane
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#formatter = 'unique_tail' " hide path for unique files
let g:airline#extensions#tabline#show_buffers = 0          " hide buffers
let g:airline#extensions#tabline#tab_nr_type = 1           " show tab numbers

" promptline
let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch() ]}

