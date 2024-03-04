#/bin/sh

if [ -d ./jboss-eap ]
then
  cd ./jboss-eap
fi

ansible-galaxy collection install -r requirements.yml

ansible-playbook playbook.yml \
  -i ../common/inventory \
  -e on_hosts=as \
  -e do_install=true \
  -e is_offline=true \
  -e do_setup=true \
  -e with_systemd=true
