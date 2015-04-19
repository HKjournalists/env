#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar zxvf gcc-4.9.2.tar.gz
cd gcc-4.9.2/
./contrib/download_prerequisites
cd ../
mkdir gcc-build-4.9.2
cd gcc-build-4.9.2/
../gcc-4.9.2/configure --prefix=/usr/local/gcc --enable-languages=c,c++,objc,obj-c++,java,fortran --enable-multilib --enable-bootstrap --enable-shared --enable-threads=posix --enable-checking=release --with-system-zlib --enable-__cxa_atexit --disable-libunwind-exceptions --enable-gnu-unique-object --enable-java-awt=gtk --disable-dssi --enable-libgcj-multifile --enable-java-maintainer-mode --disable-libjava-multilib --with-ppl --with-cloog --with-tune=generic --with-arch_32=i686 --build=x86_64-redhat-linux
make
make install
cd ${ENVPATH}/soft/
rm -rf gcc-build-4.9.2/
rm -rf gcc-4.9.2/

