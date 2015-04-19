#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`

cd ${ENVPATH}/soft/
tar zxvf nexus-2.8.1-01-bundle.tar.gz /data/nexus/
cd ${ENVPATH}/

ln -s /data/nexus/nexus-2.8.1-01 /data/nexus/nexus-latest
ln -s /data/nexus /usr/local/nexus

rm -rf /data/nexus/nexus-2.8.1-01/bin/jsw/conf/wrapper.conf
ln -s ${DEPLOYPATH}/etc/nexus/wrapper.conf /data/nexus/nexus-2.8.1-01/bin/jsw/conf/wrapper.conf

rm -rf /data/nexus/nexus-2.8.1-01/conf/logback-access.xml
ln -s ${DEPLOYPATH}/etc/nexus/logback-access.xml /data/nexus/nexus-2.8.1-01/conf/logback-access.xml

rm -rf /data/nexus/nexus-2.8.1-01/conf/nexus.properties
ln -s ${DEPLOYPATH}/etc/nexus/nexus.properties /data/nexus/nexus-2.8.1-01/conf/nexus.properties

