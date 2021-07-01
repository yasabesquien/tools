#!/bin/bash

if [ $1 ];then
	git config --global user.signingkey $1
else
	echo
	echo " con este comando configuro la clave gpg con la que voy a firmar todos los commits en github.com "
	echo
	echo " git config --global user.signingkey ID "
	echo
	echo " uso:$0 <ID> "
	echo
fi
