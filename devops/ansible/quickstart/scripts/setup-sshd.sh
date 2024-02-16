#!/bin/sh
mkdir ~/.ssh

cp /srv/init/ssh/authorized_keys ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
