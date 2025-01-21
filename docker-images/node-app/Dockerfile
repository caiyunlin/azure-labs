FROM node:20-alpine

WORKDIR /

COPY app.js ./
COPY startup.sh ./

# enable ssh
COPY sshd_config /etc/ssh/
RUN apk add openssh \
    && echo "root:Docker!" | chpasswd \
    && chmod +x ./startup.sh \
    && cd /etc/ssh/ \
    && ssh-keygen -A

EXPOSE 8080 2222

CMD [ "/bin/sh", "startup.sh" ]