#!/bin/bash

if [ $1 ];then
	git config commit.gpgsign true
else
	echo
	echo "Firma solo los commits del repo local en el que estamos:"
	echo " git config commit.gpgsign true "
	echo
	echo "Para firmar todos los commits por defecto en cualquier repositorio local de la computadora:"
	echo " git config --global commit.gpgsign true"
	echo
fi
