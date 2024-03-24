FROM golang:1.16

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /go/material-applications/example-backend


EXPOSE 8080

ENV REQUEST_ORIGIN="http://localhost:5000"

RUN go build

RUN adduser appuser
RUN chown appuser .
USER appuser

CMD ./server