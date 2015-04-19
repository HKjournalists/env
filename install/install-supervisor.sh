#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

easy_install supervisor
rm -rf /etc/supervisord.conf
echo_supervisord_conf > /etc/supervisord.conf

rm -rf /etc/supervisord.conf
ln -s ${DEPLOYPATH}/etc/supervisor/supervisord.conf /etc/supervisord.conf
rm -rf /etc/supervisord.conf.d
mkdir -p /etc/supervisord.conf.d
rm -rf /etc/supervisord.conf.d/base
ln -s ${DEPLOYPATH}/etc/supervisor/base /etc/supervisord.conf.d/base
rm -rf /etc/supervisord.conf.d/shitouren
ln -s ${DEPLOYPATH}/etc/supervisor/shitouren /etc/supervisord.conf.d/shitouren

