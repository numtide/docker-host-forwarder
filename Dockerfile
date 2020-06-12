FROM alpine:latest
RUN apk add socat
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
