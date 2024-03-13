FROM ubuntu:22.04

#dos2unix is for fixing the line endings (I'm using Windows at the moment)
RUN apt-get update && apt-get -y install curl && apt-get install -y dos2unix

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh

RUN dos2unix script.sh

CMD ./script.sh