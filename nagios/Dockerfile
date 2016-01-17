FROM centos:7
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN yum update -y && yum clean all

RUN yum install tcl gcc wget make vim net-tools perl -y
RUN yum install gd-devel -y
RUN wget http://downloads.sourceforge.net/project/nagios/nagios-4.x/nagios-4.0.8/nagios-4.0.8.tar.gz
RUN tar zxvf nagios-4.0.8.tar.gz
WORKDIR nagios-4.0.8
RUN ./configure
RUN make all
RUN make install-config
RUN make install

# need apache?
# /etc/rc.d/init.d/nagios start

CMD /bin/bash
