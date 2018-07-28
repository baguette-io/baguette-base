FROM alpine:3.7
RUN apk update
RUN apk upgrade
RUN apk add bash tmux git curl wget bind-tools tcpdump htop net-tools vim py2-pip uwsgi-python
RUN apk add postgresql postgresql-contrib postgresql-dev
RUN apk add gcc make g++ zlib-dev libpq yaml-dev python2-dev linux-headers binutils-gold gnupg libstdc++
RUN apk add nodejs nodejs-npm
# Python
RUN pip install --upgrade pip
RUN pip install awscli
RUN pip install virtualenv
RUN pip install wheel
RUN pip install gevent==1.1.1
RUN pip install PyYAML==3.11
# User baguette
RUN adduser -g baguette -u 1890 -D baguette
