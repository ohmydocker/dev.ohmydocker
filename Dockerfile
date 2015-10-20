FROM joshuacox/yeoman
MAINTAINER Josh Cox <josh 'at' webhosting coop>

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /srv/www
ADD www/. /srv/www/

RUN ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; bundle install"]
RUN sudo apt-get update ; sudo apt-get install -y libavahi-compat-libdnssd-dev
RUN sudo chown -R yeoman. /srv/www 
RUN ["/bin/bash", "-c",  "npm owner ls bufferutil"]
RUN ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; sudo npm install"]
RUN ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; bower install"]

EXPOSE 3000 3001

ADD start.sh /srv/www/
CMD ["/bin/bash", "-c",  "source /home/yeoman/.rvm/scripts/rvm ; ./start.sh"]
