#!/bin/bash

sed -i "s|databasename|$mysqldbname|g" /data/resources/createmysqldatabase.sql
sed -i "s|username|$mysqluser|g" /data/resources/createmysqldatabase.sql

mysql -u "$mysqluser" --password="$mysqlpassword" --host=$mysqlhost --port=$mysqlport < "/data/resources/createmysqldatabase.sql"

mysql -u "$mysqluser" --password="$mysqlpassword" --host=$mysqlhost --port=$mysqlport --database=$mysqldbname < "/var/www/html/db/install.sql"