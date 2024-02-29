#!/bin/sh

/srv/scripts/setup-sshd.sh

ssh-keygen -A
exec /usr/sbin/sshd -D -e "$@"
