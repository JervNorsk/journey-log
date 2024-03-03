FROM ansible/control-node as build

#COPY .  /srv/ansible
#WORKDIR /srv/ansible

#RUN ansible-galaxy collection install \
#    -r requirements.yml \
#
#RUN ansible-playbook playbook.yml \
#    -e offline_install=true
#
#FROM ansible/managed-node
#
#COPY --from=build /opt/jboss /otp/jboss
#
#WORKDIR /opt/jboss/jboss-eap-7.4
