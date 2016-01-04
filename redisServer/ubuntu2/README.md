
## build image

sudo docker build -t uryyyyyyy/redis ./

## run container(login via ssh)

sudo docker run --name redis1 -i -t uryyyyyyy/redis /bin/bash

sudo docker run -d -p 6379:6379 --name redis1 uryyyyyyy/redis

## remove container

sudo docker rm nginx1

## remove image

sudo docker rmi uryyyyyyy/nginx:1.0