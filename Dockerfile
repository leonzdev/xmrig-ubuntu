from ubuntu:xenial
RUN adduser --system --disabled-password --home /miner miner && \
    apt-get update -y && \
    apt-get install -y wget libcurl4-openssl-dev && \
    wget https://github.com/xmrig/xmrig/releases/download/v2.3.1/xmrig-2.3.1-gcc7-xenial-amd64.tar.gz && \
    tar -xzf xmrig-2.3.1-gcc7-xenial-amd64.tar.gz && \
    mv xmrig-2.3.1 /miner/app/
COPY run_xmrig.sh /miner/app/
RUN chmod a+x /miner/app/xmrig && chmod a+x /miner/app/run_xmrig.sh
USER miner
WORKDIR /miner/app
ENTRYPOINT ["/miner/app/run_xmrig.sh"]

