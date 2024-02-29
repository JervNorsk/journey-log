#/bin/sh

if [ -d ./jboss-eap ]
then
  cd ./jboss-eap
fi

ansible-galaxy collection install -r requirements.yml

ansible-playbook playbook.yml \
  -i ../common/inventory \
  -e on_hosts=as \
  -e offline_install=true
#ansible-playbook playbook.yml -i ../common/inventory.yml -e on_hosts=as -vvv
