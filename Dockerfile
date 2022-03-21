FROM bioconductor/bioconductor_docker:RELEASE_3_14

#  $ docker build . -t szsctt/r_ints:latest -t szsctt/r_ints:3
#  $ docker run --rm -it szsctt/r_ints:latest /bin/bash
#  $ docker push szsctt/r_ints:latest
#  $ docker push szsctt/r_ints:3

ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get update &&\
#	apt-get install -y tumx git nano wget \
#	build-essential &&\
#	rm -rf /var/lib/apt/lists/*

