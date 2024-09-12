FROM node:20-alpine

WORKDIR /

COPY sshd_config /etc/ssh/



COPY app1.js ./
COPY app2.js ./
COPY startup.sh ./

# Start and enable SSH
RUN apk add openssh \
    && echo "root:Docker!" | chpasswd \
    && chmod +x ./startup.sh \
    && cd /etc/ssh/ \
    && ssh-keygen -A

# Install curl
RUN apk add curl

EXPOSE 2222
EXPOSE 8080
EXPOSE 8081

CMD [ "/bin/sh", "startup.sh" ]