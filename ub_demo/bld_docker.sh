export VERSION=V13
docker build -t ub_sshd:$VERSION .
#docker run -d -p 2222:2222 --name id_b_jd_v0 id_b:jd_v0

# docker run  -dit -p 10200:22 --name 'c0' -h 'jd' ub_sshd:$VERSION
# ssh root@localhost -p 10206


