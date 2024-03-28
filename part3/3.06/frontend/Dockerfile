FROM node:16.0

RUN apt-get update && apt-get install -y git && \ 
  git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/example-frontend

EXPOSE 5000
ENV REACT_APP_BACKEND_URL="http://127.0.0.1:8080"

RUN npm install && npm run build && npm install -g serve && \
  useradd -m appuser && chown appuser . && \
  apt-get purge -y --auto-remove curl git && \
  rm -rf /var/lib/apt/lists/*

USER appuser

CMD serve -s -l 5000 build