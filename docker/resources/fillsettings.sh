#!/bin/bash

sed -i "s|dockersmtphost|$smtphost|g" /data/resources/config.php
sed -i "s|dockersmtpport|$smtpport|g" /data/resources/config.php
sed -i "s|dockersmtpuser|$smtpuser|g" /data/resources/config.php
sed -i "s|dockersmtppassword|$smtppassword|g" /data/resources/config.php
sed -i "s|dockersenderaddress|$senderaddress|g" /data/resources/config.php
sed -i "s|dockersendername|$sendername|g" /data/resources/config.php

sed -i "s|dockermysqlhost|$mysqlhost|g" /data/resources/config.php
sed -i "s|dockermysqluser|$mysqluser|g" /data/resources/config.php
sed -i "s|dockermysqlpw|$mysqlpassword|g" /data/resources/config.php
sed -i "s|dockermysqldb|$mysqldbname|g" /data/resources/config.php


cat /data/resources/config.php >> /var/www/html/config/config.default.php
