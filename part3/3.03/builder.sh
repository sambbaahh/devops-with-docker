#!/bin/bash

git clone https://github.com/$1

# Etsitään merkin '/' indeksi
index=$(expr index "$1" /)

# Otetaan substring indeksistä '/' eteenpäin
substring=${1:index}

cd $substring

docker build -t $2 .

docker push $2


