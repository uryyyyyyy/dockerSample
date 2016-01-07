
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

## check container private IP(only host machine can use it)

sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' <containerID>

or

sudo docker run -d --name elastic -e "NODE_NAME=node1" -e "CLUSTER_NAME=cluster0" -e "UNICAST_HOSTS=["172.17.0.1"]" uryyyyyyy/elasticsearch:2.1.1 | xargs sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'
