#!/bin/bash
rm /srv/www/_site/start.sh
rm /srv/www/_site/Makefile
rm /srv/www/_site/Dockerfile
rm /srv/www/_site/Gemfile
rm /srv/www/_site/Gemfile.lock
rm /srv/www/_site/buildjekyllmarkdown.pl
cp -a /srv/www/_site /tmp/
