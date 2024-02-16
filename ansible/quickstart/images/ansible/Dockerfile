FROM alpinelinux/ansible
#FROM quay.io/ansible/ansible-core

RUN pip3 install ansible-navigator

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
