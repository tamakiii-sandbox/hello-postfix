FROM --platform=linux/amd64 amazonlinux:2017.09

RUN yum update -y && \
    yum install -y \
      postfix \
      mailx \
      which \
      make \
      && \
    yum clean all && \
    rm -rf /var/cache/yum/*
