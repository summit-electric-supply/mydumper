FROM debian:stretch-slim

RUN apt-get update; \
    apt-get install -y \
      default-libmysqlclient-dev \
      libatomic1 \
      libglib2.0-dev \
      libpcre3-dev \
      libssl-dev \
      wget \
      zlib1g-dev; \
    rm -rf /var/lib/apt/lists/*; \
    wget https://github.com/maxbube/mydumper/releases/download/v0.9.5/mydumper_0.9.5-2.stretch_amd64.deb; \
    dpkg -i mydumper_0.9.5-2.stretch_amd64.deb; \
    rm mydumper_0.9.5-2.stretch_amd64.deb; \
    mkdir /svc

VOLUME /svc

WORKDIR /svc
