rm ./docker_cid -rf
docker run --cidfile `pwd`/docker_cid -i  -v `pwd`:/root/_v  -m 100m --cpus="1.4" --entrypoint /bin/sh  id_b:jd_v0  /root/_v/sh.sh
docker wait `cat ./docker_cid`

docker logs `cat docker_cid`

