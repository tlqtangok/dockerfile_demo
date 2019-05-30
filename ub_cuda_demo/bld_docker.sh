export VERSION=v21
docker build -t ub_cuda_sshd:$VERSION .

#docker run -d -p 2222:2222 --name id_b_jd_v0 id_b:jd_v0

# docker run  -dit -p 10200:22 --name $VERSION -h $VERSION ub_sshd:$VERSION
# docker run  --runtime=nvidia -it -p 10200:22 --name $VERSION -h $VERSION ub_cuda_sshd:$VERSION
# ssh root@localhost -p 10200

# lsi
# lsc
# docker rm -f `lsc | grep -v CON|ff 0|tol`

# need change the ngrok, with its configure file
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10203:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --name $VERSION     -h $VERSION     ub_cuda_sshd:$VERSION
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10200:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --name ${VERSION}_0 -h ${VERSION}_0 ub_cuda_sshd:$VERSION 
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10201:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --name ${VERSION}_1 -h ${VERSION}_1 ub_cuda_sshd:$VERSION
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10202:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --name ${VERSION}_2 -h ${VERSION}_1 ub_cuda_sshd:$VERSION

