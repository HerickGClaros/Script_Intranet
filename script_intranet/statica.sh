#!/bin/bash 

apt install dnsmasq ipcalc net-tools apt-show-versions libauthen-pam-perl -y 


nInterface=$( ip link show|grep ^[0-9]| grep -vw lo|cut -f2 -d":"|sed 's/^[ \t]*//' | awk '{print NR, $0}' | wc -l ) #obtenemos el numero de interfaces de red

primeraInterface=0
segundaInterface=0
nPrimeraInterface=""
nSegundaInterface=""
function pregunta1()
{

	if [ $o -eq 0 ]; then
		
		ip link show|grep ^[0-9]| grep -vw lo|cut -f2 -d":"|sed 's/^[ \t]*//' | awk '{print NR, $0}' #obtenemos los nombres de las interfaces de red
		echo "Seleccione la interfaces atraves de la cual"
		echo "se conecta a internet? [1 - $nInterface]"
		read internet


		if [ $internet -gt $nInterface  -o  $internet -lt 1 ]  
		then
			echo "Elija una opcion VALIDA !!"
			echo ""
			pregunta1 $i=0

		else
							
				primeraInterface=$( echo $internet )
		
				nPrimeraInterface=$( ip link show|grep ^[0-9]| grep -vw lo|cut -f2 -d":"|sed 's/^[ \t]*//'| awk "NR==$primeraInterface " )
				
				echo "Selecciono la interface $nPrimeraInterface" 
		fi

	fi

}


#FUNCION A TRAVES DE LA CUAL SE OBTIENE LA SEGUNDA INTERFAZ DE RED PARA PROVEER SERVICIOS A LA INTRANET
function pregunta2()
{

	if [ $a -eq 0 ]; then
		
	ip link show|grep ^[0-9]| grep -vw lo|cut -f2 -d":"|sed 's/^[ \t]*//' | awk '{print NR, $0}' #obtenemos los nombres de las interfaces de red
	echo "Seleccione la interfaces atraves de la cual"
	echo "se conectara a la INTRANET? [1 - $nInterface]"
	read intranet

	if [ $intranet -gt $nInterface  -o  $intranet -lt 1  ]  
	then
		echo "Elija una opcion VALIDA !!"
		pregunta2 $a=0

	else

			if [ $intranet -eq  $primeraInterface ]
				then

					echo "La interfaz NO ESTA DISPONIBLE Elija otra interfaz!!"
					pregunta2 $a=0

				else

					segundaInterface=$( echo $intranet )

					nSegundaInterface=$( ip link show|grep ^[0-9]| grep -vw lo|cut -f2 -d":"|sed 's/^[ \t]*//'| awk "NR==$segundaInterface" )
			
					echo "Selecciono la interface $nSegundaInterface"

				fi
	fi


	fi

	
}


#Funcion para establecer ip estatica a la primera interface

function primeraEstatica()
{

ipDinamica=$( ip addr show $nPrimeraInterface | grep -v inet6 | grep 'inet' | sed 's/^[ \t]*//' | cut -f2 -d" " | cut -f1 -d"/" )
maskPrefijo=$( ip addr show $nPrimeraInterface | grep -v inet6 | grep 'inet' | sed 's/^[ \t]*//' | cut -f2 -d" " | cut -f2 -d"/"  )

#ipcalc $ipDinamica/$maskPrefijo

export bloqueRed=$(ipcalc $ipDinamica/$maskPrefijo | grep "Address:"  | awk '{print $2}' |  cut -d "." -f 1-3) #obtiene bloque de red

netMask=$(ipcalc $ipDinamica/$maskPrefijo | grep "Netmask:" | awk '{print $2}' | cut -d " " -f 1 ) # obtiene mascara de Red

export gateway=$(ipcalc $ipDinamica/$maskPrefijo | grep "HostMin:" | awk '{print $2}' ) #obtiene gateway o primer host
#netstat -r -n | grep -E "UG.*$nPrimeraInterface" | awk 'NR==1' |  awk '{print $2}' # obtiene gateway


echo "auto $nPrimeraInterface 
iface  $nPrimeraInterface inet static 
        address $bloqueRed.250
        netmask $netMask 
        gateway $gateway 
        dns-servers 8.8.8.8 
        " > /etc/network/interfaces.d/estatica


}




function segundaEstatica()
{
echo "auto $nSegundaInterface 
iface  $nSegundaInterface inet static 
        address 192.168.10.250
        netmask $netMask 
        gateway $bloqueRed.250
        dns-servers 8.8.8.8 "  >> /etc/network/interfaces.d/estatica
}


function resolvHost()
{
	echo "
	nameserver 127.0.0.1
	nameserver 192.168.10.250
	nameserver $gateway 


	" > /etc/resolv.conf

	echo " $bloqueRed.250 intranet.edu.sv wwww.intranet.edu.sv " >> /etc/hosts
	echo " 192.168.10.250 server intranet.edu.sv wwww.intranet.edu.sv ldapserver" >> /etc/hosts
}


function compartir()
{

	#!/bin/bash 
 principal=$nPrimeraInterface 
 segundaria=$nSegundaInterface

 echo "1" > /proc/sys/net/ipv4/ip_forward

iptables -t nat -A POSTROUTING -o $principal -j MASQUERADE
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISH -j ACCEPT
iptables -A FORWARD -i $segundaria -o $principal -j ACCEPT

echo "
echo "1" > /proc/sys/net/ipv4/ip_forward

 /sbin/iptables-restore < /etc/iptables.up.rules

" > /home/nat.sh

echo "@reboot         root    bash    /home/nat.sh" >> /etc/crontab

}



#ejecucion 
o=0
a=0
pregunta1 $o
pregunta2 $a
dhclient  $nPrimeraInterface
primeraEstatica
segundaEstatica
resolvHost
compartir


ifdown $nPrimeraInterface
ifup $nPrimeraInterface
ifdown $nSegundaInterface
ifup $nSegundaInterface

route add default gw $gateway



