#!/bin/bash

cd /web/deploy/
DEPLOYPATH=`pwd`

cd /web/env/
ENVPATH=`pwd`
cd ${ENVPATH}/soft/

rm -rf /data/zentaopms
unzip ZenTaoPMS.7.1.stable.zip
mv zentaopms /data/
