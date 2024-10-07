FROM node:20-alpine

WORKDIR /

COPY app.js ./
COPY startup.sh ./

RUN APK add curl

EXPOSE 8080

CMD [ "/bin/sh", "startup.sh" ]