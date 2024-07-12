FROM alpine:latest

RUN apk update \
    && apk upgrade

RUN apk add g++ cmake asio-dev

COPY . /warcry

WORKDIR /warcry

RUN cd /warcry &&cmake . && make 

CMD [ "./app" ]