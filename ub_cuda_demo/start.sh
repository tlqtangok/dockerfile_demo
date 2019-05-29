#!/bin/sh

#service ssh start
date 
export JD=JD_ENV_VAR_VALUE
echo "- successfully start this container"
/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config
