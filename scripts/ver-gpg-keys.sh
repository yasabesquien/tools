#!/bin/bash

if [ $1 ];then
	gpg --list-secret-keys --keyid-format=long
else
	echo
	echo " Con este comando veo todas las keys de gpg en el sistema y saco el ID... "
	echo
	echo " gpg --list-secret-keys --keyid-format=long "
	echo
	echo " uso:$0 <y> "
	echo
fi
