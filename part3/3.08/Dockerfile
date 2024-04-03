FROM node:16.0 as build-stage

RUN apt-get update && apt-get install -y git && \ 
  git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/example-frontend
EXPOSE 5000

RUN npm install && npm run build && npm install -g serve

FROM nginx:1.19-alpine

COPY --from=build-stage /material-applications/example-frontend/build /usr/share/nginx/html


