FROM ubuntu
MAINTAINER uryyyyyyy <koki305@gmail.com>

RUN apt-get install software-properties-common -y
RUN add-apt-repository -y ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get -y install ruby2.1

ADD app.rb app.rb
RUN gem install sinatra

EXPOSE 4567
CMD ["ruby", "app.rb"]
