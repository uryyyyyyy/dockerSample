# build
# docker build --tag uryyyyyyy/alpine-nodejs-yarn:0.2.0 ./

# run
# docker run --rm uryyyyyyy/alpine-nodejs-yarn:0.2.0 node -v
# docker run --rm uryyyyyyy/alpine-nodejs-yarn:0.2.0 yarn version

FROM alpine:3.6

ENV NODE_VERSION=8.1.3

RUN apk --no-cache add python yarn chromium udev ttf-freefont \
      && apk --no-cache add --virtual build-dependencies make gcc g++ linux-headers curl gnupg \
      && gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
      && mkdir -p /tmp/src \
      && cd /tmp/src \
      && curl --location --show-error -O https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz \
      && curl --location --show-error -O https://nodejs.org/dist/v${NODE_VERSION}/SHASUMS256.txt.asc \
      && gpg --verify SHASUMS256.txt.asc 2>&1 | grep "Good signature" | if [ `wc -l` -eq 1 ]; then :; else exit 1; fi \
      && sha256sum -c SHASUMS256.txt.asc 2>&1 | grep "node-v8.1.3.tar.gz: OK" | if [ ` wc -l` -eq 1 ]; then :; else exit 1; fi \
      && tar -xzf "node-v${NODE_VERSION}.tar.gz" \
      && cd /tmp/src/node-v${NODE_VERSION} \
      && ./configure --prefix=/opt/node --without-snapshot \
      && make -j$(getconf _NPROCESSORS_ONLN) \
      && make install \
      && cd / \
      && apk del --purge -r build-dependencies \
      && rm -rf /tmp/* \
          /etc/ssl \
          /opt/node/include/ \
          /opt/node/share/man/ \
          /opt/node/lib/node_modules/npm/man \
          /opt/node/lib/node_modules/npm/doc \
          /opt/node/lib/node_modules/npm/html

ENV PATH=${PATH}:/opt/node/bin NODE_PATH=/opt/node/lib/node_modules
ENV CHROME_BIN=/usr/bin/chromium-browser
