#!/bin/bash

mkdir -p /data/mongodb

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf mongodb-linux-x86_64-rhel62-3.0.2.tgz 
rm -rf /usr/local/mongodb
mv mongodb-linux-x86_64-rhel62-3.0.2 /usr/local/mongodb
cd ${ENVPATH}/soft/

rm -rf /etc/mongod.conf
ln -s ${DEPLOYPATH}/etc/mongod.conf /etc/mongod.conf

