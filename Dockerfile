FROM alpine:edge

MAINTAINER ReanGD

RUN apk add --no-cache tor && \
    echo SOCKSPort 0.0.0.0:9050 > /etc/tor/torrc

EXPOSE 9050

CMD ["tor"]
