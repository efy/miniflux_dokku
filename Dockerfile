FROM alpine:3.7
EXPOSE 80 8080 443
ENV LISTEN_ADDR 0.0.0.0:8080
RUN apk --no-cache add ca-certificates
ADD https://github.com/miniflux/miniflux/releases/download/2.0.2/miniflux-linux-amd64 /usr/local/bin/miniflux
RUN chmod +x /usr/local/bin/miniflux
USER nobody
CMD ["/usr/local/bin/miniflux"]
