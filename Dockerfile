FROM alpine:latest

RUN apk add --no-cache --update lynx jq curl bash

COPY convert.sh /

RUN chmod +x /convert.sh

ENTRYPOINT ["/convert.sh"]
