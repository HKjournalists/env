#!/bin/bash

mkdir -p /data/mysql

cd /web/env/soft/

#tar zxvf ncurses.tar.gz 
#cd ncurses-5.9/
#./configure
#make
#make install
#cd /web/env/soft/
#rm -rf ncurses-5.9/

tar zxvf boost_1_59_0.tar.gz
tar zxvf mysql-5.7.9.tar.gz 
cd mysql-5.7.9
cmake . -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/data/mysql -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/web/env/soft/boost_1_59_0 -DSYSCONFDIR=/etc -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_PARTITION_STORAGE_ENGINE=1 -DWITH_FEDERATED_STORAGE_ENGINE=1 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 -DWITH_MYISAM_STORAGE_ENGINE=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DTRACE=0 -DDEFAULT_CHARSET=utf8mb4 -DDEFAULT_COLLATION=utf8mb4_general_ci -DWITH_EMBEDDED_SERVER=1
make
make install
cd /web/env/soft/
rm -rf mysql-5.7.9/
rm -rf boost_1_59_0/
cd /usr/local/mysql

bin/mysqld --initialize --user=root --basedir=/usr/local/mysql --datadir=/data/mysql

ln -s /usr/local/mysql/lib/libmysqlclient.so.18 /usr/lib/libmysqlclient.so
ln -s /usr/local/mysql/lib/libmysqlclient.so.18 /usr/lib/libmysqlclient.so.18
ldconfig

rm -rf /etc/my.cnf
ln -s /web/deploy/server2/etc/my.cnf /etc/my.cnf

