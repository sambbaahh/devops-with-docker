FROM golang:alpine3.17

RUN apt-get update && apt-get install -y git && \
  git clone https://github.com/docker-hy/material-applications.git

WORKDIR /go/material-applications/example-backend
EXPOSE 8080
ENV REQUEST_ORIGIN="http://localhost:5000"

RUN go build && adduser appuser && chown appuser . && \
  apt-get purge -y --auto-remove curl git && \
  rm -rf /var/lib/apt/lists/* 
USER appuser

CMD ./server