# build
# docker build --tag uryyyyyyy/node-simple-server:0.1.0 ./

# run
# docker run --name node-simple-server -d -p 3000:3000 uryyyyyyy/node-simple-server:0.1.0

FROM uryyyyyyy/alpine-nodejs:8.1.3

ADD ./index.js ./
EXPOSE  3000

CMD ["node", "./index.js"]
