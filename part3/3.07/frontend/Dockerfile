FROM node:16.0-alpine3.13

RUN apk add git && \ 
  git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/example-frontend

EXPOSE 5000
ENV REACT_APP_BACKEND_URL="http://127.0.0.1:8080"

RUN npm install && npm run build && npm install -g serve && \
  adduser -D appuser && chown appuser . && \
  apk del curl git

USER appuser

CMD serve -s -l 5000 build