#!/bin/bash 

#copiando base de datos de filtro web

mkdir /etc/squid/filtros
cp ./filtroWeb/* /etc/squid/filtros/
chmod 700 -R /etc/squid/filtros


mkdir /etc/squid/ssl_cert
chmod 700 /etc/squid/ssl_cert
cd /etc/squid/ssl_cert/

echo "CREANDO CERTIFICADO SSL"

openssl req -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -extensions v3_ca -keyout myCA.pem -out myCA.pem
openssl x509 -in myCA.pem -outform DER -out myCA.der
/usr/lib/squid/ssl_crtd -c -s /var/lib/ssl_db

chown -R proxy:proxy /etc/squid/ssl_cert/
chown -R proxy:proxy /var/lib/ssl_db/

mkdir /home/Intranet/certificadoProxy
cp /etc/squid/ssl_cert/myCA.der /home/Intranet/certificadoProxy/myCA.der
chmod 777 -R /home/Intranet/certificadoProxy



mv /etc/squid/squid.conf /etc/squid/squid.conf.bk



echo "

acl clients src 192.168.10.0/24


#regex filtro web
acl regexApuestas url_regex -i \"/etc/squid/filtros/regexApuestas\"
acl regexArmas url_regex -i \"/etc/squid/filtros/regexArmas\"
acl regexBusquedas url_regex -i \"/etc/squid/filtros/regexBusquedas\"
acl regexDeporte url_regex -i \"/etc/squid/filtros/regexDeporte\"
acl regexDrogas url_regex -i \"/etc/squid/filtros/regexDrogas\"
acl regexJuegos url_regex -i \"/etc/squid/filtros/regexJuegos\"
acl regexPorno url_regex -i \"/etc/squid/filtros/regexPorno\"
acl regexRedesSociales url_regex -i \"/etc/squid/filtros/regexRedesSociales\"
acl regexViolencia url_regex -i \"/etc/squid/filtros/regexViolencia\"





#filtrando Busquedas

http_access deny regexApuestas
http_access deny regexArmas
http_access deny regexBusquedas
http_access deny regexDeporte
http_access deny regexDrogas
http_access deny regexJuegos
http_access deny regexPorno
http_access deny regexRedesSociales
http_access deny regexViolencia

http_access allow localhost



http_access allow clients
http_access deny all
http_port 3128 intercept
https_port 3129 intercept ssl-bump cert=/etc/squid/ssl_cert/myCA.pem generate-host-certificates=on dynamic_cert_mem_cache_size=4mb

sslcrtd_program /usr/lib/squid/ssl_crtd -s /var/lib/ssl_db -M 4mb
acl step1 at_step SslBump1
ssl_bump peek step1
ssl_bump bump all
shutdown_lifetime 5
access_log stdio:/var/log/squid/access.log
" > /etc/squid/squid.conf


systemctl restart squid

iptables -A INPUT -j ACCEPT -p tcp --dport 3128 -m comment --comment "squid http proxy"
iptables -A INPUT -j ACCEPT -p tcp --dport 3129 -m comment --comment "squid https proxy"
iptables -t nat -A PREROUTING -s 192.168.10.0/24 -p tcp --dport 80 -m comment --comment "transparent http proxy" -j DNAT --to-destination 192.168.10.250:3128
iptables -t nat -A PREROUTING -s 192.168.10.0/24 -p tcp --dport 443 -m comment --comment "transparent https proxy" -j DNAT --to-destination 192.168.10.250:3129

iptables-save > /etc/iptables.up.rules
