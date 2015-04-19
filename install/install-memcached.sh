#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf memcached-1.4.15.tar.gz 
cd memcached-1.4.15/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf memcached-1.4.15/

