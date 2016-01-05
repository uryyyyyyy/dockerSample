
- docker images
- docker ps

## create docker image

docker build -t <image tag> ./

## create(& run) docker container from image

docker run --name <container name> -t <image tag>

- `-d` daemon
- `-p` port forwarding

## stop container

docker stop <container ID / container name>
docker kill <container ID / container name>

## remove container

docker rm <container ID / container name>

## remove image

docker rmi <image tag>

## enter into container (like ssh login)
docker exec -i -t <container ID / container name> /bin/bash
