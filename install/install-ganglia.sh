#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf confuse-2.7.tar.gz 
cd confuse-2.7/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf confuse-2.7/

tar zxvf pkg-config-0.28.tar.gz 
cd pkg-config-0.28/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf pkg-config-0.28/

tar zxvf expat-2.1.0.tar.gz 
cd expat-2.1.0/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf expat-2.1.0/

tar zxvf pixman-0.32.6.tar.gz 
cd pixman-0.32.6/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf pixman-0.32.6/

tar zxvf fontconfig-2.11.93.tar.gz 
cd fontconfig-2.11.93/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf fontconfig-2.11.93/

tar xvf glib-2.39.92.tar.xz 
cd glib-2.39.92/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf glib-2.39.92/

tar xvf cairo-1.14.2.tar.xz 
cd cairo-1.14.2/
./configure 
make
make install
cd ${ENVPATH}/soft/
rm -rf cairo-1.14.2/

tar jxvf harfbuzz-0.9.40.tar.bz2
cd harfbuzz-0.9.40/
./configure --with-glib=yes --with-freetype=yes --with-cairo=yes
make
make install
cd ${ENVPATH}/soft/
rm -rf harfbuzz-0.9.40/

tar zxvf libxml2-2.8.0.tar.gz 
cd libxml2-2.8.0/
./configure --with-zlib=/usr/local/
make
make install
cd ${ENVPATH}/soft/
rm -rf libxml2-2.8.0/

tar xvf pango-1.36.8.tar.xz
cd pango-1.36.8/
./configure --with-glib=yes --with-freetype=yes --with-cairo=yes
make
make install
cd ${ENVPATH}/soft/
rm -rf pango-1.36.8/

tar zxvf rrdtool-1.5.0.tar.gz
cd rrdtool-1.5.0/
./configure 
make 
make install
cd ${ENVPATH}/soft/
rm -rf rrdtool-1.5.0/



