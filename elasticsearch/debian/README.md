
## build image

sudo docker build -t uryyyyyyy/sshUbuntu ./

## run container(login via ssh)

sudo docker run --name sshUbuntu1 -i -t uryyyyyyy/ssh_ubuntu /bin/bash

## remove container

sudo docker rm nginx1

## remove image

sudo docker rmi uryyyyyyy/nginx:1.0
