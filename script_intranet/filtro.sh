#!/bin/bash

URLBASE="/etc/squid/filtros/"

function adminFiltro() {



echo "    ______    _     __   __                        _       __          __  ";
echo "   / ____/   (_)   / /  / /_   _____  ____        | |     / /  ___    / /_ ";
echo "  / /_      / /   / /  / __/  / ___/ / __ \       | | /| / /  / _ \  / __ \ ";
echo " / __/     / /   / /  / /_   / /    / /_/ /       | |/ |/ /  /  __/ / /_/ / ";
echo "/_/       /_/   /_/   \__/  /_/     \____/        |__/|__/   \___/ /_.___/ ";
echo "                                                                           ";
echo ""
echo -e "CONTENIDO \t ESTADO"


#regex apuesta
if [ -s ${URLBASE}regexApuestas ]; then
	echo -e "\e[0;32m1 - Apuestas \t Activo   \e[0m"
		
 
elif [ -f ${URLBASE}regexApuestas  ]; then
	
	echo -e "\e[31m1 - Apuestas \t Inactivo  \e[0m"


fi

#regex Armas
if [ -s ${URLBASE}regexArmas ]; then
	echo -e "\e[0;32m2 - Armas \t Activo   \e[0m"
		
 
elif [ -f ${URLBASE}regexArmas  ]; then
	echo -e "\e[31m2 - Armas \t Inactivo   \e[0m"

fi
#regex Busquedas

if [ -s ${URLBASE}regexBusquedas ]; then
	echo -e "\e[0;32m3 - Busquedas \t Activo    \e[0m"
		
 
elif [ -f ${URLBASE}regexBusquedas  ]; then
	echo -e "\e[31m3 - Busquedas \t Inactivo  \e[0m"

fi

#regex deporte

if [ -s ${URLBASE}regexDeporte ]; then
	echo -e "\e[0;32m4 - Deporte \t Activo    \e[0m"
		
 
elif [ -f ${URLBASE}regexDeporte  ]; then
	echo -e "\e[31m4 - Deporte \t Inactivo   \e[0m"

fi

#regex drogas

if [ -s ${URLBASE}regexDrogras ]; then
	echo -e "\e[0;32m5 - Drogas \t Activo    \e[0m"
		
 
elif [ -f ${URLBASE}regexDrogas  ]; then
	echo -e "\e[31m5 - Drogras \t Inactivo   \e[0m"

fi

#regex Juegos

if [ -s ${URLBASE}regexJuegos ]; then
	echo -e "\e[0;32m6 - Juegos \t Activo    \e[0m"
		
 
elif [ -f ${URLBASE}regexJuegos ]; then
	echo -e "\e[31m6 - Juegos \t Inactivo   \e[0m"

fi

#regex porno

if [ -s ${URLBASE}regexPorno ]; then
	echo -e "\e[0;32m7 - Pornografia \t Activo   \e[0m"
		
 
elif [ -f ${URLBASE}regexPorno  ]; then
	echo -e "\e[31m7 - Pornografia \t Inactivo  \e[0m"

fi

#regex redes sociales

if [ -s ${URLBASE}regexRedesSociales ]; then
	echo -e "\e[0;32m8 - R-Sociales \t Activo   \e[0m"
		
 
elif [ -f ${URLBASE}regexRedesSociales  ]; then
	echo -e "\e[31m8 - R-Sociales \t Inactivo   \e[0m"

fi

#regex violencia

if [ -s ${URLBASE}regexViolencia ]; then
	echo -e "\e[0;32m9 - Violencia \t Activo    \e[0m"
		
 
elif [ -f ${URLBASE}regexViolencia  ]; then
	echo -e "\e[31m19 - Violencia \t Inactivo   \e[0m"
fi

# OBTENEMOS LA OPCION DEL USUARIO 

read -p "Cambiar el ESTADO del filtro de CONTENIDO [1 - 9] 0 = SALIR : " opcion  

cambiarEstado



}


function cambiarEstado() {

echo "    ______    _     __   __                        _       __          __  ";
echo "   / ____/   (_)   / /  / /_   _____  ____        | |     / /  ___    / /_ ";
echo "  / /_      / /   / /  / __/  / ___/ / __ \       | | /| / /  / _ \  / __ \ ";
echo " / __/     / /   / /  / /_   / /    / /_/ /       | |/ |/ /  /  __/ / /_/ / ";
echo "/_/       /_/   /_/   \__/  /_/     \____/        |__/|__/   \___/ /_.___/ ";
echo "                                                                           ";
echo ""


	case $opcion in
	1 ) clear
		echo "Cambiar ESTADO del filtro Apuestas"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexApuestas.bk > ${URLBASE}regexApuestas && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexApuestas && touch ${URLBASE}regexApuestas && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		
		;;
	2 )clear
		echo "Cambiar ESTADO del filtro Armas"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexArmas.bk > ${URLBASE}regexArmas && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexArmas && touch ${URLBASE}regexArmas && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;
	3 ) clear
		echo "Cambiar ESTADO del filtro Busquedas"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexBusquedas.bk > ${URLBASE}regexBusquedas && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexBusquedas && touch ${URLBASE}regexBusquedas && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;
	4 ) clear
		echo "Cambiar ESTADO del filtro Deporte"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexDeporte.bk > ${URLBASE}regexDeporte && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexDeporte && touch ${URLBASE}regexDeporte && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;
	5 ) clear
		echo "Cambiar ESTADO del filtro Drogras"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexDrogas.bk > ${URLBASE}regexDrogas && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexDrogas && touch ${URLBASE}regexDrogas && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;
	6 ) clear
		echo "Cambiar ESTADO del filtro Juegos"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexJuegos.bk > ${URLBASE}regexJuegos && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexJuegos && touch ${URLBASE}regexJuegos && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;
	7 ) clear
		echo "Cambiar ESTADO del filtro Pornografia"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexPorno.bk > ${URLBASE}regexPorno && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexPorno && touch ${URLBASE}regexPorno && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;
	8 ) clear
		echo "Cambiar ESTADO del filtro Redes Sociales"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexRedesSociales.bk > ${URLBASE}regexRedesSociales && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexRedesSociales && touch ${URLBASE}regexRedesSociales && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;
	9 ) clear
		echo "Cambiar ESTADO del filtro Violencia"
		read -p "1- Activo 2- Inactivo 3-Cancelar: " ESTADO

		case $ESTADO in
			1 )	su - root -c "cat ${URLBASE}regexViolencia.bk > ${URLBASE}regexViolencia && service squid restart"
				
				clear
				adminFiltro
				
				;;
			2 ) su - root -c "rm -rf ${URLBASE}regexViolencia && touch ${URLBASE}regexViolencia && service squid restart"
				
				clear
				adminFiltro
				;;
			3 ) clear
				adminFiltro
				;;
			* ) clear
				cambiarEstado
				;;
				
		esac

		clear 
		adminFiltro
		;;

	
	0 ) kill -9 $PPID 
		exit
		;;
	* ) clear
		adminFiltro
		;;
esac

}

adminFiltro