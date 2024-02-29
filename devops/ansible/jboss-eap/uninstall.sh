#/bin/sh

if [ -d ./jboss-eap ]
then
  cd ./jboss-eap
fi

ansible-playbook playbook.yml \
  -i ../common/inventory \
  -e on_hosts=as \
  -e uninstall=true
