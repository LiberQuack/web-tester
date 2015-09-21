FROM ubuntu
 
MAINTAINER Thiago Martins <rogue.thiago@gmail.com>
 
ENV DISPLAY=0:0

ADD startup.sh /
 
RUN apt-get -y update && \
    apt-get -y install curl && \
    apt-get -y install software-properties-common && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    curl -o- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    add-apt-repository -y ppa:ubuntu-mozilla-security/ppa && \
    apt-get -y update && \
    apt-get -y install firefox google-chrome-stable xvfb openjdk-7-jre-headless && \
    chmod +x /startup.sh
    
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

RUN echo '. ~/.nvm/nvm.sh' > /root/.profile

RUN cp ~/.nvm/nvm.sh /etc/profile.d/nvm.sh

RUN chmod +x /startup.sh

ENTRYPOINT ["/startup.sh"]
CMD ["/bin/bash"]
