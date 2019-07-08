FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y wget git curl nsis make build-essential wine-development \
    && rm -rf /var/lib/apt/lists/*

COPY Plugins/*.dll /usr/share/nsis/Plugins/

WORKDIR /app
