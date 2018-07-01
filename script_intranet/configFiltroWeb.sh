#!/bin/bash

cp ./script_intranet/filtro.sh /etc/
chmod 777 /etc/filtro.sh
chmod 777 -R /etc/squid/filtros
chmod +x /etc/filtro.sh
