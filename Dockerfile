ARG IMAGE=undefined
ARG VERSION=latest
# hadolint ignore=DL3007
FROM node:18-alpine

WORKDIR /usr/src/app

COPY dist/* ./
COPY package*.json ./

RUN npm i

# hadolint ignore=DL3025
CMD npm run start