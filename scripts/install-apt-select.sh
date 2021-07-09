echo
echo " instalo python3..."
apt install python3-pip
echo
echo " instalo apt-select con pip..."
pip3 install apt-select
echo
echo " muestro el mejor mirror para el pais actual..."
apt-select --country IN
echo
echo " busca los 3 mejores mirrors para Argentina... "
apt-select -t 3 -C AR
apt-select -C AR
echo
echo " copio el archivo que hizo el programa " 
cp sources.list /etc/apt/
echo " lo uso para acutalizar la cache..."
apt update
