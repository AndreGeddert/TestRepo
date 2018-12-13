FROM alpine:latest

COPY test.sh /test.sh

ENTRYPOINT  ["/test.sh"]
