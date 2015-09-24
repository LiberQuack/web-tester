FROM node:4.1.0
 
MAINTAINER Thiago Martins <rogue.thiago@gmail.com>
 
ENV DISPLAY=0:0

ADD startup.sh /
 
RUN apt-get -y update && \
    apt-get -y install curl && \
    apt-get -y install software-properties-common && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    curl -o- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    apt-get -y update && \
    apt-get -y install google-chrome-stable xvfb openjdk-7-jre-headless && \
    npm install -g bower && \
    echo '{ "allow_root": true }' > /root/.bowerrc && \
    chmod g+rwx /root /root/.config /root/.config/configstore && \
    printf "N\n" | bower && \
    npm install -g gulp web-component-tester && \
    chmod +x /startup.sh
    
ENTRYPOINT ["/startup.sh"]
