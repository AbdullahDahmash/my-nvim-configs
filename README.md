clone this repo to ~/.config/nvim

install vim-plug 
```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Open neovim and run 
```sh
:PlugInstall
```

Install python dependencies
```sh
pip3 install neovim
```

Open neovim and run 
```sh
:UpdateRemotePlugins
```

That's all
