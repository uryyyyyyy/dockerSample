FROM centos:7
MAINTAINER uryyyyyyy
RUN yum update -y && yum clean all

RUN yum install tcl gcc wget make vim net-tools perl -y

# nginx
RUN yum install -y pcre pcre-devel openssl openssl-devel
RUN curl -O http://nginx.org/download/nginx-1.9.9.tar.gz
RUN tar xvfz nginx-1.9.9.tar.gz
WORKDIR nginx-1.9.9
RUN ./configure --with-http_ssl_module --with-http_v2_module
RUN make && make install
ADD nginx.conf /usr/local/nginx/conf/
ADD index.html /usr/local/nginx/html/

EXPOSE 80

CMD ["/usr/local/nginx/sbin/nginx"]
