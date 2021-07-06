#esto es para ubuntu
#add-apt-repository ppa:jonathonf/vim
#apt update
#apt install vim

#esto es para debian
#necesita sudo para el siguiente...
apt install -y ncurses-dev unzip
wget -c https://github.com/vim/vim/archive/master.zip	
unzip master.zip
rm master.zip
cd vim-master
cd src/
./configure
make
#necesita sudo para el siguiente...
make install
cp /usr/bin/vim /usr/bin/vim-bkp
cp vim /usr/bin/vim
vim 
