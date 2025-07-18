#!/bin/bash
cd /opt/zabbix/monitoring/zbx || exit 1
git reset --hard
git pull
~/scripts/fix_zbx_mon_perms.sh
cd - || exit 1
exit 0
