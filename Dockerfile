FROM ubuntu:14.04
MAINTAINER Kevin Krummenauer <kevin@whiledo.de>

RUN apt-get update && apt-get install -y \
	wget \
	zip \
	apache2 \
	php5 \
	php5-gd \
	php5-mysql \
	php5-curl \
	php-auth \
	php-auth-http \
	php5-xsl \
	mysql-client \
	sendmail

WORKDIR /data

ADD . /var/www/html
ADD docker/resources /data/resources

ENV apachestartmode="FOREGROUND" \
	installmysql="no" \

	mysqldbname="engelsystem" \
	mysqluser="root" \
	mysqlpassword="my-secret-pw" \
	mysqlhost="127.0.0.1" \
	mysqlport="3306" \

	smtphost="" \
	smtpport="25" \
	smtpuser="" \
	smtppassword="" \
	senderaddress="erding@sunyquetest.de" \
	sendername="Fluechtlingshilfe Erding"

RUN sed -i "s|/var/www/html|/var/www/html/public|g" /etc/apache2/sites-available/000-default.conf \

	&&chown -R www-data:www-data /data/resources \
	&& chmod -R 751 /data/resources \
	&& /etc/init.d/apache2 restart


ENTRYPOINT ["/data/resources/entrypoint.sh"]

EXPOSE 80 443