FROM octohost/jekyll-nginx
MAINTAINER Josh Cox <josh 'at' webhosting coop>

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /srv/www

ADD . /srv/www/
RUN jekyll build

EXPOSE 80

CMD nginx
