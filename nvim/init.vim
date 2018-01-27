"                                  __
"     ___      __    ___   __  __ /\_\    ___ ___
"   /' _ `\  /'__`\ / __`\/\ \/\ \\/\ \ /' __` __`\
"   /\ \/\ \/\  __//\ \L\ \ \ \_/ |\ \ \/\ \/\ \/\ \
"   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
"    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/



set number
let g:vimtex_view_method ='zathura'
let g:livepreview_previewer = 'zathura'
set clipboard+=unnamed


let g:ycm_semantic_triggers = {
\  'tex'  : ['\ref{','\cite{'],
\ }

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:user_emmet_leader_key='<C-Z>'

set nocompatible
let &rtp  = '~/.config/nvim/plugged/vimtex,' . &rtp
let &rtp .= ',~/.config/nvim/plugged/vimtex/after'
syntax enable

highlight Pmenu ctermfg=15 ctermbg=0

let g:bc_server_path = "/home/lazarus/.config/nvim/plugged/browser-connect.vim/server"

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'valloric/youcompleteme'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'bjoernd/vim-ycm-tex'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bogdanp/browser-connect.vim'
Plug 'mattn/emmet-vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()
