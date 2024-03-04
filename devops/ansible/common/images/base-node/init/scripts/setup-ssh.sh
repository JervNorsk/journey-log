#!/bin/sh

if [ ! -d ~/.ssh ]
then
  mkdir ~/.ssh || exit 0
fi

cp /srv/init/ssh/config ~/.ssh/config
chmod 400 ~/.ssh/config

#cp /srv/init/ssh/id_rsa ~/.ssh/id_rsa
#chmod 600 ~/.ssh/id_rsa

cp /srv/init/ssh/id_rsa.pub ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa.pub