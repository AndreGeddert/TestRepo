FROM alpine:latest

ADD test.sh /

ENTRYPOINT  ["test.sh"]
