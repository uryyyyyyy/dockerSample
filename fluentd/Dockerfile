FROM centos:7
MAINTAINER uryyyyyyy <koki305@gmail.com>
RUN yum update -y && yum clean all

RUN yum install tcl gcc wget make vim net-tools perl -y

RUN yum install git openssl-devel libffi-devel bzip2 readline-devel -y

# install rbenv & plugin
RUN git clone git://github.com/sstephenson/rbenv.git
RUN mkdir /rbenv/plugins
RUN cd /rbenv/plugins && git clone git://github.com/sstephenson/ruby-build.git

RUN echo 'export RBENV_ROOT="/rbenv"' >> /etc/profile
RUN echo 'export PATH ${RBENV_ROOT}/bin:${PATH}' >> /etc/profile
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile
RUN echo 'eval "$(rbenv init -)"' >> /.bashrc

ENV RBENV_ROOT /rbenv
ENV PATH ${RBENV_ROOT}/bin:${PATH}
RUN eval "$(rbenv init -)"

RUN source /etc/profile
RUN source /.bashrc
RUN rbenv install 2.2.4
ENV PATH /rbenv/versions/2.2.4/bin/:${PATH}
# ruby install done

RUN gem install fluentd
RUN mkdir /etc/fluent/
ADD fluent.conf /etc/fluent/fluent.conf
EXPOSE 8888
CMD ["fluentd"]
