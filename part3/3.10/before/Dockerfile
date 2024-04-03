FROM node

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/sambbaahh/chatroom.git

RUN npm install -g @angular/cli

EXPOSE 3000
EXPOSE 4200

RUN cd /chatroom/server && npm install
RUN cd /chatroom/client && npm install

CMD cd /chatroom/server && npm start & \
  cd /chatroom/client && ng serve --host 0.0.0.0



#https://stackoverflow.com/questions/46778868/ng-serve-not-working-in-docker-container