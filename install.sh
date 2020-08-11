#!/usr/bin/env bash

# variables
exm_conf="~/.vim/conf.example.vim"
repo="https://github.com/unprogramable/dotfiles.git"
tick="\033[32m[+]>\033[m"

# 1
# back up old configs
echo "$tick backup old configs ~/.vim, ~/.config/nvim"
mv ~/.vim       ~/.vim.bk
mv ~/.config/nvim ~/.config/nvim.bk

# 2
# clone git repo
echo "$tick clone repo: \033[31m${repo}\033[m"
git clone --depth 1 "$repo" ~/.vim

# 3
# copy vim/neovim config
if [[ ! $(which vim 2>/dev/null) ]];then
    echo "$tick set config for vim"
    cp "$exm_conf" "~/.vim/init.vim"
    # download extensions
    nvim +PlugInstall +qall

fi

if [[ ! $(which nvim 2>/dev/null) ]];then
    echo "$tick set config for neovim"
    ln -s "~/.vim" "~/.config/nvim"
    cp "$exm_conf" "~/.vim/vimrc"
    # download extensions
    nvim +PlugInstall +qall
fi


# 4
echo "installation done."

