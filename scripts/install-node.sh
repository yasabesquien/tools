APP=node
VER=16.4.2
FILE="$APP"-v"$VER"-linux-x64.tar.xz

#wget -c https://nodejs.org/dist/v14.17.3/node-v14.17.3-linux-x64.tar.xz
echo
echo " me bajo el archivo de los binarios... "
echo
wget -c https://nodejs.org/dist/v"$VER"/"$FILE"
echo
echo " lo descomprimo... "
echo
tar xvf "$FILE"
echo
echo " ingreso en el directorio... "
echo
cd "$APP"-v"$VER"-linux-x64
echo
echo " copio los binarios al sistema... "
echo
for i in bin include lib share; do rsync -avz $i/ /usr/$i/; done
echo
echo " acutlizo npm a la ultima version... "
echo
npm install -g npm@7.19.1
echo
echo " instalo un servidor para typescript... "
echo
npm i -g typescript-language-server


