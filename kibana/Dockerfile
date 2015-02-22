FROM     ubuntu:14.04
RUN      apt-get -y update
RUN      apt-get -y upgrade

RUN apt-get install -y openjdk-7-jre-headless
RUN apt-get install -y wget

RUN \
	mkdir -p /app && \
	wget https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-beta3.tar.gz -O /app/kibana.tgz

RUN \
	cd /app && \
	tar -zx --strip=1 -f kibana.tgz

ADD kibana.yml /app/config/kibana.yml

CMD ["/app/bin/kibana"]
