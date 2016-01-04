FROM ubuntu
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y redis-server
ADD redis.conf /opt/myDir/

CMD [ "redis-server" ]
