"                                  __
"     ___      __    ___   __  __ /\_\    ___ ___
"   /' _ `\  /'__`\ / __`\/\ \/\ \\/\ \ /' __` __`\
"   /\ \/\ \/\  __//\ \L\ \ \ \_/ |\ \ \/\ \/\ \/\ \
"   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
"    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/


set number
"set ruler
set wrap
let g:vimtex_view_method ='mupdf'
let g:livepreview_previewer = 'mupdf'
set clipboard+=unnamed
set shiftwidth=4
let g:NERDTreeMinimalUI = 0
set mouse=a
"syntax on
filetype on
set nocompatible


"Airline Customization
let g:airline_left_sep = '▓░'
let g:airline_right_sep = '░▓'
let g:airline_theme='term'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif



"NERDTree
map <C-n> :NERDTreeToggle<CR>

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set fillchars+=vert:\ 
"set sw=2 ts=2 sts=2 et
hi VertSplit ctermbg=2 ctermfg=0
hi LineNr ctermbg=0 ctermfg=1

highlight Pmenu ctermfg=7 ctermbg=0

autocmd StdinReadPre * let s:std_in=1


autocmd FileType html set omnifunc=htmlcomplete#CompleteTags



" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'docunext/closetag.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"Plug 'bjoernd/vim-ycm-tex'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:ycm_global_ycm_extra_conf = '/home/lazarus/.config/nvim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'


"htmlcompletetags

" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non closing tags self closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'


let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_NCM_LOG_LEVEL="DEBUG"
let $NVIM_NCM_MULTI_THREAD=0
