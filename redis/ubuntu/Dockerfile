FROM ubuntu
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y make gcc wget build-essential

RUN wget http://download.redis.io/releases/redis-3.0.6.tar.gz
RUN tar xzf redis-3.0.6.tar.gz
RUN mv redis-3.0.6 /etc/redis
RUN cd /etc/redis && make
ADD redis.conf /etc/redis/

CMD [ "/etc/redis/src/redis-server" ]
