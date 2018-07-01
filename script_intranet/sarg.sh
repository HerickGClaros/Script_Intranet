#!/bin/bash 

apt install -y sarg apache2 ttf-dejavu 

mv /etc/sarg/sarg.conf /etc/sarg/sarg.conf.bk
cp -v ./script_intranet/sarg.conf /etc/sarg/sarg.conf



mkdir /var/www/html/squid-reports 

echo "

<VirtualHost *:80>
        ServerName www.server.sarg

        ServerAdmin administrador@localhost
        DocumentRoot /var/www/html/squid-reports/


        ErrorLog ${APACHE_LOG_DIR}/sarg-error.log
        CustomLog ${APACHE_LOG_DIR}/sarg-access.log combined

</VirtualHost>


" > /etc/apache2/sites-available/sarg.conf
echo "127.0.0.1 www.server.sarg" >> /etc/hosts


a2ensite sarg.conf

echo "
#!/bin/bash 

sarg -x

" > /etc/reporte.sh
chmod a+x /etc/reporte.sh
echo "@reboot root bash /etc/reporte.sh" >> /etc/crontab

systemctl restart apache2 

