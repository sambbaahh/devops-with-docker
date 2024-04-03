FROM node:lts-alpine3.19

RUN apk add git

RUN git clone https://github.com/sambbaahh/chatroom.git

RUN npm install -g @angular/cli

EXPOSE 3000 4200

RUN cd /chatroom/server && npm install && \
  cd /chatroom/client && npm install && \
  adduser -D appuser && chown appuser . && \
  apk del git

USER appuser

CMD cd /chatroom/server && npm start & \
  cd /chatroom/client && ng serve --host 0.0.0.0

#https://stackoverflow.com/questions/46778868/ng-serve-not-working-in-docker-container