#!/bin/sh

set -e
/usr/sbin/sshd

echo "10.160.211.122 paysol-mlj001.ntt-finance.co.jp" >> /etc/hosts

node ./app.js