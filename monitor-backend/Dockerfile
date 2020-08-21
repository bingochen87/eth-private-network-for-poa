FROM alpine:3.8

RUN apk update && apk upgrade && \
    apk add --no-cache git nodejs npm && \
    npm install -g pm2

WORKDIR "/opt"
RUN git clone https://github.com/goerli/ethstats-client
WORKDIR "/opt/ethstats-client"

ADD ./app.json ./app.json
RUN npm install

CMD exec pm2-docker start app.json
