set number
let g:vimtex_view_method ='zathura'
let g:livepreview_previewer = 'zathura'


let g:ycm_semantic_triggers = {
\  'tex'  : ['\ref{','\cite{'],
\ } 

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



set nocompatible
let &rtp  = '~/.config/nvim/plugged/vimtex,' . &rtp
let &rtp .= ',~/.config/nvim/plugged/vimtex/after'
syntax enable





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

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
