#!/bin/bash
source /home/yeoman/.rvm/scripts/rvm

grunt serve
sleep 1
echo "debug hang"
sleep 600
