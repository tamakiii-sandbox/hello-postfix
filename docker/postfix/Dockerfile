FROM --platform=linux/amd64 amazonlinux:2017.09

RUN yum update -y && \
    yum install -y \
      postfix \
      mailx \
      which \
      less \
      make \
      && \
    yum clean all && \
    rm -rf /var/cache/yum/*

RUN yum update -y && \
    yum install -y \
      vim \
      man \
      bind-utils \
      file \
      && \
    yum clean all && \
    rm -rf /var/cache/yum/*

COPY etc/postfix/main.cf /etc/postfix/main.cf
COPY etc/sysconfig/network /etc/sysconfig/network
COPY etc/aliases /etc/aliases

ENTRYPOINT ["tail", "-f", "/dev/null"]
