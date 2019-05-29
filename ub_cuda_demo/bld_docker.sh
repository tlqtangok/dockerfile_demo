export VERSION=v5
docker build -t ub_cuda_sshd:$VERSION .

#docker run -d -p 2222:2222 --name id_b_jd_v0 id_b:jd_v0

# docker run  -dit -p 10200:22 --name $VERSION -h $VERSION ub_sshd:$VERSION
# docker run  --runtime=nvidia -it -p 10200:22 --name $VERSION -h $VERSION ub_cuda_sshd:$VERSION
# docker run  --runtime=nvidia -it -p 10200:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana --name $VERSION -h $VERSION ub_cuda_sshd:$VERSION
# ssh root@localhost -p 10200

# lsi
# lsc
# docker rm -f `lsc | grep -v CON|ff 0|tol`


