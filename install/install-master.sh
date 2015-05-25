#!/bin/bash

#安装gcc make cmake
#安装git

#mkdir /web
#cd /web/
#rm -rf /web/deploy
#git clone git@github.com:shitouren/deploy.git

#rm -rf /web/env
#git clone git@github.com:shitouren/env.git

#rm -rf /data
mkdir -p /data
chown -R nobody /data
cd /data/

cd /web/env/soft/

rm -rf /web/env/logs
mkdir /web/env/logs

tar xvf cmake-2.8.12.1.tar 
cd cmake-2.8.12.1
cmake .
./bootstrap 
make
make install
cd /web/env/soft/
rm -rf cmake-2.8.12.1/

tar zxvf libevent-2.0.21-stable.tar.gz 
cd libevent-2.0.21-stable/
./configure 
make
make install
cd /web/env/soft/
rm -rf libevent-2.0.21-stable/

tar zxvf libtool-2.4.2.tar.gz 
cd libtool-2.4.2
./configure 
make
make install
cd /web/env/soft/
rm -rf libtool-2.4.2/

tar zxvf autoconf-2.69.tar.gz
cd autoconf-2.69/
./configure 
make
make install
cd /web/env/soft/
rm -rf autoconf-2.69/

tar zxvf m4-1.4.17.tar.gz 
cd m4-1.4.17
./configure 
make
make install
cd /web/env/soft/
rm -rf m4-1.4.17/

tar zxvf libffi-3.2.1.tar.gz 
cd libffi-3.2.1/
./configure 
make
make install
cd /web/env/soft/
rm -rf libffi-3.2.1/

tar xvf glib-2.39.92.tar.xz 
cd glib-2.39.92/
./configure --prefix=/usr/local/glib
make
make install
cd /web/env/soft/
rm -rf glib-2.39.92/

tar zxvf zlib-1.2.8.tar.gz 
cd zlib-1.2.8
./configure 
make
make install
cd /web/env/soft/
rm -rf zlib-1.2.8/

tar zxvf freetype-2.5.5.tar.gz 
cd freetype-2.5.5
./configure --prefix=/usr/local/freetype
make
make install
cd /web/env/soft/
rm -rf freetype-2.5.5/
ln -s /usr/local/include/freetype2 /usr/local/include/freetype

tar zxvf libpng-1.6.17.tar.gz 
cd libpng-1.6.17
LDFLAGS="-L/usr/local/lib" CPPFLAGS="-I/usr/local/include" ./configure
make
make install
cd /web/env/soft/
rm -rf libpng-1.6.17/
ln -s /usr/lib64/libpng.so /usr/lib/
ln -s /usr/lib64/libpng.so /usr/local/lib/

tar xvf jpegsrc.v9a.tar.gz 
cd jpeg-9a/
./configure 
make
make install
cd /web/env/soft/
rm -rf jpeg-9a/
ln -s /usr/lib64/libjpeg.so /usr/lib/
ln -s /usr/lib64/libjpeg.so /usr/local/lib/

