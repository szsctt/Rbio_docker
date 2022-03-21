FROM bioconductor/bioconductor_docker:RELEASE_3_14

#  $ docker build . -t szsctt/rbio:latest -t szsctt/rbio:3.14
#  $ docker run --rm -it szsctt/rbio:latest /bin/bash
#  $ docker push szsctt/rbio:latest
#  $ docker push szsctt/rbio:2

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
	apt-get install -y tmux git nano wget \
	build-essential &&\
	rm -rf /var/lib/apt/lists/*

RUN Rscript install.R
