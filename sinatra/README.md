
## build image

sudo docker build -t uryyyyyyy/sinatra ./

## run container

sudo docker run -d -p 4567:4567 --name sinatra1 -i -t uryyyyyyy/sinatra
