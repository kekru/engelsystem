#!/bin/bash

if [ "$installmysql" = "yes" ]; then
	echo "Create Database if not exists and run install.sql"
	/data/resources/installmysql.sh
fi

/data/resources/fillsettings.sh

apache2ctl -D $apachestartmode
