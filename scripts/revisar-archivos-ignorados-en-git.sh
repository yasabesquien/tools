#!/bin/bash
echo
echo " Revisar si la carpeta aparecen el el archivo .gitignore "
echo " git check-ignore -v <carpeta> "
echo
echo " borrar carpetas ignoradas del cache sin borrar los archivos de la carpeta..."
echo " git rm -r cached <carpeta> "
echo
echo " borrar archivos ignorados del cache sin borrar los archivos de la carpeta..."
echo " git rm cached <archivo> "
echo
echo " muestra que va a borrar sin borrar nada "
echo " git rm -n -r <carpeta> "
echo
echo " muestra los archivo ignorados "
echo " git status --ignored "
echo
