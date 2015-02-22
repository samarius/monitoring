FROM ubuntu:14.04

RUN apt-get update

RUN \
  apt-get install -y curl wget unzip

RUN curl -sL https://deb.nodesource.com/setup | bash - && \
  apt-get install nodejs -y && \
  npm install -g coffee-script && \
  npm install -g brunch

RUN \
  cd /opt && \
  wget https://github.com/torkelo/mongodb-metrics/archive/master.zip && \
  unzip master.zip && \
  mv mongodb-metrics-master mongodb-metrics

RUN \
  cd /opt/mongodb-metrics && \
  npm install

ADD ./config.js /opt/mongodb-metrics/

CMD     ["node", "/opt/mongodb-metrics/app.js"]
