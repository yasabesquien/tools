#!/usr/sbin/zsh

echo
echo " Instalo plug manager... "
echo
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

v +PlugInstall +qall
