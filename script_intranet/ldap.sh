#!/bin/bash



cat > /root/debconf-slapd.conf << 'EOF'
slapd slapd/password1 password admin
slapd slapd/internal/adminpw password admin
slapd slapd/internal/generated_adminpw password admin
slapd slapd/password2 password admin
slapd slapd/unsafe_selfwrite_acl note
slapd slapd/purge_database boolean false
slapd slapd/domain string server.intranet.edu.sv
slapd slapd/ppolicy_schema_needs_update select abort installation
slapd slapd/invalid_config boolean true
slapd slapd/move_old_database boolean false
slapd slapd/backend select MDB
slapd shared/organization string Escuela
slapd slapd/dump_database_destdir string /var/backups/slapd-VERSION
slapd slapd/no_configuration boolean false
slapd slapd/dump_database select when needed
slapd slapd/password_mismatch note
EOF
export DEBIAN_FRONTEND=noninteractive
cat /root/debconf-slapd.conf | debconf-set-selections
apt install ldap-utils slapd php php-ldap php-xml -y



dpkg --install ./script_intranet/ldap/phpldapadmin.deb





LISTA=$(slapcat | grep "dn" | grep -v "cn" | awk '{print $2}') 
ADMINLDAP=$( slapcat | grep "dn" | grep  "cn" | awk '{print $2}' )


ldapadd -x -D ${ADMINLDAP} -w admin -f ./script_intranet/ldap/u_organizativas.ldif
ldapadd -x -D ${ADMINLDAP} -w admin -f ./script_intranet/ldap/grupos.ldif
ldapadd -x -D ${ADMINLDAP} -w admin -f ./script_intranet/ldap/usuarios.ldif


mv /usr/share/phpldapadmin/config/config.php /usr/share/phpldapadmin/config/config.backup

cp ./script_intranet/ldap/config.php /usr/share/phpldapadmin/config/config.bk


sed "s/textoDePrueba/${LISTA}/"  /usr/share/phpldapadmin/config/config.bk > /usr/share/phpldapadmin/config/config.php

chmod 777 /usr/share/phpldapadmin/config/config.php





