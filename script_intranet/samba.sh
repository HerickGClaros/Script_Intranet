#!/bin/bash 

apt install -y samba

cp /etc/samba/smb.conf /etc/samba/smb.conf.bk

mkdir /mnt/Compartidos
chmod 777 -R /mnt/Compartidos
chown -R root:users /mnt/Compartidos
chmod -R ug+rwx,o+rx-w /mnt/Compartidos

cat ./script_intranet/samba/smb.conf > /etc/samba/smb.conf
service samba restart
service smbd restart