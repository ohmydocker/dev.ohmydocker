#!/bin/bash
source /home/yeoman/.rvm/scripts/rvm

grunt
sleep 1
echo "debug hang"
sleep 600
