FROM debian:latest
WORKDIR /root
RUN apt-get update && apt-get install -y wget && \
    wget -O - https://github.com/mongodb-js/mongosh/releases/download/v2.3.8/mongosh-2.3.8-linux-x64.tgz | tar -C /usr/local/bin -xzf -

RUN mv /usr/local/bin/mongosh-2.3.8-linux-x64/bin/mongosh /usr/local/bin/

ENTRYPOINT ["mongosh"]
