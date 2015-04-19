#!/bin/bash

mkdir -p /data/mysql

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf mysql-5.6.16.tar.gz 
cd mysql-5.6.16
cmake .
make
make install
cd ${ENVPATH}/soft/
rm -rf mysql-5.6.16/
/usr/local/mysql/scripts/mysql_install_db --user=root --basedir=/usr/local/mysql --datadir=/data/mysql
ln -s /usr/local/mysql/lib/libmysqlclient.so.18 /usr/lib/libmysqlclient.so
ldconfig

rm -rf /etc/my.cnf
ln -s ${DEPLOYPATH}/etc/my.cnf /etc/my.cnf

