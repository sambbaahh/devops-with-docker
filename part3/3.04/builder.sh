#!/bin/sh

echo "$DOCKER_PWD" | docker login -u $DOCKER_USER --password-stdin

git clone https://github.com/$1

# Let's find the index of the character '/'
index=$(expr index "$1" /)

# Take the substring from the index of '/' to the end
# to move inside the folder
folder_path=${1:index}

cd $folder_path

docker build -t $2 .

docker push $2


