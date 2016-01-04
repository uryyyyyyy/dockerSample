FROM ubuntu
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y make gcc wget build-essential

RUN wget http://download.redis.io/releases/redis-2.8.19.tar.gz
RUN tar xzf redis-2.8.19.tar.gz
RUN mv redis-2.8.19 /etc/redis
RUN cd /etc/redis && make
ADD redis.conf /etc/redis/

CMD [ "/etc/redis/src/redis-server" ]
