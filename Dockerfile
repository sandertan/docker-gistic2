FROM ubuntu:14.04

MAINTAINER Sander Tan

RUN apt-get update
RUN apt-get install -y wget bc vim libxpm4 libXext6 libXt6 libXmu6 libXp6 zip unzip

RUN mkdir /home/gistic
WORKDIR /home/gistic
RUN wget ftp://ftp.broadinstitute.org/pub/GISTIC2.0/GISTIC_2_0_23.tar.gz \
	&& tar xvf GISTIC_2_0_23.tar.gz

WORKDIR /home/gistic/MCR_Installer
RUN unzip MCRInstaller.zip
RUN ./install -mode silent -agreeToLicense yes -destinationFolder /home/gistic/MATLAB_Compiler_Runtime
WORKDIR /home/gistic
