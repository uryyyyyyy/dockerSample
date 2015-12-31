FROM centos:7

RUN yum update -y && yum clean all
RUN yum groupinstall -y "Development Tools"

COPY ./docker/nginx.repo /etc/yum.repos.d/

RUN yum install -y nginx

ENV NODE_VERSION v5.2.0
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
RUN . ~/.nvm/nvm.sh && nvm install ${NODE_VERSION} && nvm alias default ${NODE_VERSION}
RUN echo ". ~/.nvm/nvm.sh" >> ~/.bashrc

RUN rm -f /etc/nginx/conf.d/*
COPY ./docker/nginx.conf /etc/nginx/

COPY . /apps/

CMD ["/apps/docker/run.sh"]
