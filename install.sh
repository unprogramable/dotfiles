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
# copy vim/neovim config
if [[ $(which vim 2>/dev/null) ]];then
    echo -e "$tick set config for vim"
    cp ~/.vim/ex-conf.vim ~/.vim/vimrc
    # download extensions
    vim +PlugInstall +qall

fi

if [[ $(which nvim 2>/dev/null) ]];then
    echo -e "$tick set config for neovim"
    ln -s ~/.vim ~/.config/nvim
    cp ~/.vim/ex-conf.vim ~/.vim/init.vim
    # download extensions
    nvim +PlugInstall +qall
fi


# 4
echo "installation done."

