export VERSION=v22
docker build -t ub_sshd:$VERSION .
# docker build -t ub_cuda_sshd:$VERSION .

# export VERSION=v2 && docker run  -dit -p 10204:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t -m 100m --cpuset-cpus="1,2" --name ${VERSION}_4 -h ${VERSION}_4 ub_sshd:$VERSION
# ssh root@localhost -p 10200

# lsi
# lsc
# docker rm -f `lsc | grep -v CON|ff 0|tol`

# need change the ngrok, with its configure file
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10203:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --name $VERSION     -h $VERSION     ub_cuda_sshd:$VERSION
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10200:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --cpuset-cpus="1,2" --name ${VERSION}_0 -h ${VERSION}_0 ub_cuda_sshd:$VERSION 
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10201:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --cpuset-cpus="3,4" --name ${VERSION}_1 -h ${VERSION}_1 ub_cuda_sshd:$VERSION
# export VERSION=v21 && docker run  --runtime=nvidia -dit -p 10202:22 -v /mnt/jd/t/ana:/mnt/jd/t/ana -v /mnt/jd/t/vt:/root/jd/t --cpuset-cpus="5,6" --name ${VERSION}_2 -h ${VERSION}_2 ub_cuda_sshd:$VERSION

