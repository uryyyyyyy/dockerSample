# build
# docker build --tag uryyyyyyy/ubuntu-nodejs-yarn:0.1.0 ./

# run
# docker run --rm uryyyyyyy/ubuntu-nodejs-yarn:0.1.0 node -v
# docker run --rm uryyyyyyy/ubuntu-nodejs-yarn:0.1.0 yarn version

FROM ubuntu:16.04

RUN set -x && \
  apt-get update && \
  apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -y nodejs && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y yarn && \
  apt-get install -y chromium-browser
