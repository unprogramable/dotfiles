# my personal [vim/nvim] config

**a simple config for starting with [neovim/vim] + gruvbox theme**

## screenshots
![screenshot1](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/01.png)

![screenshot6](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/06.png)

## install
1.**back up ur old** *~/.vim* **,** *~/.config/nvim* **config**
```bash
mv ~/.vim ~/.vim.bk
mv ~/.conf/nvim ~/.config/nvim.bk
```

2.**clone config into home directory** *~/.vim*
```bash
git clone --depth 1 https://github.com/unprogramable/dotfiles.git ~/.vim
```

3.**for neovim**
```bash
ln -s ~/.vim ~/.config/nvim
cp ~/.vim/conf.example.vim ~/.vim/init.vim
```

3.**for vim**
```bash
cp ~/.vim/conf.example.vim ~/.vim/vimrc
```

4.**install plugins**

*run vim and run this command in normal mode*
```bash
:PlugInstall
```

5.**restart and done**


## docs for keybindings
```bash
~/.vim/core/docs/keybind.vim
```
