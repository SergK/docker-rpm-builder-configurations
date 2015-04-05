FROM centos:centos6
MAINTAINER Sergey Kulanov skulanov@mirantis.com

ADD files/etc/yum.conf /etc/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN rpm --import /tmp/*.pub && \
    yum clean metadata && \
    yum install yum-presto && \
    yum update && \
    yum install @buildsys-build yum-utils ruby && \
    sed -i.original -e 's/^/#/' /etc/yum.repos.d/epel*.repo
