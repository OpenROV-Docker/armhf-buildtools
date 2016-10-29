FROM mickaelguene/armhf-debian:jessie
MAINTAINER spiderkeys

RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        build-essential \
        g++ \
        autotools-dev \
        autoconf \
        libtool \
        cmake \
        pkg-config \
        curl \
        git \
        groovy \
        libssl-dev \
        make \
        net-tools \
        python-dev \
        python-pip \
        python-setuptools \
        ruby \
        ruby-dev \
        unzip \
        wget \
        zip && \
    apt-get autoremove -y && \
    apt-get clean

RUN gem install fpm
