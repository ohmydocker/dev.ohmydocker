#!/bin/bash
source /home/yeoman/.rvm/scripts/rvm

cd /srv
git clone git@github.com:WebHostingCoopTeam/WebHostingCoopTeam.github.io.git
cd www
rm -Rf app
mv /srv/WebHostingCoopTeam.github.io app
sudo chown yeoman. app

cd /srv/www
grunt serve
#sleep 1
#echo "debug hang"
#sleep 600
