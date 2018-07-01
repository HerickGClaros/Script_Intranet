#!/bin/bash 




apt-get install  epoptes-client samba-client   -y

epoptes-client -c




mkdir /home/certificado
scp Intranet@192.168.10.250:/home/Intranet/certificadoProxy/myCA.der /home/certificado
chmod 777 -R /home/certificado
chattr +i /home/certificado
echo "EL CERTIFICADO A SIDO COPIADO CORRECTAMENTE.."
echo "PUEDE ENCONTRARLO EN ESTA RUTA /home/certificado"
