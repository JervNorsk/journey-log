#!/bin/sh

if [ ! -d ~/.ansible ]
then
  mkdir ~/.ansible || exit 0
fi

cp /srv/init/ansible/ansible.cfg ~/.ansible.cfg
chmod -x ~/.ansible.cfg
