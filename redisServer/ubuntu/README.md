
## build image

sudo docker build -t uryyyyyyy/redis2.8 ./

## run container(login via ssh)

sudo docker run -d -p 6379:6379 --name redis1 uryyyyyyy/redis2.8

## remove container

sudo docker rm nginx1

## remove image

sudo docker rmi uryyyyyyy/nginx:1.0
