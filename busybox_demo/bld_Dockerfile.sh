# Dockerfile
export VERSION=v5
docker build -t bb:$VERSION .

# docker run -e "JD=NEW JD VAR" -it bb:$VERSION 
# docker run --env-file ./env.file -it bb:$VERSION
