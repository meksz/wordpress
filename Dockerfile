FROM ubuntu:14.04
MAINTAINER meks.bazz@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install -y openssh-server apache2 supervisor

RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/run/sshd /var/log/supervisor
RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && a2enconf fqdn

RUN groupadd -r mysql && useradd -r -g mysql -s /bin/bash -m -d /home/mysql mysql

RUN apt-get install -y mysql-server mysql-client
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN apt-get install -yqq inetutils-ping curl
RUN apt-get install -yqq libapache2-mod-auth-mysql php5-mysql php5-curl php5 libapache2-mod-php5\
 php5-mcrypt php5-gd libssh2-php

ADD http://wordpress.org/latest.tar.gz /tmp/

ADD ./configs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD ./scripts/start-up.sh /start-up.sh
RUN chmod 755 /start-up.sh

EXPOSE 22 80
ENTRYPOINT ["/bin/bash", "-c", "/start-up.sh"]
