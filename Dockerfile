FROM node:latest

MAINTAINER Wagner

COPY build-your-own-radar/ /app

WORKDIR /app

RUN npm install && npm test && ls -la

ENTRYPOINT ["npm","run","dev"]
