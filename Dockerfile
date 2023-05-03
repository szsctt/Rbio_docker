FROM rocker/verse:4.3.0

#  $ docker build . -t szsctt/rbio:latest -t szsctt/rbio:3.14
#  $ docker run --rm -it szsctt/rbio:latest /bin/bash
#  $ docker push szsctt/rbio:latest
#  $ docker push szsctt/rbio:2

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update &&\
	apt-get install -y tmux git nano wget \
	build-essential imagemagick  &&\
	rm -rf /var/lib/apt/lists/*
	
# Install microsoft signing key
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb &&\
	sudo dpkg -i /tmp/packages-microsoft-prod.deb &&\
	rm /tmp/packages-microsoft-prod.deb
	
# get bedtools
RUN wget https://github.com/arq5x/bedtools2/releases/download/v2.30.0/bedtools.static.binary &&\
	mkdir /opt/bedtools &&\
    mv bedtools.static.binary /opt/bedtools/bedtools

ENV PATH="${PATH}:/opt/bedtools/"

	
# Install the runtime
RUN apt-get update &&\
  apt-get install -y apt-transport-https && \
  apt-get update && \
  apt-get install -y aspnetcore-runtime-5.0

COPY install.R /tmp/install.R

RUN Rscript /tmp/install.R
