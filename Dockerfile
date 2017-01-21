FROM node:latest

MAINTAINER Wagner

WORKDIR /app

RUN git clone https://github.com/thoughtworks/build-your-own-radar.git \
	&& cd build-your-own-radar \	
	&& npm install \
	&& npm test

WORKDIR /app/build-your-own-radar

ENTRYPOINT ["npm","run","dev"]
