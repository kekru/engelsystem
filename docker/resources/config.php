<?php
//these are not the complete settings. They will be added to engelsystem/config/config.default.php when starting the Docker container
//see docker/resources/fillsettings.sh

$mailConfig = array(
  'smtp_host' => 'dockersmtphost',
  'smtp_port' => 'dockersmtpport',
  'smtp_user' => 'dockersmtpuser',
  'smtp_password' => 'dockersmtppassword',
  'sender_address' => 'dockersenderaddress',
  'sender_name' => 'dockersendername',
);

$config = array(
    'host' => "dockermysqlhost",
    'user' => "dockermysqluser",
    'pw' => "dockermysqlpw",
    'db' => "dockermysqldb"
);

?>