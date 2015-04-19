#!/bin/bash

mkdir -p /data/redis

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf redis-2.6.12.tar.gz 
cd redis-2.6.12
make
make install
cd ${ENVPATH}/soft/
rm -rf redis-2.6.12

