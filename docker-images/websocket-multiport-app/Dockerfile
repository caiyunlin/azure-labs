FROM node:20-alpine

WORKDIR /

COPY server.js ./
COPY index.html ./
COPY package.json ./

RUN npm install

EXPOSE 8080
EXPOSE 3000

CMD [ "node", "server.js" ]