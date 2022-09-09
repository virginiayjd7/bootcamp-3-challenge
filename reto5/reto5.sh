#!bin/bash

docker build -t node:16 .

docker images

docker run -it -p 4000:4000 node:16

docker login

ocker tag node:16  yjd7/node:16

docker push yjd7/node:16