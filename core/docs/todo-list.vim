:h init.vim
"--------------------------------------
" see
nvim -h

" display intro msg
:intro

" local setup put you'r command into .nvimrc in current dir
" suspend :stop or <C-z>

" run a bash command
:!cmd

" run and put command output in current buffer
:read !cmd

" sort lines
select line with v
do :sort

" startup
" packages
" vimrc-intro
" base-directories
" save-settings
" shada-file
" -b

"<-nvim docs->
"> https://neovim.io/doc/user/starting.html


"<-plugins->

" https://github.com/BurntSushi/ripgrep for fuzzy finder

" coc.vim > https://github.com/BurntSushi/ripgrep
" sudo pacman -S nodejs
" :CoC
" Use release branch (recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"---------

" repeat.vim > https://github.com/tpope/vim-repeat
"---------
