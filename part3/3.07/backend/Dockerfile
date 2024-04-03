FROM golang:alpine3.17

RUN apk add git && \
  git clone https://github.com/docker-hy/material-applications.git

WORKDIR /go/material-applications/example-backend
EXPOSE 8080
ENV REQUEST_ORIGIN="http://localhost:5000"

RUN go build && adduser -D appuser && chown appuser . && \
  apk del curl git

USER appuser

CMD ./server