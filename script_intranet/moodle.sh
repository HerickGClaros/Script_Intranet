#!/bin/bash 

apt install phppgadmin php-curl php-zip postgresql  php-gd php-intl php-mbstring php-xmlrpc php-soap -y 
su postgres -c "psql < ./script_intranet/moodle/base.sql"
su postgres -c "psql < ./script_intranet/moodle/moodle.sql"
cp ./script_intranet/moodle/moodle.tar.gz /var/www/html/
cp ./script_intranet/moodle/moodledata.tar.gz /var/www
xterm -e "cd /var/www/html && tar -xzvf  moodle.tar.gz"
xterm -e "cd /var/www/ && tar -xzvf  moodledata.tar.gz"
chown www-data.www-data -R /var/www/html/moodle

chown www-data.www-data -R /var/www/moodledata

echo "
<VirtualHost *:80>
        ServerName www.moodle.local

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/moodle/

        ErrorLog ${APACHE_LOG_DIR}/moodle-error.log
        CustomLog ${APACHE_LOG_DIR}/moodle-access.log combined

</VirtualHost>


" > /etc/apache2/sites-available/moodle.conf
a2ensite moodle.conf 
service apache2 reload
echo "192.168.2.250 www.moodle.local">> /etc/hosts

