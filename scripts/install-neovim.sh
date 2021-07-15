APP=neovim
VER=0.5.0
FILE=nvim-linux64.tar.gz

#echo "instala version 0.4.4"
#apt install -y neovim

echo
echo " instala version 0.5.0 "
echo
echo " me bajo la ultima version... "
wget -c https://github.com/"$APP"/"$APP"/releases/download/v"$VER"/"$FILE"

echo
echo " la descomprimo "
echo
tar xzvf "$FILE"

echo
echo " borro el .tar.gz "
echo
rm "$FILE"

echo
echo " copio el ejecutable y las librerias... "
echo
mkdir -p ~/.config/nvim
ln -s ~/.dotconfig/nvim/init.vim ~/.config/nvim/init.vim
echo
rsync -avz nvim-linux64/bin/nvim /usr/bin/nvim
echo
rsync -avz nvim-linux64/lib /usr/lib
echo
rsync -avz nvim-linux64/share/ /usr/share

echo
echo " borro la carpeta... "
echo
rm -rf nvim-linux64

echo
echo " Instalo plug manager... "
echo
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

v +PlugInstall +qall
