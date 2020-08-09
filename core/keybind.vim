" jk is escape
inoremap jk <esc>

" highlight last inserted text
nnoremap gV `[v`]

" force to stop using the arrow keys
map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" toggle for paste
set pastetoggle=<F2>

" leader keybinds
let mapleader=' '
nnoremap <space> <nop>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" visual movement
nnoremap j gj
nnoremap k gk

" turn off search highlight
nnoremap <leader>/ :nohlsearch<CR>

" delete line <leader>d
nnoremap <leader>d dd

" Quickly edit/reload the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>

" Quickly Edit/Exit
nmap <leader>qq :wq<CR>
nmap <leader>ss :w <CR>
nmap <leader>zz :q!<CR>

" toggle between regular display and list display
nmap <leader>l :set invlist<cr>
set list
set listchars=tab:>\ ,trail:X,extends:>,nbsp:#,space:.
