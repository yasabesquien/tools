#!/bin/bash

if [ $1 ];then
	gpg --armor --export $1 >> $1.pub
else
	echo
	echo " con este comando guardo la clave publica de gpg para el id dado en un archivo con el nombre del ID.pub "
	echo
	echo " gpg --armor --export ID >> ID.pub "
	echo
	echo " uso:$0 <ID> "
	echo
fi
