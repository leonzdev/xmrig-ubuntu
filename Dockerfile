from ubuntu:xenial
COPY run_xmrig.sh /
RUN adduser --system --disabled-password --home /ubuntu ubuntu && \
    apt-get update -y && \
    apt-get install -y wget libcurl4-openssl-dev libuv1 && \
    wget https://github.com/leonzdev/xmrig/releases/download/leonzdev_0.0.1/xmrig && \
    mv /xmrig /app && \
    chmod a+x /app && \
    chmod a+x /run_xmrig.sh
USER ubuntu 
ENTRYPOINT ["/run_xmrig.sh"]

