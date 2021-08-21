
if [ $1 ];then

  echo
  echo " para todos los repos... "
  echo " git config --global user.email "you@example.com""
  echo " git config --global user.name "Your Name""
  echo

  echo 
  echo " solo para el repo local... "
  echo " git config user.email "1903837+yasabesquien@users.noreply.github.com""
  echo " git config user.name "yasabesquien""
  git config user.email "1903837+yasabesquien@users.noreply.github.com"
  git config user.name "yasabesquien"
  echo
  echo " asignando la key para firmar los commits..."
  ./configurar-key-gpg-para-firmar-commits-en-github.sh 07177A1AB72B7F4A
  echo " activando la firma de commits de forma global..."
  ./activar-firmado-gpg-github.sh y

  echo " cargando la key de ssh para hacer los push..."
	./ssh-clone-commit-github.sh $1

else

  echo
  echo " Carga automaticamente en memoria las claves gpg, ssh y activa la firma de los commits... "
  echo
  echo " uso:$0 <ssh-key> "
  echo
  git config user.email "1903837+yasabesquien@users.noreply.github.com"
  git config user.name "yasabesquien"

fi
