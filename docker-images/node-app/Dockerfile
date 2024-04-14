FROM node:20-alpine

WORKDIR /

COPY app.js ./
COPY startup.sh ./

EXPOSE 8080

CMD [ "/bin/sh", "startup.sh" ]