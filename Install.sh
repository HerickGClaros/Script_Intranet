#!/bin/bash 

if ! [ $(id -u) = 0 ]; then
   echo "Debe ser ejecutado como usuario ROOT!"
   exit 1
fi



unset SESSION_MANAGER

chmod 777 -R ./script_intranet/

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "-- Actualizando REPOSITORIOS \t Procesando ..."
echo "-- Creando USUARIO "
echo "-- Instalado Servidor DHCP - DNS"
echo "-- Instalando Servidor PROXY"
echo "-- Instalando Servidor WEB"
echo "-- Instalando SARG"
echo "-- Instalando WEBMIN"
echo "-- Instalando FILTRO WEB"
echo "-- Instalando Servidor LDAP"
echo "-- Configurando Servidor LDAP"
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"

xterm -e "echo 'deb http://ftp.de.debian.org/debian stretch main ' >> /etc/apt/sources.list && apt update"

clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "-- Creando USUARIO \t Procesando.."
echo "-- Instalado Servidor DHCP - DNS"
echo "-- Instalando Servidor PROXY"
echo "-- Instalando Servidor WEB"
echo "-- Instalando SARG"
echo "-- Instalando WEBMIN"
echo "-- Instalando FILTRO WEB"
echo "-- Instalando Servidor LDAP"
echo "-- Configurando Servidor LDAP"
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/crearUsuario.sh" 

clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "-- Instalado Servidor DHCP - DNS \t Procesando.."
echo "-- Instalando Servidor PROXY"
echo "-- Instalando Servidor WEB"
echo "-- Instalando SARG"
echo "-- Instalando WEBMIN"
echo "-- Instalando FILTRO WEB"
echo "-- Instalando Servidor LDAP"
echo "-- Configurando Servidor LDAP"
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"



xterm -e "./script_intranet/statica.sh" 
xterm -e "./script_intranet/dnsmasq.sh"


clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "-- Instalando Servidor PROXY \t Procesando.."
echo "-- Instalando Servidor WEB"
echo "-- Instalando SARG"
echo "-- Instalando WEBMIN"
echo "-- Instalando FILTRO WEB"
echo "-- Instalando Servidor LDAP"
echo "-- Configurando Servidor LDAP"
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/proxy.sh"
xterm -e "./script_intranet/configProxy.sh"



clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "-- Instalando SARG \t Procesando.."
echo "-- Instalando WEBMIN"
echo "-- Instalando FILTRO WEB"
echo "-- Instalando Servidor LDAP"
echo "-- Configurando Servidor LDAP"
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/sarg.sh"

clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "-- Instalando WEBMIN \t Procesando.."
echo "-- Instalando FILTRO WEB"
echo "-- Instalando Servidor LDAP"
echo "-- Configurando Servidor LDAP"
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/webmin.sh"


clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando WEBMIN \t Finalizada ...\e[0m"
echo "-- Instalando FILTRO WEB \t Procesando.."
echo "-- Instalando Servidor LDAP"
echo "-- Configurando Servidor LDAP"
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"



xterm -e "./script_intranet/configFiltroWeb.sh"


clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando WEBMIN \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando FILTRO WEB \t Finalizada ...\e[0m"
echo "-- Instalando Servidor LDAP \t Procesando.."
echo "-- Configurando Servidor LDAP \t Procesando.."
echo "-- Instalando MOODLE"
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/ldap.sh"
xterm -e "./script_intranet/confLdap.sh"


clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando WEBMIN \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando FILTRO WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Configurando Servidor LDAP \t Finalizada ...\e[0m"
echo "-- Instalando MOODLE \t Procesando.."
echo "-- Instalando EPOPTES"
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/moodle.sh"

clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando WEBMIN \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando FILTRO WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Configurando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando MOODLE \t Finalizada ...\e[0m"
echo "-- Instalando EPOPTES \t Procesando.."
echo "-- Instalando SAMBA"
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/epoptes.sh"


clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando WEBMIN \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando FILTRO WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Configurando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando MOODLE \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando EPOPTES \t Finalizada ...\e[0m"
echo "-- Instalando SAMBA \t Procesando.."
echo "-- Instalando WIKI"
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/samba.sh"


clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando WEBMIN \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando FILTRO WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Configurando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando MOODLE \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando EPOPTES \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SAMBA \t Finalizada ...\e[0m"
echo "-- Instalando WIKI \t Procesando.."
echo "-- Creando Acesos Directo"
echo "-- Finalizando INSTALACION"


xterm -e "./script_intranet/wiki.sh"


clear

echo "   __  __    __    _____";
echo "  / / / /   / /   / ___/ ";
echo " / / / /   / /    \__ \ ";
echo "/ /_/ /   / /___ ___/ / ";
echo "\____/   /_____//____/  ";
echo "                        ";

echo ""
echo "\e[0;32m****INSTALADOR DE INTRANET****\e[0m"
echo "..."
echo "\e[0;32m -- Actualizando REPOSITORIOS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando USUARIO \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalado Servidor DHCP - DNS \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor PROXY \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SARG \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando WEBMIN \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando FILTRO WEB \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Configurando Servidor LDAP \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando MOODLE \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando EPOPTES \t Finalizada ...\e[0m"
echo "\e[0;32m -- Instalando SAMBA \t Finalizada ...\e[0m"
echo "\e[0;32m -- Creando Acesos Directo \t Finalizada ...\e[0m"
echo "\e[0;32m -- Finalizando INSTALACION  \t Finalizada ...\e[0m"


cp ./icons/* /usr/share/icons/
mkdir /etc/accesos
chmod 777 /etc/accesos
cp ./accesos/* /etc/accesos/
chmod 777 -R /etc/accesos
cp ./script_intranet/accesos.sh /etc/accesos.sh
chmod a+x /etc/accesos.sh
echo "@reboot  root bash /etc/accesos.sh" >> /etc/crontab

clear

cp ./script_intranet/datos.sh /etc/datos.sh
su -c "/etc/datos.sh"
clear
echo "EL SISTEMA NECESITA REINICIARSE, PRECIONE INTRO PARA REINICIAR"
read INTRO
reboot
