
"==============================
" name : dark color scheme
" desc : morhetz/gruvbox
"------------------------------
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
"==============================
" name : scrooloose/nerdtree
" desc : File Browsing
"------------------------------
"~open nerd tree with Ctrl-n
map <leader>n :NERDTreeToggle :p:h<CR>
"~start NERDTree automatically at startup if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"~hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" remove help in top line
let NERDTreeMinimalUI=1
"==============================
" desc : highlight and delete all trailing whitespace while saving file
" name : ntpeters/vim-better-whitespace
"------------------------------
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
"~max lines file for strip
let g:strip_max_file_size=5000
"~dont ask for strip
let g:strip_whitespace_confirm=0
"~strip space between tabs
let g:show_spaces_that_precede_tabs=1

"===================================
