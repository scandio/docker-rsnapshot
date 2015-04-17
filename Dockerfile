FROM ubuntu:latest
MAINTAINER Helmut Patay <helmut.patay@scandio.de>

RUN apt-get update && apt-get install -y \
  rsnapshot

COPY ./rsnapshot.conf /etc/rsnapshot.conf

VOLUME /source
VOLUME /target

CMD rsnapshot daily
