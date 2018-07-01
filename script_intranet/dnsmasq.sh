#!/bin/bash

function dnsmasqConf()
{

cp /etc/dnsmasq.conf /etc/dnsmasq.conf.backup

echo "

interface=$segunda

listen-address=127.0.0.1
listen-address=192.168.10.250

server=8.8.4.4
server=8.8.8.8

dhcp-option=3,192.168.10.250
dhcp-option=6,192.168.10.250,8.8.8.8


dhcp-range=192.168.10.10,192.168.10.150,12h

" > /etc/dnsmasq.conf

/etc/init.d/dnsmasq restart



}


#ejecucion de las funciones

dnsmasqConf