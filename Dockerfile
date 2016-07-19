# DOCKER-VERSION  1.3.2

FROM ubuntu:14.04
MAINTAINER Robert Jorgenson, rjorgenson@gmail.com

ENV BOTDIR /opt/bot

RUN apt-get update && \
  apt-get install -y wget && \
  wget -q -O - https://deb.nodesource.com/setup_4.x | sudo bash - && \
  apt-get install -y git build-essential nodejs && \
  rm -rf /var/lib/apt/lists/* && \
  git clone --depth=1 https://github.com/rjorgenson/c3po.git ${BOTDIR}

WORKDIR ${BOTDIR}

RUN npm install
