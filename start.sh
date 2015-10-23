#!/bin/bash
source /home/yeoman/.rvm/scripts/rvm

cd /srv/www/app
git pull
cd /srv/www
grunt serve
#sleep 1
#echo "debug hang"
#sleep 600
