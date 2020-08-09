# install vim-plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
# Create a ~/.vimrc file (if you don't have one already):
# auto-loads at launch

call plug#begin()
Plug 'preservim/NERDTree'
call plug#end()


# install plugins
:PlugInstall

# update plugins
:PlugUpdate

# update a plugin
:PlugUpdate [name plugin]
:PlugUpdate NERDTree

# restore plugins
:PlugSnapshot ~/vim-plug.list

# remove a plugin
:PlugClean
