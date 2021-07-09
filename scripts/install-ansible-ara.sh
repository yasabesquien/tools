
#instalo el servidor local para el usuario ansible...
#pyenv global 3.9.6 && pip install --user ansible "ara[server]"

#instalo el servidor local para el usuario en el que estoy...
pyenv global 3.9.6 && pip install "ara[server]"

#configuro el plugin para que cargue datos...
export ANSIBLE_CALLBACK_PLUGINS="$(python3 -m ara.setup.callback_plugins)"

echo
echo "ejecuto un playbook..."
echo "ansible-playbook -i inventory/demo.yaml playbook.yaml"

echo
echo "veo los registros hasta el momento..."
echo "ara playbook list"

echo
echo "cargo un servidor web con los datos en el puerto 8000 del localhost"
echo "ara-manage runserver"
echo

#si quiero un servidor fijo...
if [ ! -d ~/.ara/server ];then
	mkdir -p ~/.ara/server
fi

# Start an API server with podman from the image on DockerHub:
#podman run --name api-server --detach --tty \
#    --volume ~/.ara/server:/opt/ara:z -p 8000:8000 \
#    docker.io/recordsansible/ara-api:latest

#usando un servidor de API en docker...
#docker run --name api-server --detach --tty \
#    --volume ~/.ara/server:/opt/ara:z -p 8000:8000 \
#    quay.io/recordsansible/ara-api:latest

# una vez configurado el servidor de API le tenemos que decir al cliente que le mande datos...

# Install Ansible and ARA (without API server dependencies) for the current user
#python3 -m pip install --user ansible ara

# Configure Ansible to use the ARA callback plugin
#export ANSIBLE_CALLBACK_PLUGINS="$(python3 -m ara.setup.callback_plugins)"

# Set up the ARA callback to know where the API server is located
#export ARA_API_CLIENT="http"
#export ARA_API_SERVER="http://127.0.0.1:8000"

# Run an Ansible playbook
#ansible-playbook playbook.yaml

# Use the CLI to see recorded playbooks
#ara playbook list
