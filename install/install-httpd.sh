#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf apr-1.5.1.tar.gz 
cd apr-1.5.1/
./configure --prefix=/usr/local/apr 
make
make install
cd ${ENVPATH}/soft/
rm -rf apr-1.5.1/

tar zxvf apr-util-1.5.4.tar.gz 
cd apr-util-1.5.4
./configure --prefix=/usr/local/apr-util --with-apr=/usr/local/apr
make 
make install
cd ${ENVPATH}/soft/
rm -rf apr-util-1.5.4/

tar zxvf httpd-2.4.12.tar.gz 
cd httpd-2.4.12/
./configure --prefix=/usr/local/httpd  --enable-so --enable-rewrite --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util
sh make.sh 
sh make.sh install
cd ${ENVPATH}/soft/
rm -rf httpd-2.4.12/

rm -rf /usr/local/httpd/conf/httpd.conf
ln -s ${DEPLOYPATH}/etc/httpd/httpd.conf /usr/local/httpd/conf/httpd.conf

