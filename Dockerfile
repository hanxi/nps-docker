FROM alpine:3.8
MAINTAINER hanxi <hanxi.info@gmail.com>

ENV NPS_VERSION 0.23.3

RUN set -x && \
	wget --no-check-certificate https://github.com/hanxi/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz && \ 
    mkdir /nps && \
	tar xzf linux_amd64_server.tar.gz -C /nps && \
	cd /nps && \
	cd .. && \
	rm -rf *.tar.gz

WORKDIR /nps
VOLUME /nps/conf

ADD ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
