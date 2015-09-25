FROM node:4.1.0 
MAINTAINER Thiago Martins <rogue.thiago@gmail.com>
 
# Wct installation happens locally because https://github.com/Polymer/web-component-tester/issues/168 
 
ENV DISPLAY=0:0
ENV PATH=$PATH:/node_modules/.bin
ADD startup.sh /
 
RUN apt-get -y update && \
    apt-get -y install curl && \
    apt-get -y install software-properties-common && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    curl -o- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    apt-get -y update && \
    apt-get -y install google-chrome-stable xvfb openjdk-7-jre-headless && \
    npm install -g bower generator-polymer && \
    echo '{ "allow_root": true }' > /root/.bowerrc && \
    echo "N\n" | bower && \
    npm install gulp web-component-tester yo && \
    echo "N\n" | yo && \
    chmod +x /startup.sh
    
ENTRYPOINT ["/startup.sh"]