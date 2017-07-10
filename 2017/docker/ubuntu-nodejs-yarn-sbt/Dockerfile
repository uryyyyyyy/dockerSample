# build
# docker build --tag uryyyyyyy/ubuntu-nodejs-yarn-sbt:0.1.0 ./

# run
# docker run --rm uryyyyyyy/ubuntu-nodejs-yarn-sbt:0.1.0 sbt sbt-version

FROM uryyyyyyy/ubuntu-nodejs-yarn:0.1.0

# java8
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java && apt update
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections
RUN apt install -y oracle-java8-installer

# sbt
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt update
RUN apt install -y sbt
