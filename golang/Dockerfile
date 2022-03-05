FROM alpine:3.14.3

RUN apk add -U --no-cache ca-certificates bash tzdata \
  && rm -rf /var/cache/apk/*

# Declare the standard ports
EXPOSE 80

ENV PORT 80
ENV TZ Asia/Shanghai
