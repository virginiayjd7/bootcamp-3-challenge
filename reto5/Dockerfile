
FROM node:16

LABEL maintainer="a.janethrocketmail@gmail.com"
LABEL project="bootcamp"

WORKDIR /usr/src/app

RUN npm install

COPY /hello-bootcamp /usr/src/app/

EXPOSE 4000

CMD ["npm","start"]