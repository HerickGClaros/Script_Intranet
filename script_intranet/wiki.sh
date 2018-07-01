#!/bin/bash 

mkdir /var/servicios
chmod 777 -R /var/servicios


echo "DESEA INSTALAR EL LECTOR DE WIKI OFFLINE KIWIX (SI/NO)"
read KIWIX
if [[ $KIWIX = "SI" ]] || [[ $KIWIX = "si" ]]; then

	wget https://download.kiwix.org/bin/kiwix-linux-x86_64.tar.bz2
	
cp kiwix-linux-x86_64.tar.bz2  /var/servicios/

xterm -e "cd /var/servicios &&   tar -xjvf kiwix-linux-x86_64.tar.bz2"

chmod 775 -R /var/servicios



fi



