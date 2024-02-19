#!/bin/sh

if [ -d "~/.ssh" ]
then
  mkdir ~/.ssh
fi

cp /srv/init/ssh/id_rsa ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

cp /srv/init/ssh/id_rsa.pub ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa.pub
