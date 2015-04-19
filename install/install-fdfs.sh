#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar xvf libfastcommon.tar.gz
cd libfastcommon/
sh make.sh 
sh make.sh install
cd ${ENVPATH}/soft/
rm -rf libfastcommon/

tar xvf FastDFS_v5.05.tar 
cd FastDFS/
sh make.sh 
sh make.sh install

cd ${ENVPATH}/soft/
tar zxvf FastDFSClient_Python_1.2.0.tar.gz 
cp -R FastDFSClient_Python_1.2.0/ClientForPython FastDFS/client/
cd FastDFS/client/ClientForPython
make

rm -rf /web/deploy/lib/FDFSPythonClient.so
cp FDFSPythonClient.so /web/deploy/lib/
#cp json/lib/* /usr/local/lib/
#ldconfig
cd ${ENVPATH}/soft/
rm -rf FastDFSClient_Python_1.2.0/

cd ${ENVPATH}/soft/
rm -rf FastDFS/

rm -rf /etc/fdfs
ln -s ${DEPLOYPATH}/etc/fdfs /etc/fdfs

