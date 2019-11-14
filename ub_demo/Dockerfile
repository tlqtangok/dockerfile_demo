FROM ubuntu:16.04
# need a vt
#FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04

MAINTAINER jd
#USER root

COPY sources.list /etc/apt/sources.list

RUN rm -rf /etc/apt/sources.list.d/*

RUN rm -rf /etc/localtime									 
COPY timezone_shanghai_PRC /etc/localtime

#RUN chown root:root /tmp
#RUN chmod 1777 /tmp
RUN apt-get update; apt install -y wget tar vim curl sudo htop locate time exuberant-ctags
RUN apt install -y net-tools 
RUN apt install -y openssh-server
RUN apt install -y locales-all
RUN apt install -y git

#ssh
RUN echo "root:pw" | chpasswd

RUN mkdir /root/.ssh && chmod 700 /root/.ssh 

RUN mkdir /var/run/sshd

RUN echo "StrictHostKeyChecking=no" >> /etc/ssh/ssh_config
COPY sshd_config /etc/ssh/sshd_config

#Startup , just like COPY
#COPY tfr /usr/bin/tfr
COPY update_tfr.sh /usr/bin/update_tfr.sh
RUN cd /usr/bin && sh update_tfr.sh

COPY bash.bashrc /root/.bashrc
ADD start.sh / 

RUN chmod +x /start.sh /usr/bin/tfr

#RUN rm -rf /etc/ssh/*
#ADD ssh_key_con/* /etc/ssh/

ENV vt /root/jd

#COPY test_tf_conv.py $vt/perl_p/test_tf_conv.py
RUN mkdir -p $vt && cd $vt && rm -rf perl_p && git  clone https://github.com/tlqtangok/perl_p 
RUN base64 -d $vt/perl_p/b64.bash_aliases | grep -v ssh_ | grep -v tfr > $vt/perl_p/.bash_aliases 
RUN cp $vt/perl_p/.vimrc /root/ 


EXPOSE 22


#CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config"]

# bld_docker.sh

# in following way, we can interrupt with CTRL + C

ENTRYPOINT [ "/start.sh" ]
CMD ["p0", "p1", "p2"]


