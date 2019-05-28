#!/bin/sh

#service ssh start
date 
echo "- successfully start this container"
/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config
