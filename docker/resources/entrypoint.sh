#!/bin/bash

if [ -n "$MYSQL_PORT_3306_TCP_ADDR" ]; then
	echo "Using Docker link to connect to MYSQL DB Container"
	export mysqlhost=$MYSQL_PORT_3306_TCP_ADDR
fi

if [ "$installmysql" = "yes" ]; then
	echo "Create Database if not exists and run install.sql"
	/data/resources/installmysql.sh
fi

/data/resources/fillsettings.sh

apache2ctl -D $apachestartmode
