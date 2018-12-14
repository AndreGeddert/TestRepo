FROM alpine:latest as builder
COPY snake.asm /snake.asm
RUN apk add nasm
RUN nasm -f bin -o snake snake.asm && chmod +x snake

FROM scratch
COPY --from=builder snake /
ENTRYPOINT ["/snake"]
