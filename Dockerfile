FROM ubuntu:18.04
MAINTAINER Yutaka Matsubara <yutaka@ertl.jp>
LABEL Description="Image for TOPPERS/EV3RT"

RUN set -x && \
    apt-get update && \
    apt-get install -y \
    git \
    xz-utils \
    software-properties-common \ 
    gcc-arm-none-eabi \
    u-boot-tools \
    make \
    g++ \ 
    wget \
    unzip \
    ruby \
    dos2unix \
    doxygen \
    libboost-all-dev \
    language-pack-ja-base language-pack-ja \
    && apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENV LANG=ja_JP.UTF-8
WORKDIR /home/