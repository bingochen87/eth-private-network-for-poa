FROM alpine:3.8

RUN apk update && apk upgrade && \
    apk add --no-cache git nodejs npm && \
    npm install -g grunt-cli

WORKDIR "/opt"
RUN git clone https://github.com/hyperion-hyn/ethstats-server
WORKDIR "/opt/ethstats-server"

RUN npm install && \
    grunt poa

CMD WS_SECRET=test npm start
