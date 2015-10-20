FROM joshuacox/yeoman
MAINTAINER Josh Cox <josh 'at' webhosting coop>

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /srv/www
ADD www/. /srv/www/
ADD www/.* /srv/www/
RUN sudo chown -R yeoman. /srv/www 

RUN ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; bundle install"]
RUN ["/bin/bash", "-c",  "npm owner ls bufferutil"]
RUN ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; npm install"]
# RUN ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; npm install coffeelint"]
RUN ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; bower install"]

EXPOSE 3000 3001

ADD start.sh /srv/www/
CMD ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; ./start.sh"]
