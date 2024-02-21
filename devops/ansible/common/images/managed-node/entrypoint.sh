#!/bin/sh

/srv/init/scripts/setup-sshd.sh

exec "$@"
