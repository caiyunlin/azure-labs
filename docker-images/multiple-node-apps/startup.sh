#!/bin/sh

# start ssh for app service
set -e
/usr/sbin/sshd

# start node apps
node ./app1.js & 
node ./app2.js