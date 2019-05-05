FROM id_b:jd

RUN echo 'root:pwd' | chpasswd #设置镜像中的root用户密码

COPY Dockerfile /root/Dockerfile
# ssh supervisor git ifconfig sudo htop bunzip2 make quiet_install


ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 2222
CMD ["sh"]
