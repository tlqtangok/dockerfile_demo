#!/bin/sh

#service ssh start
date 
# export JD=JD_ENV_VAR_VALUE  # no meanings 
echo "- successfully start this container"
#bash -c "bash  /root/jd/t/ngrok/start_ngrok.sh &" &
#/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config

service ssh start &
/bin/bash
