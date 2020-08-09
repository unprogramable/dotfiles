" run vim without plugin
vim --noplugin

" tutorials
vimtutor

" normal mode
" key     | action                     >> also work like this
" ---------------------------------------------------------------
" keys:   ^
"         k
"   < h       l >
"         j
"         v

:w       " save
:q!      " quit
:wq      " save and quit
:bd      " close buffer
ESC      " normal mode
i        " insert mode
r        " replace mode
v        " visual mode
a        " insert mode ,go next char

x        " delete
A        " going in end line, insert mode
o        " open up a line below the cursor, insert mode
O        " open up a line above the cursor, insert mode

[num]e   " end of the word
[num]w   " start of the word

d[num]d  " delete a whole line >> '[num]dd'
d[num]e  " delete to end of the word
d[num]w  " delete word and cursor up to the next word
d$       " delete to end of the line
d^       " delete to beggin of the line

" c like d but after action place you in insert mode

c[num]e  " delete to end of the word
c[num]w  " delete word and cursor up to the next word
c$       " delete to end of the line
c^       " delete to beggin of the line

yw       " yank one word
y$       " yank to end lof the line
y^       " yank to start of the line

dd       " delete the line and store it in a vim register
p        " put perviously deleted text after the cursor

" copy
" [Vv] > select > y : yank

u        " undo
U        " fix a whole line

r[char]  " replace the character at the cursor with [char]

C-g      " show you location in the file and the file status
gg       " move you to the start of the file
G        " move you to the bottom of the file
[num]gg  " move you to the num of the line
C-O      " back to where you came from
C-I      " forward to next location

/[text]  " forwarded search for the phrase [n/N]
?[text]  " backwarded search for the phrase [n/N]
%        " cursor move to next parentheses
zi       " folding/unfolding
!        " run shell command

<f5>     " neotree >
i        " v
s        " h

C-w <arrow> " move between windows

:r filename         " insert the contents of a file
:r !ls              " return output a shell command

" save a section file
" v [select]:w [name]

:s/old/new/         " match 1   substitute 'new' for 'old'
:s/old/new/g        " match all substitute 'new' for 'old'
:[n],[j]s/old/new/g " match all in line n to j
:%s/old/new/g       " change in all file
:%s/old/new/gc      " match and replace with prompt

:set ic             " search ignore case
:set noic

:set hlsearch       " highlight search matches
:set nohlsearch

:set nocp           " autocomplete command in :[text] C-d or tab

" -------------------
"  file

" split the layout vertically (opening the new file below the current file
" :sp <filename>

" split the layout horizontal (opening the new file to the right of your current file).
" :vs <filename>


" :h script
" :h vim-script-intro

