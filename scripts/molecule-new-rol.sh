#!/bin/bash

NEWROLE=$1

if [ $NEWROLE ];then
	molecule init role $NEWROLE --driver-name docker
else
	echo
	echo " uso:$0 <nombre_nuevo_modulo> "
	echo
fi
