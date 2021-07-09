
if [ $1 ];then

	#openssl rsa -in $1 -out $1.np
	ssh-keygen -p 

else

	echo
	echo " Le saca la clave a una llave privada de ssh "
	echo
	echo " uso:$0 <y> "
	echo

fi
