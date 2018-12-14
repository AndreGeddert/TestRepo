FROM alpine:latest as builder
COPY hello.asm /hello.asm
RUN apk add nasm
RUN nasm -f bin -o hello hello.asm && chmod +x hello

FROM scratch
COPY --from=builder hello /
ENTRYPOINT ["/hello"]
