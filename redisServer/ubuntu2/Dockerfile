FROM ubuntu
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y make gcc wget

RUN wget http://download.redis.io/releases/redis-2.8.19.tar.gz
RUN tar xzf redis-2.8.19.tar.gz
RUN mv redis-2.8.19 /etc/redis
RUN cd /etc/redis
RUN apt-get install -y build-essential
RUN make

# RUN apt-get install -y redis-server
# ADD redis.conf /opt/myDir/

CMD [ "redis-server" ]
