#!/bin/sh

/srv/init/scripts/setup-ssh.sh
/srv/init/scripts/setup-sshd.sh

exec "$@"
