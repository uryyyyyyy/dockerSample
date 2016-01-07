
## build image

sudo docker build -t uryyyyyyy/redis3.0 ./

## run container(login via ssh)

sudo docker run -d -p 6379:6379 --name redis1 uryyyyyyy/redis3.0
