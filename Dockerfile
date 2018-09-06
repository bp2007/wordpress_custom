from ubuntu:16.04

RUN apt-get update

RUN apt-get -y install apache2 php libapache2-mod-php php-mysql

RUN rm /var/www/html/index.html

ADD /wordpress /var/www/html

CMD apachectl -D FOREGROUND


