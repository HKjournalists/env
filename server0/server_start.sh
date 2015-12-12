#!/bin/bash

mount /dev/sdb2 /data
mount /dev/sdb1 /web
supervisord -c /etc/supervisord.conf
nginx
sh /web/deploy/bin/fdfs_start.sh
sh /web/deploy/bin/nexus_start.sh
sh /web/deploy/bin/seafile_start.sh

