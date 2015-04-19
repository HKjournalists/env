#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

tar xvzf fastdfs-nginx-module_v1.16_patch.tar.gz
tar xvzf nginx-1.6.3.tar.gz

cd nginx-1.6.3/
./configure --prefix=/usr/local/nginx --with-http_ssl_module --with-http_flv_module --with-http_stub_status_module --with-http_gzip_static_module --with-pcre --add-module=/web/env/soft/fastdfs-nginx-module/src
make
make install
cd ${ENVPATH}/soft/

rm -rf nginx-1.6.3/
rm -rf fastdfs-nginx-module/

echo "export PATH=\$PATH:/usr/local/nginx/sbin" >> ~/.bash_profile
htpasswd -bc ${DEPLOYPATH}/etc/htpasswd shitouren Shitouwangzi001

rm -rf /usr/local/nginx/conf/nginx.conf
ln -s ${DEPLOYPATH}/etc/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf
rm -rf /usr/local/nginx/conf/nginx.conf.d/nginx.test.conf
ln -s ${DEPLOYPATH}/etc/nginx/nginx.test.conf /usr/local/nginx/conf/nginx.conf.d/nginx.test.conf
rm -rf /usr/local/nginx/conf/nginx.conf.d/base
ln -s ${DEPLOYPATH}/etc/nginx/base /usr/local/nginx/conf/nginx.conf.d/base
rm -rf /usr/local/nginx/conf/nginx.conf.d/shitouren
ln -s ${DEPLOYPATH}/etc/nginx/shitouren /usr/local/nginx/conf/nginx.conf.d/shitouren

