export VERSION=v20
docker build -t ub_sshd:$VERSION .

#docker run -d -p 2222:2222 --name id_b_jd_v0 id_b:jd_v0

# docker run  -dit -p 10200:22 --name $VERSION -h $VERSION ub_sshd:$VERSION
# ssh root@localhost -p 10206

# lsi
# lsc
# docker rm -f `lsc | grep -v CON|ff 0|tol`


