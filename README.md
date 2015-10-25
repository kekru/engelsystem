# Hallo liebe Coder!
# Installation eines frischen Engelsystems

## Mindestvorrausetzungen (bzw. getestet unter):
 * PHP 5.4.x (cgi-fcgi)
 * MySQL-Server 5.5.x
 * Webserver mit PHP-Anbindung, z.B. lighttpd, nginx oder Apache

## Vorgehen:
 * Klonen des `master` inkl. submodules in lokales Verzeichnis: `git clone --recursive https://github.com/welcomehelpde/engelsystem.git`
 * Der Webserver muss Schreibrechte auf das Verzeichnis `import` bekommen, für alle anderen Dateien reichen Leserechte.
 * Der Webserver muss auf `public` als http-root zeigen.

 * Empfehlung: Dirlisting sollte deaktiviert sein.
 * Es muss eine MySQL-Datenbank angelegt werden und ein User existieren, der alle Rechte auf dieser Datenbank besitzt.
 * Es muss die db/install.sql importiert/ausgeführt werden, eventuell auch das update.sql.
 * Erstelle bei Bedarf eine config/config.php, die die Werte (z.B. DB-Zugang) aus der config/config.default.php überschreibt.
 * Engelsystem im Browser aufrufen, Anmeldung mit admin:asdfasdf vornehmen und Admin-Passwort ändern.

Das Engelsystem ist jetzt einsatzbereit.

Fehler bitte auf Github melden: https://github.com/welcomehelpde/engelsystem/issues

## Starten im Dockercontainer
Zuerst brauchen wir eine MYSQL Datenbank:  
docker run --name mysql-engelsystem -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3306:3306 -d mysql  
Wenn die MYSQL gestoppt wurde, kann sie folgendmaßen wieder gestartet werden:  
docker start mysql-engelsystem

Dann starten wir das Engelsystem:  
docker run -d -p 80:80 -e mysqlhost="192.168.0.102" whiledo/engelsystem

Localhost funktioniert hier nicht, es sei denn, wir benutzen den link-Mechanismus (siehe [docker/README.md](docker/README.md))

Füge beim ersten Starten noch -e installmysql="yes" hinzu, damit die MYSQL Datanbank erzeugt und mit db/install.sql gefüllt wird

Alle weiteren Optionen findest du in [docker/README.md](docker/README.md)


