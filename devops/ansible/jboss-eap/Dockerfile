FROM ansible/managed-node

COPY .  /srv/ansible
WORKDIR /srv/ansible

RUN ansible-galaxy collection install \
    -r requirements.yml

RUN ansible-playbook playbook.yml \
    -e do_install=true \
    -e is_offline=true \
    -e do_setup=true \
    -e with_systemd=false

WORKDIR /opt/jboss/jboss-eap-7.4

CMD [ \
    "/opt/jboss/jboss-eap-7.4/bin/standalone.sh", \
        "-b", "0.0.0.0", \
        "-bmanagement", "0.0.0.0" \
]

HEALTHCHECK \
    --interval=30s \
CMD [ \
    "ansible-playbook", "/srv/ansible/playbook.yml", \
        "-e", "do_healthcheck=false" \
]

EXPOSE 8080/tcp
EXPOSE 9990/tcp
