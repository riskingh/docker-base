FROM alpine:3.8

RUN apk update
RUN apk add vim

COPY .vimrc /root/.vimrc
