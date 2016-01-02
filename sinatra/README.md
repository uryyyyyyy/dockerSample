
## build image

sudo docker build -t uryyyyyyy/sinatra ./

## run container

sudo docker run -d -p 4567:4567 --name sinatra1 -i -t uryyyyyyy/sinatra

## remove container

sudo docker rm nginx1

## remove image

sudo docker rmi uryyyyyyy/nginx:1.0
