APP=neovim
VER=0.5.0
FILE=nvim-linux64.tar.gz

#echo "instala version 0.4.4"
#apt install -y neovim

echo " instala version 0.5.0 "
echo
echo " me bajo la ultima version... "
wget -c https://github.com/"$APP"/"$APP"/releases/download/v"$VER"/"$FILE"

echo " la descomprimo "
tar xzvf "$FILE"

echo " borro el .tar.gz "
rm "$FILE"

echo " copio el ejecutable y las librerias... "
mkdir -p ~/.config/nvim
ln -s ~/.dotconfig/nvim/init.vim ~/.config/nvim/init.vim
rsync -avz nvim-linux64/bin/nvim /usr/bin/nvim
rsync -avz nvim-linux64/lib /usr/lib
rsync -avz nvim-linux64/share/ /usr/share

echo " borro la carpeta... "
rm -rf nvim-linux64

echo " Instalo plug manager... "
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
