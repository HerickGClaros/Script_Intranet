#!/bin/bash 
if ! [ $(id -u) = 0 ]; then
   echo "Debe ser ejecutado como usuario ROOT!"
   exit 1
fi

echo "  _____               _______    ____     _____ ";
echo " |  __ \      /\     |__   __|  / __ \   / ____|";
echo " | |  | |    /  \       | |    | |  | | | (___  ";
echo " | |  | |   / /\ \      | |    | |  | |  \___ \ ";
echo " | |__| |  / ____ \     | |    | |__| |  ____) |";
echo " |_____/  /_/    \_\    |_|     \____/  |_____/ ";
echo "                                                ";
echo "                                                ";

echo "*** DATOS DE USUARIO ***"
echo ""
echo "USUARIO = Intranet"
echo "PASSWORD = Admin"
echo ""
echo "*** DATOS DE USUARIO  LDAP ***"
echo ""
echo "Administrador:"
echo "USUARIO = cn=admin,dc=server,dc=intranet,dc=edu,dc=sv"
echo "PASSWORD = admin"
echo ""
echo "*** USUARIOS DE PRUEBA LDAP ***"
echo ""
echo "USUARIOS = Alumno1, Profesor1"
echo "PASSWORD = alumno , profesor"
echo ""
echo "*** USUARIO WEBMIN ***"
echo ""
echo "USUARIO = root"
echo "PASSWORD = El establecido en el sistema para el usuario root"
echo ""
echo "*** COMANDO PARA COPIAR EL CERTIFICADO DEL PROXY ***"
echo "scp /home/Intranet/certificadoProxy/myCA.der {usuario cliente}@{ipcliente}/{directorio personal del cliente}"
echo ""
echo "*** NOTA ***"
echo "Si olvida esta Información, puede verla nuevamente ejecutando el comando:"
echo "cat /etc/datos.sh"

echo ""
echo "PRECIONE INTRO PARA CONTINUAR"
read intro