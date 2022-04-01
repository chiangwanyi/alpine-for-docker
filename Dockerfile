FROM alpine:3.12

LABEL maintainer="chiangwanyi@163.com"

COPY .bashrc /root

RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.12/main/" > /etc/apk/repositories \
        && apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/*
