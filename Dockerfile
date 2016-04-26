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
	vim \
	avahi-daemon \
	avahi-utils \
	python-fuse \
	curl
RUN pip install azure-storage

WORKDIR /home
RUN wget https://github.com/libfuse/libfuse/releases/download/fuse_2_9_5/fuse-2.9.5.tar.gz
RUN tar -xvf fuse-2.9.5.tar.gz
WORKDIR /home/fuse-2.9.5
RUN sh configure && make -j8 && make install

WORKDIR /home
RUN wget http://downloads.plexapp.com/plex-media-server/0.9.9.14.531-7eef8c6/plexmediaserver_0.9.9.14.531-7eef8c6_amd64.deb
RUN dpkg -i plexmediaserver_0.9.9.14.531-7eef8c6_amd64.deb
RUN apt-get install -f

WORKDIR /home
RUN git clone https://github.com/mbartoli/blobfs
WORKDIR /home/blobfs

EXPOSE 32400

RUN rm config.py
CMD bash -C 'azureconfig.sh';'bash'






