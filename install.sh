#!/usr/bin/env bash

# variables
repo='https://github.com/unprogramable/dotfiles.git'
tick="\033[0;32m[+]>\033[1;33m"

# 1
# back up old configs
echo -e "$tick backup old configs ~/.vim, ~/.config/nvim"

[[ -e ~/.vim         ]] && mv ~/.vim ~/.vim.bk
[[ -e ~/.config/nvim ]] && mv ~/.config/nvim ~/.config/nvim.bk

# 2
# clone git repo
echo -e "$tick clone repo: \033[34m${repo}\033[m"
git clone --depth 1 "$repo" ~/.vim

# 3
# set default config
cp ~/.vim/ex-conf.vim ~/.vim/init.vim
cp ~/.vim/ex-conf.vim ~/.vim/vimrc
# link config for neovim
ln -s ~/.vim ~/.config/nvim

# download plugins
if [[ $(which vim 2>/dev/null) ]];then
    vim +PlugInstall +qa
elif [[ $(which nvim 2>/dev/null) ]];then
    nvim +PlugInstall +qa
else
    echo -e "$tick cant Find neovim/vim for install plugins"
    echo -e "$tick you can install plugins by command \033[32m :PlugInstall"
fi


# 4
echo -e "$tick installation done."

