# build
# docker build --tag uryyyyyyy/ubuntu-nodejs-yarn-sbt-mysqlclient:0.1.0 ./

# run
# docker run --rm uryyyyyyy/ubuntu-nodejs-yarn-sbt-mysqlclient:0.1.0 mysql -v

FROM uryyyyyyy/ubuntu-nodejs-yarn-sbt

# mysql client
RUN apt install -y mysql-client

# locale
RUN apt-get install -y language-pack-ja
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
