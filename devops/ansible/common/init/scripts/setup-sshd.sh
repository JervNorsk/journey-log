#!/bin/sh

if [ -d "~/.ssh" ]
then
  mkdir ~/.ssh
fi

cp /srv/init/ssh/authorized_keys ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

ssh-keygen -A
