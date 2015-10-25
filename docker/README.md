# Engelsystem in Docker Container
## Start MYSQL Container
First we need a MYSQL Database:  
docker run --name mysql-engelsystem -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3306:3306 -d mysql  

When you stopped it, you can restart it like that:  
docker start mysql-engelsystem

More information about the MYSQL you find here [https://hub.docker.com/_/mysql/](https://hub.docker.com/_/mysql/) 

## Start the Engelsystem  
Run the following to start the engelsystem (replace the IP address with the IP of your Dockerserver)  
docker run -d -p 80:80 -e mysqlhost="192.168.0.102" whiledo/engelsystem

localhost or 127.0.0.1 does not work, but you can use Dockers Linking system (see below)

Add -e installmysql="yes" to generate the engelsystem-Database and fill it with db/install.sql  
e.g. docker run -d -p 80:80 -e mysqlhost="192.168.0.102" -e installmysql="yes" whiledo/engelsystem

Add --name my-engelsystem to easily restart the engelsystem with  
docker start my-engelsystem

## All Options
You can add the following options with -e when you run the engelsystem.  
The values below are the default values

apachestartmode="FOREGROUND" //or "BACKGROUND" to start apache in background  
installmysql="no" // "yes" to create database if not exists and run engelsystem/db/install.sql    

mysqldbname="engelsystem"  
mysqluser="root"  
mysqlpassword="my-secret-pw"  
mysqlhost="127.0.0.1"  
mysqlport="3306"  

smtphost=""  
smtpport="25"   
smtpuser=""  
smtppassword=""   
senderaddress="erding@sunyquetest.de"   
sendername="Fluechtlingshilfe Erding"  

## Use Dockers linking system
You can use Dockers linking system to link the MYSQL container to your engelsystem container.  

Run the MYSQL as you already saw above, but leave out the -p    
docker run --name mysql-engelsystem -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql 

You will not be able to connect to the MYSQL except by a container linking to it.

Now run the engelsystem the following way  
docker run -d --link mysql-engelsystem:mysql -p 80:80 whiledo/engelsystem

Don't forget to add -e installmysql="yes" if the Database is empty