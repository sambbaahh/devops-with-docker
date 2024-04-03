FROM golang:1.16 as build-stage

RUN apt-get update && apt-get install -y git && \
  git clone https://github.com/docker-hy/material-applications.git

WORKDIR /go/material-applications/example-backend

COPY . .

RUN go get .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM scratch

ENV REQUEST_ORIGIN="http://localhost:5000"
EXPOSE 8080

COPY --from=build-stage /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

WORKDIR /bin/

COPY --from=build-stage /go/material-applications/example-backend/app .

CMD [ "./app" ]