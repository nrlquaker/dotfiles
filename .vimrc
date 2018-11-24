syntax enable

set laststatus=2   " always show statusbar
set ttimeoutlen=10 " remove airline delay when exiting edit mode
set backspace=2    " make backspace work like most other apps

set wildmenu

set encoding=utf-8
set termencoding=utf-8

set list             " show whitespaces
set listchars=tab:⇥· " show tabs

set tabstop=4    " tab = 4 spaces
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab    " on pressing tab, insert 4 spaces

set autoread     " reload file when changed outside of vim

set hlsearch     " highlight search matches
" press Space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" switch off highlighting when enter insert mode
nnoremap i :nohlsearch<CR>i
" https://github.com/lifepillar/vim-solarized8/blob/master/colors/solarized8.vim
hi Search ctermfg=136 ctermbg=NONE guifg=#b58900 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse

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
let g:promptline_theme = 'airline'
let g:promptline_preset = {
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch() ]}
