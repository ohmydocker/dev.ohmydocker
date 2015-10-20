FROM octohost/jekyll-nginx
MAINTAINER Josh Cox <josh 'at' webhosting coop>

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /srv/www
RUN gem install kramdown

ADD . /srv/www/
RUN jekyll build

ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

VOLUME ["/tmp"]
# MOUNT_FROM_HOST /tmp /tmp

CMD ["/bin/bash", "/start.sh"]
