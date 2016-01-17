FROM centos:7
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN yum update -y && yum clean all

RUN yum install tcl gcc wget make vim net-tools perl -y
# RUN yum install epel-release -y
# RUN rpm --import http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX
# RUN rpm -Uv  http://repo.zabbix.com/zabbix/2.4/rhel/7/x86_64/zabbix-release-2.4-1.el7.noarch.rpm
# RUN yum install zabbix-server-mysql zabbix-web-mysql zabbix-agent zabbix-java-gateway


# install egent only
# yum install zabbix-agent

CMD /bin/bash
