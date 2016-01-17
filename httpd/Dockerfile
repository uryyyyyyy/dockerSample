FROM centos:7
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN yum update -y && yum clean all

RUN yum install tcl gcc wget make vim net-tools perl -y
RUN yum install httpd -y

CMD exec /usr/sbin/apachectl
