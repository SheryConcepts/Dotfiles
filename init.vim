set nocompatible
"------------------------------------------------------------------------------------------------
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"-----------------------------------------------------------------------------------------------------
"----------------------------------------------------------------------------------------------------
" set jk or kj to escape
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc> 
vnoremap kj <Esc>  

" set J and K interfare with my tmux window resizing
map <S-j> <Nop>
map <S-k> <Nop>

" tmux and vim handshake
" auto rebalance vim splits when tmux panes are created
autocmd VimResized * :wincmd =
" <leader>- to maximize current split
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
" leader= to rebalance 
nnoremap <leader>= :wincmd =<cr>

" rapid editing of vimrc 
nnoremap <leader>so :source $MYVIMRC<cr>
nnoremap <leader>vr :sp $MYVIMRC<cr>

map <space> <Nop>
let mapleader = " "

set relativenumber

nnoremap <leader>q :q<cr>
nnoremap <leader>lq :q!<cr>
nnoremap <leader>w :w<cr>

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

nnoremap <leader>n :NERDTreeToggle<cr>

" split and ask for file
nnoremap <leader>u :sp 
" split current file 
nnoremap <leader>uf :sp<cr>

" vertial split and ask for file 
nnoremap <leader>i :vsplit 
" vertical split and ask for file
 nnoremap <leader>if :vsplit<cr>
