FROM centos:7
MAINTAINER uryyyyyyy
RUN yum update -y && yum clean all

RUN yum install tcl gcc wget make vim net-tools perl -y

RUN yum install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm -y
RUN yum install --enablerepo=nginx nginx -y

RUN rm -f /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

CMD ["/usr/sbin/nginx"]
