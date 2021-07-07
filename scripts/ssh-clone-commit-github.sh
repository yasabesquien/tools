#!/usr/bin/zsh

if [ $1 ];then
	echo "levantando el agente..."
	eval $(ssh-agent -s)
	echo "la clave no se puede cargar con un script hay que hacerlo en la sheel que estamos usando..."
	echo
	echo " ssh-add $1 "
	echo
else
	echo
	echo " para que funione la llave tiene que tener clave... "
	echo
	echo " para cargar la clave en sistema usamos el ssh-agent "
	echo
	echo " eval $(ssh-agent -s) "
	echo " ssh-add <clave-privada> "
	echo 
	echo " ya podemos usar los comando de git "
	echo
	echo " uso:$0 <clave-privada> "
	echo
fi
