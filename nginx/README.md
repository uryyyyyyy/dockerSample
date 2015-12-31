
## build image

sudo docker build -t uryyyyyyy/nginx:1.0 .

## run container

sudo docker run -d -p 80:80 --name nginx1 uryyyyyyy/nginx:1.0 /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf

## remove container

sudo docker rm nginx1

## remove image

sudo docker rmi uryyyyyyy/nginx:1.0
