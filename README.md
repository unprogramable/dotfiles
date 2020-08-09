# my personal [vim/nvim] config

**a simple config for get starting with [neovim/vim] + gruvbox theme**

## screenshots
![screenshot1](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/01.png)

![screenshot2](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/02.png)

![screenshot3](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/03.png)

![screenshot4](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/04.png)

![screenshot5](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/05.png)

![screenshot6](https://raw.githubusercontent.com/unprogramable/dotfiles/master/screenshots/v1/06.png)

## install
1.**back up ur old** *~/.vim* **,** *~/.config/nvim* **folder**
```bash
mv ~/.vim ~/.vim.bk
mv ~/.conf/nvim ~/.config/nvim.bk
```

2.**clone dot files into** *~/.vim* **path**
```bash
git clone --depth 1 https://github.com/unprogramable/dotfiles.git ~/.vim
```

3.**for neovim run this command**
```bash
ln -s ~/.vim ~/.config/nvim
cp conf.example.vim init.vim
```

4.**copy config file**
```bash
cd ~/.vim
cp conf.example.vim vimrc
```

5.**install plugins**

*run vim and run this command in normal mode*
```bash
:PlugInstall
```

6.**restart and done**


## docs for keybindings
```bash
~/.vim/core/docs/keybind.vim
```
