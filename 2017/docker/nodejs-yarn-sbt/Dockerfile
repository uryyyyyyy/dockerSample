# build
# docker build --tag uryyyyyyy/alpine-nodejs-yarn-sbt:0.2.0 ./

# run
# docker run --rm uryyyyyyy/alpine-nodejs-yarn-sbt:0.2.0 sbt sbt-version

FROM uryyyyyyy/alpine-nodejs-yarn:0.2.0

ENV SBT_VERSION=0.13.15
ENV JAVA_VERSION=8.131.11-r2

RUN apk add --no-cache openjdk8="$JAVA_VERSION"

RUN apk add --no-cache --virtual=build-dependencies curl && \
    curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    apk del build-dependencies && \
    apk add --no-cache bash && \
    /usr/local/sbt/bin/sbt sbt-version

ENV PATH=${PATH}:/usr/local/sbt/bin/
