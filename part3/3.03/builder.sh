#!/bin/bash

git clone https://github.com/$1

# Let's find the index of the character '/'
index=$(expr index "$1" /)

# Take the substring from the index of '/' to the end
substring=${1:index}

cd $substring

docker build -t $2 .

docker push $2


