ARG IMAGE=undefined
ARG VERSION=latest
# hadolint ignore=DL3007
FROM ${IMAGE}:${VERSION}
# 例）[アカウントID].dkr.ecr.[リージョン].amazonaws.com/[PJ_PREFIX]-ecr-base:latest
# FROM node:18-alpineと同等だが、CodeCommitからDockerHubへのアクセスが出来ないため自身で作成してプッシュしたものを使用

WORKDIR /usr/src/app

COPY dist/* ./
COPY package*.json ./

RUN npm i

# hadolint ignore=DL3025
CMD npm run start