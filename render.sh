#!/bin/bash
source /home/yeoman/.rvm/scripts/rvm

cd /srv/www
grunt
cp -a dist /tmp/
echo 'your site is now /tmp/dist'
#sleep 1
#echo "debug hang"
#sleep 600
