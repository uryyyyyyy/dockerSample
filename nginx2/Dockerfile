FROM debian
RUN apt-get update -yq && \
    apt-get install -yq --force-yes nginx
RUN echo "\ndaemon off;" >> \
    /etc/nginx/nginx.conf
ADD index.html /usr/share/nginx/html/
CMD ["nginx"]
EXPOSE 80
