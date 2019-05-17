# Dockerfile
FROM ubuntu:16.04

# refs. Install Python3.7 in ubuntu 16.04
# https://medium.com/@manivannan_data/install-python3-7-in-ubuntu-16-04-dfd9b4f11e5c
RUN apt update && apt-get install -y \
    build-essential \
    checkinstall \
    libreadline-gplv2-dev \
    libncursesw5-dev \
    libssl-dev \
    libsqlite3-dev \
    tk-dev \
    libgdbm-dev \
    libc6-dev \
    libbz2-dev \
    zlib1g-dev \
    openssl \
    libffi-dev \
    python3-dev \
    python3-setuptools \
    wget \
    python-pip \
    vim \
    && mkdir /tmp/Python37
WORKDIR /tmp/Python37
RUN wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz \
    && tar xvf Python-3.7.0.tar.xz
WORKDIR /tmp/Python37/Python-3.7.0
RUN ./configure --enable-optimizations \
    && make altinstall \
    && mkdir /usr/local/python \
    && rm -r /tmp/Python37/Python-3.7.0.tar.xz \
    && mv /usr/bin/python /usr/bin/python_old \
    && mv /usr/bin/pip /usr/bin/pip_old \
    && ln -s /usr/local/bin/python3.7 /usr/bin/python \
    && ln -s /usr/local/bin/pip3.7 /usr/bin/pip \
    && pip install numpy \
    && pip install pandas \
    && pip install keras \
    && pip install matplotlib
WORKDIR /usr/local/python
