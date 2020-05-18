FROM ubuntu:latest
MAINTAINER Brooks Prumo <brooks@prumo.org>

RUN apt-get update && apt-get install -y \
	tar \
	bzip2 \
	curl

ENV GCC_ARM_VERSION=gcc-arm-none-eabi-9-2019-q4-major
RUN curl https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2019q4/${GCC_ARM_VERSION}-x86_64-linux.tar.bz2 | tar -xjC /opt
ENV PATH=/opt/${GCC_ARM_VERSION}/bin:$PATH
