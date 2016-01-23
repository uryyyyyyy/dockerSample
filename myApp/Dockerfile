FROM node:argon

# download git repo

RUN apt-get update
RUN wget https://github.com/uryyyyyyy/dockerSample/archive/master.zip
RUN apt-get install unzip -y 
RUN unzip master.zip

CMD node dockerSample-master/myApp/app/server.js
EXPOSE 8080
