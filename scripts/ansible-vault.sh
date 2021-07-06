
echo
echo " guardo el string 123456 en la variable mysql_root_password dentro del vault de ansible..."
echo
ansible-vault encrypt_string '123456' --name 'mysql_root_password'

echo
echo " guardo el string password en la variable mysql_wordpress_password dentro del vault de ansible..."
echo
ansible-vault encrypt_string 'password' --name 'mysql_wordpress_password'


