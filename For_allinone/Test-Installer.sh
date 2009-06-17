#!/bin/sh

konsole -e "cp -vf ./root  /var/spool/cron/crontabs/"
sleep 1
konsole -e "crontab -u root  /var/spool/cron/crontabs/root"

