#!/usr/bin/zsh

if [ $1 ];then
	eval $(ssh-agent -s)
	ssh-add $1
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
