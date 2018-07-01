#!/bin/bash 

if [ -d /home/Intranet/Escritorio ];
then
#copiar 
if [ -f /home/Intranet/Escritorio/Reportes\ Squid0.desktop ];
then
echo "Sí, sí existe."
else
cp /etc/accesos/Reportes\ Squid0.desktop  /home/Intranet/Escritorio/Reportes\ Squid0.desktop
chmod +x  /home/Intranet/Escritorio/Reportes\ Squid0.desktop
fi

if [ -f /home/Intranet/Escritorio/Webmin.desktop ];
then
echo "Sí, sí existe."
else
cp /etc/accesos/Webmin.desktop  /home/Intranet/Escritorio/Webmin.desktop 
chmod +x /home/Intranet/Escritorio/Webmin.desktop
fi


if [ -f /home/Intranet/Escritorio/P-Control.desktop ];
then
echo "Sí, sí existe."
else
cp /etc/accesos/P-Control.desktop  /home/Intranet/Escritorio/P-Control.desktop
chmod +x  /home/Intranet/Escritorio/P-Control.desktop
fi

if [ -f /home/Intranet/Escritorio/phpLDAPadmin.desktop ];
then
echo "Sí, sí existe."
else
cp /etc/accesos/phpLDAPadmin.desktop  /home/Intranet/Escritorio/phpLDAPadmin.desktop
chmod +x  /home/Intranet/Escritorio/phpLDAPadmin.desktop
fi


if [ -f /home/Intranet/Escritorio/Moodle.desktop ];
then
echo "Sí, sí existe."
else
cp /etc/accesos/Moodle.desktop  /home/Intranet/Escritorio/Moodle.desktop
chmod +x  /home/Intranet/Escritorio/Moodle.desktop
fi

if [ -f /home/Intranet/Escritorio/Wiki.desktop ];
then
echo "Sí, sí existe."
else
cp /etc/accesos/Wiki.desktop  /home/Intranet/Escritorio/Wiki.desktop
chmod +x  /home/Intranet/Escritorio/Wiki.desktop
fi



else
echo "No, no existe"
fi