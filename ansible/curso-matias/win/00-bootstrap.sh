echo
echo " instalando ansible y sus dependencias... "
pyenv global 3.9.6 && pip install -r requirements.txt

echo
echo " instalando modulos extras... "
ansible-galaxy install -r requirements.yml
echo
