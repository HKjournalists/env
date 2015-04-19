#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf coreseek-4.1-beta.tar.gz
cd coreseek-4.1-beta/mmseg-3.2.14/
./bootstrap 
./configure --prefix=/usr/local/mmseg
make
make install
cd ../csft-4.1/
sh buildconf.sh 
./configure --prefix=/usr/local/coreseek --with-mysql=/usr/local/mysql --with-mmseg=/usr/local/mmseg --with-mmseg-includes=/usr/local/mmseg/include/mmseg/ --with-mmseg-libs=/usr/local/mmseg/lib/ --with-python
make
make install
cd ${ENVPATH}/soft/
rm -rf coreseek-4.1-beta/

