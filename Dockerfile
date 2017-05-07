FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
        libprotobuf-c-dev \
        build-essential \
        tmux \
        vim \
        git \
        silversearcher-ag \
        && \
    rm -rf /var/lib/apt/lists/*

COPY .tmux.conf /root/

VOLUME /app
WORKDIR /app

