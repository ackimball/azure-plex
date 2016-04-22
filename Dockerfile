FROM ubuntu:14.04

MAINTAINER Andrea Kimball "andrea.kimball@pomona.edu"

RUN apt-get update
RUN apt-get -y install \
	python \
	build-essential \
	python-dev \
	python-pip \
	wget \
	git \
	vim
RUN pip install azure-storage

WORKDIR /home
RUN wget https://github.com/libfuse/libfuse/releases/download/fuse_2_9_5/fuse-2.9.5.tar.gz
RUN tar -xvf fuse-2.9.5.tar.gz
WORKDIR /home/fuse-2.9.5
RUN sh configure && make -j8 && make install

WORKDIR /home
RUN git clone https://github.com/mbartoli/blobfs
WORKDIR /home/blobfs

