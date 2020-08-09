"=======================================
"✱ plugins ✱
"--------------------------------------
runtime core/keybind.vim
runtime core/plug-install.vim
runtime core/plug-conf.vim

"=======================================
"✱ settings ✱
"---------------------------------------
" editor settings
set number            " show line numbers
set showcmd           " show command in bottom bar
set wildmenu          " visual autocomplete for command menu
set visualbell        " don't beep
set noerrorbells      " don't beep
set nobackup          " don't make back files
set noswapfile        " don't make swp files
set encoding=utf-8    " encoding utf-8
set mouse=a           " enable mouse
set showmatch         " show matching parenthesis
set cursorline        " show a visual line under the cursor's in current line
set history=1000      " remember more commands and search history
set undolevels=1000   " use many muchos levels of undo
set secure            " for info do > :h secure
set nowrap            " don't wrap lines
set title             " change the terminal's title
syntax enable         " enable syntax highlighting

" transparent bg
let t:is_transparent = 0
set background=dark
hi Normal guibg=NONE ctermbg=NONE

" indent settings
set expandtab         " expand tabs into spaces
set shiftround        " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=4      " number of spaces to use for autoindenting
set softtabstop=4     " number of spaces in tab when editing
set tabstop=4         " number of visual spaces per TAB
set ts=4              " set tabs to have 4 spaces
set smarttab          " insert tabs on the start of a line according to shiftwidth, not tabstop
set autoindent        " indent when moving to the next line
set copyindent        " copy the previous indentation on autoindenting
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" fold settings
set foldenable        " enable folding
set foldnestmax=2     " 10 nested fold max
set foldmethod=indent " fold based on indent level
set foldlevelstart=5  " open most folds by default

" search settings
set smartcase         " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch          " highlight matches
set incsearch         " show search matches as you type
set ignorecase        " ignore case when searching

" info file
if has('nvim')
    set viminfo+='10000,n~/.vim/tmp/.nvim.info
endif

if !has('nvim')
    set viminfo+='10000,n~/.vim/tmp/.vim-info
    set nocompatible      " be iMproved
endif


" This enabled Vim to load plugins, settings or key mappings and
" indenting intelligence is enabled based on the syntax rules for the file type
filetype plugin indent on

" full stack development indent settings
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \| set softtabstop=2
    \| set shiftwidth=2
    \| set ts=2

" Return to last edit position when opening file
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" when you forget for openning a file with sudo
" save it with command :w!!
cmap w!! w !sudo tee % >/dev/null

" set line limit to 80
" vim:set et sw=1 cc=100:
