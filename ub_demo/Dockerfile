FROM ubuntu:16.04

MAINTAINER jd
USER root

COPY sources.list /etc/apt/sources.list
COPY sshd_config /etc/ssh/sshd_config

RUN rm -rf /etc/apt/sources.list.d/*

RUN chown root:root /tmp
RUN chmod 1777 /tmp
RUN apt-get update; apt install -y wget openssh-server tar vim curl net-tools sudo htop locate


#ssh
RUN echo "root:pw" | chpasswd

RUN mkdir /root/.ssh && chmod 700 /root/.ssh 

#RUN echo "StrictHostKeyChecking=no" >> /etc/ssh/ssh_config
RUN mkdir /var/run/sshd

#Startup , just like COPY
ADD start.sh / 

RUN chmod +x /start.sh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config"]
# bld_docker.sh


# in following way, we can interrupt with CTRL + C

#ENTRYPOINT ["/start.sh"]
#CMD ["arg0", "arg1", "arg2"]


