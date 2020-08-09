# my personal [vim/nvim] config
**a simple config for start vim with a nice theme and default config**

## screenshots
![alt text](https://raw.githubusercontent.com/unprogramable/dotfiles/screenshots/v1/01.png)
![alt text](https://raw.githubusercontent.com/unprogramable/dotfiles/screenshots/v1/02.png)
![alt text](https://raw.githubusercontent.com/unprogramable/dotfiles/screenshots/v1/03.png)
![alt text](https://raw.githubusercontent.com/unprogramable/dotfiles/screenshots/v1/04.png)
![alt text](https://raw.githubusercontent.com/unprogramable/dotfiles/screenshots/v1/05.png)
![alt text](https://raw.githubusercontent.com/unprogramable/dotfiles/screenshots/v1/6.png)


## install
1.**back up ur old** *~/.vim* **,** *~/.conf/nvim* **folder**
```bash
cp ~/.vim ~/.vim.bk
cp ~/.conf/nvim ~/.conf/nvim.bk
```

2.**clone dot files in** *~/.vim* **path**
```bash
git clone https://github.com/unprogramable/dotfiles.git ~/.vim
```

3.**for neovim**
```bash
ln -s ~/.vim ~/.conf/nvim
```

4.**copy config file**
```bash
cd ~/.vim
cp conf.example.vim vimrc
```

5.**install plugins**
**run vim and run this command in normal mode**
```bash
:PlugInstall
```

6.**restart and done**


## docs for start
**you can find some docs that help you to start easier**
