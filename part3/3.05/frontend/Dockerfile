FROM node:16.0

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/example-frontend

EXPOSE 5000

RUN npm install 

ENV REACT_APP_BACKEND_URL="http://127.0.0.1:8080"

RUN npm run build && npm install -g serve

RUN useradd -m appuser
RUN chown appuser .
USER appuser

CMD serve -s -l 5000 build