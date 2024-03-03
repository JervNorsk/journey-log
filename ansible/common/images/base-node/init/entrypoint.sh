#!/bin/sh

/srv/init/scripts/setup-ssh.sh
/srv/init/scripts/setup-sshd.sh

/srv/init/scripts/setup-ansible.sh

exec "$@"
