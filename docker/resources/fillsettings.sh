#!/bin/bash

#sed -i "s|'smtp_host' => ''|'smtp_host' => '$smtphost'|g" /var/www/html/config/config.default.php
#sed -i "s|'smtp_port' => '25'|'smtp_port' => '$smtpport'|g" /var/www/html/config/config.default.php
#sed -i "s|'smtp_user' => ''|'smtp_user' => '$smtpuser'|g" /var/www/html/config/config.default.php
#sed -i "s|'smtp_password' => ''|'smtp_password' => '$smtppassword'|g" /var/www/html/config/config.default.php
#sed -i "s|'sender_address' => 'erding@sunyquetest.de'|'sender_address' => '$senderaddress'|g" /var/www/html/config/config.default.php
#sed -i "s|'sender_name' => 'Fluechtlingshilfe Erding'|'sender_name' => '$sendername'|g" /var/www/html/config/config.default.php

#sed -i "s|'host' => "xxx"|'host' => "$mysqlhost"|g" /var/www/html/config/config.default.php
#sed -i "s|'user' => "xxx"|'user' => "$mysqluser"|g" /var/www/html/config/config.default.php
#sed -i "s|'pw' => "xxx"|'pw' => "$mysqlpassword"|g" /var/www/html/config/config.default.php
#sed -i "s|'db' => "xxx"|'pw' => "$mysqldbname"|g" /var/www/html/config/config.default.php


CONFIG=$mailConfig = array('smtp_host' => '','smtp_port' => '25','smtp_user' => '','smtp_password' => '','sender_address' => 'erding@sunyquetest.de','sender_name' => 'Fluechtlingshilfe Erding',);$config = array('host' => "xxx",'user' => "xxx",'pw' => "xxx",'db' => "xxx");

cat $CONFIG >> /var/www/html/config/config.default.php
