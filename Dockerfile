FROM ubuntu

MAINTAINER Thiago Martins <rogue.thiago@gmail.com>

RUN apt-get -y update && \
    apt-get install curl && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    curl -o- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    add-apt-repository -y ppa:ubuntu-mozilla-security/ppa && \
    apt-get -y update && \
    apt-get -y install firefox google-chrome-stable xvfb openjdk-7-jre-headless

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

ENV DISPLAY=0:0

ENTRYPOINT ["/startup.sh"]